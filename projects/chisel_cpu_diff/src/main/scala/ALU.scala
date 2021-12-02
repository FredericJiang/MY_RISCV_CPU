import chisel3._ 
import chisel3.util._
import Constant._
import scala.annotation.switch


class ALU extends Module{
val io = IO( new Bundle{
val alu_type = Input(UInt(5.W))
val inst_width32 = Input(Bool())
val in1 = Input(UInt(64.W))
val in2 = Input(UInt(64.W))
val alu_out = Output(UInt(64.W))


})

val in1         = io.in1
val in2         = io.in2

val alu_out   = Wire(UInt(64.W))
alu_out := DontCare

val shamt = Wire(UInt(6.W))
shamt :=in2(5, 0)


switch(io.alu_type){
is(ALU_ADD)  { alu_out:= (in1+in2).asUInt()}
is(ALU_ADDW) { alu_out:= Cat(Fill(33,(in1+in2)(31)),(in1+in2)(30,0))}
is(ALU_SUB)  { alu_out:= (in1-in2).asUInt()}
is(ALU_SUBW) { val x = (in1-in2).asUInt(); alu_out:= Cat(Fill(33,x(31)),x(30,0))}
is(ALU_SLT)  { alu_out:= (in1.asSInt < in2.asSInt).asUInt()}
is(ALU_SLTU) { alu_out:= (in1 < in2).asUInt()}
is(ALU_XOR)  { alu_out:= (in1 ^ in2).asUInt()}
is(ALU_OR)   { alu_out:= (in1 | in2).asUInt()}
is(ALU_AND)  { alu_out:= (in1 & in2).asUInt()}
is(ALU_SLL)  { alu_out:= (in1 << shamt).asUInt()(63,0)}
is(ALU_SLLW) { val x = (in1 << shamt).asUInt(); alu_out:= Cat(Fill(33,x(31)), x(30,0))}
is(ALU_SRL)  { alu_out:= (in1 >> shamt).asUInt()} //logic right shift
is(ALU_SRLW) { val x = (in1(31,0).asUInt >> shamt).asUInt();alu_out:= Cat(Fill(32,x(31)), x(31,0))}
is(ALU_SRA)  { alu_out:= (in1.asSInt >> shamt).asUInt()} //arithmetic right shift
is(ALU_SRAW) { val x = (in1(31,0).asSInt >> shamt).asUInt(); alu_out:= Cat(Fill(33,x(31)), x(30,0))}
is(ALU_BGE)  { alu_out:= (in1.asSInt >= in2.asSInt).asUInt()}
is(ALU_BGEU) { alu_out:= (in1 >= in2).asUInt()}

}

io.alu_out := alu_out


}