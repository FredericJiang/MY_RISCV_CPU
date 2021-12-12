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
  output [2:0]  io_wb_type
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
  wire [4:0] _ctrl_T_194 = _ctrl_T_97 ? 5'h10 : 5'h0; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_195 = _ctrl_T_95 ? 5'hf : _ctrl_T_194; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_196 = _ctrl_T_93 ? 5'he : _ctrl_T_195; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_197 = _ctrl_T_91 ? 5'h11 : _ctrl_T_196; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_198 = _ctrl_T_89 ? 5'h10 : _ctrl_T_197; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_199 = _ctrl_T_87 ? 5'hf : _ctrl_T_198; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_200 = _ctrl_T_85 ? 5'he : _ctrl_T_199; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_201 = _ctrl_T_83 ? 5'hd : _ctrl_T_200; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_202 = _ctrl_T_81 ? 5'hd : _ctrl_T_201; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_203 = _ctrl_T_79 ? 5'h1 : _ctrl_T_202; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_204 = _ctrl_T_77 ? 5'h1 : _ctrl_T_203; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_205 = _ctrl_T_75 ? 5'hc : _ctrl_T_204; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_206 = _ctrl_T_73 ? 5'h4 : _ctrl_T_205; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_207 = _ctrl_T_71 ? 5'hb : _ctrl_T_206; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_208 = _ctrl_T_69 ? 5'h3 : _ctrl_T_207; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_209 = _ctrl_T_67 ? 5'h5 : _ctrl_T_208; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_210 = _ctrl_T_65 ? 5'h2 : _ctrl_T_209; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_211 = _ctrl_T_63 ? 5'h1 : _ctrl_T_210; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_212 = _ctrl_T_61 ? 5'h12 : _ctrl_T_211; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_213 = _ctrl_T_59 ? 5'h1 : _ctrl_T_212; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_214 = _ctrl_T_57 ? 5'h1 : _ctrl_T_213; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_215 = _ctrl_T_55 ? 5'h1 : _ctrl_T_214; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_216 = _ctrl_T_53 ? 5'h1 : _ctrl_T_215; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_217 = _ctrl_T_51 ? 5'h1 : _ctrl_T_216; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_218 = _ctrl_T_49 ? 5'h1 : _ctrl_T_217; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_219 = _ctrl_T_47 ? 5'h1 : _ctrl_T_218; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_220 = _ctrl_T_45 ? 5'h1 : _ctrl_T_219; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_221 = _ctrl_T_43 ? 5'h1 : _ctrl_T_220; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_222 = _ctrl_T_41 ? 5'h1 : _ctrl_T_221; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_223 = _ctrl_T_39 ? 5'h1 : _ctrl_T_222; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_224 = _ctrl_T_37 ? 5'h7 : _ctrl_T_223; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_225 = _ctrl_T_35 ? 5'h6 : _ctrl_T_224; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_226 = _ctrl_T_33 ? 5'ha : _ctrl_T_225; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_227 = _ctrl_T_31 ? 5'h9 : _ctrl_T_226; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_228 = _ctrl_T_29 ? 5'h5 : _ctrl_T_227; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_229 = _ctrl_T_27 ? 5'h4 : _ctrl_T_228; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_230 = _ctrl_T_25 ? 5'h3 : _ctrl_T_229; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_231 = _ctrl_T_23 ? 5'h8 : _ctrl_T_230; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_232 = _ctrl_T_21 ? 5'h1 : _ctrl_T_231; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_233 = _ctrl_T_19 ? 5'h7 : _ctrl_T_232; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_234 = _ctrl_T_17 ? 5'h6 : _ctrl_T_233; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_235 = _ctrl_T_15 ? 5'ha : _ctrl_T_234; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_236 = _ctrl_T_13 ? 5'h9 : _ctrl_T_235; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_237 = _ctrl_T_11 ? 5'h5 : _ctrl_T_236; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_238 = _ctrl_T_9 ? 5'h4 : _ctrl_T_237; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_239 = _ctrl_T_7 ? 5'h3 : _ctrl_T_238; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_240 = _ctrl_T_5 ? 5'h8 : _ctrl_T_239; // @[Lookup.scala 33:37]
  wire [4:0] _ctrl_T_241 = _ctrl_T_3 ? 5'h2 : _ctrl_T_240; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_242 = _ctrl_T_97 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_243 = _ctrl_T_95 ? 3'h1 : _ctrl_T_242; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_244 = _ctrl_T_93 ? 3'h1 : _ctrl_T_243; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_245 = _ctrl_T_91 ? 3'h1 : _ctrl_T_244; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_246 = _ctrl_T_89 ? 3'h1 : _ctrl_T_245; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_247 = _ctrl_T_87 ? 3'h1 : _ctrl_T_246; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_248 = _ctrl_T_85 ? 3'h1 : _ctrl_T_247; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_249 = _ctrl_T_83 ? 3'h1 : _ctrl_T_248; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_250 = _ctrl_T_81 ? 3'h1 : _ctrl_T_249; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_251 = _ctrl_T_79 ? 3'h3 : _ctrl_T_250; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_252 = _ctrl_T_77 ? 3'h3 : _ctrl_T_251; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_253 = _ctrl_T_75 ? 3'h1 : _ctrl_T_252; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_254 = _ctrl_T_73 ? 3'h1 : _ctrl_T_253; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_255 = _ctrl_T_71 ? 3'h1 : _ctrl_T_254; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_256 = _ctrl_T_69 ? 3'h1 : _ctrl_T_255; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_257 = _ctrl_T_67 ? 3'h1 : _ctrl_T_256; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_258 = _ctrl_T_65 ? 3'h1 : _ctrl_T_257; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_259 = _ctrl_T_63 ? 3'h3 : _ctrl_T_258; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_260 = _ctrl_T_61 ? 3'h0 : _ctrl_T_259; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_261 = _ctrl_T_59 ? 3'h1 : _ctrl_T_260; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_262 = _ctrl_T_57 ? 3'h1 : _ctrl_T_261; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_263 = _ctrl_T_55 ? 3'h1 : _ctrl_T_262; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_264 = _ctrl_T_53 ? 3'h1 : _ctrl_T_263; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_265 = _ctrl_T_51 ? 3'h1 : _ctrl_T_264; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_266 = _ctrl_T_49 ? 3'h1 : _ctrl_T_265; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_267 = _ctrl_T_47 ? 3'h1 : _ctrl_T_266; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_268 = _ctrl_T_45 ? 3'h1 : _ctrl_T_267; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_269 = _ctrl_T_43 ? 3'h1 : _ctrl_T_268; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_270 = _ctrl_T_41 ? 3'h1 : _ctrl_T_269; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_271 = _ctrl_T_39 ? 3'h1 : _ctrl_T_270; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_272 = _ctrl_T_37 ? 3'h1 : _ctrl_T_271; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_273 = _ctrl_T_35 ? 3'h1 : _ctrl_T_272; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_274 = _ctrl_T_33 ? 3'h1 : _ctrl_T_273; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_275 = _ctrl_T_31 ? 3'h1 : _ctrl_T_274; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_276 = _ctrl_T_29 ? 3'h1 : _ctrl_T_275; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_277 = _ctrl_T_27 ? 3'h1 : _ctrl_T_276; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_278 = _ctrl_T_25 ? 3'h1 : _ctrl_T_277; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_279 = _ctrl_T_23 ? 3'h1 : _ctrl_T_278; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_280 = _ctrl_T_21 ? 3'h1 : _ctrl_T_279; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_281 = _ctrl_T_19 ? 3'h1 : _ctrl_T_280; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_282 = _ctrl_T_17 ? 3'h1 : _ctrl_T_281; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_283 = _ctrl_T_15 ? 3'h1 : _ctrl_T_282; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_284 = _ctrl_T_13 ? 3'h1 : _ctrl_T_283; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_285 = _ctrl_T_11 ? 3'h1 : _ctrl_T_284; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_286 = _ctrl_T_9 ? 3'h1 : _ctrl_T_285; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_287 = _ctrl_T_7 ? 3'h1 : _ctrl_T_286; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_288 = _ctrl_T_5 ? 3'h1 : _ctrl_T_287; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_289 = _ctrl_T_3 ? 3'h1 : _ctrl_T_288; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_294 = _ctrl_T_89 ? 3'h0 : _ctrl_T_245; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_295 = _ctrl_T_87 ? 3'h0 : _ctrl_T_294; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_296 = _ctrl_T_85 ? 3'h0 : _ctrl_T_295; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_297 = _ctrl_T_83 ? 3'h1 : _ctrl_T_296; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_298 = _ctrl_T_81 ? 3'h0 : _ctrl_T_297; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_299 = _ctrl_T_79 ? 3'h4 : _ctrl_T_298; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_300 = _ctrl_T_77 ? 3'h4 : _ctrl_T_299; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_301 = _ctrl_T_75 ? 3'h1 : _ctrl_T_300; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_302 = _ctrl_T_73 ? 3'h1 : _ctrl_T_301; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_303 = _ctrl_T_71 ? 3'h1 : _ctrl_T_302; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_304 = _ctrl_T_69 ? 3'h1 : _ctrl_T_303; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_305 = _ctrl_T_67 ? 3'h1 : _ctrl_T_304; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_306 = _ctrl_T_65 ? 3'h1 : _ctrl_T_305; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_307 = _ctrl_T_63 ? 3'h2 : _ctrl_T_306; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_308 = _ctrl_T_61 ? 3'h2 : _ctrl_T_307; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_309 = _ctrl_T_59 ? 3'h2 : _ctrl_T_308; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_310 = _ctrl_T_57 ? 3'h2 : _ctrl_T_309; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_311 = _ctrl_T_55 ? 3'h2 : _ctrl_T_310; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_312 = _ctrl_T_53 ? 3'h2 : _ctrl_T_311; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_313 = _ctrl_T_51 ? 3'h2 : _ctrl_T_312; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_314 = _ctrl_T_49 ? 3'h2 : _ctrl_T_313; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_315 = _ctrl_T_47 ? 3'h2 : _ctrl_T_314; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_316 = _ctrl_T_45 ? 3'h2 : _ctrl_T_315; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_317 = _ctrl_T_43 ? 3'h2 : _ctrl_T_316; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_318 = _ctrl_T_41 ? 3'h2 : _ctrl_T_317; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_319 = _ctrl_T_39 ? 3'h2 : _ctrl_T_318; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_320 = _ctrl_T_37 ? 3'h2 : _ctrl_T_319; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_321 = _ctrl_T_35 ? 3'h2 : _ctrl_T_320; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_322 = _ctrl_T_33 ? 3'h2 : _ctrl_T_321; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_323 = _ctrl_T_31 ? 3'h2 : _ctrl_T_322; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_324 = _ctrl_T_29 ? 3'h2 : _ctrl_T_323; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_325 = _ctrl_T_27 ? 3'h2 : _ctrl_T_324; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_326 = _ctrl_T_25 ? 3'h2 : _ctrl_T_325; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_327 = _ctrl_T_23 ? 3'h2 : _ctrl_T_326; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_328 = _ctrl_T_21 ? 3'h2 : _ctrl_T_327; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_329 = _ctrl_T_19 ? 3'h1 : _ctrl_T_328; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_330 = _ctrl_T_17 ? 3'h1 : _ctrl_T_329; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_331 = _ctrl_T_15 ? 3'h1 : _ctrl_T_330; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_332 = _ctrl_T_13 ? 3'h1 : _ctrl_T_331; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_333 = _ctrl_T_11 ? 3'h1 : _ctrl_T_332; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_334 = _ctrl_T_9 ? 3'h1 : _ctrl_T_333; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_335 = _ctrl_T_7 ? 3'h1 : _ctrl_T_334; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_336 = _ctrl_T_5 ? 3'h1 : _ctrl_T_335; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_337 = _ctrl_T_3 ? 3'h1 : _ctrl_T_336; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_342 = _ctrl_T_89 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_343 = _ctrl_T_87 ? 3'h1 : _ctrl_T_342; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_344 = _ctrl_T_85 ? 3'h1 : _ctrl_T_343; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_345 = _ctrl_T_83 ? 3'h0 : _ctrl_T_344; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_346 = _ctrl_T_81 ? 3'h1 : _ctrl_T_345; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_347 = _ctrl_T_79 ? 3'h1 : _ctrl_T_346; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_348 = _ctrl_T_77 ? 3'h5 : _ctrl_T_347; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_349 = _ctrl_T_75 ? 3'h3 : _ctrl_T_348; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_350 = _ctrl_T_73 ? 3'h3 : _ctrl_T_349; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_351 = _ctrl_T_71 ? 3'h3 : _ctrl_T_350; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_352 = _ctrl_T_69 ? 3'h3 : _ctrl_T_351; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_353 = _ctrl_T_67 ? 3'h3 : _ctrl_T_352; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_354 = _ctrl_T_65 ? 3'h3 : _ctrl_T_353; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_355 = _ctrl_T_63 ? 3'h4 : _ctrl_T_354; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_356 = _ctrl_T_61 ? 3'h4 : _ctrl_T_355; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_357 = _ctrl_T_59 ? 3'h2 : _ctrl_T_356; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_358 = _ctrl_T_57 ? 3'h2 : _ctrl_T_357; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_359 = _ctrl_T_55 ? 3'h2 : _ctrl_T_358; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_360 = _ctrl_T_53 ? 3'h2 : _ctrl_T_359; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_361 = _ctrl_T_51 ? 3'h1 : _ctrl_T_360; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_362 = _ctrl_T_49 ? 3'h1 : _ctrl_T_361; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_363 = _ctrl_T_47 ? 3'h1 : _ctrl_T_362; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_364 = _ctrl_T_45 ? 3'h1 : _ctrl_T_363; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_365 = _ctrl_T_43 ? 3'h1 : _ctrl_T_364; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_366 = _ctrl_T_41 ? 3'h1 : _ctrl_T_365; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_367 = _ctrl_T_39 ? 3'h1 : _ctrl_T_366; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_368 = _ctrl_T_37 ? 3'h1 : _ctrl_T_367; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_369 = _ctrl_T_35 ? 3'h1 : _ctrl_T_368; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_370 = _ctrl_T_33 ? 3'h1 : _ctrl_T_369; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_371 = _ctrl_T_31 ? 3'h1 : _ctrl_T_370; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_372 = _ctrl_T_29 ? 3'h1 : _ctrl_T_371; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_373 = _ctrl_T_27 ? 3'h1 : _ctrl_T_372; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_374 = _ctrl_T_25 ? 3'h1 : _ctrl_T_373; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_375 = _ctrl_T_23 ? 3'h1 : _ctrl_T_374; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_376 = _ctrl_T_21 ? 3'h1 : _ctrl_T_375; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_377 = _ctrl_T_19 ? 3'h0 : _ctrl_T_376; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_378 = _ctrl_T_17 ? 3'h0 : _ctrl_T_377; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_379 = _ctrl_T_15 ? 3'h0 : _ctrl_T_378; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_380 = _ctrl_T_13 ? 3'h0 : _ctrl_T_379; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_381 = _ctrl_T_11 ? 3'h0 : _ctrl_T_380; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_382 = _ctrl_T_9 ? 3'h0 : _ctrl_T_381; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_383 = _ctrl_T_7 ? 3'h0 : _ctrl_T_382; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_384 = _ctrl_T_5 ? 3'h0 : _ctrl_T_383; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_385 = _ctrl_T_3 ? 3'h0 : _ctrl_T_384; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_409 = _ctrl_T_51 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_410 = _ctrl_T_49 ? 3'h6 : _ctrl_T_409; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_411 = _ctrl_T_47 ? 3'h5 : _ctrl_T_410; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_412 = _ctrl_T_45 ? 3'h4 : _ctrl_T_411; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_413 = _ctrl_T_43 ? 3'h3 : _ctrl_T_412; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_414 = _ctrl_T_41 ? 3'h2 : _ctrl_T_413; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_415 = _ctrl_T_39 ? 3'h1 : _ctrl_T_414; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_416 = _ctrl_T_37 ? 3'h0 : _ctrl_T_415; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_417 = _ctrl_T_35 ? 3'h0 : _ctrl_T_416; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_418 = _ctrl_T_33 ? 3'h0 : _ctrl_T_417; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_419 = _ctrl_T_31 ? 3'h0 : _ctrl_T_418; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_420 = _ctrl_T_29 ? 3'h0 : _ctrl_T_419; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_421 = _ctrl_T_27 ? 3'h0 : _ctrl_T_420; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_422 = _ctrl_T_25 ? 3'h0 : _ctrl_T_421; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_423 = _ctrl_T_23 ? 3'h0 : _ctrl_T_422; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_424 = _ctrl_T_21 ? 3'h0 : _ctrl_T_423; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_425 = _ctrl_T_19 ? 3'h0 : _ctrl_T_424; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_426 = _ctrl_T_17 ? 3'h0 : _ctrl_T_425; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_427 = _ctrl_T_15 ? 3'h0 : _ctrl_T_426; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_428 = _ctrl_T_13 ? 3'h0 : _ctrl_T_427; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_429 = _ctrl_T_11 ? 3'h0 : _ctrl_T_428; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_430 = _ctrl_T_9 ? 3'h0 : _ctrl_T_429; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_431 = _ctrl_T_7 ? 3'h0 : _ctrl_T_430; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_432 = _ctrl_T_5 ? 3'h0 : _ctrl_T_431; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_433 = _ctrl_T_3 ? 3'h0 : _ctrl_T_432; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_443 = _ctrl_T_79 ? 3'h1 : _ctrl_T_250; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_444 = _ctrl_T_77 ? 3'h1 : _ctrl_T_443; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_445 = _ctrl_T_75 ? 3'h0 : _ctrl_T_444; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_446 = _ctrl_T_73 ? 3'h0 : _ctrl_T_445; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_447 = _ctrl_T_71 ? 3'h0 : _ctrl_T_446; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_448 = _ctrl_T_69 ? 3'h0 : _ctrl_T_447; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_449 = _ctrl_T_67 ? 3'h0 : _ctrl_T_448; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_450 = _ctrl_T_65 ? 3'h0 : _ctrl_T_449; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_451 = _ctrl_T_63 ? 3'h1 : _ctrl_T_450; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_452 = _ctrl_T_61 ? 3'h1 : _ctrl_T_451; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_453 = _ctrl_T_59 ? 3'h5 : _ctrl_T_452; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_454 = _ctrl_T_57 ? 3'h4 : _ctrl_T_453; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_455 = _ctrl_T_55 ? 3'h3 : _ctrl_T_454; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_456 = _ctrl_T_53 ? 3'h2 : _ctrl_T_455; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_457 = _ctrl_T_51 ? 3'h1 : _ctrl_T_456; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_458 = _ctrl_T_49 ? 3'h1 : _ctrl_T_457; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_459 = _ctrl_T_47 ? 3'h1 : _ctrl_T_458; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_460 = _ctrl_T_45 ? 3'h1 : _ctrl_T_459; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_461 = _ctrl_T_43 ? 3'h1 : _ctrl_T_460; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_462 = _ctrl_T_41 ? 3'h1 : _ctrl_T_461; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_463 = _ctrl_T_39 ? 3'h1 : _ctrl_T_462; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_464 = _ctrl_T_37 ? 3'h1 : _ctrl_T_463; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_465 = _ctrl_T_35 ? 3'h1 : _ctrl_T_464; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_466 = _ctrl_T_33 ? 3'h1 : _ctrl_T_465; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_467 = _ctrl_T_31 ? 3'h1 : _ctrl_T_466; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_468 = _ctrl_T_29 ? 3'h1 : _ctrl_T_467; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_469 = _ctrl_T_27 ? 3'h1 : _ctrl_T_468; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_470 = _ctrl_T_25 ? 3'h1 : _ctrl_T_469; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_471 = _ctrl_T_23 ? 3'h1 : _ctrl_T_470; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_472 = _ctrl_T_21 ? 3'h1 : _ctrl_T_471; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_473 = _ctrl_T_19 ? 3'h1 : _ctrl_T_472; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_474 = _ctrl_T_17 ? 3'h1 : _ctrl_T_473; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_475 = _ctrl_T_15 ? 3'h1 : _ctrl_T_474; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_476 = _ctrl_T_13 ? 3'h1 : _ctrl_T_475; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_477 = _ctrl_T_11 ? 3'h1 : _ctrl_T_476; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_478 = _ctrl_T_9 ? 3'h1 : _ctrl_T_477; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_479 = _ctrl_T_7 ? 3'h1 : _ctrl_T_478; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_480 = _ctrl_T_5 ? 3'h1 : _ctrl_T_479; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_481 = _ctrl_T_3 ? 3'h1 : _ctrl_T_480; // @[Lookup.scala 33:37]
  assign io_alu_type = _ctrl_T_1 ? 5'h1 : _ctrl_T_241; // @[Lookup.scala 33:37]
  assign io_op1_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_289; // @[Lookup.scala 33:37]
  assign io_op2_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_337; // @[Lookup.scala 33:37]
  assign io_imm_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_385; // @[Lookup.scala 33:37]
  assign io_mem_rtype = _ctrl_T_1 ? 3'h0 : _ctrl_T_433; // @[Lookup.scala 33:37]
  assign io_wb_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_481; // @[Lookup.scala 33:37]
