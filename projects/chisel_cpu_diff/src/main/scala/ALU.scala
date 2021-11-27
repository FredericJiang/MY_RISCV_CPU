import chisel3._ 
import chisel3.util._
import Constant._


class ALU extends Module{
val io = IO( new Bundle{
val alu_type = Input(UInt(4.W))
val in1 = Input(UInt(64.W))
val in2 = Input(UInt(64.W))
val alu_out = Output(UInt(64.W))


})

val in1         = io.in1
val in2         = io.in2

val alu_out   = Wire(UInt(64.W))



alu_out  := MuxLookup(io.alu_type, ALU_X, Array(

ALU_ADD  -> (in1+in2).asUInt(),
ALU_SUB  -> (in1-in2).asUInt(),
ALU_SLT  -> (in1.asSInt < in2.asSInt).asUInt(),
ALU_SLTU -> (in1 < in2).asUInt(),
ALU_XOR  -> (in1 ^ in2).asUInt(),
ALU_OR   -> (in1 | in2).asUInt(),
ALU_AND  -> (in1 & in2).asUInt(),
ALU_SLL  -> (in1 << in2(4,0)).asUInt(),
ALU_SRL  -> (in1 >> in2(4,0)).asUInt(),
ALU_SRA  -> (in1 >> in2(4,0)).asUInt()
))

io.alu_out := alu_out


}