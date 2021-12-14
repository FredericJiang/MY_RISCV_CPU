import chisel3._ 
import chisel3.util._
import Constant._
import scala.annotation.switch


class LSU extends Module{
val io = IO( new Bundle{ 

val mem_rtype      = Input(UInt(3.W))
val wb_type        = Input(UInt(3.W))
val dmem_addr    = Input(UInt(64.W))
val dmem_rdata   = Input(UInt(64.W))
val rs2_data     = Input(UInt(64.W))


val mem_rdata    = Output(UInt(64.W))
val dmem_wmask = Output(UInt(64.W))
val dmem_wdata = Output(UInt(64.W))

})

val dmem_addr  = io.dmem_addr
val dmem_rdata = io.dmem_rdata
val rs2_data   = io.rs2_data
val mem_rdata    = Wire(UInt(64.W))
val dmem_wmask = Wire(UInt(64.W))
val dmem_wdata = Wire(UInt(64.W))


io.mem_rdata    := mem_rdata
io.dmem_wmask := dmem_wmask
io.dmem_wdata := dmem_wdata
dmem_wdata  := 0.U
dmem_wmask  := 0.U
mem_rdata     := 0.U



// Load Data From Memory
when(io.wb_type === WB_REG && io.mem_rtype =/= MEM_X){
//load-type
switch(io.mem_rtype){ 

//lb
is(MEM_B){

mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2,0)==="b000".U) -> Cat(Fill(56, dmem_rdata(7)) ,  dmem_rdata(7,   0)),
                  (dmem_addr(2,0)==="b001".U) -> Cat(Fill(56, dmem_rdata(15)),  dmem_rdata(15,  8)),
                  (dmem_addr(2,0)==="b010".U) -> Cat(Fill(56, dmem_rdata(23)),  dmem_rdata(23, 16)),
                  (dmem_addr(2,0)==="b011".U) -> Cat(Fill(56, dmem_rdata(31)),  dmem_rdata(31, 24)),
                  (dmem_addr(2,0)==="b100".U) -> Cat(Fill(56, dmem_rdata(39)),  dmem_rdata(39, 32)),
                  (dmem_addr(2,0)==="b101".U) -> Cat(Fill(56, dmem_rdata(47)),  dmem_rdata(47, 40)),
                  (dmem_addr(2,0)==="b110".U) -> Cat(Fill(56, dmem_rdata(55)),  dmem_rdata(55, 48)),
                  (dmem_addr(2,0)==="b111".U) -> Cat(Fill(56, dmem_rdata(63)),  dmem_rdata(63, 56))
                  ))}

//lh
is(MEM_H){

mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2,1)==="b00".U) -> Cat(Fill(48, dmem_rdata(15)),  dmem_rdata(15, 0)),
                  (dmem_addr(2,1)==="b01".U) -> Cat(Fill(48, dmem_rdata(31)),  dmem_rdata(31, 16)),
                  (dmem_addr(2,1)==="b10".U) -> Cat(Fill(48, dmem_rdata(47)),  dmem_rdata(47, 32)),
                  (dmem_addr(2,1)==="b11".U) -> Cat(Fill(48, dmem_rdata(63)),  dmem_rdata(63, 48))
                  ))}



//lw
is(MEM_W) {

mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2)==="b0".U) -> Cat(Fill(32, dmem_rdata(31)), dmem_rdata(31, 0)),
                  (dmem_addr(2)==="b1".U) -> Cat(Fill(32, dmem_rdata(63)), dmem_rdata(63, 32))
                  ))}

//ld
is(MEM_D) {mem_rdata := dmem_rdata}

//lbu
is(MEM_BU){
mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2,0)==="b000".U) -> Cat(Fill(56, 0.U),  dmem_rdata(7,   0)),
                  (dmem_addr(2,0)==="b001".U) -> Cat(Fill(56, 0.U),  dmem_rdata(15,  8)),
                  (dmem_addr(2,0)==="b010".U) -> Cat(Fill(56, 0.U),  dmem_rdata(23, 16)),
                  (dmem_addr(2,0)==="b011".U) -> Cat(Fill(56, 0.U),  dmem_rdata(31, 24)),
                  (dmem_addr(2,0)==="b100".U) -> Cat(Fill(56, 0.U),  dmem_rdata(39, 32)),
                  (dmem_addr(2,0)==="b101".U) -> Cat(Fill(56, 0.U),  dmem_rdata(47, 40)),
                  (dmem_addr(2,0)==="b110".U) -> Cat(Fill(56, 0.U),  dmem_rdata(55, 48)),
                  (dmem_addr(2,0)==="b111".U) -> Cat(Fill(56, 0.U),  dmem_rdata(63, 56))
                  ))}

