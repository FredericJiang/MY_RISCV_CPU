import chisel3._ 
import chisel3.util._
import Constant._

class Nxt_PC extends Module{
val io = IO(new Bundle{
 val pc       = Input(UInt(32.W))
 val imm      = Input(UInt(64.W))
 val rs1_data = Input(UInt(64.W))
 val alu_out  = Input(UInt(64.W))
 val csr_jmp  = Input(Bool())
 val intrpt_jmp  = Input(Bool())
 val op2_type = Input(UInt(3.W))
 val imm_type = Input(UInt(3.W))
 val alu_type = Input(UInt(5.W))
 val csr_jmp_pc = Input(UInt(64.W))
 val intrpt_jmp_pc = Input(UInt(64.W))

 val pc_nxt = Output(UInt(32.W))
 val pc_jmp = Output(Bool())
})

io.pc_jmp := true.B

when(io.intrpt_jmp){
  io.pc_nxt := io.intrpt_jmp_pc
}.elsewhen(io.imm_type === IMM_B && io.alu_type === ALU_SUB && io.alu_out === 0.U){
// BEQ alu_out is zero, pc + offset
  io.pc_nxt := io.pc + io.imm
}.elsewhen(io.imm_type === IMM_B && (io.alu_type === ALU_BGE || io.alu_type === ALU_BGEU )  && io.alu_out =/= 0.U){
 //BGE BGEU alu_out is zero, pc + offset
 io.pc_nxt := io.pc + io.imm
}
.elsewhen(io.imm_type === IMM_B && io.alu_type =/= ALU_SUB && io.alu_out =/= 0.U ){
// BNE BLT BLTU alu_out not zero, pc + offset
  io.pc_nxt := io.pc + io.imm
}.elsewhen(io.imm_type === IMM_J){
// JAL
  io.pc_nxt := io.pc + io.imm
}.elsewhen(io.op2_type === OP_4 && io.imm_type === IMM_I ){
//JALR
  val x = io.rs1_data + io.imm
  io.pc_nxt := Cat(x(63,1).asUInt,0.U )
}.elsewhen(io.csr_jmp){
  io.pc_nxt := io.csr_jmp_pc
}
.otherwise{
// other types of instruction
io.pc_jmp := false.B
io.pc_nxt := 0.U
}





}