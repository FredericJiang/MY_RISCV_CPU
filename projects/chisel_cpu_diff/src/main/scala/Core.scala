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
io.dmem.wmask := "hffffffffffffffff".U
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
// memory enable
  io.dmem.en := (decode.io.mem_rtype =/= MEM_X) || io.dmem.wen
// write memory enable
  io.dmem.wen := (decode.io.wb_type === WB_MEM_B) || (decode.io.wb_type === WB_MEM_H) || (decode.io.wb_type === WB_MEM_W) || (decode.io.wb_type === WB_MEM_D)
  alu.io.alu_type := decode.io.alu_type
  




  // EXE
  

  // generate operand_1
  when( alu.io.alu_type =/= ALU_X && decode.io.op1_type === OP_REG){
  alu.io.in1 := regfile.io.rs1_data
  }.elsewhen(alu.io.alu_type =/= ALU_X && decode.io.op1_type === OP_PC){ //only for JAL
  alu.io.in1 := pc
  }.otherwise{alu.io.in1 := 0.U}

  
  // generate operand_2
  when(decode.io.op2_type === OP_REG && (decode.io.imm_type === IMM_X || decode.io.imm_type === IMM_B)){
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



//MEMc 
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

}.elsewhen(decode.io.wb_type === WB_REG && decode.io.mem_rtype =/= MEM_X){
//load-type
switch(decode.io.mem_rtype){ 

is(MEM_B){
when(io.dmem.addr(2,0)==="b000".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(7)),  io.dmem.rdata(6, 0))
}.elsewhen(io.dmem.addr(2,0)==="b001".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(15)),  io.dmem.rdata(14, 8))
}.elsewhen(io.dmem.addr(2,0)==="b010".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(23)),  io.dmem.rdata(22, 16))
}.elsewhen(io.dmem.addr(2,0)==="b011".U){
regfile.io.rd_data := Cat(Fill(57,io.dmem.rdata(31)),  io.dmem.rdata(30, 24))
}.elsewhen(io.dmem.addr(2,0)==="b100".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(39)),  io.dmem.rdata(38, 32))
}.elsewhen(io.dmem.addr(2,0)==="b101".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(47)),  io.dmem.rdata(46, 40))
}.elsewhen(io.dmem.addr(2,0)==="b110".U){
regfile.io.rd_data := Cat(Fill(57, io.dmem.rdata(55)),  io.dmem.rdata(54, 48))
}.elsewhen(io.dmem.addr(2,0)==="b111".U){
regfile.io.rd_data := Cat(Fill(57,io.dmem.rdata(63)),  io.dmem.rdata(62, 56))
}}


is(MEM_H){
when(io.dmem.addr(1,0)==="b00".U){
regfile.io.rd_data := Cat(Fill(49, io.dmem.rdata(15)),  io.dmem.rdata(14, 0))
}.elsewhen(io.dmem.addr(1,0)==="b01".U){
regfile.io.rd_data := Cat(Fill(49, io.dmem.rdata(31)),  io.dmem.rdata(30, 16))
}.elsewhen(io.dmem.addr(1,0)==="b10".U){
regfile.io.rd_data := Cat(Fill(49, io.dmem.rdata(47)),  io.dmem.rdata(46, 32))
}.elsewhen(io.dmem.addr(1,0)==="b11".U){
regfile.io.rd_data := Cat(Fill(49,io.dmem.rdata(63)),  io.dmem.rdata(62, 48))
}}

is(MEM_W) {
when(io.dmem.addr(2)){
regfile.io.rd_data := Cat(Fill(33, io.dmem.rdata(63)), io.dmem.rdata(62, 32))
}.otherwise{regfile.io.rd_data := Cat(Fill(33, io.dmem.rdata(31)), io.dmem.rdata(30, 0))}
}

is(MEM_D) {regfile.io.rd_data := io.dmem.rdata}

is(MEM_BU){
when(io.dmem.addr(2,0)==="b000".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(7, 0))
}.elsewhen(io.dmem.addr(2,0)==="b001".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(15, 8))
}.elsewhen(io.dmem.addr(2,0)==="b010".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(23, 16))
}.elsewhen(io.dmem.addr(2,0)==="b011".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(31, 24))
}.elsewhen(io.dmem.addr(2,0)==="b100".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(39, 32))
}.elsewhen(io.dmem.addr(2,0)==="b101".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(47, 40))
}.elsewhen(io.dmem.addr(2,0)==="b110".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(55, 48))
}.elsewhen(io.dmem.addr(2,0)==="b111".U){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(63, 56))
}}

