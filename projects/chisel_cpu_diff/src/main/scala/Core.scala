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
   
  
  val pc = RegInit("h80000000".U(32.W))
  val pc_en =RegInit(false.B)
 
  
  val nxt_pc = Module(new Nxt_PC)
  val decode = Module(new Decode)
  val regfile = Module(new RegFile)
  val imm_gen = Module(new ImmGen)
  val alu = Module(new ALU)


//Initialize

io.dmem.wdata := DontCare
io.dmem.wmask := DontCare
io.dmem.addr := DontCare
io.dmem.wen := DontCare
regfile.io.rd_data := DontCare

val inst = io.imem.rdata
pc_en :=true.B
pc := Mux(pc_en && (inst=/=0.U),nxt_pc.io.pc_nxt, "h80000000".U)


// InstFetch
  
io.imem.en    := true.B
io.imem.addr  := pc
  



  //Decode
  

  //if need reg address, gain from instruction directly
  regfile.io.rs1_addr := inst(19,15)
  regfile.io.rs2_addr := inst(24,20)
  regfile.io.rd_addr  := inst(11, 7)
  

  
  decode.io.inst := inst
 
  nxt_pc.io.pc := pc
  nxt_pc.io.imm_type := decode.io.imm_type
  nxt_pc.io.alu_type := decode.io.alu_type
  nxt_pc.io.wb_type := decode.io.wb_type
  nxt_pc.io.imm := imm_gen.io.imm
  nxt_pc.io.alu_out := alu.io.alu_out


  imm_gen.io.imm_type := decode.io.imm_type
  imm_gen.io.inst := inst


//write back to reg enalbe
  regfile.io.rd_en := (decode.io.wb_type === WB_REG) || (decode.io.wb_type === WB_JALR)
// read memory enable
  io.dmem.en := (decode.io.mem_rtype =/= MEM_X)
// write memory enable
  io.dmem.wen := (decode.io.wb_type === WB_MEM_B) || (decode.io.wb_type === WB_MEM_H) || (decode.io.wb_type === WB_MEM_W )
  alu.io.alu_type := decode.io.alu_type
  




  // EXE
  

  // generate operand_1
  when( alu.io.alu_type =/= ALU_X && decode.io.op1_type === OP_REG){
  alu.io.in1 := regfile.io.rs1_data
  }.elsewhen(alu.io.alu_type =/= ALU_X && decode.io.op1_type === OP_PC){ //only for JAL
  alu.io.in1 := pc
  }.otherwise{alu.io.in1 := 0.U}

  
  // generate operand_2
  when(decode.io.op2_type === OP_REG && decode.io.imm_type === IMM_X){
  //R-type instruction
  alu.io.in2 := regfile.io.rs2_data
  }.elsewhen(decode.io.op2_type === OP_X && decode.io.imm_type =/= IMM_X && decode.io.imm_type =/= IMM_J){
  //I-type1 instruction  AUIPC JALR
  alu.io.in2 :=  imm_gen.io.imm
  }.elsewhen(decode.io.op2_type === OP_REG && decode.io.imm_type === IMM_S){
  //S-type instruction
  alu.io.in2 := imm_gen.io.imm
  }.elsewhen(decode.io.op2_type === OP_X && decode.io.imm_type === IMM_J){
  // JAL
  alu.io.in2 := 4.U
  }.otherwise{alu.io.in2 := 0.U}



//MEM

//read data from memory
when(io.dmem.en || io.dmem.wen){
//ALL read & write memory address is from ALU
io.dmem.addr := alu.io.alu_out 
}





//WriteBack

