module RegFile(
  input         clock,
  input         reset,
  input  [4:0]  io_rs1_addr,
  input  [4:0]  io_rs2_addr,
  output [63:0] io_rs1_data,
  output [63:0] io_rs2_data,
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
  wire [63:0] _GEN_65 = 5'h1 == io_rs1_addr ? rf__1 : rf__0; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_66 = 5'h2 == io_rs1_addr ? rf__2 : _GEN_65; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_67 = 5'h3 == io_rs1_addr ? rf__3 : _GEN_66; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_68 = 5'h4 == io_rs1_addr ? rf__4 : _GEN_67; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_69 = 5'h5 == io_rs1_addr ? rf__5 : _GEN_68; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_70 = 5'h6 == io_rs1_addr ? rf__6 : _GEN_69; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_71 = 5'h7 == io_rs1_addr ? rf__7 : _GEN_70; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_72 = 5'h8 == io_rs1_addr ? rf__8 : _GEN_71; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_73 = 5'h9 == io_rs1_addr ? rf__9 : _GEN_72; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_74 = 5'ha == io_rs1_addr ? rf__10 : _GEN_73; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_75 = 5'hb == io_rs1_addr ? rf__11 : _GEN_74; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_76 = 5'hc == io_rs1_addr ? rf__12 : _GEN_75; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_77 = 5'hd == io_rs1_addr ? rf__13 : _GEN_76; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_78 = 5'he == io_rs1_addr ? rf__14 : _GEN_77; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_79 = 5'hf == io_rs1_addr ? rf__15 : _GEN_78; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_80 = 5'h10 == io_rs1_addr ? rf__16 : _GEN_79; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_81 = 5'h11 == io_rs1_addr ? rf__17 : _GEN_80; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_82 = 5'h12 == io_rs1_addr ? rf__18 : _GEN_81; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_83 = 5'h13 == io_rs1_addr ? rf__19 : _GEN_82; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_84 = 5'h14 == io_rs1_addr ? rf__20 : _GEN_83; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_85 = 5'h15 == io_rs1_addr ? rf__21 : _GEN_84; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_86 = 5'h16 == io_rs1_addr ? rf__22 : _GEN_85; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_87 = 5'h17 == io_rs1_addr ? rf__23 : _GEN_86; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_88 = 5'h18 == io_rs1_addr ? rf__24 : _GEN_87; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_89 = 5'h19 == io_rs1_addr ? rf__25 : _GEN_88; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_90 = 5'h1a == io_rs1_addr ? rf__26 : _GEN_89; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_91 = 5'h1b == io_rs1_addr ? rf__27 : _GEN_90; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_92 = 5'h1c == io_rs1_addr ? rf__28 : _GEN_91; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_93 = 5'h1d == io_rs1_addr ? rf__29 : _GEN_92; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_94 = 5'h1e == io_rs1_addr ? rf__30 : _GEN_93; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_95 = 5'h1f == io_rs1_addr ? rf__31 : _GEN_94; // @[RegFile.scala 22:21 RegFile.scala 22:21]
  wire [63:0] _GEN_97 = 5'h1 == io_rs2_addr ? rf__1 : rf__0; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_98 = 5'h2 == io_rs2_addr ? rf__2 : _GEN_97; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_99 = 5'h3 == io_rs2_addr ? rf__3 : _GEN_98; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_100 = 5'h4 == io_rs2_addr ? rf__4 : _GEN_99; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_101 = 5'h5 == io_rs2_addr ? rf__5 : _GEN_100; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_102 = 5'h6 == io_rs2_addr ? rf__6 : _GEN_101; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_103 = 5'h7 == io_rs2_addr ? rf__7 : _GEN_102; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_104 = 5'h8 == io_rs2_addr ? rf__8 : _GEN_103; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_105 = 5'h9 == io_rs2_addr ? rf__9 : _GEN_104; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_106 = 5'ha == io_rs2_addr ? rf__10 : _GEN_105; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_107 = 5'hb == io_rs2_addr ? rf__11 : _GEN_106; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_108 = 5'hc == io_rs2_addr ? rf__12 : _GEN_107; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_109 = 5'hd == io_rs2_addr ? rf__13 : _GEN_108; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_110 = 5'he == io_rs2_addr ? rf__14 : _GEN_109; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_111 = 5'hf == io_rs2_addr ? rf__15 : _GEN_110; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_112 = 5'h10 == io_rs2_addr ? rf__16 : _GEN_111; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_113 = 5'h11 == io_rs2_addr ? rf__17 : _GEN_112; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_114 = 5'h12 == io_rs2_addr ? rf__18 : _GEN_113; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_115 = 5'h13 == io_rs2_addr ? rf__19 : _GEN_114; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_116 = 5'h14 == io_rs2_addr ? rf__20 : _GEN_115; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_117 = 5'h15 == io_rs2_addr ? rf__21 : _GEN_116; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_118 = 5'h16 == io_rs2_addr ? rf__22 : _GEN_117; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_119 = 5'h17 == io_rs2_addr ? rf__23 : _GEN_118; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_120 = 5'h18 == io_rs2_addr ? rf__24 : _GEN_119; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_121 = 5'h19 == io_rs2_addr ? rf__25 : _GEN_120; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_122 = 5'h1a == io_rs2_addr ? rf__26 : _GEN_121; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_123 = 5'h1b == io_rs2_addr ? rf__27 : _GEN_122; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_124 = 5'h1c == io_rs2_addr ? rf__28 : _GEN_123; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_125 = 5'h1d == io_rs2_addr ? rf__29 : _GEN_124; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_126 = 5'h1e == io_rs2_addr ? rf__30 : _GEN_125; // @[RegFile.scala 23:21 RegFile.scala 23:21]
  wire [63:0] _GEN_127 = 5'h1f == io_rs2_addr ? rf__31 : _GEN_126; // @[RegFile.scala 23:21 RegFile.scala 23:21]
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
  assign io_rs1_data = io_rs1_addr != 5'h0 ? _GEN_95 : 64'h0; // @[RegFile.scala 22:21]
  assign io_rs2_data = io_rs2_addr != 5'h0 ? _GEN_127 : 64'h0; // @[RegFile.scala 23:21]
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
module Decode(
  input  [31:0] io_inst,
  output [4:0]  io_alu_type,
  output [2:0]  io_op1_type,
  output [2:0]  io_op2_type,
  output [2:0]  io_imm_type,
  output [2:0]  io_mem_rtype,
  output [2:0]  io_wb_type,
  output [2:0]  io_csr_type
);
  wire [31:0] _ctrl_T = io_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_1 = 32'h33 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_3 = 32'h40000033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_5 = 32'h1033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_7 = 32'h2033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_9 = 32'h3033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_11 = 32'h4033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_13 = 32'h5033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_15 = 32'h40005033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_17 = 32'h6033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_19 = 32'h7033 == _ctrl_T; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_20 = io_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_21 = 32'h13 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_22 = io_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_23 = 32'h1013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_25 = 32'h2013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_27 = 32'h3013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_29 = 32'h4013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_31 = 32'h5013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_33 = 32'h40005013 == _ctrl_T_22; // @[Lookup.scala 31:38]
  wire  _ctrl_T_35 = 32'h6013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_37 = 32'h7013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_39 = 32'h3 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_41 = 32'h1003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_43 = 32'h2003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_45 = 32'h3003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_47 = 32'h4003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_49 = 32'h5003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_51 = 32'h6003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_53 = 32'h23 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_55 = 32'h1023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_57 = 32'h2023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_59 = 32'h3023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_60 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_61 = 32'h37 == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_63 = 32'h17 == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_65 = 32'h63 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_67 = 32'h1063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_69 = 32'h4063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_71 = 32'h5063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_73 = 32'h6063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_75 = 32'h7063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_77 = 32'h6f == _ctrl_T_60; // @[Lookup.scala 31:38]
  wire  _ctrl_T_79 = 32'h67 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_81 = 32'h1b == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_83 = 32'h3b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_85 = 32'h101b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_87 = 32'h501b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_89 = 32'h4000501b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_91 = 32'h4000003b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_93 = 32'h103b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_95 = 32'h503b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_97 = 32'h4000503b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_99 = 32'h1073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_101 = 32'h2073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_103 = 32'h3073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_105 = 32'h5073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_107 = 32'h6073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_109 = 32'h7073 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_111 = 32'h73 == io_inst; // @[Lookup.scala 31:38]
  wire  _ctrl_T_113 = 32'h30200073 == io_inst; // @[Lookup.scala 31:38]
  wire  _ctrl_T_115 = 32'h7b == io_inst; // @[Lookup.scala 31:38]
  wire [4:0] _ctrl_T_230 = _ctrl_T_115 ? 5'h14 : 5'h0; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_231 = _ctrl_T_113 ? 5'h0 : _ctrl_T_230; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_232 = _ctrl_T_111 ? 5'h0 : _ctrl_T_231; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_233 = _ctrl_T_109 ? 5'h12 : _ctrl_T_232; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_234 = _ctrl_T_107 ? 5'h12 : _ctrl_T_233; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_235 = _ctrl_T_105 ? 5'h12 : _ctrl_T_234; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_236 = _ctrl_T_103 ? 5'h12 : _ctrl_T_235; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_237 = _ctrl_T_101 ? 5'h12 : _ctrl_T_236; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_238 = _ctrl_T_99 ? 5'h12 : _ctrl_T_237; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_239 = _ctrl_T_97 ? 5'h10 : _ctrl_T_238; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_240 = _ctrl_T_95 ? 5'hf : _ctrl_T_239; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_241 = _ctrl_T_93 ? 5'he : _ctrl_T_240; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_242 = _ctrl_T_91 ? 5'h11 : _ctrl_T_241; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_243 = _ctrl_T_89 ? 5'h10 : _ctrl_T_242; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_244 = _ctrl_T_87 ? 5'hf : _ctrl_T_243; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_245 = _ctrl_T_85 ? 5'he : _ctrl_T_244; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_246 = _ctrl_T_83 ? 5'hd : _ctrl_T_245; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_247 = _ctrl_T_81 ? 5'hd : _ctrl_T_246; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_248 = _ctrl_T_79 ? 5'h1 : _ctrl_T_247; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_249 = _ctrl_T_77 ? 5'h1 : _ctrl_T_248; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_250 = _ctrl_T_75 ? 5'hc : _ctrl_T_249; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_251 = _ctrl_T_73 ? 5'h4 : _ctrl_T_250; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_252 = _ctrl_T_71 ? 5'hb : _ctrl_T_251; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_253 = _ctrl_T_69 ? 5'h3 : _ctrl_T_252; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_254 = _ctrl_T_67 ? 5'h5 : _ctrl_T_253; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_255 = _ctrl_T_65 ? 5'h2 : _ctrl_T_254; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_256 = _ctrl_T_63 ? 5'h1 : _ctrl_T_255; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_257 = _ctrl_T_61 ? 5'h13 : _ctrl_T_256; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_258 = _ctrl_T_59 ? 5'h1 : _ctrl_T_257; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_259 = _ctrl_T_57 ? 5'h1 : _ctrl_T_258; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_260 = _ctrl_T_55 ? 5'h1 : _ctrl_T_259; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_261 = _ctrl_T_53 ? 5'h1 : _ctrl_T_260; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_262 = _ctrl_T_51 ? 5'h1 : _ctrl_T_261; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_263 = _ctrl_T_49 ? 5'h1 : _ctrl_T_262; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_264 = _ctrl_T_47 ? 5'h1 : _ctrl_T_263; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_265 = _ctrl_T_45 ? 5'h1 : _ctrl_T_264; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_266 = _ctrl_T_43 ? 5'h1 : _ctrl_T_265; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_267 = _ctrl_T_41 ? 5'h1 : _ctrl_T_266; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_268 = _ctrl_T_39 ? 5'h1 : _ctrl_T_267; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_269 = _ctrl_T_37 ? 5'h7 : _ctrl_T_268; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_270 = _ctrl_T_35 ? 5'h6 : _ctrl_T_269; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_271 = _ctrl_T_33 ? 5'ha : _ctrl_T_270; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_272 = _ctrl_T_31 ? 5'h9 : _ctrl_T_271; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_273 = _ctrl_T_29 ? 5'h5 : _ctrl_T_272; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_274 = _ctrl_T_27 ? 5'h4 : _ctrl_T_273; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_275 = _ctrl_T_25 ? 5'h3 : _ctrl_T_274; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_276 = _ctrl_T_23 ? 5'h8 : _ctrl_T_275; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_277 = _ctrl_T_21 ? 5'h1 : _ctrl_T_276; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_278 = _ctrl_T_19 ? 5'h7 : _ctrl_T_277; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_279 = _ctrl_T_17 ? 5'h6 : _ctrl_T_278; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_280 = _ctrl_T_15 ? 5'ha : _ctrl_T_279; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_281 = _ctrl_T_13 ? 5'h9 : _ctrl_T_280; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_282 = _ctrl_T_11 ? 5'h5 : _ctrl_T_281; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_283 = _ctrl_T_9 ? 5'h4 : _ctrl_T_282; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_284 = _ctrl_T_7 ? 5'h3 : _ctrl_T_283; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_285 = _ctrl_T_5 ? 5'h8 : _ctrl_T_284; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_286 = _ctrl_T_3 ? 5'h2 : _ctrl_T_285; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_290 = _ctrl_T_109 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_291 = _ctrl_T_107 ? 3'h2 : _ctrl_T_290; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_292 = _ctrl_T_105 ? 3'h2 : _ctrl_T_291; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_293 = _ctrl_T_103 ? 3'h1 : _ctrl_T_292; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_294 = _ctrl_T_101 ? 3'h1 : _ctrl_T_293; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_295 = _ctrl_T_99 ? 3'h1 : _ctrl_T_294; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_296 = _ctrl_T_97 ? 3'h1 : _ctrl_T_295; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_297 = _ctrl_T_95 ? 3'h1 : _ctrl_T_296; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_298 = _ctrl_T_93 ? 3'h1 : _ctrl_T_297; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_299 = _ctrl_T_91 ? 3'h1 : _ctrl_T_298; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_300 = _ctrl_T_89 ? 3'h1 : _ctrl_T_299; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_301 = _ctrl_T_87 ? 3'h1 : _ctrl_T_300; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_302 = _ctrl_T_85 ? 3'h1 : _ctrl_T_301; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_303 = _ctrl_T_83 ? 3'h1 : _ctrl_T_302; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_304 = _ctrl_T_81 ? 3'h1 : _ctrl_T_303; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_305 = _ctrl_T_79 ? 3'h3 : _ctrl_T_304; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_306 = _ctrl_T_77 ? 3'h3 : _ctrl_T_305; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_307 = _ctrl_T_75 ? 3'h1 : _ctrl_T_306; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_308 = _ctrl_T_73 ? 3'h1 : _ctrl_T_307; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_309 = _ctrl_T_71 ? 3'h1 : _ctrl_T_308; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_310 = _ctrl_T_69 ? 3'h1 : _ctrl_T_309; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_311 = _ctrl_T_67 ? 3'h1 : _ctrl_T_310; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_312 = _ctrl_T_65 ? 3'h1 : _ctrl_T_311; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_313 = _ctrl_T_63 ? 3'h3 : _ctrl_T_312; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_314 = _ctrl_T_61 ? 3'h0 : _ctrl_T_313; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_315 = _ctrl_T_59 ? 3'h1 : _ctrl_T_314; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_316 = _ctrl_T_57 ? 3'h1 : _ctrl_T_315; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_317 = _ctrl_T_55 ? 3'h1 : _ctrl_T_316; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_318 = _ctrl_T_53 ? 3'h1 : _ctrl_T_317; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_319 = _ctrl_T_51 ? 3'h1 : _ctrl_T_318; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_320 = _ctrl_T_49 ? 3'h1 : _ctrl_T_319; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_321 = _ctrl_T_47 ? 3'h1 : _ctrl_T_320; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_322 = _ctrl_T_45 ? 3'h1 : _ctrl_T_321; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_323 = _ctrl_T_43 ? 3'h1 : _ctrl_T_322; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_324 = _ctrl_T_41 ? 3'h1 : _ctrl_T_323; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_325 = _ctrl_T_39 ? 3'h1 : _ctrl_T_324; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_326 = _ctrl_T_37 ? 3'h1 : _ctrl_T_325; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_327 = _ctrl_T_35 ? 3'h1 : _ctrl_T_326; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_328 = _ctrl_T_33 ? 3'h1 : _ctrl_T_327; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_329 = _ctrl_T_31 ? 3'h1 : _ctrl_T_328; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_330 = _ctrl_T_29 ? 3'h1 : _ctrl_T_329; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_331 = _ctrl_T_27 ? 3'h1 : _ctrl_T_330; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_332 = _ctrl_T_25 ? 3'h1 : _ctrl_T_331; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_333 = _ctrl_T_23 ? 3'h1 : _ctrl_T_332; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_334 = _ctrl_T_21 ? 3'h1 : _ctrl_T_333; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_335 = _ctrl_T_19 ? 3'h1 : _ctrl_T_334; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_336 = _ctrl_T_17 ? 3'h1 : _ctrl_T_335; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_337 = _ctrl_T_15 ? 3'h1 : _ctrl_T_336; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_338 = _ctrl_T_13 ? 3'h1 : _ctrl_T_337; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_339 = _ctrl_T_11 ? 3'h1 : _ctrl_T_338; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_340 = _ctrl_T_9 ? 3'h1 : _ctrl_T_339; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_341 = _ctrl_T_7 ? 3'h1 : _ctrl_T_340; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_342 = _ctrl_T_5 ? 3'h1 : _ctrl_T_341; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_343 = _ctrl_T_3 ? 3'h1 : _ctrl_T_342; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_353 = _ctrl_T_97 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_354 = _ctrl_T_95 ? 3'h1 : _ctrl_T_353; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_355 = _ctrl_T_93 ? 3'h1 : _ctrl_T_354; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_356 = _ctrl_T_91 ? 3'h1 : _ctrl_T_355; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_357 = _ctrl_T_89 ? 3'h2 : _ctrl_T_356; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_358 = _ctrl_T_87 ? 3'h2 : _ctrl_T_357; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_359 = _ctrl_T_85 ? 3'h2 : _ctrl_T_358; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_360 = _ctrl_T_83 ? 3'h1 : _ctrl_T_359; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_361 = _ctrl_T_81 ? 3'h2 : _ctrl_T_360; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_362 = _ctrl_T_79 ? 3'h4 : _ctrl_T_361; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_363 = _ctrl_T_77 ? 3'h4 : _ctrl_T_362; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_364 = _ctrl_T_75 ? 3'h1 : _ctrl_T_363; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_365 = _ctrl_T_73 ? 3'h1 : _ctrl_T_364; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_366 = _ctrl_T_71 ? 3'h1 : _ctrl_T_365; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_367 = _ctrl_T_69 ? 3'h1 : _ctrl_T_366; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_368 = _ctrl_T_67 ? 3'h1 : _ctrl_T_367; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_369 = _ctrl_T_65 ? 3'h1 : _ctrl_T_368; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_370 = _ctrl_T_63 ? 3'h2 : _ctrl_T_369; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_371 = _ctrl_T_61 ? 3'h2 : _ctrl_T_370; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_372 = _ctrl_T_59 ? 3'h2 : _ctrl_T_371; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_373 = _ctrl_T_57 ? 3'h2 : _ctrl_T_372; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_374 = _ctrl_T_55 ? 3'h2 : _ctrl_T_373; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_375 = _ctrl_T_53 ? 3'h2 : _ctrl_T_374; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_376 = _ctrl_T_51 ? 3'h2 : _ctrl_T_375; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_377 = _ctrl_T_49 ? 3'h2 : _ctrl_T_376; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_378 = _ctrl_T_47 ? 3'h2 : _ctrl_T_377; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_379 = _ctrl_T_45 ? 3'h2 : _ctrl_T_378; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_380 = _ctrl_T_43 ? 3'h2 : _ctrl_T_379; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_381 = _ctrl_T_41 ? 3'h2 : _ctrl_T_380; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_382 = _ctrl_T_39 ? 3'h2 : _ctrl_T_381; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_383 = _ctrl_T_37 ? 3'h2 : _ctrl_T_382; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_384 = _ctrl_T_35 ? 3'h2 : _ctrl_T_383; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_385 = _ctrl_T_33 ? 3'h2 : _ctrl_T_384; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_386 = _ctrl_T_31 ? 3'h2 : _ctrl_T_385; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_387 = _ctrl_T_29 ? 3'h2 : _ctrl_T_386; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_388 = _ctrl_T_27 ? 3'h2 : _ctrl_T_387; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_389 = _ctrl_T_25 ? 3'h2 : _ctrl_T_388; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_390 = _ctrl_T_23 ? 3'h2 : _ctrl_T_389; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_391 = _ctrl_T_21 ? 3'h2 : _ctrl_T_390; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_392 = _ctrl_T_19 ? 3'h1 : _ctrl_T_391; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_393 = _ctrl_T_17 ? 3'h1 : _ctrl_T_392; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_394 = _ctrl_T_15 ? 3'h1 : _ctrl_T_393; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_395 = _ctrl_T_13 ? 3'h1 : _ctrl_T_394; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_396 = _ctrl_T_11 ? 3'h1 : _ctrl_T_395; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_397 = _ctrl_T_9 ? 3'h1 : _ctrl_T_396; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_398 = _ctrl_T_7 ? 3'h1 : _ctrl_T_397; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_399 = _ctrl_T_5 ? 3'h1 : _ctrl_T_398; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_400 = _ctrl_T_3 ? 3'h1 : _ctrl_T_399; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_404 = _ctrl_T_109 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_405 = _ctrl_T_107 ? 3'h7 : _ctrl_T_404; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_406 = _ctrl_T_105 ? 3'h7 : _ctrl_T_405; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_407 = _ctrl_T_103 ? 3'h0 : _ctrl_T_406; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_408 = _ctrl_T_101 ? 3'h0 : _ctrl_T_407; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_409 = _ctrl_T_99 ? 3'h0 : _ctrl_T_408; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_410 = _ctrl_T_97 ? 3'h0 : _ctrl_T_409; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_411 = _ctrl_T_95 ? 3'h0 : _ctrl_T_410; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_412 = _ctrl_T_93 ? 3'h0 : _ctrl_T_411; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_413 = _ctrl_T_91 ? 3'h0 : _ctrl_T_412; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_414 = _ctrl_T_89 ? 3'h1 : _ctrl_T_413; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_415 = _ctrl_T_87 ? 3'h1 : _ctrl_T_414; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_416 = _ctrl_T_85 ? 3'h1 : _ctrl_T_415; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_417 = _ctrl_T_83 ? 3'h0 : _ctrl_T_416; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_418 = _ctrl_T_81 ? 3'h1 : _ctrl_T_417; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_419 = _ctrl_T_79 ? 3'h1 : _ctrl_T_418; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_420 = _ctrl_T_77 ? 3'h5 : _ctrl_T_419; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_421 = _ctrl_T_75 ? 3'h3 : _ctrl_T_420; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_422 = _ctrl_T_73 ? 3'h3 : _ctrl_T_421; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_423 = _ctrl_T_71 ? 3'h3 : _ctrl_T_422; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_424 = _ctrl_T_69 ? 3'h3 : _ctrl_T_423; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_425 = _ctrl_T_67 ? 3'h3 : _ctrl_T_424; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_426 = _ctrl_T_65 ? 3'h3 : _ctrl_T_425; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_427 = _ctrl_T_63 ? 3'h4 : _ctrl_T_426; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_428 = _ctrl_T_61 ? 3'h4 : _ctrl_T_427; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_429 = _ctrl_T_59 ? 3'h2 : _ctrl_T_428; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_430 = _ctrl_T_57 ? 3'h2 : _ctrl_T_429; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_431 = _ctrl_T_55 ? 3'h2 : _ctrl_T_430; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_432 = _ctrl_T_53 ? 3'h2 : _ctrl_T_431; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_433 = _ctrl_T_51 ? 3'h1 : _ctrl_T_432; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_434 = _ctrl_T_49 ? 3'h1 : _ctrl_T_433; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_435 = _ctrl_T_47 ? 3'h1 : _ctrl_T_434; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_436 = _ctrl_T_45 ? 3'h1 : _ctrl_T_435; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_437 = _ctrl_T_43 ? 3'h1 : _ctrl_T_436; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_438 = _ctrl_T_41 ? 3'h1 : _ctrl_T_437; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_439 = _ctrl_T_39 ? 3'h1 : _ctrl_T_438; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_440 = _ctrl_T_37 ? 3'h1 : _ctrl_T_439; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_441 = _ctrl_T_35 ? 3'h1 : _ctrl_T_440; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_442 = _ctrl_T_33 ? 3'h1 : _ctrl_T_441; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_443 = _ctrl_T_31 ? 3'h1 : _ctrl_T_442; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_444 = _ctrl_T_29 ? 3'h1 : _ctrl_T_443; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_445 = _ctrl_T_27 ? 3'h1 : _ctrl_T_444; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_446 = _ctrl_T_25 ? 3'h1 : _ctrl_T_445; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_447 = _ctrl_T_23 ? 3'h1 : _ctrl_T_446; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_448 = _ctrl_T_21 ? 3'h1 : _ctrl_T_447; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_449 = _ctrl_T_19 ? 3'h0 : _ctrl_T_448; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_450 = _ctrl_T_17 ? 3'h0 : _ctrl_T_449; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_451 = _ctrl_T_15 ? 3'h0 : _ctrl_T_450; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_452 = _ctrl_T_13 ? 3'h0 : _ctrl_T_451; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_453 = _ctrl_T_11 ? 3'h0 : _ctrl_T_452; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_454 = _ctrl_T_9 ? 3'h0 : _ctrl_T_453; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_455 = _ctrl_T_7 ? 3'h0 : _ctrl_T_454; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_456 = _ctrl_T_5 ? 3'h0 : _ctrl_T_455; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_457 = _ctrl_T_3 ? 3'h0 : _ctrl_T_456; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_490 = _ctrl_T_51 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_491 = _ctrl_T_49 ? 3'h6 : _ctrl_T_490; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_492 = _ctrl_T_47 ? 3'h5 : _ctrl_T_491; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_493 = _ctrl_T_45 ? 3'h4 : _ctrl_T_492; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_494 = _ctrl_T_43 ? 3'h3 : _ctrl_T_493; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_495 = _ctrl_T_41 ? 3'h2 : _ctrl_T_494; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_496 = _ctrl_T_39 ? 3'h1 : _ctrl_T_495; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_497 = _ctrl_T_37 ? 3'h0 : _ctrl_T_496; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_498 = _ctrl_T_35 ? 3'h0 : _ctrl_T_497; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_499 = _ctrl_T_33 ? 3'h0 : _ctrl_T_498; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_500 = _ctrl_T_31 ? 3'h0 : _ctrl_T_499; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_501 = _ctrl_T_29 ? 3'h0 : _ctrl_T_500; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_502 = _ctrl_T_27 ? 3'h0 : _ctrl_T_501; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_503 = _ctrl_T_25 ? 3'h0 : _ctrl_T_502; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_504 = _ctrl_T_23 ? 3'h0 : _ctrl_T_503; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_505 = _ctrl_T_21 ? 3'h0 : _ctrl_T_504; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_506 = _ctrl_T_19 ? 3'h0 : _ctrl_T_505; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_507 = _ctrl_T_17 ? 3'h0 : _ctrl_T_506; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_508 = _ctrl_T_15 ? 3'h0 : _ctrl_T_507; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_509 = _ctrl_T_13 ? 3'h0 : _ctrl_T_508; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_510 = _ctrl_T_11 ? 3'h0 : _ctrl_T_509; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_511 = _ctrl_T_9 ? 3'h0 : _ctrl_T_510; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_512 = _ctrl_T_7 ? 3'h0 : _ctrl_T_511; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_513 = _ctrl_T_5 ? 3'h0 : _ctrl_T_512; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_514 = _ctrl_T_3 ? 3'h0 : _ctrl_T_513; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_518 = _ctrl_T_109 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_519 = _ctrl_T_107 ? 3'h1 : _ctrl_T_518; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_520 = _ctrl_T_105 ? 3'h1 : _ctrl_T_519; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_521 = _ctrl_T_103 ? 3'h1 : _ctrl_T_520; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_522 = _ctrl_T_101 ? 3'h1 : _ctrl_T_521; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_523 = _ctrl_T_99 ? 3'h1 : _ctrl_T_522; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_524 = _ctrl_T_97 ? 3'h1 : _ctrl_T_523; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_525 = _ctrl_T_95 ? 3'h1 : _ctrl_T_524; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_526 = _ctrl_T_93 ? 3'h1 : _ctrl_T_525; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_527 = _ctrl_T_91 ? 3'h1 : _ctrl_T_526; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_528 = _ctrl_T_89 ? 3'h1 : _ctrl_T_527; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_529 = _ctrl_T_87 ? 3'h1 : _ctrl_T_528; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_530 = _ctrl_T_85 ? 3'h1 : _ctrl_T_529; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_531 = _ctrl_T_83 ? 3'h1 : _ctrl_T_530; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_532 = _ctrl_T_81 ? 3'h1 : _ctrl_T_531; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_533 = _ctrl_T_79 ? 3'h1 : _ctrl_T_532; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_534 = _ctrl_T_77 ? 3'h1 : _ctrl_T_533; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_535 = _ctrl_T_75 ? 3'h0 : _ctrl_T_534; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_536 = _ctrl_T_73 ? 3'h0 : _ctrl_T_535; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_537 = _ctrl_T_71 ? 3'h0 : _ctrl_T_536; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_538 = _ctrl_T_69 ? 3'h0 : _ctrl_T_537; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_539 = _ctrl_T_67 ? 3'h0 : _ctrl_T_538; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_540 = _ctrl_T_65 ? 3'h0 : _ctrl_T_539; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_541 = _ctrl_T_63 ? 3'h1 : _ctrl_T_540; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_542 = _ctrl_T_61 ? 3'h1 : _ctrl_T_541; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_543 = _ctrl_T_59 ? 3'h5 : _ctrl_T_542; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_544 = _ctrl_T_57 ? 3'h4 : _ctrl_T_543; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_545 = _ctrl_T_55 ? 3'h3 : _ctrl_T_544; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_546 = _ctrl_T_53 ? 3'h2 : _ctrl_T_545; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_547 = _ctrl_T_51 ? 3'h1 : _ctrl_T_546; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_548 = _ctrl_T_49 ? 3'h1 : _ctrl_T_547; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_549 = _ctrl_T_47 ? 3'h1 : _ctrl_T_548; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_550 = _ctrl_T_45 ? 3'h1 : _ctrl_T_549; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_551 = _ctrl_T_43 ? 3'h1 : _ctrl_T_550; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_552 = _ctrl_T_41 ? 3'h1 : _ctrl_T_551; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_553 = _ctrl_T_39 ? 3'h1 : _ctrl_T_552; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_554 = _ctrl_T_37 ? 3'h1 : _ctrl_T_553; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_555 = _ctrl_T_35 ? 3'h1 : _ctrl_T_554; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_556 = _ctrl_T_33 ? 3'h1 : _ctrl_T_555; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_557 = _ctrl_T_31 ? 3'h1 : _ctrl_T_556; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_558 = _ctrl_T_29 ? 3'h1 : _ctrl_T_557; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_559 = _ctrl_T_27 ? 3'h1 : _ctrl_T_558; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_560 = _ctrl_T_25 ? 3'h1 : _ctrl_T_559; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_561 = _ctrl_T_23 ? 3'h1 : _ctrl_T_560; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_562 = _ctrl_T_21 ? 3'h1 : _ctrl_T_561; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_563 = _ctrl_T_19 ? 3'h1 : _ctrl_T_562; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_564 = _ctrl_T_17 ? 3'h1 : _ctrl_T_563; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_565 = _ctrl_T_15 ? 3'h1 : _ctrl_T_564; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_566 = _ctrl_T_13 ? 3'h1 : _ctrl_T_565; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_567 = _ctrl_T_11 ? 3'h1 : _ctrl_T_566; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_568 = _ctrl_T_9 ? 3'h1 : _ctrl_T_567; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_569 = _ctrl_T_7 ? 3'h1 : _ctrl_T_568; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_570 = _ctrl_T_5 ? 3'h1 : _ctrl_T_569; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_571 = _ctrl_T_3 ? 3'h1 : _ctrl_T_570; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_573 = _ctrl_T_113 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_574 = _ctrl_T_111 ? 3'h1 : _ctrl_T_573; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_575 = _ctrl_T_109 ? 3'h5 : _ctrl_T_574; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_576 = _ctrl_T_107 ? 3'h4 : _ctrl_T_575; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_577 = _ctrl_T_105 ? 3'h3 : _ctrl_T_576; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_578 = _ctrl_T_103 ? 3'h5 : _ctrl_T_577; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_579 = _ctrl_T_101 ? 3'h4 : _ctrl_T_578; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_580 = _ctrl_T_99 ? 3'h3 : _ctrl_T_579; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_581 = _ctrl_T_97 ? 3'h0 : _ctrl_T_580; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_582 = _ctrl_T_95 ? 3'h0 : _ctrl_T_581; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_583 = _ctrl_T_93 ? 3'h0 : _ctrl_T_582; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_584 = _ctrl_T_91 ? 3'h0 : _ctrl_T_583; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_585 = _ctrl_T_89 ? 3'h0 : _ctrl_T_584; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_586 = _ctrl_T_87 ? 3'h0 : _ctrl_T_585; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_587 = _ctrl_T_85 ? 3'h0 : _ctrl_T_586; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_588 = _ctrl_T_83 ? 3'h0 : _ctrl_T_587; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_589 = _ctrl_T_81 ? 3'h0 : _ctrl_T_588; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_590 = _ctrl_T_79 ? 3'h0 : _ctrl_T_589; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_591 = _ctrl_T_77 ? 3'h0 : _ctrl_T_590; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_592 = _ctrl_T_75 ? 3'h0 : _ctrl_T_591; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_593 = _ctrl_T_73 ? 3'h0 : _ctrl_T_592; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_594 = _ctrl_T_71 ? 3'h0 : _ctrl_T_593; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_595 = _ctrl_T_69 ? 3'h0 : _ctrl_T_594; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_596 = _ctrl_T_67 ? 3'h0 : _ctrl_T_595; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_597 = _ctrl_T_65 ? 3'h0 : _ctrl_T_596; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_598 = _ctrl_T_63 ? 3'h0 : _ctrl_T_597; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_599 = _ctrl_T_61 ? 3'h0 : _ctrl_T_598; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_600 = _ctrl_T_59 ? 3'h0 : _ctrl_T_599; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_601 = _ctrl_T_57 ? 3'h0 : _ctrl_T_600; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_602 = _ctrl_T_55 ? 3'h0 : _ctrl_T_601; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_603 = _ctrl_T_53 ? 3'h0 : _ctrl_T_602; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_604 = _ctrl_T_51 ? 3'h0 : _ctrl_T_603; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_605 = _ctrl_T_49 ? 3'h0 : _ctrl_T_604; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_606 = _ctrl_T_47 ? 3'h0 : _ctrl_T_605; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_607 = _ctrl_T_45 ? 3'h0 : _ctrl_T_606; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_608 = _ctrl_T_43 ? 3'h0 : _ctrl_T_607; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_609 = _ctrl_T_41 ? 3'h0 : _ctrl_T_608; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_610 = _ctrl_T_39 ? 3'h0 : _ctrl_T_609; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_611 = _ctrl_T_37 ? 3'h0 : _ctrl_T_610; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_612 = _ctrl_T_35 ? 3'h0 : _ctrl_T_611; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_613 = _ctrl_T_33 ? 3'h0 : _ctrl_T_612; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_614 = _ctrl_T_31 ? 3'h0 : _ctrl_T_613; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_615 = _ctrl_T_29 ? 3'h0 : _ctrl_T_614; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_616 = _ctrl_T_27 ? 3'h0 : _ctrl_T_615; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_617 = _ctrl_T_25 ? 3'h0 : _ctrl_T_616; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_618 = _ctrl_T_23 ? 3'h0 : _ctrl_T_617; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_619 = _ctrl_T_21 ? 3'h0 : _ctrl_T_618; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_620 = _ctrl_T_19 ? 3'h0 : _ctrl_T_619; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_621 = _ctrl_T_17 ? 3'h0 : _ctrl_T_620; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_622 = _ctrl_T_15 ? 3'h0 : _ctrl_T_621; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_623 = _ctrl_T_13 ? 3'h0 : _ctrl_T_622; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_624 = _ctrl_T_11 ? 3'h0 : _ctrl_T_623; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_625 = _ctrl_T_9 ? 3'h0 : _ctrl_T_624; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_626 = _ctrl_T_7 ? 3'h0 : _ctrl_T_625; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_627 = _ctrl_T_5 ? 3'h0 : _ctrl_T_626; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_628 = _ctrl_T_3 ? 3'h0 : _ctrl_T_627; // @[Lookup.scala 33:37]
  assign io_alu_type = _ctrl_T_1 ? 5'h1 : _ctrl_T_286; // @[Lookup.scala 33:37]
  assign io_op1_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_343; // @[Lookup.scala 33:37]
  assign io_op2_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_400; // @[Lookup.scala 33:37]
  assign io_imm_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_457; // @[Lookup.scala 33:37]
  assign io_mem_rtype = _ctrl_T_1 ? 3'h0 : _ctrl_T_514; // @[Lookup.scala 33:37]
  assign io_wb_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_571; // @[Lookup.scala 33:37]
  assign io_csr_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_628; // @[Lookup.scala 33:37]
endmodule
module ImmGen(
  input  [2:0]  io_imm_type,
  input  [31:0] io_inst,
  output [63:0] io_imm
);
  wire [52:0] imm_i_hi = io_inst[31] ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12]
  wire [10:0] imm_i_lo = io_inst[30:20]; // @[ImmGen.scala 16:43]
  wire [63:0] imm_i = {imm_i_hi,imm_i_lo}; // @[Cat.scala 30:58]
  wire [5:0] imm_s_hi_lo = io_inst[30:25]; // @[ImmGen.scala 17:43]
  wire [4:0] imm_s_lo = io_inst[11:7]; // @[ImmGen.scala 17:57]
  wire [63:0] imm_s = {imm_i_hi,imm_s_hi_lo,imm_s_lo}; // @[Cat.scala 30:58]
  wire [51:0] imm_b_hi_hi_hi = io_inst[31] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire  imm_b_hi_hi_lo = io_inst[7]; // @[ImmGen.scala 18:43]
  wire [3:0] imm_b_lo_hi = io_inst[11:8]; // @[ImmGen.scala 18:66]
  wire [63:0] imm_b = {imm_b_hi_hi_hi,imm_b_hi_hi_lo,imm_s_hi_lo,imm_b_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [32:0] imm_u_hi_hi = io_inst[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [18:0] imm_u_hi_lo = io_inst[30:12]; // @[ImmGen.scala 19:43]
  wire [63:0] imm_u = {imm_u_hi_hi,imm_u_hi_lo,12'h0}; // @[Cat.scala 30:58]
  wire [43:0] imm_j_hi_hi_hi = io_inst[31] ? 44'hfffffffffff : 44'h0; // @[Bitwise.scala 72:12]
  wire [7:0] imm_j_hi_hi_lo = io_inst[19:12]; // @[ImmGen.scala 20:43]
  wire  imm_j_hi_lo = io_inst[20]; // @[ImmGen.scala 20:57]
  wire [9:0] imm_j_lo_hi = io_inst[30:21]; // @[ImmGen.scala 20:67]
  wire [63:0] imm_j = {imm_j_hi_hi_hi,imm_j_hi_hi_lo,imm_j_hi_lo,imm_j_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [4:0] imm_csr_lo = io_inst[19:15]; // @[ImmGen.scala 21:38]
  wire [63:0] imm_csr = {59'h0,imm_csr_lo}; // @[Cat.scala 30:58]
  wire [63:0] _io_imm_T_1 = 3'h1 == io_imm_type ? imm_i : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_3 = 3'h2 == io_imm_type ? imm_s : _io_imm_T_1; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_5 = 3'h3 == io_imm_type ? imm_b : _io_imm_T_3; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_7 = 3'h4 == io_imm_type ? imm_u : _io_imm_T_5; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_9 = 3'h5 == io_imm_type ? imm_j : _io_imm_T_7; // @[Mux.scala 80:57]
  assign io_imm = 3'h7 == io_imm_type ? imm_csr : _io_imm_T_9; // @[Mux.scala 80:57]
endmodule
module ALU(
  input  [4:0]  io_alu_type,
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_alu_out
);
  wire [5:0] shamt = io_in2[5:0]; // @[ALU.scala 25:12]
  wire  _T = 5'h1 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_1 = io_in1 + io_in2; // @[ALU.scala 29:30]
  wire  _T_1 = 5'hd == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] alu_out_hi = _alu_out_T_1[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] alu_out_lo = _alu_out_T_1[31:0]; // @[ALU.scala 30:62]
  wire [63:0] _alu_out_T_8 = {alu_out_hi,alu_out_lo}; // @[Cat.scala 30:58]
  wire  _T_2 = 5'h2 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_10 = io_in1 - io_in2; // @[ALU.scala 31:30]
  wire  _T_3 = 5'h11 == io_alu_type; // @[Conditional.scala 37:30]
  wire [32:0] alu_out_hi_1 = _alu_out_T_10[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_1 = _alu_out_T_10[30:0]; // @[ALU.scala 32:74]
  wire [63:0] _alu_out_T_13 = {alu_out_hi_1,alu_out_lo_1}; // @[Cat.scala 30:58]
  wire  _T_4 = 5'h3 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_14 = io_in1; // @[ALU.scala 33:31]
  wire [63:0] _alu_out_T_15 = io_in2; // @[ALU.scala 33:44]
  wire  _T_5 = 5'h4 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_6 = 5'h5 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_18 = io_in1 ^ io_in2; // @[ALU.scala 35:31]
  wire  _T_7 = 5'h6 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_19 = io_in1 | io_in2; // @[ALU.scala 36:31]
  wire  _T_8 = 5'h7 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_20 = io_in1 & io_in2; // @[ALU.scala 37:31]
  wire  _T_9 = 5'h8 == io_alu_type; // @[Conditional.scala 37:30]
  wire [126:0] _GEN_20 = {{63'd0}, io_in1}; // @[ALU.scala 38:31]
  wire [126:0] _alu_out_T_21 = _GEN_20 << shamt; // @[ALU.scala 38:31]
  wire  _T_10 = 5'he == io_alu_type; // @[Conditional.scala 37:30]
  wire [94:0] _GEN_21 = {{31'd0}, io_in1}; // @[ALU.scala 39:29]
  wire [94:0] x_1 = _GEN_21 << shamt[4:0]; // @[ALU.scala 39:29]
  wire [32:0] alu_out_hi_2 = x_1[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_2 = x_1[30:0]; // @[ALU.scala 39:85]
  wire [63:0] _alu_out_T_25 = {alu_out_hi_2,alu_out_lo_2}; // @[Cat.scala 30:58]
  wire  _T_11 = 5'h9 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_26 = io_in1 >> shamt; // @[ALU.scala 40:31]
  wire  _T_12 = 5'hf == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] x_2 = io_in1[31:0] >> shamt[4:0]; // @[ALU.scala 41:42]
  wire [31:0] alu_out_hi_3 = x_2[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _alu_out_T_29 = {alu_out_hi_3,x_2}; // @[Cat.scala 30:58]
  wire  _T_13 = 5'ha == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_32 = $signed(io_in1) >>> shamt; // @[ALU.scala 42:54]
  wire  _T_14 = 5'h10 == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] _x_T_5 = io_in1[31:0]; // @[ALU.scala 43:35]
  wire [31:0] x_3 = $signed(_x_T_5) >>> shamt[4:0]; // @[ALU.scala 43:63]
  wire [32:0] alu_out_hi_4 = x_3[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_4 = x_3[30:0]; // @[ALU.scala 43:98]
  wire [63:0] _alu_out_T_35 = {alu_out_hi_4,alu_out_lo_4}; // @[Cat.scala 30:58]
  wire  _T_15 = 5'hb == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_16 = 5'hc == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_17 = 5'h12 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_18 = 5'h13 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_1 = _T_18 ? io_in2 : 64'h0; // @[Conditional.scala 39:67 ALU.scala 47:23]
  wire [63:0] _GEN_2 = _T_17 ? io_in1 : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 46:23]
  wire [63:0] _GEN_3 = _T_16 ? {{63'd0}, io_in1 >= io_in2} : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 45:23]
  wire [63:0] _GEN_4 = _T_15 ? {{63'd0}, $signed(_alu_out_T_14) >= $signed(_alu_out_T_15)} : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 44:23]
  wire [63:0] _GEN_5 = _T_14 ? _alu_out_T_35 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 43:74]
  wire [63:0] _GEN_6 = _T_13 ? _alu_out_T_32 : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 42:23]
  wire [63:0] _GEN_7 = _T_12 ? _alu_out_T_29 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 41:73]
  wire [63:0] _GEN_8 = _T_11 ? _alu_out_T_26 : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 40:23]
  wire [63:0] _GEN_9 = _T_10 ? _alu_out_T_25 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 39:61]
  wire [63:0] _GEN_10 = _T_9 ? _alu_out_T_21[63:0] : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 38:23]
  wire [63:0] _GEN_11 = _T_8 ? _alu_out_T_20 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 37:23]
  wire [63:0] _GEN_12 = _T_7 ? _alu_out_T_19 : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 36:23]
  wire [63:0] _GEN_13 = _T_6 ? _alu_out_T_18 : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 35:23]
  wire [63:0] _GEN_14 = _T_5 ? {{63'd0}, io_in1 < io_in2} : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 34:23]
  wire [63:0] _GEN_15 = _T_4 ? {{63'd0}, $signed(_alu_out_T_14) < $signed(_alu_out_T_15)} : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 33:23]
  wire [63:0] _GEN_16 = _T_3 ? _alu_out_T_13 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 32:51]
  wire [63:0] _GEN_17 = _T_2 ? _alu_out_T_10 : _GEN_16; // @[Conditional.scala 39:67 ALU.scala 31:23]
  wire [63:0] _GEN_18 = _T_1 ? _alu_out_T_8 : _GEN_17; // @[Conditional.scala 39:67 ALU.scala 30:23]
  assign io_alu_out = _T ? _alu_out_T_1 : _GEN_18; // @[Conditional.scala 40:58 ALU.scala 29:23]
endmodule
module Clint(
  input         clock,
  input         reset,
  input         io_cmp_wen,
  input  [63:0] io_cmp_wdata,
  output        io_time_intrpt,
  input  [63:0] csr_mie,
  input  [63:0] csr_status
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] mtime; // @[Clint.scala 29:26]
  reg [63:0] mtimecmp; // @[Clint.scala 30:26]
  wire [63:0] _mtime_T_1 = mtime + 64'h1; // @[Clint.scala 32:18]
  assign io_time_intrpt = mtime >= mtimecmp & csr_status[3] & csr_mie[7]; // @[Clint.scala 42:62]
  always @(posedge clock) begin
    if (reset) begin // @[Clint.scala 29:26]
      mtime <= 64'h0; // @[Clint.scala 29:26]
    end else begin
      mtime <= _mtime_T_1; // @[Clint.scala 32:9]
    end
    if (reset) begin // @[Clint.scala 30:26]
      mtimecmp <= 64'h0; // @[Clint.scala 30:26]
    end else if (io_cmp_wen) begin // @[Clint.scala 33:18]
      mtimecmp <= io_cmp_wdata; // @[Clint.scala 34:14]
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
  mtime = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  mtimecmp = _RAND_1[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CSR(
  input         clock,
  input         reset,
  input  [31:0] io_pc,
  input  [31:0] io_inst,
  input  [2:0]  io_csr_type,
  input  [63:0] io_in_data,
  input         io_time_intrpt,
  input  [63:0] io_time_intrpt_pc,
  input  [63:0] io_intrpt_mstatus,
  input  [63:0] io_intrpt_mtvec,
  output [63:0] io_out,
  output        io_jmp,
  output [31:0] io_jmp_pc,
  output        io_intrpt,
  output [31:0] io_intrpt_pc,
  output [63:0] io_intrpt_no,
  output        io_rd_wen,
  output [63:0] io_mie,
  output [63:0] io_mstatus,
  output [63:0] io_mepc,
  output [63:0] io_mtvec,
  output [63:0] io_mcause,
  output [63:0] io_mscratch,
  output [63:0] mie_0,
  output [63:0] mstatus_0
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  csr_rw = io_csr_type == 3'h3 | io_csr_type == 3'h4 | io_csr_type == 3'h5; // @[CSR.scala 40:69]
  reg [63:0] mstatus; // @[CSR.scala 45:26]
  reg [63:0] mie; // @[CSR.scala 46:26]
  reg [63:0] mtvec; // @[CSR.scala 47:26]
  reg [63:0] mscratch; // @[CSR.scala 48:26]
  reg [63:0] mepc; // @[CSR.scala 49:26]
  reg [63:0] mcause; // @[CSR.scala 50:26]
  reg [63:0] mcycle; // @[CSR.scala 53:26]
  wire  _T = io_csr_type == 3'h1; // @[CSR.scala 60:21]
  wire [50:0] mstatus_hi_hi_hi = mstatus[63:13]; // @[CSR.scala 63:27]
  wire [2:0] mstatus_hi_lo_hi = mstatus[10:8]; // @[CSR.scala 63:57]
  wire  mstatus_hi_lo_lo = mstatus[3]; // @[CSR.scala 63:72]
  wire [2:0] mstatus_lo_hi_hi = mstatus[6:4]; // @[CSR.scala 63:84]
  wire [2:0] mstatus_lo_lo = mstatus[2:0]; // @[CSR.scala 63:104]
  wire [63:0] _mstatus_T = {mstatus_hi_hi_hi,2'h3,mstatus_hi_lo_hi,mstatus_hi_lo_lo,mstatus_lo_hi_hi,1'h0,mstatus_lo_lo}
    ; // @[Cat.scala 30:58]
  wire [29:0] csr_jmp_pc_hi = mtvec[31:2]; // @[CSR.scala 65:28]
  wire [31:0] _csr_jmp_pc_T = {csr_jmp_pc_hi,2'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = io_csr_type == 3'h1 ? {{32'd0}, io_pc} : mepc; // @[CSR.scala 60:36 CSR.scala 61:10 CSR.scala 49:26]
  wire [63:0] _GEN_1 = io_csr_type == 3'h1 ? 64'hb : mcause; // @[CSR.scala 60:36 CSR.scala 62:12 CSR.scala 50:26]
  wire [63:0] _GEN_2 = io_csr_type == 3'h1 ? _mstatus_T : mstatus; // @[CSR.scala 60:36 CSR.scala 63:13 CSR.scala 45:26]
  wire [31:0] _GEN_4 = io_csr_type == 3'h1 ? _csr_jmp_pc_T : 32'h0; // @[CSR.scala 60:36 CSR.scala 65:16]
  wire  mstatus_lo_hi_lo = mstatus[7]; // @[CSR.scala 70:92]
  wire [63:0] _mstatus_T_1 = {mstatus_hi_hi_hi,2'h0,mstatus_hi_lo_hi,1'h1,mstatus_lo_hi_hi,mstatus_lo_hi_lo,
    mstatus_lo_lo}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_5 = io_csr_type == 3'h2 ? _mstatus_T_1 : _GEN_2; // @[CSR.scala 69:35 CSR.scala 70:13]
  wire [50:0] mstatus_hi_hi_hi_2 = io_intrpt_mstatus[63:13]; // @[CSR.scala 88:41]
  wire [2:0] mstatus_hi_lo_hi_2 = io_intrpt_mstatus[10:8]; // @[CSR.scala 88:81]
  wire  mstatus_hi_lo_lo_1 = io_intrpt_mstatus[3]; // @[CSR.scala 88:106]
  wire [2:0] mstatus_lo_hi_hi_2 = io_intrpt_mstatus[6:4]; // @[CSR.scala 88:128]
  wire [2:0] mstatus_lo_lo_2 = io_intrpt_mstatus[2:0]; // @[CSR.scala 88:158]
  wire [63:0] _mstatus_T_2 = {mstatus_hi_hi_hi_2,2'h3,mstatus_hi_lo_hi_2,mstatus_hi_lo_lo_1,mstatus_lo_hi_hi_2,1'h0,
    mstatus_lo_lo_2}; // @[Cat.scala 30:58]
  wire [29:0] io_intrpt_pc_hi = io_intrpt_mtvec[31:2]; // @[CSR.scala 91:44]
  wire [31:0] _io_intrpt_pc_T = {io_intrpt_pc_hi,2'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_8 = io_time_intrpt ? io_time_intrpt_pc : _GEN_0; // @[CSR.scala 84:23 CSR.scala 86:14]
  wire [63:0] _GEN_9 = io_time_intrpt ? 64'h8000000000000007 : _GEN_1; // @[CSR.scala 84:23 CSR.scala 87:16]
  wire [63:0] _GEN_10 = io_time_intrpt ? _mstatus_T_2 : _GEN_5; // @[CSR.scala 84:23 CSR.scala 88:17]
  wire [2:0] _GEN_12 = io_time_intrpt ? 3'h7 : 3'h0; // @[CSR.scala 84:23 CSR.scala 90:22 CSR.scala 80:14]
  wire [63:0] _mcycle_T_1 = mcycle + 64'h1; // @[CSR.scala 96:20]
  wire [11:0] addr = io_inst[31:20]; // @[CSR.scala 101:22]
  wire  wen = csr_rw & io_in_data != 64'h0; // @[CSR.scala 105:22]
  wire [63:0] _rdata_T_1 = 12'h300 == addr ? mstatus : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_3 = 12'h342 == addr ? mcause : _rdata_T_1; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_5 = 12'h304 == addr ? mie : _rdata_T_3; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_7 = 12'h305 == addr ? mtvec : _rdata_T_5; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_9 = 12'h340 == addr ? mscratch : _rdata_T_7; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_11 = 12'h341 == addr ? mepc : _rdata_T_9; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_13 = 12'h344 == addr ? 64'h0 : _rdata_T_11; // @[Mux.scala 80:57]
  wire [63:0] _rdata_T_15 = 12'hb00 == addr ? mcycle : _rdata_T_13; // @[Mux.scala 80:57]
  wire [63:0] rdata = 12'hb02 == addr ? 64'h0 : _rdata_T_15; // @[Mux.scala 80:57]
  wire [63:0] _wdata_T = rdata | io_in_data; // @[CSR.scala 109:22]
  wire [63:0] _wdata_T_1 = ~io_in_data; // @[CSR.scala 110:24]
  wire [63:0] _wdata_T_2 = rdata & _wdata_T_1; // @[CSR.scala 110:22]
  wire [63:0] _wdata_T_4 = 3'h3 == io_csr_type ? io_in_data : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _wdata_T_6 = 3'h4 == io_csr_type ? _wdata_T : _wdata_T_4; // @[Mux.scala 80:57]
  wire [63:0] wdata = 3'h5 == io_csr_type ? _wdata_T_2 : _wdata_T_6; // @[Mux.scala 80:57]
  wire  mstatus_hi_3 = wdata[16] & wdata[15] | wdata[14] & wdata[13]; // @[CSR.scala 141:46]
  wire [62:0] mstatus_lo_3 = wdata[62:0]; // @[CSR.scala 141:79]
  wire [63:0] _mstatus_T_9 = {mstatus_hi_3,mstatus_lo_3}; // @[Cat.scala 30:58]
  assign io_out = 12'hb02 == addr ? 64'h0 : _rdata_T_15; // @[Mux.scala 80:57]
  assign io_jmp = io_csr_type == 3'h2 | _T; // @[CSR.scala 69:35 CSR.scala 71:13]
  assign io_jmp_pc = io_csr_type == 3'h2 ? mepc[31:0] : _GEN_4; // @[CSR.scala 69:35 CSR.scala 72:16]
  assign io_intrpt = io_time_intrpt; // @[CSR.scala 84:23 CSR.scala 89:19 CSR.scala 79:11]
  assign io_intrpt_pc = io_time_intrpt ? _io_intrpt_pc_T : 32'h0; // @[CSR.scala 84:23 CSR.scala 91:22 CSR.scala 81:14]
  assign io_intrpt_no = {{61'd0}, _GEN_12}; // @[CSR.scala 84:23 CSR.scala 90:22 CSR.scala 80:14]
  assign io_rd_wen = io_csr_type == 3'h3 | io_csr_type == 3'h4 | io_csr_type == 3'h5; // @[CSR.scala 40:69]
  assign io_mie = mie; // @[CSR.scala 162:16]
  assign io_mstatus = mstatus; // @[CSR.scala 163:16]
  assign io_mepc = mepc; // @[CSR.scala 164:16]
  assign io_mtvec = mtvec; // @[CSR.scala 165:16]
  assign io_mcause = mcause; // @[CSR.scala 166:16]
  assign io_mscratch = mscratch; // @[CSR.scala 167:16]
  assign mie_0 = mie;
  assign mstatus_0 = mstatus;
  always @(posedge clock) begin
    if (reset) begin // @[CSR.scala 45:26]
      mstatus <= 64'h1800; // @[CSR.scala 45:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h300) begin // @[CSR.scala 140:37]
        mstatus <= _mstatus_T_9; // @[CSR.scala 141:15]
      end else begin
        mstatus <= _GEN_10;
      end
    end else begin
      mstatus <= _GEN_10;
    end
    if (reset) begin // @[CSR.scala 46:26]
      mie <= 64'h0; // @[CSR.scala 46:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h304) begin // @[CSR.scala 143:33]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mie <= _wdata_T_2;
        end else begin
          mie <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 47:26]
      mtvec <= 64'h0; // @[CSR.scala 47:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h305) begin // @[CSR.scala 131:35]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mtvec <= _wdata_T_2;
        end else begin
          mtvec <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 48:26]
      mscratch <= 64'h0; // @[CSR.scala 48:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h340) begin // @[CSR.scala 146:38]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mscratch <= _wdata_T_2;
        end else begin
          mscratch <= _wdata_T_6;
        end
      end
    end
    if (reset) begin // @[CSR.scala 49:26]
      mepc <= 64'h0; // @[CSR.scala 49:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h341) begin // @[CSR.scala 134:34]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mepc <= _wdata_T_2;
        end else begin
          mepc <= _wdata_T_6;
        end
      end else begin
        mepc <= _GEN_8;
      end
    end else begin
      mepc <= _GEN_8;
    end
    if (reset) begin // @[CSR.scala 50:26]
      mcause <= 64'h0; // @[CSR.scala 50:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'h342) begin // @[CSR.scala 137:36]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mcause <= _wdata_T_2;
        end else begin
          mcause <= _wdata_T_6;
        end
      end else begin
        mcause <= _GEN_9;
      end
    end else begin
      mcause <= _GEN_9;
    end
    if (reset) begin // @[CSR.scala 53:26]
      mcycle <= 64'h0; // @[CSR.scala 53:26]
    end else if (wen) begin // @[CSR.scala 127:13]
      if (addr == 12'hb00) begin // @[CSR.scala 128:36]
        if (3'h5 == io_csr_type) begin // @[Mux.scala 80:57]
          mcycle <= _wdata_T_2;
        end else begin
          mcycle <= _wdata_T_6;
        end
      end else begin
        mcycle <= _mcycle_T_1; // @[CSR.scala 96:10]
      end
    end else begin
      mcycle <= _mcycle_T_1; // @[CSR.scala 96:10]
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
  mstatus = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  mie = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  mtvec = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  mscratch = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  mepc = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  mcause = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  mcycle = _RAND_6[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Nxt_PC(
  input  [31:0] io_pc,
  input  [63:0] io_imm,
  input  [63:0] io_rs1_data,
  input  [63:0] io_alu_out,
  input         io_csr_jmp,
  input         io_intrpt_jmp,
  input  [2:0]  io_op2_type,
  input  [2:0]  io_imm_type,
  input  [4:0]  io_alu_type,
  input  [63:0] io_csr_jmp_pc,
  input  [63:0] io_intrpt_jmp_pc,
  output [31:0] io_pc_nxt,
  output        io_pc_jmp
);
  wire  _T = io_imm_type == 3'h3; // @[NXT_PC.scala 27:24]
  wire [63:0] _GEN_14 = {{32'd0}, io_pc}; // @[NXT_PC.scala 29:22]
  wire [63:0] _io_pc_nxt_T_1 = _GEN_14 + io_imm; // @[NXT_PC.scala 29:22]
  wire  _T_10 = io_alu_out != 64'h0; // @[NXT_PC.scala 30:107]
  wire [63:0] x = io_rs1_data + io_imm; // @[NXT_PC.scala 42:23]
  wire [62:0] io_pc_nxt_hi = x[63:1]; // @[NXT_PC.scala 43:21]
  wire [63:0] _io_pc_nxt_T_8 = {io_pc_nxt_hi,1'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = io_csr_jmp ? io_csr_jmp_pc : 64'h0; // @[NXT_PC.scala 44:23 NXT_PC.scala 45:13 NXT_PC.scala 50:11]
  wire [63:0] _GEN_2 = io_op2_type == 3'h4 & io_imm_type == 3'h1 ? _io_pc_nxt_T_8 : _GEN_0; // @[NXT_PC.scala 40:59 NXT_PC.scala 43:13]
  wire  _GEN_3 = io_op2_type == 3'h4 & io_imm_type == 3'h1 | io_csr_jmp; // @[NXT_PC.scala 40:59 NXT_PC.scala 23:11]
  wire [63:0] _GEN_4 = io_imm_type == 3'h5 ? _io_pc_nxt_T_1 : _GEN_2; // @[NXT_PC.scala 37:34 NXT_PC.scala 39:13]
  wire  _GEN_5 = io_imm_type == 3'h5 | _GEN_3; // @[NXT_PC.scala 37:34 NXT_PC.scala 23:11]
  wire [63:0] _GEN_6 = _T & io_alu_type != 5'h2 & _T_10 ? _io_pc_nxt_T_1 : _GEN_4; // @[NXT_PC.scala 34:83 NXT_PC.scala 36:13]
  wire  _GEN_7 = _T & io_alu_type != 5'h2 & _T_10 | _GEN_5; // @[NXT_PC.scala 34:83 NXT_PC.scala 23:11]
  wire [63:0] _GEN_8 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 ? _io_pc_nxt_T_1 : _GEN_6; // @[NXT_PC.scala 30:115 NXT_PC.scala 32:12]
  wire  _GEN_9 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 | _GEN_7; // @[NXT_PC.scala 30:115 NXT_PC.scala 23:11]
  wire [63:0] _GEN_10 = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 ? _io_pc_nxt_T_1 : _GEN_8; // @[NXT_PC.scala 27:83 NXT_PC.scala 29:13]
  wire  _GEN_11 = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 | _GEN_9; // @[NXT_PC.scala 27:83 NXT_PC.scala 23:11]
  wire [63:0] _GEN_12 = io_intrpt_jmp ? io_intrpt_jmp_pc : _GEN_10; // @[NXT_PC.scala 25:20 NXT_PC.scala 26:13]
  assign io_pc_nxt = _GEN_12[31:0];
  assign io_pc_jmp = io_intrpt_jmp | _GEN_11; // @[NXT_PC.scala 25:20 NXT_PC.scala 23:11]
endmodule
module LSU(
  input  [2:0]  io_mem_rtype,
  input  [2:0]  io_wb_type,
  input  [63:0] io_dmem_addr,
  input  [63:0] io_dmem_rdata,
  input  [63:0] io_rs2_data,
  output [63:0] io_mem_rdata,
  output [63:0] io_dmem_wmask,
  output [63:0] io_dmem_wdata
);
  wire  _T_3 = 3'h1 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_1 = io_dmem_addr[2:0] == 3'h0; // @[LSU.scala 49:34]
  wire [55:0] mem_rdata_hi = io_dmem_rdata[7] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo = io_dmem_rdata[7:0]; // @[LSU.scala 49:91]
  wire [63:0] _mem_rdata_T_4 = {mem_rdata_hi,mem_rdata_lo}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_6 = io_dmem_addr[2:0] == 3'h1; // @[LSU.scala 50:34]
  wire [55:0] mem_rdata_hi_1 = io_dmem_rdata[15] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_1 = io_dmem_rdata[15:8]; // @[LSU.scala 50:91]
  wire [63:0] _mem_rdata_T_9 = {mem_rdata_hi_1,mem_rdata_lo_1}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_11 = io_dmem_addr[2:0] == 3'h2; // @[LSU.scala 51:34]
  wire [55:0] mem_rdata_hi_2 = io_dmem_rdata[23] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_2 = io_dmem_rdata[23:16]; // @[LSU.scala 51:91]
  wire [63:0] _mem_rdata_T_14 = {mem_rdata_hi_2,mem_rdata_lo_2}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_16 = io_dmem_addr[2:0] == 3'h3; // @[LSU.scala 52:34]
  wire [55:0] mem_rdata_hi_3 = io_dmem_rdata[31] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_3 = io_dmem_rdata[31:24]; // @[LSU.scala 52:91]
  wire [63:0] _mem_rdata_T_19 = {mem_rdata_hi_3,mem_rdata_lo_3}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_21 = io_dmem_addr[2:0] == 3'h4; // @[LSU.scala 53:34]
  wire [55:0] mem_rdata_hi_4 = io_dmem_rdata[39] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_4 = io_dmem_rdata[39:32]; // @[LSU.scala 53:91]
  wire [63:0] _mem_rdata_T_24 = {mem_rdata_hi_4,mem_rdata_lo_4}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_26 = io_dmem_addr[2:0] == 3'h5; // @[LSU.scala 54:34]
  wire [55:0] mem_rdata_hi_5 = io_dmem_rdata[47] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_5 = io_dmem_rdata[47:40]; // @[LSU.scala 54:91]
  wire [63:0] _mem_rdata_T_29 = {mem_rdata_hi_5,mem_rdata_lo_5}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_31 = io_dmem_addr[2:0] == 3'h6; // @[LSU.scala 55:34]
  wire [55:0] mem_rdata_hi_6 = io_dmem_rdata[55] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_6 = io_dmem_rdata[55:48]; // @[LSU.scala 55:91]
  wire [63:0] _mem_rdata_T_34 = {mem_rdata_hi_6,mem_rdata_lo_6}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_36 = io_dmem_addr[2:0] == 3'h7; // @[LSU.scala 56:34]
  wire [55:0] mem_rdata_hi_7 = io_dmem_rdata[63] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mem_rdata_lo_7 = io_dmem_rdata[63:56]; // @[LSU.scala 56:91]
  wire [63:0] _mem_rdata_T_39 = {mem_rdata_hi_7,mem_rdata_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_40 = _mem_rdata_T_36 ? _mem_rdata_T_39 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_41 = _mem_rdata_T_31 ? _mem_rdata_T_34 : _mem_rdata_T_40; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_42 = _mem_rdata_T_26 ? _mem_rdata_T_29 : _mem_rdata_T_41; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_43 = _mem_rdata_T_21 ? _mem_rdata_T_24 : _mem_rdata_T_42; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_44 = _mem_rdata_T_16 ? _mem_rdata_T_19 : _mem_rdata_T_43; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_45 = _mem_rdata_T_11 ? _mem_rdata_T_14 : _mem_rdata_T_44; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_46 = _mem_rdata_T_6 ? _mem_rdata_T_9 : _mem_rdata_T_45; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_47 = _mem_rdata_T_1 ? _mem_rdata_T_4 : _mem_rdata_T_46; // @[Mux.scala 98:16]
  wire  _T_4 = 3'h2 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_49 = io_dmem_addr[2:1] == 2'h0; // @[LSU.scala 63:34]
  wire [47:0] mem_rdata_hi_8 = io_dmem_rdata[15] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_8 = io_dmem_rdata[15:0]; // @[LSU.scala 63:90]
  wire [63:0] _mem_rdata_T_52 = {mem_rdata_hi_8,mem_rdata_lo_8}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_54 = io_dmem_addr[2:1] == 2'h1; // @[LSU.scala 64:34]
  wire [47:0] mem_rdata_hi_9 = io_dmem_rdata[31] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_9 = io_dmem_rdata[31:16]; // @[LSU.scala 64:90]
  wire [63:0] _mem_rdata_T_57 = {mem_rdata_hi_9,mem_rdata_lo_9}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_59 = io_dmem_addr[2:1] == 2'h2; // @[LSU.scala 65:34]
  wire [47:0] mem_rdata_hi_10 = io_dmem_rdata[47] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_10 = io_dmem_rdata[47:32]; // @[LSU.scala 65:90]
  wire [63:0] _mem_rdata_T_62 = {mem_rdata_hi_10,mem_rdata_lo_10}; // @[Cat.scala 30:58]
  wire  _mem_rdata_T_64 = io_dmem_addr[2:1] == 2'h3; // @[LSU.scala 66:34]
  wire [47:0] mem_rdata_hi_11 = io_dmem_rdata[63] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mem_rdata_lo_11 = io_dmem_rdata[63:48]; // @[LSU.scala 66:90]
  wire [63:0] _mem_rdata_T_67 = {mem_rdata_hi_11,mem_rdata_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_68 = _mem_rdata_T_64 ? _mem_rdata_T_67 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_69 = _mem_rdata_T_59 ? _mem_rdata_T_62 : _mem_rdata_T_68; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_70 = _mem_rdata_T_54 ? _mem_rdata_T_57 : _mem_rdata_T_69; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_71 = _mem_rdata_T_49 ? _mem_rdata_T_52 : _mem_rdata_T_70; // @[Mux.scala 98:16]
  wire  _T_5 = 3'h3 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _mem_rdata_T_73 = ~io_dmem_addr[2]; // @[LSU.scala 75:32]
  wire [31:0] mem_rdata_hi_12 = io_dmem_rdata[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] mem_rdata_lo_12 = io_dmem_rdata[31:0]; // @[LSU.scala 75:86]
  wire [63:0] _mem_rdata_T_76 = {mem_rdata_hi_12,mem_rdata_lo_12}; // @[Cat.scala 30:58]
  wire [31:0] mem_rdata_hi_13 = io_dmem_rdata[63] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] mem_rdata_lo_13 = io_dmem_rdata[63:32]; // @[LSU.scala 76:86]
  wire [63:0] _mem_rdata_T_81 = {mem_rdata_hi_13,mem_rdata_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_82 = io_dmem_addr[2] ? _mem_rdata_T_81 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_83 = _mem_rdata_T_73 ? _mem_rdata_T_76 : _mem_rdata_T_82; // @[Mux.scala 98:16]
  wire  _T_6 = 3'h4 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_7 = 3'h5 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_86 = {56'h0,mem_rdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_89 = {56'h0,mem_rdata_lo_1}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_92 = {56'h0,mem_rdata_lo_2}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_95 = {56'h0,mem_rdata_lo_3}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_98 = {56'h0,mem_rdata_lo_4}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_101 = {56'h0,mem_rdata_lo_5}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_104 = {56'h0,mem_rdata_lo_6}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_107 = {56'h0,mem_rdata_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_108 = _mem_rdata_T_36 ? _mem_rdata_T_107 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_109 = _mem_rdata_T_31 ? _mem_rdata_T_104 : _mem_rdata_T_108; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_110 = _mem_rdata_T_26 ? _mem_rdata_T_101 : _mem_rdata_T_109; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_111 = _mem_rdata_T_21 ? _mem_rdata_T_98 : _mem_rdata_T_110; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_112 = _mem_rdata_T_16 ? _mem_rdata_T_95 : _mem_rdata_T_111; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_113 = _mem_rdata_T_11 ? _mem_rdata_T_92 : _mem_rdata_T_112; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_114 = _mem_rdata_T_6 ? _mem_rdata_T_89 : _mem_rdata_T_113; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_115 = _mem_rdata_T_1 ? _mem_rdata_T_86 : _mem_rdata_T_114; // @[Mux.scala 98:16]
  wire  _T_8 = 3'h6 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_118 = {48'h0,mem_rdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_121 = {48'h0,mem_rdata_lo_9}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_124 = {48'h0,mem_rdata_lo_10}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_127 = {48'h0,mem_rdata_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_128 = _mem_rdata_T_64 ? _mem_rdata_T_127 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_129 = _mem_rdata_T_59 ? _mem_rdata_T_124 : _mem_rdata_T_128; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_130 = _mem_rdata_T_54 ? _mem_rdata_T_121 : _mem_rdata_T_129; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_131 = _mem_rdata_T_49 ? _mem_rdata_T_118 : _mem_rdata_T_130; // @[Mux.scala 98:16]
  wire  _T_9 = 3'h7 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _mem_rdata_T_134 = {32'h0,mem_rdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_137 = {32'h0,mem_rdata_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _mem_rdata_T_138 = io_dmem_addr[2] ? _mem_rdata_T_137 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _mem_rdata_T_139 = _mem_rdata_T_73 ? _mem_rdata_T_134 : _mem_rdata_T_138; // @[Mux.scala 98:16]
  wire [63:0] _GEN_0 = _T_9 ? _mem_rdata_T_139 : 64'h0; // @[Conditional.scala 39:67 LSU.scala 106:10 LSU.scala 36:15]
  wire [63:0] _GEN_1 = _T_8 ? _mem_rdata_T_131 : _GEN_0; // @[Conditional.scala 39:67 LSU.scala 97:10]
  wire [63:0] _GEN_2 = _T_7 ? _mem_rdata_T_115 : _GEN_1; // @[Conditional.scala 39:67 LSU.scala 84:10]
  wire [63:0] _GEN_3 = _T_6 ? io_dmem_rdata : _GEN_2; // @[Conditional.scala 39:67 LSU.scala 80:22]
  wire [63:0] _GEN_4 = _T_5 ? _mem_rdata_T_83 : _GEN_3; // @[Conditional.scala 39:67 LSU.scala 74:10]
  wire [63:0] _GEN_5 = _T_4 ? _mem_rdata_T_71 : _GEN_4; // @[Conditional.scala 39:67 LSU.scala 62:10]
  wire [63:0] _GEN_6 = _T_3 ? _mem_rdata_T_47 : _GEN_5; // @[Conditional.scala 40:58 LSU.scala 48:10]
  wire [7:0] dmem_wdata_lo = io_rs2_data[7:0]; // @[LSU.scala 119:40]
  wire [63:0] _dmem_wdata_T = {56'h0,dmem_wdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_1 = {48'h0,dmem_wdata_lo,8'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_2 = {40'h0,dmem_wdata_lo,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_3 = {32'h0,dmem_wdata_lo,24'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_4 = {24'h0,dmem_wdata_lo,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_5 = {16'h0,dmem_wdata_lo,40'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_6 = {8'h0,dmem_wdata_lo,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_7 = {dmem_wdata_lo,56'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_8 = _mem_rdata_T_36 ? 64'hff00000000000000 : 64'h0; // @[LSU.scala 138:38 LSU.scala 139:12 LSU.scala 35:13]
  wire [63:0] _GEN_9 = _mem_rdata_T_36 ? _dmem_wdata_T_7 : 64'h0; // @[LSU.scala 138:38 LSU.scala 140:11 LSU.scala 34:13]
  wire [63:0] _GEN_10 = _mem_rdata_T_31 ? 64'hff000000000000 : _GEN_8; // @[LSU.scala 135:38 LSU.scala 136:12]
  wire [63:0] _GEN_11 = _mem_rdata_T_31 ? _dmem_wdata_T_6 : _GEN_9; // @[LSU.scala 135:38 LSU.scala 137:11]
  wire [63:0] _GEN_12 = _mem_rdata_T_26 ? 64'hff0000000000 : _GEN_10; // @[LSU.scala 132:38 LSU.scala 133:12]
  wire [63:0] _GEN_13 = _mem_rdata_T_26 ? _dmem_wdata_T_5 : _GEN_11; // @[LSU.scala 132:38 LSU.scala 134:11]
  wire [63:0] _GEN_14 = _mem_rdata_T_21 ? 64'hff00000000 : _GEN_12; // @[LSU.scala 129:38 LSU.scala 130:12]
  wire [63:0] _GEN_15 = _mem_rdata_T_21 ? _dmem_wdata_T_4 : _GEN_13; // @[LSU.scala 129:38 LSU.scala 131:11]
  wire [63:0] _GEN_16 = _mem_rdata_T_16 ? 64'hff000000 : _GEN_14; // @[LSU.scala 126:38 LSU.scala 127:12]
  wire [63:0] _GEN_17 = _mem_rdata_T_16 ? _dmem_wdata_T_3 : _GEN_15; // @[LSU.scala 126:38 LSU.scala 128:11]
  wire [63:0] _GEN_18 = _mem_rdata_T_11 ? 64'hff0000 : _GEN_16; // @[LSU.scala 123:38 LSU.scala 124:12]
  wire [63:0] _GEN_19 = _mem_rdata_T_11 ? _dmem_wdata_T_2 : _GEN_17; // @[LSU.scala 123:38 LSU.scala 125:11]
  wire [63:0] _GEN_20 = _mem_rdata_T_6 ? 64'hff00 : _GEN_18; // @[LSU.scala 120:38 LSU.scala 121:12]
  wire [63:0] _GEN_21 = _mem_rdata_T_6 ? _dmem_wdata_T_1 : _GEN_19; // @[LSU.scala 120:38 LSU.scala 122:11]
  wire [63:0] _GEN_22 = _mem_rdata_T_1 ? 64'hff : _GEN_20; // @[LSU.scala 117:32 LSU.scala 118:12]
  wire [63:0] _GEN_23 = _mem_rdata_T_1 ? _dmem_wdata_T : _GEN_21; // @[LSU.scala 117:32 LSU.scala 119:11]
  wire [15:0] dmem_wdata_lo_8 = io_rs2_data[15:0]; // @[LSU.scala 147:40]
  wire [63:0] _dmem_wdata_T_8 = {48'h0,dmem_wdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_9 = {32'h0,dmem_wdata_lo_8,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_10 = {16'h0,dmem_wdata_lo_8,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_11 = {dmem_wdata_lo_8,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_24 = _mem_rdata_T_64 ? 64'hffff000000000000 : 64'h0; // @[LSU.scala 154:37 LSU.scala 155:12 LSU.scala 35:13]
  wire [63:0] _GEN_25 = _mem_rdata_T_64 ? _dmem_wdata_T_11 : 64'h0; // @[LSU.scala 154:37 LSU.scala 156:11 LSU.scala 34:13]
  wire [63:0] _GEN_26 = _mem_rdata_T_59 ? 64'hffff00000000 : _GEN_24; // @[LSU.scala 151:37 LSU.scala 152:12]
  wire [63:0] _GEN_27 = _mem_rdata_T_59 ? _dmem_wdata_T_10 : _GEN_25; // @[LSU.scala 151:37 LSU.scala 153:11]
  wire [63:0] _GEN_28 = _mem_rdata_T_54 ? 64'hffff0000 : _GEN_26; // @[LSU.scala 148:37 LSU.scala 149:12]
  wire [63:0] _GEN_29 = _mem_rdata_T_54 ? _dmem_wdata_T_9 : _GEN_27; // @[LSU.scala 148:37 LSU.scala 150:11]
  wire [63:0] _GEN_30 = _mem_rdata_T_49 ? 64'hffff : _GEN_28; // @[LSU.scala 145:31 LSU.scala 146:12]
  wire [63:0] _GEN_31 = _mem_rdata_T_49 ? _dmem_wdata_T_8 : _GEN_29; // @[LSU.scala 145:31 LSU.scala 147:11]
  wire [31:0] dmem_wdata_lo_12 = io_rs2_data[31:0]; // @[LSU.scala 165:40]
  wire [63:0] _dmem_wdata_T_12 = {32'h0,dmem_wdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_13 = {dmem_wdata_lo_12,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_32 = io_dmem_addr[2] ? 64'hffffffff00000000 : 64'h0; // @[LSU.scala 166:34 LSU.scala 167:12 LSU.scala 35:13]
  wire [63:0] _GEN_33 = io_dmem_addr[2] ? _dmem_wdata_T_13 : 64'h0; // @[LSU.scala 166:34 LSU.scala 168:11 LSU.scala 34:13]
  wire [63:0] _GEN_34 = _mem_rdata_T_73 ? 64'hffffffff : _GEN_32; // @[LSU.scala 163:28 LSU.scala 164:12]
  wire [63:0] _GEN_35 = _mem_rdata_T_73 ? _dmem_wdata_T_12 : _GEN_33; // @[LSU.scala 163:28 LSU.scala 165:11]
  wire [63:0] _GEN_36 = io_wb_type == 3'h5 ? 64'hffffffffffffffff : 64'h0; // @[LSU.scala 172:36 LSU.scala 174:12 LSU.scala 35:13]
  wire [63:0] _GEN_37 = io_wb_type == 3'h5 ? io_rs2_data : 64'h0; // @[LSU.scala 172:36 LSU.scala 175:11 LSU.scala 34:13]
  wire [63:0] _GEN_38 = io_wb_type == 3'h4 ? _GEN_34 : _GEN_36; // @[LSU.scala 160:36]
  wire [63:0] _GEN_39 = io_wb_type == 3'h4 ? _GEN_35 : _GEN_37; // @[LSU.scala 160:36]
  wire [63:0] _GEN_40 = io_wb_type == 3'h3 ? _GEN_30 : _GEN_38; // @[LSU.scala 143:36]
  wire [63:0] _GEN_41 = io_wb_type == 3'h3 ? _GEN_31 : _GEN_39; // @[LSU.scala 143:36]
  assign io_mem_rdata = io_wb_type == 3'h1 & io_mem_rtype != 3'h0 ? _GEN_6 : 64'h0; // @[LSU.scala 41:54 LSU.scala 36:15]
  assign io_dmem_wmask = io_wb_type == 3'h2 ? _GEN_22 : _GEN_40; // @[LSU.scala 115:30]
  assign io_dmem_wdata = io_wb_type == 3'h2 ? _GEN_23 : _GEN_41; // @[LSU.scala 115:30]
endmodule
module Core(
  input         clock,
  input         reset,
  output [63:0] io_imem_addr,
  input  [63:0] io_imem_rdata,
  output        io_dmem_en,
  output [63:0] io_dmem_addr,
  input  [63:0] io_dmem_rdata,
  output [63:0] io_dmem_wdata,
  output [63:0] io_dmem_wmask,
  output        io_dmem_wen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [63:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [31:0] _RAND_80;
`endif // RANDOMIZE_REG_INIT
  wire  regfile_clock; // @[Core.scala 66:21]
  wire  regfile_reset; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rs1_addr; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rs2_addr; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rs1_data; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rs2_data; // @[Core.scala 66:21]
  wire [4:0] regfile_io_rd_addr; // @[Core.scala 66:21]
  wire [63:0] regfile_io_rd_data; // @[Core.scala 66:21]
  wire  regfile_io_rd_en; // @[Core.scala 66:21]
  wire [63:0] regfile_rf_10; // @[Core.scala 66:21]
  wire [31:0] decode_io_inst; // @[Core.scala 70:20]
  wire [4:0] decode_io_alu_type; // @[Core.scala 70:20]
  wire [2:0] decode_io_op1_type; // @[Core.scala 70:20]
  wire [2:0] decode_io_op2_type; // @[Core.scala 70:20]
  wire [2:0] decode_io_imm_type; // @[Core.scala 70:20]
  wire [2:0] decode_io_mem_rtype; // @[Core.scala 70:20]
  wire [2:0] decode_io_wb_type; // @[Core.scala 70:20]
  wire [2:0] decode_io_csr_type; // @[Core.scala 70:20]
  wire [2:0] imm_gen_io_imm_type; // @[Core.scala 73:21]
  wire [31:0] imm_gen_io_inst; // @[Core.scala 73:21]
  wire [63:0] imm_gen_io_imm; // @[Core.scala 73:21]
  wire [4:0] alu_io_alu_type; // @[Core.scala 195:17]
  wire [63:0] alu_io_in1; // @[Core.scala 195:17]
  wire [63:0] alu_io_in2; // @[Core.scala 195:17]
  wire [63:0] alu_io_alu_out; // @[Core.scala 195:17]
  wire  clint_clock; // @[Core.scala 211:19]
  wire  clint_reset; // @[Core.scala 211:19]
  wire  clint_io_cmp_wen; // @[Core.scala 211:19]
  wire [63:0] clint_io_cmp_wdata; // @[Core.scala 211:19]
  wire  clint_io_time_intrpt; // @[Core.scala 211:19]
  wire [63:0] clint_csr_mie; // @[Core.scala 211:19]
  wire [63:0] clint_csr_status; // @[Core.scala 211:19]
  wire  csr_clock; // @[Core.scala 218:18]
  wire  csr_reset; // @[Core.scala 218:18]
  wire [31:0] csr_io_pc; // @[Core.scala 218:18]
  wire [31:0] csr_io_inst; // @[Core.scala 218:18]
  wire [2:0] csr_io_csr_type; // @[Core.scala 218:18]
  wire [63:0] csr_io_in_data; // @[Core.scala 218:18]
  wire  csr_io_time_intrpt; // @[Core.scala 218:18]
  wire [63:0] csr_io_time_intrpt_pc; // @[Core.scala 218:18]
  wire [63:0] csr_io_intrpt_mstatus; // @[Core.scala 218:18]
  wire [63:0] csr_io_intrpt_mtvec; // @[Core.scala 218:18]
  wire [63:0] csr_io_out; // @[Core.scala 218:18]
  wire  csr_io_jmp; // @[Core.scala 218:18]
  wire [31:0] csr_io_jmp_pc; // @[Core.scala 218:18]
  wire  csr_io_intrpt; // @[Core.scala 218:18]
  wire [31:0] csr_io_intrpt_pc; // @[Core.scala 218:18]
  wire [63:0] csr_io_intrpt_no; // @[Core.scala 218:18]
  wire  csr_io_rd_wen; // @[Core.scala 218:18]
  wire [63:0] csr_io_mie; // @[Core.scala 218:18]
  wire [63:0] csr_io_mstatus; // @[Core.scala 218:18]
  wire [63:0] csr_io_mepc; // @[Core.scala 218:18]
  wire [63:0] csr_io_mtvec; // @[Core.scala 218:18]
  wire [63:0] csr_io_mcause; // @[Core.scala 218:18]
  wire [63:0] csr_io_mscratch; // @[Core.scala 218:18]
  wire [63:0] csr_mie_0; // @[Core.scala 218:18]
  wire [63:0] csr_mstatus_0; // @[Core.scala 218:18]
  wire [31:0] nxt_pc_io_pc; // @[Core.scala 229:20]
  wire [63:0] nxt_pc_io_imm; // @[Core.scala 229:20]
  wire [63:0] nxt_pc_io_rs1_data; // @[Core.scala 229:20]
  wire [63:0] nxt_pc_io_alu_out; // @[Core.scala 229:20]
  wire  nxt_pc_io_csr_jmp; // @[Core.scala 229:20]
  wire  nxt_pc_io_intrpt_jmp; // @[Core.scala 229:20]
  wire [2:0] nxt_pc_io_op2_type; // @[Core.scala 229:20]
  wire [2:0] nxt_pc_io_imm_type; // @[Core.scala 229:20]
  wire [4:0] nxt_pc_io_alu_type; // @[Core.scala 229:20]
  wire [63:0] nxt_pc_io_csr_jmp_pc; // @[Core.scala 229:20]
  wire [63:0] nxt_pc_io_intrpt_jmp_pc; // @[Core.scala 229:20]
  wire [31:0] nxt_pc_io_pc_nxt; // @[Core.scala 229:20]
  wire  nxt_pc_io_pc_jmp; // @[Core.scala 229:20]
  wire [2:0] lsu_io_mem_rtype; // @[Core.scala 327:17]
  wire [2:0] lsu_io_wb_type; // @[Core.scala 327:17]
  wire [63:0] lsu_io_dmem_addr; // @[Core.scala 327:17]
  wire [63:0] lsu_io_dmem_rdata; // @[Core.scala 327:17]
  wire [63:0] lsu_io_rs2_data; // @[Core.scala 327:17]
  wire [63:0] lsu_io_mem_rdata; // @[Core.scala 327:17]
  wire [63:0] lsu_io_dmem_wmask; // @[Core.scala 327:17]
  wire [63:0] lsu_io_dmem_wdata; // @[Core.scala 327:17]
  wire  dt_ic_clock; // @[Core.scala 423:19]
  wire [7:0] dt_ic_coreid; // @[Core.scala 423:19]
  wire [7:0] dt_ic_index; // @[Core.scala 423:19]
  wire  dt_ic_valid; // @[Core.scala 423:19]
  wire [63:0] dt_ic_pc; // @[Core.scala 423:19]
  wire [31:0] dt_ic_instr; // @[Core.scala 423:19]
  wire [7:0] dt_ic_special; // @[Core.scala 423:19]
  wire  dt_ic_skip; // @[Core.scala 423:19]
  wire  dt_ic_isRVC; // @[Core.scala 423:19]
  wire  dt_ic_scFailed; // @[Core.scala 423:19]
  wire  dt_ic_wen; // @[Core.scala 423:19]
  wire [63:0] dt_ic_wdata; // @[Core.scala 423:19]
  wire [7:0] dt_ic_wdest; // @[Core.scala 423:19]
  wire  dt_te_clock; // @[Core.scala 457:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 457:21]
  wire  dt_te_valid; // @[Core.scala 457:21]
  wire [2:0] dt_te_code; // @[Core.scala 457:21]
  wire [63:0] dt_te_pc; // @[Core.scala 457:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 457:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 457:21]
  wire  dt_ae_clock; // @[Core.scala 469:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 469:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 469:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 469:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 469:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 469:21]
  wire  dt_cs_clock; // @[Core.scala 477:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 477:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 477:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 477:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 477:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 477:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 477:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 477:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 477:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 477:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 477:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 477:21]
  reg [31:0] if_reg_pc; // @[PipelineReg.scala 14:33]
  reg  if_reg_pc_valid; // @[PipelineReg.scala 15:33]
  reg [31:0] id_reg_pc; // @[PipelineReg.scala 20:28]
  reg [63:0] id_reg_inst; // @[PipelineReg.scala 21:28]
  reg [31:0] exe_reg_pc; // @[PipelineReg.scala 25:32]
  reg [63:0] exe_reg_inst; // @[PipelineReg.scala 26:32]
  reg [4:0] exe_reg_alu_type; // @[PipelineReg.scala 28:32]
  reg [2:0] exe_reg_wb_type; // @[PipelineReg.scala 29:32]
  reg [2:0] exe_reg_mem_rtype; // @[PipelineReg.scala 30:32]
  reg [2:0] exe_reg_imm_type; // @[PipelineReg.scala 31:32]
  reg [2:0] exe_reg_csr_type; // @[PipelineReg.scala 32:32]
  reg [2:0] exe_reg_op2_type; // @[PipelineReg.scala 34:32]
  reg [63:0] exe_reg_op1_data; // @[PipelineReg.scala 36:28]
  reg [63:0] exe_reg_op2_data; // @[PipelineReg.scala 37:28]
  reg [63:0] exe_reg_rs2_data; // @[PipelineReg.scala 38:28]
  reg [63:0] exe_reg_rs1_data; // @[PipelineReg.scala 39:28]
  reg [63:0] exe_reg_imm; // @[PipelineReg.scala 40:28]
  reg  exe_reg_rd_en; // @[PipelineReg.scala 41:28]
  reg  exe_reg_dmem_en; // @[PipelineReg.scala 42:28]
  reg  exe_reg_dmem_wen; // @[PipelineReg.scala 43:28]
  reg [63:0] exe_reg_rs1_addr; // @[PipelineReg.scala 46:33]
  reg [63:0] exe_reg_rs2_addr; // @[PipelineReg.scala 47:33]
  reg [63:0] exe_reg_rd_addr; // @[PipelineReg.scala 48:33]
  reg  mem_reg_dmem_en; // @[PipelineReg.scala 52:28]
  reg  mem_reg_dmem_wen; // @[PipelineReg.scala 53:28]
  reg  mem_reg_rd_en; // @[PipelineReg.scala 54:28]
  reg [31:0] mem_reg_pc; // @[PipelineReg.scala 55:32]
  reg [63:0] mem_reg_inst; // @[PipelineReg.scala 56:32]
  reg  mem_reg_csr_rd_wen; // @[PipelineReg.scala 58:30]
  reg [63:0] mem_reg_csr_rd_data; // @[PipelineReg.scala 59:34]
  reg  mem_reg_clint_en; // @[PipelineReg.scala 60:30]
  reg [4:0] mem_reg_alu_type; // @[PipelineReg.scala 62:33]
  reg [2:0] mem_reg_wb_type; // @[PipelineReg.scala 63:33]
  reg [2:0] mem_reg_mem_rtype; // @[PipelineReg.scala 64:33]
  reg [2:0] mem_reg_csr_type; // @[PipelineReg.scala 65:33]
  reg [63:0] mem_reg_alu_out; // @[PipelineReg.scala 67:33]
  reg [63:0] mem_reg_rs2_data; // @[PipelineReg.scala 69:33]
  reg [63:0] mem_reg_rs2_addr; // @[PipelineReg.scala 73:33]
  reg [63:0] mem_reg_rd_addr; // @[PipelineReg.scala 74:33]
  reg [31:0] wb_reg_pc; // @[PipelineReg.scala 78:32]
  reg [63:0] wb_reg_inst; // @[PipelineReg.scala 79:32]
  reg [2:0] wb_reg_mem_rtype; // @[PipelineReg.scala 81:32]
  reg [4:0] wb_reg_alu_type; // @[PipelineReg.scala 82:32]
  reg [2:0] wb_reg_csr_type; // @[PipelineReg.scala 83:32]
  reg [63:0] wb_reg_alu_out; // @[PipelineReg.scala 84:28]
  reg [63:0] wb_reg_rd_data; // @[PipelineReg.scala 85:28]
  reg  wb_reg_rd_en; // @[PipelineReg.scala 86:28]
  reg [63:0] wb_reg_rd_addr; // @[PipelineReg.scala 87:32]
  reg [63:0] wb_reg_wdata; // @[PipelineReg.scala 88:32]
  reg [63:0] wb_reg_wdest; // @[PipelineReg.scala 89:32]
  reg  wb_reg_dmem_wen; // @[PipelineReg.scala 90:33]
  reg  wb_reg_csr_rd_wen; // @[PipelineReg.scala 92:29]
  reg [63:0] wb_reg_csr_rd_data; // @[PipelineReg.scala 93:33]
  reg  wb_reg_clint_en; // @[PipelineReg.scala 94:27]
  reg [63:0] mem_reg_mie; // @[PipelineReg.scala 97:32]
  reg [63:0] mem_reg_mstatus; // @[PipelineReg.scala 98:32]
  reg [63:0] mem_reg_mepc; // @[PipelineReg.scala 99:32]
  reg [63:0] mem_reg_mcause; // @[PipelineReg.scala 100:32]
  reg [63:0] mem_reg_mtvec; // @[PipelineReg.scala 101:32]
  reg [63:0] mem_reg_mscratch; // @[PipelineReg.scala 102:32]
  reg  mem_reg_intrpt; // @[PipelineReg.scala 103:28]
  reg [63:0] mem_reg_intrpt_no; // @[PipelineReg.scala 104:33]
  reg [63:0] wb_reg_mie; // @[PipelineReg.scala 106:31]
  reg [63:0] wb_reg_mstatus; // @[PipelineReg.scala 107:31]
  reg [63:0] wb_reg_mepc; // @[PipelineReg.scala 108:31]
  reg [63:0] wb_reg_mcause; // @[PipelineReg.scala 109:31]
  reg [63:0] wb_reg_mtvec; // @[PipelineReg.scala 110:31]
  reg [63:0] wb_reg_mscratch; // @[PipelineReg.scala 111:31]
  reg  wb_reg_intrpt; // @[PipelineReg.scala 112:27]
  reg [63:0] wb_reg_intrpt_no; // @[PipelineReg.scala 113:32]
  wire [4:0] id_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 64:30]
  wire [63:0] _GEN_81 = {{59'd0}, id_rs2_addr}; // @[Core.scala 115:20]
  wire  _T_13 = id_rs2_addr != 5'h0; // @[Core.scala 115:51]
  wire  _T_14 = exe_reg_rd_addr == _GEN_81 & id_rs2_addr != 5'h0; // @[Core.scala 115:37]
  wire  _T_15 = decode_io_op2_type == 3'h1; // @[Core.scala 115:81]
  wire [4:0] id_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 63:30]
  wire [63:0] _GEN_82 = {{59'd0}, id_rs1_addr}; // @[Core.scala 115:113]
  wire  _T_18 = id_rs1_addr != 5'h0; // @[Core.scala 115:143]
  wire  _T_19 = exe_reg_rd_addr == _GEN_82 & id_rs1_addr != 5'h0; // @[Core.scala 115:129]
  wire  _T_20 = decode_io_op1_type == 3'h1; // @[Core.scala 115:173]
  wire  _T_22 = exe_reg_rd_addr == _GEN_81 & id_rs2_addr != 5'h0 & decode_io_op2_type == 3'h1 | exe_reg_rd_addr ==
    _GEN_82 & id_rs1_addr != 5'h0 & decode_io_op1_type == 3'h1; // @[Core.scala 115:93]
  wire  stall = (exe_reg_mem_rtype != 3'h0 | exe_reg_alu_type == 5'h13) & _T_22; // @[Core.scala 114:71]
  wire  _T = ~stall; // @[Core.scala 26:6]
  wire  kill_stage = nxt_pc_io_pc_jmp; // @[PipelineReg.scala 115:23 Core.scala 251:13]
  wire  _T_2 = ~stall & ~kill_stage; // @[Core.scala 26:13]
  wire [31:0] _if_reg_pc_T_1 = if_reg_pc + 32'h4; // @[Core.scala 28:25]
  wire [31:0] exe_pc_nxt = nxt_pc_io_pc_nxt; // @[PipelineReg.scala 116:23 Core.scala 250:13]
  wire [63:0] _GEN_5 = _T & kill_stage ? 64'hffffffffffffffff : {{32'd0}, id_reg_pc}; // @[Core.scala 49:33 Core.scala 50:14]
  wire [63:0] _GEN_7 = _T_2 ? {{32'd0}, if_reg_pc} : _GEN_5; // @[Core.scala 45:28 Core.scala 46:14]
  wire  _jarl_type_T = decode_io_op2_type == 3'h4; // @[Core.scala 77:37]
  wire  _id_rs1_T_2 = id_rs1_addr == 5'h0 & _T_20; // @[Core.scala 81:40]
  wire  _id_rs1_T_7 = exe_reg_mem_rtype == 3'h0; // @[Core.scala 82:117]
  wire  _id_rs1_T_8 = _T_19 & exe_reg_rd_en & exe_reg_mem_rtype == 3'h0; // @[Core.scala 82:96]
  wire  _id_rs1_T_9 = mem_reg_rd_addr == _GEN_82; // @[Core.scala 83:37]
  wire  _id_rs1_T_12 = mem_reg_rd_addr == _GEN_82 & _T_18 & mem_reg_rd_en; // @[Core.scala 83:79]
  wire  _id_rs1_T_13 = mem_reg_mem_rtype != 3'h0; // @[Core.scala 83:122]
  wire [63:0] mem_rd_data = lsu_io_mem_rdata; // @[PipelineReg.scala 118:23 Core.scala 340:15]
  wire [63:0] _id_rs1_T_14 = mem_reg_mem_rtype != 3'h0 ? mem_rd_data : mem_reg_alu_out; // @[Core.scala 83:103]
  wire  _id_rs1_T_15 = wb_reg_rd_addr == _GEN_82; // @[Core.scala 84:37]
  wire  _id_rs1_T_18 = wb_reg_rd_addr == _GEN_82 & _T_18 & wb_reg_rd_en; // @[Core.scala 84:79]
  wire  _wb_rd_data_T_1 = ~wb_reg_csr_rd_wen; // @[Core.scala 383:50]
  wire  _wb_rd_data_T_2 = wb_reg_mem_rtype == 3'h0 & ~wb_reg_csr_rd_wen; // @[Core.scala 383:47]
  wire  _wb_rd_data_T_5 = wb_reg_mem_rtype != 3'h0 & _wb_rd_data_T_1; // @[Core.scala 384:47]
  wire [63:0] _wb_rd_data_T_6 = _wb_rd_data_T_5 ? wb_reg_rd_data : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _wb_rd_data_T_7 = _wb_rd_data_T_2 ? wb_reg_alu_out : _wb_rd_data_T_6; // @[Mux.scala 98:16]
  wire [63:0] wb_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  wire [63:0] _id_rs1_T_19 = _id_rs1_T_18 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] exe_alu_out = alu_io_alu_out; // @[PipelineReg.scala 117:23 Core.scala 201:17]
  wire  _id_op1_T_3 = decode_io_op1_type == 3'h2; // @[Core.scala 89:39]
  wire  _id_op1_T_4 = decode_io_op1_type == 3'h3; // @[Core.scala 90:39]
  wire  _id_op1_T_16 = _id_rs1_T_9 & _T_20 & _T_18 & mem_reg_rd_en; // @[Core.scala 92:114]
  wire  _id_op1_T_24 = _id_rs1_T_15 & _T_20 & _T_18 & wb_reg_rd_en; // @[Core.scala 93:114]
  wire [63:0] _id_op1_T_25 = _id_op1_T_24 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_26 = _id_op1_T_16 ? _id_rs1_T_14 : _id_op1_T_25; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_27 = _id_rs1_T_8 ? exe_alu_out : _id_op1_T_26; // @[Mux.scala 98:16]
  wire  _id_rs2_T_8 = _T_14 & exe_reg_rd_en & _id_rs1_T_7; // @[Core.scala 98:96]
  wire  _id_rs2_T_12 = mem_reg_rd_addr == _GEN_81 & _T_13 & mem_reg_rd_en; // @[Core.scala 99:79]
  wire  _id_rs2_T_18 = wb_reg_rd_addr == _GEN_81 & _T_13 & wb_reg_rd_en; // @[Core.scala 100:79]
  wire [63:0] _id_rs2_T_19 = _id_rs2_T_18 ? wb_rd_data : regfile_io_rs2_data; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_20 = _id_rs2_T_12 ? _id_rs1_T_14 : _id_rs2_T_19; // @[Mux.scala 98:16]
  wire [63:0] _id_rs2_T_21 = _id_rs2_T_8 ? exe_alu_out : _id_rs2_T_20; // @[Mux.scala 98:16]
  wire  _id_op2_T_2 = id_rs2_addr == 5'h0 & _T_15; // @[Core.scala 104:40]
  wire  _id_op2_T_3 = decode_io_op2_type == 3'h2; // @[Core.scala 105:39]
  wire  _exe_reg_dmem_wen_T_2 = decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 147:53]
  wire [31:0] _GEN_10 = stall ? 32'h0 : exe_reg_pc; // @[Core.scala 167:18 Core.scala 169:19 PipelineReg.scala 25:32]
  wire [63:0] _GEN_21 = kill_stage ? 64'hffffffffffffffff : {{32'd0}, _GEN_10}; // @[Core.scala 150:23 Core.scala 151:19]
  wire [63:0] _GEN_36 = _T_2 ? {{32'd0}, id_reg_pc} : _GEN_21; // @[Core.scala 123:28 Core.scala 124:19]
  wire  clint_en = exe_reg_dmem_en & (exe_alu_out == 64'h200bff8 | exe_alu_out == 64'h2004000); // @[Core.scala 205:22]
  wire  _T_34 = ~csr_io_intrpt; // @[Core.scala 267:6]
  wire  _mem_reg_dmem_wen_T = ~clint_en; // @[Core.scala 286:43]
  wire [63:0] _GEN_58 = _T_34 ? {{32'd0}, exe_reg_pc} : 64'hffffffffffffffff; // @[Core.scala 268:1 Core.scala 269:20 Core.scala 290:19]
  wire  _T_35 = mem_reg_rs2_addr == wb_reg_rd_addr; // @[Core.scala 335:24]
  wire  _T_38 = wb_reg_alu_type == 5'h14; // @[Core.scala 393:22]
  reg  dt_valid; // @[Core.scala 412:23]
  wire  _skip_T_1 = _T_38 | wb_reg_clint_en; // @[Core.scala 416:46]
  wire  _skip_T_5 = wb_reg_csr_type != 3'h0 & wb_reg_inst[31:20] == 12'hb00; // @[Core.scala 418:28]
  reg  dt_ic_io_skip_REG; // @[Core.scala 429:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 432:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 433:31]
  reg [63:0] dt_ic_io_wdest_REG; // @[Core.scala 434:31]
  reg [31:0] dt_ic_io_pc_REG; // @[Core.scala 437:31]
  reg [63:0] dt_ic_io_instr_REG; // @[Core.scala 438:31]
  wire [31:0] _GEN_78 = dt_valid ? dt_ic_io_pc_REG : 32'h0; // @[Core.scala 436:15 Core.scala 437:21 Core.scala 441:21]
  wire [63:0] _GEN_79 = dt_valid ? dt_ic_io_instr_REG : 64'h0; // @[Core.scala 436:15 Core.scala 438:21 Core.scala 442:21]
  reg [63:0] cycle_cnt; // @[Core.scala 447:26]
  reg [63:0] instr_cnt; // @[Core.scala 448:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 450:26]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 452:26]
  wire [63:0] rf_a0_0 = regfile_rf_10;
  reg [63:0] dt_ae_io_intrNO_REG; // @[Core.scala 472:37]
  reg [31:0] dt_ae_io_exceptionPC_REG; // @[Core.scala 474:56]
  wire [31:0] _dt_ae_io_exceptionPC_T = wb_reg_intrpt ? dt_ae_io_exceptionPC_REG : 32'h0; // @[Core.scala 474:33]
  RegFile regfile ( // @[Core.scala 66:21]
    .clock(regfile_clock),
    .reset(regfile_reset),
    .io_rs1_addr(regfile_io_rs1_addr),
    .io_rs2_addr(regfile_io_rs2_addr),
    .io_rs1_data(regfile_io_rs1_data),
    .io_rs2_data(regfile_io_rs2_data),
    .io_rd_addr(regfile_io_rd_addr),
    .io_rd_data(regfile_io_rd_data),
    .io_rd_en(regfile_io_rd_en),
    .rf_10(regfile_rf_10)
  );
  Decode decode ( // @[Core.scala 70:20]
    .io_inst(decode_io_inst),
    .io_alu_type(decode_io_alu_type),
    .io_op1_type(decode_io_op1_type),
    .io_op2_type(decode_io_op2_type),
    .io_imm_type(decode_io_imm_type),
    .io_mem_rtype(decode_io_mem_rtype),
    .io_wb_type(decode_io_wb_type),
    .io_csr_type(decode_io_csr_type)
  );
  ImmGen imm_gen ( // @[Core.scala 73:21]
    .io_imm_type(imm_gen_io_imm_type),
    .io_inst(imm_gen_io_inst),
    .io_imm(imm_gen_io_imm)
  );
  ALU alu ( // @[Core.scala 195:17]
    .io_alu_type(alu_io_alu_type),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_alu_out(alu_io_alu_out)
  );
  Clint clint ( // @[Core.scala 211:19]
    .clock(clint_clock),
    .reset(clint_reset),
    .io_cmp_wen(clint_io_cmp_wen),
    .io_cmp_wdata(clint_io_cmp_wdata),
    .io_time_intrpt(clint_io_time_intrpt),
    .csr_mie(clint_csr_mie),
    .csr_status(clint_csr_status)
  );
  CSR csr ( // @[Core.scala 218:18]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_pc(csr_io_pc),
    .io_inst(csr_io_inst),
    .io_csr_type(csr_io_csr_type),
    .io_in_data(csr_io_in_data),
    .io_time_intrpt(csr_io_time_intrpt),
    .io_time_intrpt_pc(csr_io_time_intrpt_pc),
    .io_intrpt_mstatus(csr_io_intrpt_mstatus),
    .io_intrpt_mtvec(csr_io_intrpt_mtvec),
    .io_out(csr_io_out),
    .io_jmp(csr_io_jmp),
    .io_jmp_pc(csr_io_jmp_pc),
    .io_intrpt(csr_io_intrpt),
    .io_intrpt_pc(csr_io_intrpt_pc),
    .io_intrpt_no(csr_io_intrpt_no),
    .io_rd_wen(csr_io_rd_wen),
    .io_mie(csr_io_mie),
    .io_mstatus(csr_io_mstatus),
    .io_mepc(csr_io_mepc),
    .io_mtvec(csr_io_mtvec),
    .io_mcause(csr_io_mcause),
    .io_mscratch(csr_io_mscratch),
    .mie_0(csr_mie_0),
    .mstatus_0(csr_mstatus_0)
  );
  Nxt_PC nxt_pc ( // @[Core.scala 229:20]
    .io_pc(nxt_pc_io_pc),
    .io_imm(nxt_pc_io_imm),
    .io_rs1_data(nxt_pc_io_rs1_data),
    .io_alu_out(nxt_pc_io_alu_out),
    .io_csr_jmp(nxt_pc_io_csr_jmp),
    .io_intrpt_jmp(nxt_pc_io_intrpt_jmp),
    .io_op2_type(nxt_pc_io_op2_type),
    .io_imm_type(nxt_pc_io_imm_type),
    .io_alu_type(nxt_pc_io_alu_type),
    .io_csr_jmp_pc(nxt_pc_io_csr_jmp_pc),
    .io_intrpt_jmp_pc(nxt_pc_io_intrpt_jmp_pc),
    .io_pc_nxt(nxt_pc_io_pc_nxt),
    .io_pc_jmp(nxt_pc_io_pc_jmp)
  );
  LSU lsu ( // @[Core.scala 327:17]
    .io_mem_rtype(lsu_io_mem_rtype),
    .io_wb_type(lsu_io_wb_type),
    .io_dmem_addr(lsu_io_dmem_addr),
    .io_dmem_rdata(lsu_io_dmem_rdata),
    .io_rs2_data(lsu_io_rs2_data),
    .io_mem_rdata(lsu_io_mem_rdata),
    .io_dmem_wmask(lsu_io_dmem_wmask),
    .io_dmem_wdata(lsu_io_dmem_wdata)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 423:19]
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
  DifftestTrapEvent dt_te ( // @[Core.scala 457:21]
    .clock(dt_te_clock),
    .coreid(dt_te_coreid),
    .valid(dt_te_valid),
    .code(dt_te_code),
    .pc(dt_te_pc),
    .cycleCnt(dt_te_cycleCnt),
    .instrCnt(dt_te_instrCnt)
  );
  DifftestArchEvent dt_ae ( // @[Core.scala 469:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
  );
  DifftestCSRState dt_cs ( // @[Core.scala 477:21]
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
  assign io_imem_addr = {{32'd0}, if_reg_pc}; // @[Core.scala 40:14]
  assign io_dmem_en = mem_reg_dmem_en; // @[Core.scala 321:15]
  assign io_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 317:1 Core.scala 317:16 Core.scala 318:26]
  assign io_dmem_wdata = lsu_io_dmem_wdata; // @[Core.scala 343:15]
  assign io_dmem_wmask = lsu_io_dmem_wmask; // @[Core.scala 342:15]
  assign io_dmem_wen = mem_reg_dmem_wen; // @[Core.scala 322:15]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 63:30]
  assign regfile_io_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 64:30]
  assign regfile_io_rd_addr = wb_reg_rd_addr[4:0]; // @[Core.scala 379:20]
  assign regfile_io_rd_data = wb_reg_csr_rd_wen ? wb_reg_csr_rd_data : _wb_rd_data_T_7; // @[Mux.scala 98:16]
  assign regfile_io_rd_en = wb_reg_rd_en | wb_reg_csr_rd_wen; // @[Core.scala 378:36]
  assign decode_io_inst = id_reg_inst[31:0]; // @[Core.scala 71:21]
  assign imm_gen_io_imm_type = decode_io_imm_type; // @[Core.scala 74:21]
  assign imm_gen_io_inst = id_reg_inst[31:0]; // @[Core.scala 75:21]
  assign alu_io_alu_type = exe_reg_alu_type; // @[Core.scala 197:17]
  assign alu_io_in1 = exe_reg_op1_data; // @[Core.scala 189:23 Core.scala 192:9]
  assign alu_io_in2 = exe_reg_op2_data; // @[Core.scala 190:23 Core.scala 193:9]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_io_cmp_wen = exe_reg_dmem_wen & clint_en; // @[Core.scala 213:42]
  assign clint_io_cmp_wdata = exe_reg_rs2_data; // @[Core.scala 215:21]
  assign clint_csr_mie = csr_mie_0;
  assign clint_csr_status = csr_mstatus_0;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_pc = exe_reg_pc; // @[Core.scala 219:20]
  assign csr_io_inst = exe_reg_inst[31:0]; // @[Core.scala 220:20]
  assign csr_io_csr_type = exe_reg_csr_type; // @[Core.scala 222:20]
  assign csr_io_in_data = alu_io_alu_out; // @[PipelineReg.scala 117:23 Core.scala 201:17]
  assign csr_io_time_intrpt = clint_io_time_intrpt; // @[Core.scala 224:20]
  assign csr_io_time_intrpt_pc = {{32'd0}, mem_reg_pc}; // @[Core.scala 225:23]
  assign csr_io_intrpt_mstatus = mem_reg_mstatus; // @[Core.scala 226:23]
  assign csr_io_intrpt_mtvec = mem_reg_mtvec; // @[Core.scala 227:21]
  assign nxt_pc_io_pc = exe_reg_pc; // @[Core.scala 230:23]
  assign nxt_pc_io_imm = exe_reg_imm; // @[Core.scala 233:23]
  assign nxt_pc_io_rs1_data = exe_reg_rs1_addr == mem_reg_rd_addr & _id_rs1_T_13 ? mem_rd_data : exe_reg_rs1_data; // @[Core.scala 246:74 Core.scala 247:20 Core.scala 248:32]
  assign nxt_pc_io_alu_out = alu_io_alu_out; // @[PipelineReg.scala 117:23 Core.scala 201:17]
  assign nxt_pc_io_csr_jmp = csr_io_jmp; // @[Core.scala 237:23]
  assign nxt_pc_io_intrpt_jmp = csr_io_intrpt; // @[Core.scala 240:26]
  assign nxt_pc_io_op2_type = exe_reg_op2_type; // @[Core.scala 236:23]
  assign nxt_pc_io_imm_type = exe_reg_imm_type; // @[Core.scala 231:23]
  assign nxt_pc_io_alu_type = exe_reg_alu_type; // @[Core.scala 232:23]
  assign nxt_pc_io_csr_jmp_pc = {{32'd0}, csr_io_jmp_pc}; // @[Core.scala 238:23]
  assign nxt_pc_io_intrpt_jmp_pc = {{32'd0}, csr_io_intrpt_pc}; // @[Core.scala 241:26]
  assign lsu_io_mem_rtype = mem_reg_mem_rtype; // @[Core.scala 330:19]
  assign lsu_io_wb_type = mem_reg_wb_type; // @[Core.scala 333:19]
  assign lsu_io_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 317:1 Core.scala 317:16 Core.scala 318:26]
  assign lsu_io_dmem_rdata = io_dmem_rdata; // @[Core.scala 331:19]
  assign lsu_io_rs2_data = _T_35 & mem_reg_dmem_wen & wb_reg_rd_en ? wb_rd_data : mem_reg_rs2_data; // @[Core.scala 336:38 Core.scala 337:18 Core.scala 338:31]
  assign dt_ic_clock = clock; // @[Core.scala 424:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 425:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 426:21]
  assign dt_ic_valid = dt_valid; // @[Core.scala 427:21]
  assign dt_ic_pc = {{32'd0}, _GEN_78}; // @[Core.scala 436:15 Core.scala 437:21 Core.scala 441:21]
  assign dt_ic_instr = _GEN_79[31:0];
  assign dt_ic_special = 8'h0; // @[Core.scala 428:21]
  assign dt_ic_skip = dt_ic_io_skip_REG; // @[Core.scala 429:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 430:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 431:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 432:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 433:21]
  assign dt_ic_wdest = dt_ic_io_wdest_REG[7:0]; // @[Core.scala 434:21]
  assign dt_te_clock = clock; // @[Core.scala 458:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 459:21]
  assign dt_te_valid = wb_reg_inst == 64'h6b; // @[Core.scala 460:37]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 461:29]
  assign dt_te_pc = {{32'd0}, wb_reg_pc}; // @[Core.scala 462:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 463:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 464:21]
  assign dt_ae_clock = clock; // @[Core.scala 470:27]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 471:27]
  assign dt_ae_intrNO = dt_ae_io_intrNO_REG[31:0]; // @[Core.scala 472:27]
  assign dt_ae_cause = 32'h0; // @[Core.scala 473:27]
  assign dt_ae_exceptionPC = {{32'd0}, _dt_ae_io_exceptionPC_T}; // @[Core.scala 474:33]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_cs_clock = clock; // @[Core.scala 478:29]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 479:29]
  assign dt_cs_priviledgeMode = 2'h3; // @[Core.scala 480:29]
  assign dt_cs_mstatus = wb_reg_mstatus; // @[Core.scala 481:29]
  assign dt_cs_sstatus = 64'h0; // @[Core.scala 482:29]
  assign dt_cs_mepc = wb_reg_mepc; // @[Core.scala 483:29]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 484:29]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 485:29]
  assign dt_cs_stval = 64'h0; // @[Core.scala 486:29]
  assign dt_cs_mtvec = wb_reg_mtvec; // @[Core.scala 487:29]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 488:29]
  assign dt_cs_mcause = wb_reg_mcause; // @[Core.scala 489:29]
  assign dt_cs_scause = 64'h0; // @[Core.scala 490:29]
  assign dt_cs_satp = 64'h0; // @[Core.scala 491:29]
  assign dt_cs_mip = 64'h0; // @[Core.scala 492:29]
  assign dt_cs_mie = wb_reg_mie; // @[Core.scala 493:29]
  assign dt_cs_mscratch = wb_reg_mscratch; // @[Core.scala 494:29]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 495:29]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 496:29]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 497:29]
  always @(posedge clock) begin
    if (reset) begin // @[PipelineReg.scala 14:33]
      if_reg_pc <= 32'h80000000; // @[PipelineReg.scala 14:33]
    end else if (~stall & ~kill_stage & if_reg_pc_valid) begin // @[Core.scala 26:47]
      if_reg_pc <= _if_reg_pc_T_1; // @[Core.scala 28:12]
    end else if (!(stall)) begin // @[Core.scala 30:18]
      if (kill_stage) begin // @[Core.scala 34:23]
        if_reg_pc <= exe_pc_nxt; // @[Core.scala 36:13]
      end
    end
    if (reset) begin // @[PipelineReg.scala 15:33]
      if_reg_pc_valid <= 1'h0; // @[PipelineReg.scala 15:33]
    end else begin
      if_reg_pc_valid <= 1'h1; // @[Core.scala 25:17]
    end
    if (reset) begin // @[PipelineReg.scala 20:28]
      id_reg_pc <= 32'h7ffffffc; // @[PipelineReg.scala 20:28]
    end else begin
      id_reg_pc <= _GEN_7[31:0];
    end
    if (reset) begin // @[PipelineReg.scala 21:28]
      id_reg_inst <= 64'h0; // @[PipelineReg.scala 21:28]
    end else if (_T_2) begin // @[Core.scala 45:28]
      id_reg_inst <= io_imem_rdata; // @[Core.scala 47:14]
    end else if (_T & kill_stage) begin // @[Core.scala 49:33]
      id_reg_inst <= 64'h13; // @[Core.scala 51:14]
    end
    if (reset) begin // @[PipelineReg.scala 25:32]
      exe_reg_pc <= 32'h7ffffffc; // @[PipelineReg.scala 25:32]
    end else begin
      exe_reg_pc <= _GEN_36[31:0];
    end
    if (reset) begin // @[PipelineReg.scala 26:32]
      exe_reg_inst <= 64'h0; // @[PipelineReg.scala 26:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_inst <= id_reg_inst; // @[Core.scala 125:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_inst <= 64'h13; // @[Core.scala 152:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_inst <= 64'h13; // @[Core.scala 170:19]
    end
    if (reset) begin // @[PipelineReg.scala 28:32]
      exe_reg_alu_type <= 5'h0; // @[PipelineReg.scala 28:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_alu_type <= decode_io_alu_type; // @[Core.scala 129:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_alu_type <= 5'h0; // @[Core.scala 158:19]
    end
    if (reset) begin // @[PipelineReg.scala 29:32]
      exe_reg_wb_type <= 3'h0; // @[PipelineReg.scala 29:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_wb_type <= decode_io_wb_type; // @[Core.scala 133:19]
    end
    if (reset) begin // @[PipelineReg.scala 30:32]
      exe_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 30:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_mem_rtype <= decode_io_mem_rtype; // @[Core.scala 131:19]
    end
    if (reset) begin // @[PipelineReg.scala 31:32]
      exe_reg_imm_type <= 3'h0; // @[PipelineReg.scala 31:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_imm_type <= decode_io_imm_type; // @[Core.scala 132:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_imm_type <= 3'h0; // @[Core.scala 156:19]
    end
    if (reset) begin // @[PipelineReg.scala 32:32]
      exe_reg_csr_type <= 3'h0; // @[PipelineReg.scala 32:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_csr_type <= decode_io_csr_type; // @[Core.scala 130:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_csr_type <= 3'h0; // @[Core.scala 157:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_csr_type <= 3'h0; // @[Core.scala 174:19]
    end
    if (reset) begin // @[PipelineReg.scala 34:32]
      exe_reg_op2_type <= 3'h0; // @[PipelineReg.scala 34:32]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_op2_type <= decode_io_op2_type; // @[Core.scala 128:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_op2_type <= 3'h0; // @[Core.scala 160:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= 64'h0;
      end else if (_id_op1_T_3) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= imm_gen_io_imm;
      end else if (_id_op1_T_4) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= {{32'd0}, id_reg_pc};
      end else begin
        exe_reg_op1_data <= _id_op1_T_27;
      end
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_op1_data <= 64'h0; // @[Core.scala 165:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_op1_data <= 64'h0; // @[Core.scala 178:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      if (_id_op2_T_2) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= 64'h0;
      end else if (_id_op2_T_3) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= imm_gen_io_imm;
      end else if (_jarl_type_T) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= 64'h4;
      end else begin
        exe_reg_op2_data <= _id_rs2_T_21;
      end
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_op2_data <= 64'h0; // @[Core.scala 166:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_op2_data <= 64'h0; // @[Core.scala 179:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= 64'h0;
      end else if (_id_rs2_T_8) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= exe_alu_out;
      end else if (_id_rs2_T_12) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= _id_rs1_T_14;
      end else begin
        exe_reg_rs2_data <= _id_rs2_T_19;
      end
    end
    if (_T_2) begin // @[Core.scala 123:28]
      if (_id_rs1_T_2) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= 64'h0;
      end else if (_id_rs1_T_8) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= exe_alu_out;
      end else if (_id_rs1_T_12) begin // @[Mux.scala 98:16]
        exe_reg_rs1_data <= _id_rs1_T_14;
      end else begin
        exe_reg_rs1_data <= _id_rs1_T_19;
      end
    end
    if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_imm <= imm_gen_io_imm; // @[Core.scala 139:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_imm <= 64'h0; // @[Core.scala 159:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_rd_en <= decode_io_wb_type == 3'h1; // @[Core.scala 146:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_rd_en <= 1'h0; // @[Core.scala 153:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_rd_en <= 1'h0; // @[Core.scala 171:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_dmem_en <= decode_io_mem_rtype != 3'h0 | _exe_reg_dmem_wen_T_2; // @[Core.scala 148:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_dmem_en <= 1'h0; // @[Core.scala 155:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_dmem_en <= 1'h0; // @[Core.scala 173:19]
    end
    if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_dmem_wen <= decode_io_wb_type != 3'h1 & decode_io_wb_type != 3'h0; // @[Core.scala 147:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_dmem_wen <= 1'h0; // @[Core.scala 154:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_dmem_wen <= 1'h0; // @[Core.scala 172:19]
    end
    if (reset) begin // @[PipelineReg.scala 46:33]
      exe_reg_rs1_addr <= 64'h0; // @[PipelineReg.scala 46:33]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_rs1_addr <= {{59'd0}, id_rs1_addr}; // @[Core.scala 135:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_rs1_addr <= 64'h0; // @[Core.scala 162:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_rs1_addr <= 64'h0; // @[Core.scala 175:19]
    end
    if (reset) begin // @[PipelineReg.scala 47:33]
      exe_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 47:33]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_rs2_addr <= {{59'd0}, id_rs2_addr}; // @[Core.scala 136:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_rs2_addr <= 64'h0; // @[Core.scala 163:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_rs2_addr <= 64'h0; // @[Core.scala 176:19]
    end
    if (reset) begin // @[PipelineReg.scala 48:33]
      exe_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 48:33]
    end else if (_T_2) begin // @[Core.scala 123:28]
      exe_reg_rd_addr <= {{59'd0}, id_reg_inst[11:7]}; // @[Core.scala 137:19]
    end else if (kill_stage) begin // @[Core.scala 150:23]
      exe_reg_rd_addr <= 64'h0; // @[Core.scala 164:19]
    end else if (stall) begin // @[Core.scala 167:18]
      exe_reg_rd_addr <= 64'h0; // @[Core.scala 177:19]
    end
    mem_reg_dmem_en <= _T_34 & (exe_reg_dmem_en & _mem_reg_dmem_wen_T); // @[Core.scala 268:1 Core.scala 287:20 Core.scala 304:20]
    mem_reg_dmem_wen <= _T_34 & (exe_reg_dmem_wen & ~clint_en); // @[Core.scala 268:1 Core.scala 286:20 Core.scala 303:20]
    mem_reg_rd_en <= _T_34 & exe_reg_rd_en; // @[Core.scala 268:1 Core.scala 285:20 Core.scala 302:20]
    if (reset) begin // @[PipelineReg.scala 55:32]
      mem_reg_pc <= 32'h7ffffffc; // @[PipelineReg.scala 55:32]
    end else begin
      mem_reg_pc <= _GEN_58[31:0];
    end
    if (reset) begin // @[PipelineReg.scala 56:32]
      mem_reg_inst <= 64'h0; // @[PipelineReg.scala 56:32]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_inst <= exe_reg_inst; // @[Core.scala 270:20]
    end else begin
      mem_reg_inst <= 64'h13; // @[Core.scala 291:19]
    end
    if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_csr_rd_wen <= csr_io_rd_wen; // @[Core.scala 272:21]
    end
    if (reset) begin // @[PipelineReg.scala 59:34]
      mem_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 59:34]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_csr_rd_data <= csr_io_out; // @[Core.scala 273:21]
    end
    if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_clint_en <= clint_en; // @[Core.scala 271:20]
    end
    if (reset) begin // @[PipelineReg.scala 62:33]
      mem_reg_alu_type <= 5'h0; // @[PipelineReg.scala 62:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_alu_type <= exe_reg_alu_type; // @[Core.scala 275:20]
    end
    if (reset) begin // @[PipelineReg.scala 63:33]
      mem_reg_wb_type <= 3'h0; // @[PipelineReg.scala 63:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_wb_type <= exe_reg_wb_type; // @[Core.scala 277:20]
    end else begin
      mem_reg_wb_type <= 3'h0; // @[Core.scala 306:20]
    end
    if (reset) begin // @[PipelineReg.scala 64:33]
      mem_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 64:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_mem_rtype <= exe_reg_mem_rtype; // @[Core.scala 276:20]
    end else begin
      mem_reg_mem_rtype <= 3'h0; // @[Core.scala 305:20]
    end
    if (reset) begin // @[PipelineReg.scala 65:33]
      mem_reg_csr_type <= 3'h0; // @[PipelineReg.scala 65:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_csr_type <= exe_reg_csr_type; // @[Core.scala 274:20]
    end else begin
      mem_reg_csr_type <= 3'h0; // @[Core.scala 295:19]
    end
    if (reset) begin // @[PipelineReg.scala 67:33]
      mem_reg_alu_out <= 64'h0; // @[PipelineReg.scala 67:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_alu_out <= exe_alu_out; // @[Core.scala 278:20]
    end else begin
      mem_reg_alu_out <= 64'h0; // @[Core.scala 307:20]
    end
    if (reset) begin // @[PipelineReg.scala 69:33]
      mem_reg_rs2_data <= 64'h0; // @[PipelineReg.scala 69:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_rs2_data <= exe_reg_rs2_data; // @[Core.scala 279:20]
    end
    if (reset) begin // @[PipelineReg.scala 73:33]
      mem_reg_rs2_addr <= 64'h0; // @[PipelineReg.scala 73:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_rs2_addr <= exe_reg_rs2_addr; // @[Core.scala 280:20]
    end else begin
      mem_reg_rs2_addr <= 64'h0; // @[Core.scala 297:19]
    end
    if (reset) begin // @[PipelineReg.scala 74:33]
      mem_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 74:33]
    end else if (_T_34) begin // @[Core.scala 268:1]
      mem_reg_rd_addr <= exe_reg_rd_addr; // @[Core.scala 283:20]
    end else begin
      mem_reg_rd_addr <= 64'h0; // @[Core.scala 300:20]
    end
    if (reset) begin // @[PipelineReg.scala 78:32]
      wb_reg_pc <= 32'h7ffffffc; // @[PipelineReg.scala 78:32]
    end else begin
      wb_reg_pc <= mem_reg_pc; // @[Core.scala 349:20]
    end
    if (reset) begin // @[PipelineReg.scala 79:32]
      wb_reg_inst <= 64'h0; // @[PipelineReg.scala 79:32]
    end else begin
      wb_reg_inst <= mem_reg_inst; // @[Core.scala 348:20]
    end
    if (reset) begin // @[PipelineReg.scala 81:32]
      wb_reg_mem_rtype <= 3'h0; // @[PipelineReg.scala 81:32]
    end else begin
      wb_reg_mem_rtype <= mem_reg_mem_rtype; // @[Core.scala 355:20]
    end
    if (reset) begin // @[PipelineReg.scala 82:32]
      wb_reg_alu_type <= 5'h0; // @[PipelineReg.scala 82:32]
    end else begin
      wb_reg_alu_type <= mem_reg_alu_type; // @[Core.scala 354:20]
    end
    if (reset) begin // @[PipelineReg.scala 83:32]
      wb_reg_csr_type <= 3'h0; // @[PipelineReg.scala 83:32]
    end else begin
      wb_reg_csr_type <= mem_reg_csr_type; // @[Core.scala 361:20]
    end
    wb_reg_alu_out <= mem_reg_alu_out; // @[Core.scala 356:20]
    wb_reg_rd_data <= lsu_io_mem_rdata; // @[PipelineReg.scala 118:23 Core.scala 340:15]
    wb_reg_rd_en <= mem_reg_rd_en; // @[Core.scala 359:20]
    if (reset) begin // @[PipelineReg.scala 87:32]
      wb_reg_rd_addr <= 64'h0; // @[PipelineReg.scala 87:32]
    end else begin
      wb_reg_rd_addr <= mem_reg_rd_addr; // @[Core.scala 358:20]
    end
    if (reset) begin // @[PipelineReg.scala 88:32]
      wb_reg_wdata <= 64'h0; // @[PipelineReg.scala 88:32]
    end else begin
      wb_reg_wdata <= lsu_io_dmem_wdata; // @[Core.scala 350:20]
    end
    if (reset) begin // @[PipelineReg.scala 89:32]
      wb_reg_wdest <= 64'h0; // @[PipelineReg.scala 89:32]
    end else if (mem_reg_dmem_en) begin // @[Core.scala 317:1]
      wb_reg_wdest <= mem_reg_alu_out; // @[Core.scala 317:16]
    end else begin
      wb_reg_wdest <= 64'h0; // @[Core.scala 318:26]
    end
    wb_reg_dmem_wen <= mem_reg_dmem_wen; // @[Core.scala 352:20]
    wb_reg_csr_rd_wen <= mem_reg_csr_rd_wen; // @[Core.scala 362:20]
    if (reset) begin // @[PipelineReg.scala 93:33]
      wb_reg_csr_rd_data <= 64'h0; // @[PipelineReg.scala 93:33]
    end else begin
      wb_reg_csr_rd_data <= mem_reg_csr_rd_data; // @[Core.scala 363:20]
    end
    wb_reg_clint_en <= mem_reg_clint_en; // @[Core.scala 364:20]
    if (reset) begin // @[PipelineReg.scala 97:32]
      mem_reg_mie <= 64'h0; // @[PipelineReg.scala 97:32]
    end else begin
      mem_reg_mie <= csr_io_mie; // @[Core.scala 256:18]
    end
    if (reset) begin // @[PipelineReg.scala 98:32]
      mem_reg_mstatus <= 64'h0; // @[PipelineReg.scala 98:32]
    end else begin
      mem_reg_mstatus <= csr_io_mstatus; // @[Core.scala 257:18]
    end
    if (reset) begin // @[PipelineReg.scala 99:32]
      mem_reg_mepc <= 64'h0; // @[PipelineReg.scala 99:32]
    end else begin
      mem_reg_mepc <= csr_io_mepc; // @[Core.scala 258:18]
    end
    if (reset) begin // @[PipelineReg.scala 100:32]
      mem_reg_mcause <= 64'h0; // @[PipelineReg.scala 100:32]
    end else begin
      mem_reg_mcause <= csr_io_mcause; // @[Core.scala 259:18]
    end
    if (reset) begin // @[PipelineReg.scala 101:32]
      mem_reg_mtvec <= 64'h0; // @[PipelineReg.scala 101:32]
    end else begin
      mem_reg_mtvec <= csr_io_mtvec; // @[Core.scala 260:18]
    end
    if (reset) begin // @[PipelineReg.scala 102:32]
      mem_reg_mscratch <= 64'h0; // @[PipelineReg.scala 102:32]
    end else begin
      mem_reg_mscratch <= csr_io_mscratch; // @[Core.scala 261:18]
    end
    mem_reg_intrpt <= csr_io_intrpt; // @[Core.scala 262:18]
    if (reset) begin // @[PipelineReg.scala 104:33]
      mem_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 104:33]
    end else begin
      mem_reg_intrpt_no <= csr_io_intrpt_no; // @[Core.scala 263:18]
    end
    if (reset) begin // @[PipelineReg.scala 106:31]
      wb_reg_mie <= 64'h0; // @[PipelineReg.scala 106:31]
    end else begin
      wb_reg_mie <= mem_reg_mie; // @[Core.scala 366:17]
    end
    if (reset) begin // @[PipelineReg.scala 107:31]
      wb_reg_mstatus <= 64'h0; // @[PipelineReg.scala 107:31]
    end else begin
      wb_reg_mstatus <= mem_reg_mstatus; // @[Core.scala 367:17]
    end
    if (reset) begin // @[PipelineReg.scala 108:31]
      wb_reg_mepc <= 64'h0; // @[PipelineReg.scala 108:31]
    end else begin
      wb_reg_mepc <= mem_reg_mepc; // @[Core.scala 368:17]
    end
    if (reset) begin // @[PipelineReg.scala 109:31]
      wb_reg_mcause <= 64'h0; // @[PipelineReg.scala 109:31]
    end else begin
      wb_reg_mcause <= mem_reg_mcause; // @[Core.scala 369:17]
    end
    if (reset) begin // @[PipelineReg.scala 110:31]
      wb_reg_mtvec <= 64'h0; // @[PipelineReg.scala 110:31]
    end else begin
      wb_reg_mtvec <= mem_reg_mtvec; // @[Core.scala 370:17]
    end
    if (reset) begin // @[PipelineReg.scala 111:31]
      wb_reg_mscratch <= 64'h0; // @[PipelineReg.scala 111:31]
    end else begin
      wb_reg_mscratch <= mem_reg_mscratch; // @[Core.scala 371:17]
    end
    wb_reg_intrpt <= mem_reg_intrpt; // @[Core.scala 372:17]
    if (reset) begin // @[PipelineReg.scala 113:32]
      wb_reg_intrpt_no <= 64'h0; // @[PipelineReg.scala 113:32]
    end else begin
      wb_reg_intrpt_no <= mem_reg_intrpt_no; // @[Core.scala 373:18]
    end
    if (reset) begin // @[Core.scala 412:23]
      dt_valid <= 1'h0; // @[Core.scala 412:23]
    end else begin
      dt_valid <= wb_reg_inst != 64'h13 & wb_reg_inst != 64'h0 & ~wb_reg_clint_en; // @[Core.scala 414:10]
    end
    dt_ic_io_skip_REG <= _skip_T_1 | _skip_T_5; // @[Core.scala 417:19]
    dt_ic_io_wen_REG <= wb_reg_dmem_wen; // @[Core.scala 432:31]
    dt_ic_io_wdata_REG <= wb_reg_wdata; // @[Core.scala 433:31]
    dt_ic_io_wdest_REG <= wb_reg_wdest; // @[Core.scala 434:31]
    dt_ic_io_pc_REG <= wb_reg_pc; // @[Core.scala 437:31]
    dt_ic_io_instr_REG <= wb_reg_inst; // @[Core.scala 438:31]
    if (reset) begin // @[Core.scala 447:26]
      cycle_cnt <= 64'h0; // @[Core.scala 447:26]
    end else begin
      cycle_cnt <= _cycle_cnt_T_1; // @[Core.scala 452:13]
    end
    if (reset) begin // @[Core.scala 448:26]
      instr_cnt <= 64'h0; // @[Core.scala 448:26]
    end else if (dt_ic_valid) begin // @[Core.scala 449:24]
      instr_cnt <= _instr_cnt_T_1; // @[Core.scala 450:13]
    end
    if (wb_reg_intrpt) begin // @[Core.scala 472:41]
      dt_ae_io_intrNO_REG <= wb_reg_intrpt_no;
    end else begin
      dt_ae_io_intrNO_REG <= 64'h0;
    end
    dt_ae_io_exceptionPC_REG <= wb_reg_pc; // @[Core.scala 474:56]
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_38 & ~reset) begin
          $fwrite(32'h80000002,"%x",1'h0); // @[Core.scala 396:7]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
  if_reg_pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  if_reg_pc_valid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  id_reg_pc = _RAND_2[31:0];
  _RAND_3 = {2{`RANDOM}};
  id_reg_inst = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  exe_reg_pc = _RAND_4[31:0];
  _RAND_5 = {2{`RANDOM}};
  exe_reg_inst = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  exe_reg_alu_type = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  exe_reg_wb_type = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  exe_reg_mem_rtype = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  exe_reg_imm_type = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  exe_reg_csr_type = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  exe_reg_op2_type = _RAND_11[2:0];
  _RAND_12 = {2{`RANDOM}};
  exe_reg_op1_data = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  exe_reg_op2_data = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  exe_reg_rs2_data = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  exe_reg_rs1_data = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  exe_reg_imm = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  exe_reg_rd_en = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  exe_reg_dmem_en = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  exe_reg_dmem_wen = _RAND_19[0:0];
  _RAND_20 = {2{`RANDOM}};
  exe_reg_rs1_addr = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  exe_reg_rs2_addr = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  exe_reg_rd_addr = _RAND_22[63:0];
  _RAND_23 = {1{`RANDOM}};
  mem_reg_dmem_en = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_reg_dmem_wen = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_reg_rd_en = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mem_reg_pc = _RAND_26[31:0];
  _RAND_27 = {2{`RANDOM}};
  mem_reg_inst = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  mem_reg_csr_rd_wen = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  mem_reg_csr_rd_data = _RAND_29[63:0];
  _RAND_30 = {1{`RANDOM}};
  mem_reg_clint_en = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mem_reg_alu_type = _RAND_31[4:0];
  _RAND_32 = {1{`RANDOM}};
  mem_reg_wb_type = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  mem_reg_mem_rtype = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  mem_reg_csr_type = _RAND_34[2:0];
  _RAND_35 = {2{`RANDOM}};
  mem_reg_alu_out = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  mem_reg_rs2_data = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  mem_reg_rs2_addr = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  mem_reg_rd_addr = _RAND_38[63:0];
  _RAND_39 = {1{`RANDOM}};
  wb_reg_pc = _RAND_39[31:0];
  _RAND_40 = {2{`RANDOM}};
  wb_reg_inst = _RAND_40[63:0];
  _RAND_41 = {1{`RANDOM}};
  wb_reg_mem_rtype = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  wb_reg_alu_type = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  wb_reg_csr_type = _RAND_43[2:0];
  _RAND_44 = {2{`RANDOM}};
  wb_reg_alu_out = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  wb_reg_rd_data = _RAND_45[63:0];
  _RAND_46 = {1{`RANDOM}};
  wb_reg_rd_en = _RAND_46[0:0];
  _RAND_47 = {2{`RANDOM}};
  wb_reg_rd_addr = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  wb_reg_wdata = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  wb_reg_wdest = _RAND_49[63:0];
  _RAND_50 = {1{`RANDOM}};
  wb_reg_dmem_wen = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  wb_reg_csr_rd_wen = _RAND_51[0:0];
  _RAND_52 = {2{`RANDOM}};
  wb_reg_csr_rd_data = _RAND_52[63:0];
  _RAND_53 = {1{`RANDOM}};
  wb_reg_clint_en = _RAND_53[0:0];
  _RAND_54 = {2{`RANDOM}};
  mem_reg_mie = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  mem_reg_mstatus = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  mem_reg_mepc = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  mem_reg_mcause = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  mem_reg_mtvec = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  mem_reg_mscratch = _RAND_59[63:0];
  _RAND_60 = {1{`RANDOM}};
  mem_reg_intrpt = _RAND_60[0:0];
  _RAND_61 = {2{`RANDOM}};
  mem_reg_intrpt_no = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  wb_reg_mie = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  wb_reg_mstatus = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  wb_reg_mepc = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  wb_reg_mcause = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  wb_reg_mtvec = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  wb_reg_mscratch = _RAND_67[63:0];
  _RAND_68 = {1{`RANDOM}};
  wb_reg_intrpt = _RAND_68[0:0];
  _RAND_69 = {2{`RANDOM}};
  wb_reg_intrpt_no = _RAND_69[63:0];
  _RAND_70 = {1{`RANDOM}};
  dt_valid = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  dt_ic_io_skip_REG = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_72[0:0];
  _RAND_73 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_74[63:0];
  _RAND_75 = {1{`RANDOM}};
  dt_ic_io_pc_REG = _RAND_75[31:0];
  _RAND_76 = {2{`RANDOM}};
  dt_ic_io_instr_REG = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  cycle_cnt = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  instr_cnt = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  dt_ae_io_intrNO_REG = _RAND_79[63:0];
  _RAND_80 = {1{`RANDOM}};
  dt_ae_io_exceptionPC_REG = _RAND_80[31:0];
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
  output [63:0] io_imem_rdata,
  input         io_dmem_en,
  input  [63:0] io_dmem_addr,
  output [63:0] io_dmem_rdata,
  input  [63:0] io_dmem_wdata,
  input  [63:0] io_dmem_wmask,
  input         io_dmem_wen
);
  wire  mem_clk; // @[Ram.scala 39:19]
  wire  mem_imem_en; // @[Ram.scala 39:19]
  wire [63:0] mem_imem_addr; // @[Ram.scala 39:19]
  wire  mem_dmem_en; // @[Ram.scala 39:19]
  wire [63:0] mem_dmem_addr; // @[Ram.scala 39:19]
  wire [63:0] mem_dmem_wdata; // @[Ram.scala 39:19]
  wire [63:0] mem_dmem_wmask; // @[Ram.scala 39:19]
  wire  mem_dmem_wen; // @[Ram.scala 39:19]
  wire [31:0] mem_imem_data; // @[Ram.scala 39:19]
  wire [63:0] mem_dmem_rdata; // @[Ram.scala 39:19]
  ram_2r1w mem ( // @[Ram.scala 39:19]
    .clk(mem_clk),
    .imem_en(mem_imem_en),
    .imem_addr(mem_imem_addr),
    .dmem_en(mem_dmem_en),
    .dmem_addr(mem_dmem_addr),
    .dmem_wdata(mem_dmem_wdata),
    .dmem_wmask(mem_dmem_wmask),
    .dmem_wen(mem_dmem_wen),
    .imem_data(mem_imem_data),
    .dmem_rdata(mem_dmem_rdata)
  );
  assign io_imem_rdata = {{32'd0}, mem_imem_data}; // @[Ram.scala 43:21]
  assign io_dmem_rdata = mem_dmem_rdata; // @[Ram.scala 46:21]
  assign mem_clk = clock; // @[Ram.scala 40:21]
  assign mem_imem_en = 1'h1; // @[Ram.scala 41:21]
  assign mem_imem_addr = io_imem_addr; // @[Ram.scala 42:21]
  assign mem_dmem_en = io_dmem_en; // @[Ram.scala 44:21]
  assign mem_dmem_addr = io_dmem_addr; // @[Ram.scala 45:21]
  assign mem_dmem_wdata = io_dmem_wdata; // @[Ram.scala 47:21]
  assign mem_dmem_wmask = io_dmem_wmask; // @[Ram.scala 48:21]
  assign mem_dmem_wen = io_dmem_wen; // @[Ram.scala 49:21]
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
  wire  core_io_dmem_en; // @[SimTop.scala 12:20]
  wire [63:0] core_io_dmem_addr; // @[SimTop.scala 12:20]
  wire [63:0] core_io_dmem_rdata; // @[SimTop.scala 12:20]
  wire [63:0] core_io_dmem_wdata; // @[SimTop.scala 12:20]
  wire [63:0] core_io_dmem_wmask; // @[SimTop.scala 12:20]
  wire  core_io_dmem_wen; // @[SimTop.scala 12:20]
  wire  mem_clock; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_imem_addr; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_imem_rdata; // @[SimTop.scala 14:19]
  wire  mem_io_dmem_en; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_dmem_addr; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_dmem_rdata; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_dmem_wdata; // @[SimTop.scala 14:19]
  wire [63:0] mem_io_dmem_wmask; // @[SimTop.scala 14:19]
  wire  mem_io_dmem_wen; // @[SimTop.scala 14:19]
  Core core ( // @[SimTop.scala 12:20]
    .clock(core_clock),
    .reset(core_reset),
    .io_imem_addr(core_io_imem_addr),
    .io_imem_rdata(core_io_imem_rdata),
    .io_dmem_en(core_io_dmem_en),
    .io_dmem_addr(core_io_dmem_addr),
    .io_dmem_rdata(core_io_dmem_rdata),
    .io_dmem_wdata(core_io_dmem_wdata),
    .io_dmem_wmask(core_io_dmem_wmask),
    .io_dmem_wen(core_io_dmem_wen)
  );
  Ram2r1w mem ( // @[SimTop.scala 14:19]
    .clock(mem_clock),
    .io_imem_addr(mem_io_imem_addr),
    .io_imem_rdata(mem_io_imem_rdata),
    .io_dmem_en(mem_io_dmem_en),
    .io_dmem_addr(mem_io_dmem_addr),
    .io_dmem_rdata(mem_io_dmem_rdata),
    .io_dmem_wdata(mem_io_dmem_wdata),
    .io_dmem_wmask(mem_io_dmem_wmask),
    .io_dmem_wen(mem_io_dmem_wen)
  );
  assign io_uart_out_valid = 1'h0; // @[SimTop.scala 18:21]
  assign io_uart_out_ch = 8'h0; // @[SimTop.scala 19:18]
  assign io_uart_in_valid = 1'h0; // @[SimTop.scala 20:20]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_imem_rdata = mem_io_imem_rdata; // @[SimTop.scala 15:15]
  assign core_io_dmem_rdata = mem_io_dmem_rdata; // @[SimTop.scala 16:15]
  assign mem_clock = clock;
  assign mem_io_imem_addr = core_io_imem_addr; // @[SimTop.scala 15:15]
  assign mem_io_dmem_en = core_io_dmem_en; // @[SimTop.scala 16:15]
  assign mem_io_dmem_addr = core_io_dmem_addr; // @[SimTop.scala 16:15]
  assign mem_io_dmem_wdata = core_io_dmem_wdata; // @[SimTop.scala 16:15]
  assign mem_io_dmem_wmask = core_io_dmem_wmask; // @[SimTop.scala 16:15]
  assign mem_io_dmem_wen = core_io_dmem_wen; // @[SimTop.scala 16:15]
endmodule
