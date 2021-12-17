import chisel3._ 
import chisel3.util._
import Constant._

  
  
class ImmGen extends Module{
val io =IO(new Bundle{
val imm_type = Input(UInt(3.W))
val inst     = Input(UInt(32.W))
val imm      = Output(UInt(64.W))
})

val inst  = io.inst

val imm_i   = Cat(Fill(53, inst(31)), inst(30, 20))       
val imm_s   = Cat(Fill(53, inst(31)), inst(30, 25), inst(11, 7))
val imm_b   = Cat(Fill(52, inst(31)), inst(7), inst(30, 25), inst(11, 8), 0.U)
val imm_u   = Cat(Fill(33, inst(31)), inst(30, 12), Fill(12, 0.U))
val imm_j   = Cat(Fill(44, inst(31)), inst(19, 12), inst(20), inst(30, 21), 0.U)
val imm_csr = Cat(Fill(59, 0.U), inst(19, 15))

io.imm := MuxLookup(io.imm_type, IMM_X, Array(
    IMM_I   -> imm_i,
    IMM_S   -> imm_s,
    IMM_B   -> imm_b,
    IMM_U   -> imm_u, 
    IMM_J   -> imm_j,
    IMM_CSR -> imm_csr
  ))



}
  
  
  
  

