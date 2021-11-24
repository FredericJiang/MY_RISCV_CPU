import chisel3._
import chisel3.util._
import Constant._


trait Ext {
  def Sext_64(x: UInt) : UInt = Cat(Fill(32, x(31)), x)
  def Zext_64(x: UInt) : UInt = Cat(Fill(32, 0.U), x)
}

class Execution extends Module with Ext {
  val io = IO(new Bundle {
  val inst_decode = Input(new MicroInst())
  val rs1_data    = Input(UInt(64.W))
  val rs2_data    = Input(UInt(64.W))
  val result      = Output(UInt(64.W))
  val dmem        = new RamIO

  })

  io.dmem.en := false.B
  io.dmem.addr := 0.U
  io.dmem.wen := false.B
  io.dmem.wdata := 0.U
  io.dmem.wmask := 0.U
  io.result     := 0.U


  val inst_decode = io.inst_decode

  val in1, in1_sext, in2, in2_sext = Wire(UInt(64.W))

  // produce in1 and in2
  in1 := MuxLookup(inst_decode.rs1_src, 0.U, Array(
    RS_FROM_RF  -> io.rs1_data,
    RS_FROM_IMM -> Sext_64(inst_decode.imm),
    RS_FROM_PC  -> Zext_64(inst_decode.pc),
  )).asUInt()

  in1_sext := Mux(inst_decode.width_32, Sext_64(in1(31, 0)), in1)


  in2 := MuxLookup(inst_decode.rs2_src, 0.U, Array(
    RS_FROM_RF  -> io.rs2_data,
    RS_FROM_IMM -> Sext_64(inst_decode.imm),
    RS_FROM_PC  -> Zext_64(inst_decode.pc),
  )).asUInt()

  in2_sext := Mux(inst_decode.width_32, Sext_64(in2(31, 0)), in2)



when (inst_decode.fu_code === FU_ALU){
  val alu = Module(new ALU)
  alu.io.inst_decode := inst_decode
  alu.io.in1         := in1_sext
  alu.io.in2         := in2_sext
  io.result          := alu.io.out
}.elsewhen (inst_decode.fu_code === FU_JMP){

}.elsewhen (inst_decode.fu_code === FU_CSR){


}.elsewhen (inst_decode.fu_code === FU_MEM){}



}
