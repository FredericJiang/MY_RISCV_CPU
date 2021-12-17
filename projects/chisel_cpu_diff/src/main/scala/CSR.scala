import chisel3._ 
import chisel3.util._
import chisel3.util.experimental._
import Constant._
import difftest._




class CSR extends Module {
  val io = IO(new Bundle {
    val pc          = Input(UInt(32.W))
    val inst        = Input(UInt(32.W))
    val csr_type    = Input(UInt(3.W))
    val in_data     = Input(UInt(64.W))
    val time_intrpt = Input(Bool())


    val out       = Output(UInt(64.W))
    val jmp       = Output(Bool())
    val jmp_pc    = Output(UInt(32.W))
    val intrpt    = Output(Bool())
    val intrpt_pc = Output(UInt(32.W))
    val rd_wen    = Output(Bool())


  })

  val csr_rw = (io.csr_type === CSR_RW) || (io.csr_type === CSR_RS) || (io.csr_type === CSR_RC)
  val csr_jmp = WireInit(Bool(), false.B)
  val csr_jmp_pc = WireInit(UInt(32.W), 0.U)

  val mhartid   = RegInit(UInt(64.W), 0.U)
  val mstatus   = RegInit(UInt(64.W), "h00001800".U)
  val mie       = RegInit(UInt(64.W), 0.U)
  val mtvec     = RegInit(UInt(64.W), 0.U)
  val mscratch  = RegInit(UInt(64.W), 0.U)
  val mepc      = RegInit(UInt(64.W), 0.U)
  val mcause    = RegInit(UInt(64.W), 0.U)
  val mip       = RegInit(UInt(64.W), 0.U)
  
  val mcycle    = RegInit(UInt(64.W), 0.U)
  val minstret  = RegInit(UInt(64.W), 0.U)

  //io.mie := mie
  //io.mstatus := mstatus

//ECALL
  when (io.csr_type === CSR_ECALL) {
    mepc := io.pc
    mcause := 11.U  // Env call from M-mode
    mstatus := Cat(mstatus(63, 8), mstatus(3), mstatus(6, 4), 0.U, mstatus(2, 0))
    csr_jmp := true.B
    csr_jmp_pc := Cat(mtvec(31, 2), Fill(2, 0.U))
  }

// MRET
  when (io.csr_type === CSR_MRET) {
    mstatus := Cat(mstatus(63, 8), 1.U, mstatus(6, 4), mstatus(7), mstatus(2, 0))
    csr_jmp := true.B
    csr_jmp_pc := mepc
  }


// Interrupt


  val intrpt = RegInit(Bool(), false.B)
  val intrpt_pc = RegInit(UInt(32.W), 0.U)
  val intrpt_no = RegInit(UInt(64.W), 0.U)


  when(io.time_intrpt){
        mepc := io.pc
        mcause := "h8000000000000007".U  //Machine Timer Interrupt, Only one interrupt is realized
        mstatus := Cat(mstatus(63, 8), mstatus(3), mstatus(6, 4), 0.U, mstatus(2, 0))
        intrpt := true.B
        intrpt_no := 7.U
        intrpt_pc := Cat(mtvec(31, 2), Fill(2, 0.U))
  
  }
    
  
  mcycle := mcycle + 1.U

 
  
  
  val addr  = io.inst(31, 20)
  val rdata = WireInit(UInt(64.W), 0.U)
  val wdata = Wire(UInt(64.W))
  val wmask = "hffffffff".U
  val wen   = csr_rw && (io.in_data =/= 0.U)

  wdata := MuxLookup(io.csr_type, 0.U, Array(
    CSR_RW -> io.in_data,
    CSR_RS -> (rdata | io.in_data ),
    CSR_RC -> (rdata & ~io.in_data)
  ))
  
  rdata := MuxLookup(addr, 0.U, Array(
    csr_addr.mstatus  -> mstatus,
    csr_addr.mcause   -> mcause,
    csr_addr.mie      -> mie,
    csr_addr.mtvec    -> mtvec,
    csr_addr.mscratch -> mscratch,
    csr_addr.mepc     -> mepc,
    csr_addr.mip      -> mip,
    csr_addr.mcycle   -> mcycle,
    csr_addr.minstret -> minstret,
  ))
 
  io.out := rdata

  when(wen) {
    when(addr === csr_addr.mcycle) {
      mcycle := wdata 
    }
    when(addr === csr_addr.mtvec) {
      mtvec := wdata 
    }
    when(addr === csr_addr.mepc) {
      mepc := wdata 
    }
    when(addr === csr_addr.mcause) {
      mcause := wdata 
    }
    when(addr === csr_addr.mstatus) {
      mstatus := Cat((wdata(16) & wdata(15)) | (wdata(14) && wdata(13)), wdata(62, 0))
    }
    when(addr === csr_addr.mie) {
      mie := wdata 
    }
    when(addr === csr_addr.mscratch) {
      mscratch := wdata 
    }
  }


  
  BoringUtils.addSource(mie, "csr_mie")
  BoringUtils.addSource(mstatus, "csr_status")

 
  io.rd_wen    := csr_rw
  io.jmp       := csr_jmp
  io.jmp_pc    := csr_jmp_pc
  io.intrpt    := intrpt
  io.intrpt_pc := intrpt_pc


  val dt_ae = Module(new DifftestArchEvent)
    dt_ae.io.clock        := clock
    dt_ae.io.coreid       := 0.U
    dt_ae.io.intrNO       := Mux(intrpt, intrpt_no, 0.U)
    dt_ae.io.cause        := 0.U
    dt_ae.io.exceptionPC  := Mux(intrpt, mepc, 0.U)


  val dt_cs = Module(new DifftestCSRState)
    dt_cs.io.clock          := clock
    dt_cs.io.coreid         := 0.U
    dt_cs.io.priviledgeMode := 3.U  // Machine mode
    dt_cs.io.mstatus        := mstatus
    dt_cs.io.sstatus        := mstatus & "h80000003000de122".U
    dt_cs.io.mepc           := mepc
    dt_cs.io.sepc           := 0.U
    dt_cs.io.mtval          := 0.U
    dt_cs.io.stval          := 0.U
    dt_cs.io.mtvec          := mtvec
    dt_cs.io.stvec          := 0.U
    dt_cs.io.mcause         := mcause
    dt_cs.io.scause         := 0.U
    dt_cs.io.satp           := 0.U
    dt_cs.io.mip            := 0.U
    dt_cs.io.mie            := mie
    dt_cs.io.mscratch       := mscratch
    dt_cs.io.sscratch       := 0.U
    dt_cs.io.mideleg        := 0.U
    dt_cs.io.medeleg        := 0.U


}