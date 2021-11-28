import chisel3._
import chisel3.util.experimental._
import difftest._

class RegFile extends Module {
  val io = IO(new Bundle {
    val rs1_addr = Input(UInt(5.W))
    val rs2_addr = Input(UInt(5.W))
    val rs1_data = Output(UInt(64.W))
    val rs2_data = Output(UInt(64.W))
    val rd_addr = Input(UInt(5.W))
    val rd_data = Input(UInt(64.W))
    val rd_en = Input(Bool())
  })

  val rf = RegInit(VecInit(Seq.fill(32)(0.U(64.W)))) //initialize regfile 32 * 64bits

  when (io.rd_en && (io.rd_addr =/= 0.U)) {  // =/= inequity
    rf(io.rd_addr) := io.rd_data;
  }

  io.rs1_data := Mux((io.rs1_addr =/= 0.U), rf(io.rs1_addr), 0.U)
  io.rs2_data := Mux((io.rs2_addr =/= 0.U), rf(io.rs2_addr), 0.U)

  val dt_ar = Module(new DifftestArchIntRegState)
  dt_ar.io.clock  := clock
  dt_ar.io.coreid := 0.U
  dt_ar.io.gpr    := rf 

  BoringUtils.addSource(rf(10), "rf_a0")

val csr = Module(new DifftestCSRState)
    csr.io.clock := clock
    csr.io.coreid := 0.U
    csr.io.mstatus := 0.U
    csr.io.mcause := 0.U
    csr.io.mepc := 0.U
    csr.io.sstatus := 0.U
    csr.io.scause := 0.U
    csr.io.sepc := 0.U
    csr.io.satp := 0.U
    csr.io.mip := 0.U
    csr.io.mie := 0.U
    csr.io.mscratch := 0.U
    csr.io.sscratch := 0.U
    csr.io.mideleg := 0.U
    csr.io.medeleg := 0.U
    csr.io.mtval:= 0.U
    csr.io.stval:= 0.U
    csr.io.mtvec := 0.U
    csr.io.stvec := 0.U
    csr.io.priviledgeMode := 0.U

}
