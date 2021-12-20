import chisel3._ 
import chisel3.util._
import Constant._



//*******************************************************************
// Pipline State Registers
//*******************************************************************

// Instruction Fetch State 

object PipelineReg{
  val if_reg_pc        = RegInit("h80000000".U(32.W))
  val if_reg_pc_valid  = RegInit(false.B)
  val if_reg_inst      = RegInit(0.U(64.W))

// Instruction Decode State 

val id_reg_pc     = RegInit("h7ffffffc".U(32.W))
val id_reg_inst   = RegInit(0.U(64.W))

// Execute State

val exe_reg_pc        = RegInit("h7ffffffc".U(32.W))
val exe_reg_inst      = RegInit(0.U(64.W))

val exe_reg_alu_type  = RegInit(ALU_X) 
val exe_reg_wb_type   = RegInit(WB_X)  
val exe_reg_mem_rtype = RegInit(MEM_X) 
val exe_reg_imm_type  = RegInit(IMM_X)
val exe_reg_csr_type  = RegInit(CSR_X)
val exe_reg_op1_type  = RegInit(OP_X)
val exe_reg_op2_type  = RegInit(OP_X)

val exe_reg_op1_data  = Reg(UInt(64.W))
val exe_reg_op2_data  = Reg(UInt(64.W))
val exe_reg_rs2_data  = Reg(UInt(64.W))
val exe_reg_rs1_data  = Reg(UInt(64.W))
val exe_reg_imm       = Reg(UInt(64.W))
val exe_reg_rd_wen     = Reg(Bool())
val exe_reg_dmem_en   = Reg(Bool())
val exe_reg_dmem_wen  = Reg(Bool())


val exe_reg_rs1_addr  =  RegInit(0.U(64.W)) 
val exe_reg_rs2_addr  =  RegInit(0.U(64.W)) 
val exe_reg_rd_addr   =  RegInit(0.U(64.W)) 

// Memory State

val mem_reg_dmem_en   = Reg(Bool())
val mem_reg_dmem_wen  = Reg(Bool())
val mem_reg_rd_wen     = Reg(Bool())
val mem_reg_pc        = RegInit("h7ffffffc".U(32.W))
val mem_reg_inst      = RegInit(0.U(64.W))  

val mem_reg_csr_rd_wen  = Reg(Bool())
val mem_reg_csr_rd_data = RegInit(0.U(64.W))
val mem_reg_clint_en    = RegInit(false.B)

val mem_reg_alu_type  =  RegInit(ALU_X) 
val mem_reg_wb_type   =  RegInit(WB_X)  
val mem_reg_mem_rtype =  RegInit(MEM_X) 
val mem_reg_csr_type  =  RegInit(CSR_X)
val mem_reg_rs1_data  = Reg(UInt(64.W))

val mem_reg_alu_out   =  RegInit(0.U(64.W))     
val mem_reg_imm       =  RegInit(0.U(64.W))   
val mem_reg_rs2_data  =  RegInit(0.U(64.W))  


val mem_reg_rs1_addr  =  RegInit(0.U(64.W)) 
val mem_reg_rs2_addr  =  RegInit(0.U(64.W)) 
val mem_reg_rd_addr   =  RegInit(0.U(64.W)) 

// Writeback State

val wb_reg_pc        =  RegInit("h7ffffffc".U(32.W))
val wb_reg_inst      =  RegInit(0.U(64.W))   
val wb_reg_wb_type   =  RegInit(WB_X)  
val wb_reg_mem_rtype =  RegInit(MEM_X)
val wb_reg_alu_type  =  RegInit(ALU_X)  
val wb_reg_csr_type  =  RegInit(CSR_X)
val wb_reg_alu_out   =  Reg(UInt(64.W))     
val wb_reg_rd_data   =  Reg(UInt(64.W))   
val wb_reg_rd_wen     =  Reg(Bool())
val wb_reg_rd_addr   =  RegInit(0.U(64.W)) 
val wb_reg_wdata     =  RegInit(0.U(64.W)) 
val wb_reg_wdest     =  RegInit(0.U(64.W)) 
val wb_reg_dmem_wen       =  Reg(Bool())
val wb_reg_rs1_data   = Reg(UInt(64.W))
val wb_reg_csr_rd_wen  = Reg(Bool())
val wb_reg_csr_rd_data = RegInit(0.U(64.W))
val wb_reg_clint_en  = RegInit(false.B)


val mem_reg_mie      =  RegInit(0.U(64.W))
val mem_reg_mstatus  =  RegInit(0.U(64.W))
val mem_reg_mepc     =  RegInit(0.U(64.W))
val mem_reg_mcause   =  RegInit(0.U(64.W))
val mem_reg_mtvec    =  RegInit(0.U(64.W))
val mem_reg_mscratch =  RegInit(0.U(64.W))
val mem_reg_intrpt   =  Reg(Bool())
val mem_reg_intrpt_no =  RegInit(0.U(64.W))

val wb_reg_mie      =  RegInit(0.U(64.W))
val wb_reg_mstatus  =  RegInit(0.U(64.W))
val wb_reg_mepc     =  RegInit(0.U(64.W))
val wb_reg_mcause   =  RegInit(0.U(64.W))
val wb_reg_mtvec    =  RegInit(0.U(64.W))
val wb_reg_mscratch =  RegInit(0.U(64.W))
val wb_reg_intrpt   =  Reg(Bool())
val wb_reg_intrpt_no =  RegInit(0.U(64.W))

val kill_stage  = Wire(Bool())
val exe_pc_nxt  = Wire(UInt(32.W))
val exe_alu_out = Wire(UInt(64.W))
val mem_rd_data = Wire(UInt(64.W))
val wb_rd_data = Wire(UInt(64.W))

}