/*is(MEM_BU){
regfile.io.rd_data := Cat(Fill(56, 0.U),  io.dmem.rdata(7, 0))
}*/
is(MEM_HU){
when(io.dmem.addr(1,0)==="b00".U){
regfile.io.rd_data := Cat(Fill(48, 0.U),  io.dmem.rdata(15, 0))
}.elsewhen(io.dmem.addr(1,0)==="b01".U){
regfile.io.rd_data := Cat(Fill(48, 0.U),  io.dmem.rdata(31, 16))
}.elsewhen(io.dmem.addr(1,0)==="b10".U){
regfile.io.rd_data := Cat(Fill(48, 0.U),  io.dmem.rdata(47, 32))
}.elsewhen(io.dmem.addr(1,0)==="b11".U){
regfile.io.rd_data := Cat(Fill(48, 0.U),  io.dmem.rdata(63, 48))
}}

is(MEM_WU) {
when(io.dmem.addr(2)){
regfile.io.rd_data := Cat(Fill(32, 0.U), io.dmem.rdata(63, 32))
}.otherwise{regfile.io.rd_data := Cat(Fill(32,0.U), io.dmem.rdata(31, 0))}
}}


//S-type 
}.elsewhen(decode.io.wb_type === WB_MEM_B){

when(io.dmem.addr(2,0)==="b000".U){
io.dmem.wdata:= Cat(Fill(56, 0.U),regfile.io.rs2_data(7,0))
}.elsewhen(io.dmem.addr(2,0)==="b001".U){
io.dmem.wdata:= Cat(Fill(48, 0.U),regfile.io.rs2_data(7,0),Fill(8,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b010".U){
io.dmem.wdata:= Cat(Fill(40, 0.U),regfile.io.rs2_data(7,0),Fill(15,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b011".U){
io.dmem.wdata:= Cat(Fill(32, 0.U),regfile.io.rs2_data(7,0),Fill(23,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b100".U){
io.dmem.wdata:= Cat(Fill(24, 0.U),regfile.io.rs2_data(7,0),Fill(31,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b101".U){
io.dmem.wdata:= Cat(Fill(16, 0.U),regfile.io.rs2_data(7,0),Fill(39,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b110".U){
io.dmem.wdata:= Cat(Fill(8, 0.U),regfile.io.rs2_data(7,0),Fill(8,0.U))
}.elsewhen(io.dmem.addr(2,0)==="b111".U){
io.dmem.wdata:= Cat(regfile.io.rs2_data(7,0),Fill(55,0.U))
}

//io.dmem.wdata:= Cat(Fill(56, 0.U),regfile.io.rs2_data(7,0))
}.elsewhen(decode.io.wb_type === WB_MEM_H){

when(io.dmem.addr(1,0)==="b00".U){
io.dmem.wdata:= Cat(Fill(48, 0.U),regfile.io.rs2_data(15,0))
}.elsewhen(io.dmem.addr(1,0)==="b01".U){
io.dmem.wdata:= Cat(Fill(32, 0.U),regfile.io.rs2_data(15,0),Fill(15,0.U))
}.elsewhen(io.dmem.addr(1,0)==="b10".U){
io.dmem.wdata:= Cat(Fill(16, 0.U),regfile.io.rs2_data(15,0),Fill(31,0.U))
}.elsewhen(io.dmem.addr(1,0)==="b11".U){
io.dmem.wdata:= Cat(regfile.io.rs2_data(15,0),Fill(47,0.U))
}  
//io.dmem.wdata:= Cat(Fill(48, 0.U),regfile.io.rs2_data(15,0))
}.elsewhen(decode.io.wb_type === WB_MEM_W){

when(io.dmem.addr(2)){
io.dmem.wdata:= Cat(Fill(32, 0.U),regfile.io.rs2_data(31,0))
}.otherwise{io.dmem.wdata:= Cat(regfile.io.rs2_data(31,0),Fill(32, 0.U))}  
//io.dmem.wdata:= Cat(Fill(32, 0.U),regfile.io.rs2_data(31,0))
}.elsewhen(decode.io.wb_type === WB_MEM_D){
io.dmem.wmask:= ("hffffffffffffffff".U)
io.dmem.wdata:= regfile.io.rs2_data
//JALR
}.elsewhen(decode.io.wb_type === WB_JALR){
regfile.io.rd_data := pc + 4.U 
}

 






  /* ----- Difftest ------------------------------ */

  val dt_ic = Module(new DifftestInstrCommit)
  dt_ic.io.clock    := clock
  dt_ic.io.coreid   := RegNext(0.U)
  dt_ic.io.index    := RegNext(0.U)
  dt_ic.io.valid    := RegNext(pc_en && (inst=/=0.U))
  dt_ic.io.pc       := RegNext(pc)
  dt_ic.io.instr    := RegNext(inst)
  dt_ic.io.special  := RegNext(0.U)
  dt_ic.io.skip     := RegNext(false.B)
  dt_ic.io.isRVC    := RegNext(false.B)
  dt_ic.io.scFailed := RegNext(false.B)
  dt_ic.io.wen      := RegNext(regfile.io.rd_en && dt_ic.io.valid)
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
  when(dt_ic.io.valid ){
  cycle_cnt := cycle_cnt + 1.U
  instr_cnt := instr_cnt + 1.U
}
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
