import chisel3._
import chisel3.util._
import chisel3.util.experimental._
import difftest._
import Constant._



class Core extends Module {
  val io = IO(new Bundle {
    val imem = new RomIO
    val dmem = new RamIO
  })
  

//Initialize
/*
  io.dmem.wdata  := DontCare
  io.dmem.wmask  := "hffffffffffffffff".U
  io.dmem.addr   := DontCare
  io.dmem.wen    := DontCare
  regfile.io.rd_data := DontCare
*/

  val stall = Wire(Bool())
  stall    := false.B
//*******************************************************************

// Pipline State Registers

//*******************************************************************

// Instruction Fetch State 

  val if_reg_pc        = RegInit("h80000000".U(32.W))
  val if_reg_pc_valid  = RegInit(false.B)
  val if_reg_inst      = RegInit(0.U(64.W))

// Instruction Decode State 


val id_reg_pc     = RegInit(0.U(32.W))
val id_reg_inst   = RegInit(0.U(64.W))

// Execute State

val exe_reg_pc        = RegInit(0.U(32.W))
val exe_reg_inst      = RegInit(0.U(64.W))

val exe_reg_alu_type  = RegInit(ALU_X) 
val exe_reg_wb_type   = RegInit(WB_X)  
val exe_reg_mem_rtype = RegInit(MEM_X) 
val exe_reg_imm_type  = RegInit(IMM_X)
val exe_reg_op1_type  = RegInit(OP_X)
val exe_reg_op2_type  = RegInit(OP_X)

val exe_reg_op1_data  = Reg(UInt(64.W))
val exe_reg_op2_data  = Reg(UInt(64.W))
val exe_reg_rs2_data  = Reg(UInt(64.W))
val exe_reg_imm       = Reg(UInt(64.W))
val exe_reg_rd_en     = Reg(Bool())
val exe_reg_dmem_en   = Reg(Bool())
val exe_reg_dmem_wen  = Reg(Bool())

val exe_reg_rs1_addr  =  RegInit(0.U(64.W)) 
val exe_reg_rs2_addr  =  RegInit(0.U(64.W)) 
val exe_reg_rd_addr   =  RegInit(0.U(64.W)) 

// Memory State

val mem_reg_dmem_en   = Reg(Bool())
val mem_reg_dmem_wen  = Reg(Bool())
val mem_reg_rd_en     = Reg(Bool())
val mem_reg_pc        = RegInit(0.U(32.W))
val mem_reg_inst      =  RegInit(0.U(64.W))  

val mem_reg_alu_type  =  RegInit(ALU_X) 
val mem_reg_wb_type   =  RegInit(WB_X)  
val mem_reg_mem_rtype =  RegInit(MEM_X) 

val mem_reg_alu_out   =  RegInit(0.U(64.W))     
val mem_reg_imm       =  RegInit(0.U(64.W))   
val mem_reg_rs2_data  =  RegInit(0.U(64.W))  


val mem_reg_rs1_addr  =  RegInit(0.U(64.W)) 
val mem_reg_rs2_addr  =  RegInit(0.U(64.W)) 
val mem_reg_rd_addr   =  RegInit(0.U(64.W)) 

// Writeback State

val wb_reg_pc        = RegInit(0.U(32.W))
val wb_reg_inst      =  RegInit(0.U(64.W))   
val wb_reg_wb_type   =  RegInit(WB_X)  
val wb_reg_mem_rtype =  RegInit(MEM_X) 
val wb_reg_alu_out   =  Reg(UInt(64.W))     
val wb_reg_rd_data   =  Reg(UInt(64.W))   
val wb_reg_rd_en     =  Reg(Bool())
val wb_reg_rd_addr   =  RegInit(0.U(64.W)) 
val wb_reg_wdata     =  RegInit(0.U(64.W)) 
val wb_reg_wdest     =  RegInit(0.U(64.W)) 
val wb_reg_wen       =  Reg(Bool())




val exe_pc_jmp  = Wire(Bool())
val exe_pc_nxt  = RegInit(0.U(32.W)) 
val exe_alu_out = Wire(UInt(64.W))
val mem_rd_data = Wire(UInt(64.W))
val wb_rd_data = Wire(UInt(64.W))

//********************************************************
//Instruction Fetch Stage


when( if_reg_inst =/= 0.U ){ if_reg_pc_valid := true.B }

when(!stall && !exe_pc_jmp){

if_reg_pc  := if_reg_pc + 4.U

}.elsewhen(stall){

if_reg_pc := if_reg_pc

}.elsewhen(exe_pc_jmp){

  if_reg_pc  := exe_pc_nxt
}

io.imem.en   := true.B
io.imem.addr := if_reg_pc

val if_inst   = io.imem.rdata




// Instruction Fetch >>>>>>>> Instruction Decode
//*******************************************************************


when(!stall && !exe_pc_jmp){

id_reg_inst  := if_inst

}.elsewhen(!stall && exe_pc_jmp){

id_reg_inst  := BUBBLE

}
.elsewhen(stall){
 
id_reg_inst  := id_reg_inst 

}






//*******************************************************************
//Decode Instruction Stage

val id_rs1_addr = id_reg_inst(19, 15)
val id_rs2_addr = id_reg_inst(24, 20)

val regfile = Module(new RegFile)
regfile.io.rs1_addr := id_rs1_addr
regfile.io.rs2_addr := id_rs2_addr



val decode = Module(new Decode)
decode.io.inst      := id_reg_inst



val imm_gen = Module(new ImmGen)
imm_gen.io.imm_type := decode.io.imm_type
imm_gen.io.inst     := id_reg_inst





val id_op1  =  MuxCase( regfile.io.rs1_data  , Array(
                  (decode.io.op1_type === OP_IMM) -> imm_gen.io.imm,
                  (decode.io.op1_type === OP_PC)  -> id_reg_pc,
                  ((exe_reg_rd_addr === id_rs1_addr) && (id_rs1_addr =/= 0.U) && exe_reg_rd_en) -> exe_alu_out,
                  ((mem_reg_rd_addr === id_rs1_addr) && (id_rs1_addr =/= 0.U) && mem_reg_rd_en) -> mem_rd_data,
                  ((wb_reg_rd_addr  === id_rs1_addr) && (id_rs1_addr =/= 0.U) &&  wb_reg_rd_en) -> wb_rd_data
                  ))


       
val id_op2 =  MuxCase( regfile.io.rs1_data , Array(
                  (decode.io.op2_type === OP_IMM) -> imm_gen.io.imm,
                  (decode.io.op2_type === OP_4)   -> 4.U,
                  ((exe_reg_rd_addr === id_rs2_addr) && (id_rs2_addr =/= 0.U) && exe_reg_rd_en) -> exe_alu_out,
                  ((mem_reg_rd_addr === id_rs2_addr) && (id_rs2_addr =/= 0.U) && mem_reg_rd_en) -> mem_rd_data,
                  ((wb_reg_rd_addr  === id_rs2_addr) && (id_rs2_addr =/= 0.U) &&  wb_reg_rd_en) -> wb_rd_data
                  ))

val id_rs2 =  MuxCase( regfile.io.rs2_data , Array(
                  ((exe_reg_rd_addr === id_rs2_addr) && (id_rs2_addr =/= 0.U) && exe_reg_rd_en) -> exe_alu_out,
                  ((mem_reg_rd_addr === id_rs2_addr) && (id_rs2_addr =/= 0.U) && mem_reg_rd_en) -> mem_rd_data,
                  ((wb_reg_rd_addr  === id_rs2_addr) && (id_rs2_addr =/= 0.U) &&  wb_reg_rd_en) -> wb_rd_data
                  ))



// load instruciton in exe stage, and address conflict
//generate a bubble
when(exe_reg_mem_rtype =/= MEM_X &&( exe_reg_rd_addr === id_rs2_addr || exe_reg_rd_addr === id_rs1_addr ))
{ stall := true.B }







//Instruction Decode  >>>>>>>>>>>>>>>>>>>   Execute
//*******************************************************************


when(!stall && !exe_pc_jmp){
exe_reg_pc        := id_reg_pc
exe_reg_inst      := id_reg_inst

exe_reg_op1_type  := decode.io.op1_type
exe_reg_op2_type  := decode.io.op2_type
exe_reg_alu_type  := decode.io.alu_type
exe_reg_mem_rtype := decode.io.mem_rtype
exe_reg_imm_type  := decode.io.imm_type
exe_reg_wb_type   := decode.io.wb_type

exe_reg_rs1_addr  := id_reg_inst(19, 15)
exe_reg_rs2_addr  := id_reg_inst(24, 20)
exe_reg_rd_addr   := id_reg_inst(11,  7)

exe_reg_imm       := imm_gen.io.imm
exe_reg_rs2_data  := id_rs2   //   only used in store struction, and its op2_type is reg, so there is actually no difference with id_op2

exe_reg_op1_data  := id_op1
exe_reg_op2_data  := id_op2


exe_reg_rd_en     := (decode.io.wb_type === WB_REG)
exe_reg_dmem_wen  := (decode.io.wb_type =/= WB_REG) && (exe_reg_wb_type =/= WB_X)
exe_reg_dmem_en   := (decode.io.mem_rtype =/= MEM_X) || exe_reg_dmem_wen

}.elsewhen(stall || exe_pc_jmp){
//if stall exe insert a bubble
exe_reg_pc        := 0.U
exe_reg_inst      := BUBBLE
exe_reg_rd_en     := false.B
exe_reg_dmem_wen  := false.B
exe_reg_dmem_en   := false.B
exe_reg_imm_type  := 0.U
exe_reg_alu_type  := 0.U
exe_reg_imm       := 0.U
exe_reg_op2_type  := 0.U
exe_reg_op1_data  := 0.U
}






//*******************************************************************
// Execute Stage

val exe_op1     = Wire(UInt(64.W))
val exe_op2     = Wire(UInt(64.W))



exe_op1 := exe_reg_op1_data 
exe_op2 := exe_reg_op2_data 

val alu = Module(new ALU)
alu.io.alu_type := exe_reg_alu_type
alu.io.in1      := exe_op1
alu.io.in2      := exe_op2
exe_alu_out     := alu.io.alu_out


val nxt_pc = Module(new Nxt_PC)
nxt_pc.io.pc       := exe_reg_pc
nxt_pc.io.imm_type := exe_reg_imm_type
nxt_pc.io.alu_type := exe_reg_alu_type
nxt_pc.io.imm      := exe_reg_imm
nxt_pc.io.alu_out  := exe_alu_out
nxt_pc.io.rs1_data := exe_op1
nxt_pc.io.op2_type := exe_reg_op2_type


exe_pc_nxt  := nxt_pc.io.pc_nxt
exe_pc_jmp  := nxt_pc.io.pc_jmp  //current instruction jmp_flag


//Execute  >>>>>>>>>>>>>>>>>>>>> Memory
//*******************************************************************
mem_reg_pc         := exe_reg_pc
mem_reg_inst       := exe_reg_inst

mem_reg_mem_rtype  := exe_reg_mem_rtype
mem_reg_wb_type    := exe_reg_wb_type
mem_reg_alu_out    := exe_alu_out
mem_reg_rs2_data   := exe_reg_rs2_data

mem_reg_rs1_addr   := exe_reg_rs1_addr
mem_reg_rs2_addr   := exe_reg_rs2_addr
mem_reg_rd_addr    := exe_reg_rd_addr

mem_reg_rd_en      := exe_reg_rd_en 
mem_reg_dmem_wen   := exe_reg_dmem_wen
mem_reg_dmem_en    := exe_reg_dmem_en

//*******************************************************************
//MEMORY Stage

val mem_dmem_addr = Wire(UInt(64.W))



// read & write memory address is from ALU
when(mem_reg_dmem_en){mem_dmem_addr := mem_reg_alu_out}    
.otherwise{mem_dmem_addr := 0.U}


// Operation with Memory
io.dmem.en    := mem_reg_dmem_en
io.dmem.wen   := mem_reg_dmem_wen
io.dmem.addr  := mem_dmem_addr


val mem_dmem_rdata = io.dmem.rdata


val lsu = Module(new LSU)
lsu.io.dmem_addr  := mem_dmem_addr

lsu.io.mem_rtype  := mem_reg_mem_rtype
lsu.io.dmem_rdata := mem_dmem_rdata

lsu.io.wb_type    := mem_reg_wb_type
lsu.io.rs2_data   := mem_reg_rs2_data  //write memory data is from rs2


mem_rd_data   := lsu.io.rd_data

io.dmem.wmask := lsu.io.dmem_wmask
io.dmem.wdata := lsu.io.dmem_wdata



// Memmory >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Write Back
//*******************************************************************

// signals for difftest
wb_reg_inst        := mem_reg_inst
wb_reg_pc          := mem_reg_pc
wb_reg_wdata       := lsu.io.dmem_wdata
wb_reg_wdest       := mem_dmem_addr
wb_reg_wen          := mem_reg_dmem_wen


wb_reg_mem_rtype   := mem_reg_mem_rtype 
wb_reg_alu_out     := mem_reg_alu_out
wb_reg_rd_data     := mem_rd_data
wb_reg_rd_addr     := mem_reg_rd_addr
wb_reg_rd_en       := mem_reg_rd_en

//*******************************************************************
//WriteBack

//write back to reg enalbe
regfile.io.rd_en   := wb_reg_rd_en
regfile.io.rd_addr := wb_reg_rd_addr


wb_rd_data  := MuxCase(0.U, Array(
                  (wb_reg_mem_rtype === MEM_X) -> wb_reg_alu_out,
                  (wb_reg_mem_rtype =/= MEM_X) -> wb_reg_rd_data
                  ))


regfile.io.rd_data := wb_rd_data

















/* ------------------ Difftest ------------------ */

val dt_valid = Wire(Bool())
dt_valid := (wb_reg_inst =/= BUBBLE)




