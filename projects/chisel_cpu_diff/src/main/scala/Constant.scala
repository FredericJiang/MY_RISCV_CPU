import chisel3._ 
import chisel3.util._


object Constant{
  
  val Y = true.B
  val N = false.B

  
  val NXT_PC_X    = 0.asUInt(3.W)
  val NXT_PC_4    = 1.asUInt(3.W)
  val NXT_PC_IMM  = 2.asUInt(3.W)
  val NXT_PC_ALU  = 3.asUInt(3.W)
  
  
  val OP_X        = 0.asUInt(3.W)
  val OP_REG      = 1.asUInt(3.W)
  val OP_MEM      = 2.asUInt(3.W)
  val OP_PC       = 3.asUInt(3.W)
  


  val IMM_X     = 0.asUInt(3.W)
  val IMM_I     = 1.asUInt(3.W)
  val IMM_S     = 2.asUInt(3.W)
  val IMM_B     = 3.asUInt(3.W)
  val IMM_U     = 4.asUInt(3.W)
  val IMM_J     = 5.asUInt(3.W)
  val IMM_SHAMT = 6.asUInt(3.W)
  val IMM_CSR   = 7.asUInt(3.W)



  val ALU_X     = 0.asUInt(4.W)
  val ALU_ADD   = 1.asUInt(4.W)
  val ALU_SUB   = 2.asUInt(4.W)
  val ALU_SLT   = 3.asUInt(4.W)
  val ALU_SLTU  = 4.asUInt(4.W)
  val ALU_XOR   = 5.asUInt(4.W)
  val ALU_OR    = 6.asUInt(4.W)
  val ALU_AND   = 7.asUInt(4.W)
  val ALU_SLL   = 8.asUInt(4.W)
  val ALU_SRL   = 9.asUInt(4.W)
  val ALU_SRA   = 10.asUInt(4.W)
  val ALU_BGE   = 11.asUInt(4.W)
  val ALU_BGEU  = 12.asUInt(4.W)


  val MEM_X    = 0.asUInt(3.W)
  val MEM_B    = 1.asUInt(3.W)
  val MEM_H    = 2.asUInt(3.W)
  val MEM_W    = 3.asUInt(3.W)
  val MEM_D    = 4.asUInt(3.W)
  val MEM_BU   = 5.asUInt(3.W)
  val MEM_HU   = 6.asUInt(3.W)
  val MEM_WU   = 7.asUInt(3.W)


  val WB_X        = 0.asUInt(3.W)
  val WB_REG      = 1.asUInt(3.W)
  val WB_MEM_B    = 2.asUInt(3.W)
  val WB_MEM_H    = 3.asUInt(3.W)
  val WB_MEM_W    = 4.asUInt(3.W)
  val WB_JALR       = 5.asUInt(3.W)


}











