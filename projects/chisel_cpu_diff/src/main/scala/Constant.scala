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
  val OP_IMM      = 2.asUInt(3.W)
  val OP_PC       = 3.asUInt(3.W)
  val OP_4        = 4.asUInt(3.W)

  


  val IMM_X     = 0.asUInt(3.W)
  val IMM_I     = 1.asUInt(3.W)
  val IMM_S     = 2.asUInt(3.W)
  val IMM_B     = 3.asUInt(3.W)
  val IMM_U     = 4.asUInt(3.W)
  val IMM_J     = 5.asUInt(3.W)
  val IMM_SHAMT = 6.asUInt(3.W)
  val IMM_CSR   = 7.asUInt(3.W)



  val ALU_X     = 0.asUInt(5.W)
  val ALU_ADD   = 1.asUInt(5.W)
  val ALU_SUB   = 2.asUInt(5.W)
  val ALU_SLT   = 3.asUInt(5.W)
  val ALU_SLTU  = 4.asUInt(5.W)
  val ALU_XOR   = 5.asUInt(5.W)
  val ALU_OR    = 6.asUInt(5.W)
  val ALU_AND   = 7.asUInt(5.W)
  val ALU_SLL   = 8.asUInt(5.W)
  val ALU_SRL   = 9.asUInt(5.W)
  val ALU_SRA   = 10.asUInt(5.W)
  val ALU_BGE   = 11.asUInt(5.W)
  val ALU_BGEU  = 12.asUInt(5.W)
  val ALU_ADDW  = 13.asUInt(5.W)
  val ALU_SLLW  = 14.asUInt(5.W)
  val ALU_SRLW  = 15.asUInt(5.W)
  val ALU_SRAW  = 16.asUInt(5.W)
  val ALU_SUBW  = 17.asUInt(5.W)
  val ALU_COPY1 = 18.asUInt(5.W)
  val ALU_COPY2 = 19.asUInt(5.W)
  val ALU_MY_INST = 20.asUInt(5.W)


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
  val WB_MEM_D    = 5.asUInt(3.W)

  val CSR_X       = 0.asUInt(3.W)
  val CSR_ECALL   = 1.asUInt(3.W)
  val CSR_MRET    = 2.asUInt(3.W)
  val CSR_RW      = 3.asUInt(3.W)
  val CSR_RS      = 4.asUInt(3.W)
  val CSR_RC      = 5.asUInt(3.W)

  val BUBBLE         = "h0000000000000000".U(64.W)
  val CLINT_MTIMECMP = "h0000000002004000".U(64.W)
  val CLINT_MTIME    = "h000000000200bff8".U(64.W)


//  nop  =　addi r0, r0, x0
}


object csr_addr {
  val mhartid  = "hf14".U
  val mstatus  = "h300".U
  val mie      = "h304".U
  val mtvec    = "h305".U
  val mscratch = "h340".U
  val mepc     = "h341".U
  val mcause   = "h342".U
  val mip      = "h344".U
  val mcycle   = "hb00".U
  val minstret = "hb02".U
}









