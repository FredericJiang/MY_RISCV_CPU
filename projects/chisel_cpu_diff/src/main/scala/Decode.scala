import chisel3._
import chisel3.util._
import Instructions._
import Constant._


class Decode extends Module {
  val io = IO(new Bundle {
    val pc   = Input(UInt(32.W))
    val inst = Input(UInt(32.W))
    val inst_decode = Output(new MicroInst())   
   
  })
  
  
  val inst = io.inst

  val inst_decode = Wire(new MicroInst())

 inst_decode.pc     := io.pc
 inst_decode.nxt_pc := io.pc + 4.U
 inst_decode.inst   := inst
 


  inst_decode.rs1_addr := inst(19, 15)
  inst_decode.rs2_addr := inst(24, 20)
  inst_decode.rd_addr := inst(11, 7)

  inst_decode.rs1_en := false.B
  inst_decode.rs2_en := false.B


  val ctrl = ListLookup( inst, 
    
             List(N,   FU_X,   ALU_X,    JMP_X,    MEM_X,   MEM_X,     CSR_X,    N,   RS_X,         RS_X,        N, IMM_X),
Array(
  //           valid FuncUnit                                                  w32b?   rs1_type      rs2_type       imm_type
  ADDI   ->  List(Y,  FU_ALU,  ALU_ADD,  JMP_X,    MEM_X,   MEM_X,     CSR_X,    N,   RS_FROM_RF,   RS_FROM_IMM, Y, IMM_I),
  AUIPC  ->  List(Y,  FU_ALU,  ALU_ADD,  JMP_X,    MEM_X,   MEM_X,     CSR_X,    N,   RS_FROM_PC,   RS_FROM_IMM, Y, IMM_U)

  
  
  
  
  
  
  
   ) 
 )



val (valid:Bool)    :: fu_code :: alu_code :: jmp_code :: mem_code ::mem_size :: csr_code :: oprend = ctrl

val (width_32 : Bool) :: rs1_src :: rs2_src  :: (rd_en : Bool) :: imm_type :: Nil                     = oprend  


  inst_decode.valid     := valid
  inst_decode.fu_code   := fu_code
  inst_decode.alu_code  := alu_code
  inst_decode.jmp_code  := jmp_code
  inst_decode.mem_code  := mem_code
  inst_decode.mem_size  := mem_size
  inst_decode.csr_code  := csr_code
  inst_decode.width_32  := width_32
  inst_decode.rs1_src   := rs1_src
  inst_decode.rs2_src   := rs2_src
  inst_decode.rd_en     := rd_en





  
  val imm_i = Cat(Fill(53, inst(31)), inst(30, 20)) //sext imm to 64 bits
  val imm_s = Cat(Fill(53, inst(31)), inst(30, 25), inst(11, 7))
  val imm_b = Cat(Fill(52, inst(31)), inst(7), inst(30, 25), inst(11, 8), 0.U)

  inst_decode.imm := MuxLookup(imm_type, 0.U(32.W), Array(
    IMM_I -> imm_i,
    IMM_S -> imm_s,
    IMM_B -> imm_b,
  ))




io.inst_decode := inst_decode



}
