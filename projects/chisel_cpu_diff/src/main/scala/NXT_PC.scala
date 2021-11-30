import chisel3._ 
import chisel3.util._
import Constant._

class Nxt_PC extends Module{
val io = IO(new Bundle{
 val pc = Input(UInt(32.W))
 val imm_type = Input(UInt(3.W))
 val imm  = Input(UInt(64.W))
 val alu_type = Input(UInt(3.W))
 val alu_out  = Input(UInt(64.W))
 val wb_type  = Input(UInt(3.W))
 val pc_nxt = Output(UInt(32.W))
})



when(io.imm_type === IMM_B && io.alu_type === ALU_SUB && io.alu_out === 0.U){
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
}.elsewhen(io.wb_type === WB_JALR){
//JALR
  io.pc_nxt := (io.alu_out & ~1.U(1.W))
}.otherwise{
// other types of instruction
io.pc_nxt := io.pc + 4.U
}





}