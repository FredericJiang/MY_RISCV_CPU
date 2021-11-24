import chisel3._ 
import chisel3.util._
import Constant._


class ALU extends Module with Ext{
val io = IO( new Bundle{
val inst_decode = Input(new MicroInst())
val in1 = Input(UInt(64.W))
val in2 = Input(UInt(64.W))

val out = Output(UInt(64.W))

})

val inst_decode = io.inst_decode
val in1         = io.in1
val in2         = io.in2

val alu_out   = Wire(UInt(64.W))
val out_sext  = Wire(UInt(64.W))



alu_out  := MuxLookup(inst_decode.alu_code, 0.U, Array(

ALU_ADD -> (in1+in2).asUInt(),
ALU_SUB -> (in1-in2).asUInt(),


))


out_sext  := Mux(inst_decode.w_type, Sext_64(alu_out(31, 0)), alu_out)


io.out := out_sext



}