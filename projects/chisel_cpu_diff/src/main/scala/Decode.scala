import chisel3._
import chisel3.util._
import Instructions._
import Constant._


class Decode extends Module{
  val io = IO(new Bundle {
    val inst = Input(UInt(32.W))

    val valid       = Output(Bool())
    val alu_type    = Output(UInt(5.W))   
    val op1_type    = Output(UInt(3.W))
    val op2_type    = Output(UInt(3.W))
    val imm_type    = Output(UInt(3.W))
    val mem_rtype   = Output(UInt(3.W))
    val wb_type     = Output(UInt(3.W))
    val csr_type    = Output(UInt(3.W))
  
  })
  
  val inst = io.inst
  
  val ctrl = ListLookup( 
  inst, List( N,  Y,   ALU_X,    OP_X ,   OP_X,   IMM_X,   MEM_X, WB_X , CSR_X    ),
Array(//valid, width32  alu_type, op1_type,op2_type, imm?,men_r_type ,wb_type
// R-type
ADD     -> List( Y, Y,  ALU_ADD , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ), //NXT_PC +4
SUB     -> List( Y, Y,  ALU_SUB , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SLL     -> List( Y, Y,  ALU_SLL , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SLT     -> List( Y, Y,  ALU_SLT , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SLTU    -> List( Y, Y,  ALU_SLTU, OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
XOR     -> List( Y, Y,  ALU_XOR , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SRL     -> List( Y, Y,  ALU_SRL , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ), 
SRA     -> List( Y, Y,  ALU_SRA , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
OR      -> List( Y, Y,  ALU_OR  , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
AND     -> List( Y, Y,  ALU_AND , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
// I-type1
ADDI    -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
SLLI    -> List( Y, Y, ALU_SLL , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
SLTI    -> List( Y, Y, ALU_SLT , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
SLTIU   -> List( Y, Y, ALU_SLTU, OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
XORI    -> List( Y, Y, ALU_XOR , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
SRLI    -> List( Y, Y, ALU_SRL , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
SRAI    -> List( Y, Y, ALU_SRA , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
ORI     -> List( Y, Y, ALU_OR  , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
ANDI    -> List( Y, Y, ALU_AND , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG , CSR_X  ),
//load-type instruction
LB      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_B,  WB_REG , CSR_X ),
LH      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_H,  WB_REG , CSR_X ),
LW      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_W,  WB_REG , CSR_X ),
LD      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_D,  WB_REG , CSR_X ),
LBU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_BU, WB_REG , CSR_X ),
LHU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_HU, WB_REG , CSR_X ),
LWU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_WU, WB_REG , CSR_X ),
//S-type
SB      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_B , CSR_X ),
SH      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_H , CSR_X ),
SW      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_W , CSR_X ),
SD      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_D , CSR_X ),
//U-type
LUI     -> List( Y, Y, ALU_COPY2,  OP_X  , OP_IMM , IMM_U , MEM_X, WB_REG , CSR_X ),
AUIPC   -> List( Y, Y, ALU_ADD  ,  OP_PC , OP_IMM , IMM_U , MEM_X, WB_REG , CSR_X ),
//B-type
BEQ     -> List( Y ,Y, ALU_SUB,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X , CSR_X  ), //NXT_PC FROM IMM
BNE     -> List( Y ,Y, ALU_XOR,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X , CSR_X  ),
BLT     -> List( Y ,Y, ALU_SLT,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X , CSR_X  ),
BGE     -> List( Y ,Y, ALU_BGE,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X , CSR_X  ),
BLTU    -> List( Y ,Y, ALU_SLTU, OP_REG, OP_REG , IMM_B  , MEM_X, WB_X , CSR_X  ),
BGEU    -> List( Y ,Y, ALU_BGEU, OP_REG, OP_REG , IMM_B  , MEM_X, WB_X , CSR_X  ),
//J-type
JAL     -> List( Y ,Y, ALU_ADD , OP_PC,   OP_4,   IMM_J,  MEM_X,  WB_REG , CSR_X  ), //NXT_PC FROM 
JALR    -> List( Y ,Y, ALU_ADD , OP_PC,   OP_4,   IMM_I,  MEM_X,  WB_REG , CSR_X  ), //NXT_PC FROM 
// RV64I only
ADDIW   -> List( Y, N, ALU_ADDW , OP_REG , OP_IMM , IMM_I , MEM_X, WB_REG , CSR_X  ),
ADDW    -> List( Y, N, ALU_ADDW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SLLIW   -> List( Y, N, ALU_SLLW , OP_REG , OP_IMM , IMM_I , MEM_X, WB_REG , CSR_X  ),
SRLIW   -> List( Y, N, ALU_SRLW , OP_REG , OP_IMM , IMM_I , MEM_X, WB_REG , CSR_X  ),
SRAIW   -> List( Y, N, ALU_SRAW , OP_REG , OP_IMM , IMM_I , MEM_X, WB_REG , CSR_X  ),
SUBW    -> List( Y, N, ALU_SUBW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SLLW    -> List( Y, N, ALU_SLLW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SRLW    -> List( Y, N, ALU_SRLW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
SRAW    -> List( Y, N, ALU_SRAW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG , CSR_X  ),
 //although RV64I shamt[4,0],so regards as RV32I

CSRRW   ->  List(Y, N, ALU_COPY1,  OP_REG , OP_X , IMM_X   , MEM_X , WB_REG , CSR_RW   ),
CSRRS   ->  List(Y, N, ALU_COPY1,  OP_REG , OP_X , IMM_X   , MEM_X , WB_REG , CSR_RS   ),
CSRRC   ->  List(Y, N, ALU_COPY1,  OP_REG , OP_X , IMM_X   , MEM_X , WB_REG , CSR_RC   ),
CSRRWI  ->  List(Y, N, ALU_COPY1,  OP_IMM , OP_X , IMM_CSR , MEM_X , WB_REG , CSR_RW   ),
CSRRSI  ->  List(Y, N, ALU_COPY1,  OP_IMM , OP_X , IMM_CSR , MEM_X , WB_REG , CSR_RS   ),
CSRRCI  ->  List(Y, N, ALU_COPY1,  OP_IMM , OP_X , IMM_CSR , MEM_X , WB_REG , CSR_RC   ),
ECALL   ->  List(Y, N, ALU_X,      OP_X   , OP_X , IMM_X   , MEM_X , WB_X   , CSR_ECALL),
MRET    ->  List(Y, N, ALU_X,      OP_X   , OP_X , IMM_X   , MEM_X , WB_X   , CSR_MRET ),

MY_INST ->  List(Y, N, ALU_MY_INST, OP_X  , OP_X , IMM_X   , MEM_X , WB_X   , CSR_X    )

 ))



 val (valid: Bool) ::(inst_width32: Bool) :: alu_type :: op1_type :: op2_type :: imm_type :: mem_rtype :: wb_type :: csr_type :: Nil = ctrl



io.valid := valid
io.alu_type  := alu_type
io.op1_type  := op1_type
io.op2_type  := op2_type
io.imm_type  := imm_type
io.mem_rtype := mem_rtype
io.wb_type   := wb_type
io.csr_type  := csr_type


}