  val dt_ic = Module(new DifftestInstrCommit)
  dt_ic.io.clock    := clock
  dt_ic.io.coreid   := RegNext(0.U)
  dt_ic.io.index    := RegNext(0.U)
  dt_ic.io.valid    := RegNext(dt_valid)
  dt_ic.io.pc       := RegNext(wb_reg_pc)
  dt_ic.io.instr    := RegNext(wb_reg_inst)
  dt_ic.io.special  := RegNext(0.U)
  dt_ic.io.skip     := RegNext(false.B)
  dt_ic.io.isRVC    := RegNext(false.B)
  dt_ic.io.scFailed := RegNext(false.B)
  dt_ic.io.wen      := RegNext(wb_reg_wen)
  dt_ic.io.wdata    := RegNext(wb_reg_wdata)
  dt_ic.io.wdest    := RegNext(wb_reg_wdest)

  val dt_ae = Module(new DifftestArchEvent)
  dt_ae.io.clock        := clock
  dt_ae.io.coreid       := 0.U
  dt_ae.io.intrNO       := 0.U
  dt_ae.io.cause        := 0.U
  dt_ae.io.exceptionPC  := 0.U

  val cycle_cnt = RegInit(0.U(64.W))
  val instr_cnt = RegInit(0.U(64.W))
  when(dt_ic.io.valid ){
  cycle_cnt := cycle_cnt + 1.U
  instr_cnt := instr_cnt + 1.U
}
  val rf_a0 = WireInit(0.U(64.W))
  BoringUtils.addSink(rf_a0, "rf_a0")

