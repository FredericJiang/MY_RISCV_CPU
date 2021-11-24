module InstFetch(
  input         clock,
  input         reset,
  output [63:0] io_imem_addr,
  input  [63:0] io_imem_rdata,
  output [31:0] io_pc,
  output [31:0] io_inst
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  pc_en; // @[InstFetch.scala 11:22]
  reg [31:0] pc; // @[InstFetch.scala 14:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[InstFetch.scala 15:12]
  assign io_imem_addr = {{32'd0}, pc}; // @[InstFetch.scala 18:16]
  assign io_pc = pc_en ? pc : 32'h0; // @[InstFetch.scala 20:17]
  assign io_inst = pc_en ? io_imem_rdata[31:0] : 32'h0; // @[InstFetch.scala 21:17]
  always @(posedge clock) begin
    if (reset) begin // @[InstFetch.scala 11:22]
      pc_en <= 1'h0; // @[InstFetch.scala 11:22]
    end else begin
      pc_en <= 1'h1; // @[InstFetch.scala 12:9]
    end
    if (reset) begin // @[InstFetch.scala 14:19]
      pc <= 32'h80000000; // @[InstFetch.scala 14:19]
    end else begin
      pc <= _pc_T_1; // @[InstFetch.scala 15:6]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc_en = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  pc = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Decode(
  input  [31:0] io_pc,
  input  [31:0] io_inst,
  output [31:0] io_inst_decode_pc,
  output [2:0]  io_inst_decode_fu_code,
  output [3:0]  io_inst_decode_alu_code,
  output [2:0]  io_inst_decode_rs1_src,
  output [2:0]  io_inst_decode_rs2_src,
  output [4:0]  io_inst_decode_rd_addr,
  output        io_inst_decode_rd_en,
  output [31:0] io_inst_decode_imm
);
  wire [4:0] inst_decode_rd_addr = io_inst[11:7]; // @[Decode.scala 28:30]
  wire [31:0] _ctrl_T = io_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_1 = 32'h13 == _ctrl_T; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_2 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_3 = 32'h17 == _ctrl_T_2; // @[Lookup.scala 31:38]
  wire [2:0] _ctrl_T_5 = _ctrl_T_3 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_6 = _ctrl_T_3 ? 4'h1 : 4'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_12 = _ctrl_T_3 ? 3'h4 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] ctrl_8 = _ctrl_T_1 ? 3'h1 : _ctrl_T_12; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_13 = _ctrl_T_3 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [52:0] imm_i_hi = io_inst[31] ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12]
  wire [10:0] imm_i_lo = io_inst[30:20]; // @[Decode.scala 76:43]
  wire [63:0] imm_i = {imm_i_hi,imm_i_lo}; // @[Cat.scala 30:58]
  wire [5:0] imm_s_hi_lo = io_inst[30:25]; // @[Decode.scala 77:43]
  wire [63:0] imm_s = {imm_i_hi,imm_s_hi_lo,inst_decode_rd_addr}; // @[Cat.scala 30:58]
  wire [51:0] imm_b_hi_hi_hi = io_inst[31] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire  imm_b_hi_hi_lo = io_inst[7]; // @[Decode.scala 78:43]
  wire [3:0] imm_b_lo_hi = io_inst[11:8]; // @[Decode.scala 78:66]
  wire [63:0] imm_b = {imm_b_hi_hi_hi,imm_b_hi_hi_lo,imm_s_hi_lo,imm_b_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [63:0] _inst_decode_imm_T_1 = 3'h1 == ctrl_8 ? imm_i : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _inst_decode_imm_T_3 = 3'h2 == ctrl_8 ? imm_s : _inst_decode_imm_T_1; // @[Mux.scala 80:57]
  wire [63:0] _inst_decode_imm_T_5 = 3'h3 == ctrl_8 ? imm_b : _inst_decode_imm_T_3; // @[Mux.scala 80:57]
  assign io_inst_decode_pc = io_pc; // @[Decode.scala 18:25 Decode.scala 20:21]
  assign io_inst_decode_fu_code = _ctrl_T_1 ? 3'h1 : _ctrl_T_5; // @[Lookup.scala 33:37]
  assign io_inst_decode_alu_code = _ctrl_T_1 ? 4'h1 : _ctrl_T_6; // @[Lookup.scala 33:37]
  assign io_inst_decode_rs1_src = _ctrl_T_1 ? 3'h1 : _ctrl_T_12; // @[Lookup.scala 33:37]
  assign io_inst_decode_rs2_src = _ctrl_T_1 ? 3'h2 : _ctrl_T_13; // @[Lookup.scala 33:37]
  assign io_inst_decode_rd_addr = io_inst[11:7]; // @[Decode.scala 28:30]
  assign io_inst_decode_rd_en = _ctrl_T_1 | _ctrl_T_3; // @[Lookup.scala 33:37]
  assign io_inst_decode_imm = _inst_decode_imm_T_5[31:0]; // @[Decode.scala 18:25 Decode.scala 80:19]
endmodule
module RegFile(
  input         clock,
  input         reset,
  input  [4:0]  io_rd_addr,
  input  [63:0] io_rd_data,
  input         io_rd_en,
  output [63:0] rf_10
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  wire  dt_ar_clock; // @[RegFile.scala 25:21]
  wire [7:0] dt_ar_coreid; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_0; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_1; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_2; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_3; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_4; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_5; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_6; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_7; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_8; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_9; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_10; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_11; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_12; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_13; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_14; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_15; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_16; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_17; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_18; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_19; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_20; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_21; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_22; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_23; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_24; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_25; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_26; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_27; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_28; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_29; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_30; // @[RegFile.scala 25:21]
  wire [63:0] dt_ar_gpr_31; // @[RegFile.scala 25:21]
  reg [63:0] rf__0; // @[RegFile.scala 16:19]
  reg [63:0] rf__1; // @[RegFile.scala 16:19]
  reg [63:0] rf__2; // @[RegFile.scala 16:19]
  reg [63:0] rf__3; // @[RegFile.scala 16:19]
  reg [63:0] rf__4; // @[RegFile.scala 16:19]
  reg [63:0] rf__5; // @[RegFile.scala 16:19]
  reg [63:0] rf__6; // @[RegFile.scala 16:19]
  reg [63:0] rf__7; // @[RegFile.scala 16:19]
  reg [63:0] rf__8; // @[RegFile.scala 16:19]
  reg [63:0] rf__9; // @[RegFile.scala 16:19]
  reg [63:0] rf__10; // @[RegFile.scala 16:19]
  reg [63:0] rf__11; // @[RegFile.scala 16:19]
  reg [63:0] rf__12; // @[RegFile.scala 16:19]
  reg [63:0] rf__13; // @[RegFile.scala 16:19]
  reg [63:0] rf__14; // @[RegFile.scala 16:19]
  reg [63:0] rf__15; // @[RegFile.scala 16:19]
  reg [63:0] rf__16; // @[RegFile.scala 16:19]
  reg [63:0] rf__17; // @[RegFile.scala 16:19]
  reg [63:0] rf__18; // @[RegFile.scala 16:19]
  reg [63:0] rf__19; // @[RegFile.scala 16:19]
  reg [63:0] rf__20; // @[RegFile.scala 16:19]
  reg [63:0] rf__21; // @[RegFile.scala 16:19]
  reg [63:0] rf__22; // @[RegFile.scala 16:19]
  reg [63:0] rf__23; // @[RegFile.scala 16:19]
  reg [63:0] rf__24; // @[RegFile.scala 16:19]
  reg [63:0] rf__25; // @[RegFile.scala 16:19]
  reg [63:0] rf__26; // @[RegFile.scala 16:19]
  reg [63:0] rf__27; // @[RegFile.scala 16:19]
  reg [63:0] rf__28; // @[RegFile.scala 16:19]
  reg [63:0] rf__29; // @[RegFile.scala 16:19]
  reg [63:0] rf__30; // @[RegFile.scala 16:19]
  reg [63:0] rf__31; // @[RegFile.scala 16:19]
  DifftestArchIntRegState dt_ar ( // @[RegFile.scala 25:21]
    .clock(dt_ar_clock),
    .coreid(dt_ar_coreid),
    .gpr_0(dt_ar_gpr_0),
    .gpr_1(dt_ar_gpr_1),
    .gpr_2(dt_ar_gpr_2),
    .gpr_3(dt_ar_gpr_3),
    .gpr_4(dt_ar_gpr_4),
    .gpr_5(dt_ar_gpr_5),
    .gpr_6(dt_ar_gpr_6),
    .gpr_7(dt_ar_gpr_7),
    .gpr_8(dt_ar_gpr_8),
    .gpr_9(dt_ar_gpr_9),
    .gpr_10(dt_ar_gpr_10),
    .gpr_11(dt_ar_gpr_11),
    .gpr_12(dt_ar_gpr_12),
    .gpr_13(dt_ar_gpr_13),
    .gpr_14(dt_ar_gpr_14),
    .gpr_15(dt_ar_gpr_15),
    .gpr_16(dt_ar_gpr_16),
    .gpr_17(dt_ar_gpr_17),
    .gpr_18(dt_ar_gpr_18),
    .gpr_19(dt_ar_gpr_19),
    .gpr_20(dt_ar_gpr_20),
    .gpr_21(dt_ar_gpr_21),
    .gpr_22(dt_ar_gpr_22),
    .gpr_23(dt_ar_gpr_23),
    .gpr_24(dt_ar_gpr_24),
    .gpr_25(dt_ar_gpr_25),
    .gpr_26(dt_ar_gpr_26),
    .gpr_27(dt_ar_gpr_27),
    .gpr_28(dt_ar_gpr_28),
    .gpr_29(dt_ar_gpr_29),
    .gpr_30(dt_ar_gpr_30),
    .gpr_31(dt_ar_gpr_31)
  );
  assign rf_10 = rf__10;
  assign dt_ar_clock = clock; // @[RegFile.scala 26:19]
  assign dt_ar_coreid = 8'h0; // @[RegFile.scala 27:19]
  assign dt_ar_gpr_0 = rf__0; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_1 = rf__1; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_2 = rf__2; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_3 = rf__3; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_4 = rf__4; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_5 = rf__5; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_6 = rf__6; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_7 = rf__7; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_8 = rf__8; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_9 = rf__9; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_10 = rf__10; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_11 = rf__11; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_12 = rf__12; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_13 = rf__13; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_14 = rf__14; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_15 = rf__15; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_16 = rf__16; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_17 = rf__17; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_18 = rf__18; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_19 = rf__19; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_20 = rf__20; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_21 = rf__21; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_22 = rf__22; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_23 = rf__23; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_24 = rf__24; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_25 = rf__25; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_26 = rf__26; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_27 = rf__27; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_28 = rf__28; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_29 = rf__29; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_30 = rf__30; // @[RegFile.scala 28:19]
  assign dt_ar_gpr_31 = rf__31; // @[RegFile.scala 28:19]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 16:19]
      rf__0 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h0 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__0 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__1 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__1 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__2 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h2 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__2 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__3 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h3 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__3 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__4 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h4 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__4 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__5 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h5 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__5 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__6 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h6 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__6 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__7 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h7 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__7 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__8 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h8 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__8 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__9 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h9 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__9 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__10 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'ha == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__10 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__11 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'hb == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__11 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__12 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'hc == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__12 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__13 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'hd == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__13 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__14 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'he == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__14 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__15 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'hf == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__15 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__16 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h10 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__16 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__17 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h11 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__17 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__18 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h12 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__18 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__19 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h13 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__19 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__20 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h14 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__20 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__21 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h15 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__21 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__22 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h16 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__22 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__23 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h17 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__23 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__24 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h18 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__24 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__25 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h19 == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__25 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__26 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1a == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__26 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__27 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1b == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__27 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__28 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1c == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__28 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__29 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1d == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__29 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__30 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1e == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__30 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
    if (reset) begin // @[RegFile.scala 16:19]
      rf__31 <= 64'h0; // @[RegFile.scala 16:19]
    end else if (io_rd_en & io_rd_addr != 5'h0) begin // @[RegFile.scala 18:43]
      if (5'h1f == io_rd_addr) begin // @[RegFile.scala 19:20]
        rf__31 <= io_rd_data; // @[RegFile.scala 19:20]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  rf__0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  rf__1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  rf__2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  rf__3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  rf__4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  rf__5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  rf__6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  rf__7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  rf__8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  rf__9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  rf__10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  rf__11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  rf__12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  rf__13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  rf__14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  rf__15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  rf__16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  rf__17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  rf__18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  rf__19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  rf__20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  rf__21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  rf__22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  rf__23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  rf__24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  rf__25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  rf__26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  rf__27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  rf__28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  rf__29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  rf__30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  rf__31 = _RAND_31[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ALU(
  input  [3:0]  io_inst_decode_alu_code,
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_out
);
  wire [63:0] _alu_out_T_1 = io_in1 + io_in2; // @[ALU.scala 27:16]
  wire [63:0] _alu_out_T_3 = io_in1 - io_in2; // @[ALU.scala 28:16]
  wire [63:0] _alu_out_T_5 = 4'h1 == io_inst_decode_alu_code ? _alu_out_T_1 : 64'h0; // @[Mux.scala 80:57]
  assign io_out = 4'h2 == io_inst_decode_alu_code ? _alu_out_T_3 : _alu_out_T_5; // @[Mux.scala 80:57]
endmodule
module Execution(
  input  [31:0] io_inst_decode_pc,
  input  [2:0]  io_inst_decode_fu_code,
  input  [3:0]  io_inst_decode_alu_code,
  input  [2:0]  io_inst_decode_rs1_src,
  input  [2:0]  io_inst_decode_rs2_src,
  input  [31:0] io_inst_decode_imm,
  input  [63:0] io_rs2_data,
  output [63:0] io_result
);
  wire [3:0] alu_io_inst_decode_alu_code; // @[Execution.scala 54:19]
  wire [63:0] alu_io_in1; // @[Execution.scala 54:19]
  wire [63:0] alu_io_in2; // @[Execution.scala 54:19]
  wire [63:0] alu_io_out; // @[Execution.scala 54:19]
  wire [31:0] in1_hi = io_inst_decode_imm[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _in1_T_2 = {in1_hi,io_inst_decode_imm}; // @[Cat.scala 30:58]
  wire [63:0] _in1_T_3 = {32'h0,io_inst_decode_pc}; // @[Cat.scala 30:58]
  wire [63:0] _in1_T_7 = 3'h2 == io_inst_decode_rs1_src ? _in1_T_2 : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _in2_T_5 = 3'h1 == io_inst_decode_rs2_src ? io_rs2_data : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _in2_T_7 = 3'h2 == io_inst_decode_rs2_src ? _in1_T_2 : _in2_T_5; // @[Mux.scala 80:57]
  ALU alu ( // @[Execution.scala 54:19]
    .io_inst_decode_alu_code(alu_io_inst_decode_alu_code),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_out(alu_io_out)
  );
  assign io_result = io_inst_decode_fu_code == 3'h1 ? alu_io_out : 64'h0; // @[Execution.scala 53:38 Execution.scala 58:22 Execution.scala 26:17]
  assign alu_io_inst_decode_alu_code = io_inst_decode_alu_code; // @[Execution.scala 55:22]
  assign alu_io_in1 = 3'h4 == io_inst_decode_rs1_src ? _in1_T_3 : _in1_T_7; // @[Mux.scala 80:57]
  assign alu_io_in2 = 3'h4 == io_inst_decode_rs2_src ? _in1_T_3 : _in2_T_7; // @[Mux.scala 80:57]
endmodule
module Core(
  input         clock,
  input         reset,
  output [63:0] io_imem_addr,
  input  [63:0] io_imem_rdata
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  fetch_clock; // @[Core.scala 11:21]
  wire  fetch_reset; // @[Core.scala 11:21]
  wire [63:0] fetch_io_imem_addr; // @[Core.scala 11:21]
  wire [63:0] fetch_io_imem_rdata; // @[Core.scala 11:21]
  wire [31:0] fetch_io_pc; // @[Core.scala 11:21]
  wire [31:0] fetch_io_inst; // @[Core.scala 11:21]
  wire [31:0] decode_io_pc; // @[Core.scala 14:22]
  wire [31:0] decode_io_inst; // @[Core.scala 14:22]
  wire [31:0] decode_io_inst_decode_pc; // @[Core.scala 14:22]
  wire [2:0] decode_io_inst_decode_fu_code; // @[Core.scala 14:22]
  wire [3:0] decode_io_inst_decode_alu_code; // @[Core.scala 14:22]
  wire [2:0] decode_io_inst_decode_rs1_src; // @[Core.scala 14:22]
  wire [2:0] decode_io_inst_decode_rs2_src; // @[Core.scala 14:22]
  wire [4:0] decode_io_inst_decode_rd_addr; // @[Core.scala 14:22]
  wire  decode_io_inst_decode_rd_en; // @[Core.scala 14:22]
  wire [31:0] decode_io_inst_decode_imm; // @[Core.scala 14:22]
  wire  rf_clock; // @[Core.scala 18:18]
  wire  rf_reset; // @[Core.scala 18:18]
  wire [4:0] rf_io_rd_addr; // @[Core.scala 18:18]
  wire [63:0] rf_io_rd_data; // @[Core.scala 18:18]
  wire  rf_io_rd_en; // @[Core.scala 18:18]
  wire [63:0] rf_rf_10; // @[Core.scala 18:18]
  wire [31:0] execution_io_inst_decode_pc; // @[Core.scala 24:25]
  wire [2:0] execution_io_inst_decode_fu_code; // @[Core.scala 24:25]
  wire [3:0] execution_io_inst_decode_alu_code; // @[Core.scala 24:25]
  wire [2:0] execution_io_inst_decode_rs1_src; // @[Core.scala 24:25]
  wire [2:0] execution_io_inst_decode_rs2_src; // @[Core.scala 24:25]
  wire [31:0] execution_io_inst_decode_imm; // @[Core.scala 24:25]
  wire [63:0] execution_io_rs2_data; // @[Core.scala 24:25]
  wire [63:0] execution_io_result; // @[Core.scala 24:25]
  wire  dt_ic_clock; // @[Core.scala 35:21]
  wire [7:0] dt_ic_coreid; // @[Core.scala 35:21]
  wire [7:0] dt_ic_index; // @[Core.scala 35:21]
  wire  dt_ic_valid; // @[Core.scala 35:21]
  wire [63:0] dt_ic_pc; // @[Core.scala 35:21]
  wire [31:0] dt_ic_instr; // @[Core.scala 35:21]
  wire [7:0] dt_ic_special; // @[Core.scala 35:21]
  wire  dt_ic_skip; // @[Core.scala 35:21]
  wire  dt_ic_isRVC; // @[Core.scala 35:21]
  wire  dt_ic_scFailed; // @[Core.scala 35:21]
  wire  dt_ic_wen; // @[Core.scala 35:21]
  wire [63:0] dt_ic_wdata; // @[Core.scala 35:21]
  wire [7:0] dt_ic_wdest; // @[Core.scala 35:21]
  wire  dt_ae_clock; // @[Core.scala 50:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 50:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 50:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 50:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 50:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 50:21]
  wire  dt_te_clock; // @[Core.scala 66:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 66:21]
  wire  dt_te_valid; // @[Core.scala 66:21]
  wire [2:0] dt_te_code; // @[Core.scala 66:21]
  wire [63:0] dt_te_pc; // @[Core.scala 66:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 66:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 66:21]
  wire  dt_cs_clock; // @[Core.scala 75:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 75:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 75:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 75:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 75:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 75:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 75:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 75:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 75:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 75:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 75:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 75:21]
  reg [31:0] dt_ic_io_pc_REG; // @[Core.scala 40:31]
  reg [31:0] dt_ic_io_instr_REG; // @[Core.scala 41:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 46:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 47:31]
  reg [4:0] dt_ic_io_wdest_REG; // @[Core.scala 48:31]
  reg [63:0] cycle_cnt; // @[Core.scala 57:26]
  reg [63:0] instr_cnt; // @[Core.scala 58:26]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 60:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 61:26]
  wire [63:0] rf_a0_0 = rf_rf_10;
  InstFetch fetch ( // @[Core.scala 11:21]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_imem_addr(fetch_io_imem_addr),
    .io_imem_rdata(fetch_io_imem_rdata),
    .io_pc(fetch_io_pc),
    .io_inst(fetch_io_inst)
  );
  Decode decode ( // @[Core.scala 14:22]
    .io_pc(decode_io_pc),
    .io_inst(decode_io_inst),
    .io_inst_decode_pc(decode_io_inst_decode_pc),
    .io_inst_decode_fu_code(decode_io_inst_decode_fu_code),
    .io_inst_decode_alu_code(decode_io_inst_decode_alu_code),
    .io_inst_decode_rs1_src(decode_io_inst_decode_rs1_src),
    .io_inst_decode_rs2_src(decode_io_inst_decode_rs2_src),
    .io_inst_decode_rd_addr(decode_io_inst_decode_rd_addr),
    .io_inst_decode_rd_en(decode_io_inst_decode_rd_en),
    .io_inst_decode_imm(decode_io_inst_decode_imm)
  );
  RegFile rf ( // @[Core.scala 18:18]
    .clock(rf_clock),
    .reset(rf_reset),
    .io_rd_addr(rf_io_rd_addr),
    .io_rd_data(rf_io_rd_data),
    .io_rd_en(rf_io_rd_en),
    .rf_10(rf_rf_10)
  );
  Execution execution ( // @[Core.scala 24:25]
    .io_inst_decode_pc(execution_io_inst_decode_pc),
    .io_inst_decode_fu_code(execution_io_inst_decode_fu_code),
    .io_inst_decode_alu_code(execution_io_inst_decode_alu_code),
    .io_inst_decode_rs1_src(execution_io_inst_decode_rs1_src),
    .io_inst_decode_rs2_src(execution_io_inst_decode_rs2_src),
    .io_inst_decode_imm(execution_io_inst_decode_imm),
    .io_rs2_data(execution_io_rs2_data),
    .io_result(execution_io_result)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 35:21]
    .clock(dt_ic_clock),
    .coreid(dt_ic_coreid),
    .index(dt_ic_index),
    .valid(dt_ic_valid),
    .pc(dt_ic_pc),
    .instr(dt_ic_instr),
    .special(dt_ic_special),
    .skip(dt_ic_skip),
    .isRVC(dt_ic_isRVC),
    .scFailed(dt_ic_scFailed),
    .wen(dt_ic_wen),
    .wdata(dt_ic_wdata),
    .wdest(dt_ic_wdest)
  );
  DifftestArchEvent dt_ae ( // @[Core.scala 50:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
  );
  DifftestTrapEvent dt_te ( // @[Core.scala 66:21]
    .clock(dt_te_clock),
    .coreid(dt_te_coreid),
    .valid(dt_te_valid),
    .code(dt_te_code),
    .pc(dt_te_pc),
    .cycleCnt(dt_te_cycleCnt),
    .instrCnt(dt_te_instrCnt)
  );
  DifftestCSRState dt_cs ( // @[Core.scala 75:21]
    .clock(dt_cs_clock),
    .coreid(dt_cs_coreid),
    .priviledgeMode(dt_cs_priviledgeMode),
    .mstatus(dt_cs_mstatus),
    .sstatus(dt_cs_sstatus),
    .mepc(dt_cs_mepc),
    .sepc(dt_cs_sepc),
    .mtval(dt_cs_mtval),
    .stval(dt_cs_stval),
    .mtvec(dt_cs_mtvec),
    .stvec(dt_cs_stvec),
    .mcause(dt_cs_mcause),
    .scause(dt_cs_scause),
    .satp(dt_cs_satp),
    .mip(dt_cs_mip),
    .mie(dt_cs_mie),
    .mscratch(dt_cs_mscratch),
    .sscratch(dt_cs_sscratch),
    .mideleg(dt_cs_mideleg),
    .medeleg(dt_cs_medeleg)
  );
  assign io_imem_addr = fetch_io_imem_addr; // @[Core.scala 12:17]
  assign fetch_clock = clock;
  assign fetch_reset = reset;
  assign fetch_io_imem_rdata = io_imem_rdata; // @[Core.scala 12:17]
  assign decode_io_pc = fetch_io_pc; // @[Core.scala 16:18]
  assign decode_io_inst = fetch_io_inst; // @[Core.scala 15:18]
  assign rf_clock = clock;
  assign rf_reset = reset;
  assign rf_io_rd_addr = decode_io_inst_decode_rd_addr; // @[Core.scala 21:18]
  assign rf_io_rd_data = execution_io_result; // @[Core.scala 28:28]
  assign rf_io_rd_en = decode_io_inst_decode_rd_en; // @[Core.scala 22:18]
  assign execution_io_inst_decode_pc = decode_io_inst_decode_pc; // @[Core.scala 25:28]
  assign execution_io_inst_decode_fu_code = decode_io_inst_decode_fu_code; // @[Core.scala 25:28]
  assign execution_io_inst_decode_alu_code = decode_io_inst_decode_alu_code; // @[Core.scala 25:28]
  assign execution_io_inst_decode_rs1_src = decode_io_inst_decode_rs1_src; // @[Core.scala 25:28]
  assign execution_io_inst_decode_rs2_src = decode_io_inst_decode_rs2_src; // @[Core.scala 25:28]
  assign execution_io_inst_decode_imm = decode_io_inst_decode_imm; // @[Core.scala 25:28]
  assign execution_io_rs2_data = {{32'd0}, decode_io_inst_decode_imm}; // @[Core.scala 27:34]
  assign dt_ic_clock = clock; // @[Core.scala 36:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 37:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 38:21]
  assign dt_ic_valid = 1'h1; // @[Core.scala 39:21]
  assign dt_ic_pc = {{32'd0}, dt_ic_io_pc_REG}; // @[Core.scala 40:21]
  assign dt_ic_instr = dt_ic_io_instr_REG; // @[Core.scala 41:21]
  assign dt_ic_special = 8'h0; // @[Core.scala 42:21]
  assign dt_ic_skip = 1'h0; // @[Core.scala 43:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 44:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 45:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 46:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 47:21]
  assign dt_ic_wdest = {{3'd0}, dt_ic_io_wdest_REG}; // @[Core.scala 48:21]
  assign dt_ae_clock = clock; // @[Core.scala 51:25]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 52:25]
  assign dt_ae_intrNO = 32'h0; // @[Core.scala 53:25]
  assign dt_ae_cause = 32'h0; // @[Core.scala 54:25]
  assign dt_ae_exceptionPC = 64'h0; // @[Core.scala 55:25]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_te_clock = clock; // @[Core.scala 67:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 68:21]
  assign dt_te_valid = fetch_io_inst == 32'h6b; // @[Core.scala 69:39]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 70:29]
  assign dt_te_pc = {{32'd0}, fetch_io_pc}; // @[Core.scala 71:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 72:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 73:21]
  assign dt_cs_clock = clock; // @[Core.scala 76:27]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 77:27]
  assign dt_cs_priviledgeMode = 2'h3; // @[Core.scala 78:27]
  assign dt_cs_mstatus = 64'h0; // @[Core.scala 79:27]
  assign dt_cs_sstatus = 64'h0; // @[Core.scala 80:27]
  assign dt_cs_mepc = 64'h0; // @[Core.scala 81:27]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 82:27]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 83:27]
  assign dt_cs_stval = 64'h0; // @[Core.scala 84:27]
  assign dt_cs_mtvec = 64'h0; // @[Core.scala 85:27]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 86:27]
  assign dt_cs_mcause = 64'h0; // @[Core.scala 87:27]
  assign dt_cs_scause = 64'h0; // @[Core.scala 88:27]
  assign dt_cs_satp = 64'h0; // @[Core.scala 89:27]
  assign dt_cs_mip = 64'h0; // @[Core.scala 90:27]
  assign dt_cs_mie = 64'h0; // @[Core.scala 91:27]
  assign dt_cs_mscratch = 64'h0; // @[Core.scala 92:27]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 93:27]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 94:27]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 95:27]
  always @(posedge clock) begin
    dt_ic_io_pc_REG <= fetch_io_pc; // @[Core.scala 40:31]
    dt_ic_io_instr_REG <= fetch_io_inst; // @[Core.scala 41:31]
    dt_ic_io_wen_REG <= decode_io_inst_decode_rd_en; // @[Core.scala 46:31]
    dt_ic_io_wdata_REG <= execution_io_result; // @[Core.scala 47:31]
    dt_ic_io_wdest_REG <= decode_io_inst_decode_rd_addr; // @[Core.scala 48:31]
    if (reset) begin // @[Core.scala 57:26]
      cycle_cnt <= 64'h0; // @[Core.scala 57:26]
    end else begin
      cycle_cnt <= _cycle_cnt_T_1; // @[Core.scala 60:13]
    end
    if (reset) begin // @[Core.scala 58:26]
      instr_cnt <= 64'h0; // @[Core.scala 58:26]
    end else begin
      instr_cnt <= _instr_cnt_T_1; // @[Core.scala 61:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  dt_ic_io_pc_REG = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  dt_ic_io_instr_REG = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_4[4:0];
  _RAND_5 = {2{`RANDOM}};
  cycle_cnt = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  instr_cnt = _RAND_6[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Ram2r1w(
  input         clock,
  input  [63:0] io_imem_addr,
  output [63:0] io_imem_rdata
);
  wire  mem_clk; // @[Ram.scala 37:19]
  wire  mem_imem_en; // @[Ram.scala 37:19]
  wire [63:0] mem_imem_addr; // @[Ram.scala 37:19]
  wire [31:0] mem_imem_data; // @[Ram.scala 37:19]
  wire  mem_dmem_en; // @[Ram.scala 37:19]
  wire [63:0] mem_dmem_addr; // @[Ram.scala 37:19]
  wire [63:0] mem_dmem_rdata; // @[Ram.scala 37:19]
  wire [63:0] mem_dmem_wdata; // @[Ram.scala 37:19]
  wire [63:0] mem_dmem_wmask; // @[Ram.scala 37:19]
  wire  mem_dmem_wen; // @[Ram.scala 37:19]
  ram_2r1w mem ( // @[Ram.scala 37:19]
    .clk(mem_clk),
    .imem_en(mem_imem_en),
    .imem_addr(mem_imem_addr),
    .imem_data(mem_imem_data),
    .dmem_en(mem_dmem_en),
    .dmem_addr(mem_dmem_addr),
    .dmem_rdata(mem_dmem_rdata),
    .dmem_wdata(mem_dmem_wdata),
    .dmem_wmask(mem_dmem_wmask),
    .dmem_wen(mem_dmem_wen)
  );
  assign io_imem_rdata = {{32'd0}, mem_imem_data}; // @[Ram.scala 41:21]
  assign mem_clk = clock; // @[Ram.scala 38:21]
  assign mem_imem_en = 1'h1; // @[Ram.scala 39:21]
  assign mem_imem_addr = io_imem_addr; // @[Ram.scala 40:21]
  assign mem_dmem_en = 1'h0; // @[Ram.scala 42:21]
  assign mem_dmem_addr = 64'h0; // @[Ram.scala 43:21]
  assign mem_dmem_wdata = 64'h0; // @[Ram.scala 45:21]
  assign mem_dmem_wmask = 64'h0; // @[Ram.scala 46:21]
  assign mem_dmem_wen = 1'h0; // @[Ram.scala 47:21]
endmodule
module SimTop(
  input         clock,
  input         reset,
  input  [63:0] io_logCtrl_log_begin,
  input  [63:0] io_logCtrl_log_end,
  input  [63:0] io_logCtrl_log_level,
  input         io_perfInfo_clean,
  input         io_perfInfo_dump,
  output        io_uart_out_valid,
  output [7:0]  io_uart_out_ch,
  output        io_uart_in_valid,
  input  [7:0]  io_uart_in_ch
);
  wire  core_clock; // @[SimTop.scala 12:20]
  wire  core_reset; // @[SimTop.scala 12:20]
  wire [63:0] core_io_imem_addr; // @[SimTop.scala 12:20]
  wire [63:0] core_io_imem_rdata; // @[SimTop.scala 12:20]
  wire  mem_clock; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_imem_addr; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_imem_rdata; // @[SimTop.scala 14:19]
  Core core ( // @[SimTop.scala 12:20]
    .clock(core_clock),
    .reset(core_reset),
    .io_imem_addr(core_io_imem_addr),
    .io_imem_rdata(core_io_imem_rdata)
  );
  Ram2r1w mem ( // @[SimTop.scala 14:19]
    .clock(mem_clock),
    .io_imem_addr(mem_io_imem_addr),
    .io_imem_rdata(mem_io_imem_rdata)
  );
  assign io_uart_out_valid = 1'h0; // @[SimTop.scala 18:21]
  assign io_uart_out_ch = 8'h0; // @[SimTop.scala 19:18]
  assign io_uart_in_valid = 1'h0; // @[SimTop.scala 20:20]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_imem_rdata = mem_io_imem_rdata; // @[SimTop.scala 15:15]
  assign mem_clock = clock;
  assign mem_io_imem_addr = core_io_imem_addr; // @[SimTop.scala 15:15]
endmodule