//lhu
is(MEM_HU){
mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2,1)==="b00".U) -> Cat(Fill(48, 0.U),  dmem_rdata(15,  0)),
                  (dmem_addr(2,1)==="b01".U) -> Cat(Fill(48, 0.U),  dmem_rdata(31, 16)),
                  (dmem_addr(2,1)==="b10".U) -> Cat(Fill(48, 0.U),  dmem_rdata(47, 32)),
                  (dmem_addr(2,1)==="b11".U) -> Cat(Fill(48, 0.U),  dmem_rdata(63, 48))
                  ))}

//lwu
is(MEM_WU) {
mem_rdata:= MuxCase(0.U, Array(
                  (dmem_addr(2)==="b0".U) -> Cat(Fill(32, 0.U), dmem_rdata(31, 0)),
                  (dmem_addr(2)==="b1".U) -> Cat(Fill(32, 0.U), dmem_rdata(63, 32))
                  ))}
}}



// Store Data to Memory
when(io.wb_type === WB_MEM_B){
//sb
when(dmem_addr(2,0)==="b000".U){
dmem_wmask := "h00000000000000ff".U
dmem_wdata:= Cat(Fill(56, 0.U),rs2_data(7,0))
}.elsewhen(dmem_addr(2,0)==="b001".U){
dmem_wmask := "h000000000000ff00".U
dmem_wdata:= Cat(Fill(48, 0.U),rs2_data(7,0),Fill(8,0.U))
}.elsewhen(dmem_addr(2,0)==="b010".U){
dmem_wmask := "h0000000000ff0000".U
dmem_wdata:= Cat(Fill(40, 0.U),rs2_data(7,0),Fill(16,0.U))
}.elsewhen(dmem_addr(2,0)==="b011".U){
dmem_wmask := "h00000000ff000000".U
dmem_wdata:= Cat(Fill(32, 0.U),rs2_data(7,0),Fill(24,0.U))
}.elsewhen(dmem_addr(2,0)==="b100".U){
dmem_wmask := "h000000ff00000000".U
dmem_wdata:= Cat(Fill(24, 0.U),rs2_data(7,0),Fill(32,0.U))
}.elsewhen(dmem_addr(2,0)==="b101".U){
dmem_wmask := "h0000ff0000000000".U
dmem_wdata:= Cat(Fill(16, 0.U),rs2_data(7,0),Fill(40,0.U))
}.elsewhen(dmem_addr(2,0)==="b110".U){
dmem_wmask := "h00ff000000000000".U
dmem_wdata:= Cat(Fill(8, 0.U),rs2_data(7,0),Fill(48,0.U))
}.elsewhen(dmem_addr(2,0)==="b111".U){
dmem_wmask := "hff00000000000000".U
dmem_wdata:= Cat(rs2_data(7,0),Fill(56,0.U))
}

}.elsewhen(io.wb_type === WB_MEM_H){
//sh
when(dmem_addr(2,1)==="b00".U){
dmem_wmask := "h000000000000ffff".U
dmem_wdata:= Cat(Fill(48, 0.U),rs2_data(15,0))
}.elsewhen(dmem_addr(2,1)==="b01".U){
dmem_wmask := "h00000000ffff0000".U
dmem_wdata:= Cat(Fill(32, 0.U),rs2_data(15,0),Fill(16,0.U))
}.elsewhen(dmem_addr(2,1)==="b10".U){
dmem_wmask := "h0000ffff00000000".U
dmem_wdata:= Cat(Fill(16, 0.U),rs2_data(15,0),Fill(32,0.U))
}.elsewhen(dmem_addr(2,1)==="b11".U){
dmem_wmask := "hffff000000000000".U
dmem_wdata:= Cat(rs2_data(15,0),Fill(48,0.U))
}  


}.elsewhen(io.wb_type === WB_MEM_W){
//sw

when(dmem_addr(2)==="b0".U){
dmem_wmask := "h00000000ffffffff".U
dmem_wdata:= Cat(Fill(32, 0.U),rs2_data(31,0))
}.elsewhen(dmem_addr(2)==="b1".U){
dmem_wmask := "hffffffff00000000".U
dmem_wdata:= Cat(rs2_data(31,0),Fill(32, 0.U))}



}.elsewhen(io.wb_type === WB_MEM_D){
//sd
dmem_wmask :="hffffffffffffffff".U
dmem_wdata:= rs2_data
}


}
















