module Nxt_PC(
  input  [31:0] io_pc,
  input  [2:0]  io_imm_type,
  input  [63:0] io_imm,
  input  [2:0]  io_alu_type,
  input  [63:0] io_alu_out,
  input  [2:0]  io_wb_type,
  output [31:0] io_pc_nxt
);
  wire  _T = io_imm_type == 3'h3; // @[NXT_PC.scala 18:18]
  wire [3:0] _GEN_5 = {{1'd0}, io_alu_type}; // @[NXT_PC.scala 18:43]
  wire [63:0] _GEN_6 = {{32'd0}, io_pc}; // @[NXT_PC.scala 20:22]
  wire [63:0] _io_pc_nxt_T_1 = _GEN_6 + io_imm; // @[NXT_PC.scala 20:22]
  wire  _T_10 = io_alu_out != 64'h0; // @[NXT_PC.scala 21:107]
  wire [62:0] io_pc_nxt_hi = io_alu_out[63:1]; // @[NXT_PC.scala 33:30]
  wire [63:0] _io_pc_nxt_T_8 = {io_pc_nxt_hi,1'h0}; // @[Cat.scala 30:58]
  wire [31:0] _io_pc_nxt_T_10 = io_pc + 32'h4; // @[NXT_PC.scala 36:20]
  wire [63:0] _GEN_0 = io_wb_type == 3'h2 ? _io_pc_nxt_T_8 : {{32'd0}, _io_pc_nxt_T_10}; // @[NXT_PC.scala 31:35 NXT_PC.scala 33:13 NXT_PC.scala 36:11]
  wire [63:0] _GEN_1 = io_imm_type == 3'h5 ? _io_pc_nxt_T_1 : _GEN_0; // @[NXT_PC.scala 28:34 NXT_PC.scala 30:13]
  wire [63:0] _GEN_2 = _T & _GEN_5 != 4'h2 & _T_10 ? _io_pc_nxt_T_1 : _GEN_1; // @[NXT_PC.scala 25:83 NXT_PC.scala 27:13]
  wire [63:0] _GEN_3 = _T & (_GEN_5 == 4'hb | _GEN_5 == 4'hc) & io_alu_out != 64'h0 ? _io_pc_nxt_T_1 : _GEN_2; // @[NXT_PC.scala 21:115 NXT_PC.scala 23:12]
  wire [63:0] _GEN_4 = io_imm_type == 3'h3 & _GEN_5 == 4'h2 & io_alu_out == 64'h0 ? _io_pc_nxt_T_1 : _GEN_3; // @[NXT_PC.scala 18:77 NXT_PC.scala 20:13]
  assign io_pc_nxt = _GEN_4[31:0];
endmodule
module Decode(
  input  [31:0] io_inst,
  output [3:0]  io_alu_type,
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
  wire  _ctrl_T_23 = 32'h1b == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_25 = 32'h3b == _ctrl_T; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_26 = io_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_27 = 32'h1013 == _ctrl_T_26; // @[Lookup.scala 31:38]
  wire  _ctrl_T_29 = 32'h101b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_31 = 32'h103b == _ctrl_T; // @[Lookup.scala 31:38]
  wire  _ctrl_T_33 = 32'h2013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_35 = 32'h3013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_37 = 32'h4013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_39 = 32'h5013 == _ctrl_T_26; // @[Lookup.scala 31:38]
  wire  _ctrl_T_41 = 32'h40005013 == _ctrl_T_26; // @[Lookup.scala 31:38]
  wire  _ctrl_T_43 = 32'h6013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_45 = 32'h7013 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_47 = 32'h3 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_49 = 32'h1003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_51 = 32'h2003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_53 = 32'h3003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_55 = 32'h4003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_57 = 32'h5003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_59 = 32'h6003 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_61 = 32'h23 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_63 = 32'h1023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_65 = 32'h2023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_67 = 32'h3023 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [31:0] _ctrl_T_68 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _ctrl_T_69 = 32'h37 == _ctrl_T_68; // @[Lookup.scala 31:38]
  wire  _ctrl_T_71 = 32'h17 == _ctrl_T_68; // @[Lookup.scala 31:38]
  wire  _ctrl_T_73 = 32'h63 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_75 = 32'h1063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_77 = 32'h4063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_79 = 32'h5063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_81 = 32'h6063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_83 = 32'h7063 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire  _ctrl_T_85 = 32'h6f == _ctrl_T_68; // @[Lookup.scala 31:38]
  wire  _ctrl_T_87 = 32'h67 == _ctrl_T_20; // @[Lookup.scala 31:38]
  wire [3:0] _ctrl_T_131 = _ctrl_T_87 ? 4'h1 : 4'h0; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_132 = _ctrl_T_85 ? 4'h1 : _ctrl_T_131; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_133 = _ctrl_T_83 ? 4'hc : _ctrl_T_132; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_134 = _ctrl_T_81 ? 4'h4 : _ctrl_T_133; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_135 = _ctrl_T_79 ? 4'hb : _ctrl_T_134; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_136 = _ctrl_T_77 ? 4'h3 : _ctrl_T_135; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_137 = _ctrl_T_75 ? 4'h5 : _ctrl_T_136; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_138 = _ctrl_T_73 ? 4'h2 : _ctrl_T_137; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_139 = _ctrl_T_71 ? 4'h1 : _ctrl_T_138; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_140 = _ctrl_T_69 ? 4'h0 : _ctrl_T_139; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_141 = _ctrl_T_67 ? 4'h1 : _ctrl_T_140; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_142 = _ctrl_T_65 ? 4'h1 : _ctrl_T_141; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_143 = _ctrl_T_63 ? 4'h1 : _ctrl_T_142; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_144 = _ctrl_T_61 ? 4'h1 : _ctrl_T_143; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_145 = _ctrl_T_59 ? 4'h1 : _ctrl_T_144; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_146 = _ctrl_T_57 ? 4'h1 : _ctrl_T_145; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_147 = _ctrl_T_55 ? 4'h1 : _ctrl_T_146; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_148 = _ctrl_T_53 ? 4'h1 : _ctrl_T_147; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_149 = _ctrl_T_51 ? 4'h1 : _ctrl_T_148; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_150 = _ctrl_T_49 ? 4'h1 : _ctrl_T_149; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_151 = _ctrl_T_47 ? 4'h1 : _ctrl_T_150; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_152 = _ctrl_T_45 ? 4'h7 : _ctrl_T_151; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_153 = _ctrl_T_43 ? 4'h6 : _ctrl_T_152; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_154 = _ctrl_T_41 ? 4'ha : _ctrl_T_153; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_155 = _ctrl_T_39 ? 4'h9 : _ctrl_T_154; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_156 = _ctrl_T_37 ? 4'h5 : _ctrl_T_155; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_157 = _ctrl_T_35 ? 4'h4 : _ctrl_T_156; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_158 = _ctrl_T_33 ? 4'h3 : _ctrl_T_157; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_159 = _ctrl_T_31 ? 4'he : _ctrl_T_158; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_160 = _ctrl_T_29 ? 4'he : _ctrl_T_159; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_161 = _ctrl_T_27 ? 4'h8 : _ctrl_T_160; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_162 = _ctrl_T_25 ? 4'hd : _ctrl_T_161; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_163 = _ctrl_T_23 ? 4'hd : _ctrl_T_162; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_164 = _ctrl_T_21 ? 4'h1 : _ctrl_T_163; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_165 = _ctrl_T_19 ? 4'h7 : _ctrl_T_164; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_166 = _ctrl_T_17 ? 4'h6 : _ctrl_T_165; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_167 = _ctrl_T_15 ? 4'ha : _ctrl_T_166; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_168 = _ctrl_T_13 ? 4'h9 : _ctrl_T_167; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_169 = _ctrl_T_11 ? 4'h5 : _ctrl_T_168; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_170 = _ctrl_T_9 ? 4'h4 : _ctrl_T_169; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_171 = _ctrl_T_7 ? 4'h3 : _ctrl_T_170; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_172 = _ctrl_T_5 ? 4'h8 : _ctrl_T_171; // @[Lookup.scala 33:37]
  wire [3:0] _ctrl_T_173 = _ctrl_T_3 ? 4'h2 : _ctrl_T_172; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_174 = _ctrl_T_87 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_175 = _ctrl_T_85 ? 3'h3 : _ctrl_T_174; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_176 = _ctrl_T_83 ? 3'h1 : _ctrl_T_175; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_177 = _ctrl_T_81 ? 3'h1 : _ctrl_T_176; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_178 = _ctrl_T_79 ? 3'h1 : _ctrl_T_177; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_179 = _ctrl_T_77 ? 3'h1 : _ctrl_T_178; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_180 = _ctrl_T_75 ? 3'h1 : _ctrl_T_179; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_181 = _ctrl_T_73 ? 3'h1 : _ctrl_T_180; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_182 = _ctrl_T_71 ? 3'h3 : _ctrl_T_181; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_183 = _ctrl_T_69 ? 3'h0 : _ctrl_T_182; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_184 = _ctrl_T_67 ? 3'h1 : _ctrl_T_183; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_185 = _ctrl_T_65 ? 3'h1 : _ctrl_T_184; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_186 = _ctrl_T_63 ? 3'h1 : _ctrl_T_185; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_187 = _ctrl_T_61 ? 3'h1 : _ctrl_T_186; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_188 = _ctrl_T_59 ? 3'h1 : _ctrl_T_187; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_189 = _ctrl_T_57 ? 3'h1 : _ctrl_T_188; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_190 = _ctrl_T_55 ? 3'h1 : _ctrl_T_189; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_191 = _ctrl_T_53 ? 3'h1 : _ctrl_T_190; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_192 = _ctrl_T_51 ? 3'h1 : _ctrl_T_191; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_193 = _ctrl_T_49 ? 3'h1 : _ctrl_T_192; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_194 = _ctrl_T_47 ? 3'h1 : _ctrl_T_193; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_195 = _ctrl_T_45 ? 3'h1 : _ctrl_T_194; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_196 = _ctrl_T_43 ? 3'h1 : _ctrl_T_195; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_197 = _ctrl_T_41 ? 3'h1 : _ctrl_T_196; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_198 = _ctrl_T_39 ? 3'h1 : _ctrl_T_197; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_199 = _ctrl_T_37 ? 3'h1 : _ctrl_T_198; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_200 = _ctrl_T_35 ? 3'h1 : _ctrl_T_199; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_201 = _ctrl_T_33 ? 3'h1 : _ctrl_T_200; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_202 = _ctrl_T_31 ? 3'h1 : _ctrl_T_201; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_203 = _ctrl_T_29 ? 3'h1 : _ctrl_T_202; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_204 = _ctrl_T_27 ? 3'h1 : _ctrl_T_203; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_205 = _ctrl_T_25 ? 3'h1 : _ctrl_T_204; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_206 = _ctrl_T_23 ? 3'h1 : _ctrl_T_205; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_207 = _ctrl_T_21 ? 3'h1 : _ctrl_T_206; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_208 = _ctrl_T_19 ? 3'h1 : _ctrl_T_207; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_209 = _ctrl_T_17 ? 3'h1 : _ctrl_T_208; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_210 = _ctrl_T_15 ? 3'h1 : _ctrl_T_209; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_211 = _ctrl_T_13 ? 3'h1 : _ctrl_T_210; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_212 = _ctrl_T_11 ? 3'h1 : _ctrl_T_211; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_213 = _ctrl_T_9 ? 3'h1 : _ctrl_T_212; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_214 = _ctrl_T_7 ? 3'h1 : _ctrl_T_213; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_215 = _ctrl_T_5 ? 3'h1 : _ctrl_T_214; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_216 = _ctrl_T_3 ? 3'h1 : _ctrl_T_215; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_219 = _ctrl_T_83 ? 3'h1 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_220 = _ctrl_T_81 ? 3'h1 : _ctrl_T_219; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_221 = _ctrl_T_79 ? 3'h1 : _ctrl_T_220; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_222 = _ctrl_T_77 ? 3'h1 : _ctrl_T_221; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_223 = _ctrl_T_75 ? 3'h1 : _ctrl_T_222; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_224 = _ctrl_T_73 ? 3'h1 : _ctrl_T_223; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_225 = _ctrl_T_71 ? 3'h0 : _ctrl_T_224; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_226 = _ctrl_T_69 ? 3'h0 : _ctrl_T_225; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_227 = _ctrl_T_67 ? 3'h1 : _ctrl_T_226; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_228 = _ctrl_T_65 ? 3'h1 : _ctrl_T_227; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_229 = _ctrl_T_63 ? 3'h1 : _ctrl_T_228; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_230 = _ctrl_T_61 ? 3'h1 : _ctrl_T_229; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_231 = _ctrl_T_59 ? 3'h0 : _ctrl_T_230; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_232 = _ctrl_T_57 ? 3'h0 : _ctrl_T_231; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_233 = _ctrl_T_55 ? 3'h0 : _ctrl_T_232; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_234 = _ctrl_T_53 ? 3'h0 : _ctrl_T_233; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_235 = _ctrl_T_51 ? 3'h0 : _ctrl_T_234; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_236 = _ctrl_T_49 ? 3'h0 : _ctrl_T_235; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_237 = _ctrl_T_47 ? 3'h0 : _ctrl_T_236; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_238 = _ctrl_T_45 ? 3'h0 : _ctrl_T_237; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_239 = _ctrl_T_43 ? 3'h0 : _ctrl_T_238; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_240 = _ctrl_T_41 ? 3'h0 : _ctrl_T_239; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_241 = _ctrl_T_39 ? 3'h0 : _ctrl_T_240; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_242 = _ctrl_T_37 ? 3'h0 : _ctrl_T_241; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_243 = _ctrl_T_35 ? 3'h0 : _ctrl_T_242; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_244 = _ctrl_T_33 ? 3'h0 : _ctrl_T_243; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_245 = _ctrl_T_31 ? 3'h1 : _ctrl_T_244; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_246 = _ctrl_T_29 ? 3'h0 : _ctrl_T_245; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_247 = _ctrl_T_27 ? 3'h0 : _ctrl_T_246; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_248 = _ctrl_T_25 ? 3'h1 : _ctrl_T_247; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_249 = _ctrl_T_23 ? 3'h0 : _ctrl_T_248; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_250 = _ctrl_T_21 ? 3'h0 : _ctrl_T_249; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_251 = _ctrl_T_19 ? 3'h1 : _ctrl_T_250; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_252 = _ctrl_T_17 ? 3'h1 : _ctrl_T_251; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_253 = _ctrl_T_15 ? 3'h1 : _ctrl_T_252; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_254 = _ctrl_T_13 ? 3'h1 : _ctrl_T_253; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_255 = _ctrl_T_11 ? 3'h1 : _ctrl_T_254; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_256 = _ctrl_T_9 ? 3'h1 : _ctrl_T_255; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_257 = _ctrl_T_7 ? 3'h1 : _ctrl_T_256; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_258 = _ctrl_T_5 ? 3'h1 : _ctrl_T_257; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_259 = _ctrl_T_3 ? 3'h1 : _ctrl_T_258; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_261 = _ctrl_T_85 ? 3'h5 : _ctrl_T_174; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_262 = _ctrl_T_83 ? 3'h3 : _ctrl_T_261; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_263 = _ctrl_T_81 ? 3'h3 : _ctrl_T_262; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_264 = _ctrl_T_79 ? 3'h3 : _ctrl_T_263; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_265 = _ctrl_T_77 ? 3'h3 : _ctrl_T_264; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_266 = _ctrl_T_75 ? 3'h3 : _ctrl_T_265; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_267 = _ctrl_T_73 ? 3'h3 : _ctrl_T_266; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_268 = _ctrl_T_71 ? 3'h4 : _ctrl_T_267; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_269 = _ctrl_T_69 ? 3'h4 : _ctrl_T_268; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_270 = _ctrl_T_67 ? 3'h2 : _ctrl_T_269; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_271 = _ctrl_T_65 ? 3'h2 : _ctrl_T_270; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_272 = _ctrl_T_63 ? 3'h2 : _ctrl_T_271; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_273 = _ctrl_T_61 ? 3'h2 : _ctrl_T_272; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_274 = _ctrl_T_59 ? 3'h1 : _ctrl_T_273; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_275 = _ctrl_T_57 ? 3'h1 : _ctrl_T_274; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_276 = _ctrl_T_55 ? 3'h1 : _ctrl_T_275; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_277 = _ctrl_T_53 ? 3'h1 : _ctrl_T_276; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_278 = _ctrl_T_51 ? 3'h1 : _ctrl_T_277; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_279 = _ctrl_T_49 ? 3'h1 : _ctrl_T_278; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_280 = _ctrl_T_47 ? 3'h1 : _ctrl_T_279; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_281 = _ctrl_T_45 ? 3'h1 : _ctrl_T_280; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_282 = _ctrl_T_43 ? 3'h1 : _ctrl_T_281; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_283 = _ctrl_T_41 ? 3'h1 : _ctrl_T_282; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_284 = _ctrl_T_39 ? 3'h1 : _ctrl_T_283; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_285 = _ctrl_T_37 ? 3'h1 : _ctrl_T_284; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_286 = _ctrl_T_35 ? 3'h1 : _ctrl_T_285; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_287 = _ctrl_T_33 ? 3'h1 : _ctrl_T_286; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_288 = _ctrl_T_31 ? 3'h0 : _ctrl_T_287; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_289 = _ctrl_T_29 ? 3'h1 : _ctrl_T_288; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_290 = _ctrl_T_27 ? 3'h1 : _ctrl_T_289; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_291 = _ctrl_T_25 ? 3'h0 : _ctrl_T_290; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_292 = _ctrl_T_23 ? 3'h1 : _ctrl_T_291; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_293 = _ctrl_T_21 ? 3'h1 : _ctrl_T_292; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_294 = _ctrl_T_19 ? 3'h0 : _ctrl_T_293; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_295 = _ctrl_T_17 ? 3'h0 : _ctrl_T_294; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_296 = _ctrl_T_15 ? 3'h0 : _ctrl_T_295; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_297 = _ctrl_T_13 ? 3'h0 : _ctrl_T_296; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_298 = _ctrl_T_11 ? 3'h0 : _ctrl_T_297; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_299 = _ctrl_T_9 ? 3'h0 : _ctrl_T_298; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_300 = _ctrl_T_7 ? 3'h0 : _ctrl_T_299; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_301 = _ctrl_T_5 ? 3'h0 : _ctrl_T_300; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_302 = _ctrl_T_3 ? 3'h0 : _ctrl_T_301; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_317 = _ctrl_T_59 ? 3'h7 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_318 = _ctrl_T_57 ? 3'h6 : _ctrl_T_317; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_319 = _ctrl_T_55 ? 3'h5 : _ctrl_T_318; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_320 = _ctrl_T_53 ? 3'h4 : _ctrl_T_319; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_321 = _ctrl_T_51 ? 3'h3 : _ctrl_T_320; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_322 = _ctrl_T_49 ? 3'h2 : _ctrl_T_321; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_323 = _ctrl_T_47 ? 3'h1 : _ctrl_T_322; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_324 = _ctrl_T_45 ? 3'h0 : _ctrl_T_323; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_325 = _ctrl_T_43 ? 3'h0 : _ctrl_T_324; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_326 = _ctrl_T_41 ? 3'h0 : _ctrl_T_325; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_327 = _ctrl_T_39 ? 3'h0 : _ctrl_T_326; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_328 = _ctrl_T_37 ? 3'h0 : _ctrl_T_327; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_329 = _ctrl_T_35 ? 3'h0 : _ctrl_T_328; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_330 = _ctrl_T_33 ? 3'h0 : _ctrl_T_329; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_331 = _ctrl_T_31 ? 3'h0 : _ctrl_T_330; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_332 = _ctrl_T_29 ? 3'h0 : _ctrl_T_331; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_333 = _ctrl_T_27 ? 3'h0 : _ctrl_T_332; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_334 = _ctrl_T_25 ? 3'h0 : _ctrl_T_333; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_335 = _ctrl_T_23 ? 3'h0 : _ctrl_T_334; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_336 = _ctrl_T_21 ? 3'h0 : _ctrl_T_335; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_337 = _ctrl_T_19 ? 3'h0 : _ctrl_T_336; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_338 = _ctrl_T_17 ? 3'h0 : _ctrl_T_337; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_339 = _ctrl_T_15 ? 3'h0 : _ctrl_T_338; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_340 = _ctrl_T_13 ? 3'h0 : _ctrl_T_339; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_341 = _ctrl_T_11 ? 3'h0 : _ctrl_T_340; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_342 = _ctrl_T_9 ? 3'h0 : _ctrl_T_341; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_343 = _ctrl_T_7 ? 3'h0 : _ctrl_T_342; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_344 = _ctrl_T_5 ? 3'h0 : _ctrl_T_343; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_345 = _ctrl_T_3 ? 3'h0 : _ctrl_T_344; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_346 = _ctrl_T_87 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_347 = _ctrl_T_85 ? 3'h1 : _ctrl_T_346; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_348 = _ctrl_T_83 ? 3'h0 : _ctrl_T_347; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_349 = _ctrl_T_81 ? 3'h0 : _ctrl_T_348; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_350 = _ctrl_T_79 ? 3'h0 : _ctrl_T_349; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_351 = _ctrl_T_77 ? 3'h0 : _ctrl_T_350; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_352 = _ctrl_T_75 ? 3'h0 : _ctrl_T_351; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_353 = _ctrl_T_73 ? 3'h0 : _ctrl_T_352; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_354 = _ctrl_T_71 ? 3'h1 : _ctrl_T_353; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_355 = _ctrl_T_69 ? 3'h1 : _ctrl_T_354; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_356 = _ctrl_T_67 ? 3'h6 : _ctrl_T_355; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_357 = _ctrl_T_65 ? 3'h5 : _ctrl_T_356; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_358 = _ctrl_T_63 ? 3'h4 : _ctrl_T_357; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_359 = _ctrl_T_61 ? 3'h3 : _ctrl_T_358; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_360 = _ctrl_T_59 ? 3'h1 : _ctrl_T_359; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_361 = _ctrl_T_57 ? 3'h1 : _ctrl_T_360; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_362 = _ctrl_T_55 ? 3'h1 : _ctrl_T_361; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_363 = _ctrl_T_53 ? 3'h1 : _ctrl_T_362; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_364 = _ctrl_T_51 ? 3'h1 : _ctrl_T_363; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_365 = _ctrl_T_49 ? 3'h1 : _ctrl_T_364; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_366 = _ctrl_T_47 ? 3'h1 : _ctrl_T_365; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_367 = _ctrl_T_45 ? 3'h1 : _ctrl_T_366; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_368 = _ctrl_T_43 ? 3'h1 : _ctrl_T_367; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_369 = _ctrl_T_41 ? 3'h1 : _ctrl_T_368; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_370 = _ctrl_T_39 ? 3'h1 : _ctrl_T_369; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_371 = _ctrl_T_37 ? 3'h1 : _ctrl_T_370; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_372 = _ctrl_T_35 ? 3'h1 : _ctrl_T_371; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_373 = _ctrl_T_33 ? 3'h1 : _ctrl_T_372; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_374 = _ctrl_T_31 ? 3'h1 : _ctrl_T_373; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_375 = _ctrl_T_29 ? 3'h1 : _ctrl_T_374; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_376 = _ctrl_T_27 ? 3'h1 : _ctrl_T_375; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_377 = _ctrl_T_25 ? 3'h1 : _ctrl_T_376; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_378 = _ctrl_T_23 ? 3'h1 : _ctrl_T_377; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_379 = _ctrl_T_21 ? 3'h1 : _ctrl_T_378; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_380 = _ctrl_T_19 ? 3'h1 : _ctrl_T_379; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_381 = _ctrl_T_17 ? 3'h1 : _ctrl_T_380; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_382 = _ctrl_T_15 ? 3'h1 : _ctrl_T_381; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_383 = _ctrl_T_13 ? 3'h1 : _ctrl_T_382; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_384 = _ctrl_T_11 ? 3'h1 : _ctrl_T_383; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_385 = _ctrl_T_9 ? 3'h1 : _ctrl_T_384; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_386 = _ctrl_T_7 ? 3'h1 : _ctrl_T_385; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_387 = _ctrl_T_5 ? 3'h1 : _ctrl_T_386; // @[Lookup.scala 33:37]
  wire [2:0] _ctrl_T_388 = _ctrl_T_3 ? 3'h1 : _ctrl_T_387; // @[Lookup.scala 33:37]
  assign io_alu_type = _ctrl_T_1 ? 4'h1 : _ctrl_T_173; // @[Lookup.scala 33:37]
  assign io_op1_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_216; // @[Lookup.scala 33:37]
  assign io_op2_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_259; // @[Lookup.scala 33:37]
  assign io_imm_type = _ctrl_T_1 ? 3'h0 : _ctrl_T_302; // @[Lookup.scala 33:37]
  assign io_mem_rtype = _ctrl_T_1 ? 3'h0 : _ctrl_T_345; // @[Lookup.scala 33:37]
  assign io_wb_type = _ctrl_T_1 ? 3'h1 : _ctrl_T_388; // @[Lookup.scala 33:37]
endmodule
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
  input  [3:0]  io_alu_type,
  input  [63:0] io_in1,
  input  [63:0] io_in2,
  output [63:0] io_alu_out
);
  wire  _T = 4'h1 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_1 = io_in1 + io_in2; // @[ALU.scala 44:30]
  wire  _T_1 = 4'hd == io_alu_type; // @[Conditional.scala 37:30]
  wire [32:0] alu_out_hi = _alu_out_T_1[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo = _alu_out_T_1[30:0]; // @[ALU.scala 45:62]
  wire [63:0] _alu_out_T_8 = {alu_out_hi,alu_out_lo}; // @[Cat.scala 30:58]
  wire  _T_2 = 4'h2 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_10 = io_in1 - io_in2; // @[ALU.scala 46:30]
  wire  _T_3 = 4'h3 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_11 = io_in1; // @[ALU.scala 47:31]
  wire [63:0] _alu_out_T_12 = io_in2; // @[ALU.scala 47:44]
  wire  _T_4 = 4'h4 == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_5 = 4'h5 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_15 = io_in1 ^ io_in2; // @[ALU.scala 49:31]
  wire  _T_6 = 4'h6 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_16 = io_in1 | io_in2; // @[ALU.scala 50:31]
  wire  _T_7 = 4'h7 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_17 = io_in1 & io_in2; // @[ALU.scala 51:31]
  wire  _T_8 = 4'h8 == io_alu_type; // @[Conditional.scala 37:30]
  wire [126:0] _GEN_14 = {{63'd0}, io_in1}; // @[ALU.scala 52:31]
  wire [126:0] _alu_out_T_19 = _GEN_14 << io_in2[5:0]; // @[ALU.scala 52:31]
  wire  _T_9 = 4'he == io_alu_type; // @[Conditional.scala 37:30]
  wire [94:0] _GEN_15 = {{31'd0}, io_in1}; // @[ALU.scala 53:44]
  wire [94:0] _alu_out_T_21 = _GEN_15 << io_in2[4:0]; // @[ALU.scala 53:44]
  wire [32:0] alu_out_hi_1 = _alu_out_T_21[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] alu_out_lo_1 = _alu_out_T_21[30:0]; // @[ALU.scala 53:100]
  wire [63:0] _alu_out_T_26 = {alu_out_hi_1,alu_out_lo_1}; // @[Cat.scala 30:58]
  wire  _T_10 = 4'h9 == io_alu_type; // @[Conditional.scala 37:30]
  wire [63:0] _alu_out_T_28 = io_in1 >> io_in2[5:0]; // @[ALU.scala 54:31]
  wire  _T_11 = 4'ha == io_alu_type; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hb == io_alu_type; // @[Conditional.scala 37:30]
  wire  _alu_out_T_34 = io_in1 >= io_in2; // @[ALU.scala 57:31]
  wire  _GEN_1 = _T_12 ? $signed(io_in1) >= $signed(io_in2) : _alu_out_T_34; // @[Conditional.scala 39:67 ALU.scala 56:23]
  wire [63:0] _GEN_2 = _T_11 ? _alu_out_T_28 : {{63'd0}, _GEN_1}; // @[Conditional.scala 39:67 ALU.scala 55:23]
  wire [63:0] _GEN_3 = _T_10 ? _alu_out_T_28 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 54:23]
  wire [63:0] _GEN_4 = _T_9 ? _alu_out_T_26 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 53:23]
  wire [126:0] _GEN_5 = _T_8 ? _alu_out_T_19 : {{63'd0}, _GEN_4}; // @[Conditional.scala 39:67 ALU.scala 52:23]
  wire [126:0] _GEN_6 = _T_7 ? {{63'd0}, _alu_out_T_17} : _GEN_5; // @[Conditional.scala 39:67 ALU.scala 51:23]
  wire [126:0] _GEN_7 = _T_6 ? {{63'd0}, _alu_out_T_16} : _GEN_6; // @[Conditional.scala 39:67 ALU.scala 50:23]
  wire [126:0] _GEN_8 = _T_5 ? {{63'd0}, _alu_out_T_15} : _GEN_7; // @[Conditional.scala 39:67 ALU.scala 49:23]
  wire [126:0] _GEN_9 = _T_4 ? {{126'd0}, io_in1 < io_in2} : _GEN_8; // @[Conditional.scala 39:67 ALU.scala 48:23]
  wire [126:0] _GEN_10 = _T_3 ? {{126'd0}, $signed(_alu_out_T_11) < $signed(_alu_out_T_12)} : _GEN_9; // @[Conditional.scala 39:67 ALU.scala 47:23]
  wire [126:0] _GEN_11 = _T_2 ? {{63'd0}, _alu_out_T_10} : _GEN_10; // @[Conditional.scala 39:67 ALU.scala 46:23]
  wire [126:0] _GEN_12 = _T_1 ? {{63'd0}, _alu_out_T_8} : _GEN_11; // @[Conditional.scala 39:67 ALU.scala 45:23]
  wire [126:0] _GEN_13 = _T ? {{63'd0}, _alu_out_T_1} : _GEN_12; // @[Conditional.scala 40:58 ALU.scala 44:23]
  assign io_alu_out = _GEN_13[63:0]; // @[ALU.scala 20:21]
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
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] nxt_pc_io_pc; // @[Core.scala 20:22]
  wire [2:0] nxt_pc_io_imm_type; // @[Core.scala 20:22]
  wire [63:0] nxt_pc_io_imm; // @[Core.scala 20:22]
  wire [2:0] nxt_pc_io_alu_type; // @[Core.scala 20:22]
  wire [63:0] nxt_pc_io_alu_out; // @[Core.scala 20:22]
  wire [2:0] nxt_pc_io_wb_type; // @[Core.scala 20:22]
  wire [31:0] nxt_pc_io_pc_nxt; // @[Core.scala 20:22]
  wire [31:0] decode_io_inst; // @[Core.scala 21:22]
  wire [3:0] decode_io_alu_type; // @[Core.scala 21:22]
  wire [2:0] decode_io_op1_type; // @[Core.scala 21:22]
  wire [2:0] decode_io_op2_type; // @[Core.scala 21:22]
  wire [2:0] decode_io_imm_type; // @[Core.scala 21:22]
  wire [2:0] decode_io_mem_rtype; // @[Core.scala 21:22]
  wire [2:0] decode_io_wb_type; // @[Core.scala 21:22]
  wire  regfile_clock; // @[Core.scala 22:23]
  wire  regfile_reset; // @[Core.scala 22:23]
  wire [4:0] regfile_io_rs1_addr; // @[Core.scala 22:23]
  wire [4:0] regfile_io_rs2_addr; // @[Core.scala 22:23]
  wire [63:0] regfile_io_rs1_data; // @[Core.scala 22:23]
  wire [63:0] regfile_io_rs2_data; // @[Core.scala 22:23]
  wire [4:0] regfile_io_rd_addr; // @[Core.scala 22:23]
  wire [63:0] regfile_io_rd_data; // @[Core.scala 22:23]
  wire  regfile_io_rd_en; // @[Core.scala 22:23]
  wire [63:0] regfile_rf_10; // @[Core.scala 22:23]
  wire [2:0] imm_gen_io_imm_type; // @[Core.scala 23:23]
  wire [31:0] imm_gen_io_inst; // @[Core.scala 23:23]
  wire [63:0] imm_gen_io_imm; // @[Core.scala 23:23]
  wire [3:0] alu_io_alu_type; // @[Core.scala 24:19]
  wire [63:0] alu_io_in1; // @[Core.scala 24:19]
  wire [63:0] alu_io_in2; // @[Core.scala 24:19]
  wire [63:0] alu_io_alu_out; // @[Core.scala 24:19]
  wire  dt_ic_clock; // @[Core.scala 260:21]
  wire [7:0] dt_ic_coreid; // @[Core.scala 260:21]
  wire [7:0] dt_ic_index; // @[Core.scala 260:21]
  wire  dt_ic_valid; // @[Core.scala 260:21]
  wire [63:0] dt_ic_pc; // @[Core.scala 260:21]
  wire [31:0] dt_ic_instr; // @[Core.scala 260:21]
  wire [7:0] dt_ic_special; // @[Core.scala 260:21]
  wire  dt_ic_skip; // @[Core.scala 260:21]
  wire  dt_ic_isRVC; // @[Core.scala 260:21]
  wire  dt_ic_scFailed; // @[Core.scala 260:21]
  wire  dt_ic_wen; // @[Core.scala 260:21]
  wire [63:0] dt_ic_wdata; // @[Core.scala 260:21]
  wire [7:0] dt_ic_wdest; // @[Core.scala 260:21]
  wire  dt_ae_clock; // @[Core.scala 275:21]
  wire [7:0] dt_ae_coreid; // @[Core.scala 275:21]
  wire [31:0] dt_ae_intrNO; // @[Core.scala 275:21]
  wire [31:0] dt_ae_cause; // @[Core.scala 275:21]
  wire [63:0] dt_ae_exceptionPC; // @[Core.scala 275:21]
  wire [31:0] dt_ae_exceptionInst; // @[Core.scala 275:21]
  wire  dt_te_clock; // @[Core.scala 291:21]
  wire [7:0] dt_te_coreid; // @[Core.scala 291:21]
  wire  dt_te_valid; // @[Core.scala 291:21]
  wire [2:0] dt_te_code; // @[Core.scala 291:21]
  wire [63:0] dt_te_pc; // @[Core.scala 291:21]
  wire [63:0] dt_te_cycleCnt; // @[Core.scala 291:21]
  wire [63:0] dt_te_instrCnt; // @[Core.scala 291:21]
  wire  dt_cs_clock; // @[Core.scala 300:21]
  wire [7:0] dt_cs_coreid; // @[Core.scala 300:21]
  wire [1:0] dt_cs_priviledgeMode; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mstatus; // @[Core.scala 300:21]
  wire [63:0] dt_cs_sstatus; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mepc; // @[Core.scala 300:21]
  wire [63:0] dt_cs_sepc; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mtval; // @[Core.scala 300:21]
  wire [63:0] dt_cs_stval; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mtvec; // @[Core.scala 300:21]
  wire [63:0] dt_cs_stvec; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mcause; // @[Core.scala 300:21]
  wire [63:0] dt_cs_scause; // @[Core.scala 300:21]
  wire [63:0] dt_cs_satp; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mip; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mie; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mscratch; // @[Core.scala 300:21]
  wire [63:0] dt_cs_sscratch; // @[Core.scala 300:21]
  wire [63:0] dt_cs_mideleg; // @[Core.scala 300:21]
  wire [63:0] dt_cs_medeleg; // @[Core.scala 300:21]
  reg [31:0] pc; // @[Core.scala 16:19]
  reg  pc_en; // @[Core.scala 17:21]
  wire  _pc_T = io_imem_rdata != 64'h0; // @[Core.scala 37:25]
  wire  _regfile_io_rd_en_T = decode_io_wb_type == 3'h1; // @[Core.scala 73:42]
  wire  _io_dmem_en_T = decode_io_mem_rtype != 3'h0; // @[Core.scala 75:38]
  wire  _io_dmem_wen_T = decode_io_wb_type == 3'h3; // @[Core.scala 77:37]
  wire  _io_dmem_wen_T_1 = decode_io_wb_type == 3'h4; // @[Core.scala 77:73]
  wire  _io_dmem_wen_T_3 = decode_io_wb_type == 3'h5; // @[Core.scala 77:109]
  wire  _T = alu_io_alu_type != 4'h0; // @[Core.scala 88:25]
  wire [31:0] _GEN_0 = _T & decode_io_op1_type == 3'h3 ? pc : 32'h0; // @[Core.scala 90:72 Core.scala 91:14 Core.scala 92:26]
  wire  _T_6 = decode_io_op2_type == 3'h1; // @[Core.scala 96:27]
  wire  _T_11 = decode_io_op2_type == 3'h0; // @[Core.scala 99:33]
  wire [2:0] _GEN_2 = _T_11 & decode_io_imm_type == 3'h5 ? 3'h4 : 3'h0; // @[Core.scala 105:74 Core.scala 107:14 Core.scala 108:26]
  wire [63:0] _GEN_3 = _T_6 & decode_io_imm_type == 3'h2 ? imm_gen_io_imm : {{61'd0}, _GEN_2}; // @[Core.scala 102:76 Core.scala 104:14]
  wire [63:0] _GEN_4 = decode_io_op2_type == 3'h0 & decode_io_imm_type != 3'h0 & decode_io_imm_type != 3'h5 ?
    imm_gen_io_imm : _GEN_3; // @[Core.scala 99:106 Core.scala 101:14]
  wire  _T_25 = _regfile_io_rd_en_T & decode_io_mem_rtype == 3'h0; // @[Core.scala 126:36]
  wire  _T_36 = 3'h1 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_38 = io_dmem_addr[2:0] == 3'h0; // @[Core.scala 137:23]
  wire [56:0] regfile_io_rd_data_hi = io_dmem_rdata[7] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo = io_dmem_rdata[6:0]; // @[Core.scala 138:69]
  wire [63:0] _regfile_io_rd_data_T_2 = {regfile_io_rd_data_hi,regfile_io_rd_data_lo}; // @[Cat.scala 30:58]
  wire  _T_40 = io_dmem_addr[2:0] == 3'h1; // @[Core.scala 139:29]
  wire [56:0] regfile_io_rd_data_hi_1 = io_dmem_rdata[15] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_1 = io_dmem_rdata[14:8]; // @[Core.scala 140:70]
  wire [63:0] _regfile_io_rd_data_T_5 = {regfile_io_rd_data_hi_1,regfile_io_rd_data_lo_1}; // @[Cat.scala 30:58]
  wire  _T_42 = io_dmem_addr[2:0] == 3'h2; // @[Core.scala 141:29]
  wire [56:0] regfile_io_rd_data_hi_2 = io_dmem_rdata[23] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_2 = io_dmem_rdata[22:16]; // @[Core.scala 142:70]
  wire [63:0] _regfile_io_rd_data_T_8 = {regfile_io_rd_data_hi_2,regfile_io_rd_data_lo_2}; // @[Cat.scala 30:58]
  wire  _T_44 = io_dmem_addr[2:0] == 3'h3; // @[Core.scala 143:29]
  wire [56:0] regfile_io_rd_data_hi_3 = io_dmem_rdata[31] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_3 = io_dmem_rdata[30:24]; // @[Core.scala 144:69]
  wire [63:0] _regfile_io_rd_data_T_11 = {regfile_io_rd_data_hi_3,regfile_io_rd_data_lo_3}; // @[Cat.scala 30:58]
  wire  _T_46 = io_dmem_addr[2:0] == 3'h4; // @[Core.scala 145:29]
  wire [56:0] regfile_io_rd_data_hi_4 = io_dmem_rdata[39] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_4 = io_dmem_rdata[38:32]; // @[Core.scala 146:70]
  wire [63:0] _regfile_io_rd_data_T_14 = {regfile_io_rd_data_hi_4,regfile_io_rd_data_lo_4}; // @[Cat.scala 30:58]
  wire  _T_48 = io_dmem_addr[2:0] == 3'h5; // @[Core.scala 147:29]
  wire [56:0] regfile_io_rd_data_hi_5 = io_dmem_rdata[47] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_5 = io_dmem_rdata[46:40]; // @[Core.scala 148:70]
  wire [63:0] _regfile_io_rd_data_T_17 = {regfile_io_rd_data_hi_5,regfile_io_rd_data_lo_5}; // @[Cat.scala 30:58]
  wire  _T_50 = io_dmem_addr[2:0] == 3'h6; // @[Core.scala 149:29]
  wire [56:0] regfile_io_rd_data_hi_6 = io_dmem_rdata[55] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_6 = io_dmem_rdata[54:48]; // @[Core.scala 150:70]
  wire [63:0] _regfile_io_rd_data_T_20 = {regfile_io_rd_data_hi_6,regfile_io_rd_data_lo_6}; // @[Cat.scala 30:58]
  wire [56:0] regfile_io_rd_data_hi_7 = io_dmem_rdata[63] ? 57'h1ffffffffffffff : 57'h0; // @[Bitwise.scala 72:12]
  wire [6:0] regfile_io_rd_data_lo_7 = io_dmem_rdata[62:56]; // @[Core.scala 152:69]
  wire [63:0] _regfile_io_rd_data_T_23 = {regfile_io_rd_data_hi_7,regfile_io_rd_data_lo_7}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_8 = io_dmem_addr[2:0] == 3'h6 ? _regfile_io_rd_data_T_20 : _regfile_io_rd_data_T_23; // @[Core.scala 149:41 Core.scala 150:20]
  wire [63:0] _GEN_9 = io_dmem_addr[2:0] == 3'h5 ? _regfile_io_rd_data_T_17 : _GEN_8; // @[Core.scala 147:41 Core.scala 148:20]
  wire [63:0] _GEN_10 = io_dmem_addr[2:0] == 3'h4 ? _regfile_io_rd_data_T_14 : _GEN_9; // @[Core.scala 145:41 Core.scala 146:20]
  wire [63:0] _GEN_11 = io_dmem_addr[2:0] == 3'h3 ? _regfile_io_rd_data_T_11 : _GEN_10; // @[Core.scala 143:41 Core.scala 144:20]
  wire [63:0] _GEN_12 = io_dmem_addr[2:0] == 3'h2 ? _regfile_io_rd_data_T_8 : _GEN_11; // @[Core.scala 141:41 Core.scala 142:20]
  wire [63:0] _GEN_13 = io_dmem_addr[2:0] == 3'h1 ? _regfile_io_rd_data_T_5 : _GEN_12; // @[Core.scala 139:41 Core.scala 140:20]
  wire [63:0] _GEN_14 = io_dmem_addr[2:0] == 3'h0 ? _regfile_io_rd_data_T_2 : _GEN_13; // @[Core.scala 137:35 Core.scala 138:20]
  wire  _T_53 = 3'h2 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_55 = io_dmem_addr[1:0] == 2'h0; // @[Core.scala 157:23]
  wire [48:0] regfile_io_rd_data_hi_8 = io_dmem_rdata[15] ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12]
  wire [14:0] regfile_io_rd_data_lo_8 = io_dmem_rdata[14:0]; // @[Core.scala 158:70]
  wire [63:0] _regfile_io_rd_data_T_26 = {regfile_io_rd_data_hi_8,regfile_io_rd_data_lo_8}; // @[Cat.scala 30:58]
  wire  _T_57 = io_dmem_addr[1:0] == 2'h1; // @[Core.scala 159:29]
  wire [48:0] regfile_io_rd_data_hi_9 = io_dmem_rdata[31] ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12]
  wire [14:0] regfile_io_rd_data_lo_9 = io_dmem_rdata[30:16]; // @[Core.scala 160:70]
  wire [63:0] _regfile_io_rd_data_T_29 = {regfile_io_rd_data_hi_9,regfile_io_rd_data_lo_9}; // @[Cat.scala 30:58]
  wire  _T_59 = io_dmem_addr[1:0] == 2'h2; // @[Core.scala 161:29]
  wire [48:0] regfile_io_rd_data_hi_10 = io_dmem_rdata[47] ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12]
  wire [14:0] regfile_io_rd_data_lo_10 = io_dmem_rdata[46:32]; // @[Core.scala 162:70]
  wire [63:0] _regfile_io_rd_data_T_32 = {regfile_io_rd_data_hi_10,regfile_io_rd_data_lo_10}; // @[Cat.scala 30:58]
  wire [48:0] regfile_io_rd_data_hi_11 = io_dmem_rdata[63] ? 49'h1ffffffffffff : 49'h0; // @[Bitwise.scala 72:12]
  wire [14:0] regfile_io_rd_data_lo_11 = io_dmem_rdata[62:48]; // @[Core.scala 164:69]
  wire [63:0] _regfile_io_rd_data_T_35 = {regfile_io_rd_data_hi_11,regfile_io_rd_data_lo_11}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_16 = io_dmem_addr[1:0] == 2'h2 ? _regfile_io_rd_data_T_32 : _regfile_io_rd_data_T_35; // @[Core.scala 161:40 Core.scala 162:20]
  wire [63:0] _GEN_17 = io_dmem_addr[1:0] == 2'h1 ? _regfile_io_rd_data_T_29 : _GEN_16; // @[Core.scala 159:40 Core.scala 160:20]
  wire [63:0] _GEN_18 = io_dmem_addr[1:0] == 2'h0 ? _regfile_io_rd_data_T_26 : _GEN_17; // @[Core.scala 157:34 Core.scala 158:20]
  wire  _T_62 = 3'h3 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire [32:0] regfile_io_rd_data_hi_12 = io_dmem_rdata[63] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] regfile_io_rd_data_lo_12 = io_dmem_rdata[62:32]; // @[Core.scala 169:69]
  wire [63:0] _regfile_io_rd_data_T_38 = {regfile_io_rd_data_hi_12,regfile_io_rd_data_lo_12}; // @[Cat.scala 30:58]
  wire [32:0] regfile_io_rd_data_hi_13 = io_dmem_rdata[31] ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12]
  wire [30:0] regfile_io_rd_data_lo_13 = io_dmem_rdata[30:0]; // @[Core.scala 170:81]
  wire [63:0] _regfile_io_rd_data_T_41 = {regfile_io_rd_data_hi_13,regfile_io_rd_data_lo_13}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_19 = io_dmem_addr[2] ? _regfile_io_rd_data_T_38 : _regfile_io_rd_data_T_41; // @[Core.scala 168:22 Core.scala 169:20 Core.scala 170:32]
  wire  _T_64 = 3'h4 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire  _T_65 = 3'h5 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire [7:0] regfile_io_rd_data_lo_14 = io_dmem_rdata[7:0]; // @[Core.scala 177:56]
  wire [63:0] _regfile_io_rd_data_T_42 = {56'h0,regfile_io_rd_data_lo_14}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_15 = io_dmem_rdata[15:8]; // @[Core.scala 179:56]
  wire [63:0] _regfile_io_rd_data_T_43 = {56'h0,regfile_io_rd_data_lo_15}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_16 = io_dmem_rdata[23:16]; // @[Core.scala 181:56]
  wire [63:0] _regfile_io_rd_data_T_44 = {56'h0,regfile_io_rd_data_lo_16}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_17 = io_dmem_rdata[31:24]; // @[Core.scala 183:56]
  wire [63:0] _regfile_io_rd_data_T_45 = {56'h0,regfile_io_rd_data_lo_17}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_18 = io_dmem_rdata[39:32]; // @[Core.scala 185:56]
  wire [63:0] _regfile_io_rd_data_T_46 = {56'h0,regfile_io_rd_data_lo_18}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_19 = io_dmem_rdata[47:40]; // @[Core.scala 187:56]
  wire [63:0] _regfile_io_rd_data_T_47 = {56'h0,regfile_io_rd_data_lo_19}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_20 = io_dmem_rdata[55:48]; // @[Core.scala 189:56]
  wire [63:0] _regfile_io_rd_data_T_48 = {56'h0,regfile_io_rd_data_lo_20}; // @[Cat.scala 30:58]
  wire [7:0] regfile_io_rd_data_lo_21 = io_dmem_rdata[63:56]; // @[Core.scala 191:56]
  wire [63:0] _regfile_io_rd_data_T_49 = {56'h0,regfile_io_rd_data_lo_21}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_21 = _T_50 ? _regfile_io_rd_data_T_48 : _regfile_io_rd_data_T_49; // @[Core.scala 188:41 Core.scala 189:20]
  wire [63:0] _GEN_22 = _T_48 ? _regfile_io_rd_data_T_47 : _GEN_21; // @[Core.scala 186:41 Core.scala 187:20]
  wire [63:0] _GEN_23 = _T_46 ? _regfile_io_rd_data_T_46 : _GEN_22; // @[Core.scala 184:41 Core.scala 185:20]
  wire [63:0] _GEN_24 = _T_44 ? _regfile_io_rd_data_T_45 : _GEN_23; // @[Core.scala 182:41 Core.scala 183:20]
  wire [63:0] _GEN_25 = _T_42 ? _regfile_io_rd_data_T_44 : _GEN_24; // @[Core.scala 180:41 Core.scala 181:20]
  wire [63:0] _GEN_26 = _T_40 ? _regfile_io_rd_data_T_43 : _GEN_25; // @[Core.scala 178:41 Core.scala 179:20]
  wire [63:0] _GEN_27 = _T_38 ? _regfile_io_rd_data_T_42 : _GEN_26; // @[Core.scala 176:35 Core.scala 177:20]
  wire  _T_82 = 3'h6 == decode_io_mem_rtype; // @[Conditional.scala 37:30]
  wire [15:0] regfile_io_rd_data_lo_22 = io_dmem_rdata[15:0]; // @[Core.scala 199:56]
  wire [63:0] _regfile_io_rd_data_T_50 = {48'h0,regfile_io_rd_data_lo_22}; // @[Cat.scala 30:58]
  wire [15:0] regfile_io_rd_data_lo_23 = io_dmem_rdata[31:16]; // @[Core.scala 201:56]
  wire [63:0] _regfile_io_rd_data_T_51 = {48'h0,regfile_io_rd_data_lo_23}; // @[Cat.scala 30:58]
  wire [15:0] regfile_io_rd_data_lo_24 = io_dmem_rdata[47:32]; // @[Core.scala 203:56]
  wire [63:0] _regfile_io_rd_data_T_52 = {48'h0,regfile_io_rd_data_lo_24}; // @[Cat.scala 30:58]
  wire [15:0] regfile_io_rd_data_lo_25 = io_dmem_rdata[63:48]; // @[Core.scala 205:56]
  wire [63:0] _regfile_io_rd_data_T_53 = {48'h0,regfile_io_rd_data_lo_25}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_29 = _T_59 ? _regfile_io_rd_data_T_52 : _regfile_io_rd_data_T_53; // @[Core.scala 202:40 Core.scala 203:20]
  wire [63:0] _GEN_30 = _T_57 ? _regfile_io_rd_data_T_51 : _GEN_29; // @[Core.scala 200:40 Core.scala 201:20]
  wire [63:0] _GEN_31 = _T_55 ? _regfile_io_rd_data_T_50 : _GEN_30; // @[Core.scala 198:34 Core.scala 199:20]
  wire [31:0] regfile_io_rd_data_lo_26 = io_dmem_rdata[63:32]; // @[Core.scala 210:55]
  wire [63:0] _regfile_io_rd_data_T_54 = {32'h0,regfile_io_rd_data_lo_26}; // @[Cat.scala 30:58]
  wire [31:0] regfile_io_rd_data_lo_27 = io_dmem_rdata[31:0]; // @[Core.scala 211:66]
  wire [63:0] _regfile_io_rd_data_T_55 = {32'h0,regfile_io_rd_data_lo_27}; // @[Cat.scala 30:58]
  wire [63:0] _GEN_32 = io_dmem_addr[2] ? _regfile_io_rd_data_T_54 : _regfile_io_rd_data_T_55; // @[Core.scala 209:22 Core.scala 210:20 Core.scala 211:32]
  wire [63:0] _GEN_34 = _T_82 ? _GEN_31 : _GEN_32; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_35 = _T_65 ? _GEN_27 : _GEN_34; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_36 = _T_64 ? io_dmem_rdata : _GEN_35; // @[Conditional.scala 39:67 Core.scala 173:31]
  wire [63:0] _GEN_37 = _T_62 ? _GEN_19 : _GEN_36; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_38 = _T_53 ? _GEN_18 : _GEN_37; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_39 = _T_36 ? _GEN_14 : _GEN_38; // @[Conditional.scala 40:58]
  wire [7:0] io_dmem_wdata_lo = regfile_io_rs2_data[7:0]; // @[Core.scala 219:54]
  wire [63:0] _io_dmem_wdata_T = {56'h0,io_dmem_wdata_lo}; // @[Cat.scala 30:58]
  wire [63:0] _io_dmem_wdata_T_1 = {48'h0,io_dmem_wdata_lo,8'h0}; // @[Cat.scala 30:58]
  wire [62:0] _io_dmem_wdata_T_2 = {40'h0,io_dmem_wdata_lo,15'h0}; // @[Cat.scala 30:58]
  wire [62:0] _io_dmem_wdata_T_3 = {32'h0,io_dmem_wdata_lo,23'h0}; // @[Cat.scala 30:58]
  wire [62:0] _io_dmem_wdata_T_4 = {24'h0,io_dmem_wdata_lo,31'h0}; // @[Cat.scala 30:58]
  wire [62:0] _io_dmem_wdata_T_5 = {16'h0,io_dmem_wdata_lo,39'h0}; // @[Cat.scala 30:58]
  wire [23:0] _io_dmem_wdata_T_6 = {8'h0,io_dmem_wdata_lo,8'h0}; // @[Cat.scala 30:58]
  wire [62:0] _io_dmem_wdata_T_7 = {io_dmem_wdata_lo,55'h0}; // @[Cat.scala 30:58]
  wire [62:0] _GEN_41 = _T_50 ? {{39'd0}, _io_dmem_wdata_T_6} : _io_dmem_wdata_T_7; // @[Core.scala 230:41 Core.scala 231:14]
  wire [62:0] _GEN_42 = _T_48 ? _io_dmem_wdata_T_5 : _GEN_41; // @[Core.scala 228:41 Core.scala 229:14]
  wire [62:0] _GEN_43 = _T_46 ? _io_dmem_wdata_T_4 : _GEN_42; // @[Core.scala 226:41 Core.scala 227:14]
  wire [62:0] _GEN_44 = _T_44 ? _io_dmem_wdata_T_3 : _GEN_43; // @[Core.scala 224:41 Core.scala 225:14]
  wire [62:0] _GEN_45 = _T_42 ? _io_dmem_wdata_T_2 : _GEN_44; // @[Core.scala 222:41 Core.scala 223:14]
  wire [63:0] _GEN_46 = _T_40 ? _io_dmem_wdata_T_1 : {{1'd0}, _GEN_45}; // @[Core.scala 220:41 Core.scala 221:14]
  wire [63:0] _GEN_47 = _T_38 ? _io_dmem_wdata_T : _GEN_46; // @[Core.scala 218:35 Core.scala 219:14]
  wire [15:0] io_dmem_wdata_lo_8 = regfile_io_rs2_data[15:0]; // @[Core.scala 239:54]
  wire [63:0] _io_dmem_wdata_T_8 = {48'h0,io_dmem_wdata_lo_8}; // @[Cat.scala 30:58]
  wire [31:0] io_dmem_wdata_lo_9 = regfile_io_rs2_data[31:0]; // @[Core.scala 242:54]
  wire [63:0] _io_dmem_wdata_T_9 = {32'h0,io_dmem_wdata_lo_9}; // @[Cat.scala 30:58]
  wire [31:0] _regfile_io_rd_data_T_57 = pc + 32'h4; // @[Core.scala 248:26]
  wire [63:0] _GEN_50 = regfile_io_rs2_data; // @[Core.scala 243:43 Core.scala 245:14]
  wire [63:0] _GEN_52 = _io_dmem_wen_T_3 ? 64'hffffffff : 64'hffffffffffffffff; // @[Core.scala 240:43 Core.scala 241:14]
  wire [63:0] _GEN_53 = _io_dmem_wen_T_3 ? _io_dmem_wdata_T_9 : _GEN_50; // @[Core.scala 240:43 Core.scala 242:14]
  wire [63:0] _GEN_55 = _io_dmem_wen_T_1 ? 64'hffff : _GEN_52; // @[Core.scala 237:43 Core.scala 238:14]
  wire [63:0] _GEN_56 = _io_dmem_wen_T_1 ? _io_dmem_wdata_T_8 : _GEN_53; // @[Core.scala 237:43 Core.scala 239:14]
  wire [63:0] _GEN_59 = _io_dmem_wen_T ? 64'hffffffffffffffff : _GEN_55; // @[Core.scala 216:43 Core.scala 30:15]
  wire [63:0] _GEN_61 = _regfile_io_rd_en_T & _io_dmem_en_T ? _GEN_39 : {{32'd0}, _regfile_io_rd_data_T_57}; // @[Core.scala 132:74]
  wire [63:0] _GEN_63 = _regfile_io_rd_en_T & _io_dmem_en_T ? 64'hffffffffffffffff : _GEN_59; // @[Core.scala 132:74 Core.scala 30:15]
  wire [63:0] _GEN_64 = _T_25 & decode_io_alu_type == 4'h0 ? imm_gen_io_imm : _GEN_61; // @[Core.scala 129:106 Core.scala 130:20]
  wire [63:0] _GEN_66 = _T_25 & decode_io_alu_type == 4'h0 ? 64'hffffffffffffffff : _GEN_63; // @[Core.scala 129:106 Core.scala 30:15]
  reg  dt_ic_io_valid_REG; // @[Core.scala 264:31]
  reg [31:0] dt_ic_io_pc_REG; // @[Core.scala 265:31]
  reg [63:0] dt_ic_io_instr_REG; // @[Core.scala 266:31]
  reg  dt_ic_io_wen_REG; // @[Core.scala 271:31]
  reg [63:0] dt_ic_io_wdata_REG; // @[Core.scala 272:31]
  reg [4:0] dt_ic_io_wdest_REG; // @[Core.scala 273:31]
  reg [63:0] cycle_cnt; // @[Core.scala 282:26]
  reg [63:0] instr_cnt; // @[Core.scala 283:26]
  wire [63:0] _cycle_cnt_T_1 = cycle_cnt + 64'h1; // @[Core.scala 285:26]
  wire [63:0] _instr_cnt_T_1 = instr_cnt + 64'h1; // @[Core.scala 286:26]
  wire [63:0] rf_a0_0 = regfile_rf_10;
  Nxt_PC nxt_pc ( // @[Core.scala 20:22]
    .io_pc(nxt_pc_io_pc),
    .io_imm_type(nxt_pc_io_imm_type),
    .io_imm(nxt_pc_io_imm),
    .io_alu_type(nxt_pc_io_alu_type),
    .io_alu_out(nxt_pc_io_alu_out),
    .io_wb_type(nxt_pc_io_wb_type),
    .io_pc_nxt(nxt_pc_io_pc_nxt)
  );
  Decode decode ( // @[Core.scala 21:22]
    .io_inst(decode_io_inst),
    .io_alu_type(decode_io_alu_type),
    .io_op1_type(decode_io_op1_type),
    .io_op2_type(decode_io_op2_type),
    .io_imm_type(decode_io_imm_type),
    .io_mem_rtype(decode_io_mem_rtype),
    .io_wb_type(decode_io_wb_type)
  );
  RegFile regfile ( // @[Core.scala 22:23]
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
  ImmGen imm_gen ( // @[Core.scala 23:23]
    .io_imm_type(imm_gen_io_imm_type),
    .io_inst(imm_gen_io_inst),
    .io_imm(imm_gen_io_imm)
  );
  ALU alu ( // @[Core.scala 24:19]
    .io_alu_type(alu_io_alu_type),
    .io_in1(alu_io_in1),
    .io_in2(alu_io_in2),
    .io_alu_out(alu_io_alu_out)
  );
  DifftestInstrCommit dt_ic ( // @[Core.scala 260:21]
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
  DifftestArchEvent dt_ae ( // @[Core.scala 275:21]
    .clock(dt_ae_clock),
    .coreid(dt_ae_coreid),
    .intrNO(dt_ae_intrNO),
    .cause(dt_ae_cause),
    .exceptionPC(dt_ae_exceptionPC),
    .exceptionInst(dt_ae_exceptionInst)
  );
  DifftestTrapEvent dt_te ( // @[Core.scala 291:21]
    .clock(dt_te_clock),
    .coreid(dt_te_coreid),
    .valid(dt_te_valid),
    .code(dt_te_code),
    .pc(dt_te_pc),
    .cycleCnt(dt_te_cycleCnt),
    .instrCnt(dt_te_instrCnt)
  );
  DifftestCSRState dt_cs ( // @[Core.scala 300:21]
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
  assign io_imem_addr = {{32'd0}, pc}; // @[Core.scala 43:15]
  assign io_dmem_en = decode_io_mem_rtype != 3'h0 | io_dmem_wen; // @[Core.scala 75:49]
  assign io_dmem_addr = alu_io_alu_out; // @[Core.scala 114:32 Core.scala 116:14]
  assign io_dmem_wdata = _io_dmem_wen_T ? _GEN_47 : _GEN_56; // @[Core.scala 216:43]
  assign io_dmem_wmask = _regfile_io_rd_en_T & decode_io_mem_rtype == 3'h0 & decode_io_alu_type != 4'h0 ? 64'hffffffffffffffff
     : _GEN_66; // @[Core.scala 126:101 Core.scala 30:15]
  assign io_dmem_wen = decode_io_wb_type == 3'h3 | decode_io_wb_type == 3'h4 | decode_io_wb_type == 3'h5 |
    decode_io_wb_type == 3'h6; // @[Core.scala 77:123]
  assign nxt_pc_io_pc = pc; // @[Core.scala 60:16]
  assign nxt_pc_io_imm_type = decode_io_imm_type; // @[Core.scala 61:22]
  assign nxt_pc_io_imm = imm_gen_io_imm; // @[Core.scala 64:17]
  assign nxt_pc_io_alu_type = decode_io_alu_type[2:0]; // @[Core.scala 62:22]
  assign nxt_pc_io_alu_out = alu_io_alu_out; // @[Core.scala 65:21]
  assign nxt_pc_io_wb_type = decode_io_wb_type; // @[Core.scala 63:21]
  assign decode_io_inst = io_imem_rdata[31:0]; // @[Core.scala 58:18]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1_addr = io_imem_rdata[19:15]; // @[Core.scala 52:30]
  assign regfile_io_rs2_addr = io_imem_rdata[24:20]; // @[Core.scala 53:30]
  assign regfile_io_rd_addr = io_imem_rdata[11:7]; // @[Core.scala 54:30]
  assign regfile_io_rd_data = _regfile_io_rd_en_T & decode_io_mem_rtype == 3'h0 & decode_io_alu_type != 4'h0 ?
    alu_io_alu_out : _GEN_64; // @[Core.scala 126:101 Core.scala 127:20]
  assign regfile_io_rd_en = decode_io_wb_type == 3'h1 | decode_io_wb_type == 3'h2; // @[Core.scala 73:54]
  assign imm_gen_io_imm_type = decode_io_imm_type; // @[Core.scala 68:23]
  assign imm_gen_io_inst = io_imem_rdata[31:0]; // @[Core.scala 69:19]
  assign alu_io_alu_type = decode_io_alu_type; // @[Core.scala 78:19]
  assign alu_io_in1 = alu_io_alu_type != 4'h0 & decode_io_op1_type == 3'h1 ? regfile_io_rs1_data : {{32'd0}, _GEN_0}; // @[Core.scala 88:68 Core.scala 89:14]
  assign alu_io_in2 = decode_io_op2_type == 3'h1 & (decode_io_imm_type == 3'h0 | decode_io_imm_type == 3'h3) ?
    regfile_io_rs2_data : _GEN_4; // @[Core.scala 96:104 Core.scala 98:14]
  assign dt_ic_clock = clock; // @[Core.scala 261:21]
  assign dt_ic_coreid = 8'h0; // @[Core.scala 262:21]
  assign dt_ic_index = 8'h0; // @[Core.scala 263:21]
  assign dt_ic_valid = dt_ic_io_valid_REG; // @[Core.scala 264:21]
  assign dt_ic_pc = {{32'd0}, dt_ic_io_pc_REG}; // @[Core.scala 265:21]
  assign dt_ic_instr = dt_ic_io_instr_REG[31:0]; // @[Core.scala 266:21]
  assign dt_ic_special = 8'h0; // @[Core.scala 267:21]
  assign dt_ic_skip = 1'h0; // @[Core.scala 268:21]
  assign dt_ic_isRVC = 1'h0; // @[Core.scala 269:21]
  assign dt_ic_scFailed = 1'h0; // @[Core.scala 270:21]
  assign dt_ic_wen = dt_ic_io_wen_REG; // @[Core.scala 271:21]
  assign dt_ic_wdata = dt_ic_io_wdata_REG; // @[Core.scala 272:21]
  assign dt_ic_wdest = {{3'd0}, dt_ic_io_wdest_REG}; // @[Core.scala 273:21]
  assign dt_ae_clock = clock; // @[Core.scala 276:25]
  assign dt_ae_coreid = 8'h0; // @[Core.scala 277:25]
  assign dt_ae_intrNO = 32'h0; // @[Core.scala 278:25]
  assign dt_ae_cause = 32'h0; // @[Core.scala 279:25]
  assign dt_ae_exceptionPC = 64'h0; // @[Core.scala 280:25]
  assign dt_ae_exceptionInst = 32'h0;
  assign dt_te_clock = clock; // @[Core.scala 292:21]
  assign dt_te_coreid = 8'h0; // @[Core.scala 293:21]
  assign dt_te_valid = io_imem_rdata == 64'h6b; // @[Core.scala 294:30]
  assign dt_te_code = rf_a0_0[2:0]; // @[Core.scala 295:29]
  assign dt_te_pc = {{32'd0}, pc}; // @[Core.scala 296:21]
  assign dt_te_cycleCnt = cycle_cnt; // @[Core.scala 297:21]
  assign dt_te_instrCnt = instr_cnt; // @[Core.scala 298:21]
  assign dt_cs_clock = clock; // @[Core.scala 301:27]
  assign dt_cs_coreid = 8'h0; // @[Core.scala 302:27]
  assign dt_cs_priviledgeMode = 2'h0; // @[Core.scala 303:27]
  assign dt_cs_mstatus = 64'h0; // @[Core.scala 304:27]
  assign dt_cs_sstatus = 64'h0; // @[Core.scala 305:27]
  assign dt_cs_mepc = 64'h0; // @[Core.scala 306:27]
  assign dt_cs_sepc = 64'h0; // @[Core.scala 307:27]
  assign dt_cs_mtval = 64'h0; // @[Core.scala 308:27]
  assign dt_cs_stval = 64'h0; // @[Core.scala 309:27]
  assign dt_cs_mtvec = 64'h0; // @[Core.scala 310:27]
  assign dt_cs_stvec = 64'h0; // @[Core.scala 311:27]
  assign dt_cs_mcause = 64'h0; // @[Core.scala 312:27]
  assign dt_cs_scause = 64'h0; // @[Core.scala 313:27]
  assign dt_cs_satp = 64'h0; // @[Core.scala 314:27]
  assign dt_cs_mip = 64'h0; // @[Core.scala 315:27]
  assign dt_cs_mie = 64'h0; // @[Core.scala 316:27]
  assign dt_cs_mscratch = 64'h0; // @[Core.scala 317:27]
  assign dt_cs_sscratch = 64'h0; // @[Core.scala 318:27]
  assign dt_cs_mideleg = 64'h0; // @[Core.scala 319:27]
  assign dt_cs_medeleg = 64'h0; // @[Core.scala 320:27]
  always @(posedge clock) begin
    if (reset) begin // @[Core.scala 16:19]
      pc <= 32'h80000000; // @[Core.scala 16:19]
    end else if (pc_en & io_imem_rdata != 64'h0) begin // @[Core.scala 37:10]
      pc <= nxt_pc_io_pc_nxt;
    end else begin
      pc <= 32'h80000000;
    end
    if (reset) begin // @[Core.scala 17:21]
      pc_en <= 1'h0; // @[Core.scala 17:21]
    end else begin
      pc_en <= 1'h1; // @[Core.scala 36:7]
    end
    dt_ic_io_valid_REG <= pc_en & _pc_T; // @[Core.scala 264:38]
    dt_ic_io_pc_REG <= pc; // @[Core.scala 265:31]
    dt_ic_io_instr_REG <= io_imem_rdata; // @[Core.scala 266:31]
    dt_ic_io_wen_REG <= regfile_io_rd_en & dt_ic_valid; // @[Core.scala 271:49]
    dt_ic_io_wdata_REG <= regfile_io_rd_data; // @[Core.scala 272:31]
    dt_ic_io_wdest_REG <= regfile_io_rd_addr; // @[Core.scala 273:31]
    if (reset) begin // @[Core.scala 282:26]
      cycle_cnt <= 64'h0; // @[Core.scala 282:26]
    end else if (dt_ic_valid) begin // @[Core.scala 284:24]
      cycle_cnt <= _cycle_cnt_T_1; // @[Core.scala 285:13]
    end
    if (reset) begin // @[Core.scala 283:26]
      instr_cnt <= 64'h0; // @[Core.scala 283:26]
    end else if (dt_ic_valid) begin // @[Core.scala 284:24]
      instr_cnt <= _instr_cnt_T_1; // @[Core.scala 286:13]
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
  pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  pc_en = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  dt_ic_io_valid_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  dt_ic_io_pc_REG = _RAND_3[31:0];
  _RAND_4 = {2{`RANDOM}};
  dt_ic_io_instr_REG = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  dt_ic_io_wen_REG = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  dt_ic_io_wdata_REG = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  dt_ic_io_wdest_REG = _RAND_7[4:0];
  _RAND_8 = {2{`RANDOM}};
  cycle_cnt = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  instr_cnt = _RAND_9[63:0];
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
  assign io_dmem_rdata = mem_dmem_rdata; // @[Ram.scala 44:21]
  assign mem_clk = clock; // @[Ram.scala 38:21]
  assign mem_imem_en = 1'h1; // @[Ram.scala 39:21]
  assign mem_imem_addr = io_imem_addr; // @[Ram.scala 40:21]
  assign mem_dmem_en = io_dmem_en; // @[Ram.scala 42:21]
  assign mem_dmem_addr = io_dmem_addr; // @[Ram.scala 43:21]
  assign mem_dmem_wdata = io_dmem_wdata; // @[Ram.scala 45:21]
  assign mem_dmem_wmask = io_dmem_wmask; // @[Ram.scala 46:21]
  assign mem_dmem_wen = io_dmem_wen; // @[Ram.scala 47:21]
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
