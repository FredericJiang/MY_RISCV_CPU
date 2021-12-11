import chisel3._
import chisel3.util._
import Instructions._
import Constant._


class Decode extends Module{
  val io = IO(new Bundle {
    val inst = Input(UInt(32.W))

    val valid         = Output(Bool())
    val alu_type    = Output(UInt(5.W))   
    val op1_type    = Output(UInt(3.W))
    val op2_type    = Output(UInt(3.W))
    val imm_type    = Output(UInt(3.W))
    val mem_rtype   = Output(UInt(3.W))
    val wb_type     = Output(UInt(3.W))
  
  })
  
  val inst = io.inst
  
  val ctrl = ListLookup( 
  inst, List( N,  Y,   ALU_X,    OP_X ,   OP_X,   IMM_X,   MEM_X, WB_X     ),
Array(//valid, width32  alu_type, op1_type,op2_type, imm?,men_r_type ,wb_type
// R-type
ADD     -> List( Y, Y,  ALU_ADD , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ), //NXT_PC +4
SUB     -> List( Y, Y,  ALU_SUB , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SLL     -> List( Y, Y,  ALU_SLL , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SLT     -> List( Y, Y,  ALU_SLT , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SLTU    -> List( Y, Y,  ALU_SLTU, OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
XOR     -> List( Y, Y,  ALU_XOR , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SRL     -> List( Y, Y,  ALU_SRL , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ), 
SRA     -> List( Y, Y,  ALU_SRA , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
OR      -> List( Y, Y,  ALU_OR  , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
AND     -> List( Y, Y,  ALU_AND , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
// I-type1
ADDI    -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
SLLI    -> List( Y, Y, ALU_SLL , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
SLTI    -> List( Y, Y, ALU_SLT , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
SLTIU   -> List( Y, Y, ALU_SLTU, OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
XORI    -> List( Y, Y, ALU_XOR , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
SRLI    -> List( Y, Y, ALU_SRL , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
SRAI    -> List( Y, Y, ALU_SRA , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
ORI     -> List( Y, Y, ALU_OR  , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
ANDI    -> List( Y, Y, ALU_AND , OP_REG , OP_IMM  , IMM_I , MEM_X, WB_REG  ),
//load-type instruction
LB      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_B,  WB_REG ),
LH      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_H,  WB_REG ),
LW      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_W,  WB_REG ),
LD      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_D,  WB_REG ),
LBU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_BU, WB_REG ),
LHU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_HU, WB_REG ),
LWU     -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM  , IMM_I , MEM_WU, WB_REG ),
//S-type
SB      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_B ),
SH      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_H ),
SW      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_W ),
SD      -> List( Y, Y, ALU_ADD , OP_REG , OP_IMM , IMM_S , MEM_X,  WB_MEM_D ),
//U-type
LUI     -> List( Y, Y, ALU_COPY2,  OP_X , OP_IMM , IMM_U , MEM_X, WB_REG ),
AUIPC   -> List( Y, Y, ALU_ADD ,  OP_PC , OP_IMM , IMM_U , MEM_X, WB_REG ),
//B-type
BEQ     -> List( Y ,Y, ALU_SUB,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X  ), //NXT_PC FROM IMM
BNE     -> List( Y ,Y, ALU_XOR,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X  ),
BLT     -> List( Y ,Y, ALU_SLT,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X  ),
BGE     -> List( Y ,Y, ALU_BGE,  OP_REG, OP_REG , IMM_B ,  MEM_X, WB_X  ),
BLTU    -> List( Y ,Y, ALU_SLTU, OP_REG, OP_REG , IMM_B  , MEM_X, WB_X  ),
BGEU    -> List( Y ,Y, ALU_BGEU, OP_REG, OP_REG , IMM_B  , MEM_X, WB_X  ),
//J-type
JAL     -> List( Y ,Y, ALU_ADD , OP_PC,   OP_4,   IMM_J,  MEM_X,  WB_REG  ), //NXT_PC FROM 
JALR    -> List( Y ,Y, ALU_ADD , OP_PC,   OP_4,   IMM_I,  MEM_X,  WB_REG  ), //NXT_PC FROM 
// RV64I only
ADDIW   -> List( Y, N, ALU_ADDW , OP_REG , OP_X   , IMM_I , MEM_X, WB_REG  ),
ADDW    -> List( Y, N, ALU_ADDW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SLLIW   -> List( Y, N, ALU_SLLW , OP_REG , OP_X   , IMM_I , MEM_X, WB_REG  ),
SRLIW   -> List( Y, N, ALU_SRLW , OP_REG , OP_X   , IMM_I , MEM_X, WB_REG  ),
SRAIW   -> List( Y, N, ALU_SRAW , OP_REG , OP_X   , IMM_I , MEM_X, WB_REG  ),
SUBW    -> List( Y, N, ALU_SUBW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SLLW    -> List( Y, N, ALU_SLLW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SRLW    -> List( Y, N, ALU_SRLW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  ),
SRAW    -> List( Y, N, ALU_SRAW , OP_REG , OP_REG , IMM_X , MEM_X, WB_REG  )

 //although RV64I shamt[4,0],so regards as RV32I

 ))



 val (valid: Bool) ::(inst_width32: Bool) :: alu_type :: op1_type :: op2_type :: imm_type :: mem_rtype :: wb_type :: Nil = ctrl



io.valid := valid
io.alu_type := alu_type
io.op1_type := op1_type
io.op2_type := op2_type
io.imm_type := imm_type
io.mem_rtype := mem_rtype
io.wb_type := wb_type



}