//R-type and I-type1 AUIPC JAL
when (decode.io.wb_type === WB_REG && decode.io.mem_rtype === MEM_X && decode.io.alu_type =/= ALU_X){
regfile.io.rd_data := alu.io.alu_out 
//lui
}.elsewhen(decode.io.wb_type === WB_REG && decode.io.mem_rtype === MEM_X && decode.io.alu_type === ALU_X){
regfile.io.rd_data := imm_gen.io.imm
//load-type
}.elsewhen(decode.io.wb_type === WB_REG && decode.io.mem_rtype =/= MEM_X){
switch(decode.io.mem_rtype){ 
is(MEM_B) {regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(7)),  io.dmem.rdata(6, 0))}
is(MEM_H) {regfile.io.rd_data := Cat(Fill(49, io.dmem.rdata(15)), io.dmem.rdata(14, 0))}
is(MEM_W) {regfile.io.rd_data := Cat(Fill(33, io.dmem.rdata(31)), io.dmem.rdata(30, 0))}
is(MEM_D) {regfile.io.rd_data := Cat(Fill(33, io.dmem.rdata(31)), io.dmem.rdata(30, 0))}
is(MEM_BU){regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(7, 0))}
is(MEM_HU){regfile.io.rd_data := Cat(Fill(48, 0.U),  io.dmem.rdata(15, 0))}
is(MEM_WU){regfile.io.rd_data := Cat(Fill(32, 0.U),  io.dmem.rdata(31, 0))}
//S-type 
}}.elsewhen(decode.io.wb_type === WB_MEM_B){
io.dmem.wdata:= Cat(Fill(56, 0.U),regfile.io.rs2_data(7,0))
}.elsewhen(decode.io.wb_type === WB_MEM_H){
io.dmem.wdata:= Cat(Fill(48, 0.U),regfile.io.rs2_data(15,0))
}.elsewhen(decode.io.wb_type === WB_MEM_W){
io.dmem.wdata:= Cat(Fill(32, 0.U),regfile.io.rs2_data(31,0))
//JALR
}.elsewhen(decode.io.wb_type === WB_JALR){
regfile.io.rd_data := pc + 4.U 
}

 






  /* ----- Difftest ------------------------------ */

  val dt_ic = Module(new DifftestInstrCommit)
  dt_ic.io.clock    := clock
  dt_ic.io.coreid   := 0.U
  dt_ic.io.index    := 0.U
  dt_ic.io.valid    := pc_en && (inst=/=0.U)
  dt_ic.io.pc       := pc
  dt_ic.io.instr    := inst
  dt_ic.io.special  := 0.U
  dt_ic.io.skip     := false.B
  dt_ic.io.isRVC    := false.B
  dt_ic.io.scFailed := false.B
  dt_ic.io.wen      := RegNext(regfile.io.rd_en)
  dt_ic.io.wdata    := RegNext(regfile.io.rd_data)
  dt_ic.io.wdest    := RegNext(regfile.io.rd_addr)

  val dt_ae = Module(new DifftestArchEvent)
  dt_ae.io.clock        := clock
  dt_ae.io.coreid       := 0.U
  dt_ae.io.intrNO       := 0.U
  dt_ae.io.cause        := 0.U
  dt_ae.io.exceptionPC  := 0.U

  val cycle_cnt = RegInit(0.U(64.W))
  val instr_cnt = RegInit(0.U(64.W))

  cycle_cnt := cycle_cnt + 1.U
  instr_cnt := instr_cnt + 1.U

  val rf_a0 = WireInit(0.U(64.W))
  BoringUtils.addSink(rf_a0, "rf_a0")

  val dt_te = Module(new DifftestTrapEvent)
  dt_te.io.clock    := clock
  dt_te.io.coreid   := 0.U
  dt_te.io.valid    := (inst === "h0000006b".U)
  dt_te.io.code     := rf_a0(2, 0)
  dt_te.io.pc       := pc
  dt_te.io.cycleCnt := cycle_cnt
  dt_te.io.instrCnt := instr_cnt

  val dt_cs = Module(new DifftestCSRState)
  dt_cs.io.clock          := clock
  dt_cs.io.coreid         := 0.U
  dt_cs.io.priviledgeMode := 3.U  // Machine mode
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


printf("pc in core =%x, inst in core =%x, nxt pc =%x \n",pc,inst,nxt_pc.io.pc_nxt)
printf("dt_pc =%x, dt_inst =%x \n",dt_ic.io.pc,dt_ic.io.instr)
}
