import chisel3._ 
import chisel3.util._
import Constant._
import scala.annotation.switch


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
alu_out := DontCare
/*
alu_out  := MuxLookup(io.alu_type, ALU_X, Array(

ALU_ADD  -> (in1+in2).asUInt(),
ALU_ADDW -> Cat(Fill(33,(in1+in2)(31)),(in1+in2)(30,0)),
ALU_SUB  -> (in1-in2).asUInt(),
ALU_SLT  -> (in1.asSInt < in2.asSInt).asUInt(),
ALU_SLTU -> (in1 < in2).asUInt(),
ALU_XOR  -> (in1 ^ in2).asUInt(),
ALU_OR   -> (in1 | in2).asUInt(),
ALU_AND  -> (in1 & in2).asUInt(),
ALU_SLL  -> (in1 << in2(5,0)).asUInt(),
ALU_SLLW -> (in1 << in2(5,0)).asUInt(),
ALU_SRL  -> (in1 >> in2(5,0)).asUInt(),
ALU_SRA  -> (in1 >> in2(5,0)).asUInt(),
ALU_BGE  -> (in1.asSInt >= in2.asSInt).asUInt(),
ALU_BGEU -> (in1 >= in2).asUInt()

))
*/

switch(io.alu_type){
is(ALU_ADD)  { alu_out:= (in1+in2).asUInt()}
is(ALU_ADDW) { alu_out:= Cat(Fill(33,(in1+in2)(31)),(in1+in2)(30,0))}
is(ALU_SUB)  { alu_out:= (in1-in2).asUInt()}
is(ALU_SLT)  { alu_out:= (in1.asSInt < in2.asSInt).asUInt()}
is(ALU_SLTU) { alu_out:= (in1 < in2).asUInt()}
is(ALU_XOR)  { alu_out:= (in1 ^ in2).asUInt()}
is(ALU_OR)   { alu_out:= (in1 | in2).asUInt()}
is(ALU_AND)  { alu_out:= (in1 & in2).asUInt()}
is(ALU_SLL)  { alu_out:= (in1 << in2(5,0)).asUInt()}
is(ALU_SLLW) { 
alu_out:= Cat(Fill(33,((in1 << in2(4,0)).asUInt())(31)),((in1 << in2(4,0)).asUInt())(30,0))}
is(ALU_SRL)  { alu_out:= (in1 >> in2(5,0)).asUInt()}
is(ALU_SRA)  { alu_out:= (in1 >> in2(5,0)).asUInt()}
is(ALU_BGE)  { alu_out:= (in1.asSInt >= in2.asSInt).asUInt()}
is(ALU_BGEU) { alu_out:= (in1 >= in2).asUInt()}

}

io.alu_out := alu_out


}