endmodule
module ImmGen(
  input  [2:0]  io_imm_type,
  input  [31:0] io_inst,
  output [63:0] io_imm
);
  wire [52:0] imm_i_hi = io_inst[31] ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12]
  wire [10:0] imm_i_lo = io_inst[30:20]; // @[ImmGen.scala 16:41]
  wire [63:0] imm_i = {imm_i_hi,imm_i_lo}; // @[Cat.scala 30:58]
  wire [5:0] imm_s_hi_lo = io_inst[30:25]; // @[ImmGen.scala 17:41]
  wire [4:0] imm_s_lo = io_inst[11:7]; // @[ImmGen.scala 17:55]
  wire [63:0] imm_s = {imm_i_hi,imm_s_hi_lo,imm_s_lo}; // @[Cat.scala 30:58]
  wire [51:0] imm_b_hi_hi_hi = io_inst[31] ? 52'hfffffffffffff : 52'h0; // @[Bitwise.scala 72:12]
  wire  imm_b_hi_hi_lo = io_inst[7]; // @[ImmGen.scala 18:41]
  wire [3:0] imm_b_lo_hi = io_inst[11:8]; // @[ImmGen.scala 18:64]
  wire [63:0] imm_b = {imm_b_hi_hi_hi,imm_b_hi_hi_lo,imm_s_hi_lo,imm_b_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [32:0] imm_u_hi_hi = io_inst[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [18:0] imm_u_hi_lo = io_inst[30:12]; // @[ImmGen.scala 19:41]
  wire [63:0] imm_u = {imm_u_hi_hi,imm_u_hi_lo,12'h0}; // @[Cat.scala 30:58]
  wire [43:0] imm_j_hi_hi_hi = io_inst[31] ? 44'hfffffffffff : 44'h0; // @[Bitwise.scala 72:12]
  wire [7:0] imm_j_hi_hi_lo = io_inst[19:12]; // @[ImmGen.scala 20:41]
  wire  imm_j_hi_lo = io_inst[20]; // @[ImmGen.scala 20:55]
  wire [9:0] imm_j_lo_hi = io_inst[30:21]; // @[ImmGen.scala 20:65]
  wire [63:0] imm_j = {imm_j_hi_hi_hi,imm_j_hi_hi_lo,imm_j_hi_lo,imm_j_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [63:0] _io_imm_T_1 = 3'h1 == io_imm_type ? imm_i : 64'h0; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_3 = 3'h2 == io_imm_type ? imm_s : _io_imm_T_1; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_5 = 3'h3 == io_imm_type ? imm_b : _io_imm_T_3; // @[Mux.scala 80:57]
  wire [63:0] _io_imm_T_7 = 3'h4 == io_imm_type ? imm_u : _io_imm_T_5; // @[Mux.scala 80:57]
  assign io_imm = 3'h5 == io_imm_type ? imm_j : _io_imm_T_7; // @[Mux.scala 80:57]
endmodule
module ALU(
  input  [4:0]  io_alu_type,
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_alu_out
);
  wire [5:0] shamt = io_in2[5:0]; // @[ALU.scala 24:12]
  wire  _T = 5'h1 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_1 = io_in1 + io_in2; // @[ALU.scala 28:30]
  wire  _T_1 = 5'hd == io_alu_type; // @[Conditional.scala 37:30]
  wire [32:0] alu_out_hi = _alu_out_T_1[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo = _alu_out_T_1[30:0]; // @[ALU.scala 29:62]
  wire [63:0] _alu_out_T_8 = {alu_out_hi,alu_out_lo}; // @[Cat.scala 30:58]
  wire  _T_2 = 5'h2 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_10 = io_in1 - io_in2; // @[ALU.scala 30:30]
  wire  _T_3 = 5'h11 == io_alu_type; // @[Conditional.scala 37:30]
  wire [32:0] alu_out_hi_1 = _alu_out_T_10[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_1 = _alu_out_T_10[30:0]; // @[ALU.scala 31:74]
  wire [63:0] _alu_out_T_13 = {alu_out_hi_1,alu_out_lo_1}; // @[Cat.scala 30:58]
  wire  _T_4 = 5'h3 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_14 = io_in1; // @[ALU.scala 32:31]
  wire [63:0] _alu_out_T_15 = io_in2; // @[ALU.scala 32:44]
  wire  _T_5 = 5'h4 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_6 = 5'h5 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_18 = io_in1 ^ io_in2; // @[ALU.scala 34:31]
  wire  _T_7 = 5'h6 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_19 = io_in1 | io_in2; // @[ALU.scala 35:31]
  wire  _T_8 = 5'h7 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_20 = io_in1 & io_in2; // @[ALU.scala 36:31]
  wire  _T_9 = 5'h8 == io_alu_type; // @[Conditional.scala 37:30]
  wire [126:0] _GEN_18 = {{63'd0}, io_in1}; // @[ALU.scala 37:31]
  wire [126:0] _alu_out_T_21 = _GEN_18 << shamt; // @[ALU.scala 37:31]
  wire  _T_10 = 5'he == io_alu_type; // @[Conditional.scala 37:30]
  wire [94:0] _GEN_19 = {{31'd0}, io_in1}; // @[ALU.scala 38:29]
  wire [94:0] x_1 = _GEN_19 << shamt[4:0]; // @[ALU.scala 38:29]
  wire [32:0] alu_out_hi_2 = x_1[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_2 = x_1[30:0]; // @[ALU.scala 38:85]
  wire [63:0] _alu_out_T_25 = {alu_out_hi_2,alu_out_lo_2}; // @[Cat.scala 30:58]
  wire  _T_11 = 5'h9 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_26 = io_in1 >> shamt; // @[ALU.scala 39:31]
  wire  _T_12 = 5'hf == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] x_2 = io_in1[31:0] >> shamt[4:0]; // @[ALU.scala 40:42]
  wire [31:0] alu_out_hi_3 = x_2[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _alu_out_T_29 = {alu_out_hi_3,x_2}; // @[Cat.scala 30:58]
  wire  _T_13 = 5'ha == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_32 = $signed(io_in1) >>> shamt; // @[ALU.scala 41:54]
  wire  _T_14 = 5'h10 == io_alu_type; // @[Conditional.scala 37:30]
  wire [31:0] _x_T_5 = io_in1[31:0]; // @[ALU.scala 42:35]
  wire [31:0] x_3 = $signed(_x_T_5) >>> shamt[4:0]; // @[ALU.scala 42:63]
  wire [32:0] alu_out_hi_4 = x_3[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_4 = x_3[30:0]; // @[ALU.scala 42:98]
  wire [63:0] _alu_out_T_35 = {alu_out_hi_4,alu_out_lo_4}; // @[Cat.scala 30:58]
  wire  _T_15 = 5'hb == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_16 = 5'hc == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _GEN_1 = _T_16 ? {{63'd0}, io_in1 >= io_in2} : io_in2; // @[Conditional.scala 39:67 ALU.scala 44:23]
  wire [63:0] _GEN_2 = _T_15 ? {{63'd0}, $signed(_alu_out_T_14) >= $signed(_alu_out_T_15)} : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 43:23]
  wire [63:0] _GEN_3 = _T_14 ? _alu_out_T_35 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 42:74]
  wire [63:0] _GEN_4 = _T_13 ? _alu_out_T_32 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 41:23]
  wire [63:0] _GEN_5 = _T_12 ? _alu_out_T_29 : _GEN_4; // @[Conditional.scala 39:67 ALU.scala 40:73]
  wire [63:0] _GEN_6 = _T_11 ? _alu_out_T_26 : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 39:23]
  wire [63:0] _GEN_7 = _T_10 ? _alu_out_T_25 : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 38:61]
  wire [63:0] _GEN_8 = _T_9 ? _alu_out_T_21[63:0] : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 37:23]
  wire [63:0] _GEN_9 = _T_8 ? _alu_out_T_20 : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 36:23]
  wire [63:0] _GEN_10 = _T_7 ? _alu_out_T_19 : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 35:23]
  wire [63:0] _GEN_11 = _T_6 ? _alu_out_T_18 : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 34:23]
  wire [63:0] _GEN_12 = _T_5 ? {{63'd0}, io_in1 < io_in2} : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 33:23]
  wire [63:0] _GEN_13 = _T_4 ? {{63'd0}, $signed(_alu_out_T_14) < $signed(_alu_out_T_15)} : _GEN_12; // @[Conditional.scala 39:67 ALU.scala 32:23]
  wire [63:0] _GEN_14 = _T_3 ? _alu_out_T_13 : _GEN_13; // @[Conditional.scala 39:67 ALU.scala 31:51]
  wire [63:0] _GEN_15 = _T_2 ? _alu_out_T_10 : _GEN_14; // @[Conditional.scala 39:67 ALU.scala 30:23]
  wire [63:0] _GEN_16 = _T_1 ? _alu_out_T_8 : _GEN_15; // @[Conditional.scala 39:67 ALU.scala 29:23]
  assign io_alu_out = _T ? _alu_out_T_1 : _GEN_16; // @[Conditional.scala 40:58 ALU.scala 28:23]
endmodule
module Nxt_PC(
  input  [31:0] io_pc,
  input  [63:0] io_imm,
  input  [63:0] io_rs1_data,
  input  [63:0] io_alu_out,
  input  [2:0]  io_op2_type,
  input  [2:0]  io_imm_type,
  input  [4:0]  io_alu_type,
  output [31:0] io_pc_nxt,
  output        io_pc_jmp
);
  wire  _T = io_imm_type == 3'h3; // @[NXT_PC.scala 24:18]
  wire [63:0] _GEN_10 = {{32'd0}, io_pc}; // @[NXT_PC.scala 26:22]
  wire [63:0] _io_pc_nxt_T_1 = _GEN_10 + io_imm; // @[NXT_PC.scala 26:22]
  wire  _T_10 = io_alu_out != 64'h0; // @[NXT_PC.scala 27:107]
  wire  _T_20 = io_op2_type == 3'h4 & io_imm_type == 3'h1; // @[NXT_PC.scala 37:33]
  wire [63:0] x = io_rs1_data + io_imm; // @[NXT_PC.scala 39:23]
  wire [62:0] io_pc_nxt_hi = x[63:1]; // @[NXT_PC.scala 40:21]
  wire [63:0] _io_pc_nxt_T_8 = {io_pc_nxt_hi,1'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_0 = io_op2_type == 3'h4 & io_imm_type == 3'h1 ? _io_pc_nxt_T_8 : 64'h0; // @[NXT_PC.scala 37:59 NXT_PC.scala 40:13 NXT_PC.scala 44:11]
  wire [63:0] _GEN_2 = io_imm_type == 3'h5 ? _io_pc_nxt_T_1 : _GEN_0; // @[NXT_PC.scala 34:34 NXT_PC.scala 36:13]
  wire  _GEN_3 = io_imm_type == 3'h5 | _T_20; // @[NXT_PC.scala 34:34 NXT_PC.scala 21:11]
  wire [63:0] _GEN_4 = _T & io_alu_type != 5'h2 & _T_10 ? _io_pc_nxt_T_1 : _GEN_2; // @[NXT_PC.scala 31:83 NXT_PC.scala 33:13]
  wire  _GEN_5 = _T & io_alu_type != 5'h2 & _T_10 | _GEN_3; // @[NXT_PC.scala 31:83 NXT_PC.scala 21:11]
  wire [63:0] _GEN_6 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 ? _io_pc_nxt_T_1 : _GEN_4; // @[NXT_PC.scala 27:115 NXT_PC.scala 29:12]
  wire  _GEN_7 = _T & (io_alu_type == 5'hb | io_alu_type == 5'hc) & io_alu_out != 64'h0 | _GEN_5; // @[NXT_PC.scala 27:115 NXT_PC.scala 21:11]
  wire [63:0] _GEN_8 = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 ? _io_pc_nxt_T_1 : _GEN_6; // @[NXT_PC.scala 24:77 NXT_PC.scala 26:13]
  assign io_pc_nxt = _GEN_8[31:0];
  assign io_pc_jmp = io_imm_type == 3'h3 & io_alu_type == 5'h2 & io_alu_out == 64'h0 | _GEN_7; // @[NXT_PC.scala 24:77 NXT_PC.scala 21:11]
endmodule
module LSU(
  input  [2:0]  io_mem_rtype,
  input  [2:0]  io_wb_type,
  input  [63:0] io_dmem_addr,
  input  [63:0] io_dmem_rdata,
  input  [63:0] io_rs2_data,
  output [63:0] io_rd_data,
  output [63:0] io_dmem_wmask,
  output [63:0] io_dmem_wdata
);
  wire  _T_3 = 3'h1 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _rd_data_T_1 = io_dmem_addr[2:0] == 3'h0; // @[LSU.scala 49:34]
  wire [55:0] rd_data_hi = io_dmem_rdata[7] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo = io_dmem_rdata[7:0]; // @[LSU.scala 49:91]
  wire [63:0] _rd_data_T_4 = {rd_data_hi,rd_data_lo}; // @[Cat.scala 30:58]
  wire  _rd_data_T_6 = io_dmem_addr[2:0] == 3'h1; // @[LSU.scala 50:34]
  wire [55:0] rd_data_hi_1 = io_dmem_rdata[15] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_1 = io_dmem_rdata[15:8]; // @[LSU.scala 50:91]
  wire [63:0] _rd_data_T_9 = {rd_data_hi_1,rd_data_lo_1}; // @[Cat.scala 30:58]
  wire  _rd_data_T_11 = io_dmem_addr[2:0] == 3'h2; // @[LSU.scala 51:34]
  wire [55:0] rd_data_hi_2 = io_dmem_rdata[23] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_2 = io_dmem_rdata[23:16]; // @[LSU.scala 51:91]
  wire [63:0] _rd_data_T_14 = {rd_data_hi_2,rd_data_lo_2}; // @[Cat.scala 30:58]
  wire  _rd_data_T_16 = io_dmem_addr[2:0] == 3'h3; // @[LSU.scala 52:34]
  wire [55:0] rd_data_hi_3 = io_dmem_rdata[31] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_3 = io_dmem_rdata[31:24]; // @[LSU.scala 52:91]
  wire [63:0] _rd_data_T_19 = {rd_data_hi_3,rd_data_lo_3}; // @[Cat.scala 30:58]
  wire  _rd_data_T_21 = io_dmem_addr[2:0] == 3'h4; // @[LSU.scala 53:34]
  wire [55:0] rd_data_hi_4 = io_dmem_rdata[39] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_4 = io_dmem_rdata[39:32]; // @[LSU.scala 53:91]
  wire [63:0] _rd_data_T_24 = {rd_data_hi_4,rd_data_lo_4}; // @[Cat.scala 30:58]
  wire  _rd_data_T_26 = io_dmem_addr[2:0] == 3'h5; // @[LSU.scala 54:34]
  wire [55:0] rd_data_hi_5 = io_dmem_rdata[47] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_5 = io_dmem_rdata[47:40]; // @[LSU.scala 54:91]
  wire [63:0] _rd_data_T_29 = {rd_data_hi_5,rd_data_lo_5}; // @[Cat.scala 30:58]
  wire  _rd_data_T_31 = io_dmem_addr[2:0] == 3'h6; // @[LSU.scala 55:34]
  wire [55:0] rd_data_hi_6 = io_dmem_rdata[55] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_6 = io_dmem_rdata[55:48]; // @[LSU.scala 55:91]
  wire [63:0] _rd_data_T_34 = {rd_data_hi_6,rd_data_lo_6}; // @[Cat.scala 30:58]
  wire  _rd_data_T_36 = io_dmem_addr[2:0] == 3'h7; // @[LSU.scala 56:34]
  wire [55:0] rd_data_hi_7 = io_dmem_rdata[63] ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12]
  wire [7:0] rd_data_lo_7 = io_dmem_rdata[63:56]; // @[LSU.scala 56:91]
  wire [63:0] _rd_data_T_39 = {rd_data_hi_7,rd_data_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_40 = _rd_data_T_36 ? _rd_data_T_39 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_41 = _rd_data_T_31 ? _rd_data_T_34 : _rd_data_T_40; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_42 = _rd_data_T_26 ? _rd_data_T_29 : _rd_data_T_41; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_43 = _rd_data_T_21 ? _rd_data_T_24 : _rd_data_T_42; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_44 = _rd_data_T_16 ? _rd_data_T_19 : _rd_data_T_43; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_45 = _rd_data_T_11 ? _rd_data_T_14 : _rd_data_T_44; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_46 = _rd_data_T_6 ? _rd_data_T_9 : _rd_data_T_45; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_47 = _rd_data_T_1 ? _rd_data_T_4 : _rd_data_T_46; // @[Mux.scala 98:16]
  wire  _T_4 = 3'h2 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _rd_data_T_49 = io_dmem_addr[2:1] == 2'h0; // @[LSU.scala 63:34]
  wire [47:0] rd_data_hi_8 = io_dmem_rdata[15] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] rd_data_lo_8 = io_dmem_rdata[15:0]; // @[LSU.scala 63:90]
  wire [63:0] _rd_data_T_52 = {rd_data_hi_8,rd_data_lo_8}; // @[Cat.scala 30:58]
  wire  _rd_data_T_54 = io_dmem_addr[2:1] == 2'h1; // @[LSU.scala 64:34]
  wire [47:0] rd_data_hi_9 = io_dmem_rdata[31] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] rd_data_lo_9 = io_dmem_rdata[31:16]; // @[LSU.scala 64:90]
  wire [63:0] _rd_data_T_57 = {rd_data_hi_9,rd_data_lo_9}; // @[Cat.scala 30:58]
  wire  _rd_data_T_59 = io_dmem_addr[2:1] == 2'h2; // @[LSU.scala 65:34]
  wire [47:0] rd_data_hi_10 = io_dmem_rdata[47] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] rd_data_lo_10 = io_dmem_rdata[47:32]; // @[LSU.scala 65:90]
  wire [63:0] _rd_data_T_62 = {rd_data_hi_10,rd_data_lo_10}; // @[Cat.scala 30:58]
  wire  _rd_data_T_64 = io_dmem_addr[2:1] == 2'h3; // @[LSU.scala 66:34]
  wire [47:0] rd_data_hi_11 = io_dmem_rdata[63] ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12]
  wire [15:0] rd_data_lo_11 = io_dmem_rdata[63:48]; // @[LSU.scala 66:90]
  wire [63:0] _rd_data_T_67 = {rd_data_hi_11,rd_data_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_68 = _rd_data_T_64 ? _rd_data_T_67 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_69 = _rd_data_T_59 ? _rd_data_T_62 : _rd_data_T_68; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_70 = _rd_data_T_54 ? _rd_data_T_57 : _rd_data_T_69; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_71 = _rd_data_T_49 ? _rd_data_T_52 : _rd_data_T_70; // @[Mux.scala 98:16]
  wire  _T_5 = 3'h3 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _rd_data_T_73 = ~io_dmem_addr[2]; // @[LSU.scala 75:32]
  wire [31:0] rd_data_hi_12 = io_dmem_rdata[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] rd_data_lo_12 = io_dmem_rdata[31:0]; // @[LSU.scala 75:86]
  wire [63:0] _rd_data_T_76 = {rd_data_hi_12,rd_data_lo_12}; // @[Cat.scala 30:58]
  wire [31:0] rd_data_hi_13 = io_dmem_rdata[63] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] rd_data_lo_13 = io_dmem_rdata[63:32]; // @[LSU.scala 76:86]
  wire [63:0] _rd_data_T_81 = {rd_data_hi_13,rd_data_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_82 = io_dmem_addr[2] ? _rd_data_T_81 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_83 = _rd_data_T_73 ? _rd_data_T_76 : _rd_data_T_82; // @[Mux.scala 98:16]
  wire  _T_6 = 3'h4 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_7 = 3'h5 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _rd_data_T_86 = {56'h0,rd_data_lo}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_89 = {56'h0,rd_data_lo_1}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_92 = {56'h0,rd_data_lo_2}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_95 = {56'h0,rd_data_lo_3}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_98 = {56'h0,rd_data_lo_4}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_101 = {56'h0,rd_data_lo_5}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_104 = {56'h0,rd_data_lo_6}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_107 = {56'h0,rd_data_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_108 = _rd_data_T_36 ? _rd_data_T_107 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_109 = _rd_data_T_31 ? _rd_data_T_104 : _rd_data_T_108; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_110 = _rd_data_T_26 ? _rd_data_T_101 : _rd_data_T_109; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_111 = _rd_data_T_21 ? _rd_data_T_98 : _rd_data_T_110; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_112 = _rd_data_T_16 ? _rd_data_T_95 : _rd_data_T_111; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_113 = _rd_data_T_11 ? _rd_data_T_92 : _rd_data_T_112; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_114 = _rd_data_T_6 ? _rd_data_T_89 : _rd_data_T_113; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_115 = _rd_data_T_1 ? _rd_data_T_86 : _rd_data_T_114; // @[Mux.scala 98:16]
  wire  _T_8 = 3'h6 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _rd_data_T_118 = {48'h0,rd_data_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_121 = {48'h0,rd_data_lo_9}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_124 = {48'h0,rd_data_lo_10}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_127 = {48'h0,rd_data_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_128 = _rd_data_T_64 ? _rd_data_T_127 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_129 = _rd_data_T_59 ? _rd_data_T_124 : _rd_data_T_128; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_130 = _rd_data_T_54 ? _rd_data_T_121 : _rd_data_T_129; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_131 = _rd_data_T_49 ? _rd_data_T_118 : _rd_data_T_130; // @[Mux.scala 98:16]
  wire  _T_9 = 3'h7 == io_mem_rtype; // @[Conditional.scala 37:30]
  wire [63:0] _rd_data_T_134 = {32'h0,rd_data_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_137 = {32'h0,rd_data_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _rd_data_T_138 = io_dmem_addr[2] ? _rd_data_T_137 : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] _rd_data_T_139 = _rd_data_T_73 ? _rd_data_T_134 : _rd_data_T_138; // @[Mux.scala 98:16]
  wire [63:0] _GEN_0 = _T_9 ? _rd_data_T_139 : 64'h0; // @[Conditional.scala 39:67 LSU.scala 106:8 LSU.scala 36:13]
  wire [63:0] _GEN_1 = _T_8 ? _rd_data_T_131 : _GEN_0; // @[Conditional.scala 39:67 LSU.scala 97:8]
  wire [63:0] _GEN_2 = _T_7 ? _rd_data_T_115 : _GEN_1; // @[Conditional.scala 39:67 LSU.scala 84:8]
  wire [63:0] _GEN_3 = _T_6 ? io_dmem_rdata : _GEN_2; // @[Conditional.scala 39:67 LSU.scala 80:20]
  wire [63:0] _GEN_4 = _T_5 ? _rd_data_T_83 : _GEN_3; // @[Conditional.scala 39:67 LSU.scala 74:8]
  wire [63:0] _GEN_5 = _T_4 ? _rd_data_T_71 : _GEN_4; // @[Conditional.scala 39:67 LSU.scala 62:8]
  wire [63:0] _GEN_6 = _T_3 ? _rd_data_T_47 : _GEN_5; // @[Conditional.scala 40:58 LSU.scala 48:8]
  wire [7:0] dmem_wdata_lo = io_rs2_data[7:0]; // @[LSU.scala 119:40]
  wire [63:0] _dmem_wdata_T = {56'h0,dmem_wdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_1 = {48'h0,dmem_wdata_lo,8'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_2 = {40'h0,dmem_wdata_lo,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_3 = {32'h0,dmem_wdata_lo,24'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_4 = {24'h0,dmem_wdata_lo,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_5 = {16'h0,dmem_wdata_lo,40'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_6 = {8'h0,dmem_wdata_lo,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_7 = {dmem_wdata_lo,56'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_8 = _rd_data_T_36 ? 64'hff00000000000000 : 64'h0; // @[LSU.scala 138:38 LSU.scala 139:12 LSU.scala 35:13]
  wire [63:0] _GEN_9 = _rd_data_T_36 ? _dmem_wdata_T_7 : 64'h0; // @[LSU.scala 138:38 LSU.scala 140:11 LSU.scala 34:13]
  wire [63:0] _GEN_10 = _rd_data_T_31 ? 64'hff000000000000 : _GEN_8; // @[LSU.scala 135:38 LSU.scala 136:12]
  wire [63:0] _GEN_11 = _rd_data_T_31 ? _dmem_wdata_T_6 : _GEN_9; // @[LSU.scala 135:38 LSU.scala 137:11]
  wire [63:0] _GEN_12 = _rd_data_T_26 ? 64'hff0000000000 : _GEN_10; // @[LSU.scala 132:38 LSU.scala 133:12]
  wire [63:0] _GEN_13 = _rd_data_T_26 ? _dmem_wdata_T_5 : _GEN_11; // @[LSU.scala 132:38 LSU.scala 134:11]
  wire [63:0] _GEN_14 = _rd_data_T_21 ? 64'hff00000000 : _GEN_12; // @[LSU.scala 129:38 LSU.scala 130:12]
  wire [63:0] _GEN_15 = _rd_data_T_21 ? _dmem_wdata_T_4 : _GEN_13; // @[LSU.scala 129:38 LSU.scala 131:11]
  wire [63:0] _GEN_16 = _rd_data_T_16 ? 64'hff000000 : _GEN_14; // @[LSU.scala 126:38 LSU.scala 127:12]
  wire [63:0] _GEN_17 = _rd_data_T_16 ? _dmem_wdata_T_3 : _GEN_15; // @[LSU.scala 126:38 LSU.scala 128:11]
  wire [63:0] _GEN_18 = _rd_data_T_11 ? 64'hff0000 : _GEN_16; // @[LSU.scala 123:38 LSU.scala 124:12]
  wire [63:0] _GEN_19 = _rd_data_T_11 ? _dmem_wdata_T_2 : _GEN_17; // @[LSU.scala 123:38 LSU.scala 125:11]
  wire [63:0] _GEN_20 = _rd_data_T_6 ? 64'hff00 : _GEN_18; // @[LSU.scala 120:38 LSU.scala 121:12]
  wire [63:0] _GEN_21 = _rd_data_T_6 ? _dmem_wdata_T_1 : _GEN_19; // @[LSU.scala 120:38 LSU.scala 122:11]
  wire [63:0] _GEN_22 = _rd_data_T_1 ? 64'hff : _GEN_20; // @[LSU.scala 117:32 LSU.scala 118:12]
  wire [63:0] _GEN_23 = _rd_data_T_1 ? _dmem_wdata_T : _GEN_21; // @[LSU.scala 117:32 LSU.scala 119:11]
  wire [15:0] dmem_wdata_lo_8 = io_rs2_data[15:0]; // @[LSU.scala 147:40]
  wire [63:0] _dmem_wdata_T_8 = {48'h0,dmem_wdata_lo_8}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_9 = {32'h0,dmem_wdata_lo_8,16'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_10 = {16'h0,dmem_wdata_lo_8,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_11 = {dmem_wdata_lo_8,48'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_24 = _rd_data_T_64 ? 64'hffff000000000000 : 64'h0; // @[LSU.scala 154:37 LSU.scala 155:12 LSU.scala 35:13]
  wire [63:0] _GEN_25 = _rd_data_T_64 ? _dmem_wdata_T_11 : 64'h0; // @[LSU.scala 154:37 LSU.scala 156:11 LSU.scala 34:13]
  wire [63:0] _GEN_26 = _rd_data_T_59 ? 64'hffff00000000 : _GEN_24; // @[LSU.scala 151:37 LSU.scala 152:12]
  wire [63:0] _GEN_27 = _rd_data_T_59 ? _dmem_wdata_T_10 : _GEN_25; // @[LSU.scala 151:37 LSU.scala 153:11]
  wire [63:0] _GEN_28 = _rd_data_T_54 ? 64'hffff0000 : _GEN_26; // @[LSU.scala 148:37 LSU.scala 149:12]
  wire [63:0] _GEN_29 = _rd_data_T_54 ? _dmem_wdata_T_9 : _GEN_27; // @[LSU.scala 148:37 LSU.scala 150:11]
  wire [63:0] _GEN_30 = _rd_data_T_49 ? 64'hffff : _GEN_28; // @[LSU.scala 145:31 LSU.scala 146:12]
  wire [63:0] _GEN_31 = _rd_data_T_49 ? _dmem_wdata_T_8 : _GEN_29; // @[LSU.scala 145:31 LSU.scala 147:11]
  wire [31:0] dmem_wdata_lo_12 = io_rs2_data[31:0]; // @[LSU.scala 165:40]
  wire [63:0] _dmem_wdata_T_12 = {32'h0,dmem_wdata_lo_12}; // @[Cat.scala 30:58]
  wire [63:0] _dmem_wdata_T_13 = {dmem_wdata_lo_12,32'h0}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_32 = io_dmem_addr[2] ? 64'hffffffff00000000 : 64'h0; // @[LSU.scala 166:34 LSU.scala 167:12 LSU.scala 35:13]
  wire [63:0] _GEN_33 = io_dmem_addr[2] ? _dmem_wdata_T_13 : 64'h0; // @[LSU.scala 166:34 LSU.scala 168:11 LSU.scala 34:13]
  wire [63:0] _GEN_34 = _rd_data_T_73 ? 64'hffffffff : _GEN_32; // @[LSU.scala 163:28 LSU.scala 164:12]
  wire [63:0] _GEN_35 = _rd_data_T_73 ? _dmem_wdata_T_12 : _GEN_33; // @[LSU.scala 163:28 LSU.scala 165:11]
  wire [63:0] _GEN_36 = io_wb_type == 3'h5 ? 64'hffffffffffffffff : 64'h0; // @[LSU.scala 172:36 LSU.scala 174:12 LSU.scala 35:13]
  wire [63:0] _GEN_37 = io_wb_type == 3'h5 ? io_rs2_data : 64'h0; // @[LSU.scala 172:36 LSU.scala 175:11 LSU.scala 34:13]
  wire [63:0] _GEN_38 = io_wb_type == 3'h4 ? _GEN_34 : _GEN_36; // @[LSU.scala 160:36]
  wire [63:0] _GEN_39 = io_wb_type == 3'h4 ? _GEN_35 : _GEN_37; // @[LSU.scala 160:36]
  wire [63:0] _GEN_40 = io_wb_type == 3'h3 ? _GEN_30 : _GEN_38; // @[LSU.scala 143:36]
  wire [63:0] _GEN_41 = io_wb_type == 3'h3 ? _GEN_31 : _GEN_39; // @[LSU.scala 143:36]
  assign io_rd_data = io_wb_type == 3'h1 & io_mem_rtype != 3'h0 ? _GEN_6 : 64'h0; // @[LSU.scala 41:54 LSU.scala 36:13]
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
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  wire  regfile_clock; // @[Core.scala 175:21]
  wire  regfile_reset; // @[Core.scala 175:21]
  wire [4:0] regfile_io_rs1_addr; // @[Core.scala 175:21]
  wire [4:0] regfile_io_rs2_addr; // @[Core.scala 175:21]
  wire [63:0] regfile_io_rs1_data; // @[Core.scala 175:21]
  wire [63:0] regfile_io_rs2_data; // @[Core.scala 175:21]
  wire [4:0] regfile_io_rd_addr; // @[Core.scala 175:21]
  wire [63:0] regfile_io_rd_data; // @[Core.scala 175:21]
  wire  regfile_io_rd_en; // @[Core.scala 175:21]
  wire [63:0] regfile_rf_10; // @[Core.scala 175:21]
  wire [31:0] decode_io_inst; // @[Core.scala 181:20]
  wire [4:0] decode_io_alu_type; // @[Core.scala 181:20]
  wire [2:0] decode_io_op1_type; // @[Core.scala 181:20]
  wire [2:0] decode_io_op2_type; // @[Core.scala 181:20]
  wire [2:0] decode_io_imm_type; // @[Core.scala 181:20]
  wire [2:0] decode_io_mem_rtype; // @[Core.scala 181:20]
  wire [2:0] decode_io_wb_type; // @[Core.scala 181:20]
  wire [2:0] imm_gen_io_imm_type; // @[Core.scala 186:21]
  wire [31:0] imm_gen_io_inst; // @[Core.scala 186:21]
  wire [63:0] imm_gen_io_imm; // @[Core.scala 186:21]
  wire [4:0] alu_io_alu_type; // @[Core.scala 291:17]
  wire [63:0] alu_io_in1; // @[Core.scala 291:17]
  wire [63:0] alu_io_in2; // @[Core.scala 291:17]
  wire [63:0] alu_io_alu_out; // @[Core.scala 291:17]
  wire [31:0] nxt_pc_io_pc; // @[Core.scala 298:20]
  wire [63:0] nxt_pc_io_imm; // @[Core.scala 298:20]
  wire [63:0] nxt_pc_io_rs1_data; // @[Core.scala 298:20]
  wire [63:0] nxt_pc_io_alu_out; // @[Core.scala 298:20]
  wire [2:0] nxt_pc_io_op2_type; // @[Core.scala 298:20]
  wire [2:0] nxt_pc_io_imm_type; // @[Core.scala 298:20]
  wire [4:0] nxt_pc_io_alu_type; // @[Core.scala 298:20]
  wire [31:0] nxt_pc_io_pc_nxt; // @[Core.scala 298:20]
  wire  nxt_pc_io_pc_jmp; // @[Core.scala 298:20]
  wire [2:0] lsu_io_mem_rtype; // @[Core.scala 351:17]
  wire [2:0] lsu_io_wb_type; // @[Core.scala 351:17]
  wire [63:0] lsu_io_dmem_addr; // @[Core.scala 351:17]
  wire [63:0] lsu_io_dmem_rdata; // @[Core.scala 351:17]
  wire [63:0] lsu_io_rs2_data; // @[Core.scala 351:17]
  wire [63:0] lsu_io_rd_data; // @[Core.scala 351:17]
  wire [63:0] lsu_io_dmem_wmask; // @[Core.scala 351:17]
  wire [63:0] lsu_io_dmem_wdata; // @[Core.scala 351:17]
  wire  dt_ic_clock; // @[Core.scala 425:21]
  wire [7:0] dt_ic_coreid; // @[Core.scala 425:21]
  wire [7:0] dt_ic_index; // @[Core.scala 425:21]
  wire  dt_ic_valid; // @[Core.scala 425:21]
  wire [63:0] dt_ic_pc; // @[Core.scala 425:21]
  wire [31:0] dt_ic_instr; // @[Core.scala 425:21]
  wire [7:0] dt_ic_special; // @[Core.scala 425:21]
  wire  dt_ic_skip; // @[Core.scala 425:21]
  wire  dt_ic_isRVC; // @[Core.scala 425:21]
  wire  dt_ic_scFailed; // @[Core.scala 425:21]
  wire  dt_ic_wen; // @[Core.scala 425:21]
  wire [63:0] dt_ic_wdata; // @[Core.scala 425:21]
  wire [7:0] dt_ic_wdest; // @[Core.scala 425:21]
  wire  dt_ae_clock; // @[Core.scala 440:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 440:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 440:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 440:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 440:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 440:21]
  wire  dt_te_clock; // @[Core.scala 457:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 457:21]
  wire  dt_te_valid; // @[Core.scala 457:21]
  wire [2:0] dt_te_code; // @[Core.scala 457:21]
  wire [63:0] dt_te_pc; // @[Core.scala 457:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 457:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 457:21]
  wire  dt_cs_clock; // @[Core.scala 466:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 466:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 466:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 466:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 466:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 466:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 466:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 466:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 466:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 466:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 466:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 466:21]
  reg [31:0] if_reg_pc; // @[Core.scala 35:33]
  reg [31:0] id_reg_pc; // @[Core.scala 42:24]
  reg [63:0] id_reg_inst; // @[Core.scala 43:28]
  reg [31:0] exe_reg_pc; // @[Core.scala 47:28]
  reg [63:0] exe_reg_inst; // @[Core.scala 48:32]
  reg [4:0] exe_reg_alu_type; // @[Core.scala 50:32]
  reg [2:0] exe_reg_wb_type; // @[Core.scala 51:32]
  reg [2:0] exe_reg_mem_rtype; // @[Core.scala 52:32]
  reg [2:0] exe_reg_imm_type; // @[Core.scala 53:32]
  reg [2:0] exe_reg_op2_type; // @[Core.scala 55:32]
  reg [63:0] exe_reg_op1_data; // @[Core.scala 57:28]
  reg [63:0] exe_reg_op2_data; // @[Core.scala 58:28]
  reg [63:0] exe_reg_rs2_data; // @[Core.scala 59:28]
  reg [63:0] exe_reg_imm; // @[Core.scala 60:28]
  reg  exe_reg_rd_en; // @[Core.scala 61:28]
  reg  exe_reg_dmem_en; // @[Core.scala 62:28]
  reg  exe_reg_dmem_wen; // @[Core.scala 63:28]
  reg [63:0] exe_reg_rd_addr; // @[Core.scala 67:33]
  reg  mem_reg_dmem_en; // @[Core.scala 71:28]
  reg  mem_reg_dmem_wen; // @[Core.scala 72:28]
  reg  mem_reg_rd_en; // @[Core.scala 73:28]
  reg [31:0] mem_reg_pc; // @[Core.scala 74:28]
  reg [63:0] mem_reg_inst; // @[Core.scala 75:32]
  reg [2:0] mem_reg_wb_type; // @[Core.scala 78:33]
  reg [2:0] mem_reg_mem_rtype; // @[Core.scala 79:33]
  reg [63:0] mem_reg_alu_out; // @[Core.scala 81:33]
  reg [63:0] mem_reg_rs2_data; // @[Core.scala 83:33]
  reg [63:0] mem_reg_rd_addr; // @[Core.scala 88:33]
  reg [31:0] wb_reg_pc; // @[Core.scala 92:28]
  reg [63:0] wb_reg_inst; // @[Core.scala 93:32]
  reg [2:0] wb_reg_mem_rtype; // @[Core.scala 95:32]
  reg [63:0] wb_reg_alu_out; // @[Core.scala 96:28]
  reg [63:0] wb_reg_rd_data; // @[Core.scala 97:28]
  reg  wb_reg_rd_en; // @[Core.scala 98:28]
  reg [63:0] wb_reg_rd_addr; // @[Core.scala 99:32]
  reg [63:0] wb_reg_wdata; // @[Core.scala 100:32]
  reg [63:0] wb_reg_wdest; // @[Core.scala 101:32]
  reg  wb_reg_wen; // @[Core.scala 102:28]
  reg [31:0] if_reg_nxt_pc; // @[Core.scala 120:28]
  wire [4:0] id_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 173:30]
  wire [63:0] _GEN_41 = {{59'd0}, id_rs2_addr}; // @[Core.scala 222:54]
  wire  _T_11 = exe_reg_rd_addr == _GEN_41; // @[Core.scala 222:54]
  wire [4:0] id_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 172:30]
  wire [63:0] _GEN_42 = {{59'd0}, id_rs1_addr}; // @[Core.scala 222:89]
  wire  _T_12 = exe_reg_rd_addr == _GEN_42; // @[Core.scala 222:89]
  wire  stall = exe_reg_mem_rtype != 3'h0 & (exe_reg_rd_addr == _GEN_41 | exe_reg_rd_addr == _GEN_42); // @[Core.scala 222:34]
  wire  _T_1 = ~stall; // @[Core.scala 122:6]
  wire  exe_pc_jmp = nxt_pc_io_pc_jmp; // @[Core.scala 107:23 Core.scala 309:13]
  wire  _T_3 = ~stall & ~exe_pc_jmp; // @[Core.scala 122:13]
  wire [31:0] exe_pc_nxt = nxt_pc_io_pc_nxt; // @[Core.scala 108:23 Core.scala 308:13]
  wire  _id_op1_T = decode_io_op1_type == 3'h2; // @[Core.scala 195:39]
  wire  _id_op1_T_1 = decode_io_op1_type == 3'h3; // @[Core.scala 196:39]
  wire  _id_op1_T_3 = id_rs1_addr != 5'h0; // @[Core.scala 197:70]
  wire  _id_op1_T_5 = _T_12 & id_rs1_addr != 5'h0 & exe_reg_rd_en; // @[Core.scala 197:79]
  wire  _id_op1_T_9 = mem_reg_rd_addr == _GEN_42 & _id_op1_T_3 & mem_reg_rd_en; // @[Core.scala 198:79]
  wire  _id_op1_T_13 = wb_reg_rd_addr == _GEN_42 & _id_op1_T_3 & wb_reg_rd_en; // @[Core.scala 199:79]
  wire  _wb_rd_data_T = wb_reg_mem_rtype == 3'h0; // @[Core.scala 394:37]
  wire  _wb_rd_data_T_1 = wb_reg_mem_rtype != 3'h0; // @[Core.scala 395:37]
  wire [63:0] _wb_rd_data_T_2 = _wb_rd_data_T_1 ? wb_reg_rd_data : 64'h0; // @[Mux.scala 98:16]
  wire [63:0] wb_rd_data = _wb_rd_data_T ? wb_reg_alu_out : _wb_rd_data_T_2; // @[Mux.scala 98:16]
  wire [63:0] _id_op1_T_14 = _id_op1_T_13 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] mem_rd_data = lsu_io_rd_data; // @[Core.scala 110:23 Core.scala 361:15]
  wire [63:0] _id_op1_T_15 = _id_op1_T_9 ? mem_rd_data : _id_op1_T_14; // @[Mux.scala 98:16]
  wire [63:0] exe_alu_out = alu_io_alu_out; // @[Core.scala 109:23 Core.scala 295:17]
  wire  _id_op2_T = decode_io_op2_type == 3'h2; // @[Core.scala 205:39]
  wire  _id_op2_T_1 = decode_io_op2_type == 3'h4; // @[Core.scala 206:39]
  wire  _id_op2_T_3 = id_rs2_addr != 5'h0; // @[Core.scala 207:70]
  wire  _id_op2_T_5 = _T_11 & id_rs2_addr != 5'h0 & exe_reg_rd_en; // @[Core.scala 207:79]
  wire  _id_op2_T_9 = mem_reg_rd_addr == _GEN_41 & _id_op2_T_3 & mem_reg_rd_en; // @[Core.scala 208:79]
  wire  _id_op2_T_13 = wb_reg_rd_addr == _GEN_41 & _id_op2_T_3 & wb_reg_rd_en; // @[Core.scala 209:79]
  wire [63:0] _id_op2_T_14 = _id_op2_T_13 ? wb_rd_data : regfile_io_rs1_data; // @[Mux.scala 98:16]
  wire [63:0] _id_op2_T_15 = _id_op2_T_9 ? mem_rd_data : _id_op2_T_14; // @[Mux.scala 98:16]
  reg  dt_ic_io_clock_REG; // @[Core.scala 426:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 436:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 437:31]
  reg [63:0] dt_ic_io_wdest_REG; // @[Core.scala 438:31]
  reg [63:0] cycle_cnt; // @[Core.scala 447:26]
  reg [63:0] instr_cnt; // @[Core.scala 448:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 450:26]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 452:26]
  wire [63:0] rf_a0_0 = regfile_rf_10;
  RegFile regfile ( // @[Core.scala 175:21]
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
  Decode decode ( // @[Core.scala 181:20]
    .io_inst(decode_io_inst),
    .io_alu_type(decode_io_alu_type),
    .io_op1_type(decode_io_op1_type),
    .io_op2_type(decode_io_op2_type),
    .io_imm_type(decode_io_imm_type),
    .io_mem_rtype(decode_io_mem_rtype),
    .io_wb_type(decode_io_wb_type)
  );
  ImmGen imm_gen ( // @[Core.scala 186:21]
    .io_imm_type(imm_gen_io_imm_type),
    .io_inst(imm_gen_io_inst),
    .io_imm(imm_gen_io_imm)
  );
  ALU alu ( // @[Core.scala 291:17]
    .io_alu_type(alu_io_alu_type),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_alu_out(alu_io_alu_out)
  );
  Nxt_PC nxt_pc ( // @[Core.scala 298:20]
    .io_pc(nxt_pc_io_pc),
    .io_imm(nxt_pc_io_imm),
    .io_rs1_data(nxt_pc_io_rs1_data),
    .io_alu_out(nxt_pc_io_alu_out),
    .io_op2_type(nxt_pc_io_op2_type),
    .io_imm_type(nxt_pc_io_imm_type),
    .io_alu_type(nxt_pc_io_alu_type),
    .io_pc_nxt(nxt_pc_io_pc_nxt),
    .io_pc_jmp(nxt_pc_io_pc_jmp)
  );
  LSU lsu ( // @[Core.scala 351:17]
    .io_mem_rtype(lsu_io_mem_rtype),
    .io_wb_type(lsu_io_wb_type),
    .io_dmem_addr(lsu_io_dmem_addr),
    .io_dmem_rdata(lsu_io_dmem_rdata),
    .io_rs2_data(lsu_io_rs2_data),
    .io_rd_data(lsu_io_rd_data),
    .io_dmem_wmask(lsu_io_dmem_wmask),
    .io_dmem_wdata(lsu_io_dmem_wdata)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 425:21]
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
  DifftestArchEvent dt_ae ( // @[Core.scala 440:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
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
  DifftestCSRState dt_cs ( // @[Core.scala 466:21]
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
  assign io_imem_addr = {{32'd0}, if_reg_pc}; // @[Core.scala 138:14]
  assign io_dmem_en = mem_reg_dmem_en; // @[Core.scala 343:15]
  assign io_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 338:22 Core.scala 338:37 Core.scala 339:26]
  assign io_dmem_wdata = lsu_io_dmem_wdata; // @[Core.scala 364:15]
  assign io_dmem_wmask = lsu_io_dmem_wmask; // @[Core.scala 363:15]
  assign io_dmem_wen = mem_reg_dmem_wen; // @[Core.scala 344:15]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1_addr = id_reg_inst[19:15]; // @[Core.scala 172:30]
  assign regfile_io_rs2_addr = id_reg_inst[24:20]; // @[Core.scala 173:30]
  assign regfile_io_rd_addr = wb_reg_rd_addr[4:0]; // @[Core.scala 390:20]
  assign regfile_io_rd_data = _wb_rd_data_T ? wb_reg_alu_out : _wb_rd_data_T_2; // @[Mux.scala 98:16]
  assign regfile_io_rd_en = wb_reg_rd_en; // @[Core.scala 389:20]
  assign decode_io_inst = id_reg_inst[31:0]; // @[Core.scala 182:21]
  assign imm_gen_io_imm_type = decode_io_imm_type; // @[Core.scala 187:21]
  assign imm_gen_io_inst = id_reg_inst[31:0]; // @[Core.scala 188:21]
  assign alu_io_alu_type = exe_reg_alu_type; // @[Core.scala 292:17]
  assign alu_io_in1 = exe_reg_op1_data; // @[Core.scala 283:23 Core.scala 288:9]
  assign alu_io_in2 = exe_reg_op2_data; // @[Core.scala 284:23 Core.scala 289:9]
  assign nxt_pc_io_pc = exe_reg_pc; // @[Core.scala 299:20]
  assign nxt_pc_io_imm = exe_reg_imm; // @[Core.scala 302:20]
  assign nxt_pc_io_rs1_data = exe_reg_op1_data; // @[Core.scala 283:23 Core.scala 288:9]
  assign nxt_pc_io_alu_out = alu_io_alu_out; // @[Core.scala 109:23 Core.scala 295:17]
  assign nxt_pc_io_op2_type = exe_reg_op2_type; // @[Core.scala 305:20]
  assign nxt_pc_io_imm_type = exe_reg_imm_type; // @[Core.scala 300:20]
  assign nxt_pc_io_alu_type = exe_reg_alu_type; // @[Core.scala 301:20]
  assign lsu_io_mem_rtype = mem_reg_mem_rtype; // @[Core.scala 354:19]
  assign lsu_io_wb_type = mem_reg_wb_type; // @[Core.scala 357:19]
  assign lsu_io_dmem_addr = mem_reg_dmem_en ? mem_reg_alu_out : 64'h0; // @[Core.scala 338:22 Core.scala 338:37 Core.scala 339:26]
  assign lsu_io_dmem_rdata = io_dmem_rdata; // @[Core.scala 355:19]
  assign lsu_io_rs2_data = mem_reg_rs2_data; // @[Core.scala 358:19]
  assign dt_ic_clock = dt_ic_io_clock_REG; // @[Core.scala 426:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 427:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 428:21]
  assign dt_ic_valid = wb_reg_inst != 64'h33 & wb_reg_inst != 64'h0; // @[Core.scala 420:37]
  assign dt_ic_pc = {{32'd0}, wb_reg_pc}; // @[Core.scala 430:21]
  assign dt_ic_instr = wb_reg_inst[31:0]; // @[Core.scala 431:21]
  assign dt_ic_special = 8'h0; // @[Core.scala 432:21]
  assign dt_ic_skip = 1'h0; // @[Core.scala 433:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 434:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 435:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 436:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 437:21]
  assign dt_ic_wdest = dt_ic_io_wdest_REG[7:0]; // @[Core.scala 438:21]
  assign dt_ae_clock = clock; // @[Core.scala 441:25]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 442:25]
  assign dt_ae_intrNO = 32'h0; // @[Core.scala 443:25]
  assign dt_ae_cause = 32'h0; // @[Core.scala 444:25]
  assign dt_ae_exceptionPC = 64'h0; // @[Core.scala 445:25]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_te_clock = clock; // @[Core.scala 458:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 459:21]
  assign dt_te_valid = wb_reg_inst == 64'h6b; // @[Core.scala 460:37]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 461:29]
  assign dt_te_pc = {{32'd0}, wb_reg_pc}; // @[Core.scala 462:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 463:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 464:21]
  assign dt_cs_clock = clock; // @[Core.scala 467:27]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 468:27]
  assign dt_cs_priviledgeMode = 2'h0; // @[Core.scala 469:27]
  assign dt_cs_mstatus = 64'h0; // @[Core.scala 470:27]
  assign dt_cs_sstatus = 64'h0; // @[Core.scala 471:27]
  assign dt_cs_mepc = 64'h0; // @[Core.scala 472:27]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 473:27]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 474:27]
  assign dt_cs_stval = 64'h0; // @[Core.scala 475:27]
  assign dt_cs_mtvec = 64'h0; // @[Core.scala 476:27]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 477:27]
  assign dt_cs_mcause = 64'h0; // @[Core.scala 478:27]
  assign dt_cs_scause = 64'h0; // @[Core.scala 479:27]
  assign dt_cs_satp = 64'h0; // @[Core.scala 480:27]
  assign dt_cs_mip = 64'h0; // @[Core.scala 481:27]
  assign dt_cs_mie = 64'h0; // @[Core.scala 482:27]
  assign dt_cs_mscratch = 64'h0; // @[Core.scala 483:27]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 484:27]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 485:27]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 486:27]
  always @(posedge clock) begin
    if (reset) begin // @[Core.scala 35:33]
      if_reg_pc <= 32'h80000000; // @[Core.scala 35:33]
    end else begin
      if_reg_pc <= if_reg_nxt_pc; // @[Core.scala 135:11]
    end
    if (_T_3) begin // @[Core.scala 149:28]
      id_reg_pc <= if_reg_pc; // @[Core.scala 150:14]
    end else if (_T_1 & exe_pc_jmp) begin // @[Core.scala 153:33]
      id_reg_pc <= if_reg_pc; // @[Core.scala 154:14]
    end
    if (reset) begin // @[Core.scala 43:28]
      id_reg_inst <= 64'h0; // @[Core.scala 43:28]
    end else if (_T_3) begin // @[Core.scala 149:28]
      id_reg_inst <= io_imem_rdata; // @[Core.scala 151:14]
    end else if (_T_1 & exe_pc_jmp) begin // @[Core.scala 153:33]
      id_reg_inst <= 64'h33; // @[Core.scala 155:14]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_pc <= id_reg_pc; // @[Core.scala 236:19]
    end
    if (reset) begin // @[Core.scala 48:32]
      exe_reg_inst <= 64'h0; // @[Core.scala 48:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_inst <= id_reg_inst; // @[Core.scala 237:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_inst <= 64'h33; // @[Core.scala 264:19]
    end
    if (reset) begin // @[Core.scala 50:32]
      exe_reg_alu_type <= 5'h0; // @[Core.scala 50:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_alu_type <= decode_io_alu_type; // @[Core.scala 241:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_alu_type <= 5'h0; // @[Core.scala 269:19]
    end
    if (reset) begin // @[Core.scala 51:32]
      exe_reg_wb_type <= 3'h0; // @[Core.scala 51:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_wb_type <= decode_io_wb_type; // @[Core.scala 244:19]
    end
    if (reset) begin // @[Core.scala 52:32]
      exe_reg_mem_rtype <= 3'h0; // @[Core.scala 52:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_mem_rtype <= decode_io_mem_rtype; // @[Core.scala 242:19]
    end
    if (reset) begin // @[Core.scala 53:32]
      exe_reg_imm_type <= 3'h0; // @[Core.scala 53:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_imm_type <= decode_io_imm_type; // @[Core.scala 243:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_imm_type <= 3'h0; // @[Core.scala 268:19]
    end
    if (reset) begin // @[Core.scala 55:32]
      exe_reg_op2_type <= 3'h0; // @[Core.scala 55:32]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_op2_type <= decode_io_op2_type; // @[Core.scala 240:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_op2_type <= 3'h0; // @[Core.scala 271:19]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      if (_id_op1_T) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= imm_gen_io_imm;
      end else if (_id_op1_T_1) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= {{32'd0}, id_reg_pc};
      end else if (_id_op1_T_5) begin // @[Mux.scala 98:16]
        exe_reg_op1_data <= exe_alu_out;
      end else begin
        exe_reg_op1_data <= _id_op1_T_15;
      end
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_op1_data <= 64'h0; // @[Core.scala 272:19]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      if (_id_op2_T) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= imm_gen_io_imm;
      end else if (_id_op2_T_1) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= 64'h4;
      end else if (_id_op2_T_5) begin // @[Mux.scala 98:16]
        exe_reg_op2_data <= exe_alu_out;
      end else begin
        exe_reg_op2_data <= _id_op2_T_15;
      end
    end
    if (_T_3) begin // @[Core.scala 235:28]
      if (_id_op2_T_5) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= exe_alu_out;
      end else if (_id_op2_T_9) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= mem_rd_data;
      end else if (_id_op2_T_13) begin // @[Mux.scala 98:16]
        exe_reg_rs2_data <= wb_rd_data;
      end else begin
        exe_reg_rs2_data <= regfile_io_rs2_data;
      end
    end
    if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_imm <= imm_gen_io_imm; // @[Core.scala 250:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_imm <= 64'h0; // @[Core.scala 270:19]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_rd_en <= decode_io_wb_type == 3'h1; // @[Core.scala 257:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_rd_en <= 1'h0; // @[Core.scala 265:19]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_dmem_en <= decode_io_mem_rtype != 3'h0 | exe_reg_dmem_wen; // @[Core.scala 259:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_dmem_en <= 1'h0; // @[Core.scala 267:19]
    end
    if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_dmem_wen <= decode_io_wb_type != 3'h1 & exe_reg_wb_type != 3'h0; // @[Core.scala 258:19]
    end else if (stall | exe_pc_jmp) begin // @[Core.scala 261:32]
      exe_reg_dmem_wen <= 1'h0; // @[Core.scala 266:19]
    end
    if (reset) begin // @[Core.scala 67:33]
      exe_reg_rd_addr <= 64'h0; // @[Core.scala 67:33]
    end else if (_T_3) begin // @[Core.scala 235:28]
      exe_reg_rd_addr <= {{59'd0}, id_reg_inst[11:7]}; // @[Core.scala 248:19]
    end
    mem_reg_dmem_en <= exe_reg_dmem_en; // @[Core.scala 328:20]
    mem_reg_dmem_wen <= exe_reg_dmem_wen; // @[Core.scala 327:20]
    mem_reg_rd_en <= exe_reg_rd_en; // @[Core.scala 326:20]
    mem_reg_pc <= exe_reg_pc; // @[Core.scala 314:20]
    if (reset) begin // @[Core.scala 75:32]
      mem_reg_inst <= 64'h0; // @[Core.scala 75:32]
    end else begin
      mem_reg_inst <= exe_reg_inst; // @[Core.scala 315:20]
    end
    if (reset) begin // @[Core.scala 78:33]
      mem_reg_wb_type <= 3'h0; // @[Core.scala 78:33]
    end else begin
      mem_reg_wb_type <= exe_reg_wb_type; // @[Core.scala 318:20]
    end
    if (reset) begin // @[Core.scala 79:33]
      mem_reg_mem_rtype <= 3'h0; // @[Core.scala 79:33]
    end else begin
      mem_reg_mem_rtype <= exe_reg_mem_rtype; // @[Core.scala 317:20]
    end
    if (reset) begin // @[Core.scala 81:33]
      mem_reg_alu_out <= 64'h0; // @[Core.scala 81:33]
    end else begin
      mem_reg_alu_out <= exe_alu_out; // @[Core.scala 319:20]
    end
    if (reset) begin // @[Core.scala 83:33]
      mem_reg_rs2_data <= 64'h0; // @[Core.scala 83:33]
    end else begin
      mem_reg_rs2_data <= exe_reg_rs2_data; // @[Core.scala 320:20]
    end
    if (reset) begin // @[Core.scala 88:33]
      mem_reg_rd_addr <= 64'h0; // @[Core.scala 88:33]
    end else begin
      mem_reg_rd_addr <= exe_reg_rd_addr; // @[Core.scala 324:20]
    end
    wb_reg_pc <= mem_reg_pc; // @[Core.scala 373:20]
    if (reset) begin // @[Core.scala 93:32]
      wb_reg_inst <= 64'h0; // @[Core.scala 93:32]
    end else begin
      wb_reg_inst <= mem_reg_inst; // @[Core.scala 372:20]
    end
    if (reset) begin // @[Core.scala 95:32]
      wb_reg_mem_rtype <= 3'h0; // @[Core.scala 95:32]
    end else begin
      wb_reg_mem_rtype <= mem_reg_mem_rtype; // @[Core.scala 379:20]
    end
    wb_reg_alu_out <= mem_reg_alu_out; // @[Core.scala 380:20]
    wb_reg_rd_data <= lsu_io_rd_data; // @[Core.scala 110:23 Core.scala 361:15]
    wb_reg_rd_en <= mem_reg_rd_en; // @[Core.scala 383:20]
    if (reset) begin // @[Core.scala 99:32]
      wb_reg_rd_addr <= 64'h0; // @[Core.scala 99:32]
    end else begin
      wb_reg_rd_addr <= mem_reg_rd_addr; // @[Core.scala 382:20]
    end
    if (reset) begin // @[Core.scala 100:32]
      wb_reg_wdata <= 64'h0; // @[Core.scala 100:32]
    end else begin
      wb_reg_wdata <= lsu_io_dmem_wdata; // @[Core.scala 374:20]
    end
    if (reset) begin // @[Core.scala 101:32]
      wb_reg_wdest <= 64'h0; // @[Core.scala 101:32]
    end else if (mem_reg_dmem_en) begin // @[Core.scala 338:22]
      wb_reg_wdest <= mem_reg_alu_out; // @[Core.scala 338:37]
    end else begin
      wb_reg_wdest <= 64'h0; // @[Core.scala 339:26]
    end
    wb_reg_wen <= mem_reg_dmem_wen; // @[Core.scala 376:21]
    if (reset) begin // @[Core.scala 120:28]
      if_reg_nxt_pc <= 32'h80000000; // @[Core.scala 120:28]
    end else if (stall) begin // @[Core.scala 126:18]
      if_reg_nxt_pc <= if_reg_pc; // @[Core.scala 128:15]
    end else if (exe_pc_jmp) begin // @[Core.scala 130:23]
      if_reg_nxt_pc <= exe_pc_nxt; // @[Core.scala 132:18]
    end
    dt_ic_io_clock_REG <= clock; // @[Core.scala 426:31]
    dt_ic_io_wen_REG <= wb_reg_wen; // @[Core.scala 436:31]
    dt_ic_io_wdata_REG <= wb_reg_wdata; // @[Core.scala 437:31]
    dt_ic_io_wdest_REG <= wb_reg_wdest; // @[Core.scala 438:31]
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
  id_reg_pc = _RAND_1[31:0];
  _RAND_2 = {2{`RANDOM}};
  id_reg_inst = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  exe_reg_pc = _RAND_3[31:0];
  _RAND_4 = {2{`RANDOM}};
  exe_reg_inst = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  exe_reg_alu_type = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  exe_reg_wb_type = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  exe_reg_mem_rtype = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  exe_reg_imm_type = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  exe_reg_op2_type = _RAND_9[2:0];
  _RAND_10 = {2{`RANDOM}};
  exe_reg_op1_data = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  exe_reg_op2_data = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  exe_reg_rs2_data = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  exe_reg_imm = _RAND_13[63:0];
  _RAND_14 = {1{`RANDOM}};
  exe_reg_rd_en = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  exe_reg_dmem_en = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  exe_reg_dmem_wen = _RAND_16[0:0];
  _RAND_17 = {2{`RANDOM}};
  exe_reg_rd_addr = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  mem_reg_dmem_en = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  mem_reg_dmem_wen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mem_reg_rd_en = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  mem_reg_pc = _RAND_21[31:0];
  _RAND_22 = {2{`RANDOM}};
  mem_reg_inst = _RAND_22[63:0];
  _RAND_23 = {1{`RANDOM}};
  mem_reg_wb_type = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  mem_reg_mem_rtype = _RAND_24[2:0];
  _RAND_25 = {2{`RANDOM}};
  mem_reg_alu_out = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  mem_reg_rs2_data = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  mem_reg_rd_addr = _RAND_27[63:0];
  _RAND_28 = {1{`RANDOM}};
  wb_reg_pc = _RAND_28[31:0];
  _RAND_29 = {2{`RANDOM}};
  wb_reg_inst = _RAND_29[63:0];
  _RAND_30 = {1{`RANDOM}};
  wb_reg_mem_rtype = _RAND_30[2:0];
  _RAND_31 = {2{`RANDOM}};
  wb_reg_alu_out = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  wb_reg_rd_data = _RAND_32[63:0];
  _RAND_33 = {1{`RANDOM}};
  wb_reg_rd_en = _RAND_33[0:0];
  _RAND_34 = {2{`RANDOM}};
  wb_reg_rd_addr = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  wb_reg_wdata = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  wb_reg_wdest = _RAND_36[63:0];
  _RAND_37 = {1{`RANDOM}};
  wb_reg_wen = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  if_reg_nxt_pc = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  dt_ic_io_clock_REG = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_40[0:0];
  _RAND_41 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  cycle_cnt = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  instr_cnt = _RAND_44[63:0];
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