  val dt_te = Module(new DifftestTrapEvent)
  dt_te.io.clock    := clock
  dt_te.io.coreid   := 0.U
  dt_te.io.valid    := (wb_reg_inst === "h0000006b".U)
  dt_te.io.code     := rf_a0(2, 0)
  dt_te.io.pc       := wb_reg_pc
  dt_te.io.cycleCnt := cycle_cnt
  dt_te.io.instrCnt := instr_cnt

  val dt_cs = Module(new DifftestCSRState)
  dt_cs.io.clock          := clock
  dt_cs.io.coreid         := 0.U
  dt_cs.io.priviledgeMode := 0.U  // Machine mode
  dt_cs.io.mstatus        := 0.U
  dt_cs.io.sstatus        := 0.U
  dt_cs.io.mepc           := 0.U
  dt_cs.io.sepc           := 0.U
  dt_cs.io.mtval          := 0.U
  dt_cs.io.stval          := 0.U
  dt_cs.io.mtvec          := 0.U
  dt_cs.io.stvec          := 0.U
  dt_cs.io.mcause         := 0.U
  dt_cs.io.scause         := 0.U
  dt_cs.io.satp           := 0.U
  dt_cs.io.mip            := 0.U
  dt_cs.io.mie            := 0.U
  dt_cs.io.mscratch       := 0.U
  dt_cs.io.sscratch       := 0.U
  dt_cs.io.mideleg        := 0.U
  dt_cs.io.medeleg        := 0.U


//printf("pc in core =%x, inst in core =%x, nxt pc =%x \n",pc,inst,nxt_pc.io.pc_nxt)
//printf("dt_ic_valid =%x, dt_pc =%x, dt_inst =%x  \n",dt_ic.io.valid ,dt_ic.io.pc ,dt_ic.io.instr)
//printf("dt_ic.io.wen =%x, dt_ic.io.wdata =%x, dt_ic.io.wdest =%x \n",dt_ic.io.wen ,dt_ic.io.wdata ,dt_ic.io.wdest)
//printf("alu type =%x, alu out =%x, imm =%x \n",alu.io.alu_type,alu.io.alu_out,imm_gen.io.imm)
}
