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

module PreambleGen( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_start, // @[:@6.4]
  output [8:0]  io_count, // @[:@6.4]
  output        io_dout_valid, // @[:@6.4]
  output [11:0] io_dout_bits_real, // @[:@6.4]
  output [11:0] io_dout_bits_imag // @[:@6.4]
);
  reg [7:0] raddr; // @[preamble.scala 21:22:@8.4]
  reg [31:0] _RAND_0;
  reg [1:0] state; // @[preamble.scala 24:22:@9.4]
  reg [31:0] _RAND_1;
  reg [8:0] value; // @[Counter.scala 26:33:@11.4]
  reg [31:0] _RAND_2;
  reg [11:0] _T_792_real; // @[preamble.scala 43:27:@189.4]
  reg [31:0] _RAND_3;
  reg [11:0] _T_792_imag; // @[preamble.scala 43:27:@189.4]
  reg [31:0] _RAND_4;
  reg  _T_794; // @[preamble.scala 44:27:@194.4]
  reg [31:0] _RAND_5;
  wire  dout_valid; // @[preamble.scala 25:27:@10.4]
  wire  _T_19; // @[Counter.scala 34:24:@13.6]
  wire [9:0] _T_21; // @[Counter.scala 35:22:@14.6]
  wire [8:0] _T_22; // @[Counter.scala 35:22:@15.6]
  wire [8:0] _GEN_2; // @[Counter.scala 37:21:@17.6]
  wire [8:0] _GEN_3; // @[Counter.scala 63:17:@12.4]
  wire  _T_771; // @[preamble.scala 43:39:@185.4]
  wire [3:0] _T_772; // @[preamble.scala 43:64:@186.4]
  wire [5:0] _T_778; // @[preamble.scala 43:84:@187.4]
  wire [11:0] _GEN_4; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_5; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_6; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_7; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_8; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_9; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_10; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_11; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_12; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_13; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_14; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_15; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_16; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_17; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_18; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_19; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_20; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_21; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_22; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_23; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_24; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_25; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_26; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_27; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_28; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_29; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_30; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_31; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_32; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_33; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_34; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_35; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_36; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_37; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_38; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_39; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_40; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_41; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_42; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_43; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_44; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_45; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_46; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_47; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_48; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_49; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_50; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_51; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_52; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_53; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_54; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_55; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_56; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_57; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_58; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_59; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_60; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_61; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_62; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_63; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_64; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_65; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_66; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_67; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_68; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_69; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_70; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_71; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_72; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_73; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_74; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_75; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_76; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_77; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_78; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_79; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_80; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_81; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_82; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_83; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_84; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_85; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_86; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_87; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_88; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_89; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_90; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_91; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_92; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_93; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_94; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_95; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_96; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_97; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_98; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_99; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_100; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_101; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_102; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_103; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_104; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_105; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_106; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_107; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_108; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_109; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_110; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_111; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_112; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_113; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_114; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_115; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_116; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_117; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_118; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_119; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_120; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_121; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_122; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_123; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_124; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_125; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_126; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_127; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_128; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_129; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_130; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_131; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_132; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_133; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_134; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_135; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_136; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_137; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_138; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_139; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_140; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_141; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_142; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_143; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_144; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_145; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_146; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_147; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_148; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_149; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_150; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_151; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_152; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_153; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_154; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_155; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_156; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_157; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_158; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _GEN_159; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _T_786_real; // @[preamble.scala 43:31:@188.4]
  wire [11:0] _T_786_imag; // @[preamble.scala 43:31:@188.4]
  wire  _T_795; // @[Conditional.scala 37:30:@197.4]
  wire [1:0] _GEN_160; // @[preamble.scala 50:23:@200.6]
  wire  _T_797; // @[Conditional.scala 37:30:@205.6]
  wire [8:0] _T_799; // @[preamble.scala 55:27:@207.8]
  wire [7:0] _T_800; // @[preamble.scala 55:27:@208.8]
  wire  _T_802; // @[preamble.scala 56:19:@210.8]
  wire [7:0] _GEN_161; // @[preamble.scala 56:30:@211.8]
  wire [1:0] _GEN_162; // @[preamble.scala 56:30:@211.8]
  wire  _T_804; // @[Conditional.scala 37:30:@217.8]
  wire  _T_809; // @[preamble.scala 63:19:@222.10]
  wire [7:0] _GEN_163; // @[preamble.scala 63:29:@223.10]
  wire [1:0] _GEN_164; // @[preamble.scala 63:29:@223.10]
  wire  _T_811; // @[Conditional.scala 37:30:@229.10]
  wire  _T_816; // @[preamble.scala 70:19:@234.12]
  wire [1:0] _GEN_165; // @[preamble.scala 70:30:@235.12]
  wire [7:0] _GEN_166; // @[Conditional.scala 39:67:@230.10]
  wire [1:0] _GEN_167; // @[Conditional.scala 39:67:@230.10]
  wire [7:0] _GEN_168; // @[Conditional.scala 39:67:@218.8]
  wire [1:0] _GEN_169; // @[Conditional.scala 39:67:@218.8]
  wire [7:0] _GEN_170; // @[Conditional.scala 39:67:@206.6]
  wire [1:0] _GEN_171; // @[Conditional.scala 39:67:@206.6]
  wire [7:0] _GEN_172; // @[Conditional.scala 40:58:@198.4]
  wire [1:0] _GEN_173; // @[Conditional.scala 40:58:@198.4]
  assign dout_valid = state != 2'h0; // @[preamble.scala 25:27:@10.4]
  assign _T_19 = value == 9'h13f; // @[Counter.scala 34:24:@13.6]
  assign _T_21 = value + 9'h1; // @[Counter.scala 35:22:@14.6]
  assign _T_22 = _T_21[8:0]; // @[Counter.scala 35:22:@15.6]
  assign _GEN_2 = _T_19 ? 9'h0 : _T_22; // @[Counter.scala 37:21:@17.6]
  assign _GEN_3 = dout_valid ? _GEN_2 : value; // @[Counter.scala 63:17:@12.4]
  assign _T_771 = state == 2'h1; // @[preamble.scala 43:39:@185.4]
  assign _T_772 = raddr[3:0]; // @[preamble.scala 43:64:@186.4]
  assign _T_778 = raddr[5:0]; // @[preamble.scala 43:84:@187.4]
  assign _GEN_4 = 4'h1 == _T_772 ? $signed(-12'sh88) : $signed(12'sh2f); // @[preamble.scala 43:31:@188.4]
  assign _GEN_5 = 4'h1 == _T_772 ? $signed(12'sh2) : $signed(12'sh2f); // @[preamble.scala 43:31:@188.4]
  assign _GEN_6 = 4'h2 == _T_772 ? $signed(-12'she) : $signed(_GEN_4); // @[preamble.scala 43:31:@188.4]
  assign _GEN_7 = 4'h2 == _T_772 ? $signed(-12'sh50) : $signed(_GEN_5); // @[preamble.scala 43:31:@188.4]
  assign _GEN_8 = 4'h3 == _T_772 ? $signed(12'sh92) : $signed(_GEN_6); // @[preamble.scala 43:31:@188.4]
  assign _GEN_9 = 4'h3 == _T_772 ? $signed(-12'shd) : $signed(_GEN_7); // @[preamble.scala 43:31:@188.4]
  assign _GEN_10 = 4'h4 == _T_772 ? $signed(12'sh5e) : $signed(_GEN_8); // @[preamble.scala 43:31:@188.4]
  assign _GEN_11 = 4'h4 == _T_772 ? $signed(12'sh0) : $signed(_GEN_9); // @[preamble.scala 43:31:@188.4]
  assign _GEN_12 = 4'h5 == _T_772 ? $signed(12'sh92) : $signed(_GEN_10); // @[preamble.scala 43:31:@188.4]
  assign _GEN_13 = 4'h5 == _T_772 ? $signed(-12'shd) : $signed(_GEN_11); // @[preamble.scala 43:31:@188.4]
  assign _GEN_14 = 4'h6 == _T_772 ? $signed(-12'she) : $signed(_GEN_12); // @[preamble.scala 43:31:@188.4]
  assign _GEN_15 = 4'h6 == _T_772 ? $signed(-12'sh50) : $signed(_GEN_13); // @[preamble.scala 43:31:@188.4]
  assign _GEN_16 = 4'h7 == _T_772 ? $signed(-12'sh88) : $signed(_GEN_14); // @[preamble.scala 43:31:@188.4]
  assign _GEN_17 = 4'h7 == _T_772 ? $signed(12'sh2) : $signed(_GEN_15); // @[preamble.scala 43:31:@188.4]
  assign _GEN_18 = 4'h8 == _T_772 ? $signed(12'sh2f) : $signed(_GEN_16); // @[preamble.scala 43:31:@188.4]
  assign _GEN_19 = 4'h8 == _T_772 ? $signed(12'sh2f) : $signed(_GEN_17); // @[preamble.scala 43:31:@188.4]
  assign _GEN_20 = 4'h9 == _T_772 ? $signed(12'sh2) : $signed(_GEN_18); // @[preamble.scala 43:31:@188.4]
  assign _GEN_21 = 4'h9 == _T_772 ? $signed(-12'sh88) : $signed(_GEN_19); // @[preamble.scala 43:31:@188.4]
  assign _GEN_22 = 4'ha == _T_772 ? $signed(-12'sh50) : $signed(_GEN_20); // @[preamble.scala 43:31:@188.4]
  assign _GEN_23 = 4'ha == _T_772 ? $signed(-12'she) : $signed(_GEN_21); // @[preamble.scala 43:31:@188.4]
  assign _GEN_24 = 4'hb == _T_772 ? $signed(-12'shd) : $signed(_GEN_22); // @[preamble.scala 43:31:@188.4]
  assign _GEN_25 = 4'hb == _T_772 ? $signed(12'sh92) : $signed(_GEN_23); // @[preamble.scala 43:31:@188.4]
  assign _GEN_26 = 4'hc == _T_772 ? $signed(12'sh0) : $signed(_GEN_24); // @[preamble.scala 43:31:@188.4]
  assign _GEN_27 = 4'hc == _T_772 ? $signed(12'sh5e) : $signed(_GEN_25); // @[preamble.scala 43:31:@188.4]
  assign _GEN_28 = 4'hd == _T_772 ? $signed(-12'shd) : $signed(_GEN_26); // @[preamble.scala 43:31:@188.4]
  assign _GEN_29 = 4'hd == _T_772 ? $signed(12'sh92) : $signed(_GEN_27); // @[preamble.scala 43:31:@188.4]
  assign _GEN_30 = 4'he == _T_772 ? $signed(-12'sh50) : $signed(_GEN_28); // @[preamble.scala 43:31:@188.4]
  assign _GEN_31 = 4'he == _T_772 ? $signed(-12'she) : $signed(_GEN_29); // @[preamble.scala 43:31:@188.4]
  assign _GEN_32 = 4'hf == _T_772 ? $signed(12'sh2) : $signed(_GEN_30); // @[preamble.scala 43:31:@188.4]
  assign _GEN_33 = 4'hf == _T_772 ? $signed(-12'sh88) : $signed(_GEN_31); // @[preamble.scala 43:31:@188.4]
  assign _GEN_34 = 6'h1 == _T_778 ? $signed(-12'sh5) : $signed(12'sha0); // @[preamble.scala 43:31:@188.4]
  assign _GEN_35 = 6'h1 == _T_778 ? $signed(-12'sh7b) : $signed(12'sh0); // @[preamble.scala 43:31:@188.4]
  assign _GEN_36 = 6'h2 == _T_778 ? $signed(12'sh29) : $signed(_GEN_34); // @[preamble.scala 43:31:@188.4]
  assign _GEN_37 = 6'h2 == _T_778 ? $signed(-12'sh72) : $signed(_GEN_35); // @[preamble.scala 43:31:@188.4]
  assign _GEN_38 = 6'h3 == _T_778 ? $signed(12'sh63) : $signed(_GEN_36); // @[preamble.scala 43:31:@188.4]
  assign _GEN_39 = 6'h3 == _T_778 ? $signed(12'sh55) : $signed(_GEN_37); // @[preamble.scala 43:31:@188.4]
  assign _GEN_40 = 6'h4 == _T_778 ? $signed(12'sh16) : $signed(_GEN_38); // @[preamble.scala 43:31:@188.4]
  assign _GEN_41 = 6'h4 == _T_778 ? $signed(12'sh1d) : $signed(_GEN_39); // @[preamble.scala 43:31:@188.4]
  assign _GEN_42 = 6'h5 == _T_778 ? $signed(12'sh3d) : $signed(_GEN_40); // @[preamble.scala 43:31:@188.4]
  assign _GEN_43 = 6'h5 == _T_778 ? $signed(-12'sh5a) : $signed(_GEN_41); // @[preamble.scala 43:31:@188.4]
  assign _GEN_44 = 6'h6 == _T_778 ? $signed(-12'sh76) : $signed(_GEN_42); // @[preamble.scala 43:31:@188.4]
  assign _GEN_45 = 6'h6 == _T_778 ? $signed(-12'sh39) : $signed(_GEN_43); // @[preamble.scala 43:31:@188.4]
  assign _GEN_46 = 6'h7 == _T_778 ? $signed(-12'sh27) : $signed(_GEN_44); // @[preamble.scala 43:31:@188.4]
  assign _GEN_47 = 6'h7 == _T_778 ? $signed(-12'sh6d) : $signed(_GEN_45); // @[preamble.scala 43:31:@188.4]
  assign _GEN_48 = 6'h8 == _T_778 ? $signed(12'sh64) : $signed(_GEN_46); // @[preamble.scala 43:31:@188.4]
  assign _GEN_49 = 6'h8 == _T_778 ? $signed(-12'sh1b) : $signed(_GEN_47); // @[preamble.scala 43:31:@188.4]
  assign _GEN_50 = 6'h9 == _T_778 ? $signed(12'sh37) : $signed(_GEN_48); // @[preamble.scala 43:31:@188.4]
  assign _GEN_51 = 6'h9 == _T_778 ? $signed(12'sh4) : $signed(_GEN_49); // @[preamble.scala 43:31:@188.4]
  assign _GEN_52 = 6'ha == _T_778 ? $signed(12'sh1) : $signed(_GEN_50); // @[preamble.scala 43:31:@188.4]
  assign _GEN_53 = 6'ha == _T_778 ? $signed(-12'sh76) : $signed(_GEN_51); // @[preamble.scala 43:31:@188.4]
  assign _GEN_54 = 6'hb == _T_778 ? $signed(-12'sh8c) : $signed(_GEN_52); // @[preamble.scala 43:31:@188.4]
  assign _GEN_55 = 6'hb == _T_778 ? $signed(-12'sh31) : $signed(_GEN_53); // @[preamble.scala 43:31:@188.4]
  assign _GEN_56 = 6'hc == _T_778 ? $signed(12'sh19) : $signed(_GEN_54); // @[preamble.scala 43:31:@188.4]
  assign _GEN_57 = 6'hc == _T_778 ? $signed(-12'sh3c) : $signed(_GEN_55); // @[preamble.scala 43:31:@188.4]
  assign _GEN_58 = 6'hd == _T_778 ? $signed(12'sh3c) : $signed(_GEN_56); // @[preamble.scala 43:31:@188.4]
  assign _GEN_59 = 6'hd == _T_778 ? $signed(-12'shf) : $signed(_GEN_57); // @[preamble.scala 43:31:@188.4]
  assign _GEN_60 = 6'he == _T_778 ? $signed(-12'sh17) : $signed(_GEN_58); // @[preamble.scala 43:31:@188.4]
  assign _GEN_61 = 6'he == _T_778 ? $signed(12'sha5) : $signed(_GEN_59); // @[preamble.scala 43:31:@188.4]
  assign _GEN_62 = 6'hf == _T_778 ? $signed(12'sh7a) : $signed(_GEN_60); // @[preamble.scala 43:31:@188.4]
  assign _GEN_63 = 6'hf == _T_778 ? $signed(-12'sh4) : $signed(_GEN_61); // @[preamble.scala 43:31:@188.4]
  assign _GEN_64 = 6'h10 == _T_778 ? $signed(12'sh40) : $signed(_GEN_62); // @[preamble.scala 43:31:@188.4]
  assign _GEN_65 = 6'h10 == _T_778 ? $signed(-12'sh40) : $signed(_GEN_63); // @[preamble.scala 43:31:@188.4]
  assign _GEN_66 = 6'h11 == _T_778 ? $signed(12'sh26) : $signed(_GEN_64); // @[preamble.scala 43:31:@188.4]
  assign _GEN_67 = 6'h11 == _T_778 ? $signed(12'sh65) : $signed(_GEN_65); // @[preamble.scala 43:31:@188.4]
  assign _GEN_68 = 6'h12 == _T_778 ? $signed(-12'sh3b) : $signed(_GEN_66); // @[preamble.scala 43:31:@188.4]
  assign _GEN_69 = 6'h12 == _T_778 ? $signed(12'sh28) : $signed(_GEN_67); // @[preamble.scala 43:31:@188.4]
  assign _GEN_70 = 6'h13 == _T_778 ? $signed(-12'sh86) : $signed(_GEN_68); // @[preamble.scala 43:31:@188.4]
  assign _GEN_71 = 6'h13 == _T_778 ? $signed(12'sh43) : $signed(_GEN_69); // @[preamble.scala 43:31:@188.4]
  assign _GEN_72 = 6'h14 == _T_778 ? $signed(12'sh54) : $signed(_GEN_70); // @[preamble.scala 43:31:@188.4]
  assign _GEN_73 = 6'h14 == _T_778 ? $signed(12'sh5f) : $signed(_GEN_71); // @[preamble.scala 43:31:@188.4]
  assign _GEN_74 = 6'h15 == _T_778 ? $signed(12'sh47) : $signed(_GEN_72); // @[preamble.scala 43:31:@188.4]
  assign _GEN_75 = 6'h15 == _T_778 ? $signed(12'she) : $signed(_GEN_73); // @[preamble.scala 43:31:@188.4]
  assign _GEN_76 = 6'h16 == _T_778 ? $signed(-12'sh3e) : $signed(_GEN_74); // @[preamble.scala 43:31:@188.4]
  assign _GEN_77 = 6'h16 == _T_778 ? $signed(12'sh53) : $signed(_GEN_75); // @[preamble.scala 43:31:@188.4]
  assign _GEN_78 = 6'h17 == _T_778 ? $signed(-12'sh3a) : $signed(_GEN_76); // @[preamble.scala 43:31:@188.4]
  assign _GEN_79 = 6'h17 == _T_778 ? $signed(-12'sh16) : $signed(_GEN_77); // @[preamble.scala 43:31:@188.4]
  assign _GEN_80 = 6'h18 == _T_778 ? $signed(-12'sh24) : $signed(_GEN_78); // @[preamble.scala 43:31:@188.4]
  assign _GEN_81 = 6'h18 == _T_778 ? $signed(-12'sh9b) : $signed(_GEN_79); // @[preamble.scala 43:31:@188.4]
  assign _GEN_82 = 6'h19 == _T_778 ? $signed(-12'sh7d) : $signed(_GEN_80); // @[preamble.scala 43:31:@188.4]
  assign _GEN_83 = 6'h19 == _T_778 ? $signed(-12'sh11) : $signed(_GEN_81); // @[preamble.scala 43:31:@188.4]
  assign _GEN_84 = 6'h1a == _T_778 ? $signed(-12'sh82) : $signed(_GEN_82); // @[preamble.scala 43:31:@188.4]
  assign _GEN_85 = 6'h1a == _T_778 ? $signed(-12'sh15) : $signed(_GEN_83); // @[preamble.scala 43:31:@188.4]
  assign _GEN_86 = 6'h1b == _T_778 ? $signed(12'sh4d) : $signed(_GEN_84); // @[preamble.scala 43:31:@188.4]
  assign _GEN_87 = 6'h1b == _T_778 ? $signed(-12'sh4c) : $signed(_GEN_85); // @[preamble.scala 43:31:@188.4]
  assign _GEN_88 = 6'h1c == _T_778 ? $signed(-12'sh3) : $signed(_GEN_86); // @[preamble.scala 43:31:@188.4]
  assign _GEN_89 = 6'h1c == _T_778 ? $signed(12'sh37) : $signed(_GEN_87); // @[preamble.scala 43:31:@188.4]
  assign _GEN_90 = 6'h1d == _T_778 ? $signed(-12'sh5e) : $signed(_GEN_88); // @[preamble.scala 43:31:@188.4]
  assign _GEN_91 = 6'h1d == _T_778 ? $signed(12'sh76) : $signed(_GEN_89); // @[preamble.scala 43:31:@188.4]
  assign _GEN_92 = 6'h1e == _T_778 ? $signed(12'sh5e) : $signed(_GEN_90); // @[preamble.scala 43:31:@188.4]
  assign _GEN_93 = 6'h1e == _T_778 ? $signed(12'sh6c) : $signed(_GEN_91); // @[preamble.scala 43:31:@188.4]
  assign _GEN_94 = 6'h1f == _T_778 ? $signed(12'shd) : $signed(_GEN_92); // @[preamble.scala 43:31:@188.4]
  assign _GEN_95 = 6'h1f == _T_778 ? $signed(12'sh64) : $signed(_GEN_93); // @[preamble.scala 43:31:@188.4]
  assign _GEN_96 = 6'h20 == _T_778 ? $signed(-12'sha0) : $signed(_GEN_94); // @[preamble.scala 43:31:@188.4]
  assign _GEN_97 = 6'h20 == _T_778 ? $signed(12'sh0) : $signed(_GEN_95); // @[preamble.scala 43:31:@188.4]
  assign _GEN_98 = 6'h21 == _T_778 ? $signed(12'shd) : $signed(_GEN_96); // @[preamble.scala 43:31:@188.4]
  assign _GEN_99 = 6'h21 == _T_778 ? $signed(-12'sh64) : $signed(_GEN_97); // @[preamble.scala 43:31:@188.4]
  assign _GEN_100 = 6'h22 == _T_778 ? $signed(12'sh5e) : $signed(_GEN_98); // @[preamble.scala 43:31:@188.4]
  assign _GEN_101 = 6'h22 == _T_778 ? $signed(-12'sh6c) : $signed(_GEN_99); // @[preamble.scala 43:31:@188.4]
  assign _GEN_102 = 6'h23 == _T_778 ? $signed(-12'sh5e) : $signed(_GEN_100); // @[preamble.scala 43:31:@188.4]
  assign _GEN_103 = 6'h23 == _T_778 ? $signed(-12'sh76) : $signed(_GEN_101); // @[preamble.scala 43:31:@188.4]
  assign _GEN_104 = 6'h24 == _T_778 ? $signed(-12'sh3) : $signed(_GEN_102); // @[preamble.scala 43:31:@188.4]
  assign _GEN_105 = 6'h24 == _T_778 ? $signed(-12'sh37) : $signed(_GEN_103); // @[preamble.scala 43:31:@188.4]
  assign _GEN_106 = 6'h25 == _T_778 ? $signed(12'sh4d) : $signed(_GEN_104); // @[preamble.scala 43:31:@188.4]
  assign _GEN_107 = 6'h25 == _T_778 ? $signed(12'sh4c) : $signed(_GEN_105); // @[preamble.scala 43:31:@188.4]
  assign _GEN_108 = 6'h26 == _T_778 ? $signed(-12'sh82) : $signed(_GEN_106); // @[preamble.scala 43:31:@188.4]
  assign _GEN_109 = 6'h26 == _T_778 ? $signed(12'sh15) : $signed(_GEN_107); // @[preamble.scala 43:31:@188.4]
  assign _GEN_110 = 6'h27 == _T_778 ? $signed(-12'sh7d) : $signed(_GEN_108); // @[preamble.scala 43:31:@188.4]
  assign _GEN_111 = 6'h27 == _T_778 ? $signed(12'sh11) : $signed(_GEN_109); // @[preamble.scala 43:31:@188.4]
  assign _GEN_112 = 6'h28 == _T_778 ? $signed(-12'sh24) : $signed(_GEN_110); // @[preamble.scala 43:31:@188.4]
  assign _GEN_113 = 6'h28 == _T_778 ? $signed(12'sh9b) : $signed(_GEN_111); // @[preamble.scala 43:31:@188.4]
  assign _GEN_114 = 6'h29 == _T_778 ? $signed(-12'sh3a) : $signed(_GEN_112); // @[preamble.scala 43:31:@188.4]
  assign _GEN_115 = 6'h29 == _T_778 ? $signed(12'sh16) : $signed(_GEN_113); // @[preamble.scala 43:31:@188.4]
  assign _GEN_116 = 6'h2a == _T_778 ? $signed(-12'sh3e) : $signed(_GEN_114); // @[preamble.scala 43:31:@188.4]
  assign _GEN_117 = 6'h2a == _T_778 ? $signed(-12'sh53) : $signed(_GEN_115); // @[preamble.scala 43:31:@188.4]
  assign _GEN_118 = 6'h2b == _T_778 ? $signed(12'sh47) : $signed(_GEN_116); // @[preamble.scala 43:31:@188.4]
  assign _GEN_119 = 6'h2b == _T_778 ? $signed(-12'she) : $signed(_GEN_117); // @[preamble.scala 43:31:@188.4]
  assign _GEN_120 = 6'h2c == _T_778 ? $signed(12'sh54) : $signed(_GEN_118); // @[preamble.scala 43:31:@188.4]
  assign _GEN_121 = 6'h2c == _T_778 ? $signed(-12'sh5f) : $signed(_GEN_119); // @[preamble.scala 43:31:@188.4]
  assign _GEN_122 = 6'h2d == _T_778 ? $signed(-12'sh86) : $signed(_GEN_120); // @[preamble.scala 43:31:@188.4]
  assign _GEN_123 = 6'h2d == _T_778 ? $signed(-12'sh43) : $signed(_GEN_121); // @[preamble.scala 43:31:@188.4]
  assign _GEN_124 = 6'h2e == _T_778 ? $signed(-12'sh3b) : $signed(_GEN_122); // @[preamble.scala 43:31:@188.4]
  assign _GEN_125 = 6'h2e == _T_778 ? $signed(-12'sh28) : $signed(_GEN_123); // @[preamble.scala 43:31:@188.4]
  assign _GEN_126 = 6'h2f == _T_778 ? $signed(12'sh26) : $signed(_GEN_124); // @[preamble.scala 43:31:@188.4]
  assign _GEN_127 = 6'h2f == _T_778 ? $signed(-12'sh65) : $signed(_GEN_125); // @[preamble.scala 43:31:@188.4]
  assign _GEN_128 = 6'h30 == _T_778 ? $signed(12'sh40) : $signed(_GEN_126); // @[preamble.scala 43:31:@188.4]
  assign _GEN_129 = 6'h30 == _T_778 ? $signed(12'sh40) : $signed(_GEN_127); // @[preamble.scala 43:31:@188.4]
  assign _GEN_130 = 6'h31 == _T_778 ? $signed(12'sh7a) : $signed(_GEN_128); // @[preamble.scala 43:31:@188.4]
  assign _GEN_131 = 6'h31 == _T_778 ? $signed(12'sh4) : $signed(_GEN_129); // @[preamble.scala 43:31:@188.4]
  assign _GEN_132 = 6'h32 == _T_778 ? $signed(-12'sh17) : $signed(_GEN_130); // @[preamble.scala 43:31:@188.4]
  assign _GEN_133 = 6'h32 == _T_778 ? $signed(-12'sha5) : $signed(_GEN_131); // @[preamble.scala 43:31:@188.4]
  assign _GEN_134 = 6'h33 == _T_778 ? $signed(12'sh3c) : $signed(_GEN_132); // @[preamble.scala 43:31:@188.4]
  assign _GEN_135 = 6'h33 == _T_778 ? $signed(12'shf) : $signed(_GEN_133); // @[preamble.scala 43:31:@188.4]
  assign _GEN_136 = 6'h34 == _T_778 ? $signed(12'sh19) : $signed(_GEN_134); // @[preamble.scala 43:31:@188.4]
  assign _GEN_137 = 6'h34 == _T_778 ? $signed(12'sh3c) : $signed(_GEN_135); // @[preamble.scala 43:31:@188.4]
  assign _GEN_138 = 6'h35 == _T_778 ? $signed(-12'sh8c) : $signed(_GEN_136); // @[preamble.scala 43:31:@188.4]
  assign _GEN_139 = 6'h35 == _T_778 ? $signed(12'sh31) : $signed(_GEN_137); // @[preamble.scala 43:31:@188.4]
  assign _GEN_140 = 6'h36 == _T_778 ? $signed(12'sh1) : $signed(_GEN_138); // @[preamble.scala 43:31:@188.4]
  assign _GEN_141 = 6'h36 == _T_778 ? $signed(12'sh76) : $signed(_GEN_139); // @[preamble.scala 43:31:@188.4]
  assign _GEN_142 = 6'h37 == _T_778 ? $signed(12'sh37) : $signed(_GEN_140); // @[preamble.scala 43:31:@188.4]
  assign _GEN_143 = 6'h37 == _T_778 ? $signed(-12'sh4) : $signed(_GEN_141); // @[preamble.scala 43:31:@188.4]
  assign _GEN_144 = 6'h38 == _T_778 ? $signed(12'sh64) : $signed(_GEN_142); // @[preamble.scala 43:31:@188.4]
  assign _GEN_145 = 6'h38 == _T_778 ? $signed(12'sh1b) : $signed(_GEN_143); // @[preamble.scala 43:31:@188.4]
  assign _GEN_146 = 6'h39 == _T_778 ? $signed(-12'sh27) : $signed(_GEN_144); // @[preamble.scala 43:31:@188.4]
  assign _GEN_147 = 6'h39 == _T_778 ? $signed(12'sh6d) : $signed(_GEN_145); // @[preamble.scala 43:31:@188.4]
  assign _GEN_148 = 6'h3a == _T_778 ? $signed(-12'sh76) : $signed(_GEN_146); // @[preamble.scala 43:31:@188.4]
  assign _GEN_149 = 6'h3a == _T_778 ? $signed(12'sh39) : $signed(_GEN_147); // @[preamble.scala 43:31:@188.4]
  assign _GEN_150 = 6'h3b == _T_778 ? $signed(12'sh3d) : $signed(_GEN_148); // @[preamble.scala 43:31:@188.4]
  assign _GEN_151 = 6'h3b == _T_778 ? $signed(12'sh5a) : $signed(_GEN_149); // @[preamble.scala 43:31:@188.4]
  assign _GEN_152 = 6'h3c == _T_778 ? $signed(12'sh16) : $signed(_GEN_150); // @[preamble.scala 43:31:@188.4]
  assign _GEN_153 = 6'h3c == _T_778 ? $signed(-12'sh1d) : $signed(_GEN_151); // @[preamble.scala 43:31:@188.4]
  assign _GEN_154 = 6'h3d == _T_778 ? $signed(12'sh63) : $signed(_GEN_152); // @[preamble.scala 43:31:@188.4]
  assign _GEN_155 = 6'h3d == _T_778 ? $signed(-12'sh55) : $signed(_GEN_153); // @[preamble.scala 43:31:@188.4]
  assign _GEN_156 = 6'h3e == _T_778 ? $signed(12'sh29) : $signed(_GEN_154); // @[preamble.scala 43:31:@188.4]
  assign _GEN_157 = 6'h3e == _T_778 ? $signed(12'sh72) : $signed(_GEN_155); // @[preamble.scala 43:31:@188.4]
  assign _GEN_158 = 6'h3f == _T_778 ? $signed(-12'sh5) : $signed(_GEN_156); // @[preamble.scala 43:31:@188.4]
  assign _GEN_159 = 6'h3f == _T_778 ? $signed(12'sh7b) : $signed(_GEN_157); // @[preamble.scala 43:31:@188.4]
  assign _T_786_real = _T_771 ? $signed(_GEN_32) : $signed(_GEN_158); // @[preamble.scala 43:31:@188.4]
  assign _T_786_imag = _T_771 ? $signed(_GEN_33) : $signed(_GEN_159); // @[preamble.scala 43:31:@188.4]
  assign _T_795 = 2'h0 == state; // @[Conditional.scala 37:30:@197.4]
  assign _GEN_160 = io_start ? 2'h1 : state; // @[preamble.scala 50:23:@200.6]
  assign _T_797 = 2'h1 == state; // @[Conditional.scala 37:30:@205.6]
  assign _T_799 = raddr + 8'h1; // @[preamble.scala 55:27:@207.8]
  assign _T_800 = _T_799[7:0]; // @[preamble.scala 55:27:@208.8]
  assign _T_802 = raddr == 8'h9f; // @[preamble.scala 56:19:@210.8]
  assign _GEN_161 = _T_802 ? 8'h20 : _T_800; // @[preamble.scala 56:30:@211.8]
  assign _GEN_162 = _T_802 ? 2'h2 : state; // @[preamble.scala 56:30:@211.8]
  assign _T_804 = 2'h2 == state; // @[Conditional.scala 37:30:@217.8]
  assign _T_809 = raddr == 8'h3f; // @[preamble.scala 63:19:@222.10]
  assign _GEN_163 = _T_809 ? 8'h0 : _T_800; // @[preamble.scala 63:29:@223.10]
  assign _GEN_164 = _T_809 ? 2'h3 : state; // @[preamble.scala 63:29:@223.10]
  assign _T_811 = 2'h3 == state; // @[Conditional.scala 37:30:@229.10]
  assign _T_816 = raddr == 8'h7f; // @[preamble.scala 70:19:@234.12]
  assign _GEN_165 = _T_816 ? 2'h0 : state; // @[preamble.scala 70:30:@235.12]
  assign _GEN_166 = _T_811 ? _T_800 : raddr; // @[Conditional.scala 39:67:@230.10]
  assign _GEN_167 = _T_811 ? _GEN_165 : state; // @[Conditional.scala 39:67:@230.10]
  assign _GEN_168 = _T_804 ? _GEN_163 : _GEN_166; // @[Conditional.scala 39:67:@218.8]
  assign _GEN_169 = _T_804 ? _GEN_164 : _GEN_167; // @[Conditional.scala 39:67:@218.8]
  assign _GEN_170 = _T_797 ? _GEN_161 : _GEN_168; // @[Conditional.scala 39:67:@206.6]
  assign _GEN_171 = _T_797 ? _GEN_162 : _GEN_169; // @[Conditional.scala 39:67:@206.6]
  assign _GEN_172 = _T_795 ? 8'h0 : _GEN_170; // @[Conditional.scala 40:58:@198.4]
  assign _GEN_173 = _T_795 ? _GEN_160 : _GEN_171; // @[Conditional.scala 40:58:@198.4]
  assign io_count = value;
  assign io_dout_valid = _T_794;
  assign io_dout_bits_real = _T_792_real;
  assign io_dout_bits_imag = _T_792_imag;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  raddr = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  state = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  value = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_792_real = _RAND_3[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_792_imag = _RAND_4[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_794 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      raddr <= 8'h0;
    end else begin
      if (_T_795) begin
        raddr <= 8'h0;
      end else begin
        if (_T_797) begin
          if (_T_802) begin
            raddr <= 8'h20;
          end else begin
            raddr <= _T_800;
          end
        end else begin
          if (_T_804) begin
            if (_T_809) begin
              raddr <= 8'h0;
            end else begin
              raddr <= _T_800;
            end
          end else begin
            if (_T_811) begin
              raddr <= _T_800;
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_795) begin
        if (io_start) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_797) begin
          if (_T_802) begin
            state <= 2'h2;
          end
        end else begin
          if (_T_804) begin
            if (_T_809) begin
              state <= 2'h3;
            end
          end else begin
            if (_T_811) begin
              if (_T_816) begin
                state <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 9'h0;
    end else begin
      if (dout_valid) begin
        if (_T_19) begin
          value <= 9'h0;
        end else begin
          value <= _T_22;
        end
      end
    end
    if (_T_771) begin
      if (4'hf == _T_772) begin
        _T_792_real <= 12'sh2;
      end else begin
        if (4'he == _T_772) begin
          _T_792_real <= -12'sh50;
        end else begin
          if (4'hd == _T_772) begin
            _T_792_real <= -12'shd;
          end else begin
            if (4'hc == _T_772) begin
              _T_792_real <= 12'sh0;
            end else begin
              if (4'hb == _T_772) begin
                _T_792_real <= -12'shd;
              end else begin
                if (4'ha == _T_772) begin
                  _T_792_real <= -12'sh50;
                end else begin
                  if (4'h9 == _T_772) begin
                    _T_792_real <= 12'sh2;
                  end else begin
                    if (4'h8 == _T_772) begin
                      _T_792_real <= 12'sh2f;
                    end else begin
                      if (4'h7 == _T_772) begin
                        _T_792_real <= -12'sh88;
                      end else begin
                        if (4'h6 == _T_772) begin
                          _T_792_real <= -12'she;
                        end else begin
                          if (4'h5 == _T_772) begin
                            _T_792_real <= 12'sh92;
                          end else begin
                            if (4'h4 == _T_772) begin
                              _T_792_real <= 12'sh5e;
                            end else begin
                              if (4'h3 == _T_772) begin
                                _T_792_real <= 12'sh92;
                              end else begin
                                if (4'h2 == _T_772) begin
                                  _T_792_real <= -12'she;
                                end else begin
                                  if (4'h1 == _T_772) begin
                                    _T_792_real <= -12'sh88;
                                  end else begin
                                    _T_792_real <= 12'sh2f;
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end else begin
      if (6'h3f == _T_778) begin
        _T_792_real <= -12'sh5;
      end else begin
        if (6'h3e == _T_778) begin
          _T_792_real <= 12'sh29;
        end else begin
          if (6'h3d == _T_778) begin
            _T_792_real <= 12'sh63;
          end else begin
            if (6'h3c == _T_778) begin
              _T_792_real <= 12'sh16;
            end else begin
              if (6'h3b == _T_778) begin
                _T_792_real <= 12'sh3d;
              end else begin
                if (6'h3a == _T_778) begin
                  _T_792_real <= -12'sh76;
                end else begin
                  if (6'h39 == _T_778) begin
                    _T_792_real <= -12'sh27;
                  end else begin
                    if (6'h38 == _T_778) begin
                      _T_792_real <= 12'sh64;
                    end else begin
                      if (6'h37 == _T_778) begin
                        _T_792_real <= 12'sh37;
                      end else begin
                        if (6'h36 == _T_778) begin
                          _T_792_real <= 12'sh1;
                        end else begin
                          if (6'h35 == _T_778) begin
                            _T_792_real <= -12'sh8c;
                          end else begin
                            if (6'h34 == _T_778) begin
                              _T_792_real <= 12'sh19;
                            end else begin
                              if (6'h33 == _T_778) begin
                                _T_792_real <= 12'sh3c;
                              end else begin
                                if (6'h32 == _T_778) begin
                                  _T_792_real <= -12'sh17;
                                end else begin
                                  if (6'h31 == _T_778) begin
                                    _T_792_real <= 12'sh7a;
                                  end else begin
                                    if (6'h30 == _T_778) begin
                                      _T_792_real <= 12'sh40;
                                    end else begin
                                      if (6'h2f == _T_778) begin
                                        _T_792_real <= 12'sh26;
                                      end else begin
                                        if (6'h2e == _T_778) begin
                                          _T_792_real <= -12'sh3b;
                                        end else begin
                                          if (6'h2d == _T_778) begin
                                            _T_792_real <= -12'sh86;
                                          end else begin
                                            if (6'h2c == _T_778) begin
                                              _T_792_real <= 12'sh54;
                                            end else begin
                                              if (6'h2b == _T_778) begin
                                                _T_792_real <= 12'sh47;
                                              end else begin
                                                if (6'h2a == _T_778) begin
                                                  _T_792_real <= -12'sh3e;
                                                end else begin
                                                  if (6'h29 == _T_778) begin
                                                    _T_792_real <= -12'sh3a;
                                                  end else begin
                                                    if (6'h28 == _T_778) begin
                                                      _T_792_real <= -12'sh24;
                                                    end else begin
                                                      if (6'h27 == _T_778) begin
                                                        _T_792_real <= -12'sh7d;
                                                      end else begin
                                                        if (6'h26 == _T_778) begin
                                                          _T_792_real <= -12'sh82;
                                                        end else begin
                                                          if (6'h25 == _T_778) begin
                                                            _T_792_real <= 12'sh4d;
                                                          end else begin
                                                            if (6'h24 == _T_778) begin
                                                              _T_792_real <= -12'sh3;
                                                            end else begin
                                                              if (6'h23 == _T_778) begin
                                                                _T_792_real <= -12'sh5e;
                                                              end else begin
                                                                if (6'h22 == _T_778) begin
                                                                  _T_792_real <= 12'sh5e;
                                                                end else begin
                                                                  if (6'h21 == _T_778) begin
                                                                    _T_792_real <= 12'shd;
                                                                  end else begin
                                                                    if (6'h20 == _T_778) begin
                                                                      _T_792_real <= -12'sha0;
                                                                    end else begin
                                                                      if (6'h1f == _T_778) begin
                                                                        _T_792_real <= 12'shd;
                                                                      end else begin
                                                                        if (6'h1e == _T_778) begin
                                                                          _T_792_real <= 12'sh5e;
                                                                        end else begin
                                                                          if (6'h1d == _T_778) begin
                                                                            _T_792_real <= -12'sh5e;
                                                                          end else begin
                                                                            if (6'h1c == _T_778) begin
                                                                              _T_792_real <= -12'sh3;
                                                                            end else begin
                                                                              if (6'h1b == _T_778) begin
                                                                                _T_792_real <= 12'sh4d;
                                                                              end else begin
                                                                                if (6'h1a == _T_778) begin
                                                                                  _T_792_real <= -12'sh82;
                                                                                end else begin
                                                                                  if (6'h19 == _T_778) begin
                                                                                    _T_792_real <= -12'sh7d;
                                                                                  end else begin
                                                                                    if (6'h18 == _T_778) begin
                                                                                      _T_792_real <= -12'sh24;
                                                                                    end else begin
                                                                                      if (6'h17 == _T_778) begin
                                                                                        _T_792_real <= -12'sh3a;
                                                                                      end else begin
                                                                                        if (6'h16 == _T_778) begin
                                                                                          _T_792_real <= -12'sh3e;
                                                                                        end else begin
                                                                                          if (6'h15 == _T_778) begin
                                                                                            _T_792_real <= 12'sh47;
                                                                                          end else begin
                                                                                            if (6'h14 == _T_778) begin
                                                                                              _T_792_real <= 12'sh54;
                                                                                            end else begin
                                                                                              if (6'h13 == _T_778) begin
                                                                                                _T_792_real <= -12'sh86;
                                                                                              end else begin
                                                                                                if (6'h12 == _T_778) begin
                                                                                                  _T_792_real <= -12'sh3b;
                                                                                                end else begin
                                                                                                  if (6'h11 == _T_778) begin
                                                                                                    _T_792_real <= 12'sh26;
                                                                                                  end else begin
                                                                                                    if (6'h10 == _T_778) begin
                                                                                                      _T_792_real <= 12'sh40;
                                                                                                    end else begin
                                                                                                      if (6'hf == _T_778) begin
                                                                                                        _T_792_real <= 12'sh7a;
                                                                                                      end else begin
                                                                                                        if (6'he == _T_778) begin
                                                                                                          _T_792_real <= -12'sh17;
                                                                                                        end else begin
                                                                                                          if (6'hd == _T_778) begin
                                                                                                            _T_792_real <= 12'sh3c;
                                                                                                          end else begin
                                                                                                            if (6'hc == _T_778) begin
                                                                                                              _T_792_real <= 12'sh19;
                                                                                                            end else begin
                                                                                                              if (6'hb == _T_778) begin
                                                                                                                _T_792_real <= -12'sh8c;
                                                                                                              end else begin
                                                                                                                if (6'ha == _T_778) begin
                                                                                                                  _T_792_real <= 12'sh1;
                                                                                                                end else begin
                                                                                                                  if (6'h9 == _T_778) begin
                                                                                                                    _T_792_real <= 12'sh37;
                                                                                                                  end else begin
                                                                                                                    if (6'h8 == _T_778) begin
                                                                                                                      _T_792_real <= 12'sh64;
                                                                                                                    end else begin
                                                                                                                      if (6'h7 == _T_778) begin
                                                                                                                        _T_792_real <= -12'sh27;
                                                                                                                      end else begin
                                                                                                                        if (6'h6 == _T_778) begin
                                                                                                                          _T_792_real <= -12'sh76;
                                                                                                                        end else begin
                                                                                                                          if (6'h5 == _T_778) begin
                                                                                                                            _T_792_real <= 12'sh3d;
                                                                                                                          end else begin
                                                                                                                            if (6'h4 == _T_778) begin
                                                                                                                              _T_792_real <= 12'sh16;
                                                                                                                            end else begin
                                                                                                                              if (6'h3 == _T_778) begin
                                                                                                                                _T_792_real <= 12'sh63;
                                                                                                                              end else begin
                                                                                                                                if (6'h2 == _T_778) begin
                                                                                                                                  _T_792_real <= 12'sh29;
                                                                                                                                end else begin
                                                                                                                                  if (6'h1 == _T_778) begin
                                                                                                                                    _T_792_real <= -12'sh5;
                                                                                                                                  end else begin
                                                                                                                                    _T_792_real <= 12'sha0;
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_771) begin
      if (4'hf == _T_772) begin
        _T_792_imag <= -12'sh88;
      end else begin
        if (4'he == _T_772) begin
          _T_792_imag <= -12'she;
        end else begin
          if (4'hd == _T_772) begin
            _T_792_imag <= 12'sh92;
          end else begin
            if (4'hc == _T_772) begin
              _T_792_imag <= 12'sh5e;
            end else begin
              if (4'hb == _T_772) begin
                _T_792_imag <= 12'sh92;
              end else begin
                if (4'ha == _T_772) begin
                  _T_792_imag <= -12'she;
                end else begin
                  if (4'h9 == _T_772) begin
                    _T_792_imag <= -12'sh88;
                  end else begin
                    if (4'h8 == _T_772) begin
                      _T_792_imag <= 12'sh2f;
                    end else begin
                      if (4'h7 == _T_772) begin
                        _T_792_imag <= 12'sh2;
                      end else begin
                        if (4'h6 == _T_772) begin
                          _T_792_imag <= -12'sh50;
                        end else begin
                          if (4'h5 == _T_772) begin
                            _T_792_imag <= -12'shd;
                          end else begin
                            if (4'h4 == _T_772) begin
                              _T_792_imag <= 12'sh0;
                            end else begin
                              if (4'h3 == _T_772) begin
                                _T_792_imag <= -12'shd;
                              end else begin
                                if (4'h2 == _T_772) begin
                                  _T_792_imag <= -12'sh50;
                                end else begin
                                  if (4'h1 == _T_772) begin
                                    _T_792_imag <= 12'sh2;
                                  end else begin
                                    _T_792_imag <= 12'sh2f;
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end else begin
      if (6'h3f == _T_778) begin
        _T_792_imag <= 12'sh7b;
      end else begin
        if (6'h3e == _T_778) begin
          _T_792_imag <= 12'sh72;
        end else begin
          if (6'h3d == _T_778) begin
            _T_792_imag <= -12'sh55;
          end else begin
            if (6'h3c == _T_778) begin
              _T_792_imag <= -12'sh1d;
            end else begin
              if (6'h3b == _T_778) begin
                _T_792_imag <= 12'sh5a;
              end else begin
                if (6'h3a == _T_778) begin
                  _T_792_imag <= 12'sh39;
                end else begin
                  if (6'h39 == _T_778) begin
                    _T_792_imag <= 12'sh6d;
                  end else begin
                    if (6'h38 == _T_778) begin
                      _T_792_imag <= 12'sh1b;
                    end else begin
                      if (6'h37 == _T_778) begin
                        _T_792_imag <= -12'sh4;
                      end else begin
                        if (6'h36 == _T_778) begin
                          _T_792_imag <= 12'sh76;
                        end else begin
                          if (6'h35 == _T_778) begin
                            _T_792_imag <= 12'sh31;
                          end else begin
                            if (6'h34 == _T_778) begin
                              _T_792_imag <= 12'sh3c;
                            end else begin
                              if (6'h33 == _T_778) begin
                                _T_792_imag <= 12'shf;
                              end else begin
                                if (6'h32 == _T_778) begin
                                  _T_792_imag <= -12'sha5;
                                end else begin
                                  if (6'h31 == _T_778) begin
                                    _T_792_imag <= 12'sh4;
                                  end else begin
                                    if (6'h30 == _T_778) begin
                                      _T_792_imag <= 12'sh40;
                                    end else begin
                                      if (6'h2f == _T_778) begin
                                        _T_792_imag <= -12'sh65;
                                      end else begin
                                        if (6'h2e == _T_778) begin
                                          _T_792_imag <= -12'sh28;
                                        end else begin
                                          if (6'h2d == _T_778) begin
                                            _T_792_imag <= -12'sh43;
                                          end else begin
                                            if (6'h2c == _T_778) begin
                                              _T_792_imag <= -12'sh5f;
                                            end else begin
                                              if (6'h2b == _T_778) begin
                                                _T_792_imag <= -12'she;
                                              end else begin
                                                if (6'h2a == _T_778) begin
                                                  _T_792_imag <= -12'sh53;
                                                end else begin
                                                  if (6'h29 == _T_778) begin
                                                    _T_792_imag <= 12'sh16;
                                                  end else begin
                                                    if (6'h28 == _T_778) begin
                                                      _T_792_imag <= 12'sh9b;
                                                    end else begin
                                                      if (6'h27 == _T_778) begin
                                                        _T_792_imag <= 12'sh11;
                                                      end else begin
                                                        if (6'h26 == _T_778) begin
                                                          _T_792_imag <= 12'sh15;
                                                        end else begin
                                                          if (6'h25 == _T_778) begin
                                                            _T_792_imag <= 12'sh4c;
                                                          end else begin
                                                            if (6'h24 == _T_778) begin
                                                              _T_792_imag <= -12'sh37;
                                                            end else begin
                                                              if (6'h23 == _T_778) begin
                                                                _T_792_imag <= -12'sh76;
                                                              end else begin
                                                                if (6'h22 == _T_778) begin
                                                                  _T_792_imag <= -12'sh6c;
                                                                end else begin
                                                                  if (6'h21 == _T_778) begin
                                                                    _T_792_imag <= -12'sh64;
                                                                  end else begin
                                                                    if (6'h20 == _T_778) begin
                                                                      _T_792_imag <= 12'sh0;
                                                                    end else begin
                                                                      if (6'h1f == _T_778) begin
                                                                        _T_792_imag <= 12'sh64;
                                                                      end else begin
                                                                        if (6'h1e == _T_778) begin
                                                                          _T_792_imag <= 12'sh6c;
                                                                        end else begin
                                                                          if (6'h1d == _T_778) begin
                                                                            _T_792_imag <= 12'sh76;
                                                                          end else begin
                                                                            if (6'h1c == _T_778) begin
                                                                              _T_792_imag <= 12'sh37;
                                                                            end else begin
                                                                              if (6'h1b == _T_778) begin
                                                                                _T_792_imag <= -12'sh4c;
                                                                              end else begin
                                                                                if (6'h1a == _T_778) begin
                                                                                  _T_792_imag <= -12'sh15;
                                                                                end else begin
                                                                                  if (6'h19 == _T_778) begin
                                                                                    _T_792_imag <= -12'sh11;
                                                                                  end else begin
                                                                                    if (6'h18 == _T_778) begin
                                                                                      _T_792_imag <= -12'sh9b;
                                                                                    end else begin
                                                                                      if (6'h17 == _T_778) begin
                                                                                        _T_792_imag <= -12'sh16;
                                                                                      end else begin
                                                                                        if (6'h16 == _T_778) begin
                                                                                          _T_792_imag <= 12'sh53;
                                                                                        end else begin
                                                                                          if (6'h15 == _T_778) begin
                                                                                            _T_792_imag <= 12'she;
                                                                                          end else begin
                                                                                            if (6'h14 == _T_778) begin
                                                                                              _T_792_imag <= 12'sh5f;
                                                                                            end else begin
                                                                                              if (6'h13 == _T_778) begin
                                                                                                _T_792_imag <= 12'sh43;
                                                                                              end else begin
                                                                                                if (6'h12 == _T_778) begin
                                                                                                  _T_792_imag <= 12'sh28;
                                                                                                end else begin
                                                                                                  if (6'h11 == _T_778) begin
                                                                                                    _T_792_imag <= 12'sh65;
                                                                                                  end else begin
                                                                                                    if (6'h10 == _T_778) begin
                                                                                                      _T_792_imag <= -12'sh40;
                                                                                                    end else begin
                                                                                                      if (6'hf == _T_778) begin
                                                                                                        _T_792_imag <= -12'sh4;
                                                                                                      end else begin
                                                                                                        if (6'he == _T_778) begin
                                                                                                          _T_792_imag <= 12'sha5;
                                                                                                        end else begin
                                                                                                          if (6'hd == _T_778) begin
                                                                                                            _T_792_imag <= -12'shf;
                                                                                                          end else begin
                                                                                                            if (6'hc == _T_778) begin
                                                                                                              _T_792_imag <= -12'sh3c;
                                                                                                            end else begin
                                                                                                              if (6'hb == _T_778) begin
                                                                                                                _T_792_imag <= -12'sh31;
                                                                                                              end else begin
                                                                                                                if (6'ha == _T_778) begin
                                                                                                                  _T_792_imag <= -12'sh76;
                                                                                                                end else begin
                                                                                                                  if (6'h9 == _T_778) begin
                                                                                                                    _T_792_imag <= 12'sh4;
                                                                                                                  end else begin
                                                                                                                    if (6'h8 == _T_778) begin
                                                                                                                      _T_792_imag <= -12'sh1b;
                                                                                                                    end else begin
                                                                                                                      if (6'h7 == _T_778) begin
                                                                                                                        _T_792_imag <= -12'sh6d;
                                                                                                                      end else begin
                                                                                                                        if (6'h6 == _T_778) begin
                                                                                                                          _T_792_imag <= -12'sh39;
                                                                                                                        end else begin
                                                                                                                          if (6'h5 == _T_778) begin
                                                                                                                            _T_792_imag <= -12'sh5a;
                                                                                                                          end else begin
                                                                                                                            if (6'h4 == _T_778) begin
                                                                                                                              _T_792_imag <= 12'sh1d;
                                                                                                                            end else begin
                                                                                                                              if (6'h3 == _T_778) begin
                                                                                                                                _T_792_imag <= 12'sh55;
                                                                                                                              end else begin
                                                                                                                                if (6'h2 == _T_778) begin
                                                                                                                                  _T_792_imag <= -12'sh72;
                                                                                                                                end else begin
                                                                                                                                  if (6'h1 == _T_778) begin
                                                                                                                                    _T_792_imag <= -12'sh7b;
                                                                                                                                  end else begin
                                                                                                                                    _T_792_imag <= 12'sh0;
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    _T_794 <= dout_valid;
  end
endmodule
module TxControl( // @[:@261.2]
  input        clock, // @[:@262.4]
  input        reset, // @[:@263.4]
  output       io_cmd_ready, // @[:@264.4]
  input        io_cmd_valid, // @[:@264.4]
  input  [7:0] io_cmd_bits_length, // @[:@264.4]
  input  [1:0] io_cmd_bits_mode, // @[:@264.4]
  input  [6:0] io_cmd_bits_repeat, // @[:@264.4]
  input  [7:0] io_cmd_bits_pause, // @[:@264.4]
  input  [8:0] io_pregen_count, // @[:@264.4]
  input  [5:0] io_interleaver_dcnt, // @[:@264.4]
  input        io_ifftcp_dout_valid, // @[:@264.4]
  output       io_din_ready, // @[:@264.4]
  output       io_tx_start, // @[:@264.4]
  output       io_zero_tail, // @[:@264.4]
  output       io_ifftcp_start, // @[:@264.4]
  output       io_encoder_init, // @[:@264.4]
  output [1:0] io_mode, // @[:@264.4]
  output [7:0] io_pktlen // @[:@264.4]
);
  reg [2:0] state; // @[tx.scala 51:22:@266.4]
  reg [31:0] _RAND_0;
  reg [1:0] mode; // @[tx.scala 54:25:@268.4]
  reg [31:0] _RAND_1;
  reg [7:0] pktlen; // @[tx.scala 55:25:@269.4]
  reg [31:0] _RAND_2;
  reg [7:0] pktcnt; // @[tx.scala 56:25:@270.4]
  reg [31:0] _RAND_3;
  reg [1:0] datacnt; // @[tx.scala 57:25:@271.4]
  reg [31:0] _RAND_4;
  reg [6:0] repcnt; // @[tx.scala 58:25:@272.4]
  reg [31:0] _RAND_5;
  reg [7:0] pausecnt; // @[tx.scala 59:25:@273.4]
  reg [31:0] _RAND_6;
  reg [7:0] pauselen; // @[tx.scala 60:25:@274.4]
  reg [31:0] _RAND_7;
  reg  zero_tail; // @[tx.scala 84:26:@299.4]
  reg [31:0] _RAND_8;
  wire  _T_40; // @[tx.scala 65:27:@275.4]
  wire  _T_42; // @[tx.scala 65:53:@276.4]
  wire [2:0] _T_44; // @[tx.scala 65:69:@277.4]
  wire [1:0] _T_45; // @[tx.scala 65:69:@278.4]
  wire [2:0] _T_47; // @[tx.scala 65:83:@279.4]
  wire [1:0] _T_48; // @[tx.scala 65:83:@280.4]
  wire [1:0] _T_49; // @[tx.scala 65:47:@281.4]
  wire [1:0] latency; // @[tx.scala 65:21:@282.4]
  wire  _T_52; // @[tx.scala 78:39:@293.4]
  wire  _T_59; // @[Conditional.scala 37:30:@301.4]
  wire [2:0] _GEN_0; // @[tx.scala 89:27:@304.6]
  wire [1:0] _GEN_1; // @[tx.scala 89:27:@304.6]
  wire [7:0] _GEN_2; // @[tx.scala 89:27:@304.6]
  wire [1:0] _GEN_3; // @[tx.scala 89:27:@304.6]
  wire [7:0] _GEN_4; // @[tx.scala 89:27:@304.6]
  wire [6:0] _GEN_6; // @[tx.scala 89:27:@304.6]
  wire [7:0] _GEN_7; // @[tx.scala 89:27:@304.6]
  wire [7:0] _GEN_8; // @[tx.scala 89:27:@304.6]
  wire  _GEN_9; // @[tx.scala 89:27:@304.6]
  wire  _T_67; // @[Conditional.scala 37:30:@320.6]
  wire [2:0] _T_70; // @[tx.scala 110:26:@323.8]
  wire [1:0] _T_71; // @[tx.scala 110:26:@324.8]
  wire  _T_75; // @[tx.scala 111:41:@327.8]
  wire  _T_76; // @[tx.scala 111:29:@328.8]
  wire  _T_80; // @[tx.scala 112:41:@330.8]
  wire  _T_81; // @[tx.scala 112:29:@331.8]
  wire  _T_82; // @[tx.scala 111:50:@332.8]
  wire  _T_84; // @[tx.scala 113:20:@333.8]
  wire  _T_86; // @[tx.scala 113:41:@334.8]
  wire  _T_87; // @[tx.scala 113:29:@335.8]
  wire  _T_88; // @[tx.scala 112:50:@336.8]
  wire [2:0] _GEN_11; // @[tx.scala 113:51:@337.8]
  wire  _T_89; // @[Conditional.scala 37:30:@342.8]
  wire [5:0] _GEN_64; // @[tx.scala 119:43:@344.10]
  wire [6:0] _T_91; // @[tx.scala 119:43:@344.10]
  wire [6:0] _T_92; // @[tx.scala 119:43:@345.10]
  wire [5:0] _T_93; // @[tx.scala 119:43:@346.10]
  wire  _T_94; // @[tx.scala 119:33:@347.10]
  wire [8:0] _T_96; // @[tx.scala 120:26:@349.12]
  wire [7:0] _T_97; // @[tx.scala 120:26:@350.12]
  wire [8:0] _T_100; // @[tx.scala 122:34:@353.12]
  wire [8:0] _T_101; // @[tx.scala 122:34:@354.12]
  wire [7:0] _T_102; // @[tx.scala 122:34:@355.12]
  wire  _T_103; // @[tx.scala 122:22:@356.12]
  wire [2:0] _GEN_12; // @[tx.scala 122:42:@357.12]
  wire [8:0] _T_105; // @[tx.scala 127:34:@363.12]
  wire [8:0] _T_106; // @[tx.scala 127:34:@364.12]
  wire [7:0] _T_107; // @[tx.scala 127:34:@365.12]
  wire  _T_108; // @[tx.scala 127:22:@366.12]
  wire  _GEN_13; // @[tx.scala 127:42:@367.12]
  wire [7:0] _GEN_14; // @[tx.scala 119:55:@348.10]
  wire [1:0] _GEN_15; // @[tx.scala 119:55:@348.10]
  wire [2:0] _GEN_16; // @[tx.scala 119:55:@348.10]
  wire  _GEN_17; // @[tx.scala 119:55:@348.10]
  wire  _T_110; // @[Conditional.scala 37:30:@373.10]
  wire  _T_112; // @[tx.scala 134:34:@375.12]
  wire [7:0] _T_114; // @[tx.scala 135:26:@377.14]
  wire [7:0] _T_115; // @[tx.scala 135:26:@378.14]
  wire [6:0] _T_116; // @[tx.scala 135:26:@379.14]
  wire  _T_118; // @[tx.scala 136:29:@381.14]
  wire [2:0] _T_119; // @[tx.scala 136:21:@382.14]
  wire [6:0] _GEN_18; // @[tx.scala 134:47:@376.12]
  wire [2:0] _GEN_19; // @[tx.scala 134:47:@376.12]
  wire  _T_120; // @[Conditional.scala 37:30:@387.12]
  wire [8:0] _T_122; // @[tx.scala 140:28:@389.14]
  wire [7:0] _T_123; // @[tx.scala 140:28:@390.14]
  wire  _T_124; // @[tx.scala 141:22:@392.14]
  wire [2:0] _GEN_20; // @[tx.scala 141:36:@393.14]
  wire [1:0] _GEN_21; // @[tx.scala 141:36:@393.14]
  wire [7:0] _GEN_22; // @[tx.scala 141:36:@393.14]
  wire [7:0] _GEN_23; // @[tx.scala 141:36:@393.14]
  wire [7:0] _GEN_25; // @[Conditional.scala 39:67:@388.12]
  wire [2:0] _GEN_26; // @[Conditional.scala 39:67:@388.12]
  wire [1:0] _GEN_27; // @[Conditional.scala 39:67:@388.12]
  wire [7:0] _GEN_28; // @[Conditional.scala 39:67:@388.12]
  wire  _GEN_29; // @[Conditional.scala 39:67:@388.12]
  wire [6:0] _GEN_30; // @[Conditional.scala 39:67:@374.10]
  wire [2:0] _GEN_31; // @[Conditional.scala 39:67:@374.10]
  wire [7:0] _GEN_32; // @[Conditional.scala 39:67:@374.10]
  wire [1:0] _GEN_33; // @[Conditional.scala 39:67:@374.10]
  wire [7:0] _GEN_34; // @[Conditional.scala 39:67:@374.10]
  wire  _GEN_35; // @[Conditional.scala 39:67:@374.10]
  wire [7:0] _GEN_36; // @[Conditional.scala 39:67:@343.8]
  wire [1:0] _GEN_37; // @[Conditional.scala 39:67:@343.8]
  wire [2:0] _GEN_38; // @[Conditional.scala 39:67:@343.8]
  wire  _GEN_39; // @[Conditional.scala 39:67:@343.8]
  wire [6:0] _GEN_40; // @[Conditional.scala 39:67:@343.8]
  wire [7:0] _GEN_41; // @[Conditional.scala 39:67:@343.8]
  wire  _GEN_42; // @[Conditional.scala 39:67:@343.8]
  wire [1:0] _GEN_44; // @[Conditional.scala 39:67:@321.6]
  wire [2:0] _GEN_45; // @[Conditional.scala 39:67:@321.6]
  wire [7:0] _GEN_46; // @[Conditional.scala 39:67:@321.6]
  wire  _GEN_47; // @[Conditional.scala 39:67:@321.6]
  wire [6:0] _GEN_48; // @[Conditional.scala 39:67:@321.6]
  wire [7:0] _GEN_49; // @[Conditional.scala 39:67:@321.6]
  wire  _GEN_50; // @[Conditional.scala 39:67:@321.6]
  wire [2:0] _GEN_52; // @[Conditional.scala 40:58:@302.4]
  wire [1:0] _GEN_53; // @[Conditional.scala 40:58:@302.4]
  wire [7:0] _GEN_54; // @[Conditional.scala 40:58:@302.4]
  wire [1:0] _GEN_55; // @[Conditional.scala 40:58:@302.4]
  wire [7:0] _GEN_56; // @[Conditional.scala 40:58:@302.4]
  wire [6:0] _GEN_58; // @[Conditional.scala 40:58:@302.4]
  wire [7:0] _GEN_59; // @[Conditional.scala 40:58:@302.4]
  wire [7:0] _GEN_60; // @[Conditional.scala 40:58:@302.4]
  wire  _GEN_61; // @[Conditional.scala 40:58:@302.4]
  wire  _GEN_62; // @[Conditional.scala 40:58:@302.4]
  wire  _GEN_63; // @[Conditional.scala 40:58:@302.4]
  assign _T_40 = mode == 2'h0; // @[tx.scala 65:27:@275.4]
  assign _T_42 = mode == 2'h1; // @[tx.scala 65:53:@276.4]
  assign _T_44 = 2'h3 + 2'h1; // @[tx.scala 65:69:@277.4]
  assign _T_45 = _T_44[1:0]; // @[tx.scala 65:69:@278.4]
  assign _T_47 = 2'h3 + 2'h3; // @[tx.scala 65:83:@279.4]
  assign _T_48 = _T_47[1:0]; // @[tx.scala 65:83:@280.4]
  assign _T_49 = _T_42 ? _T_45 : _T_48; // @[tx.scala 65:47:@281.4]
  assign latency = _T_40 ? 2'h3 : _T_49; // @[tx.scala 65:21:@282.4]
  assign _T_52 = io_pregen_count == 9'he9; // @[tx.scala 78:39:@293.4]
  assign _T_59 = 3'h0 == state; // @[Conditional.scala 37:30:@301.4]
  assign _GEN_0 = io_cmd_valid ? 3'h1 : state; // @[tx.scala 89:27:@304.6]
  assign _GEN_1 = io_cmd_valid ? 2'h0 : datacnt; // @[tx.scala 89:27:@304.6]
  assign _GEN_2 = io_cmd_valid ? 8'h0 : pktcnt; // @[tx.scala 89:27:@304.6]
  assign _GEN_3 = io_cmd_valid ? io_cmd_bits_mode : mode; // @[tx.scala 89:27:@304.6]
  assign _GEN_4 = io_cmd_valid ? io_cmd_bits_length : pktlen; // @[tx.scala 89:27:@304.6]
  assign _GEN_6 = io_cmd_valid ? io_cmd_bits_repeat : repcnt; // @[tx.scala 89:27:@304.6]
  assign _GEN_7 = io_cmd_valid ? 8'h0 : pausecnt; // @[tx.scala 89:27:@304.6]
  assign _GEN_8 = io_cmd_valid ? io_cmd_bits_pause : pauselen; // @[tx.scala 89:27:@304.6]
  assign _GEN_9 = io_cmd_valid ? 1'h0 : zero_tail; // @[tx.scala 89:27:@304.6]
  assign _T_67 = 3'h1 == state; // @[Conditional.scala 37:30:@320.6]
  assign _T_70 = datacnt + 2'h1; // @[tx.scala 110:26:@323.8]
  assign _T_71 = _T_70[1:0]; // @[tx.scala 110:26:@324.8]
  assign _T_75 = datacnt == 2'h0; // @[tx.scala 111:41:@327.8]
  assign _T_76 = _T_40 & _T_75; // @[tx.scala 111:29:@328.8]
  assign _T_80 = datacnt == 2'h1; // @[tx.scala 112:41:@330.8]
  assign _T_81 = _T_42 & _T_80; // @[tx.scala 112:29:@331.8]
  assign _T_82 = _T_76 | _T_81; // @[tx.scala 111:50:@332.8]
  assign _T_84 = mode == 2'h2; // @[tx.scala 113:20:@333.8]
  assign _T_86 = datacnt == 2'h3; // @[tx.scala 113:41:@334.8]
  assign _T_87 = _T_84 & _T_86; // @[tx.scala 113:29:@335.8]
  assign _T_88 = _T_82 | _T_87; // @[tx.scala 112:50:@336.8]
  assign _GEN_11 = _T_88 ? 3'h2 : state; // @[tx.scala 113:51:@337.8]
  assign _T_89 = 3'h2 == state; // @[Conditional.scala 37:30:@342.8]
  assign _GEN_64 = {{4'd0}, latency}; // @[tx.scala 119:43:@344.10]
  assign _T_91 = 6'h3f - _GEN_64; // @[tx.scala 119:43:@344.10]
  assign _T_92 = $unsigned(_T_91); // @[tx.scala 119:43:@345.10]
  assign _T_93 = _T_92[5:0]; // @[tx.scala 119:43:@346.10]
  assign _T_94 = io_interleaver_dcnt == _T_93; // @[tx.scala 119:33:@347.10]
  assign _T_96 = pktcnt + 8'h1; // @[tx.scala 120:26:@349.12]
  assign _T_97 = _T_96[7:0]; // @[tx.scala 120:26:@350.12]
  assign _T_100 = pktlen - 8'h1; // @[tx.scala 122:34:@353.12]
  assign _T_101 = $unsigned(_T_100); // @[tx.scala 122:34:@354.12]
  assign _T_102 = _T_101[7:0]; // @[tx.scala 122:34:@355.12]
  assign _T_103 = pktcnt == _T_102; // @[tx.scala 122:22:@356.12]
  assign _GEN_12 = _T_103 ? 3'h3 : 3'h1; // @[tx.scala 122:42:@357.12]
  assign _T_105 = pktlen - 8'h2; // @[tx.scala 127:34:@363.12]
  assign _T_106 = $unsigned(_T_105); // @[tx.scala 127:34:@364.12]
  assign _T_107 = _T_106[7:0]; // @[tx.scala 127:34:@365.12]
  assign _T_108 = pktcnt == _T_107; // @[tx.scala 127:22:@366.12]
  assign _GEN_13 = _T_108 ? 1'h1 : zero_tail; // @[tx.scala 127:42:@367.12]
  assign _GEN_14 = _T_94 ? _T_97 : pktcnt; // @[tx.scala 119:55:@348.10]
  assign _GEN_15 = _T_94 ? 2'h0 : datacnt; // @[tx.scala 119:55:@348.10]
  assign _GEN_16 = _T_94 ? _GEN_12 : state; // @[tx.scala 119:55:@348.10]
  assign _GEN_17 = _T_94 ? _GEN_13 : zero_tail; // @[tx.scala 119:55:@348.10]
  assign _T_110 = 3'h3 == state; // @[Conditional.scala 37:30:@373.10]
  assign _T_112 = io_ifftcp_dout_valid == 1'h0; // @[tx.scala 134:34:@375.12]
  assign _T_114 = repcnt - 7'h1; // @[tx.scala 135:26:@377.14]
  assign _T_115 = $unsigned(_T_114); // @[tx.scala 135:26:@378.14]
  assign _T_116 = _T_115[6:0]; // @[tx.scala 135:26:@379.14]
  assign _T_118 = repcnt == 7'h0; // @[tx.scala 136:29:@381.14]
  assign _T_119 = _T_118 ? 3'h0 : 3'h4; // @[tx.scala 136:21:@382.14]
  assign _GEN_18 = _T_112 ? _T_116 : repcnt; // @[tx.scala 134:47:@376.12]
  assign _GEN_19 = _T_112 ? _T_119 : state; // @[tx.scala 134:47:@376.12]
  assign _T_120 = 3'h4 == state; // @[Conditional.scala 37:30:@387.12]
  assign _T_122 = pausecnt + 8'h1; // @[tx.scala 140:28:@389.14]
  assign _T_123 = _T_122[7:0]; // @[tx.scala 140:28:@390.14]
  assign _T_124 = pausecnt == pauselen; // @[tx.scala 141:22:@392.14]
  assign _GEN_20 = _T_124 ? 3'h1 : state; // @[tx.scala 141:36:@393.14]
  assign _GEN_21 = _T_124 ? 2'h0 : datacnt; // @[tx.scala 141:36:@393.14]
  assign _GEN_22 = _T_124 ? 8'h1 : pktcnt; // @[tx.scala 141:36:@393.14]
  assign _GEN_23 = _T_124 ? 8'h0 : _T_123; // @[tx.scala 141:36:@393.14]
  assign _GEN_25 = _T_120 ? _GEN_23 : pausecnt; // @[Conditional.scala 39:67:@388.12]
  assign _GEN_26 = _T_120 ? _GEN_20 : state; // @[Conditional.scala 39:67:@388.12]
  assign _GEN_27 = _T_120 ? _GEN_21 : datacnt; // @[Conditional.scala 39:67:@388.12]
  assign _GEN_28 = _T_120 ? _GEN_22 : pktcnt; // @[Conditional.scala 39:67:@388.12]
  assign _GEN_29 = _T_120 ? _T_124 : 1'h0; // @[Conditional.scala 39:67:@388.12]
  assign _GEN_30 = _T_110 ? _GEN_18 : repcnt; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_31 = _T_110 ? _GEN_19 : _GEN_26; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_32 = _T_110 ? pausecnt : _GEN_25; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_33 = _T_110 ? datacnt : _GEN_27; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_34 = _T_110 ? pktcnt : _GEN_28; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_35 = _T_110 ? 1'h0 : _GEN_29; // @[Conditional.scala 39:67:@374.10]
  assign _GEN_36 = _T_89 ? _GEN_14 : _GEN_34; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_37 = _T_89 ? _GEN_15 : _GEN_33; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_38 = _T_89 ? _GEN_16 : _GEN_31; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_39 = _T_89 ? _GEN_17 : zero_tail; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_40 = _T_89 ? repcnt : _GEN_30; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_41 = _T_89 ? pausecnt : _GEN_32; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_42 = _T_89 ? 1'h0 : _GEN_35; // @[Conditional.scala 39:67:@343.8]
  assign _GEN_44 = _T_67 ? _T_71 : _GEN_37; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_45 = _T_67 ? _GEN_11 : _GEN_38; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_46 = _T_67 ? pktcnt : _GEN_36; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_47 = _T_67 ? zero_tail : _GEN_39; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_48 = _T_67 ? repcnt : _GEN_40; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_49 = _T_67 ? pausecnt : _GEN_41; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_50 = _T_67 ? 1'h0 : _GEN_42; // @[Conditional.scala 39:67:@321.6]
  assign _GEN_52 = _T_59 ? _GEN_0 : _GEN_45; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_53 = _T_59 ? _GEN_1 : _GEN_44; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_54 = _T_59 ? _GEN_2 : _GEN_46; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_55 = _T_59 ? _GEN_3 : mode; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_56 = _T_59 ? _GEN_4 : pktlen; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_58 = _T_59 ? _GEN_6 : _GEN_48; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_59 = _T_59 ? _GEN_7 : _GEN_49; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_60 = _T_59 ? _GEN_8 : pauselen; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_61 = _T_59 ? _GEN_9 : _GEN_47; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_62 = _T_59 ? io_cmd_valid : _GEN_50; // @[Conditional.scala 40:58:@302.4]
  assign _GEN_63 = _T_59 ? 1'h0 : _T_67; // @[Conditional.scala 40:58:@302.4]
  assign io_cmd_ready = _T_59;
  assign io_din_ready = _GEN_63;
  assign io_tx_start = _GEN_62;
  assign io_zero_tail = zero_tail;
  assign io_ifftcp_start = _T_52;
  assign io_encoder_init = _GEN_62;
  assign io_mode = mode;
  assign io_pktlen = pktlen;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mode = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  pktlen = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  pktcnt = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  datacnt = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  repcnt = _RAND_5[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  pausecnt = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  pauselen = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  zero_tail = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_67) begin
          if (_T_88) begin
            state <= 3'h2;
          end
        end else begin
          if (_T_89) begin
            if (_T_94) begin
              if (_T_103) begin
                state <= 3'h3;
              end else begin
                state <= 3'h1;
              end
            end
          end else begin
            if (_T_110) begin
              if (_T_112) begin
                if (_T_118) begin
                  state <= 3'h0;
                end else begin
                  state <= 3'h4;
                end
              end
            end else begin
              if (_T_120) begin
                if (_T_124) begin
                  state <= 3'h1;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      mode <= 2'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          mode <= io_cmd_bits_mode;
        end
      end
    end
    if (reset) begin
      pktlen <= 8'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          pktlen <= io_cmd_bits_length;
        end
      end
    end
    if (reset) begin
      pktcnt <= 8'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          pktcnt <= 8'h0;
        end
      end else begin
        if (!(_T_67)) begin
          if (_T_89) begin
            if (_T_94) begin
              pktcnt <= _T_97;
            end
          end else begin
            if (!(_T_110)) begin
              if (_T_120) begin
                if (_T_124) begin
                  pktcnt <= 8'h1;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      datacnt <= 2'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          datacnt <= 2'h0;
        end
      end else begin
        if (_T_67) begin
          datacnt <= _T_71;
        end else begin
          if (_T_89) begin
            if (_T_94) begin
              datacnt <= 2'h0;
            end
          end else begin
            if (!(_T_110)) begin
              if (_T_120) begin
                if (_T_124) begin
                  datacnt <= 2'h0;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      repcnt <= 7'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          repcnt <= io_cmd_bits_repeat;
        end
      end else begin
        if (!(_T_67)) begin
          if (!(_T_89)) begin
            if (_T_110) begin
              if (_T_112) begin
                repcnt <= _T_116;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      pausecnt <= 8'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          pausecnt <= 8'h0;
        end
      end else begin
        if (!(_T_67)) begin
          if (!(_T_89)) begin
            if (!(_T_110)) begin
              if (_T_120) begin
                if (_T_124) begin
                  pausecnt <= 8'h0;
                end else begin
                  pausecnt <= _T_123;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      pauselen <= 8'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          pauselen <= io_cmd_bits_pause;
        end
      end
    end
    if (reset) begin
      zero_tail <= 1'h0;
    end else begin
      if (_T_59) begin
        if (io_cmd_valid) begin
          zero_tail <= 1'h0;
        end
      end else begin
        if (!(_T_67)) begin
          if (_T_89) begin
            if (_T_94) begin
              if (_T_108) begin
                zero_tail <= 1'h1;
              end
            end
          end
        end
      end
    end
  end
endmodule
module Scrambler( // @[:@403.2]
  input         clock, // @[:@404.4]
  input         reset, // @[:@405.4]
  input         io_init, // @[:@406.4]
  input  [6:0]  io_seed, // @[:@406.4]
  input         io_din_valid, // @[:@406.4]
  input  [23:0] io_din_bits, // @[:@406.4]
  output        io_dout_valid, // @[:@406.4]
  output [23:0] io_dout_bits // @[:@406.4]
);
  reg [6:0] seed_reg; // @[scrambler.scala 74:25:@432.4]
  reg [31:0] _RAND_0;
  reg [23:0] din_reg; // @[scrambler.scala 75:25:@433.4]
  reg [31:0] _RAND_1;
  reg  val_reg; // @[scrambler.scala 76:25:@435.4]
  reg [31:0] _RAND_2;
  wire  _T_86; // @[scrambler.scala 91:24:@463.4]
  wire  _T_87; // @[scrambler.scala 91:38:@464.4]
  wire  xor_b_22; // @[scrambler.scala 91:28:@465.4]
  wire  _T_97; // @[scrambler.scala 96:36:@478.4]
  wire  xor_b_18; // @[scrambler.scala 96:26:@479.4]
  wire  _T_90; // @[scrambler.scala 92:38:@468.4]
  wire  xor_b_21; // @[scrambler.scala 92:28:@469.4]
  wire  xor_b_14; // @[scrambler.scala 101:26:@488.4]
  wire  _T_99; // @[scrambler.scala 97:36:@481.4]
  wire  xor_b_17; // @[scrambler.scala 97:26:@482.4]
  wire  xor_b_10; // @[scrambler.scala 106:26:@496.4]
  wire  _T_93; // @[scrambler.scala 93:38:@472.4]
  wire  xor_b_20; // @[scrambler.scala 93:28:@473.4]
  wire  xor_b_13; // @[scrambler.scala 102:26:@490.4]
  wire  xor_b_6; // @[scrambler.scala 111:26:@504.4]
  wire  _T_84; // @[scrambler.scala 90:38:@460.4]
  wire  xor_b_23; // @[scrambler.scala 90:28:@461.4]
  wire  xor_b_16; // @[scrambler.scala 98:26:@484.4]
  wire  xor_b_9; // @[scrambler.scala 107:26:@498.4]
  wire  xor_b_2; // @[scrambler.scala 116:25:@512.4]
  wire  xor_b_19; // @[scrambler.scala 95:26:@476.4]
  wire  xor_b_12; // @[scrambler.scala 103:26:@492.4]
  wire  xor_b_5; // @[scrambler.scala 112:25:@506.4]
  wire  xor_b_15; // @[scrambler.scala 100:26:@486.4]
  wire  xor_b_8; // @[scrambler.scala 108:26:@500.4]
  wire  xor_b_1; // @[scrambler.scala 117:25:@514.4]
  wire [1:0] _T_43; // @[scrambler.scala 72:21:@409.4]
  wire  xor_b_11; // @[scrambler.scala 105:26:@494.4]
  wire  xor_b_4; // @[scrambler.scala 113:25:@508.4]
  wire  xor_b_7; // @[scrambler.scala 110:26:@502.4]
  wire  xor_b_0; // @[scrambler.scala 118:25:@516.4]
  wire [2:0] _T_44; // @[scrambler.scala 72:21:@410.4]
  wire [1:0] _T_45; // @[scrambler.scala 72:21:@411.4]
  wire  xor_b_3; // @[scrambler.scala 115:25:@510.4]
  wire [2:0] _T_46; // @[scrambler.scala 72:21:@412.4]
  wire [5:0] _T_47; // @[scrambler.scala 72:21:@413.4]
  wire [1:0] _T_48; // @[scrambler.scala 72:21:@414.4]
  wire [2:0] _T_49; // @[scrambler.scala 72:21:@415.4]
  wire [1:0] _T_50; // @[scrambler.scala 72:21:@416.4]
  wire [2:0] _T_51; // @[scrambler.scala 72:21:@417.4]
  wire [5:0] _T_52; // @[scrambler.scala 72:21:@418.4]
  wire [11:0] _T_53; // @[scrambler.scala 72:21:@419.4]
  wire [1:0] _T_54; // @[scrambler.scala 72:21:@420.4]
  wire [2:0] _T_55; // @[scrambler.scala 72:21:@421.4]
  wire [1:0] _T_56; // @[scrambler.scala 72:21:@422.4]
  wire [2:0] _T_57; // @[scrambler.scala 72:21:@423.4]
  wire [5:0] _T_58; // @[scrambler.scala 72:21:@424.4]
  wire [1:0] _T_59; // @[scrambler.scala 72:21:@425.4]
  wire [2:0] _T_60; // @[scrambler.scala 72:21:@426.4]
  wire [1:0] _T_61; // @[scrambler.scala 72:21:@427.4]
  wire [2:0] _T_62; // @[scrambler.scala 72:21:@428.4]
  wire [5:0] _T_63; // @[scrambler.scala 72:21:@429.4]
  wire [11:0] _T_64; // @[scrambler.scala 72:21:@430.4]
  wire [23:0] xor_u; // @[scrambler.scala 72:21:@431.4]
  wire  _T_69; // @[scrambler.scala 80:26:@438.6]
  wire  _T_70; // @[scrambler.scala 80:36:@439.6]
  wire  _T_71; // @[scrambler.scala 80:46:@440.6]
  wire  _T_72; // @[scrambler.scala 80:56:@441.6]
  wire  _T_73; // @[scrambler.scala 80:66:@442.6]
  wire  _T_74; // @[scrambler.scala 80:76:@443.6]
  wire  _T_75; // @[scrambler.scala 80:86:@444.6]
  wire [1:0] _T_76; // @[Cat.scala 30:58:@445.6]
  wire [2:0] _T_77; // @[Cat.scala 30:58:@446.6]
  wire [1:0] _T_78; // @[Cat.scala 30:58:@447.6]
  wire [1:0] _T_79; // @[Cat.scala 30:58:@448.6]
  wire [3:0] _T_80; // @[Cat.scala 30:58:@449.6]
  wire [6:0] _T_81; // @[Cat.scala 30:58:@450.6]
  wire [6:0] _GEN_0; // @[scrambler.scala 79:18:@437.4]
  wire [6:0] _GEN_1; // @[scrambler.scala 83:18:@453.4]
  wire [23:0] _T_82; // @[scrambler.scala 87:42:@456.4]
  assign _T_86 = seed_reg[4]; // @[scrambler.scala 91:24:@463.4]
  assign _T_87 = seed_reg[1]; // @[scrambler.scala 91:38:@464.4]
  assign xor_b_22 = _T_86 ^ _T_87; // @[scrambler.scala 91:28:@465.4]
  assign _T_97 = seed_reg[5]; // @[scrambler.scala 96:36:@478.4]
  assign xor_b_18 = xor_b_22 ^ _T_97; // @[scrambler.scala 96:26:@479.4]
  assign _T_90 = seed_reg[2]; // @[scrambler.scala 92:38:@468.4]
  assign xor_b_21 = _T_97 ^ _T_90; // @[scrambler.scala 92:28:@469.4]
  assign xor_b_14 = xor_b_18 ^ xor_b_21; // @[scrambler.scala 101:26:@488.4]
  assign _T_99 = seed_reg[6]; // @[scrambler.scala 97:36:@481.4]
  assign xor_b_17 = xor_b_21 ^ _T_99; // @[scrambler.scala 97:26:@482.4]
  assign xor_b_10 = xor_b_14 ^ xor_b_17; // @[scrambler.scala 106:26:@496.4]
  assign _T_93 = seed_reg[3]; // @[scrambler.scala 93:38:@472.4]
  assign xor_b_20 = _T_99 ^ _T_93; // @[scrambler.scala 93:28:@473.4]
  assign xor_b_13 = xor_b_17 ^ xor_b_20; // @[scrambler.scala 102:26:@490.4]
  assign xor_b_6 = xor_b_10 ^ xor_b_13; // @[scrambler.scala 111:26:@504.4]
  assign _T_84 = seed_reg[0]; // @[scrambler.scala 90:38:@460.4]
  assign xor_b_23 = _T_93 ^ _T_84; // @[scrambler.scala 90:28:@461.4]
  assign xor_b_16 = xor_b_20 ^ xor_b_23; // @[scrambler.scala 98:26:@484.4]
  assign xor_b_9 = xor_b_13 ^ xor_b_16; // @[scrambler.scala 107:26:@498.4]
  assign xor_b_2 = xor_b_6 ^ xor_b_9; // @[scrambler.scala 116:25:@512.4]
  assign xor_b_19 = xor_b_23 ^ _T_86; // @[scrambler.scala 95:26:@476.4]
  assign xor_b_12 = xor_b_16 ^ xor_b_19; // @[scrambler.scala 103:26:@492.4]
  assign xor_b_5 = xor_b_9 ^ xor_b_12; // @[scrambler.scala 112:25:@506.4]
  assign xor_b_15 = xor_b_19 ^ xor_b_22; // @[scrambler.scala 100:26:@486.4]
  assign xor_b_8 = xor_b_12 ^ xor_b_15; // @[scrambler.scala 108:26:@500.4]
  assign xor_b_1 = xor_b_5 ^ xor_b_8; // @[scrambler.scala 117:25:@514.4]
  assign _T_43 = {xor_b_2,xor_b_1}; // @[scrambler.scala 72:21:@409.4]
  assign xor_b_11 = xor_b_15 ^ xor_b_18; // @[scrambler.scala 105:26:@494.4]
  assign xor_b_4 = xor_b_8 ^ xor_b_11; // @[scrambler.scala 113:25:@508.4]
  assign xor_b_7 = xor_b_11 ^ xor_b_14; // @[scrambler.scala 110:26:@502.4]
  assign xor_b_0 = xor_b_4 ^ xor_b_7; // @[scrambler.scala 118:25:@516.4]
  assign _T_44 = {_T_43,xor_b_0}; // @[scrambler.scala 72:21:@410.4]
  assign _T_45 = {xor_b_5,xor_b_4}; // @[scrambler.scala 72:21:@411.4]
  assign xor_b_3 = xor_b_7 ^ xor_b_10; // @[scrambler.scala 115:25:@510.4]
  assign _T_46 = {_T_45,xor_b_3}; // @[scrambler.scala 72:21:@412.4]
  assign _T_47 = {_T_46,_T_44}; // @[scrambler.scala 72:21:@413.4]
  assign _T_48 = {xor_b_8,xor_b_7}; // @[scrambler.scala 72:21:@414.4]
  assign _T_49 = {_T_48,xor_b_6}; // @[scrambler.scala 72:21:@415.4]
  assign _T_50 = {xor_b_11,xor_b_10}; // @[scrambler.scala 72:21:@416.4]
  assign _T_51 = {_T_50,xor_b_9}; // @[scrambler.scala 72:21:@417.4]
  assign _T_52 = {_T_51,_T_49}; // @[scrambler.scala 72:21:@418.4]
  assign _T_53 = {_T_52,_T_47}; // @[scrambler.scala 72:21:@419.4]
  assign _T_54 = {xor_b_14,xor_b_13}; // @[scrambler.scala 72:21:@420.4]
  assign _T_55 = {_T_54,xor_b_12}; // @[scrambler.scala 72:21:@421.4]
  assign _T_56 = {xor_b_17,xor_b_16}; // @[scrambler.scala 72:21:@422.4]
  assign _T_57 = {_T_56,xor_b_15}; // @[scrambler.scala 72:21:@423.4]
  assign _T_58 = {_T_57,_T_55}; // @[scrambler.scala 72:21:@424.4]
  assign _T_59 = {xor_b_20,xor_b_19}; // @[scrambler.scala 72:21:@425.4]
  assign _T_60 = {_T_59,xor_b_18}; // @[scrambler.scala 72:21:@426.4]
  assign _T_61 = {xor_b_23,xor_b_22}; // @[scrambler.scala 72:21:@427.4]
  assign _T_62 = {_T_61,xor_b_21}; // @[scrambler.scala 72:21:@428.4]
  assign _T_63 = {_T_62,_T_60}; // @[scrambler.scala 72:21:@429.4]
  assign _T_64 = {_T_63,_T_58}; // @[scrambler.scala 72:21:@430.4]
  assign xor_u = {_T_64,_T_53}; // @[scrambler.scala 72:21:@431.4]
  assign _T_69 = xor_u[0]; // @[scrambler.scala 80:26:@438.6]
  assign _T_70 = xor_u[1]; // @[scrambler.scala 80:36:@439.6]
  assign _T_71 = xor_u[2]; // @[scrambler.scala 80:46:@440.6]
  assign _T_72 = xor_u[3]; // @[scrambler.scala 80:56:@441.6]
  assign _T_73 = xor_u[4]; // @[scrambler.scala 80:66:@442.6]
  assign _T_74 = xor_u[5]; // @[scrambler.scala 80:76:@443.6]
  assign _T_75 = xor_u[6]; // @[scrambler.scala 80:86:@444.6]
  assign _T_76 = {_T_73,_T_74}; // @[Cat.scala 30:58:@445.6]
  assign _T_77 = {_T_76,_T_75}; // @[Cat.scala 30:58:@446.6]
  assign _T_78 = {_T_71,_T_72}; // @[Cat.scala 30:58:@447.6]
  assign _T_79 = {_T_69,_T_70}; // @[Cat.scala 30:58:@448.6]
  assign _T_80 = {_T_79,_T_78}; // @[Cat.scala 30:58:@449.6]
  assign _T_81 = {_T_80,_T_77}; // @[Cat.scala 30:58:@450.6]
  assign _GEN_0 = val_reg ? _T_81 : seed_reg; // @[scrambler.scala 79:18:@437.4]
  assign _GEN_1 = io_init ? io_seed : _GEN_0; // @[scrambler.scala 83:18:@453.4]
  assign _T_82 = din_reg ^ xor_u; // @[scrambler.scala 87:42:@456.4]
  assign io_dout_valid = val_reg;
  assign io_dout_bits = _T_82;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  seed_reg = _RAND_0[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  din_reg = _RAND_1[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  val_reg = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      seed_reg <= 7'h0;
    end else begin
      if (io_init) begin
        seed_reg <= io_seed;
      end else begin
        if (val_reg) begin
          seed_reg <= _T_81;
        end
      end
    end
    din_reg <= io_din_bits;
    val_reg <= io_din_valid;
  end
endmodule
module Encoder( // @[:@519.2]
  input         clock, // @[:@520.4]
  input         reset, // @[:@521.4]
  input         io_init, // @[:@522.4]
  input         io_din_valid, // @[:@522.4]
  input  [23:0] io_din_bits, // @[:@522.4]
  output        io_dout_valid, // @[:@522.4]
  output [47:0] io_dout_bits // @[:@522.4]
);
  reg [23:0] din_reg; // @[Reg.scala 19:20:@524.4]
  reg [31:0] _RAND_0;
  reg  val_reg; // @[encoder.scala 16:25:@528.4]
  reg [31:0] _RAND_1;
  reg [5:0] hist_reg; // @[encoder.scala 17:25:@530.4]
  reg [31:0] _RAND_2;
  wire [23:0] _GEN_0; // @[Reg.scala 20:19:@525.4]
  wire [5:0] _T_18; // @[encoder.scala 22:32:@536.8]
  wire [3:0] _T_19; // @[Bitwise.scala 109:18:@537.8]
  wire [1:0] _T_20; // @[Bitwise.scala 109:18:@538.8]
  wire  _T_21; // @[Bitwise.scala 109:18:@539.8]
  wire  _T_22; // @[Bitwise.scala 109:44:@540.8]
  wire [1:0] _T_23; // @[Cat.scala 30:58:@541.8]
  wire [1:0] _T_24; // @[Bitwise.scala 109:44:@542.8]
  wire  _T_25; // @[Bitwise.scala 109:18:@543.8]
  wire  _T_26; // @[Bitwise.scala 109:44:@544.8]
  wire [1:0] _T_27; // @[Cat.scala 30:58:@545.8]
  wire [3:0] _T_28; // @[Cat.scala 30:58:@546.8]
  wire [1:0] _T_29; // @[Bitwise.scala 109:44:@547.8]
  wire  _T_30; // @[Bitwise.scala 109:18:@548.8]
  wire  _T_31; // @[Bitwise.scala 109:44:@549.8]
  wire [1:0] _T_32; // @[Cat.scala 30:58:@550.8]
  wire [5:0] _T_33; // @[Cat.scala 30:58:@551.8]
  wire [5:0] _GEN_1; // @[encoder.scala 21:25:@535.6]
  wire [5:0] _GEN_2; // @[encoder.scala 19:18:@531.4]
  wire [6:0] _T_1376; // @[encoder.scala 99:39:@1836.4]
  wire [3:0] _T_1377; // @[Bitwise.scala 109:18:@1837.4]
  wire [1:0] _T_1378; // @[Bitwise.scala 109:18:@1838.4]
  wire  _T_1379; // @[Bitwise.scala 109:18:@1839.4]
  wire  _T_1380; // @[Bitwise.scala 109:44:@1840.4]
  wire [1:0] _T_1381; // @[Cat.scala 30:58:@1841.4]
  wire [1:0] _T_1382; // @[Bitwise.scala 109:44:@1842.4]
  wire  _T_1383; // @[Bitwise.scala 109:18:@1843.4]
  wire  _T_1384; // @[Bitwise.scala 109:44:@1844.4]
  wire [1:0] _T_1385; // @[Cat.scala 30:58:@1845.4]
  wire [3:0] _T_1386; // @[Cat.scala 30:58:@1846.4]
  wire [2:0] _T_1387; // @[Bitwise.scala 109:44:@1847.4]
  wire [1:0] _T_1388; // @[Bitwise.scala 109:18:@1848.4]
  wire  _T_1389; // @[Bitwise.scala 109:18:@1849.4]
  wire  _T_1390; // @[Bitwise.scala 109:44:@1850.4]
  wire [1:0] _T_1391; // @[Cat.scala 30:58:@1851.4]
  wire  _T_1392; // @[Bitwise.scala 109:44:@1852.4]
  wire [2:0] _T_1393; // @[Cat.scala 30:58:@1853.4]
  wire [6:0] _T_1394; // @[Cat.scala 30:58:@1854.4]
  wire  _T_1395; // @[encoder.scala 38:16:@1855.4]
  wire  _T_1396; // @[encoder.scala 38:25:@1856.4]
  wire  _T_1397; // @[encoder.scala 38:20:@1857.4]
  wire  _T_1398; // @[encoder.scala 38:34:@1858.4]
  wire  _T_1399; // @[encoder.scala 38:29:@1859.4]
  wire  _T_1400; // @[encoder.scala 38:43:@1860.4]
  wire  _T_1401; // @[encoder.scala 38:38:@1861.4]
  wire  _T_1402; // @[encoder.scala 38:52:@1862.4]
  wire  even_1; // @[encoder.scala 38:47:@1863.4]
  wire [6:0] _T_784; // @[encoder.scala 70:37:@1221.4]
  wire [3:0] _T_785; // @[Bitwise.scala 109:18:@1222.4]
  wire [1:0] _T_786; // @[Bitwise.scala 109:18:@1223.4]
  wire  _T_787; // @[Bitwise.scala 109:18:@1224.4]
  wire  _T_788; // @[Bitwise.scala 109:44:@1225.4]
  wire [1:0] _T_789; // @[Cat.scala 30:58:@1226.4]
  wire [1:0] _T_790; // @[Bitwise.scala 109:44:@1227.4]
  wire  _T_791; // @[Bitwise.scala 109:18:@1228.4]
  wire  _T_792; // @[Bitwise.scala 109:44:@1229.4]
  wire [1:0] _T_793; // @[Cat.scala 30:58:@1230.4]
  wire [3:0] _T_794; // @[Cat.scala 30:58:@1231.4]
  wire [2:0] _T_795; // @[Bitwise.scala 109:44:@1232.4]
  wire [1:0] _T_796; // @[Bitwise.scala 109:18:@1233.4]
  wire  _T_797; // @[Bitwise.scala 109:18:@1234.4]
  wire  _T_798; // @[Bitwise.scala 109:44:@1235.4]
  wire [1:0] _T_799; // @[Cat.scala 30:58:@1236.4]
  wire  _T_800; // @[Bitwise.scala 109:44:@1237.4]
  wire [2:0] _T_801; // @[Cat.scala 30:58:@1238.4]
  wire [6:0] _T_802; // @[Cat.scala 30:58:@1239.4]
  wire  _T_803; // @[encoder.scala 33:16:@1240.4]
  wire  _T_804; // @[encoder.scala 33:25:@1241.4]
  wire  _T_805; // @[encoder.scala 33:20:@1242.4]
  wire  _T_806; // @[encoder.scala 33:34:@1243.4]
  wire  _T_807; // @[encoder.scala 33:29:@1244.4]
  wire  _T_808; // @[encoder.scala 33:43:@1245.4]
  wire  _T_809; // @[encoder.scala 33:38:@1246.4]
  wire  _T_810; // @[encoder.scala 33:52:@1247.4]
  wire  odd_0; // @[encoder.scala 33:47:@1248.4]
  wire [1:0] _T_145; // @[encoder.scala 29:38:@557.4]
  wire  _T_1425; // @[encoder.scala 38:20:@1886.4]
  wire  _T_1427; // @[encoder.scala 38:29:@1888.4]
  wire  _T_1428; // @[encoder.scala 38:43:@1889.4]
  wire  _T_1429; // @[encoder.scala 38:38:@1890.4]
  wire  even_0; // @[encoder.scala 38:47:@1892.4]
  wire [2:0] _T_146; // @[encoder.scala 29:38:@558.4]
  wire [6:0] _T_728; // @[encoder.scala 68:37:@1163.4]
  wire [3:0] _T_729; // @[Bitwise.scala 109:18:@1164.4]
  wire [1:0] _T_730; // @[Bitwise.scala 109:18:@1165.4]
  wire  _T_731; // @[Bitwise.scala 109:18:@1166.4]
  wire  _T_732; // @[Bitwise.scala 109:44:@1167.4]
  wire [1:0] _T_733; // @[Cat.scala 30:58:@1168.4]
  wire [1:0] _T_734; // @[Bitwise.scala 109:44:@1169.4]
  wire  _T_735; // @[Bitwise.scala 109:18:@1170.4]
  wire  _T_736; // @[Bitwise.scala 109:44:@1171.4]
  wire [1:0] _T_737; // @[Cat.scala 30:58:@1172.4]
  wire [3:0] _T_738; // @[Cat.scala 30:58:@1173.4]
  wire [2:0] _T_739; // @[Bitwise.scala 109:44:@1174.4]
  wire [1:0] _T_740; // @[Bitwise.scala 109:18:@1175.4]
  wire  _T_741; // @[Bitwise.scala 109:18:@1176.4]
  wire  _T_742; // @[Bitwise.scala 109:44:@1177.4]
  wire [1:0] _T_743; // @[Cat.scala 30:58:@1178.4]
  wire  _T_744; // @[Bitwise.scala 109:44:@1179.4]
  wire [2:0] _T_745; // @[Cat.scala 30:58:@1180.4]
  wire [6:0] _T_746; // @[Cat.scala 30:58:@1181.4]
  wire  _T_747; // @[encoder.scala 33:16:@1182.4]
  wire  _T_748; // @[encoder.scala 33:25:@1183.4]
  wire  _T_749; // @[encoder.scala 33:20:@1184.4]
  wire  _T_750; // @[encoder.scala 33:34:@1185.4]
  wire  _T_751; // @[encoder.scala 33:29:@1186.4]
  wire  _T_752; // @[encoder.scala 33:43:@1187.4]
  wire  _T_753; // @[encoder.scala 33:38:@1188.4]
  wire  _T_754; // @[encoder.scala 33:52:@1189.4]
  wire  odd_2; // @[encoder.scala 33:47:@1190.4]
  wire  _T_1369; // @[encoder.scala 38:20:@1828.4]
  wire  _T_1371; // @[encoder.scala 38:29:@1830.4]
  wire  _T_1372; // @[encoder.scala 38:43:@1831.4]
  wire  _T_1373; // @[encoder.scala 38:38:@1832.4]
  wire  even_2; // @[encoder.scala 38:47:@1834.4]
  wire [1:0] _T_147; // @[encoder.scala 29:38:@559.4]
  wire  _T_776; // @[encoder.scala 33:25:@1212.4]
  wire  _T_777; // @[encoder.scala 33:20:@1213.4]
  wire  _T_779; // @[encoder.scala 33:29:@1215.4]
  wire  _T_781; // @[encoder.scala 33:38:@1217.4]
  wire  odd_1; // @[encoder.scala 33:47:@1219.4]
  wire [2:0] _T_148; // @[encoder.scala 29:38:@560.4]
  wire [5:0] _T_149; // @[encoder.scala 29:38:@561.4]
  wire [6:0] _T_1292; // @[encoder.scala 95:39:@1749.4]
  wire [3:0] _T_1293; // @[Bitwise.scala 109:18:@1750.4]
  wire [1:0] _T_1294; // @[Bitwise.scala 109:18:@1751.4]
  wire  _T_1295; // @[Bitwise.scala 109:18:@1752.4]
  wire  _T_1296; // @[Bitwise.scala 109:44:@1753.4]
  wire [1:0] _T_1297; // @[Cat.scala 30:58:@1754.4]
  wire [1:0] _T_1298; // @[Bitwise.scala 109:44:@1755.4]
  wire  _T_1299; // @[Bitwise.scala 109:18:@1756.4]
  wire  _T_1300; // @[Bitwise.scala 109:44:@1757.4]
  wire [1:0] _T_1301; // @[Cat.scala 30:58:@1758.4]
  wire [3:0] _T_1302; // @[Cat.scala 30:58:@1759.4]
  wire [2:0] _T_1303; // @[Bitwise.scala 109:44:@1760.4]
  wire [1:0] _T_1304; // @[Bitwise.scala 109:18:@1761.4]
  wire  _T_1305; // @[Bitwise.scala 109:18:@1762.4]
  wire  _T_1306; // @[Bitwise.scala 109:44:@1763.4]
  wire [1:0] _T_1307; // @[Cat.scala 30:58:@1764.4]
  wire  _T_1308; // @[Bitwise.scala 109:44:@1765.4]
  wire [2:0] _T_1309; // @[Cat.scala 30:58:@1766.4]
  wire [6:0] _T_1310; // @[Cat.scala 30:58:@1767.4]
  wire  _T_1311; // @[encoder.scala 38:16:@1768.4]
  wire  _T_1312; // @[encoder.scala 38:25:@1769.4]
  wire  _T_1313; // @[encoder.scala 38:20:@1770.4]
  wire  _T_1314; // @[encoder.scala 38:34:@1771.4]
  wire  _T_1315; // @[encoder.scala 38:29:@1772.4]
  wire  _T_1316; // @[encoder.scala 38:43:@1773.4]
  wire  _T_1317; // @[encoder.scala 38:38:@1774.4]
  wire  _T_1318; // @[encoder.scala 38:52:@1775.4]
  wire  even_4; // @[encoder.scala 38:47:@1776.4]
  wire [6:0] _T_700; // @[encoder.scala 67:37:@1134.4]
  wire [3:0] _T_701; // @[Bitwise.scala 109:18:@1135.4]
  wire [1:0] _T_702; // @[Bitwise.scala 109:18:@1136.4]
  wire  _T_703; // @[Bitwise.scala 109:18:@1137.4]
  wire  _T_704; // @[Bitwise.scala 109:44:@1138.4]
  wire [1:0] _T_705; // @[Cat.scala 30:58:@1139.4]
  wire [1:0] _T_706; // @[Bitwise.scala 109:44:@1140.4]
  wire  _T_707; // @[Bitwise.scala 109:18:@1141.4]
  wire  _T_708; // @[Bitwise.scala 109:44:@1142.4]
  wire [1:0] _T_709; // @[Cat.scala 30:58:@1143.4]
  wire [3:0] _T_710; // @[Cat.scala 30:58:@1144.4]
  wire [2:0] _T_711; // @[Bitwise.scala 109:44:@1145.4]
  wire [1:0] _T_712; // @[Bitwise.scala 109:18:@1146.4]
  wire  _T_713; // @[Bitwise.scala 109:18:@1147.4]
  wire  _T_714; // @[Bitwise.scala 109:44:@1148.4]
  wire [1:0] _T_715; // @[Cat.scala 30:58:@1149.4]
  wire  _T_716; // @[Bitwise.scala 109:44:@1150.4]
  wire [2:0] _T_717; // @[Cat.scala 30:58:@1151.4]
  wire [6:0] _T_718; // @[Cat.scala 30:58:@1152.4]
  wire  _T_719; // @[encoder.scala 33:16:@1153.4]
  wire  _T_720; // @[encoder.scala 33:25:@1154.4]
  wire  _T_721; // @[encoder.scala 33:20:@1155.4]
  wire  _T_722; // @[encoder.scala 33:34:@1156.4]
  wire  _T_723; // @[encoder.scala 33:29:@1157.4]
  wire  _T_724; // @[encoder.scala 33:43:@1158.4]
  wire  _T_725; // @[encoder.scala 33:38:@1159.4]
  wire  _T_726; // @[encoder.scala 33:52:@1160.4]
  wire  odd_3; // @[encoder.scala 33:47:@1161.4]
  wire [1:0] _T_150; // @[encoder.scala 29:38:@562.4]
  wire  _T_1341; // @[encoder.scala 38:20:@1799.4]
  wire  _T_1343; // @[encoder.scala 38:29:@1801.4]
  wire  _T_1344; // @[encoder.scala 38:43:@1802.4]
  wire  _T_1345; // @[encoder.scala 38:38:@1803.4]
  wire  even_3; // @[encoder.scala 38:47:@1805.4]
  wire [2:0] _T_151; // @[encoder.scala 29:38:@563.4]
  wire [6:0] _T_644; // @[encoder.scala 64:37:@1076.4]
  wire [3:0] _T_645; // @[Bitwise.scala 109:18:@1077.4]
  wire [1:0] _T_646; // @[Bitwise.scala 109:18:@1078.4]
  wire  _T_647; // @[Bitwise.scala 109:18:@1079.4]
  wire  _T_648; // @[Bitwise.scala 109:44:@1080.4]
  wire [1:0] _T_649; // @[Cat.scala 30:58:@1081.4]
  wire [1:0] _T_650; // @[Bitwise.scala 109:44:@1082.4]
  wire  _T_651; // @[Bitwise.scala 109:18:@1083.4]
  wire  _T_652; // @[Bitwise.scala 109:44:@1084.4]
  wire [1:0] _T_653; // @[Cat.scala 30:58:@1085.4]
  wire [3:0] _T_654; // @[Cat.scala 30:58:@1086.4]
  wire [2:0] _T_655; // @[Bitwise.scala 109:44:@1087.4]
  wire [1:0] _T_656; // @[Bitwise.scala 109:18:@1088.4]
  wire  _T_657; // @[Bitwise.scala 109:18:@1089.4]
  wire  _T_658; // @[Bitwise.scala 109:44:@1090.4]
  wire [1:0] _T_659; // @[Cat.scala 30:58:@1091.4]
  wire  _T_660; // @[Bitwise.scala 109:44:@1092.4]
  wire [2:0] _T_661; // @[Cat.scala 30:58:@1093.4]
  wire [6:0] _T_662; // @[Cat.scala 30:58:@1094.4]
  wire  _T_663; // @[encoder.scala 33:16:@1095.4]
  wire  _T_664; // @[encoder.scala 33:25:@1096.4]
  wire  _T_665; // @[encoder.scala 33:20:@1097.4]
  wire  _T_666; // @[encoder.scala 33:34:@1098.4]
  wire  _T_667; // @[encoder.scala 33:29:@1099.4]
  wire  _T_668; // @[encoder.scala 33:43:@1100.4]
  wire  _T_669; // @[encoder.scala 33:38:@1101.4]
  wire  _T_670; // @[encoder.scala 33:52:@1102.4]
  wire  odd_5; // @[encoder.scala 33:47:@1103.4]
  wire  _T_1285; // @[encoder.scala 38:20:@1741.4]
  wire  _T_1287; // @[encoder.scala 38:29:@1743.4]
  wire  _T_1288; // @[encoder.scala 38:43:@1744.4]
  wire  _T_1289; // @[encoder.scala 38:38:@1745.4]
  wire  even_5; // @[encoder.scala 38:47:@1747.4]
  wire [1:0] _T_152; // @[encoder.scala 29:38:@564.4]
  wire  _T_692; // @[encoder.scala 33:25:@1125.4]
  wire  _T_693; // @[encoder.scala 33:20:@1126.4]
  wire  _T_695; // @[encoder.scala 33:29:@1128.4]
  wire  _T_697; // @[encoder.scala 33:38:@1130.4]
  wire  odd_4; // @[encoder.scala 33:47:@1132.4]
  wire [2:0] _T_153; // @[encoder.scala 29:38:@565.4]
  wire [5:0] _T_154; // @[encoder.scala 29:38:@566.4]
  wire [11:0] _T_155; // @[encoder.scala 29:38:@567.4]
  wire [6:0] _T_1208; // @[encoder.scala 92:39:@1662.4]
  wire [3:0] _T_1209; // @[Bitwise.scala 109:18:@1663.4]
  wire [1:0] _T_1210; // @[Bitwise.scala 109:18:@1664.4]
  wire  _T_1211; // @[Bitwise.scala 109:18:@1665.4]
  wire  _T_1212; // @[Bitwise.scala 109:44:@1666.4]
  wire [1:0] _T_1213; // @[Cat.scala 30:58:@1667.4]
  wire [1:0] _T_1214; // @[Bitwise.scala 109:44:@1668.4]
  wire  _T_1215; // @[Bitwise.scala 109:18:@1669.4]
  wire  _T_1216; // @[Bitwise.scala 109:44:@1670.4]
  wire [1:0] _T_1217; // @[Cat.scala 30:58:@1671.4]
  wire [3:0] _T_1218; // @[Cat.scala 30:58:@1672.4]
  wire [2:0] _T_1219; // @[Bitwise.scala 109:44:@1673.4]
  wire [1:0] _T_1220; // @[Bitwise.scala 109:18:@1674.4]
  wire  _T_1221; // @[Bitwise.scala 109:18:@1675.4]
  wire  _T_1222; // @[Bitwise.scala 109:44:@1676.4]
  wire [1:0] _T_1223; // @[Cat.scala 30:58:@1677.4]
  wire  _T_1224; // @[Bitwise.scala 109:44:@1678.4]
  wire [2:0] _T_1225; // @[Cat.scala 30:58:@1679.4]
  wire [6:0] _T_1226; // @[Cat.scala 30:58:@1680.4]
  wire  _T_1227; // @[encoder.scala 38:16:@1681.4]
  wire  _T_1228; // @[encoder.scala 38:25:@1682.4]
  wire  _T_1229; // @[encoder.scala 38:20:@1683.4]
  wire  _T_1230; // @[encoder.scala 38:34:@1684.4]
  wire  _T_1231; // @[encoder.scala 38:29:@1685.4]
  wire  _T_1232; // @[encoder.scala 38:43:@1686.4]
  wire  _T_1233; // @[encoder.scala 38:38:@1687.4]
  wire  _T_1234; // @[encoder.scala 38:52:@1688.4]
  wire  even_7; // @[encoder.scala 38:47:@1689.4]
  wire [6:0] _T_616; // @[encoder.scala 63:37:@1047.4]
  wire [3:0] _T_617; // @[Bitwise.scala 109:18:@1048.4]
  wire [1:0] _T_618; // @[Bitwise.scala 109:18:@1049.4]
  wire  _T_619; // @[Bitwise.scala 109:18:@1050.4]
  wire  _T_620; // @[Bitwise.scala 109:44:@1051.4]
  wire [1:0] _T_621; // @[Cat.scala 30:58:@1052.4]
  wire [1:0] _T_622; // @[Bitwise.scala 109:44:@1053.4]
  wire  _T_623; // @[Bitwise.scala 109:18:@1054.4]
  wire  _T_624; // @[Bitwise.scala 109:44:@1055.4]
  wire [1:0] _T_625; // @[Cat.scala 30:58:@1056.4]
  wire [3:0] _T_626; // @[Cat.scala 30:58:@1057.4]
  wire [2:0] _T_627; // @[Bitwise.scala 109:44:@1058.4]
  wire [1:0] _T_628; // @[Bitwise.scala 109:18:@1059.4]
  wire  _T_629; // @[Bitwise.scala 109:18:@1060.4]
  wire  _T_630; // @[Bitwise.scala 109:44:@1061.4]
  wire [1:0] _T_631; // @[Cat.scala 30:58:@1062.4]
  wire  _T_632; // @[Bitwise.scala 109:44:@1063.4]
  wire [2:0] _T_633; // @[Cat.scala 30:58:@1064.4]
  wire [6:0] _T_634; // @[Cat.scala 30:58:@1065.4]
  wire  _T_635; // @[encoder.scala 33:16:@1066.4]
  wire  _T_636; // @[encoder.scala 33:25:@1067.4]
  wire  _T_637; // @[encoder.scala 33:20:@1068.4]
  wire  _T_638; // @[encoder.scala 33:34:@1069.4]
  wire  _T_639; // @[encoder.scala 33:29:@1070.4]
  wire  _T_640; // @[encoder.scala 33:43:@1071.4]
  wire  _T_641; // @[encoder.scala 33:38:@1072.4]
  wire  _T_642; // @[encoder.scala 33:52:@1073.4]
  wire  odd_6; // @[encoder.scala 33:47:@1074.4]
  wire [1:0] _T_156; // @[encoder.scala 29:38:@568.4]
  wire  _T_1257; // @[encoder.scala 38:20:@1712.4]
  wire  _T_1259; // @[encoder.scala 38:29:@1714.4]
  wire  _T_1260; // @[encoder.scala 38:43:@1715.4]
  wire  _T_1261; // @[encoder.scala 38:38:@1716.4]
  wire  even_6; // @[encoder.scala 38:47:@1718.4]
  wire [2:0] _T_157; // @[encoder.scala 29:38:@569.4]
  wire [6:0] _T_560; // @[encoder.scala 60:37:@989.4]
  wire [3:0] _T_561; // @[Bitwise.scala 109:18:@990.4]
  wire [1:0] _T_562; // @[Bitwise.scala 109:18:@991.4]
  wire  _T_563; // @[Bitwise.scala 109:18:@992.4]
  wire  _T_564; // @[Bitwise.scala 109:44:@993.4]
  wire [1:0] _T_565; // @[Cat.scala 30:58:@994.4]
  wire [1:0] _T_566; // @[Bitwise.scala 109:44:@995.4]
  wire  _T_567; // @[Bitwise.scala 109:18:@996.4]
  wire  _T_568; // @[Bitwise.scala 109:44:@997.4]
  wire [1:0] _T_569; // @[Cat.scala 30:58:@998.4]
  wire [3:0] _T_570; // @[Cat.scala 30:58:@999.4]
  wire [2:0] _T_571; // @[Bitwise.scala 109:44:@1000.4]
  wire [1:0] _T_572; // @[Bitwise.scala 109:18:@1001.4]
  wire  _T_573; // @[Bitwise.scala 109:18:@1002.4]
  wire  _T_574; // @[Bitwise.scala 109:44:@1003.4]
  wire [1:0] _T_575; // @[Cat.scala 30:58:@1004.4]
  wire  _T_576; // @[Bitwise.scala 109:44:@1005.4]
  wire [2:0] _T_577; // @[Cat.scala 30:58:@1006.4]
  wire [6:0] _T_578; // @[Cat.scala 30:58:@1007.4]
  wire  _T_579; // @[encoder.scala 33:16:@1008.4]
  wire  _T_580; // @[encoder.scala 33:25:@1009.4]
  wire  _T_581; // @[encoder.scala 33:20:@1010.4]
  wire  _T_582; // @[encoder.scala 33:34:@1011.4]
  wire  _T_583; // @[encoder.scala 33:29:@1012.4]
  wire  _T_584; // @[encoder.scala 33:43:@1013.4]
  wire  _T_585; // @[encoder.scala 33:38:@1014.4]
  wire  _T_586; // @[encoder.scala 33:52:@1015.4]
  wire  odd_8; // @[encoder.scala 33:47:@1016.4]
  wire  _T_1201; // @[encoder.scala 38:20:@1654.4]
  wire  _T_1203; // @[encoder.scala 38:29:@1656.4]
  wire  _T_1204; // @[encoder.scala 38:43:@1657.4]
  wire  _T_1205; // @[encoder.scala 38:38:@1658.4]
  wire  even_8; // @[encoder.scala 38:47:@1660.4]
  wire [1:0] _T_158; // @[encoder.scala 29:38:@570.4]
  wire  _T_608; // @[encoder.scala 33:25:@1038.4]
  wire  _T_609; // @[encoder.scala 33:20:@1039.4]
  wire  _T_611; // @[encoder.scala 33:29:@1041.4]
  wire  _T_613; // @[encoder.scala 33:38:@1043.4]
  wire  odd_7; // @[encoder.scala 33:47:@1045.4]
  wire [2:0] _T_159; // @[encoder.scala 29:38:@571.4]
  wire [5:0] _T_160; // @[encoder.scala 29:38:@572.4]
  wire [6:0] _T_1124; // @[encoder.scala 88:39:@1575.4]
  wire [3:0] _T_1125; // @[Bitwise.scala 109:18:@1576.4]
  wire [1:0] _T_1126; // @[Bitwise.scala 109:18:@1577.4]
  wire  _T_1127; // @[Bitwise.scala 109:18:@1578.4]
  wire  _T_1128; // @[Bitwise.scala 109:44:@1579.4]
  wire [1:0] _T_1129; // @[Cat.scala 30:58:@1580.4]
  wire [1:0] _T_1130; // @[Bitwise.scala 109:44:@1581.4]
  wire  _T_1131; // @[Bitwise.scala 109:18:@1582.4]
  wire  _T_1132; // @[Bitwise.scala 109:44:@1583.4]
  wire [1:0] _T_1133; // @[Cat.scala 30:58:@1584.4]
  wire [3:0] _T_1134; // @[Cat.scala 30:58:@1585.4]
  wire [2:0] _T_1135; // @[Bitwise.scala 109:44:@1586.4]
  wire [1:0] _T_1136; // @[Bitwise.scala 109:18:@1587.4]
  wire  _T_1137; // @[Bitwise.scala 109:18:@1588.4]
  wire  _T_1138; // @[Bitwise.scala 109:44:@1589.4]
  wire [1:0] _T_1139; // @[Cat.scala 30:58:@1590.4]
  wire  _T_1140; // @[Bitwise.scala 109:44:@1591.4]
  wire [2:0] _T_1141; // @[Cat.scala 30:58:@1592.4]
  wire [6:0] _T_1142; // @[Cat.scala 30:58:@1593.4]
  wire  _T_1143; // @[encoder.scala 38:16:@1594.4]
  wire  _T_1144; // @[encoder.scala 38:25:@1595.4]
  wire  _T_1145; // @[encoder.scala 38:20:@1596.4]
  wire  _T_1146; // @[encoder.scala 38:34:@1597.4]
  wire  _T_1147; // @[encoder.scala 38:29:@1598.4]
  wire  _T_1148; // @[encoder.scala 38:43:@1599.4]
  wire  _T_1149; // @[encoder.scala 38:38:@1600.4]
  wire  _T_1150; // @[encoder.scala 38:52:@1601.4]
  wire  even_10; // @[encoder.scala 38:47:@1602.4]
  wire [6:0] _T_532; // @[encoder.scala 59:37:@960.4]
  wire [3:0] _T_533; // @[Bitwise.scala 109:18:@961.4]
  wire [1:0] _T_534; // @[Bitwise.scala 109:18:@962.4]
  wire  _T_535; // @[Bitwise.scala 109:18:@963.4]
  wire  _T_536; // @[Bitwise.scala 109:44:@964.4]
  wire [1:0] _T_537; // @[Cat.scala 30:58:@965.4]
  wire [1:0] _T_538; // @[Bitwise.scala 109:44:@966.4]
  wire  _T_539; // @[Bitwise.scala 109:18:@967.4]
  wire  _T_540; // @[Bitwise.scala 109:44:@968.4]
  wire [1:0] _T_541; // @[Cat.scala 30:58:@969.4]
  wire [3:0] _T_542; // @[Cat.scala 30:58:@970.4]
  wire [2:0] _T_543; // @[Bitwise.scala 109:44:@971.4]
  wire [1:0] _T_544; // @[Bitwise.scala 109:18:@972.4]
  wire  _T_545; // @[Bitwise.scala 109:18:@973.4]
  wire  _T_546; // @[Bitwise.scala 109:44:@974.4]
  wire [1:0] _T_547; // @[Cat.scala 30:58:@975.4]
  wire  _T_548; // @[Bitwise.scala 109:44:@976.4]
  wire [2:0] _T_549; // @[Cat.scala 30:58:@977.4]
  wire [6:0] _T_550; // @[Cat.scala 30:58:@978.4]
  wire  _T_551; // @[encoder.scala 33:16:@979.4]
  wire  _T_552; // @[encoder.scala 33:25:@980.4]
  wire  _T_553; // @[encoder.scala 33:20:@981.4]
  wire  _T_554; // @[encoder.scala 33:34:@982.4]
  wire  _T_555; // @[encoder.scala 33:29:@983.4]
  wire  _T_556; // @[encoder.scala 33:43:@984.4]
  wire  _T_557; // @[encoder.scala 33:38:@985.4]
  wire  _T_558; // @[encoder.scala 33:52:@986.4]
  wire  odd_9; // @[encoder.scala 33:47:@987.4]
  wire [1:0] _T_161; // @[encoder.scala 29:38:@573.4]
  wire  _T_1173; // @[encoder.scala 38:20:@1625.4]
  wire  _T_1175; // @[encoder.scala 38:29:@1627.4]
  wire  _T_1176; // @[encoder.scala 38:43:@1628.4]
  wire  _T_1177; // @[encoder.scala 38:38:@1629.4]
  wire  even_9; // @[encoder.scala 38:47:@1631.4]
  wire [2:0] _T_162; // @[encoder.scala 29:38:@574.4]
  wire [6:0] _T_476; // @[encoder.scala 57:37:@902.4]
  wire [3:0] _T_477; // @[Bitwise.scala 109:18:@903.4]
  wire [1:0] _T_478; // @[Bitwise.scala 109:18:@904.4]
  wire  _T_479; // @[Bitwise.scala 109:18:@905.4]
  wire  _T_480; // @[Bitwise.scala 109:44:@906.4]
  wire [1:0] _T_481; // @[Cat.scala 30:58:@907.4]
  wire [1:0] _T_482; // @[Bitwise.scala 109:44:@908.4]
  wire  _T_483; // @[Bitwise.scala 109:18:@909.4]
  wire  _T_484; // @[Bitwise.scala 109:44:@910.4]
  wire [1:0] _T_485; // @[Cat.scala 30:58:@911.4]
  wire [3:0] _T_486; // @[Cat.scala 30:58:@912.4]
  wire [2:0] _T_487; // @[Bitwise.scala 109:44:@913.4]
  wire [1:0] _T_488; // @[Bitwise.scala 109:18:@914.4]
  wire  _T_489; // @[Bitwise.scala 109:18:@915.4]
  wire  _T_490; // @[Bitwise.scala 109:44:@916.4]
  wire [1:0] _T_491; // @[Cat.scala 30:58:@917.4]
  wire  _T_492; // @[Bitwise.scala 109:44:@918.4]
  wire [2:0] _T_493; // @[Cat.scala 30:58:@919.4]
  wire [6:0] _T_494; // @[Cat.scala 30:58:@920.4]
  wire  _T_495; // @[encoder.scala 33:16:@921.4]
  wire  _T_496; // @[encoder.scala 33:25:@922.4]
  wire  _T_497; // @[encoder.scala 33:20:@923.4]
  wire  _T_498; // @[encoder.scala 33:34:@924.4]
  wire  _T_499; // @[encoder.scala 33:29:@925.4]
  wire  _T_500; // @[encoder.scala 33:43:@926.4]
  wire  _T_501; // @[encoder.scala 33:38:@927.4]
  wire  _T_502; // @[encoder.scala 33:52:@928.4]
  wire  odd_11; // @[encoder.scala 33:47:@929.4]
  wire  _T_1117; // @[encoder.scala 38:20:@1567.4]
  wire  _T_1119; // @[encoder.scala 38:29:@1569.4]
  wire  _T_1120; // @[encoder.scala 38:43:@1570.4]
  wire  _T_1121; // @[encoder.scala 38:38:@1571.4]
  wire  even_11; // @[encoder.scala 38:47:@1573.4]
  wire [1:0] _T_163; // @[encoder.scala 29:38:@575.4]
  wire  _T_524; // @[encoder.scala 33:25:@951.4]
  wire  _T_525; // @[encoder.scala 33:20:@952.4]
  wire  _T_527; // @[encoder.scala 33:29:@954.4]
  wire  _T_529; // @[encoder.scala 33:38:@956.4]
  wire  odd_10; // @[encoder.scala 33:47:@958.4]
  wire [2:0] _T_164; // @[encoder.scala 29:38:@576.4]
  wire [5:0] _T_165; // @[encoder.scala 29:38:@577.4]
  wire [11:0] _T_166; // @[encoder.scala 29:38:@578.4]
  wire [23:0] _T_167; // @[encoder.scala 29:38:@579.4]
  wire [6:0] _T_1040; // @[encoder.scala 84:39:@1488.4]
  wire [3:0] _T_1041; // @[Bitwise.scala 109:18:@1489.4]
  wire [1:0] _T_1042; // @[Bitwise.scala 109:18:@1490.4]
  wire  _T_1043; // @[Bitwise.scala 109:18:@1491.4]
  wire  _T_1044; // @[Bitwise.scala 109:44:@1492.4]
  wire [1:0] _T_1045; // @[Cat.scala 30:58:@1493.4]
  wire [1:0] _T_1046; // @[Bitwise.scala 109:44:@1494.4]
  wire  _T_1047; // @[Bitwise.scala 109:18:@1495.4]
  wire  _T_1048; // @[Bitwise.scala 109:44:@1496.4]
  wire [1:0] _T_1049; // @[Cat.scala 30:58:@1497.4]
  wire [3:0] _T_1050; // @[Cat.scala 30:58:@1498.4]
  wire [2:0] _T_1051; // @[Bitwise.scala 109:44:@1499.4]
  wire [1:0] _T_1052; // @[Bitwise.scala 109:18:@1500.4]
  wire  _T_1053; // @[Bitwise.scala 109:18:@1501.4]
  wire  _T_1054; // @[Bitwise.scala 109:44:@1502.4]
  wire [1:0] _T_1055; // @[Cat.scala 30:58:@1503.4]
  wire  _T_1056; // @[Bitwise.scala 109:44:@1504.4]
  wire [2:0] _T_1057; // @[Cat.scala 30:58:@1505.4]
  wire [6:0] _T_1058; // @[Cat.scala 30:58:@1506.4]
  wire  _T_1059; // @[encoder.scala 38:16:@1507.4]
  wire  _T_1060; // @[encoder.scala 38:25:@1508.4]
  wire  _T_1061; // @[encoder.scala 38:20:@1509.4]
  wire  _T_1062; // @[encoder.scala 38:34:@1510.4]
  wire  _T_1063; // @[encoder.scala 38:29:@1511.4]
  wire  _T_1064; // @[encoder.scala 38:43:@1512.4]
  wire  _T_1065; // @[encoder.scala 38:38:@1513.4]
  wire  _T_1066; // @[encoder.scala 38:52:@1514.4]
  wire  even_13; // @[encoder.scala 38:47:@1515.4]
  wire [6:0] _T_448; // @[encoder.scala 55:37:@873.4]
  wire [3:0] _T_449; // @[Bitwise.scala 109:18:@874.4]
  wire [1:0] _T_450; // @[Bitwise.scala 109:18:@875.4]
  wire  _T_451; // @[Bitwise.scala 109:18:@876.4]
  wire  _T_452; // @[Bitwise.scala 109:44:@877.4]
  wire [1:0] _T_453; // @[Cat.scala 30:58:@878.4]
  wire [1:0] _T_454; // @[Bitwise.scala 109:44:@879.4]
  wire  _T_455; // @[Bitwise.scala 109:18:@880.4]
  wire  _T_456; // @[Bitwise.scala 109:44:@881.4]
  wire [1:0] _T_457; // @[Cat.scala 30:58:@882.4]
  wire [3:0] _T_458; // @[Cat.scala 30:58:@883.4]
  wire [2:0] _T_459; // @[Bitwise.scala 109:44:@884.4]
  wire [1:0] _T_460; // @[Bitwise.scala 109:18:@885.4]
  wire  _T_461; // @[Bitwise.scala 109:18:@886.4]
  wire  _T_462; // @[Bitwise.scala 109:44:@887.4]
  wire [1:0] _T_463; // @[Cat.scala 30:58:@888.4]
  wire  _T_464; // @[Bitwise.scala 109:44:@889.4]
  wire [2:0] _T_465; // @[Cat.scala 30:58:@890.4]
  wire [6:0] _T_466; // @[Cat.scala 30:58:@891.4]
  wire  _T_467; // @[encoder.scala 33:16:@892.4]
  wire  _T_468; // @[encoder.scala 33:25:@893.4]
  wire  _T_469; // @[encoder.scala 33:20:@894.4]
  wire  _T_470; // @[encoder.scala 33:34:@895.4]
  wire  _T_471; // @[encoder.scala 33:29:@896.4]
  wire  _T_472; // @[encoder.scala 33:43:@897.4]
  wire  _T_473; // @[encoder.scala 33:38:@898.4]
  wire  _T_474; // @[encoder.scala 33:52:@899.4]
  wire  odd_12; // @[encoder.scala 33:47:@900.4]
  wire [1:0] _T_168; // @[encoder.scala 29:38:@580.4]
  wire  _T_1089; // @[encoder.scala 38:20:@1538.4]
  wire  _T_1091; // @[encoder.scala 38:29:@1540.4]
  wire  _T_1092; // @[encoder.scala 38:43:@1541.4]
  wire  _T_1093; // @[encoder.scala 38:38:@1542.4]
  wire  even_12; // @[encoder.scala 38:47:@1544.4]
  wire [2:0] _T_169; // @[encoder.scala 29:38:@581.4]
  wire [6:0] _T_392; // @[encoder.scala 53:37:@815.4]
  wire [3:0] _T_393; // @[Bitwise.scala 109:18:@816.4]
  wire [1:0] _T_394; // @[Bitwise.scala 109:18:@817.4]
  wire  _T_395; // @[Bitwise.scala 109:18:@818.4]
  wire  _T_396; // @[Bitwise.scala 109:44:@819.4]
  wire [1:0] _T_397; // @[Cat.scala 30:58:@820.4]
  wire [1:0] _T_398; // @[Bitwise.scala 109:44:@821.4]
  wire  _T_399; // @[Bitwise.scala 109:18:@822.4]
  wire  _T_400; // @[Bitwise.scala 109:44:@823.4]
  wire [1:0] _T_401; // @[Cat.scala 30:58:@824.4]
  wire [3:0] _T_402; // @[Cat.scala 30:58:@825.4]
  wire [2:0] _T_403; // @[Bitwise.scala 109:44:@826.4]
  wire [1:0] _T_404; // @[Bitwise.scala 109:18:@827.4]
  wire  _T_405; // @[Bitwise.scala 109:18:@828.4]
  wire  _T_406; // @[Bitwise.scala 109:44:@829.4]
  wire [1:0] _T_407; // @[Cat.scala 30:58:@830.4]
  wire  _T_408; // @[Bitwise.scala 109:44:@831.4]
  wire [2:0] _T_409; // @[Cat.scala 30:58:@832.4]
  wire [6:0] _T_410; // @[Cat.scala 30:58:@833.4]
  wire  _T_411; // @[encoder.scala 33:16:@834.4]
  wire  _T_412; // @[encoder.scala 33:25:@835.4]
  wire  _T_413; // @[encoder.scala 33:20:@836.4]
  wire  _T_414; // @[encoder.scala 33:34:@837.4]
  wire  _T_415; // @[encoder.scala 33:29:@838.4]
  wire  _T_416; // @[encoder.scala 33:43:@839.4]
  wire  _T_417; // @[encoder.scala 33:38:@840.4]
  wire  _T_418; // @[encoder.scala 33:52:@841.4]
  wire  odd_14; // @[encoder.scala 33:47:@842.4]
  wire  _T_1033; // @[encoder.scala 38:20:@1480.4]
  wire  _T_1035; // @[encoder.scala 38:29:@1482.4]
  wire  _T_1036; // @[encoder.scala 38:43:@1483.4]
  wire  _T_1037; // @[encoder.scala 38:38:@1484.4]
  wire  even_14; // @[encoder.scala 38:47:@1486.4]
  wire [1:0] _T_170; // @[encoder.scala 29:38:@582.4]
  wire  _T_440; // @[encoder.scala 33:25:@864.4]
  wire  _T_441; // @[encoder.scala 33:20:@865.4]
  wire  _T_443; // @[encoder.scala 33:29:@867.4]
  wire  _T_445; // @[encoder.scala 33:38:@869.4]
  wire  odd_13; // @[encoder.scala 33:47:@871.4]
  wire [2:0] _T_171; // @[encoder.scala 29:38:@583.4]
  wire [5:0] _T_172; // @[encoder.scala 29:38:@584.4]
  wire [6:0] _T_956; // @[encoder.scala 80:39:@1401.4]
  wire [3:0] _T_957; // @[Bitwise.scala 109:18:@1402.4]
  wire [1:0] _T_958; // @[Bitwise.scala 109:18:@1403.4]
  wire  _T_959; // @[Bitwise.scala 109:18:@1404.4]
  wire  _T_960; // @[Bitwise.scala 109:44:@1405.4]
  wire [1:0] _T_961; // @[Cat.scala 30:58:@1406.4]
  wire [1:0] _T_962; // @[Bitwise.scala 109:44:@1407.4]
  wire  _T_963; // @[Bitwise.scala 109:18:@1408.4]
  wire  _T_964; // @[Bitwise.scala 109:44:@1409.4]
  wire [1:0] _T_965; // @[Cat.scala 30:58:@1410.4]
  wire [3:0] _T_966; // @[Cat.scala 30:58:@1411.4]
  wire [2:0] _T_967; // @[Bitwise.scala 109:44:@1412.4]
  wire [1:0] _T_968; // @[Bitwise.scala 109:18:@1413.4]
  wire  _T_969; // @[Bitwise.scala 109:18:@1414.4]
  wire  _T_970; // @[Bitwise.scala 109:44:@1415.4]
  wire [1:0] _T_971; // @[Cat.scala 30:58:@1416.4]
  wire  _T_972; // @[Bitwise.scala 109:44:@1417.4]
  wire [2:0] _T_973; // @[Cat.scala 30:58:@1418.4]
  wire [6:0] _T_974; // @[Cat.scala 30:58:@1419.4]
  wire  _T_975; // @[encoder.scala 38:16:@1420.4]
  wire  _T_976; // @[encoder.scala 38:25:@1421.4]
  wire  _T_977; // @[encoder.scala 38:20:@1422.4]
  wire  _T_978; // @[encoder.scala 38:34:@1423.4]
  wire  _T_979; // @[encoder.scala 38:29:@1424.4]
  wire  _T_980; // @[encoder.scala 38:43:@1425.4]
  wire  _T_981; // @[encoder.scala 38:38:@1426.4]
  wire  _T_982; // @[encoder.scala 38:52:@1427.4]
  wire  even_16; // @[encoder.scala 38:47:@1428.4]
  wire [6:0] _T_364; // @[encoder.scala 52:37:@786.4]
  wire [3:0] _T_365; // @[Bitwise.scala 109:18:@787.4]
  wire [1:0] _T_366; // @[Bitwise.scala 109:18:@788.4]
  wire  _T_367; // @[Bitwise.scala 109:18:@789.4]
  wire  _T_368; // @[Bitwise.scala 109:44:@790.4]
  wire [1:0] _T_369; // @[Cat.scala 30:58:@791.4]
  wire [1:0] _T_370; // @[Bitwise.scala 109:44:@792.4]
  wire  _T_371; // @[Bitwise.scala 109:18:@793.4]
  wire  _T_372; // @[Bitwise.scala 109:44:@794.4]
  wire [1:0] _T_373; // @[Cat.scala 30:58:@795.4]
  wire [3:0] _T_374; // @[Cat.scala 30:58:@796.4]
  wire [2:0] _T_375; // @[Bitwise.scala 109:44:@797.4]
  wire [1:0] _T_376; // @[Bitwise.scala 109:18:@798.4]
  wire  _T_377; // @[Bitwise.scala 109:18:@799.4]
  wire  _T_378; // @[Bitwise.scala 109:44:@800.4]
  wire [1:0] _T_379; // @[Cat.scala 30:58:@801.4]
  wire  _T_380; // @[Bitwise.scala 109:44:@802.4]
  wire [2:0] _T_381; // @[Cat.scala 30:58:@803.4]
  wire [6:0] _T_382; // @[Cat.scala 30:58:@804.4]
  wire  _T_383; // @[encoder.scala 33:16:@805.4]
  wire  _T_384; // @[encoder.scala 33:25:@806.4]
  wire  _T_385; // @[encoder.scala 33:20:@807.4]
  wire  _T_386; // @[encoder.scala 33:34:@808.4]
  wire  _T_387; // @[encoder.scala 33:29:@809.4]
  wire  _T_388; // @[encoder.scala 33:43:@810.4]
  wire  _T_389; // @[encoder.scala 33:38:@811.4]
  wire  _T_390; // @[encoder.scala 33:52:@812.4]
  wire  odd_15; // @[encoder.scala 33:47:@813.4]
  wire [1:0] _T_173; // @[encoder.scala 29:38:@585.4]
  wire  _T_1005; // @[encoder.scala 38:20:@1451.4]
  wire  _T_1007; // @[encoder.scala 38:29:@1453.4]
  wire  _T_1008; // @[encoder.scala 38:43:@1454.4]
  wire  _T_1009; // @[encoder.scala 38:38:@1455.4]
  wire  even_15; // @[encoder.scala 38:47:@1457.4]
  wire [2:0] _T_174; // @[encoder.scala 29:38:@586.4]
  wire [6:0] _T_308; // @[encoder.scala 49:37:@728.4]
  wire [3:0] _T_309; // @[Bitwise.scala 109:18:@729.4]
  wire [1:0] _T_310; // @[Bitwise.scala 109:18:@730.4]
  wire  _T_311; // @[Bitwise.scala 109:18:@731.4]
  wire  _T_312; // @[Bitwise.scala 109:44:@732.4]
  wire [1:0] _T_313; // @[Cat.scala 30:58:@733.4]
  wire [1:0] _T_314; // @[Bitwise.scala 109:44:@734.4]
  wire  _T_315; // @[Bitwise.scala 109:18:@735.4]
  wire  _T_316; // @[Bitwise.scala 109:44:@736.4]
  wire [1:0] _T_317; // @[Cat.scala 30:58:@737.4]
  wire [3:0] _T_318; // @[Cat.scala 30:58:@738.4]
  wire [2:0] _T_319; // @[Bitwise.scala 109:44:@739.4]
  wire [1:0] _T_320; // @[Bitwise.scala 109:18:@740.4]
  wire  _T_321; // @[Bitwise.scala 109:18:@741.4]
  wire  _T_322; // @[Bitwise.scala 109:44:@742.4]
  wire [1:0] _T_323; // @[Cat.scala 30:58:@743.4]
  wire  _T_324; // @[Bitwise.scala 109:44:@744.4]
  wire [2:0] _T_325; // @[Cat.scala 30:58:@745.4]
  wire [6:0] _T_326; // @[Cat.scala 30:58:@746.4]
  wire  _T_327; // @[encoder.scala 33:16:@747.4]
  wire  _T_328; // @[encoder.scala 33:25:@748.4]
  wire  _T_329; // @[encoder.scala 33:20:@749.4]
  wire  _T_330; // @[encoder.scala 33:34:@750.4]
  wire  _T_331; // @[encoder.scala 33:29:@751.4]
  wire  _T_332; // @[encoder.scala 33:43:@752.4]
  wire  _T_333; // @[encoder.scala 33:38:@753.4]
  wire  _T_334; // @[encoder.scala 33:52:@754.4]
  wire  odd_17; // @[encoder.scala 33:47:@755.4]
  wire  _T_949; // @[encoder.scala 38:20:@1393.4]
  wire  _T_951; // @[encoder.scala 38:29:@1395.4]
  wire  _T_952; // @[encoder.scala 38:43:@1396.4]
  wire  _T_953; // @[encoder.scala 38:38:@1397.4]
  wire  even_17; // @[encoder.scala 38:47:@1399.4]
  wire [1:0] _T_175; // @[encoder.scala 29:38:@587.4]
  wire  _T_356; // @[encoder.scala 33:25:@777.4]
  wire  _T_357; // @[encoder.scala 33:20:@778.4]
  wire  _T_359; // @[encoder.scala 33:29:@780.4]
  wire  _T_361; // @[encoder.scala 33:38:@782.4]
  wire  odd_16; // @[encoder.scala 33:47:@784.4]
  wire [2:0] _T_176; // @[encoder.scala 29:38:@588.4]
  wire [5:0] _T_177; // @[encoder.scala 29:38:@589.4]
  wire [11:0] _T_178; // @[encoder.scala 29:38:@590.4]
  wire [4:0] _T_877; // @[encoder.scala 77:43:@1319.4]
  wire [3:0] _T_878; // @[Bitwise.scala 109:18:@1320.4]
  wire [1:0] _T_879; // @[Bitwise.scala 109:18:@1321.4]
  wire  _T_880; // @[Bitwise.scala 109:18:@1322.4]
  wire  _T_881; // @[Bitwise.scala 109:44:@1323.4]
  wire [1:0] _T_882; // @[Cat.scala 30:58:@1324.4]
  wire [1:0] _T_883; // @[Bitwise.scala 109:44:@1325.4]
  wire  _T_884; // @[Bitwise.scala 109:18:@1326.4]
  wire  _T_885; // @[Bitwise.scala 109:44:@1327.4]
  wire [1:0] _T_886; // @[Cat.scala 30:58:@1328.4]
  wire [3:0] _T_887; // @[Cat.scala 30:58:@1329.4]
  wire  _T_888; // @[Bitwise.scala 109:44:@1330.4]
  wire [4:0] _T_889; // @[Cat.scala 30:58:@1331.4]
  wire [1:0] _T_890; // @[encoder.scala 77:61:@1332.4]
  wire [6:0] _T_891; // @[Cat.scala 30:58:@1333.4]
  wire  _T_892; // @[encoder.scala 38:16:@1334.4]
  wire  _T_893; // @[encoder.scala 38:25:@1335.4]
  wire  _T_894; // @[encoder.scala 38:20:@1336.4]
  wire  _T_895; // @[encoder.scala 38:34:@1337.4]
  wire  _T_896; // @[encoder.scala 38:29:@1338.4]
  wire  _T_897; // @[encoder.scala 38:43:@1339.4]
  wire  _T_898; // @[encoder.scala 38:38:@1340.4]
  wire  _T_899; // @[encoder.scala 38:52:@1341.4]
  wire  even_19; // @[encoder.scala 38:47:@1342.4]
  wire [5:0] _T_281; // @[encoder.scala 48:41:@700.4]
  wire [3:0] _T_282; // @[Bitwise.scala 109:18:@701.4]
  wire [1:0] _T_283; // @[Bitwise.scala 109:18:@702.4]
  wire  _T_284; // @[Bitwise.scala 109:18:@703.4]
  wire  _T_285; // @[Bitwise.scala 109:44:@704.4]
  wire [1:0] _T_286; // @[Cat.scala 30:58:@705.4]
  wire [1:0] _T_287; // @[Bitwise.scala 109:44:@706.4]
  wire  _T_288; // @[Bitwise.scala 109:18:@707.4]
  wire  _T_289; // @[Bitwise.scala 109:44:@708.4]
  wire [1:0] _T_290; // @[Cat.scala 30:58:@709.4]
  wire [3:0] _T_291; // @[Cat.scala 30:58:@710.4]
  wire [1:0] _T_292; // @[Bitwise.scala 109:44:@711.4]
  wire  _T_293; // @[Bitwise.scala 109:18:@712.4]
  wire  _T_294; // @[Bitwise.scala 109:44:@713.4]
  wire [1:0] _T_295; // @[Cat.scala 30:58:@714.4]
  wire [5:0] _T_296; // @[Cat.scala 30:58:@715.4]
  wire  _T_297; // @[encoder.scala 48:59:@716.4]
  wire [6:0] _T_298; // @[Cat.scala 30:58:@717.4]
  wire  _T_299; // @[encoder.scala 33:16:@718.4]
  wire  _T_300; // @[encoder.scala 33:25:@719.4]
  wire  _T_301; // @[encoder.scala 33:20:@720.4]
  wire  _T_302; // @[encoder.scala 33:34:@721.4]
  wire  _T_303; // @[encoder.scala 33:29:@722.4]
  wire  _T_304; // @[encoder.scala 33:43:@723.4]
  wire  _T_305; // @[encoder.scala 33:38:@724.4]
  wire  _T_306; // @[encoder.scala 33:52:@725.4]
  wire  odd_18; // @[encoder.scala 33:47:@726.4]
  wire [1:0] _T_179; // @[encoder.scala 29:38:@591.4]
  wire  _T_921; // @[encoder.scala 38:20:@1364.4]
  wire  _T_923; // @[encoder.scala 38:29:@1366.4]
  wire  _T_924; // @[encoder.scala 38:43:@1367.4]
  wire  _T_925; // @[encoder.scala 38:38:@1368.4]
  wire  even_18; // @[encoder.scala 38:47:@1370.4]
  wire [2:0] _T_180; // @[encoder.scala 29:38:@592.4]
  wire [3:0] _T_236; // @[encoder.scala 45:41:@653.4]
  wire [1:0] _T_237; // @[Bitwise.scala 109:18:@654.4]
  wire  _T_238; // @[Bitwise.scala 109:18:@655.4]
  wire  _T_239; // @[Bitwise.scala 109:44:@656.4]
  wire [1:0] _T_240; // @[Cat.scala 30:58:@657.4]
  wire [1:0] _T_241; // @[Bitwise.scala 109:44:@658.4]
  wire  _T_242; // @[Bitwise.scala 109:18:@659.4]
  wire  _T_243; // @[Bitwise.scala 109:44:@660.4]
  wire [1:0] _T_244; // @[Cat.scala 30:58:@661.4]
  wire [3:0] _T_245; // @[Cat.scala 30:58:@662.4]
  wire [2:0] _T_246; // @[encoder.scala 45:59:@663.4]
  wire [6:0] _T_247; // @[Cat.scala 30:58:@664.4]
  wire  _T_248; // @[encoder.scala 33:16:@665.4]
  wire  _T_249; // @[encoder.scala 33:25:@666.4]
  wire  _T_250; // @[encoder.scala 33:20:@667.4]
  wire  _T_251; // @[encoder.scala 33:34:@668.4]
  wire  _T_252; // @[encoder.scala 33:29:@669.4]
  wire  _T_253; // @[encoder.scala 33:43:@670.4]
  wire  _T_254; // @[encoder.scala 33:38:@671.4]
  wire  _T_255; // @[encoder.scala 33:52:@672.4]
  wire  odd_20; // @[encoder.scala 33:47:@673.4]
  wire  _T_870; // @[encoder.scala 38:20:@1311.4]
  wire  _T_872; // @[encoder.scala 38:29:@1313.4]
  wire  _T_873; // @[encoder.scala 38:43:@1314.4]
  wire  _T_874; // @[encoder.scala 38:38:@1315.4]
  wire  even_20; // @[encoder.scala 38:47:@1317.4]
  wire [1:0] _T_181; // @[encoder.scala 29:38:@593.4]
  wire  _T_273; // @[encoder.scala 33:25:@691.4]
  wire  _T_274; // @[encoder.scala 33:20:@692.4]
  wire  _T_276; // @[encoder.scala 33:29:@694.4]
  wire  _T_278; // @[encoder.scala 33:38:@696.4]
  wire  odd_19; // @[encoder.scala 33:47:@698.4]
  wire [2:0] _T_182; // @[encoder.scala 29:38:@594.4]
  wire [5:0] _T_183; // @[encoder.scala 29:38:@595.4]
  wire [1:0] _T_823; // @[encoder.scala 73:43:@1262.4]
  wire  _T_824; // @[Bitwise.scala 109:18:@1263.4]
  wire  _T_825; // @[Bitwise.scala 109:44:@1264.4]
  wire [1:0] _T_826; // @[Cat.scala 30:58:@1265.4]
  wire [4:0] _T_827; // @[encoder.scala 73:61:@1266.4]
  wire [6:0] _T_828; // @[Cat.scala 30:58:@1267.4]
  wire  _T_829; // @[encoder.scala 38:16:@1268.4]
  wire  _T_830; // @[encoder.scala 38:25:@1269.4]
  wire  _T_831; // @[encoder.scala 38:20:@1270.4]
  wire  _T_832; // @[encoder.scala 38:34:@1271.4]
  wire  _T_833; // @[encoder.scala 38:29:@1272.4]
  wire  _T_834; // @[encoder.scala 38:43:@1273.4]
  wire  _T_835; // @[encoder.scala 38:38:@1274.4]
  wire  _T_836; // @[encoder.scala 38:52:@1275.4]
  wire  even_22; // @[encoder.scala 38:47:@1276.4]
  wire [2:0] _T_218; // @[encoder.scala 44:41:@634.4]
  wire [1:0] _T_219; // @[Bitwise.scala 109:18:@635.4]
  wire  _T_220; // @[Bitwise.scala 109:18:@636.4]
  wire  _T_221; // @[Bitwise.scala 109:44:@637.4]
  wire [1:0] _T_222; // @[Cat.scala 30:58:@638.4]
  wire  _T_223; // @[Bitwise.scala 109:44:@639.4]
  wire [2:0] _T_224; // @[Cat.scala 30:58:@640.4]
  wire [3:0] _T_225; // @[encoder.scala 44:59:@641.4]
  wire [6:0] _T_226; // @[Cat.scala 30:58:@642.4]
  wire  _T_227; // @[encoder.scala 33:16:@643.4]
  wire  _T_228; // @[encoder.scala 33:25:@644.4]
  wire  _T_229; // @[encoder.scala 33:20:@645.4]
  wire  _T_230; // @[encoder.scala 33:34:@646.4]
  wire  _T_231; // @[encoder.scala 33:29:@647.4]
  wire  _T_232; // @[encoder.scala 33:43:@648.4]
  wire  _T_233; // @[encoder.scala 33:38:@649.4]
  wire  _T_234; // @[encoder.scala 33:52:@650.4]
  wire  odd_21; // @[encoder.scala 33:47:@651.4]
  wire [1:0] _T_184; // @[encoder.scala 29:38:@596.4]
  wire  _T_849; // @[encoder.scala 38:20:@1289.4]
  wire  _T_851; // @[encoder.scala 38:29:@1291.4]
  wire  _T_852; // @[encoder.scala 38:43:@1292.4]
  wire  _T_853; // @[encoder.scala 38:38:@1293.4]
  wire  even_21; // @[encoder.scala 38:47:@1295.4]
  wire [2:0] _T_185; // @[encoder.scala 29:38:@597.4]
  wire  _T_192; // @[encoder.scala 42:33:@606.4]
  wire [6:0] _T_193; // @[Cat.scala 30:58:@607.4]
  wire  _T_194; // @[encoder.scala 33:16:@608.4]
  wire  _T_195; // @[encoder.scala 33:25:@609.4]
  wire  _T_196; // @[encoder.scala 33:20:@610.4]
  wire  _T_197; // @[encoder.scala 33:34:@611.4]
  wire  _T_198; // @[encoder.scala 33:29:@612.4]
  wire  _T_199; // @[encoder.scala 33:43:@613.4]
  wire  _T_200; // @[encoder.scala 33:38:@614.4]
  wire  _T_201; // @[encoder.scala 33:52:@615.4]
  wire  odd_23; // @[encoder.scala 33:47:@616.4]
  wire  _T_816; // @[encoder.scala 38:20:@1254.4]
  wire  _T_818; // @[encoder.scala 38:29:@1256.4]
  wire  _T_819; // @[encoder.scala 38:43:@1257.4]
  wire  _T_820; // @[encoder.scala 38:38:@1258.4]
  wire  even_23; // @[encoder.scala 38:47:@1260.4]
  wire [1:0] _T_186; // @[encoder.scala 29:38:@598.4]
  wire  _T_210; // @[encoder.scala 33:25:@625.4]
  wire  _T_211; // @[encoder.scala 33:20:@626.4]
  wire  _T_213; // @[encoder.scala 33:29:@628.4]
  wire  _T_215; // @[encoder.scala 33:38:@630.4]
  wire  odd_22; // @[encoder.scala 33:47:@632.4]
  wire [2:0] _T_187; // @[encoder.scala 29:38:@599.4]
  wire [5:0] _T_188; // @[encoder.scala 29:38:@600.4]
  wire [11:0] _T_189; // @[encoder.scala 29:38:@601.4]
  wire [23:0] _T_190; // @[encoder.scala 29:38:@602.4]
  wire [47:0] _T_191; // @[encoder.scala 29:38:@603.4]
  assign _GEN_0 = io_din_valid ? io_din_bits : din_reg; // @[Reg.scala 20:19:@525.4]
  assign _T_18 = din_reg[5:0]; // @[encoder.scala 22:32:@536.8]
  assign _T_19 = _T_18[3:0]; // @[Bitwise.scala 109:18:@537.8]
  assign _T_20 = _T_19[1:0]; // @[Bitwise.scala 109:18:@538.8]
  assign _T_21 = _T_20[0]; // @[Bitwise.scala 109:18:@539.8]
  assign _T_22 = _T_20[1]; // @[Bitwise.scala 109:44:@540.8]
  assign _T_23 = {_T_21,_T_22}; // @[Cat.scala 30:58:@541.8]
  assign _T_24 = _T_19[3:2]; // @[Bitwise.scala 109:44:@542.8]
  assign _T_25 = _T_24[0]; // @[Bitwise.scala 109:18:@543.8]
  assign _T_26 = _T_24[1]; // @[Bitwise.scala 109:44:@544.8]
  assign _T_27 = {_T_25,_T_26}; // @[Cat.scala 30:58:@545.8]
  assign _T_28 = {_T_23,_T_27}; // @[Cat.scala 30:58:@546.8]
  assign _T_29 = _T_18[5:4]; // @[Bitwise.scala 109:44:@547.8]
  assign _T_30 = _T_29[0]; // @[Bitwise.scala 109:18:@548.8]
  assign _T_31 = _T_29[1]; // @[Bitwise.scala 109:44:@549.8]
  assign _T_32 = {_T_30,_T_31}; // @[Cat.scala 30:58:@550.8]
  assign _T_33 = {_T_28,_T_32}; // @[Cat.scala 30:58:@551.8]
  assign _GEN_1 = val_reg ? _T_33 : hist_reg; // @[encoder.scala 21:25:@535.6]
  assign _GEN_2 = io_init ? 6'h0 : _GEN_1; // @[encoder.scala 19:18:@531.4]
  assign _T_1376 = din_reg[7:1]; // @[encoder.scala 99:39:@1836.4]
  assign _T_1377 = _T_1376[3:0]; // @[Bitwise.scala 109:18:@1837.4]
  assign _T_1378 = _T_1377[1:0]; // @[Bitwise.scala 109:18:@1838.4]
  assign _T_1379 = _T_1378[0]; // @[Bitwise.scala 109:18:@1839.4]
  assign _T_1380 = _T_1378[1]; // @[Bitwise.scala 109:44:@1840.4]
  assign _T_1381 = {_T_1379,_T_1380}; // @[Cat.scala 30:58:@1841.4]
  assign _T_1382 = _T_1377[3:2]; // @[Bitwise.scala 109:44:@1842.4]
  assign _T_1383 = _T_1382[0]; // @[Bitwise.scala 109:18:@1843.4]
  assign _T_1384 = _T_1382[1]; // @[Bitwise.scala 109:44:@1844.4]
  assign _T_1385 = {_T_1383,_T_1384}; // @[Cat.scala 30:58:@1845.4]
  assign _T_1386 = {_T_1381,_T_1385}; // @[Cat.scala 30:58:@1846.4]
  assign _T_1387 = _T_1376[6:4]; // @[Bitwise.scala 109:44:@1847.4]
  assign _T_1388 = _T_1387[1:0]; // @[Bitwise.scala 109:18:@1848.4]
  assign _T_1389 = _T_1388[0]; // @[Bitwise.scala 109:18:@1849.4]
  assign _T_1390 = _T_1388[1]; // @[Bitwise.scala 109:44:@1850.4]
  assign _T_1391 = {_T_1389,_T_1390}; // @[Cat.scala 30:58:@1851.4]
  assign _T_1392 = _T_1387[2]; // @[Bitwise.scala 109:44:@1852.4]
  assign _T_1393 = {_T_1391,_T_1392}; // @[Cat.scala 30:58:@1853.4]
  assign _T_1394 = {_T_1386,_T_1393}; // @[Cat.scala 30:58:@1854.4]
  assign _T_1395 = _T_1394[0]; // @[encoder.scala 38:16:@1855.4]
  assign _T_1396 = _T_1394[3]; // @[encoder.scala 38:25:@1856.4]
  assign _T_1397 = _T_1395 ^ _T_1396; // @[encoder.scala 38:20:@1857.4]
  assign _T_1398 = _T_1394[4]; // @[encoder.scala 38:34:@1858.4]
  assign _T_1399 = _T_1397 ^ _T_1398; // @[encoder.scala 38:29:@1859.4]
  assign _T_1400 = _T_1394[5]; // @[encoder.scala 38:43:@1860.4]
  assign _T_1401 = _T_1399 ^ _T_1400; // @[encoder.scala 38:38:@1861.4]
  assign _T_1402 = _T_1394[6]; // @[encoder.scala 38:52:@1862.4]
  assign even_1 = _T_1401 ^ _T_1402; // @[encoder.scala 38:47:@1863.4]
  assign _T_784 = din_reg[6:0]; // @[encoder.scala 70:37:@1221.4]
  assign _T_785 = _T_784[3:0]; // @[Bitwise.scala 109:18:@1222.4]
  assign _T_786 = _T_785[1:0]; // @[Bitwise.scala 109:18:@1223.4]
  assign _T_787 = _T_786[0]; // @[Bitwise.scala 109:18:@1224.4]
  assign _T_788 = _T_786[1]; // @[Bitwise.scala 109:44:@1225.4]
  assign _T_789 = {_T_787,_T_788}; // @[Cat.scala 30:58:@1226.4]
  assign _T_790 = _T_785[3:2]; // @[Bitwise.scala 109:44:@1227.4]
  assign _T_791 = _T_790[0]; // @[Bitwise.scala 109:18:@1228.4]
  assign _T_792 = _T_790[1]; // @[Bitwise.scala 109:44:@1229.4]
  assign _T_793 = {_T_791,_T_792}; // @[Cat.scala 30:58:@1230.4]
  assign _T_794 = {_T_789,_T_793}; // @[Cat.scala 30:58:@1231.4]
  assign _T_795 = _T_784[6:4]; // @[Bitwise.scala 109:44:@1232.4]
  assign _T_796 = _T_795[1:0]; // @[Bitwise.scala 109:18:@1233.4]
  assign _T_797 = _T_796[0]; // @[Bitwise.scala 109:18:@1234.4]
  assign _T_798 = _T_796[1]; // @[Bitwise.scala 109:44:@1235.4]
  assign _T_799 = {_T_797,_T_798}; // @[Cat.scala 30:58:@1236.4]
  assign _T_800 = _T_795[2]; // @[Bitwise.scala 109:44:@1237.4]
  assign _T_801 = {_T_799,_T_800}; // @[Cat.scala 30:58:@1238.4]
  assign _T_802 = {_T_794,_T_801}; // @[Cat.scala 30:58:@1239.4]
  assign _T_803 = _T_802[0]; // @[encoder.scala 33:16:@1240.4]
  assign _T_804 = _T_802[1]; // @[encoder.scala 33:25:@1241.4]
  assign _T_805 = _T_803 ^ _T_804; // @[encoder.scala 33:20:@1242.4]
  assign _T_806 = _T_802[3]; // @[encoder.scala 33:34:@1243.4]
  assign _T_807 = _T_805 ^ _T_806; // @[encoder.scala 33:29:@1244.4]
  assign _T_808 = _T_802[4]; // @[encoder.scala 33:43:@1245.4]
  assign _T_809 = _T_807 ^ _T_808; // @[encoder.scala 33:38:@1246.4]
  assign _T_810 = _T_802[6]; // @[encoder.scala 33:52:@1247.4]
  assign odd_0 = _T_809 ^ _T_810; // @[encoder.scala 33:47:@1248.4]
  assign _T_145 = {even_1,odd_0}; // @[encoder.scala 29:38:@557.4]
  assign _T_1425 = _T_803 ^ _T_806; // @[encoder.scala 38:20:@1886.4]
  assign _T_1427 = _T_1425 ^ _T_808; // @[encoder.scala 38:29:@1888.4]
  assign _T_1428 = _T_802[5]; // @[encoder.scala 38:43:@1889.4]
  assign _T_1429 = _T_1427 ^ _T_1428; // @[encoder.scala 38:38:@1890.4]
  assign even_0 = _T_1429 ^ _T_810; // @[encoder.scala 38:47:@1892.4]
  assign _T_146 = {_T_145,even_0}; // @[encoder.scala 29:38:@558.4]
  assign _T_728 = din_reg[8:2]; // @[encoder.scala 68:37:@1163.4]
  assign _T_729 = _T_728[3:0]; // @[Bitwise.scala 109:18:@1164.4]
  assign _T_730 = _T_729[1:0]; // @[Bitwise.scala 109:18:@1165.4]
  assign _T_731 = _T_730[0]; // @[Bitwise.scala 109:18:@1166.4]
  assign _T_732 = _T_730[1]; // @[Bitwise.scala 109:44:@1167.4]
  assign _T_733 = {_T_731,_T_732}; // @[Cat.scala 30:58:@1168.4]
  assign _T_734 = _T_729[3:2]; // @[Bitwise.scala 109:44:@1169.4]
  assign _T_735 = _T_734[0]; // @[Bitwise.scala 109:18:@1170.4]
  assign _T_736 = _T_734[1]; // @[Bitwise.scala 109:44:@1171.4]
  assign _T_737 = {_T_735,_T_736}; // @[Cat.scala 30:58:@1172.4]
  assign _T_738 = {_T_733,_T_737}; // @[Cat.scala 30:58:@1173.4]
  assign _T_739 = _T_728[6:4]; // @[Bitwise.scala 109:44:@1174.4]
  assign _T_740 = _T_739[1:0]; // @[Bitwise.scala 109:18:@1175.4]
  assign _T_741 = _T_740[0]; // @[Bitwise.scala 109:18:@1176.4]
  assign _T_742 = _T_740[1]; // @[Bitwise.scala 109:44:@1177.4]
  assign _T_743 = {_T_741,_T_742}; // @[Cat.scala 30:58:@1178.4]
  assign _T_744 = _T_739[2]; // @[Bitwise.scala 109:44:@1179.4]
  assign _T_745 = {_T_743,_T_744}; // @[Cat.scala 30:58:@1180.4]
  assign _T_746 = {_T_738,_T_745}; // @[Cat.scala 30:58:@1181.4]
  assign _T_747 = _T_746[0]; // @[encoder.scala 33:16:@1182.4]
  assign _T_748 = _T_746[1]; // @[encoder.scala 33:25:@1183.4]
  assign _T_749 = _T_747 ^ _T_748; // @[encoder.scala 33:20:@1184.4]
  assign _T_750 = _T_746[3]; // @[encoder.scala 33:34:@1185.4]
  assign _T_751 = _T_749 ^ _T_750; // @[encoder.scala 33:29:@1186.4]
  assign _T_752 = _T_746[4]; // @[encoder.scala 33:43:@1187.4]
  assign _T_753 = _T_751 ^ _T_752; // @[encoder.scala 33:38:@1188.4]
  assign _T_754 = _T_746[6]; // @[encoder.scala 33:52:@1189.4]
  assign odd_2 = _T_753 ^ _T_754; // @[encoder.scala 33:47:@1190.4]
  assign _T_1369 = _T_747 ^ _T_750; // @[encoder.scala 38:20:@1828.4]
  assign _T_1371 = _T_1369 ^ _T_752; // @[encoder.scala 38:29:@1830.4]
  assign _T_1372 = _T_746[5]; // @[encoder.scala 38:43:@1831.4]
  assign _T_1373 = _T_1371 ^ _T_1372; // @[encoder.scala 38:38:@1832.4]
  assign even_2 = _T_1373 ^ _T_754; // @[encoder.scala 38:47:@1834.4]
  assign _T_147 = {odd_2,even_2}; // @[encoder.scala 29:38:@559.4]
  assign _T_776 = _T_1394[1]; // @[encoder.scala 33:25:@1212.4]
  assign _T_777 = _T_1395 ^ _T_776; // @[encoder.scala 33:20:@1213.4]
  assign _T_779 = _T_777 ^ _T_1396; // @[encoder.scala 33:29:@1215.4]
  assign _T_781 = _T_779 ^ _T_1398; // @[encoder.scala 33:38:@1217.4]
  assign odd_1 = _T_781 ^ _T_1402; // @[encoder.scala 33:47:@1219.4]
  assign _T_148 = {_T_147,odd_1}; // @[encoder.scala 29:38:@560.4]
  assign _T_149 = {_T_148,_T_146}; // @[encoder.scala 29:38:@561.4]
  assign _T_1292 = din_reg[10:4]; // @[encoder.scala 95:39:@1749.4]
  assign _T_1293 = _T_1292[3:0]; // @[Bitwise.scala 109:18:@1750.4]
  assign _T_1294 = _T_1293[1:0]; // @[Bitwise.scala 109:18:@1751.4]
  assign _T_1295 = _T_1294[0]; // @[Bitwise.scala 109:18:@1752.4]
  assign _T_1296 = _T_1294[1]; // @[Bitwise.scala 109:44:@1753.4]
  assign _T_1297 = {_T_1295,_T_1296}; // @[Cat.scala 30:58:@1754.4]
  assign _T_1298 = _T_1293[3:2]; // @[Bitwise.scala 109:44:@1755.4]
  assign _T_1299 = _T_1298[0]; // @[Bitwise.scala 109:18:@1756.4]
  assign _T_1300 = _T_1298[1]; // @[Bitwise.scala 109:44:@1757.4]
  assign _T_1301 = {_T_1299,_T_1300}; // @[Cat.scala 30:58:@1758.4]
  assign _T_1302 = {_T_1297,_T_1301}; // @[Cat.scala 30:58:@1759.4]
  assign _T_1303 = _T_1292[6:4]; // @[Bitwise.scala 109:44:@1760.4]
  assign _T_1304 = _T_1303[1:0]; // @[Bitwise.scala 109:18:@1761.4]
  assign _T_1305 = _T_1304[0]; // @[Bitwise.scala 109:18:@1762.4]
  assign _T_1306 = _T_1304[1]; // @[Bitwise.scala 109:44:@1763.4]
  assign _T_1307 = {_T_1305,_T_1306}; // @[Cat.scala 30:58:@1764.4]
  assign _T_1308 = _T_1303[2]; // @[Bitwise.scala 109:44:@1765.4]
  assign _T_1309 = {_T_1307,_T_1308}; // @[Cat.scala 30:58:@1766.4]
  assign _T_1310 = {_T_1302,_T_1309}; // @[Cat.scala 30:58:@1767.4]
  assign _T_1311 = _T_1310[0]; // @[encoder.scala 38:16:@1768.4]
  assign _T_1312 = _T_1310[3]; // @[encoder.scala 38:25:@1769.4]
  assign _T_1313 = _T_1311 ^ _T_1312; // @[encoder.scala 38:20:@1770.4]
  assign _T_1314 = _T_1310[4]; // @[encoder.scala 38:34:@1771.4]
  assign _T_1315 = _T_1313 ^ _T_1314; // @[encoder.scala 38:29:@1772.4]
  assign _T_1316 = _T_1310[5]; // @[encoder.scala 38:43:@1773.4]
  assign _T_1317 = _T_1315 ^ _T_1316; // @[encoder.scala 38:38:@1774.4]
  assign _T_1318 = _T_1310[6]; // @[encoder.scala 38:52:@1775.4]
  assign even_4 = _T_1317 ^ _T_1318; // @[encoder.scala 38:47:@1776.4]
  assign _T_700 = din_reg[9:3]; // @[encoder.scala 67:37:@1134.4]
  assign _T_701 = _T_700[3:0]; // @[Bitwise.scala 109:18:@1135.4]
  assign _T_702 = _T_701[1:0]; // @[Bitwise.scala 109:18:@1136.4]
  assign _T_703 = _T_702[0]; // @[Bitwise.scala 109:18:@1137.4]
  assign _T_704 = _T_702[1]; // @[Bitwise.scala 109:44:@1138.4]
  assign _T_705 = {_T_703,_T_704}; // @[Cat.scala 30:58:@1139.4]
  assign _T_706 = _T_701[3:2]; // @[Bitwise.scala 109:44:@1140.4]
  assign _T_707 = _T_706[0]; // @[Bitwise.scala 109:18:@1141.4]
  assign _T_708 = _T_706[1]; // @[Bitwise.scala 109:44:@1142.4]
  assign _T_709 = {_T_707,_T_708}; // @[Cat.scala 30:58:@1143.4]
  assign _T_710 = {_T_705,_T_709}; // @[Cat.scala 30:58:@1144.4]
  assign _T_711 = _T_700[6:4]; // @[Bitwise.scala 109:44:@1145.4]
  assign _T_712 = _T_711[1:0]; // @[Bitwise.scala 109:18:@1146.4]
  assign _T_713 = _T_712[0]; // @[Bitwise.scala 109:18:@1147.4]
  assign _T_714 = _T_712[1]; // @[Bitwise.scala 109:44:@1148.4]
  assign _T_715 = {_T_713,_T_714}; // @[Cat.scala 30:58:@1149.4]
  assign _T_716 = _T_711[2]; // @[Bitwise.scala 109:44:@1150.4]
  assign _T_717 = {_T_715,_T_716}; // @[Cat.scala 30:58:@1151.4]
  assign _T_718 = {_T_710,_T_717}; // @[Cat.scala 30:58:@1152.4]
  assign _T_719 = _T_718[0]; // @[encoder.scala 33:16:@1153.4]
  assign _T_720 = _T_718[1]; // @[encoder.scala 33:25:@1154.4]
  assign _T_721 = _T_719 ^ _T_720; // @[encoder.scala 33:20:@1155.4]
  assign _T_722 = _T_718[3]; // @[encoder.scala 33:34:@1156.4]
  assign _T_723 = _T_721 ^ _T_722; // @[encoder.scala 33:29:@1157.4]
  assign _T_724 = _T_718[4]; // @[encoder.scala 33:43:@1158.4]
  assign _T_725 = _T_723 ^ _T_724; // @[encoder.scala 33:38:@1159.4]
  assign _T_726 = _T_718[6]; // @[encoder.scala 33:52:@1160.4]
  assign odd_3 = _T_725 ^ _T_726; // @[encoder.scala 33:47:@1161.4]
  assign _T_150 = {even_4,odd_3}; // @[encoder.scala 29:38:@562.4]
  assign _T_1341 = _T_719 ^ _T_722; // @[encoder.scala 38:20:@1799.4]
  assign _T_1343 = _T_1341 ^ _T_724; // @[encoder.scala 38:29:@1801.4]
  assign _T_1344 = _T_718[5]; // @[encoder.scala 38:43:@1802.4]
  assign _T_1345 = _T_1343 ^ _T_1344; // @[encoder.scala 38:38:@1803.4]
  assign even_3 = _T_1345 ^ _T_726; // @[encoder.scala 38:47:@1805.4]
  assign _T_151 = {_T_150,even_3}; // @[encoder.scala 29:38:@563.4]
  assign _T_644 = din_reg[11:5]; // @[encoder.scala 64:37:@1076.4]
  assign _T_645 = _T_644[3:0]; // @[Bitwise.scala 109:18:@1077.4]
  assign _T_646 = _T_645[1:0]; // @[Bitwise.scala 109:18:@1078.4]
  assign _T_647 = _T_646[0]; // @[Bitwise.scala 109:18:@1079.4]
  assign _T_648 = _T_646[1]; // @[Bitwise.scala 109:44:@1080.4]
  assign _T_649 = {_T_647,_T_648}; // @[Cat.scala 30:58:@1081.4]
  assign _T_650 = _T_645[3:2]; // @[Bitwise.scala 109:44:@1082.4]
  assign _T_651 = _T_650[0]; // @[Bitwise.scala 109:18:@1083.4]
  assign _T_652 = _T_650[1]; // @[Bitwise.scala 109:44:@1084.4]
  assign _T_653 = {_T_651,_T_652}; // @[Cat.scala 30:58:@1085.4]
  assign _T_654 = {_T_649,_T_653}; // @[Cat.scala 30:58:@1086.4]
  assign _T_655 = _T_644[6:4]; // @[Bitwise.scala 109:44:@1087.4]
  assign _T_656 = _T_655[1:0]; // @[Bitwise.scala 109:18:@1088.4]
  assign _T_657 = _T_656[0]; // @[Bitwise.scala 109:18:@1089.4]
  assign _T_658 = _T_656[1]; // @[Bitwise.scala 109:44:@1090.4]
  assign _T_659 = {_T_657,_T_658}; // @[Cat.scala 30:58:@1091.4]
  assign _T_660 = _T_655[2]; // @[Bitwise.scala 109:44:@1092.4]
  assign _T_661 = {_T_659,_T_660}; // @[Cat.scala 30:58:@1093.4]
  assign _T_662 = {_T_654,_T_661}; // @[Cat.scala 30:58:@1094.4]
  assign _T_663 = _T_662[0]; // @[encoder.scala 33:16:@1095.4]
  assign _T_664 = _T_662[1]; // @[encoder.scala 33:25:@1096.4]
  assign _T_665 = _T_663 ^ _T_664; // @[encoder.scala 33:20:@1097.4]
  assign _T_666 = _T_662[3]; // @[encoder.scala 33:34:@1098.4]
  assign _T_667 = _T_665 ^ _T_666; // @[encoder.scala 33:29:@1099.4]
  assign _T_668 = _T_662[4]; // @[encoder.scala 33:43:@1100.4]
  assign _T_669 = _T_667 ^ _T_668; // @[encoder.scala 33:38:@1101.4]
  assign _T_670 = _T_662[6]; // @[encoder.scala 33:52:@1102.4]
  assign odd_5 = _T_669 ^ _T_670; // @[encoder.scala 33:47:@1103.4]
  assign _T_1285 = _T_663 ^ _T_666; // @[encoder.scala 38:20:@1741.4]
  assign _T_1287 = _T_1285 ^ _T_668; // @[encoder.scala 38:29:@1743.4]
  assign _T_1288 = _T_662[5]; // @[encoder.scala 38:43:@1744.4]
  assign _T_1289 = _T_1287 ^ _T_1288; // @[encoder.scala 38:38:@1745.4]
  assign even_5 = _T_1289 ^ _T_670; // @[encoder.scala 38:47:@1747.4]
  assign _T_152 = {odd_5,even_5}; // @[encoder.scala 29:38:@564.4]
  assign _T_692 = _T_1310[1]; // @[encoder.scala 33:25:@1125.4]
  assign _T_693 = _T_1311 ^ _T_692; // @[encoder.scala 33:20:@1126.4]
  assign _T_695 = _T_693 ^ _T_1312; // @[encoder.scala 33:29:@1128.4]
  assign _T_697 = _T_695 ^ _T_1314; // @[encoder.scala 33:38:@1130.4]
  assign odd_4 = _T_697 ^ _T_1318; // @[encoder.scala 33:47:@1132.4]
  assign _T_153 = {_T_152,odd_4}; // @[encoder.scala 29:38:@565.4]
  assign _T_154 = {_T_153,_T_151}; // @[encoder.scala 29:38:@566.4]
  assign _T_155 = {_T_154,_T_149}; // @[encoder.scala 29:38:@567.4]
  assign _T_1208 = din_reg[13:7]; // @[encoder.scala 92:39:@1662.4]
  assign _T_1209 = _T_1208[3:0]; // @[Bitwise.scala 109:18:@1663.4]
  assign _T_1210 = _T_1209[1:0]; // @[Bitwise.scala 109:18:@1664.4]
  assign _T_1211 = _T_1210[0]; // @[Bitwise.scala 109:18:@1665.4]
  assign _T_1212 = _T_1210[1]; // @[Bitwise.scala 109:44:@1666.4]
  assign _T_1213 = {_T_1211,_T_1212}; // @[Cat.scala 30:58:@1667.4]
  assign _T_1214 = _T_1209[3:2]; // @[Bitwise.scala 109:44:@1668.4]
  assign _T_1215 = _T_1214[0]; // @[Bitwise.scala 109:18:@1669.4]
  assign _T_1216 = _T_1214[1]; // @[Bitwise.scala 109:44:@1670.4]
  assign _T_1217 = {_T_1215,_T_1216}; // @[Cat.scala 30:58:@1671.4]
  assign _T_1218 = {_T_1213,_T_1217}; // @[Cat.scala 30:58:@1672.4]
  assign _T_1219 = _T_1208[6:4]; // @[Bitwise.scala 109:44:@1673.4]
  assign _T_1220 = _T_1219[1:0]; // @[Bitwise.scala 109:18:@1674.4]
  assign _T_1221 = _T_1220[0]; // @[Bitwise.scala 109:18:@1675.4]
  assign _T_1222 = _T_1220[1]; // @[Bitwise.scala 109:44:@1676.4]
  assign _T_1223 = {_T_1221,_T_1222}; // @[Cat.scala 30:58:@1677.4]
  assign _T_1224 = _T_1219[2]; // @[Bitwise.scala 109:44:@1678.4]
  assign _T_1225 = {_T_1223,_T_1224}; // @[Cat.scala 30:58:@1679.4]
  assign _T_1226 = {_T_1218,_T_1225}; // @[Cat.scala 30:58:@1680.4]
  assign _T_1227 = _T_1226[0]; // @[encoder.scala 38:16:@1681.4]
  assign _T_1228 = _T_1226[3]; // @[encoder.scala 38:25:@1682.4]
  assign _T_1229 = _T_1227 ^ _T_1228; // @[encoder.scala 38:20:@1683.4]
  assign _T_1230 = _T_1226[4]; // @[encoder.scala 38:34:@1684.4]
  assign _T_1231 = _T_1229 ^ _T_1230; // @[encoder.scala 38:29:@1685.4]
  assign _T_1232 = _T_1226[5]; // @[encoder.scala 38:43:@1686.4]
  assign _T_1233 = _T_1231 ^ _T_1232; // @[encoder.scala 38:38:@1687.4]
  assign _T_1234 = _T_1226[6]; // @[encoder.scala 38:52:@1688.4]
  assign even_7 = _T_1233 ^ _T_1234; // @[encoder.scala 38:47:@1689.4]
  assign _T_616 = din_reg[12:6]; // @[encoder.scala 63:37:@1047.4]
  assign _T_617 = _T_616[3:0]; // @[Bitwise.scala 109:18:@1048.4]
  assign _T_618 = _T_617[1:0]; // @[Bitwise.scala 109:18:@1049.4]
  assign _T_619 = _T_618[0]; // @[Bitwise.scala 109:18:@1050.4]
  assign _T_620 = _T_618[1]; // @[Bitwise.scala 109:44:@1051.4]
  assign _T_621 = {_T_619,_T_620}; // @[Cat.scala 30:58:@1052.4]
  assign _T_622 = _T_617[3:2]; // @[Bitwise.scala 109:44:@1053.4]
  assign _T_623 = _T_622[0]; // @[Bitwise.scala 109:18:@1054.4]
  assign _T_624 = _T_622[1]; // @[Bitwise.scala 109:44:@1055.4]
  assign _T_625 = {_T_623,_T_624}; // @[Cat.scala 30:58:@1056.4]
  assign _T_626 = {_T_621,_T_625}; // @[Cat.scala 30:58:@1057.4]
  assign _T_627 = _T_616[6:4]; // @[Bitwise.scala 109:44:@1058.4]
  assign _T_628 = _T_627[1:0]; // @[Bitwise.scala 109:18:@1059.4]
  assign _T_629 = _T_628[0]; // @[Bitwise.scala 109:18:@1060.4]
  assign _T_630 = _T_628[1]; // @[Bitwise.scala 109:44:@1061.4]
  assign _T_631 = {_T_629,_T_630}; // @[Cat.scala 30:58:@1062.4]
  assign _T_632 = _T_627[2]; // @[Bitwise.scala 109:44:@1063.4]
  assign _T_633 = {_T_631,_T_632}; // @[Cat.scala 30:58:@1064.4]
  assign _T_634 = {_T_626,_T_633}; // @[Cat.scala 30:58:@1065.4]
  assign _T_635 = _T_634[0]; // @[encoder.scala 33:16:@1066.4]
  assign _T_636 = _T_634[1]; // @[encoder.scala 33:25:@1067.4]
  assign _T_637 = _T_635 ^ _T_636; // @[encoder.scala 33:20:@1068.4]
  assign _T_638 = _T_634[3]; // @[encoder.scala 33:34:@1069.4]
  assign _T_639 = _T_637 ^ _T_638; // @[encoder.scala 33:29:@1070.4]
  assign _T_640 = _T_634[4]; // @[encoder.scala 33:43:@1071.4]
  assign _T_641 = _T_639 ^ _T_640; // @[encoder.scala 33:38:@1072.4]
  assign _T_642 = _T_634[6]; // @[encoder.scala 33:52:@1073.4]
  assign odd_6 = _T_641 ^ _T_642; // @[encoder.scala 33:47:@1074.4]
  assign _T_156 = {even_7,odd_6}; // @[encoder.scala 29:38:@568.4]
  assign _T_1257 = _T_635 ^ _T_638; // @[encoder.scala 38:20:@1712.4]
  assign _T_1259 = _T_1257 ^ _T_640; // @[encoder.scala 38:29:@1714.4]
  assign _T_1260 = _T_634[5]; // @[encoder.scala 38:43:@1715.4]
  assign _T_1261 = _T_1259 ^ _T_1260; // @[encoder.scala 38:38:@1716.4]
  assign even_6 = _T_1261 ^ _T_642; // @[encoder.scala 38:47:@1718.4]
  assign _T_157 = {_T_156,even_6}; // @[encoder.scala 29:38:@569.4]
  assign _T_560 = din_reg[14:8]; // @[encoder.scala 60:37:@989.4]
  assign _T_561 = _T_560[3:0]; // @[Bitwise.scala 109:18:@990.4]
  assign _T_562 = _T_561[1:0]; // @[Bitwise.scala 109:18:@991.4]
  assign _T_563 = _T_562[0]; // @[Bitwise.scala 109:18:@992.4]
  assign _T_564 = _T_562[1]; // @[Bitwise.scala 109:44:@993.4]
  assign _T_565 = {_T_563,_T_564}; // @[Cat.scala 30:58:@994.4]
  assign _T_566 = _T_561[3:2]; // @[Bitwise.scala 109:44:@995.4]
  assign _T_567 = _T_566[0]; // @[Bitwise.scala 109:18:@996.4]
  assign _T_568 = _T_566[1]; // @[Bitwise.scala 109:44:@997.4]
  assign _T_569 = {_T_567,_T_568}; // @[Cat.scala 30:58:@998.4]
  assign _T_570 = {_T_565,_T_569}; // @[Cat.scala 30:58:@999.4]
  assign _T_571 = _T_560[6:4]; // @[Bitwise.scala 109:44:@1000.4]
  assign _T_572 = _T_571[1:0]; // @[Bitwise.scala 109:18:@1001.4]
  assign _T_573 = _T_572[0]; // @[Bitwise.scala 109:18:@1002.4]
  assign _T_574 = _T_572[1]; // @[Bitwise.scala 109:44:@1003.4]
  assign _T_575 = {_T_573,_T_574}; // @[Cat.scala 30:58:@1004.4]
  assign _T_576 = _T_571[2]; // @[Bitwise.scala 109:44:@1005.4]
  assign _T_577 = {_T_575,_T_576}; // @[Cat.scala 30:58:@1006.4]
  assign _T_578 = {_T_570,_T_577}; // @[Cat.scala 30:58:@1007.4]
  assign _T_579 = _T_578[0]; // @[encoder.scala 33:16:@1008.4]
  assign _T_580 = _T_578[1]; // @[encoder.scala 33:25:@1009.4]
  assign _T_581 = _T_579 ^ _T_580; // @[encoder.scala 33:20:@1010.4]
  assign _T_582 = _T_578[3]; // @[encoder.scala 33:34:@1011.4]
  assign _T_583 = _T_581 ^ _T_582; // @[encoder.scala 33:29:@1012.4]
  assign _T_584 = _T_578[4]; // @[encoder.scala 33:43:@1013.4]
  assign _T_585 = _T_583 ^ _T_584; // @[encoder.scala 33:38:@1014.4]
  assign _T_586 = _T_578[6]; // @[encoder.scala 33:52:@1015.4]
  assign odd_8 = _T_585 ^ _T_586; // @[encoder.scala 33:47:@1016.4]
  assign _T_1201 = _T_579 ^ _T_582; // @[encoder.scala 38:20:@1654.4]
  assign _T_1203 = _T_1201 ^ _T_584; // @[encoder.scala 38:29:@1656.4]
  assign _T_1204 = _T_578[5]; // @[encoder.scala 38:43:@1657.4]
  assign _T_1205 = _T_1203 ^ _T_1204; // @[encoder.scala 38:38:@1658.4]
  assign even_8 = _T_1205 ^ _T_586; // @[encoder.scala 38:47:@1660.4]
  assign _T_158 = {odd_8,even_8}; // @[encoder.scala 29:38:@570.4]
  assign _T_608 = _T_1226[1]; // @[encoder.scala 33:25:@1038.4]
  assign _T_609 = _T_1227 ^ _T_608; // @[encoder.scala 33:20:@1039.4]
  assign _T_611 = _T_609 ^ _T_1228; // @[encoder.scala 33:29:@1041.4]
  assign _T_613 = _T_611 ^ _T_1230; // @[encoder.scala 33:38:@1043.4]
  assign odd_7 = _T_613 ^ _T_1234; // @[encoder.scala 33:47:@1045.4]
  assign _T_159 = {_T_158,odd_7}; // @[encoder.scala 29:38:@571.4]
  assign _T_160 = {_T_159,_T_157}; // @[encoder.scala 29:38:@572.4]
  assign _T_1124 = din_reg[16:10]; // @[encoder.scala 88:39:@1575.4]
  assign _T_1125 = _T_1124[3:0]; // @[Bitwise.scala 109:18:@1576.4]
  assign _T_1126 = _T_1125[1:0]; // @[Bitwise.scala 109:18:@1577.4]
  assign _T_1127 = _T_1126[0]; // @[Bitwise.scala 109:18:@1578.4]
  assign _T_1128 = _T_1126[1]; // @[Bitwise.scala 109:44:@1579.4]
  assign _T_1129 = {_T_1127,_T_1128}; // @[Cat.scala 30:58:@1580.4]
  assign _T_1130 = _T_1125[3:2]; // @[Bitwise.scala 109:44:@1581.4]
  assign _T_1131 = _T_1130[0]; // @[Bitwise.scala 109:18:@1582.4]
  assign _T_1132 = _T_1130[1]; // @[Bitwise.scala 109:44:@1583.4]
  assign _T_1133 = {_T_1131,_T_1132}; // @[Cat.scala 30:58:@1584.4]
  assign _T_1134 = {_T_1129,_T_1133}; // @[Cat.scala 30:58:@1585.4]
  assign _T_1135 = _T_1124[6:4]; // @[Bitwise.scala 109:44:@1586.4]
  assign _T_1136 = _T_1135[1:0]; // @[Bitwise.scala 109:18:@1587.4]
  assign _T_1137 = _T_1136[0]; // @[Bitwise.scala 109:18:@1588.4]
  assign _T_1138 = _T_1136[1]; // @[Bitwise.scala 109:44:@1589.4]
  assign _T_1139 = {_T_1137,_T_1138}; // @[Cat.scala 30:58:@1590.4]
  assign _T_1140 = _T_1135[2]; // @[Bitwise.scala 109:44:@1591.4]
  assign _T_1141 = {_T_1139,_T_1140}; // @[Cat.scala 30:58:@1592.4]
  assign _T_1142 = {_T_1134,_T_1141}; // @[Cat.scala 30:58:@1593.4]
  assign _T_1143 = _T_1142[0]; // @[encoder.scala 38:16:@1594.4]
  assign _T_1144 = _T_1142[3]; // @[encoder.scala 38:25:@1595.4]
  assign _T_1145 = _T_1143 ^ _T_1144; // @[encoder.scala 38:20:@1596.4]
  assign _T_1146 = _T_1142[4]; // @[encoder.scala 38:34:@1597.4]
  assign _T_1147 = _T_1145 ^ _T_1146; // @[encoder.scala 38:29:@1598.4]
  assign _T_1148 = _T_1142[5]; // @[encoder.scala 38:43:@1599.4]
  assign _T_1149 = _T_1147 ^ _T_1148; // @[encoder.scala 38:38:@1600.4]
  assign _T_1150 = _T_1142[6]; // @[encoder.scala 38:52:@1601.4]
  assign even_10 = _T_1149 ^ _T_1150; // @[encoder.scala 38:47:@1602.4]
  assign _T_532 = din_reg[15:9]; // @[encoder.scala 59:37:@960.4]
  assign _T_533 = _T_532[3:0]; // @[Bitwise.scala 109:18:@961.4]
  assign _T_534 = _T_533[1:0]; // @[Bitwise.scala 109:18:@962.4]
  assign _T_535 = _T_534[0]; // @[Bitwise.scala 109:18:@963.4]
  assign _T_536 = _T_534[1]; // @[Bitwise.scala 109:44:@964.4]
  assign _T_537 = {_T_535,_T_536}; // @[Cat.scala 30:58:@965.4]
  assign _T_538 = _T_533[3:2]; // @[Bitwise.scala 109:44:@966.4]
  assign _T_539 = _T_538[0]; // @[Bitwise.scala 109:18:@967.4]
  assign _T_540 = _T_538[1]; // @[Bitwise.scala 109:44:@968.4]
  assign _T_541 = {_T_539,_T_540}; // @[Cat.scala 30:58:@969.4]
  assign _T_542 = {_T_537,_T_541}; // @[Cat.scala 30:58:@970.4]
  assign _T_543 = _T_532[6:4]; // @[Bitwise.scala 109:44:@971.4]
  assign _T_544 = _T_543[1:0]; // @[Bitwise.scala 109:18:@972.4]
  assign _T_545 = _T_544[0]; // @[Bitwise.scala 109:18:@973.4]
  assign _T_546 = _T_544[1]; // @[Bitwise.scala 109:44:@974.4]
  assign _T_547 = {_T_545,_T_546}; // @[Cat.scala 30:58:@975.4]
  assign _T_548 = _T_543[2]; // @[Bitwise.scala 109:44:@976.4]
  assign _T_549 = {_T_547,_T_548}; // @[Cat.scala 30:58:@977.4]
  assign _T_550 = {_T_542,_T_549}; // @[Cat.scala 30:58:@978.4]
  assign _T_551 = _T_550[0]; // @[encoder.scala 33:16:@979.4]
  assign _T_552 = _T_550[1]; // @[encoder.scala 33:25:@980.4]
  assign _T_553 = _T_551 ^ _T_552; // @[encoder.scala 33:20:@981.4]
  assign _T_554 = _T_550[3]; // @[encoder.scala 33:34:@982.4]
  assign _T_555 = _T_553 ^ _T_554; // @[encoder.scala 33:29:@983.4]
  assign _T_556 = _T_550[4]; // @[encoder.scala 33:43:@984.4]
  assign _T_557 = _T_555 ^ _T_556; // @[encoder.scala 33:38:@985.4]
  assign _T_558 = _T_550[6]; // @[encoder.scala 33:52:@986.4]
  assign odd_9 = _T_557 ^ _T_558; // @[encoder.scala 33:47:@987.4]
  assign _T_161 = {even_10,odd_9}; // @[encoder.scala 29:38:@573.4]
  assign _T_1173 = _T_551 ^ _T_554; // @[encoder.scala 38:20:@1625.4]
  assign _T_1175 = _T_1173 ^ _T_556; // @[encoder.scala 38:29:@1627.4]
  assign _T_1176 = _T_550[5]; // @[encoder.scala 38:43:@1628.4]
  assign _T_1177 = _T_1175 ^ _T_1176; // @[encoder.scala 38:38:@1629.4]
  assign even_9 = _T_1177 ^ _T_558; // @[encoder.scala 38:47:@1631.4]
  assign _T_162 = {_T_161,even_9}; // @[encoder.scala 29:38:@574.4]
  assign _T_476 = din_reg[17:11]; // @[encoder.scala 57:37:@902.4]
  assign _T_477 = _T_476[3:0]; // @[Bitwise.scala 109:18:@903.4]
  assign _T_478 = _T_477[1:0]; // @[Bitwise.scala 109:18:@904.4]
  assign _T_479 = _T_478[0]; // @[Bitwise.scala 109:18:@905.4]
  assign _T_480 = _T_478[1]; // @[Bitwise.scala 109:44:@906.4]
  assign _T_481 = {_T_479,_T_480}; // @[Cat.scala 30:58:@907.4]
  assign _T_482 = _T_477[3:2]; // @[Bitwise.scala 109:44:@908.4]
  assign _T_483 = _T_482[0]; // @[Bitwise.scala 109:18:@909.4]
  assign _T_484 = _T_482[1]; // @[Bitwise.scala 109:44:@910.4]
  assign _T_485 = {_T_483,_T_484}; // @[Cat.scala 30:58:@911.4]
  assign _T_486 = {_T_481,_T_485}; // @[Cat.scala 30:58:@912.4]
  assign _T_487 = _T_476[6:4]; // @[Bitwise.scala 109:44:@913.4]
  assign _T_488 = _T_487[1:0]; // @[Bitwise.scala 109:18:@914.4]
  assign _T_489 = _T_488[0]; // @[Bitwise.scala 109:18:@915.4]
  assign _T_490 = _T_488[1]; // @[Bitwise.scala 109:44:@916.4]
  assign _T_491 = {_T_489,_T_490}; // @[Cat.scala 30:58:@917.4]
  assign _T_492 = _T_487[2]; // @[Bitwise.scala 109:44:@918.4]
  assign _T_493 = {_T_491,_T_492}; // @[Cat.scala 30:58:@919.4]
  assign _T_494 = {_T_486,_T_493}; // @[Cat.scala 30:58:@920.4]
  assign _T_495 = _T_494[0]; // @[encoder.scala 33:16:@921.4]
  assign _T_496 = _T_494[1]; // @[encoder.scala 33:25:@922.4]
  assign _T_497 = _T_495 ^ _T_496; // @[encoder.scala 33:20:@923.4]
  assign _T_498 = _T_494[3]; // @[encoder.scala 33:34:@924.4]
  assign _T_499 = _T_497 ^ _T_498; // @[encoder.scala 33:29:@925.4]
  assign _T_500 = _T_494[4]; // @[encoder.scala 33:43:@926.4]
  assign _T_501 = _T_499 ^ _T_500; // @[encoder.scala 33:38:@927.4]
  assign _T_502 = _T_494[6]; // @[encoder.scala 33:52:@928.4]
  assign odd_11 = _T_501 ^ _T_502; // @[encoder.scala 33:47:@929.4]
  assign _T_1117 = _T_495 ^ _T_498; // @[encoder.scala 38:20:@1567.4]
  assign _T_1119 = _T_1117 ^ _T_500; // @[encoder.scala 38:29:@1569.4]
  assign _T_1120 = _T_494[5]; // @[encoder.scala 38:43:@1570.4]
  assign _T_1121 = _T_1119 ^ _T_1120; // @[encoder.scala 38:38:@1571.4]
  assign even_11 = _T_1121 ^ _T_502; // @[encoder.scala 38:47:@1573.4]
  assign _T_163 = {odd_11,even_11}; // @[encoder.scala 29:38:@575.4]
  assign _T_524 = _T_1142[1]; // @[encoder.scala 33:25:@951.4]
  assign _T_525 = _T_1143 ^ _T_524; // @[encoder.scala 33:20:@952.4]
  assign _T_527 = _T_525 ^ _T_1144; // @[encoder.scala 33:29:@954.4]
  assign _T_529 = _T_527 ^ _T_1146; // @[encoder.scala 33:38:@956.4]
  assign odd_10 = _T_529 ^ _T_1150; // @[encoder.scala 33:47:@958.4]
  assign _T_164 = {_T_163,odd_10}; // @[encoder.scala 29:38:@576.4]
  assign _T_165 = {_T_164,_T_162}; // @[encoder.scala 29:38:@577.4]
  assign _T_166 = {_T_165,_T_160}; // @[encoder.scala 29:38:@578.4]
  assign _T_167 = {_T_166,_T_155}; // @[encoder.scala 29:38:@579.4]
  assign _T_1040 = din_reg[19:13]; // @[encoder.scala 84:39:@1488.4]
  assign _T_1041 = _T_1040[3:0]; // @[Bitwise.scala 109:18:@1489.4]
  assign _T_1042 = _T_1041[1:0]; // @[Bitwise.scala 109:18:@1490.4]
  assign _T_1043 = _T_1042[0]; // @[Bitwise.scala 109:18:@1491.4]
  assign _T_1044 = _T_1042[1]; // @[Bitwise.scala 109:44:@1492.4]
  assign _T_1045 = {_T_1043,_T_1044}; // @[Cat.scala 30:58:@1493.4]
  assign _T_1046 = _T_1041[3:2]; // @[Bitwise.scala 109:44:@1494.4]
  assign _T_1047 = _T_1046[0]; // @[Bitwise.scala 109:18:@1495.4]
  assign _T_1048 = _T_1046[1]; // @[Bitwise.scala 109:44:@1496.4]
  assign _T_1049 = {_T_1047,_T_1048}; // @[Cat.scala 30:58:@1497.4]
  assign _T_1050 = {_T_1045,_T_1049}; // @[Cat.scala 30:58:@1498.4]
  assign _T_1051 = _T_1040[6:4]; // @[Bitwise.scala 109:44:@1499.4]
  assign _T_1052 = _T_1051[1:0]; // @[Bitwise.scala 109:18:@1500.4]
  assign _T_1053 = _T_1052[0]; // @[Bitwise.scala 109:18:@1501.4]
  assign _T_1054 = _T_1052[1]; // @[Bitwise.scala 109:44:@1502.4]
  assign _T_1055 = {_T_1053,_T_1054}; // @[Cat.scala 30:58:@1503.4]
  assign _T_1056 = _T_1051[2]; // @[Bitwise.scala 109:44:@1504.4]
  assign _T_1057 = {_T_1055,_T_1056}; // @[Cat.scala 30:58:@1505.4]
  assign _T_1058 = {_T_1050,_T_1057}; // @[Cat.scala 30:58:@1506.4]
  assign _T_1059 = _T_1058[0]; // @[encoder.scala 38:16:@1507.4]
  assign _T_1060 = _T_1058[3]; // @[encoder.scala 38:25:@1508.4]
  assign _T_1061 = _T_1059 ^ _T_1060; // @[encoder.scala 38:20:@1509.4]
  assign _T_1062 = _T_1058[4]; // @[encoder.scala 38:34:@1510.4]
  assign _T_1063 = _T_1061 ^ _T_1062; // @[encoder.scala 38:29:@1511.4]
  assign _T_1064 = _T_1058[5]; // @[encoder.scala 38:43:@1512.4]
  assign _T_1065 = _T_1063 ^ _T_1064; // @[encoder.scala 38:38:@1513.4]
  assign _T_1066 = _T_1058[6]; // @[encoder.scala 38:52:@1514.4]
  assign even_13 = _T_1065 ^ _T_1066; // @[encoder.scala 38:47:@1515.4]
  assign _T_448 = din_reg[18:12]; // @[encoder.scala 55:37:@873.4]
  assign _T_449 = _T_448[3:0]; // @[Bitwise.scala 109:18:@874.4]
  assign _T_450 = _T_449[1:0]; // @[Bitwise.scala 109:18:@875.4]
  assign _T_451 = _T_450[0]; // @[Bitwise.scala 109:18:@876.4]
  assign _T_452 = _T_450[1]; // @[Bitwise.scala 109:44:@877.4]
  assign _T_453 = {_T_451,_T_452}; // @[Cat.scala 30:58:@878.4]
  assign _T_454 = _T_449[3:2]; // @[Bitwise.scala 109:44:@879.4]
  assign _T_455 = _T_454[0]; // @[Bitwise.scala 109:18:@880.4]
  assign _T_456 = _T_454[1]; // @[Bitwise.scala 109:44:@881.4]
  assign _T_457 = {_T_455,_T_456}; // @[Cat.scala 30:58:@882.4]
  assign _T_458 = {_T_453,_T_457}; // @[Cat.scala 30:58:@883.4]
  assign _T_459 = _T_448[6:4]; // @[Bitwise.scala 109:44:@884.4]
  assign _T_460 = _T_459[1:0]; // @[Bitwise.scala 109:18:@885.4]
  assign _T_461 = _T_460[0]; // @[Bitwise.scala 109:18:@886.4]
  assign _T_462 = _T_460[1]; // @[Bitwise.scala 109:44:@887.4]
  assign _T_463 = {_T_461,_T_462}; // @[Cat.scala 30:58:@888.4]
  assign _T_464 = _T_459[2]; // @[Bitwise.scala 109:44:@889.4]
  assign _T_465 = {_T_463,_T_464}; // @[Cat.scala 30:58:@890.4]
  assign _T_466 = {_T_458,_T_465}; // @[Cat.scala 30:58:@891.4]
  assign _T_467 = _T_466[0]; // @[encoder.scala 33:16:@892.4]
  assign _T_468 = _T_466[1]; // @[encoder.scala 33:25:@893.4]
  assign _T_469 = _T_467 ^ _T_468; // @[encoder.scala 33:20:@894.4]
  assign _T_470 = _T_466[3]; // @[encoder.scala 33:34:@895.4]
  assign _T_471 = _T_469 ^ _T_470; // @[encoder.scala 33:29:@896.4]
  assign _T_472 = _T_466[4]; // @[encoder.scala 33:43:@897.4]
  assign _T_473 = _T_471 ^ _T_472; // @[encoder.scala 33:38:@898.4]
  assign _T_474 = _T_466[6]; // @[encoder.scala 33:52:@899.4]
  assign odd_12 = _T_473 ^ _T_474; // @[encoder.scala 33:47:@900.4]
  assign _T_168 = {even_13,odd_12}; // @[encoder.scala 29:38:@580.4]
  assign _T_1089 = _T_467 ^ _T_470; // @[encoder.scala 38:20:@1538.4]
  assign _T_1091 = _T_1089 ^ _T_472; // @[encoder.scala 38:29:@1540.4]
  assign _T_1092 = _T_466[5]; // @[encoder.scala 38:43:@1541.4]
  assign _T_1093 = _T_1091 ^ _T_1092; // @[encoder.scala 38:38:@1542.4]
  assign even_12 = _T_1093 ^ _T_474; // @[encoder.scala 38:47:@1544.4]
  assign _T_169 = {_T_168,even_12}; // @[encoder.scala 29:38:@581.4]
  assign _T_392 = din_reg[20:14]; // @[encoder.scala 53:37:@815.4]
  assign _T_393 = _T_392[3:0]; // @[Bitwise.scala 109:18:@816.4]
  assign _T_394 = _T_393[1:0]; // @[Bitwise.scala 109:18:@817.4]
  assign _T_395 = _T_394[0]; // @[Bitwise.scala 109:18:@818.4]
  assign _T_396 = _T_394[1]; // @[Bitwise.scala 109:44:@819.4]
  assign _T_397 = {_T_395,_T_396}; // @[Cat.scala 30:58:@820.4]
  assign _T_398 = _T_393[3:2]; // @[Bitwise.scala 109:44:@821.4]
  assign _T_399 = _T_398[0]; // @[Bitwise.scala 109:18:@822.4]
  assign _T_400 = _T_398[1]; // @[Bitwise.scala 109:44:@823.4]
  assign _T_401 = {_T_399,_T_400}; // @[Cat.scala 30:58:@824.4]
  assign _T_402 = {_T_397,_T_401}; // @[Cat.scala 30:58:@825.4]
  assign _T_403 = _T_392[6:4]; // @[Bitwise.scala 109:44:@826.4]
  assign _T_404 = _T_403[1:0]; // @[Bitwise.scala 109:18:@827.4]
  assign _T_405 = _T_404[0]; // @[Bitwise.scala 109:18:@828.4]
  assign _T_406 = _T_404[1]; // @[Bitwise.scala 109:44:@829.4]
  assign _T_407 = {_T_405,_T_406}; // @[Cat.scala 30:58:@830.4]
  assign _T_408 = _T_403[2]; // @[Bitwise.scala 109:44:@831.4]
  assign _T_409 = {_T_407,_T_408}; // @[Cat.scala 30:58:@832.4]
  assign _T_410 = {_T_402,_T_409}; // @[Cat.scala 30:58:@833.4]
  assign _T_411 = _T_410[0]; // @[encoder.scala 33:16:@834.4]
  assign _T_412 = _T_410[1]; // @[encoder.scala 33:25:@835.4]
  assign _T_413 = _T_411 ^ _T_412; // @[encoder.scala 33:20:@836.4]
  assign _T_414 = _T_410[3]; // @[encoder.scala 33:34:@837.4]
  assign _T_415 = _T_413 ^ _T_414; // @[encoder.scala 33:29:@838.4]
  assign _T_416 = _T_410[4]; // @[encoder.scala 33:43:@839.4]
  assign _T_417 = _T_415 ^ _T_416; // @[encoder.scala 33:38:@840.4]
  assign _T_418 = _T_410[6]; // @[encoder.scala 33:52:@841.4]
  assign odd_14 = _T_417 ^ _T_418; // @[encoder.scala 33:47:@842.4]
  assign _T_1033 = _T_411 ^ _T_414; // @[encoder.scala 38:20:@1480.4]
  assign _T_1035 = _T_1033 ^ _T_416; // @[encoder.scala 38:29:@1482.4]
  assign _T_1036 = _T_410[5]; // @[encoder.scala 38:43:@1483.4]
  assign _T_1037 = _T_1035 ^ _T_1036; // @[encoder.scala 38:38:@1484.4]
  assign even_14 = _T_1037 ^ _T_418; // @[encoder.scala 38:47:@1486.4]
  assign _T_170 = {odd_14,even_14}; // @[encoder.scala 29:38:@582.4]
  assign _T_440 = _T_1058[1]; // @[encoder.scala 33:25:@864.4]
  assign _T_441 = _T_1059 ^ _T_440; // @[encoder.scala 33:20:@865.4]
  assign _T_443 = _T_441 ^ _T_1060; // @[encoder.scala 33:29:@867.4]
  assign _T_445 = _T_443 ^ _T_1062; // @[encoder.scala 33:38:@869.4]
  assign odd_13 = _T_445 ^ _T_1066; // @[encoder.scala 33:47:@871.4]
  assign _T_171 = {_T_170,odd_13}; // @[encoder.scala 29:38:@583.4]
  assign _T_172 = {_T_171,_T_169}; // @[encoder.scala 29:38:@584.4]
  assign _T_956 = din_reg[22:16]; // @[encoder.scala 80:39:@1401.4]
  assign _T_957 = _T_956[3:0]; // @[Bitwise.scala 109:18:@1402.4]
  assign _T_958 = _T_957[1:0]; // @[Bitwise.scala 109:18:@1403.4]
  assign _T_959 = _T_958[0]; // @[Bitwise.scala 109:18:@1404.4]
  assign _T_960 = _T_958[1]; // @[Bitwise.scala 109:44:@1405.4]
  assign _T_961 = {_T_959,_T_960}; // @[Cat.scala 30:58:@1406.4]
  assign _T_962 = _T_957[3:2]; // @[Bitwise.scala 109:44:@1407.4]
  assign _T_963 = _T_962[0]; // @[Bitwise.scala 109:18:@1408.4]
  assign _T_964 = _T_962[1]; // @[Bitwise.scala 109:44:@1409.4]
  assign _T_965 = {_T_963,_T_964}; // @[Cat.scala 30:58:@1410.4]
  assign _T_966 = {_T_961,_T_965}; // @[Cat.scala 30:58:@1411.4]
  assign _T_967 = _T_956[6:4]; // @[Bitwise.scala 109:44:@1412.4]
  assign _T_968 = _T_967[1:0]; // @[Bitwise.scala 109:18:@1413.4]
  assign _T_969 = _T_968[0]; // @[Bitwise.scala 109:18:@1414.4]
  assign _T_970 = _T_968[1]; // @[Bitwise.scala 109:44:@1415.4]
  assign _T_971 = {_T_969,_T_970}; // @[Cat.scala 30:58:@1416.4]
  assign _T_972 = _T_967[2]; // @[Bitwise.scala 109:44:@1417.4]
  assign _T_973 = {_T_971,_T_972}; // @[Cat.scala 30:58:@1418.4]
  assign _T_974 = {_T_966,_T_973}; // @[Cat.scala 30:58:@1419.4]
  assign _T_975 = _T_974[0]; // @[encoder.scala 38:16:@1420.4]
  assign _T_976 = _T_974[3]; // @[encoder.scala 38:25:@1421.4]
  assign _T_977 = _T_975 ^ _T_976; // @[encoder.scala 38:20:@1422.4]
  assign _T_978 = _T_974[4]; // @[encoder.scala 38:34:@1423.4]
  assign _T_979 = _T_977 ^ _T_978; // @[encoder.scala 38:29:@1424.4]
  assign _T_980 = _T_974[5]; // @[encoder.scala 38:43:@1425.4]
  assign _T_981 = _T_979 ^ _T_980; // @[encoder.scala 38:38:@1426.4]
  assign _T_982 = _T_974[6]; // @[encoder.scala 38:52:@1427.4]
  assign even_16 = _T_981 ^ _T_982; // @[encoder.scala 38:47:@1428.4]
  assign _T_364 = din_reg[21:15]; // @[encoder.scala 52:37:@786.4]
  assign _T_365 = _T_364[3:0]; // @[Bitwise.scala 109:18:@787.4]
  assign _T_366 = _T_365[1:0]; // @[Bitwise.scala 109:18:@788.4]
  assign _T_367 = _T_366[0]; // @[Bitwise.scala 109:18:@789.4]
  assign _T_368 = _T_366[1]; // @[Bitwise.scala 109:44:@790.4]
  assign _T_369 = {_T_367,_T_368}; // @[Cat.scala 30:58:@791.4]
  assign _T_370 = _T_365[3:2]; // @[Bitwise.scala 109:44:@792.4]
  assign _T_371 = _T_370[0]; // @[Bitwise.scala 109:18:@793.4]
  assign _T_372 = _T_370[1]; // @[Bitwise.scala 109:44:@794.4]
  assign _T_373 = {_T_371,_T_372}; // @[Cat.scala 30:58:@795.4]
  assign _T_374 = {_T_369,_T_373}; // @[Cat.scala 30:58:@796.4]
  assign _T_375 = _T_364[6:4]; // @[Bitwise.scala 109:44:@797.4]
  assign _T_376 = _T_375[1:0]; // @[Bitwise.scala 109:18:@798.4]
  assign _T_377 = _T_376[0]; // @[Bitwise.scala 109:18:@799.4]
  assign _T_378 = _T_376[1]; // @[Bitwise.scala 109:44:@800.4]
  assign _T_379 = {_T_377,_T_378}; // @[Cat.scala 30:58:@801.4]
  assign _T_380 = _T_375[2]; // @[Bitwise.scala 109:44:@802.4]
  assign _T_381 = {_T_379,_T_380}; // @[Cat.scala 30:58:@803.4]
  assign _T_382 = {_T_374,_T_381}; // @[Cat.scala 30:58:@804.4]
  assign _T_383 = _T_382[0]; // @[encoder.scala 33:16:@805.4]
  assign _T_384 = _T_382[1]; // @[encoder.scala 33:25:@806.4]
  assign _T_385 = _T_383 ^ _T_384; // @[encoder.scala 33:20:@807.4]
  assign _T_386 = _T_382[3]; // @[encoder.scala 33:34:@808.4]
  assign _T_387 = _T_385 ^ _T_386; // @[encoder.scala 33:29:@809.4]
  assign _T_388 = _T_382[4]; // @[encoder.scala 33:43:@810.4]
  assign _T_389 = _T_387 ^ _T_388; // @[encoder.scala 33:38:@811.4]
  assign _T_390 = _T_382[6]; // @[encoder.scala 33:52:@812.4]
  assign odd_15 = _T_389 ^ _T_390; // @[encoder.scala 33:47:@813.4]
  assign _T_173 = {even_16,odd_15}; // @[encoder.scala 29:38:@585.4]
  assign _T_1005 = _T_383 ^ _T_386; // @[encoder.scala 38:20:@1451.4]
  assign _T_1007 = _T_1005 ^ _T_388; // @[encoder.scala 38:29:@1453.4]
  assign _T_1008 = _T_382[5]; // @[encoder.scala 38:43:@1454.4]
  assign _T_1009 = _T_1007 ^ _T_1008; // @[encoder.scala 38:38:@1455.4]
  assign even_15 = _T_1009 ^ _T_390; // @[encoder.scala 38:47:@1457.4]
  assign _T_174 = {_T_173,even_15}; // @[encoder.scala 29:38:@586.4]
  assign _T_308 = din_reg[23:17]; // @[encoder.scala 49:37:@728.4]
  assign _T_309 = _T_308[3:0]; // @[Bitwise.scala 109:18:@729.4]
  assign _T_310 = _T_309[1:0]; // @[Bitwise.scala 109:18:@730.4]
  assign _T_311 = _T_310[0]; // @[Bitwise.scala 109:18:@731.4]
  assign _T_312 = _T_310[1]; // @[Bitwise.scala 109:44:@732.4]
  assign _T_313 = {_T_311,_T_312}; // @[Cat.scala 30:58:@733.4]
  assign _T_314 = _T_309[3:2]; // @[Bitwise.scala 109:44:@734.4]
  assign _T_315 = _T_314[0]; // @[Bitwise.scala 109:18:@735.4]
  assign _T_316 = _T_314[1]; // @[Bitwise.scala 109:44:@736.4]
  assign _T_317 = {_T_315,_T_316}; // @[Cat.scala 30:58:@737.4]
  assign _T_318 = {_T_313,_T_317}; // @[Cat.scala 30:58:@738.4]
  assign _T_319 = _T_308[6:4]; // @[Bitwise.scala 109:44:@739.4]
  assign _T_320 = _T_319[1:0]; // @[Bitwise.scala 109:18:@740.4]
  assign _T_321 = _T_320[0]; // @[Bitwise.scala 109:18:@741.4]
  assign _T_322 = _T_320[1]; // @[Bitwise.scala 109:44:@742.4]
  assign _T_323 = {_T_321,_T_322}; // @[Cat.scala 30:58:@743.4]
  assign _T_324 = _T_319[2]; // @[Bitwise.scala 109:44:@744.4]
  assign _T_325 = {_T_323,_T_324}; // @[Cat.scala 30:58:@745.4]
  assign _T_326 = {_T_318,_T_325}; // @[Cat.scala 30:58:@746.4]
  assign _T_327 = _T_326[0]; // @[encoder.scala 33:16:@747.4]
  assign _T_328 = _T_326[1]; // @[encoder.scala 33:25:@748.4]
  assign _T_329 = _T_327 ^ _T_328; // @[encoder.scala 33:20:@749.4]
  assign _T_330 = _T_326[3]; // @[encoder.scala 33:34:@750.4]
  assign _T_331 = _T_329 ^ _T_330; // @[encoder.scala 33:29:@751.4]
  assign _T_332 = _T_326[4]; // @[encoder.scala 33:43:@752.4]
  assign _T_333 = _T_331 ^ _T_332; // @[encoder.scala 33:38:@753.4]
  assign _T_334 = _T_326[6]; // @[encoder.scala 33:52:@754.4]
  assign odd_17 = _T_333 ^ _T_334; // @[encoder.scala 33:47:@755.4]
  assign _T_949 = _T_327 ^ _T_330; // @[encoder.scala 38:20:@1393.4]
  assign _T_951 = _T_949 ^ _T_332; // @[encoder.scala 38:29:@1395.4]
  assign _T_952 = _T_326[5]; // @[encoder.scala 38:43:@1396.4]
  assign _T_953 = _T_951 ^ _T_952; // @[encoder.scala 38:38:@1397.4]
  assign even_17 = _T_953 ^ _T_334; // @[encoder.scala 38:47:@1399.4]
  assign _T_175 = {odd_17,even_17}; // @[encoder.scala 29:38:@587.4]
  assign _T_356 = _T_974[1]; // @[encoder.scala 33:25:@777.4]
  assign _T_357 = _T_975 ^ _T_356; // @[encoder.scala 33:20:@778.4]
  assign _T_359 = _T_357 ^ _T_976; // @[encoder.scala 33:29:@780.4]
  assign _T_361 = _T_359 ^ _T_978; // @[encoder.scala 33:38:@782.4]
  assign odd_16 = _T_361 ^ _T_982; // @[encoder.scala 33:47:@784.4]
  assign _T_176 = {_T_175,odd_16}; // @[encoder.scala 29:38:@588.4]
  assign _T_177 = {_T_176,_T_174}; // @[encoder.scala 29:38:@589.4]
  assign _T_178 = {_T_177,_T_172}; // @[encoder.scala 29:38:@590.4]
  assign _T_877 = din_reg[23:19]; // @[encoder.scala 77:43:@1319.4]
  assign _T_878 = _T_877[3:0]; // @[Bitwise.scala 109:18:@1320.4]
  assign _T_879 = _T_878[1:0]; // @[Bitwise.scala 109:18:@1321.4]
  assign _T_880 = _T_879[0]; // @[Bitwise.scala 109:18:@1322.4]
  assign _T_881 = _T_879[1]; // @[Bitwise.scala 109:44:@1323.4]
  assign _T_882 = {_T_880,_T_881}; // @[Cat.scala 30:58:@1324.4]
  assign _T_883 = _T_878[3:2]; // @[Bitwise.scala 109:44:@1325.4]
  assign _T_884 = _T_883[0]; // @[Bitwise.scala 109:18:@1326.4]
  assign _T_885 = _T_883[1]; // @[Bitwise.scala 109:44:@1327.4]
  assign _T_886 = {_T_884,_T_885}; // @[Cat.scala 30:58:@1328.4]
  assign _T_887 = {_T_882,_T_886}; // @[Cat.scala 30:58:@1329.4]
  assign _T_888 = _T_877[4]; // @[Bitwise.scala 109:44:@1330.4]
  assign _T_889 = {_T_887,_T_888}; // @[Cat.scala 30:58:@1331.4]
  assign _T_890 = hist_reg[5:4]; // @[encoder.scala 77:61:@1332.4]
  assign _T_891 = {_T_889,_T_890}; // @[Cat.scala 30:58:@1333.4]
  assign _T_892 = _T_891[0]; // @[encoder.scala 38:16:@1334.4]
  assign _T_893 = _T_891[3]; // @[encoder.scala 38:25:@1335.4]
  assign _T_894 = _T_892 ^ _T_893; // @[encoder.scala 38:20:@1336.4]
  assign _T_895 = _T_891[4]; // @[encoder.scala 38:34:@1337.4]
  assign _T_896 = _T_894 ^ _T_895; // @[encoder.scala 38:29:@1338.4]
  assign _T_897 = _T_891[5]; // @[encoder.scala 38:43:@1339.4]
  assign _T_898 = _T_896 ^ _T_897; // @[encoder.scala 38:38:@1340.4]
  assign _T_899 = _T_891[6]; // @[encoder.scala 38:52:@1341.4]
  assign even_19 = _T_898 ^ _T_899; // @[encoder.scala 38:47:@1342.4]
  assign _T_281 = din_reg[23:18]; // @[encoder.scala 48:41:@700.4]
  assign _T_282 = _T_281[3:0]; // @[Bitwise.scala 109:18:@701.4]
  assign _T_283 = _T_282[1:0]; // @[Bitwise.scala 109:18:@702.4]
  assign _T_284 = _T_283[0]; // @[Bitwise.scala 109:18:@703.4]
  assign _T_285 = _T_283[1]; // @[Bitwise.scala 109:44:@704.4]
  assign _T_286 = {_T_284,_T_285}; // @[Cat.scala 30:58:@705.4]
  assign _T_287 = _T_282[3:2]; // @[Bitwise.scala 109:44:@706.4]
  assign _T_288 = _T_287[0]; // @[Bitwise.scala 109:18:@707.4]
  assign _T_289 = _T_287[1]; // @[Bitwise.scala 109:44:@708.4]
  assign _T_290 = {_T_288,_T_289}; // @[Cat.scala 30:58:@709.4]
  assign _T_291 = {_T_286,_T_290}; // @[Cat.scala 30:58:@710.4]
  assign _T_292 = _T_281[5:4]; // @[Bitwise.scala 109:44:@711.4]
  assign _T_293 = _T_292[0]; // @[Bitwise.scala 109:18:@712.4]
  assign _T_294 = _T_292[1]; // @[Bitwise.scala 109:44:@713.4]
  assign _T_295 = {_T_293,_T_294}; // @[Cat.scala 30:58:@714.4]
  assign _T_296 = {_T_291,_T_295}; // @[Cat.scala 30:58:@715.4]
  assign _T_297 = hist_reg[5]; // @[encoder.scala 48:59:@716.4]
  assign _T_298 = {_T_296,_T_297}; // @[Cat.scala 30:58:@717.4]
  assign _T_299 = _T_298[0]; // @[encoder.scala 33:16:@718.4]
  assign _T_300 = _T_298[1]; // @[encoder.scala 33:25:@719.4]
  assign _T_301 = _T_299 ^ _T_300; // @[encoder.scala 33:20:@720.4]
  assign _T_302 = _T_298[3]; // @[encoder.scala 33:34:@721.4]
  assign _T_303 = _T_301 ^ _T_302; // @[encoder.scala 33:29:@722.4]
  assign _T_304 = _T_298[4]; // @[encoder.scala 33:43:@723.4]
  assign _T_305 = _T_303 ^ _T_304; // @[encoder.scala 33:38:@724.4]
  assign _T_306 = _T_298[6]; // @[encoder.scala 33:52:@725.4]
  assign odd_18 = _T_305 ^ _T_306; // @[encoder.scala 33:47:@726.4]
  assign _T_179 = {even_19,odd_18}; // @[encoder.scala 29:38:@591.4]
  assign _T_921 = _T_299 ^ _T_302; // @[encoder.scala 38:20:@1364.4]
  assign _T_923 = _T_921 ^ _T_304; // @[encoder.scala 38:29:@1366.4]
  assign _T_924 = _T_298[5]; // @[encoder.scala 38:43:@1367.4]
  assign _T_925 = _T_923 ^ _T_924; // @[encoder.scala 38:38:@1368.4]
  assign even_18 = _T_925 ^ _T_306; // @[encoder.scala 38:47:@1370.4]
  assign _T_180 = {_T_179,even_18}; // @[encoder.scala 29:38:@592.4]
  assign _T_236 = din_reg[23:20]; // @[encoder.scala 45:41:@653.4]
  assign _T_237 = _T_236[1:0]; // @[Bitwise.scala 109:18:@654.4]
  assign _T_238 = _T_237[0]; // @[Bitwise.scala 109:18:@655.4]
  assign _T_239 = _T_237[1]; // @[Bitwise.scala 109:44:@656.4]
  assign _T_240 = {_T_238,_T_239}; // @[Cat.scala 30:58:@657.4]
  assign _T_241 = _T_236[3:2]; // @[Bitwise.scala 109:44:@658.4]
  assign _T_242 = _T_241[0]; // @[Bitwise.scala 109:18:@659.4]
  assign _T_243 = _T_241[1]; // @[Bitwise.scala 109:44:@660.4]
  assign _T_244 = {_T_242,_T_243}; // @[Cat.scala 30:58:@661.4]
  assign _T_245 = {_T_240,_T_244}; // @[Cat.scala 30:58:@662.4]
  assign _T_246 = hist_reg[5:3]; // @[encoder.scala 45:59:@663.4]
  assign _T_247 = {_T_245,_T_246}; // @[Cat.scala 30:58:@664.4]
  assign _T_248 = _T_247[0]; // @[encoder.scala 33:16:@665.4]
  assign _T_249 = _T_247[1]; // @[encoder.scala 33:25:@666.4]
  assign _T_250 = _T_248 ^ _T_249; // @[encoder.scala 33:20:@667.4]
  assign _T_251 = _T_247[3]; // @[encoder.scala 33:34:@668.4]
  assign _T_252 = _T_250 ^ _T_251; // @[encoder.scala 33:29:@669.4]
  assign _T_253 = _T_247[4]; // @[encoder.scala 33:43:@670.4]
  assign _T_254 = _T_252 ^ _T_253; // @[encoder.scala 33:38:@671.4]
  assign _T_255 = _T_247[6]; // @[encoder.scala 33:52:@672.4]
  assign odd_20 = _T_254 ^ _T_255; // @[encoder.scala 33:47:@673.4]
  assign _T_870 = _T_248 ^ _T_251; // @[encoder.scala 38:20:@1311.4]
  assign _T_872 = _T_870 ^ _T_253; // @[encoder.scala 38:29:@1313.4]
  assign _T_873 = _T_247[5]; // @[encoder.scala 38:43:@1314.4]
  assign _T_874 = _T_872 ^ _T_873; // @[encoder.scala 38:38:@1315.4]
  assign even_20 = _T_874 ^ _T_255; // @[encoder.scala 38:47:@1317.4]
  assign _T_181 = {odd_20,even_20}; // @[encoder.scala 29:38:@593.4]
  assign _T_273 = _T_891[1]; // @[encoder.scala 33:25:@691.4]
  assign _T_274 = _T_892 ^ _T_273; // @[encoder.scala 33:20:@692.4]
  assign _T_276 = _T_274 ^ _T_893; // @[encoder.scala 33:29:@694.4]
  assign _T_278 = _T_276 ^ _T_895; // @[encoder.scala 33:38:@696.4]
  assign odd_19 = _T_278 ^ _T_899; // @[encoder.scala 33:47:@698.4]
  assign _T_182 = {_T_181,odd_19}; // @[encoder.scala 29:38:@594.4]
  assign _T_183 = {_T_182,_T_180}; // @[encoder.scala 29:38:@595.4]
  assign _T_823 = din_reg[23:22]; // @[encoder.scala 73:43:@1262.4]
  assign _T_824 = _T_823[0]; // @[Bitwise.scala 109:18:@1263.4]
  assign _T_825 = _T_823[1]; // @[Bitwise.scala 109:44:@1264.4]
  assign _T_826 = {_T_824,_T_825}; // @[Cat.scala 30:58:@1265.4]
  assign _T_827 = hist_reg[5:1]; // @[encoder.scala 73:61:@1266.4]
  assign _T_828 = {_T_826,_T_827}; // @[Cat.scala 30:58:@1267.4]
  assign _T_829 = _T_828[0]; // @[encoder.scala 38:16:@1268.4]
  assign _T_830 = _T_828[3]; // @[encoder.scala 38:25:@1269.4]
  assign _T_831 = _T_829 ^ _T_830; // @[encoder.scala 38:20:@1270.4]
  assign _T_832 = _T_828[4]; // @[encoder.scala 38:34:@1271.4]
  assign _T_833 = _T_831 ^ _T_832; // @[encoder.scala 38:29:@1272.4]
  assign _T_834 = _T_828[5]; // @[encoder.scala 38:43:@1273.4]
  assign _T_835 = _T_833 ^ _T_834; // @[encoder.scala 38:38:@1274.4]
  assign _T_836 = _T_828[6]; // @[encoder.scala 38:52:@1275.4]
  assign even_22 = _T_835 ^ _T_836; // @[encoder.scala 38:47:@1276.4]
  assign _T_218 = din_reg[23:21]; // @[encoder.scala 44:41:@634.4]
  assign _T_219 = _T_218[1:0]; // @[Bitwise.scala 109:18:@635.4]
  assign _T_220 = _T_219[0]; // @[Bitwise.scala 109:18:@636.4]
  assign _T_221 = _T_219[1]; // @[Bitwise.scala 109:44:@637.4]
  assign _T_222 = {_T_220,_T_221}; // @[Cat.scala 30:58:@638.4]
  assign _T_223 = _T_218[2]; // @[Bitwise.scala 109:44:@639.4]
  assign _T_224 = {_T_222,_T_223}; // @[Cat.scala 30:58:@640.4]
  assign _T_225 = hist_reg[5:2]; // @[encoder.scala 44:59:@641.4]
  assign _T_226 = {_T_224,_T_225}; // @[Cat.scala 30:58:@642.4]
  assign _T_227 = _T_226[0]; // @[encoder.scala 33:16:@643.4]
  assign _T_228 = _T_226[1]; // @[encoder.scala 33:25:@644.4]
  assign _T_229 = _T_227 ^ _T_228; // @[encoder.scala 33:20:@645.4]
  assign _T_230 = _T_226[3]; // @[encoder.scala 33:34:@646.4]
  assign _T_231 = _T_229 ^ _T_230; // @[encoder.scala 33:29:@647.4]
  assign _T_232 = _T_226[4]; // @[encoder.scala 33:43:@648.4]
  assign _T_233 = _T_231 ^ _T_232; // @[encoder.scala 33:38:@649.4]
  assign _T_234 = _T_226[6]; // @[encoder.scala 33:52:@650.4]
  assign odd_21 = _T_233 ^ _T_234; // @[encoder.scala 33:47:@651.4]
  assign _T_184 = {even_22,odd_21}; // @[encoder.scala 29:38:@596.4]
  assign _T_849 = _T_227 ^ _T_230; // @[encoder.scala 38:20:@1289.4]
  assign _T_851 = _T_849 ^ _T_232; // @[encoder.scala 38:29:@1291.4]
  assign _T_852 = _T_226[5]; // @[encoder.scala 38:43:@1292.4]
  assign _T_853 = _T_851 ^ _T_852; // @[encoder.scala 38:38:@1293.4]
  assign even_21 = _T_853 ^ _T_234; // @[encoder.scala 38:47:@1295.4]
  assign _T_185 = {_T_184,even_21}; // @[encoder.scala 29:38:@597.4]
  assign _T_192 = din_reg[23]; // @[encoder.scala 42:33:@606.4]
  assign _T_193 = {_T_192,hist_reg}; // @[Cat.scala 30:58:@607.4]
  assign _T_194 = _T_193[0]; // @[encoder.scala 33:16:@608.4]
  assign _T_195 = _T_193[1]; // @[encoder.scala 33:25:@609.4]
  assign _T_196 = _T_194 ^ _T_195; // @[encoder.scala 33:20:@610.4]
  assign _T_197 = _T_193[3]; // @[encoder.scala 33:34:@611.4]
  assign _T_198 = _T_196 ^ _T_197; // @[encoder.scala 33:29:@612.4]
  assign _T_199 = _T_193[4]; // @[encoder.scala 33:43:@613.4]
  assign _T_200 = _T_198 ^ _T_199; // @[encoder.scala 33:38:@614.4]
  assign _T_201 = _T_193[6]; // @[encoder.scala 33:52:@615.4]
  assign odd_23 = _T_200 ^ _T_201; // @[encoder.scala 33:47:@616.4]
  assign _T_816 = _T_194 ^ _T_197; // @[encoder.scala 38:20:@1254.4]
  assign _T_818 = _T_816 ^ _T_199; // @[encoder.scala 38:29:@1256.4]
  assign _T_819 = _T_193[5]; // @[encoder.scala 38:43:@1257.4]
  assign _T_820 = _T_818 ^ _T_819; // @[encoder.scala 38:38:@1258.4]
  assign even_23 = _T_820 ^ _T_201; // @[encoder.scala 38:47:@1260.4]
  assign _T_186 = {odd_23,even_23}; // @[encoder.scala 29:38:@598.4]
  assign _T_210 = _T_828[1]; // @[encoder.scala 33:25:@625.4]
  assign _T_211 = _T_829 ^ _T_210; // @[encoder.scala 33:20:@626.4]
  assign _T_213 = _T_211 ^ _T_830; // @[encoder.scala 33:29:@628.4]
  assign _T_215 = _T_213 ^ _T_832; // @[encoder.scala 33:38:@630.4]
  assign odd_22 = _T_215 ^ _T_836; // @[encoder.scala 33:47:@632.4]
  assign _T_187 = {_T_186,odd_22}; // @[encoder.scala 29:38:@599.4]
  assign _T_188 = {_T_187,_T_185}; // @[encoder.scala 29:38:@600.4]
  assign _T_189 = {_T_188,_T_183}; // @[encoder.scala 29:38:@601.4]
  assign _T_190 = {_T_189,_T_178}; // @[encoder.scala 29:38:@602.4]
  assign _T_191 = {_T_190,_T_167}; // @[encoder.scala 29:38:@603.4]
  assign io_dout_valid = val_reg;
  assign io_dout_bits = _T_191;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  din_reg = _RAND_0[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  val_reg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  hist_reg = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      din_reg <= 24'h0;
    end else begin
      if (io_din_valid) begin
        din_reg <= io_din_bits;
      end
    end
    val_reg <= io_din_valid;
    if (reset) begin
      hist_reg <= 6'h0;
    end else begin
      if (io_init) begin
        hist_reg <= 6'h0;
      end else begin
        if (val_reg) begin
          hist_reg <= _T_33;
        end
      end
    end
  end
endmodule
module Interleaver( // @[:@1943.2]
  input         clock, // @[:@1944.4]
  input         reset, // @[:@1945.4]
  input         io_start, // @[:@1946.4]
  input  [1:0]  io_mode, // @[:@1946.4]
  input         io_din_valid, // @[:@1946.4]
  input  [47:0] io_din_bits, // @[:@1946.4]
  output [1:0]  io_dout_tag, // @[:@1946.4]
  output [5:0]  io_dout_cnt, // @[:@1946.4]
  input         io_dout_ready, // @[:@1946.4]
  output        io_dout_valid, // @[:@1946.4]
  output [3:0]  io_dout_bits // @[:@1946.4]
);
  reg [1:0] mode; // @[Reg.scala 11:16:@1948.4]
  reg [31:0] _RAND_0;
  reg [3:0] dout_reg_0; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_1;
  reg [3:0] dout_reg_1; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_2;
  reg [3:0] dout_reg_2; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_3;
  reg [3:0] dout_reg_3; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_4;
  reg [3:0] dout_reg_4; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_5;
  reg [3:0] dout_reg_5; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_6;
  reg [3:0] dout_reg_6; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_7;
  reg [3:0] dout_reg_7; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_8;
  reg [3:0] dout_reg_8; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_9;
  reg [3:0] dout_reg_9; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_10;
  reg [3:0] dout_reg_10; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_11;
  reg [3:0] dout_reg_11; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_12;
  reg [3:0] dout_reg_12; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_13;
  reg [3:0] dout_reg_13; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_14;
  reg [3:0] dout_reg_14; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_15;
  reg [3:0] dout_reg_15; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_16;
  reg [3:0] dout_reg_16; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_17;
  reg [3:0] dout_reg_17; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_18;
  reg [3:0] dout_reg_18; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_19;
  reg [3:0] dout_reg_19; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_20;
  reg [3:0] dout_reg_20; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_21;
  reg [3:0] dout_reg_21; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_22;
  reg [3:0] dout_reg_22; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_23;
  reg [3:0] dout_reg_23; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_24;
  reg [3:0] dout_reg_24; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_25;
  reg [3:0] dout_reg_25; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_26;
  reg [3:0] dout_reg_26; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_27;
  reg [3:0] dout_reg_27; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_28;
  reg [3:0] dout_reg_28; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_29;
  reg [3:0] dout_reg_29; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_30;
  reg [3:0] dout_reg_30; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_31;
  reg [3:0] dout_reg_31; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_32;
  reg [3:0] dout_reg_32; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_33;
  reg [3:0] dout_reg_33; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_34;
  reg [3:0] dout_reg_34; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_35;
  reg [3:0] dout_reg_35; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_36;
  reg [3:0] dout_reg_36; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_37;
  reg [3:0] dout_reg_37; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_38;
  reg [3:0] dout_reg_38; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_39;
  reg [3:0] dout_reg_39; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_40;
  reg [3:0] dout_reg_40; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_41;
  reg [3:0] dout_reg_41; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_42;
  reg [3:0] dout_reg_42; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_43;
  reg [3:0] dout_reg_43; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_44;
  reg [3:0] dout_reg_44; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_45;
  reg [3:0] dout_reg_45; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_46;
  reg [3:0] dout_reg_46; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_47;
  reg [3:0] dout_reg_47; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_48;
  reg [3:0] dout_reg_48; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_49;
  reg [3:0] dout_reg_49; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_50;
  reg [3:0] dout_reg_50; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_51;
  reg [3:0] dout_reg_51; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_52;
  reg [3:0] dout_reg_52; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_53;
  reg [3:0] dout_reg_53; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_54;
  reg [3:0] dout_reg_54; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_55;
  reg [3:0] dout_reg_55; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_56;
  reg [3:0] dout_reg_56; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_57;
  reg [3:0] dout_reg_57; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_58;
  reg [3:0] dout_reg_58; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_59;
  reg [3:0] dout_reg_59; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_60;
  reg [3:0] dout_reg_60; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_61;
  reg [3:0] dout_reg_61; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_62;
  reg [3:0] dout_reg_62; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_63;
  reg [3:0] dout_reg_63; // @[interleaver.scala 34:23:@1957.4]
  reg [31:0] _RAND_64;
  reg [1:0] dtag_reg_0; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_65;
  reg [1:0] dtag_reg_1; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_66;
  reg [1:0] dtag_reg_2; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_67;
  reg [1:0] dtag_reg_3; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_68;
  reg [1:0] dtag_reg_4; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_69;
  reg [1:0] dtag_reg_5; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_70;
  reg [1:0] dtag_reg_6; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_71;
  reg [1:0] dtag_reg_7; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_72;
  reg [1:0] dtag_reg_8; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_73;
  reg [1:0] dtag_reg_9; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_74;
  reg [1:0] dtag_reg_10; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_75;
  reg [1:0] dtag_reg_11; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_76;
  reg [1:0] dtag_reg_12; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_77;
  reg [1:0] dtag_reg_13; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_78;
  reg [1:0] dtag_reg_14; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_79;
  reg [1:0] dtag_reg_15; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_80;
  reg [1:0] dtag_reg_16; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_81;
  reg [1:0] dtag_reg_17; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_82;
  reg [1:0] dtag_reg_18; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_83;
  reg [1:0] dtag_reg_19; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_84;
  reg [1:0] dtag_reg_20; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_85;
  reg [1:0] dtag_reg_21; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_86;
  reg [1:0] dtag_reg_22; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_87;
  reg [1:0] dtag_reg_23; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_88;
  reg [1:0] dtag_reg_24; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_89;
  reg [1:0] dtag_reg_25; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_90;
  reg [1:0] dtag_reg_26; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_91;
  reg [1:0] dtag_reg_27; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_92;
  reg [1:0] dtag_reg_28; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_93;
  reg [1:0] dtag_reg_29; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_94;
  reg [1:0] dtag_reg_30; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_95;
  reg [1:0] dtag_reg_31; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_96;
  reg [1:0] dtag_reg_32; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_97;
  reg [1:0] dtag_reg_33; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_98;
  reg [1:0] dtag_reg_34; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_99;
  reg [1:0] dtag_reg_35; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_100;
  reg [1:0] dtag_reg_36; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_101;
  reg [1:0] dtag_reg_37; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_102;
  reg [1:0] dtag_reg_38; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_103;
  reg [1:0] dtag_reg_39; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_104;
  reg [1:0] dtag_reg_40; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_105;
  reg [1:0] dtag_reg_41; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_106;
  reg [1:0] dtag_reg_42; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_107;
  reg [1:0] dtag_reg_43; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_108;
  reg [1:0] dtag_reg_44; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_109;
  reg [1:0] dtag_reg_45; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_110;
  reg [1:0] dtag_reg_46; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_111;
  reg [1:0] dtag_reg_47; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_112;
  reg [1:0] dtag_reg_48; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_113;
  reg [1:0] dtag_reg_49; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_114;
  reg [1:0] dtag_reg_50; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_115;
  reg [1:0] dtag_reg_51; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_116;
  reg [1:0] dtag_reg_52; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_117;
  reg [1:0] dtag_reg_53; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_118;
  reg [1:0] dtag_reg_54; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_119;
  reg [1:0] dtag_reg_55; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_120;
  reg [1:0] dtag_reg_56; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_121;
  reg [1:0] dtag_reg_57; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_122;
  reg [1:0] dtag_reg_58; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_123;
  reg [1:0] dtag_reg_59; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_124;
  reg [1:0] dtag_reg_60; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_125;
  reg [1:0] dtag_reg_61; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_126;
  reg [1:0] dtag_reg_62; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_127;
  reg [1:0] dtag_reg_63; // @[interleaver.scala 35:23:@1958.4]
  reg [31:0] _RAND_128;
  reg [47:0] din_regs_0; // @[interleaver.scala 36:23:@1959.4]
  reg [63:0] _RAND_129;
  reg [47:0] din_regs_1; // @[interleaver.scala 36:23:@1959.4]
  reg [63:0] _RAND_130;
  reg [47:0] din_regs_2; // @[interleaver.scala 36:23:@1959.4]
  reg [63:0] _RAND_131;
  reg [47:0] din_regs_3; // @[interleaver.scala 36:23:@1959.4]
  reg [63:0] _RAND_132;
  reg [1:0] state; // @[interleaver.scala 62:22:@2035.4]
  reg [31:0] _RAND_133;
  reg [5:0] value; // @[Counter.scala 26:33:@2038.4]
  reg [31:0] _RAND_134;
  wire [1:0] _GEN_0; // @[Reg.scala 12:19:@1949.4]
  wire [47:0] _GEN_1; // @[interleaver.scala 38:23:@1960.4]
  wire [47:0] _GEN_2; // @[interleaver.scala 38:23:@1960.4]
  wire [47:0] _GEN_3; // @[interleaver.scala 38:23:@1960.4]
  wire [47:0] _GEN_4; // @[interleaver.scala 38:23:@1960.4]
  wire [95:0] _T_639; // @[Cat.scala 30:58:@1966.4]
  wire [95:0] _T_640; // @[Cat.scala 30:58:@1967.4]
  wire [191:0] din_reg; // @[Cat.scala 30:58:@1968.4]
  wire [1:0] _GEN_5; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_6; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_7; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_8; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_9; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_10; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_11; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_12; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_13; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_14; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_15; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_16; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_17; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_18; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_19; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_20; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_21; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_22; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_23; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_24; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_25; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_26; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_27; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_28; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_29; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_30; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_31; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_32; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_33; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_34; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_35; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_36; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_37; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_38; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_39; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_40; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_41; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_42; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_43; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_44; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_45; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_46; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_47; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_48; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_49; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_50; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_51; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_52; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_53; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_54; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_55; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_56; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_57; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_58; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_59; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_60; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_61; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_62; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_63; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_64; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_65; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_66; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_67; // @[interleaver.scala 46:19:@1969.4]
  wire [1:0] _GEN_68; // @[interleaver.scala 46:19:@1969.4]
  wire  _T_706; // @[interleaver.scala 64:38:@2036.4]
  wire  _T_707; // @[interleaver.scala 64:56:@2037.4]
  wire  _T_711; // @[Counter.scala 34:24:@2040.6]
  wire [6:0] _T_713; // @[Counter.scala 35:22:@2041.6]
  wire [5:0] _T_714; // @[Counter.scala 35:22:@2042.6]
  wire [5:0] _GEN_69; // @[Counter.scala 63:17:@2039.4]
  wire  dlast; // @[Counter.scala 64:20:@2045.4]
  wire  _T_716; // @[Conditional.scala 37:30:@2052.4]
  wire [1:0] _GEN_70; // @[interleaver.scala 77:27:@2054.6]
  wire  _T_717; // @[Conditional.scala 37:30:@2059.6]
  wire  _T_718; // @[Conditional.scala 37:30:@2128.8]
  wire [1:0] _T_719; // @[interleaver.scala 97:23:@2260.14]
  wire [1:0] _GEN_71; // @[interleaver.scala 96:22:@2259.12]
  wire [3:0] _GEN_72; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_73; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_74; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_75; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_76; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_77; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_78; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_79; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_80; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_81; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_82; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_83; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_84; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_85; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_86; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_87; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_88; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_89; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_90; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_91; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_92; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_93; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_94; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_95; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_96; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_97; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_98; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_99; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_100; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_101; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_102; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_103; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_104; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_105; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_106; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_107; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_108; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_109; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_110; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_111; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_112; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_113; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_114; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_115; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_116; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_117; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_118; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_119; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_120; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_121; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_122; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_123; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_124; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_125; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_126; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_127; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_128; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_129; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_130; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_131; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_132; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_133; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_134; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_135; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_136; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_137; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_138; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_139; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_140; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_141; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_142; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_143; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_144; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_145; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_146; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_147; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_148; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_149; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_150; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_151; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_152; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_153; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_154; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_155; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_156; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_157; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_158; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_159; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_160; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_161; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_162; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_163; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_164; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_165; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_166; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_167; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_168; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_169; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_170; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_171; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_172; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_173; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_174; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_175; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_176; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_177; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_178; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_179; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_180; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_181; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_182; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_183; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_184; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_185; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_186; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_187; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_188; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_189; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_190; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_191; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_192; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_193; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_194; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_195; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_196; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_197; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_198; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_199; // @[interleaver.scala 89:28:@2130.10]
  wire [1:0] _GEN_200; // @[interleaver.scala 89:28:@2130.10]
  wire [3:0] _GEN_201; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_202; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_203; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_204; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_205; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_206; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_207; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_208; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_209; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_210; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_211; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_212; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_213; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_214; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_215; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_216; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_217; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_218; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_219; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_220; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_221; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_222; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_223; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_224; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_225; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_226; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_227; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_228; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_229; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_230; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_231; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_232; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_233; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_234; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_235; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_236; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_237; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_238; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_239; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_240; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_241; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_242; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_243; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_244; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_245; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_246; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_247; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_248; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_249; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_250; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_251; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_252; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_253; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_254; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_255; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_256; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_257; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_258; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_259; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_260; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_261; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_262; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_263; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_264; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_265; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_266; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_267; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_268; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_269; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_270; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_271; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_272; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_273; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_274; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_275; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_276; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_277; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_278; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_279; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_280; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_281; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_282; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_283; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_284; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_285; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_286; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_287; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_288; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_289; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_290; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_291; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_292; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_293; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_294; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_295; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_296; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_297; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_298; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_299; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_300; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_301; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_302; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_303; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_304; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_305; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_306; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_307; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_308; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_309; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_310; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_311; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_312; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_313; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_314; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_315; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_316; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_317; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_318; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_319; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_320; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_321; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_322; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_323; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_324; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_325; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_326; // @[Conditional.scala 39:67:@2129.8]
  wire [3:0] _GEN_327; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_328; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_329; // @[Conditional.scala 39:67:@2129.8]
  wire [1:0] _GEN_330; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_331; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_332; // @[Conditional.scala 39:67:@2060.6]
  wire  _T_1057; // @[interleaver.scala 121:14:@2937.4]
  wire  dout_bpsk_38; // @[interleaver.scala 106:30:@2353.4]
  wire [3:0] _T_1135; // @[Cat.scala 30:58:@3015.6]
  wire  _T_1155; // @[interleaver.scala 125:21:@3037.6]
  wire  dout_qpsk_86; // @[interleaver.scala 112:30:@2453.4]
  wire [2:0] _T_1271; // @[Cat.scala 30:58:@3153.8]
  wire  dout_qpsk_38; // @[interleaver.scala 112:30:@2437.4]
  wire [3:0] _T_1272; // @[Cat.scala 30:58:@3154.8]
  wire  dout_qam16_182; // @[interleaver.scala 118:31:@2679.4]
  wire  dout_qam16_134; // @[interleaver.scala 118:31:@2671.4]
  wire [1:0] _T_1415; // @[Cat.scala 30:58:@3338.8]
  wire  dout_qam16_86; // @[interleaver.scala 118:31:@2663.4]
  wire  dout_qam16_38; // @[interleaver.scala 118:31:@2655.4]
  wire [1:0] _T_1414; // @[Cat.scala 30:58:@3337.8]
  wire [3:0] _T_1416; // @[Cat.scala 30:58:@3339.8]
  wire [3:0] _GEN_626; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_38; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_333; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_9; // @[interleaver.scala 106:30:@2271.4]
  wire [3:0] _T_1077; // @[Cat.scala 30:58:@2957.6]
  wire  dout_qpsk_57; // @[interleaver.scala 112:30:@2475.4]
  wire [2:0] _T_1184; // @[Cat.scala 30:58:@3066.8]
  wire  dout_qpsk_9; // @[interleaver.scala 112:30:@2459.4]
  wire [3:0] _T_1185; // @[Cat.scala 30:58:@3067.8]
  wire  dout_qam16_153; // @[interleaver.scala 118:31:@2865.4]
  wire  dout_qam16_105; // @[interleaver.scala 118:31:@2857.4]
  wire [1:0] _T_1328; // @[Cat.scala 30:58:@3222.8]
  wire  dout_qam16_57; // @[interleaver.scala 118:31:@2849.4]
  wire  dout_qam16_9; // @[interleaver.scala 118:31:@2841.4]
  wire [1:0] _T_1327; // @[Cat.scala 30:58:@3221.8]
  wire [3:0] _T_1329; // @[Cat.scala 30:58:@3223.8]
  wire [3:0] _GEN_597; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_9; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_334; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_30; // @[interleaver.scala 106:30:@2285.4]
  wire [3:0] _T_1119; // @[Cat.scala 30:58:@2999.6]
  wire  dout_qpsk_78; // @[interleaver.scala 112:30:@2387.4]
  wire [2:0] _T_1247; // @[Cat.scala 30:58:@3129.8]
  wire  dout_qpsk_30; // @[interleaver.scala 112:30:@2371.4]
  wire [3:0] _T_1248; // @[Cat.scala 30:58:@3130.8]
  wire  dout_qam16_174; // @[interleaver.scala 118:31:@2773.4]
  wire  dout_qam16_126; // @[interleaver.scala 118:31:@2765.4]
  wire [1:0] _T_1391; // @[Cat.scala 30:58:@3306.8]
  wire  dout_qam16_78; // @[interleaver.scala 118:31:@2757.4]
  wire  dout_qam16_30; // @[interleaver.scala 118:31:@2749.4]
  wire [1:0] _T_1390; // @[Cat.scala 30:58:@3305.8]
  wire [3:0] _T_1392; // @[Cat.scala 30:58:@3307.8]
  wire [3:0] _GEN_618; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_30; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_335; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_2; // @[interleaver.scala 106:30:@2329.4]
  wire [3:0] _T_1063; // @[Cat.scala 30:58:@2943.6]
  wire  dout_qpsk_50; // @[interleaver.scala 112:30:@2441.4]
  wire [2:0] _T_1163; // @[Cat.scala 30:58:@3045.8]
  wire [3:0] _T_1164; // @[Cat.scala 30:58:@3046.8]
  wire [1:0] _T_1307; // @[Cat.scala 30:58:@3194.8]
  wire  dout_qam16_50; // @[interleaver.scala 118:31:@2625.4]
  wire [1:0] _T_1306; // @[Cat.scala 30:58:@3193.8]
  wire [3:0] _T_1308; // @[Cat.scala 30:58:@3195.8]
  wire [3:0] _GEN_590; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_2; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_336; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_45; // @[interleaver.scala 106:30:@2295.4]
  wire [3:0] _T_1149; // @[Cat.scala 30:58:@3029.6]
  wire [2:0] _T_1292; // @[Cat.scala 30:58:@3174.8]
  wire [3:0] _T_1293; // @[Cat.scala 30:58:@3175.8]
  wire  dout_qam16_189; // @[interleaver.scala 118:31:@2839.4]
  wire  dout_qam16_141; // @[interleaver.scala 118:31:@2831.4]
  wire [1:0] _T_1436; // @[Cat.scala 30:58:@3366.8]
  wire  dout_qam16_93; // @[interleaver.scala 118:31:@2823.4]
  wire  dout_qam16_45; // @[interleaver.scala 118:31:@2815.4]
  wire [1:0] _T_1435; // @[Cat.scala 30:58:@3365.8]
  wire [3:0] _T_1437; // @[Cat.scala 30:58:@3367.8]
  wire [3:0] _GEN_633; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_45; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_337; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_17; // @[interleaver.scala 106:30:@2339.4]
  wire [3:0] _T_1093; // @[Cat.scala 30:58:@2973.6]
  wire  dout_qpsk_65; // @[interleaver.scala 112:30:@2541.4]
  wire [2:0] _T_1208; // @[Cat.scala 30:58:@3090.8]
  wire  dout_qpsk_17; // @[interleaver.scala 112:30:@2525.4]
  wire [3:0] _T_1209; // @[Cat.scala 30:58:@3091.8]
  wire  dout_qam16_161; // @[interleaver.scala 118:31:@2707.4]
  wire  dout_qam16_113; // @[interleaver.scala 118:31:@2699.4]
  wire [1:0] _T_1352; // @[Cat.scala 30:58:@3254.8]
  wire  dout_qam16_65; // @[interleaver.scala 118:31:@2691.4]
  wire  dout_qam16_17; // @[interleaver.scala 118:31:@2683.4]
  wire [1:0] _T_1351; // @[Cat.scala 30:58:@3253.8]
  wire [3:0] _T_1353; // @[Cat.scala 30:58:@3255.8]
  wire [3:0] _GEN_605; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_17; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_338; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_27; // @[interleaver.scala 106:30:@2283.4]
  wire [3:0] _T_1113; // @[Cat.scala 30:58:@2993.6]
  wire  dout_qpsk_75; // @[interleaver.scala 112:30:@2481.4]
  wire [2:0] _T_1238; // @[Cat.scala 30:58:@3120.8]
  wire  dout_qpsk_27; // @[interleaver.scala 112:30:@2465.4]
  wire [3:0] _T_1239; // @[Cat.scala 30:58:@3121.8]
  wire  dout_qam16_171; // @[interleaver.scala 118:31:@2677.4]
  wire  dout_qam16_123; // @[interleaver.scala 118:31:@2669.4]
  wire [1:0] _T_1382; // @[Cat.scala 30:58:@3294.8]
  wire  dout_qam16_75; // @[interleaver.scala 118:31:@2661.4]
  wire  dout_qam16_27; // @[interleaver.scala 118:31:@2653.4]
  wire [1:0] _T_1381; // @[Cat.scala 30:58:@3293.8]
  wire [3:0] _T_1383; // @[Cat.scala 30:58:@3295.8]
  wire [3:0] _GEN_615; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_27; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_339; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_340; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_42; // @[interleaver.scala 106:30:@2293.4]
  wire [3:0] _T_1143; // @[Cat.scala 30:58:@3023.6]
  wire [2:0] _T_1283; // @[Cat.scala 30:58:@3165.8]
  wire  dout_qpsk_42; // @[interleaver.scala 112:30:@2375.4]
  wire [3:0] _T_1284; // @[Cat.scala 30:58:@3166.8]
  wire  dout_qam16_186; // @[interleaver.scala 118:31:@2807.4]
  wire  dout_qam16_138; // @[interleaver.scala 118:31:@2799.4]
  wire [1:0] _T_1427; // @[Cat.scala 30:58:@3354.8]
  wire  dout_qam16_90; // @[interleaver.scala 118:31:@2791.4]
  wire  dout_qam16_42; // @[interleaver.scala 118:31:@2783.4]
  wire [1:0] _T_1426; // @[Cat.scala 30:58:@3353.8]
  wire [3:0] _T_1428; // @[Cat.scala 30:58:@3355.8]
  wire [3:0] _GEN_630; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_42; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_341; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_13; // @[interleaver.scala 106:30:@2305.4]
  wire [3:0] _T_1085; // @[Cat.scala 30:58:@2965.6]
  wire  dout_qpsk_61; // @[interleaver.scala 112:30:@2413.4]
  wire [2:0] _T_1196; // @[Cat.scala 30:58:@3078.8]
  wire  dout_qpsk_13; // @[interleaver.scala 112:30:@2397.4]
  wire [3:0] _T_1197; // @[Cat.scala 30:58:@3079.8]
  wire [1:0] _T_1340; // @[Cat.scala 30:58:@3238.8]
  wire  dout_qam16_13; // @[interleaver.scala 118:31:@2555.4]
  wire [1:0] _T_1339; // @[Cat.scala 30:58:@3237.8]
  wire [3:0] _T_1341; // @[Cat.scala 30:58:@3239.8]
  wire [3:0] _GEN_601; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_13; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_342; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_34; // @[interleaver.scala 106:30:@2319.4]
  wire [3:0] _T_1127; // @[Cat.scala 30:58:@3007.6]
  wire [2:0] _T_1259; // @[Cat.scala 30:58:@3141.8]
  wire [3:0] _T_1260; // @[Cat.scala 30:58:@3142.8]
  wire  dout_qam16_178; // @[interleaver.scala 118:31:@2901.4]
  wire  dout_qam16_130; // @[interleaver.scala 118:31:@2893.4]
  wire [1:0] _T_1403; // @[Cat.scala 30:58:@3322.8]
  wire  dout_qam16_82; // @[interleaver.scala 118:31:@2885.4]
  wire  dout_qam16_34; // @[interleaver.scala 118:31:@2877.4]
  wire [1:0] _T_1402; // @[Cat.scala 30:58:@3321.8]
  wire [3:0] _T_1404; // @[Cat.scala 30:58:@3323.8]
  wire [3:0] _GEN_622; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_34; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_343; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_5; // @[interleaver.scala 106:30:@2331.4]
  wire [3:0] _T_1069; // @[Cat.scala 30:58:@2949.6]
  wire  dout_qpsk_53; // @[interleaver.scala 112:30:@2537.4]
  wire [2:0] _T_1172; // @[Cat.scala 30:58:@3054.8]
  wire  dout_qpsk_5; // @[interleaver.scala 112:30:@2521.4]
  wire [3:0] _T_1173; // @[Cat.scala 30:58:@3055.8]
  wire  dout_qam16_149; // @[interleaver.scala 118:31:@2737.4]
  wire [1:0] _T_1316; // @[Cat.scala 30:58:@3206.8]
  wire  dout_qam16_53; // @[interleaver.scala 118:31:@2721.4]
  wire [1:0] _T_1315; // @[Cat.scala 30:58:@3205.8]
  wire [3:0] _T_1317; // @[Cat.scala 30:58:@3207.8]
  wire [3:0] _GEN_593; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_5; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_344; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_345; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1099; // @[Cat.scala 30:58:@2979.6]
  wire  dout_qpsk_68; // @[interleaver.scala 112:30:@2447.4]
  wire [2:0] _T_1217; // @[Cat.scala 30:58:@3099.8]
  wire  dout_qpsk_20; // @[interleaver.scala 112:30:@2431.4]
  wire [3:0] _T_1218; // @[Cat.scala 30:58:@3100.8]
  wire  dout_qam16_164; // @[interleaver.scala 118:31:@2867.4]
  wire  dout_qam16_116; // @[interleaver.scala 118:31:@2859.4]
  wire [1:0] _T_1361; // @[Cat.scala 30:58:@3266.8]
  wire  dout_qam16_68; // @[interleaver.scala 118:31:@2851.4]
  wire  dout_qam16_20; // @[interleaver.scala 118:31:@2843.4]
  wire [1:0] _T_1360; // @[Cat.scala 30:58:@3265.8]
  wire [3:0] _T_1362; // @[Cat.scala 30:58:@3267.8]
  wire [3:0] _GEN_608; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_20; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_346; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_25; // @[interleaver.scala 106:30:@2313.4]
  wire [3:0] _T_1109; // @[Cat.scala 30:58:@2989.6]
  wire  dout_qpsk_73; // @[interleaver.scala 112:30:@2417.4]
  wire [2:0] _T_1232; // @[Cat.scala 30:58:@3114.8]
  wire [3:0] _T_1233; // @[Cat.scala 30:58:@3115.8]
  wire  dout_qam16_169; // @[interleaver.scala 118:31:@2613.4]
  wire [1:0] _T_1376; // @[Cat.scala 30:58:@3286.8]
  wire  dout_qam16_73; // @[interleaver.scala 118:31:@2597.4]
  wire [1:0] _T_1375; // @[Cat.scala 30:58:@3285.8]
  wire [3:0] _T_1377; // @[Cat.scala 30:58:@3287.8]
  wire [3:0] _GEN_613; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_25; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_347; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_348; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_40; // @[interleaver.scala 106:30:@2323.4]
  wire [3:0] _T_1139; // @[Cat.scala 30:58:@3019.6]
  wire  dout_qpsk_88; // @[interleaver.scala 112:30:@2517.4]
  wire [2:0] _T_1277; // @[Cat.scala 30:58:@3159.8]
  wire  dout_qpsk_40; // @[interleaver.scala 112:30:@2501.4]
  wire [3:0] _T_1278; // @[Cat.scala 30:58:@3160.8]
  wire  dout_qam16_184; // @[interleaver.scala 118:31:@2743.4]
  wire  dout_qam16_136; // @[interleaver.scala 118:31:@2735.4]
  wire [1:0] _T_1421; // @[Cat.scala 30:58:@3346.8]
  wire  dout_qam16_88; // @[interleaver.scala 118:31:@2727.4]
  wire  dout_qam16_40; // @[interleaver.scala 118:31:@2719.4]
  wire [1:0] _T_1420; // @[Cat.scala 30:58:@3345.8]
  wire [3:0] _T_1422; // @[Cat.scala 30:58:@3347.8]
  wire [3:0] _GEN_628; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_40; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_349; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1081; // @[Cat.scala 30:58:@2961.6]
  wire  dout_qpsk_59; // @[interleaver.scala 112:30:@2539.4]
  wire [2:0] _T_1190; // @[Cat.scala 30:58:@3072.8]
  wire  dout_qpsk_11; // @[interleaver.scala 112:30:@2523.4]
  wire [3:0] _T_1191; // @[Cat.scala 30:58:@3073.8]
  wire  dout_qam16_155; // @[interleaver.scala 118:31:@2929.4]
  wire  dout_qam16_107; // @[interleaver.scala 118:31:@2921.4]
  wire [1:0] _T_1334; // @[Cat.scala 30:58:@3230.8]
  wire  dout_qam16_59; // @[interleaver.scala 118:31:@2913.4]
  wire  dout_qam16_11; // @[interleaver.scala 118:31:@2905.4]
  wire [1:0] _T_1333; // @[Cat.scala 30:58:@3229.8]
  wire [3:0] _T_1335; // @[Cat.scala 30:58:@3231.8]
  wire [3:0] _GEN_599; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_11; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_350; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_32; // @[interleaver.scala 106:30:@2349.4]
  wire [3:0] _T_1123; // @[Cat.scala 30:58:@3003.6]
  wire  dout_qpsk_80; // @[interleaver.scala 112:30:@2451.4]
  wire [2:0] _T_1253; // @[Cat.scala 30:58:@3135.8]
  wire [3:0] _T_1254; // @[Cat.scala 30:58:@3136.8]
  wire  dout_qam16_176; // @[interleaver.scala 118:31:@2837.4]
  wire  dout_qam16_128; // @[interleaver.scala 118:31:@2829.4]
  wire [1:0] _T_1397; // @[Cat.scala 30:58:@3314.8]
  wire  dout_qam16_80; // @[interleaver.scala 118:31:@2821.4]
  wire  dout_qam16_32; // @[interleaver.scala 118:31:@2813.4]
  wire [1:0] _T_1396; // @[Cat.scala 30:58:@3313.8]
  wire [3:0] _T_1398; // @[Cat.scala 30:58:@3315.8]
  wire [3:0] _GEN_620; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_32; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_351; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_4; // @[interleaver.scala 106:30:@2299.4]
  wire [3:0] _T_1067; // @[Cat.scala 30:58:@2947.6]
  wire  dout_qpsk_52; // @[interleaver.scala 112:30:@2505.4]
  wire [2:0] _T_1169; // @[Cat.scala 30:58:@3051.8]
  wire  dout_qpsk_4; // @[interleaver.scala 112:30:@2489.4]
  wire [3:0] _T_1170; // @[Cat.scala 30:58:@3052.8]
  wire  dout_qam16_148; // @[interleaver.scala 118:31:@2705.4]
  wire [1:0] _T_1313; // @[Cat.scala 30:58:@3202.8]
  wire  dout_qam16_52; // @[interleaver.scala 118:31:@2689.4]
  wire [1:0] _T_1312; // @[Cat.scala 30:58:@3201.8]
  wire [3:0] _T_1314; // @[Cat.scala 30:58:@3203.8]
  wire [3:0] _GEN_592; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_4; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_352; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_47; // @[interleaver.scala 106:30:@2359.4]
  wire [3:0] _T_1153; // @[Cat.scala 30:58:@3033.6]
  wire [2:0] _T_1298; // @[Cat.scala 30:58:@3180.8]
  wire [3:0] _T_1299; // @[Cat.scala 30:58:@3181.8]
  wire  dout_qam16_191; // @[interleaver.scala 118:31:@2903.4]
  wire  dout_qam16_143; // @[interleaver.scala 118:31:@2895.4]
  wire [1:0] _T_1442; // @[Cat.scala 30:58:@3374.8]
  wire  dout_qam16_95; // @[interleaver.scala 118:31:@2887.4]
  wire  dout_qam16_47; // @[interleaver.scala 118:31:@2879.4]
  wire [1:0] _T_1441; // @[Cat.scala 30:58:@3373.8]
  wire [3:0] _T_1443; // @[Cat.scala 30:58:@3375.8]
  wire [3:0] _GEN_635; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_47; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_353; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_18; // @[interleaver.scala 106:30:@2277.4]
  wire [3:0] _T_1095; // @[Cat.scala 30:58:@2975.6]
  wire  dout_qpsk_66; // @[interleaver.scala 112:30:@2383.4]
  wire [2:0] _T_1211; // @[Cat.scala 30:58:@3093.8]
  wire [3:0] _T_1212; // @[Cat.scala 30:58:@3094.8]
  wire  dout_qam16_162; // @[interleaver.scala 118:31:@2803.4]
  wire  dout_qam16_114; // @[interleaver.scala 118:31:@2795.4]
  wire [1:0] _T_1355; // @[Cat.scala 30:58:@3258.8]
  wire  dout_qam16_66; // @[interleaver.scala 118:31:@2787.4]
  wire  dout_qam16_18; // @[interleaver.scala 118:31:@2779.4]
  wire [1:0] _T_1354; // @[Cat.scala 30:58:@3257.8]
  wire [3:0] _T_1356; // @[Cat.scala 30:58:@3259.8]
  wire [3:0] _GEN_606; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_18; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_354; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_29; // @[interleaver.scala 106:30:@2347.4]
  wire [3:0] _T_1117; // @[Cat.scala 30:58:@2997.6]
  wire [2:0] _T_1244; // @[Cat.scala 30:58:@3126.8]
  wire [3:0] _T_1245; // @[Cat.scala 30:58:@3127.8]
  wire  dout_qam16_173; // @[interleaver.scala 118:31:@2741.4]
  wire [1:0] _T_1388; // @[Cat.scala 30:58:@3302.8]
  wire  dout_qam16_77; // @[interleaver.scala 118:31:@2725.4]
  wire [1:0] _T_1387; // @[Cat.scala 30:58:@3301.8]
  wire [3:0] _T_1389; // @[Cat.scala 30:58:@3303.8]
  wire [3:0] _GEN_617; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_29; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_355; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_0; // @[interleaver.scala 106:30:@2265.4]
  wire [3:0] _T_1059; // @[Cat.scala 30:58:@2939.6]
  wire  dout_qpsk_48; // @[interleaver.scala 112:30:@2377.4]
  wire [2:0] _T_1157; // @[Cat.scala 30:58:@3039.8]
  wire [3:0] _T_1158; // @[Cat.scala 30:58:@3040.8]
  wire  dout_qam16_144; // @[interleaver.scala 118:31:@2577.4]
  wire [1:0] _T_1301; // @[Cat.scala 30:58:@3186.8]
  wire  dout_qam16_48; // @[interleaver.scala 118:31:@2561.4]
  wire [1:0] _T_1300; // @[Cat.scala 30:58:@3185.8]
  wire [3:0] _T_1302; // @[Cat.scala 30:58:@3187.8]
  wire [3:0] _GEN_588; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_0; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_356; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1145; // @[Cat.scala 30:58:@3025.6]
  wire  dout_qpsk_91; // @[interleaver.scala 112:30:@2423.4]
  wire [2:0] _T_1286; // @[Cat.scala 30:58:@3168.8]
  wire  dout_qpsk_43; // @[interleaver.scala 112:30:@2407.4]
  wire [3:0] _T_1287; // @[Cat.scala 30:58:@3169.8]
  wire  dout_qam16_187; // @[interleaver.scala 118:31:@2775.4]
  wire  dout_qam16_139; // @[interleaver.scala 118:31:@2767.4]
  wire [1:0] _T_1430; // @[Cat.scala 30:58:@3358.8]
  wire  dout_qam16_91; // @[interleaver.scala 118:31:@2759.4]
  wire  dout_qam16_43; // @[interleaver.scala 118:31:@2751.4]
  wire [1:0] _T_1429; // @[Cat.scala 30:58:@3357.8]
  wire [3:0] _T_1431; // @[Cat.scala 30:58:@3359.8]
  wire [3:0] _GEN_631; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_43; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_357; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1089; // @[Cat.scala 30:58:@2969.6]
  wire [2:0] _T_1202; // @[Cat.scala 30:58:@3084.8]
  wire [3:0] _T_1203; // @[Cat.scala 30:58:@3085.8]
  wire [1:0] _T_1346; // @[Cat.scala 30:58:@3246.8]
  wire [1:0] _T_1345; // @[Cat.scala 30:58:@3245.8]
  wire [3:0] _T_1347; // @[Cat.scala 30:58:@3247.8]
  wire [3:0] _GEN_603; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_15; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_358; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1131; // @[Cat.scala 30:58:@3011.6]
  wire [2:0] _T_1265; // @[Cat.scala 30:58:@3147.8]
  wire [3:0] _T_1266; // @[Cat.scala 30:58:@3148.8]
  wire [1:0] _T_1409; // @[Cat.scala 30:58:@3330.8]
  wire  dout_qam16_36; // @[interleaver.scala 118:31:@2591.4]
  wire [1:0] _T_1408; // @[Cat.scala 30:58:@3329.8]
  wire [3:0] _T_1410; // @[Cat.scala 30:58:@3331.8]
  wire [3:0] _GEN_624; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_36; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_359; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1073; // @[Cat.scala 30:58:@2953.6]
  wire  dout_qpsk_55; // @[interleaver.scala 112:30:@2411.4]
  wire [2:0] _T_1178; // @[Cat.scala 30:58:@3060.8]
  wire [3:0] _T_1179; // @[Cat.scala 30:58:@3061.8]
  wire  dout_qam16_151; // @[interleaver.scala 118:31:@2801.4]
  wire  dout_qam16_103; // @[interleaver.scala 118:31:@2793.4]
  wire [1:0] _T_1322; // @[Cat.scala 30:58:@3214.8]
  wire  dout_qam16_55; // @[interleaver.scala 118:31:@2785.4]
  wire  dout_qam16_7; // @[interleaver.scala 118:31:@2777.4]
  wire [1:0] _T_1321; // @[Cat.scala 30:58:@3213.8]
  wire [3:0] _T_1323; // @[Cat.scala 30:58:@3215.8]
  wire [3:0] _GEN_595; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_7; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_360; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_361; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1103; // @[Cat.scala 30:58:@2983.6]
  wire  dout_qpsk_70; // @[interleaver.scala 112:30:@2511.4]
  wire [2:0] _T_1223; // @[Cat.scala 30:58:@3105.8]
  wire  dout_qpsk_22; // @[interleaver.scala 112:30:@2495.4]
  wire [3:0] _T_1224; // @[Cat.scala 30:58:@3106.8]
  wire  dout_qam16_166; // @[interleaver.scala 118:31:@2931.4]
  wire  dout_qam16_118; // @[interleaver.scala 118:31:@2923.4]
  wire [1:0] _T_1367; // @[Cat.scala 30:58:@3274.8]
  wire  dout_qam16_70; // @[interleaver.scala 118:31:@2915.4]
  wire  dout_qam16_22; // @[interleaver.scala 118:31:@2907.4]
  wire [1:0] _T_1366; // @[Cat.scala 30:58:@3273.8]
  wire [3:0] _T_1368; // @[Cat.scala 30:58:@3275.8]
  wire [3:0] _GEN_610; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_22; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_362; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1107; // @[Cat.scala 30:58:@2987.6]
  wire [2:0] _T_1229; // @[Cat.scala 30:58:@3111.8]
  wire [3:0] _T_1230; // @[Cat.scala 30:58:@3112.8]
  wire [1:0] _T_1373; // @[Cat.scala 30:58:@3282.8]
  wire  dout_qam16_24; // @[interleaver.scala 118:31:@2557.4]
  wire [1:0] _T_1372; // @[Cat.scala 30:58:@3281.8]
  wire [3:0] _T_1374; // @[Cat.scala 30:58:@3283.8]
  wire [3:0] _GEN_612; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_24; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_363; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_364; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1137; // @[Cat.scala 30:58:@3017.6]
  wire [2:0] _T_1274; // @[Cat.scala 30:58:@3156.8]
  wire [3:0] _T_1275; // @[Cat.scala 30:58:@3157.8]
  wire [1:0] _T_1418; // @[Cat.scala 30:58:@3342.8]
  wire  dout_qam16_87; // @[interleaver.scala 118:31:@2631.4]
  wire [1:0] _T_1417; // @[Cat.scala 30:58:@3341.8]
  wire [3:0] _T_1419; // @[Cat.scala 30:58:@3343.8]
  wire [3:0] _GEN_627; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_39; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_365; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1079; // @[Cat.scala 30:58:@2959.6]
  wire [2:0] _T_1187; // @[Cat.scala 30:58:@3069.8]
  wire [3:0] _T_1188; // @[Cat.scala 30:58:@3070.8]
  wire  dout_qam16_154; // @[interleaver.scala 118:31:@2897.4]
  wire  dout_qam16_106; // @[interleaver.scala 118:31:@2889.4]
  wire [1:0] _T_1331; // @[Cat.scala 30:58:@3226.8]
  wire  dout_qam16_58; // @[interleaver.scala 118:31:@2881.4]
  wire  dout_qam16_10; // @[interleaver.scala 118:31:@2873.4]
  wire [1:0] _T_1330; // @[Cat.scala 30:58:@3225.8]
  wire [3:0] _T_1332; // @[Cat.scala 30:58:@3227.8]
  wire [3:0] _GEN_598; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_10; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_366; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1121; // @[Cat.scala 30:58:@3001.6]
  wire [2:0] _T_1250; // @[Cat.scala 30:58:@3132.8]
  wire  dout_qpsk_31; // @[interleaver.scala 112:30:@2403.4]
  wire [3:0] _T_1251; // @[Cat.scala 30:58:@3133.8]
  wire  dout_qam16_175; // @[interleaver.scala 118:31:@2805.4]
  wire  dout_qam16_127; // @[interleaver.scala 118:31:@2797.4]
  wire [1:0] _T_1394; // @[Cat.scala 30:58:@3310.8]
  wire  dout_qam16_79; // @[interleaver.scala 118:31:@2789.4]
  wire  dout_qam16_31; // @[interleaver.scala 118:31:@2781.4]
  wire [1:0] _T_1393; // @[Cat.scala 30:58:@3309.8]
  wire [3:0] _T_1395; // @[Cat.scala 30:58:@3311.8]
  wire [3:0] _GEN_619; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_31; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_367; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1065; // @[Cat.scala 30:58:@2945.6]
  wire  dout_qpsk_51; // @[interleaver.scala 112:30:@2473.4]
  wire [2:0] _T_1166; // @[Cat.scala 30:58:@3048.8]
  wire  dout_qpsk_3; // @[interleaver.scala 112:30:@2457.4]
  wire [3:0] _T_1167; // @[Cat.scala 30:58:@3049.8]
  wire [1:0] _T_1310; // @[Cat.scala 30:58:@3198.8]
  wire [1:0] _T_1309; // @[Cat.scala 30:58:@3197.8]
  wire [3:0] _T_1311; // @[Cat.scala 30:58:@3199.8]
  wire [3:0] _GEN_591; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_3; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_368; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1151; // @[Cat.scala 30:58:@3031.6]
  wire  dout_qpsk_94; // @[interleaver.scala 112:30:@2519.4]
  wire [2:0] _T_1295; // @[Cat.scala 30:58:@3177.8]
  wire  dout_qpsk_46; // @[interleaver.scala 112:30:@2503.4]
  wire [3:0] _T_1296; // @[Cat.scala 30:58:@3178.8]
  wire  dout_qam16_190; // @[interleaver.scala 118:31:@2935.4]
  wire  dout_qam16_142; // @[interleaver.scala 118:31:@2927.4]
  wire [1:0] _T_1439; // @[Cat.scala 30:58:@3370.8]
  wire  dout_qam16_94; // @[interleaver.scala 118:31:@2919.4]
  wire  dout_qam16_46; // @[interleaver.scala 118:31:@2911.4]
  wire [1:0] _T_1438; // @[Cat.scala 30:58:@3369.8]
  wire [3:0] _T_1440; // @[Cat.scala 30:58:@3371.8]
  wire [3:0] _GEN_634; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_46; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_369; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_370; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1115; // @[Cat.scala 30:58:@2995.6]
  wire [2:0] _T_1241; // @[Cat.scala 30:58:@3123.8]
  wire [3:0] _T_1242; // @[Cat.scala 30:58:@3124.8]
  wire  dout_qam16_124; // @[interleaver.scala 118:31:@2701.4]
  wire [1:0] _T_1385; // @[Cat.scala 30:58:@3298.8]
  wire  dout_qam16_28; // @[interleaver.scala 118:31:@2685.4]
  wire [1:0] _T_1384; // @[Cat.scala 30:58:@3297.8]
  wire [3:0] _T_1386; // @[Cat.scala 30:58:@3299.8]
  wire [3:0] _GEN_616; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_28; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_371; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_372; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_373; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1087; // @[Cat.scala 30:58:@2967.6]
  wire [2:0] _T_1199; // @[Cat.scala 30:58:@3081.8]
  wire  dout_qpsk_14; // @[interleaver.scala 112:30:@2429.4]
  wire [3:0] _T_1200; // @[Cat.scala 30:58:@3082.8]
  wire  dout_qam16_158; // @[interleaver.scala 118:31:@2675.4]
  wire [1:0] _T_1343; // @[Cat.scala 30:58:@3242.8]
  wire  dout_qam16_62; // @[interleaver.scala 118:31:@2659.4]
  wire [1:0] _T_1342; // @[Cat.scala 30:58:@3241.8]
  wire [3:0] _T_1344; // @[Cat.scala 30:58:@3243.8]
  wire [3:0] _GEN_602; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_14; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_374; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1129; // @[Cat.scala 30:58:@3009.6]
  wire  dout_qpsk_83; // @[interleaver.scala 112:30:@2547.4]
  wire [2:0] _T_1262; // @[Cat.scala 30:58:@3144.8]
  wire  dout_qpsk_35; // @[interleaver.scala 112:30:@2531.4]
  wire [3:0] _T_1263; // @[Cat.scala 30:58:@3145.8]
  wire  dout_qam16_179; // @[interleaver.scala 118:31:@2933.4]
  wire  dout_qam16_131; // @[interleaver.scala 118:31:@2925.4]
  wire [1:0] _T_1406; // @[Cat.scala 30:58:@3326.8]
  wire  dout_qam16_83; // @[interleaver.scala 118:31:@2917.4]
  wire  dout_qam16_35; // @[interleaver.scala 118:31:@2909.4]
  wire [1:0] _T_1405; // @[Cat.scala 30:58:@3325.8]
  wire [3:0] _T_1407; // @[Cat.scala 30:58:@3327.8]
  wire [3:0] _GEN_623; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_35; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_375; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1071; // @[Cat.scala 30:58:@2951.6]
  wire [2:0] _T_1175; // @[Cat.scala 30:58:@3057.8]
  wire [3:0] _T_1176; // @[Cat.scala 30:58:@3058.8]
  wire  dout_qam16_150; // @[interleaver.scala 118:31:@2769.4]
  wire  dout_qam16_102; // @[interleaver.scala 118:31:@2761.4]
  wire [1:0] _T_1319; // @[Cat.scala 30:58:@3210.8]
  wire  dout_qam16_54; // @[interleaver.scala 118:31:@2753.4]
  wire  dout_qam16_6; // @[interleaver.scala 118:31:@2745.4]
  wire [1:0] _T_1318; // @[Cat.scala 30:58:@3209.8]
  wire [3:0] _T_1320; // @[Cat.scala 30:58:@3211.8]
  wire [3:0] _GEN_594; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_6; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_376; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_377; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1101; // @[Cat.scala 30:58:@2981.6]
  wire [2:0] _T_1220; // @[Cat.scala 30:58:@3102.8]
  wire [3:0] _T_1221; // @[Cat.scala 30:58:@3103.8]
  wire  dout_qam16_165; // @[interleaver.scala 118:31:@2835.4]
  wire  dout_qam16_117; // @[interleaver.scala 118:31:@2827.4]
  wire [1:0] _T_1364; // @[Cat.scala 30:58:@3270.8]
  wire  dout_qam16_69; // @[interleaver.scala 118:31:@2819.4]
  wire  dout_qam16_21; // @[interleaver.scala 118:31:@2811.4]
  wire [1:0] _T_1363; // @[Cat.scala 30:58:@3269.8]
  wire [3:0] _T_1365; // @[Cat.scala 30:58:@3271.8]
  wire [3:0] _GEN_609; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_21; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_378; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1111; // @[Cat.scala 30:58:@2991.6]
  wire [2:0] _T_1235; // @[Cat.scala 30:58:@3117.8]
  wire [3:0] _T_1236; // @[Cat.scala 30:58:@3118.8]
  wire [1:0] _T_1379; // @[Cat.scala 30:58:@3290.8]
  wire [1:0] _T_1378; // @[Cat.scala 30:58:@3289.8]
  wire [3:0] _T_1380; // @[Cat.scala 30:58:@3291.8]
  wire [3:0] _GEN_614; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_26; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_379; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_380; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1141; // @[Cat.scala 30:58:@3021.6]
  wire [2:0] _T_1280; // @[Cat.scala 30:58:@3162.8]
  wire [3:0] _T_1281; // @[Cat.scala 30:58:@3163.8]
  wire [1:0] _T_1424; // @[Cat.scala 30:58:@3350.8]
  wire [1:0] _T_1423; // @[Cat.scala 30:58:@3349.8]
  wire [3:0] _T_1425; // @[Cat.scala 30:58:@3351.8]
  wire [3:0] _GEN_629; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_41; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_381; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1083; // @[Cat.scala 30:58:@2963.6]
  wire [2:0] _T_1193; // @[Cat.scala 30:58:@3075.8]
  wire [3:0] _T_1194; // @[Cat.scala 30:58:@3076.8]
  wire [1:0] _T_1337; // @[Cat.scala 30:58:@3234.8]
  wire [1:0] _T_1336; // @[Cat.scala 30:58:@3233.8]
  wire [3:0] _T_1338; // @[Cat.scala 30:58:@3235.8]
  wire [3:0] _GEN_600; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_12; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_382; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1125; // @[Cat.scala 30:58:@3005.6]
  wire [2:0] _T_1256; // @[Cat.scala 30:58:@3138.8]
  wire [3:0] _T_1257; // @[Cat.scala 30:58:@3139.8]
  wire  dout_qam16_177; // @[interleaver.scala 118:31:@2869.4]
  wire  dout_qam16_129; // @[interleaver.scala 118:31:@2861.4]
  wire [1:0] _T_1400; // @[Cat.scala 30:58:@3318.8]
  wire  dout_qam16_81; // @[interleaver.scala 118:31:@2853.4]
  wire  dout_qam16_33; // @[interleaver.scala 118:31:@2845.4]
  wire [1:0] _T_1399; // @[Cat.scala 30:58:@3317.8]
  wire [3:0] _T_1401; // @[Cat.scala 30:58:@3319.8]
  wire [3:0] _GEN_621; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_33; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_383; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_384; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_385; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1097; // @[Cat.scala 30:58:@2977.6]
  wire [2:0] _T_1214; // @[Cat.scala 30:58:@3096.8]
  wire [3:0] _T_1215; // @[Cat.scala 30:58:@3097.8]
  wire  dout_qam16_163; // @[interleaver.scala 118:31:@2771.4]
  wire  dout_qam16_115; // @[interleaver.scala 118:31:@2763.4]
  wire [1:0] _T_1358; // @[Cat.scala 30:58:@3262.8]
  wire  dout_qam16_67; // @[interleaver.scala 118:31:@2755.4]
  wire  dout_qam16_19; // @[interleaver.scala 118:31:@2747.4]
  wire [1:0] _T_1357; // @[Cat.scala 30:58:@3261.8]
  wire [3:0] _T_1359; // @[Cat.scala 30:58:@3263.8]
  wire [3:0] _GEN_607; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_19; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_386; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_387; // @[Conditional.scala 39:67:@2060.6]
  wire  dout_bpsk_1; // @[interleaver.scala 106:30:@2297.4]
  wire [3:0] _T_1061; // @[Cat.scala 30:58:@2941.6]
  wire [2:0] _T_1160; // @[Cat.scala 30:58:@3042.8]
  wire [3:0] _T_1161; // @[Cat.scala 30:58:@3043.8]
  wire [1:0] _T_1304; // @[Cat.scala 30:58:@3190.8]
  wire [1:0] _T_1303; // @[Cat.scala 30:58:@3189.8]
  wire [3:0] _T_1305; // @[Cat.scala 30:58:@3191.8]
  wire [3:0] _GEN_589; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_1; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_388; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1147; // @[Cat.scala 30:58:@3027.6]
  wire [2:0] _T_1289; // @[Cat.scala 30:58:@3171.8]
  wire [3:0] _T_1290; // @[Cat.scala 30:58:@3172.8]
  wire  dout_qam16_188; // @[interleaver.scala 118:31:@2871.4]
  wire  dout_qam16_140; // @[interleaver.scala 118:31:@2863.4]
  wire [1:0] _T_1433; // @[Cat.scala 30:58:@3362.8]
  wire  dout_qam16_92; // @[interleaver.scala 118:31:@2855.4]
  wire  dout_qam16_44; // @[interleaver.scala 118:31:@2847.4]
  wire [1:0] _T_1432; // @[Cat.scala 30:58:@3361.8]
  wire [3:0] _T_1434; // @[Cat.scala 30:58:@3363.8]
  wire [3:0] _GEN_632; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_44; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_389; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1091; // @[Cat.scala 30:58:@2971.6]
  wire [2:0] _T_1205; // @[Cat.scala 30:58:@3087.8]
  wire [3:0] _T_1206; // @[Cat.scala 30:58:@3088.8]
  wire [1:0] _T_1349; // @[Cat.scala 30:58:@3250.8]
  wire [1:0] _T_1348; // @[Cat.scala 30:58:@3249.8]
  wire [3:0] _T_1350; // @[Cat.scala 30:58:@3251.8]
  wire [3:0] _GEN_604; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_16; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_390; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1133; // @[Cat.scala 30:58:@3013.6]
  wire [2:0] _T_1268; // @[Cat.scala 30:58:@3150.8]
  wire [3:0] _T_1269; // @[Cat.scala 30:58:@3151.8]
  wire [1:0] _T_1412; // @[Cat.scala 30:58:@3334.8]
  wire [1:0] _T_1411; // @[Cat.scala 30:58:@3333.8]
  wire [3:0] _T_1413; // @[Cat.scala 30:58:@3335.8]
  wire [3:0] _GEN_625; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_37; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_391; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1075; // @[Cat.scala 30:58:@2955.6]
  wire [2:0] _T_1181; // @[Cat.scala 30:58:@3063.8]
  wire [3:0] _T_1182; // @[Cat.scala 30:58:@3064.8]
  wire  dout_qam16_152; // @[interleaver.scala 118:31:@2833.4]
  wire  dout_qam16_104; // @[interleaver.scala 118:31:@2825.4]
  wire [1:0] _T_1325; // @[Cat.scala 30:58:@3218.8]
  wire  dout_qam16_56; // @[interleaver.scala 118:31:@2817.4]
  wire  dout_qam16_8; // @[interleaver.scala 118:31:@2809.4]
  wire [1:0] _T_1324; // @[Cat.scala 30:58:@3217.8]
  wire [3:0] _T_1326; // @[Cat.scala 30:58:@3219.8]
  wire [3:0] _GEN_596; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_8; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_392; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _GEN_393; // @[Conditional.scala 39:67:@2060.6]
  wire [3:0] _T_1105; // @[Cat.scala 30:58:@2985.6]
  wire [2:0] _T_1226; // @[Cat.scala 30:58:@3108.8]
  wire [3:0] _T_1227; // @[Cat.scala 30:58:@3109.8]
  wire  dout_qam16_167; // @[interleaver.scala 118:31:@2899.4]
  wire  dout_qam16_119; // @[interleaver.scala 118:31:@2891.4]
  wire [1:0] _T_1370; // @[Cat.scala 30:58:@3278.8]
  wire  dout_qam16_71; // @[interleaver.scala 118:31:@2883.4]
  wire  dout_qam16_23; // @[interleaver.scala 118:31:@2875.4]
  wire [1:0] _T_1369; // @[Cat.scala 30:58:@3277.8]
  wire [3:0] _T_1371; // @[Cat.scala 30:58:@3279.8]
  wire [3:0] _GEN_611; // @[interleaver.scala 125:30:@3038.6]
  wire [3:0] dout_23; // @[interleaver.scala 121:23:@2938.4]
  wire [3:0] _GEN_394; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_395; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_396; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_397; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_398; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_399; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_400; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_401; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_402; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_403; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_404; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_405; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_406; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_407; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_408; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_409; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_410; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_411; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_412; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_413; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_414; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_415; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_416; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_417; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_418; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_419; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_420; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_421; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_422; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_423; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_424; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_425; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_426; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_427; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_428; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_429; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_430; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_431; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_432; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_433; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_434; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_435; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_436; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_437; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_438; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_439; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_440; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_441; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_442; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_443; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_444; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_445; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_446; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_447; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_448; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_449; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_450; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_451; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_452; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_453; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_454; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_455; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_456; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_457; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_458; // @[Conditional.scala 39:67:@2060.6]
  wire [1:0] _GEN_459; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_460; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_461; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_462; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_463; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_464; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_465; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_466; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_467; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_468; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_469; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_470; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_471; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_472; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_473; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_474; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_475; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_476; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_477; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_478; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_479; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_480; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_481; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_482; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_483; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_484; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_485; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_486; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_487; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_488; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_489; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_490; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_491; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_492; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_493; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_494; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_495; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_496; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_497; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_498; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_499; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_500; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_501; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_502; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_503; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_504; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_505; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_506; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_507; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_508; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_509; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_510; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_511; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_512; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_513; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_514; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_515; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_516; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_517; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_518; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_519; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_520; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_521; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_522; // @[Conditional.scala 40:58:@2053.4]
  wire [3:0] _GEN_523; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_524; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_525; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_526; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_527; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_528; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_529; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_530; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_531; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_532; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_533; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_534; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_535; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_536; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_537; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_538; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_539; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_540; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_541; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_542; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_543; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_544; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_545; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_546; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_547; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_548; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_549; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_550; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_551; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_552; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_553; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_554; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_555; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_556; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_557; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_558; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_559; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_560; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_561; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_562; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_563; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_564; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_565; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_566; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_567; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_568; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_569; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_570; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_571; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_572; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_573; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_574; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_575; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_576; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_577; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_578; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_579; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_580; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_581; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_582; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_583; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_584; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_585; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_586; // @[Conditional.scala 40:58:@2053.4]
  wire [1:0] _GEN_587; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_0 = io_start ? io_mode : mode; // @[Reg.scala 12:19:@1949.4]
  assign _GEN_1 = io_din_valid ? io_din_bits : din_regs_0; // @[interleaver.scala 38:23:@1960.4]
  assign _GEN_2 = io_din_valid ? din_regs_0 : din_regs_1; // @[interleaver.scala 38:23:@1960.4]
  assign _GEN_3 = io_din_valid ? din_regs_1 : din_regs_2; // @[interleaver.scala 38:23:@1960.4]
  assign _GEN_4 = io_din_valid ? din_regs_2 : din_regs_3; // @[interleaver.scala 38:23:@1960.4]
  assign _T_639 = {din_regs_1,din_regs_0}; // @[Cat.scala 30:58:@1966.4]
  assign _T_640 = {din_regs_3,din_regs_2}; // @[Cat.scala 30:58:@1967.4]
  assign din_reg = {_T_640,_T_639}; // @[Cat.scala 30:58:@1968.4]
  assign _GEN_5 = io_start ? 2'h0 : dtag_reg_0; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_6 = io_start ? 2'h3 : dtag_reg_32; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_7 = io_start ? 2'h3 : dtag_reg_16; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_8 = io_start ? 2'h3 : dtag_reg_48; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_9 = io_start ? 2'h3 : dtag_reg_8; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_10 = io_start ? 2'h3 : dtag_reg_40; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_11 = io_start ? 2'h3 : dtag_reg_24; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_12 = io_start ? 2'h1 : dtag_reg_56; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_13 = io_start ? 2'h3 : dtag_reg_4; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_14 = io_start ? 2'h3 : dtag_reg_36; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_15 = io_start ? 2'h3 : dtag_reg_20; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_16 = io_start ? 2'h3 : dtag_reg_52; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_17 = io_start ? 2'h3 : dtag_reg_12; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_18 = io_start ? 2'h3 : dtag_reg_44; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_19 = io_start ? 2'h3 : dtag_reg_28; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_20 = io_start ? 2'h3 : dtag_reg_60; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_21 = io_start ? 2'h3 : dtag_reg_2; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_22 = io_start ? 2'h3 : dtag_reg_34; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_23 = io_start ? 2'h3 : dtag_reg_18; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_24 = io_start ? 2'h3 : dtag_reg_50; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_25 = io_start ? 2'h3 : dtag_reg_10; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_26 = io_start ? 2'h2 : dtag_reg_42; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_27 = io_start ? 2'h3 : dtag_reg_26; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_28 = io_start ? 2'h3 : dtag_reg_58; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_29 = io_start ? 2'h3 : dtag_reg_6; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_30 = io_start ? 2'h3 : dtag_reg_38; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_31 = io_start ? 2'h3 : dtag_reg_22; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_32 = io_start ? 2'h0 : dtag_reg_54; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_33 = io_start ? 2'h0 : dtag_reg_14; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_34 = io_start ? 2'h0 : dtag_reg_46; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_35 = io_start ? 2'h0 : dtag_reg_30; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_36 = io_start ? 2'h0 : dtag_reg_62; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_37 = io_start ? 2'h0 : dtag_reg_1; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_38 = io_start ? 2'h0 : dtag_reg_33; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_39 = io_start ? 2'h0 : dtag_reg_17; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_40 = io_start ? 2'h0 : dtag_reg_49; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_41 = io_start ? 2'h0 : dtag_reg_9; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_42 = io_start ? 2'h0 : dtag_reg_41; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_43 = io_start ? 2'h3 : dtag_reg_25; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_44 = io_start ? 2'h3 : dtag_reg_57; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_45 = io_start ? 2'h3 : dtag_reg_5; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_46 = io_start ? 2'h3 : dtag_reg_37; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_47 = io_start ? 2'h3 : dtag_reg_21; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_48 = io_start ? 2'h1 : dtag_reg_53; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_49 = io_start ? 2'h3 : dtag_reg_13; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_50 = io_start ? 2'h3 : dtag_reg_45; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_51 = io_start ? 2'h3 : dtag_reg_29; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_52 = io_start ? 2'h3 : dtag_reg_61; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_53 = io_start ? 2'h3 : dtag_reg_3; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_54 = io_start ? 2'h3 : dtag_reg_35; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_55 = io_start ? 2'h3 : dtag_reg_19; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_56 = io_start ? 2'h3 : dtag_reg_51; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_57 = io_start ? 2'h3 : dtag_reg_11; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_58 = io_start ? 2'h3 : dtag_reg_43; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_59 = io_start ? 2'h3 : dtag_reg_27; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_60 = io_start ? 2'h3 : dtag_reg_59; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_61 = io_start ? 2'h3 : dtag_reg_7; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_62 = io_start ? 2'h1 : dtag_reg_39; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_63 = io_start ? 2'h3 : dtag_reg_23; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_64 = io_start ? 2'h3 : dtag_reg_55; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_65 = io_start ? 2'h3 : dtag_reg_15; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_66 = io_start ? 2'h3 : dtag_reg_47; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_67 = io_start ? 2'h3 : dtag_reg_31; // @[interleaver.scala 46:19:@1969.4]
  assign _GEN_68 = io_start ? 2'h3 : dtag_reg_63; // @[interleaver.scala 46:19:@1969.4]
  assign _T_706 = state == 2'h2; // @[interleaver.scala 64:38:@2036.4]
  assign _T_707 = _T_706 & io_dout_ready; // @[interleaver.scala 64:56:@2037.4]
  assign _T_711 = value == 6'h3f; // @[Counter.scala 34:24:@2040.6]
  assign _T_713 = value + 6'h1; // @[Counter.scala 35:22:@2041.6]
  assign _T_714 = _T_713[5:0]; // @[Counter.scala 35:22:@2042.6]
  assign _GEN_69 = _T_707 ? _T_714 : value; // @[Counter.scala 63:17:@2039.4]
  assign dlast = _T_707 & _T_711; // @[Counter.scala 64:20:@2045.4]
  assign _T_716 = 2'h0 == state; // @[Conditional.scala 37:30:@2052.4]
  assign _GEN_70 = io_din_valid ? 2'h1 : state; // @[interleaver.scala 77:27:@2054.6]
  assign _T_717 = 2'h1 == state; // @[Conditional.scala 37:30:@2059.6]
  assign _T_718 = 2'h2 == state; // @[Conditional.scala 37:30:@2128.8]
  assign _T_719 = io_din_valid ? 2'h1 : 2'h0; // @[interleaver.scala 97:23:@2260.14]
  assign _GEN_71 = dlast ? _T_719 : state; // @[interleaver.scala 96:22:@2259.12]
  assign _GEN_72 = io_dout_ready ? dout_reg_1 : dout_reg_0; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_73 = io_dout_ready ? dtag_reg_1 : _GEN_5; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_74 = io_dout_ready ? dout_reg_2 : dout_reg_1; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_75 = io_dout_ready ? dtag_reg_2 : _GEN_37; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_76 = io_dout_ready ? dout_reg_3 : dout_reg_2; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_77 = io_dout_ready ? dtag_reg_3 : _GEN_21; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_78 = io_dout_ready ? dout_reg_4 : dout_reg_3; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_79 = io_dout_ready ? dtag_reg_4 : _GEN_53; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_80 = io_dout_ready ? dout_reg_5 : dout_reg_4; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_81 = io_dout_ready ? dtag_reg_5 : _GEN_13; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_82 = io_dout_ready ? dout_reg_6 : dout_reg_5; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_83 = io_dout_ready ? dtag_reg_6 : _GEN_45; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_84 = io_dout_ready ? dout_reg_7 : dout_reg_6; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_85 = io_dout_ready ? dtag_reg_7 : _GEN_29; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_86 = io_dout_ready ? dout_reg_8 : dout_reg_7; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_87 = io_dout_ready ? dtag_reg_8 : _GEN_61; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_88 = io_dout_ready ? dout_reg_9 : dout_reg_8; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_89 = io_dout_ready ? dtag_reg_9 : _GEN_9; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_90 = io_dout_ready ? dout_reg_10 : dout_reg_9; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_91 = io_dout_ready ? dtag_reg_10 : _GEN_41; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_92 = io_dout_ready ? dout_reg_11 : dout_reg_10; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_93 = io_dout_ready ? dtag_reg_11 : _GEN_25; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_94 = io_dout_ready ? dout_reg_12 : dout_reg_11; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_95 = io_dout_ready ? dtag_reg_12 : _GEN_57; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_96 = io_dout_ready ? dout_reg_13 : dout_reg_12; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_97 = io_dout_ready ? dtag_reg_13 : _GEN_17; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_98 = io_dout_ready ? dout_reg_14 : dout_reg_13; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_99 = io_dout_ready ? dtag_reg_14 : _GEN_49; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_100 = io_dout_ready ? dout_reg_15 : dout_reg_14; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_101 = io_dout_ready ? dtag_reg_15 : _GEN_33; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_102 = io_dout_ready ? dout_reg_16 : dout_reg_15; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_103 = io_dout_ready ? dtag_reg_16 : _GEN_65; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_104 = io_dout_ready ? dout_reg_17 : dout_reg_16; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_105 = io_dout_ready ? dtag_reg_17 : _GEN_7; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_106 = io_dout_ready ? dout_reg_18 : dout_reg_17; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_107 = io_dout_ready ? dtag_reg_18 : _GEN_39; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_108 = io_dout_ready ? dout_reg_19 : dout_reg_18; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_109 = io_dout_ready ? dtag_reg_19 : _GEN_23; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_110 = io_dout_ready ? dout_reg_20 : dout_reg_19; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_111 = io_dout_ready ? dtag_reg_20 : _GEN_55; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_112 = io_dout_ready ? dout_reg_21 : dout_reg_20; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_113 = io_dout_ready ? dtag_reg_21 : _GEN_15; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_114 = io_dout_ready ? dout_reg_22 : dout_reg_21; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_115 = io_dout_ready ? dtag_reg_22 : _GEN_47; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_116 = io_dout_ready ? dout_reg_23 : dout_reg_22; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_117 = io_dout_ready ? dtag_reg_23 : _GEN_31; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_118 = io_dout_ready ? dout_reg_24 : dout_reg_23; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_119 = io_dout_ready ? dtag_reg_24 : _GEN_63; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_120 = io_dout_ready ? dout_reg_25 : dout_reg_24; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_121 = io_dout_ready ? dtag_reg_25 : _GEN_11; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_122 = io_dout_ready ? dout_reg_26 : dout_reg_25; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_123 = io_dout_ready ? dtag_reg_26 : _GEN_43; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_124 = io_dout_ready ? dout_reg_27 : dout_reg_26; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_125 = io_dout_ready ? dtag_reg_27 : _GEN_27; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_126 = io_dout_ready ? dout_reg_28 : dout_reg_27; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_127 = io_dout_ready ? dtag_reg_28 : _GEN_59; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_128 = io_dout_ready ? dout_reg_29 : dout_reg_28; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_129 = io_dout_ready ? dtag_reg_29 : _GEN_19; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_130 = io_dout_ready ? dout_reg_30 : dout_reg_29; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_131 = io_dout_ready ? dtag_reg_30 : _GEN_51; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_132 = io_dout_ready ? dout_reg_31 : dout_reg_30; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_133 = io_dout_ready ? dtag_reg_31 : _GEN_35; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_134 = io_dout_ready ? dout_reg_32 : dout_reg_31; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_135 = io_dout_ready ? dtag_reg_32 : _GEN_67; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_136 = io_dout_ready ? dout_reg_33 : dout_reg_32; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_137 = io_dout_ready ? dtag_reg_33 : _GEN_6; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_138 = io_dout_ready ? dout_reg_34 : dout_reg_33; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_139 = io_dout_ready ? dtag_reg_34 : _GEN_38; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_140 = io_dout_ready ? dout_reg_35 : dout_reg_34; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_141 = io_dout_ready ? dtag_reg_35 : _GEN_22; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_142 = io_dout_ready ? dout_reg_36 : dout_reg_35; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_143 = io_dout_ready ? dtag_reg_36 : _GEN_54; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_144 = io_dout_ready ? dout_reg_37 : dout_reg_36; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_145 = io_dout_ready ? dtag_reg_37 : _GEN_14; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_146 = io_dout_ready ? dout_reg_38 : dout_reg_37; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_147 = io_dout_ready ? dtag_reg_38 : _GEN_46; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_148 = io_dout_ready ? dout_reg_39 : dout_reg_38; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_149 = io_dout_ready ? dtag_reg_39 : _GEN_30; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_150 = io_dout_ready ? dout_reg_40 : dout_reg_39; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_151 = io_dout_ready ? dtag_reg_40 : _GEN_62; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_152 = io_dout_ready ? dout_reg_41 : dout_reg_40; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_153 = io_dout_ready ? dtag_reg_41 : _GEN_10; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_154 = io_dout_ready ? dout_reg_42 : dout_reg_41; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_155 = io_dout_ready ? dtag_reg_42 : _GEN_42; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_156 = io_dout_ready ? dout_reg_43 : dout_reg_42; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_157 = io_dout_ready ? dtag_reg_43 : _GEN_26; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_158 = io_dout_ready ? dout_reg_44 : dout_reg_43; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_159 = io_dout_ready ? dtag_reg_44 : _GEN_58; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_160 = io_dout_ready ? dout_reg_45 : dout_reg_44; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_161 = io_dout_ready ? dtag_reg_45 : _GEN_18; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_162 = io_dout_ready ? dout_reg_46 : dout_reg_45; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_163 = io_dout_ready ? dtag_reg_46 : _GEN_50; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_164 = io_dout_ready ? dout_reg_47 : dout_reg_46; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_165 = io_dout_ready ? dtag_reg_47 : _GEN_34; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_166 = io_dout_ready ? dout_reg_48 : dout_reg_47; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_167 = io_dout_ready ? dtag_reg_48 : _GEN_66; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_168 = io_dout_ready ? dout_reg_49 : dout_reg_48; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_169 = io_dout_ready ? dtag_reg_49 : _GEN_8; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_170 = io_dout_ready ? dout_reg_50 : dout_reg_49; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_171 = io_dout_ready ? dtag_reg_50 : _GEN_40; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_172 = io_dout_ready ? dout_reg_51 : dout_reg_50; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_173 = io_dout_ready ? dtag_reg_51 : _GEN_24; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_174 = io_dout_ready ? dout_reg_52 : dout_reg_51; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_175 = io_dout_ready ? dtag_reg_52 : _GEN_56; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_176 = io_dout_ready ? dout_reg_53 : dout_reg_52; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_177 = io_dout_ready ? dtag_reg_53 : _GEN_16; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_178 = io_dout_ready ? dout_reg_54 : dout_reg_53; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_179 = io_dout_ready ? dtag_reg_54 : _GEN_48; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_180 = io_dout_ready ? dout_reg_55 : dout_reg_54; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_181 = io_dout_ready ? dtag_reg_55 : _GEN_32; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_182 = io_dout_ready ? dout_reg_56 : dout_reg_55; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_183 = io_dout_ready ? dtag_reg_56 : _GEN_64; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_184 = io_dout_ready ? dout_reg_57 : dout_reg_56; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_185 = io_dout_ready ? dtag_reg_57 : _GEN_12; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_186 = io_dout_ready ? dout_reg_58 : dout_reg_57; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_187 = io_dout_ready ? dtag_reg_58 : _GEN_44; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_188 = io_dout_ready ? dout_reg_59 : dout_reg_58; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_189 = io_dout_ready ? dtag_reg_59 : _GEN_28; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_190 = io_dout_ready ? dout_reg_60 : dout_reg_59; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_191 = io_dout_ready ? dtag_reg_60 : _GEN_60; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_192 = io_dout_ready ? dout_reg_61 : dout_reg_60; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_193 = io_dout_ready ? dtag_reg_61 : _GEN_20; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_194 = io_dout_ready ? dout_reg_62 : dout_reg_61; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_195 = io_dout_ready ? dtag_reg_62 : _GEN_52; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_196 = io_dout_ready ? dout_reg_63 : dout_reg_62; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_197 = io_dout_ready ? dtag_reg_63 : _GEN_36; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_198 = io_dout_ready ? dout_reg_0 : dout_reg_63; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_199 = io_dout_ready ? dtag_reg_0 : _GEN_68; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_200 = io_dout_ready ? _GEN_71 : state; // @[interleaver.scala 89:28:@2130.10]
  assign _GEN_201 = _T_718 ? _GEN_72 : dout_reg_0; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_202 = _T_718 ? _GEN_73 : _GEN_5; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_203 = _T_718 ? _GEN_74 : dout_reg_1; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_204 = _T_718 ? _GEN_75 : _GEN_37; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_205 = _T_718 ? _GEN_76 : dout_reg_2; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_206 = _T_718 ? _GEN_77 : _GEN_21; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_207 = _T_718 ? _GEN_78 : dout_reg_3; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_208 = _T_718 ? _GEN_79 : _GEN_53; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_209 = _T_718 ? _GEN_80 : dout_reg_4; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_210 = _T_718 ? _GEN_81 : _GEN_13; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_211 = _T_718 ? _GEN_82 : dout_reg_5; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_212 = _T_718 ? _GEN_83 : _GEN_45; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_213 = _T_718 ? _GEN_84 : dout_reg_6; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_214 = _T_718 ? _GEN_85 : _GEN_29; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_215 = _T_718 ? _GEN_86 : dout_reg_7; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_216 = _T_718 ? _GEN_87 : _GEN_61; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_217 = _T_718 ? _GEN_88 : dout_reg_8; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_218 = _T_718 ? _GEN_89 : _GEN_9; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_219 = _T_718 ? _GEN_90 : dout_reg_9; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_220 = _T_718 ? _GEN_91 : _GEN_41; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_221 = _T_718 ? _GEN_92 : dout_reg_10; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_222 = _T_718 ? _GEN_93 : _GEN_25; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_223 = _T_718 ? _GEN_94 : dout_reg_11; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_224 = _T_718 ? _GEN_95 : _GEN_57; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_225 = _T_718 ? _GEN_96 : dout_reg_12; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_226 = _T_718 ? _GEN_97 : _GEN_17; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_227 = _T_718 ? _GEN_98 : dout_reg_13; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_228 = _T_718 ? _GEN_99 : _GEN_49; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_229 = _T_718 ? _GEN_100 : dout_reg_14; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_230 = _T_718 ? _GEN_101 : _GEN_33; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_231 = _T_718 ? _GEN_102 : dout_reg_15; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_232 = _T_718 ? _GEN_103 : _GEN_65; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_233 = _T_718 ? _GEN_104 : dout_reg_16; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_234 = _T_718 ? _GEN_105 : _GEN_7; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_235 = _T_718 ? _GEN_106 : dout_reg_17; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_236 = _T_718 ? _GEN_107 : _GEN_39; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_237 = _T_718 ? _GEN_108 : dout_reg_18; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_238 = _T_718 ? _GEN_109 : _GEN_23; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_239 = _T_718 ? _GEN_110 : dout_reg_19; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_240 = _T_718 ? _GEN_111 : _GEN_55; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_241 = _T_718 ? _GEN_112 : dout_reg_20; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_242 = _T_718 ? _GEN_113 : _GEN_15; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_243 = _T_718 ? _GEN_114 : dout_reg_21; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_244 = _T_718 ? _GEN_115 : _GEN_47; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_245 = _T_718 ? _GEN_116 : dout_reg_22; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_246 = _T_718 ? _GEN_117 : _GEN_31; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_247 = _T_718 ? _GEN_118 : dout_reg_23; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_248 = _T_718 ? _GEN_119 : _GEN_63; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_249 = _T_718 ? _GEN_120 : dout_reg_24; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_250 = _T_718 ? _GEN_121 : _GEN_11; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_251 = _T_718 ? _GEN_122 : dout_reg_25; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_252 = _T_718 ? _GEN_123 : _GEN_43; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_253 = _T_718 ? _GEN_124 : dout_reg_26; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_254 = _T_718 ? _GEN_125 : _GEN_27; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_255 = _T_718 ? _GEN_126 : dout_reg_27; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_256 = _T_718 ? _GEN_127 : _GEN_59; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_257 = _T_718 ? _GEN_128 : dout_reg_28; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_258 = _T_718 ? _GEN_129 : _GEN_19; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_259 = _T_718 ? _GEN_130 : dout_reg_29; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_260 = _T_718 ? _GEN_131 : _GEN_51; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_261 = _T_718 ? _GEN_132 : dout_reg_30; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_262 = _T_718 ? _GEN_133 : _GEN_35; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_263 = _T_718 ? _GEN_134 : dout_reg_31; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_264 = _T_718 ? _GEN_135 : _GEN_67; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_265 = _T_718 ? _GEN_136 : dout_reg_32; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_266 = _T_718 ? _GEN_137 : _GEN_6; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_267 = _T_718 ? _GEN_138 : dout_reg_33; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_268 = _T_718 ? _GEN_139 : _GEN_38; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_269 = _T_718 ? _GEN_140 : dout_reg_34; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_270 = _T_718 ? _GEN_141 : _GEN_22; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_271 = _T_718 ? _GEN_142 : dout_reg_35; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_272 = _T_718 ? _GEN_143 : _GEN_54; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_273 = _T_718 ? _GEN_144 : dout_reg_36; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_274 = _T_718 ? _GEN_145 : _GEN_14; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_275 = _T_718 ? _GEN_146 : dout_reg_37; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_276 = _T_718 ? _GEN_147 : _GEN_46; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_277 = _T_718 ? _GEN_148 : dout_reg_38; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_278 = _T_718 ? _GEN_149 : _GEN_30; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_279 = _T_718 ? _GEN_150 : dout_reg_39; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_280 = _T_718 ? _GEN_151 : _GEN_62; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_281 = _T_718 ? _GEN_152 : dout_reg_40; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_282 = _T_718 ? _GEN_153 : _GEN_10; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_283 = _T_718 ? _GEN_154 : dout_reg_41; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_284 = _T_718 ? _GEN_155 : _GEN_42; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_285 = _T_718 ? _GEN_156 : dout_reg_42; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_286 = _T_718 ? _GEN_157 : _GEN_26; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_287 = _T_718 ? _GEN_158 : dout_reg_43; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_288 = _T_718 ? _GEN_159 : _GEN_58; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_289 = _T_718 ? _GEN_160 : dout_reg_44; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_290 = _T_718 ? _GEN_161 : _GEN_18; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_291 = _T_718 ? _GEN_162 : dout_reg_45; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_292 = _T_718 ? _GEN_163 : _GEN_50; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_293 = _T_718 ? _GEN_164 : dout_reg_46; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_294 = _T_718 ? _GEN_165 : _GEN_34; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_295 = _T_718 ? _GEN_166 : dout_reg_47; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_296 = _T_718 ? _GEN_167 : _GEN_66; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_297 = _T_718 ? _GEN_168 : dout_reg_48; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_298 = _T_718 ? _GEN_169 : _GEN_8; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_299 = _T_718 ? _GEN_170 : dout_reg_49; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_300 = _T_718 ? _GEN_171 : _GEN_40; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_301 = _T_718 ? _GEN_172 : dout_reg_50; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_302 = _T_718 ? _GEN_173 : _GEN_24; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_303 = _T_718 ? _GEN_174 : dout_reg_51; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_304 = _T_718 ? _GEN_175 : _GEN_56; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_305 = _T_718 ? _GEN_176 : dout_reg_52; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_306 = _T_718 ? _GEN_177 : _GEN_16; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_307 = _T_718 ? _GEN_178 : dout_reg_53; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_308 = _T_718 ? _GEN_179 : _GEN_48; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_309 = _T_718 ? _GEN_180 : dout_reg_54; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_310 = _T_718 ? _GEN_181 : _GEN_32; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_311 = _T_718 ? _GEN_182 : dout_reg_55; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_312 = _T_718 ? _GEN_183 : _GEN_64; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_313 = _T_718 ? _GEN_184 : dout_reg_56; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_314 = _T_718 ? _GEN_185 : _GEN_12; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_315 = _T_718 ? _GEN_186 : dout_reg_57; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_316 = _T_718 ? _GEN_187 : _GEN_44; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_317 = _T_718 ? _GEN_188 : dout_reg_58; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_318 = _T_718 ? _GEN_189 : _GEN_28; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_319 = _T_718 ? _GEN_190 : dout_reg_59; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_320 = _T_718 ? _GEN_191 : _GEN_60; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_321 = _T_718 ? _GEN_192 : dout_reg_60; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_322 = _T_718 ? _GEN_193 : _GEN_20; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_323 = _T_718 ? _GEN_194 : dout_reg_61; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_324 = _T_718 ? _GEN_195 : _GEN_52; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_325 = _T_718 ? _GEN_196 : dout_reg_62; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_326 = _T_718 ? _GEN_197 : _GEN_36; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_327 = _T_718 ? _GEN_198 : dout_reg_63; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_328 = _T_718 ? _GEN_199 : _GEN_68; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_329 = _T_718 ? _GEN_200 : state; // @[Conditional.scala 39:67:@2129.8]
  assign _GEN_330 = _T_717 ? 2'h2 : _GEN_329; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_331 = _T_717 ? 4'h0 : _GEN_201; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_332 = _T_717 ? 4'h0 : _GEN_203; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1057 = mode == 2'h0; // @[interleaver.scala 121:14:@2937.4]
  assign dout_bpsk_38 = din_reg[44]; // @[interleaver.scala 106:30:@2353.4]
  assign _T_1135 = {3'h0,dout_bpsk_38}; // @[Cat.scala 30:58:@3015.6]
  assign _T_1155 = mode == 2'h1; // @[interleaver.scala 125:21:@3037.6]
  assign dout_qpsk_86 = din_reg[46]; // @[interleaver.scala 112:30:@2453.4]
  assign _T_1271 = {2'h0,dout_qpsk_86}; // @[Cat.scala 30:58:@3153.8]
  assign dout_qpsk_38 = din_reg[38]; // @[interleaver.scala 112:30:@2437.4]
  assign _T_1272 = {_T_1271,dout_qpsk_38}; // @[Cat.scala 30:58:@3154.8]
  assign dout_qam16_182 = din_reg[63]; // @[interleaver.scala 118:31:@2679.4]
  assign dout_qam16_134 = din_reg[59]; // @[interleaver.scala 118:31:@2671.4]
  assign _T_1415 = {dout_qam16_182,dout_qam16_134}; // @[Cat.scala 30:58:@3338.8]
  assign dout_qam16_86 = din_reg[55]; // @[interleaver.scala 118:31:@2663.4]
  assign dout_qam16_38 = din_reg[51]; // @[interleaver.scala 118:31:@2655.4]
  assign _T_1414 = {dout_qam16_86,dout_qam16_38}; // @[Cat.scala 30:58:@3337.8]
  assign _T_1416 = {_T_1415,_T_1414}; // @[Cat.scala 30:58:@3339.8]
  assign _GEN_626 = _T_1155 ? _T_1272 : _T_1416; // @[interleaver.scala 125:30:@3038.6]
  assign dout_38 = _T_1057 ? _T_1135 : _GEN_626; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_333 = _T_717 ? dout_38 : _GEN_205; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_9 = din_reg[3]; // @[interleaver.scala 106:30:@2271.4]
  assign _T_1077 = {3'h0,dout_bpsk_9}; // @[Cat.scala 30:58:@2957.6]
  assign dout_qpsk_57 = din_reg[57]; // @[interleaver.scala 112:30:@2475.4]
  assign _T_1184 = {2'h0,dout_qpsk_57}; // @[Cat.scala 30:58:@3066.8]
  assign dout_qpsk_9 = din_reg[49]; // @[interleaver.scala 112:30:@2459.4]
  assign _T_1185 = {_T_1184,dout_qpsk_9}; // @[Cat.scala 30:58:@3067.8]
  assign dout_qam16_153 = din_reg[156]; // @[interleaver.scala 118:31:@2865.4]
  assign dout_qam16_105 = din_reg[152]; // @[interleaver.scala 118:31:@2857.4]
  assign _T_1328 = {dout_qam16_153,dout_qam16_105}; // @[Cat.scala 30:58:@3222.8]
  assign dout_qam16_57 = din_reg[148]; // @[interleaver.scala 118:31:@2849.4]
  assign dout_qam16_9 = din_reg[144]; // @[interleaver.scala 118:31:@2841.4]
  assign _T_1327 = {dout_qam16_57,dout_qam16_9}; // @[Cat.scala 30:58:@3221.8]
  assign _T_1329 = {_T_1328,_T_1327}; // @[Cat.scala 30:58:@3223.8]
  assign _GEN_597 = _T_1155 ? _T_1185 : _T_1329; // @[interleaver.scala 125:30:@3038.6]
  assign dout_9 = _T_1057 ? _T_1077 : _GEN_597; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_334 = _T_717 ? dout_9 : _GEN_207; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_30 = din_reg[10]; // @[interleaver.scala 106:30:@2285.4]
  assign _T_1119 = {3'h0,dout_bpsk_30}; // @[Cat.scala 30:58:@2999.6]
  assign dout_qpsk_78 = din_reg[13]; // @[interleaver.scala 112:30:@2387.4]
  assign _T_1247 = {2'h0,dout_qpsk_78}; // @[Cat.scala 30:58:@3129.8]
  assign dout_qpsk_30 = din_reg[5]; // @[interleaver.scala 112:30:@2371.4]
  assign _T_1248 = {_T_1247,dout_qpsk_30}; // @[Cat.scala 30:58:@3130.8]
  assign dout_qam16_174 = din_reg[110]; // @[interleaver.scala 118:31:@2773.4]
  assign dout_qam16_126 = din_reg[106]; // @[interleaver.scala 118:31:@2765.4]
  assign _T_1391 = {dout_qam16_174,dout_qam16_126}; // @[Cat.scala 30:58:@3306.8]
  assign dout_qam16_78 = din_reg[102]; // @[interleaver.scala 118:31:@2757.4]
  assign dout_qam16_30 = din_reg[98]; // @[interleaver.scala 118:31:@2749.4]
  assign _T_1390 = {dout_qam16_78,dout_qam16_30}; // @[Cat.scala 30:58:@3305.8]
  assign _T_1392 = {_T_1391,_T_1390}; // @[Cat.scala 30:58:@3307.8]
  assign _GEN_618 = _T_1155 ? _T_1248 : _T_1392; // @[interleaver.scala 125:30:@3038.6]
  assign dout_30 = _T_1057 ? _T_1119 : _GEN_618; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_335 = _T_717 ? dout_30 : _GEN_209; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_2 = din_reg[32]; // @[interleaver.scala 106:30:@2329.4]
  assign _T_1063 = {3'h0,dout_bpsk_2}; // @[Cat.scala 30:58:@2943.6]
  assign dout_qpsk_50 = din_reg[40]; // @[interleaver.scala 112:30:@2441.4]
  assign _T_1163 = {2'h0,dout_qpsk_50}; // @[Cat.scala 30:58:@3045.8]
  assign _T_1164 = {_T_1163,dout_bpsk_2}; // @[Cat.scala 30:58:@3046.8]
  assign _T_1307 = {dout_bpsk_38,dout_qpsk_50}; // @[Cat.scala 30:58:@3194.8]
  assign dout_qam16_50 = din_reg[36]; // @[interleaver.scala 118:31:@2625.4]
  assign _T_1306 = {dout_qam16_50,dout_bpsk_2}; // @[Cat.scala 30:58:@3193.8]
  assign _T_1308 = {_T_1307,_T_1306}; // @[Cat.scala 30:58:@3195.8]
  assign _GEN_590 = _T_1155 ? _T_1164 : _T_1308; // @[interleaver.scala 125:30:@3038.6]
  assign dout_2 = _T_1057 ? _T_1063 : _GEN_590; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_336 = _T_717 ? dout_2 : _GEN_211; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_45 = din_reg[15]; // @[interleaver.scala 106:30:@2295.4]
  assign _T_1149 = {3'h0,dout_bpsk_45}; // @[Cat.scala 30:58:@3029.6]
  assign _T_1292 = {2'h0,dout_qam16_182}; // @[Cat.scala 30:58:@3174.8]
  assign _T_1293 = {_T_1292,dout_qam16_86}; // @[Cat.scala 30:58:@3175.8]
  assign dout_qam16_189 = din_reg[143]; // @[interleaver.scala 118:31:@2839.4]
  assign dout_qam16_141 = din_reg[139]; // @[interleaver.scala 118:31:@2831.4]
  assign _T_1436 = {dout_qam16_189,dout_qam16_141}; // @[Cat.scala 30:58:@3366.8]
  assign dout_qam16_93 = din_reg[135]; // @[interleaver.scala 118:31:@2823.4]
  assign dout_qam16_45 = din_reg[131]; // @[interleaver.scala 118:31:@2815.4]
  assign _T_1435 = {dout_qam16_93,dout_qam16_45}; // @[Cat.scala 30:58:@3365.8]
  assign _T_1437 = {_T_1436,_T_1435}; // @[Cat.scala 30:58:@3367.8]
  assign _GEN_633 = _T_1155 ? _T_1293 : _T_1437; // @[interleaver.scala 125:30:@3038.6]
  assign dout_45 = _T_1057 ? _T_1149 : _GEN_633; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_337 = _T_717 ? dout_45 : _GEN_213; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_17 = din_reg[37]; // @[interleaver.scala 106:30:@2339.4]
  assign _T_1093 = {3'h0,dout_bpsk_17}; // @[Cat.scala 30:58:@2973.6]
  assign dout_qpsk_65 = din_reg[90]; // @[interleaver.scala 112:30:@2541.4]
  assign _T_1208 = {2'h0,dout_qpsk_65}; // @[Cat.scala 30:58:@3090.8]
  assign dout_qpsk_17 = din_reg[82]; // @[interleaver.scala 112:30:@2525.4]
  assign _T_1209 = {_T_1208,dout_qpsk_17}; // @[Cat.scala 30:58:@3091.8]
  assign dout_qam16_161 = din_reg[77]; // @[interleaver.scala 118:31:@2707.4]
  assign dout_qam16_113 = din_reg[73]; // @[interleaver.scala 118:31:@2699.4]
  assign _T_1352 = {dout_qam16_161,dout_qam16_113}; // @[Cat.scala 30:58:@3254.8]
  assign dout_qam16_65 = din_reg[69]; // @[interleaver.scala 118:31:@2691.4]
  assign dout_qam16_17 = din_reg[65]; // @[interleaver.scala 118:31:@2683.4]
  assign _T_1351 = {dout_qam16_65,dout_qam16_17}; // @[Cat.scala 30:58:@3253.8]
  assign _T_1353 = {_T_1352,_T_1351}; // @[Cat.scala 30:58:@3255.8]
  assign _GEN_605 = _T_1155 ? _T_1209 : _T_1353; // @[interleaver.scala 125:30:@3038.6]
  assign dout_17 = _T_1057 ? _T_1093 : _GEN_605; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_338 = _T_717 ? dout_17 : _GEN_215; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_27 = din_reg[9]; // @[interleaver.scala 106:30:@2283.4]
  assign _T_1113 = {3'h0,dout_bpsk_27}; // @[Cat.scala 30:58:@2993.6]
  assign dout_qpsk_75 = din_reg[60]; // @[interleaver.scala 112:30:@2481.4]
  assign _T_1238 = {2'h0,dout_qpsk_75}; // @[Cat.scala 30:58:@3120.8]
  assign dout_qpsk_27 = din_reg[52]; // @[interleaver.scala 112:30:@2465.4]
  assign _T_1239 = {_T_1238,dout_qpsk_27}; // @[Cat.scala 30:58:@3121.8]
  assign dout_qam16_171 = din_reg[62]; // @[interleaver.scala 118:31:@2677.4]
  assign dout_qam16_123 = din_reg[58]; // @[interleaver.scala 118:31:@2669.4]
  assign _T_1382 = {dout_qam16_171,dout_qam16_123}; // @[Cat.scala 30:58:@3294.8]
  assign dout_qam16_75 = din_reg[54]; // @[interleaver.scala 118:31:@2661.4]
  assign dout_qam16_27 = din_reg[50]; // @[interleaver.scala 118:31:@2653.4]
  assign _T_1381 = {dout_qam16_75,dout_qam16_27}; // @[Cat.scala 30:58:@3293.8]
  assign _T_1383 = {_T_1382,_T_1381}; // @[Cat.scala 30:58:@3295.8]
  assign _GEN_615 = _T_1155 ? _T_1239 : _T_1383; // @[interleaver.scala 125:30:@3038.6]
  assign dout_27 = _T_1057 ? _T_1113 : _GEN_615; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_339 = _T_717 ? dout_27 : _GEN_217; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_340 = _T_717 ? 4'h0 : _GEN_219; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_42 = din_reg[14]; // @[interleaver.scala 106:30:@2293.4]
  assign _T_1143 = {3'h0,dout_bpsk_42}; // @[Cat.scala 30:58:@3023.6]
  assign _T_1283 = {2'h0,dout_bpsk_45}; // @[Cat.scala 30:58:@3165.8]
  assign dout_qpsk_42 = din_reg[7]; // @[interleaver.scala 112:30:@2375.4]
  assign _T_1284 = {_T_1283,dout_qpsk_42}; // @[Cat.scala 30:58:@3166.8]
  assign dout_qam16_186 = din_reg[127]; // @[interleaver.scala 118:31:@2807.4]
  assign dout_qam16_138 = din_reg[123]; // @[interleaver.scala 118:31:@2799.4]
  assign _T_1427 = {dout_qam16_186,dout_qam16_138}; // @[Cat.scala 30:58:@3354.8]
  assign dout_qam16_90 = din_reg[119]; // @[interleaver.scala 118:31:@2791.4]
  assign dout_qam16_42 = din_reg[115]; // @[interleaver.scala 118:31:@2783.4]
  assign _T_1426 = {dout_qam16_90,dout_qam16_42}; // @[Cat.scala 30:58:@3353.8]
  assign _T_1428 = {_T_1427,_T_1426}; // @[Cat.scala 30:58:@3355.8]
  assign _GEN_630 = _T_1155 ? _T_1284 : _T_1428; // @[interleaver.scala 125:30:@3038.6]
  assign dout_42 = _T_1057 ? _T_1143 : _GEN_630; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_341 = _T_717 ? dout_42 : _GEN_221; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_13 = din_reg[20]; // @[interleaver.scala 106:30:@2305.4]
  assign _T_1085 = {3'h0,dout_bpsk_13}; // @[Cat.scala 30:58:@2965.6]
  assign dout_qpsk_61 = din_reg[26]; // @[interleaver.scala 112:30:@2413.4]
  assign _T_1196 = {2'h0,dout_qpsk_61}; // @[Cat.scala 30:58:@3078.8]
  assign dout_qpsk_13 = din_reg[18]; // @[interleaver.scala 112:30:@2397.4]
  assign _T_1197 = {_T_1196,dout_qpsk_13}; // @[Cat.scala 30:58:@3079.8]
  assign _T_1340 = {dout_qpsk_78,dout_bpsk_27}; // @[Cat.scala 30:58:@3238.8]
  assign dout_qam16_13 = din_reg[1]; // @[interleaver.scala 118:31:@2555.4]
  assign _T_1339 = {dout_qpsk_30,dout_qam16_13}; // @[Cat.scala 30:58:@3237.8]
  assign _T_1341 = {_T_1340,_T_1339}; // @[Cat.scala 30:58:@3239.8]
  assign _GEN_601 = _T_1155 ? _T_1197 : _T_1341; // @[interleaver.scala 125:30:@3038.6]
  assign dout_13 = _T_1057 ? _T_1085 : _GEN_601; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_342 = _T_717 ? dout_13 : _GEN_223; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_34 = din_reg[27]; // @[interleaver.scala 106:30:@2319.4]
  assign _T_1127 = {3'h0,dout_bpsk_34}; // @[Cat.scala 30:58:@3007.6]
  assign _T_1259 = {2'h0,dout_qam16_161}; // @[Cat.scala 30:58:@3141.8]
  assign _T_1260 = {_T_1259,dout_qam16_65}; // @[Cat.scala 30:58:@3142.8]
  assign dout_qam16_178 = din_reg[174]; // @[interleaver.scala 118:31:@2901.4]
  assign dout_qam16_130 = din_reg[170]; // @[interleaver.scala 118:31:@2893.4]
  assign _T_1403 = {dout_qam16_178,dout_qam16_130}; // @[Cat.scala 30:58:@3322.8]
  assign dout_qam16_82 = din_reg[166]; // @[interleaver.scala 118:31:@2885.4]
  assign dout_qam16_34 = din_reg[162]; // @[interleaver.scala 118:31:@2877.4]
  assign _T_1402 = {dout_qam16_82,dout_qam16_34}; // @[Cat.scala 30:58:@3321.8]
  assign _T_1404 = {_T_1403,_T_1402}; // @[Cat.scala 30:58:@3323.8]
  assign _GEN_622 = _T_1155 ? _T_1260 : _T_1404; // @[interleaver.scala 125:30:@3038.6]
  assign dout_34 = _T_1057 ? _T_1127 : _GEN_622; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_343 = _T_717 ? dout_34 : _GEN_225; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_5 = din_reg[33]; // @[interleaver.scala 106:30:@2331.4]
  assign _T_1069 = {3'h0,dout_bpsk_5}; // @[Cat.scala 30:58:@2949.6]
  assign dout_qpsk_53 = din_reg[88]; // @[interleaver.scala 112:30:@2537.4]
  assign _T_1172 = {2'h0,dout_qpsk_53}; // @[Cat.scala 30:58:@3054.8]
  assign dout_qpsk_5 = din_reg[80]; // @[interleaver.scala 112:30:@2521.4]
  assign _T_1173 = {_T_1172,dout_qpsk_5}; // @[Cat.scala 30:58:@3055.8]
  assign dout_qam16_149 = din_reg[92]; // @[interleaver.scala 118:31:@2737.4]
  assign _T_1316 = {dout_qam16_149,dout_qpsk_53}; // @[Cat.scala 30:58:@3206.8]
  assign dout_qam16_53 = din_reg[84]; // @[interleaver.scala 118:31:@2721.4]
  assign _T_1315 = {dout_qam16_53,dout_qpsk_5}; // @[Cat.scala 30:58:@3205.8]
  assign _T_1317 = {_T_1316,_T_1315}; // @[Cat.scala 30:58:@3207.8]
  assign _GEN_593 = _T_1155 ? _T_1173 : _T_1317; // @[interleaver.scala 125:30:@3038.6]
  assign dout_5 = _T_1057 ? _T_1069 : _GEN_593; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_344 = _T_717 ? dout_5 : _GEN_227; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_345 = _T_717 ? 4'h0 : _GEN_229; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1099 = {3'h0,dout_qpsk_38}; // @[Cat.scala 30:58:@2979.6]
  assign dout_qpsk_68 = din_reg[43]; // @[interleaver.scala 112:30:@2447.4]
  assign _T_1217 = {2'h0,dout_qpsk_68}; // @[Cat.scala 30:58:@3099.8]
  assign dout_qpsk_20 = din_reg[35]; // @[interleaver.scala 112:30:@2431.4]
  assign _T_1218 = {_T_1217,dout_qpsk_20}; // @[Cat.scala 30:58:@3100.8]
  assign dout_qam16_164 = din_reg[157]; // @[interleaver.scala 118:31:@2867.4]
  assign dout_qam16_116 = din_reg[153]; // @[interleaver.scala 118:31:@2859.4]
  assign _T_1361 = {dout_qam16_164,dout_qam16_116}; // @[Cat.scala 30:58:@3266.8]
  assign dout_qam16_68 = din_reg[149]; // @[interleaver.scala 118:31:@2851.4]
  assign dout_qam16_20 = din_reg[145]; // @[interleaver.scala 118:31:@2843.4]
  assign _T_1360 = {dout_qam16_68,dout_qam16_20}; // @[Cat.scala 30:58:@3265.8]
  assign _T_1362 = {_T_1361,_T_1360}; // @[Cat.scala 30:58:@3267.8]
  assign _GEN_608 = _T_1155 ? _T_1218 : _T_1362; // @[interleaver.scala 125:30:@3038.6]
  assign dout_20 = _T_1057 ? _T_1099 : _GEN_608; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_346 = _T_717 ? dout_20 : _GEN_231; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_25 = din_reg[24]; // @[interleaver.scala 106:30:@2313.4]
  assign _T_1109 = {3'h0,dout_bpsk_25}; // @[Cat.scala 30:58:@2989.6]
  assign dout_qpsk_73 = din_reg[28]; // @[interleaver.scala 112:30:@2417.4]
  assign _T_1232 = {2'h0,dout_qpsk_73}; // @[Cat.scala 30:58:@3114.8]
  assign _T_1233 = {_T_1232,dout_bpsk_13}; // @[Cat.scala 30:58:@3115.8]
  assign dout_qam16_169 = din_reg[30]; // @[interleaver.scala 118:31:@2613.4]
  assign _T_1376 = {dout_qam16_169,dout_qpsk_61}; // @[Cat.scala 30:58:@3286.8]
  assign dout_qam16_73 = din_reg[22]; // @[interleaver.scala 118:31:@2597.4]
  assign _T_1375 = {dout_qam16_73,dout_qpsk_13}; // @[Cat.scala 30:58:@3285.8]
  assign _T_1377 = {_T_1376,_T_1375}; // @[Cat.scala 30:58:@3287.8]
  assign _GEN_613 = _T_1155 ? _T_1233 : _T_1377; // @[interleaver.scala 125:30:@3038.6]
  assign dout_25 = _T_1057 ? _T_1109 : _GEN_613; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_347 = _T_717 ? dout_25 : _GEN_233; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_348 = _T_717 ? 4'h0 : _GEN_235; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_40 = din_reg[29]; // @[interleaver.scala 106:30:@2323.4]
  assign _T_1139 = {3'h0,dout_bpsk_40}; // @[Cat.scala 30:58:@3019.6]
  assign dout_qpsk_88 = din_reg[78]; // @[interleaver.scala 112:30:@2517.4]
  assign _T_1277 = {2'h0,dout_qpsk_88}; // @[Cat.scala 30:58:@3159.8]
  assign dout_qpsk_40 = din_reg[70]; // @[interleaver.scala 112:30:@2501.4]
  assign _T_1278 = {_T_1277,dout_qpsk_40}; // @[Cat.scala 30:58:@3160.8]
  assign dout_qam16_184 = din_reg[95]; // @[interleaver.scala 118:31:@2743.4]
  assign dout_qam16_136 = din_reg[91]; // @[interleaver.scala 118:31:@2735.4]
  assign _T_1421 = {dout_qam16_184,dout_qam16_136}; // @[Cat.scala 30:58:@3346.8]
  assign dout_qam16_88 = din_reg[87]; // @[interleaver.scala 118:31:@2727.4]
  assign dout_qam16_40 = din_reg[83]; // @[interleaver.scala 118:31:@2719.4]
  assign _T_1420 = {dout_qam16_88,dout_qam16_40}; // @[Cat.scala 30:58:@3345.8]
  assign _T_1422 = {_T_1421,_T_1420}; // @[Cat.scala 30:58:@3347.8]
  assign _GEN_628 = _T_1155 ? _T_1278 : _T_1422; // @[interleaver.scala 125:30:@3038.6]
  assign dout_40 = _T_1057 ? _T_1139 : _GEN_628; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_349 = _T_717 ? dout_40 : _GEN_237; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1081 = {3'h0,dout_qpsk_20}; // @[Cat.scala 30:58:@2961.6]
  assign dout_qpsk_59 = din_reg[89]; // @[interleaver.scala 112:30:@2539.4]
  assign _T_1190 = {2'h0,dout_qpsk_59}; // @[Cat.scala 30:58:@3072.8]
  assign dout_qpsk_11 = din_reg[81]; // @[interleaver.scala 112:30:@2523.4]
  assign _T_1191 = {_T_1190,dout_qpsk_11}; // @[Cat.scala 30:58:@3073.8]
  assign dout_qam16_155 = din_reg[188]; // @[interleaver.scala 118:31:@2929.4]
  assign dout_qam16_107 = din_reg[184]; // @[interleaver.scala 118:31:@2921.4]
  assign _T_1334 = {dout_qam16_155,dout_qam16_107}; // @[Cat.scala 30:58:@3230.8]
  assign dout_qam16_59 = din_reg[180]; // @[interleaver.scala 118:31:@2913.4]
  assign dout_qam16_11 = din_reg[176]; // @[interleaver.scala 118:31:@2905.4]
  assign _T_1333 = {dout_qam16_59,dout_qam16_11}; // @[Cat.scala 30:58:@3229.8]
  assign _T_1335 = {_T_1334,_T_1333}; // @[Cat.scala 30:58:@3231.8]
  assign _GEN_599 = _T_1155 ? _T_1191 : _T_1335; // @[interleaver.scala 125:30:@3038.6]
  assign dout_11 = _T_1057 ? _T_1081 : _GEN_599; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_350 = _T_717 ? dout_11 : _GEN_239; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_32 = din_reg[42]; // @[interleaver.scala 106:30:@2349.4]
  assign _T_1123 = {3'h0,dout_bpsk_32}; // @[Cat.scala 30:58:@3003.6]
  assign dout_qpsk_80 = din_reg[45]; // @[interleaver.scala 112:30:@2451.4]
  assign _T_1253 = {2'h0,dout_qpsk_80}; // @[Cat.scala 30:58:@3135.8]
  assign _T_1254 = {_T_1253,dout_bpsk_17}; // @[Cat.scala 30:58:@3136.8]
  assign dout_qam16_176 = din_reg[142]; // @[interleaver.scala 118:31:@2837.4]
  assign dout_qam16_128 = din_reg[138]; // @[interleaver.scala 118:31:@2829.4]
  assign _T_1397 = {dout_qam16_176,dout_qam16_128}; // @[Cat.scala 30:58:@3314.8]
  assign dout_qam16_80 = din_reg[134]; // @[interleaver.scala 118:31:@2821.4]
  assign dout_qam16_32 = din_reg[130]; // @[interleaver.scala 118:31:@2813.4]
  assign _T_1396 = {dout_qam16_80,dout_qam16_32}; // @[Cat.scala 30:58:@3313.8]
  assign _T_1398 = {_T_1397,_T_1396}; // @[Cat.scala 30:58:@3315.8]
  assign _GEN_620 = _T_1155 ? _T_1254 : _T_1398; // @[interleaver.scala 125:30:@3038.6]
  assign dout_32 = _T_1057 ? _T_1123 : _GEN_620; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_351 = _T_717 ? dout_32 : _GEN_241; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_4 = din_reg[17]; // @[interleaver.scala 106:30:@2299.4]
  assign _T_1067 = {3'h0,dout_bpsk_4}; // @[Cat.scala 30:58:@2947.6]
  assign dout_qpsk_52 = din_reg[72]; // @[interleaver.scala 112:30:@2505.4]
  assign _T_1169 = {2'h0,dout_qpsk_52}; // @[Cat.scala 30:58:@3051.8]
  assign dout_qpsk_4 = din_reg[64]; // @[interleaver.scala 112:30:@2489.4]
  assign _T_1170 = {_T_1169,dout_qpsk_4}; // @[Cat.scala 30:58:@3052.8]
  assign dout_qam16_148 = din_reg[76]; // @[interleaver.scala 118:31:@2705.4]
  assign _T_1313 = {dout_qam16_148,dout_qpsk_52}; // @[Cat.scala 30:58:@3202.8]
  assign dout_qam16_52 = din_reg[68]; // @[interleaver.scala 118:31:@2689.4]
  assign _T_1312 = {dout_qam16_52,dout_qpsk_4}; // @[Cat.scala 30:58:@3201.8]
  assign _T_1314 = {_T_1313,_T_1312}; // @[Cat.scala 30:58:@3203.8]
  assign _GEN_592 = _T_1155 ? _T_1170 : _T_1314; // @[interleaver.scala 125:30:@3038.6]
  assign dout_4 = _T_1057 ? _T_1067 : _GEN_592; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_352 = _T_717 ? dout_4 : _GEN_243; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_47 = din_reg[47]; // @[interleaver.scala 106:30:@2359.4]
  assign _T_1153 = {3'h0,dout_bpsk_47}; // @[Cat.scala 30:58:@3033.6]
  assign _T_1298 = {2'h0,dout_qam16_184}; // @[Cat.scala 30:58:@3180.8]
  assign _T_1299 = {_T_1298,dout_qam16_88}; // @[Cat.scala 30:58:@3181.8]
  assign dout_qam16_191 = din_reg[175]; // @[interleaver.scala 118:31:@2903.4]
  assign dout_qam16_143 = din_reg[171]; // @[interleaver.scala 118:31:@2895.4]
  assign _T_1442 = {dout_qam16_191,dout_qam16_143}; // @[Cat.scala 30:58:@3374.8]
  assign dout_qam16_95 = din_reg[167]; // @[interleaver.scala 118:31:@2887.4]
  assign dout_qam16_47 = din_reg[163]; // @[interleaver.scala 118:31:@2879.4]
  assign _T_1441 = {dout_qam16_95,dout_qam16_47}; // @[Cat.scala 30:58:@3373.8]
  assign _T_1443 = {_T_1442,_T_1441}; // @[Cat.scala 30:58:@3375.8]
  assign _GEN_635 = _T_1155 ? _T_1299 : _T_1443; // @[interleaver.scala 125:30:@3038.6]
  assign dout_47 = _T_1057 ? _T_1153 : _GEN_635; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_353 = _T_717 ? dout_47 : _GEN_245; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_18 = din_reg[6]; // @[interleaver.scala 106:30:@2277.4]
  assign _T_1095 = {3'h0,dout_bpsk_18}; // @[Cat.scala 30:58:@2975.6]
  assign dout_qpsk_66 = din_reg[11]; // @[interleaver.scala 112:30:@2383.4]
  assign _T_1211 = {2'h0,dout_qpsk_66}; // @[Cat.scala 30:58:@3093.8]
  assign _T_1212 = {_T_1211,dout_bpsk_9}; // @[Cat.scala 30:58:@3094.8]
  assign dout_qam16_162 = din_reg[125]; // @[interleaver.scala 118:31:@2803.4]
  assign dout_qam16_114 = din_reg[121]; // @[interleaver.scala 118:31:@2795.4]
  assign _T_1355 = {dout_qam16_162,dout_qam16_114}; // @[Cat.scala 30:58:@3258.8]
  assign dout_qam16_66 = din_reg[117]; // @[interleaver.scala 118:31:@2787.4]
  assign dout_qam16_18 = din_reg[113]; // @[interleaver.scala 118:31:@2779.4]
  assign _T_1354 = {dout_qam16_66,dout_qam16_18}; // @[Cat.scala 30:58:@3257.8]
  assign _T_1356 = {_T_1355,_T_1354}; // @[Cat.scala 30:58:@3259.8]
  assign _GEN_606 = _T_1155 ? _T_1212 : _T_1356; // @[interleaver.scala 125:30:@3038.6]
  assign dout_18 = _T_1057 ? _T_1095 : _GEN_606; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_354 = _T_717 ? dout_18 : _GEN_247; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_29 = din_reg[41]; // @[interleaver.scala 106:30:@2347.4]
  assign _T_1117 = {3'h0,dout_bpsk_29}; // @[Cat.scala 30:58:@2997.6]
  assign _T_1244 = {2'h0,dout_qam16_149}; // @[Cat.scala 30:58:@3126.8]
  assign _T_1245 = {_T_1244,dout_qam16_53}; // @[Cat.scala 30:58:@3127.8]
  assign dout_qam16_173 = din_reg[94]; // @[interleaver.scala 118:31:@2741.4]
  assign _T_1388 = {dout_qam16_173,dout_qpsk_65}; // @[Cat.scala 30:58:@3302.8]
  assign dout_qam16_77 = din_reg[86]; // @[interleaver.scala 118:31:@2725.4]
  assign _T_1387 = {dout_qam16_77,dout_qpsk_17}; // @[Cat.scala 30:58:@3301.8]
  assign _T_1389 = {_T_1388,_T_1387}; // @[Cat.scala 30:58:@3303.8]
  assign _GEN_617 = _T_1155 ? _T_1245 : _T_1389; // @[interleaver.scala 125:30:@3038.6]
  assign dout_29 = _T_1057 ? _T_1117 : _GEN_617; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_355 = _T_717 ? dout_29 : _GEN_249; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_0 = din_reg[0]; // @[interleaver.scala 106:30:@2265.4]
  assign _T_1059 = {3'h0,dout_bpsk_0}; // @[Cat.scala 30:58:@2939.6]
  assign dout_qpsk_48 = din_reg[8]; // @[interleaver.scala 112:30:@2377.4]
  assign _T_1157 = {2'h0,dout_qpsk_48}; // @[Cat.scala 30:58:@3039.8]
  assign _T_1158 = {_T_1157,dout_bpsk_0}; // @[Cat.scala 30:58:@3040.8]
  assign dout_qam16_144 = din_reg[12]; // @[interleaver.scala 118:31:@2577.4]
  assign _T_1301 = {dout_qam16_144,dout_qpsk_48}; // @[Cat.scala 30:58:@3186.8]
  assign dout_qam16_48 = din_reg[4]; // @[interleaver.scala 118:31:@2561.4]
  assign _T_1300 = {dout_qam16_48,dout_bpsk_0}; // @[Cat.scala 30:58:@3185.8]
  assign _T_1302 = {_T_1301,_T_1300}; // @[Cat.scala 30:58:@3187.8]
  assign _GEN_588 = _T_1155 ? _T_1158 : _T_1302; // @[interleaver.scala 125:30:@3038.6]
  assign dout_0 = _T_1057 ? _T_1059 : _GEN_588; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_356 = _T_717 ? dout_0 : _GEN_251; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1145 = {3'h0,dout_qam16_169}; // @[Cat.scala 30:58:@3025.6]
  assign dout_qpsk_91 = din_reg[31]; // @[interleaver.scala 112:30:@2423.4]
  assign _T_1286 = {2'h0,dout_qpsk_91}; // @[Cat.scala 30:58:@3168.8]
  assign dout_qpsk_43 = din_reg[23]; // @[interleaver.scala 112:30:@2407.4]
  assign _T_1287 = {_T_1286,dout_qpsk_43}; // @[Cat.scala 30:58:@3169.8]
  assign dout_qam16_187 = din_reg[111]; // @[interleaver.scala 118:31:@2775.4]
  assign dout_qam16_139 = din_reg[107]; // @[interleaver.scala 118:31:@2767.4]
  assign _T_1430 = {dout_qam16_187,dout_qam16_139}; // @[Cat.scala 30:58:@3358.8]
  assign dout_qam16_91 = din_reg[103]; // @[interleaver.scala 118:31:@2759.4]
  assign dout_qam16_43 = din_reg[99]; // @[interleaver.scala 118:31:@2751.4]
  assign _T_1429 = {dout_qam16_91,dout_qam16_43}; // @[Cat.scala 30:58:@3357.8]
  assign _T_1431 = {_T_1430,_T_1429}; // @[Cat.scala 30:58:@3359.8]
  assign _GEN_631 = _T_1155 ? _T_1287 : _T_1431; // @[interleaver.scala 125:30:@3038.6]
  assign dout_43 = _T_1057 ? _T_1145 : _GEN_631; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_357 = _T_717 ? dout_43 : _GEN_253; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1089 = {3'h0,dout_qpsk_30}; // @[Cat.scala 30:58:@2969.6]
  assign _T_1202 = {2'h0,dout_qam16_123}; // @[Cat.scala 30:58:@3084.8]
  assign _T_1203 = {_T_1202,dout_qam16_27}; // @[Cat.scala 30:58:@3085.8]
  assign _T_1346 = {dout_qpsk_80,dout_bpsk_29}; // @[Cat.scala 30:58:@3246.8]
  assign _T_1345 = {dout_bpsk_17,dout_bpsk_5}; // @[Cat.scala 30:58:@3245.8]
  assign _T_1347 = {_T_1346,_T_1345}; // @[Cat.scala 30:58:@3247.8]
  assign _GEN_603 = _T_1155 ? _T_1203 : _T_1347; // @[interleaver.scala 125:30:@3038.6]
  assign dout_15 = _T_1057 ? _T_1089 : _GEN_603; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_358 = _T_717 ? dout_15 : _GEN_255; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1131 = {3'h0,dout_qam16_144}; // @[Cat.scala 30:58:@3011.6]
  assign _T_1265 = {2'h0,dout_bpsk_42}; // @[Cat.scala 30:58:@3147.8]
  assign _T_1266 = {_T_1265,dout_bpsk_18}; // @[Cat.scala 30:58:@3148.8]
  assign _T_1409 = {dout_qpsk_91,dout_bpsk_34}; // @[Cat.scala 30:58:@3330.8]
  assign dout_qam16_36 = din_reg[19]; // @[interleaver.scala 118:31:@2591.4]
  assign _T_1408 = {dout_qpsk_43,dout_qam16_36}; // @[Cat.scala 30:58:@3329.8]
  assign _T_1410 = {_T_1409,_T_1408}; // @[Cat.scala 30:58:@3331.8]
  assign _GEN_624 = _T_1155 ? _T_1266 : _T_1410; // @[interleaver.scala 125:30:@3038.6]
  assign dout_36 = _T_1057 ? _T_1131 : _GEN_624; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_359 = _T_717 ? dout_36 : _GEN_257; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1073 = {3'h0,dout_qpsk_13}; // @[Cat.scala 30:58:@2953.6]
  assign dout_qpsk_55 = din_reg[25]; // @[interleaver.scala 112:30:@2411.4]
  assign _T_1178 = {2'h0,dout_qpsk_55}; // @[Cat.scala 30:58:@3060.8]
  assign _T_1179 = {_T_1178,dout_bpsk_4}; // @[Cat.scala 30:58:@3061.8]
  assign dout_qam16_151 = din_reg[124]; // @[interleaver.scala 118:31:@2801.4]
  assign dout_qam16_103 = din_reg[120]; // @[interleaver.scala 118:31:@2793.4]
  assign _T_1322 = {dout_qam16_151,dout_qam16_103}; // @[Cat.scala 30:58:@3214.8]
  assign dout_qam16_55 = din_reg[116]; // @[interleaver.scala 118:31:@2785.4]
  assign dout_qam16_7 = din_reg[112]; // @[interleaver.scala 118:31:@2777.4]
  assign _T_1321 = {dout_qam16_55,dout_qam16_7}; // @[Cat.scala 30:58:@3213.8]
  assign _T_1323 = {_T_1322,_T_1321}; // @[Cat.scala 30:58:@3215.8]
  assign _GEN_595 = _T_1155 ? _T_1179 : _T_1323; // @[interleaver.scala 125:30:@3038.6]
  assign dout_7 = _T_1057 ? _T_1073 : _GEN_595; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_360 = _T_717 ? dout_7 : _GEN_259; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_361 = _T_717 ? 4'h0 : _GEN_261; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1103 = {3'h0,dout_qpsk_43}; // @[Cat.scala 30:58:@2983.6]
  assign dout_qpsk_70 = din_reg[75]; // @[interleaver.scala 112:30:@2511.4]
  assign _T_1223 = {2'h0,dout_qpsk_70}; // @[Cat.scala 30:58:@3105.8]
  assign dout_qpsk_22 = din_reg[67]; // @[interleaver.scala 112:30:@2495.4]
  assign _T_1224 = {_T_1223,dout_qpsk_22}; // @[Cat.scala 30:58:@3106.8]
  assign dout_qam16_166 = din_reg[189]; // @[interleaver.scala 118:31:@2931.4]
  assign dout_qam16_118 = din_reg[185]; // @[interleaver.scala 118:31:@2923.4]
  assign _T_1367 = {dout_qam16_166,dout_qam16_118}; // @[Cat.scala 30:58:@3274.8]
  assign dout_qam16_70 = din_reg[181]; // @[interleaver.scala 118:31:@2915.4]
  assign dout_qam16_22 = din_reg[177]; // @[interleaver.scala 118:31:@2907.4]
  assign _T_1366 = {dout_qam16_70,dout_qam16_22}; // @[Cat.scala 30:58:@3273.8]
  assign _T_1368 = {_T_1367,_T_1366}; // @[Cat.scala 30:58:@3275.8]
  assign _GEN_610 = _T_1155 ? _T_1224 : _T_1368; // @[interleaver.scala 125:30:@3038.6]
  assign dout_22 = _T_1057 ? _T_1103 : _GEN_610; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_362 = _T_717 ? dout_22 : _GEN_263; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1107 = {3'h0,dout_qpsk_48}; // @[Cat.scala 30:58:@2987.6]
  assign _T_1229 = {2'h0,dout_qam16_144}; // @[Cat.scala 30:58:@3111.8]
  assign _T_1230 = {_T_1229,dout_qam16_48}; // @[Cat.scala 30:58:@3112.8]
  assign _T_1373 = {dout_bpsk_42,dout_bpsk_30}; // @[Cat.scala 30:58:@3282.8]
  assign dout_qam16_24 = din_reg[2]; // @[interleaver.scala 118:31:@2557.4]
  assign _T_1372 = {dout_bpsk_18,dout_qam16_24}; // @[Cat.scala 30:58:@3281.8]
  assign _T_1374 = {_T_1373,_T_1372}; // @[Cat.scala 30:58:@3283.8]
  assign _GEN_612 = _T_1155 ? _T_1230 : _T_1374; // @[interleaver.scala 125:30:@3038.6]
  assign dout_24 = _T_1057 ? _T_1107 : _GEN_612; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_363 = _T_717 ? dout_24 : _GEN_265; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_364 = _T_717 ? 4'h0 : _GEN_267; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1137 = {3'h0,dout_qpsk_78}; // @[Cat.scala 30:58:@3017.6]
  assign _T_1274 = {2'h0,dout_qam16_171}; // @[Cat.scala 30:58:@3156.8]
  assign _T_1275 = {_T_1274,dout_qam16_75}; // @[Cat.scala 30:58:@3157.8]
  assign _T_1418 = {dout_bpsk_47,dout_qpsk_68}; // @[Cat.scala 30:58:@3342.8]
  assign dout_qam16_87 = din_reg[39]; // @[interleaver.scala 118:31:@2631.4]
  assign _T_1417 = {dout_qam16_87,dout_qpsk_20}; // @[Cat.scala 30:58:@3341.8]
  assign _T_1419 = {_T_1418,_T_1417}; // @[Cat.scala 30:58:@3343.8]
  assign _GEN_627 = _T_1155 ? _T_1275 : _T_1419; // @[interleaver.scala 125:30:@3038.6]
  assign dout_39 = _T_1057 ? _T_1137 : _GEN_627; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_365 = _T_717 ? dout_39 : _GEN_269; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1079 = {3'h0,dout_qam16_36}; // @[Cat.scala 30:58:@2959.6]
  assign _T_1187 = {2'h0,dout_qam16_113}; // @[Cat.scala 30:58:@3069.8]
  assign _T_1188 = {_T_1187,dout_qam16_17}; // @[Cat.scala 30:58:@3070.8]
  assign dout_qam16_154 = din_reg[172]; // @[interleaver.scala 118:31:@2897.4]
  assign dout_qam16_106 = din_reg[168]; // @[interleaver.scala 118:31:@2889.4]
  assign _T_1331 = {dout_qam16_154,dout_qam16_106}; // @[Cat.scala 30:58:@3226.8]
  assign dout_qam16_58 = din_reg[164]; // @[interleaver.scala 118:31:@2881.4]
  assign dout_qam16_10 = din_reg[160]; // @[interleaver.scala 118:31:@2873.4]
  assign _T_1330 = {dout_qam16_58,dout_qam16_10}; // @[Cat.scala 30:58:@3225.8]
  assign _T_1332 = {_T_1331,_T_1330}; // @[Cat.scala 30:58:@3227.8]
  assign _GEN_598 = _T_1155 ? _T_1188 : _T_1332; // @[interleaver.scala 125:30:@3038.6]
  assign dout_10 = _T_1057 ? _T_1079 : _GEN_598; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_366 = _T_717 ? dout_10 : _GEN_271; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1121 = {3'h0,dout_qpsk_61}; // @[Cat.scala 30:58:@3001.6]
  assign _T_1250 = {2'h0,dout_bpsk_40}; // @[Cat.scala 30:58:@3132.8]
  assign dout_qpsk_31 = din_reg[21]; // @[interleaver.scala 112:30:@2403.4]
  assign _T_1251 = {_T_1250,dout_qpsk_31}; // @[Cat.scala 30:58:@3133.8]
  assign dout_qam16_175 = din_reg[126]; // @[interleaver.scala 118:31:@2805.4]
  assign dout_qam16_127 = din_reg[122]; // @[interleaver.scala 118:31:@2797.4]
  assign _T_1394 = {dout_qam16_175,dout_qam16_127}; // @[Cat.scala 30:58:@3310.8]
  assign dout_qam16_79 = din_reg[118]; // @[interleaver.scala 118:31:@2789.4]
  assign dout_qam16_31 = din_reg[114]; // @[interleaver.scala 118:31:@2781.4]
  assign _T_1393 = {dout_qam16_79,dout_qam16_31}; // @[Cat.scala 30:58:@3309.8]
  assign _T_1395 = {_T_1394,_T_1393}; // @[Cat.scala 30:58:@3311.8]
  assign _GEN_619 = _T_1155 ? _T_1251 : _T_1395; // @[interleaver.scala 125:30:@3038.6]
  assign dout_31 = _T_1057 ? _T_1121 : _GEN_619; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_367 = _T_717 ? dout_31 : _GEN_273; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1065 = {3'h0,dout_qam16_13}; // @[Cat.scala 30:58:@2945.6]
  assign dout_qpsk_51 = din_reg[56]; // @[interleaver.scala 112:30:@2473.4]
  assign _T_1166 = {2'h0,dout_qpsk_51}; // @[Cat.scala 30:58:@3048.8]
  assign dout_qpsk_3 = din_reg[48]; // @[interleaver.scala 112:30:@2457.4]
  assign _T_1167 = {_T_1166,dout_qpsk_3}; // @[Cat.scala 30:58:@3049.8]
  assign _T_1310 = {dout_qpsk_75,dout_qpsk_51}; // @[Cat.scala 30:58:@3198.8]
  assign _T_1309 = {dout_qpsk_27,dout_qpsk_3}; // @[Cat.scala 30:58:@3197.8]
  assign _T_1311 = {_T_1310,_T_1309}; // @[Cat.scala 30:58:@3199.8]
  assign _GEN_591 = _T_1155 ? _T_1167 : _T_1311; // @[interleaver.scala 125:30:@3038.6]
  assign dout_3 = _T_1057 ? _T_1065 : _GEN_591; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_368 = _T_717 ? dout_3 : _GEN_275; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1151 = {3'h0,dout_qpsk_91}; // @[Cat.scala 30:58:@3031.6]
  assign dout_qpsk_94 = din_reg[79]; // @[interleaver.scala 112:30:@2519.4]
  assign _T_1295 = {2'h0,dout_qpsk_94}; // @[Cat.scala 30:58:@3177.8]
  assign dout_qpsk_46 = din_reg[71]; // @[interleaver.scala 112:30:@2503.4]
  assign _T_1296 = {_T_1295,dout_qpsk_46}; // @[Cat.scala 30:58:@3178.8]
  assign dout_qam16_190 = din_reg[191]; // @[interleaver.scala 118:31:@2935.4]
  assign dout_qam16_142 = din_reg[187]; // @[interleaver.scala 118:31:@2927.4]
  assign _T_1439 = {dout_qam16_190,dout_qam16_142}; // @[Cat.scala 30:58:@3370.8]
  assign dout_qam16_94 = din_reg[183]; // @[interleaver.scala 118:31:@2919.4]
  assign dout_qam16_46 = din_reg[179]; // @[interleaver.scala 118:31:@2911.4]
  assign _T_1438 = {dout_qam16_94,dout_qam16_46}; // @[Cat.scala 30:58:@3369.8]
  assign _T_1440 = {_T_1439,_T_1438}; // @[Cat.scala 30:58:@3371.8]
  assign _GEN_634 = _T_1155 ? _T_1296 : _T_1440; // @[interleaver.scala 125:30:@3038.6]
  assign dout_46 = _T_1057 ? _T_1151 : _GEN_634; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_369 = _T_717 ? dout_46 : _GEN_277; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_370 = _T_717 ? 4'h0 : _GEN_279; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1115 = {3'h0,dout_qpsk_55}; // @[Cat.scala 30:58:@2995.6]
  assign _T_1241 = {2'h0,dout_qam16_148}; // @[Cat.scala 30:58:@3123.8]
  assign _T_1242 = {_T_1241,dout_qam16_52}; // @[Cat.scala 30:58:@3124.8]
  assign dout_qam16_124 = din_reg[74]; // @[interleaver.scala 118:31:@2701.4]
  assign _T_1385 = {dout_qpsk_88,dout_qam16_124}; // @[Cat.scala 30:58:@3298.8]
  assign dout_qam16_28 = din_reg[66]; // @[interleaver.scala 118:31:@2685.4]
  assign _T_1384 = {dout_qpsk_40,dout_qam16_28}; // @[Cat.scala 30:58:@3297.8]
  assign _T_1386 = {_T_1385,_T_1384}; // @[Cat.scala 30:58:@3299.8]
  assign _GEN_616 = _T_1155 ? _T_1242 : _T_1386; // @[interleaver.scala 125:30:@3038.6]
  assign dout_28 = _T_1057 ? _T_1115 : _GEN_616; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_371 = _T_717 ? dout_28 : _GEN_281; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_372 = _T_717 ? 4'h0 : _GEN_283; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_373 = _T_717 ? 4'h0 : _GEN_285; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1087 = {3'h0,dout_qam16_50}; // @[Cat.scala 30:58:@2967.6]
  assign _T_1199 = {2'h0,dout_bpsk_32}; // @[Cat.scala 30:58:@3081.8]
  assign dout_qpsk_14 = din_reg[34]; // @[interleaver.scala 112:30:@2429.4]
  assign _T_1200 = {_T_1199,dout_qpsk_14}; // @[Cat.scala 30:58:@3082.8]
  assign dout_qam16_158 = din_reg[61]; // @[interleaver.scala 118:31:@2675.4]
  assign _T_1343 = {dout_qam16_158,dout_qpsk_57}; // @[Cat.scala 30:58:@3242.8]
  assign dout_qam16_62 = din_reg[53]; // @[interleaver.scala 118:31:@2659.4]
  assign _T_1342 = {dout_qam16_62,dout_qpsk_9}; // @[Cat.scala 30:58:@3241.8]
  assign _T_1344 = {_T_1343,_T_1342}; // @[Cat.scala 30:58:@3243.8]
  assign _GEN_602 = _T_1155 ? _T_1200 : _T_1344; // @[interleaver.scala 125:30:@3038.6]
  assign dout_14 = _T_1057 ? _T_1087 : _GEN_602; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_374 = _T_717 ? dout_14 : _GEN_287; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1129 = {3'h0,dout_qpsk_68}; // @[Cat.scala 30:58:@3009.6]
  assign dout_qpsk_83 = din_reg[93]; // @[interleaver.scala 112:30:@2547.4]
  assign _T_1262 = {2'h0,dout_qpsk_83}; // @[Cat.scala 30:58:@3144.8]
  assign dout_qpsk_35 = din_reg[85]; // @[interleaver.scala 112:30:@2531.4]
  assign _T_1263 = {_T_1262,dout_qpsk_35}; // @[Cat.scala 30:58:@3145.8]
  assign dout_qam16_179 = din_reg[190]; // @[interleaver.scala 118:31:@2933.4]
  assign dout_qam16_131 = din_reg[186]; // @[interleaver.scala 118:31:@2925.4]
  assign _T_1406 = {dout_qam16_179,dout_qam16_131}; // @[Cat.scala 30:58:@3326.8]
  assign dout_qam16_83 = din_reg[182]; // @[interleaver.scala 118:31:@2917.4]
  assign dout_qam16_35 = din_reg[178]; // @[interleaver.scala 118:31:@2909.4]
  assign _T_1405 = {dout_qam16_83,dout_qam16_35}; // @[Cat.scala 30:58:@3325.8]
  assign _T_1407 = {_T_1406,_T_1405}; // @[Cat.scala 30:58:@3327.8]
  assign _GEN_623 = _T_1155 ? _T_1263 : _T_1407; // @[interleaver.scala 125:30:@3038.6]
  assign dout_35 = _T_1057 ? _T_1129 : _GEN_623; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_375 = _T_717 ? dout_35 : _GEN_289; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1071 = {3'h0,dout_qam16_24}; // @[Cat.scala 30:58:@2951.6]
  assign _T_1175 = {2'h0,dout_bpsk_27}; // @[Cat.scala 30:58:@3057.8]
  assign _T_1176 = {_T_1175,dout_qam16_13}; // @[Cat.scala 30:58:@3058.8]
  assign dout_qam16_150 = din_reg[108]; // @[interleaver.scala 118:31:@2769.4]
  assign dout_qam16_102 = din_reg[104]; // @[interleaver.scala 118:31:@2761.4]
  assign _T_1319 = {dout_qam16_150,dout_qam16_102}; // @[Cat.scala 30:58:@3210.8]
  assign dout_qam16_54 = din_reg[100]; // @[interleaver.scala 118:31:@2753.4]
  assign dout_qam16_6 = din_reg[96]; // @[interleaver.scala 118:31:@2745.4]
  assign _T_1318 = {dout_qam16_54,dout_qam16_6}; // @[Cat.scala 30:58:@3209.8]
  assign _T_1320 = {_T_1319,_T_1318}; // @[Cat.scala 30:58:@3211.8]
  assign _GEN_594 = _T_1155 ? _T_1176 : _T_1320; // @[interleaver.scala 125:30:@3038.6]
  assign dout_6 = _T_1057 ? _T_1071 : _GEN_594; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_376 = _T_717 ? dout_6 : _GEN_291; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_377 = _T_717 ? 4'h0 : _GEN_293; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1101 = {3'h0,dout_qpsk_42}; // @[Cat.scala 30:58:@2981.6]
  assign _T_1220 = {2'h0,dout_qam16_134}; // @[Cat.scala 30:58:@3102.8]
  assign _T_1221 = {_T_1220,dout_qam16_38}; // @[Cat.scala 30:58:@3103.8]
  assign dout_qam16_165 = din_reg[141]; // @[interleaver.scala 118:31:@2835.4]
  assign dout_qam16_117 = din_reg[137]; // @[interleaver.scala 118:31:@2827.4]
  assign _T_1364 = {dout_qam16_165,dout_qam16_117}; // @[Cat.scala 30:58:@3270.8]
  assign dout_qam16_69 = din_reg[133]; // @[interleaver.scala 118:31:@2819.4]
  assign dout_qam16_21 = din_reg[129]; // @[interleaver.scala 118:31:@2811.4]
  assign _T_1363 = {dout_qam16_69,dout_qam16_21}; // @[Cat.scala 30:58:@3269.8]
  assign _T_1365 = {_T_1364,_T_1363}; // @[Cat.scala 30:58:@3271.8]
  assign _GEN_609 = _T_1155 ? _T_1221 : _T_1365; // @[interleaver.scala 125:30:@3038.6]
  assign dout_21 = _T_1057 ? _T_1101 : _GEN_609; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_378 = _T_717 ? dout_21 : _GEN_295; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1111 = {3'h0,dout_qpsk_50}; // @[Cat.scala 30:58:@2991.6]
  assign _T_1235 = {2'h0,dout_bpsk_38}; // @[Cat.scala 30:58:@3117.8]
  assign _T_1236 = {_T_1235,dout_qam16_50}; // @[Cat.scala 30:58:@3118.8]
  assign _T_1379 = {dout_qpsk_86,dout_bpsk_32}; // @[Cat.scala 30:58:@3290.8]
  assign _T_1378 = {dout_qpsk_38,dout_qpsk_14}; // @[Cat.scala 30:58:@3289.8]
  assign _T_1380 = {_T_1379,_T_1378}; // @[Cat.scala 30:58:@3291.8]
  assign _GEN_614 = _T_1155 ? _T_1236 : _T_1380; // @[interleaver.scala 125:30:@3038.6]
  assign dout_26 = _T_1057 ? _T_1111 : _GEN_614; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_379 = _T_717 ? dout_26 : _GEN_297; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_380 = _T_717 ? 4'h0 : _GEN_299; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1141 = {3'h0,dout_qpsk_80}; // @[Cat.scala 30:58:@3021.6]
  assign _T_1280 = {2'h0,dout_qam16_173}; // @[Cat.scala 30:58:@3162.8]
  assign _T_1281 = {_T_1280,dout_qam16_77}; // @[Cat.scala 30:58:@3163.8]
  assign _T_1424 = {dout_qpsk_94,dout_qpsk_70}; // @[Cat.scala 30:58:@3350.8]
  assign _T_1423 = {dout_qpsk_46,dout_qpsk_22}; // @[Cat.scala 30:58:@3349.8]
  assign _T_1425 = {_T_1424,_T_1423}; // @[Cat.scala 30:58:@3351.8]
  assign _GEN_629 = _T_1155 ? _T_1281 : _T_1425; // @[interleaver.scala 125:30:@3038.6]
  assign dout_41 = _T_1057 ? _T_1141 : _GEN_629; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_381 = _T_717 ? dout_41 : _GEN_301; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1083 = {3'h0,dout_qam16_48}; // @[Cat.scala 30:58:@2963.6]
  assign _T_1193 = {2'h0,dout_bpsk_30}; // @[Cat.scala 30:58:@3075.8]
  assign _T_1194 = {_T_1193,dout_qam16_24}; // @[Cat.scala 30:58:@3076.8]
  assign _T_1337 = {dout_bpsk_40,dout_qpsk_55}; // @[Cat.scala 30:58:@3234.8]
  assign _T_1336 = {dout_qpsk_31,dout_bpsk_4}; // @[Cat.scala 30:58:@3233.8]
  assign _T_1338 = {_T_1337,_T_1336}; // @[Cat.scala 30:58:@3235.8]
  assign _GEN_600 = _T_1155 ? _T_1194 : _T_1338; // @[interleaver.scala 125:30:@3038.6]
  assign dout_12 = _T_1057 ? _T_1083 : _GEN_600; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_382 = _T_717 ? dout_12 : _GEN_303; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1125 = {3'h0,dout_qpsk_66}; // @[Cat.scala 30:58:@3005.6]
  assign _T_1256 = {2'h0,dout_qam16_158}; // @[Cat.scala 30:58:@3138.8]
  assign _T_1257 = {_T_1256,dout_qam16_62}; // @[Cat.scala 30:58:@3139.8]
  assign dout_qam16_177 = din_reg[158]; // @[interleaver.scala 118:31:@2869.4]
  assign dout_qam16_129 = din_reg[154]; // @[interleaver.scala 118:31:@2861.4]
  assign _T_1400 = {dout_qam16_177,dout_qam16_129}; // @[Cat.scala 30:58:@3318.8]
  assign dout_qam16_81 = din_reg[150]; // @[interleaver.scala 118:31:@2853.4]
  assign dout_qam16_33 = din_reg[146]; // @[interleaver.scala 118:31:@2845.4]
  assign _T_1399 = {dout_qam16_81,dout_qam16_33}; // @[Cat.scala 30:58:@3317.8]
  assign _T_1401 = {_T_1400,_T_1399}; // @[Cat.scala 30:58:@3319.8]
  assign _GEN_621 = _T_1155 ? _T_1257 : _T_1401; // @[interleaver.scala 125:30:@3038.6]
  assign dout_33 = _T_1057 ? _T_1125 : _GEN_621; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_383 = _T_717 ? dout_33 : _GEN_305; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_384 = _T_717 ? 4'h0 : _GEN_307; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_385 = _T_717 ? 4'h0 : _GEN_309; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1097 = {3'h0,dout_qam16_73}; // @[Cat.scala 30:58:@2977.6]
  assign _T_1214 = {2'h0,dout_bpsk_34}; // @[Cat.scala 30:58:@3096.8]
  assign _T_1215 = {_T_1214,dout_qam16_36}; // @[Cat.scala 30:58:@3097.8]
  assign dout_qam16_163 = din_reg[109]; // @[interleaver.scala 118:31:@2771.4]
  assign dout_qam16_115 = din_reg[105]; // @[interleaver.scala 118:31:@2763.4]
  assign _T_1358 = {dout_qam16_163,dout_qam16_115}; // @[Cat.scala 30:58:@3262.8]
  assign dout_qam16_67 = din_reg[101]; // @[interleaver.scala 118:31:@2755.4]
  assign dout_qam16_19 = din_reg[97]; // @[interleaver.scala 118:31:@2747.4]
  assign _T_1357 = {dout_qam16_67,dout_qam16_19}; // @[Cat.scala 30:58:@3261.8]
  assign _T_1359 = {_T_1358,_T_1357}; // @[Cat.scala 30:58:@3263.8]
  assign _GEN_607 = _T_1155 ? _T_1215 : _T_1359; // @[interleaver.scala 125:30:@3038.6]
  assign dout_19 = _T_1057 ? _T_1097 : _GEN_607; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_386 = _T_717 ? dout_19 : _GEN_311; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_387 = _T_717 ? 4'h0 : _GEN_313; // @[Conditional.scala 39:67:@2060.6]
  assign dout_bpsk_1 = din_reg[16]; // @[interleaver.scala 106:30:@2297.4]
  assign _T_1061 = {3'h0,dout_bpsk_1}; // @[Cat.scala 30:58:@2941.6]
  assign _T_1160 = {2'h0,dout_bpsk_25}; // @[Cat.scala 30:58:@3042.8]
  assign _T_1161 = {_T_1160,dout_bpsk_1}; // @[Cat.scala 30:58:@3043.8]
  assign _T_1304 = {dout_qpsk_73,dout_bpsk_25}; // @[Cat.scala 30:58:@3190.8]
  assign _T_1303 = {dout_bpsk_13,dout_bpsk_1}; // @[Cat.scala 30:58:@3189.8]
  assign _T_1305 = {_T_1304,_T_1303}; // @[Cat.scala 30:58:@3191.8]
  assign _GEN_589 = _T_1155 ? _T_1161 : _T_1305; // @[interleaver.scala 125:30:@3038.6]
  assign dout_1 = _T_1057 ? _T_1061 : _GEN_589; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_388 = _T_717 ? dout_1 : _GEN_315; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1147 = {3'h0,dout_qpsk_86}; // @[Cat.scala 30:58:@3027.6]
  assign _T_1289 = {2'h0,dout_bpsk_47}; // @[Cat.scala 30:58:@3171.8]
  assign _T_1290 = {_T_1289,dout_qam16_87}; // @[Cat.scala 30:58:@3172.8]
  assign dout_qam16_188 = din_reg[159]; // @[interleaver.scala 118:31:@2871.4]
  assign dout_qam16_140 = din_reg[155]; // @[interleaver.scala 118:31:@2863.4]
  assign _T_1433 = {dout_qam16_188,dout_qam16_140}; // @[Cat.scala 30:58:@3362.8]
  assign dout_qam16_92 = din_reg[151]; // @[interleaver.scala 118:31:@2855.4]
  assign dout_qam16_44 = din_reg[147]; // @[interleaver.scala 118:31:@2847.4]
  assign _T_1432 = {dout_qam16_92,dout_qam16_44}; // @[Cat.scala 30:58:@3361.8]
  assign _T_1434 = {_T_1433,_T_1432}; // @[Cat.scala 30:58:@3363.8]
  assign _GEN_632 = _T_1155 ? _T_1290 : _T_1434; // @[interleaver.scala 125:30:@3038.6]
  assign dout_44 = _T_1057 ? _T_1147 : _GEN_632; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_389 = _T_717 ? dout_44 : _GEN_317; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1091 = {3'h0,dout_qpsk_31}; // @[Cat.scala 30:58:@2971.6]
  assign _T_1205 = {2'h0,dout_qam16_124}; // @[Cat.scala 30:58:@3087.8]
  assign _T_1206 = {_T_1205,dout_qam16_28}; // @[Cat.scala 30:58:@3088.8]
  assign _T_1349 = {dout_qpsk_83,dout_qpsk_59}; // @[Cat.scala 30:58:@3250.8]
  assign _T_1348 = {dout_qpsk_35,dout_qpsk_11}; // @[Cat.scala 30:58:@3249.8]
  assign _T_1350 = {_T_1349,_T_1348}; // @[Cat.scala 30:58:@3251.8]
  assign _GEN_604 = _T_1155 ? _T_1206 : _T_1350; // @[interleaver.scala 125:30:@3038.6]
  assign dout_16 = _T_1057 ? _T_1091 : _GEN_604; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_390 = _T_717 ? dout_16 : _GEN_319; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1133 = {3'h0,dout_qpsk_73}; // @[Cat.scala 30:58:@3013.6]
  assign _T_1268 = {2'h0,dout_qam16_169}; // @[Cat.scala 30:58:@3150.8]
  assign _T_1269 = {_T_1268,dout_qam16_73}; // @[Cat.scala 30:58:@3151.8]
  assign _T_1412 = {dout_bpsk_45,dout_qpsk_66}; // @[Cat.scala 30:58:@3334.8]
  assign _T_1411 = {dout_qpsk_42,dout_bpsk_9}; // @[Cat.scala 30:58:@3333.8]
  assign _T_1413 = {_T_1412,_T_1411}; // @[Cat.scala 30:58:@3335.8]
  assign _GEN_625 = _T_1155 ? _T_1269 : _T_1413; // @[interleaver.scala 125:30:@3038.6]
  assign dout_37 = _T_1057 ? _T_1133 : _GEN_625; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_391 = _T_717 ? dout_37 : _GEN_321; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1075 = {3'h0,dout_qpsk_14}; // @[Cat.scala 30:58:@2955.6]
  assign _T_1181 = {2'h0,dout_bpsk_29}; // @[Cat.scala 30:58:@3063.8]
  assign _T_1182 = {_T_1181,dout_bpsk_5}; // @[Cat.scala 30:58:@3064.8]
  assign dout_qam16_152 = din_reg[140]; // @[interleaver.scala 118:31:@2833.4]
  assign dout_qam16_104 = din_reg[136]; // @[interleaver.scala 118:31:@2825.4]
  assign _T_1325 = {dout_qam16_152,dout_qam16_104}; // @[Cat.scala 30:58:@3218.8]
  assign dout_qam16_56 = din_reg[132]; // @[interleaver.scala 118:31:@2817.4]
  assign dout_qam16_8 = din_reg[128]; // @[interleaver.scala 118:31:@2809.4]
  assign _T_1324 = {dout_qam16_56,dout_qam16_8}; // @[Cat.scala 30:58:@3217.8]
  assign _T_1326 = {_T_1325,_T_1324}; // @[Cat.scala 30:58:@3219.8]
  assign _GEN_596 = _T_1155 ? _T_1182 : _T_1326; // @[interleaver.scala 125:30:@3038.6]
  assign dout_8 = _T_1057 ? _T_1075 : _GEN_596; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_392 = _T_717 ? dout_8 : _GEN_323; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_393 = _T_717 ? 4'h0 : _GEN_325; // @[Conditional.scala 39:67:@2060.6]
  assign _T_1105 = {3'h0,dout_qam16_87}; // @[Cat.scala 30:58:@2985.6]
  assign _T_1226 = {2'h0,dout_qam16_136}; // @[Cat.scala 30:58:@3108.8]
  assign _T_1227 = {_T_1226,dout_qam16_40}; // @[Cat.scala 30:58:@3109.8]
  assign dout_qam16_167 = din_reg[173]; // @[interleaver.scala 118:31:@2899.4]
  assign dout_qam16_119 = din_reg[169]; // @[interleaver.scala 118:31:@2891.4]
  assign _T_1370 = {dout_qam16_167,dout_qam16_119}; // @[Cat.scala 30:58:@3278.8]
  assign dout_qam16_71 = din_reg[165]; // @[interleaver.scala 118:31:@2883.4]
  assign dout_qam16_23 = din_reg[161]; // @[interleaver.scala 118:31:@2875.4]
  assign _T_1369 = {dout_qam16_71,dout_qam16_23}; // @[Cat.scala 30:58:@3277.8]
  assign _T_1371 = {_T_1370,_T_1369}; // @[Cat.scala 30:58:@3279.8]
  assign _GEN_611 = _T_1155 ? _T_1227 : _T_1371; // @[interleaver.scala 125:30:@3038.6]
  assign dout_23 = _T_1057 ? _T_1105 : _GEN_611; // @[interleaver.scala 121:23:@2938.4]
  assign _GEN_394 = _T_717 ? dout_23 : _GEN_327; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_395 = _T_717 ? _GEN_5 : _GEN_202; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_396 = _T_717 ? _GEN_37 : _GEN_204; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_397 = _T_717 ? _GEN_21 : _GEN_206; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_398 = _T_717 ? _GEN_53 : _GEN_208; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_399 = _T_717 ? _GEN_13 : _GEN_210; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_400 = _T_717 ? _GEN_45 : _GEN_212; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_401 = _T_717 ? _GEN_29 : _GEN_214; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_402 = _T_717 ? _GEN_61 : _GEN_216; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_403 = _T_717 ? _GEN_9 : _GEN_218; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_404 = _T_717 ? _GEN_41 : _GEN_220; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_405 = _T_717 ? _GEN_25 : _GEN_222; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_406 = _T_717 ? _GEN_57 : _GEN_224; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_407 = _T_717 ? _GEN_17 : _GEN_226; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_408 = _T_717 ? _GEN_49 : _GEN_228; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_409 = _T_717 ? _GEN_33 : _GEN_230; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_410 = _T_717 ? _GEN_65 : _GEN_232; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_411 = _T_717 ? _GEN_7 : _GEN_234; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_412 = _T_717 ? _GEN_39 : _GEN_236; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_413 = _T_717 ? _GEN_23 : _GEN_238; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_414 = _T_717 ? _GEN_55 : _GEN_240; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_415 = _T_717 ? _GEN_15 : _GEN_242; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_416 = _T_717 ? _GEN_47 : _GEN_244; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_417 = _T_717 ? _GEN_31 : _GEN_246; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_418 = _T_717 ? _GEN_63 : _GEN_248; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_419 = _T_717 ? _GEN_11 : _GEN_250; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_420 = _T_717 ? _GEN_43 : _GEN_252; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_421 = _T_717 ? _GEN_27 : _GEN_254; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_422 = _T_717 ? _GEN_59 : _GEN_256; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_423 = _T_717 ? _GEN_19 : _GEN_258; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_424 = _T_717 ? _GEN_51 : _GEN_260; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_425 = _T_717 ? _GEN_35 : _GEN_262; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_426 = _T_717 ? _GEN_67 : _GEN_264; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_427 = _T_717 ? _GEN_6 : _GEN_266; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_428 = _T_717 ? _GEN_38 : _GEN_268; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_429 = _T_717 ? _GEN_22 : _GEN_270; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_430 = _T_717 ? _GEN_54 : _GEN_272; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_431 = _T_717 ? _GEN_14 : _GEN_274; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_432 = _T_717 ? _GEN_46 : _GEN_276; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_433 = _T_717 ? _GEN_30 : _GEN_278; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_434 = _T_717 ? _GEN_62 : _GEN_280; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_435 = _T_717 ? _GEN_10 : _GEN_282; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_436 = _T_717 ? _GEN_42 : _GEN_284; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_437 = _T_717 ? _GEN_26 : _GEN_286; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_438 = _T_717 ? _GEN_58 : _GEN_288; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_439 = _T_717 ? _GEN_18 : _GEN_290; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_440 = _T_717 ? _GEN_50 : _GEN_292; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_441 = _T_717 ? _GEN_34 : _GEN_294; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_442 = _T_717 ? _GEN_66 : _GEN_296; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_443 = _T_717 ? _GEN_8 : _GEN_298; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_444 = _T_717 ? _GEN_40 : _GEN_300; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_445 = _T_717 ? _GEN_24 : _GEN_302; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_446 = _T_717 ? _GEN_56 : _GEN_304; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_447 = _T_717 ? _GEN_16 : _GEN_306; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_448 = _T_717 ? _GEN_48 : _GEN_308; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_449 = _T_717 ? _GEN_32 : _GEN_310; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_450 = _T_717 ? _GEN_64 : _GEN_312; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_451 = _T_717 ? _GEN_12 : _GEN_314; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_452 = _T_717 ? _GEN_44 : _GEN_316; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_453 = _T_717 ? _GEN_28 : _GEN_318; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_454 = _T_717 ? _GEN_60 : _GEN_320; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_455 = _T_717 ? _GEN_20 : _GEN_322; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_456 = _T_717 ? _GEN_52 : _GEN_324; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_457 = _T_717 ? _GEN_36 : _GEN_326; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_458 = _T_717 ? _GEN_68 : _GEN_328; // @[Conditional.scala 39:67:@2060.6]
  assign _GEN_459 = _T_716 ? _GEN_70 : _GEN_330; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_460 = _T_716 ? dout_reg_0 : _GEN_331; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_461 = _T_716 ? dout_reg_1 : _GEN_332; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_462 = _T_716 ? dout_reg_2 : _GEN_333; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_463 = _T_716 ? dout_reg_3 : _GEN_334; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_464 = _T_716 ? dout_reg_4 : _GEN_335; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_465 = _T_716 ? dout_reg_5 : _GEN_336; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_466 = _T_716 ? dout_reg_6 : _GEN_337; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_467 = _T_716 ? dout_reg_7 : _GEN_338; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_468 = _T_716 ? dout_reg_8 : _GEN_339; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_469 = _T_716 ? dout_reg_9 : _GEN_340; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_470 = _T_716 ? dout_reg_10 : _GEN_341; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_471 = _T_716 ? dout_reg_11 : _GEN_342; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_472 = _T_716 ? dout_reg_12 : _GEN_343; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_473 = _T_716 ? dout_reg_13 : _GEN_344; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_474 = _T_716 ? dout_reg_14 : _GEN_345; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_475 = _T_716 ? dout_reg_15 : _GEN_346; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_476 = _T_716 ? dout_reg_16 : _GEN_347; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_477 = _T_716 ? dout_reg_17 : _GEN_348; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_478 = _T_716 ? dout_reg_18 : _GEN_349; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_479 = _T_716 ? dout_reg_19 : _GEN_350; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_480 = _T_716 ? dout_reg_20 : _GEN_351; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_481 = _T_716 ? dout_reg_21 : _GEN_352; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_482 = _T_716 ? dout_reg_22 : _GEN_353; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_483 = _T_716 ? dout_reg_23 : _GEN_354; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_484 = _T_716 ? dout_reg_24 : _GEN_355; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_485 = _T_716 ? dout_reg_25 : _GEN_356; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_486 = _T_716 ? dout_reg_26 : _GEN_357; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_487 = _T_716 ? dout_reg_27 : _GEN_358; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_488 = _T_716 ? dout_reg_28 : _GEN_359; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_489 = _T_716 ? dout_reg_29 : _GEN_360; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_490 = _T_716 ? dout_reg_30 : _GEN_361; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_491 = _T_716 ? dout_reg_31 : _GEN_362; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_492 = _T_716 ? dout_reg_32 : _GEN_363; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_493 = _T_716 ? dout_reg_33 : _GEN_364; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_494 = _T_716 ? dout_reg_34 : _GEN_365; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_495 = _T_716 ? dout_reg_35 : _GEN_366; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_496 = _T_716 ? dout_reg_36 : _GEN_367; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_497 = _T_716 ? dout_reg_37 : _GEN_368; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_498 = _T_716 ? dout_reg_38 : _GEN_369; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_499 = _T_716 ? dout_reg_39 : _GEN_370; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_500 = _T_716 ? dout_reg_40 : _GEN_371; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_501 = _T_716 ? dout_reg_41 : _GEN_372; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_502 = _T_716 ? dout_reg_42 : _GEN_373; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_503 = _T_716 ? dout_reg_43 : _GEN_374; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_504 = _T_716 ? dout_reg_44 : _GEN_375; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_505 = _T_716 ? dout_reg_45 : _GEN_376; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_506 = _T_716 ? dout_reg_46 : _GEN_377; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_507 = _T_716 ? dout_reg_47 : _GEN_378; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_508 = _T_716 ? dout_reg_48 : _GEN_379; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_509 = _T_716 ? dout_reg_49 : _GEN_380; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_510 = _T_716 ? dout_reg_50 : _GEN_381; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_511 = _T_716 ? dout_reg_51 : _GEN_382; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_512 = _T_716 ? dout_reg_52 : _GEN_383; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_513 = _T_716 ? dout_reg_53 : _GEN_384; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_514 = _T_716 ? dout_reg_54 : _GEN_385; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_515 = _T_716 ? dout_reg_55 : _GEN_386; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_516 = _T_716 ? dout_reg_56 : _GEN_387; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_517 = _T_716 ? dout_reg_57 : _GEN_388; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_518 = _T_716 ? dout_reg_58 : _GEN_389; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_519 = _T_716 ? dout_reg_59 : _GEN_390; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_520 = _T_716 ? dout_reg_60 : _GEN_391; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_521 = _T_716 ? dout_reg_61 : _GEN_392; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_522 = _T_716 ? dout_reg_62 : _GEN_393; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_523 = _T_716 ? dout_reg_63 : _GEN_394; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_524 = _T_716 ? _GEN_5 : _GEN_395; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_525 = _T_716 ? _GEN_37 : _GEN_396; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_526 = _T_716 ? _GEN_21 : _GEN_397; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_527 = _T_716 ? _GEN_53 : _GEN_398; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_528 = _T_716 ? _GEN_13 : _GEN_399; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_529 = _T_716 ? _GEN_45 : _GEN_400; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_530 = _T_716 ? _GEN_29 : _GEN_401; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_531 = _T_716 ? _GEN_61 : _GEN_402; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_532 = _T_716 ? _GEN_9 : _GEN_403; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_533 = _T_716 ? _GEN_41 : _GEN_404; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_534 = _T_716 ? _GEN_25 : _GEN_405; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_535 = _T_716 ? _GEN_57 : _GEN_406; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_536 = _T_716 ? _GEN_17 : _GEN_407; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_537 = _T_716 ? _GEN_49 : _GEN_408; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_538 = _T_716 ? _GEN_33 : _GEN_409; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_539 = _T_716 ? _GEN_65 : _GEN_410; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_540 = _T_716 ? _GEN_7 : _GEN_411; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_541 = _T_716 ? _GEN_39 : _GEN_412; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_542 = _T_716 ? _GEN_23 : _GEN_413; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_543 = _T_716 ? _GEN_55 : _GEN_414; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_544 = _T_716 ? _GEN_15 : _GEN_415; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_545 = _T_716 ? _GEN_47 : _GEN_416; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_546 = _T_716 ? _GEN_31 : _GEN_417; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_547 = _T_716 ? _GEN_63 : _GEN_418; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_548 = _T_716 ? _GEN_11 : _GEN_419; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_549 = _T_716 ? _GEN_43 : _GEN_420; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_550 = _T_716 ? _GEN_27 : _GEN_421; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_551 = _T_716 ? _GEN_59 : _GEN_422; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_552 = _T_716 ? _GEN_19 : _GEN_423; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_553 = _T_716 ? _GEN_51 : _GEN_424; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_554 = _T_716 ? _GEN_35 : _GEN_425; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_555 = _T_716 ? _GEN_67 : _GEN_426; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_556 = _T_716 ? _GEN_6 : _GEN_427; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_557 = _T_716 ? _GEN_38 : _GEN_428; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_558 = _T_716 ? _GEN_22 : _GEN_429; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_559 = _T_716 ? _GEN_54 : _GEN_430; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_560 = _T_716 ? _GEN_14 : _GEN_431; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_561 = _T_716 ? _GEN_46 : _GEN_432; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_562 = _T_716 ? _GEN_30 : _GEN_433; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_563 = _T_716 ? _GEN_62 : _GEN_434; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_564 = _T_716 ? _GEN_10 : _GEN_435; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_565 = _T_716 ? _GEN_42 : _GEN_436; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_566 = _T_716 ? _GEN_26 : _GEN_437; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_567 = _T_716 ? _GEN_58 : _GEN_438; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_568 = _T_716 ? _GEN_18 : _GEN_439; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_569 = _T_716 ? _GEN_50 : _GEN_440; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_570 = _T_716 ? _GEN_34 : _GEN_441; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_571 = _T_716 ? _GEN_66 : _GEN_442; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_572 = _T_716 ? _GEN_8 : _GEN_443; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_573 = _T_716 ? _GEN_40 : _GEN_444; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_574 = _T_716 ? _GEN_24 : _GEN_445; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_575 = _T_716 ? _GEN_56 : _GEN_446; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_576 = _T_716 ? _GEN_16 : _GEN_447; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_577 = _T_716 ? _GEN_48 : _GEN_448; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_578 = _T_716 ? _GEN_32 : _GEN_449; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_579 = _T_716 ? _GEN_64 : _GEN_450; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_580 = _T_716 ? _GEN_12 : _GEN_451; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_581 = _T_716 ? _GEN_44 : _GEN_452; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_582 = _T_716 ? _GEN_28 : _GEN_453; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_583 = _T_716 ? _GEN_60 : _GEN_454; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_584 = _T_716 ? _GEN_20 : _GEN_455; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_585 = _T_716 ? _GEN_52 : _GEN_456; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_586 = _T_716 ? _GEN_36 : _GEN_457; // @[Conditional.scala 40:58:@2053.4]
  assign _GEN_587 = _T_716 ? _GEN_68 : _GEN_458; // @[Conditional.scala 40:58:@2053.4]
  assign io_dout_tag = dtag_reg_0;
  assign io_dout_cnt = value;
  assign io_dout_valid = _T_706;
  assign io_dout_bits = dout_reg_0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  mode = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  dout_reg_0 = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  dout_reg_1 = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  dout_reg_2 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  dout_reg_3 = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  dout_reg_4 = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  dout_reg_5 = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  dout_reg_6 = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  dout_reg_7 = _RAND_8[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  dout_reg_8 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  dout_reg_9 = _RAND_10[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  dout_reg_10 = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  dout_reg_11 = _RAND_12[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  dout_reg_12 = _RAND_13[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  dout_reg_13 = _RAND_14[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  dout_reg_14 = _RAND_15[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  dout_reg_15 = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  dout_reg_16 = _RAND_17[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  dout_reg_17 = _RAND_18[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  dout_reg_18 = _RAND_19[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  dout_reg_19 = _RAND_20[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  dout_reg_20 = _RAND_21[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  dout_reg_21 = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  dout_reg_22 = _RAND_23[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  dout_reg_23 = _RAND_24[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  dout_reg_24 = _RAND_25[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  dout_reg_25 = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  dout_reg_26 = _RAND_27[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  dout_reg_27 = _RAND_28[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  dout_reg_28 = _RAND_29[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  dout_reg_29 = _RAND_30[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  dout_reg_30 = _RAND_31[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  dout_reg_31 = _RAND_32[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  dout_reg_32 = _RAND_33[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  dout_reg_33 = _RAND_34[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  dout_reg_34 = _RAND_35[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  dout_reg_35 = _RAND_36[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  dout_reg_36 = _RAND_37[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  dout_reg_37 = _RAND_38[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  dout_reg_38 = _RAND_39[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  dout_reg_39 = _RAND_40[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  dout_reg_40 = _RAND_41[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  dout_reg_41 = _RAND_42[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  dout_reg_42 = _RAND_43[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  dout_reg_43 = _RAND_44[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  dout_reg_44 = _RAND_45[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  dout_reg_45 = _RAND_46[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  dout_reg_46 = _RAND_47[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  dout_reg_47 = _RAND_48[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  dout_reg_48 = _RAND_49[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  dout_reg_49 = _RAND_50[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  dout_reg_50 = _RAND_51[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  dout_reg_51 = _RAND_52[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  dout_reg_52 = _RAND_53[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  dout_reg_53 = _RAND_54[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  dout_reg_54 = _RAND_55[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  dout_reg_55 = _RAND_56[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  dout_reg_56 = _RAND_57[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  dout_reg_57 = _RAND_58[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  dout_reg_58 = _RAND_59[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  dout_reg_59 = _RAND_60[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  dout_reg_60 = _RAND_61[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  dout_reg_61 = _RAND_62[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  dout_reg_62 = _RAND_63[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  dout_reg_63 = _RAND_64[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  dtag_reg_0 = _RAND_65[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  dtag_reg_1 = _RAND_66[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  dtag_reg_2 = _RAND_67[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  dtag_reg_3 = _RAND_68[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  dtag_reg_4 = _RAND_69[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  dtag_reg_5 = _RAND_70[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  dtag_reg_6 = _RAND_71[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  dtag_reg_7 = _RAND_72[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  dtag_reg_8 = _RAND_73[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  dtag_reg_9 = _RAND_74[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  dtag_reg_10 = _RAND_75[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  dtag_reg_11 = _RAND_76[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{$random}};
  dtag_reg_12 = _RAND_77[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{$random}};
  dtag_reg_13 = _RAND_78[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  dtag_reg_14 = _RAND_79[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  dtag_reg_15 = _RAND_80[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  dtag_reg_16 = _RAND_81[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  dtag_reg_17 = _RAND_82[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  dtag_reg_18 = _RAND_83[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  dtag_reg_19 = _RAND_84[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  dtag_reg_20 = _RAND_85[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  dtag_reg_21 = _RAND_86[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  dtag_reg_22 = _RAND_87[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{$random}};
  dtag_reg_23 = _RAND_88[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{$random}};
  dtag_reg_24 = _RAND_89[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{$random}};
  dtag_reg_25 = _RAND_90[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{$random}};
  dtag_reg_26 = _RAND_91[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{$random}};
  dtag_reg_27 = _RAND_92[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{$random}};
  dtag_reg_28 = _RAND_93[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{$random}};
  dtag_reg_29 = _RAND_94[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{$random}};
  dtag_reg_30 = _RAND_95[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{$random}};
  dtag_reg_31 = _RAND_96[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{$random}};
  dtag_reg_32 = _RAND_97[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{$random}};
  dtag_reg_33 = _RAND_98[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{$random}};
  dtag_reg_34 = _RAND_99[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{$random}};
  dtag_reg_35 = _RAND_100[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{$random}};
  dtag_reg_36 = _RAND_101[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{$random}};
  dtag_reg_37 = _RAND_102[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{$random}};
  dtag_reg_38 = _RAND_103[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{$random}};
  dtag_reg_39 = _RAND_104[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{$random}};
  dtag_reg_40 = _RAND_105[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{$random}};
  dtag_reg_41 = _RAND_106[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{$random}};
  dtag_reg_42 = _RAND_107[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{$random}};
  dtag_reg_43 = _RAND_108[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{$random}};
  dtag_reg_44 = _RAND_109[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{$random}};
  dtag_reg_45 = _RAND_110[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{$random}};
  dtag_reg_46 = _RAND_111[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{$random}};
  dtag_reg_47 = _RAND_112[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{$random}};
  dtag_reg_48 = _RAND_113[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{$random}};
  dtag_reg_49 = _RAND_114[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{$random}};
  dtag_reg_50 = _RAND_115[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{$random}};
  dtag_reg_51 = _RAND_116[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{$random}};
  dtag_reg_52 = _RAND_117[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{$random}};
  dtag_reg_53 = _RAND_118[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{$random}};
  dtag_reg_54 = _RAND_119[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{$random}};
  dtag_reg_55 = _RAND_120[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{$random}};
  dtag_reg_56 = _RAND_121[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{$random}};
  dtag_reg_57 = _RAND_122[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{$random}};
  dtag_reg_58 = _RAND_123[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{$random}};
  dtag_reg_59 = _RAND_124[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{$random}};
  dtag_reg_60 = _RAND_125[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{$random}};
  dtag_reg_61 = _RAND_126[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{$random}};
  dtag_reg_62 = _RAND_127[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{$random}};
  dtag_reg_63 = _RAND_128[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {2{$random}};
  din_regs_0 = _RAND_129[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {2{$random}};
  din_regs_1 = _RAND_130[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {2{$random}};
  din_regs_2 = _RAND_131[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {2{$random}};
  din_regs_3 = _RAND_132[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{$random}};
  state = _RAND_133[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{$random}};
  value = _RAND_134[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_start) begin
      mode <= io_mode;
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_0 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_0 <= dout_reg_1;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_1 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_1 <= dout_reg_2;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_2 <= _T_1135;
        end else begin
          if (_T_1155) begin
            dout_reg_2 <= _T_1272;
          end else begin
            dout_reg_2 <= _T_1416;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_2 <= dout_reg_3;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_3 <= _T_1077;
        end else begin
          if (_T_1155) begin
            dout_reg_3 <= _T_1185;
          end else begin
            dout_reg_3 <= _T_1329;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_3 <= dout_reg_4;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_4 <= _T_1119;
        end else begin
          if (_T_1155) begin
            dout_reg_4 <= _T_1248;
          end else begin
            dout_reg_4 <= _T_1392;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_4 <= dout_reg_5;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_5 <= _T_1063;
        end else begin
          if (_T_1155) begin
            dout_reg_5 <= _T_1164;
          end else begin
            dout_reg_5 <= _T_1308;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_5 <= dout_reg_6;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_6 <= _T_1149;
        end else begin
          if (_T_1155) begin
            dout_reg_6 <= _T_1293;
          end else begin
            dout_reg_6 <= _T_1437;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_6 <= dout_reg_7;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_7 <= _T_1093;
        end else begin
          if (_T_1155) begin
            dout_reg_7 <= _T_1209;
          end else begin
            dout_reg_7 <= _T_1353;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_7 <= dout_reg_8;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_8 <= _T_1113;
        end else begin
          if (_T_1155) begin
            dout_reg_8 <= _T_1239;
          end else begin
            dout_reg_8 <= _T_1383;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_8 <= dout_reg_9;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_9 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_9 <= dout_reg_10;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_10 <= _T_1143;
        end else begin
          if (_T_1155) begin
            dout_reg_10 <= _T_1284;
          end else begin
            dout_reg_10 <= _T_1428;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_10 <= dout_reg_11;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_11 <= _T_1085;
        end else begin
          if (_T_1155) begin
            dout_reg_11 <= _T_1197;
          end else begin
            dout_reg_11 <= _T_1341;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_11 <= dout_reg_12;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_12 <= _T_1127;
        end else begin
          if (_T_1155) begin
            dout_reg_12 <= _T_1260;
          end else begin
            dout_reg_12 <= _T_1404;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_12 <= dout_reg_13;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_13 <= _T_1069;
        end else begin
          if (_T_1155) begin
            dout_reg_13 <= _T_1173;
          end else begin
            dout_reg_13 <= _T_1317;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_13 <= dout_reg_14;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_14 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_14 <= dout_reg_15;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_15 <= _T_1099;
        end else begin
          if (_T_1155) begin
            dout_reg_15 <= _T_1218;
          end else begin
            dout_reg_15 <= _T_1362;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_15 <= dout_reg_16;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_16 <= _T_1109;
        end else begin
          if (_T_1155) begin
            dout_reg_16 <= _T_1233;
          end else begin
            dout_reg_16 <= _T_1377;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_16 <= dout_reg_17;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_17 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_17 <= dout_reg_18;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_18 <= _T_1139;
        end else begin
          if (_T_1155) begin
            dout_reg_18 <= _T_1278;
          end else begin
            dout_reg_18 <= _T_1422;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_18 <= dout_reg_19;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_19 <= _T_1081;
        end else begin
          if (_T_1155) begin
            dout_reg_19 <= _T_1191;
          end else begin
            dout_reg_19 <= _T_1335;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_19 <= dout_reg_20;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_20 <= _T_1123;
        end else begin
          if (_T_1155) begin
            dout_reg_20 <= _T_1254;
          end else begin
            dout_reg_20 <= _T_1398;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_20 <= dout_reg_21;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_21 <= _T_1067;
        end else begin
          if (_T_1155) begin
            dout_reg_21 <= _T_1170;
          end else begin
            dout_reg_21 <= _T_1314;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_21 <= dout_reg_22;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_22 <= _T_1153;
        end else begin
          if (_T_1155) begin
            dout_reg_22 <= _T_1299;
          end else begin
            dout_reg_22 <= _T_1443;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_22 <= dout_reg_23;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_23 <= _T_1095;
        end else begin
          if (_T_1155) begin
            dout_reg_23 <= _T_1212;
          end else begin
            dout_reg_23 <= _T_1356;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_23 <= dout_reg_24;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_24 <= _T_1117;
        end else begin
          if (_T_1155) begin
            dout_reg_24 <= _T_1245;
          end else begin
            dout_reg_24 <= _T_1389;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_24 <= dout_reg_25;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_25 <= _T_1059;
        end else begin
          if (_T_1155) begin
            dout_reg_25 <= _T_1158;
          end else begin
            dout_reg_25 <= _T_1302;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_25 <= dout_reg_26;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_26 <= _T_1145;
        end else begin
          if (_T_1155) begin
            dout_reg_26 <= _T_1287;
          end else begin
            dout_reg_26 <= _T_1431;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_26 <= dout_reg_27;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_27 <= _T_1089;
        end else begin
          if (_T_1155) begin
            dout_reg_27 <= _T_1203;
          end else begin
            dout_reg_27 <= _T_1347;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_27 <= dout_reg_28;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_28 <= _T_1131;
        end else begin
          if (_T_1155) begin
            dout_reg_28 <= _T_1266;
          end else begin
            dout_reg_28 <= _T_1410;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_28 <= dout_reg_29;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_29 <= _T_1073;
        end else begin
          if (_T_1155) begin
            dout_reg_29 <= _T_1179;
          end else begin
            dout_reg_29 <= _T_1323;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_29 <= dout_reg_30;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_30 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_30 <= dout_reg_31;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_31 <= _T_1103;
        end else begin
          if (_T_1155) begin
            dout_reg_31 <= _T_1224;
          end else begin
            dout_reg_31 <= _T_1368;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_31 <= dout_reg_32;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_32 <= _T_1107;
        end else begin
          if (_T_1155) begin
            dout_reg_32 <= _T_1230;
          end else begin
            dout_reg_32 <= _T_1374;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_32 <= dout_reg_33;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_33 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_33 <= dout_reg_34;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_34 <= _T_1137;
        end else begin
          if (_T_1155) begin
            dout_reg_34 <= _T_1275;
          end else begin
            dout_reg_34 <= _T_1419;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_34 <= dout_reg_35;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_35 <= _T_1079;
        end else begin
          if (_T_1155) begin
            dout_reg_35 <= _T_1188;
          end else begin
            dout_reg_35 <= _T_1332;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_35 <= dout_reg_36;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_36 <= _T_1121;
        end else begin
          if (_T_1155) begin
            dout_reg_36 <= _T_1251;
          end else begin
            dout_reg_36 <= _T_1395;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_36 <= dout_reg_37;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_37 <= _T_1065;
        end else begin
          if (_T_1155) begin
            dout_reg_37 <= _T_1167;
          end else begin
            dout_reg_37 <= _T_1311;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_37 <= dout_reg_38;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_38 <= _T_1151;
        end else begin
          if (_T_1155) begin
            dout_reg_38 <= _T_1296;
          end else begin
            dout_reg_38 <= _T_1440;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_38 <= dout_reg_39;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_39 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_39 <= dout_reg_40;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_40 <= _T_1115;
        end else begin
          if (_T_1155) begin
            dout_reg_40 <= _T_1242;
          end else begin
            dout_reg_40 <= _T_1386;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_40 <= dout_reg_41;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_41 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_41 <= dout_reg_42;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_42 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_42 <= dout_reg_43;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_43 <= _T_1087;
        end else begin
          if (_T_1155) begin
            dout_reg_43 <= _T_1200;
          end else begin
            dout_reg_43 <= _T_1344;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_43 <= dout_reg_44;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_44 <= _T_1129;
        end else begin
          if (_T_1155) begin
            dout_reg_44 <= _T_1263;
          end else begin
            dout_reg_44 <= _T_1407;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_44 <= dout_reg_45;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_45 <= _T_1071;
        end else begin
          if (_T_1155) begin
            dout_reg_45 <= _T_1176;
          end else begin
            dout_reg_45 <= _T_1320;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_45 <= dout_reg_46;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_46 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_46 <= dout_reg_47;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_47 <= _T_1101;
        end else begin
          if (_T_1155) begin
            dout_reg_47 <= _T_1221;
          end else begin
            dout_reg_47 <= _T_1365;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_47 <= dout_reg_48;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_48 <= _T_1111;
        end else begin
          if (_T_1155) begin
            dout_reg_48 <= _T_1236;
          end else begin
            dout_reg_48 <= _T_1380;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_48 <= dout_reg_49;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_49 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_49 <= dout_reg_50;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_50 <= _T_1141;
        end else begin
          if (_T_1155) begin
            dout_reg_50 <= _T_1281;
          end else begin
            dout_reg_50 <= _T_1425;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_50 <= dout_reg_51;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_51 <= _T_1083;
        end else begin
          if (_T_1155) begin
            dout_reg_51 <= _T_1194;
          end else begin
            dout_reg_51 <= _T_1338;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_51 <= dout_reg_52;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_52 <= _T_1125;
        end else begin
          if (_T_1155) begin
            dout_reg_52 <= _T_1257;
          end else begin
            dout_reg_52 <= _T_1401;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_52 <= dout_reg_53;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_53 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_53 <= dout_reg_54;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_54 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_54 <= dout_reg_55;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_55 <= _T_1097;
        end else begin
          if (_T_1155) begin
            dout_reg_55 <= _T_1215;
          end else begin
            dout_reg_55 <= _T_1359;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_55 <= dout_reg_56;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_56 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_56 <= dout_reg_57;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_57 <= _T_1061;
        end else begin
          if (_T_1155) begin
            dout_reg_57 <= _T_1161;
          end else begin
            dout_reg_57 <= _T_1305;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_57 <= dout_reg_58;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_58 <= _T_1147;
        end else begin
          if (_T_1155) begin
            dout_reg_58 <= _T_1290;
          end else begin
            dout_reg_58 <= _T_1434;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_58 <= dout_reg_59;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_59 <= _T_1091;
        end else begin
          if (_T_1155) begin
            dout_reg_59 <= _T_1206;
          end else begin
            dout_reg_59 <= _T_1350;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_59 <= dout_reg_60;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_60 <= _T_1133;
        end else begin
          if (_T_1155) begin
            dout_reg_60 <= _T_1269;
          end else begin
            dout_reg_60 <= _T_1413;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_60 <= dout_reg_61;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_61 <= _T_1075;
        end else begin
          if (_T_1155) begin
            dout_reg_61 <= _T_1182;
          end else begin
            dout_reg_61 <= _T_1326;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_61 <= dout_reg_62;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        dout_reg_62 <= 4'h0;
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_62 <= dout_reg_63;
          end
        end
      end
    end
    if (!(_T_716)) begin
      if (_T_717) begin
        if (_T_1057) begin
          dout_reg_63 <= _T_1105;
        end else begin
          if (_T_1155) begin
            dout_reg_63 <= _T_1227;
          end else begin
            dout_reg_63 <= _T_1371;
          end
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dout_reg_63 <= dout_reg_0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_0 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_0 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_0 <= dtag_reg_1;
          end else begin
            if (io_start) begin
              dtag_reg_0 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_0 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_1 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_1 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_1 <= dtag_reg_2;
          end else begin
            if (io_start) begin
              dtag_reg_1 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_1 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_2 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_2 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_2 <= dtag_reg_3;
          end else begin
            if (io_start) begin
              dtag_reg_2 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_2 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_3 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_3 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_3 <= dtag_reg_4;
          end else begin
            if (io_start) begin
              dtag_reg_3 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_3 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_4 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_4 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_4 <= dtag_reg_5;
          end else begin
            if (io_start) begin
              dtag_reg_4 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_4 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_5 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_5 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_5 <= dtag_reg_6;
          end else begin
            if (io_start) begin
              dtag_reg_5 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_5 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_6 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_6 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_6 <= dtag_reg_7;
          end else begin
            if (io_start) begin
              dtag_reg_6 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_6 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_7 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_7 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_7 <= dtag_reg_8;
          end else begin
            if (io_start) begin
              dtag_reg_7 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_7 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_8 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_8 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_8 <= dtag_reg_9;
          end else begin
            if (io_start) begin
              dtag_reg_8 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_8 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_9 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_9 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_9 <= dtag_reg_10;
          end else begin
            if (io_start) begin
              dtag_reg_9 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_9 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_10 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_10 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_10 <= dtag_reg_11;
          end else begin
            if (io_start) begin
              dtag_reg_10 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_10 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_11 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_11 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_11 <= dtag_reg_12;
          end else begin
            if (io_start) begin
              dtag_reg_11 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_11 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_12 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_12 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_12 <= dtag_reg_13;
          end else begin
            if (io_start) begin
              dtag_reg_12 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_12 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_13 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_13 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_13 <= dtag_reg_14;
          end else begin
            if (io_start) begin
              dtag_reg_13 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_13 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_14 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_14 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_14 <= dtag_reg_15;
          end else begin
            if (io_start) begin
              dtag_reg_14 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_14 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_15 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_15 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_15 <= dtag_reg_16;
          end else begin
            if (io_start) begin
              dtag_reg_15 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_15 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_16 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_16 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_16 <= dtag_reg_17;
          end else begin
            if (io_start) begin
              dtag_reg_16 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_16 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_17 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_17 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_17 <= dtag_reg_18;
          end else begin
            if (io_start) begin
              dtag_reg_17 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_17 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_18 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_18 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_18 <= dtag_reg_19;
          end else begin
            if (io_start) begin
              dtag_reg_18 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_18 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_19 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_19 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_19 <= dtag_reg_20;
          end else begin
            if (io_start) begin
              dtag_reg_19 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_19 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_20 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_20 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_20 <= dtag_reg_21;
          end else begin
            if (io_start) begin
              dtag_reg_20 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_20 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_21 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_21 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_21 <= dtag_reg_22;
          end else begin
            if (io_start) begin
              dtag_reg_21 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_21 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_22 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_22 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_22 <= dtag_reg_23;
          end else begin
            if (io_start) begin
              dtag_reg_22 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_22 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_23 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_23 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_23 <= dtag_reg_24;
          end else begin
            if (io_start) begin
              dtag_reg_23 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_23 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_24 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_24 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_24 <= dtag_reg_25;
          end else begin
            if (io_start) begin
              dtag_reg_24 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_24 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_25 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_25 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_25 <= dtag_reg_26;
          end else begin
            if (io_start) begin
              dtag_reg_25 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_25 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_26 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_26 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_26 <= dtag_reg_27;
          end else begin
            if (io_start) begin
              dtag_reg_26 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_26 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_27 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_27 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_27 <= dtag_reg_28;
          end else begin
            if (io_start) begin
              dtag_reg_27 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_27 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_28 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_28 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_28 <= dtag_reg_29;
          end else begin
            if (io_start) begin
              dtag_reg_28 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_28 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_29 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_29 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_29 <= dtag_reg_30;
          end else begin
            if (io_start) begin
              dtag_reg_29 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_29 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_30 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_30 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_30 <= dtag_reg_31;
          end else begin
            if (io_start) begin
              dtag_reg_30 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_30 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_31 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_31 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_31 <= dtag_reg_32;
          end else begin
            if (io_start) begin
              dtag_reg_31 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_31 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_32 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_32 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_32 <= dtag_reg_33;
          end else begin
            if (io_start) begin
              dtag_reg_32 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_32 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_33 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_33 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_33 <= dtag_reg_34;
          end else begin
            if (io_start) begin
              dtag_reg_33 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_33 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_34 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_34 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_34 <= dtag_reg_35;
          end else begin
            if (io_start) begin
              dtag_reg_34 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_34 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_35 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_35 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_35 <= dtag_reg_36;
          end else begin
            if (io_start) begin
              dtag_reg_35 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_35 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_36 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_36 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_36 <= dtag_reg_37;
          end else begin
            if (io_start) begin
              dtag_reg_36 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_36 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_37 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_37 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_37 <= dtag_reg_38;
          end else begin
            if (io_start) begin
              dtag_reg_37 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_37 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_38 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_38 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_38 <= dtag_reg_39;
          end else begin
            if (io_start) begin
              dtag_reg_38 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_38 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_39 <= 2'h1;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_39 <= 2'h1;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_39 <= dtag_reg_40;
          end else begin
            if (io_start) begin
              dtag_reg_39 <= 2'h1;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_39 <= 2'h1;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_40 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_40 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_40 <= dtag_reg_41;
          end else begin
            if (io_start) begin
              dtag_reg_40 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_40 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_41 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_41 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_41 <= dtag_reg_42;
          end else begin
            if (io_start) begin
              dtag_reg_41 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_41 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_42 <= 2'h2;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_42 <= 2'h2;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_42 <= dtag_reg_43;
          end else begin
            if (io_start) begin
              dtag_reg_42 <= 2'h2;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_42 <= 2'h2;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_43 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_43 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_43 <= dtag_reg_44;
          end else begin
            if (io_start) begin
              dtag_reg_43 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_43 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_44 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_44 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_44 <= dtag_reg_45;
          end else begin
            if (io_start) begin
              dtag_reg_44 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_44 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_45 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_45 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_45 <= dtag_reg_46;
          end else begin
            if (io_start) begin
              dtag_reg_45 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_45 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_46 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_46 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_46 <= dtag_reg_47;
          end else begin
            if (io_start) begin
              dtag_reg_46 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_46 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_47 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_47 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_47 <= dtag_reg_48;
          end else begin
            if (io_start) begin
              dtag_reg_47 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_47 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_48 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_48 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_48 <= dtag_reg_49;
          end else begin
            if (io_start) begin
              dtag_reg_48 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_48 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_49 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_49 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_49 <= dtag_reg_50;
          end else begin
            if (io_start) begin
              dtag_reg_49 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_49 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_50 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_50 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_50 <= dtag_reg_51;
          end else begin
            if (io_start) begin
              dtag_reg_50 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_50 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_51 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_51 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_51 <= dtag_reg_52;
          end else begin
            if (io_start) begin
              dtag_reg_51 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_51 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_52 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_52 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_52 <= dtag_reg_53;
          end else begin
            if (io_start) begin
              dtag_reg_52 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_52 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_53 <= 2'h1;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_53 <= 2'h1;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_53 <= dtag_reg_54;
          end else begin
            if (io_start) begin
              dtag_reg_53 <= 2'h1;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_53 <= 2'h1;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_54 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_54 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_54 <= dtag_reg_55;
          end else begin
            if (io_start) begin
              dtag_reg_54 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_54 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_55 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_55 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_55 <= dtag_reg_56;
          end else begin
            if (io_start) begin
              dtag_reg_55 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_55 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_56 <= 2'h1;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_56 <= 2'h1;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_56 <= dtag_reg_57;
          end else begin
            if (io_start) begin
              dtag_reg_56 <= 2'h1;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_56 <= 2'h1;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_57 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_57 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_57 <= dtag_reg_58;
          end else begin
            if (io_start) begin
              dtag_reg_57 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_57 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_58 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_58 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_58 <= dtag_reg_59;
          end else begin
            if (io_start) begin
              dtag_reg_58 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_58 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_59 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_59 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_59 <= dtag_reg_60;
          end else begin
            if (io_start) begin
              dtag_reg_59 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_59 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_60 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_60 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_60 <= dtag_reg_61;
          end else begin
            if (io_start) begin
              dtag_reg_60 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_60 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_61 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_61 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_61 <= dtag_reg_62;
          end else begin
            if (io_start) begin
              dtag_reg_61 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_61 <= 2'h3;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_62 <= 2'h0;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_62 <= 2'h0;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_62 <= dtag_reg_63;
          end else begin
            if (io_start) begin
              dtag_reg_62 <= 2'h0;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_62 <= 2'h0;
          end
        end
      end
    end
    if (_T_716) begin
      if (io_start) begin
        dtag_reg_63 <= 2'h3;
      end
    end else begin
      if (_T_717) begin
        if (io_start) begin
          dtag_reg_63 <= 2'h3;
        end
      end else begin
        if (_T_718) begin
          if (io_dout_ready) begin
            dtag_reg_63 <= dtag_reg_0;
          end else begin
            if (io_start) begin
              dtag_reg_63 <= 2'h3;
            end
          end
        end else begin
          if (io_start) begin
            dtag_reg_63 <= 2'h3;
          end
        end
      end
    end
    if (io_din_valid) begin
      din_regs_0 <= io_din_bits;
    end
    if (io_din_valid) begin
      din_regs_1 <= din_regs_0;
    end
    if (io_din_valid) begin
      din_regs_2 <= din_regs_1;
    end
    if (io_din_valid) begin
      din_regs_3 <= din_regs_2;
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_716) begin
        if (io_din_valid) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_717) begin
          state <= 2'h2;
        end else begin
          if (_T_718) begin
            if (io_dout_ready) begin
              if (dlast) begin
                if (io_din_valid) begin
                  state <= 2'h1;
                end else begin
                  state <= 2'h0;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 6'h0;
    end else begin
      if (_T_707) begin
        value <= _T_714;
      end
    end
  end
endmodule
module Mapper( // @[:@3491.2]
  input  [1:0]  io_mode, // @[:@3494.4]
  input         io_din_valid, // @[:@3494.4]
  input  [3:0]  io_din_bits, // @[:@3494.4]
  input  [1:0]  io_din_tag, // @[:@3494.4]
  output        io_dout_valid, // @[:@3494.4]
  output [11:0] io_dout_bits_real, // @[:@3494.4]
  output [11:0] io_dout_bits_imag // @[:@3494.4]
);
  wire  _T_68; // @[mapper.scala 60:25:@3517.4]
  wire [1:0] _T_69; // @[mapper.scala 53:24:@3518.4]
  wire  _T_73; // @[Mux.scala 46:19:@3519.4]
  wire [11:0] _T_76_real; // @[Mux.scala 46:16:@3520.4]
  wire  _T_77; // @[Mux.scala 46:19:@3521.4]
  wire [11:0] _T_80_real; // @[Mux.scala 46:16:@3522.4]
  wire [11:0] _T_80_imag; // @[Mux.scala 46:16:@3522.4]
  wire  _T_81; // @[Mux.scala 46:19:@3523.4]
  wire [11:0] _T_84_real; // @[Mux.scala 46:16:@3524.4]
  wire [11:0] _T_84_imag; // @[Mux.scala 46:16:@3524.4]
  wire  _T_85; // @[mapper.scala 48:18:@3525.4]
  wire [11:0] _T_88_real; // @[mapper.scala 48:16:@3526.4]
  wire [11:0] data_real; // @[mapper.scala 60:17:@3527.4]
  wire [11:0] data_imag; // @[mapper.scala 60:17:@3527.4]
  wire  _T_92; // @[mapper.scala 63:35:@3529.4]
  wire  _T_94; // @[mapper.scala 64:35:@3530.4]
  wire  _T_96; // @[mapper.scala 65:35:@3531.4]
  wire [11:0] _T_99_real; // @[mapper.scala 65:23:@3532.4]
  wire [11:0] _T_102_real; // @[mapper.scala 64:23:@3533.4]
  wire [11:0] _T_105_real; // @[mapper.scala 63:23:@3534.4]
  wire [11:0] _T_105_imag; // @[mapper.scala 63:23:@3534.4]
  assign _T_68 = io_mode[0]; // @[mapper.scala 60:25:@3517.4]
  assign _T_69 = io_din_bits[1:0]; // @[mapper.scala 53:24:@3518.4]
  assign _T_73 = 2'h3 == _T_69; // @[Mux.scala 46:19:@3519.4]
  assign _T_76_real = _T_73 ? $signed(12'sh2d4) : $signed(-12'sh2d4); // @[Mux.scala 46:16:@3520.4]
  assign _T_77 = 2'h2 == _T_69; // @[Mux.scala 46:19:@3521.4]
  assign _T_80_real = _T_77 ? $signed(12'sh2d4) : $signed(_T_76_real); // @[Mux.scala 46:16:@3522.4]
  assign _T_80_imag = _T_77 ? $signed(-12'sh2d4) : $signed(_T_76_real); // @[Mux.scala 46:16:@3522.4]
  assign _T_81 = 2'h1 == _T_69; // @[Mux.scala 46:19:@3523.4]
  assign _T_84_real = _T_81 ? $signed(-12'sh2d4) : $signed(_T_80_real); // @[Mux.scala 46:16:@3524.4]
  assign _T_84_imag = _T_81 ? $signed(12'sh2d4) : $signed(_T_80_imag); // @[Mux.scala 46:16:@3524.4]
  assign _T_85 = io_din_bits[0]; // @[mapper.scala 48:18:@3525.4]
  assign _T_88_real = _T_85 ? $signed(12'sh400) : $signed(-12'sh400); // @[mapper.scala 48:16:@3526.4]
  assign data_real = _T_68 ? $signed(_T_84_real) : $signed(_T_88_real); // @[mapper.scala 60:17:@3527.4]
  assign data_imag = _T_68 ? $signed(_T_84_imag) : $signed(12'sh0); // @[mapper.scala 60:17:@3527.4]
  assign _T_92 = io_din_tag == 2'h3; // @[mapper.scala 63:35:@3529.4]
  assign _T_94 = io_din_tag == 2'h0; // @[mapper.scala 64:35:@3530.4]
  assign _T_96 = io_din_tag == 2'h1; // @[mapper.scala 65:35:@3531.4]
  assign _T_99_real = _T_96 ? $signed(12'sh400) : $signed(-12'sh400); // @[mapper.scala 65:23:@3532.4]
  assign _T_102_real = _T_94 ? $signed(12'sh0) : $signed(_T_99_real); // @[mapper.scala 64:23:@3533.4]
  assign _T_105_real = _T_92 ? $signed(data_real) : $signed(_T_102_real); // @[mapper.scala 63:23:@3534.4]
  assign _T_105_imag = _T_92 ? $signed(data_imag) : $signed(12'sh0); // @[mapper.scala 63:23:@3534.4]
  assign io_dout_valid = io_din_valid;
  assign io_dout_bits_real = _T_105_real;
  assign io_dout_bits_imag = _T_105_imag;
endmodule
module Queue( // @[:@3538.2]
  input         clock, // @[:@3539.4]
  input         reset, // @[:@3540.4]
  output        io_enq_ready, // @[:@3541.4]
  input         io_enq_valid, // @[:@3541.4]
  input  [11:0] io_enq_bits_real, // @[:@3541.4]
  input  [11:0] io_enq_bits_imag, // @[:@3541.4]
  input         io_deq_ready, // @[:@3541.4]
  output        io_deq_valid, // @[:@3541.4]
  output [11:0] io_deq_bits_real, // @[:@3541.4]
  output [11:0] io_deq_bits_imag, // @[:@3541.4]
  output [3:0]  io_count // @[:@3541.4]
);
  reg [11:0] ram_real [0:7]; // @[Decoupled.scala 211:24:@3543.4]
  reg [31:0] _RAND_0;
  wire [11:0] ram_real__T_76_data; // @[Decoupled.scala 211:24:@3543.4]
  wire [2:0] ram_real__T_76_addr; // @[Decoupled.scala 211:24:@3543.4]
  wire [11:0] ram_real__T_60_data; // @[Decoupled.scala 211:24:@3543.4]
  wire [2:0] ram_real__T_60_addr; // @[Decoupled.scala 211:24:@3543.4]
  wire  ram_real__T_60_mask; // @[Decoupled.scala 211:24:@3543.4]
  wire  ram_real__T_60_en; // @[Decoupled.scala 211:24:@3543.4]
  reg [11:0] ram_imag [0:7]; // @[Decoupled.scala 211:24:@3543.4]
  reg [31:0] _RAND_1;
  wire [11:0] ram_imag__T_76_data; // @[Decoupled.scala 211:24:@3543.4]
  wire [2:0] ram_imag__T_76_addr; // @[Decoupled.scala 211:24:@3543.4]
  wire [11:0] ram_imag__T_60_data; // @[Decoupled.scala 211:24:@3543.4]
  wire [2:0] ram_imag__T_60_addr; // @[Decoupled.scala 211:24:@3543.4]
  wire  ram_imag__T_60_mask; // @[Decoupled.scala 211:24:@3543.4]
  wire  ram_imag__T_60_en; // @[Decoupled.scala 211:24:@3543.4]
  reg [2:0] value; // @[Counter.scala 26:33:@3544.4]
  reg [31:0] _RAND_2;
  reg [2:0] value_1; // @[Counter.scala 26:33:@3545.4]
  reg [31:0] _RAND_3;
  reg  maybe_full; // @[Decoupled.scala 214:35:@3546.4]
  reg [31:0] _RAND_4;
  wire  _T_50; // @[Decoupled.scala 216:41:@3547.4]
  wire  _T_52; // @[Decoupled.scala 217:36:@3548.4]
  wire  empty; // @[Decoupled.scala 217:33:@3549.4]
  wire  _T_53; // @[Decoupled.scala 218:32:@3550.4]
  wire  do_enq; // @[Decoupled.scala 30:37:@3551.4]
  wire  do_deq; // @[Decoupled.scala 30:37:@3554.4]
  wire [3:0] _T_63; // @[Counter.scala 35:22:@3562.6]
  wire [2:0] _T_64; // @[Counter.scala 35:22:@3563.6]
  wire [2:0] _GEN_5; // @[Decoupled.scala 222:17:@3557.4]
  wire [3:0] _T_67; // @[Counter.scala 35:22:@3568.6]
  wire [2:0] _T_68; // @[Counter.scala 35:22:@3569.6]
  wire [2:0] _GEN_6; // @[Decoupled.scala 226:17:@3566.4]
  wire  _T_69; // @[Decoupled.scala 229:16:@3572.4]
  wire  _GEN_7; // @[Decoupled.scala 229:27:@3573.4]
  wire  _T_71; // @[Decoupled.scala 233:19:@3576.4]
  wire  _T_73; // @[Decoupled.scala 234:19:@3578.4]
  wire [3:0] _T_77; // @[Decoupled.scala 250:40:@3583.4]
  wire [3:0] _T_78; // @[Decoupled.scala 250:40:@3584.4]
  wire [2:0] _T_79; // @[Decoupled.scala 250:40:@3585.4]
  wire  _T_80; // @[Decoupled.scala 252:32:@3586.4]
  wire [3:0] _T_81; // @[Cat.scala 30:58:@3587.4]
  assign ram_real__T_76_addr = value_1;
  assign ram_real__T_76_data = ram_real[ram_real__T_76_addr]; // @[Decoupled.scala 211:24:@3543.4]
  assign ram_real__T_60_data = io_enq_bits_real;
  assign ram_real__T_60_addr = value;
  assign ram_real__T_60_mask = do_enq;
  assign ram_real__T_60_en = do_enq;
  assign ram_imag__T_76_addr = value_1;
  assign ram_imag__T_76_data = ram_imag[ram_imag__T_76_addr]; // @[Decoupled.scala 211:24:@3543.4]
  assign ram_imag__T_60_data = io_enq_bits_imag;
  assign ram_imag__T_60_addr = value;
  assign ram_imag__T_60_mask = do_enq;
  assign ram_imag__T_60_en = do_enq;
  assign _T_50 = value == value_1; // @[Decoupled.scala 216:41:@3547.4]
  assign _T_52 = maybe_full == 1'h0; // @[Decoupled.scala 217:36:@3548.4]
  assign empty = _T_50 & _T_52; // @[Decoupled.scala 217:33:@3549.4]
  assign _T_53 = _T_50 & maybe_full; // @[Decoupled.scala 218:32:@3550.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 30:37:@3551.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 30:37:@3554.4]
  assign _T_63 = value + 3'h1; // @[Counter.scala 35:22:@3562.6]
  assign _T_64 = _T_63[2:0]; // @[Counter.scala 35:22:@3563.6]
  assign _GEN_5 = do_enq ? _T_64 : value; // @[Decoupled.scala 222:17:@3557.4]
  assign _T_67 = value_1 + 3'h1; // @[Counter.scala 35:22:@3568.6]
  assign _T_68 = _T_67[2:0]; // @[Counter.scala 35:22:@3569.6]
  assign _GEN_6 = do_deq ? _T_68 : value_1; // @[Decoupled.scala 226:17:@3566.4]
  assign _T_69 = do_enq != do_deq; // @[Decoupled.scala 229:16:@3572.4]
  assign _GEN_7 = _T_69 ? do_enq : maybe_full; // @[Decoupled.scala 229:27:@3573.4]
  assign _T_71 = empty == 1'h0; // @[Decoupled.scala 233:19:@3576.4]
  assign _T_73 = _T_53 == 1'h0; // @[Decoupled.scala 234:19:@3578.4]
  assign _T_77 = value - value_1; // @[Decoupled.scala 250:40:@3583.4]
  assign _T_78 = $unsigned(_T_77); // @[Decoupled.scala 250:40:@3584.4]
  assign _T_79 = _T_78[2:0]; // @[Decoupled.scala 250:40:@3585.4]
  assign _T_80 = maybe_full & _T_50; // @[Decoupled.scala 252:32:@3586.4]
  assign _T_81 = {_T_80,_T_79}; // @[Cat.scala 30:58:@3587.4]
  assign io_enq_ready = _T_73;
  assign io_deq_valid = _T_71;
  assign io_deq_bits_real = ram_real__T_76_data;
  assign io_deq_bits_imag = ram_imag__T_76_data;
  assign io_count = _T_81;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_real[initvar] = _RAND_0[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_imag[initvar] = _RAND_1[11:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  value = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  value_1 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  maybe_full = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_real__T_60_en & ram_real__T_60_mask) begin
      ram_real[ram_real__T_60_addr] <= ram_real__T_60_data; // @[Decoupled.scala 211:24:@3543.4]
    end
    if(ram_imag__T_60_en & ram_imag__T_60_mask) begin
      ram_imag[ram_imag__T_60_addr] <= ram_imag__T_60_data; // @[Decoupled.scala 211:24:@3543.4]
    end
    if (reset) begin
      value <= 3'h0;
    end else begin
      if (do_enq) begin
        value <= _T_64;
      end
    end
    if (reset) begin
      value_1 <= 3'h0;
    end else begin
      if (do_deq) begin
        value_1 <= _T_68;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_69) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
module BflyR22( // @[:@3590.2]
  input         clock, // @[:@3591.4]
  input  [17:0] io_din_real, // @[:@3593.4]
  input  [17:0] io_din_imag, // @[:@3593.4]
  output [17:0] io_dout_real, // @[:@3593.4]
  output [17:0] io_dout_imag, // @[:@3593.4]
  input         io_sel, // @[:@3593.4]
  input         io_stall // @[:@3593.4]
);
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3624.4]
  reg [31:0] _RAND_0;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3624.4]
  reg [31:0] _RAND_1;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3597.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3598.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3599.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3600.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3601.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3602.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3606.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3607.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3608.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3609.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3610.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3611.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3615.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3615.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3623.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3625.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3625.4]
  wire [17:0] _GEN_4; // @[r2sdf.scala 45:17:@3631.4]
  wire [17:0] _GEN_5; // @[r2sdf.scala 45:17:@3631.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3597.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3598.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3599.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3600.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3601.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3602.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3606.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3607.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3608.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3609.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3610.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3611.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3615.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3615.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3623.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3625.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3625.4]
  assign _GEN_4 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3631.4]
  assign _GEN_5 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3631.4]
  assign io_dout_real = _GEN_5;
  assign io_dout_imag = _GEN_4;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  q_dout_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  q_dout_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        q_dout_real <= diff_real;
      end else begin
        q_dout_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        q_dout_imag <= diff_imag;
      end else begin
        q_dout_imag <= io_din_imag;
      end
    end
  end
endmodule
module R2SDF_TFMul( // @[:@3640.2]
  input  [17:0] io_din_real, // @[:@3643.4]
  input  [17:0] io_din_imag, // @[:@3643.4]
  output [17:0] io_dout_real, // @[:@3643.4]
  output [17:0] io_dout_imag, // @[:@3643.4]
  input  [1:0]  io_addr // @[:@3643.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3645.4]
  wire  _T_14; // @[r2sdf.scala 63:35:@3646.4]
  wire  addr; // @[r2sdf.scala 63:17:@3647.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@3653.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@3653.4]
  wire [18:0] _T_51; // @[FixedPointTypeClass.scala 21:58:@3653.4]
  wire [17:0] _T_52; // @[FixedPointTypeClass.scala 21:58:@3654.4]
  wire [17:0] _T_53; // @[FixedPointTypeClass.scala 21:58:@3655.4]
  wire [18:0] _T_54; // @[FixedPointTypeClass.scala 21:58:@3656.4]
  wire [17:0] _T_55; // @[FixedPointTypeClass.scala 21:58:@3657.4]
  wire [17:0] _T_56; // @[FixedPointTypeClass.scala 21:58:@3658.4]
  wire [18:0] _T_57; // @[FixedPointTypeClass.scala 31:68:@3659.4]
  wire [17:0] _T_58; // @[FixedPointTypeClass.scala 31:68:@3660.4]
  wire [17:0] _T_59; // @[FixedPointTypeClass.scala 31:68:@3661.4]
  wire [35:0] _T_60; // @[FixedPointTypeClass.scala 43:59:@3662.4]
  wire [35:0] _T_61; // @[FixedPointTypeClass.scala 43:59:@3663.4]
  wire [35:0] _T_62; // @[FixedPointTypeClass.scala 43:59:@3664.4]
  wire [36:0] _T_63; // @[FixedPointTypeClass.scala 31:68:@3665.4]
  wire [35:0] _T_64; // @[FixedPointTypeClass.scala 31:68:@3666.4]
  wire [35:0] _T_65; // @[FixedPointTypeClass.scala 31:68:@3667.4]
  wire [36:0] _T_66; // @[FixedPointTypeClass.scala 21:58:@3668.4]
  wire [35:0] _T_67; // @[FixedPointTypeClass.scala 21:58:@3669.4]
  wire [35:0] _T_68; // @[FixedPointTypeClass.scala 21:58:@3670.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[1]; // @[r2sdf.scala 62:21:@3645.4]
  assign _T_14 = io_addr[0]; // @[r2sdf.scala 63:35:@3646.4]
  assign addr = msb ? 1'h0 : _T_14; // @[r2sdf.scala 63:17:@3647.4]
  assign _GEN_4 = addr ? $signed(18'sh0) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@3653.4]
  assign _GEN_5 = addr ? $signed(18'sh400) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@3653.4]
  assign _T_51 = $signed(_GEN_4) + $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@3653.4]
  assign _T_52 = _T_51[17:0]; // @[FixedPointTypeClass.scala 21:58:@3654.4]
  assign _T_53 = $signed(_T_52); // @[FixedPointTypeClass.scala 21:58:@3655.4]
  assign _T_54 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3656.4]
  assign _T_55 = _T_54[17:0]; // @[FixedPointTypeClass.scala 21:58:@3657.4]
  assign _T_56 = $signed(_T_55); // @[FixedPointTypeClass.scala 21:58:@3658.4]
  assign _T_57 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3659.4]
  assign _T_58 = _T_57[17:0]; // @[FixedPointTypeClass.scala 31:68:@3660.4]
  assign _T_59 = $signed(_T_58); // @[FixedPointTypeClass.scala 31:68:@3661.4]
  assign _T_60 = $signed(io_din_real) * $signed(_T_53); // @[FixedPointTypeClass.scala 43:59:@3662.4]
  assign _T_61 = $signed(_T_56) * $signed(_GEN_5); // @[FixedPointTypeClass.scala 43:59:@3663.4]
  assign _T_62 = $signed(_T_59) * $signed(_GEN_4); // @[FixedPointTypeClass.scala 43:59:@3664.4]
  assign _T_63 = $signed(_T_60) - $signed(_T_61); // @[FixedPointTypeClass.scala 31:68:@3665.4]
  assign _T_64 = _T_63[35:0]; // @[FixedPointTypeClass.scala 31:68:@3666.4]
  assign _T_65 = $signed(_T_64); // @[FixedPointTypeClass.scala 31:68:@3667.4]
  assign _T_66 = $signed(_T_60) + $signed(_T_62); // @[FixedPointTypeClass.scala 21:58:@3668.4]
  assign _T_67 = _T_66[35:0]; // @[FixedPointTypeClass.scala 21:58:@3669.4]
  assign _T_68 = $signed(_T_67); // @[FixedPointTypeClass.scala 21:58:@3670.4]
  assign _GEN_0 = _T_65[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_68[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_1( // @[:@3677.2]
  input         clock, // @[:@3678.4]
  input  [17:0] io_din_real, // @[:@3680.4]
  input  [17:0] io_din_imag, // @[:@3680.4]
  output [17:0] io_dout_real, // @[:@3680.4]
  output [17:0] io_dout_imag, // @[:@3680.4]
  input         io_sel, // @[:@3680.4]
  input         io_stall // @[:@3680.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3711.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3711.4]
  reg [31:0] _RAND_1;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3716.4]
  reg [31:0] _RAND_2;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3716.4]
  reg [31:0] _RAND_3;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3684.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3685.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3687.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3688.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3689.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3693.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3694.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3695.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3696.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3697.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3698.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3702.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3702.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3710.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3712.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3712.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3717.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3717.4]
  wire [17:0] _GEN_6; // @[r2sdf.scala 45:17:@3723.4]
  wire [17:0] _GEN_7; // @[r2sdf.scala 45:17:@3723.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3684.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3685.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3687.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3688.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3689.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3693.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3694.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3695.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3696.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3697.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3698.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3702.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3702.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3710.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3712.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3712.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3717.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3717.4]
  assign _GEN_6 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3723.4]
  assign _GEN_7 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3723.4]
  assign io_dout_real = _GEN_7;
  assign io_dout_imag = _GEN_6;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_57_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_57_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  q_dout_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  q_dout_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        _T_57_real <= diff_real;
      end else begin
        _T_57_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        _T_57_imag <= diff_imag;
      end else begin
        _T_57_imag <= io_din_imag;
      end
    end
    if (_T_51) begin
      q_dout_real <= _T_57_real;
    end
    if (_T_51) begin
      q_dout_imag <= _T_57_imag;
    end
  end
endmodule
module R2SDF_TFMul_1( // @[:@3732.2]
  input  [17:0] io_din_real, // @[:@3735.4]
  input  [17:0] io_din_imag, // @[:@3735.4]
  output [17:0] io_dout_real, // @[:@3735.4]
  output [17:0] io_dout_imag, // @[:@3735.4]
  input  [2:0]  io_addr // @[:@3735.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3737.4]
  wire [1:0] _T_14; // @[r2sdf.scala 63:35:@3738.4]
  wire [1:0] addr; // @[r2sdf.scala 63:17:@3739.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [18:0] _T_69; // @[FixedPointTypeClass.scala 21:58:@3749.4]
  wire [17:0] _T_70; // @[FixedPointTypeClass.scala 21:58:@3750.4]
  wire [17:0] _T_71; // @[FixedPointTypeClass.scala 21:58:@3751.4]
  wire [18:0] _T_72; // @[FixedPointTypeClass.scala 21:58:@3752.4]
  wire [17:0] _T_73; // @[FixedPointTypeClass.scala 21:58:@3753.4]
  wire [17:0] _T_74; // @[FixedPointTypeClass.scala 21:58:@3754.4]
  wire [18:0] _T_75; // @[FixedPointTypeClass.scala 31:68:@3755.4]
  wire [17:0] _T_76; // @[FixedPointTypeClass.scala 31:68:@3756.4]
  wire [17:0] _T_77; // @[FixedPointTypeClass.scala 31:68:@3757.4]
  wire [35:0] _T_78; // @[FixedPointTypeClass.scala 43:59:@3758.4]
  wire [35:0] _T_79; // @[FixedPointTypeClass.scala 43:59:@3759.4]
  wire [35:0] _T_80; // @[FixedPointTypeClass.scala 43:59:@3760.4]
  wire [36:0] _T_81; // @[FixedPointTypeClass.scala 31:68:@3761.4]
  wire [35:0] _T_82; // @[FixedPointTypeClass.scala 31:68:@3762.4]
  wire [35:0] _T_83; // @[FixedPointTypeClass.scala 31:68:@3763.4]
  wire [36:0] _T_84; // @[FixedPointTypeClass.scala 21:58:@3764.4]
  wire [35:0] _T_85; // @[FixedPointTypeClass.scala 21:58:@3765.4]
  wire [35:0] _T_86; // @[FixedPointTypeClass.scala 21:58:@3766.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[2]; // @[r2sdf.scala 62:21:@3737.4]
  assign _T_14 = io_addr[1:0]; // @[r2sdf.scala 63:35:@3738.4]
  assign addr = msb ? 2'h0 : _T_14; // @[r2sdf.scala 63:17:@3739.4]
  assign _GEN_4 = 2'h1 == addr ? $signed(18'sh2d4) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _GEN_5 = 2'h1 == addr ? $signed(18'sh2d4) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _GEN_6 = 2'h2 == addr ? $signed(18'sh0) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _GEN_7 = 2'h2 == addr ? $signed(18'sh400) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _GEN_8 = 2'h3 == addr ? $signed(-18'sh2d4) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _GEN_9 = 2'h3 == addr ? $signed(18'sh2d4) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _T_69 = $signed(_GEN_8) + $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@3749.4]
  assign _T_70 = _T_69[17:0]; // @[FixedPointTypeClass.scala 21:58:@3750.4]
  assign _T_71 = $signed(_T_70); // @[FixedPointTypeClass.scala 21:58:@3751.4]
  assign _T_72 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3752.4]
  assign _T_73 = _T_72[17:0]; // @[FixedPointTypeClass.scala 21:58:@3753.4]
  assign _T_74 = $signed(_T_73); // @[FixedPointTypeClass.scala 21:58:@3754.4]
  assign _T_75 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3755.4]
  assign _T_76 = _T_75[17:0]; // @[FixedPointTypeClass.scala 31:68:@3756.4]
  assign _T_77 = $signed(_T_76); // @[FixedPointTypeClass.scala 31:68:@3757.4]
  assign _T_78 = $signed(io_din_real) * $signed(_T_71); // @[FixedPointTypeClass.scala 43:59:@3758.4]
  assign _T_79 = $signed(_T_74) * $signed(_GEN_9); // @[FixedPointTypeClass.scala 43:59:@3759.4]
  assign _T_80 = $signed(_T_77) * $signed(_GEN_8); // @[FixedPointTypeClass.scala 43:59:@3760.4]
  assign _T_81 = $signed(_T_78) - $signed(_T_79); // @[FixedPointTypeClass.scala 31:68:@3761.4]
  assign _T_82 = _T_81[35:0]; // @[FixedPointTypeClass.scala 31:68:@3762.4]
  assign _T_83 = $signed(_T_82); // @[FixedPointTypeClass.scala 31:68:@3763.4]
  assign _T_84 = $signed(_T_78) + $signed(_T_80); // @[FixedPointTypeClass.scala 21:58:@3764.4]
  assign _T_85 = _T_84[35:0]; // @[FixedPointTypeClass.scala 21:58:@3765.4]
  assign _T_86 = $signed(_T_85); // @[FixedPointTypeClass.scala 21:58:@3766.4]
  assign _GEN_0 = _T_83[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_86[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_2( // @[:@3773.2]
  input         clock, // @[:@3774.4]
  input  [17:0] io_din_real, // @[:@3776.4]
  input  [17:0] io_din_imag, // @[:@3776.4]
  output [17:0] io_dout_real, // @[:@3776.4]
  output [17:0] io_dout_imag, // @[:@3776.4]
  input         io_sel, // @[:@3776.4]
  input         io_stall // @[:@3776.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3807.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3807.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@3812.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@3812.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@3817.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@3817.4]
  reg [31:0] _RAND_5;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3822.4]
  reg [31:0] _RAND_6;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3822.4]
  reg [31:0] _RAND_7;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3780.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3781.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3782.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3783.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3784.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3785.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3789.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3790.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3791.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3792.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3793.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3794.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3798.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3798.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3806.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3808.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3808.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3813.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3813.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@3818.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@3818.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@3823.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@3823.4]
  wire [17:0] _GEN_10; // @[r2sdf.scala 45:17:@3829.4]
  wire [17:0] _GEN_11; // @[r2sdf.scala 45:17:@3829.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3780.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3781.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3782.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3783.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3784.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3785.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3789.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3790.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3791.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3792.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3793.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3794.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3798.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3798.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3806.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3808.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3808.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@3813.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@3813.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@3818.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@3818.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3823.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3823.4]
  assign _GEN_10 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3829.4]
  assign _GEN_11 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3829.4]
  assign io_dout_real = _GEN_11;
  assign io_dout_imag = _GEN_10;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_57_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_57_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_63_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_63_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_69_real = _RAND_4[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_69_imag = _RAND_5[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  q_dout_real = _RAND_6[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  q_dout_imag = _RAND_7[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        _T_57_real <= diff_real;
      end else begin
        _T_57_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        _T_57_imag <= diff_imag;
      end else begin
        _T_57_imag <= io_din_imag;
      end
    end
    if (_T_51) begin
      _T_63_real <= _T_57_real;
    end
    if (_T_51) begin
      _T_63_imag <= _T_57_imag;
    end
    if (_T_51) begin
      _T_69_real <= _T_63_real;
    end
    if (_T_51) begin
      _T_69_imag <= _T_63_imag;
    end
    if (_T_51) begin
      q_dout_real <= _T_69_real;
    end
    if (_T_51) begin
      q_dout_imag <= _T_69_imag;
    end
  end
endmodule
module R2SDF_TFMul_2( // @[:@3838.2]
  input  [17:0] io_din_real, // @[:@3841.4]
  input  [17:0] io_din_imag, // @[:@3841.4]
  output [17:0] io_dout_real, // @[:@3841.4]
  output [17:0] io_dout_imag, // @[:@3841.4]
  input  [3:0]  io_addr // @[:@3841.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3843.4]
  wire [2:0] _T_14; // @[r2sdf.scala 63:35:@3844.4]
  wire [2:0] addr; // @[r2sdf.scala 63:17:@3845.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [18:0] _T_105; // @[FixedPointTypeClass.scala 21:58:@3863.4]
  wire [17:0] _T_106; // @[FixedPointTypeClass.scala 21:58:@3864.4]
  wire [17:0] _T_107; // @[FixedPointTypeClass.scala 21:58:@3865.4]
  wire [18:0] _T_108; // @[FixedPointTypeClass.scala 21:58:@3866.4]
  wire [17:0] _T_109; // @[FixedPointTypeClass.scala 21:58:@3867.4]
  wire [17:0] _T_110; // @[FixedPointTypeClass.scala 21:58:@3868.4]
  wire [18:0] _T_111; // @[FixedPointTypeClass.scala 31:68:@3869.4]
  wire [17:0] _T_112; // @[FixedPointTypeClass.scala 31:68:@3870.4]
  wire [17:0] _T_113; // @[FixedPointTypeClass.scala 31:68:@3871.4]
  wire [35:0] _T_114; // @[FixedPointTypeClass.scala 43:59:@3872.4]
  wire [35:0] _T_115; // @[FixedPointTypeClass.scala 43:59:@3873.4]
  wire [35:0] _T_116; // @[FixedPointTypeClass.scala 43:59:@3874.4]
  wire [36:0] _T_117; // @[FixedPointTypeClass.scala 31:68:@3875.4]
  wire [35:0] _T_118; // @[FixedPointTypeClass.scala 31:68:@3876.4]
  wire [35:0] _T_119; // @[FixedPointTypeClass.scala 31:68:@3877.4]
  wire [36:0] _T_120; // @[FixedPointTypeClass.scala 21:58:@3878.4]
  wire [35:0] _T_121; // @[FixedPointTypeClass.scala 21:58:@3879.4]
  wire [35:0] _T_122; // @[FixedPointTypeClass.scala 21:58:@3880.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[3]; // @[r2sdf.scala 62:21:@3843.4]
  assign _T_14 = io_addr[2:0]; // @[r2sdf.scala 63:35:@3844.4]
  assign addr = msb ? 3'h0 : _T_14; // @[r2sdf.scala 63:17:@3845.4]
  assign _GEN_4 = 3'h1 == addr ? $signed(18'sh3b2) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_5 = 3'h1 == addr ? $signed(18'sh188) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_6 = 3'h2 == addr ? $signed(18'sh2d4) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_7 = 3'h2 == addr ? $signed(18'sh2d4) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_8 = 3'h3 == addr ? $signed(18'sh188) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_9 = 3'h3 == addr ? $signed(18'sh3b2) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_10 = 3'h4 == addr ? $signed(18'sh0) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_11 = 3'h4 == addr ? $signed(18'sh400) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_12 = 3'h5 == addr ? $signed(-18'sh188) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_13 = 3'h5 == addr ? $signed(18'sh3b2) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_14 = 3'h6 == addr ? $signed(-18'sh2d4) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_15 = 3'h6 == addr ? $signed(18'sh2d4) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_16 = 3'h7 == addr ? $signed(-18'sh3b2) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _GEN_17 = 3'h7 == addr ? $signed(18'sh188) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _T_105 = $signed(_GEN_16) + $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@3863.4]
  assign _T_106 = _T_105[17:0]; // @[FixedPointTypeClass.scala 21:58:@3864.4]
  assign _T_107 = $signed(_T_106); // @[FixedPointTypeClass.scala 21:58:@3865.4]
  assign _T_108 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3866.4]
  assign _T_109 = _T_108[17:0]; // @[FixedPointTypeClass.scala 21:58:@3867.4]
  assign _T_110 = $signed(_T_109); // @[FixedPointTypeClass.scala 21:58:@3868.4]
  assign _T_111 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3869.4]
  assign _T_112 = _T_111[17:0]; // @[FixedPointTypeClass.scala 31:68:@3870.4]
  assign _T_113 = $signed(_T_112); // @[FixedPointTypeClass.scala 31:68:@3871.4]
  assign _T_114 = $signed(io_din_real) * $signed(_T_107); // @[FixedPointTypeClass.scala 43:59:@3872.4]
  assign _T_115 = $signed(_T_110) * $signed(_GEN_17); // @[FixedPointTypeClass.scala 43:59:@3873.4]
  assign _T_116 = $signed(_T_113) * $signed(_GEN_16); // @[FixedPointTypeClass.scala 43:59:@3874.4]
  assign _T_117 = $signed(_T_114) - $signed(_T_115); // @[FixedPointTypeClass.scala 31:68:@3875.4]
  assign _T_118 = _T_117[35:0]; // @[FixedPointTypeClass.scala 31:68:@3876.4]
  assign _T_119 = $signed(_T_118); // @[FixedPointTypeClass.scala 31:68:@3877.4]
  assign _T_120 = $signed(_T_114) + $signed(_T_116); // @[FixedPointTypeClass.scala 21:58:@3878.4]
  assign _T_121 = _T_120[35:0]; // @[FixedPointTypeClass.scala 21:58:@3879.4]
  assign _T_122 = $signed(_T_121); // @[FixedPointTypeClass.scala 21:58:@3880.4]
  assign _GEN_0 = _T_119[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_122[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_3( // @[:@3887.2]
  input         clock, // @[:@3888.4]
  input  [17:0] io_din_real, // @[:@3890.4]
  input  [17:0] io_din_imag, // @[:@3890.4]
  output [17:0] io_dout_real, // @[:@3890.4]
  output [17:0] io_dout_imag, // @[:@3890.4]
  input         io_sel, // @[:@3890.4]
  input         io_stall // @[:@3890.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3921.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3921.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@3926.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@3926.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@3931.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@3931.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@3936.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@3936.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@3941.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@3941.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@3946.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@3946.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@3951.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@3951.4]
  reg [31:0] _RAND_13;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3956.4]
  reg [31:0] _RAND_14;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3956.4]
  reg [31:0] _RAND_15;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3894.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3895.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3896.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3897.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3898.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3899.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3903.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3904.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3905.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3906.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3907.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3908.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3912.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3912.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3920.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3922.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3922.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3927.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3927.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@3932.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@3932.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@3937.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@3937.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@3942.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@3942.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@3947.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@3947.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@3952.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@3952.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@3957.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@3957.4]
  wire [17:0] _GEN_18; // @[r2sdf.scala 45:17:@3963.4]
  wire [17:0] _GEN_19; // @[r2sdf.scala 45:17:@3963.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3894.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3895.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3896.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3897.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3898.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3899.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3903.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3904.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3905.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3906.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3907.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3908.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3912.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3912.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3920.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3922.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3922.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@3927.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@3927.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@3932.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@3932.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@3937.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@3937.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@3942.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@3942.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@3947.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@3947.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@3952.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@3952.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3957.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3957.4]
  assign _GEN_18 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3963.4]
  assign _GEN_19 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3963.4]
  assign io_dout_real = _GEN_19;
  assign io_dout_imag = _GEN_18;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_57_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_57_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_63_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_63_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_69_real = _RAND_4[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_69_imag = _RAND_5[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_75_real = _RAND_6[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_75_imag = _RAND_7[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_81_real = _RAND_8[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_81_imag = _RAND_9[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_87_real = _RAND_10[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_87_imag = _RAND_11[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_93_real = _RAND_12[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_93_imag = _RAND_13[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  q_dout_real = _RAND_14[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  q_dout_imag = _RAND_15[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        _T_57_real <= diff_real;
      end else begin
        _T_57_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        _T_57_imag <= diff_imag;
      end else begin
        _T_57_imag <= io_din_imag;
      end
    end
    if (_T_51) begin
      _T_63_real <= _T_57_real;
    end
    if (_T_51) begin
      _T_63_imag <= _T_57_imag;
    end
    if (_T_51) begin
      _T_69_real <= _T_63_real;
    end
    if (_T_51) begin
      _T_69_imag <= _T_63_imag;
    end
    if (_T_51) begin
      _T_75_real <= _T_69_real;
    end
    if (_T_51) begin
      _T_75_imag <= _T_69_imag;
    end
    if (_T_51) begin
      _T_81_real <= _T_75_real;
    end
    if (_T_51) begin
      _T_81_imag <= _T_75_imag;
    end
    if (_T_51) begin
      _T_87_real <= _T_81_real;
    end
    if (_T_51) begin
      _T_87_imag <= _T_81_imag;
    end
    if (_T_51) begin
      _T_93_real <= _T_87_real;
    end
    if (_T_51) begin
      _T_93_imag <= _T_87_imag;
    end
    if (_T_51) begin
      q_dout_real <= _T_93_real;
    end
    if (_T_51) begin
      q_dout_imag <= _T_93_imag;
    end
  end
endmodule
module R2SDF_TFMul_3( // @[:@3972.2]
  input  [17:0] io_din_real, // @[:@3975.4]
  input  [17:0] io_din_imag, // @[:@3975.4]
  output [17:0] io_dout_real, // @[:@3975.4]
  output [17:0] io_dout_imag, // @[:@3975.4]
  input  [4:0]  io_addr // @[:@3975.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3977.4]
  wire [3:0] _T_14; // @[r2sdf.scala 63:35:@3978.4]
  wire [3:0] addr; // @[r2sdf.scala 63:17:@3979.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_18; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_19; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_20; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_21; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_22; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_23; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_24; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_25; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_26; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_27; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_28; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_29; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_30; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_31; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_32; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _GEN_33; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [18:0] _T_177; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _T_178; // @[FixedPointTypeClass.scala 21:58:@4014.4]
  wire [17:0] _T_179; // @[FixedPointTypeClass.scala 21:58:@4015.4]
  wire [18:0] _T_180; // @[FixedPointTypeClass.scala 21:58:@4016.4]
  wire [17:0] _T_181; // @[FixedPointTypeClass.scala 21:58:@4017.4]
  wire [17:0] _T_182; // @[FixedPointTypeClass.scala 21:58:@4018.4]
  wire [18:0] _T_183; // @[FixedPointTypeClass.scala 31:68:@4019.4]
  wire [17:0] _T_184; // @[FixedPointTypeClass.scala 31:68:@4020.4]
  wire [17:0] _T_185; // @[FixedPointTypeClass.scala 31:68:@4021.4]
  wire [35:0] _T_186; // @[FixedPointTypeClass.scala 43:59:@4022.4]
  wire [35:0] _T_187; // @[FixedPointTypeClass.scala 43:59:@4023.4]
  wire [35:0] _T_188; // @[FixedPointTypeClass.scala 43:59:@4024.4]
  wire [36:0] _T_189; // @[FixedPointTypeClass.scala 31:68:@4025.4]
  wire [35:0] _T_190; // @[FixedPointTypeClass.scala 31:68:@4026.4]
  wire [35:0] _T_191; // @[FixedPointTypeClass.scala 31:68:@4027.4]
  wire [36:0] _T_192; // @[FixedPointTypeClass.scala 21:58:@4028.4]
  wire [35:0] _T_193; // @[FixedPointTypeClass.scala 21:58:@4029.4]
  wire [35:0] _T_194; // @[FixedPointTypeClass.scala 21:58:@4030.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[4]; // @[r2sdf.scala 62:21:@3977.4]
  assign _T_14 = io_addr[3:0]; // @[r2sdf.scala 63:35:@3978.4]
  assign addr = msb ? 4'h0 : _T_14; // @[r2sdf.scala 63:17:@3979.4]
  assign _GEN_4 = 4'h1 == addr ? $signed(18'sh3ec) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_5 = 4'h1 == addr ? $signed(18'shc8) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_6 = 4'h2 == addr ? $signed(18'sh3b2) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_7 = 4'h2 == addr ? $signed(18'sh188) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_8 = 4'h3 == addr ? $signed(18'sh353) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_9 = 4'h3 == addr ? $signed(18'sh239) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_10 = 4'h4 == addr ? $signed(18'sh2d4) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_11 = 4'h4 == addr ? $signed(18'sh2d4) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_12 = 4'h5 == addr ? $signed(18'sh239) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_13 = 4'h5 == addr ? $signed(18'sh353) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_14 = 4'h6 == addr ? $signed(18'sh188) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_15 = 4'h6 == addr ? $signed(18'sh3b2) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_16 = 4'h7 == addr ? $signed(18'shc8) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_17 = 4'h7 == addr ? $signed(18'sh3ec) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_18 = 4'h8 == addr ? $signed(18'sh0) : $signed(_GEN_16); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_19 = 4'h8 == addr ? $signed(18'sh400) : $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_20 = 4'h9 == addr ? $signed(-18'shc8) : $signed(_GEN_18); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_21 = 4'h9 == addr ? $signed(18'sh3ec) : $signed(_GEN_19); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_22 = 4'ha == addr ? $signed(-18'sh188) : $signed(_GEN_20); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_23 = 4'ha == addr ? $signed(18'sh3b2) : $signed(_GEN_21); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_24 = 4'hb == addr ? $signed(-18'sh239) : $signed(_GEN_22); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_25 = 4'hb == addr ? $signed(18'sh353) : $signed(_GEN_23); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_26 = 4'hc == addr ? $signed(-18'sh2d4) : $signed(_GEN_24); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_27 = 4'hc == addr ? $signed(18'sh2d4) : $signed(_GEN_25); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_28 = 4'hd == addr ? $signed(-18'sh353) : $signed(_GEN_26); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_29 = 4'hd == addr ? $signed(18'sh239) : $signed(_GEN_27); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_30 = 4'he == addr ? $signed(-18'sh3b2) : $signed(_GEN_28); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_31 = 4'he == addr ? $signed(18'sh188) : $signed(_GEN_29); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_32 = 4'hf == addr ? $signed(-18'sh3ec) : $signed(_GEN_30); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _GEN_33 = 4'hf == addr ? $signed(18'shc8) : $signed(_GEN_31); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _T_177 = $signed(_GEN_32) + $signed(_GEN_33); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _T_178 = _T_177[17:0]; // @[FixedPointTypeClass.scala 21:58:@4014.4]
  assign _T_179 = $signed(_T_178); // @[FixedPointTypeClass.scala 21:58:@4015.4]
  assign _T_180 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4016.4]
  assign _T_181 = _T_180[17:0]; // @[FixedPointTypeClass.scala 21:58:@4017.4]
  assign _T_182 = $signed(_T_181); // @[FixedPointTypeClass.scala 21:58:@4018.4]
  assign _T_183 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4019.4]
  assign _T_184 = _T_183[17:0]; // @[FixedPointTypeClass.scala 31:68:@4020.4]
  assign _T_185 = $signed(_T_184); // @[FixedPointTypeClass.scala 31:68:@4021.4]
  assign _T_186 = $signed(io_din_real) * $signed(_T_179); // @[FixedPointTypeClass.scala 43:59:@4022.4]
  assign _T_187 = $signed(_T_182) * $signed(_GEN_33); // @[FixedPointTypeClass.scala 43:59:@4023.4]
  assign _T_188 = $signed(_T_185) * $signed(_GEN_32); // @[FixedPointTypeClass.scala 43:59:@4024.4]
  assign _T_189 = $signed(_T_186) - $signed(_T_187); // @[FixedPointTypeClass.scala 31:68:@4025.4]
  assign _T_190 = _T_189[35:0]; // @[FixedPointTypeClass.scala 31:68:@4026.4]
  assign _T_191 = $signed(_T_190); // @[FixedPointTypeClass.scala 31:68:@4027.4]
  assign _T_192 = $signed(_T_186) + $signed(_T_188); // @[FixedPointTypeClass.scala 21:58:@4028.4]
  assign _T_193 = _T_192[35:0]; // @[FixedPointTypeClass.scala 21:58:@4029.4]
  assign _T_194 = $signed(_T_193); // @[FixedPointTypeClass.scala 21:58:@4030.4]
  assign _GEN_0 = _T_191[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_194[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_4( // @[:@4037.2]
  input         clock, // @[:@4038.4]
  input  [17:0] io_din_real, // @[:@4040.4]
  input  [17:0] io_din_imag, // @[:@4040.4]
  output [17:0] io_dout_real, // @[:@4040.4]
  output [17:0] io_dout_imag, // @[:@4040.4]
  input         io_sel, // @[:@4040.4]
  input         io_stall // @[:@4040.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@4071.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@4071.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@4076.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@4076.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@4081.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@4081.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@4086.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@4086.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@4091.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@4091.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@4096.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@4096.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@4101.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@4101.4]
  reg [31:0] _RAND_13;
  reg [17:0] _T_99_real; // @[Reg.scala 11:16:@4106.4]
  reg [31:0] _RAND_14;
  reg [17:0] _T_99_imag; // @[Reg.scala 11:16:@4106.4]
  reg [31:0] _RAND_15;
  reg [17:0] _T_105_real; // @[Reg.scala 11:16:@4111.4]
  reg [31:0] _RAND_16;
  reg [17:0] _T_105_imag; // @[Reg.scala 11:16:@4111.4]
  reg [31:0] _RAND_17;
  reg [17:0] _T_111_real; // @[Reg.scala 11:16:@4116.4]
  reg [31:0] _RAND_18;
  reg [17:0] _T_111_imag; // @[Reg.scala 11:16:@4116.4]
  reg [31:0] _RAND_19;
  reg [17:0] _T_117_real; // @[Reg.scala 11:16:@4121.4]
  reg [31:0] _RAND_20;
  reg [17:0] _T_117_imag; // @[Reg.scala 11:16:@4121.4]
  reg [31:0] _RAND_21;
  reg [17:0] _T_123_real; // @[Reg.scala 11:16:@4126.4]
  reg [31:0] _RAND_22;
  reg [17:0] _T_123_imag; // @[Reg.scala 11:16:@4126.4]
  reg [31:0] _RAND_23;
  reg [17:0] _T_129_real; // @[Reg.scala 11:16:@4131.4]
  reg [31:0] _RAND_24;
  reg [17:0] _T_129_imag; // @[Reg.scala 11:16:@4131.4]
  reg [31:0] _RAND_25;
  reg [17:0] _T_135_real; // @[Reg.scala 11:16:@4136.4]
  reg [31:0] _RAND_26;
  reg [17:0] _T_135_imag; // @[Reg.scala 11:16:@4136.4]
  reg [31:0] _RAND_27;
  reg [17:0] _T_141_real; // @[Reg.scala 11:16:@4141.4]
  reg [31:0] _RAND_28;
  reg [17:0] _T_141_imag; // @[Reg.scala 11:16:@4141.4]
  reg [31:0] _RAND_29;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@4146.4]
  reg [31:0] _RAND_30;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@4146.4]
  reg [31:0] _RAND_31;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@4044.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@4045.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@4046.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@4047.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@4048.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@4049.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@4053.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@4054.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@4055.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@4056.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@4057.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@4058.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@4062.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@4062.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@4070.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@4072.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@4072.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@4077.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@4077.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@4082.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@4082.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@4087.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@4087.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@4092.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@4092.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@4097.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@4097.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@4102.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@4102.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@4107.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@4107.4]
  wire [17:0] _GEN_18; // @[Reg.scala 12:19:@4112.4]
  wire [17:0] _GEN_19; // @[Reg.scala 12:19:@4112.4]
  wire [17:0] _GEN_20; // @[Reg.scala 12:19:@4117.4]
  wire [17:0] _GEN_21; // @[Reg.scala 12:19:@4117.4]
  wire [17:0] _GEN_22; // @[Reg.scala 12:19:@4122.4]
  wire [17:0] _GEN_23; // @[Reg.scala 12:19:@4122.4]
  wire [17:0] _GEN_24; // @[Reg.scala 12:19:@4127.4]
  wire [17:0] _GEN_25; // @[Reg.scala 12:19:@4127.4]
  wire [17:0] _GEN_26; // @[Reg.scala 12:19:@4132.4]
  wire [17:0] _GEN_27; // @[Reg.scala 12:19:@4132.4]
  wire [17:0] _GEN_28; // @[Reg.scala 12:19:@4137.4]
  wire [17:0] _GEN_29; // @[Reg.scala 12:19:@4137.4]
  wire [17:0] _GEN_30; // @[Reg.scala 12:19:@4142.4]
  wire [17:0] _GEN_31; // @[Reg.scala 12:19:@4142.4]
  wire [17:0] _GEN_32; // @[Reg.scala 12:19:@4147.4]
  wire [17:0] _GEN_33; // @[Reg.scala 12:19:@4147.4]
  wire [17:0] _GEN_34; // @[r2sdf.scala 45:17:@4153.4]
  wire [17:0] _GEN_35; // @[r2sdf.scala 45:17:@4153.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@4044.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@4045.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@4046.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4047.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@4048.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@4049.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4053.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@4054.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@4055.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@4056.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@4057.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@4058.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@4062.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@4062.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@4070.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@4072.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@4072.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@4077.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@4077.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@4082.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@4082.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@4087.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@4087.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@4092.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@4092.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@4097.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@4097.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@4102.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@4102.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(_T_99_imag); // @[Reg.scala 12:19:@4107.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(_T_99_real); // @[Reg.scala 12:19:@4107.4]
  assign _GEN_18 = _T_51 ? $signed(_T_99_imag) : $signed(_T_105_imag); // @[Reg.scala 12:19:@4112.4]
  assign _GEN_19 = _T_51 ? $signed(_T_99_real) : $signed(_T_105_real); // @[Reg.scala 12:19:@4112.4]
  assign _GEN_20 = _T_51 ? $signed(_T_105_imag) : $signed(_T_111_imag); // @[Reg.scala 12:19:@4117.4]
  assign _GEN_21 = _T_51 ? $signed(_T_105_real) : $signed(_T_111_real); // @[Reg.scala 12:19:@4117.4]
  assign _GEN_22 = _T_51 ? $signed(_T_111_imag) : $signed(_T_117_imag); // @[Reg.scala 12:19:@4122.4]
  assign _GEN_23 = _T_51 ? $signed(_T_111_real) : $signed(_T_117_real); // @[Reg.scala 12:19:@4122.4]
  assign _GEN_24 = _T_51 ? $signed(_T_117_imag) : $signed(_T_123_imag); // @[Reg.scala 12:19:@4127.4]
  assign _GEN_25 = _T_51 ? $signed(_T_117_real) : $signed(_T_123_real); // @[Reg.scala 12:19:@4127.4]
  assign _GEN_26 = _T_51 ? $signed(_T_123_imag) : $signed(_T_129_imag); // @[Reg.scala 12:19:@4132.4]
  assign _GEN_27 = _T_51 ? $signed(_T_123_real) : $signed(_T_129_real); // @[Reg.scala 12:19:@4132.4]
  assign _GEN_28 = _T_51 ? $signed(_T_129_imag) : $signed(_T_135_imag); // @[Reg.scala 12:19:@4137.4]
  assign _GEN_29 = _T_51 ? $signed(_T_129_real) : $signed(_T_135_real); // @[Reg.scala 12:19:@4137.4]
  assign _GEN_30 = _T_51 ? $signed(_T_135_imag) : $signed(_T_141_imag); // @[Reg.scala 12:19:@4142.4]
  assign _GEN_31 = _T_51 ? $signed(_T_135_real) : $signed(_T_141_real); // @[Reg.scala 12:19:@4142.4]
  assign _GEN_32 = _T_51 ? $signed(_T_141_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@4147.4]
  assign _GEN_33 = _T_51 ? $signed(_T_141_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@4147.4]
  assign _GEN_34 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@4153.4]
  assign _GEN_35 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@4153.4]
  assign io_dout_real = _GEN_35;
  assign io_dout_imag = _GEN_34;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_57_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_57_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_63_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_63_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_69_real = _RAND_4[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_69_imag = _RAND_5[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_75_real = _RAND_6[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_75_imag = _RAND_7[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_81_real = _RAND_8[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_81_imag = _RAND_9[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_87_real = _RAND_10[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_87_imag = _RAND_11[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_93_real = _RAND_12[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_93_imag = _RAND_13[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_99_real = _RAND_14[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_99_imag = _RAND_15[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_105_real = _RAND_16[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_105_imag = _RAND_17[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  _T_111_real = _RAND_18[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  _T_111_imag = _RAND_19[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  _T_117_real = _RAND_20[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  _T_117_imag = _RAND_21[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  _T_123_real = _RAND_22[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  _T_123_imag = _RAND_23[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  _T_129_real = _RAND_24[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  _T_129_imag = _RAND_25[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  _T_135_real = _RAND_26[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  _T_135_imag = _RAND_27[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  _T_141_real = _RAND_28[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  _T_141_imag = _RAND_29[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  q_dout_real = _RAND_30[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  q_dout_imag = _RAND_31[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        _T_57_real <= diff_real;
      end else begin
        _T_57_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        _T_57_imag <= diff_imag;
      end else begin
        _T_57_imag <= io_din_imag;
      end
    end
    if (_T_51) begin
      _T_63_real <= _T_57_real;
    end
    if (_T_51) begin
      _T_63_imag <= _T_57_imag;
    end
    if (_T_51) begin
      _T_69_real <= _T_63_real;
    end
    if (_T_51) begin
      _T_69_imag <= _T_63_imag;
    end
    if (_T_51) begin
      _T_75_real <= _T_69_real;
    end
    if (_T_51) begin
      _T_75_imag <= _T_69_imag;
    end
    if (_T_51) begin
      _T_81_real <= _T_75_real;
    end
    if (_T_51) begin
      _T_81_imag <= _T_75_imag;
    end
    if (_T_51) begin
      _T_87_real <= _T_81_real;
    end
    if (_T_51) begin
      _T_87_imag <= _T_81_imag;
    end
    if (_T_51) begin
      _T_93_real <= _T_87_real;
    end
    if (_T_51) begin
      _T_93_imag <= _T_87_imag;
    end
    if (_T_51) begin
      _T_99_real <= _T_93_real;
    end
    if (_T_51) begin
      _T_99_imag <= _T_93_imag;
    end
    if (_T_51) begin
      _T_105_real <= _T_99_real;
    end
    if (_T_51) begin
      _T_105_imag <= _T_99_imag;
    end
    if (_T_51) begin
      _T_111_real <= _T_105_real;
    end
    if (_T_51) begin
      _T_111_imag <= _T_105_imag;
    end
    if (_T_51) begin
      _T_117_real <= _T_111_real;
    end
    if (_T_51) begin
      _T_117_imag <= _T_111_imag;
    end
    if (_T_51) begin
      _T_123_real <= _T_117_real;
    end
    if (_T_51) begin
      _T_123_imag <= _T_117_imag;
    end
    if (_T_51) begin
      _T_129_real <= _T_123_real;
    end
    if (_T_51) begin
      _T_129_imag <= _T_123_imag;
    end
    if (_T_51) begin
      _T_135_real <= _T_129_real;
    end
    if (_T_51) begin
      _T_135_imag <= _T_129_imag;
    end
    if (_T_51) begin
      _T_141_real <= _T_135_real;
    end
    if (_T_51) begin
      _T_141_imag <= _T_135_imag;
    end
    if (_T_51) begin
      q_dout_real <= _T_141_real;
    end
    if (_T_51) begin
      q_dout_imag <= _T_141_imag;
    end
  end
endmodule
module R2SDF_TFMul_4( // @[:@4162.2]
  input  [17:0] io_din_real, // @[:@4165.4]
  input  [17:0] io_din_imag, // @[:@4165.4]
  output [17:0] io_dout_real, // @[:@4165.4]
  output [17:0] io_dout_imag, // @[:@4165.4]
  input  [5:0]  io_addr // @[:@4165.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@4167.4]
  wire [4:0] _T_14; // @[r2sdf.scala 63:35:@4168.4]
  wire [4:0] addr; // @[r2sdf.scala 63:17:@4169.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_18; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_19; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_20; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_21; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_22; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_23; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_24; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_25; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_26; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_27; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_28; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_29; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_30; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_31; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_32; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_33; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_34; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_35; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_36; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_37; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_38; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_39; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_40; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_41; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_42; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_43; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_44; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_45; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_46; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_47; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_48; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_49; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_50; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_51; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_52; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_53; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_54; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_55; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_56; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_57; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_58; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_59; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_60; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_61; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_62; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_63; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_64; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _GEN_65; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [18:0] _T_321; // @[FixedPointTypeClass.scala 21:58:@4235.4]
  wire [17:0] _T_322; // @[FixedPointTypeClass.scala 21:58:@4236.4]
  wire [17:0] _T_323; // @[FixedPointTypeClass.scala 21:58:@4237.4]
  wire [18:0] _T_324; // @[FixedPointTypeClass.scala 21:58:@4238.4]
  wire [17:0] _T_325; // @[FixedPointTypeClass.scala 21:58:@4239.4]
  wire [17:0] _T_326; // @[FixedPointTypeClass.scala 21:58:@4240.4]
  wire [18:0] _T_327; // @[FixedPointTypeClass.scala 31:68:@4241.4]
  wire [17:0] _T_328; // @[FixedPointTypeClass.scala 31:68:@4242.4]
  wire [17:0] _T_329; // @[FixedPointTypeClass.scala 31:68:@4243.4]
  wire [35:0] _T_330; // @[FixedPointTypeClass.scala 43:59:@4244.4]
  wire [35:0] _T_331; // @[FixedPointTypeClass.scala 43:59:@4245.4]
  wire [35:0] _T_332; // @[FixedPointTypeClass.scala 43:59:@4246.4]
  wire [36:0] _T_333; // @[FixedPointTypeClass.scala 31:68:@4247.4]
  wire [35:0] _T_334; // @[FixedPointTypeClass.scala 31:68:@4248.4]
  wire [35:0] _T_335; // @[FixedPointTypeClass.scala 31:68:@4249.4]
  wire [36:0] _T_336; // @[FixedPointTypeClass.scala 21:58:@4250.4]
  wire [35:0] _T_337; // @[FixedPointTypeClass.scala 21:58:@4251.4]
  wire [35:0] _T_338; // @[FixedPointTypeClass.scala 21:58:@4252.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[5]; // @[r2sdf.scala 62:21:@4167.4]
  assign _T_14 = io_addr[4:0]; // @[r2sdf.scala 63:35:@4168.4]
  assign addr = msb ? 5'h0 : _T_14; // @[r2sdf.scala 63:17:@4169.4]
  assign _GEN_4 = 5'h1 == addr ? $signed(18'sh3fb) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_5 = 5'h1 == addr ? $signed(18'sh64) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_6 = 5'h2 == addr ? $signed(18'sh3ec) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_7 = 5'h2 == addr ? $signed(18'shc8) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_8 = 5'h3 == addr ? $signed(18'sh3d4) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_9 = 5'h3 == addr ? $signed(18'sh129) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_10 = 5'h4 == addr ? $signed(18'sh3b2) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_11 = 5'h4 == addr ? $signed(18'sh188) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_12 = 5'h5 == addr ? $signed(18'sh387) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_13 = 5'h5 == addr ? $signed(18'sh1e3) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_14 = 5'h6 == addr ? $signed(18'sh353) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_15 = 5'h6 == addr ? $signed(18'sh239) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_16 = 5'h7 == addr ? $signed(18'sh318) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_17 = 5'h7 == addr ? $signed(18'sh28a) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_18 = 5'h8 == addr ? $signed(18'sh2d4) : $signed(_GEN_16); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_19 = 5'h8 == addr ? $signed(18'sh2d4) : $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_20 = 5'h9 == addr ? $signed(18'sh28a) : $signed(_GEN_18); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_21 = 5'h9 == addr ? $signed(18'sh318) : $signed(_GEN_19); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_22 = 5'ha == addr ? $signed(18'sh239) : $signed(_GEN_20); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_23 = 5'ha == addr ? $signed(18'sh353) : $signed(_GEN_21); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_24 = 5'hb == addr ? $signed(18'sh1e3) : $signed(_GEN_22); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_25 = 5'hb == addr ? $signed(18'sh387) : $signed(_GEN_23); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_26 = 5'hc == addr ? $signed(18'sh188) : $signed(_GEN_24); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_27 = 5'hc == addr ? $signed(18'sh3b2) : $signed(_GEN_25); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_28 = 5'hd == addr ? $signed(18'sh129) : $signed(_GEN_26); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_29 = 5'hd == addr ? $signed(18'sh3d4) : $signed(_GEN_27); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_30 = 5'he == addr ? $signed(18'shc8) : $signed(_GEN_28); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_31 = 5'he == addr ? $signed(18'sh3ec) : $signed(_GEN_29); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_32 = 5'hf == addr ? $signed(18'sh64) : $signed(_GEN_30); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_33 = 5'hf == addr ? $signed(18'sh3fb) : $signed(_GEN_31); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_34 = 5'h10 == addr ? $signed(18'sh0) : $signed(_GEN_32); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_35 = 5'h10 == addr ? $signed(18'sh400) : $signed(_GEN_33); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_36 = 5'h11 == addr ? $signed(-18'sh64) : $signed(_GEN_34); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_37 = 5'h11 == addr ? $signed(18'sh3fb) : $signed(_GEN_35); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_38 = 5'h12 == addr ? $signed(-18'shc8) : $signed(_GEN_36); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_39 = 5'h12 == addr ? $signed(18'sh3ec) : $signed(_GEN_37); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_40 = 5'h13 == addr ? $signed(-18'sh129) : $signed(_GEN_38); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_41 = 5'h13 == addr ? $signed(18'sh3d4) : $signed(_GEN_39); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_42 = 5'h14 == addr ? $signed(-18'sh188) : $signed(_GEN_40); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_43 = 5'h14 == addr ? $signed(18'sh3b2) : $signed(_GEN_41); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_44 = 5'h15 == addr ? $signed(-18'sh1e3) : $signed(_GEN_42); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_45 = 5'h15 == addr ? $signed(18'sh387) : $signed(_GEN_43); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_46 = 5'h16 == addr ? $signed(-18'sh239) : $signed(_GEN_44); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_47 = 5'h16 == addr ? $signed(18'sh353) : $signed(_GEN_45); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_48 = 5'h17 == addr ? $signed(-18'sh28a) : $signed(_GEN_46); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_49 = 5'h17 == addr ? $signed(18'sh318) : $signed(_GEN_47); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_50 = 5'h18 == addr ? $signed(-18'sh2d4) : $signed(_GEN_48); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_51 = 5'h18 == addr ? $signed(18'sh2d4) : $signed(_GEN_49); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_52 = 5'h19 == addr ? $signed(-18'sh318) : $signed(_GEN_50); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_53 = 5'h19 == addr ? $signed(18'sh28a) : $signed(_GEN_51); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_54 = 5'h1a == addr ? $signed(-18'sh353) : $signed(_GEN_52); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_55 = 5'h1a == addr ? $signed(18'sh239) : $signed(_GEN_53); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_56 = 5'h1b == addr ? $signed(-18'sh387) : $signed(_GEN_54); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_57 = 5'h1b == addr ? $signed(18'sh1e3) : $signed(_GEN_55); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_58 = 5'h1c == addr ? $signed(-18'sh3b2) : $signed(_GEN_56); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_59 = 5'h1c == addr ? $signed(18'sh188) : $signed(_GEN_57); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_60 = 5'h1d == addr ? $signed(-18'sh3d4) : $signed(_GEN_58); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_61 = 5'h1d == addr ? $signed(18'sh129) : $signed(_GEN_59); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_62 = 5'h1e == addr ? $signed(-18'sh3ec) : $signed(_GEN_60); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_63 = 5'h1e == addr ? $signed(18'shc8) : $signed(_GEN_61); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_64 = 5'h1f == addr ? $signed(-18'sh3fb) : $signed(_GEN_62); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _GEN_65 = 5'h1f == addr ? $signed(18'sh64) : $signed(_GEN_63); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _T_321 = $signed(_GEN_64) + $signed(_GEN_65); // @[FixedPointTypeClass.scala 21:58:@4235.4]
  assign _T_322 = _T_321[17:0]; // @[FixedPointTypeClass.scala 21:58:@4236.4]
  assign _T_323 = $signed(_T_322); // @[FixedPointTypeClass.scala 21:58:@4237.4]
  assign _T_324 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4238.4]
  assign _T_325 = _T_324[17:0]; // @[FixedPointTypeClass.scala 21:58:@4239.4]
  assign _T_326 = $signed(_T_325); // @[FixedPointTypeClass.scala 21:58:@4240.4]
  assign _T_327 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4241.4]
  assign _T_328 = _T_327[17:0]; // @[FixedPointTypeClass.scala 31:68:@4242.4]
  assign _T_329 = $signed(_T_328); // @[FixedPointTypeClass.scala 31:68:@4243.4]
  assign _T_330 = $signed(io_din_real) * $signed(_T_323); // @[FixedPointTypeClass.scala 43:59:@4244.4]
  assign _T_331 = $signed(_T_326) * $signed(_GEN_65); // @[FixedPointTypeClass.scala 43:59:@4245.4]
  assign _T_332 = $signed(_T_329) * $signed(_GEN_64); // @[FixedPointTypeClass.scala 43:59:@4246.4]
  assign _T_333 = $signed(_T_330) - $signed(_T_331); // @[FixedPointTypeClass.scala 31:68:@4247.4]
  assign _T_334 = _T_333[35:0]; // @[FixedPointTypeClass.scala 31:68:@4248.4]
  assign _T_335 = $signed(_T_334); // @[FixedPointTypeClass.scala 31:68:@4249.4]
  assign _T_336 = $signed(_T_330) + $signed(_T_332); // @[FixedPointTypeClass.scala 21:58:@4250.4]
  assign _T_337 = _T_336[35:0]; // @[FixedPointTypeClass.scala 21:58:@4251.4]
  assign _T_338 = $signed(_T_337); // @[FixedPointTypeClass.scala 21:58:@4252.4]
  assign _GEN_0 = _T_335[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_338[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_5( // @[:@4259.2]
  input         clock, // @[:@4260.4]
  input  [17:0] io_din_real, // @[:@4262.4]
  input  [17:0] io_din_imag, // @[:@4262.4]
  output [17:0] io_dout_real, // @[:@4262.4]
  output [17:0] io_dout_imag, // @[:@4262.4]
  input         io_sel, // @[:@4262.4]
  input         io_stall // @[:@4262.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@4293.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@4293.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@4298.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@4298.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@4303.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@4303.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@4308.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@4308.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@4313.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@4313.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@4318.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@4318.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@4323.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@4323.4]
  reg [31:0] _RAND_13;
  reg [17:0] _T_99_real; // @[Reg.scala 11:16:@4328.4]
  reg [31:0] _RAND_14;
  reg [17:0] _T_99_imag; // @[Reg.scala 11:16:@4328.4]
  reg [31:0] _RAND_15;
  reg [17:0] _T_105_real; // @[Reg.scala 11:16:@4333.4]
  reg [31:0] _RAND_16;
  reg [17:0] _T_105_imag; // @[Reg.scala 11:16:@4333.4]
  reg [31:0] _RAND_17;
  reg [17:0] _T_111_real; // @[Reg.scala 11:16:@4338.4]
  reg [31:0] _RAND_18;
  reg [17:0] _T_111_imag; // @[Reg.scala 11:16:@4338.4]
  reg [31:0] _RAND_19;
  reg [17:0] _T_117_real; // @[Reg.scala 11:16:@4343.4]
  reg [31:0] _RAND_20;
  reg [17:0] _T_117_imag; // @[Reg.scala 11:16:@4343.4]
  reg [31:0] _RAND_21;
  reg [17:0] _T_123_real; // @[Reg.scala 11:16:@4348.4]
  reg [31:0] _RAND_22;
  reg [17:0] _T_123_imag; // @[Reg.scala 11:16:@4348.4]
  reg [31:0] _RAND_23;
  reg [17:0] _T_129_real; // @[Reg.scala 11:16:@4353.4]
  reg [31:0] _RAND_24;
  reg [17:0] _T_129_imag; // @[Reg.scala 11:16:@4353.4]
  reg [31:0] _RAND_25;
  reg [17:0] _T_135_real; // @[Reg.scala 11:16:@4358.4]
  reg [31:0] _RAND_26;
  reg [17:0] _T_135_imag; // @[Reg.scala 11:16:@4358.4]
  reg [31:0] _RAND_27;
  reg [17:0] _T_141_real; // @[Reg.scala 11:16:@4363.4]
  reg [31:0] _RAND_28;
  reg [17:0] _T_141_imag; // @[Reg.scala 11:16:@4363.4]
  reg [31:0] _RAND_29;
  reg [17:0] _T_147_real; // @[Reg.scala 11:16:@4368.4]
  reg [31:0] _RAND_30;
  reg [17:0] _T_147_imag; // @[Reg.scala 11:16:@4368.4]
  reg [31:0] _RAND_31;
  reg [17:0] _T_153_real; // @[Reg.scala 11:16:@4373.4]
  reg [31:0] _RAND_32;
  reg [17:0] _T_153_imag; // @[Reg.scala 11:16:@4373.4]
  reg [31:0] _RAND_33;
  reg [17:0] _T_159_real; // @[Reg.scala 11:16:@4378.4]
  reg [31:0] _RAND_34;
  reg [17:0] _T_159_imag; // @[Reg.scala 11:16:@4378.4]
  reg [31:0] _RAND_35;
  reg [17:0] _T_165_real; // @[Reg.scala 11:16:@4383.4]
  reg [31:0] _RAND_36;
  reg [17:0] _T_165_imag; // @[Reg.scala 11:16:@4383.4]
  reg [31:0] _RAND_37;
  reg [17:0] _T_171_real; // @[Reg.scala 11:16:@4388.4]
  reg [31:0] _RAND_38;
  reg [17:0] _T_171_imag; // @[Reg.scala 11:16:@4388.4]
  reg [31:0] _RAND_39;
  reg [17:0] _T_177_real; // @[Reg.scala 11:16:@4393.4]
  reg [31:0] _RAND_40;
  reg [17:0] _T_177_imag; // @[Reg.scala 11:16:@4393.4]
  reg [31:0] _RAND_41;
  reg [17:0] _T_183_real; // @[Reg.scala 11:16:@4398.4]
  reg [31:0] _RAND_42;
  reg [17:0] _T_183_imag; // @[Reg.scala 11:16:@4398.4]
  reg [31:0] _RAND_43;
  reg [17:0] _T_189_real; // @[Reg.scala 11:16:@4403.4]
  reg [31:0] _RAND_44;
  reg [17:0] _T_189_imag; // @[Reg.scala 11:16:@4403.4]
  reg [31:0] _RAND_45;
  reg [17:0] _T_195_real; // @[Reg.scala 11:16:@4408.4]
  reg [31:0] _RAND_46;
  reg [17:0] _T_195_imag; // @[Reg.scala 11:16:@4408.4]
  reg [31:0] _RAND_47;
  reg [17:0] _T_201_real; // @[Reg.scala 11:16:@4413.4]
  reg [31:0] _RAND_48;
  reg [17:0] _T_201_imag; // @[Reg.scala 11:16:@4413.4]
  reg [31:0] _RAND_49;
  reg [17:0] _T_207_real; // @[Reg.scala 11:16:@4418.4]
  reg [31:0] _RAND_50;
  reg [17:0] _T_207_imag; // @[Reg.scala 11:16:@4418.4]
  reg [31:0] _RAND_51;
  reg [17:0] _T_213_real; // @[Reg.scala 11:16:@4423.4]
  reg [31:0] _RAND_52;
  reg [17:0] _T_213_imag; // @[Reg.scala 11:16:@4423.4]
  reg [31:0] _RAND_53;
  reg [17:0] _T_219_real; // @[Reg.scala 11:16:@4428.4]
  reg [31:0] _RAND_54;
  reg [17:0] _T_219_imag; // @[Reg.scala 11:16:@4428.4]
  reg [31:0] _RAND_55;
  reg [17:0] _T_225_real; // @[Reg.scala 11:16:@4433.4]
  reg [31:0] _RAND_56;
  reg [17:0] _T_225_imag; // @[Reg.scala 11:16:@4433.4]
  reg [31:0] _RAND_57;
  reg [17:0] _T_231_real; // @[Reg.scala 11:16:@4438.4]
  reg [31:0] _RAND_58;
  reg [17:0] _T_231_imag; // @[Reg.scala 11:16:@4438.4]
  reg [31:0] _RAND_59;
  reg [17:0] _T_237_real; // @[Reg.scala 11:16:@4443.4]
  reg [31:0] _RAND_60;
  reg [17:0] _T_237_imag; // @[Reg.scala 11:16:@4443.4]
  reg [31:0] _RAND_61;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@4448.4]
  reg [31:0] _RAND_62;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@4448.4]
  reg [31:0] _RAND_63;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@4266.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@4267.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@4268.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@4269.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@4270.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@4271.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@4275.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@4276.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@4277.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@4278.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@4279.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@4280.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@4284.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@4284.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@4292.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@4294.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@4294.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@4299.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@4299.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@4304.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@4304.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@4309.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@4309.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@4314.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@4314.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@4319.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@4319.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@4324.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@4324.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@4329.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@4329.4]
  wire [17:0] _GEN_18; // @[Reg.scala 12:19:@4334.4]
  wire [17:0] _GEN_19; // @[Reg.scala 12:19:@4334.4]
  wire [17:0] _GEN_20; // @[Reg.scala 12:19:@4339.4]
  wire [17:0] _GEN_21; // @[Reg.scala 12:19:@4339.4]
  wire [17:0] _GEN_22; // @[Reg.scala 12:19:@4344.4]
  wire [17:0] _GEN_23; // @[Reg.scala 12:19:@4344.4]
  wire [17:0] _GEN_24; // @[Reg.scala 12:19:@4349.4]
  wire [17:0] _GEN_25; // @[Reg.scala 12:19:@4349.4]
  wire [17:0] _GEN_26; // @[Reg.scala 12:19:@4354.4]
  wire [17:0] _GEN_27; // @[Reg.scala 12:19:@4354.4]
  wire [17:0] _GEN_28; // @[Reg.scala 12:19:@4359.4]
  wire [17:0] _GEN_29; // @[Reg.scala 12:19:@4359.4]
  wire [17:0] _GEN_30; // @[Reg.scala 12:19:@4364.4]
  wire [17:0] _GEN_31; // @[Reg.scala 12:19:@4364.4]
  wire [17:0] _GEN_32; // @[Reg.scala 12:19:@4369.4]
  wire [17:0] _GEN_33; // @[Reg.scala 12:19:@4369.4]
  wire [17:0] _GEN_34; // @[Reg.scala 12:19:@4374.4]
  wire [17:0] _GEN_35; // @[Reg.scala 12:19:@4374.4]
  wire [17:0] _GEN_36; // @[Reg.scala 12:19:@4379.4]
  wire [17:0] _GEN_37; // @[Reg.scala 12:19:@4379.4]
  wire [17:0] _GEN_38; // @[Reg.scala 12:19:@4384.4]
  wire [17:0] _GEN_39; // @[Reg.scala 12:19:@4384.4]
  wire [17:0] _GEN_40; // @[Reg.scala 12:19:@4389.4]
  wire [17:0] _GEN_41; // @[Reg.scala 12:19:@4389.4]
  wire [17:0] _GEN_42; // @[Reg.scala 12:19:@4394.4]
  wire [17:0] _GEN_43; // @[Reg.scala 12:19:@4394.4]
  wire [17:0] _GEN_44; // @[Reg.scala 12:19:@4399.4]
  wire [17:0] _GEN_45; // @[Reg.scala 12:19:@4399.4]
  wire [17:0] _GEN_46; // @[Reg.scala 12:19:@4404.4]
  wire [17:0] _GEN_47; // @[Reg.scala 12:19:@4404.4]
  wire [17:0] _GEN_48; // @[Reg.scala 12:19:@4409.4]
  wire [17:0] _GEN_49; // @[Reg.scala 12:19:@4409.4]
  wire [17:0] _GEN_50; // @[Reg.scala 12:19:@4414.4]
  wire [17:0] _GEN_51; // @[Reg.scala 12:19:@4414.4]
  wire [17:0] _GEN_52; // @[Reg.scala 12:19:@4419.4]
  wire [17:0] _GEN_53; // @[Reg.scala 12:19:@4419.4]
  wire [17:0] _GEN_54; // @[Reg.scala 12:19:@4424.4]
  wire [17:0] _GEN_55; // @[Reg.scala 12:19:@4424.4]
  wire [17:0] _GEN_56; // @[Reg.scala 12:19:@4429.4]
  wire [17:0] _GEN_57; // @[Reg.scala 12:19:@4429.4]
  wire [17:0] _GEN_58; // @[Reg.scala 12:19:@4434.4]
  wire [17:0] _GEN_59; // @[Reg.scala 12:19:@4434.4]
  wire [17:0] _GEN_60; // @[Reg.scala 12:19:@4439.4]
  wire [17:0] _GEN_61; // @[Reg.scala 12:19:@4439.4]
  wire [17:0] _GEN_62; // @[Reg.scala 12:19:@4444.4]
  wire [17:0] _GEN_63; // @[Reg.scala 12:19:@4444.4]
  wire [17:0] _GEN_64; // @[Reg.scala 12:19:@4449.4]
  wire [17:0] _GEN_65; // @[Reg.scala 12:19:@4449.4]
  wire [17:0] _GEN_66; // @[r2sdf.scala 45:17:@4455.4]
  wire [17:0] _GEN_67; // @[r2sdf.scala 45:17:@4455.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@4266.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@4267.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@4268.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4269.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@4270.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@4271.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4275.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@4276.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@4277.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@4278.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@4279.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@4280.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@4284.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@4284.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@4292.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@4294.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@4294.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@4299.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@4299.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@4304.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@4304.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@4309.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@4309.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@4314.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@4314.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@4319.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@4319.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@4324.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@4324.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(_T_99_imag); // @[Reg.scala 12:19:@4329.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(_T_99_real); // @[Reg.scala 12:19:@4329.4]
  assign _GEN_18 = _T_51 ? $signed(_T_99_imag) : $signed(_T_105_imag); // @[Reg.scala 12:19:@4334.4]
  assign _GEN_19 = _T_51 ? $signed(_T_99_real) : $signed(_T_105_real); // @[Reg.scala 12:19:@4334.4]
  assign _GEN_20 = _T_51 ? $signed(_T_105_imag) : $signed(_T_111_imag); // @[Reg.scala 12:19:@4339.4]
  assign _GEN_21 = _T_51 ? $signed(_T_105_real) : $signed(_T_111_real); // @[Reg.scala 12:19:@4339.4]
  assign _GEN_22 = _T_51 ? $signed(_T_111_imag) : $signed(_T_117_imag); // @[Reg.scala 12:19:@4344.4]
  assign _GEN_23 = _T_51 ? $signed(_T_111_real) : $signed(_T_117_real); // @[Reg.scala 12:19:@4344.4]
  assign _GEN_24 = _T_51 ? $signed(_T_117_imag) : $signed(_T_123_imag); // @[Reg.scala 12:19:@4349.4]
  assign _GEN_25 = _T_51 ? $signed(_T_117_real) : $signed(_T_123_real); // @[Reg.scala 12:19:@4349.4]
  assign _GEN_26 = _T_51 ? $signed(_T_123_imag) : $signed(_T_129_imag); // @[Reg.scala 12:19:@4354.4]
  assign _GEN_27 = _T_51 ? $signed(_T_123_real) : $signed(_T_129_real); // @[Reg.scala 12:19:@4354.4]
  assign _GEN_28 = _T_51 ? $signed(_T_129_imag) : $signed(_T_135_imag); // @[Reg.scala 12:19:@4359.4]
  assign _GEN_29 = _T_51 ? $signed(_T_129_real) : $signed(_T_135_real); // @[Reg.scala 12:19:@4359.4]
  assign _GEN_30 = _T_51 ? $signed(_T_135_imag) : $signed(_T_141_imag); // @[Reg.scala 12:19:@4364.4]
  assign _GEN_31 = _T_51 ? $signed(_T_135_real) : $signed(_T_141_real); // @[Reg.scala 12:19:@4364.4]
  assign _GEN_32 = _T_51 ? $signed(_T_141_imag) : $signed(_T_147_imag); // @[Reg.scala 12:19:@4369.4]
  assign _GEN_33 = _T_51 ? $signed(_T_141_real) : $signed(_T_147_real); // @[Reg.scala 12:19:@4369.4]
  assign _GEN_34 = _T_51 ? $signed(_T_147_imag) : $signed(_T_153_imag); // @[Reg.scala 12:19:@4374.4]
  assign _GEN_35 = _T_51 ? $signed(_T_147_real) : $signed(_T_153_real); // @[Reg.scala 12:19:@4374.4]
  assign _GEN_36 = _T_51 ? $signed(_T_153_imag) : $signed(_T_159_imag); // @[Reg.scala 12:19:@4379.4]
  assign _GEN_37 = _T_51 ? $signed(_T_153_real) : $signed(_T_159_real); // @[Reg.scala 12:19:@4379.4]
  assign _GEN_38 = _T_51 ? $signed(_T_159_imag) : $signed(_T_165_imag); // @[Reg.scala 12:19:@4384.4]
  assign _GEN_39 = _T_51 ? $signed(_T_159_real) : $signed(_T_165_real); // @[Reg.scala 12:19:@4384.4]
  assign _GEN_40 = _T_51 ? $signed(_T_165_imag) : $signed(_T_171_imag); // @[Reg.scala 12:19:@4389.4]
  assign _GEN_41 = _T_51 ? $signed(_T_165_real) : $signed(_T_171_real); // @[Reg.scala 12:19:@4389.4]
  assign _GEN_42 = _T_51 ? $signed(_T_171_imag) : $signed(_T_177_imag); // @[Reg.scala 12:19:@4394.4]
  assign _GEN_43 = _T_51 ? $signed(_T_171_real) : $signed(_T_177_real); // @[Reg.scala 12:19:@4394.4]
  assign _GEN_44 = _T_51 ? $signed(_T_177_imag) : $signed(_T_183_imag); // @[Reg.scala 12:19:@4399.4]
  assign _GEN_45 = _T_51 ? $signed(_T_177_real) : $signed(_T_183_real); // @[Reg.scala 12:19:@4399.4]
  assign _GEN_46 = _T_51 ? $signed(_T_183_imag) : $signed(_T_189_imag); // @[Reg.scala 12:19:@4404.4]
  assign _GEN_47 = _T_51 ? $signed(_T_183_real) : $signed(_T_189_real); // @[Reg.scala 12:19:@4404.4]
  assign _GEN_48 = _T_51 ? $signed(_T_189_imag) : $signed(_T_195_imag); // @[Reg.scala 12:19:@4409.4]
  assign _GEN_49 = _T_51 ? $signed(_T_189_real) : $signed(_T_195_real); // @[Reg.scala 12:19:@4409.4]
  assign _GEN_50 = _T_51 ? $signed(_T_195_imag) : $signed(_T_201_imag); // @[Reg.scala 12:19:@4414.4]
  assign _GEN_51 = _T_51 ? $signed(_T_195_real) : $signed(_T_201_real); // @[Reg.scala 12:19:@4414.4]
  assign _GEN_52 = _T_51 ? $signed(_T_201_imag) : $signed(_T_207_imag); // @[Reg.scala 12:19:@4419.4]
  assign _GEN_53 = _T_51 ? $signed(_T_201_real) : $signed(_T_207_real); // @[Reg.scala 12:19:@4419.4]
  assign _GEN_54 = _T_51 ? $signed(_T_207_imag) : $signed(_T_213_imag); // @[Reg.scala 12:19:@4424.4]
  assign _GEN_55 = _T_51 ? $signed(_T_207_real) : $signed(_T_213_real); // @[Reg.scala 12:19:@4424.4]
  assign _GEN_56 = _T_51 ? $signed(_T_213_imag) : $signed(_T_219_imag); // @[Reg.scala 12:19:@4429.4]
  assign _GEN_57 = _T_51 ? $signed(_T_213_real) : $signed(_T_219_real); // @[Reg.scala 12:19:@4429.4]
  assign _GEN_58 = _T_51 ? $signed(_T_219_imag) : $signed(_T_225_imag); // @[Reg.scala 12:19:@4434.4]
  assign _GEN_59 = _T_51 ? $signed(_T_219_real) : $signed(_T_225_real); // @[Reg.scala 12:19:@4434.4]
  assign _GEN_60 = _T_51 ? $signed(_T_225_imag) : $signed(_T_231_imag); // @[Reg.scala 12:19:@4439.4]
  assign _GEN_61 = _T_51 ? $signed(_T_225_real) : $signed(_T_231_real); // @[Reg.scala 12:19:@4439.4]
  assign _GEN_62 = _T_51 ? $signed(_T_231_imag) : $signed(_T_237_imag); // @[Reg.scala 12:19:@4444.4]
  assign _GEN_63 = _T_51 ? $signed(_T_231_real) : $signed(_T_237_real); // @[Reg.scala 12:19:@4444.4]
  assign _GEN_64 = _T_51 ? $signed(_T_237_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@4449.4]
  assign _GEN_65 = _T_51 ? $signed(_T_237_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@4449.4]
  assign _GEN_66 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@4455.4]
  assign _GEN_67 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@4455.4]
  assign io_dout_real = _GEN_67;
  assign io_dout_imag = _GEN_66;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_57_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_57_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_63_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_63_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_69_real = _RAND_4[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_69_imag = _RAND_5[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_75_real = _RAND_6[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_75_imag = _RAND_7[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_81_real = _RAND_8[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_81_imag = _RAND_9[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_87_real = _RAND_10[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_87_imag = _RAND_11[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_93_real = _RAND_12[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_93_imag = _RAND_13[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_99_real = _RAND_14[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_99_imag = _RAND_15[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_105_real = _RAND_16[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_105_imag = _RAND_17[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  _T_111_real = _RAND_18[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  _T_111_imag = _RAND_19[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  _T_117_real = _RAND_20[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  _T_117_imag = _RAND_21[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  _T_123_real = _RAND_22[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  _T_123_imag = _RAND_23[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  _T_129_real = _RAND_24[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  _T_129_imag = _RAND_25[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  _T_135_real = _RAND_26[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  _T_135_imag = _RAND_27[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  _T_141_real = _RAND_28[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  _T_141_imag = _RAND_29[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  _T_147_real = _RAND_30[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  _T_147_imag = _RAND_31[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  _T_153_real = _RAND_32[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  _T_153_imag = _RAND_33[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  _T_159_real = _RAND_34[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  _T_159_imag = _RAND_35[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  _T_165_real = _RAND_36[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  _T_165_imag = _RAND_37[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  _T_171_real = _RAND_38[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  _T_171_imag = _RAND_39[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  _T_177_real = _RAND_40[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  _T_177_imag = _RAND_41[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  _T_183_real = _RAND_42[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  _T_183_imag = _RAND_43[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  _T_189_real = _RAND_44[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  _T_189_imag = _RAND_45[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  _T_195_real = _RAND_46[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  _T_195_imag = _RAND_47[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  _T_201_real = _RAND_48[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  _T_201_imag = _RAND_49[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  _T_207_real = _RAND_50[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  _T_207_imag = _RAND_51[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  _T_213_real = _RAND_52[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  _T_213_imag = _RAND_53[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  _T_219_real = _RAND_54[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  _T_219_imag = _RAND_55[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  _T_225_real = _RAND_56[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  _T_225_imag = _RAND_57[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  _T_231_real = _RAND_58[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  _T_231_imag = _RAND_59[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  _T_237_real = _RAND_60[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  _T_237_imag = _RAND_61[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  q_dout_real = _RAND_62[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  q_dout_imag = _RAND_63[17:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_51) begin
      if (io_sel) begin
        _T_57_real <= diff_real;
      end else begin
        _T_57_real <= io_din_real;
      end
    end
    if (_T_51) begin
      if (io_sel) begin
        _T_57_imag <= diff_imag;
      end else begin
        _T_57_imag <= io_din_imag;
      end
    end
    if (_T_51) begin
      _T_63_real <= _T_57_real;
    end
    if (_T_51) begin
      _T_63_imag <= _T_57_imag;
    end
    if (_T_51) begin
      _T_69_real <= _T_63_real;
    end
    if (_T_51) begin
      _T_69_imag <= _T_63_imag;
    end
    if (_T_51) begin
      _T_75_real <= _T_69_real;
    end
    if (_T_51) begin
      _T_75_imag <= _T_69_imag;
    end
    if (_T_51) begin
      _T_81_real <= _T_75_real;
    end
    if (_T_51) begin
      _T_81_imag <= _T_75_imag;
    end
    if (_T_51) begin
      _T_87_real <= _T_81_real;
    end
    if (_T_51) begin
      _T_87_imag <= _T_81_imag;
    end
    if (_T_51) begin
      _T_93_real <= _T_87_real;
    end
    if (_T_51) begin
      _T_93_imag <= _T_87_imag;
    end
    if (_T_51) begin
      _T_99_real <= _T_93_real;
    end
    if (_T_51) begin
      _T_99_imag <= _T_93_imag;
    end
    if (_T_51) begin
      _T_105_real <= _T_99_real;
    end
    if (_T_51) begin
      _T_105_imag <= _T_99_imag;
    end
    if (_T_51) begin
      _T_111_real <= _T_105_real;
    end
    if (_T_51) begin
      _T_111_imag <= _T_105_imag;
    end
    if (_T_51) begin
      _T_117_real <= _T_111_real;
    end
    if (_T_51) begin
      _T_117_imag <= _T_111_imag;
    end
    if (_T_51) begin
      _T_123_real <= _T_117_real;
    end
    if (_T_51) begin
      _T_123_imag <= _T_117_imag;
    end
    if (_T_51) begin
      _T_129_real <= _T_123_real;
    end
    if (_T_51) begin
      _T_129_imag <= _T_123_imag;
    end
    if (_T_51) begin
      _T_135_real <= _T_129_real;
    end
    if (_T_51) begin
      _T_135_imag <= _T_129_imag;
    end
    if (_T_51) begin
      _T_141_real <= _T_135_real;
    end
    if (_T_51) begin
      _T_141_imag <= _T_135_imag;
    end
    if (_T_51) begin
      _T_147_real <= _T_141_real;
    end
    if (_T_51) begin
      _T_147_imag <= _T_141_imag;
    end
    if (_T_51) begin
      _T_153_real <= _T_147_real;
    end
    if (_T_51) begin
      _T_153_imag <= _T_147_imag;
    end
    if (_T_51) begin
      _T_159_real <= _T_153_real;
    end
    if (_T_51) begin
      _T_159_imag <= _T_153_imag;
    end
    if (_T_51) begin
      _T_165_real <= _T_159_real;
    end
    if (_T_51) begin
      _T_165_imag <= _T_159_imag;
    end
    if (_T_51) begin
      _T_171_real <= _T_165_real;
    end
    if (_T_51) begin
      _T_171_imag <= _T_165_imag;
    end
    if (_T_51) begin
      _T_177_real <= _T_171_real;
    end
    if (_T_51) begin
      _T_177_imag <= _T_171_imag;
    end
    if (_T_51) begin
      _T_183_real <= _T_177_real;
    end
    if (_T_51) begin
      _T_183_imag <= _T_177_imag;
    end
    if (_T_51) begin
      _T_189_real <= _T_183_real;
    end
    if (_T_51) begin
      _T_189_imag <= _T_183_imag;
    end
    if (_T_51) begin
      _T_195_real <= _T_189_real;
    end
    if (_T_51) begin
      _T_195_imag <= _T_189_imag;
    end
    if (_T_51) begin
      _T_201_real <= _T_195_real;
    end
    if (_T_51) begin
      _T_201_imag <= _T_195_imag;
    end
    if (_T_51) begin
      _T_207_real <= _T_201_real;
    end
    if (_T_51) begin
      _T_207_imag <= _T_201_imag;
    end
    if (_T_51) begin
      _T_213_real <= _T_207_real;
    end
    if (_T_51) begin
      _T_213_imag <= _T_207_imag;
    end
    if (_T_51) begin
      _T_219_real <= _T_213_real;
    end
    if (_T_51) begin
      _T_219_imag <= _T_213_imag;
    end
    if (_T_51) begin
      _T_225_real <= _T_219_real;
    end
    if (_T_51) begin
      _T_225_imag <= _T_219_imag;
    end
    if (_T_51) begin
      _T_231_real <= _T_225_real;
    end
    if (_T_51) begin
      _T_231_imag <= _T_225_imag;
    end
    if (_T_51) begin
      _T_237_real <= _T_231_real;
    end
    if (_T_51) begin
      _T_237_imag <= _T_231_imag;
    end
    if (_T_51) begin
      q_dout_real <= _T_237_real;
    end
    if (_T_51) begin
      q_dout_imag <= _T_237_imag;
    end
  end
endmodule
module FFT_R2SDF( // @[:@4464.2]
  input         clock, // @[:@4465.4]
  input         reset, // @[:@4466.4]
  input         io_din_valid, // @[:@4467.4]
  input  [11:0] io_din_bits_real, // @[:@4467.4]
  input  [11:0] io_din_bits_imag, // @[:@4467.4]
  output        io_dout_valid, // @[:@4467.4]
  output [11:0] io_dout_bits_real, // @[:@4467.4]
  output [11:0] io_dout_bits_imag, // @[:@4467.4]
  input         io_init, // @[:@4467.4]
  input         io_stall // @[:@4467.4]
);
  reg [17:0] s_dout_reg_0_real; // @[r2sdf.scala 101:44:@4469.4]
  reg [31:0] _RAND_0;
  reg [17:0] s_dout_reg_0_imag; // @[r2sdf.scala 101:44:@4469.4]
  reg [31:0] _RAND_1;
  reg [17:0] s_dout_reg_1_real; // @[r2sdf.scala 101:44:@4470.4]
  reg [31:0] _RAND_2;
  reg [17:0] s_dout_reg_1_imag; // @[r2sdf.scala 101:44:@4470.4]
  reg [31:0] _RAND_3;
  reg [17:0] s_dout_reg_2_real; // @[r2sdf.scala 101:44:@4471.4]
  reg [31:0] _RAND_4;
  reg [17:0] s_dout_reg_2_imag; // @[r2sdf.scala 101:44:@4471.4]
  reg [31:0] _RAND_5;
  reg [17:0] s_dout_reg_3_real; // @[r2sdf.scala 101:44:@4472.4]
  reg [31:0] _RAND_6;
  reg [17:0] s_dout_reg_3_imag; // @[r2sdf.scala 101:44:@4472.4]
  reg [31:0] _RAND_7;
  reg [17:0] s_dout_reg_4_real; // @[r2sdf.scala 101:44:@4473.4]
  reg [31:0] _RAND_8;
  reg [17:0] s_dout_reg_4_imag; // @[r2sdf.scala 101:44:@4473.4]
  reg [31:0] _RAND_9;
  reg [17:0] s_dout_reg_5_real; // @[r2sdf.scala 101:44:@4474.4]
  reg [31:0] _RAND_10;
  reg [17:0] s_dout_reg_5_imag; // @[r2sdf.scala 101:44:@4474.4]
  reg [31:0] _RAND_11;
  reg  en_regs_0; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_12;
  reg  en_regs_1; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_13;
  reg  en_regs_2; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_14;
  reg  en_regs_3; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_15;
  reg  en_regs_4; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_16;
  reg  en_regs_5; // @[r2sdf.scala 103:24:@4483.4]
  reg [31:0] _RAND_17;
  reg [5:0] dcnt_0; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_18;
  reg [5:0] dcnt_1; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_19;
  reg [5:0] dcnt_2; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_20;
  reg [5:0] dcnt_3; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_21;
  reg [5:0] dcnt_4; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_22;
  reg [5:0] dcnt_5; // @[r2sdf.scala 104:24:@4491.4]
  reg [31:0] _RAND_23;
  reg [8:0] cycles; // @[r2sdf.scala 105:24:@4492.4]
  reg [31:0] _RAND_24;
  reg [11:0] din_reg_real; // @[Reg.scala 11:16:@4494.4]
  reg [31:0] _RAND_25;
  reg [11:0] din_reg_imag; // @[Reg.scala 11:16:@4494.4]
  reg [31:0] _RAND_26;
  wire  BflyR22_clock; // @[r2sdf.scala 131:20:@4615.4]
  wire [17:0] BflyR22_io_din_real; // @[r2sdf.scala 131:20:@4615.4]
  wire [17:0] BflyR22_io_din_imag; // @[r2sdf.scala 131:20:@4615.4]
  wire [17:0] BflyR22_io_dout_real; // @[r2sdf.scala 131:20:@4615.4]
  wire [17:0] BflyR22_io_dout_imag; // @[r2sdf.scala 131:20:@4615.4]
  wire  BflyR22_io_sel; // @[r2sdf.scala 131:20:@4615.4]
  wire  BflyR22_io_stall; // @[r2sdf.scala 131:20:@4615.4]
  wire [17:0] R2SDF_TFMul_io_din_real; // @[r2sdf.scala 138:25:@4623.4]
  wire [17:0] R2SDF_TFMul_io_din_imag; // @[r2sdf.scala 138:25:@4623.4]
  wire [17:0] R2SDF_TFMul_io_dout_real; // @[r2sdf.scala 138:25:@4623.4]
  wire [17:0] R2SDF_TFMul_io_dout_imag; // @[r2sdf.scala 138:25:@4623.4]
  wire [1:0] R2SDF_TFMul_io_addr; // @[r2sdf.scala 138:25:@4623.4]
  wire  BflyR22_1_clock; // @[r2sdf.scala 131:20:@4633.4]
  wire [17:0] BflyR22_1_io_din_real; // @[r2sdf.scala 131:20:@4633.4]
  wire [17:0] BflyR22_1_io_din_imag; // @[r2sdf.scala 131:20:@4633.4]
  wire [17:0] BflyR22_1_io_dout_real; // @[r2sdf.scala 131:20:@4633.4]
  wire [17:0] BflyR22_1_io_dout_imag; // @[r2sdf.scala 131:20:@4633.4]
  wire  BflyR22_1_io_sel; // @[r2sdf.scala 131:20:@4633.4]
  wire  BflyR22_1_io_stall; // @[r2sdf.scala 131:20:@4633.4]
  wire [17:0] R2SDF_TFMul_1_io_din_real; // @[r2sdf.scala 138:25:@4641.4]
  wire [17:0] R2SDF_TFMul_1_io_din_imag; // @[r2sdf.scala 138:25:@4641.4]
  wire [17:0] R2SDF_TFMul_1_io_dout_real; // @[r2sdf.scala 138:25:@4641.4]
  wire [17:0] R2SDF_TFMul_1_io_dout_imag; // @[r2sdf.scala 138:25:@4641.4]
  wire [2:0] R2SDF_TFMul_1_io_addr; // @[r2sdf.scala 138:25:@4641.4]
  wire  BflyR22_2_clock; // @[r2sdf.scala 131:20:@4651.4]
  wire [17:0] BflyR22_2_io_din_real; // @[r2sdf.scala 131:20:@4651.4]
  wire [17:0] BflyR22_2_io_din_imag; // @[r2sdf.scala 131:20:@4651.4]
  wire [17:0] BflyR22_2_io_dout_real; // @[r2sdf.scala 131:20:@4651.4]
  wire [17:0] BflyR22_2_io_dout_imag; // @[r2sdf.scala 131:20:@4651.4]
  wire  BflyR22_2_io_sel; // @[r2sdf.scala 131:20:@4651.4]
  wire  BflyR22_2_io_stall; // @[r2sdf.scala 131:20:@4651.4]
  wire [17:0] R2SDF_TFMul_2_io_din_real; // @[r2sdf.scala 138:25:@4659.4]
  wire [17:0] R2SDF_TFMul_2_io_din_imag; // @[r2sdf.scala 138:25:@4659.4]
  wire [17:0] R2SDF_TFMul_2_io_dout_real; // @[r2sdf.scala 138:25:@4659.4]
  wire [17:0] R2SDF_TFMul_2_io_dout_imag; // @[r2sdf.scala 138:25:@4659.4]
  wire [3:0] R2SDF_TFMul_2_io_addr; // @[r2sdf.scala 138:25:@4659.4]
  wire  BflyR22_3_clock; // @[r2sdf.scala 131:20:@4669.4]
  wire [17:0] BflyR22_3_io_din_real; // @[r2sdf.scala 131:20:@4669.4]
  wire [17:0] BflyR22_3_io_din_imag; // @[r2sdf.scala 131:20:@4669.4]
  wire [17:0] BflyR22_3_io_dout_real; // @[r2sdf.scala 131:20:@4669.4]
  wire [17:0] BflyR22_3_io_dout_imag; // @[r2sdf.scala 131:20:@4669.4]
  wire  BflyR22_3_io_sel; // @[r2sdf.scala 131:20:@4669.4]
  wire  BflyR22_3_io_stall; // @[r2sdf.scala 131:20:@4669.4]
  wire [17:0] R2SDF_TFMul_3_io_din_real; // @[r2sdf.scala 138:25:@4677.4]
  wire [17:0] R2SDF_TFMul_3_io_din_imag; // @[r2sdf.scala 138:25:@4677.4]
  wire [17:0] R2SDF_TFMul_3_io_dout_real; // @[r2sdf.scala 138:25:@4677.4]
  wire [17:0] R2SDF_TFMul_3_io_dout_imag; // @[r2sdf.scala 138:25:@4677.4]
  wire [4:0] R2SDF_TFMul_3_io_addr; // @[r2sdf.scala 138:25:@4677.4]
  wire  BflyR22_4_clock; // @[r2sdf.scala 131:20:@4687.4]
  wire [17:0] BflyR22_4_io_din_real; // @[r2sdf.scala 131:20:@4687.4]
  wire [17:0] BflyR22_4_io_din_imag; // @[r2sdf.scala 131:20:@4687.4]
  wire [17:0] BflyR22_4_io_dout_real; // @[r2sdf.scala 131:20:@4687.4]
  wire [17:0] BflyR22_4_io_dout_imag; // @[r2sdf.scala 131:20:@4687.4]
  wire  BflyR22_4_io_sel; // @[r2sdf.scala 131:20:@4687.4]
  wire  BflyR22_4_io_stall; // @[r2sdf.scala 131:20:@4687.4]
  wire [17:0] R2SDF_TFMul_4_io_din_real; // @[r2sdf.scala 138:25:@4695.4]
  wire [17:0] R2SDF_TFMul_4_io_din_imag; // @[r2sdf.scala 138:25:@4695.4]
  wire [17:0] R2SDF_TFMul_4_io_dout_real; // @[r2sdf.scala 138:25:@4695.4]
  wire [17:0] R2SDF_TFMul_4_io_dout_imag; // @[r2sdf.scala 138:25:@4695.4]
  wire [5:0] R2SDF_TFMul_4_io_addr; // @[r2sdf.scala 138:25:@4695.4]
  wire  BflyR22_5_clock; // @[r2sdf.scala 131:20:@4705.4]
  wire [17:0] BflyR22_5_io_din_real; // @[r2sdf.scala 131:20:@4705.4]
  wire [17:0] BflyR22_5_io_din_imag; // @[r2sdf.scala 131:20:@4705.4]
  wire [17:0] BflyR22_5_io_dout_real; // @[r2sdf.scala 131:20:@4705.4]
  wire [17:0] BflyR22_5_io_dout_imag; // @[r2sdf.scala 131:20:@4705.4]
  wire  BflyR22_5_io_sel; // @[r2sdf.scala 131:20:@4705.4]
  wire  BflyR22_5_io_stall; // @[r2sdf.scala 131:20:@4705.4]
  wire  _T_227; // @[r2sdf.scala 106:40:@4493.4]
  wire [11:0] _GEN_0; // @[Reg.scala 12:19:@4495.4]
  wire [11:0] _GEN_1; // @[Reg.scala 12:19:@4495.4]
  wire  _T_236; // @[r2sdf.scala 110:35:@4504.6]
  wire  _T_238; // @[r2sdf.scala 111:26:@4506.8]
  wire [9:0] _T_240; // @[r2sdf.scala 111:50:@4507.8]
  wire [8:0] _T_241; // @[r2sdf.scala 111:50:@4508.8]
  wire [8:0] _T_242; // @[r2sdf.scala 111:18:@4509.8]
  wire [8:0] _GEN_2; // @[r2sdf.scala 110:48:@4505.6]
  wire [8:0] _GEN_3; // @[r2sdf.scala 108:18:@4499.4]
  wire [6:0] _T_249; // @[r2sdf.scala 124:44:@4524.10]
  wire [6:0] _T_250; // @[r2sdf.scala 124:44:@4525.10]
  wire [5:0] _T_251; // @[r2sdf.scala 124:44:@4526.10]
  wire [5:0] _GEN_4; // @[r2sdf.scala 123:29:@4523.8]
  wire [17:0] s_dout_0_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_5; // @[r2sdf.scala 120:29:@4519.6]
  wire [17:0] s_dout_0_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_6; // @[r2sdf.scala 120:29:@4519.6]
  wire  _GEN_7; // @[r2sdf.scala 120:29:@4519.6]
  wire [5:0] _GEN_8; // @[r2sdf.scala 120:29:@4519.6]
  wire  _GEN_9; // @[r2sdf.scala 117:20:@4513.4]
  wire [5:0] _GEN_10; // @[r2sdf.scala 117:20:@4513.4]
  wire [17:0] _GEN_11; // @[r2sdf.scala 117:20:@4513.4]
  wire [17:0] _GEN_12; // @[r2sdf.scala 117:20:@4513.4]
  wire [5:0] _GEN_13; // @[r2sdf.scala 123:29:@4540.8]
  wire [17:0] s_dout_1_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_14; // @[r2sdf.scala 120:29:@4536.6]
  wire [17:0] s_dout_1_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_15; // @[r2sdf.scala 120:29:@4536.6]
  wire  _GEN_16; // @[r2sdf.scala 120:29:@4536.6]
  wire [5:0] _GEN_17; // @[r2sdf.scala 120:29:@4536.6]
  wire  _GEN_18; // @[r2sdf.scala 117:20:@4530.4]
  wire [5:0] _GEN_19; // @[r2sdf.scala 117:20:@4530.4]
  wire [17:0] _GEN_20; // @[r2sdf.scala 117:20:@4530.4]
  wire [17:0] _GEN_21; // @[r2sdf.scala 117:20:@4530.4]
  wire [5:0] _GEN_22; // @[r2sdf.scala 123:29:@4557.8]
  wire [17:0] s_dout_2_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_23; // @[r2sdf.scala 120:29:@4553.6]
  wire [17:0] s_dout_2_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_24; // @[r2sdf.scala 120:29:@4553.6]
  wire  _GEN_25; // @[r2sdf.scala 120:29:@4553.6]
  wire [5:0] _GEN_26; // @[r2sdf.scala 120:29:@4553.6]
  wire  _GEN_27; // @[r2sdf.scala 117:20:@4547.4]
  wire [5:0] _GEN_28; // @[r2sdf.scala 117:20:@4547.4]
  wire [17:0] _GEN_29; // @[r2sdf.scala 117:20:@4547.4]
  wire [17:0] _GEN_30; // @[r2sdf.scala 117:20:@4547.4]
  wire [5:0] _GEN_31; // @[r2sdf.scala 123:29:@4574.8]
  wire [17:0] s_dout_3_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_32; // @[r2sdf.scala 120:29:@4570.6]
  wire [17:0] s_dout_3_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_33; // @[r2sdf.scala 120:29:@4570.6]
  wire  _GEN_34; // @[r2sdf.scala 120:29:@4570.6]
  wire [5:0] _GEN_35; // @[r2sdf.scala 120:29:@4570.6]
  wire  _GEN_36; // @[r2sdf.scala 117:20:@4564.4]
  wire [5:0] _GEN_37; // @[r2sdf.scala 117:20:@4564.4]
  wire [17:0] _GEN_38; // @[r2sdf.scala 117:20:@4564.4]
  wire [17:0] _GEN_39; // @[r2sdf.scala 117:20:@4564.4]
  wire [5:0] _GEN_40; // @[r2sdf.scala 123:29:@4591.8]
  wire [17:0] s_dout_4_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_41; // @[r2sdf.scala 120:29:@4587.6]
  wire [17:0] s_dout_4_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_42; // @[r2sdf.scala 120:29:@4587.6]
  wire  _GEN_43; // @[r2sdf.scala 120:29:@4587.6]
  wire [5:0] _GEN_44; // @[r2sdf.scala 120:29:@4587.6]
  wire  _GEN_45; // @[r2sdf.scala 117:20:@4581.4]
  wire [5:0] _GEN_46; // @[r2sdf.scala 117:20:@4581.4]
  wire [17:0] _GEN_47; // @[r2sdf.scala 117:20:@4581.4]
  wire [17:0] _GEN_48; // @[r2sdf.scala 117:20:@4581.4]
  wire [5:0] _GEN_49; // @[r2sdf.scala 123:29:@4608.8]
  wire [17:0] s_dout_5_imag; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_50; // @[r2sdf.scala 120:29:@4604.6]
  wire [17:0] s_dout_5_real; // @[r2sdf.scala 102:21:@4475.4]
  wire [17:0] _GEN_51; // @[r2sdf.scala 120:29:@4604.6]
  wire  _GEN_52; // @[r2sdf.scala 120:29:@4604.6]
  wire [5:0] _GEN_53; // @[r2sdf.scala 120:29:@4604.6]
  wire  _GEN_54; // @[r2sdf.scala 117:20:@4598.4]
  wire [5:0] _GEN_55; // @[r2sdf.scala 117:20:@4598.4]
  wire [17:0] _GEN_56; // @[r2sdf.scala 117:20:@4598.4]
  wire [17:0] _GEN_57; // @[r2sdf.scala 117:20:@4598.4]
  wire  _T_292; // @[r2sdf.scala 132:31:@4618.4]
  wire [1:0] _T_293; // @[r2sdf.scala 140:46:@4628.4]
  wire [1:0] _T_294; // @[r2sdf.scala 140:34:@4629.4]
  wire  _T_295; // @[r2sdf.scala 132:31:@4636.4]
  wire [2:0] _T_296; // @[r2sdf.scala 140:46:@4646.4]
  wire [2:0] _T_297; // @[r2sdf.scala 140:34:@4647.4]
  wire  _T_298; // @[r2sdf.scala 132:31:@4654.4]
  wire [3:0] _T_299; // @[r2sdf.scala 140:46:@4664.4]
  wire [3:0] _T_300; // @[r2sdf.scala 140:34:@4665.4]
  wire  _T_301; // @[r2sdf.scala 132:31:@4672.4]
  wire [4:0] _T_302; // @[r2sdf.scala 140:46:@4682.4]
  wire [4:0] _T_303; // @[r2sdf.scala 140:34:@4683.4]
  wire  _T_304; // @[r2sdf.scala 132:31:@4690.4]
  wire [5:0] _T_306; // @[r2sdf.scala 140:34:@4701.4]
  wire  _T_307; // @[r2sdf.scala 132:31:@4708.4]
  wire  _T_308; // @[r2sdf.scala 145:39:@4715.4]
  wire  _T_311; // @[r2sdf.scala 145:51:@4717.4]
  wire [23:0] _GEN_58; // @[FixedPointTypeClass.scala 130:22:@4719.4]
  wire [23:0] _T_313; // @[FixedPointTypeClass.scala 130:22:@4719.4]
  wire [17:0] _T_316; // @[FixedPointTypeClass.scala 134:23:@4722.4]
  wire [12:0] _T_317; // @[FixedPointTypeClass.scala 154:39:@4724.4]
  wire [23:0] _GEN_59; // @[FixedPointTypeClass.scala 130:22:@4725.4]
  wire [23:0] _T_319; // @[FixedPointTypeClass.scala 130:22:@4725.4]
  wire [17:0] _T_322; // @[FixedPointTypeClass.scala 134:23:@4728.4]
  wire [12:0] _T_323; // @[FixedPointTypeClass.scala 154:39:@4730.4]
  BflyR22 BflyR22 ( // @[r2sdf.scala 131:20:@4615.4]
    .clock(BflyR22_clock),
    .io_din_real(BflyR22_io_din_real),
    .io_din_imag(BflyR22_io_din_imag),
    .io_dout_real(BflyR22_io_dout_real),
    .io_dout_imag(BflyR22_io_dout_imag),
    .io_sel(BflyR22_io_sel),
    .io_stall(BflyR22_io_stall)
  );
  R2SDF_TFMul R2SDF_TFMul ( // @[r2sdf.scala 138:25:@4623.4]
    .io_din_real(R2SDF_TFMul_io_din_real),
    .io_din_imag(R2SDF_TFMul_io_din_imag),
    .io_dout_real(R2SDF_TFMul_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_io_dout_imag),
    .io_addr(R2SDF_TFMul_io_addr)
  );
  BflyR22_1 BflyR22_1 ( // @[r2sdf.scala 131:20:@4633.4]
    .clock(BflyR22_1_clock),
    .io_din_real(BflyR22_1_io_din_real),
    .io_din_imag(BflyR22_1_io_din_imag),
    .io_dout_real(BflyR22_1_io_dout_real),
    .io_dout_imag(BflyR22_1_io_dout_imag),
    .io_sel(BflyR22_1_io_sel),
    .io_stall(BflyR22_1_io_stall)
  );
  R2SDF_TFMul_1 R2SDF_TFMul_1 ( // @[r2sdf.scala 138:25:@4641.4]
    .io_din_real(R2SDF_TFMul_1_io_din_real),
    .io_din_imag(R2SDF_TFMul_1_io_din_imag),
    .io_dout_real(R2SDF_TFMul_1_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_1_io_dout_imag),
    .io_addr(R2SDF_TFMul_1_io_addr)
  );
  BflyR22_2 BflyR22_2 ( // @[r2sdf.scala 131:20:@4651.4]
    .clock(BflyR22_2_clock),
    .io_din_real(BflyR22_2_io_din_real),
    .io_din_imag(BflyR22_2_io_din_imag),
    .io_dout_real(BflyR22_2_io_dout_real),
    .io_dout_imag(BflyR22_2_io_dout_imag),
    .io_sel(BflyR22_2_io_sel),
    .io_stall(BflyR22_2_io_stall)
  );
  R2SDF_TFMul_2 R2SDF_TFMul_2 ( // @[r2sdf.scala 138:25:@4659.4]
    .io_din_real(R2SDF_TFMul_2_io_din_real),
    .io_din_imag(R2SDF_TFMul_2_io_din_imag),
    .io_dout_real(R2SDF_TFMul_2_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_2_io_dout_imag),
    .io_addr(R2SDF_TFMul_2_io_addr)
  );
  BflyR22_3 BflyR22_3 ( // @[r2sdf.scala 131:20:@4669.4]
    .clock(BflyR22_3_clock),
    .io_din_real(BflyR22_3_io_din_real),
    .io_din_imag(BflyR22_3_io_din_imag),
    .io_dout_real(BflyR22_3_io_dout_real),
    .io_dout_imag(BflyR22_3_io_dout_imag),
    .io_sel(BflyR22_3_io_sel),
    .io_stall(BflyR22_3_io_stall)
  );
  R2SDF_TFMul_3 R2SDF_TFMul_3 ( // @[r2sdf.scala 138:25:@4677.4]
    .io_din_real(R2SDF_TFMul_3_io_din_real),
    .io_din_imag(R2SDF_TFMul_3_io_din_imag),
    .io_dout_real(R2SDF_TFMul_3_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_3_io_dout_imag),
    .io_addr(R2SDF_TFMul_3_io_addr)
  );
  BflyR22_4 BflyR22_4 ( // @[r2sdf.scala 131:20:@4687.4]
    .clock(BflyR22_4_clock),
    .io_din_real(BflyR22_4_io_din_real),
    .io_din_imag(BflyR22_4_io_din_imag),
    .io_dout_real(BflyR22_4_io_dout_real),
    .io_dout_imag(BflyR22_4_io_dout_imag),
    .io_sel(BflyR22_4_io_sel),
    .io_stall(BflyR22_4_io_stall)
  );
  R2SDF_TFMul_4 R2SDF_TFMul_4 ( // @[r2sdf.scala 138:25:@4695.4]
    .io_din_real(R2SDF_TFMul_4_io_din_real),
    .io_din_imag(R2SDF_TFMul_4_io_din_imag),
    .io_dout_real(R2SDF_TFMul_4_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_4_io_dout_imag),
    .io_addr(R2SDF_TFMul_4_io_addr)
  );
  BflyR22_5 BflyR22_5 ( // @[r2sdf.scala 131:20:@4705.4]
    .clock(BflyR22_5_clock),
    .io_din_real(BflyR22_5_io_din_real),
    .io_din_imag(BflyR22_5_io_din_imag),
    .io_dout_real(BflyR22_5_io_dout_real),
    .io_dout_imag(BflyR22_5_io_dout_imag),
    .io_sel(BflyR22_5_io_sel),
    .io_stall(BflyR22_5_io_stall)
  );
  assign _T_227 = io_stall == 1'h0; // @[r2sdf.scala 106:40:@4493.4]
  assign _GEN_0 = _T_227 ? $signed(io_din_bits_imag) : $signed(din_reg_imag); // @[Reg.scala 12:19:@4495.4]
  assign _GEN_1 = _T_227 ? $signed(io_din_bits_real) : $signed(din_reg_real); // @[Reg.scala 12:19:@4495.4]
  assign _T_236 = en_regs_5 & _T_227; // @[r2sdf.scala 110:35:@4504.6]
  assign _T_238 = cycles == 9'h40; // @[r2sdf.scala 111:26:@4506.8]
  assign _T_240 = cycles + 9'h1; // @[r2sdf.scala 111:50:@4507.8]
  assign _T_241 = _T_240[8:0]; // @[r2sdf.scala 111:50:@4508.8]
  assign _T_242 = _T_238 ? cycles : _T_241; // @[r2sdf.scala 111:18:@4509.8]
  assign _GEN_2 = _T_236 ? _T_242 : cycles; // @[r2sdf.scala 110:48:@4505.6]
  assign _GEN_3 = io_init ? 9'h0 : _GEN_2; // @[r2sdf.scala 108:18:@4499.4]
  assign _T_249 = dcnt_0 - 6'h1; // @[r2sdf.scala 124:44:@4524.10]
  assign _T_250 = $unsigned(_T_249); // @[r2sdf.scala 124:44:@4525.10]
  assign _T_251 = _T_250[5:0]; // @[r2sdf.scala 124:44:@4526.10]
  assign _GEN_4 = en_regs_0 ? _T_251 : dcnt_0; // @[r2sdf.scala 123:29:@4523.8]
  assign s_dout_0_imag = R2SDF_TFMul_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_5 = _T_227 ? $signed(s_dout_0_imag) : $signed(s_dout_reg_0_imag); // @[r2sdf.scala 120:29:@4519.6]
  assign s_dout_0_real = R2SDF_TFMul_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_6 = _T_227 ? $signed(s_dout_0_real) : $signed(s_dout_reg_0_real); // @[r2sdf.scala 120:29:@4519.6]
  assign _GEN_7 = _T_227 ? io_din_valid : en_regs_0; // @[r2sdf.scala 120:29:@4519.6]
  assign _GEN_8 = _T_227 ? _GEN_4 : dcnt_0; // @[r2sdf.scala 120:29:@4519.6]
  assign _GEN_9 = io_init ? 1'h0 : _GEN_7; // @[r2sdf.scala 117:20:@4513.4]
  assign _GEN_10 = io_init ? 6'h3e : _GEN_8; // @[r2sdf.scala 117:20:@4513.4]
  assign _GEN_11 = io_init ? $signed(s_dout_reg_0_imag) : $signed(_GEN_5); // @[r2sdf.scala 117:20:@4513.4]
  assign _GEN_12 = io_init ? $signed(s_dout_reg_0_real) : $signed(_GEN_6); // @[r2sdf.scala 117:20:@4513.4]
  assign _GEN_13 = en_regs_1 ? dcnt_0 : dcnt_1; // @[r2sdf.scala 123:29:@4540.8]
  assign s_dout_1_imag = R2SDF_TFMul_1_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_14 = _T_227 ? $signed(s_dout_1_imag) : $signed(s_dout_reg_1_imag); // @[r2sdf.scala 120:29:@4536.6]
  assign s_dout_1_real = R2SDF_TFMul_1_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_15 = _T_227 ? $signed(s_dout_1_real) : $signed(s_dout_reg_1_real); // @[r2sdf.scala 120:29:@4536.6]
  assign _GEN_16 = _T_227 ? en_regs_0 : en_regs_1; // @[r2sdf.scala 120:29:@4536.6]
  assign _GEN_17 = _T_227 ? _GEN_13 : dcnt_1; // @[r2sdf.scala 120:29:@4536.6]
  assign _GEN_18 = io_init ? 1'h0 : _GEN_16; // @[r2sdf.scala 117:20:@4530.4]
  assign _GEN_19 = io_init ? 6'h3e : _GEN_17; // @[r2sdf.scala 117:20:@4530.4]
  assign _GEN_20 = io_init ? $signed(s_dout_reg_1_imag) : $signed(_GEN_14); // @[r2sdf.scala 117:20:@4530.4]
  assign _GEN_21 = io_init ? $signed(s_dout_reg_1_real) : $signed(_GEN_15); // @[r2sdf.scala 117:20:@4530.4]
  assign _GEN_22 = en_regs_2 ? dcnt_1 : dcnt_2; // @[r2sdf.scala 123:29:@4557.8]
  assign s_dout_2_imag = R2SDF_TFMul_2_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_23 = _T_227 ? $signed(s_dout_2_imag) : $signed(s_dout_reg_2_imag); // @[r2sdf.scala 120:29:@4553.6]
  assign s_dout_2_real = R2SDF_TFMul_2_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_24 = _T_227 ? $signed(s_dout_2_real) : $signed(s_dout_reg_2_real); // @[r2sdf.scala 120:29:@4553.6]
  assign _GEN_25 = _T_227 ? en_regs_1 : en_regs_2; // @[r2sdf.scala 120:29:@4553.6]
  assign _GEN_26 = _T_227 ? _GEN_22 : dcnt_2; // @[r2sdf.scala 120:29:@4553.6]
  assign _GEN_27 = io_init ? 1'h0 : _GEN_25; // @[r2sdf.scala 117:20:@4547.4]
  assign _GEN_28 = io_init ? 6'h3e : _GEN_26; // @[r2sdf.scala 117:20:@4547.4]
  assign _GEN_29 = io_init ? $signed(s_dout_reg_2_imag) : $signed(_GEN_23); // @[r2sdf.scala 117:20:@4547.4]
  assign _GEN_30 = io_init ? $signed(s_dout_reg_2_real) : $signed(_GEN_24); // @[r2sdf.scala 117:20:@4547.4]
  assign _GEN_31 = en_regs_3 ? dcnt_2 : dcnt_3; // @[r2sdf.scala 123:29:@4574.8]
  assign s_dout_3_imag = R2SDF_TFMul_3_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_32 = _T_227 ? $signed(s_dout_3_imag) : $signed(s_dout_reg_3_imag); // @[r2sdf.scala 120:29:@4570.6]
  assign s_dout_3_real = R2SDF_TFMul_3_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_33 = _T_227 ? $signed(s_dout_3_real) : $signed(s_dout_reg_3_real); // @[r2sdf.scala 120:29:@4570.6]
  assign _GEN_34 = _T_227 ? en_regs_2 : en_regs_3; // @[r2sdf.scala 120:29:@4570.6]
  assign _GEN_35 = _T_227 ? _GEN_31 : dcnt_3; // @[r2sdf.scala 120:29:@4570.6]
  assign _GEN_36 = io_init ? 1'h0 : _GEN_34; // @[r2sdf.scala 117:20:@4564.4]
  assign _GEN_37 = io_init ? 6'h3e : _GEN_35; // @[r2sdf.scala 117:20:@4564.4]
  assign _GEN_38 = io_init ? $signed(s_dout_reg_3_imag) : $signed(_GEN_32); // @[r2sdf.scala 117:20:@4564.4]
  assign _GEN_39 = io_init ? $signed(s_dout_reg_3_real) : $signed(_GEN_33); // @[r2sdf.scala 117:20:@4564.4]
  assign _GEN_40 = en_regs_4 ? dcnt_3 : dcnt_4; // @[r2sdf.scala 123:29:@4591.8]
  assign s_dout_4_imag = R2SDF_TFMul_4_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_41 = _T_227 ? $signed(s_dout_4_imag) : $signed(s_dout_reg_4_imag); // @[r2sdf.scala 120:29:@4587.6]
  assign s_dout_4_real = R2SDF_TFMul_4_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_42 = _T_227 ? $signed(s_dout_4_real) : $signed(s_dout_reg_4_real); // @[r2sdf.scala 120:29:@4587.6]
  assign _GEN_43 = _T_227 ? en_regs_3 : en_regs_4; // @[r2sdf.scala 120:29:@4587.6]
  assign _GEN_44 = _T_227 ? _GEN_40 : dcnt_4; // @[r2sdf.scala 120:29:@4587.6]
  assign _GEN_45 = io_init ? 1'h0 : _GEN_43; // @[r2sdf.scala 117:20:@4581.4]
  assign _GEN_46 = io_init ? 6'h3e : _GEN_44; // @[r2sdf.scala 117:20:@4581.4]
  assign _GEN_47 = io_init ? $signed(s_dout_reg_4_imag) : $signed(_GEN_41); // @[r2sdf.scala 117:20:@4581.4]
  assign _GEN_48 = io_init ? $signed(s_dout_reg_4_real) : $signed(_GEN_42); // @[r2sdf.scala 117:20:@4581.4]
  assign _GEN_49 = en_regs_5 ? dcnt_4 : dcnt_5; // @[r2sdf.scala 123:29:@4608.8]
  assign s_dout_5_imag = BflyR22_5_io_dout_imag; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_50 = _T_227 ? $signed(s_dout_5_imag) : $signed(s_dout_reg_5_imag); // @[r2sdf.scala 120:29:@4604.6]
  assign s_dout_5_real = BflyR22_5_io_dout_real; // @[r2sdf.scala 102:21:@4475.4]
  assign _GEN_51 = _T_227 ? $signed(s_dout_5_real) : $signed(s_dout_reg_5_real); // @[r2sdf.scala 120:29:@4604.6]
  assign _GEN_52 = _T_227 ? en_regs_4 : en_regs_5; // @[r2sdf.scala 120:29:@4604.6]
  assign _GEN_53 = _T_227 ? _GEN_49 : dcnt_5; // @[r2sdf.scala 120:29:@4604.6]
  assign _GEN_54 = io_init ? 1'h0 : _GEN_52; // @[r2sdf.scala 117:20:@4598.4]
  assign _GEN_55 = io_init ? 6'h3e : _GEN_53; // @[r2sdf.scala 117:20:@4598.4]
  assign _GEN_56 = io_init ? $signed(s_dout_reg_5_imag) : $signed(_GEN_50); // @[r2sdf.scala 117:20:@4598.4]
  assign _GEN_57 = io_init ? $signed(s_dout_reg_5_real) : $signed(_GEN_51); // @[r2sdf.scala 117:20:@4598.4]
  assign _T_292 = dcnt_0[0]; // @[r2sdf.scala 132:31:@4618.4]
  assign _T_293 = dcnt_0[1:0]; // @[r2sdf.scala 140:46:@4628.4]
  assign _T_294 = ~ _T_293; // @[r2sdf.scala 140:34:@4629.4]
  assign _T_295 = dcnt_1[1]; // @[r2sdf.scala 132:31:@4636.4]
  assign _T_296 = dcnt_1[2:0]; // @[r2sdf.scala 140:46:@4646.4]
  assign _T_297 = ~ _T_296; // @[r2sdf.scala 140:34:@4647.4]
  assign _T_298 = dcnt_2[2]; // @[r2sdf.scala 132:31:@4654.4]
  assign _T_299 = dcnt_2[3:0]; // @[r2sdf.scala 140:46:@4664.4]
  assign _T_300 = ~ _T_299; // @[r2sdf.scala 140:34:@4665.4]
  assign _T_301 = dcnt_3[3]; // @[r2sdf.scala 132:31:@4672.4]
  assign _T_302 = dcnt_3[4:0]; // @[r2sdf.scala 140:46:@4682.4]
  assign _T_303 = ~ _T_302; // @[r2sdf.scala 140:34:@4683.4]
  assign _T_304 = dcnt_4[4]; // @[r2sdf.scala 132:31:@4690.4]
  assign _T_306 = ~ dcnt_4; // @[r2sdf.scala 140:34:@4701.4]
  assign _T_307 = dcnt_5[5]; // @[r2sdf.scala 132:31:@4708.4]
  assign _T_308 = en_regs_5 & _T_238; // @[r2sdf.scala 145:39:@4715.4]
  assign _T_311 = _T_308 & _T_227; // @[r2sdf.scala 145:51:@4717.4]
  assign _GEN_58 = {{6{s_dout_reg_5_real[17]}},s_dout_reg_5_real}; // @[FixedPointTypeClass.scala 130:22:@4719.4]
  assign _T_313 = $signed(_GEN_58) << 6; // @[FixedPointTypeClass.scala 130:22:@4719.4]
  assign _T_316 = _T_313[23:6]; // @[FixedPointTypeClass.scala 134:23:@4722.4]
  assign _T_317 = _T_316[17:5]; // @[FixedPointTypeClass.scala 154:39:@4724.4]
  assign _GEN_59 = {{6{s_dout_reg_5_imag[17]}},s_dout_reg_5_imag}; // @[FixedPointTypeClass.scala 130:22:@4725.4]
  assign _T_319 = $signed(_GEN_59) << 6; // @[FixedPointTypeClass.scala 130:22:@4725.4]
  assign _T_322 = _T_319[23:6]; // @[FixedPointTypeClass.scala 134:23:@4728.4]
  assign _T_323 = _T_322[17:5]; // @[FixedPointTypeClass.scala 154:39:@4730.4]
  assign io_dout_valid = _T_311;
  assign io_dout_bits_real = _T_317[12:1];
  assign io_dout_bits_imag = _T_323[12:1];
  assign BflyR22_clock = clock;
  assign BflyR22_io_din_real = {{6{din_reg_real[11]}},din_reg_real};
  assign BflyR22_io_din_imag = {{6{din_reg_imag[11]}},din_reg_imag};
  assign BflyR22_io_sel = _T_292;
  assign BflyR22_io_stall = io_stall;
  assign R2SDF_TFMul_io_din_real = BflyR22_io_dout_real;
  assign R2SDF_TFMul_io_din_imag = BflyR22_io_dout_imag;
  assign R2SDF_TFMul_io_addr = _T_294;
  assign BflyR22_1_clock = clock;
  assign BflyR22_1_io_din_real = s_dout_reg_0_real;
  assign BflyR22_1_io_din_imag = s_dout_reg_0_imag;
  assign BflyR22_1_io_sel = _T_295;
  assign BflyR22_1_io_stall = io_stall;
  assign R2SDF_TFMul_1_io_din_real = BflyR22_1_io_dout_real;
  assign R2SDF_TFMul_1_io_din_imag = BflyR22_1_io_dout_imag;
  assign R2SDF_TFMul_1_io_addr = _T_297;
  assign BflyR22_2_clock = clock;
  assign BflyR22_2_io_din_real = s_dout_reg_1_real;
  assign BflyR22_2_io_din_imag = s_dout_reg_1_imag;
  assign BflyR22_2_io_sel = _T_298;
  assign BflyR22_2_io_stall = io_stall;
  assign R2SDF_TFMul_2_io_din_real = BflyR22_2_io_dout_real;
  assign R2SDF_TFMul_2_io_din_imag = BflyR22_2_io_dout_imag;
  assign R2SDF_TFMul_2_io_addr = _T_300;
  assign BflyR22_3_clock = clock;
  assign BflyR22_3_io_din_real = s_dout_reg_2_real;
  assign BflyR22_3_io_din_imag = s_dout_reg_2_imag;
  assign BflyR22_3_io_sel = _T_301;
  assign BflyR22_3_io_stall = io_stall;
  assign R2SDF_TFMul_3_io_din_real = BflyR22_3_io_dout_real;
  assign R2SDF_TFMul_3_io_din_imag = BflyR22_3_io_dout_imag;
  assign R2SDF_TFMul_3_io_addr = _T_303;
  assign BflyR22_4_clock = clock;
  assign BflyR22_4_io_din_real = s_dout_reg_3_real;
  assign BflyR22_4_io_din_imag = s_dout_reg_3_imag;
  assign BflyR22_4_io_sel = _T_304;
  assign BflyR22_4_io_stall = io_stall;
  assign R2SDF_TFMul_4_io_din_real = BflyR22_4_io_dout_real;
  assign R2SDF_TFMul_4_io_din_imag = BflyR22_4_io_dout_imag;
  assign R2SDF_TFMul_4_io_addr = _T_306;
  assign BflyR22_5_clock = clock;
  assign BflyR22_5_io_din_real = s_dout_reg_4_real;
  assign BflyR22_5_io_din_imag = s_dout_reg_4_imag;
  assign BflyR22_5_io_sel = _T_307;
  assign BflyR22_5_io_stall = io_stall;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  s_dout_reg_0_real = _RAND_0[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  s_dout_reg_0_imag = _RAND_1[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  s_dout_reg_1_real = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  s_dout_reg_1_imag = _RAND_3[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  s_dout_reg_2_real = _RAND_4[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  s_dout_reg_2_imag = _RAND_5[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  s_dout_reg_3_real = _RAND_6[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  s_dout_reg_3_imag = _RAND_7[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  s_dout_reg_4_real = _RAND_8[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  s_dout_reg_4_imag = _RAND_9[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  s_dout_reg_5_real = _RAND_10[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  s_dout_reg_5_imag = _RAND_11[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  en_regs_0 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  en_regs_1 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  en_regs_2 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  en_regs_3 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  en_regs_4 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  en_regs_5 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  dcnt_0 = _RAND_18[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  dcnt_1 = _RAND_19[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  dcnt_2 = _RAND_20[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  dcnt_3 = _RAND_21[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  dcnt_4 = _RAND_22[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  dcnt_5 = _RAND_23[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  cycles = _RAND_24[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  din_reg_real = _RAND_25[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  din_reg_imag = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_0_real <= s_dout_0_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_0_imag <= s_dout_0_imag;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_1_real <= s_dout_1_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_1_imag <= s_dout_1_imag;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_2_real <= s_dout_2_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_2_imag <= s_dout_2_imag;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_3_real <= s_dout_3_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_3_imag <= s_dout_3_imag;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_4_real <= s_dout_4_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_4_imag <= s_dout_4_imag;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_5_real <= s_dout_5_real;
      end
    end
    if (!(io_init)) begin
      if (_T_227) begin
        s_dout_reg_5_imag <= s_dout_5_imag;
      end
    end
    if (reset) begin
      en_regs_0 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_0 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_0 <= io_din_valid;
        end
      end
    end
    if (reset) begin
      en_regs_1 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_1 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_1 <= en_regs_0;
        end
      end
    end
    if (reset) begin
      en_regs_2 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_2 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_2 <= en_regs_1;
        end
      end
    end
    if (reset) begin
      en_regs_3 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_3 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_3 <= en_regs_2;
        end
      end
    end
    if (reset) begin
      en_regs_4 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_4 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_4 <= en_regs_3;
        end
      end
    end
    if (reset) begin
      en_regs_5 <= 1'h0;
    end else begin
      if (io_init) begin
        en_regs_5 <= 1'h0;
      end else begin
        if (_T_227) begin
          en_regs_5 <= en_regs_4;
        end
      end
    end
    if (reset) begin
      dcnt_0 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_0 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_0) begin
            dcnt_0 <= _T_251;
          end
        end
      end
    end
    if (reset) begin
      dcnt_1 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_1 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_1) begin
            dcnt_1 <= dcnt_0;
          end
        end
      end
    end
    if (reset) begin
      dcnt_2 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_2 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_2) begin
            dcnt_2 <= dcnt_1;
          end
        end
      end
    end
    if (reset) begin
      dcnt_3 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_3 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_3) begin
            dcnt_3 <= dcnt_2;
          end
        end
      end
    end
    if (reset) begin
      dcnt_4 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_4 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_4) begin
            dcnt_4 <= dcnt_3;
          end
        end
      end
    end
    if (reset) begin
      dcnt_5 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_5 <= 6'h3e;
      end else begin
        if (_T_227) begin
          if (en_regs_5) begin
            dcnt_5 <= dcnt_4;
          end
        end
      end
    end
    if (reset) begin
      cycles <= 9'h0;
    end else begin
      if (io_init) begin
        cycles <= 9'h0;
      end else begin
        if (_T_236) begin
          if (!(_T_238)) begin
            cycles <= _T_241;
          end
        end
      end
    end
    if (_T_227) begin
      din_reg_real <= io_din_bits_real;
    end
    if (_T_227) begin
      din_reg_imag <= io_din_bits_imag;
    end
  end
endmodule
module Queue_1( // @[:@4737.2]
  input         clock, // @[:@4738.4]
  input         reset, // @[:@4739.4]
  output        io_enq_ready, // @[:@4740.4]
  input         io_enq_valid, // @[:@4740.4]
  input  [11:0] io_enq_bits_real, // @[:@4740.4]
  input  [11:0] io_enq_bits_imag, // @[:@4740.4]
  input         io_deq_ready, // @[:@4740.4]
  output        io_deq_valid, // @[:@4740.4]
  output [11:0] io_deq_bits_real, // @[:@4740.4]
  output [11:0] io_deq_bits_imag // @[:@4740.4]
);
  reg [11:0] ram_real [0:15]; // @[Decoupled.scala 211:24:@4742.4]
  reg [31:0] _RAND_0;
  wire [11:0] ram_real__T_76_data; // @[Decoupled.scala 211:24:@4742.4]
  wire [3:0] ram_real__T_76_addr; // @[Decoupled.scala 211:24:@4742.4]
  wire [11:0] ram_real__T_60_data; // @[Decoupled.scala 211:24:@4742.4]
  wire [3:0] ram_real__T_60_addr; // @[Decoupled.scala 211:24:@4742.4]
  wire  ram_real__T_60_mask; // @[Decoupled.scala 211:24:@4742.4]
  wire  ram_real__T_60_en; // @[Decoupled.scala 211:24:@4742.4]
  reg [11:0] ram_imag [0:15]; // @[Decoupled.scala 211:24:@4742.4]
  reg [31:0] _RAND_1;
  wire [11:0] ram_imag__T_76_data; // @[Decoupled.scala 211:24:@4742.4]
  wire [3:0] ram_imag__T_76_addr; // @[Decoupled.scala 211:24:@4742.4]
  wire [11:0] ram_imag__T_60_data; // @[Decoupled.scala 211:24:@4742.4]
  wire [3:0] ram_imag__T_60_addr; // @[Decoupled.scala 211:24:@4742.4]
  wire  ram_imag__T_60_mask; // @[Decoupled.scala 211:24:@4742.4]
  wire  ram_imag__T_60_en; // @[Decoupled.scala 211:24:@4742.4]
  reg [3:0] value; // @[Counter.scala 26:33:@4743.4]
  reg [31:0] _RAND_2;
  reg [3:0] value_1; // @[Counter.scala 26:33:@4744.4]
  reg [31:0] _RAND_3;
  reg  maybe_full; // @[Decoupled.scala 214:35:@4745.4]
  reg [31:0] _RAND_4;
  wire  _T_50; // @[Decoupled.scala 216:41:@4746.4]
  wire  _T_52; // @[Decoupled.scala 217:36:@4747.4]
  wire  empty; // @[Decoupled.scala 217:33:@4748.4]
  wire  _T_53; // @[Decoupled.scala 218:32:@4749.4]
  wire  do_enq; // @[Decoupled.scala 30:37:@4750.4]
  wire  do_deq; // @[Decoupled.scala 30:37:@4753.4]
  wire [4:0] _T_63; // @[Counter.scala 35:22:@4761.6]
  wire [3:0] _T_64; // @[Counter.scala 35:22:@4762.6]
  wire [3:0] _GEN_5; // @[Decoupled.scala 222:17:@4756.4]
  wire [4:0] _T_67; // @[Counter.scala 35:22:@4767.6]
  wire [3:0] _T_68; // @[Counter.scala 35:22:@4768.6]
  wire [3:0] _GEN_6; // @[Decoupled.scala 226:17:@4765.4]
  wire  _T_69; // @[Decoupled.scala 229:16:@4771.4]
  wire  _GEN_7; // @[Decoupled.scala 229:27:@4772.4]
  wire  _T_71; // @[Decoupled.scala 233:19:@4775.4]
  wire  _T_73; // @[Decoupled.scala 234:19:@4777.4]
  assign ram_real__T_76_addr = value_1;
  assign ram_real__T_76_data = ram_real[ram_real__T_76_addr]; // @[Decoupled.scala 211:24:@4742.4]
  assign ram_real__T_60_data = io_enq_bits_real;
  assign ram_real__T_60_addr = value;
  assign ram_real__T_60_mask = do_enq;
  assign ram_real__T_60_en = do_enq;
  assign ram_imag__T_76_addr = value_1;
  assign ram_imag__T_76_data = ram_imag[ram_imag__T_76_addr]; // @[Decoupled.scala 211:24:@4742.4]
  assign ram_imag__T_60_data = io_enq_bits_imag;
  assign ram_imag__T_60_addr = value;
  assign ram_imag__T_60_mask = do_enq;
  assign ram_imag__T_60_en = do_enq;
  assign _T_50 = value == value_1; // @[Decoupled.scala 216:41:@4746.4]
  assign _T_52 = maybe_full == 1'h0; // @[Decoupled.scala 217:36:@4747.4]
  assign empty = _T_50 & _T_52; // @[Decoupled.scala 217:33:@4748.4]
  assign _T_53 = _T_50 & maybe_full; // @[Decoupled.scala 218:32:@4749.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 30:37:@4750.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 30:37:@4753.4]
  assign _T_63 = value + 4'h1; // @[Counter.scala 35:22:@4761.6]
  assign _T_64 = _T_63[3:0]; // @[Counter.scala 35:22:@4762.6]
  assign _GEN_5 = do_enq ? _T_64 : value; // @[Decoupled.scala 222:17:@4756.4]
  assign _T_67 = value_1 + 4'h1; // @[Counter.scala 35:22:@4767.6]
  assign _T_68 = _T_67[3:0]; // @[Counter.scala 35:22:@4768.6]
  assign _GEN_6 = do_deq ? _T_68 : value_1; // @[Decoupled.scala 226:17:@4765.4]
  assign _T_69 = do_enq != do_deq; // @[Decoupled.scala 229:16:@4771.4]
  assign _GEN_7 = _T_69 ? do_enq : maybe_full; // @[Decoupled.scala 229:27:@4772.4]
  assign _T_71 = empty == 1'h0; // @[Decoupled.scala 233:19:@4775.4]
  assign _T_73 = _T_53 == 1'h0; // @[Decoupled.scala 234:19:@4777.4]
  assign io_enq_ready = _T_73;
  assign io_deq_valid = _T_71;
  assign io_deq_bits_real = ram_real__T_76_data;
  assign io_deq_bits_imag = ram_imag__T_76_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_real[initvar] = _RAND_0[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_imag[initvar] = _RAND_1[11:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  value = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  value_1 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  maybe_full = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_real__T_60_en & ram_real__T_60_mask) begin
      ram_real[ram_real__T_60_addr] <= ram_real__T_60_data; // @[Decoupled.scala 211:24:@4742.4]
    end
    if(ram_imag__T_60_en & ram_imag__T_60_mask) begin
      ram_imag[ram_imag__T_60_addr] <= ram_imag__T_60_data; // @[Decoupled.scala 211:24:@4742.4]
    end
    if (reset) begin
      value <= 4'h0;
    end else begin
      if (do_enq) begin
        value <= _T_64;
      end
    end
    if (reset) begin
      value_1 <= 4'h0;
    end else begin
      if (do_deq) begin
        value_1 <= _T_68;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_69) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
module Rotator( // @[:@4789.2]
  input  [11:0] io_din_real, // @[:@4792.4]
  input  [11:0] io_din_imag, // @[:@4792.4]
  output [11:0] io_dout_real, // @[:@4792.4]
  output [11:0] io_dout_imag, // @[:@4792.4]
  input  [5:0]  io_addr // @[:@4792.4]
);
  wire [12:0] _T_14; // @[FixedPointTypeClass.scala 40:43:@4794.4]
  wire [11:0] _T_15; // @[FixedPointTypeClass.scala 40:43:@4795.4]
  wire [11:0] minusone_real; // @[FixedPointTypeClass.scala 40:43:@4796.4]
  wire [12:0] _T_18; // @[FixedPointTypeClass.scala 40:43:@4797.4]
  wire [11:0] _T_19; // @[FixedPointTypeClass.scala 40:43:@4798.4]
  wire [11:0] minusone_imag; // @[FixedPointTypeClass.scala 40:43:@4799.4]
  wire [1:0] _T_50; // @[ifftCP.scala 150:30:@4815.4]
  wire  _T_54; // @[Mux.scala 46:19:@4816.4]
  wire [11:0] _T_57_real; // @[Mux.scala 46:16:@4817.4]
  wire [11:0] _T_57_imag; // @[Mux.scala 46:16:@4817.4]
  wire  _T_58; // @[Mux.scala 46:19:@4818.4]
  wire [11:0] _T_61_real; // @[Mux.scala 46:16:@4819.4]
  wire [11:0] _T_61_imag; // @[Mux.scala 46:16:@4819.4]
  wire  _T_62; // @[Mux.scala 46:19:@4820.4]
  wire [11:0] rot_real; // @[Mux.scala 46:16:@4821.4]
  wire [11:0] rot_imag; // @[Mux.scala 46:16:@4821.4]
  assign _T_14 = $signed(12'sh0) - $signed(io_din_real); // @[FixedPointTypeClass.scala 40:43:@4794.4]
  assign _T_15 = _T_14[11:0]; // @[FixedPointTypeClass.scala 40:43:@4795.4]
  assign minusone_real = $signed(_T_15); // @[FixedPointTypeClass.scala 40:43:@4796.4]
  assign _T_18 = $signed(12'sh0) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 40:43:@4797.4]
  assign _T_19 = _T_18[11:0]; // @[FixedPointTypeClass.scala 40:43:@4798.4]
  assign minusone_imag = $signed(_T_19); // @[FixedPointTypeClass.scala 40:43:@4799.4]
  assign _T_50 = io_addr[5:4]; // @[ifftCP.scala 150:30:@4815.4]
  assign _T_54 = 2'h3 == _T_50; // @[Mux.scala 46:19:@4816.4]
  assign _T_57_real = _T_54 ? $signed(minusone_imag) : $signed(io_din_real); // @[Mux.scala 46:16:@4817.4]
  assign _T_57_imag = _T_54 ? $signed(io_din_real) : $signed(io_din_imag); // @[Mux.scala 46:16:@4817.4]
  assign _T_58 = 2'h2 == _T_50; // @[Mux.scala 46:19:@4818.4]
  assign _T_61_real = _T_58 ? $signed(io_din_imag) : $signed(_T_57_real); // @[Mux.scala 46:16:@4819.4]
  assign _T_61_imag = _T_58 ? $signed(minusone_real) : $signed(_T_57_imag); // @[Mux.scala 46:16:@4819.4]
  assign _T_62 = 2'h1 == _T_50; // @[Mux.scala 46:19:@4820.4]
  assign rot_real = _T_62 ? $signed(minusone_real) : $signed(_T_61_real); // @[Mux.scala 46:16:@4821.4]
  assign rot_imag = _T_62 ? $signed(minusone_imag) : $signed(_T_61_imag); // @[Mux.scala 46:16:@4821.4]
  assign io_dout_real = rot_real;
  assign io_dout_imag = rot_imag;
endmodule
module IFFTCPModule( // @[:@4825.2]
  input         clock, // @[:@4826.4]
  input         reset, // @[:@4827.4]
  input         io_start, // @[:@4828.4]
  input  [7:0]  io_len, // @[:@4828.4]
  output        io_din_ready, // @[:@4828.4]
  input         io_din_valid, // @[:@4828.4]
  input  [11:0] io_din_bits_real, // @[:@4828.4]
  input  [11:0] io_din_bits_imag, // @[:@4828.4]
  input  [3:0]  io_din_cnt, // @[:@4828.4]
  output        io_dout_valid, // @[:@4828.4]
  output [11:0] io_dout_bits_real, // @[:@4828.4]
  output [11:0] io_dout_bits_imag // @[:@4828.4]
);
  wire  ifft_clock; // @[ifftCP.scala 28:20:@4830.4]
  wire  ifft_reset; // @[ifftCP.scala 28:20:@4830.4]
  wire  ifft_io_din_valid; // @[ifftCP.scala 28:20:@4830.4]
  wire [11:0] ifft_io_din_bits_real; // @[ifftCP.scala 28:20:@4830.4]
  wire [11:0] ifft_io_din_bits_imag; // @[ifftCP.scala 28:20:@4830.4]
  wire  ifft_io_dout_valid; // @[ifftCP.scala 28:20:@4830.4]
  wire [11:0] ifft_io_dout_bits_real; // @[ifftCP.scala 28:20:@4830.4]
  wire [11:0] ifft_io_dout_bits_imag; // @[ifftCP.scala 28:20:@4830.4]
  wire  ifft_io_init; // @[ifftCP.scala 28:20:@4830.4]
  wire  ifft_io_stall; // @[ifftCP.scala 28:20:@4830.4]
  wire  cpq_clock; // @[ifftCP.scala 29:19:@4833.4]
  wire  cpq_reset; // @[ifftCP.scala 29:19:@4833.4]
  wire  cpq_io_enq_ready; // @[ifftCP.scala 29:19:@4833.4]
  wire  cpq_io_enq_valid; // @[ifftCP.scala 29:19:@4833.4]
  wire [11:0] cpq_io_enq_bits_real; // @[ifftCP.scala 29:19:@4833.4]
  wire [11:0] cpq_io_enq_bits_imag; // @[ifftCP.scala 29:19:@4833.4]
  wire  cpq_io_deq_ready; // @[ifftCP.scala 29:19:@4833.4]
  wire  cpq_io_deq_valid; // @[ifftCP.scala 29:19:@4833.4]
  wire [11:0] cpq_io_deq_bits_real; // @[ifftCP.scala 29:19:@4833.4]
  wire [11:0] cpq_io_deq_bits_imag; // @[ifftCP.scala 29:19:@4833.4]
  reg  cpwrite; // @[ifftCP.scala 30:24:@4836.4]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[ifftCP.scala 34:22:@4839.4]
  reg [31:0] _RAND_1;
  reg [3:0] value; // @[Counter.scala 26:33:@4840.4]
  reg [31:0] _RAND_2;
  reg [5:0] value_1; // @[Counter.scala 26:33:@4848.4]
  reg [31:0] _RAND_3;
  reg [2:0] value_2; // @[Counter.scala 26:33:@4858.4]
  reg [31:0] _RAND_4;
  reg [3:0] value_3; // @[Counter.scala 26:33:@4876.4]
  reg [31:0] _RAND_5;
  reg [7:0] symcnt; // @[ifftCP.scala 41:23:@4884.4]
  reg [31:0] _RAND_6;
  reg [5:0] value_4; // @[Counter.scala 26:33:@4886.4]
  reg [31:0] _RAND_7;
  reg [5:0] dincnt; // @[Reg.scala 19:20:@4895.4]
  reg [31:0] _RAND_8;
  wire [11:0] rotator_io_din_real; // @[ifftCP.scala 54:23:@4908.4]
  wire [11:0] rotator_io_din_imag; // @[ifftCP.scala 54:23:@4908.4]
  wire [11:0] rotator_io_dout_real; // @[ifftCP.scala 54:23:@4908.4]
  wire [11:0] rotator_io_dout_imag; // @[ifftCP.scala 54:23:@4908.4]
  wire [5:0] rotator_io_addr; // @[ifftCP.scala 54:23:@4908.4]
  wire  _T_44; // @[Counter.scala 34:24:@4842.6]
  wire [4:0] _T_46; // @[Counter.scala 35:22:@4843.6]
  wire [3:0] _T_47; // @[Counter.scala 35:22:@4844.6]
  wire [3:0] _GEN_0; // @[Counter.scala 63:17:@4841.4]
  wire  cwrap; // @[Counter.scala 64:20:@4847.4]
  wire  _T_51; // @[Counter.scala 34:24:@4850.6]
  wire [6:0] _T_53; // @[Counter.scala 35:22:@4851.6]
  wire [5:0] _T_54; // @[Counter.scala 35:22:@4852.6]
  wire [5:0] _GEN_1; // @[Counter.scala 63:17:@4849.4]
  wire  doutlast; // @[Counter.scala 64:20:@4855.4]
  wire  _T_55; // @[ifftCP.scala 38:42:@4856.4]
  wire  _T_56; // @[ifftCP.scala 38:58:@4857.4]
  wire  _T_60; // @[Counter.scala 34:24:@4860.6]
  wire [3:0] _T_62; // @[Counter.scala 35:22:@4861.6]
  wire [2:0] _T_63; // @[Counter.scala 35:22:@4862.6]
  wire [2:0] _GEN_2; // @[Counter.scala 37:21:@4864.6]
  wire [2:0] _GEN_3; // @[Counter.scala 63:17:@4859.4]
  wire  prelast; // @[Counter.scala 64:20:@4868.4]
  wire  _T_65; // @[ifftCP.scala 39:23:@4869.4]
  wire  _T_66; // @[ifftCP.scala 39:45:@4870.4]
  wire  _T_67; // @[ifftCP.scala 39:36:@4871.4]
  wire  _T_68; // @[ifftCP.scala 39:68:@4872.4]
  wire  _T_69; // @[ifftCP.scala 39:81:@4873.4]
  wire  dinval; // @[ifftCP.scala 39:59:@4874.4]
  wire  _T_70; // @[ifftCP.scala 40:45:@4875.4]
  wire  _T_74; // @[Counter.scala 34:24:@4878.6]
  wire [4:0] _T_76; // @[Counter.scala 35:22:@4879.6]
  wire [3:0] _T_77; // @[Counter.scala 35:22:@4880.6]
  wire [3:0] _GEN_4; // @[Counter.scala 63:17:@4877.4]
  wire  pauselast; // @[Counter.scala 64:20:@4883.4]
  wire [6:0] _T_86; // @[Counter.scala 35:22:@4889.6]
  wire [5:0] _T_87; // @[Counter.scala 35:22:@4890.6]
  wire [5:0] _GEN_5; // @[Counter.scala 63:17:@4887.4]
  wire [6:0] _T_95; // @[ifftCP.scala 48:56:@4900.4]
  wire [5:0] _T_96; // @[ifftCP.scala 48:56:@4901.4]
  wire [5:0] _T_97; // @[ifftCP.scala 48:40:@4902.4]
  wire [5:0] dincnt_next; // @[ifftCP.scala 48:21:@4903.4]
  wire [5:0] _GEN_6; // @[Reg.scala 20:19:@4896.4]
  wire  dinlast; // @[ifftCP.scala 47:25:@4899.4]
  wire  _T_124; // @[Conditional.scala 37:30:@4946.4]
  wire  _T_126; // @[Conditional.scala 37:30:@4954.6]
  wire  _T_130; // @[Conditional.scala 37:30:@4963.8]
  wire  _T_133; // @[Conditional.scala 37:30:@4972.10]
  wire  _GEN_25; // @[Conditional.scala 39:67:@4964.8]
  wire  _GEN_30; // @[Conditional.scala 39:67:@4955.6]
  wire  din_ready; // @[Conditional.scala 40:58:@4947.4]
  wire  _T_109; // @[ifftCP.scala 62:34:@4918.4]
  wire  _T_112; // @[ifftCP.scala 67:54:@4926.4]
  wire  _T_113; // @[ifftCP.scala 67:43:@4927.4]
  wire [11:0] _T_116_real; // @[ifftCP.scala 71:54:@4931.4]
  wire [11:0] _T_116_imag; // @[ifftCP.scala 71:54:@4931.4]
  wire [11:0] _T_119_real; // @[ifftCP.scala 71:24:@4932.4]
  wire [11:0] _T_119_imag; // @[ifftCP.scala 71:24:@4932.4]
  wire  _T_120; // @[ifftCP.scala 72:40:@4935.4]
  wire  _GEN_7; // @[ifftCP.scala 77:18:@4941.6]
  wire  _GEN_8; // @[ifftCP.scala 74:19:@4937.4]
  wire [2:0] _GEN_9; // @[ifftCP.scala 86:23:@4948.6]
  wire [7:0] _GEN_10; // @[ifftCP.scala 86:23:@4948.6]
  wire  _T_128; // @[ifftCP.scala 93:24:@4956.8]
  wire [2:0] _GEN_12; // @[ifftCP.scala 93:32:@4957.8]
  wire  _T_132; // @[ifftCP.scala 101:21:@4966.10]
  wire [2:0] _GEN_13; // @[ifftCP.scala 101:37:@4967.10]
  wire [8:0] _T_136; // @[ifftCP.scala 110:26:@4977.14]
  wire [7:0] _T_137; // @[ifftCP.scala 110:26:@4978.14]
  wire [2:0] _GEN_14; // @[ifftCP.scala 108:22:@4975.12]
  wire [7:0] _GEN_15; // @[ifftCP.scala 108:22:@4975.12]
  wire  _T_138; // @[Conditional.scala 37:30:@4983.12]
  wire  _T_139; // @[ifftCP.scala 116:29:@4986.16]
  wire [2:0] _T_140; // @[ifftCP.scala 116:21:@4987.16]
  wire [2:0] _GEN_16; // @[ifftCP.scala 115:24:@4985.14]
  wire  _T_141; // @[Conditional.scala 37:30:@4992.14]
  wire  _T_143; // @[ifftCP.scala 122:20:@4994.16]
  wire [2:0] _GEN_17; // @[ifftCP.scala 122:46:@4995.16]
  wire  _T_144; // @[Conditional.scala 37:30:@5000.16]
  wire [2:0] _GEN_18; // @[ifftCP.scala 128:22:@5002.18]
  wire [2:0] _GEN_19; // @[Conditional.scala 39:67:@5001.16]
  wire [2:0] _GEN_20; // @[Conditional.scala 39:67:@4993.14]
  wire [2:0] _GEN_21; // @[Conditional.scala 39:67:@4984.12]
  wire [2:0] _GEN_23; // @[Conditional.scala 39:67:@4973.10]
  wire [7:0] _GEN_24; // @[Conditional.scala 39:67:@4973.10]
  wire [2:0] _GEN_26; // @[Conditional.scala 39:67:@4964.8]
  wire [7:0] _GEN_27; // @[Conditional.scala 39:67:@4964.8]
  wire  _GEN_28; // @[Conditional.scala 39:67:@4955.6]
  wire [2:0] _GEN_29; // @[Conditional.scala 39:67:@4955.6]
  wire [7:0] _GEN_31; // @[Conditional.scala 39:67:@4955.6]
  wire [2:0] _GEN_32; // @[Conditional.scala 40:58:@4947.4]
  wire [7:0] _GEN_33; // @[Conditional.scala 40:58:@4947.4]
  wire  ifft_init; // @[Conditional.scala 40:58:@4947.4]
  FFT_R2SDF ifft ( // @[ifftCP.scala 28:20:@4830.4]
    .clock(ifft_clock),
    .reset(ifft_reset),
    .io_din_valid(ifft_io_din_valid),
    .io_din_bits_real(ifft_io_din_bits_real),
    .io_din_bits_imag(ifft_io_din_bits_imag),
    .io_dout_valid(ifft_io_dout_valid),
    .io_dout_bits_real(ifft_io_dout_bits_real),
    .io_dout_bits_imag(ifft_io_dout_bits_imag),
    .io_init(ifft_io_init),
    .io_stall(ifft_io_stall)
  );
  Queue_1 cpq ( // @[ifftCP.scala 29:19:@4833.4]
    .clock(cpq_clock),
    .reset(cpq_reset),
    .io_enq_ready(cpq_io_enq_ready),
    .io_enq_valid(cpq_io_enq_valid),
    .io_enq_bits_real(cpq_io_enq_bits_real),
    .io_enq_bits_imag(cpq_io_enq_bits_imag),
    .io_deq_ready(cpq_io_deq_ready),
    .io_deq_valid(cpq_io_deq_valid),
    .io_deq_bits_real(cpq_io_deq_bits_real),
    .io_deq_bits_imag(cpq_io_deq_bits_imag)
  );
  Rotator rotator ( // @[ifftCP.scala 54:23:@4908.4]
    .io_din_real(rotator_io_din_real),
    .io_din_imag(rotator_io_din_imag),
    .io_dout_real(rotator_io_dout_real),
    .io_dout_imag(rotator_io_dout_imag),
    .io_addr(rotator_io_addr)
  );
  assign _T_44 = value == 4'hf; // @[Counter.scala 34:24:@4842.6]
  assign _T_46 = value + 4'h1; // @[Counter.scala 35:22:@4843.6]
  assign _T_47 = _T_46[3:0]; // @[Counter.scala 35:22:@4844.6]
  assign _GEN_0 = cpwrite ? _T_47 : value; // @[Counter.scala 63:17:@4841.4]
  assign cwrap = cpwrite & _T_44; // @[Counter.scala 64:20:@4847.4]
  assign _T_51 = value_1 == 6'h3f; // @[Counter.scala 34:24:@4850.6]
  assign _T_53 = value_1 + 6'h1; // @[Counter.scala 35:22:@4851.6]
  assign _T_54 = _T_53[5:0]; // @[Counter.scala 35:22:@4852.6]
  assign _GEN_1 = ifft_io_dout_valid ? _T_54 : value_1; // @[Counter.scala 63:17:@4849.4]
  assign doutlast = ifft_io_dout_valid & _T_51; // @[Counter.scala 64:20:@4855.4]
  assign _T_55 = state == 3'h2; // @[ifftCP.scala 38:42:@4856.4]
  assign _T_56 = _T_55 & io_din_valid; // @[ifftCP.scala 38:58:@4857.4]
  assign _T_60 = value_2 == 3'h5; // @[Counter.scala 34:24:@4860.6]
  assign _T_62 = value_2 + 3'h1; // @[Counter.scala 35:22:@4861.6]
  assign _T_63 = _T_62[2:0]; // @[Counter.scala 35:22:@4862.6]
  assign _GEN_2 = _T_60 ? 3'h0 : _T_63; // @[Counter.scala 37:21:@4864.6]
  assign _GEN_3 = _T_56 ? _GEN_2 : value_2; // @[Counter.scala 63:17:@4859.4]
  assign prelast = _T_56 & _T_60; // @[Counter.scala 64:20:@4868.4]
  assign _T_65 = state == 3'h3; // @[ifftCP.scala 39:23:@4869.4]
  assign _T_66 = state == 3'h5; // @[ifftCP.scala 39:45:@4870.4]
  assign _T_67 = _T_65 | _T_66; // @[ifftCP.scala 39:36:@4871.4]
  assign _T_68 = state == 3'h6; // @[ifftCP.scala 39:68:@4872.4]
  assign _T_69 = _T_68 & io_din_valid; // @[ifftCP.scala 39:81:@4873.4]
  assign dinval = _T_67 | _T_69; // @[ifftCP.scala 39:59:@4874.4]
  assign _T_70 = state == 3'h4; // @[ifftCP.scala 40:45:@4875.4]
  assign _T_74 = value_3 == 4'hf; // @[Counter.scala 34:24:@4878.6]
  assign _T_76 = value_3 + 4'h1; // @[Counter.scala 35:22:@4879.6]
  assign _T_77 = _T_76[3:0]; // @[Counter.scala 35:22:@4880.6]
  assign _GEN_4 = _T_70 ? _T_77 : value_3; // @[Counter.scala 63:17:@4877.4]
  assign pauselast = _T_70 & _T_74; // @[Counter.scala 64:20:@4883.4]
  assign _T_86 = value_4 + 6'h1; // @[Counter.scala 35:22:@4889.6]
  assign _T_87 = _T_86[5:0]; // @[Counter.scala 35:22:@4890.6]
  assign _GEN_5 = ifft_io_din_valid ? _T_87 : value_4; // @[Counter.scala 63:17:@4887.4]
  assign _T_95 = dincnt + 6'h1; // @[ifftCP.scala 48:56:@4900.4]
  assign _T_96 = _T_95[5:0]; // @[ifftCP.scala 48:56:@4901.4]
  assign _T_97 = dinval ? _T_96 : dincnt; // @[ifftCP.scala 48:40:@4902.4]
  assign dincnt_next = io_start ? 6'h0 : _T_97; // @[ifftCP.scala 48:21:@4903.4]
  assign _GEN_6 = dinval ? dincnt_next : dincnt; // @[Reg.scala 20:19:@4896.4]
  assign dinlast = dincnt == 6'h3f; // @[ifftCP.scala 47:25:@4899.4]
  assign _T_124 = 3'h0 == state; // @[Conditional.scala 37:30:@4946.4]
  assign _T_126 = 3'h1 == state; // @[Conditional.scala 37:30:@4954.6]
  assign _T_130 = 3'h2 == state; // @[Conditional.scala 37:30:@4963.8]
  assign _T_133 = 3'h3 == state; // @[Conditional.scala 37:30:@4972.10]
  assign _GEN_25 = _T_130 ? 1'h1 : _T_133; // @[Conditional.scala 39:67:@4964.8]
  assign _GEN_30 = _T_126 ? 1'h0 : _GEN_25; // @[Conditional.scala 39:67:@4955.6]
  assign din_ready = _T_124 ? 1'h0 : _GEN_30; // @[Conditional.scala 40:58:@4947.4]
  assign _T_109 = din_ready | _T_66; // @[ifftCP.scala 62:34:@4918.4]
  assign _T_112 = value_1 < 6'h10; // @[ifftCP.scala 67:54:@4926.4]
  assign _T_113 = ifft_io_dout_valid & _T_112; // @[ifftCP.scala 67:43:@4927.4]
  assign _T_116_real = ifft_io_dout_valid ? $signed(ifft_io_dout_bits_real) : $signed(12'sh0); // @[ifftCP.scala 71:54:@4931.4]
  assign _T_116_imag = ifft_io_dout_valid ? $signed(ifft_io_dout_bits_imag) : $signed(12'sh0); // @[ifftCP.scala 71:54:@4931.4]
  assign _T_119_real = cpwrite ? $signed(cpq_io_deq_bits_real) : $signed(_T_116_real); // @[ifftCP.scala 71:24:@4932.4]
  assign _T_119_imag = cpwrite ? $signed(cpq_io_deq_bits_imag) : $signed(_T_116_imag); // @[ifftCP.scala 71:24:@4932.4]
  assign _T_120 = ifft_io_dout_valid | cpwrite; // @[ifftCP.scala 72:40:@4935.4]
  assign _GEN_7 = cwrap ? 1'h0 : cpwrite; // @[ifftCP.scala 77:18:@4941.6]
  assign _GEN_8 = doutlast ? 1'h1 : _GEN_7; // @[ifftCP.scala 74:19:@4937.4]
  assign _GEN_9 = io_start ? 3'h1 : state; // @[ifftCP.scala 86:23:@4948.6]
  assign _GEN_10 = io_start ? 8'h0 : symcnt; // @[ifftCP.scala 86:23:@4948.6]
  assign _T_128 = io_din_cnt >= 4'h6; // @[ifftCP.scala 93:24:@4956.8]
  assign _GEN_12 = _T_128 ? 3'h2 : state; // @[ifftCP.scala 93:32:@4957.8]
  assign _T_132 = prelast & io_din_valid; // @[ifftCP.scala 101:21:@4966.10]
  assign _GEN_13 = _T_132 ? 3'h3 : state; // @[ifftCP.scala 101:37:@4967.10]
  assign _T_136 = symcnt + 8'h1; // @[ifftCP.scala 110:26:@4977.14]
  assign _T_137 = _T_136[7:0]; // @[ifftCP.scala 110:26:@4978.14]
  assign _GEN_14 = dinlast ? 3'h4 : state; // @[ifftCP.scala 108:22:@4975.12]
  assign _GEN_15 = dinlast ? _T_137 : symcnt; // @[ifftCP.scala 108:22:@4975.12]
  assign _T_138 = 3'h4 == state; // @[Conditional.scala 37:30:@4983.12]
  assign _T_139 = symcnt == io_len; // @[ifftCP.scala 116:29:@4986.16]
  assign _T_140 = _T_139 ? 3'h5 : 3'h3; // @[ifftCP.scala 116:21:@4987.16]
  assign _GEN_16 = pauselast ? _T_140 : state; // @[ifftCP.scala 115:24:@4985.14]
  assign _T_141 = 3'h5 == state; // @[Conditional.scala 37:30:@4992.14]
  assign _T_143 = dincnt == 6'h39; // @[ifftCP.scala 122:20:@4994.16]
  assign _GEN_17 = _T_143 ? 3'h6 : state; // @[ifftCP.scala 122:46:@4995.16]
  assign _T_144 = 3'h6 == state; // @[Conditional.scala 37:30:@5000.16]
  assign _GEN_18 = dinlast ? 3'h0 : state; // @[ifftCP.scala 128:22:@5002.18]
  assign _GEN_19 = _T_144 ? _GEN_18 : state; // @[Conditional.scala 39:67:@5001.16]
  assign _GEN_20 = _T_141 ? _GEN_17 : _GEN_19; // @[Conditional.scala 39:67:@4993.14]
  assign _GEN_21 = _T_138 ? _GEN_16 : _GEN_20; // @[Conditional.scala 39:67:@4984.12]
  assign _GEN_23 = _T_133 ? _GEN_14 : _GEN_21; // @[Conditional.scala 39:67:@4973.10]
  assign _GEN_24 = _T_133 ? _GEN_15 : symcnt; // @[Conditional.scala 39:67:@4973.10]
  assign _GEN_26 = _T_130 ? _GEN_13 : _GEN_23; // @[Conditional.scala 39:67:@4964.8]
  assign _GEN_27 = _T_130 ? symcnt : _GEN_24; // @[Conditional.scala 39:67:@4964.8]
  assign _GEN_28 = _T_126 ? _T_128 : 1'h0; // @[Conditional.scala 39:67:@4955.6]
  assign _GEN_29 = _T_126 ? _GEN_12 : _GEN_26; // @[Conditional.scala 39:67:@4955.6]
  assign _GEN_31 = _T_126 ? symcnt : _GEN_27; // @[Conditional.scala 39:67:@4955.6]
  assign _GEN_32 = _T_124 ? _GEN_9 : _GEN_29; // @[Conditional.scala 40:58:@4947.4]
  assign _GEN_33 = _T_124 ? _GEN_10 : _GEN_31; // @[Conditional.scala 40:58:@4947.4]
  assign ifft_init = _T_124 ? 1'h0 : _GEN_28; // @[Conditional.scala 40:58:@4947.4]
  assign io_din_ready = din_ready;
  assign io_dout_valid = _T_120;
  assign io_dout_bits_real = _T_119_real;
  assign io_dout_bits_imag = _T_119_imag;
  assign ifft_clock = clock;
  assign ifft_reset = reset;
  assign ifft_io_din_valid = _T_109;
  assign ifft_io_din_bits_real = rotator_io_dout_real;
  assign ifft_io_din_bits_imag = rotator_io_dout_imag;
  assign ifft_io_init = ifft_init;
  assign ifft_io_stall = _T_70;
  assign cpq_clock = clock;
  assign cpq_reset = reset;
  assign cpq_io_enq_valid = _T_113;
  assign cpq_io_enq_bits_real = ifft_io_dout_bits_real;
  assign cpq_io_enq_bits_imag = ifft_io_dout_bits_imag;
  assign cpq_io_deq_ready = cpwrite;
  assign rotator_io_din_real = io_din_bits_real;
  assign rotator_io_din_imag = io_din_bits_imag;
  assign rotator_io_addr = value_4;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  cpwrite = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  state = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  value = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  value_1 = _RAND_3[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  value_2 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  value_3 = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  symcnt = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  value_4 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  dincnt = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cpwrite <= 1'h0;
    end else begin
      if (doutlast) begin
        cpwrite <= 1'h1;
      end else begin
        if (cwrap) begin
          cpwrite <= 1'h0;
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_124) begin
        if (io_start) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_126) begin
          if (_T_128) begin
            state <= 3'h2;
          end
        end else begin
          if (_T_130) begin
            if (_T_132) begin
              state <= 3'h3;
            end
          end else begin
            if (_T_133) begin
              if (dinlast) begin
                state <= 3'h4;
              end
            end else begin
              if (_T_138) begin
                if (pauselast) begin
                  if (_T_139) begin
                    state <= 3'h5;
                  end else begin
                    state <= 3'h3;
                  end
                end
              end else begin
                if (_T_141) begin
                  if (_T_143) begin
                    state <= 3'h6;
                  end
                end else begin
                  if (_T_144) begin
                    if (dinlast) begin
                      state <= 3'h0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 4'h0;
    end else begin
      if (cpwrite) begin
        value <= _T_47;
      end
    end
    if (reset) begin
      value_1 <= 6'h0;
    end else begin
      if (ifft_io_dout_valid) begin
        value_1 <= _T_54;
      end
    end
    if (reset) begin
      value_2 <= 3'h0;
    end else begin
      if (_T_56) begin
        if (_T_60) begin
          value_2 <= 3'h0;
        end else begin
          value_2 <= _T_63;
        end
      end
    end
    if (reset) begin
      value_3 <= 4'h0;
    end else begin
      if (_T_70) begin
        value_3 <= _T_77;
      end
    end
    if (reset) begin
      symcnt <= 8'h0;
    end else begin
      if (_T_124) begin
        if (io_start) begin
          symcnt <= 8'h0;
        end
      end else begin
        if (!(_T_126)) begin
          if (!(_T_130)) begin
            if (_T_133) begin
              if (dinlast) begin
                symcnt <= _T_137;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value_4 <= 6'h0;
    end else begin
      if (ifft_io_din_valid) begin
        value_4 <= _T_87;
      end
    end
    if (reset) begin
      dincnt <= 6'h0;
    end else begin
      if (dinval) begin
        if (io_start) begin
          dincnt <= 6'h0;
        end else begin
          if (dinval) begin
            dincnt <= _T_96;
          end
        end
      end
    end
  end
endmodule
module TxModule( // @[:@5007.2]
  input         clock, // @[:@5008.4]
  input         reset, // @[:@5009.4]
  output        io_cmd_ready, // @[:@5010.4]
  input         io_cmd_valid, // @[:@5010.4]
  input  [7:0]  io_cmd_bits_length, // @[:@5010.4]
  input  [1:0]  io_cmd_bits_mode, // @[:@5010.4]
  input  [6:0]  io_cmd_bits_seed, // @[:@5010.4]
  input  [6:0]  io_cmd_bits_repeat, // @[:@5010.4]
  input  [7:0]  io_cmd_bits_pause, // @[:@5010.4]
  output        io_din_ready, // @[:@5010.4]
  input         io_din_valid, // @[:@5010.4]
  input  [23:0] io_din_bits, // @[:@5010.4]
  output        io_dout_valid, // @[:@5010.4]
  output [11:0] io_dout_bits_real, // @[:@5010.4]
  output [11:0] io_dout_bits_imag // @[:@5010.4]
);
  wire  pregen_clock; // @[tx.scala 164:27:@5012.4]
  wire  pregen_reset; // @[tx.scala 164:27:@5012.4]
  wire  pregen_io_start; // @[tx.scala 164:27:@5012.4]
  wire [8:0] pregen_io_count; // @[tx.scala 164:27:@5012.4]
  wire  pregen_io_dout_valid; // @[tx.scala 164:27:@5012.4]
  wire [11:0] pregen_io_dout_bits_real; // @[tx.scala 164:27:@5012.4]
  wire [11:0] pregen_io_dout_bits_imag; // @[tx.scala 164:27:@5012.4]
  wire  ctrl_clock; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_reset; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_cmd_ready; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_cmd_valid; // @[tx.scala 165:27:@5015.4]
  wire [7:0] ctrl_io_cmd_bits_length; // @[tx.scala 165:27:@5015.4]
  wire [1:0] ctrl_io_cmd_bits_mode; // @[tx.scala 165:27:@5015.4]
  wire [6:0] ctrl_io_cmd_bits_repeat; // @[tx.scala 165:27:@5015.4]
  wire [7:0] ctrl_io_cmd_bits_pause; // @[tx.scala 165:27:@5015.4]
  wire [8:0] ctrl_io_pregen_count; // @[tx.scala 165:27:@5015.4]
  wire [5:0] ctrl_io_interleaver_dcnt; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_ifftcp_dout_valid; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_din_ready; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_tx_start; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_zero_tail; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_ifftcp_start; // @[tx.scala 165:27:@5015.4]
  wire  ctrl_io_encoder_init; // @[tx.scala 165:27:@5015.4]
  wire [1:0] ctrl_io_mode; // @[tx.scala 165:27:@5015.4]
  wire [7:0] ctrl_io_pktlen; // @[tx.scala 165:27:@5015.4]
  wire  scrambler_clock; // @[tx.scala 166:27:@5018.4]
  wire  scrambler_reset; // @[tx.scala 166:27:@5018.4]
  wire  scrambler_io_init; // @[tx.scala 166:27:@5018.4]
  wire [6:0] scrambler_io_seed; // @[tx.scala 166:27:@5018.4]
  wire  scrambler_io_din_valid; // @[tx.scala 166:27:@5018.4]
  wire [23:0] scrambler_io_din_bits; // @[tx.scala 166:27:@5018.4]
  wire  scrambler_io_dout_valid; // @[tx.scala 166:27:@5018.4]
  wire [23:0] scrambler_io_dout_bits; // @[tx.scala 166:27:@5018.4]
  wire  encoder_clock; // @[tx.scala 167:27:@5021.4]
  wire  encoder_reset; // @[tx.scala 167:27:@5021.4]
  wire  encoder_io_init; // @[tx.scala 167:27:@5021.4]
  wire  encoder_io_din_valid; // @[tx.scala 167:27:@5021.4]
  wire [23:0] encoder_io_din_bits; // @[tx.scala 167:27:@5021.4]
  wire  encoder_io_dout_valid; // @[tx.scala 167:27:@5021.4]
  wire [47:0] encoder_io_dout_bits; // @[tx.scala 167:27:@5021.4]
  wire  interleaver_clock; // @[tx.scala 168:27:@5024.4]
  wire  interleaver_reset; // @[tx.scala 168:27:@5024.4]
  wire  interleaver_io_start; // @[tx.scala 168:27:@5024.4]
  wire [1:0] interleaver_io_mode; // @[tx.scala 168:27:@5024.4]
  wire  interleaver_io_din_valid; // @[tx.scala 168:27:@5024.4]
  wire [47:0] interleaver_io_din_bits; // @[tx.scala 168:27:@5024.4]
  wire [1:0] interleaver_io_dout_tag; // @[tx.scala 168:27:@5024.4]
  wire [5:0] interleaver_io_dout_cnt; // @[tx.scala 168:27:@5024.4]
  wire  interleaver_io_dout_ready; // @[tx.scala 168:27:@5024.4]
  wire  interleaver_io_dout_valid; // @[tx.scala 168:27:@5024.4]
  wire [3:0] interleaver_io_dout_bits; // @[tx.scala 168:27:@5024.4]
  wire [1:0] mapper_io_mode; // @[tx.scala 169:27:@5027.4]
  wire  mapper_io_din_valid; // @[tx.scala 169:27:@5027.4]
  wire [3:0] mapper_io_din_bits; // @[tx.scala 169:27:@5027.4]
  wire [1:0] mapper_io_din_tag; // @[tx.scala 169:27:@5027.4]
  wire  mapper_io_dout_valid; // @[tx.scala 169:27:@5027.4]
  wire [11:0] mapper_io_dout_bits_real; // @[tx.scala 169:27:@5027.4]
  wire [11:0] mapper_io_dout_bits_imag; // @[tx.scala 169:27:@5027.4]
  wire  mapq_clock; // @[tx.scala 170:27:@5030.4]
  wire  mapq_reset; // @[tx.scala 170:27:@5030.4]
  wire  mapq_io_enq_ready; // @[tx.scala 170:27:@5030.4]
  wire  mapq_io_enq_valid; // @[tx.scala 170:27:@5030.4]
  wire [11:0] mapq_io_enq_bits_real; // @[tx.scala 170:27:@5030.4]
  wire [11:0] mapq_io_enq_bits_imag; // @[tx.scala 170:27:@5030.4]
  wire  mapq_io_deq_ready; // @[tx.scala 170:27:@5030.4]
  wire  mapq_io_deq_valid; // @[tx.scala 170:27:@5030.4]
  wire [11:0] mapq_io_deq_bits_real; // @[tx.scala 170:27:@5030.4]
  wire [11:0] mapq_io_deq_bits_imag; // @[tx.scala 170:27:@5030.4]
  wire [3:0] mapq_io_count; // @[tx.scala 170:27:@5030.4]
  wire  ifftcp_clock; // @[tx.scala 171:27:@5033.4]
  wire  ifftcp_reset; // @[tx.scala 171:27:@5033.4]
  wire  ifftcp_io_start; // @[tx.scala 171:27:@5033.4]
  wire [7:0] ifftcp_io_len; // @[tx.scala 171:27:@5033.4]
  wire  ifftcp_io_din_ready; // @[tx.scala 171:27:@5033.4]
  wire  ifftcp_io_din_valid; // @[tx.scala 171:27:@5033.4]
  wire [11:0] ifftcp_io_din_bits_real; // @[tx.scala 171:27:@5033.4]
  wire [11:0] ifftcp_io_din_bits_imag; // @[tx.scala 171:27:@5033.4]
  wire [3:0] ifftcp_io_din_cnt; // @[tx.scala 171:27:@5033.4]
  wire  ifftcp_io_dout_valid; // @[tx.scala 171:27:@5033.4]
  wire [11:0] ifftcp_io_dout_bits_real; // @[tx.scala 171:27:@5033.4]
  wire [11:0] ifftcp_io_dout_bits_imag; // @[tx.scala 171:27:@5033.4]
  wire  _T_29; // @[Decoupled.scala 30:37:@5048.4]
  wire  _T_30; // @[Decoupled.scala 30:37:@5052.4]
  wire [23:0] _T_31; // @[tx.scala 186:65:@5054.4]
  wire [23:0] enc_bits; // @[tx.scala 186:21:@5055.4]
  wire  _T_32; // @[tx.scala 212:41:@5079.4]
  wire [11:0] _T_35_real; // @[tx.scala 214:25:@5082.6]
  wire [11:0] _T_35_imag; // @[tx.scala 214:25:@5082.6]
  wire [15:0] _GEN_2; // @[tx.scala 213:24:@5081.4]
  wire [15:0] _GEN_0; // @[tx.scala 213:24:@5081.4]
  wire [15:0] _GEN_3; // @[tx.scala 213:24:@5081.4]
  wire [15:0] _GEN_1; // @[tx.scala 213:24:@5081.4]
  PreambleGen pregen ( // @[tx.scala 164:27:@5012.4]
    .clock(pregen_clock),
    .reset(pregen_reset),
    .io_start(pregen_io_start),
    .io_count(pregen_io_count),
    .io_dout_valid(pregen_io_dout_valid),
    .io_dout_bits_real(pregen_io_dout_bits_real),
    .io_dout_bits_imag(pregen_io_dout_bits_imag)
  );
  TxControl ctrl ( // @[tx.scala 165:27:@5015.4]
    .clock(ctrl_clock),
    .reset(ctrl_reset),
    .io_cmd_ready(ctrl_io_cmd_ready),
    .io_cmd_valid(ctrl_io_cmd_valid),
    .io_cmd_bits_length(ctrl_io_cmd_bits_length),
    .io_cmd_bits_mode(ctrl_io_cmd_bits_mode),
    .io_cmd_bits_repeat(ctrl_io_cmd_bits_repeat),
    .io_cmd_bits_pause(ctrl_io_cmd_bits_pause),
    .io_pregen_count(ctrl_io_pregen_count),
    .io_interleaver_dcnt(ctrl_io_interleaver_dcnt),
    .io_ifftcp_dout_valid(ctrl_io_ifftcp_dout_valid),
    .io_din_ready(ctrl_io_din_ready),
    .io_tx_start(ctrl_io_tx_start),
    .io_zero_tail(ctrl_io_zero_tail),
    .io_ifftcp_start(ctrl_io_ifftcp_start),
    .io_encoder_init(ctrl_io_encoder_init),
    .io_mode(ctrl_io_mode),
    .io_pktlen(ctrl_io_pktlen)
  );
  Scrambler scrambler ( // @[tx.scala 166:27:@5018.4]
    .clock(scrambler_clock),
    .reset(scrambler_reset),
    .io_init(scrambler_io_init),
    .io_seed(scrambler_io_seed),
    .io_din_valid(scrambler_io_din_valid),
    .io_din_bits(scrambler_io_din_bits),
    .io_dout_valid(scrambler_io_dout_valid),
    .io_dout_bits(scrambler_io_dout_bits)
  );
  Encoder encoder ( // @[tx.scala 167:27:@5021.4]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_init(encoder_io_init),
    .io_din_valid(encoder_io_din_valid),
    .io_din_bits(encoder_io_din_bits),
    .io_dout_valid(encoder_io_dout_valid),
    .io_dout_bits(encoder_io_dout_bits)
  );
  Interleaver interleaver ( // @[tx.scala 168:27:@5024.4]
    .clock(interleaver_clock),
    .reset(interleaver_reset),
    .io_start(interleaver_io_start),
    .io_mode(interleaver_io_mode),
    .io_din_valid(interleaver_io_din_valid),
    .io_din_bits(interleaver_io_din_bits),
    .io_dout_tag(interleaver_io_dout_tag),
    .io_dout_cnt(interleaver_io_dout_cnt),
    .io_dout_ready(interleaver_io_dout_ready),
    .io_dout_valid(interleaver_io_dout_valid),
    .io_dout_bits(interleaver_io_dout_bits)
  );
  Mapper mapper ( // @[tx.scala 169:27:@5027.4]
    .io_mode(mapper_io_mode),
    .io_din_valid(mapper_io_din_valid),
    .io_din_bits(mapper_io_din_bits),
    .io_din_tag(mapper_io_din_tag),
    .io_dout_valid(mapper_io_dout_valid),
    .io_dout_bits_real(mapper_io_dout_bits_real),
    .io_dout_bits_imag(mapper_io_dout_bits_imag)
  );
  Queue mapq ( // @[tx.scala 170:27:@5030.4]
    .clock(mapq_clock),
    .reset(mapq_reset),
    .io_enq_ready(mapq_io_enq_ready),
    .io_enq_valid(mapq_io_enq_valid),
    .io_enq_bits_real(mapq_io_enq_bits_real),
    .io_enq_bits_imag(mapq_io_enq_bits_imag),
    .io_deq_ready(mapq_io_deq_ready),
    .io_deq_valid(mapq_io_deq_valid),
    .io_deq_bits_real(mapq_io_deq_bits_real),
    .io_deq_bits_imag(mapq_io_deq_bits_imag),
    .io_count(mapq_io_count)
  );
  IFFTCPModule ifftcp ( // @[tx.scala 171:27:@5033.4]
    .clock(ifftcp_clock),
    .reset(ifftcp_reset),
    .io_start(ifftcp_io_start),
    .io_len(ifftcp_io_len),
    .io_din_ready(ifftcp_io_din_ready),
    .io_din_valid(ifftcp_io_din_valid),
    .io_din_bits_real(ifftcp_io_din_bits_real),
    .io_din_bits_imag(ifftcp_io_din_bits_imag),
    .io_din_cnt(ifftcp_io_din_cnt),
    .io_dout_valid(ifftcp_io_dout_valid),
    .io_dout_bits_real(ifftcp_io_dout_bits_real),
    .io_dout_bits_imag(ifftcp_io_dout_bits_imag)
  );
  assign _T_29 = io_cmd_ready & io_cmd_valid; // @[Decoupled.scala 30:37:@5048.4]
  assign _T_30 = io_din_ready & io_din_valid; // @[Decoupled.scala 30:37:@5052.4]
  assign _T_31 = scrambler_io_dout_bits & 24'hffffc0; // @[tx.scala 186:65:@5054.4]
  assign enc_bits = ctrl_io_zero_tail ? _T_31 : scrambler_io_dout_bits; // @[tx.scala 186:21:@5055.4]
  assign _T_32 = ifftcp_io_dout_valid | pregen_io_dout_valid; // @[tx.scala 212:41:@5079.4]
  assign _T_35_real = pregen_io_dout_valid ? $signed(pregen_io_dout_bits_real) : $signed(ifftcp_io_dout_bits_real); // @[tx.scala 214:25:@5082.6]
  assign _T_35_imag = pregen_io_dout_valid ? $signed(pregen_io_dout_bits_imag) : $signed(ifftcp_io_dout_bits_imag); // @[tx.scala 214:25:@5082.6]
  assign _GEN_2 = {{4{_T_35_imag[11]}},_T_35_imag}; // @[tx.scala 213:24:@5081.4]
  assign _GEN_0 = io_dout_valid ? $signed($signed(_GEN_2) << 4) : $signed(16'sh0); // @[tx.scala 213:24:@5081.4]
  assign _GEN_3 = {{4{_T_35_real[11]}},_T_35_real}; // @[tx.scala 213:24:@5081.4]
  assign _GEN_1 = io_dout_valid ? $signed($signed(_GEN_3) << 4) : $signed(16'sh0); // @[tx.scala 213:24:@5081.4]
  assign io_cmd_ready = ctrl_io_cmd_ready;
  assign io_din_ready = ctrl_io_din_ready;
  assign io_dout_valid = _T_32;
  assign io_dout_bits_real = _GEN_1[15:4];
  assign io_dout_bits_imag = _GEN_0[15:4];
  assign pregen_clock = clock;
  assign pregen_reset = reset;
  assign pregen_io_start = ctrl_io_tx_start;
  assign ctrl_clock = clock;
  assign ctrl_reset = reset;
  assign ctrl_io_cmd_valid = io_cmd_valid;
  assign ctrl_io_cmd_bits_length = io_cmd_bits_length;
  assign ctrl_io_cmd_bits_mode = io_cmd_bits_mode;
  assign ctrl_io_cmd_bits_repeat = io_cmd_bits_repeat;
  assign ctrl_io_cmd_bits_pause = io_cmd_bits_pause;
  assign ctrl_io_pregen_count = pregen_io_count;
  assign ctrl_io_interleaver_dcnt = interleaver_io_dout_cnt;
  assign ctrl_io_ifftcp_dout_valid = ifftcp_io_dout_valid;
  assign scrambler_clock = clock;
  assign scrambler_reset = reset;
  assign scrambler_io_init = _T_29;
  assign scrambler_io_seed = io_cmd_bits_seed;
  assign scrambler_io_din_valid = _T_30;
  assign scrambler_io_din_bits = io_din_bits;
  assign encoder_clock = clock;
  assign encoder_reset = reset;
  assign encoder_io_init = ctrl_io_encoder_init;
  assign encoder_io_din_valid = scrambler_io_dout_valid;
  assign encoder_io_din_bits = enc_bits;
  assign interleaver_clock = clock;
  assign interleaver_reset = reset;
  assign interleaver_io_start = ctrl_io_tx_start;
  assign interleaver_io_mode = ctrl_io_mode;
  assign interleaver_io_din_valid = encoder_io_dout_valid;
  assign interleaver_io_din_bits = encoder_io_dout_bits;
  assign interleaver_io_dout_ready = mapq_io_enq_ready;
  assign mapper_io_mode = ctrl_io_mode;
  assign mapper_io_din_valid = interleaver_io_dout_valid;
  assign mapper_io_din_bits = interleaver_io_dout_bits;
  assign mapper_io_din_tag = interleaver_io_dout_tag;
  assign mapq_clock = clock;
  assign mapq_reset = reset;
  assign mapq_io_enq_valid = mapper_io_dout_valid;
  assign mapq_io_enq_bits_real = mapper_io_dout_bits_real;
  assign mapq_io_enq_bits_imag = mapper_io_dout_bits_imag;
  assign mapq_io_deq_ready = ifftcp_io_din_ready;
  assign ifftcp_clock = clock;
  assign ifftcp_reset = reset;
  assign ifftcp_io_start = ctrl_io_ifftcp_start;
  assign ifftcp_io_len = ctrl_io_pktlen;
  assign ifftcp_io_din_valid = mapq_io_deq_valid;
  assign ifftcp_io_din_bits_real = mapq_io_deq_bits_real;
  assign ifftcp_io_din_bits_imag = mapq_io_deq_bits_imag;
  assign ifftcp_io_din_cnt = mapq_io_count;
endmodule
module FpgaTxWrapper( // @[:@5091.2]
  input         clock, // @[:@5092.4]
  input         reset, // @[:@5093.4]
  output        io_cmd_ready, // @[:@5094.4]
  input         io_cmd_valid, // @[:@5094.4]
  input  [7:0]  io_cmd_bits_length, // @[:@5094.4]
  input  [1:0]  io_cmd_bits_mode, // @[:@5094.4]
  input  [6:0]  io_cmd_bits_seed, // @[:@5094.4]
  input  [6:0]  io_cmd_bits_repeat, // @[:@5094.4]
  input  [7:0]  io_cmd_bits_pause, // @[:@5094.4]
  output        io_din_ready, // @[:@5094.4]
  input         io_din_valid, // @[:@5094.4]
  input  [23:0] io_din_bits, // @[:@5094.4]
  output        io_dout_valid, // @[:@5094.4]
  output [11:0] io_dout_bits_real, // @[:@5094.4]
  output [11:0] io_dout_bits_imag, // @[:@5094.4]
  output [3:0]  io_dac_waddr // @[:@5094.4]
);
  wire  tx_clock; // @[tx.scala 255:21:@5096.4]
  wire  tx_reset; // @[tx.scala 255:21:@5096.4]
  wire  tx_io_cmd_ready; // @[tx.scala 255:21:@5096.4]
  wire  tx_io_cmd_valid; // @[tx.scala 255:21:@5096.4]
  wire [7:0] tx_io_cmd_bits_length; // @[tx.scala 255:21:@5096.4]
  wire [1:0] tx_io_cmd_bits_mode; // @[tx.scala 255:21:@5096.4]
  wire [6:0] tx_io_cmd_bits_seed; // @[tx.scala 255:21:@5096.4]
  wire [6:0] tx_io_cmd_bits_repeat; // @[tx.scala 255:21:@5096.4]
  wire [7:0] tx_io_cmd_bits_pause; // @[tx.scala 255:21:@5096.4]
  wire  tx_io_din_ready; // @[tx.scala 255:21:@5096.4]
  wire  tx_io_din_valid; // @[tx.scala 255:21:@5096.4]
  wire [23:0] tx_io_din_bits; // @[tx.scala 255:21:@5096.4]
  wire  tx_io_dout_valid; // @[tx.scala 255:21:@5096.4]
  wire [11:0] tx_io_dout_bits_real; // @[tx.scala 255:21:@5096.4]
  wire [11:0] tx_io_dout_bits_imag; // @[tx.scala 255:21:@5096.4]
  reg [3:0] value; // @[Counter.scala 26:33:@5112.4]
  reg [31:0] _RAND_0;
  wire [4:0] _T_34; // @[Counter.scala 35:22:@5115.6]
  wire [3:0] _T_35; // @[Counter.scala 35:22:@5116.6]
  TxModule tx ( // @[tx.scala 255:21:@5096.4]
    .clock(tx_clock),
    .reset(tx_reset),
    .io_cmd_ready(tx_io_cmd_ready),
    .io_cmd_valid(tx_io_cmd_valid),
    .io_cmd_bits_length(tx_io_cmd_bits_length),
    .io_cmd_bits_mode(tx_io_cmd_bits_mode),
    .io_cmd_bits_seed(tx_io_cmd_bits_seed),
    .io_cmd_bits_repeat(tx_io_cmd_bits_repeat),
    .io_cmd_bits_pause(tx_io_cmd_bits_pause),
    .io_din_ready(tx_io_din_ready),
    .io_din_valid(tx_io_din_valid),
    .io_din_bits(tx_io_din_bits),
    .io_dout_valid(tx_io_dout_valid),
    .io_dout_bits_real(tx_io_dout_bits_real),
    .io_dout_bits_imag(tx_io_dout_bits_imag)
  );
  assign _T_34 = value + 4'h1; // @[Counter.scala 35:22:@5115.6]
  assign _T_35 = _T_34[3:0]; // @[Counter.scala 35:22:@5116.6]
  assign io_cmd_ready = tx_io_cmd_ready;
  assign io_din_ready = tx_io_din_ready;
  assign io_dout_valid = tx_io_dout_valid;
  assign io_dout_bits_real = tx_io_dout_bits_real;
  assign io_dout_bits_imag = tx_io_dout_bits_imag;
  assign io_dac_waddr = value;
  assign tx_clock = clock;
  assign tx_reset = reset;
  assign tx_io_cmd_valid = io_cmd_valid;
  assign tx_io_cmd_bits_length = io_cmd_bits_length;
  assign tx_io_cmd_bits_mode = io_cmd_bits_mode;
  assign tx_io_cmd_bits_seed = io_cmd_bits_seed;
  assign tx_io_cmd_bits_repeat = io_cmd_bits_repeat;
  assign tx_io_cmd_bits_pause = io_cmd_bits_pause;
  assign tx_io_din_valid = io_din_valid;
  assign tx_io_din_bits = io_din_bits;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  value = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 4'h0;
    end else begin
      value <= _T_35;
    end
  end
endmodule
