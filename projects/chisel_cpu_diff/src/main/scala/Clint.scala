import chisel3._
import chisel3.util._
import chisel3.util.experimental._
import Constant._
// CLINT_MTIMECMP  64'h00000000_02004000
// CLINT_MTIME     64'h00000000_0200bff8



class Clint extends Module {
  val io = IO(new Bundle {
   // val  mstatus    = Input(UInt(64.W))
   //val  mie        = Input(UInt(64.W))
    val  cmp_ren    = Input(Bool())
    val  cmp_wen    = Input(Bool())
    val  cmp_addr   = Input(UInt(64.W))
    val  cmp_wdata  = Input(UInt(64.W))

    val  cmp_rdata   = Output(UInt(64.W))
    val  time_intrpt = Output(Bool())
    val  intrpt_no = Output(UInt(64.W))
  })


  val  cmp_ren    = io.cmp_ren
  val  cmp_wen    = io.cmp_wen
  val  cmp_addr   = io.cmp_addr
  val  cmp_wdata  = io.cmp_wdata

  val mtime     = RegInit(UInt(64.W), 0.U)
  val mtimecmp  = RegInit(UInt(64.W), 0.U)

  mtime := mtime + 1.U
  when (cmp_wen) {
    mtimecmp := cmp_wdata
  }

  val mie = WireInit(UInt(64.W), 0.U)
  BoringUtils.addSink(mie, "csr_mie")
  val mstatus  = WireInit(UInt(64.W), 0.U)
  BoringUtils.addSink(mstatus, "csr_status")

  io.time_intrpt  := mtime >= mtimecmp && mstatus(3) === 1.U && mie(7) === 1.U
  when(io.time_intrpt){io.intrpt_no := 7.U
  }.otherwise{io.intrpt_no := 0.U}
  
  io.cmp_rdata := Mux(cmp_ren, Mux(cmp_addr === CLINT_MTIME, mtime, mtimecmp), 0.U) //output read data

}