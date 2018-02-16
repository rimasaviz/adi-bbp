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

module RxControl( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  output       io_cmd_ready, // @[:@6.4]
  input        io_cmd_valid, // @[:@6.4]
  input  [7:0] io_cmd_bits_length, // @[:@6.4]
  input  [1:0] io_cmd_bits_mode, // @[:@6.4]
  input        io_start, // @[:@6.4]
  input        io_dec_busy, // @[:@6.4]
  output       io_fft_enable, // @[:@6.4]
  output       io_fft_init, // @[:@6.4]
  output       io_fft_stall, // @[:@6.4]
  output       io_dec_last, // @[:@6.4]
  output       io_rx_init, // @[:@6.4]
  output [1:0] io_mode, // @[:@6.4]
  output       io_ctf_wr, // @[:@6.4]
  output       io_demap_en, // @[:@6.4]
  input        io_fft_dout_v // @[:@6.4]
);
  reg [2:0] st_wr; // @[rx.scala 48:25:@8.4]
  reg [31:0] _RAND_0;
  reg [1:0] mode; // @[Reg.scala 11:16:@15.4]
  reg [31:0] _RAND_1;
  reg [7:0] pktlen; // @[Reg.scala 11:16:@20.4]
  reg [31:0] _RAND_2;
  reg [7:0] pktcnt; // @[rx.scala 53:25:@24.4]
  reg [31:0] _RAND_3;
  reg [7:0] dincnt; // @[rx.scala 54:25:@25.4]
  reg [31:0] _RAND_4;
  reg [1:0] st_rd; // @[rx.scala 130:22:@129.4]
  reg [31:0] _RAND_5;
  reg [7:0] doutcnt; // @[rx.scala 131:26:@130.4]
  reg [31:0] _RAND_6;
  reg [7:0] doutcnt_s; // @[rx.scala 132:26:@131.4]
  reg [31:0] _RAND_7;
  wire  _T_24; // @[Decoupled.scala 30:37:@9.4]
  wire [1:0] _GEN_1; // @[Reg.scala 12:19:@16.4]
  wire [7:0] _GEN_2; // @[Reg.scala 12:19:@21.4]
  wire  _T_41; // @[Conditional.scala 37:30:@35.4]
  wire [2:0] _GEN_3; // @[rx.scala 69:27:@38.6]
  wire  _T_44; // @[Conditional.scala 37:30:@44.6]
  wire [7:0] _GEN_5; // @[rx.scala 76:23:@46.8]
  wire [7:0] _GEN_6; // @[rx.scala 76:23:@46.8]
  wire [2:0] _GEN_7; // @[rx.scala 76:23:@46.8]
  wire  _T_47; // @[Conditional.scala 37:30:@53.8]
  wire [8:0] _T_49; // @[rx.scala 84:24:@55.10]
  wire [7:0] _T_50; // @[rx.scala 84:24:@56.10]
  wire  _T_52; // @[rx.scala 85:32:@58.10]
  wire  _T_54; // @[rx.scala 86:32:@60.10]
  wire  _T_56; // @[rx.scala 87:20:@62.10]
  wire [2:0] _GEN_8; // @[rx.scala 87:31:@63.10]
  wire [7:0] _GEN_9; // @[rx.scala 87:31:@63.10]
  wire  _T_58; // @[Conditional.scala 37:30:@69.10]
  wire  _T_64; // @[rx.scala 96:20:@75.12]
  wire [2:0] _GEN_10; // @[rx.scala 96:30:@76.12]
  wire  _T_65; // @[Conditional.scala 37:30:@81.12]
  wire  _T_71; // @[rx.scala 103:20:@87.14]
  wire [8:0] _T_74; // @[rx.scala 105:26:@90.16]
  wire [7:0] _T_75; // @[rx.scala 105:26:@91.16]
  wire [8:0] _T_77; // @[rx.scala 106:42:@93.16]
  wire [8:0] _T_78; // @[rx.scala 106:42:@94.16]
  wire [7:0] _T_79; // @[rx.scala 106:42:@95.16]
  wire  _T_80; // @[rx.scala 106:30:@96.16]
  wire [2:0] _T_81; // @[rx.scala 106:22:@97.16]
  wire [7:0] _GEN_11; // @[rx.scala 103:30:@88.14]
  wire [7:0] _GEN_12; // @[rx.scala 103:30:@88.14]
  wire [2:0] _GEN_13; // @[rx.scala 103:30:@88.14]
  wire  _T_82; // @[Conditional.scala 37:30:@102.14]
  wire  _T_88; // @[rx.scala 113:20:@108.16]
  wire [2:0] _GEN_14; // @[rx.scala 113:30:@109.16]
  wire  _T_89; // @[Conditional.scala 37:30:@114.16]
  wire  _T_91; // @[rx.scala 120:20:@116.18]
  wire  _T_97; // @[rx.scala 123:20:@124.20]
  wire [2:0] _GEN_15; // @[rx.scala 123:34:@125.20]
  wire [7:0] _GEN_16; // @[rx.scala 120:28:@117.18]
  wire [2:0] _GEN_18; // @[rx.scala 120:28:@117.18]
  wire [7:0] _GEN_19; // @[Conditional.scala 39:67:@115.16]
  wire  _GEN_20; // @[Conditional.scala 39:67:@115.16]
  wire [2:0] _GEN_21; // @[Conditional.scala 39:67:@115.16]
  wire [7:0] _GEN_22; // @[Conditional.scala 39:67:@103.14]
  wire  _GEN_23; // @[Conditional.scala 39:67:@103.14]
  wire [2:0] _GEN_24; // @[Conditional.scala 39:67:@103.14]
  wire [7:0] _GEN_25; // @[Conditional.scala 39:67:@82.12]
  wire  _GEN_26; // @[Conditional.scala 39:67:@82.12]
  wire [7:0] _GEN_27; // @[Conditional.scala 39:67:@82.12]
  wire [2:0] _GEN_28; // @[Conditional.scala 39:67:@82.12]
  wire [7:0] _GEN_29; // @[Conditional.scala 39:67:@70.10]
  wire [2:0] _GEN_31; // @[Conditional.scala 39:67:@70.10]
  wire  _GEN_32; // @[Conditional.scala 39:67:@70.10]
  wire [7:0] _GEN_33; // @[Conditional.scala 39:67:@70.10]
  wire [7:0] _GEN_34; // @[Conditional.scala 39:67:@54.8]
  wire  _GEN_35; // @[Conditional.scala 39:67:@54.8]
  wire  _GEN_36; // @[Conditional.scala 39:67:@54.8]
  wire [2:0] _GEN_37; // @[Conditional.scala 39:67:@54.8]
  wire  _GEN_38; // @[Conditional.scala 39:67:@54.8]
  wire [7:0] _GEN_39; // @[Conditional.scala 39:67:@54.8]
  wire [7:0] _GEN_40; // @[Conditional.scala 39:67:@45.6]
  wire [7:0] _GEN_41; // @[Conditional.scala 39:67:@45.6]
  wire [2:0] _GEN_42; // @[Conditional.scala 39:67:@45.6]
  wire  _GEN_43; // @[Conditional.scala 39:67:@45.6]
  wire  _GEN_44; // @[Conditional.scala 39:67:@45.6]
  wire  _GEN_45; // @[Conditional.scala 39:67:@45.6]
  wire [2:0] _GEN_47; // @[Conditional.scala 40:58:@36.4]
  wire  _GEN_48; // @[Conditional.scala 40:58:@36.4]
  wire [7:0] _GEN_49; // @[Conditional.scala 40:58:@36.4]
  wire [7:0] _GEN_50; // @[Conditional.scala 40:58:@36.4]
  wire  _GEN_51; // @[Conditional.scala 40:58:@36.4]
  wire  _GEN_52; // @[Conditional.scala 40:58:@36.4]
  wire  _GEN_53; // @[Conditional.scala 40:58:@36.4]
  wire  _T_105; // @[Conditional.scala 37:30:@134.4]
  wire [1:0] _GEN_54; // @[rx.scala 140:28:@136.6]
  wire [7:0] _GEN_56; // @[rx.scala 140:28:@136.6]
  wire [7:0] _GEN_57; // @[rx.scala 140:28:@136.6]
  wire  _T_109; // @[Conditional.scala 37:30:@144.6]
  wire [8:0] _T_112; // @[rx.scala 151:28:@148.10]
  wire [7:0] _T_113; // @[rx.scala 151:28:@149.10]
  wire [7:0] _GEN_58; // @[rx.scala 150:28:@147.8]
  wire  _T_115; // @[rx.scala 153:21:@152.8]
  wire [1:0] _GEN_59; // @[rx.scala 153:32:@153.8]
  wire [7:0] _GEN_60; // @[rx.scala 153:32:@153.8]
  wire  _T_117; // @[Conditional.scala 37:30:@159.8]
  wire  _T_123; // @[rx.scala 164:21:@167.10]
  wire [8:0] _T_125; // @[rx.scala 165:32:@169.12]
  wire [7:0] _T_126; // @[rx.scala 165:32:@170.12]
  wire  _T_132; // @[rx.scala 168:25:@176.12]
  wire [1:0] _GEN_62; // @[rx.scala 168:45:@177.12]
  wire [7:0] _GEN_63; // @[rx.scala 164:31:@168.10]
  wire [7:0] _GEN_64; // @[rx.scala 164:31:@168.10]
  wire [1:0] _GEN_65; // @[rx.scala 164:31:@168.10]
  wire  _T_133; // @[Conditional.scala 37:30:@183.10]
  wire [1:0] _GEN_66; // @[rx.scala 176:27:@187.12]
  wire [1:0] _GEN_68; // @[Conditional.scala 39:67:@184.10]
  wire [7:0] _GEN_70; // @[Conditional.scala 39:67:@160.8]
  wire [7:0] _GEN_71; // @[Conditional.scala 39:67:@160.8]
  wire [1:0] _GEN_72; // @[Conditional.scala 39:67:@160.8]
  wire  _GEN_73; // @[Conditional.scala 39:67:@160.8]
  wire [7:0] _GEN_75; // @[Conditional.scala 39:67:@145.6]
  wire [1:0] _GEN_76; // @[Conditional.scala 39:67:@145.6]
  wire  _GEN_77; // @[Conditional.scala 39:67:@145.6]
  wire [7:0] _GEN_78; // @[Conditional.scala 39:67:@145.6]
  wire  _GEN_79; // @[Conditional.scala 39:67:@145.6]
  wire [1:0] _GEN_80; // @[Conditional.scala 40:58:@135.4]
  wire  _GEN_81; // @[Conditional.scala 40:58:@135.4]
  wire [7:0] _GEN_82; // @[Conditional.scala 40:58:@135.4]
  wire [7:0] _GEN_83; // @[Conditional.scala 40:58:@135.4]
  wire  _GEN_84; // @[Conditional.scala 40:58:@135.4]
  wire  _GEN_85; // @[Conditional.scala 40:58:@135.4]
  assign _T_24 = io_cmd_ready & io_cmd_valid; // @[Decoupled.scala 30:37:@9.4]
  assign _GEN_1 = _T_24 ? io_cmd_bits_mode : mode; // @[Reg.scala 12:19:@16.4]
  assign _GEN_2 = _T_24 ? io_cmd_bits_length : pktlen; // @[Reg.scala 12:19:@21.4]
  assign _T_41 = 3'h0 == st_wr; // @[Conditional.scala 37:30:@35.4]
  assign _GEN_3 = io_cmd_valid ? 3'h1 : st_wr; // @[rx.scala 69:27:@38.6]
  assign _T_44 = 3'h1 == st_wr; // @[Conditional.scala 37:30:@44.6]
  assign _GEN_5 = io_start ? 8'h0 : dincnt; // @[rx.scala 76:23:@46.8]
  assign _GEN_6 = io_start ? 8'h0 : pktcnt; // @[rx.scala 76:23:@46.8]
  assign _GEN_7 = io_start ? 3'h2 : st_wr; // @[rx.scala 76:23:@46.8]
  assign _T_47 = 3'h2 == st_wr; // @[Conditional.scala 37:30:@53.8]
  assign _T_49 = dincnt + 8'h1; // @[rx.scala 84:24:@55.10]
  assign _T_50 = _T_49[7:0]; // @[rx.scala 84:24:@56.10]
  assign _T_52 = dincnt == 8'h1f; // @[rx.scala 85:32:@58.10]
  assign _T_54 = dincnt >= 8'h20; // @[rx.scala 86:32:@60.10]
  assign _T_56 = dincnt == 8'h9f; // @[rx.scala 87:20:@62.10]
  assign _GEN_8 = _T_56 ? 3'h3 : st_wr; // @[rx.scala 87:31:@63.10]
  assign _GEN_9 = _T_56 ? 8'h0 : _T_50; // @[rx.scala 87:31:@63.10]
  assign _T_58 = 3'h3 == st_wr; // @[Conditional.scala 37:30:@69.10]
  assign _T_64 = dincnt == 8'hf; // @[rx.scala 96:20:@75.12]
  assign _GEN_10 = _T_64 ? 3'h4 : st_wr; // @[rx.scala 96:30:@76.12]
  assign _T_65 = 3'h4 == st_wr; // @[Conditional.scala 37:30:@81.12]
  assign _T_71 = dincnt == 8'h4f; // @[rx.scala 103:20:@87.14]
  assign _T_74 = pktcnt + 8'h1; // @[rx.scala 105:26:@90.16]
  assign _T_75 = _T_74[7:0]; // @[rx.scala 105:26:@91.16]
  assign _T_77 = pktlen - 8'h1; // @[rx.scala 106:42:@93.16]
  assign _T_78 = $unsigned(_T_77); // @[rx.scala 106:42:@94.16]
  assign _T_79 = _T_78[7:0]; // @[rx.scala 106:42:@95.16]
  assign _T_80 = pktcnt == _T_79; // @[rx.scala 106:30:@96.16]
  assign _T_81 = _T_80 ? 3'h5 : 3'h3; // @[rx.scala 106:22:@97.16]
  assign _GEN_11 = _T_71 ? 8'h0 : _T_50; // @[rx.scala 103:30:@88.14]
  assign _GEN_12 = _T_71 ? _T_75 : pktcnt; // @[rx.scala 103:30:@88.14]
  assign _GEN_13 = _T_71 ? _T_81 : st_wr; // @[rx.scala 103:30:@88.14]
  assign _T_82 = 3'h5 == st_wr; // @[Conditional.scala 37:30:@102.14]
  assign _T_88 = dincnt == 8'h37; // @[rx.scala 113:20:@108.16]
  assign _GEN_14 = _T_88 ? 3'h6 : st_wr; // @[rx.scala 113:30:@109.16]
  assign _T_89 = 3'h6 == st_wr; // @[Conditional.scala 37:30:@114.16]
  assign _T_91 = dincnt < 8'h40; // @[rx.scala 120:20:@116.18]
  assign _T_97 = io_dec_busy == 1'h0; // @[rx.scala 123:20:@124.20]
  assign _GEN_15 = _T_97 ? 3'h0 : st_wr; // @[rx.scala 123:34:@125.20]
  assign _GEN_16 = _T_91 ? _T_50 : dincnt; // @[rx.scala 120:28:@117.18]
  assign _GEN_18 = _T_91 ? st_wr : _GEN_15; // @[rx.scala 120:28:@117.18]
  assign _GEN_19 = _T_89 ? _GEN_16 : dincnt; // @[Conditional.scala 39:67:@115.16]
  assign _GEN_20 = _T_89 ? _T_91 : 1'h0; // @[Conditional.scala 39:67:@115.16]
  assign _GEN_21 = _T_89 ? _GEN_18 : st_wr; // @[Conditional.scala 39:67:@115.16]
  assign _GEN_22 = _T_82 ? _T_50 : _GEN_19; // @[Conditional.scala 39:67:@103.14]
  assign _GEN_23 = _T_82 ? 1'h1 : _GEN_20; // @[Conditional.scala 39:67:@103.14]
  assign _GEN_24 = _T_82 ? _GEN_14 : _GEN_21; // @[Conditional.scala 39:67:@103.14]
  assign _GEN_25 = _T_65 ? _GEN_11 : _GEN_22; // @[Conditional.scala 39:67:@82.12]
  assign _GEN_26 = _T_65 ? 1'h1 : _GEN_23; // @[Conditional.scala 39:67:@82.12]
  assign _GEN_27 = _T_65 ? _GEN_12 : pktcnt; // @[Conditional.scala 39:67:@82.12]
  assign _GEN_28 = _T_65 ? _GEN_13 : _GEN_24; // @[Conditional.scala 39:67:@82.12]
  assign _GEN_29 = _T_58 ? _T_50 : _GEN_25; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_31 = _T_58 ? _GEN_10 : _GEN_28; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_32 = _T_58 ? 1'h0 : _GEN_26; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_33 = _T_58 ? pktcnt : _GEN_27; // @[Conditional.scala 39:67:@70.10]
  assign _GEN_34 = _T_47 ? _GEN_9 : _GEN_29; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_35 = _T_47 ? _T_52 : 1'h0; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_36 = _T_47 ? _T_54 : _GEN_32; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_37 = _T_47 ? _GEN_8 : _GEN_31; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_38 = _T_47 ? 1'h0 : _T_58; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_39 = _T_47 ? pktcnt : _GEN_33; // @[Conditional.scala 39:67:@54.8]
  assign _GEN_40 = _T_44 ? _GEN_5 : _GEN_34; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_41 = _T_44 ? _GEN_6 : _GEN_39; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_42 = _T_44 ? _GEN_7 : _GEN_37; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_43 = _T_44 ? 1'h0 : _GEN_35; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_44 = _T_44 ? 1'h0 : _GEN_36; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_45 = _T_44 ? 1'h0 : _GEN_38; // @[Conditional.scala 39:67:@45.6]
  assign _GEN_47 = _T_41 ? _GEN_3 : _GEN_42; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_48 = _T_41 ? io_cmd_valid : 1'h0; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_49 = _T_41 ? dincnt : _GEN_40; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_50 = _T_41 ? pktcnt : _GEN_41; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_51 = _T_41 ? 1'h0 : _GEN_43; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_52 = _T_41 ? 1'h0 : _GEN_44; // @[Conditional.scala 40:58:@36.4]
  assign _GEN_53 = _T_41 ? 1'h0 : _GEN_45; // @[Conditional.scala 40:58:@36.4]
  assign _T_105 = 2'h0 == st_rd; // @[Conditional.scala 37:30:@134.4]
  assign _GEN_54 = io_fft_dout_v ? 2'h1 : st_rd; // @[rx.scala 140:28:@136.6]
  assign _GEN_56 = io_fft_dout_v ? 8'h1 : doutcnt; // @[rx.scala 140:28:@136.6]
  assign _GEN_57 = io_fft_dout_v ? 8'h0 : doutcnt_s; // @[rx.scala 140:28:@136.6]
  assign _T_109 = 2'h1 == st_rd; // @[Conditional.scala 37:30:@144.6]
  assign _T_112 = doutcnt + 8'h1; // @[rx.scala 151:28:@148.10]
  assign _T_113 = _T_112[7:0]; // @[rx.scala 151:28:@149.10]
  assign _GEN_58 = io_fft_dout_v ? _T_113 : doutcnt; // @[rx.scala 150:28:@147.8]
  assign _T_115 = doutcnt == 8'h7f; // @[rx.scala 153:21:@152.8]
  assign _GEN_59 = _T_115 ? 2'h2 : st_rd; // @[rx.scala 153:32:@153.8]
  assign _GEN_60 = _T_115 ? 8'h0 : _GEN_58; // @[rx.scala 153:32:@153.8]
  assign _T_117 = 2'h2 == st_rd; // @[Conditional.scala 37:30:@159.8]
  assign _T_123 = doutcnt == 8'h3f; // @[rx.scala 164:21:@167.10]
  assign _T_125 = doutcnt_s + 8'h1; // @[rx.scala 165:32:@169.12]
  assign _T_126 = _T_125[7:0]; // @[rx.scala 165:32:@170.12]
  assign _T_132 = doutcnt_s == _T_79; // @[rx.scala 168:25:@176.12]
  assign _GEN_62 = _T_132 ? 2'h3 : st_rd; // @[rx.scala 168:45:@177.12]
  assign _GEN_63 = _T_123 ? _T_126 : doutcnt_s; // @[rx.scala 164:31:@168.10]
  assign _GEN_64 = _T_123 ? 8'h0 : _GEN_58; // @[rx.scala 164:31:@168.10]
  assign _GEN_65 = _T_123 ? _GEN_62 : st_rd; // @[rx.scala 164:31:@168.10]
  assign _T_133 = 2'h3 == st_rd; // @[Conditional.scala 37:30:@183.10]
  assign _GEN_66 = _T_97 ? 2'h0 : st_rd; // @[rx.scala 176:27:@187.12]
  assign _GEN_68 = _T_133 ? _GEN_66 : st_rd; // @[Conditional.scala 39:67:@184.10]
  assign _GEN_70 = _T_117 ? _GEN_64 : doutcnt; // @[Conditional.scala 39:67:@160.8]
  assign _GEN_71 = _T_117 ? _GEN_63 : doutcnt_s; // @[Conditional.scala 39:67:@160.8]
  assign _GEN_72 = _T_117 ? _GEN_65 : _GEN_68; // @[Conditional.scala 39:67:@160.8]
  assign _GEN_73 = _T_117 ? 1'h0 : _T_133; // @[Conditional.scala 39:67:@160.8]
  assign _GEN_75 = _T_109 ? _GEN_60 : _GEN_70; // @[Conditional.scala 39:67:@145.6]
  assign _GEN_76 = _T_109 ? _GEN_59 : _GEN_72; // @[Conditional.scala 39:67:@145.6]
  assign _GEN_77 = _T_109 ? 1'h0 : _T_117; // @[Conditional.scala 39:67:@145.6]
  assign _GEN_78 = _T_109 ? doutcnt_s : _GEN_71; // @[Conditional.scala 39:67:@145.6]
  assign _GEN_79 = _T_109 ? 1'h0 : _GEN_73; // @[Conditional.scala 39:67:@145.6]
  assign _GEN_80 = _T_105 ? _GEN_54 : _GEN_76; // @[Conditional.scala 40:58:@135.4]
  assign _GEN_81 = _T_105 ? io_fft_dout_v : _T_109; // @[Conditional.scala 40:58:@135.4]
  assign _GEN_82 = _T_105 ? _GEN_56 : _GEN_75; // @[Conditional.scala 40:58:@135.4]
  assign _GEN_83 = _T_105 ? _GEN_57 : _GEN_78; // @[Conditional.scala 40:58:@135.4]
  assign _GEN_84 = _T_105 ? 1'h0 : _GEN_77; // @[Conditional.scala 40:58:@135.4]
  assign _GEN_85 = _T_105 ? 1'h0 : _GEN_79; // @[Conditional.scala 40:58:@135.4]
  assign io_cmd_ready = _T_41;
  assign io_fft_enable = _GEN_52;
  assign io_fft_init = _GEN_51;
  assign io_fft_stall = _GEN_53;
  assign io_dec_last = _GEN_85;
  assign io_rx_init = _GEN_48;
  assign io_mode = mode;
  assign io_ctf_wr = _GEN_81;
  assign io_demap_en = _GEN_84;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  st_wr = _RAND_0[2:0];
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
  dincnt = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  st_rd = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  doutcnt = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  doutcnt_s = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      st_wr <= 3'h0;
    end else begin
      if (_T_41) begin
        if (io_cmd_valid) begin
          st_wr <= 3'h1;
        end
      end else begin
        if (_T_44) begin
          if (io_start) begin
            st_wr <= 3'h2;
          end
        end else begin
          if (_T_47) begin
            if (_T_56) begin
              st_wr <= 3'h3;
            end
          end else begin
            if (_T_58) begin
              if (_T_64) begin
                st_wr <= 3'h4;
              end
            end else begin
              if (_T_65) begin
                if (_T_71) begin
                  if (_T_80) begin
                    st_wr <= 3'h5;
                  end else begin
                    st_wr <= 3'h3;
                  end
                end
              end else begin
                if (_T_82) begin
                  if (_T_88) begin
                    st_wr <= 3'h6;
                  end
                end else begin
                  if (_T_89) begin
                    if (!(_T_91)) begin
                      if (_T_97) begin
                        st_wr <= 3'h0;
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
    if (_T_24) begin
      mode <= io_cmd_bits_mode;
    end
    if (_T_24) begin
      pktlen <= io_cmd_bits_length;
    end
    if (reset) begin
      pktcnt <= 8'h0;
    end else begin
      if (!(_T_41)) begin
        if (_T_44) begin
          if (io_start) begin
            pktcnt <= 8'h0;
          end
        end else begin
          if (!(_T_47)) begin
            if (!(_T_58)) begin
              if (_T_65) begin
                if (_T_71) begin
                  pktcnt <= _T_75;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      dincnt <= 8'h0;
    end else begin
      if (!(_T_41)) begin
        if (_T_44) begin
          if (io_start) begin
            dincnt <= 8'h0;
          end
        end else begin
          if (_T_47) begin
            if (_T_56) begin
              dincnt <= 8'h0;
            end else begin
              dincnt <= _T_50;
            end
          end else begin
            if (_T_58) begin
              dincnt <= _T_50;
            end else begin
              if (_T_65) begin
                if (_T_71) begin
                  dincnt <= 8'h0;
                end else begin
                  dincnt <= _T_50;
                end
              end else begin
                if (_T_82) begin
                  dincnt <= _T_50;
                end else begin
                  if (_T_89) begin
                    if (_T_91) begin
                      dincnt <= _T_50;
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
      st_rd <= 2'h0;
    end else begin
      if (_T_105) begin
        if (io_fft_dout_v) begin
          st_rd <= 2'h1;
        end
      end else begin
        if (_T_109) begin
          if (_T_115) begin
            st_rd <= 2'h2;
          end
        end else begin
          if (_T_117) begin
            if (_T_123) begin
              if (_T_132) begin
                st_rd <= 2'h3;
              end
            end
          end else begin
            if (_T_133) begin
              if (_T_97) begin
                st_rd <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      doutcnt <= 8'h0;
    end else begin
      if (_T_105) begin
        if (io_fft_dout_v) begin
          doutcnt <= 8'h1;
        end
      end else begin
        if (_T_109) begin
          if (_T_115) begin
            doutcnt <= 8'h0;
          end else begin
            if (io_fft_dout_v) begin
              doutcnt <= _T_113;
            end
          end
        end else begin
          if (_T_117) begin
            if (_T_123) begin
              doutcnt <= 8'h0;
            end else begin
              if (io_fft_dout_v) begin
                doutcnt <= _T_113;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      doutcnt_s <= 8'h0;
    end else begin
      if (_T_105) begin
        if (io_fft_dout_v) begin
          doutcnt_s <= 8'h0;
        end
      end else begin
        if (!(_T_109)) begin
          if (_T_117) begin
            if (_T_123) begin
              doutcnt_s <= _T_126;
            end
          end
        end
      end
    end
  end
endmodule
module Demapper( // @[:@192.2]
  input         clock, // @[:@193.4]
  input         reset, // @[:@194.4]
  input  [1:0]  io_mode, // @[:@195.4]
  input         io_din_valid, // @[:@195.4]
  input  [11:0] io_din_bits_real, // @[:@195.4]
  output        io_dout_valid, // @[:@195.4]
  output [2:0]  io_dout_bits_0 // @[:@195.4]
);
  reg [5:0] value; // @[Counter.scala 26:33:@197.4]
  reg [31:0] _RAND_0;
  reg  _T_147; // @[demapper.scala 64:27:@268.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_165_0; // @[demapper.scala 65:27:@271.4]
  reg [31:0] _RAND_2;
  wire [6:0] _T_47; // @[Counter.scala 35:22:@200.6]
  wire [5:0] _T_48; // @[Counter.scala 35:22:@201.6]
  wire [5:0] _GEN_0; // @[Counter.scala 63:17:@198.4]
  wire  _T_52; // @[FixedPointTypeClass.scala 177:36:@206.4]
  wire [2:0] bpsk_res_0; // @[demapper.scala 41:21:@222.4]
  wire  _T_94; // @[demapper.scala 63:26:@234.4]
  wire [2:0] data_0; // @[demapper.scala 63:17:@235.4]
  wire [3:0] _T_108; // @[Bitwise.scala 109:18:@237.4]
  wire [1:0] _T_109; // @[Bitwise.scala 109:18:@238.4]
  wire  _T_110; // @[Bitwise.scala 109:18:@239.4]
  wire  _T_111; // @[Bitwise.scala 109:44:@240.4]
  wire [1:0] _T_112; // @[Cat.scala 30:58:@241.4]
  wire [1:0] _T_113; // @[Bitwise.scala 109:44:@242.4]
  wire  _T_114; // @[Bitwise.scala 109:18:@243.4]
  wire  _T_115; // @[Bitwise.scala 109:44:@244.4]
  wire [1:0] _T_116; // @[Cat.scala 30:58:@245.4]
  wire [3:0] _T_117; // @[Cat.scala 30:58:@246.4]
  wire [1:0] _T_118; // @[Bitwise.scala 109:44:@247.4]
  wire  _T_119; // @[Bitwise.scala 109:18:@248.4]
  wire  _T_120; // @[Bitwise.scala 109:44:@249.4]
  wire [1:0] _T_121; // @[Cat.scala 30:58:@250.4]
  wire [5:0] _T_122; // @[Cat.scala 30:58:@251.4]
  wire  _T_124; // @[demapper.scala 55:22:@252.4]
  wire  _T_126; // @[demapper.scala 55:39:@253.4]
  wire  _T_127; // @[demapper.scala 55:31:@254.4]
  wire  _T_129; // @[demapper.scala 55:57:@255.4]
  wire  _T_130; // @[demapper.scala 55:49:@256.4]
  wire  _T_132; // @[demapper.scala 55:75:@257.4]
  wire  _T_133; // @[demapper.scala 55:67:@258.4]
  wire  _T_135; // @[demapper.scala 56:19:@259.4]
  wire  _T_137; // @[demapper.scala 56:37:@260.4]
  wire  _T_139; // @[demapper.scala 56:54:@261.4]
  wire  _T_140; // @[demapper.scala 56:46:@262.4]
  wire  _T_141; // @[demapper.scala 56:28:@263.4]
  wire  _T_142; // @[demapper.scala 57:20:@264.4]
  wire  _T_144; // @[demapper.scala 57:12:@265.4]
  wire  _T_145; // @[demapper.scala 64:41:@267.4]
  assign _T_47 = value + 6'h1; // @[Counter.scala 35:22:@200.6]
  assign _T_48 = _T_47[5:0]; // @[Counter.scala 35:22:@201.6]
  assign _GEN_0 = io_din_valid ? _T_48 : value; // @[Counter.scala 63:17:@198.4]
  assign _T_52 = $signed(io_din_bits_real) < $signed(12'sh0); // @[FixedPointTypeClass.scala 177:36:@206.4]
  assign bpsk_res_0 = _T_52 ? $signed(3'sh1) : $signed(-3'sh1); // @[demapper.scala 41:21:@222.4]
  assign _T_94 = io_mode == 2'h1; // @[demapper.scala 63:26:@234.4]
  assign data_0 = _T_94 ? $signed(bpsk_res_0) : $signed(bpsk_res_0); // @[demapper.scala 63:17:@235.4]
  assign _T_108 = value[3:0]; // @[Bitwise.scala 109:18:@237.4]
  assign _T_109 = _T_108[1:0]; // @[Bitwise.scala 109:18:@238.4]
  assign _T_110 = _T_109[0]; // @[Bitwise.scala 109:18:@239.4]
  assign _T_111 = _T_109[1]; // @[Bitwise.scala 109:44:@240.4]
  assign _T_112 = {_T_110,_T_111}; // @[Cat.scala 30:58:@241.4]
  assign _T_113 = _T_108[3:2]; // @[Bitwise.scala 109:44:@242.4]
  assign _T_114 = _T_113[0]; // @[Bitwise.scala 109:18:@243.4]
  assign _T_115 = _T_113[1]; // @[Bitwise.scala 109:44:@244.4]
  assign _T_116 = {_T_114,_T_115}; // @[Cat.scala 30:58:@245.4]
  assign _T_117 = {_T_112,_T_116}; // @[Cat.scala 30:58:@246.4]
  assign _T_118 = value[5:4]; // @[Bitwise.scala 109:44:@247.4]
  assign _T_119 = _T_118[0]; // @[Bitwise.scala 109:18:@248.4]
  assign _T_120 = _T_118[1]; // @[Bitwise.scala 109:44:@249.4]
  assign _T_121 = {_T_119,_T_120}; // @[Cat.scala 30:58:@250.4]
  assign _T_122 = {_T_117,_T_121}; // @[Cat.scala 30:58:@251.4]
  assign _T_124 = _T_122 == 6'h7; // @[demapper.scala 55:22:@252.4]
  assign _T_126 = _T_122 == 6'h15; // @[demapper.scala 55:39:@253.4]
  assign _T_127 = _T_124 | _T_126; // @[demapper.scala 55:31:@254.4]
  assign _T_129 = _T_122 == 6'h2b; // @[demapper.scala 55:57:@255.4]
  assign _T_130 = _T_127 | _T_129; // @[demapper.scala 55:49:@256.4]
  assign _T_132 = _T_122 == 6'h39; // @[demapper.scala 55:75:@257.4]
  assign _T_133 = _T_130 | _T_132; // @[demapper.scala 55:67:@258.4]
  assign _T_135 = _T_122 == 6'h0; // @[demapper.scala 56:19:@259.4]
  assign _T_137 = _T_122 >= 6'h1b; // @[demapper.scala 56:37:@260.4]
  assign _T_139 = _T_122 <= 6'h25; // @[demapper.scala 56:54:@261.4]
  assign _T_140 = _T_137 & _T_139; // @[demapper.scala 56:46:@262.4]
  assign _T_141 = _T_135 | _T_140; // @[demapper.scala 56:28:@263.4]
  assign _T_142 = _T_133 | _T_141; // @[demapper.scala 57:20:@264.4]
  assign _T_144 = _T_142 == 1'h0; // @[demapper.scala 57:12:@265.4]
  assign _T_145 = io_din_valid & _T_144; // @[demapper.scala 64:41:@267.4]
  assign io_dout_valid = _T_147;
  assign io_dout_bits_0 = _T_165_0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  value = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_147 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_165_0 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 6'h0;
    end else begin
      if (io_din_valid) begin
        value <= _T_48;
      end
    end
    _T_147 <= _T_145;
    if (_T_94) begin
      if (_T_52) begin
        _T_165_0 <= 3'sh1;
      end else begin
        _T_165_0 <= -3'sh1;
      end
    end else begin
      if (_T_52) begin
        _T_165_0 <= 3'sh1;
      end else begin
        _T_165_0 <= -3'sh1;
      end
    end
  end
endmodule
module Deinterleaver( // @[:@281.2]
  input        clock, // @[:@282.4]
  input        reset, // @[:@283.4]
  input        io_din_valid, // @[:@284.4]
  input  [2:0] io_din_bits_0, // @[:@284.4]
  output       io_dout_valid, // @[:@284.4]
  output [2:0] io_dout_bits_0, // @[:@284.4]
  output [2:0] io_dout_bits_1 // @[:@284.4]
);
  reg [2:0] mem [0:127]; // @[deint.scala 26:27:@384.4]
  reg [31:0] _RAND_0;
  wire [2:0] mem_mem_dout0_data; // @[deint.scala 26:27:@384.4]
  wire [6:0] mem_mem_dout0_addr; // @[deint.scala 26:27:@384.4]
  wire [2:0] mem_mem_dout1_data; // @[deint.scala 26:27:@384.4]
  wire [6:0] mem_mem_dout1_addr; // @[deint.scala 26:27:@384.4]
  wire [2:0] mem__T_262_data; // @[deint.scala 26:27:@384.4]
  wire [6:0] mem__T_262_addr; // @[deint.scala 26:27:@384.4]
  wire  mem__T_262_mask; // @[deint.scala 26:27:@384.4]
  wire  mem__T_262_en; // @[deint.scala 26:27:@384.4]
  wire  _GEN_156;
  reg [6:0] mem_mem_dout0_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [6:0] mem_mem_dout1_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg  doread; // @[deint.scala 27:23:@385.4]
  reg [31:0] _RAND_3;
  reg  wrsel; // @[deint.scala 28:23:@386.4]
  reg [31:0] _RAND_4;
  reg  rdsel; // @[deint.scala 29:23:@387.4]
  reg [31:0] _RAND_5;
  reg [5:0] value; // @[Counter.scala 26:33:@388.4]
  reg [31:0] _RAND_6;
  reg [4:0] value_1; // @[Counter.scala 26:33:@399.4]
  reg [31:0] _RAND_7;
  reg  rdswap; // @[deint.scala 38:23:@420.4]
  reg [31:0] _RAND_8;
  reg  _T_270; // @[deint.scala 61:27:@442.4]
  reg [31:0] _RAND_9;
  wire  _T_237; // @[Counter.scala 34:24:@390.6]
  wire [6:0] _T_239; // @[Counter.scala 35:22:@391.6]
  wire [5:0] _T_240; // @[Counter.scala 35:22:@392.6]
  wire [5:0] _GEN_3; // @[Counter.scala 37:21:@394.6]
  wire [5:0] _GEN_4; // @[Counter.scala 63:17:@389.4]
  wire  wrlast; // @[Counter.scala 64:20:@398.4]
  wire  _T_245; // @[Counter.scala 34:24:@401.6]
  wire [5:0] _T_247; // @[Counter.scala 35:22:@402.6]
  wire [4:0] _T_248; // @[Counter.scala 35:22:@403.6]
  wire [4:0] _GEN_5; // @[Counter.scala 37:21:@405.6]
  wire [4:0] _GEN_6; // @[Counter.scala 63:17:@400.4]
  wire  rdlast; // @[Counter.scala 64:20:@409.4]
  wire [5:0] _T_251; // @[deint.scala 32:20:@410.4]
  wire [5:0] _T_252; // @[deint.scala 32:20:@411.4]
  wire [4:0] rdcnt; // @[deint.scala 32:20:@412.4]
  wire [5:0] _GEN_164; // @[deint.scala 33:40:@413.4]
  wire [5:0] _T_253; // @[deint.scala 33:40:@413.4]
  wire [6:0] _T_257; // @[deint.scala 34:45:@415.4]
  wire [5:0] _T_258; // @[deint.scala 34:45:@416.4]
  wire [5:0] _GEN_7; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_8; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_9; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_10; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_11; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_12; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_13; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_14; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_15; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_16; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_17; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_18; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_19; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_20; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_21; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_22; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_23; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_24; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_25; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_26; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_27; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_28; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_29; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_30; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_31; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_32; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_33; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_34; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_35; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_36; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_37; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_38; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_39; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_40; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_41; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_42; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_43; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_44; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_45; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_46; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_47; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_48; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_49; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_50; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_51; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_52; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_53; // @[Cat.scala 30:58:@417.4]
  wire [6:0] rdaddr0; // @[Cat.scala 30:58:@417.4]
  wire [5:0] _GEN_54; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_55; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_56; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_57; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_58; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_59; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_60; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_61; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_62; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_63; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_64; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_65; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_66; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_67; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_68; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_69; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_70; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_71; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_72; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_73; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_74; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_75; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_76; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_77; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_78; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_79; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_80; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_81; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_82; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_83; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_84; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_85; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_86; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_87; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_88; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_89; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_90; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_91; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_92; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_93; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_94; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_95; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_96; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_97; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_98; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_99; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_100; // @[Cat.scala 30:58:@418.4]
  wire [6:0] rdaddr1; // @[Cat.scala 30:58:@418.4]
  wire [5:0] _GEN_101; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_102; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_103; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_104; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_105; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_106; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_107; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_108; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_109; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_110; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_111; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_112; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_113; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_114; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_115; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_116; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_117; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_118; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_119; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_120; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_121; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_122; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_123; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_124; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_125; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_126; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_127; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_128; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_129; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_130; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_131; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_132; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_133; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_134; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_135; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_136; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_137; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_138; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_139; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_140; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_141; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_142; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_143; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_144; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_145; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_146; // @[Cat.scala 30:58:@419.4]
  wire [5:0] _GEN_147; // @[Cat.scala 30:58:@419.4]
  wire [6:0] wraddr; // @[Cat.scala 30:58:@419.4]
  wire  _T_264; // @[deint.scala 47:15:@429.6]
  wire  _GEN_152; // @[deint.scala 46:17:@428.4]
  wire  _GEN_153; // @[deint.scala 50:17:@432.4]
  wire  _T_268; // @[deint.scala 56:15:@437.6]
  wire  _GEN_154; // @[deint.scala 54:17:@435.4]
  wire  _GEN_155; // @[deint.scala 54:17:@435.4]
  assign mem_mem_dout0_addr = mem_mem_dout0_addr_pipe_0;
  assign mem_mem_dout0_data = mem[mem_mem_dout0_addr]; // @[deint.scala 26:27:@384.4]
  assign mem_mem_dout1_addr = mem_mem_dout1_addr_pipe_0;
  assign mem_mem_dout1_data = mem[mem_mem_dout1_addr]; // @[deint.scala 26:27:@384.4]
  assign mem__T_262_data = io_din_bits_0;
  assign mem__T_262_addr = wraddr;
  assign mem__T_262_mask = io_din_valid;
  assign mem__T_262_en = io_din_valid;
  assign _GEN_156 = 1'h1;
  assign _T_237 = value == 6'h2f; // @[Counter.scala 34:24:@390.6]
  assign _T_239 = value + 6'h1; // @[Counter.scala 35:22:@391.6]
  assign _T_240 = _T_239[5:0]; // @[Counter.scala 35:22:@392.6]
  assign _GEN_3 = _T_237 ? 6'h0 : _T_240; // @[Counter.scala 37:21:@394.6]
  assign _GEN_4 = io_din_valid ? _GEN_3 : value; // @[Counter.scala 63:17:@389.4]
  assign wrlast = io_din_valid & _T_237; // @[Counter.scala 64:20:@398.4]
  assign _T_245 = value_1 == 5'h17; // @[Counter.scala 34:24:@401.6]
  assign _T_247 = value_1 + 5'h1; // @[Counter.scala 35:22:@402.6]
  assign _T_248 = _T_247[4:0]; // @[Counter.scala 35:22:@403.6]
  assign _GEN_5 = _T_245 ? 5'h0 : _T_248; // @[Counter.scala 37:21:@405.6]
  assign _GEN_6 = doread ? _GEN_5 : value_1; // @[Counter.scala 63:17:@400.4]
  assign rdlast = doread & _T_245; // @[Counter.scala 64:20:@409.4]
  assign _T_251 = 5'h17 - value_1; // @[deint.scala 32:20:@410.4]
  assign _T_252 = $unsigned(_T_251); // @[deint.scala 32:20:@411.4]
  assign rdcnt = _T_252[4:0]; // @[deint.scala 32:20:@412.4]
  assign _GEN_164 = {{1'd0}, rdcnt}; // @[deint.scala 33:40:@413.4]
  assign _T_253 = _GEN_164 << 1; // @[deint.scala 33:40:@413.4]
  assign _T_257 = _T_253 + 6'h1; // @[deint.scala 34:45:@415.4]
  assign _T_258 = _T_257[5:0]; // @[deint.scala 34:45:@416.4]
  assign _GEN_7 = 6'h1 == _T_253 ? 6'h3 : 6'h0; // @[Cat.scala 30:58:@417.4]
  assign _GEN_8 = 6'h2 == _T_253 ? 6'h6 : _GEN_7; // @[Cat.scala 30:58:@417.4]
  assign _GEN_9 = 6'h3 == _T_253 ? 6'h9 : _GEN_8; // @[Cat.scala 30:58:@417.4]
  assign _GEN_10 = 6'h4 == _T_253 ? 6'hc : _GEN_9; // @[Cat.scala 30:58:@417.4]
  assign _GEN_11 = 6'h5 == _T_253 ? 6'hf : _GEN_10; // @[Cat.scala 30:58:@417.4]
  assign _GEN_12 = 6'h6 == _T_253 ? 6'h12 : _GEN_11; // @[Cat.scala 30:58:@417.4]
  assign _GEN_13 = 6'h7 == _T_253 ? 6'h15 : _GEN_12; // @[Cat.scala 30:58:@417.4]
  assign _GEN_14 = 6'h8 == _T_253 ? 6'h18 : _GEN_13; // @[Cat.scala 30:58:@417.4]
  assign _GEN_15 = 6'h9 == _T_253 ? 6'h1b : _GEN_14; // @[Cat.scala 30:58:@417.4]
  assign _GEN_16 = 6'ha == _T_253 ? 6'h1e : _GEN_15; // @[Cat.scala 30:58:@417.4]
  assign _GEN_17 = 6'hb == _T_253 ? 6'h21 : _GEN_16; // @[Cat.scala 30:58:@417.4]
  assign _GEN_18 = 6'hc == _T_253 ? 6'h24 : _GEN_17; // @[Cat.scala 30:58:@417.4]
  assign _GEN_19 = 6'hd == _T_253 ? 6'h27 : _GEN_18; // @[Cat.scala 30:58:@417.4]
  assign _GEN_20 = 6'he == _T_253 ? 6'h2a : _GEN_19; // @[Cat.scala 30:58:@417.4]
  assign _GEN_21 = 6'hf == _T_253 ? 6'h2d : _GEN_20; // @[Cat.scala 30:58:@417.4]
  assign _GEN_22 = 6'h10 == _T_253 ? 6'h1 : _GEN_21; // @[Cat.scala 30:58:@417.4]
  assign _GEN_23 = 6'h11 == _T_253 ? 6'h4 : _GEN_22; // @[Cat.scala 30:58:@417.4]
  assign _GEN_24 = 6'h12 == _T_253 ? 6'h7 : _GEN_23; // @[Cat.scala 30:58:@417.4]
  assign _GEN_25 = 6'h13 == _T_253 ? 6'ha : _GEN_24; // @[Cat.scala 30:58:@417.4]
  assign _GEN_26 = 6'h14 == _T_253 ? 6'hd : _GEN_25; // @[Cat.scala 30:58:@417.4]
  assign _GEN_27 = 6'h15 == _T_253 ? 6'h10 : _GEN_26; // @[Cat.scala 30:58:@417.4]
  assign _GEN_28 = 6'h16 == _T_253 ? 6'h13 : _GEN_27; // @[Cat.scala 30:58:@417.4]
  assign _GEN_29 = 6'h17 == _T_253 ? 6'h16 : _GEN_28; // @[Cat.scala 30:58:@417.4]
  assign _GEN_30 = 6'h18 == _T_253 ? 6'h19 : _GEN_29; // @[Cat.scala 30:58:@417.4]
  assign _GEN_31 = 6'h19 == _T_253 ? 6'h1c : _GEN_30; // @[Cat.scala 30:58:@417.4]
  assign _GEN_32 = 6'h1a == _T_253 ? 6'h1f : _GEN_31; // @[Cat.scala 30:58:@417.4]
  assign _GEN_33 = 6'h1b == _T_253 ? 6'h22 : _GEN_32; // @[Cat.scala 30:58:@417.4]
  assign _GEN_34 = 6'h1c == _T_253 ? 6'h25 : _GEN_33; // @[Cat.scala 30:58:@417.4]
  assign _GEN_35 = 6'h1d == _T_253 ? 6'h28 : _GEN_34; // @[Cat.scala 30:58:@417.4]
  assign _GEN_36 = 6'h1e == _T_253 ? 6'h2b : _GEN_35; // @[Cat.scala 30:58:@417.4]
  assign _GEN_37 = 6'h1f == _T_253 ? 6'h2e : _GEN_36; // @[Cat.scala 30:58:@417.4]
  assign _GEN_38 = 6'h20 == _T_253 ? 6'h2 : _GEN_37; // @[Cat.scala 30:58:@417.4]
  assign _GEN_39 = 6'h21 == _T_253 ? 6'h5 : _GEN_38; // @[Cat.scala 30:58:@417.4]
  assign _GEN_40 = 6'h22 == _T_253 ? 6'h8 : _GEN_39; // @[Cat.scala 30:58:@417.4]
  assign _GEN_41 = 6'h23 == _T_253 ? 6'hb : _GEN_40; // @[Cat.scala 30:58:@417.4]
  assign _GEN_42 = 6'h24 == _T_253 ? 6'he : _GEN_41; // @[Cat.scala 30:58:@417.4]
  assign _GEN_43 = 6'h25 == _T_253 ? 6'h11 : _GEN_42; // @[Cat.scala 30:58:@417.4]
  assign _GEN_44 = 6'h26 == _T_253 ? 6'h14 : _GEN_43; // @[Cat.scala 30:58:@417.4]
  assign _GEN_45 = 6'h27 == _T_253 ? 6'h17 : _GEN_44; // @[Cat.scala 30:58:@417.4]
  assign _GEN_46 = 6'h28 == _T_253 ? 6'h1a : _GEN_45; // @[Cat.scala 30:58:@417.4]
  assign _GEN_47 = 6'h29 == _T_253 ? 6'h1d : _GEN_46; // @[Cat.scala 30:58:@417.4]
  assign _GEN_48 = 6'h2a == _T_253 ? 6'h20 : _GEN_47; // @[Cat.scala 30:58:@417.4]
  assign _GEN_49 = 6'h2b == _T_253 ? 6'h23 : _GEN_48; // @[Cat.scala 30:58:@417.4]
  assign _GEN_50 = 6'h2c == _T_253 ? 6'h26 : _GEN_49; // @[Cat.scala 30:58:@417.4]
  assign _GEN_51 = 6'h2d == _T_253 ? 6'h29 : _GEN_50; // @[Cat.scala 30:58:@417.4]
  assign _GEN_52 = 6'h2e == _T_253 ? 6'h2c : _GEN_51; // @[Cat.scala 30:58:@417.4]
  assign _GEN_53 = 6'h2f == _T_253 ? 6'h2f : _GEN_52; // @[Cat.scala 30:58:@417.4]
  assign rdaddr0 = {rdsel,_GEN_53}; // @[Cat.scala 30:58:@417.4]
  assign _GEN_54 = 6'h1 == _T_258 ? 6'h3 : 6'h0; // @[Cat.scala 30:58:@418.4]
  assign _GEN_55 = 6'h2 == _T_258 ? 6'h6 : _GEN_54; // @[Cat.scala 30:58:@418.4]
  assign _GEN_56 = 6'h3 == _T_258 ? 6'h9 : _GEN_55; // @[Cat.scala 30:58:@418.4]
  assign _GEN_57 = 6'h4 == _T_258 ? 6'hc : _GEN_56; // @[Cat.scala 30:58:@418.4]
  assign _GEN_58 = 6'h5 == _T_258 ? 6'hf : _GEN_57; // @[Cat.scala 30:58:@418.4]
  assign _GEN_59 = 6'h6 == _T_258 ? 6'h12 : _GEN_58; // @[Cat.scala 30:58:@418.4]
  assign _GEN_60 = 6'h7 == _T_258 ? 6'h15 : _GEN_59; // @[Cat.scala 30:58:@418.4]
  assign _GEN_61 = 6'h8 == _T_258 ? 6'h18 : _GEN_60; // @[Cat.scala 30:58:@418.4]
  assign _GEN_62 = 6'h9 == _T_258 ? 6'h1b : _GEN_61; // @[Cat.scala 30:58:@418.4]
  assign _GEN_63 = 6'ha == _T_258 ? 6'h1e : _GEN_62; // @[Cat.scala 30:58:@418.4]
  assign _GEN_64 = 6'hb == _T_258 ? 6'h21 : _GEN_63; // @[Cat.scala 30:58:@418.4]
  assign _GEN_65 = 6'hc == _T_258 ? 6'h24 : _GEN_64; // @[Cat.scala 30:58:@418.4]
  assign _GEN_66 = 6'hd == _T_258 ? 6'h27 : _GEN_65; // @[Cat.scala 30:58:@418.4]
  assign _GEN_67 = 6'he == _T_258 ? 6'h2a : _GEN_66; // @[Cat.scala 30:58:@418.4]
  assign _GEN_68 = 6'hf == _T_258 ? 6'h2d : _GEN_67; // @[Cat.scala 30:58:@418.4]
  assign _GEN_69 = 6'h10 == _T_258 ? 6'h1 : _GEN_68; // @[Cat.scala 30:58:@418.4]
  assign _GEN_70 = 6'h11 == _T_258 ? 6'h4 : _GEN_69; // @[Cat.scala 30:58:@418.4]
  assign _GEN_71 = 6'h12 == _T_258 ? 6'h7 : _GEN_70; // @[Cat.scala 30:58:@418.4]
  assign _GEN_72 = 6'h13 == _T_258 ? 6'ha : _GEN_71; // @[Cat.scala 30:58:@418.4]
  assign _GEN_73 = 6'h14 == _T_258 ? 6'hd : _GEN_72; // @[Cat.scala 30:58:@418.4]
  assign _GEN_74 = 6'h15 == _T_258 ? 6'h10 : _GEN_73; // @[Cat.scala 30:58:@418.4]
  assign _GEN_75 = 6'h16 == _T_258 ? 6'h13 : _GEN_74; // @[Cat.scala 30:58:@418.4]
  assign _GEN_76 = 6'h17 == _T_258 ? 6'h16 : _GEN_75; // @[Cat.scala 30:58:@418.4]
  assign _GEN_77 = 6'h18 == _T_258 ? 6'h19 : _GEN_76; // @[Cat.scala 30:58:@418.4]
  assign _GEN_78 = 6'h19 == _T_258 ? 6'h1c : _GEN_77; // @[Cat.scala 30:58:@418.4]
  assign _GEN_79 = 6'h1a == _T_258 ? 6'h1f : _GEN_78; // @[Cat.scala 30:58:@418.4]
  assign _GEN_80 = 6'h1b == _T_258 ? 6'h22 : _GEN_79; // @[Cat.scala 30:58:@418.4]
  assign _GEN_81 = 6'h1c == _T_258 ? 6'h25 : _GEN_80; // @[Cat.scala 30:58:@418.4]
  assign _GEN_82 = 6'h1d == _T_258 ? 6'h28 : _GEN_81; // @[Cat.scala 30:58:@418.4]
  assign _GEN_83 = 6'h1e == _T_258 ? 6'h2b : _GEN_82; // @[Cat.scala 30:58:@418.4]
  assign _GEN_84 = 6'h1f == _T_258 ? 6'h2e : _GEN_83; // @[Cat.scala 30:58:@418.4]
  assign _GEN_85 = 6'h20 == _T_258 ? 6'h2 : _GEN_84; // @[Cat.scala 30:58:@418.4]
  assign _GEN_86 = 6'h21 == _T_258 ? 6'h5 : _GEN_85; // @[Cat.scala 30:58:@418.4]
  assign _GEN_87 = 6'h22 == _T_258 ? 6'h8 : _GEN_86; // @[Cat.scala 30:58:@418.4]
  assign _GEN_88 = 6'h23 == _T_258 ? 6'hb : _GEN_87; // @[Cat.scala 30:58:@418.4]
  assign _GEN_89 = 6'h24 == _T_258 ? 6'he : _GEN_88; // @[Cat.scala 30:58:@418.4]
  assign _GEN_90 = 6'h25 == _T_258 ? 6'h11 : _GEN_89; // @[Cat.scala 30:58:@418.4]
  assign _GEN_91 = 6'h26 == _T_258 ? 6'h14 : _GEN_90; // @[Cat.scala 30:58:@418.4]
  assign _GEN_92 = 6'h27 == _T_258 ? 6'h17 : _GEN_91; // @[Cat.scala 30:58:@418.4]
  assign _GEN_93 = 6'h28 == _T_258 ? 6'h1a : _GEN_92; // @[Cat.scala 30:58:@418.4]
  assign _GEN_94 = 6'h29 == _T_258 ? 6'h1d : _GEN_93; // @[Cat.scala 30:58:@418.4]
  assign _GEN_95 = 6'h2a == _T_258 ? 6'h20 : _GEN_94; // @[Cat.scala 30:58:@418.4]
  assign _GEN_96 = 6'h2b == _T_258 ? 6'h23 : _GEN_95; // @[Cat.scala 30:58:@418.4]
  assign _GEN_97 = 6'h2c == _T_258 ? 6'h26 : _GEN_96; // @[Cat.scala 30:58:@418.4]
  assign _GEN_98 = 6'h2d == _T_258 ? 6'h29 : _GEN_97; // @[Cat.scala 30:58:@418.4]
  assign _GEN_99 = 6'h2e == _T_258 ? 6'h2c : _GEN_98; // @[Cat.scala 30:58:@418.4]
  assign _GEN_100 = 6'h2f == _T_258 ? 6'h2f : _GEN_99; // @[Cat.scala 30:58:@418.4]
  assign rdaddr1 = {rdsel,_GEN_100}; // @[Cat.scala 30:58:@418.4]
  assign _GEN_101 = 6'h1 == value ? 6'h9 : 6'h26; // @[Cat.scala 30:58:@419.4]
  assign _GEN_102 = 6'h2 == value ? 6'h1e : _GEN_101; // @[Cat.scala 30:58:@419.4]
  assign _GEN_103 = 6'h3 == value ? 6'h2 : _GEN_102; // @[Cat.scala 30:58:@419.4]
  assign _GEN_104 = 6'h4 == value ? 6'h2d : _GEN_103; // @[Cat.scala 30:58:@419.4]
  assign _GEN_105 = 6'h5 == value ? 6'h11 : _GEN_104; // @[Cat.scala 30:58:@419.4]
  assign _GEN_106 = 6'h6 == value ? 6'h1b : _GEN_105; // @[Cat.scala 30:58:@419.4]
  assign _GEN_107 = 6'h7 == value ? 6'h2a : _GEN_106; // @[Cat.scala 30:58:@419.4]
  assign _GEN_108 = 6'h8 == value ? 6'hd : _GEN_107; // @[Cat.scala 30:58:@419.4]
  assign _GEN_109 = 6'h9 == value ? 6'h22 : _GEN_108; // @[Cat.scala 30:58:@419.4]
  assign _GEN_110 = 6'ha == value ? 6'h5 : _GEN_109; // @[Cat.scala 30:58:@419.4]
  assign _GEN_111 = 6'hb == value ? 6'h14 : _GEN_110; // @[Cat.scala 30:58:@419.4]
  assign _GEN_112 = 6'hc == value ? 6'h19 : _GEN_111; // @[Cat.scala 30:58:@419.4]
  assign _GEN_113 = 6'hd == value ? 6'h28 : _GEN_112; // @[Cat.scala 30:58:@419.4]
  assign _GEN_114 = 6'he == value ? 6'hb : _GEN_113; // @[Cat.scala 30:58:@419.4]
  assign _GEN_115 = 6'hf == value ? 6'h20 : _GEN_114; // @[Cat.scala 30:58:@419.4]
  assign _GEN_116 = 6'h10 == value ? 6'h4 : _GEN_115; // @[Cat.scala 30:58:@419.4]
  assign _GEN_117 = 6'h11 == value ? 6'h2f : _GEN_116; // @[Cat.scala 30:58:@419.4]
  assign _GEN_118 = 6'h12 == value ? 6'h12 : _GEN_117; // @[Cat.scala 30:58:@419.4]
  assign _GEN_119 = 6'h13 == value ? 6'h1d : _GEN_118; // @[Cat.scala 30:58:@419.4]
  assign _GEN_120 = 6'h14 == value ? 6'h0 : _GEN_119; // @[Cat.scala 30:58:@419.4]
  assign _GEN_121 = 6'h15 == value ? 6'h2b : _GEN_120; // @[Cat.scala 30:58:@419.4]
  assign _GEN_122 = 6'h16 == value ? 6'hf : _GEN_121; // @[Cat.scala 30:58:@419.4]
  assign _GEN_123 = 6'h17 == value ? 6'h24 : _GEN_122; // @[Cat.scala 30:58:@419.4]
  assign _GEN_124 = 6'h18 == value ? 6'h7 : _GEN_123; // @[Cat.scala 30:58:@419.4]
  assign _GEN_125 = 6'h19 == value ? 6'h16 : _GEN_124; // @[Cat.scala 30:58:@419.4]
  assign _GEN_126 = 6'h1a == value ? 6'h18 : _GEN_125; // @[Cat.scala 30:58:@419.4]
  assign _GEN_127 = 6'h1b == value ? 6'h27 : _GEN_126; // @[Cat.scala 30:58:@419.4]
  assign _GEN_128 = 6'h1c == value ? 6'ha : _GEN_127; // @[Cat.scala 30:58:@419.4]
  assign _GEN_129 = 6'h1d == value ? 6'h1f : _GEN_128; // @[Cat.scala 30:58:@419.4]
  assign _GEN_130 = 6'h1e == value ? 6'h3 : _GEN_129; // @[Cat.scala 30:58:@419.4]
  assign _GEN_131 = 6'h1f == value ? 6'h2e : _GEN_130; // @[Cat.scala 30:58:@419.4]
  assign _GEN_132 = 6'h20 == value ? 6'h1c : _GEN_131; // @[Cat.scala 30:58:@419.4]
  assign _GEN_133 = 6'h21 == value ? 6'he : _GEN_132; // @[Cat.scala 30:58:@419.4]
  assign _GEN_134 = 6'h22 == value ? 6'h23 : _GEN_133; // @[Cat.scala 30:58:@419.4]
  assign _GEN_135 = 6'h23 == value ? 6'h6 : _GEN_134; // @[Cat.scala 30:58:@419.4]
  assign _GEN_136 = 6'h24 == value ? 6'h15 : _GEN_135; // @[Cat.scala 30:58:@419.4]
  assign _GEN_137 = 6'h25 == value ? 6'h1a : _GEN_136; // @[Cat.scala 30:58:@419.4]
  assign _GEN_138 = 6'h26 == value ? 6'h29 : _GEN_137; // @[Cat.scala 30:58:@419.4]
  assign _GEN_139 = 6'h27 == value ? 6'hc : _GEN_138; // @[Cat.scala 30:58:@419.4]
  assign _GEN_140 = 6'h28 == value ? 6'h21 : _GEN_139; // @[Cat.scala 30:58:@419.4]
  assign _GEN_141 = 6'h29 == value ? 6'h13 : _GEN_140; // @[Cat.scala 30:58:@419.4]
  assign _GEN_142 = 6'h2a == value ? 6'h1 : _GEN_141; // @[Cat.scala 30:58:@419.4]
  assign _GEN_143 = 6'h2b == value ? 6'h2c : _GEN_142; // @[Cat.scala 30:58:@419.4]
  assign _GEN_144 = 6'h2c == value ? 6'h10 : _GEN_143; // @[Cat.scala 30:58:@419.4]
  assign _GEN_145 = 6'h2d == value ? 6'h25 : _GEN_144; // @[Cat.scala 30:58:@419.4]
  assign _GEN_146 = 6'h2e == value ? 6'h8 : _GEN_145; // @[Cat.scala 30:58:@419.4]
  assign _GEN_147 = 6'h2f == value ? 6'h17 : _GEN_146; // @[Cat.scala 30:58:@419.4]
  assign wraddr = {wrsel,_GEN_147}; // @[Cat.scala 30:58:@419.4]
  assign _T_264 = rdsel == 1'h0; // @[deint.scala 47:15:@429.6]
  assign _GEN_152 = rdswap ? _T_264 : rdsel; // @[deint.scala 46:17:@428.4]
  assign _GEN_153 = rdlast ? 1'h0 : doread; // @[deint.scala 50:17:@432.4]
  assign _T_268 = wrsel == 1'h0; // @[deint.scala 56:15:@437.6]
  assign _GEN_154 = wrlast ? 1'h1 : _GEN_153; // @[deint.scala 54:17:@435.4]
  assign _GEN_155 = wrlast ? _T_268 : wrsel; // @[deint.scala 54:17:@435.4]
  assign io_dout_valid = _T_270;
  assign io_dout_bits_0 = mem_mem_dout1_data;
  assign io_dout_bits_1 = mem_mem_dout0_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    mem[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mem_mem_dout0_addr_pipe_0 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_mem_dout1_addr_pipe_0 = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  doread = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  wrsel = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  rdsel = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  value = _RAND_6[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  value_1 = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  rdswap = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_270 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_262_en & mem__T_262_mask) begin
      mem[mem__T_262_addr] <= mem__T_262_data; // @[deint.scala 26:27:@384.4]
    end
    if (_GEN_156) begin
      mem_mem_dout0_addr_pipe_0 <= rdaddr0;
    end
    if (_GEN_156) begin
      mem_mem_dout1_addr_pipe_0 <= rdaddr1;
    end
    if (reset) begin
      doread <= 1'h0;
    end else begin
      if (wrlast) begin
        doread <= 1'h1;
      end else begin
        if (rdlast) begin
          doread <= 1'h0;
        end
      end
    end
    if (reset) begin
      wrsel <= 1'h0;
    end else begin
      if (wrlast) begin
        wrsel <= _T_268;
      end
    end
    if (reset) begin
      rdsel <= 1'h0;
    end else begin
      if (rdswap) begin
        rdsel <= _T_264;
      end
    end
    if (reset) begin
      value <= 6'h0;
    end else begin
      if (io_din_valid) begin
        if (_T_237) begin
          value <= 6'h0;
        end else begin
          value <= _T_240;
        end
      end
    end
    if (reset) begin
      value_1 <= 5'h0;
    end else begin
      if (doread) begin
        if (_T_245) begin
          value_1 <= 5'h0;
        end else begin
          value_1 <= _T_248;
        end
      end
    end
    rdswap <= rdlast;
    _T_270 <= doread;
  end
endmodule
module TransitionMetricUnit( // @[:@446.2]
  input  [2:0] io_din_0, // @[:@449.4]
  input  [2:0] io_din_1, // @[:@449.4]
  output [3:0] io_dout_0, // @[:@449.4]
  output [3:0] io_dout_1, // @[:@449.4]
  output [3:0] io_dout_2, // @[:@449.4]
  output [3:0] io_dout_3 // @[:@449.4]
);
  wire [3:0] _T_27; // @[viterbi.scala 163:23:@452.4]
  wire [2:0] _T_28; // @[viterbi.scala 163:23:@453.4]
  wire [2:0] _T_29; // @[viterbi.scala 163:23:@454.4]
  wire [3:0] _T_30; // @[viterbi.scala 163:35:@455.4]
  wire [2:0] _T_31; // @[viterbi.scala 163:35:@456.4]
  wire [2:0] _T_32; // @[viterbi.scala 163:35:@457.4]
  wire [3:0] _T_33; // @[viterbi.scala 164:23:@459.4]
  wire [2:0] _T_34; // @[viterbi.scala 164:23:@460.4]
  wire [2:0] _T_35; // @[viterbi.scala 164:23:@461.4]
  wire [3:0] _T_36; // @[viterbi.scala 164:35:@462.4]
  wire [2:0] _T_37; // @[viterbi.scala 164:35:@463.4]
  wire [2:0] _T_38; // @[viterbi.scala 164:35:@464.4]
  wire [3:0] _T_40; // @[viterbi.scala 165:12:@466.4]
  wire [2:0] _T_41; // @[viterbi.scala 165:12:@467.4]
  wire [2:0] _T_42; // @[viterbi.scala 165:12:@468.4]
  wire [3:0] _T_43; // @[viterbi.scala 165:23:@469.4]
  wire [2:0] _T_44; // @[viterbi.scala 165:23:@470.4]
  wire [2:0] _T_45; // @[viterbi.scala 165:23:@471.4]
  wire [3:0] _T_46; // @[viterbi.scala 165:35:@472.4]
  wire [2:0] _T_47; // @[viterbi.scala 165:35:@473.4]
  wire [2:0] _T_48; // @[viterbi.scala 165:35:@474.4]
  wire [3:0] _T_53; // @[viterbi.scala 166:23:@479.4]
  wire [2:0] _T_54; // @[viterbi.scala 166:23:@480.4]
  wire [2:0] _T_55; // @[viterbi.scala 166:23:@481.4]
  wire [3:0] _T_56; // @[viterbi.scala 166:35:@482.4]
  wire [2:0] _T_57; // @[viterbi.scala 166:35:@483.4]
  wire [2:0] _T_58; // @[viterbi.scala 166:35:@484.4]
  wire [4:0] bm_0; // @[viterbi.scala 161:16:@451.4]
  wire [3:0] _T_59; // @[viterbi.scala 167:22:@486.4]
  wire [4:0] bm_1; // @[viterbi.scala 161:16:@451.4]
  wire [3:0] _T_60; // @[viterbi.scala 168:22:@488.4]
  wire [4:0] bm_2; // @[viterbi.scala 161:16:@451.4]
  wire [3:0] _T_61; // @[viterbi.scala 169:22:@490.4]
  wire [4:0] bm_3; // @[viterbi.scala 161:16:@451.4]
  wire [3:0] _T_62; // @[viterbi.scala 170:22:@492.4]
  assign _T_27 = $signed(io_din_0) + $signed(io_din_1); // @[viterbi.scala 163:23:@452.4]
  assign _T_28 = _T_27[2:0]; // @[viterbi.scala 163:23:@453.4]
  assign _T_29 = $signed(_T_28); // @[viterbi.scala 163:23:@454.4]
  assign _T_30 = $signed(_T_29) + $signed(3'sh2); // @[viterbi.scala 163:35:@455.4]
  assign _T_31 = _T_30[2:0]; // @[viterbi.scala 163:35:@456.4]
  assign _T_32 = $signed(_T_31); // @[viterbi.scala 163:35:@457.4]
  assign _T_33 = $signed(io_din_0) - $signed(io_din_1); // @[viterbi.scala 164:23:@459.4]
  assign _T_34 = _T_33[2:0]; // @[viterbi.scala 164:23:@460.4]
  assign _T_35 = $signed(_T_34); // @[viterbi.scala 164:23:@461.4]
  assign _T_36 = $signed(_T_35) + $signed(3'sh2); // @[viterbi.scala 164:35:@462.4]
  assign _T_37 = _T_36[2:0]; // @[viterbi.scala 164:35:@463.4]
  assign _T_38 = $signed(_T_37); // @[viterbi.scala 164:35:@464.4]
  assign _T_40 = $signed(3'sh0) - $signed(io_din_0); // @[viterbi.scala 165:12:@466.4]
  assign _T_41 = _T_40[2:0]; // @[viterbi.scala 165:12:@467.4]
  assign _T_42 = $signed(_T_41); // @[viterbi.scala 165:12:@468.4]
  assign _T_43 = $signed(_T_42) + $signed(io_din_1); // @[viterbi.scala 165:23:@469.4]
  assign _T_44 = _T_43[2:0]; // @[viterbi.scala 165:23:@470.4]
  assign _T_45 = $signed(_T_44); // @[viterbi.scala 165:23:@471.4]
  assign _T_46 = $signed(_T_45) + $signed(3'sh2); // @[viterbi.scala 165:35:@472.4]
  assign _T_47 = _T_46[2:0]; // @[viterbi.scala 165:35:@473.4]
  assign _T_48 = $signed(_T_47); // @[viterbi.scala 165:35:@474.4]
  assign _T_53 = $signed(_T_42) - $signed(io_din_1); // @[viterbi.scala 166:23:@479.4]
  assign _T_54 = _T_53[2:0]; // @[viterbi.scala 166:23:@480.4]
  assign _T_55 = $signed(_T_54); // @[viterbi.scala 166:23:@481.4]
  assign _T_56 = $signed(_T_55) + $signed(3'sh2); // @[viterbi.scala 166:35:@482.4]
  assign _T_57 = _T_56[2:0]; // @[viterbi.scala 166:35:@483.4]
  assign _T_58 = $signed(_T_57); // @[viterbi.scala 166:35:@484.4]
  assign bm_0 = {{2{_T_32[2]}},_T_32}; // @[viterbi.scala 161:16:@451.4]
  assign _T_59 = bm_0[3:0]; // @[viterbi.scala 167:22:@486.4]
  assign bm_1 = {{2{_T_38[2]}},_T_38}; // @[viterbi.scala 161:16:@451.4]
  assign _T_60 = bm_1[3:0]; // @[viterbi.scala 168:22:@488.4]
  assign bm_2 = {{2{_T_48[2]}},_T_48}; // @[viterbi.scala 161:16:@451.4]
  assign _T_61 = bm_2[3:0]; // @[viterbi.scala 169:22:@490.4]
  assign bm_3 = {{2{_T_58[2]}},_T_58}; // @[viterbi.scala 161:16:@451.4]
  assign _T_62 = bm_3[3:0]; // @[viterbi.scala 170:22:@492.4]
  assign io_dout_0 = _T_59;
  assign io_dout_1 = _T_60;
  assign io_dout_2 = _T_61;
  assign io_dout_3 = _T_62;
endmodule
module ACSUnit( // @[:@495.2]
  input  [8:0] io_pm_0, // @[:@498.4]
  input  [8:0] io_pm_1, // @[:@498.4]
  input  [3:0] io_bm_0, // @[:@498.4]
  input  [3:0] io_bm_1, // @[:@498.4]
  output       io_sel, // @[:@498.4]
  output [8:0] io_dout // @[:@498.4]
);
  wire [8:0] _GEN_0; // @[viterbi.scala 251:23:@500.4]
  wire [9:0] _T_18; // @[viterbi.scala 251:23:@500.4]
  wire [8:0] sum0; // @[viterbi.scala 251:23:@501.4]
  wire [8:0] _GEN_1; // @[viterbi.scala 252:23:@502.4]
  wire [9:0] _T_19; // @[viterbi.scala 252:23:@502.4]
  wire [8:0] sum1; // @[viterbi.scala 252:23:@503.4]
  wire [7:0] _T_20; // @[viterbi.scala 253:19:@504.4]
  wire [7:0] _T_21; // @[viterbi.scala 253:41:@505.4]
  wire  cmp; // @[viterbi.scala 253:35:@506.4]
  wire  _T_22; // @[viterbi.scala 254:24:@507.4]
  wire  _T_23; // @[viterbi.scala 254:18:@508.4]
  wire  _T_24; // @[viterbi.scala 254:37:@509.4]
  wire  sel; // @[viterbi.scala 254:31:@510.4]
  wire [8:0] _T_27; // @[viterbi.scala 255:18:@513.4]
  assign _GEN_0 = {{5'd0}, io_bm_0}; // @[viterbi.scala 251:23:@500.4]
  assign _T_18 = io_pm_0 + _GEN_0; // @[viterbi.scala 251:23:@500.4]
  assign sum0 = _T_18[8:0]; // @[viterbi.scala 251:23:@501.4]
  assign _GEN_1 = {{5'd0}, io_bm_1}; // @[viterbi.scala 252:23:@502.4]
  assign _T_19 = io_pm_1 + _GEN_1; // @[viterbi.scala 252:23:@502.4]
  assign sum1 = _T_19[8:0]; // @[viterbi.scala 252:23:@503.4]
  assign _T_20 = sum0[7:0]; // @[viterbi.scala 253:19:@504.4]
  assign _T_21 = sum1[7:0]; // @[viterbi.scala 253:41:@505.4]
  assign cmp = _T_20 > _T_21; // @[viterbi.scala 253:35:@506.4]
  assign _T_22 = sum0[8]; // @[viterbi.scala 254:24:@507.4]
  assign _T_23 = cmp ^ _T_22; // @[viterbi.scala 254:18:@508.4]
  assign _T_24 = sum1[8]; // @[viterbi.scala 254:37:@509.4]
  assign sel = _T_23 ^ _T_24; // @[viterbi.scala 254:31:@510.4]
  assign _T_27 = sel ? sum0 : sum1; // @[viterbi.scala 255:18:@513.4]
  assign io_sel = sel;
  assign io_dout = _T_27;
endmodule
module ACSBlock( // @[:@1903.2]
  input        clock, // @[:@1904.4]
  input        io_init, // @[:@1906.4]
  input        io_din_valid, // @[:@1906.4]
  input  [3:0] io_din_bits_0, // @[:@1906.4]
  input  [3:0] io_din_bits_1, // @[:@1906.4]
  input  [3:0] io_din_bits_2, // @[:@1906.4]
  input  [3:0] io_din_bits_3, // @[:@1906.4]
  output       io_dout_0, // @[:@1906.4]
  output       io_dout_1, // @[:@1906.4]
  output       io_dout_2, // @[:@1906.4]
  output       io_dout_3, // @[:@1906.4]
  output       io_dout_4, // @[:@1906.4]
  output       io_dout_5, // @[:@1906.4]
  output       io_dout_6, // @[:@1906.4]
  output       io_dout_7, // @[:@1906.4]
  output       io_dout_8, // @[:@1906.4]
  output       io_dout_9, // @[:@1906.4]
  output       io_dout_10, // @[:@1906.4]
  output       io_dout_11, // @[:@1906.4]
  output       io_dout_12, // @[:@1906.4]
  output       io_dout_13, // @[:@1906.4]
  output       io_dout_14, // @[:@1906.4]
  output       io_dout_15, // @[:@1906.4]
  output       io_dout_16, // @[:@1906.4]
  output       io_dout_17, // @[:@1906.4]
  output       io_dout_18, // @[:@1906.4]
  output       io_dout_19, // @[:@1906.4]
  output       io_dout_20, // @[:@1906.4]
  output       io_dout_21, // @[:@1906.4]
  output       io_dout_22, // @[:@1906.4]
  output       io_dout_23, // @[:@1906.4]
  output       io_dout_24, // @[:@1906.4]
  output       io_dout_25, // @[:@1906.4]
  output       io_dout_26, // @[:@1906.4]
  output       io_dout_27, // @[:@1906.4]
  output       io_dout_28, // @[:@1906.4]
  output       io_dout_29, // @[:@1906.4]
  output       io_dout_30, // @[:@1906.4]
  output       io_dout_31, // @[:@1906.4]
  output       io_dout_32, // @[:@1906.4]
  output       io_dout_33, // @[:@1906.4]
  output       io_dout_34, // @[:@1906.4]
  output       io_dout_35, // @[:@1906.4]
  output       io_dout_36, // @[:@1906.4]
  output       io_dout_37, // @[:@1906.4]
  output       io_dout_38, // @[:@1906.4]
  output       io_dout_39, // @[:@1906.4]
  output       io_dout_40, // @[:@1906.4]
  output       io_dout_41, // @[:@1906.4]
  output       io_dout_42, // @[:@1906.4]
  output       io_dout_43, // @[:@1906.4]
  output       io_dout_44, // @[:@1906.4]
  output       io_dout_45, // @[:@1906.4]
  output       io_dout_46, // @[:@1906.4]
  output       io_dout_47, // @[:@1906.4]
  output       io_dout_48, // @[:@1906.4]
  output       io_dout_49, // @[:@1906.4]
  output       io_dout_50, // @[:@1906.4]
  output       io_dout_51, // @[:@1906.4]
  output       io_dout_52, // @[:@1906.4]
  output       io_dout_53, // @[:@1906.4]
  output       io_dout_54, // @[:@1906.4]
  output       io_dout_55, // @[:@1906.4]
  output       io_dout_56, // @[:@1906.4]
  output       io_dout_57, // @[:@1906.4]
  output       io_dout_58, // @[:@1906.4]
  output       io_dout_59, // @[:@1906.4]
  output       io_dout_60, // @[:@1906.4]
  output       io_dout_61, // @[:@1906.4]
  output       io_dout_62, // @[:@1906.4]
  output       io_dout_63 // @[:@1906.4]
);
  reg [8:0] pmregs_0; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_0;
  reg [8:0] pmregs_1; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_1;
  reg [8:0] pmregs_2; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_2;
  reg [8:0] pmregs_3; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_3;
  reg [8:0] pmregs_4; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_4;
  reg [8:0] pmregs_5; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_5;
  reg [8:0] pmregs_6; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_6;
  reg [8:0] pmregs_7; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_7;
  reg [8:0] pmregs_8; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_8;
  reg [8:0] pmregs_9; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_9;
  reg [8:0] pmregs_10; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_10;
  reg [8:0] pmregs_11; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_11;
  reg [8:0] pmregs_12; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_12;
  reg [8:0] pmregs_13; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_13;
  reg [8:0] pmregs_14; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_14;
  reg [8:0] pmregs_15; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_15;
  reg [8:0] pmregs_16; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_16;
  reg [8:0] pmregs_17; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_17;
  reg [8:0] pmregs_18; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_18;
  reg [8:0] pmregs_19; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_19;
  reg [8:0] pmregs_20; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_20;
  reg [8:0] pmregs_21; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_21;
  reg [8:0] pmregs_22; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_22;
  reg [8:0] pmregs_23; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_23;
  reg [8:0] pmregs_24; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_24;
  reg [8:0] pmregs_25; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_25;
  reg [8:0] pmregs_26; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_26;
  reg [8:0] pmregs_27; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_27;
  reg [8:0] pmregs_28; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_28;
  reg [8:0] pmregs_29; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_29;
  reg [8:0] pmregs_30; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_30;
  reg [8:0] pmregs_31; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_31;
  reg [8:0] pmregs_32; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_32;
  reg [8:0] pmregs_33; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_33;
  reg [8:0] pmregs_34; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_34;
  reg [8:0] pmregs_35; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_35;
  reg [8:0] pmregs_36; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_36;
  reg [8:0] pmregs_37; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_37;
  reg [8:0] pmregs_38; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_38;
  reg [8:0] pmregs_39; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_39;
  reg [8:0] pmregs_40; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_40;
  reg [8:0] pmregs_41; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_41;
  reg [8:0] pmregs_42; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_42;
  reg [8:0] pmregs_43; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_43;
  reg [8:0] pmregs_44; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_44;
  reg [8:0] pmregs_45; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_45;
  reg [8:0] pmregs_46; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_46;
  reg [8:0] pmregs_47; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_47;
  reg [8:0] pmregs_48; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_48;
  reg [8:0] pmregs_49; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_49;
  reg [8:0] pmregs_50; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_50;
  reg [8:0] pmregs_51; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_51;
  reg [8:0] pmregs_52; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_52;
  reg [8:0] pmregs_53; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_53;
  reg [8:0] pmregs_54; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_54;
  reg [8:0] pmregs_55; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_55;
  reg [8:0] pmregs_56; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_56;
  reg [8:0] pmregs_57; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_57;
  reg [8:0] pmregs_58; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_58;
  reg [8:0] pmregs_59; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_59;
  reg [8:0] pmregs_60; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_60;
  reg [8:0] pmregs_61; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_61;
  reg [8:0] pmregs_62; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_62;
  reg [8:0] pmregs_63; // @[viterbi.scala 197:19:@1908.4]
  reg [31:0] _RAND_63;
  wire [8:0] acsList_0_io_pm_0; // @[viterbi.scala 206:45:@1975.4]
  wire [8:0] acsList_0_io_pm_1; // @[viterbi.scala 206:45:@1975.4]
  wire [3:0] acsList_0_io_bm_0; // @[viterbi.scala 206:45:@1975.4]
  wire [3:0] acsList_0_io_bm_1; // @[viterbi.scala 206:45:@1975.4]
  wire  acsList_0_io_sel; // @[viterbi.scala 206:45:@1975.4]
  wire [8:0] acsList_0_io_dout; // @[viterbi.scala 206:45:@1975.4]
  wire [8:0] acsList_1_io_pm_0; // @[viterbi.scala 206:45:@1978.4]
  wire [8:0] acsList_1_io_pm_1; // @[viterbi.scala 206:45:@1978.4]
  wire [3:0] acsList_1_io_bm_0; // @[viterbi.scala 206:45:@1978.4]
  wire [3:0] acsList_1_io_bm_1; // @[viterbi.scala 206:45:@1978.4]
  wire  acsList_1_io_sel; // @[viterbi.scala 206:45:@1978.4]
  wire [8:0] acsList_1_io_dout; // @[viterbi.scala 206:45:@1978.4]
  wire [8:0] acsList_2_io_pm_0; // @[viterbi.scala 206:45:@1981.4]
  wire [8:0] acsList_2_io_pm_1; // @[viterbi.scala 206:45:@1981.4]
  wire [3:0] acsList_2_io_bm_0; // @[viterbi.scala 206:45:@1981.4]
  wire [3:0] acsList_2_io_bm_1; // @[viterbi.scala 206:45:@1981.4]
  wire  acsList_2_io_sel; // @[viterbi.scala 206:45:@1981.4]
  wire [8:0] acsList_2_io_dout; // @[viterbi.scala 206:45:@1981.4]
  wire [8:0] acsList_3_io_pm_0; // @[viterbi.scala 206:45:@1984.4]
  wire [8:0] acsList_3_io_pm_1; // @[viterbi.scala 206:45:@1984.4]
  wire [3:0] acsList_3_io_bm_0; // @[viterbi.scala 206:45:@1984.4]
  wire [3:0] acsList_3_io_bm_1; // @[viterbi.scala 206:45:@1984.4]
  wire  acsList_3_io_sel; // @[viterbi.scala 206:45:@1984.4]
  wire [8:0] acsList_3_io_dout; // @[viterbi.scala 206:45:@1984.4]
  wire [8:0] acsList_4_io_pm_0; // @[viterbi.scala 206:45:@1987.4]
  wire [8:0] acsList_4_io_pm_1; // @[viterbi.scala 206:45:@1987.4]
  wire [3:0] acsList_4_io_bm_0; // @[viterbi.scala 206:45:@1987.4]
  wire [3:0] acsList_4_io_bm_1; // @[viterbi.scala 206:45:@1987.4]
  wire  acsList_4_io_sel; // @[viterbi.scala 206:45:@1987.4]
  wire [8:0] acsList_4_io_dout; // @[viterbi.scala 206:45:@1987.4]
  wire [8:0] acsList_5_io_pm_0; // @[viterbi.scala 206:45:@1990.4]
  wire [8:0] acsList_5_io_pm_1; // @[viterbi.scala 206:45:@1990.4]
  wire [3:0] acsList_5_io_bm_0; // @[viterbi.scala 206:45:@1990.4]
  wire [3:0] acsList_5_io_bm_1; // @[viterbi.scala 206:45:@1990.4]
  wire  acsList_5_io_sel; // @[viterbi.scala 206:45:@1990.4]
  wire [8:0] acsList_5_io_dout; // @[viterbi.scala 206:45:@1990.4]
  wire [8:0] acsList_6_io_pm_0; // @[viterbi.scala 206:45:@1993.4]
  wire [8:0] acsList_6_io_pm_1; // @[viterbi.scala 206:45:@1993.4]
  wire [3:0] acsList_6_io_bm_0; // @[viterbi.scala 206:45:@1993.4]
  wire [3:0] acsList_6_io_bm_1; // @[viterbi.scala 206:45:@1993.4]
  wire  acsList_6_io_sel; // @[viterbi.scala 206:45:@1993.4]
  wire [8:0] acsList_6_io_dout; // @[viterbi.scala 206:45:@1993.4]
  wire [8:0] acsList_7_io_pm_0; // @[viterbi.scala 206:45:@1996.4]
  wire [8:0] acsList_7_io_pm_1; // @[viterbi.scala 206:45:@1996.4]
  wire [3:0] acsList_7_io_bm_0; // @[viterbi.scala 206:45:@1996.4]
  wire [3:0] acsList_7_io_bm_1; // @[viterbi.scala 206:45:@1996.4]
  wire  acsList_7_io_sel; // @[viterbi.scala 206:45:@1996.4]
  wire [8:0] acsList_7_io_dout; // @[viterbi.scala 206:45:@1996.4]
  wire [8:0] acsList_8_io_pm_0; // @[viterbi.scala 206:45:@1999.4]
  wire [8:0] acsList_8_io_pm_1; // @[viterbi.scala 206:45:@1999.4]
  wire [3:0] acsList_8_io_bm_0; // @[viterbi.scala 206:45:@1999.4]
  wire [3:0] acsList_8_io_bm_1; // @[viterbi.scala 206:45:@1999.4]
  wire  acsList_8_io_sel; // @[viterbi.scala 206:45:@1999.4]
  wire [8:0] acsList_8_io_dout; // @[viterbi.scala 206:45:@1999.4]
  wire [8:0] acsList_9_io_pm_0; // @[viterbi.scala 206:45:@2002.4]
  wire [8:0] acsList_9_io_pm_1; // @[viterbi.scala 206:45:@2002.4]
  wire [3:0] acsList_9_io_bm_0; // @[viterbi.scala 206:45:@2002.4]
  wire [3:0] acsList_9_io_bm_1; // @[viterbi.scala 206:45:@2002.4]
  wire  acsList_9_io_sel; // @[viterbi.scala 206:45:@2002.4]
  wire [8:0] acsList_9_io_dout; // @[viterbi.scala 206:45:@2002.4]
  wire [8:0] acsList_10_io_pm_0; // @[viterbi.scala 206:45:@2005.4]
  wire [8:0] acsList_10_io_pm_1; // @[viterbi.scala 206:45:@2005.4]
  wire [3:0] acsList_10_io_bm_0; // @[viterbi.scala 206:45:@2005.4]
  wire [3:0] acsList_10_io_bm_1; // @[viterbi.scala 206:45:@2005.4]
  wire  acsList_10_io_sel; // @[viterbi.scala 206:45:@2005.4]
  wire [8:0] acsList_10_io_dout; // @[viterbi.scala 206:45:@2005.4]
  wire [8:0] acsList_11_io_pm_0; // @[viterbi.scala 206:45:@2008.4]
  wire [8:0] acsList_11_io_pm_1; // @[viterbi.scala 206:45:@2008.4]
  wire [3:0] acsList_11_io_bm_0; // @[viterbi.scala 206:45:@2008.4]
  wire [3:0] acsList_11_io_bm_1; // @[viterbi.scala 206:45:@2008.4]
  wire  acsList_11_io_sel; // @[viterbi.scala 206:45:@2008.4]
  wire [8:0] acsList_11_io_dout; // @[viterbi.scala 206:45:@2008.4]
  wire [8:0] acsList_12_io_pm_0; // @[viterbi.scala 206:45:@2011.4]
  wire [8:0] acsList_12_io_pm_1; // @[viterbi.scala 206:45:@2011.4]
  wire [3:0] acsList_12_io_bm_0; // @[viterbi.scala 206:45:@2011.4]
  wire [3:0] acsList_12_io_bm_1; // @[viterbi.scala 206:45:@2011.4]
  wire  acsList_12_io_sel; // @[viterbi.scala 206:45:@2011.4]
  wire [8:0] acsList_12_io_dout; // @[viterbi.scala 206:45:@2011.4]
  wire [8:0] acsList_13_io_pm_0; // @[viterbi.scala 206:45:@2014.4]
  wire [8:0] acsList_13_io_pm_1; // @[viterbi.scala 206:45:@2014.4]
  wire [3:0] acsList_13_io_bm_0; // @[viterbi.scala 206:45:@2014.4]
  wire [3:0] acsList_13_io_bm_1; // @[viterbi.scala 206:45:@2014.4]
  wire  acsList_13_io_sel; // @[viterbi.scala 206:45:@2014.4]
  wire [8:0] acsList_13_io_dout; // @[viterbi.scala 206:45:@2014.4]
  wire [8:0] acsList_14_io_pm_0; // @[viterbi.scala 206:45:@2017.4]
  wire [8:0] acsList_14_io_pm_1; // @[viterbi.scala 206:45:@2017.4]
  wire [3:0] acsList_14_io_bm_0; // @[viterbi.scala 206:45:@2017.4]
  wire [3:0] acsList_14_io_bm_1; // @[viterbi.scala 206:45:@2017.4]
  wire  acsList_14_io_sel; // @[viterbi.scala 206:45:@2017.4]
  wire [8:0] acsList_14_io_dout; // @[viterbi.scala 206:45:@2017.4]
  wire [8:0] acsList_15_io_pm_0; // @[viterbi.scala 206:45:@2020.4]
  wire [8:0] acsList_15_io_pm_1; // @[viterbi.scala 206:45:@2020.4]
  wire [3:0] acsList_15_io_bm_0; // @[viterbi.scala 206:45:@2020.4]
  wire [3:0] acsList_15_io_bm_1; // @[viterbi.scala 206:45:@2020.4]
  wire  acsList_15_io_sel; // @[viterbi.scala 206:45:@2020.4]
  wire [8:0] acsList_15_io_dout; // @[viterbi.scala 206:45:@2020.4]
  wire [8:0] acsList_16_io_pm_0; // @[viterbi.scala 206:45:@2023.4]
  wire [8:0] acsList_16_io_pm_1; // @[viterbi.scala 206:45:@2023.4]
  wire [3:0] acsList_16_io_bm_0; // @[viterbi.scala 206:45:@2023.4]
  wire [3:0] acsList_16_io_bm_1; // @[viterbi.scala 206:45:@2023.4]
  wire  acsList_16_io_sel; // @[viterbi.scala 206:45:@2023.4]
  wire [8:0] acsList_16_io_dout; // @[viterbi.scala 206:45:@2023.4]
  wire [8:0] acsList_17_io_pm_0; // @[viterbi.scala 206:45:@2026.4]
  wire [8:0] acsList_17_io_pm_1; // @[viterbi.scala 206:45:@2026.4]
  wire [3:0] acsList_17_io_bm_0; // @[viterbi.scala 206:45:@2026.4]
  wire [3:0] acsList_17_io_bm_1; // @[viterbi.scala 206:45:@2026.4]
  wire  acsList_17_io_sel; // @[viterbi.scala 206:45:@2026.4]
  wire [8:0] acsList_17_io_dout; // @[viterbi.scala 206:45:@2026.4]
  wire [8:0] acsList_18_io_pm_0; // @[viterbi.scala 206:45:@2029.4]
  wire [8:0] acsList_18_io_pm_1; // @[viterbi.scala 206:45:@2029.4]
  wire [3:0] acsList_18_io_bm_0; // @[viterbi.scala 206:45:@2029.4]
  wire [3:0] acsList_18_io_bm_1; // @[viterbi.scala 206:45:@2029.4]
  wire  acsList_18_io_sel; // @[viterbi.scala 206:45:@2029.4]
  wire [8:0] acsList_18_io_dout; // @[viterbi.scala 206:45:@2029.4]
  wire [8:0] acsList_19_io_pm_0; // @[viterbi.scala 206:45:@2032.4]
  wire [8:0] acsList_19_io_pm_1; // @[viterbi.scala 206:45:@2032.4]
  wire [3:0] acsList_19_io_bm_0; // @[viterbi.scala 206:45:@2032.4]
  wire [3:0] acsList_19_io_bm_1; // @[viterbi.scala 206:45:@2032.4]
  wire  acsList_19_io_sel; // @[viterbi.scala 206:45:@2032.4]
  wire [8:0] acsList_19_io_dout; // @[viterbi.scala 206:45:@2032.4]
  wire [8:0] acsList_20_io_pm_0; // @[viterbi.scala 206:45:@2035.4]
  wire [8:0] acsList_20_io_pm_1; // @[viterbi.scala 206:45:@2035.4]
  wire [3:0] acsList_20_io_bm_0; // @[viterbi.scala 206:45:@2035.4]
  wire [3:0] acsList_20_io_bm_1; // @[viterbi.scala 206:45:@2035.4]
  wire  acsList_20_io_sel; // @[viterbi.scala 206:45:@2035.4]
  wire [8:0] acsList_20_io_dout; // @[viterbi.scala 206:45:@2035.4]
  wire [8:0] acsList_21_io_pm_0; // @[viterbi.scala 206:45:@2038.4]
  wire [8:0] acsList_21_io_pm_1; // @[viterbi.scala 206:45:@2038.4]
  wire [3:0] acsList_21_io_bm_0; // @[viterbi.scala 206:45:@2038.4]
  wire [3:0] acsList_21_io_bm_1; // @[viterbi.scala 206:45:@2038.4]
  wire  acsList_21_io_sel; // @[viterbi.scala 206:45:@2038.4]
  wire [8:0] acsList_21_io_dout; // @[viterbi.scala 206:45:@2038.4]
  wire [8:0] acsList_22_io_pm_0; // @[viterbi.scala 206:45:@2041.4]
  wire [8:0] acsList_22_io_pm_1; // @[viterbi.scala 206:45:@2041.4]
  wire [3:0] acsList_22_io_bm_0; // @[viterbi.scala 206:45:@2041.4]
  wire [3:0] acsList_22_io_bm_1; // @[viterbi.scala 206:45:@2041.4]
  wire  acsList_22_io_sel; // @[viterbi.scala 206:45:@2041.4]
  wire [8:0] acsList_22_io_dout; // @[viterbi.scala 206:45:@2041.4]
  wire [8:0] acsList_23_io_pm_0; // @[viterbi.scala 206:45:@2044.4]
  wire [8:0] acsList_23_io_pm_1; // @[viterbi.scala 206:45:@2044.4]
  wire [3:0] acsList_23_io_bm_0; // @[viterbi.scala 206:45:@2044.4]
  wire [3:0] acsList_23_io_bm_1; // @[viterbi.scala 206:45:@2044.4]
  wire  acsList_23_io_sel; // @[viterbi.scala 206:45:@2044.4]
  wire [8:0] acsList_23_io_dout; // @[viterbi.scala 206:45:@2044.4]
  wire [8:0] acsList_24_io_pm_0; // @[viterbi.scala 206:45:@2047.4]
  wire [8:0] acsList_24_io_pm_1; // @[viterbi.scala 206:45:@2047.4]
  wire [3:0] acsList_24_io_bm_0; // @[viterbi.scala 206:45:@2047.4]
  wire [3:0] acsList_24_io_bm_1; // @[viterbi.scala 206:45:@2047.4]
  wire  acsList_24_io_sel; // @[viterbi.scala 206:45:@2047.4]
  wire [8:0] acsList_24_io_dout; // @[viterbi.scala 206:45:@2047.4]
  wire [8:0] acsList_25_io_pm_0; // @[viterbi.scala 206:45:@2050.4]
  wire [8:0] acsList_25_io_pm_1; // @[viterbi.scala 206:45:@2050.4]
  wire [3:0] acsList_25_io_bm_0; // @[viterbi.scala 206:45:@2050.4]
  wire [3:0] acsList_25_io_bm_1; // @[viterbi.scala 206:45:@2050.4]
  wire  acsList_25_io_sel; // @[viterbi.scala 206:45:@2050.4]
  wire [8:0] acsList_25_io_dout; // @[viterbi.scala 206:45:@2050.4]
  wire [8:0] acsList_26_io_pm_0; // @[viterbi.scala 206:45:@2053.4]
  wire [8:0] acsList_26_io_pm_1; // @[viterbi.scala 206:45:@2053.4]
  wire [3:0] acsList_26_io_bm_0; // @[viterbi.scala 206:45:@2053.4]
  wire [3:0] acsList_26_io_bm_1; // @[viterbi.scala 206:45:@2053.4]
  wire  acsList_26_io_sel; // @[viterbi.scala 206:45:@2053.4]
  wire [8:0] acsList_26_io_dout; // @[viterbi.scala 206:45:@2053.4]
  wire [8:0] acsList_27_io_pm_0; // @[viterbi.scala 206:45:@2056.4]
  wire [8:0] acsList_27_io_pm_1; // @[viterbi.scala 206:45:@2056.4]
  wire [3:0] acsList_27_io_bm_0; // @[viterbi.scala 206:45:@2056.4]
  wire [3:0] acsList_27_io_bm_1; // @[viterbi.scala 206:45:@2056.4]
  wire  acsList_27_io_sel; // @[viterbi.scala 206:45:@2056.4]
  wire [8:0] acsList_27_io_dout; // @[viterbi.scala 206:45:@2056.4]
  wire [8:0] acsList_28_io_pm_0; // @[viterbi.scala 206:45:@2059.4]
  wire [8:0] acsList_28_io_pm_1; // @[viterbi.scala 206:45:@2059.4]
  wire [3:0] acsList_28_io_bm_0; // @[viterbi.scala 206:45:@2059.4]
  wire [3:0] acsList_28_io_bm_1; // @[viterbi.scala 206:45:@2059.4]
  wire  acsList_28_io_sel; // @[viterbi.scala 206:45:@2059.4]
  wire [8:0] acsList_28_io_dout; // @[viterbi.scala 206:45:@2059.4]
  wire [8:0] acsList_29_io_pm_0; // @[viterbi.scala 206:45:@2062.4]
  wire [8:0] acsList_29_io_pm_1; // @[viterbi.scala 206:45:@2062.4]
  wire [3:0] acsList_29_io_bm_0; // @[viterbi.scala 206:45:@2062.4]
  wire [3:0] acsList_29_io_bm_1; // @[viterbi.scala 206:45:@2062.4]
  wire  acsList_29_io_sel; // @[viterbi.scala 206:45:@2062.4]
  wire [8:0] acsList_29_io_dout; // @[viterbi.scala 206:45:@2062.4]
  wire [8:0] acsList_30_io_pm_0; // @[viterbi.scala 206:45:@2065.4]
  wire [8:0] acsList_30_io_pm_1; // @[viterbi.scala 206:45:@2065.4]
  wire [3:0] acsList_30_io_bm_0; // @[viterbi.scala 206:45:@2065.4]
  wire [3:0] acsList_30_io_bm_1; // @[viterbi.scala 206:45:@2065.4]
  wire  acsList_30_io_sel; // @[viterbi.scala 206:45:@2065.4]
  wire [8:0] acsList_30_io_dout; // @[viterbi.scala 206:45:@2065.4]
  wire [8:0] acsList_31_io_pm_0; // @[viterbi.scala 206:45:@2068.4]
  wire [8:0] acsList_31_io_pm_1; // @[viterbi.scala 206:45:@2068.4]
  wire [3:0] acsList_31_io_bm_0; // @[viterbi.scala 206:45:@2068.4]
  wire [3:0] acsList_31_io_bm_1; // @[viterbi.scala 206:45:@2068.4]
  wire  acsList_31_io_sel; // @[viterbi.scala 206:45:@2068.4]
  wire [8:0] acsList_31_io_dout; // @[viterbi.scala 206:45:@2068.4]
  wire [8:0] acsList_32_io_pm_0; // @[viterbi.scala 206:45:@2071.4]
  wire [8:0] acsList_32_io_pm_1; // @[viterbi.scala 206:45:@2071.4]
  wire [3:0] acsList_32_io_bm_0; // @[viterbi.scala 206:45:@2071.4]
  wire [3:0] acsList_32_io_bm_1; // @[viterbi.scala 206:45:@2071.4]
  wire  acsList_32_io_sel; // @[viterbi.scala 206:45:@2071.4]
  wire [8:0] acsList_32_io_dout; // @[viterbi.scala 206:45:@2071.4]
  wire [8:0] acsList_33_io_pm_0; // @[viterbi.scala 206:45:@2074.4]
  wire [8:0] acsList_33_io_pm_1; // @[viterbi.scala 206:45:@2074.4]
  wire [3:0] acsList_33_io_bm_0; // @[viterbi.scala 206:45:@2074.4]
  wire [3:0] acsList_33_io_bm_1; // @[viterbi.scala 206:45:@2074.4]
  wire  acsList_33_io_sel; // @[viterbi.scala 206:45:@2074.4]
  wire [8:0] acsList_33_io_dout; // @[viterbi.scala 206:45:@2074.4]
  wire [8:0] acsList_34_io_pm_0; // @[viterbi.scala 206:45:@2077.4]
  wire [8:0] acsList_34_io_pm_1; // @[viterbi.scala 206:45:@2077.4]
  wire [3:0] acsList_34_io_bm_0; // @[viterbi.scala 206:45:@2077.4]
  wire [3:0] acsList_34_io_bm_1; // @[viterbi.scala 206:45:@2077.4]
  wire  acsList_34_io_sel; // @[viterbi.scala 206:45:@2077.4]
  wire [8:0] acsList_34_io_dout; // @[viterbi.scala 206:45:@2077.4]
  wire [8:0] acsList_35_io_pm_0; // @[viterbi.scala 206:45:@2080.4]
  wire [8:0] acsList_35_io_pm_1; // @[viterbi.scala 206:45:@2080.4]
  wire [3:0] acsList_35_io_bm_0; // @[viterbi.scala 206:45:@2080.4]
  wire [3:0] acsList_35_io_bm_1; // @[viterbi.scala 206:45:@2080.4]
  wire  acsList_35_io_sel; // @[viterbi.scala 206:45:@2080.4]
  wire [8:0] acsList_35_io_dout; // @[viterbi.scala 206:45:@2080.4]
  wire [8:0] acsList_36_io_pm_0; // @[viterbi.scala 206:45:@2083.4]
  wire [8:0] acsList_36_io_pm_1; // @[viterbi.scala 206:45:@2083.4]
  wire [3:0] acsList_36_io_bm_0; // @[viterbi.scala 206:45:@2083.4]
  wire [3:0] acsList_36_io_bm_1; // @[viterbi.scala 206:45:@2083.4]
  wire  acsList_36_io_sel; // @[viterbi.scala 206:45:@2083.4]
  wire [8:0] acsList_36_io_dout; // @[viterbi.scala 206:45:@2083.4]
  wire [8:0] acsList_37_io_pm_0; // @[viterbi.scala 206:45:@2086.4]
  wire [8:0] acsList_37_io_pm_1; // @[viterbi.scala 206:45:@2086.4]
  wire [3:0] acsList_37_io_bm_0; // @[viterbi.scala 206:45:@2086.4]
  wire [3:0] acsList_37_io_bm_1; // @[viterbi.scala 206:45:@2086.4]
  wire  acsList_37_io_sel; // @[viterbi.scala 206:45:@2086.4]
  wire [8:0] acsList_37_io_dout; // @[viterbi.scala 206:45:@2086.4]
  wire [8:0] acsList_38_io_pm_0; // @[viterbi.scala 206:45:@2089.4]
  wire [8:0] acsList_38_io_pm_1; // @[viterbi.scala 206:45:@2089.4]
  wire [3:0] acsList_38_io_bm_0; // @[viterbi.scala 206:45:@2089.4]
  wire [3:0] acsList_38_io_bm_1; // @[viterbi.scala 206:45:@2089.4]
  wire  acsList_38_io_sel; // @[viterbi.scala 206:45:@2089.4]
  wire [8:0] acsList_38_io_dout; // @[viterbi.scala 206:45:@2089.4]
  wire [8:0] acsList_39_io_pm_0; // @[viterbi.scala 206:45:@2092.4]
  wire [8:0] acsList_39_io_pm_1; // @[viterbi.scala 206:45:@2092.4]
  wire [3:0] acsList_39_io_bm_0; // @[viterbi.scala 206:45:@2092.4]
  wire [3:0] acsList_39_io_bm_1; // @[viterbi.scala 206:45:@2092.4]
  wire  acsList_39_io_sel; // @[viterbi.scala 206:45:@2092.4]
  wire [8:0] acsList_39_io_dout; // @[viterbi.scala 206:45:@2092.4]
  wire [8:0] acsList_40_io_pm_0; // @[viterbi.scala 206:45:@2095.4]
  wire [8:0] acsList_40_io_pm_1; // @[viterbi.scala 206:45:@2095.4]
  wire [3:0] acsList_40_io_bm_0; // @[viterbi.scala 206:45:@2095.4]
  wire [3:0] acsList_40_io_bm_1; // @[viterbi.scala 206:45:@2095.4]
  wire  acsList_40_io_sel; // @[viterbi.scala 206:45:@2095.4]
  wire [8:0] acsList_40_io_dout; // @[viterbi.scala 206:45:@2095.4]
  wire [8:0] acsList_41_io_pm_0; // @[viterbi.scala 206:45:@2098.4]
  wire [8:0] acsList_41_io_pm_1; // @[viterbi.scala 206:45:@2098.4]
  wire [3:0] acsList_41_io_bm_0; // @[viterbi.scala 206:45:@2098.4]
  wire [3:0] acsList_41_io_bm_1; // @[viterbi.scala 206:45:@2098.4]
  wire  acsList_41_io_sel; // @[viterbi.scala 206:45:@2098.4]
  wire [8:0] acsList_41_io_dout; // @[viterbi.scala 206:45:@2098.4]
  wire [8:0] acsList_42_io_pm_0; // @[viterbi.scala 206:45:@2101.4]
  wire [8:0] acsList_42_io_pm_1; // @[viterbi.scala 206:45:@2101.4]
  wire [3:0] acsList_42_io_bm_0; // @[viterbi.scala 206:45:@2101.4]
  wire [3:0] acsList_42_io_bm_1; // @[viterbi.scala 206:45:@2101.4]
  wire  acsList_42_io_sel; // @[viterbi.scala 206:45:@2101.4]
  wire [8:0] acsList_42_io_dout; // @[viterbi.scala 206:45:@2101.4]
  wire [8:0] acsList_43_io_pm_0; // @[viterbi.scala 206:45:@2104.4]
  wire [8:0] acsList_43_io_pm_1; // @[viterbi.scala 206:45:@2104.4]
  wire [3:0] acsList_43_io_bm_0; // @[viterbi.scala 206:45:@2104.4]
  wire [3:0] acsList_43_io_bm_1; // @[viterbi.scala 206:45:@2104.4]
  wire  acsList_43_io_sel; // @[viterbi.scala 206:45:@2104.4]
  wire [8:0] acsList_43_io_dout; // @[viterbi.scala 206:45:@2104.4]
  wire [8:0] acsList_44_io_pm_0; // @[viterbi.scala 206:45:@2107.4]
  wire [8:0] acsList_44_io_pm_1; // @[viterbi.scala 206:45:@2107.4]
  wire [3:0] acsList_44_io_bm_0; // @[viterbi.scala 206:45:@2107.4]
  wire [3:0] acsList_44_io_bm_1; // @[viterbi.scala 206:45:@2107.4]
  wire  acsList_44_io_sel; // @[viterbi.scala 206:45:@2107.4]
  wire [8:0] acsList_44_io_dout; // @[viterbi.scala 206:45:@2107.4]
  wire [8:0] acsList_45_io_pm_0; // @[viterbi.scala 206:45:@2110.4]
  wire [8:0] acsList_45_io_pm_1; // @[viterbi.scala 206:45:@2110.4]
  wire [3:0] acsList_45_io_bm_0; // @[viterbi.scala 206:45:@2110.4]
  wire [3:0] acsList_45_io_bm_1; // @[viterbi.scala 206:45:@2110.4]
  wire  acsList_45_io_sel; // @[viterbi.scala 206:45:@2110.4]
  wire [8:0] acsList_45_io_dout; // @[viterbi.scala 206:45:@2110.4]
  wire [8:0] acsList_46_io_pm_0; // @[viterbi.scala 206:45:@2113.4]
  wire [8:0] acsList_46_io_pm_1; // @[viterbi.scala 206:45:@2113.4]
  wire [3:0] acsList_46_io_bm_0; // @[viterbi.scala 206:45:@2113.4]
  wire [3:0] acsList_46_io_bm_1; // @[viterbi.scala 206:45:@2113.4]
  wire  acsList_46_io_sel; // @[viterbi.scala 206:45:@2113.4]
  wire [8:0] acsList_46_io_dout; // @[viterbi.scala 206:45:@2113.4]
  wire [8:0] acsList_47_io_pm_0; // @[viterbi.scala 206:45:@2116.4]
  wire [8:0] acsList_47_io_pm_1; // @[viterbi.scala 206:45:@2116.4]
  wire [3:0] acsList_47_io_bm_0; // @[viterbi.scala 206:45:@2116.4]
  wire [3:0] acsList_47_io_bm_1; // @[viterbi.scala 206:45:@2116.4]
  wire  acsList_47_io_sel; // @[viterbi.scala 206:45:@2116.4]
  wire [8:0] acsList_47_io_dout; // @[viterbi.scala 206:45:@2116.4]
  wire [8:0] acsList_48_io_pm_0; // @[viterbi.scala 206:45:@2119.4]
  wire [8:0] acsList_48_io_pm_1; // @[viterbi.scala 206:45:@2119.4]
  wire [3:0] acsList_48_io_bm_0; // @[viterbi.scala 206:45:@2119.4]
  wire [3:0] acsList_48_io_bm_1; // @[viterbi.scala 206:45:@2119.4]
  wire  acsList_48_io_sel; // @[viterbi.scala 206:45:@2119.4]
  wire [8:0] acsList_48_io_dout; // @[viterbi.scala 206:45:@2119.4]
  wire [8:0] acsList_49_io_pm_0; // @[viterbi.scala 206:45:@2122.4]
  wire [8:0] acsList_49_io_pm_1; // @[viterbi.scala 206:45:@2122.4]
  wire [3:0] acsList_49_io_bm_0; // @[viterbi.scala 206:45:@2122.4]
  wire [3:0] acsList_49_io_bm_1; // @[viterbi.scala 206:45:@2122.4]
  wire  acsList_49_io_sel; // @[viterbi.scala 206:45:@2122.4]
  wire [8:0] acsList_49_io_dout; // @[viterbi.scala 206:45:@2122.4]
  wire [8:0] acsList_50_io_pm_0; // @[viterbi.scala 206:45:@2125.4]
  wire [8:0] acsList_50_io_pm_1; // @[viterbi.scala 206:45:@2125.4]
  wire [3:0] acsList_50_io_bm_0; // @[viterbi.scala 206:45:@2125.4]
  wire [3:0] acsList_50_io_bm_1; // @[viterbi.scala 206:45:@2125.4]
  wire  acsList_50_io_sel; // @[viterbi.scala 206:45:@2125.4]
  wire [8:0] acsList_50_io_dout; // @[viterbi.scala 206:45:@2125.4]
  wire [8:0] acsList_51_io_pm_0; // @[viterbi.scala 206:45:@2128.4]
  wire [8:0] acsList_51_io_pm_1; // @[viterbi.scala 206:45:@2128.4]
  wire [3:0] acsList_51_io_bm_0; // @[viterbi.scala 206:45:@2128.4]
  wire [3:0] acsList_51_io_bm_1; // @[viterbi.scala 206:45:@2128.4]
  wire  acsList_51_io_sel; // @[viterbi.scala 206:45:@2128.4]
  wire [8:0] acsList_51_io_dout; // @[viterbi.scala 206:45:@2128.4]
  wire [8:0] acsList_52_io_pm_0; // @[viterbi.scala 206:45:@2131.4]
  wire [8:0] acsList_52_io_pm_1; // @[viterbi.scala 206:45:@2131.4]
  wire [3:0] acsList_52_io_bm_0; // @[viterbi.scala 206:45:@2131.4]
  wire [3:0] acsList_52_io_bm_1; // @[viterbi.scala 206:45:@2131.4]
  wire  acsList_52_io_sel; // @[viterbi.scala 206:45:@2131.4]
  wire [8:0] acsList_52_io_dout; // @[viterbi.scala 206:45:@2131.4]
  wire [8:0] acsList_53_io_pm_0; // @[viterbi.scala 206:45:@2134.4]
  wire [8:0] acsList_53_io_pm_1; // @[viterbi.scala 206:45:@2134.4]
  wire [3:0] acsList_53_io_bm_0; // @[viterbi.scala 206:45:@2134.4]
  wire [3:0] acsList_53_io_bm_1; // @[viterbi.scala 206:45:@2134.4]
  wire  acsList_53_io_sel; // @[viterbi.scala 206:45:@2134.4]
  wire [8:0] acsList_53_io_dout; // @[viterbi.scala 206:45:@2134.4]
  wire [8:0] acsList_54_io_pm_0; // @[viterbi.scala 206:45:@2137.4]
  wire [8:0] acsList_54_io_pm_1; // @[viterbi.scala 206:45:@2137.4]
  wire [3:0] acsList_54_io_bm_0; // @[viterbi.scala 206:45:@2137.4]
  wire [3:0] acsList_54_io_bm_1; // @[viterbi.scala 206:45:@2137.4]
  wire  acsList_54_io_sel; // @[viterbi.scala 206:45:@2137.4]
  wire [8:0] acsList_54_io_dout; // @[viterbi.scala 206:45:@2137.4]
  wire [8:0] acsList_55_io_pm_0; // @[viterbi.scala 206:45:@2140.4]
  wire [8:0] acsList_55_io_pm_1; // @[viterbi.scala 206:45:@2140.4]
  wire [3:0] acsList_55_io_bm_0; // @[viterbi.scala 206:45:@2140.4]
  wire [3:0] acsList_55_io_bm_1; // @[viterbi.scala 206:45:@2140.4]
  wire  acsList_55_io_sel; // @[viterbi.scala 206:45:@2140.4]
  wire [8:0] acsList_55_io_dout; // @[viterbi.scala 206:45:@2140.4]
  wire [8:0] acsList_56_io_pm_0; // @[viterbi.scala 206:45:@2143.4]
  wire [8:0] acsList_56_io_pm_1; // @[viterbi.scala 206:45:@2143.4]
  wire [3:0] acsList_56_io_bm_0; // @[viterbi.scala 206:45:@2143.4]
  wire [3:0] acsList_56_io_bm_1; // @[viterbi.scala 206:45:@2143.4]
  wire  acsList_56_io_sel; // @[viterbi.scala 206:45:@2143.4]
  wire [8:0] acsList_56_io_dout; // @[viterbi.scala 206:45:@2143.4]
  wire [8:0] acsList_57_io_pm_0; // @[viterbi.scala 206:45:@2146.4]
  wire [8:0] acsList_57_io_pm_1; // @[viterbi.scala 206:45:@2146.4]
  wire [3:0] acsList_57_io_bm_0; // @[viterbi.scala 206:45:@2146.4]
  wire [3:0] acsList_57_io_bm_1; // @[viterbi.scala 206:45:@2146.4]
  wire  acsList_57_io_sel; // @[viterbi.scala 206:45:@2146.4]
  wire [8:0] acsList_57_io_dout; // @[viterbi.scala 206:45:@2146.4]
  wire [8:0] acsList_58_io_pm_0; // @[viterbi.scala 206:45:@2149.4]
  wire [8:0] acsList_58_io_pm_1; // @[viterbi.scala 206:45:@2149.4]
  wire [3:0] acsList_58_io_bm_0; // @[viterbi.scala 206:45:@2149.4]
  wire [3:0] acsList_58_io_bm_1; // @[viterbi.scala 206:45:@2149.4]
  wire  acsList_58_io_sel; // @[viterbi.scala 206:45:@2149.4]
  wire [8:0] acsList_58_io_dout; // @[viterbi.scala 206:45:@2149.4]
  wire [8:0] acsList_59_io_pm_0; // @[viterbi.scala 206:45:@2152.4]
  wire [8:0] acsList_59_io_pm_1; // @[viterbi.scala 206:45:@2152.4]
  wire [3:0] acsList_59_io_bm_0; // @[viterbi.scala 206:45:@2152.4]
  wire [3:0] acsList_59_io_bm_1; // @[viterbi.scala 206:45:@2152.4]
  wire  acsList_59_io_sel; // @[viterbi.scala 206:45:@2152.4]
  wire [8:0] acsList_59_io_dout; // @[viterbi.scala 206:45:@2152.4]
  wire [8:0] acsList_60_io_pm_0; // @[viterbi.scala 206:45:@2155.4]
  wire [8:0] acsList_60_io_pm_1; // @[viterbi.scala 206:45:@2155.4]
  wire [3:0] acsList_60_io_bm_0; // @[viterbi.scala 206:45:@2155.4]
  wire [3:0] acsList_60_io_bm_1; // @[viterbi.scala 206:45:@2155.4]
  wire  acsList_60_io_sel; // @[viterbi.scala 206:45:@2155.4]
  wire [8:0] acsList_60_io_dout; // @[viterbi.scala 206:45:@2155.4]
  wire [8:0] acsList_61_io_pm_0; // @[viterbi.scala 206:45:@2158.4]
  wire [8:0] acsList_61_io_pm_1; // @[viterbi.scala 206:45:@2158.4]
  wire [3:0] acsList_61_io_bm_0; // @[viterbi.scala 206:45:@2158.4]
  wire [3:0] acsList_61_io_bm_1; // @[viterbi.scala 206:45:@2158.4]
  wire  acsList_61_io_sel; // @[viterbi.scala 206:45:@2158.4]
  wire [8:0] acsList_61_io_dout; // @[viterbi.scala 206:45:@2158.4]
  wire [8:0] acsList_62_io_pm_0; // @[viterbi.scala 206:45:@2161.4]
  wire [8:0] acsList_62_io_pm_1; // @[viterbi.scala 206:45:@2161.4]
  wire [3:0] acsList_62_io_bm_0; // @[viterbi.scala 206:45:@2161.4]
  wire [3:0] acsList_62_io_bm_1; // @[viterbi.scala 206:45:@2161.4]
  wire  acsList_62_io_sel; // @[viterbi.scala 206:45:@2161.4]
  wire [8:0] acsList_62_io_dout; // @[viterbi.scala 206:45:@2161.4]
  wire [8:0] acsList_63_io_pm_0; // @[viterbi.scala 206:45:@2164.4]
  wire [8:0] acsList_63_io_pm_1; // @[viterbi.scala 206:45:@2164.4]
  wire [3:0] acsList_63_io_bm_0; // @[viterbi.scala 206:45:@2164.4]
  wire [3:0] acsList_63_io_bm_1; // @[viterbi.scala 206:45:@2164.4]
  wire  acsList_63_io_sel; // @[viterbi.scala 206:45:@2164.4]
  wire [8:0] acsList_63_io_dout; // @[viterbi.scala 206:45:@2164.4]
  wire [8:0] _GEN_128; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_129; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_130; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_131; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_132; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_133; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_134; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_135; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_136; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_137; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_138; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_139; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_140; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_141; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_142; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_143; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_144; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_145; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_146; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_147; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_148; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_149; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_150; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_151; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_152; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_153; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_154; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_155; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_156; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_157; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_158; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_159; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_160; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_161; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_162; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_163; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_164; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_165; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_166; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_167; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_168; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_169; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_170; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_171; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_172; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_173; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_174; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_175; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_176; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_177; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_178; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_179; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_180; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_181; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_182; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_183; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_184; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_185; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_186; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_187; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_188; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_189; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_190; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_191; // @[viterbi.scala 198:18:@1909.4]
  wire [8:0] _GEN_384; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_385; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_386; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_387; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_388; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_389; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_390; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_391; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_392; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_393; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_394; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_395; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_396; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_397; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_398; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_399; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_400; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_401; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_402; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_403; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_404; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_405; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_406; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_407; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_408; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_409; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_410; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_411; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_412; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_413; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_414; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_415; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_416; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_417; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_418; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_419; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_420; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_421; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_422; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_423; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_424; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_425; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_426; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_427; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_428; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_429; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_430; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_431; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_432; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_433; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_434; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_435; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_436; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_437; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_438; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_439; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_440; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_441; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_442; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_443; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_444; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_445; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_446; // @[viterbi.scala 235:23:@2551.4]
  wire [8:0] _GEN_447; // @[viterbi.scala 235:23:@2551.4]
  ACSUnit acsList_0 ( // @[viterbi.scala 206:45:@1975.4]
    .io_pm_0(acsList_0_io_pm_0),
    .io_pm_1(acsList_0_io_pm_1),
    .io_bm_0(acsList_0_io_bm_0),
    .io_bm_1(acsList_0_io_bm_1),
    .io_sel(acsList_0_io_sel),
    .io_dout(acsList_0_io_dout)
  );
  ACSUnit acsList_1 ( // @[viterbi.scala 206:45:@1978.4]
    .io_pm_0(acsList_1_io_pm_0),
    .io_pm_1(acsList_1_io_pm_1),
    .io_bm_0(acsList_1_io_bm_0),
    .io_bm_1(acsList_1_io_bm_1),
    .io_sel(acsList_1_io_sel),
    .io_dout(acsList_1_io_dout)
  );
  ACSUnit acsList_2 ( // @[viterbi.scala 206:45:@1981.4]
    .io_pm_0(acsList_2_io_pm_0),
    .io_pm_1(acsList_2_io_pm_1),
    .io_bm_0(acsList_2_io_bm_0),
    .io_bm_1(acsList_2_io_bm_1),
    .io_sel(acsList_2_io_sel),
    .io_dout(acsList_2_io_dout)
  );
  ACSUnit acsList_3 ( // @[viterbi.scala 206:45:@1984.4]
    .io_pm_0(acsList_3_io_pm_0),
    .io_pm_1(acsList_3_io_pm_1),
    .io_bm_0(acsList_3_io_bm_0),
    .io_bm_1(acsList_3_io_bm_1),
    .io_sel(acsList_3_io_sel),
    .io_dout(acsList_3_io_dout)
  );
  ACSUnit acsList_4 ( // @[viterbi.scala 206:45:@1987.4]
    .io_pm_0(acsList_4_io_pm_0),
    .io_pm_1(acsList_4_io_pm_1),
    .io_bm_0(acsList_4_io_bm_0),
    .io_bm_1(acsList_4_io_bm_1),
    .io_sel(acsList_4_io_sel),
    .io_dout(acsList_4_io_dout)
  );
  ACSUnit acsList_5 ( // @[viterbi.scala 206:45:@1990.4]
    .io_pm_0(acsList_5_io_pm_0),
    .io_pm_1(acsList_5_io_pm_1),
    .io_bm_0(acsList_5_io_bm_0),
    .io_bm_1(acsList_5_io_bm_1),
    .io_sel(acsList_5_io_sel),
    .io_dout(acsList_5_io_dout)
  );
  ACSUnit acsList_6 ( // @[viterbi.scala 206:45:@1993.4]
    .io_pm_0(acsList_6_io_pm_0),
    .io_pm_1(acsList_6_io_pm_1),
    .io_bm_0(acsList_6_io_bm_0),
    .io_bm_1(acsList_6_io_bm_1),
    .io_sel(acsList_6_io_sel),
    .io_dout(acsList_6_io_dout)
  );
  ACSUnit acsList_7 ( // @[viterbi.scala 206:45:@1996.4]
    .io_pm_0(acsList_7_io_pm_0),
    .io_pm_1(acsList_7_io_pm_1),
    .io_bm_0(acsList_7_io_bm_0),
    .io_bm_1(acsList_7_io_bm_1),
    .io_sel(acsList_7_io_sel),
    .io_dout(acsList_7_io_dout)
  );
  ACSUnit acsList_8 ( // @[viterbi.scala 206:45:@1999.4]
    .io_pm_0(acsList_8_io_pm_0),
    .io_pm_1(acsList_8_io_pm_1),
    .io_bm_0(acsList_8_io_bm_0),
    .io_bm_1(acsList_8_io_bm_1),
    .io_sel(acsList_8_io_sel),
    .io_dout(acsList_8_io_dout)
  );
  ACSUnit acsList_9 ( // @[viterbi.scala 206:45:@2002.4]
    .io_pm_0(acsList_9_io_pm_0),
    .io_pm_1(acsList_9_io_pm_1),
    .io_bm_0(acsList_9_io_bm_0),
    .io_bm_1(acsList_9_io_bm_1),
    .io_sel(acsList_9_io_sel),
    .io_dout(acsList_9_io_dout)
  );
  ACSUnit acsList_10 ( // @[viterbi.scala 206:45:@2005.4]
    .io_pm_0(acsList_10_io_pm_0),
    .io_pm_1(acsList_10_io_pm_1),
    .io_bm_0(acsList_10_io_bm_0),
    .io_bm_1(acsList_10_io_bm_1),
    .io_sel(acsList_10_io_sel),
    .io_dout(acsList_10_io_dout)
  );
  ACSUnit acsList_11 ( // @[viterbi.scala 206:45:@2008.4]
    .io_pm_0(acsList_11_io_pm_0),
    .io_pm_1(acsList_11_io_pm_1),
    .io_bm_0(acsList_11_io_bm_0),
    .io_bm_1(acsList_11_io_bm_1),
    .io_sel(acsList_11_io_sel),
    .io_dout(acsList_11_io_dout)
  );
  ACSUnit acsList_12 ( // @[viterbi.scala 206:45:@2011.4]
    .io_pm_0(acsList_12_io_pm_0),
    .io_pm_1(acsList_12_io_pm_1),
    .io_bm_0(acsList_12_io_bm_0),
    .io_bm_1(acsList_12_io_bm_1),
    .io_sel(acsList_12_io_sel),
    .io_dout(acsList_12_io_dout)
  );
  ACSUnit acsList_13 ( // @[viterbi.scala 206:45:@2014.4]
    .io_pm_0(acsList_13_io_pm_0),
    .io_pm_1(acsList_13_io_pm_1),
    .io_bm_0(acsList_13_io_bm_0),
    .io_bm_1(acsList_13_io_bm_1),
    .io_sel(acsList_13_io_sel),
    .io_dout(acsList_13_io_dout)
  );
  ACSUnit acsList_14 ( // @[viterbi.scala 206:45:@2017.4]
    .io_pm_0(acsList_14_io_pm_0),
    .io_pm_1(acsList_14_io_pm_1),
    .io_bm_0(acsList_14_io_bm_0),
    .io_bm_1(acsList_14_io_bm_1),
    .io_sel(acsList_14_io_sel),
    .io_dout(acsList_14_io_dout)
  );
  ACSUnit acsList_15 ( // @[viterbi.scala 206:45:@2020.4]
    .io_pm_0(acsList_15_io_pm_0),
    .io_pm_1(acsList_15_io_pm_1),
    .io_bm_0(acsList_15_io_bm_0),
    .io_bm_1(acsList_15_io_bm_1),
    .io_sel(acsList_15_io_sel),
    .io_dout(acsList_15_io_dout)
  );
  ACSUnit acsList_16 ( // @[viterbi.scala 206:45:@2023.4]
    .io_pm_0(acsList_16_io_pm_0),
    .io_pm_1(acsList_16_io_pm_1),
    .io_bm_0(acsList_16_io_bm_0),
    .io_bm_1(acsList_16_io_bm_1),
    .io_sel(acsList_16_io_sel),
    .io_dout(acsList_16_io_dout)
  );
  ACSUnit acsList_17 ( // @[viterbi.scala 206:45:@2026.4]
    .io_pm_0(acsList_17_io_pm_0),
    .io_pm_1(acsList_17_io_pm_1),
    .io_bm_0(acsList_17_io_bm_0),
    .io_bm_1(acsList_17_io_bm_1),
    .io_sel(acsList_17_io_sel),
    .io_dout(acsList_17_io_dout)
  );
  ACSUnit acsList_18 ( // @[viterbi.scala 206:45:@2029.4]
    .io_pm_0(acsList_18_io_pm_0),
    .io_pm_1(acsList_18_io_pm_1),
    .io_bm_0(acsList_18_io_bm_0),
    .io_bm_1(acsList_18_io_bm_1),
    .io_sel(acsList_18_io_sel),
    .io_dout(acsList_18_io_dout)
  );
  ACSUnit acsList_19 ( // @[viterbi.scala 206:45:@2032.4]
    .io_pm_0(acsList_19_io_pm_0),
    .io_pm_1(acsList_19_io_pm_1),
    .io_bm_0(acsList_19_io_bm_0),
    .io_bm_1(acsList_19_io_bm_1),
    .io_sel(acsList_19_io_sel),
    .io_dout(acsList_19_io_dout)
  );
  ACSUnit acsList_20 ( // @[viterbi.scala 206:45:@2035.4]
    .io_pm_0(acsList_20_io_pm_0),
    .io_pm_1(acsList_20_io_pm_1),
    .io_bm_0(acsList_20_io_bm_0),
    .io_bm_1(acsList_20_io_bm_1),
    .io_sel(acsList_20_io_sel),
    .io_dout(acsList_20_io_dout)
  );
  ACSUnit acsList_21 ( // @[viterbi.scala 206:45:@2038.4]
    .io_pm_0(acsList_21_io_pm_0),
    .io_pm_1(acsList_21_io_pm_1),
    .io_bm_0(acsList_21_io_bm_0),
    .io_bm_1(acsList_21_io_bm_1),
    .io_sel(acsList_21_io_sel),
    .io_dout(acsList_21_io_dout)
  );
  ACSUnit acsList_22 ( // @[viterbi.scala 206:45:@2041.4]
    .io_pm_0(acsList_22_io_pm_0),
    .io_pm_1(acsList_22_io_pm_1),
    .io_bm_0(acsList_22_io_bm_0),
    .io_bm_1(acsList_22_io_bm_1),
    .io_sel(acsList_22_io_sel),
    .io_dout(acsList_22_io_dout)
  );
  ACSUnit acsList_23 ( // @[viterbi.scala 206:45:@2044.4]
    .io_pm_0(acsList_23_io_pm_0),
    .io_pm_1(acsList_23_io_pm_1),
    .io_bm_0(acsList_23_io_bm_0),
    .io_bm_1(acsList_23_io_bm_1),
    .io_sel(acsList_23_io_sel),
    .io_dout(acsList_23_io_dout)
  );
  ACSUnit acsList_24 ( // @[viterbi.scala 206:45:@2047.4]
    .io_pm_0(acsList_24_io_pm_0),
    .io_pm_1(acsList_24_io_pm_1),
    .io_bm_0(acsList_24_io_bm_0),
    .io_bm_1(acsList_24_io_bm_1),
    .io_sel(acsList_24_io_sel),
    .io_dout(acsList_24_io_dout)
  );
  ACSUnit acsList_25 ( // @[viterbi.scala 206:45:@2050.4]
    .io_pm_0(acsList_25_io_pm_0),
    .io_pm_1(acsList_25_io_pm_1),
    .io_bm_0(acsList_25_io_bm_0),
    .io_bm_1(acsList_25_io_bm_1),
    .io_sel(acsList_25_io_sel),
    .io_dout(acsList_25_io_dout)
  );
  ACSUnit acsList_26 ( // @[viterbi.scala 206:45:@2053.4]
    .io_pm_0(acsList_26_io_pm_0),
    .io_pm_1(acsList_26_io_pm_1),
    .io_bm_0(acsList_26_io_bm_0),
    .io_bm_1(acsList_26_io_bm_1),
    .io_sel(acsList_26_io_sel),
    .io_dout(acsList_26_io_dout)
  );
  ACSUnit acsList_27 ( // @[viterbi.scala 206:45:@2056.4]
    .io_pm_0(acsList_27_io_pm_0),
    .io_pm_1(acsList_27_io_pm_1),
    .io_bm_0(acsList_27_io_bm_0),
    .io_bm_1(acsList_27_io_bm_1),
    .io_sel(acsList_27_io_sel),
    .io_dout(acsList_27_io_dout)
  );
  ACSUnit acsList_28 ( // @[viterbi.scala 206:45:@2059.4]
    .io_pm_0(acsList_28_io_pm_0),
    .io_pm_1(acsList_28_io_pm_1),
    .io_bm_0(acsList_28_io_bm_0),
    .io_bm_1(acsList_28_io_bm_1),
    .io_sel(acsList_28_io_sel),
    .io_dout(acsList_28_io_dout)
  );
  ACSUnit acsList_29 ( // @[viterbi.scala 206:45:@2062.4]
    .io_pm_0(acsList_29_io_pm_0),
    .io_pm_1(acsList_29_io_pm_1),
    .io_bm_0(acsList_29_io_bm_0),
    .io_bm_1(acsList_29_io_bm_1),
    .io_sel(acsList_29_io_sel),
    .io_dout(acsList_29_io_dout)
  );
  ACSUnit acsList_30 ( // @[viterbi.scala 206:45:@2065.4]
    .io_pm_0(acsList_30_io_pm_0),
    .io_pm_1(acsList_30_io_pm_1),
    .io_bm_0(acsList_30_io_bm_0),
    .io_bm_1(acsList_30_io_bm_1),
    .io_sel(acsList_30_io_sel),
    .io_dout(acsList_30_io_dout)
  );
  ACSUnit acsList_31 ( // @[viterbi.scala 206:45:@2068.4]
    .io_pm_0(acsList_31_io_pm_0),
    .io_pm_1(acsList_31_io_pm_1),
    .io_bm_0(acsList_31_io_bm_0),
    .io_bm_1(acsList_31_io_bm_1),
    .io_sel(acsList_31_io_sel),
    .io_dout(acsList_31_io_dout)
  );
  ACSUnit acsList_32 ( // @[viterbi.scala 206:45:@2071.4]
    .io_pm_0(acsList_32_io_pm_0),
    .io_pm_1(acsList_32_io_pm_1),
    .io_bm_0(acsList_32_io_bm_0),
    .io_bm_1(acsList_32_io_bm_1),
    .io_sel(acsList_32_io_sel),
    .io_dout(acsList_32_io_dout)
  );
  ACSUnit acsList_33 ( // @[viterbi.scala 206:45:@2074.4]
    .io_pm_0(acsList_33_io_pm_0),
    .io_pm_1(acsList_33_io_pm_1),
    .io_bm_0(acsList_33_io_bm_0),
    .io_bm_1(acsList_33_io_bm_1),
    .io_sel(acsList_33_io_sel),
    .io_dout(acsList_33_io_dout)
  );
  ACSUnit acsList_34 ( // @[viterbi.scala 206:45:@2077.4]
    .io_pm_0(acsList_34_io_pm_0),
    .io_pm_1(acsList_34_io_pm_1),
    .io_bm_0(acsList_34_io_bm_0),
    .io_bm_1(acsList_34_io_bm_1),
    .io_sel(acsList_34_io_sel),
    .io_dout(acsList_34_io_dout)
  );
  ACSUnit acsList_35 ( // @[viterbi.scala 206:45:@2080.4]
    .io_pm_0(acsList_35_io_pm_0),
    .io_pm_1(acsList_35_io_pm_1),
    .io_bm_0(acsList_35_io_bm_0),
    .io_bm_1(acsList_35_io_bm_1),
    .io_sel(acsList_35_io_sel),
    .io_dout(acsList_35_io_dout)
  );
  ACSUnit acsList_36 ( // @[viterbi.scala 206:45:@2083.4]
    .io_pm_0(acsList_36_io_pm_0),
    .io_pm_1(acsList_36_io_pm_1),
    .io_bm_0(acsList_36_io_bm_0),
    .io_bm_1(acsList_36_io_bm_1),
    .io_sel(acsList_36_io_sel),
    .io_dout(acsList_36_io_dout)
  );
  ACSUnit acsList_37 ( // @[viterbi.scala 206:45:@2086.4]
    .io_pm_0(acsList_37_io_pm_0),
    .io_pm_1(acsList_37_io_pm_1),
    .io_bm_0(acsList_37_io_bm_0),
    .io_bm_1(acsList_37_io_bm_1),
    .io_sel(acsList_37_io_sel),
    .io_dout(acsList_37_io_dout)
  );
  ACSUnit acsList_38 ( // @[viterbi.scala 206:45:@2089.4]
    .io_pm_0(acsList_38_io_pm_0),
    .io_pm_1(acsList_38_io_pm_1),
    .io_bm_0(acsList_38_io_bm_0),
    .io_bm_1(acsList_38_io_bm_1),
    .io_sel(acsList_38_io_sel),
    .io_dout(acsList_38_io_dout)
  );
  ACSUnit acsList_39 ( // @[viterbi.scala 206:45:@2092.4]
    .io_pm_0(acsList_39_io_pm_0),
    .io_pm_1(acsList_39_io_pm_1),
    .io_bm_0(acsList_39_io_bm_0),
    .io_bm_1(acsList_39_io_bm_1),
    .io_sel(acsList_39_io_sel),
    .io_dout(acsList_39_io_dout)
  );
  ACSUnit acsList_40 ( // @[viterbi.scala 206:45:@2095.4]
    .io_pm_0(acsList_40_io_pm_0),
    .io_pm_1(acsList_40_io_pm_1),
    .io_bm_0(acsList_40_io_bm_0),
    .io_bm_1(acsList_40_io_bm_1),
    .io_sel(acsList_40_io_sel),
    .io_dout(acsList_40_io_dout)
  );
  ACSUnit acsList_41 ( // @[viterbi.scala 206:45:@2098.4]
    .io_pm_0(acsList_41_io_pm_0),
    .io_pm_1(acsList_41_io_pm_1),
    .io_bm_0(acsList_41_io_bm_0),
    .io_bm_1(acsList_41_io_bm_1),
    .io_sel(acsList_41_io_sel),
    .io_dout(acsList_41_io_dout)
  );
  ACSUnit acsList_42 ( // @[viterbi.scala 206:45:@2101.4]
    .io_pm_0(acsList_42_io_pm_0),
    .io_pm_1(acsList_42_io_pm_1),
    .io_bm_0(acsList_42_io_bm_0),
    .io_bm_1(acsList_42_io_bm_1),
    .io_sel(acsList_42_io_sel),
    .io_dout(acsList_42_io_dout)
  );
  ACSUnit acsList_43 ( // @[viterbi.scala 206:45:@2104.4]
    .io_pm_0(acsList_43_io_pm_0),
    .io_pm_1(acsList_43_io_pm_1),
    .io_bm_0(acsList_43_io_bm_0),
    .io_bm_1(acsList_43_io_bm_1),
    .io_sel(acsList_43_io_sel),
    .io_dout(acsList_43_io_dout)
  );
  ACSUnit acsList_44 ( // @[viterbi.scala 206:45:@2107.4]
    .io_pm_0(acsList_44_io_pm_0),
    .io_pm_1(acsList_44_io_pm_1),
    .io_bm_0(acsList_44_io_bm_0),
    .io_bm_1(acsList_44_io_bm_1),
    .io_sel(acsList_44_io_sel),
    .io_dout(acsList_44_io_dout)
  );
  ACSUnit acsList_45 ( // @[viterbi.scala 206:45:@2110.4]
    .io_pm_0(acsList_45_io_pm_0),
    .io_pm_1(acsList_45_io_pm_1),
    .io_bm_0(acsList_45_io_bm_0),
    .io_bm_1(acsList_45_io_bm_1),
    .io_sel(acsList_45_io_sel),
    .io_dout(acsList_45_io_dout)
  );
  ACSUnit acsList_46 ( // @[viterbi.scala 206:45:@2113.4]
    .io_pm_0(acsList_46_io_pm_0),
    .io_pm_1(acsList_46_io_pm_1),
    .io_bm_0(acsList_46_io_bm_0),
    .io_bm_1(acsList_46_io_bm_1),
    .io_sel(acsList_46_io_sel),
    .io_dout(acsList_46_io_dout)
  );
  ACSUnit acsList_47 ( // @[viterbi.scala 206:45:@2116.4]
    .io_pm_0(acsList_47_io_pm_0),
    .io_pm_1(acsList_47_io_pm_1),
    .io_bm_0(acsList_47_io_bm_0),
    .io_bm_1(acsList_47_io_bm_1),
    .io_sel(acsList_47_io_sel),
    .io_dout(acsList_47_io_dout)
  );
  ACSUnit acsList_48 ( // @[viterbi.scala 206:45:@2119.4]
    .io_pm_0(acsList_48_io_pm_0),
    .io_pm_1(acsList_48_io_pm_1),
    .io_bm_0(acsList_48_io_bm_0),
    .io_bm_1(acsList_48_io_bm_1),
    .io_sel(acsList_48_io_sel),
    .io_dout(acsList_48_io_dout)
  );
  ACSUnit acsList_49 ( // @[viterbi.scala 206:45:@2122.4]
    .io_pm_0(acsList_49_io_pm_0),
    .io_pm_1(acsList_49_io_pm_1),
    .io_bm_0(acsList_49_io_bm_0),
    .io_bm_1(acsList_49_io_bm_1),
    .io_sel(acsList_49_io_sel),
    .io_dout(acsList_49_io_dout)
  );
  ACSUnit acsList_50 ( // @[viterbi.scala 206:45:@2125.4]
    .io_pm_0(acsList_50_io_pm_0),
    .io_pm_1(acsList_50_io_pm_1),
    .io_bm_0(acsList_50_io_bm_0),
    .io_bm_1(acsList_50_io_bm_1),
    .io_sel(acsList_50_io_sel),
    .io_dout(acsList_50_io_dout)
  );
  ACSUnit acsList_51 ( // @[viterbi.scala 206:45:@2128.4]
    .io_pm_0(acsList_51_io_pm_0),
    .io_pm_1(acsList_51_io_pm_1),
    .io_bm_0(acsList_51_io_bm_0),
    .io_bm_1(acsList_51_io_bm_1),
    .io_sel(acsList_51_io_sel),
    .io_dout(acsList_51_io_dout)
  );
  ACSUnit acsList_52 ( // @[viterbi.scala 206:45:@2131.4]
    .io_pm_0(acsList_52_io_pm_0),
    .io_pm_1(acsList_52_io_pm_1),
    .io_bm_0(acsList_52_io_bm_0),
    .io_bm_1(acsList_52_io_bm_1),
    .io_sel(acsList_52_io_sel),
    .io_dout(acsList_52_io_dout)
  );
  ACSUnit acsList_53 ( // @[viterbi.scala 206:45:@2134.4]
    .io_pm_0(acsList_53_io_pm_0),
    .io_pm_1(acsList_53_io_pm_1),
    .io_bm_0(acsList_53_io_bm_0),
    .io_bm_1(acsList_53_io_bm_1),
    .io_sel(acsList_53_io_sel),
    .io_dout(acsList_53_io_dout)
  );
  ACSUnit acsList_54 ( // @[viterbi.scala 206:45:@2137.4]
    .io_pm_0(acsList_54_io_pm_0),
    .io_pm_1(acsList_54_io_pm_1),
    .io_bm_0(acsList_54_io_bm_0),
    .io_bm_1(acsList_54_io_bm_1),
    .io_sel(acsList_54_io_sel),
    .io_dout(acsList_54_io_dout)
  );
  ACSUnit acsList_55 ( // @[viterbi.scala 206:45:@2140.4]
    .io_pm_0(acsList_55_io_pm_0),
    .io_pm_1(acsList_55_io_pm_1),
    .io_bm_0(acsList_55_io_bm_0),
    .io_bm_1(acsList_55_io_bm_1),
    .io_sel(acsList_55_io_sel),
    .io_dout(acsList_55_io_dout)
  );
  ACSUnit acsList_56 ( // @[viterbi.scala 206:45:@2143.4]
    .io_pm_0(acsList_56_io_pm_0),
    .io_pm_1(acsList_56_io_pm_1),
    .io_bm_0(acsList_56_io_bm_0),
    .io_bm_1(acsList_56_io_bm_1),
    .io_sel(acsList_56_io_sel),
    .io_dout(acsList_56_io_dout)
  );
  ACSUnit acsList_57 ( // @[viterbi.scala 206:45:@2146.4]
    .io_pm_0(acsList_57_io_pm_0),
    .io_pm_1(acsList_57_io_pm_1),
    .io_bm_0(acsList_57_io_bm_0),
    .io_bm_1(acsList_57_io_bm_1),
    .io_sel(acsList_57_io_sel),
    .io_dout(acsList_57_io_dout)
  );
  ACSUnit acsList_58 ( // @[viterbi.scala 206:45:@2149.4]
    .io_pm_0(acsList_58_io_pm_0),
    .io_pm_1(acsList_58_io_pm_1),
    .io_bm_0(acsList_58_io_bm_0),
    .io_bm_1(acsList_58_io_bm_1),
    .io_sel(acsList_58_io_sel),
    .io_dout(acsList_58_io_dout)
  );
  ACSUnit acsList_59 ( // @[viterbi.scala 206:45:@2152.4]
    .io_pm_0(acsList_59_io_pm_0),
    .io_pm_1(acsList_59_io_pm_1),
    .io_bm_0(acsList_59_io_bm_0),
    .io_bm_1(acsList_59_io_bm_1),
    .io_sel(acsList_59_io_sel),
    .io_dout(acsList_59_io_dout)
  );
  ACSUnit acsList_60 ( // @[viterbi.scala 206:45:@2155.4]
    .io_pm_0(acsList_60_io_pm_0),
    .io_pm_1(acsList_60_io_pm_1),
    .io_bm_0(acsList_60_io_bm_0),
    .io_bm_1(acsList_60_io_bm_1),
    .io_sel(acsList_60_io_sel),
    .io_dout(acsList_60_io_dout)
  );
  ACSUnit acsList_61 ( // @[viterbi.scala 206:45:@2158.4]
    .io_pm_0(acsList_61_io_pm_0),
    .io_pm_1(acsList_61_io_pm_1),
    .io_bm_0(acsList_61_io_bm_0),
    .io_bm_1(acsList_61_io_bm_1),
    .io_sel(acsList_61_io_sel),
    .io_dout(acsList_61_io_dout)
  );
  ACSUnit acsList_62 ( // @[viterbi.scala 206:45:@2161.4]
    .io_pm_0(acsList_62_io_pm_0),
    .io_pm_1(acsList_62_io_pm_1),
    .io_bm_0(acsList_62_io_bm_0),
    .io_bm_1(acsList_62_io_bm_1),
    .io_sel(acsList_62_io_sel),
    .io_dout(acsList_62_io_dout)
  );
  ACSUnit acsList_63 ( // @[viterbi.scala 206:45:@2164.4]
    .io_pm_0(acsList_63_io_pm_0),
    .io_pm_1(acsList_63_io_pm_1),
    .io_bm_0(acsList_63_io_bm_0),
    .io_bm_1(acsList_63_io_bm_1),
    .io_sel(acsList_63_io_sel),
    .io_dout(acsList_63_io_dout)
  );
  assign _GEN_128 = io_init ? 9'h32 : pmregs_0; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_129 = io_init ? 9'h0 : pmregs_1; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_130 = io_init ? 9'h0 : pmregs_2; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_131 = io_init ? 9'h0 : pmregs_3; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_132 = io_init ? 9'h0 : pmregs_4; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_133 = io_init ? 9'h0 : pmregs_5; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_134 = io_init ? 9'h0 : pmregs_6; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_135 = io_init ? 9'h0 : pmregs_7; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_136 = io_init ? 9'h0 : pmregs_8; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_137 = io_init ? 9'h0 : pmregs_9; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_138 = io_init ? 9'h0 : pmregs_10; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_139 = io_init ? 9'h0 : pmregs_11; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_140 = io_init ? 9'h0 : pmregs_12; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_141 = io_init ? 9'h0 : pmregs_13; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_142 = io_init ? 9'h0 : pmregs_14; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_143 = io_init ? 9'h0 : pmregs_15; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_144 = io_init ? 9'h0 : pmregs_16; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_145 = io_init ? 9'h0 : pmregs_17; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_146 = io_init ? 9'h0 : pmregs_18; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_147 = io_init ? 9'h0 : pmregs_19; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_148 = io_init ? 9'h0 : pmregs_20; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_149 = io_init ? 9'h0 : pmregs_21; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_150 = io_init ? 9'h0 : pmregs_22; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_151 = io_init ? 9'h0 : pmregs_23; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_152 = io_init ? 9'h0 : pmregs_24; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_153 = io_init ? 9'h0 : pmregs_25; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_154 = io_init ? 9'h0 : pmregs_26; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_155 = io_init ? 9'h0 : pmregs_27; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_156 = io_init ? 9'h0 : pmregs_28; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_157 = io_init ? 9'h0 : pmregs_29; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_158 = io_init ? 9'h0 : pmregs_30; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_159 = io_init ? 9'h0 : pmregs_31; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_160 = io_init ? 9'h0 : pmregs_32; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_161 = io_init ? 9'h0 : pmregs_33; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_162 = io_init ? 9'h0 : pmregs_34; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_163 = io_init ? 9'h0 : pmregs_35; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_164 = io_init ? 9'h0 : pmregs_36; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_165 = io_init ? 9'h0 : pmregs_37; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_166 = io_init ? 9'h0 : pmregs_38; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_167 = io_init ? 9'h0 : pmregs_39; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_168 = io_init ? 9'h0 : pmregs_40; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_169 = io_init ? 9'h0 : pmregs_41; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_170 = io_init ? 9'h0 : pmregs_42; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_171 = io_init ? 9'h0 : pmregs_43; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_172 = io_init ? 9'h0 : pmregs_44; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_173 = io_init ? 9'h0 : pmregs_45; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_174 = io_init ? 9'h0 : pmregs_46; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_175 = io_init ? 9'h0 : pmregs_47; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_176 = io_init ? 9'h0 : pmregs_48; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_177 = io_init ? 9'h0 : pmregs_49; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_178 = io_init ? 9'h0 : pmregs_50; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_179 = io_init ? 9'h0 : pmregs_51; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_180 = io_init ? 9'h0 : pmregs_52; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_181 = io_init ? 9'h0 : pmregs_53; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_182 = io_init ? 9'h0 : pmregs_54; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_183 = io_init ? 9'h0 : pmregs_55; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_184 = io_init ? 9'h0 : pmregs_56; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_185 = io_init ? 9'h0 : pmregs_57; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_186 = io_init ? 9'h0 : pmregs_58; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_187 = io_init ? 9'h0 : pmregs_59; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_188 = io_init ? 9'h0 : pmregs_60; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_189 = io_init ? 9'h0 : pmregs_61; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_190 = io_init ? 9'h0 : pmregs_62; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_191 = io_init ? 9'h0 : pmregs_63; // @[viterbi.scala 198:18:@1909.4]
  assign _GEN_384 = io_din_valid ? acsList_0_io_dout : _GEN_128; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_385 = io_din_valid ? acsList_1_io_dout : _GEN_129; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_386 = io_din_valid ? acsList_2_io_dout : _GEN_130; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_387 = io_din_valid ? acsList_3_io_dout : _GEN_131; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_388 = io_din_valid ? acsList_4_io_dout : _GEN_132; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_389 = io_din_valid ? acsList_5_io_dout : _GEN_133; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_390 = io_din_valid ? acsList_6_io_dout : _GEN_134; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_391 = io_din_valid ? acsList_7_io_dout : _GEN_135; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_392 = io_din_valid ? acsList_8_io_dout : _GEN_136; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_393 = io_din_valid ? acsList_9_io_dout : _GEN_137; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_394 = io_din_valid ? acsList_10_io_dout : _GEN_138; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_395 = io_din_valid ? acsList_11_io_dout : _GEN_139; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_396 = io_din_valid ? acsList_12_io_dout : _GEN_140; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_397 = io_din_valid ? acsList_13_io_dout : _GEN_141; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_398 = io_din_valid ? acsList_14_io_dout : _GEN_142; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_399 = io_din_valid ? acsList_15_io_dout : _GEN_143; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_400 = io_din_valid ? acsList_16_io_dout : _GEN_144; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_401 = io_din_valid ? acsList_17_io_dout : _GEN_145; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_402 = io_din_valid ? acsList_18_io_dout : _GEN_146; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_403 = io_din_valid ? acsList_19_io_dout : _GEN_147; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_404 = io_din_valid ? acsList_20_io_dout : _GEN_148; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_405 = io_din_valid ? acsList_21_io_dout : _GEN_149; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_406 = io_din_valid ? acsList_22_io_dout : _GEN_150; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_407 = io_din_valid ? acsList_23_io_dout : _GEN_151; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_408 = io_din_valid ? acsList_24_io_dout : _GEN_152; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_409 = io_din_valid ? acsList_25_io_dout : _GEN_153; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_410 = io_din_valid ? acsList_26_io_dout : _GEN_154; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_411 = io_din_valid ? acsList_27_io_dout : _GEN_155; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_412 = io_din_valid ? acsList_28_io_dout : _GEN_156; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_413 = io_din_valid ? acsList_29_io_dout : _GEN_157; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_414 = io_din_valid ? acsList_30_io_dout : _GEN_158; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_415 = io_din_valid ? acsList_31_io_dout : _GEN_159; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_416 = io_din_valid ? acsList_32_io_dout : _GEN_160; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_417 = io_din_valid ? acsList_33_io_dout : _GEN_161; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_418 = io_din_valid ? acsList_34_io_dout : _GEN_162; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_419 = io_din_valid ? acsList_35_io_dout : _GEN_163; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_420 = io_din_valid ? acsList_36_io_dout : _GEN_164; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_421 = io_din_valid ? acsList_37_io_dout : _GEN_165; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_422 = io_din_valid ? acsList_38_io_dout : _GEN_166; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_423 = io_din_valid ? acsList_39_io_dout : _GEN_167; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_424 = io_din_valid ? acsList_40_io_dout : _GEN_168; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_425 = io_din_valid ? acsList_41_io_dout : _GEN_169; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_426 = io_din_valid ? acsList_42_io_dout : _GEN_170; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_427 = io_din_valid ? acsList_43_io_dout : _GEN_171; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_428 = io_din_valid ? acsList_44_io_dout : _GEN_172; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_429 = io_din_valid ? acsList_45_io_dout : _GEN_173; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_430 = io_din_valid ? acsList_46_io_dout : _GEN_174; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_431 = io_din_valid ? acsList_47_io_dout : _GEN_175; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_432 = io_din_valid ? acsList_48_io_dout : _GEN_176; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_433 = io_din_valid ? acsList_49_io_dout : _GEN_177; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_434 = io_din_valid ? acsList_50_io_dout : _GEN_178; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_435 = io_din_valid ? acsList_51_io_dout : _GEN_179; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_436 = io_din_valid ? acsList_52_io_dout : _GEN_180; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_437 = io_din_valid ? acsList_53_io_dout : _GEN_181; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_438 = io_din_valid ? acsList_54_io_dout : _GEN_182; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_439 = io_din_valid ? acsList_55_io_dout : _GEN_183; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_440 = io_din_valid ? acsList_56_io_dout : _GEN_184; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_441 = io_din_valid ? acsList_57_io_dout : _GEN_185; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_442 = io_din_valid ? acsList_58_io_dout : _GEN_186; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_443 = io_din_valid ? acsList_59_io_dout : _GEN_187; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_444 = io_din_valid ? acsList_60_io_dout : _GEN_188; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_445 = io_din_valid ? acsList_61_io_dout : _GEN_189; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_446 = io_din_valid ? acsList_62_io_dout : _GEN_190; // @[viterbi.scala 235:23:@2551.4]
  assign _GEN_447 = io_din_valid ? acsList_63_io_dout : _GEN_191; // @[viterbi.scala 235:23:@2551.4]
  assign io_dout_0 = acsList_0_io_sel;
  assign io_dout_1 = acsList_1_io_sel;
  assign io_dout_2 = acsList_2_io_sel;
  assign io_dout_3 = acsList_3_io_sel;
  assign io_dout_4 = acsList_4_io_sel;
  assign io_dout_5 = acsList_5_io_sel;
  assign io_dout_6 = acsList_6_io_sel;
  assign io_dout_7 = acsList_7_io_sel;
  assign io_dout_8 = acsList_8_io_sel;
  assign io_dout_9 = acsList_9_io_sel;
  assign io_dout_10 = acsList_10_io_sel;
  assign io_dout_11 = acsList_11_io_sel;
  assign io_dout_12 = acsList_12_io_sel;
  assign io_dout_13 = acsList_13_io_sel;
  assign io_dout_14 = acsList_14_io_sel;
  assign io_dout_15 = acsList_15_io_sel;
  assign io_dout_16 = acsList_16_io_sel;
  assign io_dout_17 = acsList_17_io_sel;
  assign io_dout_18 = acsList_18_io_sel;
  assign io_dout_19 = acsList_19_io_sel;
  assign io_dout_20 = acsList_20_io_sel;
  assign io_dout_21 = acsList_21_io_sel;
  assign io_dout_22 = acsList_22_io_sel;
  assign io_dout_23 = acsList_23_io_sel;
  assign io_dout_24 = acsList_24_io_sel;
  assign io_dout_25 = acsList_25_io_sel;
  assign io_dout_26 = acsList_26_io_sel;
  assign io_dout_27 = acsList_27_io_sel;
  assign io_dout_28 = acsList_28_io_sel;
  assign io_dout_29 = acsList_29_io_sel;
  assign io_dout_30 = acsList_30_io_sel;
  assign io_dout_31 = acsList_31_io_sel;
  assign io_dout_32 = acsList_32_io_sel;
  assign io_dout_33 = acsList_33_io_sel;
  assign io_dout_34 = acsList_34_io_sel;
  assign io_dout_35 = acsList_35_io_sel;
  assign io_dout_36 = acsList_36_io_sel;
  assign io_dout_37 = acsList_37_io_sel;
  assign io_dout_38 = acsList_38_io_sel;
  assign io_dout_39 = acsList_39_io_sel;
  assign io_dout_40 = acsList_40_io_sel;
  assign io_dout_41 = acsList_41_io_sel;
  assign io_dout_42 = acsList_42_io_sel;
  assign io_dout_43 = acsList_43_io_sel;
  assign io_dout_44 = acsList_44_io_sel;
  assign io_dout_45 = acsList_45_io_sel;
  assign io_dout_46 = acsList_46_io_sel;
  assign io_dout_47 = acsList_47_io_sel;
  assign io_dout_48 = acsList_48_io_sel;
  assign io_dout_49 = acsList_49_io_sel;
  assign io_dout_50 = acsList_50_io_sel;
  assign io_dout_51 = acsList_51_io_sel;
  assign io_dout_52 = acsList_52_io_sel;
  assign io_dout_53 = acsList_53_io_sel;
  assign io_dout_54 = acsList_54_io_sel;
  assign io_dout_55 = acsList_55_io_sel;
  assign io_dout_56 = acsList_56_io_sel;
  assign io_dout_57 = acsList_57_io_sel;
  assign io_dout_58 = acsList_58_io_sel;
  assign io_dout_59 = acsList_59_io_sel;
  assign io_dout_60 = acsList_60_io_sel;
  assign io_dout_61 = acsList_61_io_sel;
  assign io_dout_62 = acsList_62_io_sel;
  assign io_dout_63 = acsList_63_io_sel;
  assign acsList_0_io_pm_0 = pmregs_0;
  assign acsList_0_io_pm_1 = pmregs_1;
  assign acsList_0_io_bm_0 = io_din_bits_0;
  assign acsList_0_io_bm_1 = io_din_bits_3;
  assign acsList_1_io_pm_0 = pmregs_2;
  assign acsList_1_io_pm_1 = pmregs_3;
  assign acsList_1_io_bm_0 = io_din_bits_2;
  assign acsList_1_io_bm_1 = io_din_bits_1;
  assign acsList_2_io_pm_0 = pmregs_4;
  assign acsList_2_io_pm_1 = pmregs_5;
  assign acsList_2_io_bm_0 = io_din_bits_0;
  assign acsList_2_io_bm_1 = io_din_bits_3;
  assign acsList_3_io_pm_0 = pmregs_6;
  assign acsList_3_io_pm_1 = pmregs_7;
  assign acsList_3_io_bm_0 = io_din_bits_2;
  assign acsList_3_io_bm_1 = io_din_bits_1;
  assign acsList_4_io_pm_0 = pmregs_8;
  assign acsList_4_io_pm_1 = pmregs_9;
  assign acsList_4_io_bm_0 = io_din_bits_3;
  assign acsList_4_io_bm_1 = io_din_bits_0;
  assign acsList_5_io_pm_0 = pmregs_10;
  assign acsList_5_io_pm_1 = pmregs_11;
  assign acsList_5_io_bm_0 = io_din_bits_1;
  assign acsList_5_io_bm_1 = io_din_bits_2;
  assign acsList_6_io_pm_0 = pmregs_12;
  assign acsList_6_io_pm_1 = pmregs_13;
  assign acsList_6_io_bm_0 = io_din_bits_3;
  assign acsList_6_io_bm_1 = io_din_bits_0;
  assign acsList_7_io_pm_0 = pmregs_14;
  assign acsList_7_io_pm_1 = pmregs_15;
  assign acsList_7_io_bm_0 = io_din_bits_1;
  assign acsList_7_io_bm_1 = io_din_bits_2;
  assign acsList_8_io_pm_0 = pmregs_16;
  assign acsList_8_io_pm_1 = pmregs_17;
  assign acsList_8_io_bm_0 = io_din_bits_3;
  assign acsList_8_io_bm_1 = io_din_bits_0;
  assign acsList_9_io_pm_0 = pmregs_18;
  assign acsList_9_io_pm_1 = pmregs_19;
  assign acsList_9_io_bm_0 = io_din_bits_1;
  assign acsList_9_io_bm_1 = io_din_bits_2;
  assign acsList_10_io_pm_0 = pmregs_20;
  assign acsList_10_io_pm_1 = pmregs_21;
  assign acsList_10_io_bm_0 = io_din_bits_3;
  assign acsList_10_io_bm_1 = io_din_bits_0;
  assign acsList_11_io_pm_0 = pmregs_22;
  assign acsList_11_io_pm_1 = pmregs_23;
  assign acsList_11_io_bm_0 = io_din_bits_1;
  assign acsList_11_io_bm_1 = io_din_bits_2;
  assign acsList_12_io_pm_0 = pmregs_24;
  assign acsList_12_io_pm_1 = pmregs_25;
  assign acsList_12_io_bm_0 = io_din_bits_0;
  assign acsList_12_io_bm_1 = io_din_bits_3;
  assign acsList_13_io_pm_0 = pmregs_26;
  assign acsList_13_io_pm_1 = pmregs_27;
  assign acsList_13_io_bm_0 = io_din_bits_2;
  assign acsList_13_io_bm_1 = io_din_bits_1;
  assign acsList_14_io_pm_0 = pmregs_28;
  assign acsList_14_io_pm_1 = pmregs_29;
  assign acsList_14_io_bm_0 = io_din_bits_0;
  assign acsList_14_io_bm_1 = io_din_bits_3;
  assign acsList_15_io_pm_0 = pmregs_30;
  assign acsList_15_io_pm_1 = pmregs_31;
  assign acsList_15_io_bm_0 = io_din_bits_2;
  assign acsList_15_io_bm_1 = io_din_bits_1;
  assign acsList_16_io_pm_0 = pmregs_32;
  assign acsList_16_io_pm_1 = pmregs_33;
  assign acsList_16_io_bm_0 = io_din_bits_1;
  assign acsList_16_io_bm_1 = io_din_bits_2;
  assign acsList_17_io_pm_0 = pmregs_34;
  assign acsList_17_io_pm_1 = pmregs_35;
  assign acsList_17_io_bm_0 = io_din_bits_3;
  assign acsList_17_io_bm_1 = io_din_bits_0;
  assign acsList_18_io_pm_0 = pmregs_36;
  assign acsList_18_io_pm_1 = pmregs_37;
  assign acsList_18_io_bm_0 = io_din_bits_1;
  assign acsList_18_io_bm_1 = io_din_bits_2;
  assign acsList_19_io_pm_0 = pmregs_38;
  assign acsList_19_io_pm_1 = pmregs_39;
  assign acsList_19_io_bm_0 = io_din_bits_3;
  assign acsList_19_io_bm_1 = io_din_bits_0;
  assign acsList_20_io_pm_0 = pmregs_40;
  assign acsList_20_io_pm_1 = pmregs_41;
  assign acsList_20_io_bm_0 = io_din_bits_2;
  assign acsList_20_io_bm_1 = io_din_bits_1;
  assign acsList_21_io_pm_0 = pmregs_42;
  assign acsList_21_io_pm_1 = pmregs_43;
  assign acsList_21_io_bm_0 = io_din_bits_0;
  assign acsList_21_io_bm_1 = io_din_bits_3;
  assign acsList_22_io_pm_0 = pmregs_44;
  assign acsList_22_io_pm_1 = pmregs_45;
  assign acsList_22_io_bm_0 = io_din_bits_2;
  assign acsList_22_io_bm_1 = io_din_bits_1;
  assign acsList_23_io_pm_0 = pmregs_46;
  assign acsList_23_io_pm_1 = pmregs_47;
  assign acsList_23_io_bm_0 = io_din_bits_0;
  assign acsList_23_io_bm_1 = io_din_bits_3;
  assign acsList_24_io_pm_0 = pmregs_48;
  assign acsList_24_io_pm_1 = pmregs_49;
  assign acsList_24_io_bm_0 = io_din_bits_2;
  assign acsList_24_io_bm_1 = io_din_bits_1;
  assign acsList_25_io_pm_0 = pmregs_50;
  assign acsList_25_io_pm_1 = pmregs_51;
  assign acsList_25_io_bm_0 = io_din_bits_0;
  assign acsList_25_io_bm_1 = io_din_bits_3;
  assign acsList_26_io_pm_0 = pmregs_52;
  assign acsList_26_io_pm_1 = pmregs_53;
  assign acsList_26_io_bm_0 = io_din_bits_2;
  assign acsList_26_io_bm_1 = io_din_bits_1;
  assign acsList_27_io_pm_0 = pmregs_54;
  assign acsList_27_io_pm_1 = pmregs_55;
  assign acsList_27_io_bm_0 = io_din_bits_0;
  assign acsList_27_io_bm_1 = io_din_bits_3;
  assign acsList_28_io_pm_0 = pmregs_56;
  assign acsList_28_io_pm_1 = pmregs_57;
  assign acsList_28_io_bm_0 = io_din_bits_1;
  assign acsList_28_io_bm_1 = io_din_bits_2;
  assign acsList_29_io_pm_0 = pmregs_58;
  assign acsList_29_io_pm_1 = pmregs_59;
  assign acsList_29_io_bm_0 = io_din_bits_3;
  assign acsList_29_io_bm_1 = io_din_bits_0;
  assign acsList_30_io_pm_0 = pmregs_60;
  assign acsList_30_io_pm_1 = pmregs_61;
  assign acsList_30_io_bm_0 = io_din_bits_1;
  assign acsList_30_io_bm_1 = io_din_bits_2;
  assign acsList_31_io_pm_0 = pmregs_62;
  assign acsList_31_io_pm_1 = pmregs_63;
  assign acsList_31_io_bm_0 = io_din_bits_3;
  assign acsList_31_io_bm_1 = io_din_bits_0;
  assign acsList_32_io_pm_0 = pmregs_0;
  assign acsList_32_io_pm_1 = pmregs_1;
  assign acsList_32_io_bm_0 = io_din_bits_3;
  assign acsList_32_io_bm_1 = io_din_bits_0;
  assign acsList_33_io_pm_0 = pmregs_2;
  assign acsList_33_io_pm_1 = pmregs_3;
  assign acsList_33_io_bm_0 = io_din_bits_1;
  assign acsList_33_io_bm_1 = io_din_bits_2;
  assign acsList_34_io_pm_0 = pmregs_4;
  assign acsList_34_io_pm_1 = pmregs_5;
  assign acsList_34_io_bm_0 = io_din_bits_3;
  assign acsList_34_io_bm_1 = io_din_bits_0;
  assign acsList_35_io_pm_0 = pmregs_6;
  assign acsList_35_io_pm_1 = pmregs_7;
  assign acsList_35_io_bm_0 = io_din_bits_1;
  assign acsList_35_io_bm_1 = io_din_bits_2;
  assign acsList_36_io_pm_0 = pmregs_8;
  assign acsList_36_io_pm_1 = pmregs_9;
  assign acsList_36_io_bm_0 = io_din_bits_0;
  assign acsList_36_io_bm_1 = io_din_bits_3;
  assign acsList_37_io_pm_0 = pmregs_10;
  assign acsList_37_io_pm_1 = pmregs_11;
  assign acsList_37_io_bm_0 = io_din_bits_2;
  assign acsList_37_io_bm_1 = io_din_bits_1;
  assign acsList_38_io_pm_0 = pmregs_12;
  assign acsList_38_io_pm_1 = pmregs_13;
  assign acsList_38_io_bm_0 = io_din_bits_0;
  assign acsList_38_io_bm_1 = io_din_bits_3;
  assign acsList_39_io_pm_0 = pmregs_14;
  assign acsList_39_io_pm_1 = pmregs_15;
  assign acsList_39_io_bm_0 = io_din_bits_2;
  assign acsList_39_io_bm_1 = io_din_bits_1;
  assign acsList_40_io_pm_0 = pmregs_16;
  assign acsList_40_io_pm_1 = pmregs_17;
  assign acsList_40_io_bm_0 = io_din_bits_0;
  assign acsList_40_io_bm_1 = io_din_bits_3;
  assign acsList_41_io_pm_0 = pmregs_18;
  assign acsList_41_io_pm_1 = pmregs_19;
  assign acsList_41_io_bm_0 = io_din_bits_2;
  assign acsList_41_io_bm_1 = io_din_bits_1;
  assign acsList_42_io_pm_0 = pmregs_20;
  assign acsList_42_io_pm_1 = pmregs_21;
  assign acsList_42_io_bm_0 = io_din_bits_0;
  assign acsList_42_io_bm_1 = io_din_bits_3;
  assign acsList_43_io_pm_0 = pmregs_22;
  assign acsList_43_io_pm_1 = pmregs_23;
  assign acsList_43_io_bm_0 = io_din_bits_2;
  assign acsList_43_io_bm_1 = io_din_bits_1;
  assign acsList_44_io_pm_0 = pmregs_24;
  assign acsList_44_io_pm_1 = pmregs_25;
  assign acsList_44_io_bm_0 = io_din_bits_3;
  assign acsList_44_io_bm_1 = io_din_bits_0;
  assign acsList_45_io_pm_0 = pmregs_26;
  assign acsList_45_io_pm_1 = pmregs_27;
  assign acsList_45_io_bm_0 = io_din_bits_1;
  assign acsList_45_io_bm_1 = io_din_bits_2;
  assign acsList_46_io_pm_0 = pmregs_28;
  assign acsList_46_io_pm_1 = pmregs_29;
  assign acsList_46_io_bm_0 = io_din_bits_3;
  assign acsList_46_io_bm_1 = io_din_bits_0;
  assign acsList_47_io_pm_0 = pmregs_30;
  assign acsList_47_io_pm_1 = pmregs_31;
  assign acsList_47_io_bm_0 = io_din_bits_1;
  assign acsList_47_io_bm_1 = io_din_bits_2;
  assign acsList_48_io_pm_0 = pmregs_32;
  assign acsList_48_io_pm_1 = pmregs_33;
  assign acsList_48_io_bm_0 = io_din_bits_2;
  assign acsList_48_io_bm_1 = io_din_bits_1;
  assign acsList_49_io_pm_0 = pmregs_34;
  assign acsList_49_io_pm_1 = pmregs_35;
  assign acsList_49_io_bm_0 = io_din_bits_0;
  assign acsList_49_io_bm_1 = io_din_bits_3;
  assign acsList_50_io_pm_0 = pmregs_36;
  assign acsList_50_io_pm_1 = pmregs_37;
  assign acsList_50_io_bm_0 = io_din_bits_2;
  assign acsList_50_io_bm_1 = io_din_bits_1;
  assign acsList_51_io_pm_0 = pmregs_38;
  assign acsList_51_io_pm_1 = pmregs_39;
  assign acsList_51_io_bm_0 = io_din_bits_0;
  assign acsList_51_io_bm_1 = io_din_bits_3;
  assign acsList_52_io_pm_0 = pmregs_40;
  assign acsList_52_io_pm_1 = pmregs_41;
  assign acsList_52_io_bm_0 = io_din_bits_1;
  assign acsList_52_io_bm_1 = io_din_bits_2;
  assign acsList_53_io_pm_0 = pmregs_42;
  assign acsList_53_io_pm_1 = pmregs_43;
  assign acsList_53_io_bm_0 = io_din_bits_3;
  assign acsList_53_io_bm_1 = io_din_bits_0;
  assign acsList_54_io_pm_0 = pmregs_44;
  assign acsList_54_io_pm_1 = pmregs_45;
  assign acsList_54_io_bm_0 = io_din_bits_1;
  assign acsList_54_io_bm_1 = io_din_bits_2;
  assign acsList_55_io_pm_0 = pmregs_46;
  assign acsList_55_io_pm_1 = pmregs_47;
  assign acsList_55_io_bm_0 = io_din_bits_3;
  assign acsList_55_io_bm_1 = io_din_bits_0;
  assign acsList_56_io_pm_0 = pmregs_48;
  assign acsList_56_io_pm_1 = pmregs_49;
  assign acsList_56_io_bm_0 = io_din_bits_1;
  assign acsList_56_io_bm_1 = io_din_bits_2;
  assign acsList_57_io_pm_0 = pmregs_50;
  assign acsList_57_io_pm_1 = pmregs_51;
  assign acsList_57_io_bm_0 = io_din_bits_3;
  assign acsList_57_io_bm_1 = io_din_bits_0;
  assign acsList_58_io_pm_0 = pmregs_52;
  assign acsList_58_io_pm_1 = pmregs_53;
  assign acsList_58_io_bm_0 = io_din_bits_1;
  assign acsList_58_io_bm_1 = io_din_bits_2;
  assign acsList_59_io_pm_0 = pmregs_54;
  assign acsList_59_io_pm_1 = pmregs_55;
  assign acsList_59_io_bm_0 = io_din_bits_3;
  assign acsList_59_io_bm_1 = io_din_bits_0;
  assign acsList_60_io_pm_0 = pmregs_56;
  assign acsList_60_io_pm_1 = pmregs_57;
  assign acsList_60_io_bm_0 = io_din_bits_2;
  assign acsList_60_io_bm_1 = io_din_bits_1;
  assign acsList_61_io_pm_0 = pmregs_58;
  assign acsList_61_io_pm_1 = pmregs_59;
  assign acsList_61_io_bm_0 = io_din_bits_0;
  assign acsList_61_io_bm_1 = io_din_bits_3;
  assign acsList_62_io_pm_0 = pmregs_60;
  assign acsList_62_io_pm_1 = pmregs_61;
  assign acsList_62_io_bm_0 = io_din_bits_2;
  assign acsList_62_io_bm_1 = io_din_bits_1;
  assign acsList_63_io_pm_0 = pmregs_62;
  assign acsList_63_io_pm_1 = pmregs_63;
  assign acsList_63_io_bm_0 = io_din_bits_0;
  assign acsList_63_io_bm_1 = io_din_bits_3;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  pmregs_0 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  pmregs_1 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  pmregs_2 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  pmregs_3 = _RAND_3[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  pmregs_4 = _RAND_4[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  pmregs_5 = _RAND_5[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  pmregs_6 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  pmregs_7 = _RAND_7[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  pmregs_8 = _RAND_8[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  pmregs_9 = _RAND_9[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  pmregs_10 = _RAND_10[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  pmregs_11 = _RAND_11[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  pmregs_12 = _RAND_12[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  pmregs_13 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  pmregs_14 = _RAND_14[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  pmregs_15 = _RAND_15[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  pmregs_16 = _RAND_16[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  pmregs_17 = _RAND_17[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  pmregs_18 = _RAND_18[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  pmregs_19 = _RAND_19[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  pmregs_20 = _RAND_20[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  pmregs_21 = _RAND_21[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  pmregs_22 = _RAND_22[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  pmregs_23 = _RAND_23[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  pmregs_24 = _RAND_24[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  pmregs_25 = _RAND_25[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  pmregs_26 = _RAND_26[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  pmregs_27 = _RAND_27[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  pmregs_28 = _RAND_28[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  pmregs_29 = _RAND_29[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  pmregs_30 = _RAND_30[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  pmregs_31 = _RAND_31[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  pmregs_32 = _RAND_32[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  pmregs_33 = _RAND_33[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  pmregs_34 = _RAND_34[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  pmregs_35 = _RAND_35[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  pmregs_36 = _RAND_36[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  pmregs_37 = _RAND_37[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  pmregs_38 = _RAND_38[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  pmregs_39 = _RAND_39[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  pmregs_40 = _RAND_40[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  pmregs_41 = _RAND_41[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  pmregs_42 = _RAND_42[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  pmregs_43 = _RAND_43[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  pmregs_44 = _RAND_44[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  pmregs_45 = _RAND_45[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  pmregs_46 = _RAND_46[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  pmregs_47 = _RAND_47[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  pmregs_48 = _RAND_48[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  pmregs_49 = _RAND_49[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  pmregs_50 = _RAND_50[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  pmregs_51 = _RAND_51[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  pmregs_52 = _RAND_52[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  pmregs_53 = _RAND_53[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  pmregs_54 = _RAND_54[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  pmregs_55 = _RAND_55[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  pmregs_56 = _RAND_56[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  pmregs_57 = _RAND_57[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  pmregs_58 = _RAND_58[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  pmregs_59 = _RAND_59[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  pmregs_60 = _RAND_60[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  pmregs_61 = _RAND_61[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  pmregs_62 = _RAND_62[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  pmregs_63 = _RAND_63[8:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_din_valid) begin
      pmregs_0 <= acsList_0_io_dout;
    end else begin
      if (io_init) begin
        pmregs_0 <= 9'h32;
      end
    end
    if (io_din_valid) begin
      pmregs_1 <= acsList_1_io_dout;
    end else begin
      if (io_init) begin
        pmregs_1 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_2 <= acsList_2_io_dout;
    end else begin
      if (io_init) begin
        pmregs_2 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_3 <= acsList_3_io_dout;
    end else begin
      if (io_init) begin
        pmregs_3 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_4 <= acsList_4_io_dout;
    end else begin
      if (io_init) begin
        pmregs_4 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_5 <= acsList_5_io_dout;
    end else begin
      if (io_init) begin
        pmregs_5 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_6 <= acsList_6_io_dout;
    end else begin
      if (io_init) begin
        pmregs_6 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_7 <= acsList_7_io_dout;
    end else begin
      if (io_init) begin
        pmregs_7 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_8 <= acsList_8_io_dout;
    end else begin
      if (io_init) begin
        pmregs_8 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_9 <= acsList_9_io_dout;
    end else begin
      if (io_init) begin
        pmregs_9 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_10 <= acsList_10_io_dout;
    end else begin
      if (io_init) begin
        pmregs_10 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_11 <= acsList_11_io_dout;
    end else begin
      if (io_init) begin
        pmregs_11 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_12 <= acsList_12_io_dout;
    end else begin
      if (io_init) begin
        pmregs_12 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_13 <= acsList_13_io_dout;
    end else begin
      if (io_init) begin
        pmregs_13 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_14 <= acsList_14_io_dout;
    end else begin
      if (io_init) begin
        pmregs_14 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_15 <= acsList_15_io_dout;
    end else begin
      if (io_init) begin
        pmregs_15 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_16 <= acsList_16_io_dout;
    end else begin
      if (io_init) begin
        pmregs_16 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_17 <= acsList_17_io_dout;
    end else begin
      if (io_init) begin
        pmregs_17 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_18 <= acsList_18_io_dout;
    end else begin
      if (io_init) begin
        pmregs_18 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_19 <= acsList_19_io_dout;
    end else begin
      if (io_init) begin
        pmregs_19 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_20 <= acsList_20_io_dout;
    end else begin
      if (io_init) begin
        pmregs_20 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_21 <= acsList_21_io_dout;
    end else begin
      if (io_init) begin
        pmregs_21 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_22 <= acsList_22_io_dout;
    end else begin
      if (io_init) begin
        pmregs_22 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_23 <= acsList_23_io_dout;
    end else begin
      if (io_init) begin
        pmregs_23 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_24 <= acsList_24_io_dout;
    end else begin
      if (io_init) begin
        pmregs_24 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_25 <= acsList_25_io_dout;
    end else begin
      if (io_init) begin
        pmregs_25 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_26 <= acsList_26_io_dout;
    end else begin
      if (io_init) begin
        pmregs_26 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_27 <= acsList_27_io_dout;
    end else begin
      if (io_init) begin
        pmregs_27 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_28 <= acsList_28_io_dout;
    end else begin
      if (io_init) begin
        pmregs_28 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_29 <= acsList_29_io_dout;
    end else begin
      if (io_init) begin
        pmregs_29 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_30 <= acsList_30_io_dout;
    end else begin
      if (io_init) begin
        pmregs_30 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_31 <= acsList_31_io_dout;
    end else begin
      if (io_init) begin
        pmregs_31 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_32 <= acsList_32_io_dout;
    end else begin
      if (io_init) begin
        pmregs_32 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_33 <= acsList_33_io_dout;
    end else begin
      if (io_init) begin
        pmregs_33 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_34 <= acsList_34_io_dout;
    end else begin
      if (io_init) begin
        pmregs_34 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_35 <= acsList_35_io_dout;
    end else begin
      if (io_init) begin
        pmregs_35 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_36 <= acsList_36_io_dout;
    end else begin
      if (io_init) begin
        pmregs_36 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_37 <= acsList_37_io_dout;
    end else begin
      if (io_init) begin
        pmregs_37 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_38 <= acsList_38_io_dout;
    end else begin
      if (io_init) begin
        pmregs_38 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_39 <= acsList_39_io_dout;
    end else begin
      if (io_init) begin
        pmregs_39 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_40 <= acsList_40_io_dout;
    end else begin
      if (io_init) begin
        pmregs_40 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_41 <= acsList_41_io_dout;
    end else begin
      if (io_init) begin
        pmregs_41 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_42 <= acsList_42_io_dout;
    end else begin
      if (io_init) begin
        pmregs_42 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_43 <= acsList_43_io_dout;
    end else begin
      if (io_init) begin
        pmregs_43 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_44 <= acsList_44_io_dout;
    end else begin
      if (io_init) begin
        pmregs_44 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_45 <= acsList_45_io_dout;
    end else begin
      if (io_init) begin
        pmregs_45 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_46 <= acsList_46_io_dout;
    end else begin
      if (io_init) begin
        pmregs_46 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_47 <= acsList_47_io_dout;
    end else begin
      if (io_init) begin
        pmregs_47 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_48 <= acsList_48_io_dout;
    end else begin
      if (io_init) begin
        pmregs_48 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_49 <= acsList_49_io_dout;
    end else begin
      if (io_init) begin
        pmregs_49 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_50 <= acsList_50_io_dout;
    end else begin
      if (io_init) begin
        pmregs_50 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_51 <= acsList_51_io_dout;
    end else begin
      if (io_init) begin
        pmregs_51 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_52 <= acsList_52_io_dout;
    end else begin
      if (io_init) begin
        pmregs_52 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_53 <= acsList_53_io_dout;
    end else begin
      if (io_init) begin
        pmregs_53 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_54 <= acsList_54_io_dout;
    end else begin
      if (io_init) begin
        pmregs_54 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_55 <= acsList_55_io_dout;
    end else begin
      if (io_init) begin
        pmregs_55 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_56 <= acsList_56_io_dout;
    end else begin
      if (io_init) begin
        pmregs_56 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_57 <= acsList_57_io_dout;
    end else begin
      if (io_init) begin
        pmregs_57 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_58 <= acsList_58_io_dout;
    end else begin
      if (io_init) begin
        pmregs_58 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_59 <= acsList_59_io_dout;
    end else begin
      if (io_init) begin
        pmregs_59 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_60 <= acsList_60_io_dout;
    end else begin
      if (io_init) begin
        pmregs_60 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_61 <= acsList_61_io_dout;
    end else begin
      if (io_init) begin
        pmregs_61 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_62 <= acsList_62_io_dout;
    end else begin
      if (io_init) begin
        pmregs_62 <= 9'h0;
      end
    end
    if (io_din_valid) begin
      pmregs_63 <= acsList_63_io_dout;
    end else begin
      if (io_init) begin
        pmregs_63 <= 9'h0;
      end
    end
  end
endmodule
module TraceBackUnit( // @[:@2618.2]
  input         clock, // @[:@2619.4]
  input         reset, // @[:@2620.4]
  input         io_din_valid, // @[:@2621.4]
  input         io_din_bits_0, // @[:@2621.4]
  input         io_din_bits_1, // @[:@2621.4]
  input         io_din_bits_2, // @[:@2621.4]
  input         io_din_bits_3, // @[:@2621.4]
  input         io_din_bits_4, // @[:@2621.4]
  input         io_din_bits_5, // @[:@2621.4]
  input         io_din_bits_6, // @[:@2621.4]
  input         io_din_bits_7, // @[:@2621.4]
  input         io_din_bits_8, // @[:@2621.4]
  input         io_din_bits_9, // @[:@2621.4]
  input         io_din_bits_10, // @[:@2621.4]
  input         io_din_bits_11, // @[:@2621.4]
  input         io_din_bits_12, // @[:@2621.4]
  input         io_din_bits_13, // @[:@2621.4]
  input         io_din_bits_14, // @[:@2621.4]
  input         io_din_bits_15, // @[:@2621.4]
  input         io_din_bits_16, // @[:@2621.4]
  input         io_din_bits_17, // @[:@2621.4]
  input         io_din_bits_18, // @[:@2621.4]
  input         io_din_bits_19, // @[:@2621.4]
  input         io_din_bits_20, // @[:@2621.4]
  input         io_din_bits_21, // @[:@2621.4]
  input         io_din_bits_22, // @[:@2621.4]
  input         io_din_bits_23, // @[:@2621.4]
  input         io_din_bits_24, // @[:@2621.4]
  input         io_din_bits_25, // @[:@2621.4]
  input         io_din_bits_26, // @[:@2621.4]
  input         io_din_bits_27, // @[:@2621.4]
  input         io_din_bits_28, // @[:@2621.4]
  input         io_din_bits_29, // @[:@2621.4]
  input         io_din_bits_30, // @[:@2621.4]
  input         io_din_bits_31, // @[:@2621.4]
  input         io_din_bits_32, // @[:@2621.4]
  input         io_din_bits_33, // @[:@2621.4]
  input         io_din_bits_34, // @[:@2621.4]
  input         io_din_bits_35, // @[:@2621.4]
  input         io_din_bits_36, // @[:@2621.4]
  input         io_din_bits_37, // @[:@2621.4]
  input         io_din_bits_38, // @[:@2621.4]
  input         io_din_bits_39, // @[:@2621.4]
  input         io_din_bits_40, // @[:@2621.4]
  input         io_din_bits_41, // @[:@2621.4]
  input         io_din_bits_42, // @[:@2621.4]
  input         io_din_bits_43, // @[:@2621.4]
  input         io_din_bits_44, // @[:@2621.4]
  input         io_din_bits_45, // @[:@2621.4]
  input         io_din_bits_46, // @[:@2621.4]
  input         io_din_bits_47, // @[:@2621.4]
  input         io_din_bits_48, // @[:@2621.4]
  input         io_din_bits_49, // @[:@2621.4]
  input         io_din_bits_50, // @[:@2621.4]
  input         io_din_bits_51, // @[:@2621.4]
  input         io_din_bits_52, // @[:@2621.4]
  input         io_din_bits_53, // @[:@2621.4]
  input         io_din_bits_54, // @[:@2621.4]
  input         io_din_bits_55, // @[:@2621.4]
  input         io_din_bits_56, // @[:@2621.4]
  input         io_din_bits_57, // @[:@2621.4]
  input         io_din_bits_58, // @[:@2621.4]
  input         io_din_bits_59, // @[:@2621.4]
  input         io_din_bits_60, // @[:@2621.4]
  input         io_din_bits_61, // @[:@2621.4]
  input         io_din_bits_62, // @[:@2621.4]
  input         io_din_bits_63, // @[:@2621.4]
  output [39:0] io_dout // @[:@2621.4]
);
  reg [39:0] pathregs_0; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_0;
  reg [39:0] pathregs_1; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_1;
  reg [39:0] pathregs_2; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_2;
  reg [39:0] pathregs_3; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_3;
  reg [39:0] pathregs_4; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_4;
  reg [39:0] pathregs_5; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_5;
  reg [39:0] pathregs_6; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_6;
  reg [39:0] pathregs_7; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_7;
  reg [39:0] pathregs_8; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_8;
  reg [39:0] pathregs_9; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_9;
  reg [39:0] pathregs_10; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_10;
  reg [39:0] pathregs_11; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_11;
  reg [39:0] pathregs_12; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_12;
  reg [39:0] pathregs_13; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_13;
  reg [39:0] pathregs_14; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_14;
  reg [39:0] pathregs_15; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_15;
  reg [39:0] pathregs_16; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_16;
  reg [39:0] pathregs_17; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_17;
  reg [39:0] pathregs_18; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_18;
  reg [39:0] pathregs_19; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_19;
  reg [39:0] pathregs_20; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_20;
  reg [39:0] pathregs_21; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_21;
  reg [39:0] pathregs_22; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_22;
  reg [39:0] pathregs_23; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_23;
  reg [39:0] pathregs_24; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_24;
  reg [39:0] pathregs_25; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_25;
  reg [39:0] pathregs_26; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_26;
  reg [39:0] pathregs_27; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_27;
  reg [39:0] pathregs_28; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_28;
  reg [39:0] pathregs_29; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_29;
  reg [39:0] pathregs_30; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_30;
  reg [39:0] pathregs_31; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_31;
  reg [39:0] pathregs_32; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_32;
  reg [39:0] pathregs_33; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_33;
  reg [39:0] pathregs_34; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_34;
  reg [39:0] pathregs_35; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_35;
  reg [39:0] pathregs_36; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_36;
  reg [39:0] pathregs_37; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_37;
  reg [39:0] pathregs_38; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_38;
  reg [39:0] pathregs_39; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_39;
  reg [39:0] pathregs_40; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_40;
  reg [39:0] pathregs_41; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_41;
  reg [39:0] pathregs_42; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_42;
  reg [39:0] pathregs_43; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_43;
  reg [39:0] pathregs_44; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_44;
  reg [39:0] pathregs_45; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_45;
  reg [39:0] pathregs_46; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_46;
  reg [39:0] pathregs_47; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_47;
  reg [39:0] pathregs_48; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_48;
  reg [39:0] pathregs_49; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_49;
  reg [39:0] pathregs_50; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_50;
  reg [39:0] pathregs_51; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_51;
  reg [39:0] pathregs_52; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_52;
  reg [39:0] pathregs_53; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_53;
  reg [39:0] pathregs_54; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_54;
  reg [39:0] pathregs_55; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_55;
  reg [39:0] pathregs_56; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_56;
  reg [39:0] pathregs_57; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_57;
  reg [39:0] pathregs_58; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_58;
  reg [39:0] pathregs_59; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_59;
  reg [39:0] pathregs_60; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_60;
  reg [39:0] pathregs_61; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_61;
  reg [39:0] pathregs_62; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_62;
  reg [39:0] pathregs_63; // @[viterbi.scala 179:25:@2688.4]
  reg [63:0] _RAND_63;
  wire [38:0] _T_1193; // @[viterbi.scala 182:67:@2690.6]
  wire [38:0] _T_1194; // @[viterbi.scala 182:91:@2691.6]
  wire [38:0] _T_1195; // @[viterbi.scala 182:33:@2692.6]
  wire  _T_1197; // @[viterbi.scala 182:101:@2693.6]
  wire [39:0] _T_1198; // @[Cat.scala 30:58:@2694.6]
  wire [38:0] _T_1201; // @[viterbi.scala 183:33:@2698.6]
  wire  _T_1203; // @[viterbi.scala 183:101:@2699.6]
  wire [39:0] _T_1204; // @[Cat.scala 30:58:@2700.6]
  wire [38:0] _T_1205; // @[viterbi.scala 182:67:@2702.6]
  wire [38:0] _T_1206; // @[viterbi.scala 182:91:@2703.6]
  wire [38:0] _T_1207; // @[viterbi.scala 182:33:@2704.6]
  wire  _T_1209; // @[viterbi.scala 182:101:@2705.6]
  wire [39:0] _T_1210; // @[Cat.scala 30:58:@2706.6]
  wire [38:0] _T_1213; // @[viterbi.scala 183:33:@2710.6]
  wire  _T_1215; // @[viterbi.scala 183:101:@2711.6]
  wire [39:0] _T_1216; // @[Cat.scala 30:58:@2712.6]
  wire [38:0] _T_1217; // @[viterbi.scala 182:67:@2714.6]
  wire [38:0] _T_1218; // @[viterbi.scala 182:91:@2715.6]
  wire [38:0] _T_1219; // @[viterbi.scala 182:33:@2716.6]
  wire  _T_1221; // @[viterbi.scala 182:101:@2717.6]
  wire [39:0] _T_1222; // @[Cat.scala 30:58:@2718.6]
  wire [38:0] _T_1225; // @[viterbi.scala 183:33:@2722.6]
  wire  _T_1227; // @[viterbi.scala 183:101:@2723.6]
  wire [39:0] _T_1228; // @[Cat.scala 30:58:@2724.6]
  wire [38:0] _T_1229; // @[viterbi.scala 182:67:@2726.6]
  wire [38:0] _T_1230; // @[viterbi.scala 182:91:@2727.6]
  wire [38:0] _T_1231; // @[viterbi.scala 182:33:@2728.6]
  wire  _T_1233; // @[viterbi.scala 182:101:@2729.6]
  wire [39:0] _T_1234; // @[Cat.scala 30:58:@2730.6]
  wire [38:0] _T_1237; // @[viterbi.scala 183:33:@2734.6]
  wire  _T_1239; // @[viterbi.scala 183:101:@2735.6]
  wire [39:0] _T_1240; // @[Cat.scala 30:58:@2736.6]
  wire [38:0] _T_1241; // @[viterbi.scala 182:67:@2738.6]
  wire [38:0] _T_1242; // @[viterbi.scala 182:91:@2739.6]
  wire [38:0] _T_1243; // @[viterbi.scala 182:33:@2740.6]
  wire  _T_1245; // @[viterbi.scala 182:101:@2741.6]
  wire [39:0] _T_1246; // @[Cat.scala 30:58:@2742.6]
  wire [38:0] _T_1249; // @[viterbi.scala 183:33:@2746.6]
  wire  _T_1251; // @[viterbi.scala 183:101:@2747.6]
  wire [39:0] _T_1252; // @[Cat.scala 30:58:@2748.6]
  wire [38:0] _T_1253; // @[viterbi.scala 182:67:@2750.6]
  wire [38:0] _T_1254; // @[viterbi.scala 182:91:@2751.6]
  wire [38:0] _T_1255; // @[viterbi.scala 182:33:@2752.6]
  wire  _T_1257; // @[viterbi.scala 182:101:@2753.6]
  wire [39:0] _T_1258; // @[Cat.scala 30:58:@2754.6]
  wire [38:0] _T_1261; // @[viterbi.scala 183:33:@2758.6]
  wire  _T_1263; // @[viterbi.scala 183:101:@2759.6]
  wire [39:0] _T_1264; // @[Cat.scala 30:58:@2760.6]
  wire [38:0] _T_1265; // @[viterbi.scala 182:67:@2762.6]
  wire [38:0] _T_1266; // @[viterbi.scala 182:91:@2763.6]
  wire [38:0] _T_1267; // @[viterbi.scala 182:33:@2764.6]
  wire  _T_1269; // @[viterbi.scala 182:101:@2765.6]
  wire [39:0] _T_1270; // @[Cat.scala 30:58:@2766.6]
  wire [38:0] _T_1273; // @[viterbi.scala 183:33:@2770.6]
  wire  _T_1275; // @[viterbi.scala 183:101:@2771.6]
  wire [39:0] _T_1276; // @[Cat.scala 30:58:@2772.6]
  wire [38:0] _T_1277; // @[viterbi.scala 182:67:@2774.6]
  wire [38:0] _T_1278; // @[viterbi.scala 182:91:@2775.6]
  wire [38:0] _T_1279; // @[viterbi.scala 182:33:@2776.6]
  wire  _T_1281; // @[viterbi.scala 182:101:@2777.6]
  wire [39:0] _T_1282; // @[Cat.scala 30:58:@2778.6]
  wire [38:0] _T_1285; // @[viterbi.scala 183:33:@2782.6]
  wire  _T_1287; // @[viterbi.scala 183:101:@2783.6]
  wire [39:0] _T_1288; // @[Cat.scala 30:58:@2784.6]
  wire [38:0] _T_1289; // @[viterbi.scala 182:67:@2786.6]
  wire [38:0] _T_1290; // @[viterbi.scala 182:91:@2787.6]
  wire [38:0] _T_1291; // @[viterbi.scala 182:33:@2788.6]
  wire  _T_1293; // @[viterbi.scala 182:101:@2789.6]
  wire [39:0] _T_1294; // @[Cat.scala 30:58:@2790.6]
  wire [38:0] _T_1297; // @[viterbi.scala 183:33:@2794.6]
  wire  _T_1299; // @[viterbi.scala 183:101:@2795.6]
  wire [39:0] _T_1300; // @[Cat.scala 30:58:@2796.6]
  wire [38:0] _T_1301; // @[viterbi.scala 182:67:@2798.6]
  wire [38:0] _T_1302; // @[viterbi.scala 182:91:@2799.6]
  wire [38:0] _T_1303; // @[viterbi.scala 182:33:@2800.6]
  wire  _T_1305; // @[viterbi.scala 182:101:@2801.6]
  wire [39:0] _T_1306; // @[Cat.scala 30:58:@2802.6]
  wire [38:0] _T_1309; // @[viterbi.scala 183:33:@2806.6]
  wire  _T_1311; // @[viterbi.scala 183:101:@2807.6]
  wire [39:0] _T_1312; // @[Cat.scala 30:58:@2808.6]
  wire [38:0] _T_1313; // @[viterbi.scala 182:67:@2810.6]
  wire [38:0] _T_1314; // @[viterbi.scala 182:91:@2811.6]
  wire [38:0] _T_1315; // @[viterbi.scala 182:33:@2812.6]
  wire  _T_1317; // @[viterbi.scala 182:101:@2813.6]
  wire [39:0] _T_1318; // @[Cat.scala 30:58:@2814.6]
  wire [38:0] _T_1321; // @[viterbi.scala 183:33:@2818.6]
  wire  _T_1323; // @[viterbi.scala 183:101:@2819.6]
  wire [39:0] _T_1324; // @[Cat.scala 30:58:@2820.6]
  wire [38:0] _T_1325; // @[viterbi.scala 182:67:@2822.6]
  wire [38:0] _T_1326; // @[viterbi.scala 182:91:@2823.6]
  wire [38:0] _T_1327; // @[viterbi.scala 182:33:@2824.6]
  wire  _T_1329; // @[viterbi.scala 182:101:@2825.6]
  wire [39:0] _T_1330; // @[Cat.scala 30:58:@2826.6]
  wire [38:0] _T_1333; // @[viterbi.scala 183:33:@2830.6]
  wire  _T_1335; // @[viterbi.scala 183:101:@2831.6]
  wire [39:0] _T_1336; // @[Cat.scala 30:58:@2832.6]
  wire [38:0] _T_1337; // @[viterbi.scala 182:67:@2834.6]
  wire [38:0] _T_1338; // @[viterbi.scala 182:91:@2835.6]
  wire [38:0] _T_1339; // @[viterbi.scala 182:33:@2836.6]
  wire  _T_1341; // @[viterbi.scala 182:101:@2837.6]
  wire [39:0] _T_1342; // @[Cat.scala 30:58:@2838.6]
  wire [38:0] _T_1345; // @[viterbi.scala 183:33:@2842.6]
  wire  _T_1347; // @[viterbi.scala 183:101:@2843.6]
  wire [39:0] _T_1348; // @[Cat.scala 30:58:@2844.6]
  wire [38:0] _T_1349; // @[viterbi.scala 182:67:@2846.6]
  wire [38:0] _T_1350; // @[viterbi.scala 182:91:@2847.6]
  wire [38:0] _T_1351; // @[viterbi.scala 182:33:@2848.6]
  wire  _T_1353; // @[viterbi.scala 182:101:@2849.6]
  wire [39:0] _T_1354; // @[Cat.scala 30:58:@2850.6]
  wire [38:0] _T_1357; // @[viterbi.scala 183:33:@2854.6]
  wire  _T_1359; // @[viterbi.scala 183:101:@2855.6]
  wire [39:0] _T_1360; // @[Cat.scala 30:58:@2856.6]
  wire [38:0] _T_1361; // @[viterbi.scala 182:67:@2858.6]
  wire [38:0] _T_1362; // @[viterbi.scala 182:91:@2859.6]
  wire [38:0] _T_1363; // @[viterbi.scala 182:33:@2860.6]
  wire  _T_1365; // @[viterbi.scala 182:101:@2861.6]
  wire [39:0] _T_1366; // @[Cat.scala 30:58:@2862.6]
  wire [38:0] _T_1369; // @[viterbi.scala 183:33:@2866.6]
  wire  _T_1371; // @[viterbi.scala 183:101:@2867.6]
  wire [39:0] _T_1372; // @[Cat.scala 30:58:@2868.6]
  wire [38:0] _T_1373; // @[viterbi.scala 182:67:@2870.6]
  wire [38:0] _T_1374; // @[viterbi.scala 182:91:@2871.6]
  wire [38:0] _T_1375; // @[viterbi.scala 182:33:@2872.6]
  wire  _T_1377; // @[viterbi.scala 182:101:@2873.6]
  wire [39:0] _T_1378; // @[Cat.scala 30:58:@2874.6]
  wire [38:0] _T_1381; // @[viterbi.scala 183:33:@2878.6]
  wire  _T_1383; // @[viterbi.scala 183:101:@2879.6]
  wire [39:0] _T_1384; // @[Cat.scala 30:58:@2880.6]
  wire [38:0] _T_1385; // @[viterbi.scala 182:67:@2882.6]
  wire [38:0] _T_1386; // @[viterbi.scala 182:91:@2883.6]
  wire [38:0] _T_1387; // @[viterbi.scala 182:33:@2884.6]
  wire  _T_1389; // @[viterbi.scala 182:101:@2885.6]
  wire [39:0] _T_1390; // @[Cat.scala 30:58:@2886.6]
  wire [38:0] _T_1393; // @[viterbi.scala 183:33:@2890.6]
  wire  _T_1395; // @[viterbi.scala 183:101:@2891.6]
  wire [39:0] _T_1396; // @[Cat.scala 30:58:@2892.6]
  wire [38:0] _T_1397; // @[viterbi.scala 182:67:@2894.6]
  wire [38:0] _T_1398; // @[viterbi.scala 182:91:@2895.6]
  wire [38:0] _T_1399; // @[viterbi.scala 182:33:@2896.6]
  wire  _T_1401; // @[viterbi.scala 182:101:@2897.6]
  wire [39:0] _T_1402; // @[Cat.scala 30:58:@2898.6]
  wire [38:0] _T_1405; // @[viterbi.scala 183:33:@2902.6]
  wire  _T_1407; // @[viterbi.scala 183:101:@2903.6]
  wire [39:0] _T_1408; // @[Cat.scala 30:58:@2904.6]
  wire [38:0] _T_1409; // @[viterbi.scala 182:67:@2906.6]
  wire [38:0] _T_1410; // @[viterbi.scala 182:91:@2907.6]
  wire [38:0] _T_1411; // @[viterbi.scala 182:33:@2908.6]
  wire  _T_1413; // @[viterbi.scala 182:101:@2909.6]
  wire [39:0] _T_1414; // @[Cat.scala 30:58:@2910.6]
  wire [38:0] _T_1417; // @[viterbi.scala 183:33:@2914.6]
  wire  _T_1419; // @[viterbi.scala 183:101:@2915.6]
  wire [39:0] _T_1420; // @[Cat.scala 30:58:@2916.6]
  wire [38:0] _T_1421; // @[viterbi.scala 182:67:@2918.6]
  wire [38:0] _T_1422; // @[viterbi.scala 182:91:@2919.6]
  wire [38:0] _T_1423; // @[viterbi.scala 182:33:@2920.6]
  wire  _T_1425; // @[viterbi.scala 182:101:@2921.6]
  wire [39:0] _T_1426; // @[Cat.scala 30:58:@2922.6]
  wire [38:0] _T_1429; // @[viterbi.scala 183:33:@2926.6]
  wire  _T_1431; // @[viterbi.scala 183:101:@2927.6]
  wire [39:0] _T_1432; // @[Cat.scala 30:58:@2928.6]
  wire [38:0] _T_1433; // @[viterbi.scala 182:67:@2930.6]
  wire [38:0] _T_1434; // @[viterbi.scala 182:91:@2931.6]
  wire [38:0] _T_1435; // @[viterbi.scala 182:33:@2932.6]
  wire  _T_1437; // @[viterbi.scala 182:101:@2933.6]
  wire [39:0] _T_1438; // @[Cat.scala 30:58:@2934.6]
  wire [38:0] _T_1441; // @[viterbi.scala 183:33:@2938.6]
  wire  _T_1443; // @[viterbi.scala 183:101:@2939.6]
  wire [39:0] _T_1444; // @[Cat.scala 30:58:@2940.6]
  wire [38:0] _T_1445; // @[viterbi.scala 182:67:@2942.6]
  wire [38:0] _T_1446; // @[viterbi.scala 182:91:@2943.6]
  wire [38:0] _T_1447; // @[viterbi.scala 182:33:@2944.6]
  wire  _T_1449; // @[viterbi.scala 182:101:@2945.6]
  wire [39:0] _T_1450; // @[Cat.scala 30:58:@2946.6]
  wire [38:0] _T_1453; // @[viterbi.scala 183:33:@2950.6]
  wire  _T_1455; // @[viterbi.scala 183:101:@2951.6]
  wire [39:0] _T_1456; // @[Cat.scala 30:58:@2952.6]
  wire [38:0] _T_1457; // @[viterbi.scala 182:67:@2954.6]
  wire [38:0] _T_1458; // @[viterbi.scala 182:91:@2955.6]
  wire [38:0] _T_1459; // @[viterbi.scala 182:33:@2956.6]
  wire  _T_1461; // @[viterbi.scala 182:101:@2957.6]
  wire [39:0] _T_1462; // @[Cat.scala 30:58:@2958.6]
  wire [38:0] _T_1465; // @[viterbi.scala 183:33:@2962.6]
  wire  _T_1467; // @[viterbi.scala 183:101:@2963.6]
  wire [39:0] _T_1468; // @[Cat.scala 30:58:@2964.6]
  wire [38:0] _T_1469; // @[viterbi.scala 182:67:@2966.6]
  wire [38:0] _T_1470; // @[viterbi.scala 182:91:@2967.6]
  wire [38:0] _T_1471; // @[viterbi.scala 182:33:@2968.6]
  wire  _T_1473; // @[viterbi.scala 182:101:@2969.6]
  wire [39:0] _T_1474; // @[Cat.scala 30:58:@2970.6]
  wire [38:0] _T_1477; // @[viterbi.scala 183:33:@2974.6]
  wire  _T_1479; // @[viterbi.scala 183:101:@2975.6]
  wire [39:0] _T_1480; // @[Cat.scala 30:58:@2976.6]
  wire [38:0] _T_1481; // @[viterbi.scala 182:67:@2978.6]
  wire [38:0] _T_1482; // @[viterbi.scala 182:91:@2979.6]
  wire [38:0] _T_1483; // @[viterbi.scala 182:33:@2980.6]
  wire  _T_1485; // @[viterbi.scala 182:101:@2981.6]
  wire [39:0] _T_1486; // @[Cat.scala 30:58:@2982.6]
  wire [38:0] _T_1489; // @[viterbi.scala 183:33:@2986.6]
  wire  _T_1491; // @[viterbi.scala 183:101:@2987.6]
  wire [39:0] _T_1492; // @[Cat.scala 30:58:@2988.6]
  wire [38:0] _T_1493; // @[viterbi.scala 182:67:@2990.6]
  wire [38:0] _T_1494; // @[viterbi.scala 182:91:@2991.6]
  wire [38:0] _T_1495; // @[viterbi.scala 182:33:@2992.6]
  wire  _T_1497; // @[viterbi.scala 182:101:@2993.6]
  wire [39:0] _T_1498; // @[Cat.scala 30:58:@2994.6]
  wire [38:0] _T_1501; // @[viterbi.scala 183:33:@2998.6]
  wire  _T_1503; // @[viterbi.scala 183:101:@2999.6]
  wire [39:0] _T_1504; // @[Cat.scala 30:58:@3000.6]
  wire [38:0] _T_1505; // @[viterbi.scala 182:67:@3002.6]
  wire [38:0] _T_1506; // @[viterbi.scala 182:91:@3003.6]
  wire [38:0] _T_1507; // @[viterbi.scala 182:33:@3004.6]
  wire  _T_1509; // @[viterbi.scala 182:101:@3005.6]
  wire [39:0] _T_1510; // @[Cat.scala 30:58:@3006.6]
  wire [38:0] _T_1513; // @[viterbi.scala 183:33:@3010.6]
  wire  _T_1515; // @[viterbi.scala 183:101:@3011.6]
  wire [39:0] _T_1516; // @[Cat.scala 30:58:@3012.6]
  wire [38:0] _T_1517; // @[viterbi.scala 182:67:@3014.6]
  wire [38:0] _T_1518; // @[viterbi.scala 182:91:@3015.6]
  wire [38:0] _T_1519; // @[viterbi.scala 182:33:@3016.6]
  wire  _T_1521; // @[viterbi.scala 182:101:@3017.6]
  wire [39:0] _T_1522; // @[Cat.scala 30:58:@3018.6]
  wire [38:0] _T_1525; // @[viterbi.scala 183:33:@3022.6]
  wire  _T_1527; // @[viterbi.scala 183:101:@3023.6]
  wire [39:0] _T_1528; // @[Cat.scala 30:58:@3024.6]
  wire [38:0] _T_1529; // @[viterbi.scala 182:67:@3026.6]
  wire [38:0] _T_1530; // @[viterbi.scala 182:91:@3027.6]
  wire [38:0] _T_1531; // @[viterbi.scala 182:33:@3028.6]
  wire  _T_1533; // @[viterbi.scala 182:101:@3029.6]
  wire [39:0] _T_1534; // @[Cat.scala 30:58:@3030.6]
  wire [38:0] _T_1537; // @[viterbi.scala 183:33:@3034.6]
  wire  _T_1539; // @[viterbi.scala 183:101:@3035.6]
  wire [39:0] _T_1540; // @[Cat.scala 30:58:@3036.6]
  wire [38:0] _T_1541; // @[viterbi.scala 182:67:@3038.6]
  wire [38:0] _T_1542; // @[viterbi.scala 182:91:@3039.6]
  wire [38:0] _T_1543; // @[viterbi.scala 182:33:@3040.6]
  wire  _T_1545; // @[viterbi.scala 182:101:@3041.6]
  wire [39:0] _T_1546; // @[Cat.scala 30:58:@3042.6]
  wire [38:0] _T_1549; // @[viterbi.scala 183:33:@3046.6]
  wire  _T_1551; // @[viterbi.scala 183:101:@3047.6]
  wire [39:0] _T_1552; // @[Cat.scala 30:58:@3048.6]
  wire [38:0] _T_1553; // @[viterbi.scala 182:67:@3050.6]
  wire [38:0] _T_1554; // @[viterbi.scala 182:91:@3051.6]
  wire [38:0] _T_1555; // @[viterbi.scala 182:33:@3052.6]
  wire  _T_1557; // @[viterbi.scala 182:101:@3053.6]
  wire [39:0] _T_1558; // @[Cat.scala 30:58:@3054.6]
  wire [38:0] _T_1561; // @[viterbi.scala 183:33:@3058.6]
  wire  _T_1563; // @[viterbi.scala 183:101:@3059.6]
  wire [39:0] _T_1564; // @[Cat.scala 30:58:@3060.6]
  wire [38:0] _T_1565; // @[viterbi.scala 182:67:@3062.6]
  wire [38:0] _T_1566; // @[viterbi.scala 182:91:@3063.6]
  wire [38:0] _T_1567; // @[viterbi.scala 182:33:@3064.6]
  wire  _T_1569; // @[viterbi.scala 182:101:@3065.6]
  wire [39:0] _T_1570; // @[Cat.scala 30:58:@3066.6]
  wire [38:0] _T_1573; // @[viterbi.scala 183:33:@3070.6]
  wire  _T_1575; // @[viterbi.scala 183:101:@3071.6]
  wire [39:0] _T_1576; // @[Cat.scala 30:58:@3072.6]
  wire [39:0] _GEN_0; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_1; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_2; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_3; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_4; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_5; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_6; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_7; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_8; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_9; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_10; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_11; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_12; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_13; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_14; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_15; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_16; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_17; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_18; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_19; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_20; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_21; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_22; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_23; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_24; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_25; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_26; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_27; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_28; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_29; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_30; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_31; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_32; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_33; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_34; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_35; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_36; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_37; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_38; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_39; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_40; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_41; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_42; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_43; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_44; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_45; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_46; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_47; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_48; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_49; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_50; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_51; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_52; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_53; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_54; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_55; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_56; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_57; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_58; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_59; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_60; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_61; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_62; // @[viterbi.scala 180:23:@2689.4]
  wire [39:0] _GEN_63; // @[viterbi.scala 180:23:@2689.4]
  assign _T_1193 = pathregs_0[38:0]; // @[viterbi.scala 182:67:@2690.6]
  assign _T_1194 = pathregs_1[38:0]; // @[viterbi.scala 182:91:@2691.6]
  assign _T_1195 = io_din_bits_0 ? _T_1193 : _T_1194; // @[viterbi.scala 182:33:@2692.6]
  assign _T_1197 = io_din_bits_0 == 1'h0; // @[viterbi.scala 182:101:@2693.6]
  assign _T_1198 = {_T_1195,_T_1197}; // @[Cat.scala 30:58:@2694.6]
  assign _T_1201 = io_din_bits_32 ? _T_1193 : _T_1194; // @[viterbi.scala 183:33:@2698.6]
  assign _T_1203 = io_din_bits_32 == 1'h0; // @[viterbi.scala 183:101:@2699.6]
  assign _T_1204 = {_T_1201,_T_1203}; // @[Cat.scala 30:58:@2700.6]
  assign _T_1205 = pathregs_2[38:0]; // @[viterbi.scala 182:67:@2702.6]
  assign _T_1206 = pathregs_3[38:0]; // @[viterbi.scala 182:91:@2703.6]
  assign _T_1207 = io_din_bits_1 ? _T_1205 : _T_1206; // @[viterbi.scala 182:33:@2704.6]
  assign _T_1209 = io_din_bits_1 == 1'h0; // @[viterbi.scala 182:101:@2705.6]
  assign _T_1210 = {_T_1207,_T_1209}; // @[Cat.scala 30:58:@2706.6]
  assign _T_1213 = io_din_bits_33 ? _T_1205 : _T_1206; // @[viterbi.scala 183:33:@2710.6]
  assign _T_1215 = io_din_bits_33 == 1'h0; // @[viterbi.scala 183:101:@2711.6]
  assign _T_1216 = {_T_1213,_T_1215}; // @[Cat.scala 30:58:@2712.6]
  assign _T_1217 = pathregs_4[38:0]; // @[viterbi.scala 182:67:@2714.6]
  assign _T_1218 = pathregs_5[38:0]; // @[viterbi.scala 182:91:@2715.6]
  assign _T_1219 = io_din_bits_2 ? _T_1217 : _T_1218; // @[viterbi.scala 182:33:@2716.6]
  assign _T_1221 = io_din_bits_2 == 1'h0; // @[viterbi.scala 182:101:@2717.6]
  assign _T_1222 = {_T_1219,_T_1221}; // @[Cat.scala 30:58:@2718.6]
  assign _T_1225 = io_din_bits_34 ? _T_1217 : _T_1218; // @[viterbi.scala 183:33:@2722.6]
  assign _T_1227 = io_din_bits_34 == 1'h0; // @[viterbi.scala 183:101:@2723.6]
  assign _T_1228 = {_T_1225,_T_1227}; // @[Cat.scala 30:58:@2724.6]
  assign _T_1229 = pathregs_6[38:0]; // @[viterbi.scala 182:67:@2726.6]
  assign _T_1230 = pathregs_7[38:0]; // @[viterbi.scala 182:91:@2727.6]
  assign _T_1231 = io_din_bits_3 ? _T_1229 : _T_1230; // @[viterbi.scala 182:33:@2728.6]
  assign _T_1233 = io_din_bits_3 == 1'h0; // @[viterbi.scala 182:101:@2729.6]
  assign _T_1234 = {_T_1231,_T_1233}; // @[Cat.scala 30:58:@2730.6]
  assign _T_1237 = io_din_bits_35 ? _T_1229 : _T_1230; // @[viterbi.scala 183:33:@2734.6]
  assign _T_1239 = io_din_bits_35 == 1'h0; // @[viterbi.scala 183:101:@2735.6]
  assign _T_1240 = {_T_1237,_T_1239}; // @[Cat.scala 30:58:@2736.6]
  assign _T_1241 = pathregs_8[38:0]; // @[viterbi.scala 182:67:@2738.6]
  assign _T_1242 = pathregs_9[38:0]; // @[viterbi.scala 182:91:@2739.6]
  assign _T_1243 = io_din_bits_4 ? _T_1241 : _T_1242; // @[viterbi.scala 182:33:@2740.6]
  assign _T_1245 = io_din_bits_4 == 1'h0; // @[viterbi.scala 182:101:@2741.6]
  assign _T_1246 = {_T_1243,_T_1245}; // @[Cat.scala 30:58:@2742.6]
  assign _T_1249 = io_din_bits_36 ? _T_1241 : _T_1242; // @[viterbi.scala 183:33:@2746.6]
  assign _T_1251 = io_din_bits_36 == 1'h0; // @[viterbi.scala 183:101:@2747.6]
  assign _T_1252 = {_T_1249,_T_1251}; // @[Cat.scala 30:58:@2748.6]
  assign _T_1253 = pathregs_10[38:0]; // @[viterbi.scala 182:67:@2750.6]
  assign _T_1254 = pathregs_11[38:0]; // @[viterbi.scala 182:91:@2751.6]
  assign _T_1255 = io_din_bits_5 ? _T_1253 : _T_1254; // @[viterbi.scala 182:33:@2752.6]
  assign _T_1257 = io_din_bits_5 == 1'h0; // @[viterbi.scala 182:101:@2753.6]
  assign _T_1258 = {_T_1255,_T_1257}; // @[Cat.scala 30:58:@2754.6]
  assign _T_1261 = io_din_bits_37 ? _T_1253 : _T_1254; // @[viterbi.scala 183:33:@2758.6]
  assign _T_1263 = io_din_bits_37 == 1'h0; // @[viterbi.scala 183:101:@2759.6]
  assign _T_1264 = {_T_1261,_T_1263}; // @[Cat.scala 30:58:@2760.6]
  assign _T_1265 = pathregs_12[38:0]; // @[viterbi.scala 182:67:@2762.6]
  assign _T_1266 = pathregs_13[38:0]; // @[viterbi.scala 182:91:@2763.6]
  assign _T_1267 = io_din_bits_6 ? _T_1265 : _T_1266; // @[viterbi.scala 182:33:@2764.6]
  assign _T_1269 = io_din_bits_6 == 1'h0; // @[viterbi.scala 182:101:@2765.6]
  assign _T_1270 = {_T_1267,_T_1269}; // @[Cat.scala 30:58:@2766.6]
  assign _T_1273 = io_din_bits_38 ? _T_1265 : _T_1266; // @[viterbi.scala 183:33:@2770.6]
  assign _T_1275 = io_din_bits_38 == 1'h0; // @[viterbi.scala 183:101:@2771.6]
  assign _T_1276 = {_T_1273,_T_1275}; // @[Cat.scala 30:58:@2772.6]
  assign _T_1277 = pathregs_14[38:0]; // @[viterbi.scala 182:67:@2774.6]
  assign _T_1278 = pathregs_15[38:0]; // @[viterbi.scala 182:91:@2775.6]
  assign _T_1279 = io_din_bits_7 ? _T_1277 : _T_1278; // @[viterbi.scala 182:33:@2776.6]
  assign _T_1281 = io_din_bits_7 == 1'h0; // @[viterbi.scala 182:101:@2777.6]
  assign _T_1282 = {_T_1279,_T_1281}; // @[Cat.scala 30:58:@2778.6]
  assign _T_1285 = io_din_bits_39 ? _T_1277 : _T_1278; // @[viterbi.scala 183:33:@2782.6]
  assign _T_1287 = io_din_bits_39 == 1'h0; // @[viterbi.scala 183:101:@2783.6]
  assign _T_1288 = {_T_1285,_T_1287}; // @[Cat.scala 30:58:@2784.6]
  assign _T_1289 = pathregs_16[38:0]; // @[viterbi.scala 182:67:@2786.6]
  assign _T_1290 = pathregs_17[38:0]; // @[viterbi.scala 182:91:@2787.6]
  assign _T_1291 = io_din_bits_8 ? _T_1289 : _T_1290; // @[viterbi.scala 182:33:@2788.6]
  assign _T_1293 = io_din_bits_8 == 1'h0; // @[viterbi.scala 182:101:@2789.6]
  assign _T_1294 = {_T_1291,_T_1293}; // @[Cat.scala 30:58:@2790.6]
  assign _T_1297 = io_din_bits_40 ? _T_1289 : _T_1290; // @[viterbi.scala 183:33:@2794.6]
  assign _T_1299 = io_din_bits_40 == 1'h0; // @[viterbi.scala 183:101:@2795.6]
  assign _T_1300 = {_T_1297,_T_1299}; // @[Cat.scala 30:58:@2796.6]
  assign _T_1301 = pathregs_18[38:0]; // @[viterbi.scala 182:67:@2798.6]
  assign _T_1302 = pathregs_19[38:0]; // @[viterbi.scala 182:91:@2799.6]
  assign _T_1303 = io_din_bits_9 ? _T_1301 : _T_1302; // @[viterbi.scala 182:33:@2800.6]
  assign _T_1305 = io_din_bits_9 == 1'h0; // @[viterbi.scala 182:101:@2801.6]
  assign _T_1306 = {_T_1303,_T_1305}; // @[Cat.scala 30:58:@2802.6]
  assign _T_1309 = io_din_bits_41 ? _T_1301 : _T_1302; // @[viterbi.scala 183:33:@2806.6]
  assign _T_1311 = io_din_bits_41 == 1'h0; // @[viterbi.scala 183:101:@2807.6]
  assign _T_1312 = {_T_1309,_T_1311}; // @[Cat.scala 30:58:@2808.6]
  assign _T_1313 = pathregs_20[38:0]; // @[viterbi.scala 182:67:@2810.6]
  assign _T_1314 = pathregs_21[38:0]; // @[viterbi.scala 182:91:@2811.6]
  assign _T_1315 = io_din_bits_10 ? _T_1313 : _T_1314; // @[viterbi.scala 182:33:@2812.6]
  assign _T_1317 = io_din_bits_10 == 1'h0; // @[viterbi.scala 182:101:@2813.6]
  assign _T_1318 = {_T_1315,_T_1317}; // @[Cat.scala 30:58:@2814.6]
  assign _T_1321 = io_din_bits_42 ? _T_1313 : _T_1314; // @[viterbi.scala 183:33:@2818.6]
  assign _T_1323 = io_din_bits_42 == 1'h0; // @[viterbi.scala 183:101:@2819.6]
  assign _T_1324 = {_T_1321,_T_1323}; // @[Cat.scala 30:58:@2820.6]
  assign _T_1325 = pathregs_22[38:0]; // @[viterbi.scala 182:67:@2822.6]
  assign _T_1326 = pathregs_23[38:0]; // @[viterbi.scala 182:91:@2823.6]
  assign _T_1327 = io_din_bits_11 ? _T_1325 : _T_1326; // @[viterbi.scala 182:33:@2824.6]
  assign _T_1329 = io_din_bits_11 == 1'h0; // @[viterbi.scala 182:101:@2825.6]
  assign _T_1330 = {_T_1327,_T_1329}; // @[Cat.scala 30:58:@2826.6]
  assign _T_1333 = io_din_bits_43 ? _T_1325 : _T_1326; // @[viterbi.scala 183:33:@2830.6]
  assign _T_1335 = io_din_bits_43 == 1'h0; // @[viterbi.scala 183:101:@2831.6]
  assign _T_1336 = {_T_1333,_T_1335}; // @[Cat.scala 30:58:@2832.6]
  assign _T_1337 = pathregs_24[38:0]; // @[viterbi.scala 182:67:@2834.6]
  assign _T_1338 = pathregs_25[38:0]; // @[viterbi.scala 182:91:@2835.6]
  assign _T_1339 = io_din_bits_12 ? _T_1337 : _T_1338; // @[viterbi.scala 182:33:@2836.6]
  assign _T_1341 = io_din_bits_12 == 1'h0; // @[viterbi.scala 182:101:@2837.6]
  assign _T_1342 = {_T_1339,_T_1341}; // @[Cat.scala 30:58:@2838.6]
  assign _T_1345 = io_din_bits_44 ? _T_1337 : _T_1338; // @[viterbi.scala 183:33:@2842.6]
  assign _T_1347 = io_din_bits_44 == 1'h0; // @[viterbi.scala 183:101:@2843.6]
  assign _T_1348 = {_T_1345,_T_1347}; // @[Cat.scala 30:58:@2844.6]
  assign _T_1349 = pathregs_26[38:0]; // @[viterbi.scala 182:67:@2846.6]
  assign _T_1350 = pathregs_27[38:0]; // @[viterbi.scala 182:91:@2847.6]
  assign _T_1351 = io_din_bits_13 ? _T_1349 : _T_1350; // @[viterbi.scala 182:33:@2848.6]
  assign _T_1353 = io_din_bits_13 == 1'h0; // @[viterbi.scala 182:101:@2849.6]
  assign _T_1354 = {_T_1351,_T_1353}; // @[Cat.scala 30:58:@2850.6]
  assign _T_1357 = io_din_bits_45 ? _T_1349 : _T_1350; // @[viterbi.scala 183:33:@2854.6]
  assign _T_1359 = io_din_bits_45 == 1'h0; // @[viterbi.scala 183:101:@2855.6]
  assign _T_1360 = {_T_1357,_T_1359}; // @[Cat.scala 30:58:@2856.6]
  assign _T_1361 = pathregs_28[38:0]; // @[viterbi.scala 182:67:@2858.6]
  assign _T_1362 = pathregs_29[38:0]; // @[viterbi.scala 182:91:@2859.6]
  assign _T_1363 = io_din_bits_14 ? _T_1361 : _T_1362; // @[viterbi.scala 182:33:@2860.6]
  assign _T_1365 = io_din_bits_14 == 1'h0; // @[viterbi.scala 182:101:@2861.6]
  assign _T_1366 = {_T_1363,_T_1365}; // @[Cat.scala 30:58:@2862.6]
  assign _T_1369 = io_din_bits_46 ? _T_1361 : _T_1362; // @[viterbi.scala 183:33:@2866.6]
  assign _T_1371 = io_din_bits_46 == 1'h0; // @[viterbi.scala 183:101:@2867.6]
  assign _T_1372 = {_T_1369,_T_1371}; // @[Cat.scala 30:58:@2868.6]
  assign _T_1373 = pathregs_30[38:0]; // @[viterbi.scala 182:67:@2870.6]
  assign _T_1374 = pathregs_31[38:0]; // @[viterbi.scala 182:91:@2871.6]
  assign _T_1375 = io_din_bits_15 ? _T_1373 : _T_1374; // @[viterbi.scala 182:33:@2872.6]
  assign _T_1377 = io_din_bits_15 == 1'h0; // @[viterbi.scala 182:101:@2873.6]
  assign _T_1378 = {_T_1375,_T_1377}; // @[Cat.scala 30:58:@2874.6]
  assign _T_1381 = io_din_bits_47 ? _T_1373 : _T_1374; // @[viterbi.scala 183:33:@2878.6]
  assign _T_1383 = io_din_bits_47 == 1'h0; // @[viterbi.scala 183:101:@2879.6]
  assign _T_1384 = {_T_1381,_T_1383}; // @[Cat.scala 30:58:@2880.6]
  assign _T_1385 = pathregs_32[38:0]; // @[viterbi.scala 182:67:@2882.6]
  assign _T_1386 = pathregs_33[38:0]; // @[viterbi.scala 182:91:@2883.6]
  assign _T_1387 = io_din_bits_16 ? _T_1385 : _T_1386; // @[viterbi.scala 182:33:@2884.6]
  assign _T_1389 = io_din_bits_16 == 1'h0; // @[viterbi.scala 182:101:@2885.6]
  assign _T_1390 = {_T_1387,_T_1389}; // @[Cat.scala 30:58:@2886.6]
  assign _T_1393 = io_din_bits_48 ? _T_1385 : _T_1386; // @[viterbi.scala 183:33:@2890.6]
  assign _T_1395 = io_din_bits_48 == 1'h0; // @[viterbi.scala 183:101:@2891.6]
  assign _T_1396 = {_T_1393,_T_1395}; // @[Cat.scala 30:58:@2892.6]
  assign _T_1397 = pathregs_34[38:0]; // @[viterbi.scala 182:67:@2894.6]
  assign _T_1398 = pathregs_35[38:0]; // @[viterbi.scala 182:91:@2895.6]
  assign _T_1399 = io_din_bits_17 ? _T_1397 : _T_1398; // @[viterbi.scala 182:33:@2896.6]
  assign _T_1401 = io_din_bits_17 == 1'h0; // @[viterbi.scala 182:101:@2897.6]
  assign _T_1402 = {_T_1399,_T_1401}; // @[Cat.scala 30:58:@2898.6]
  assign _T_1405 = io_din_bits_49 ? _T_1397 : _T_1398; // @[viterbi.scala 183:33:@2902.6]
  assign _T_1407 = io_din_bits_49 == 1'h0; // @[viterbi.scala 183:101:@2903.6]
  assign _T_1408 = {_T_1405,_T_1407}; // @[Cat.scala 30:58:@2904.6]
  assign _T_1409 = pathregs_36[38:0]; // @[viterbi.scala 182:67:@2906.6]
  assign _T_1410 = pathregs_37[38:0]; // @[viterbi.scala 182:91:@2907.6]
  assign _T_1411 = io_din_bits_18 ? _T_1409 : _T_1410; // @[viterbi.scala 182:33:@2908.6]
  assign _T_1413 = io_din_bits_18 == 1'h0; // @[viterbi.scala 182:101:@2909.6]
  assign _T_1414 = {_T_1411,_T_1413}; // @[Cat.scala 30:58:@2910.6]
  assign _T_1417 = io_din_bits_50 ? _T_1409 : _T_1410; // @[viterbi.scala 183:33:@2914.6]
  assign _T_1419 = io_din_bits_50 == 1'h0; // @[viterbi.scala 183:101:@2915.6]
  assign _T_1420 = {_T_1417,_T_1419}; // @[Cat.scala 30:58:@2916.6]
  assign _T_1421 = pathregs_38[38:0]; // @[viterbi.scala 182:67:@2918.6]
  assign _T_1422 = pathregs_39[38:0]; // @[viterbi.scala 182:91:@2919.6]
  assign _T_1423 = io_din_bits_19 ? _T_1421 : _T_1422; // @[viterbi.scala 182:33:@2920.6]
  assign _T_1425 = io_din_bits_19 == 1'h0; // @[viterbi.scala 182:101:@2921.6]
  assign _T_1426 = {_T_1423,_T_1425}; // @[Cat.scala 30:58:@2922.6]
  assign _T_1429 = io_din_bits_51 ? _T_1421 : _T_1422; // @[viterbi.scala 183:33:@2926.6]
  assign _T_1431 = io_din_bits_51 == 1'h0; // @[viterbi.scala 183:101:@2927.6]
  assign _T_1432 = {_T_1429,_T_1431}; // @[Cat.scala 30:58:@2928.6]
  assign _T_1433 = pathregs_40[38:0]; // @[viterbi.scala 182:67:@2930.6]
  assign _T_1434 = pathregs_41[38:0]; // @[viterbi.scala 182:91:@2931.6]
  assign _T_1435 = io_din_bits_20 ? _T_1433 : _T_1434; // @[viterbi.scala 182:33:@2932.6]
  assign _T_1437 = io_din_bits_20 == 1'h0; // @[viterbi.scala 182:101:@2933.6]
  assign _T_1438 = {_T_1435,_T_1437}; // @[Cat.scala 30:58:@2934.6]
  assign _T_1441 = io_din_bits_52 ? _T_1433 : _T_1434; // @[viterbi.scala 183:33:@2938.6]
  assign _T_1443 = io_din_bits_52 == 1'h0; // @[viterbi.scala 183:101:@2939.6]
  assign _T_1444 = {_T_1441,_T_1443}; // @[Cat.scala 30:58:@2940.6]
  assign _T_1445 = pathregs_42[38:0]; // @[viterbi.scala 182:67:@2942.6]
  assign _T_1446 = pathregs_43[38:0]; // @[viterbi.scala 182:91:@2943.6]
  assign _T_1447 = io_din_bits_21 ? _T_1445 : _T_1446; // @[viterbi.scala 182:33:@2944.6]
  assign _T_1449 = io_din_bits_21 == 1'h0; // @[viterbi.scala 182:101:@2945.6]
  assign _T_1450 = {_T_1447,_T_1449}; // @[Cat.scala 30:58:@2946.6]
  assign _T_1453 = io_din_bits_53 ? _T_1445 : _T_1446; // @[viterbi.scala 183:33:@2950.6]
  assign _T_1455 = io_din_bits_53 == 1'h0; // @[viterbi.scala 183:101:@2951.6]
  assign _T_1456 = {_T_1453,_T_1455}; // @[Cat.scala 30:58:@2952.6]
  assign _T_1457 = pathregs_44[38:0]; // @[viterbi.scala 182:67:@2954.6]
  assign _T_1458 = pathregs_45[38:0]; // @[viterbi.scala 182:91:@2955.6]
  assign _T_1459 = io_din_bits_22 ? _T_1457 : _T_1458; // @[viterbi.scala 182:33:@2956.6]
  assign _T_1461 = io_din_bits_22 == 1'h0; // @[viterbi.scala 182:101:@2957.6]
  assign _T_1462 = {_T_1459,_T_1461}; // @[Cat.scala 30:58:@2958.6]
  assign _T_1465 = io_din_bits_54 ? _T_1457 : _T_1458; // @[viterbi.scala 183:33:@2962.6]
  assign _T_1467 = io_din_bits_54 == 1'h0; // @[viterbi.scala 183:101:@2963.6]
  assign _T_1468 = {_T_1465,_T_1467}; // @[Cat.scala 30:58:@2964.6]
  assign _T_1469 = pathregs_46[38:0]; // @[viterbi.scala 182:67:@2966.6]
  assign _T_1470 = pathregs_47[38:0]; // @[viterbi.scala 182:91:@2967.6]
  assign _T_1471 = io_din_bits_23 ? _T_1469 : _T_1470; // @[viterbi.scala 182:33:@2968.6]
  assign _T_1473 = io_din_bits_23 == 1'h0; // @[viterbi.scala 182:101:@2969.6]
  assign _T_1474 = {_T_1471,_T_1473}; // @[Cat.scala 30:58:@2970.6]
  assign _T_1477 = io_din_bits_55 ? _T_1469 : _T_1470; // @[viterbi.scala 183:33:@2974.6]
  assign _T_1479 = io_din_bits_55 == 1'h0; // @[viterbi.scala 183:101:@2975.6]
  assign _T_1480 = {_T_1477,_T_1479}; // @[Cat.scala 30:58:@2976.6]
  assign _T_1481 = pathregs_48[38:0]; // @[viterbi.scala 182:67:@2978.6]
  assign _T_1482 = pathregs_49[38:0]; // @[viterbi.scala 182:91:@2979.6]
  assign _T_1483 = io_din_bits_24 ? _T_1481 : _T_1482; // @[viterbi.scala 182:33:@2980.6]
  assign _T_1485 = io_din_bits_24 == 1'h0; // @[viterbi.scala 182:101:@2981.6]
  assign _T_1486 = {_T_1483,_T_1485}; // @[Cat.scala 30:58:@2982.6]
  assign _T_1489 = io_din_bits_56 ? _T_1481 : _T_1482; // @[viterbi.scala 183:33:@2986.6]
  assign _T_1491 = io_din_bits_56 == 1'h0; // @[viterbi.scala 183:101:@2987.6]
  assign _T_1492 = {_T_1489,_T_1491}; // @[Cat.scala 30:58:@2988.6]
  assign _T_1493 = pathregs_50[38:0]; // @[viterbi.scala 182:67:@2990.6]
  assign _T_1494 = pathregs_51[38:0]; // @[viterbi.scala 182:91:@2991.6]
  assign _T_1495 = io_din_bits_25 ? _T_1493 : _T_1494; // @[viterbi.scala 182:33:@2992.6]
  assign _T_1497 = io_din_bits_25 == 1'h0; // @[viterbi.scala 182:101:@2993.6]
  assign _T_1498 = {_T_1495,_T_1497}; // @[Cat.scala 30:58:@2994.6]
  assign _T_1501 = io_din_bits_57 ? _T_1493 : _T_1494; // @[viterbi.scala 183:33:@2998.6]
  assign _T_1503 = io_din_bits_57 == 1'h0; // @[viterbi.scala 183:101:@2999.6]
  assign _T_1504 = {_T_1501,_T_1503}; // @[Cat.scala 30:58:@3000.6]
  assign _T_1505 = pathregs_52[38:0]; // @[viterbi.scala 182:67:@3002.6]
  assign _T_1506 = pathregs_53[38:0]; // @[viterbi.scala 182:91:@3003.6]
  assign _T_1507 = io_din_bits_26 ? _T_1505 : _T_1506; // @[viterbi.scala 182:33:@3004.6]
  assign _T_1509 = io_din_bits_26 == 1'h0; // @[viterbi.scala 182:101:@3005.6]
  assign _T_1510 = {_T_1507,_T_1509}; // @[Cat.scala 30:58:@3006.6]
  assign _T_1513 = io_din_bits_58 ? _T_1505 : _T_1506; // @[viterbi.scala 183:33:@3010.6]
  assign _T_1515 = io_din_bits_58 == 1'h0; // @[viterbi.scala 183:101:@3011.6]
  assign _T_1516 = {_T_1513,_T_1515}; // @[Cat.scala 30:58:@3012.6]
  assign _T_1517 = pathregs_54[38:0]; // @[viterbi.scala 182:67:@3014.6]
  assign _T_1518 = pathregs_55[38:0]; // @[viterbi.scala 182:91:@3015.6]
  assign _T_1519 = io_din_bits_27 ? _T_1517 : _T_1518; // @[viterbi.scala 182:33:@3016.6]
  assign _T_1521 = io_din_bits_27 == 1'h0; // @[viterbi.scala 182:101:@3017.6]
  assign _T_1522 = {_T_1519,_T_1521}; // @[Cat.scala 30:58:@3018.6]
  assign _T_1525 = io_din_bits_59 ? _T_1517 : _T_1518; // @[viterbi.scala 183:33:@3022.6]
  assign _T_1527 = io_din_bits_59 == 1'h0; // @[viterbi.scala 183:101:@3023.6]
  assign _T_1528 = {_T_1525,_T_1527}; // @[Cat.scala 30:58:@3024.6]
  assign _T_1529 = pathregs_56[38:0]; // @[viterbi.scala 182:67:@3026.6]
  assign _T_1530 = pathregs_57[38:0]; // @[viterbi.scala 182:91:@3027.6]
  assign _T_1531 = io_din_bits_28 ? _T_1529 : _T_1530; // @[viterbi.scala 182:33:@3028.6]
  assign _T_1533 = io_din_bits_28 == 1'h0; // @[viterbi.scala 182:101:@3029.6]
  assign _T_1534 = {_T_1531,_T_1533}; // @[Cat.scala 30:58:@3030.6]
  assign _T_1537 = io_din_bits_60 ? _T_1529 : _T_1530; // @[viterbi.scala 183:33:@3034.6]
  assign _T_1539 = io_din_bits_60 == 1'h0; // @[viterbi.scala 183:101:@3035.6]
  assign _T_1540 = {_T_1537,_T_1539}; // @[Cat.scala 30:58:@3036.6]
  assign _T_1541 = pathregs_58[38:0]; // @[viterbi.scala 182:67:@3038.6]
  assign _T_1542 = pathregs_59[38:0]; // @[viterbi.scala 182:91:@3039.6]
  assign _T_1543 = io_din_bits_29 ? _T_1541 : _T_1542; // @[viterbi.scala 182:33:@3040.6]
  assign _T_1545 = io_din_bits_29 == 1'h0; // @[viterbi.scala 182:101:@3041.6]
  assign _T_1546 = {_T_1543,_T_1545}; // @[Cat.scala 30:58:@3042.6]
  assign _T_1549 = io_din_bits_61 ? _T_1541 : _T_1542; // @[viterbi.scala 183:33:@3046.6]
  assign _T_1551 = io_din_bits_61 == 1'h0; // @[viterbi.scala 183:101:@3047.6]
  assign _T_1552 = {_T_1549,_T_1551}; // @[Cat.scala 30:58:@3048.6]
  assign _T_1553 = pathregs_60[38:0]; // @[viterbi.scala 182:67:@3050.6]
  assign _T_1554 = pathregs_61[38:0]; // @[viterbi.scala 182:91:@3051.6]
  assign _T_1555 = io_din_bits_30 ? _T_1553 : _T_1554; // @[viterbi.scala 182:33:@3052.6]
  assign _T_1557 = io_din_bits_30 == 1'h0; // @[viterbi.scala 182:101:@3053.6]
  assign _T_1558 = {_T_1555,_T_1557}; // @[Cat.scala 30:58:@3054.6]
  assign _T_1561 = io_din_bits_62 ? _T_1553 : _T_1554; // @[viterbi.scala 183:33:@3058.6]
  assign _T_1563 = io_din_bits_62 == 1'h0; // @[viterbi.scala 183:101:@3059.6]
  assign _T_1564 = {_T_1561,_T_1563}; // @[Cat.scala 30:58:@3060.6]
  assign _T_1565 = pathregs_62[38:0]; // @[viterbi.scala 182:67:@3062.6]
  assign _T_1566 = pathregs_63[38:0]; // @[viterbi.scala 182:91:@3063.6]
  assign _T_1567 = io_din_bits_31 ? _T_1565 : _T_1566; // @[viterbi.scala 182:33:@3064.6]
  assign _T_1569 = io_din_bits_31 == 1'h0; // @[viterbi.scala 182:101:@3065.6]
  assign _T_1570 = {_T_1567,_T_1569}; // @[Cat.scala 30:58:@3066.6]
  assign _T_1573 = io_din_bits_63 ? _T_1565 : _T_1566; // @[viterbi.scala 183:33:@3070.6]
  assign _T_1575 = io_din_bits_63 == 1'h0; // @[viterbi.scala 183:101:@3071.6]
  assign _T_1576 = {_T_1573,_T_1575}; // @[Cat.scala 30:58:@3072.6]
  assign _GEN_0 = io_din_valid ? _T_1198 : pathregs_0; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_1 = io_din_valid ? _T_1204 : pathregs_32; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_2 = io_din_valid ? _T_1210 : pathregs_1; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_3 = io_din_valid ? _T_1216 : pathregs_33; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_4 = io_din_valid ? _T_1222 : pathregs_2; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_5 = io_din_valid ? _T_1228 : pathregs_34; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_6 = io_din_valid ? _T_1234 : pathregs_3; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_7 = io_din_valid ? _T_1240 : pathregs_35; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_8 = io_din_valid ? _T_1246 : pathregs_4; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_9 = io_din_valid ? _T_1252 : pathregs_36; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_10 = io_din_valid ? _T_1258 : pathregs_5; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_11 = io_din_valid ? _T_1264 : pathregs_37; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_12 = io_din_valid ? _T_1270 : pathregs_6; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_13 = io_din_valid ? _T_1276 : pathregs_38; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_14 = io_din_valid ? _T_1282 : pathregs_7; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_15 = io_din_valid ? _T_1288 : pathregs_39; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_16 = io_din_valid ? _T_1294 : pathregs_8; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_17 = io_din_valid ? _T_1300 : pathregs_40; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_18 = io_din_valid ? _T_1306 : pathregs_9; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_19 = io_din_valid ? _T_1312 : pathregs_41; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_20 = io_din_valid ? _T_1318 : pathregs_10; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_21 = io_din_valid ? _T_1324 : pathregs_42; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_22 = io_din_valid ? _T_1330 : pathregs_11; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_23 = io_din_valid ? _T_1336 : pathregs_43; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_24 = io_din_valid ? _T_1342 : pathregs_12; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_25 = io_din_valid ? _T_1348 : pathregs_44; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_26 = io_din_valid ? _T_1354 : pathregs_13; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_27 = io_din_valid ? _T_1360 : pathregs_45; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_28 = io_din_valid ? _T_1366 : pathregs_14; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_29 = io_din_valid ? _T_1372 : pathregs_46; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_30 = io_din_valid ? _T_1378 : pathregs_15; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_31 = io_din_valid ? _T_1384 : pathregs_47; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_32 = io_din_valid ? _T_1390 : pathregs_16; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_33 = io_din_valid ? _T_1396 : pathregs_48; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_34 = io_din_valid ? _T_1402 : pathregs_17; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_35 = io_din_valid ? _T_1408 : pathregs_49; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_36 = io_din_valid ? _T_1414 : pathregs_18; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_37 = io_din_valid ? _T_1420 : pathregs_50; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_38 = io_din_valid ? _T_1426 : pathregs_19; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_39 = io_din_valid ? _T_1432 : pathregs_51; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_40 = io_din_valid ? _T_1438 : pathregs_20; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_41 = io_din_valid ? _T_1444 : pathregs_52; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_42 = io_din_valid ? _T_1450 : pathregs_21; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_43 = io_din_valid ? _T_1456 : pathregs_53; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_44 = io_din_valid ? _T_1462 : pathregs_22; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_45 = io_din_valid ? _T_1468 : pathregs_54; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_46 = io_din_valid ? _T_1474 : pathregs_23; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_47 = io_din_valid ? _T_1480 : pathregs_55; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_48 = io_din_valid ? _T_1486 : pathregs_24; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_49 = io_din_valid ? _T_1492 : pathregs_56; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_50 = io_din_valid ? _T_1498 : pathregs_25; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_51 = io_din_valid ? _T_1504 : pathregs_57; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_52 = io_din_valid ? _T_1510 : pathregs_26; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_53 = io_din_valid ? _T_1516 : pathregs_58; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_54 = io_din_valid ? _T_1522 : pathregs_27; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_55 = io_din_valid ? _T_1528 : pathregs_59; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_56 = io_din_valid ? _T_1534 : pathregs_28; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_57 = io_din_valid ? _T_1540 : pathregs_60; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_58 = io_din_valid ? _T_1546 : pathregs_29; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_59 = io_din_valid ? _T_1552 : pathregs_61; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_60 = io_din_valid ? _T_1558 : pathregs_30; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_61 = io_din_valid ? _T_1564 : pathregs_62; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_62 = io_din_valid ? _T_1570 : pathregs_31; // @[viterbi.scala 180:23:@2689.4]
  assign _GEN_63 = io_din_valid ? _T_1576 : pathregs_63; // @[viterbi.scala 180:23:@2689.4]
  assign io_dout = pathregs_0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{$random}};
  pathregs_0 = _RAND_0[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{$random}};
  pathregs_1 = _RAND_1[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{$random}};
  pathregs_2 = _RAND_2[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{$random}};
  pathregs_3 = _RAND_3[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  pathregs_4 = _RAND_4[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  pathregs_5 = _RAND_5[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{$random}};
  pathregs_6 = _RAND_6[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{$random}};
  pathregs_7 = _RAND_7[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{$random}};
  pathregs_8 = _RAND_8[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{$random}};
  pathregs_9 = _RAND_9[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{$random}};
  pathregs_10 = _RAND_10[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{$random}};
  pathregs_11 = _RAND_11[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{$random}};
  pathregs_12 = _RAND_12[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{$random}};
  pathregs_13 = _RAND_13[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{$random}};
  pathregs_14 = _RAND_14[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{$random}};
  pathregs_15 = _RAND_15[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{$random}};
  pathregs_16 = _RAND_16[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{$random}};
  pathregs_17 = _RAND_17[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{$random}};
  pathregs_18 = _RAND_18[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{$random}};
  pathregs_19 = _RAND_19[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{$random}};
  pathregs_20 = _RAND_20[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{$random}};
  pathregs_21 = _RAND_21[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{$random}};
  pathregs_22 = _RAND_22[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{$random}};
  pathregs_23 = _RAND_23[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{$random}};
  pathregs_24 = _RAND_24[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{$random}};
  pathregs_25 = _RAND_25[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{$random}};
  pathregs_26 = _RAND_26[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{$random}};
  pathregs_27 = _RAND_27[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {2{$random}};
  pathregs_28 = _RAND_28[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {2{$random}};
  pathregs_29 = _RAND_29[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{$random}};
  pathregs_30 = _RAND_30[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {2{$random}};
  pathregs_31 = _RAND_31[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {2{$random}};
  pathregs_32 = _RAND_32[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {2{$random}};
  pathregs_33 = _RAND_33[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {2{$random}};
  pathregs_34 = _RAND_34[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {2{$random}};
  pathregs_35 = _RAND_35[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {2{$random}};
  pathregs_36 = _RAND_36[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {2{$random}};
  pathregs_37 = _RAND_37[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {2{$random}};
  pathregs_38 = _RAND_38[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {2{$random}};
  pathregs_39 = _RAND_39[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {2{$random}};
  pathregs_40 = _RAND_40[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {2{$random}};
  pathregs_41 = _RAND_41[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {2{$random}};
  pathregs_42 = _RAND_42[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {2{$random}};
  pathregs_43 = _RAND_43[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {2{$random}};
  pathregs_44 = _RAND_44[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {2{$random}};
  pathregs_45 = _RAND_45[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {2{$random}};
  pathregs_46 = _RAND_46[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {2{$random}};
  pathregs_47 = _RAND_47[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {2{$random}};
  pathregs_48 = _RAND_48[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {2{$random}};
  pathregs_49 = _RAND_49[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {2{$random}};
  pathregs_50 = _RAND_50[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {2{$random}};
  pathregs_51 = _RAND_51[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {2{$random}};
  pathregs_52 = _RAND_52[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {2{$random}};
  pathregs_53 = _RAND_53[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {2{$random}};
  pathregs_54 = _RAND_54[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {2{$random}};
  pathregs_55 = _RAND_55[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {2{$random}};
  pathregs_56 = _RAND_56[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {2{$random}};
  pathregs_57 = _RAND_57[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {2{$random}};
  pathregs_58 = _RAND_58[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {2{$random}};
  pathregs_59 = _RAND_59[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {2{$random}};
  pathregs_60 = _RAND_60[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {2{$random}};
  pathregs_61 = _RAND_61[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {2{$random}};
  pathregs_62 = _RAND_62[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {2{$random}};
  pathregs_63 = _RAND_63[39:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      pathregs_0 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_0 <= _T_1198;
      end
    end
    if (reset) begin
      pathregs_1 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_1 <= _T_1210;
      end
    end
    if (reset) begin
      pathregs_2 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_2 <= _T_1222;
      end
    end
    if (reset) begin
      pathregs_3 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_3 <= _T_1234;
      end
    end
    if (reset) begin
      pathregs_4 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_4 <= _T_1246;
      end
    end
    if (reset) begin
      pathregs_5 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_5 <= _T_1258;
      end
    end
    if (reset) begin
      pathregs_6 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_6 <= _T_1270;
      end
    end
    if (reset) begin
      pathregs_7 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_7 <= _T_1282;
      end
    end
    if (reset) begin
      pathregs_8 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_8 <= _T_1294;
      end
    end
    if (reset) begin
      pathregs_9 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_9 <= _T_1306;
      end
    end
    if (reset) begin
      pathregs_10 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_10 <= _T_1318;
      end
    end
    if (reset) begin
      pathregs_11 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_11 <= _T_1330;
      end
    end
    if (reset) begin
      pathregs_12 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_12 <= _T_1342;
      end
    end
    if (reset) begin
      pathregs_13 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_13 <= _T_1354;
      end
    end
    if (reset) begin
      pathregs_14 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_14 <= _T_1366;
      end
    end
    if (reset) begin
      pathregs_15 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_15 <= _T_1378;
      end
    end
    if (reset) begin
      pathregs_16 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_16 <= _T_1390;
      end
    end
    if (reset) begin
      pathregs_17 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_17 <= _T_1402;
      end
    end
    if (reset) begin
      pathregs_18 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_18 <= _T_1414;
      end
    end
    if (reset) begin
      pathregs_19 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_19 <= _T_1426;
      end
    end
    if (reset) begin
      pathregs_20 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_20 <= _T_1438;
      end
    end
    if (reset) begin
      pathregs_21 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_21 <= _T_1450;
      end
    end
    if (reset) begin
      pathregs_22 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_22 <= _T_1462;
      end
    end
    if (reset) begin
      pathregs_23 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_23 <= _T_1474;
      end
    end
    if (reset) begin
      pathregs_24 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_24 <= _T_1486;
      end
    end
    if (reset) begin
      pathregs_25 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_25 <= _T_1498;
      end
    end
    if (reset) begin
      pathregs_26 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_26 <= _T_1510;
      end
    end
    if (reset) begin
      pathregs_27 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_27 <= _T_1522;
      end
    end
    if (reset) begin
      pathregs_28 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_28 <= _T_1534;
      end
    end
    if (reset) begin
      pathregs_29 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_29 <= _T_1546;
      end
    end
    if (reset) begin
      pathregs_30 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_30 <= _T_1558;
      end
    end
    if (reset) begin
      pathregs_31 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_31 <= _T_1570;
      end
    end
    if (reset) begin
      pathregs_32 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_32 <= _T_1204;
      end
    end
    if (reset) begin
      pathregs_33 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_33 <= _T_1216;
      end
    end
    if (reset) begin
      pathregs_34 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_34 <= _T_1228;
      end
    end
    if (reset) begin
      pathregs_35 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_35 <= _T_1240;
      end
    end
    if (reset) begin
      pathregs_36 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_36 <= _T_1252;
      end
    end
    if (reset) begin
      pathregs_37 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_37 <= _T_1264;
      end
    end
    if (reset) begin
      pathregs_38 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_38 <= _T_1276;
      end
    end
    if (reset) begin
      pathregs_39 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_39 <= _T_1288;
      end
    end
    if (reset) begin
      pathregs_40 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_40 <= _T_1300;
      end
    end
    if (reset) begin
      pathregs_41 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_41 <= _T_1312;
      end
    end
    if (reset) begin
      pathregs_42 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_42 <= _T_1324;
      end
    end
    if (reset) begin
      pathregs_43 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_43 <= _T_1336;
      end
    end
    if (reset) begin
      pathregs_44 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_44 <= _T_1348;
      end
    end
    if (reset) begin
      pathregs_45 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_45 <= _T_1360;
      end
    end
    if (reset) begin
      pathregs_46 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_46 <= _T_1372;
      end
    end
    if (reset) begin
      pathregs_47 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_47 <= _T_1384;
      end
    end
    if (reset) begin
      pathregs_48 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_48 <= _T_1396;
      end
    end
    if (reset) begin
      pathregs_49 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_49 <= _T_1408;
      end
    end
    if (reset) begin
      pathregs_50 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_50 <= _T_1420;
      end
    end
    if (reset) begin
      pathregs_51 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_51 <= _T_1432;
      end
    end
    if (reset) begin
      pathregs_52 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_52 <= _T_1444;
      end
    end
    if (reset) begin
      pathregs_53 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_53 <= _T_1456;
      end
    end
    if (reset) begin
      pathregs_54 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_54 <= _T_1468;
      end
    end
    if (reset) begin
      pathregs_55 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_55 <= _T_1480;
      end
    end
    if (reset) begin
      pathregs_56 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_56 <= _T_1492;
      end
    end
    if (reset) begin
      pathregs_57 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_57 <= _T_1504;
      end
    end
    if (reset) begin
      pathregs_58 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_58 <= _T_1516;
      end
    end
    if (reset) begin
      pathregs_59 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_59 <= _T_1528;
      end
    end
    if (reset) begin
      pathregs_60 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_60 <= _T_1540;
      end
    end
    if (reset) begin
      pathregs_61 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_61 <= _T_1552;
      end
    end
    if (reset) begin
      pathregs_62 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_62 <= _T_1564;
      end
    end
    if (reset) begin
      pathregs_63 <= 40'h0;
    end else begin
      if (io_din_valid) begin
        pathregs_63 <= _T_1576;
      end
    end
  end
endmodule
module ViterbiControl( // @[:@3077.2]
  input        clock, // @[:@3078.4]
  input        reset, // @[:@3079.4]
  input        io_init, // @[:@3080.4]
  input        io_valid, // @[:@3080.4]
  input        io_last, // @[:@3080.4]
  output       io_busy, // @[:@3080.4]
  output       io_write, // @[:@3080.4]
  output [2:0] io_dout_sel // @[:@3080.4]
);
  reg [1:0] state; // @[viterbi.scala 99:22:@3082.4]
  reg [31:0] _RAND_0;
  reg [5:0] cnt; // @[viterbi.scala 100:22:@3083.4]
  reg [31:0] _RAND_1;
  reg  first; // @[viterbi.scala 101:22:@3084.4]
  reg [31:0] _RAND_2;
  reg [1:0] lastcnt; // @[viterbi.scala 102:25:@3085.4]
  reg [31:0] _RAND_3;
  wire  _T_17; // @[viterbi.scala 107:22:@3088.4]
  wire  _T_19; // @[viterbi.scala 107:14:@3089.4]
  wire  _T_20; // @[Conditional.scala 37:30:@3091.4]
  wire [1:0] _GEN_0; // @[viterbi.scala 112:22:@3093.6]
  wire [5:0] _GEN_1; // @[viterbi.scala 112:22:@3093.6]
  wire [1:0] _GEN_2; // @[viterbi.scala 112:22:@3093.6]
  wire  _GEN_3; // @[viterbi.scala 112:22:@3093.6]
  wire  _T_24; // @[Conditional.scala 37:30:@3101.6]
  wire [6:0] _T_26; // @[viterbi.scala 121:20:@3104.10]
  wire [5:0] _T_27; // @[viterbi.scala 121:20:@3105.10]
  wire  _T_29; // @[viterbi.scala 122:20:@3107.10]
  wire  _T_30; // @[viterbi.scala 122:34:@3108.10]
  wire [5:0] _GEN_5; // @[viterbi.scala 122:44:@3109.10]
  wire  _GEN_6; // @[viterbi.scala 122:44:@3109.10]
  wire  _T_35; // @[viterbi.scala 127:20:@3114.10]
  wire  _T_37; // @[viterbi.scala 127:32:@3115.10]
  wire  _T_38; // @[viterbi.scala 127:29:@3116.10]
  wire  _T_42; // @[viterbi.scala 131:27:@3121.14]
  wire [2:0] _T_44; // @[viterbi.scala 134:34:@3126.16]
  wire [1:0] _T_45; // @[viterbi.scala 134:34:@3127.16]
  wire [1:0] _GEN_7; // @[viterbi.scala 131:36:@3122.14]
  wire [1:0] _GEN_8; // @[viterbi.scala 131:36:@3122.14]
  wire [1:0] _GEN_9; // @[viterbi.scala 130:26:@3120.12]
  wire [1:0] _GEN_10; // @[viterbi.scala 130:26:@3120.12]
  wire  _GEN_11; // @[viterbi.scala 127:40:@3117.10]
  wire [5:0] _GEN_12; // @[viterbi.scala 127:40:@3117.10]
  wire [1:0] _GEN_13; // @[viterbi.scala 127:40:@3117.10]
  wire [1:0] _GEN_14; // @[viterbi.scala 127:40:@3117.10]
  wire [5:0] _GEN_15; // @[viterbi.scala 120:22:@3103.8]
  wire  _GEN_16; // @[viterbi.scala 120:22:@3103.8]
  wire  _GEN_17; // @[viterbi.scala 120:22:@3103.8]
  wire [1:0] _GEN_18; // @[viterbi.scala 120:22:@3103.8]
  wire [1:0] _GEN_19; // @[viterbi.scala 120:22:@3103.8]
  wire  _T_46; // @[Conditional.scala 37:30:@3135.8]
  wire  _T_50; // @[Conditional.scala 37:30:@3143.10]
  wire [2:0] _T_54; // @[viterbi.scala 146:25:@3148.12]
  wire  _T_57; // @[viterbi.scala 148:17:@3151.12]
  wire [1:0] _GEN_20; // @[viterbi.scala 148:26:@3152.12]
  wire [5:0] _GEN_21; // @[Conditional.scala 39:67:@3144.10]
  wire [2:0] _GEN_22; // @[Conditional.scala 39:67:@3144.10]
  wire [1:0] _GEN_24; // @[Conditional.scala 39:67:@3144.10]
  wire [1:0] _GEN_25; // @[Conditional.scala 39:67:@3136.8]
  wire [5:0] _GEN_26; // @[Conditional.scala 39:67:@3136.8]
  wire [2:0] _GEN_27; // @[Conditional.scala 39:67:@3136.8]
  wire  _GEN_28; // @[Conditional.scala 39:67:@3136.8]
  wire [5:0] _GEN_29; // @[Conditional.scala 39:67:@3102.6]
  wire  _GEN_30; // @[Conditional.scala 39:67:@3102.6]
  wire  _GEN_31; // @[Conditional.scala 39:67:@3102.6]
  wire [1:0] _GEN_32; // @[Conditional.scala 39:67:@3102.6]
  wire [1:0] _GEN_33; // @[Conditional.scala 39:67:@3102.6]
  wire [2:0] _GEN_34; // @[Conditional.scala 39:67:@3102.6]
  wire [1:0] _GEN_35; // @[Conditional.scala 40:58:@3092.4]
  wire [5:0] _GEN_36; // @[Conditional.scala 40:58:@3092.4]
  wire [1:0] _GEN_37; // @[Conditional.scala 40:58:@3092.4]
  wire  _GEN_38; // @[Conditional.scala 40:58:@3092.4]
  wire  _GEN_39; // @[Conditional.scala 40:58:@3092.4]
  wire [2:0] _GEN_40; // @[Conditional.scala 40:58:@3092.4]
  assign _T_17 = state == 2'h0; // @[viterbi.scala 107:22:@3088.4]
  assign _T_19 = _T_17 == 1'h0; // @[viterbi.scala 107:14:@3089.4]
  assign _T_20 = 2'h0 == state; // @[Conditional.scala 37:30:@3091.4]
  assign _GEN_0 = io_init ? 2'h1 : state; // @[viterbi.scala 112:22:@3093.6]
  assign _GEN_1 = io_init ? 6'h0 : cnt; // @[viterbi.scala 112:22:@3093.6]
  assign _GEN_2 = io_init ? 2'h0 : lastcnt; // @[viterbi.scala 112:22:@3093.6]
  assign _GEN_3 = io_init ? 1'h1 : first; // @[viterbi.scala 112:22:@3093.6]
  assign _T_24 = 2'h1 == state; // @[Conditional.scala 37:30:@3101.6]
  assign _T_26 = cnt + 6'h1; // @[viterbi.scala 121:20:@3104.10]
  assign _T_27 = _T_26[5:0]; // @[viterbi.scala 121:20:@3105.10]
  assign _T_29 = cnt == 6'h2e; // @[viterbi.scala 122:20:@3107.10]
  assign _T_30 = _T_29 & first; // @[viterbi.scala 122:34:@3108.10]
  assign _GEN_5 = _T_30 ? 6'h0 : _T_27; // @[viterbi.scala 122:44:@3109.10]
  assign _GEN_6 = _T_30 ? 1'h0 : first; // @[viterbi.scala 122:44:@3109.10]
  assign _T_35 = cnt == 6'h7; // @[viterbi.scala 127:20:@3114.10]
  assign _T_37 = first == 1'h0; // @[viterbi.scala 127:32:@3115.10]
  assign _T_38 = _T_35 & _T_37; // @[viterbi.scala 127:29:@3116.10]
  assign _T_42 = lastcnt == 2'h2; // @[viterbi.scala 131:27:@3121.14]
  assign _T_44 = lastcnt + 2'h1; // @[viterbi.scala 134:34:@3126.16]
  assign _T_45 = _T_44[1:0]; // @[viterbi.scala 134:34:@3127.16]
  assign _GEN_7 = _T_42 ? 2'h2 : state; // @[viterbi.scala 131:36:@3122.14]
  assign _GEN_8 = _T_42 ? lastcnt : _T_45; // @[viterbi.scala 131:36:@3122.14]
  assign _GEN_9 = io_last ? _GEN_7 : state; // @[viterbi.scala 130:26:@3120.12]
  assign _GEN_10 = io_last ? _GEN_8 : lastcnt; // @[viterbi.scala 130:26:@3120.12]
  assign _GEN_11 = _T_38 ? 1'h1 : _T_30; // @[viterbi.scala 127:40:@3117.10]
  assign _GEN_12 = _T_38 ? 6'h0 : _GEN_5; // @[viterbi.scala 127:40:@3117.10]
  assign _GEN_13 = _T_38 ? _GEN_9 : state; // @[viterbi.scala 127:40:@3117.10]
  assign _GEN_14 = _T_38 ? _GEN_10 : lastcnt; // @[viterbi.scala 127:40:@3117.10]
  assign _GEN_15 = io_valid ? _GEN_12 : cnt; // @[viterbi.scala 120:22:@3103.8]
  assign _GEN_16 = io_valid ? _GEN_11 : 1'h0; // @[viterbi.scala 120:22:@3103.8]
  assign _GEN_17 = io_valid ? _GEN_6 : first; // @[viterbi.scala 120:22:@3103.8]
  assign _GEN_18 = io_valid ? _GEN_13 : state; // @[viterbi.scala 120:22:@3103.8]
  assign _GEN_19 = io_valid ? _GEN_14 : lastcnt; // @[viterbi.scala 120:22:@3103.8]
  assign _T_46 = 2'h2 == state; // @[Conditional.scala 37:30:@3135.8]
  assign _T_50 = 2'h3 == state; // @[Conditional.scala 37:30:@3143.10]
  assign _T_54 = cnt[2:0]; // @[viterbi.scala 146:25:@3148.12]
  assign _T_57 = cnt == 6'h5; // @[viterbi.scala 148:17:@3151.12]
  assign _GEN_20 = _T_57 ? 2'h0 : state; // @[viterbi.scala 148:26:@3152.12]
  assign _GEN_21 = _T_50 ? _T_27 : cnt; // @[Conditional.scala 39:67:@3144.10]
  assign _GEN_22 = _T_50 ? _T_54 : 3'h0; // @[Conditional.scala 39:67:@3144.10]
  assign _GEN_24 = _T_50 ? _GEN_20 : state; // @[Conditional.scala 39:67:@3144.10]
  assign _GEN_25 = _T_46 ? 2'h3 : _GEN_24; // @[Conditional.scala 39:67:@3136.8]
  assign _GEN_26 = _T_46 ? _T_27 : _GEN_21; // @[Conditional.scala 39:67:@3136.8]
  assign _GEN_27 = _T_46 ? 3'h0 : _GEN_22; // @[Conditional.scala 39:67:@3136.8]
  assign _GEN_28 = _T_46 ? 1'h0 : _T_50; // @[Conditional.scala 39:67:@3136.8]
  assign _GEN_29 = _T_24 ? _GEN_15 : _GEN_26; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_30 = _T_24 ? _GEN_16 : _GEN_28; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_31 = _T_24 ? _GEN_17 : first; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_32 = _T_24 ? _GEN_18 : _GEN_25; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_33 = _T_24 ? _GEN_19 : lastcnt; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_34 = _T_24 ? 3'h0 : _GEN_27; // @[Conditional.scala 39:67:@3102.6]
  assign _GEN_35 = _T_20 ? _GEN_0 : _GEN_32; // @[Conditional.scala 40:58:@3092.4]
  assign _GEN_36 = _T_20 ? _GEN_1 : _GEN_29; // @[Conditional.scala 40:58:@3092.4]
  assign _GEN_37 = _T_20 ? _GEN_2 : _GEN_33; // @[Conditional.scala 40:58:@3092.4]
  assign _GEN_38 = _T_20 ? _GEN_3 : _GEN_31; // @[Conditional.scala 40:58:@3092.4]
  assign _GEN_39 = _T_20 ? 1'h0 : _GEN_30; // @[Conditional.scala 40:58:@3092.4]
  assign _GEN_40 = _T_20 ? 3'h0 : _GEN_34; // @[Conditional.scala 40:58:@3092.4]
  assign io_busy = _T_19;
  assign io_write = _GEN_39;
  assign io_dout_sel = _GEN_40;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  cnt = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  first = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  lastcnt = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_20) begin
        if (io_init) begin
          state <= 2'h1;
        end
      end else begin
        if (_T_24) begin
          if (io_valid) begin
            if (_T_38) begin
              if (io_last) begin
                if (_T_42) begin
                  state <= 2'h2;
                end
              end
            end
          end
        end else begin
          if (_T_46) begin
            state <= 2'h3;
          end else begin
            if (_T_50) begin
              if (_T_57) begin
                state <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      cnt <= 6'h2e;
    end else begin
      if (_T_20) begin
        if (io_init) begin
          cnt <= 6'h0;
        end
      end else begin
        if (_T_24) begin
          if (io_valid) begin
            if (_T_38) begin
              cnt <= 6'h0;
            end else begin
              if (_T_30) begin
                cnt <= 6'h0;
              end else begin
                cnt <= _T_27;
              end
            end
          end
        end else begin
          if (_T_46) begin
            cnt <= _T_27;
          end else begin
            if (_T_50) begin
              cnt <= _T_27;
            end
          end
        end
      end
    end
    if (reset) begin
      first <= 1'h1;
    end else begin
      if (_T_20) begin
        if (io_init) begin
          first <= 1'h1;
        end
      end else begin
        if (_T_24) begin
          if (io_valid) begin
            if (_T_30) begin
              first <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      lastcnt <= 2'h0;
    end else begin
      if (_T_20) begin
        if (io_init) begin
          lastcnt <= 2'h0;
        end
      end else begin
        if (_T_24) begin
          if (io_valid) begin
            if (_T_38) begin
              if (io_last) begin
                if (!(_T_42)) begin
                  lastcnt <= _T_45;
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
module ViterbiDecoder( // @[:@3157.2]
  input         clock, // @[:@3158.4]
  input         reset, // @[:@3159.4]
  input         io_init, // @[:@3160.4]
  input         io_last, // @[:@3160.4]
  output        io_busy, // @[:@3160.4]
  input         io_din_valid, // @[:@3160.4]
  input  [2:0]  io_din_bits_0, // @[:@3160.4]
  input  [2:0]  io_din_bits_1, // @[:@3160.4]
  output        io_dout_valid, // @[:@3160.4]
  output [23:0] io_dout_bits // @[:@3160.4]
);
  wire [2:0] TransitionMetricUnit_io_din_0; // @[viterbi.scala 39:21:@3162.4]
  wire [2:0] TransitionMetricUnit_io_din_1; // @[viterbi.scala 39:21:@3162.4]
  wire [3:0] TransitionMetricUnit_io_dout_0; // @[viterbi.scala 39:21:@3162.4]
  wire [3:0] TransitionMetricUnit_io_dout_1; // @[viterbi.scala 39:21:@3162.4]
  wire [3:0] TransitionMetricUnit_io_dout_2; // @[viterbi.scala 39:21:@3162.4]
  wire [3:0] TransitionMetricUnit_io_dout_3; // @[viterbi.scala 39:21:@3162.4]
  wire  ACSBlock_clock; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_init; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_din_valid; // @[viterbi.scala 42:21:@3167.4]
  wire [3:0] ACSBlock_io_din_bits_0; // @[viterbi.scala 42:21:@3167.4]
  wire [3:0] ACSBlock_io_din_bits_1; // @[viterbi.scala 42:21:@3167.4]
  wire [3:0] ACSBlock_io_din_bits_2; // @[viterbi.scala 42:21:@3167.4]
  wire [3:0] ACSBlock_io_din_bits_3; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_0; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_1; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_2; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_3; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_4; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_5; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_6; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_7; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_8; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_9; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_10; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_11; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_12; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_13; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_14; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_15; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_16; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_17; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_18; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_19; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_20; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_21; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_22; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_23; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_24; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_25; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_26; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_27; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_28; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_29; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_30; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_31; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_32; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_33; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_34; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_35; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_36; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_37; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_38; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_39; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_40; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_41; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_42; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_43; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_44; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_45; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_46; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_47; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_48; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_49; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_50; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_51; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_52; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_53; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_54; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_55; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_56; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_57; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_58; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_59; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_60; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_61; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_62; // @[viterbi.scala 42:21:@3167.4]
  wire  ACSBlock_io_dout_63; // @[viterbi.scala 42:21:@3167.4]
  wire  TraceBackUnit_clock; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_reset; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_valid; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_0; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_1; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_2; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_3; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_4; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_5; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_6; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_7; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_8; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_9; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_10; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_11; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_12; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_13; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_14; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_15; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_16; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_17; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_18; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_19; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_20; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_21; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_22; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_23; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_24; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_25; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_26; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_27; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_28; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_29; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_30; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_31; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_32; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_33; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_34; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_35; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_36; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_37; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_38; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_39; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_40; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_41; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_42; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_43; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_44; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_45; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_46; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_47; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_48; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_49; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_50; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_51; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_52; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_53; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_54; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_55; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_56; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_57; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_58; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_59; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_60; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_61; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_62; // @[viterbi.scala 47:21:@3176.4]
  wire  TraceBackUnit_io_din_bits_63; // @[viterbi.scala 47:21:@3176.4]
  wire [39:0] TraceBackUnit_io_dout; // @[viterbi.scala 47:21:@3176.4]
  wire  ViterbiControl_clock; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_reset; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_io_init; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_io_valid; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_io_last; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_io_busy; // @[viterbi.scala 51:22:@3244.4]
  wire  ViterbiControl_io_write; // @[viterbi.scala 51:22:@3244.4]
  wire [2:0] ViterbiControl_io_dout_sel; // @[viterbi.scala 51:22:@3244.4]
  reg [7:0] _T_64_0; // @[viterbi.scala 68:23:@3268.4]
  reg [31:0] _RAND_0;
  reg [7:0] _T_64_1; // @[viterbi.scala 68:23:@3268.4]
  reg [31:0] _RAND_1;
  reg [7:0] _T_64_2; // @[viterbi.scala 68:23:@3268.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_72; // @[viterbi.scala 69:27:@3269.4]
  reg [31:0] _RAND_3;
  reg  _T_86; // @[viterbi.scala 83:29:@3288.4]
  reg [31:0] _RAND_4;
  wire [7:0] _T_38; // @[viterbi.scala 59:60:@3251.4]
  wire [7:0] _T_40; // @[viterbi.scala 60:31:@3252.4]
  wire [7:0] _T_42; // @[viterbi.scala 61:31:@3253.4]
  wire [7:0] _T_44; // @[viterbi.scala 62:31:@3254.4]
  wire [7:0] _T_46; // @[viterbi.scala 63:31:@3255.4]
  wire [1:0] _T_48; // @[viterbi.scala 64:35:@3256.4]
  wire [7:0] _T_50; // @[Cat.scala 30:58:@3257.4]
  wire  _T_51; // @[Mux.scala 46:19:@3258.4]
  wire [7:0] _T_52; // @[Mux.scala 46:16:@3259.4]
  wire  _T_53; // @[Mux.scala 46:19:@3260.4]
  wire [7:0] _T_54; // @[Mux.scala 46:16:@3261.4]
  wire  _T_55; // @[Mux.scala 46:19:@3262.4]
  wire [7:0] _T_56; // @[Mux.scala 46:16:@3263.4]
  wire  _T_57; // @[Mux.scala 46:19:@3264.4]
  wire [7:0] _T_58; // @[Mux.scala 46:16:@3265.4]
  wire  _T_59; // @[Mux.scala 46:19:@3266.4]
  wire [7:0] _T_60; // @[Mux.scala 46:16:@3267.4]
  wire [2:0] _T_77; // @[viterbi.scala 76:28:@3276.6]
  wire [1:0] _T_78; // @[viterbi.scala 76:28:@3277.6]
  wire  _T_80; // @[viterbi.scala 77:22:@3279.6]
  wire [1:0] _GEN_0; // @[viterbi.scala 77:31:@3280.6]
  wire [7:0] _GEN_2; // @[viterbi.scala 72:26:@3272.4]
  wire [7:0] _GEN_3; // @[viterbi.scala 72:26:@3272.4]
  wire [7:0] _GEN_4; // @[viterbi.scala 72:26:@3272.4]
  wire [1:0] _GEN_5; // @[viterbi.scala 72:26:@3272.4]
  wire  _GEN_6; // @[viterbi.scala 72:26:@3272.4]
  wire [15:0] _T_83; // @[Cat.scala 30:58:@3285.4]
  wire [23:0] _T_84; // @[Cat.scala 30:58:@3286.4]
  TransitionMetricUnit TransitionMetricUnit ( // @[viterbi.scala 39:21:@3162.4]
    .io_din_0(TransitionMetricUnit_io_din_0),
    .io_din_1(TransitionMetricUnit_io_din_1),
    .io_dout_0(TransitionMetricUnit_io_dout_0),
    .io_dout_1(TransitionMetricUnit_io_dout_1),
    .io_dout_2(TransitionMetricUnit_io_dout_2),
    .io_dout_3(TransitionMetricUnit_io_dout_3)
  );
  ACSBlock ACSBlock ( // @[viterbi.scala 42:21:@3167.4]
    .clock(ACSBlock_clock),
    .io_init(ACSBlock_io_init),
    .io_din_valid(ACSBlock_io_din_valid),
    .io_din_bits_0(ACSBlock_io_din_bits_0),
    .io_din_bits_1(ACSBlock_io_din_bits_1),
    .io_din_bits_2(ACSBlock_io_din_bits_2),
    .io_din_bits_3(ACSBlock_io_din_bits_3),
    .io_dout_0(ACSBlock_io_dout_0),
    .io_dout_1(ACSBlock_io_dout_1),
    .io_dout_2(ACSBlock_io_dout_2),
    .io_dout_3(ACSBlock_io_dout_3),
    .io_dout_4(ACSBlock_io_dout_4),
    .io_dout_5(ACSBlock_io_dout_5),
    .io_dout_6(ACSBlock_io_dout_6),
    .io_dout_7(ACSBlock_io_dout_7),
    .io_dout_8(ACSBlock_io_dout_8),
    .io_dout_9(ACSBlock_io_dout_9),
    .io_dout_10(ACSBlock_io_dout_10),
    .io_dout_11(ACSBlock_io_dout_11),
    .io_dout_12(ACSBlock_io_dout_12),
    .io_dout_13(ACSBlock_io_dout_13),
    .io_dout_14(ACSBlock_io_dout_14),
    .io_dout_15(ACSBlock_io_dout_15),
    .io_dout_16(ACSBlock_io_dout_16),
    .io_dout_17(ACSBlock_io_dout_17),
    .io_dout_18(ACSBlock_io_dout_18),
    .io_dout_19(ACSBlock_io_dout_19),
    .io_dout_20(ACSBlock_io_dout_20),
    .io_dout_21(ACSBlock_io_dout_21),
    .io_dout_22(ACSBlock_io_dout_22),
    .io_dout_23(ACSBlock_io_dout_23),
    .io_dout_24(ACSBlock_io_dout_24),
    .io_dout_25(ACSBlock_io_dout_25),
    .io_dout_26(ACSBlock_io_dout_26),
    .io_dout_27(ACSBlock_io_dout_27),
    .io_dout_28(ACSBlock_io_dout_28),
    .io_dout_29(ACSBlock_io_dout_29),
    .io_dout_30(ACSBlock_io_dout_30),
    .io_dout_31(ACSBlock_io_dout_31),
    .io_dout_32(ACSBlock_io_dout_32),
    .io_dout_33(ACSBlock_io_dout_33),
    .io_dout_34(ACSBlock_io_dout_34),
    .io_dout_35(ACSBlock_io_dout_35),
    .io_dout_36(ACSBlock_io_dout_36),
    .io_dout_37(ACSBlock_io_dout_37),
    .io_dout_38(ACSBlock_io_dout_38),
    .io_dout_39(ACSBlock_io_dout_39),
    .io_dout_40(ACSBlock_io_dout_40),
    .io_dout_41(ACSBlock_io_dout_41),
    .io_dout_42(ACSBlock_io_dout_42),
    .io_dout_43(ACSBlock_io_dout_43),
    .io_dout_44(ACSBlock_io_dout_44),
    .io_dout_45(ACSBlock_io_dout_45),
    .io_dout_46(ACSBlock_io_dout_46),
    .io_dout_47(ACSBlock_io_dout_47),
    .io_dout_48(ACSBlock_io_dout_48),
    .io_dout_49(ACSBlock_io_dout_49),
    .io_dout_50(ACSBlock_io_dout_50),
    .io_dout_51(ACSBlock_io_dout_51),
    .io_dout_52(ACSBlock_io_dout_52),
    .io_dout_53(ACSBlock_io_dout_53),
    .io_dout_54(ACSBlock_io_dout_54),
    .io_dout_55(ACSBlock_io_dout_55),
    .io_dout_56(ACSBlock_io_dout_56),
    .io_dout_57(ACSBlock_io_dout_57),
    .io_dout_58(ACSBlock_io_dout_58),
    .io_dout_59(ACSBlock_io_dout_59),
    .io_dout_60(ACSBlock_io_dout_60),
    .io_dout_61(ACSBlock_io_dout_61),
    .io_dout_62(ACSBlock_io_dout_62),
    .io_dout_63(ACSBlock_io_dout_63)
  );
  TraceBackUnit TraceBackUnit ( // @[viterbi.scala 47:21:@3176.4]
    .clock(TraceBackUnit_clock),
    .reset(TraceBackUnit_reset),
    .io_din_valid(TraceBackUnit_io_din_valid),
    .io_din_bits_0(TraceBackUnit_io_din_bits_0),
    .io_din_bits_1(TraceBackUnit_io_din_bits_1),
    .io_din_bits_2(TraceBackUnit_io_din_bits_2),
    .io_din_bits_3(TraceBackUnit_io_din_bits_3),
    .io_din_bits_4(TraceBackUnit_io_din_bits_4),
    .io_din_bits_5(TraceBackUnit_io_din_bits_5),
    .io_din_bits_6(TraceBackUnit_io_din_bits_6),
    .io_din_bits_7(TraceBackUnit_io_din_bits_7),
    .io_din_bits_8(TraceBackUnit_io_din_bits_8),
    .io_din_bits_9(TraceBackUnit_io_din_bits_9),
    .io_din_bits_10(TraceBackUnit_io_din_bits_10),
    .io_din_bits_11(TraceBackUnit_io_din_bits_11),
    .io_din_bits_12(TraceBackUnit_io_din_bits_12),
    .io_din_bits_13(TraceBackUnit_io_din_bits_13),
    .io_din_bits_14(TraceBackUnit_io_din_bits_14),
    .io_din_bits_15(TraceBackUnit_io_din_bits_15),
    .io_din_bits_16(TraceBackUnit_io_din_bits_16),
    .io_din_bits_17(TraceBackUnit_io_din_bits_17),
    .io_din_bits_18(TraceBackUnit_io_din_bits_18),
    .io_din_bits_19(TraceBackUnit_io_din_bits_19),
    .io_din_bits_20(TraceBackUnit_io_din_bits_20),
    .io_din_bits_21(TraceBackUnit_io_din_bits_21),
    .io_din_bits_22(TraceBackUnit_io_din_bits_22),
    .io_din_bits_23(TraceBackUnit_io_din_bits_23),
    .io_din_bits_24(TraceBackUnit_io_din_bits_24),
    .io_din_bits_25(TraceBackUnit_io_din_bits_25),
    .io_din_bits_26(TraceBackUnit_io_din_bits_26),
    .io_din_bits_27(TraceBackUnit_io_din_bits_27),
    .io_din_bits_28(TraceBackUnit_io_din_bits_28),
    .io_din_bits_29(TraceBackUnit_io_din_bits_29),
    .io_din_bits_30(TraceBackUnit_io_din_bits_30),
    .io_din_bits_31(TraceBackUnit_io_din_bits_31),
    .io_din_bits_32(TraceBackUnit_io_din_bits_32),
    .io_din_bits_33(TraceBackUnit_io_din_bits_33),
    .io_din_bits_34(TraceBackUnit_io_din_bits_34),
    .io_din_bits_35(TraceBackUnit_io_din_bits_35),
    .io_din_bits_36(TraceBackUnit_io_din_bits_36),
    .io_din_bits_37(TraceBackUnit_io_din_bits_37),
    .io_din_bits_38(TraceBackUnit_io_din_bits_38),
    .io_din_bits_39(TraceBackUnit_io_din_bits_39),
    .io_din_bits_40(TraceBackUnit_io_din_bits_40),
    .io_din_bits_41(TraceBackUnit_io_din_bits_41),
    .io_din_bits_42(TraceBackUnit_io_din_bits_42),
    .io_din_bits_43(TraceBackUnit_io_din_bits_43),
    .io_din_bits_44(TraceBackUnit_io_din_bits_44),
    .io_din_bits_45(TraceBackUnit_io_din_bits_45),
    .io_din_bits_46(TraceBackUnit_io_din_bits_46),
    .io_din_bits_47(TraceBackUnit_io_din_bits_47),
    .io_din_bits_48(TraceBackUnit_io_din_bits_48),
    .io_din_bits_49(TraceBackUnit_io_din_bits_49),
    .io_din_bits_50(TraceBackUnit_io_din_bits_50),
    .io_din_bits_51(TraceBackUnit_io_din_bits_51),
    .io_din_bits_52(TraceBackUnit_io_din_bits_52),
    .io_din_bits_53(TraceBackUnit_io_din_bits_53),
    .io_din_bits_54(TraceBackUnit_io_din_bits_54),
    .io_din_bits_55(TraceBackUnit_io_din_bits_55),
    .io_din_bits_56(TraceBackUnit_io_din_bits_56),
    .io_din_bits_57(TraceBackUnit_io_din_bits_57),
    .io_din_bits_58(TraceBackUnit_io_din_bits_58),
    .io_din_bits_59(TraceBackUnit_io_din_bits_59),
    .io_din_bits_60(TraceBackUnit_io_din_bits_60),
    .io_din_bits_61(TraceBackUnit_io_din_bits_61),
    .io_din_bits_62(TraceBackUnit_io_din_bits_62),
    .io_din_bits_63(TraceBackUnit_io_din_bits_63),
    .io_dout(TraceBackUnit_io_dout)
  );
  ViterbiControl ViterbiControl ( // @[viterbi.scala 51:22:@3244.4]
    .clock(ViterbiControl_clock),
    .reset(ViterbiControl_reset),
    .io_init(ViterbiControl_io_init),
    .io_valid(ViterbiControl_io_valid),
    .io_last(ViterbiControl_io_last),
    .io_busy(ViterbiControl_io_busy),
    .io_write(ViterbiControl_io_write),
    .io_dout_sel(ViterbiControl_io_dout_sel)
  );
  assign _T_38 = TraceBackUnit_io_dout[39:32]; // @[viterbi.scala 59:60:@3251.4]
  assign _T_40 = TraceBackUnit_io_dout[33:26]; // @[viterbi.scala 60:31:@3252.4]
  assign _T_42 = TraceBackUnit_io_dout[25:18]; // @[viterbi.scala 61:31:@3253.4]
  assign _T_44 = TraceBackUnit_io_dout[17:10]; // @[viterbi.scala 62:31:@3254.4]
  assign _T_46 = TraceBackUnit_io_dout[9:2]; // @[viterbi.scala 63:31:@3255.4]
  assign _T_48 = TraceBackUnit_io_dout[1:0]; // @[viterbi.scala 64:35:@3256.4]
  assign _T_50 = {_T_48,6'h0}; // @[Cat.scala 30:58:@3257.4]
  assign _T_51 = 3'h5 == ViterbiControl_io_dout_sel; // @[Mux.scala 46:19:@3258.4]
  assign _T_52 = _T_51 ? _T_50 : _T_38; // @[Mux.scala 46:16:@3259.4]
  assign _T_53 = 3'h4 == ViterbiControl_io_dout_sel; // @[Mux.scala 46:19:@3260.4]
  assign _T_54 = _T_53 ? _T_46 : _T_52; // @[Mux.scala 46:16:@3261.4]
  assign _T_55 = 3'h3 == ViterbiControl_io_dout_sel; // @[Mux.scala 46:19:@3262.4]
  assign _T_56 = _T_55 ? _T_44 : _T_54; // @[Mux.scala 46:16:@3263.4]
  assign _T_57 = 3'h2 == ViterbiControl_io_dout_sel; // @[Mux.scala 46:19:@3264.4]
  assign _T_58 = _T_57 ? _T_42 : _T_56; // @[Mux.scala 46:16:@3265.4]
  assign _T_59 = 3'h1 == ViterbiControl_io_dout_sel; // @[Mux.scala 46:19:@3266.4]
  assign _T_60 = _T_59 ? _T_40 : _T_58; // @[Mux.scala 46:16:@3267.4]
  assign _T_77 = _T_72 + 2'h1; // @[viterbi.scala 76:28:@3276.6]
  assign _T_78 = _T_77[1:0]; // @[viterbi.scala 76:28:@3277.6]
  assign _T_80 = _T_72 == 2'h2; // @[viterbi.scala 77:22:@3279.6]
  assign _GEN_0 = _T_80 ? 2'h0 : _T_78; // @[viterbi.scala 77:31:@3280.6]
  assign _GEN_2 = ViterbiControl_io_write ? _T_60 : _T_64_0; // @[viterbi.scala 72:26:@3272.4]
  assign _GEN_3 = ViterbiControl_io_write ? _T_64_0 : _T_64_1; // @[viterbi.scala 72:26:@3272.4]
  assign _GEN_4 = ViterbiControl_io_write ? _T_64_1 : _T_64_2; // @[viterbi.scala 72:26:@3272.4]
  assign _GEN_5 = ViterbiControl_io_write ? _GEN_0 : _T_72; // @[viterbi.scala 72:26:@3272.4]
  assign _GEN_6 = ViterbiControl_io_write ? _T_80 : 1'h0; // @[viterbi.scala 72:26:@3272.4]
  assign _T_83 = {_T_64_2,_T_64_1}; // @[Cat.scala 30:58:@3285.4]
  assign _T_84 = {_T_83,_T_64_0}; // @[Cat.scala 30:58:@3286.4]
  assign io_busy = ViterbiControl_io_busy;
  assign io_dout_valid = _T_86;
  assign io_dout_bits = _T_84;
  assign TransitionMetricUnit_io_din_0 = io_din_bits_0;
  assign TransitionMetricUnit_io_din_1 = io_din_bits_1;
  assign ACSBlock_clock = clock;
  assign ACSBlock_io_init = io_init;
  assign ACSBlock_io_din_valid = io_din_valid;
  assign ACSBlock_io_din_bits_0 = TransitionMetricUnit_io_dout_0;
  assign ACSBlock_io_din_bits_1 = TransitionMetricUnit_io_dout_1;
  assign ACSBlock_io_din_bits_2 = TransitionMetricUnit_io_dout_2;
  assign ACSBlock_io_din_bits_3 = TransitionMetricUnit_io_dout_3;
  assign TraceBackUnit_clock = clock;
  assign TraceBackUnit_reset = reset;
  assign TraceBackUnit_io_din_valid = io_din_valid;
  assign TraceBackUnit_io_din_bits_0 = ACSBlock_io_dout_0;
  assign TraceBackUnit_io_din_bits_1 = ACSBlock_io_dout_1;
  assign TraceBackUnit_io_din_bits_2 = ACSBlock_io_dout_2;
  assign TraceBackUnit_io_din_bits_3 = ACSBlock_io_dout_3;
  assign TraceBackUnit_io_din_bits_4 = ACSBlock_io_dout_4;
  assign TraceBackUnit_io_din_bits_5 = ACSBlock_io_dout_5;
  assign TraceBackUnit_io_din_bits_6 = ACSBlock_io_dout_6;
  assign TraceBackUnit_io_din_bits_7 = ACSBlock_io_dout_7;
  assign TraceBackUnit_io_din_bits_8 = ACSBlock_io_dout_8;
  assign TraceBackUnit_io_din_bits_9 = ACSBlock_io_dout_9;
  assign TraceBackUnit_io_din_bits_10 = ACSBlock_io_dout_10;
  assign TraceBackUnit_io_din_bits_11 = ACSBlock_io_dout_11;
  assign TraceBackUnit_io_din_bits_12 = ACSBlock_io_dout_12;
  assign TraceBackUnit_io_din_bits_13 = ACSBlock_io_dout_13;
  assign TraceBackUnit_io_din_bits_14 = ACSBlock_io_dout_14;
  assign TraceBackUnit_io_din_bits_15 = ACSBlock_io_dout_15;
  assign TraceBackUnit_io_din_bits_16 = ACSBlock_io_dout_16;
  assign TraceBackUnit_io_din_bits_17 = ACSBlock_io_dout_17;
  assign TraceBackUnit_io_din_bits_18 = ACSBlock_io_dout_18;
  assign TraceBackUnit_io_din_bits_19 = ACSBlock_io_dout_19;
  assign TraceBackUnit_io_din_bits_20 = ACSBlock_io_dout_20;
  assign TraceBackUnit_io_din_bits_21 = ACSBlock_io_dout_21;
  assign TraceBackUnit_io_din_bits_22 = ACSBlock_io_dout_22;
  assign TraceBackUnit_io_din_bits_23 = ACSBlock_io_dout_23;
  assign TraceBackUnit_io_din_bits_24 = ACSBlock_io_dout_24;
  assign TraceBackUnit_io_din_bits_25 = ACSBlock_io_dout_25;
  assign TraceBackUnit_io_din_bits_26 = ACSBlock_io_dout_26;
  assign TraceBackUnit_io_din_bits_27 = ACSBlock_io_dout_27;
  assign TraceBackUnit_io_din_bits_28 = ACSBlock_io_dout_28;
  assign TraceBackUnit_io_din_bits_29 = ACSBlock_io_dout_29;
  assign TraceBackUnit_io_din_bits_30 = ACSBlock_io_dout_30;
  assign TraceBackUnit_io_din_bits_31 = ACSBlock_io_dout_31;
  assign TraceBackUnit_io_din_bits_32 = ACSBlock_io_dout_32;
  assign TraceBackUnit_io_din_bits_33 = ACSBlock_io_dout_33;
  assign TraceBackUnit_io_din_bits_34 = ACSBlock_io_dout_34;
  assign TraceBackUnit_io_din_bits_35 = ACSBlock_io_dout_35;
  assign TraceBackUnit_io_din_bits_36 = ACSBlock_io_dout_36;
  assign TraceBackUnit_io_din_bits_37 = ACSBlock_io_dout_37;
  assign TraceBackUnit_io_din_bits_38 = ACSBlock_io_dout_38;
  assign TraceBackUnit_io_din_bits_39 = ACSBlock_io_dout_39;
  assign TraceBackUnit_io_din_bits_40 = ACSBlock_io_dout_40;
  assign TraceBackUnit_io_din_bits_41 = ACSBlock_io_dout_41;
  assign TraceBackUnit_io_din_bits_42 = ACSBlock_io_dout_42;
  assign TraceBackUnit_io_din_bits_43 = ACSBlock_io_dout_43;
  assign TraceBackUnit_io_din_bits_44 = ACSBlock_io_dout_44;
  assign TraceBackUnit_io_din_bits_45 = ACSBlock_io_dout_45;
  assign TraceBackUnit_io_din_bits_46 = ACSBlock_io_dout_46;
  assign TraceBackUnit_io_din_bits_47 = ACSBlock_io_dout_47;
  assign TraceBackUnit_io_din_bits_48 = ACSBlock_io_dout_48;
  assign TraceBackUnit_io_din_bits_49 = ACSBlock_io_dout_49;
  assign TraceBackUnit_io_din_bits_50 = ACSBlock_io_dout_50;
  assign TraceBackUnit_io_din_bits_51 = ACSBlock_io_dout_51;
  assign TraceBackUnit_io_din_bits_52 = ACSBlock_io_dout_52;
  assign TraceBackUnit_io_din_bits_53 = ACSBlock_io_dout_53;
  assign TraceBackUnit_io_din_bits_54 = ACSBlock_io_dout_54;
  assign TraceBackUnit_io_din_bits_55 = ACSBlock_io_dout_55;
  assign TraceBackUnit_io_din_bits_56 = ACSBlock_io_dout_56;
  assign TraceBackUnit_io_din_bits_57 = ACSBlock_io_dout_57;
  assign TraceBackUnit_io_din_bits_58 = ACSBlock_io_dout_58;
  assign TraceBackUnit_io_din_bits_59 = ACSBlock_io_dout_59;
  assign TraceBackUnit_io_din_bits_60 = ACSBlock_io_dout_60;
  assign TraceBackUnit_io_din_bits_61 = ACSBlock_io_dout_61;
  assign TraceBackUnit_io_din_bits_62 = ACSBlock_io_dout_62;
  assign TraceBackUnit_io_din_bits_63 = ACSBlock_io_dout_63;
  assign ViterbiControl_clock = clock;
  assign ViterbiControl_reset = reset;
  assign ViterbiControl_io_init = io_init;
  assign ViterbiControl_io_valid = io_din_valid;
  assign ViterbiControl_io_last = io_last;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_64_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_64_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_64_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_72 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_86 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (ViterbiControl_io_write) begin
      if (_T_59) begin
        _T_64_0 <= _T_40;
      end else begin
        if (_T_57) begin
          _T_64_0 <= _T_42;
        end else begin
          if (_T_55) begin
            _T_64_0 <= _T_44;
          end else begin
            if (_T_53) begin
              _T_64_0 <= _T_46;
            end else begin
              if (_T_51) begin
                _T_64_0 <= _T_50;
              end else begin
                _T_64_0 <= _T_38;
              end
            end
          end
        end
      end
    end
    if (ViterbiControl_io_write) begin
      _T_64_1 <= _T_64_0;
    end
    if (ViterbiControl_io_write) begin
      _T_64_2 <= _T_64_1;
    end
    if (reset) begin
      _T_72 <= 2'h0;
    end else begin
      if (ViterbiControl_io_write) begin
        if (_T_80) begin
          _T_72 <= 2'h0;
        end else begin
          _T_72 <= _T_78;
        end
      end
    end
    if (ViterbiControl_io_write) begin
      _T_86 <= _T_80;
    end else begin
      _T_86 <= 1'h0;
    end
  end
endmodule
module Scrambler( // @[:@3292.2]
  input         clock, // @[:@3293.4]
  input         reset, // @[:@3294.4]
  input         io_init, // @[:@3295.4]
  input  [6:0]  io_seed, // @[:@3295.4]
  input         io_din_valid, // @[:@3295.4]
  input  [23:0] io_din_bits, // @[:@3295.4]
  output        io_dout_valid, // @[:@3295.4]
  output [23:0] io_dout_bits // @[:@3295.4]
);
  reg [6:0] seed_reg; // @[scrambler.scala 74:25:@3321.4]
  reg [31:0] _RAND_0;
  reg [23:0] din_reg; // @[scrambler.scala 75:25:@3322.4]
  reg [31:0] _RAND_1;
  reg  val_reg; // @[scrambler.scala 76:25:@3324.4]
  reg [31:0] _RAND_2;
  wire  _T_86; // @[scrambler.scala 91:24:@3352.4]
  wire  _T_87; // @[scrambler.scala 91:38:@3353.4]
  wire  xor_b_22; // @[scrambler.scala 91:28:@3354.4]
  wire  _T_97; // @[scrambler.scala 96:36:@3367.4]
  wire  xor_b_18; // @[scrambler.scala 96:26:@3368.4]
  wire  _T_90; // @[scrambler.scala 92:38:@3357.4]
  wire  xor_b_21; // @[scrambler.scala 92:28:@3358.4]
  wire  xor_b_14; // @[scrambler.scala 101:26:@3377.4]
  wire  _T_99; // @[scrambler.scala 97:36:@3370.4]
  wire  xor_b_17; // @[scrambler.scala 97:26:@3371.4]
  wire  xor_b_10; // @[scrambler.scala 106:26:@3385.4]
  wire  _T_93; // @[scrambler.scala 93:38:@3361.4]
  wire  xor_b_20; // @[scrambler.scala 93:28:@3362.4]
  wire  xor_b_13; // @[scrambler.scala 102:26:@3379.4]
  wire  xor_b_6; // @[scrambler.scala 111:26:@3393.4]
  wire  _T_84; // @[scrambler.scala 90:38:@3349.4]
  wire  xor_b_23; // @[scrambler.scala 90:28:@3350.4]
  wire  xor_b_16; // @[scrambler.scala 98:26:@3373.4]
  wire  xor_b_9; // @[scrambler.scala 107:26:@3387.4]
  wire  xor_b_2; // @[scrambler.scala 116:25:@3401.4]
  wire  xor_b_19; // @[scrambler.scala 95:26:@3365.4]
  wire  xor_b_12; // @[scrambler.scala 103:26:@3381.4]
  wire  xor_b_5; // @[scrambler.scala 112:25:@3395.4]
  wire  xor_b_15; // @[scrambler.scala 100:26:@3375.4]
  wire  xor_b_8; // @[scrambler.scala 108:26:@3389.4]
  wire  xor_b_1; // @[scrambler.scala 117:25:@3403.4]
  wire [1:0] _T_43; // @[scrambler.scala 72:21:@3298.4]
  wire  xor_b_11; // @[scrambler.scala 105:26:@3383.4]
  wire  xor_b_4; // @[scrambler.scala 113:25:@3397.4]
  wire  xor_b_7; // @[scrambler.scala 110:26:@3391.4]
  wire  xor_b_0; // @[scrambler.scala 118:25:@3405.4]
  wire [2:0] _T_44; // @[scrambler.scala 72:21:@3299.4]
  wire [1:0] _T_45; // @[scrambler.scala 72:21:@3300.4]
  wire  xor_b_3; // @[scrambler.scala 115:25:@3399.4]
  wire [2:0] _T_46; // @[scrambler.scala 72:21:@3301.4]
  wire [5:0] _T_47; // @[scrambler.scala 72:21:@3302.4]
  wire [1:0] _T_48; // @[scrambler.scala 72:21:@3303.4]
  wire [2:0] _T_49; // @[scrambler.scala 72:21:@3304.4]
  wire [1:0] _T_50; // @[scrambler.scala 72:21:@3305.4]
  wire [2:0] _T_51; // @[scrambler.scala 72:21:@3306.4]
  wire [5:0] _T_52; // @[scrambler.scala 72:21:@3307.4]
  wire [11:0] _T_53; // @[scrambler.scala 72:21:@3308.4]
  wire [1:0] _T_54; // @[scrambler.scala 72:21:@3309.4]
  wire [2:0] _T_55; // @[scrambler.scala 72:21:@3310.4]
  wire [1:0] _T_56; // @[scrambler.scala 72:21:@3311.4]
  wire [2:0] _T_57; // @[scrambler.scala 72:21:@3312.4]
  wire [5:0] _T_58; // @[scrambler.scala 72:21:@3313.4]
  wire [1:0] _T_59; // @[scrambler.scala 72:21:@3314.4]
  wire [2:0] _T_60; // @[scrambler.scala 72:21:@3315.4]
  wire [1:0] _T_61; // @[scrambler.scala 72:21:@3316.4]
  wire [2:0] _T_62; // @[scrambler.scala 72:21:@3317.4]
  wire [5:0] _T_63; // @[scrambler.scala 72:21:@3318.4]
  wire [11:0] _T_64; // @[scrambler.scala 72:21:@3319.4]
  wire [23:0] xor_u; // @[scrambler.scala 72:21:@3320.4]
  wire  _T_69; // @[scrambler.scala 80:26:@3327.6]
  wire  _T_70; // @[scrambler.scala 80:36:@3328.6]
  wire  _T_71; // @[scrambler.scala 80:46:@3329.6]
  wire  _T_72; // @[scrambler.scala 80:56:@3330.6]
  wire  _T_73; // @[scrambler.scala 80:66:@3331.6]
  wire  _T_74; // @[scrambler.scala 80:76:@3332.6]
  wire  _T_75; // @[scrambler.scala 80:86:@3333.6]
  wire [1:0] _T_76; // @[Cat.scala 30:58:@3334.6]
  wire [2:0] _T_77; // @[Cat.scala 30:58:@3335.6]
  wire [1:0] _T_78; // @[Cat.scala 30:58:@3336.6]
  wire [1:0] _T_79; // @[Cat.scala 30:58:@3337.6]
  wire [3:0] _T_80; // @[Cat.scala 30:58:@3338.6]
  wire [6:0] _T_81; // @[Cat.scala 30:58:@3339.6]
  wire [6:0] _GEN_0; // @[scrambler.scala 79:18:@3326.4]
  wire [6:0] _GEN_1; // @[scrambler.scala 83:18:@3342.4]
  wire [23:0] _T_82; // @[scrambler.scala 87:42:@3345.4]
  assign _T_86 = seed_reg[4]; // @[scrambler.scala 91:24:@3352.4]
  assign _T_87 = seed_reg[1]; // @[scrambler.scala 91:38:@3353.4]
  assign xor_b_22 = _T_86 ^ _T_87; // @[scrambler.scala 91:28:@3354.4]
  assign _T_97 = seed_reg[5]; // @[scrambler.scala 96:36:@3367.4]
  assign xor_b_18 = xor_b_22 ^ _T_97; // @[scrambler.scala 96:26:@3368.4]
  assign _T_90 = seed_reg[2]; // @[scrambler.scala 92:38:@3357.4]
  assign xor_b_21 = _T_97 ^ _T_90; // @[scrambler.scala 92:28:@3358.4]
  assign xor_b_14 = xor_b_18 ^ xor_b_21; // @[scrambler.scala 101:26:@3377.4]
  assign _T_99 = seed_reg[6]; // @[scrambler.scala 97:36:@3370.4]
  assign xor_b_17 = xor_b_21 ^ _T_99; // @[scrambler.scala 97:26:@3371.4]
  assign xor_b_10 = xor_b_14 ^ xor_b_17; // @[scrambler.scala 106:26:@3385.4]
  assign _T_93 = seed_reg[3]; // @[scrambler.scala 93:38:@3361.4]
  assign xor_b_20 = _T_99 ^ _T_93; // @[scrambler.scala 93:28:@3362.4]
  assign xor_b_13 = xor_b_17 ^ xor_b_20; // @[scrambler.scala 102:26:@3379.4]
  assign xor_b_6 = xor_b_10 ^ xor_b_13; // @[scrambler.scala 111:26:@3393.4]
  assign _T_84 = seed_reg[0]; // @[scrambler.scala 90:38:@3349.4]
  assign xor_b_23 = _T_93 ^ _T_84; // @[scrambler.scala 90:28:@3350.4]
  assign xor_b_16 = xor_b_20 ^ xor_b_23; // @[scrambler.scala 98:26:@3373.4]
  assign xor_b_9 = xor_b_13 ^ xor_b_16; // @[scrambler.scala 107:26:@3387.4]
  assign xor_b_2 = xor_b_6 ^ xor_b_9; // @[scrambler.scala 116:25:@3401.4]
  assign xor_b_19 = xor_b_23 ^ _T_86; // @[scrambler.scala 95:26:@3365.4]
  assign xor_b_12 = xor_b_16 ^ xor_b_19; // @[scrambler.scala 103:26:@3381.4]
  assign xor_b_5 = xor_b_9 ^ xor_b_12; // @[scrambler.scala 112:25:@3395.4]
  assign xor_b_15 = xor_b_19 ^ xor_b_22; // @[scrambler.scala 100:26:@3375.4]
  assign xor_b_8 = xor_b_12 ^ xor_b_15; // @[scrambler.scala 108:26:@3389.4]
  assign xor_b_1 = xor_b_5 ^ xor_b_8; // @[scrambler.scala 117:25:@3403.4]
  assign _T_43 = {xor_b_2,xor_b_1}; // @[scrambler.scala 72:21:@3298.4]
  assign xor_b_11 = xor_b_15 ^ xor_b_18; // @[scrambler.scala 105:26:@3383.4]
  assign xor_b_4 = xor_b_8 ^ xor_b_11; // @[scrambler.scala 113:25:@3397.4]
  assign xor_b_7 = xor_b_11 ^ xor_b_14; // @[scrambler.scala 110:26:@3391.4]
  assign xor_b_0 = xor_b_4 ^ xor_b_7; // @[scrambler.scala 118:25:@3405.4]
  assign _T_44 = {_T_43,xor_b_0}; // @[scrambler.scala 72:21:@3299.4]
  assign _T_45 = {xor_b_5,xor_b_4}; // @[scrambler.scala 72:21:@3300.4]
  assign xor_b_3 = xor_b_7 ^ xor_b_10; // @[scrambler.scala 115:25:@3399.4]
  assign _T_46 = {_T_45,xor_b_3}; // @[scrambler.scala 72:21:@3301.4]
  assign _T_47 = {_T_46,_T_44}; // @[scrambler.scala 72:21:@3302.4]
  assign _T_48 = {xor_b_8,xor_b_7}; // @[scrambler.scala 72:21:@3303.4]
  assign _T_49 = {_T_48,xor_b_6}; // @[scrambler.scala 72:21:@3304.4]
  assign _T_50 = {xor_b_11,xor_b_10}; // @[scrambler.scala 72:21:@3305.4]
  assign _T_51 = {_T_50,xor_b_9}; // @[scrambler.scala 72:21:@3306.4]
  assign _T_52 = {_T_51,_T_49}; // @[scrambler.scala 72:21:@3307.4]
  assign _T_53 = {_T_52,_T_47}; // @[scrambler.scala 72:21:@3308.4]
  assign _T_54 = {xor_b_14,xor_b_13}; // @[scrambler.scala 72:21:@3309.4]
  assign _T_55 = {_T_54,xor_b_12}; // @[scrambler.scala 72:21:@3310.4]
  assign _T_56 = {xor_b_17,xor_b_16}; // @[scrambler.scala 72:21:@3311.4]
  assign _T_57 = {_T_56,xor_b_15}; // @[scrambler.scala 72:21:@3312.4]
  assign _T_58 = {_T_57,_T_55}; // @[scrambler.scala 72:21:@3313.4]
  assign _T_59 = {xor_b_20,xor_b_19}; // @[scrambler.scala 72:21:@3314.4]
  assign _T_60 = {_T_59,xor_b_18}; // @[scrambler.scala 72:21:@3315.4]
  assign _T_61 = {xor_b_23,xor_b_22}; // @[scrambler.scala 72:21:@3316.4]
  assign _T_62 = {_T_61,xor_b_21}; // @[scrambler.scala 72:21:@3317.4]
  assign _T_63 = {_T_62,_T_60}; // @[scrambler.scala 72:21:@3318.4]
  assign _T_64 = {_T_63,_T_58}; // @[scrambler.scala 72:21:@3319.4]
  assign xor_u = {_T_64,_T_53}; // @[scrambler.scala 72:21:@3320.4]
  assign _T_69 = xor_u[0]; // @[scrambler.scala 80:26:@3327.6]
  assign _T_70 = xor_u[1]; // @[scrambler.scala 80:36:@3328.6]
  assign _T_71 = xor_u[2]; // @[scrambler.scala 80:46:@3329.6]
  assign _T_72 = xor_u[3]; // @[scrambler.scala 80:56:@3330.6]
  assign _T_73 = xor_u[4]; // @[scrambler.scala 80:66:@3331.6]
  assign _T_74 = xor_u[5]; // @[scrambler.scala 80:76:@3332.6]
  assign _T_75 = xor_u[6]; // @[scrambler.scala 80:86:@3333.6]
  assign _T_76 = {_T_73,_T_74}; // @[Cat.scala 30:58:@3334.6]
  assign _T_77 = {_T_76,_T_75}; // @[Cat.scala 30:58:@3335.6]
  assign _T_78 = {_T_71,_T_72}; // @[Cat.scala 30:58:@3336.6]
  assign _T_79 = {_T_69,_T_70}; // @[Cat.scala 30:58:@3337.6]
  assign _T_80 = {_T_79,_T_78}; // @[Cat.scala 30:58:@3338.6]
  assign _T_81 = {_T_80,_T_77}; // @[Cat.scala 30:58:@3339.6]
  assign _GEN_0 = val_reg ? _T_81 : seed_reg; // @[scrambler.scala 79:18:@3326.4]
  assign _GEN_1 = io_init ? io_seed : _GEN_0; // @[scrambler.scala 83:18:@3342.4]
  assign _T_82 = din_reg ^ xor_u; // @[scrambler.scala 87:42:@3345.4]
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
module BflyR22( // @[:@3408.2]
  input         clock, // @[:@3409.4]
  input  [17:0] io_din_real, // @[:@3411.4]
  input  [17:0] io_din_imag, // @[:@3411.4]
  output [17:0] io_dout_real, // @[:@3411.4]
  output [17:0] io_dout_imag, // @[:@3411.4]
  input         io_sel, // @[:@3411.4]
  input         io_stall // @[:@3411.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3442.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3442.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@3447.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@3447.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@3452.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@3452.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@3457.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@3457.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@3462.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@3462.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@3467.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@3467.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@3472.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@3472.4]
  reg [31:0] _RAND_13;
  reg [17:0] _T_99_real; // @[Reg.scala 11:16:@3477.4]
  reg [31:0] _RAND_14;
  reg [17:0] _T_99_imag; // @[Reg.scala 11:16:@3477.4]
  reg [31:0] _RAND_15;
  reg [17:0] _T_105_real; // @[Reg.scala 11:16:@3482.4]
  reg [31:0] _RAND_16;
  reg [17:0] _T_105_imag; // @[Reg.scala 11:16:@3482.4]
  reg [31:0] _RAND_17;
  reg [17:0] _T_111_real; // @[Reg.scala 11:16:@3487.4]
  reg [31:0] _RAND_18;
  reg [17:0] _T_111_imag; // @[Reg.scala 11:16:@3487.4]
  reg [31:0] _RAND_19;
  reg [17:0] _T_117_real; // @[Reg.scala 11:16:@3492.4]
  reg [31:0] _RAND_20;
  reg [17:0] _T_117_imag; // @[Reg.scala 11:16:@3492.4]
  reg [31:0] _RAND_21;
  reg [17:0] _T_123_real; // @[Reg.scala 11:16:@3497.4]
  reg [31:0] _RAND_22;
  reg [17:0] _T_123_imag; // @[Reg.scala 11:16:@3497.4]
  reg [31:0] _RAND_23;
  reg [17:0] _T_129_real; // @[Reg.scala 11:16:@3502.4]
  reg [31:0] _RAND_24;
  reg [17:0] _T_129_imag; // @[Reg.scala 11:16:@3502.4]
  reg [31:0] _RAND_25;
  reg [17:0] _T_135_real; // @[Reg.scala 11:16:@3507.4]
  reg [31:0] _RAND_26;
  reg [17:0] _T_135_imag; // @[Reg.scala 11:16:@3507.4]
  reg [31:0] _RAND_27;
  reg [17:0] _T_141_real; // @[Reg.scala 11:16:@3512.4]
  reg [31:0] _RAND_28;
  reg [17:0] _T_141_imag; // @[Reg.scala 11:16:@3512.4]
  reg [31:0] _RAND_29;
  reg [17:0] _T_147_real; // @[Reg.scala 11:16:@3517.4]
  reg [31:0] _RAND_30;
  reg [17:0] _T_147_imag; // @[Reg.scala 11:16:@3517.4]
  reg [31:0] _RAND_31;
  reg [17:0] _T_153_real; // @[Reg.scala 11:16:@3522.4]
  reg [31:0] _RAND_32;
  reg [17:0] _T_153_imag; // @[Reg.scala 11:16:@3522.4]
  reg [31:0] _RAND_33;
  reg [17:0] _T_159_real; // @[Reg.scala 11:16:@3527.4]
  reg [31:0] _RAND_34;
  reg [17:0] _T_159_imag; // @[Reg.scala 11:16:@3527.4]
  reg [31:0] _RAND_35;
  reg [17:0] _T_165_real; // @[Reg.scala 11:16:@3532.4]
  reg [31:0] _RAND_36;
  reg [17:0] _T_165_imag; // @[Reg.scala 11:16:@3532.4]
  reg [31:0] _RAND_37;
  reg [17:0] _T_171_real; // @[Reg.scala 11:16:@3537.4]
  reg [31:0] _RAND_38;
  reg [17:0] _T_171_imag; // @[Reg.scala 11:16:@3537.4]
  reg [31:0] _RAND_39;
  reg [17:0] _T_177_real; // @[Reg.scala 11:16:@3542.4]
  reg [31:0] _RAND_40;
  reg [17:0] _T_177_imag; // @[Reg.scala 11:16:@3542.4]
  reg [31:0] _RAND_41;
  reg [17:0] _T_183_real; // @[Reg.scala 11:16:@3547.4]
  reg [31:0] _RAND_42;
  reg [17:0] _T_183_imag; // @[Reg.scala 11:16:@3547.4]
  reg [31:0] _RAND_43;
  reg [17:0] _T_189_real; // @[Reg.scala 11:16:@3552.4]
  reg [31:0] _RAND_44;
  reg [17:0] _T_189_imag; // @[Reg.scala 11:16:@3552.4]
  reg [31:0] _RAND_45;
  reg [17:0] _T_195_real; // @[Reg.scala 11:16:@3557.4]
  reg [31:0] _RAND_46;
  reg [17:0] _T_195_imag; // @[Reg.scala 11:16:@3557.4]
  reg [31:0] _RAND_47;
  reg [17:0] _T_201_real; // @[Reg.scala 11:16:@3562.4]
  reg [31:0] _RAND_48;
  reg [17:0] _T_201_imag; // @[Reg.scala 11:16:@3562.4]
  reg [31:0] _RAND_49;
  reg [17:0] _T_207_real; // @[Reg.scala 11:16:@3567.4]
  reg [31:0] _RAND_50;
  reg [17:0] _T_207_imag; // @[Reg.scala 11:16:@3567.4]
  reg [31:0] _RAND_51;
  reg [17:0] _T_213_real; // @[Reg.scala 11:16:@3572.4]
  reg [31:0] _RAND_52;
  reg [17:0] _T_213_imag; // @[Reg.scala 11:16:@3572.4]
  reg [31:0] _RAND_53;
  reg [17:0] _T_219_real; // @[Reg.scala 11:16:@3577.4]
  reg [31:0] _RAND_54;
  reg [17:0] _T_219_imag; // @[Reg.scala 11:16:@3577.4]
  reg [31:0] _RAND_55;
  reg [17:0] _T_225_real; // @[Reg.scala 11:16:@3582.4]
  reg [31:0] _RAND_56;
  reg [17:0] _T_225_imag; // @[Reg.scala 11:16:@3582.4]
  reg [31:0] _RAND_57;
  reg [17:0] _T_231_real; // @[Reg.scala 11:16:@3587.4]
  reg [31:0] _RAND_58;
  reg [17:0] _T_231_imag; // @[Reg.scala 11:16:@3587.4]
  reg [31:0] _RAND_59;
  reg [17:0] _T_237_real; // @[Reg.scala 11:16:@3592.4]
  reg [31:0] _RAND_60;
  reg [17:0] _T_237_imag; // @[Reg.scala 11:16:@3592.4]
  reg [31:0] _RAND_61;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3597.4]
  reg [31:0] _RAND_62;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3597.4]
  reg [31:0] _RAND_63;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3415.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3416.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3417.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3418.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3419.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3420.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3424.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3425.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3426.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3427.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3428.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3429.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3433.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3433.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3441.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3443.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3443.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3448.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3448.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@3453.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@3453.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@3458.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@3458.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@3463.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@3463.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@3468.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@3468.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@3473.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@3473.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@3478.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@3478.4]
  wire [17:0] _GEN_18; // @[Reg.scala 12:19:@3483.4]
  wire [17:0] _GEN_19; // @[Reg.scala 12:19:@3483.4]
  wire [17:0] _GEN_20; // @[Reg.scala 12:19:@3488.4]
  wire [17:0] _GEN_21; // @[Reg.scala 12:19:@3488.4]
  wire [17:0] _GEN_22; // @[Reg.scala 12:19:@3493.4]
  wire [17:0] _GEN_23; // @[Reg.scala 12:19:@3493.4]
  wire [17:0] _GEN_24; // @[Reg.scala 12:19:@3498.4]
  wire [17:0] _GEN_25; // @[Reg.scala 12:19:@3498.4]
  wire [17:0] _GEN_26; // @[Reg.scala 12:19:@3503.4]
  wire [17:0] _GEN_27; // @[Reg.scala 12:19:@3503.4]
  wire [17:0] _GEN_28; // @[Reg.scala 12:19:@3508.4]
  wire [17:0] _GEN_29; // @[Reg.scala 12:19:@3508.4]
  wire [17:0] _GEN_30; // @[Reg.scala 12:19:@3513.4]
  wire [17:0] _GEN_31; // @[Reg.scala 12:19:@3513.4]
  wire [17:0] _GEN_32; // @[Reg.scala 12:19:@3518.4]
  wire [17:0] _GEN_33; // @[Reg.scala 12:19:@3518.4]
  wire [17:0] _GEN_34; // @[Reg.scala 12:19:@3523.4]
  wire [17:0] _GEN_35; // @[Reg.scala 12:19:@3523.4]
  wire [17:0] _GEN_36; // @[Reg.scala 12:19:@3528.4]
  wire [17:0] _GEN_37; // @[Reg.scala 12:19:@3528.4]
  wire [17:0] _GEN_38; // @[Reg.scala 12:19:@3533.4]
  wire [17:0] _GEN_39; // @[Reg.scala 12:19:@3533.4]
  wire [17:0] _GEN_40; // @[Reg.scala 12:19:@3538.4]
  wire [17:0] _GEN_41; // @[Reg.scala 12:19:@3538.4]
  wire [17:0] _GEN_42; // @[Reg.scala 12:19:@3543.4]
  wire [17:0] _GEN_43; // @[Reg.scala 12:19:@3543.4]
  wire [17:0] _GEN_44; // @[Reg.scala 12:19:@3548.4]
  wire [17:0] _GEN_45; // @[Reg.scala 12:19:@3548.4]
  wire [17:0] _GEN_46; // @[Reg.scala 12:19:@3553.4]
  wire [17:0] _GEN_47; // @[Reg.scala 12:19:@3553.4]
  wire [17:0] _GEN_48; // @[Reg.scala 12:19:@3558.4]
  wire [17:0] _GEN_49; // @[Reg.scala 12:19:@3558.4]
  wire [17:0] _GEN_50; // @[Reg.scala 12:19:@3563.4]
  wire [17:0] _GEN_51; // @[Reg.scala 12:19:@3563.4]
  wire [17:0] _GEN_52; // @[Reg.scala 12:19:@3568.4]
  wire [17:0] _GEN_53; // @[Reg.scala 12:19:@3568.4]
  wire [17:0] _GEN_54; // @[Reg.scala 12:19:@3573.4]
  wire [17:0] _GEN_55; // @[Reg.scala 12:19:@3573.4]
  wire [17:0] _GEN_56; // @[Reg.scala 12:19:@3578.4]
  wire [17:0] _GEN_57; // @[Reg.scala 12:19:@3578.4]
  wire [17:0] _GEN_58; // @[Reg.scala 12:19:@3583.4]
  wire [17:0] _GEN_59; // @[Reg.scala 12:19:@3583.4]
  wire [17:0] _GEN_60; // @[Reg.scala 12:19:@3588.4]
  wire [17:0] _GEN_61; // @[Reg.scala 12:19:@3588.4]
  wire [17:0] _GEN_62; // @[Reg.scala 12:19:@3593.4]
  wire [17:0] _GEN_63; // @[Reg.scala 12:19:@3593.4]
  wire [17:0] _GEN_64; // @[Reg.scala 12:19:@3598.4]
  wire [17:0] _GEN_65; // @[Reg.scala 12:19:@3598.4]
  wire [17:0] _GEN_66; // @[r2sdf.scala 45:17:@3604.4]
  wire [17:0] _GEN_67; // @[r2sdf.scala 45:17:@3604.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3415.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3416.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3417.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3418.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3419.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3420.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3424.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3425.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3426.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3427.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3428.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3429.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3433.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3433.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3441.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3443.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3443.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@3448.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@3448.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@3453.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@3453.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@3458.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@3458.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@3463.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@3463.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@3468.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@3468.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@3473.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@3473.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(_T_99_imag); // @[Reg.scala 12:19:@3478.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(_T_99_real); // @[Reg.scala 12:19:@3478.4]
  assign _GEN_18 = _T_51 ? $signed(_T_99_imag) : $signed(_T_105_imag); // @[Reg.scala 12:19:@3483.4]
  assign _GEN_19 = _T_51 ? $signed(_T_99_real) : $signed(_T_105_real); // @[Reg.scala 12:19:@3483.4]
  assign _GEN_20 = _T_51 ? $signed(_T_105_imag) : $signed(_T_111_imag); // @[Reg.scala 12:19:@3488.4]
  assign _GEN_21 = _T_51 ? $signed(_T_105_real) : $signed(_T_111_real); // @[Reg.scala 12:19:@3488.4]
  assign _GEN_22 = _T_51 ? $signed(_T_111_imag) : $signed(_T_117_imag); // @[Reg.scala 12:19:@3493.4]
  assign _GEN_23 = _T_51 ? $signed(_T_111_real) : $signed(_T_117_real); // @[Reg.scala 12:19:@3493.4]
  assign _GEN_24 = _T_51 ? $signed(_T_117_imag) : $signed(_T_123_imag); // @[Reg.scala 12:19:@3498.4]
  assign _GEN_25 = _T_51 ? $signed(_T_117_real) : $signed(_T_123_real); // @[Reg.scala 12:19:@3498.4]
  assign _GEN_26 = _T_51 ? $signed(_T_123_imag) : $signed(_T_129_imag); // @[Reg.scala 12:19:@3503.4]
  assign _GEN_27 = _T_51 ? $signed(_T_123_real) : $signed(_T_129_real); // @[Reg.scala 12:19:@3503.4]
  assign _GEN_28 = _T_51 ? $signed(_T_129_imag) : $signed(_T_135_imag); // @[Reg.scala 12:19:@3508.4]
  assign _GEN_29 = _T_51 ? $signed(_T_129_real) : $signed(_T_135_real); // @[Reg.scala 12:19:@3508.4]
  assign _GEN_30 = _T_51 ? $signed(_T_135_imag) : $signed(_T_141_imag); // @[Reg.scala 12:19:@3513.4]
  assign _GEN_31 = _T_51 ? $signed(_T_135_real) : $signed(_T_141_real); // @[Reg.scala 12:19:@3513.4]
  assign _GEN_32 = _T_51 ? $signed(_T_141_imag) : $signed(_T_147_imag); // @[Reg.scala 12:19:@3518.4]
  assign _GEN_33 = _T_51 ? $signed(_T_141_real) : $signed(_T_147_real); // @[Reg.scala 12:19:@3518.4]
  assign _GEN_34 = _T_51 ? $signed(_T_147_imag) : $signed(_T_153_imag); // @[Reg.scala 12:19:@3523.4]
  assign _GEN_35 = _T_51 ? $signed(_T_147_real) : $signed(_T_153_real); // @[Reg.scala 12:19:@3523.4]
  assign _GEN_36 = _T_51 ? $signed(_T_153_imag) : $signed(_T_159_imag); // @[Reg.scala 12:19:@3528.4]
  assign _GEN_37 = _T_51 ? $signed(_T_153_real) : $signed(_T_159_real); // @[Reg.scala 12:19:@3528.4]
  assign _GEN_38 = _T_51 ? $signed(_T_159_imag) : $signed(_T_165_imag); // @[Reg.scala 12:19:@3533.4]
  assign _GEN_39 = _T_51 ? $signed(_T_159_real) : $signed(_T_165_real); // @[Reg.scala 12:19:@3533.4]
  assign _GEN_40 = _T_51 ? $signed(_T_165_imag) : $signed(_T_171_imag); // @[Reg.scala 12:19:@3538.4]
  assign _GEN_41 = _T_51 ? $signed(_T_165_real) : $signed(_T_171_real); // @[Reg.scala 12:19:@3538.4]
  assign _GEN_42 = _T_51 ? $signed(_T_171_imag) : $signed(_T_177_imag); // @[Reg.scala 12:19:@3543.4]
  assign _GEN_43 = _T_51 ? $signed(_T_171_real) : $signed(_T_177_real); // @[Reg.scala 12:19:@3543.4]
  assign _GEN_44 = _T_51 ? $signed(_T_177_imag) : $signed(_T_183_imag); // @[Reg.scala 12:19:@3548.4]
  assign _GEN_45 = _T_51 ? $signed(_T_177_real) : $signed(_T_183_real); // @[Reg.scala 12:19:@3548.4]
  assign _GEN_46 = _T_51 ? $signed(_T_183_imag) : $signed(_T_189_imag); // @[Reg.scala 12:19:@3553.4]
  assign _GEN_47 = _T_51 ? $signed(_T_183_real) : $signed(_T_189_real); // @[Reg.scala 12:19:@3553.4]
  assign _GEN_48 = _T_51 ? $signed(_T_189_imag) : $signed(_T_195_imag); // @[Reg.scala 12:19:@3558.4]
  assign _GEN_49 = _T_51 ? $signed(_T_189_real) : $signed(_T_195_real); // @[Reg.scala 12:19:@3558.4]
  assign _GEN_50 = _T_51 ? $signed(_T_195_imag) : $signed(_T_201_imag); // @[Reg.scala 12:19:@3563.4]
  assign _GEN_51 = _T_51 ? $signed(_T_195_real) : $signed(_T_201_real); // @[Reg.scala 12:19:@3563.4]
  assign _GEN_52 = _T_51 ? $signed(_T_201_imag) : $signed(_T_207_imag); // @[Reg.scala 12:19:@3568.4]
  assign _GEN_53 = _T_51 ? $signed(_T_201_real) : $signed(_T_207_real); // @[Reg.scala 12:19:@3568.4]
  assign _GEN_54 = _T_51 ? $signed(_T_207_imag) : $signed(_T_213_imag); // @[Reg.scala 12:19:@3573.4]
  assign _GEN_55 = _T_51 ? $signed(_T_207_real) : $signed(_T_213_real); // @[Reg.scala 12:19:@3573.4]
  assign _GEN_56 = _T_51 ? $signed(_T_213_imag) : $signed(_T_219_imag); // @[Reg.scala 12:19:@3578.4]
  assign _GEN_57 = _T_51 ? $signed(_T_213_real) : $signed(_T_219_real); // @[Reg.scala 12:19:@3578.4]
  assign _GEN_58 = _T_51 ? $signed(_T_219_imag) : $signed(_T_225_imag); // @[Reg.scala 12:19:@3583.4]
  assign _GEN_59 = _T_51 ? $signed(_T_219_real) : $signed(_T_225_real); // @[Reg.scala 12:19:@3583.4]
  assign _GEN_60 = _T_51 ? $signed(_T_225_imag) : $signed(_T_231_imag); // @[Reg.scala 12:19:@3588.4]
  assign _GEN_61 = _T_51 ? $signed(_T_225_real) : $signed(_T_231_real); // @[Reg.scala 12:19:@3588.4]
  assign _GEN_62 = _T_51 ? $signed(_T_231_imag) : $signed(_T_237_imag); // @[Reg.scala 12:19:@3593.4]
  assign _GEN_63 = _T_51 ? $signed(_T_231_real) : $signed(_T_237_real); // @[Reg.scala 12:19:@3593.4]
  assign _GEN_64 = _T_51 ? $signed(_T_237_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3598.4]
  assign _GEN_65 = _T_51 ? $signed(_T_237_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3598.4]
  assign _GEN_66 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3604.4]
  assign _GEN_67 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3604.4]
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
module R2SDF_TFMul( // @[:@3613.2]
  input  [17:0] io_din_real, // @[:@3616.4]
  input  [17:0] io_din_imag, // @[:@3616.4]
  output [17:0] io_dout_real, // @[:@3616.4]
  output [17:0] io_dout_imag, // @[:@3616.4]
  input  [5:0]  io_addr // @[:@3616.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3618.4]
  wire [4:0] _T_14; // @[r2sdf.scala 63:35:@3619.4]
  wire [4:0] addr; // @[r2sdf.scala 63:17:@3620.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_18; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_19; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_20; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_21; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_22; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_23; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_24; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_25; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_26; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_27; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_28; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_29; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_30; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_31; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_32; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_33; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_34; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_35; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_36; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_37; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_38; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_39; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_40; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_41; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_42; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_43; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_44; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_45; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_46; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_47; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_48; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_49; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_50; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_51; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_52; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_53; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_54; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_55; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_56; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_57; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_58; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_59; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_60; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_61; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_62; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_63; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_64; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _GEN_65; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [18:0] _T_321; // @[FixedPointTypeClass.scala 21:58:@3686.4]
  wire [17:0] _T_322; // @[FixedPointTypeClass.scala 21:58:@3687.4]
  wire [17:0] _T_323; // @[FixedPointTypeClass.scala 21:58:@3688.4]
  wire [18:0] _T_324; // @[FixedPointTypeClass.scala 21:58:@3689.4]
  wire [17:0] _T_325; // @[FixedPointTypeClass.scala 21:58:@3690.4]
  wire [17:0] _T_326; // @[FixedPointTypeClass.scala 21:58:@3691.4]
  wire [18:0] _T_327; // @[FixedPointTypeClass.scala 31:68:@3692.4]
  wire [17:0] _T_328; // @[FixedPointTypeClass.scala 31:68:@3693.4]
  wire [17:0] _T_329; // @[FixedPointTypeClass.scala 31:68:@3694.4]
  wire [35:0] _T_330; // @[FixedPointTypeClass.scala 43:59:@3695.4]
  wire [35:0] _T_331; // @[FixedPointTypeClass.scala 43:59:@3696.4]
  wire [35:0] _T_332; // @[FixedPointTypeClass.scala 43:59:@3697.4]
  wire [36:0] _T_333; // @[FixedPointTypeClass.scala 31:68:@3698.4]
  wire [35:0] _T_334; // @[FixedPointTypeClass.scala 31:68:@3699.4]
  wire [35:0] _T_335; // @[FixedPointTypeClass.scala 31:68:@3700.4]
  wire [36:0] _T_336; // @[FixedPointTypeClass.scala 21:58:@3701.4]
  wire [35:0] _T_337; // @[FixedPointTypeClass.scala 21:58:@3702.4]
  wire [35:0] _T_338; // @[FixedPointTypeClass.scala 21:58:@3703.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[5]; // @[r2sdf.scala 62:21:@3618.4]
  assign _T_14 = io_addr[4:0]; // @[r2sdf.scala 63:35:@3619.4]
  assign addr = msb ? 5'h0 : _T_14; // @[r2sdf.scala 63:17:@3620.4]
  assign _GEN_4 = 5'h1 == addr ? $signed(18'sh3fb) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_5 = 5'h1 == addr ? $signed(-18'sh64) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_6 = 5'h2 == addr ? $signed(18'sh3ec) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_7 = 5'h2 == addr ? $signed(-18'shc8) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_8 = 5'h3 == addr ? $signed(18'sh3d4) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_9 = 5'h3 == addr ? $signed(-18'sh129) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_10 = 5'h4 == addr ? $signed(18'sh3b2) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_11 = 5'h4 == addr ? $signed(-18'sh188) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_12 = 5'h5 == addr ? $signed(18'sh387) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_13 = 5'h5 == addr ? $signed(-18'sh1e3) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_14 = 5'h6 == addr ? $signed(18'sh353) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_15 = 5'h6 == addr ? $signed(-18'sh239) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_16 = 5'h7 == addr ? $signed(18'sh318) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_17 = 5'h7 == addr ? $signed(-18'sh28a) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_18 = 5'h8 == addr ? $signed(18'sh2d4) : $signed(_GEN_16); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_19 = 5'h8 == addr ? $signed(-18'sh2d4) : $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_20 = 5'h9 == addr ? $signed(18'sh28a) : $signed(_GEN_18); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_21 = 5'h9 == addr ? $signed(-18'sh318) : $signed(_GEN_19); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_22 = 5'ha == addr ? $signed(18'sh239) : $signed(_GEN_20); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_23 = 5'ha == addr ? $signed(-18'sh353) : $signed(_GEN_21); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_24 = 5'hb == addr ? $signed(18'sh1e3) : $signed(_GEN_22); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_25 = 5'hb == addr ? $signed(-18'sh387) : $signed(_GEN_23); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_26 = 5'hc == addr ? $signed(18'sh188) : $signed(_GEN_24); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_27 = 5'hc == addr ? $signed(-18'sh3b2) : $signed(_GEN_25); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_28 = 5'hd == addr ? $signed(18'sh129) : $signed(_GEN_26); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_29 = 5'hd == addr ? $signed(-18'sh3d4) : $signed(_GEN_27); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_30 = 5'he == addr ? $signed(18'shc8) : $signed(_GEN_28); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_31 = 5'he == addr ? $signed(-18'sh3ec) : $signed(_GEN_29); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_32 = 5'hf == addr ? $signed(18'sh64) : $signed(_GEN_30); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_33 = 5'hf == addr ? $signed(-18'sh3fb) : $signed(_GEN_31); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_34 = 5'h10 == addr ? $signed(18'sh0) : $signed(_GEN_32); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_35 = 5'h10 == addr ? $signed(-18'sh400) : $signed(_GEN_33); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_36 = 5'h11 == addr ? $signed(-18'sh64) : $signed(_GEN_34); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_37 = 5'h11 == addr ? $signed(-18'sh3fb) : $signed(_GEN_35); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_38 = 5'h12 == addr ? $signed(-18'shc8) : $signed(_GEN_36); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_39 = 5'h12 == addr ? $signed(-18'sh3ec) : $signed(_GEN_37); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_40 = 5'h13 == addr ? $signed(-18'sh129) : $signed(_GEN_38); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_41 = 5'h13 == addr ? $signed(-18'sh3d4) : $signed(_GEN_39); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_42 = 5'h14 == addr ? $signed(-18'sh188) : $signed(_GEN_40); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_43 = 5'h14 == addr ? $signed(-18'sh3b2) : $signed(_GEN_41); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_44 = 5'h15 == addr ? $signed(-18'sh1e3) : $signed(_GEN_42); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_45 = 5'h15 == addr ? $signed(-18'sh387) : $signed(_GEN_43); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_46 = 5'h16 == addr ? $signed(-18'sh239) : $signed(_GEN_44); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_47 = 5'h16 == addr ? $signed(-18'sh353) : $signed(_GEN_45); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_48 = 5'h17 == addr ? $signed(-18'sh28a) : $signed(_GEN_46); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_49 = 5'h17 == addr ? $signed(-18'sh318) : $signed(_GEN_47); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_50 = 5'h18 == addr ? $signed(-18'sh2d4) : $signed(_GEN_48); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_51 = 5'h18 == addr ? $signed(-18'sh2d4) : $signed(_GEN_49); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_52 = 5'h19 == addr ? $signed(-18'sh318) : $signed(_GEN_50); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_53 = 5'h19 == addr ? $signed(-18'sh28a) : $signed(_GEN_51); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_54 = 5'h1a == addr ? $signed(-18'sh353) : $signed(_GEN_52); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_55 = 5'h1a == addr ? $signed(-18'sh239) : $signed(_GEN_53); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_56 = 5'h1b == addr ? $signed(-18'sh387) : $signed(_GEN_54); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_57 = 5'h1b == addr ? $signed(-18'sh1e3) : $signed(_GEN_55); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_58 = 5'h1c == addr ? $signed(-18'sh3b2) : $signed(_GEN_56); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_59 = 5'h1c == addr ? $signed(-18'sh188) : $signed(_GEN_57); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_60 = 5'h1d == addr ? $signed(-18'sh3d4) : $signed(_GEN_58); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_61 = 5'h1d == addr ? $signed(-18'sh129) : $signed(_GEN_59); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_62 = 5'h1e == addr ? $signed(-18'sh3ec) : $signed(_GEN_60); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_63 = 5'h1e == addr ? $signed(-18'shc8) : $signed(_GEN_61); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_64 = 5'h1f == addr ? $signed(-18'sh3fb) : $signed(_GEN_62); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _GEN_65 = 5'h1f == addr ? $signed(-18'sh64) : $signed(_GEN_63); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _T_321 = $signed(_GEN_64) + $signed(_GEN_65); // @[FixedPointTypeClass.scala 21:58:@3686.4]
  assign _T_322 = _T_321[17:0]; // @[FixedPointTypeClass.scala 21:58:@3687.4]
  assign _T_323 = $signed(_T_322); // @[FixedPointTypeClass.scala 21:58:@3688.4]
  assign _T_324 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3689.4]
  assign _T_325 = _T_324[17:0]; // @[FixedPointTypeClass.scala 21:58:@3690.4]
  assign _T_326 = $signed(_T_325); // @[FixedPointTypeClass.scala 21:58:@3691.4]
  assign _T_327 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3692.4]
  assign _T_328 = _T_327[17:0]; // @[FixedPointTypeClass.scala 31:68:@3693.4]
  assign _T_329 = $signed(_T_328); // @[FixedPointTypeClass.scala 31:68:@3694.4]
  assign _T_330 = $signed(io_din_real) * $signed(_T_323); // @[FixedPointTypeClass.scala 43:59:@3695.4]
  assign _T_331 = $signed(_T_326) * $signed(_GEN_65); // @[FixedPointTypeClass.scala 43:59:@3696.4]
  assign _T_332 = $signed(_T_329) * $signed(_GEN_64); // @[FixedPointTypeClass.scala 43:59:@3697.4]
  assign _T_333 = $signed(_T_330) - $signed(_T_331); // @[FixedPointTypeClass.scala 31:68:@3698.4]
  assign _T_334 = _T_333[35:0]; // @[FixedPointTypeClass.scala 31:68:@3699.4]
  assign _T_335 = $signed(_T_334); // @[FixedPointTypeClass.scala 31:68:@3700.4]
  assign _T_336 = $signed(_T_330) + $signed(_T_332); // @[FixedPointTypeClass.scala 21:58:@3701.4]
  assign _T_337 = _T_336[35:0]; // @[FixedPointTypeClass.scala 21:58:@3702.4]
  assign _T_338 = $signed(_T_337); // @[FixedPointTypeClass.scala 21:58:@3703.4]
  assign _GEN_0 = _T_335[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_338[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_1( // @[:@3710.2]
  input         clock, // @[:@3711.4]
  input  [17:0] io_din_real, // @[:@3713.4]
  input  [17:0] io_din_imag, // @[:@3713.4]
  output [17:0] io_dout_real, // @[:@3713.4]
  output [17:0] io_dout_imag, // @[:@3713.4]
  input         io_sel, // @[:@3713.4]
  input         io_stall // @[:@3713.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3744.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3744.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@3749.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@3749.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@3754.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@3754.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@3759.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@3759.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@3764.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@3764.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@3769.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@3769.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@3774.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@3774.4]
  reg [31:0] _RAND_13;
  reg [17:0] _T_99_real; // @[Reg.scala 11:16:@3779.4]
  reg [31:0] _RAND_14;
  reg [17:0] _T_99_imag; // @[Reg.scala 11:16:@3779.4]
  reg [31:0] _RAND_15;
  reg [17:0] _T_105_real; // @[Reg.scala 11:16:@3784.4]
  reg [31:0] _RAND_16;
  reg [17:0] _T_105_imag; // @[Reg.scala 11:16:@3784.4]
  reg [31:0] _RAND_17;
  reg [17:0] _T_111_real; // @[Reg.scala 11:16:@3789.4]
  reg [31:0] _RAND_18;
  reg [17:0] _T_111_imag; // @[Reg.scala 11:16:@3789.4]
  reg [31:0] _RAND_19;
  reg [17:0] _T_117_real; // @[Reg.scala 11:16:@3794.4]
  reg [31:0] _RAND_20;
  reg [17:0] _T_117_imag; // @[Reg.scala 11:16:@3794.4]
  reg [31:0] _RAND_21;
  reg [17:0] _T_123_real; // @[Reg.scala 11:16:@3799.4]
  reg [31:0] _RAND_22;
  reg [17:0] _T_123_imag; // @[Reg.scala 11:16:@3799.4]
  reg [31:0] _RAND_23;
  reg [17:0] _T_129_real; // @[Reg.scala 11:16:@3804.4]
  reg [31:0] _RAND_24;
  reg [17:0] _T_129_imag; // @[Reg.scala 11:16:@3804.4]
  reg [31:0] _RAND_25;
  reg [17:0] _T_135_real; // @[Reg.scala 11:16:@3809.4]
  reg [31:0] _RAND_26;
  reg [17:0] _T_135_imag; // @[Reg.scala 11:16:@3809.4]
  reg [31:0] _RAND_27;
  reg [17:0] _T_141_real; // @[Reg.scala 11:16:@3814.4]
  reg [31:0] _RAND_28;
  reg [17:0] _T_141_imag; // @[Reg.scala 11:16:@3814.4]
  reg [31:0] _RAND_29;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3819.4]
  reg [31:0] _RAND_30;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3819.4]
  reg [31:0] _RAND_31;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3717.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3718.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3719.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3720.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3721.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3722.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3726.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3727.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3728.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3729.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3730.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3731.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3735.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3735.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3743.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3745.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3745.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3750.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3750.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@3755.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@3755.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@3760.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@3760.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@3765.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@3765.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@3770.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@3770.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@3775.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@3775.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@3780.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@3780.4]
  wire [17:0] _GEN_18; // @[Reg.scala 12:19:@3785.4]
  wire [17:0] _GEN_19; // @[Reg.scala 12:19:@3785.4]
  wire [17:0] _GEN_20; // @[Reg.scala 12:19:@3790.4]
  wire [17:0] _GEN_21; // @[Reg.scala 12:19:@3790.4]
  wire [17:0] _GEN_22; // @[Reg.scala 12:19:@3795.4]
  wire [17:0] _GEN_23; // @[Reg.scala 12:19:@3795.4]
  wire [17:0] _GEN_24; // @[Reg.scala 12:19:@3800.4]
  wire [17:0] _GEN_25; // @[Reg.scala 12:19:@3800.4]
  wire [17:0] _GEN_26; // @[Reg.scala 12:19:@3805.4]
  wire [17:0] _GEN_27; // @[Reg.scala 12:19:@3805.4]
  wire [17:0] _GEN_28; // @[Reg.scala 12:19:@3810.4]
  wire [17:0] _GEN_29; // @[Reg.scala 12:19:@3810.4]
  wire [17:0] _GEN_30; // @[Reg.scala 12:19:@3815.4]
  wire [17:0] _GEN_31; // @[Reg.scala 12:19:@3815.4]
  wire [17:0] _GEN_32; // @[Reg.scala 12:19:@3820.4]
  wire [17:0] _GEN_33; // @[Reg.scala 12:19:@3820.4]
  wire [17:0] _GEN_34; // @[r2sdf.scala 45:17:@3826.4]
  wire [17:0] _GEN_35; // @[r2sdf.scala 45:17:@3826.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3717.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3718.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3719.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3720.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3721.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3722.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3726.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3727.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3728.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3729.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3730.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3731.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3735.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3735.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3743.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3745.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3745.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@3750.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@3750.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@3755.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@3755.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@3760.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@3760.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@3765.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@3765.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@3770.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@3770.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@3775.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@3775.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(_T_99_imag); // @[Reg.scala 12:19:@3780.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(_T_99_real); // @[Reg.scala 12:19:@3780.4]
  assign _GEN_18 = _T_51 ? $signed(_T_99_imag) : $signed(_T_105_imag); // @[Reg.scala 12:19:@3785.4]
  assign _GEN_19 = _T_51 ? $signed(_T_99_real) : $signed(_T_105_real); // @[Reg.scala 12:19:@3785.4]
  assign _GEN_20 = _T_51 ? $signed(_T_105_imag) : $signed(_T_111_imag); // @[Reg.scala 12:19:@3790.4]
  assign _GEN_21 = _T_51 ? $signed(_T_105_real) : $signed(_T_111_real); // @[Reg.scala 12:19:@3790.4]
  assign _GEN_22 = _T_51 ? $signed(_T_111_imag) : $signed(_T_117_imag); // @[Reg.scala 12:19:@3795.4]
  assign _GEN_23 = _T_51 ? $signed(_T_111_real) : $signed(_T_117_real); // @[Reg.scala 12:19:@3795.4]
  assign _GEN_24 = _T_51 ? $signed(_T_117_imag) : $signed(_T_123_imag); // @[Reg.scala 12:19:@3800.4]
  assign _GEN_25 = _T_51 ? $signed(_T_117_real) : $signed(_T_123_real); // @[Reg.scala 12:19:@3800.4]
  assign _GEN_26 = _T_51 ? $signed(_T_123_imag) : $signed(_T_129_imag); // @[Reg.scala 12:19:@3805.4]
  assign _GEN_27 = _T_51 ? $signed(_T_123_real) : $signed(_T_129_real); // @[Reg.scala 12:19:@3805.4]
  assign _GEN_28 = _T_51 ? $signed(_T_129_imag) : $signed(_T_135_imag); // @[Reg.scala 12:19:@3810.4]
  assign _GEN_29 = _T_51 ? $signed(_T_129_real) : $signed(_T_135_real); // @[Reg.scala 12:19:@3810.4]
  assign _GEN_30 = _T_51 ? $signed(_T_135_imag) : $signed(_T_141_imag); // @[Reg.scala 12:19:@3815.4]
  assign _GEN_31 = _T_51 ? $signed(_T_135_real) : $signed(_T_141_real); // @[Reg.scala 12:19:@3815.4]
  assign _GEN_32 = _T_51 ? $signed(_T_141_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3820.4]
  assign _GEN_33 = _T_51 ? $signed(_T_141_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3820.4]
  assign _GEN_34 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3826.4]
  assign _GEN_35 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3826.4]
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
module R2SDF_TFMul_1( // @[:@3835.2]
  input  [17:0] io_din_real, // @[:@3838.4]
  input  [17:0] io_din_imag, // @[:@3838.4]
  output [17:0] io_dout_real, // @[:@3838.4]
  output [17:0] io_dout_imag, // @[:@3838.4]
  input  [4:0]  io_addr // @[:@3838.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3840.4]
  wire [3:0] _T_14; // @[r2sdf.scala 63:35:@3841.4]
  wire [3:0] addr; // @[r2sdf.scala 63:17:@3842.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_18; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_19; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_20; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_21; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_22; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_23; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_24; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_25; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_26; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_27; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_28; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_29; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_30; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_31; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_32; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _GEN_33; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [18:0] _T_177; // @[FixedPointTypeClass.scala 21:58:@3876.4]
  wire [17:0] _T_178; // @[FixedPointTypeClass.scala 21:58:@3877.4]
  wire [17:0] _T_179; // @[FixedPointTypeClass.scala 21:58:@3878.4]
  wire [18:0] _T_180; // @[FixedPointTypeClass.scala 21:58:@3879.4]
  wire [17:0] _T_181; // @[FixedPointTypeClass.scala 21:58:@3880.4]
  wire [17:0] _T_182; // @[FixedPointTypeClass.scala 21:58:@3881.4]
  wire [18:0] _T_183; // @[FixedPointTypeClass.scala 31:68:@3882.4]
  wire [17:0] _T_184; // @[FixedPointTypeClass.scala 31:68:@3883.4]
  wire [17:0] _T_185; // @[FixedPointTypeClass.scala 31:68:@3884.4]
  wire [35:0] _T_186; // @[FixedPointTypeClass.scala 43:59:@3885.4]
  wire [35:0] _T_187; // @[FixedPointTypeClass.scala 43:59:@3886.4]
  wire [35:0] _T_188; // @[FixedPointTypeClass.scala 43:59:@3887.4]
  wire [36:0] _T_189; // @[FixedPointTypeClass.scala 31:68:@3888.4]
  wire [35:0] _T_190; // @[FixedPointTypeClass.scala 31:68:@3889.4]
  wire [35:0] _T_191; // @[FixedPointTypeClass.scala 31:68:@3890.4]
  wire [36:0] _T_192; // @[FixedPointTypeClass.scala 21:58:@3891.4]
  wire [35:0] _T_193; // @[FixedPointTypeClass.scala 21:58:@3892.4]
  wire [35:0] _T_194; // @[FixedPointTypeClass.scala 21:58:@3893.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[4]; // @[r2sdf.scala 62:21:@3840.4]
  assign _T_14 = io_addr[3:0]; // @[r2sdf.scala 63:35:@3841.4]
  assign addr = msb ? 4'h0 : _T_14; // @[r2sdf.scala 63:17:@3842.4]
  assign _GEN_4 = 4'h1 == addr ? $signed(18'sh3ec) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_5 = 4'h1 == addr ? $signed(-18'shc8) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_6 = 4'h2 == addr ? $signed(18'sh3b2) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_7 = 4'h2 == addr ? $signed(-18'sh188) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_8 = 4'h3 == addr ? $signed(18'sh353) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_9 = 4'h3 == addr ? $signed(-18'sh239) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_10 = 4'h4 == addr ? $signed(18'sh2d4) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_11 = 4'h4 == addr ? $signed(-18'sh2d4) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_12 = 4'h5 == addr ? $signed(18'sh239) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_13 = 4'h5 == addr ? $signed(-18'sh353) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_14 = 4'h6 == addr ? $signed(18'sh188) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_15 = 4'h6 == addr ? $signed(-18'sh3b2) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_16 = 4'h7 == addr ? $signed(18'shc8) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_17 = 4'h7 == addr ? $signed(-18'sh3ec) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_18 = 4'h8 == addr ? $signed(18'sh0) : $signed(_GEN_16); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_19 = 4'h8 == addr ? $signed(-18'sh400) : $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_20 = 4'h9 == addr ? $signed(-18'shc8) : $signed(_GEN_18); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_21 = 4'h9 == addr ? $signed(-18'sh3ec) : $signed(_GEN_19); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_22 = 4'ha == addr ? $signed(-18'sh188) : $signed(_GEN_20); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_23 = 4'ha == addr ? $signed(-18'sh3b2) : $signed(_GEN_21); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_24 = 4'hb == addr ? $signed(-18'sh239) : $signed(_GEN_22); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_25 = 4'hb == addr ? $signed(-18'sh353) : $signed(_GEN_23); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_26 = 4'hc == addr ? $signed(-18'sh2d4) : $signed(_GEN_24); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_27 = 4'hc == addr ? $signed(-18'sh2d4) : $signed(_GEN_25); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_28 = 4'hd == addr ? $signed(-18'sh353) : $signed(_GEN_26); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_29 = 4'hd == addr ? $signed(-18'sh239) : $signed(_GEN_27); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_30 = 4'he == addr ? $signed(-18'sh3b2) : $signed(_GEN_28); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_31 = 4'he == addr ? $signed(-18'sh188) : $signed(_GEN_29); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_32 = 4'hf == addr ? $signed(-18'sh3ec) : $signed(_GEN_30); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _GEN_33 = 4'hf == addr ? $signed(-18'shc8) : $signed(_GEN_31); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _T_177 = $signed(_GEN_32) + $signed(_GEN_33); // @[FixedPointTypeClass.scala 21:58:@3876.4]
  assign _T_178 = _T_177[17:0]; // @[FixedPointTypeClass.scala 21:58:@3877.4]
  assign _T_179 = $signed(_T_178); // @[FixedPointTypeClass.scala 21:58:@3878.4]
  assign _T_180 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3879.4]
  assign _T_181 = _T_180[17:0]; // @[FixedPointTypeClass.scala 21:58:@3880.4]
  assign _T_182 = $signed(_T_181); // @[FixedPointTypeClass.scala 21:58:@3881.4]
  assign _T_183 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3882.4]
  assign _T_184 = _T_183[17:0]; // @[FixedPointTypeClass.scala 31:68:@3883.4]
  assign _T_185 = $signed(_T_184); // @[FixedPointTypeClass.scala 31:68:@3884.4]
  assign _T_186 = $signed(io_din_real) * $signed(_T_179); // @[FixedPointTypeClass.scala 43:59:@3885.4]
  assign _T_187 = $signed(_T_182) * $signed(_GEN_33); // @[FixedPointTypeClass.scala 43:59:@3886.4]
  assign _T_188 = $signed(_T_185) * $signed(_GEN_32); // @[FixedPointTypeClass.scala 43:59:@3887.4]
  assign _T_189 = $signed(_T_186) - $signed(_T_187); // @[FixedPointTypeClass.scala 31:68:@3888.4]
  assign _T_190 = _T_189[35:0]; // @[FixedPointTypeClass.scala 31:68:@3889.4]
  assign _T_191 = $signed(_T_190); // @[FixedPointTypeClass.scala 31:68:@3890.4]
  assign _T_192 = $signed(_T_186) + $signed(_T_188); // @[FixedPointTypeClass.scala 21:58:@3891.4]
  assign _T_193 = _T_192[35:0]; // @[FixedPointTypeClass.scala 21:58:@3892.4]
  assign _T_194 = $signed(_T_193); // @[FixedPointTypeClass.scala 21:58:@3893.4]
  assign _GEN_0 = _T_191[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_194[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_2( // @[:@3900.2]
  input         clock, // @[:@3901.4]
  input  [17:0] io_din_real, // @[:@3903.4]
  input  [17:0] io_din_imag, // @[:@3903.4]
  output [17:0] io_dout_real, // @[:@3903.4]
  output [17:0] io_dout_imag, // @[:@3903.4]
  input         io_sel, // @[:@3903.4]
  input         io_stall // @[:@3903.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@3934.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@3934.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@3939.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@3939.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@3944.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@3944.4]
  reg [31:0] _RAND_5;
  reg [17:0] _T_75_real; // @[Reg.scala 11:16:@3949.4]
  reg [31:0] _RAND_6;
  reg [17:0] _T_75_imag; // @[Reg.scala 11:16:@3949.4]
  reg [31:0] _RAND_7;
  reg [17:0] _T_81_real; // @[Reg.scala 11:16:@3954.4]
  reg [31:0] _RAND_8;
  reg [17:0] _T_81_imag; // @[Reg.scala 11:16:@3954.4]
  reg [31:0] _RAND_9;
  reg [17:0] _T_87_real; // @[Reg.scala 11:16:@3959.4]
  reg [31:0] _RAND_10;
  reg [17:0] _T_87_imag; // @[Reg.scala 11:16:@3959.4]
  reg [31:0] _RAND_11;
  reg [17:0] _T_93_real; // @[Reg.scala 11:16:@3964.4]
  reg [31:0] _RAND_12;
  reg [17:0] _T_93_imag; // @[Reg.scala 11:16:@3964.4]
  reg [31:0] _RAND_13;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@3969.4]
  reg [31:0] _RAND_14;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@3969.4]
  reg [31:0] _RAND_15;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@3907.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@3908.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@3909.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@3910.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@3911.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@3912.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@3916.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@3917.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@3918.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3919.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3920.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@3921.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@3925.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@3925.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@3933.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@3935.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@3935.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@3940.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@3940.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@3945.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@3945.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@3950.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@3950.4]
  wire [17:0] _GEN_10; // @[Reg.scala 12:19:@3955.4]
  wire [17:0] _GEN_11; // @[Reg.scala 12:19:@3955.4]
  wire [17:0] _GEN_12; // @[Reg.scala 12:19:@3960.4]
  wire [17:0] _GEN_13; // @[Reg.scala 12:19:@3960.4]
  wire [17:0] _GEN_14; // @[Reg.scala 12:19:@3965.4]
  wire [17:0] _GEN_15; // @[Reg.scala 12:19:@3965.4]
  wire [17:0] _GEN_16; // @[Reg.scala 12:19:@3970.4]
  wire [17:0] _GEN_17; // @[Reg.scala 12:19:@3970.4]
  wire [17:0] _GEN_18; // @[r2sdf.scala 45:17:@3976.4]
  wire [17:0] _GEN_19; // @[r2sdf.scala 45:17:@3976.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@3907.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@3908.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@3909.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@3910.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@3911.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@3912.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@3916.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@3917.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@3918.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@3919.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@3920.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3921.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@3925.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@3925.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@3933.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@3935.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@3935.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@3940.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@3940.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@3945.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@3945.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(_T_75_imag); // @[Reg.scala 12:19:@3950.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(_T_75_real); // @[Reg.scala 12:19:@3950.4]
  assign _GEN_10 = _T_51 ? $signed(_T_75_imag) : $signed(_T_81_imag); // @[Reg.scala 12:19:@3955.4]
  assign _GEN_11 = _T_51 ? $signed(_T_75_real) : $signed(_T_81_real); // @[Reg.scala 12:19:@3955.4]
  assign _GEN_12 = _T_51 ? $signed(_T_81_imag) : $signed(_T_87_imag); // @[Reg.scala 12:19:@3960.4]
  assign _GEN_13 = _T_51 ? $signed(_T_81_real) : $signed(_T_87_real); // @[Reg.scala 12:19:@3960.4]
  assign _GEN_14 = _T_51 ? $signed(_T_87_imag) : $signed(_T_93_imag); // @[Reg.scala 12:19:@3965.4]
  assign _GEN_15 = _T_51 ? $signed(_T_87_real) : $signed(_T_93_real); // @[Reg.scala 12:19:@3965.4]
  assign _GEN_16 = _T_51 ? $signed(_T_93_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@3970.4]
  assign _GEN_17 = _T_51 ? $signed(_T_93_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@3970.4]
  assign _GEN_18 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@3976.4]
  assign _GEN_19 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@3976.4]
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
module R2SDF_TFMul_2( // @[:@3985.2]
  input  [17:0] io_din_real, // @[:@3988.4]
  input  [17:0] io_din_imag, // @[:@3988.4]
  output [17:0] io_dout_real, // @[:@3988.4]
  output [17:0] io_dout_imag, // @[:@3988.4]
  input  [3:0]  io_addr // @[:@3988.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@3990.4]
  wire [2:0] _T_14; // @[r2sdf.scala 63:35:@3991.4]
  wire [2:0] addr; // @[r2sdf.scala 63:17:@3992.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_10; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_11; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_12; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_13; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_14; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_15; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_16; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _GEN_17; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [18:0] _T_105; // @[FixedPointTypeClass.scala 21:58:@4010.4]
  wire [17:0] _T_106; // @[FixedPointTypeClass.scala 21:58:@4011.4]
  wire [17:0] _T_107; // @[FixedPointTypeClass.scala 21:58:@4012.4]
  wire [18:0] _T_108; // @[FixedPointTypeClass.scala 21:58:@4013.4]
  wire [17:0] _T_109; // @[FixedPointTypeClass.scala 21:58:@4014.4]
  wire [17:0] _T_110; // @[FixedPointTypeClass.scala 21:58:@4015.4]
  wire [18:0] _T_111; // @[FixedPointTypeClass.scala 31:68:@4016.4]
  wire [17:0] _T_112; // @[FixedPointTypeClass.scala 31:68:@4017.4]
  wire [17:0] _T_113; // @[FixedPointTypeClass.scala 31:68:@4018.4]
  wire [35:0] _T_114; // @[FixedPointTypeClass.scala 43:59:@4019.4]
  wire [35:0] _T_115; // @[FixedPointTypeClass.scala 43:59:@4020.4]
  wire [35:0] _T_116; // @[FixedPointTypeClass.scala 43:59:@4021.4]
  wire [36:0] _T_117; // @[FixedPointTypeClass.scala 31:68:@4022.4]
  wire [35:0] _T_118; // @[FixedPointTypeClass.scala 31:68:@4023.4]
  wire [35:0] _T_119; // @[FixedPointTypeClass.scala 31:68:@4024.4]
  wire [36:0] _T_120; // @[FixedPointTypeClass.scala 21:58:@4025.4]
  wire [35:0] _T_121; // @[FixedPointTypeClass.scala 21:58:@4026.4]
  wire [35:0] _T_122; // @[FixedPointTypeClass.scala 21:58:@4027.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[3]; // @[r2sdf.scala 62:21:@3990.4]
  assign _T_14 = io_addr[2:0]; // @[r2sdf.scala 63:35:@3991.4]
  assign addr = msb ? 3'h0 : _T_14; // @[r2sdf.scala 63:17:@3992.4]
  assign _GEN_4 = 3'h1 == addr ? $signed(18'sh3b2) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_5 = 3'h1 == addr ? $signed(-18'sh188) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_6 = 3'h2 == addr ? $signed(18'sh2d4) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_7 = 3'h2 == addr ? $signed(-18'sh2d4) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_8 = 3'h3 == addr ? $signed(18'sh188) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_9 = 3'h3 == addr ? $signed(-18'sh3b2) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_10 = 3'h4 == addr ? $signed(18'sh0) : $signed(_GEN_8); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_11 = 3'h4 == addr ? $signed(-18'sh400) : $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_12 = 3'h5 == addr ? $signed(-18'sh188) : $signed(_GEN_10); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_13 = 3'h5 == addr ? $signed(-18'sh3b2) : $signed(_GEN_11); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_14 = 3'h6 == addr ? $signed(-18'sh2d4) : $signed(_GEN_12); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_15 = 3'h6 == addr ? $signed(-18'sh2d4) : $signed(_GEN_13); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_16 = 3'h7 == addr ? $signed(-18'sh3b2) : $signed(_GEN_14); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _GEN_17 = 3'h7 == addr ? $signed(-18'sh188) : $signed(_GEN_15); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _T_105 = $signed(_GEN_16) + $signed(_GEN_17); // @[FixedPointTypeClass.scala 21:58:@4010.4]
  assign _T_106 = _T_105[17:0]; // @[FixedPointTypeClass.scala 21:58:@4011.4]
  assign _T_107 = $signed(_T_106); // @[FixedPointTypeClass.scala 21:58:@4012.4]
  assign _T_108 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4013.4]
  assign _T_109 = _T_108[17:0]; // @[FixedPointTypeClass.scala 21:58:@4014.4]
  assign _T_110 = $signed(_T_109); // @[FixedPointTypeClass.scala 21:58:@4015.4]
  assign _T_111 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4016.4]
  assign _T_112 = _T_111[17:0]; // @[FixedPointTypeClass.scala 31:68:@4017.4]
  assign _T_113 = $signed(_T_112); // @[FixedPointTypeClass.scala 31:68:@4018.4]
  assign _T_114 = $signed(io_din_real) * $signed(_T_107); // @[FixedPointTypeClass.scala 43:59:@4019.4]
  assign _T_115 = $signed(_T_110) * $signed(_GEN_17); // @[FixedPointTypeClass.scala 43:59:@4020.4]
  assign _T_116 = $signed(_T_113) * $signed(_GEN_16); // @[FixedPointTypeClass.scala 43:59:@4021.4]
  assign _T_117 = $signed(_T_114) - $signed(_T_115); // @[FixedPointTypeClass.scala 31:68:@4022.4]
  assign _T_118 = _T_117[35:0]; // @[FixedPointTypeClass.scala 31:68:@4023.4]
  assign _T_119 = $signed(_T_118); // @[FixedPointTypeClass.scala 31:68:@4024.4]
  assign _T_120 = $signed(_T_114) + $signed(_T_116); // @[FixedPointTypeClass.scala 21:58:@4025.4]
  assign _T_121 = _T_120[35:0]; // @[FixedPointTypeClass.scala 21:58:@4026.4]
  assign _T_122 = $signed(_T_121); // @[FixedPointTypeClass.scala 21:58:@4027.4]
  assign _GEN_0 = _T_119[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_122[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_3( // @[:@4034.2]
  input         clock, // @[:@4035.4]
  input  [17:0] io_din_real, // @[:@4037.4]
  input  [17:0] io_din_imag, // @[:@4037.4]
  output [17:0] io_dout_real, // @[:@4037.4]
  output [17:0] io_dout_imag, // @[:@4037.4]
  input         io_sel, // @[:@4037.4]
  input         io_stall // @[:@4037.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@4068.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@4068.4]
  reg [31:0] _RAND_1;
  reg [17:0] _T_63_real; // @[Reg.scala 11:16:@4073.4]
  reg [31:0] _RAND_2;
  reg [17:0] _T_63_imag; // @[Reg.scala 11:16:@4073.4]
  reg [31:0] _RAND_3;
  reg [17:0] _T_69_real; // @[Reg.scala 11:16:@4078.4]
  reg [31:0] _RAND_4;
  reg [17:0] _T_69_imag; // @[Reg.scala 11:16:@4078.4]
  reg [31:0] _RAND_5;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@4083.4]
  reg [31:0] _RAND_6;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@4083.4]
  reg [31:0] _RAND_7;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@4041.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@4042.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@4043.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@4044.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@4045.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@4046.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@4050.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@4051.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@4052.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@4053.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@4054.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@4055.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@4059.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@4059.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@4067.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@4069.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@4069.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@4074.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@4074.4]
  wire [17:0] _GEN_6; // @[Reg.scala 12:19:@4079.4]
  wire [17:0] _GEN_7; // @[Reg.scala 12:19:@4079.4]
  wire [17:0] _GEN_8; // @[Reg.scala 12:19:@4084.4]
  wire [17:0] _GEN_9; // @[Reg.scala 12:19:@4084.4]
  wire [17:0] _GEN_10; // @[r2sdf.scala 45:17:@4090.4]
  wire [17:0] _GEN_11; // @[r2sdf.scala 45:17:@4090.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@4041.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@4042.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@4043.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4044.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@4045.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@4046.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4050.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@4051.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@4052.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@4053.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@4054.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@4055.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@4059.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@4059.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@4067.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@4069.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@4069.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(_T_63_imag); // @[Reg.scala 12:19:@4074.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(_T_63_real); // @[Reg.scala 12:19:@4074.4]
  assign _GEN_6 = _T_51 ? $signed(_T_63_imag) : $signed(_T_69_imag); // @[Reg.scala 12:19:@4079.4]
  assign _GEN_7 = _T_51 ? $signed(_T_63_real) : $signed(_T_69_real); // @[Reg.scala 12:19:@4079.4]
  assign _GEN_8 = _T_51 ? $signed(_T_69_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@4084.4]
  assign _GEN_9 = _T_51 ? $signed(_T_69_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@4084.4]
  assign _GEN_10 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@4090.4]
  assign _GEN_11 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@4090.4]
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
module R2SDF_TFMul_3( // @[:@4099.2]
  input  [17:0] io_din_real, // @[:@4102.4]
  input  [17:0] io_din_imag, // @[:@4102.4]
  output [17:0] io_dout_real, // @[:@4102.4]
  output [17:0] io_dout_imag, // @[:@4102.4]
  input  [2:0]  io_addr // @[:@4102.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@4104.4]
  wire [1:0] _T_14; // @[r2sdf.scala 63:35:@4105.4]
  wire [1:0] addr; // @[r2sdf.scala 63:17:@4106.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _GEN_9; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [18:0] _T_69; // @[FixedPointTypeClass.scala 21:58:@4116.4]
  wire [17:0] _T_70; // @[FixedPointTypeClass.scala 21:58:@4117.4]
  wire [17:0] _T_71; // @[FixedPointTypeClass.scala 21:58:@4118.4]
  wire [18:0] _T_72; // @[FixedPointTypeClass.scala 21:58:@4119.4]
  wire [17:0] _T_73; // @[FixedPointTypeClass.scala 21:58:@4120.4]
  wire [17:0] _T_74; // @[FixedPointTypeClass.scala 21:58:@4121.4]
  wire [18:0] _T_75; // @[FixedPointTypeClass.scala 31:68:@4122.4]
  wire [17:0] _T_76; // @[FixedPointTypeClass.scala 31:68:@4123.4]
  wire [17:0] _T_77; // @[FixedPointTypeClass.scala 31:68:@4124.4]
  wire [35:0] _T_78; // @[FixedPointTypeClass.scala 43:59:@4125.4]
  wire [35:0] _T_79; // @[FixedPointTypeClass.scala 43:59:@4126.4]
  wire [35:0] _T_80; // @[FixedPointTypeClass.scala 43:59:@4127.4]
  wire [36:0] _T_81; // @[FixedPointTypeClass.scala 31:68:@4128.4]
  wire [35:0] _T_82; // @[FixedPointTypeClass.scala 31:68:@4129.4]
  wire [35:0] _T_83; // @[FixedPointTypeClass.scala 31:68:@4130.4]
  wire [36:0] _T_84; // @[FixedPointTypeClass.scala 21:58:@4131.4]
  wire [35:0] _T_85; // @[FixedPointTypeClass.scala 21:58:@4132.4]
  wire [35:0] _T_86; // @[FixedPointTypeClass.scala 21:58:@4133.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[2]; // @[r2sdf.scala 62:21:@4104.4]
  assign _T_14 = io_addr[1:0]; // @[r2sdf.scala 63:35:@4105.4]
  assign addr = msb ? 2'h0 : _T_14; // @[r2sdf.scala 63:17:@4106.4]
  assign _GEN_4 = 2'h1 == addr ? $signed(18'sh2d4) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _GEN_5 = 2'h1 == addr ? $signed(-18'sh2d4) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _GEN_6 = 2'h2 == addr ? $signed(18'sh0) : $signed(_GEN_4); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _GEN_7 = 2'h2 == addr ? $signed(-18'sh400) : $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _GEN_8 = 2'h3 == addr ? $signed(-18'sh2d4) : $signed(_GEN_6); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _GEN_9 = 2'h3 == addr ? $signed(-18'sh2d4) : $signed(_GEN_7); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _T_69 = $signed(_GEN_8) + $signed(_GEN_9); // @[FixedPointTypeClass.scala 21:58:@4116.4]
  assign _T_70 = _T_69[17:0]; // @[FixedPointTypeClass.scala 21:58:@4117.4]
  assign _T_71 = $signed(_T_70); // @[FixedPointTypeClass.scala 21:58:@4118.4]
  assign _T_72 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4119.4]
  assign _T_73 = _T_72[17:0]; // @[FixedPointTypeClass.scala 21:58:@4120.4]
  assign _T_74 = $signed(_T_73); // @[FixedPointTypeClass.scala 21:58:@4121.4]
  assign _T_75 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4122.4]
  assign _T_76 = _T_75[17:0]; // @[FixedPointTypeClass.scala 31:68:@4123.4]
  assign _T_77 = $signed(_T_76); // @[FixedPointTypeClass.scala 31:68:@4124.4]
  assign _T_78 = $signed(io_din_real) * $signed(_T_71); // @[FixedPointTypeClass.scala 43:59:@4125.4]
  assign _T_79 = $signed(_T_74) * $signed(_GEN_9); // @[FixedPointTypeClass.scala 43:59:@4126.4]
  assign _T_80 = $signed(_T_77) * $signed(_GEN_8); // @[FixedPointTypeClass.scala 43:59:@4127.4]
  assign _T_81 = $signed(_T_78) - $signed(_T_79); // @[FixedPointTypeClass.scala 31:68:@4128.4]
  assign _T_82 = _T_81[35:0]; // @[FixedPointTypeClass.scala 31:68:@4129.4]
  assign _T_83 = $signed(_T_82); // @[FixedPointTypeClass.scala 31:68:@4130.4]
  assign _T_84 = $signed(_T_78) + $signed(_T_80); // @[FixedPointTypeClass.scala 21:58:@4131.4]
  assign _T_85 = _T_84[35:0]; // @[FixedPointTypeClass.scala 21:58:@4132.4]
  assign _T_86 = $signed(_T_85); // @[FixedPointTypeClass.scala 21:58:@4133.4]
  assign _GEN_0 = _T_83[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_86[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_4( // @[:@4140.2]
  input         clock, // @[:@4141.4]
  input  [17:0] io_din_real, // @[:@4143.4]
  input  [17:0] io_din_imag, // @[:@4143.4]
  output [17:0] io_dout_real, // @[:@4143.4]
  output [17:0] io_dout_imag, // @[:@4143.4]
  input         io_sel, // @[:@4143.4]
  input         io_stall // @[:@4143.4]
);
  reg [17:0] _T_57_real; // @[Reg.scala 11:16:@4174.4]
  reg [31:0] _RAND_0;
  reg [17:0] _T_57_imag; // @[Reg.scala 11:16:@4174.4]
  reg [31:0] _RAND_1;
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@4179.4]
  reg [31:0] _RAND_2;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@4179.4]
  reg [31:0] _RAND_3;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@4147.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@4148.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@4149.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@4150.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@4151.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@4152.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@4156.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@4157.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@4158.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@4159.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@4160.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@4161.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@4165.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@4165.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@4173.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@4175.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@4175.4]
  wire [17:0] _GEN_4; // @[Reg.scala 12:19:@4180.4]
  wire [17:0] _GEN_5; // @[Reg.scala 12:19:@4180.4]
  wire [17:0] _GEN_6; // @[r2sdf.scala 45:17:@4186.4]
  wire [17:0] _GEN_7; // @[r2sdf.scala 45:17:@4186.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@4147.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@4148.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@4149.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4150.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@4151.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@4152.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4156.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@4157.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@4158.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@4159.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@4160.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@4161.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@4165.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@4165.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@4173.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(_T_57_imag); // @[Reg.scala 12:19:@4175.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(_T_57_real); // @[Reg.scala 12:19:@4175.4]
  assign _GEN_4 = _T_51 ? $signed(_T_57_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@4180.4]
  assign _GEN_5 = _T_51 ? $signed(_T_57_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@4180.4]
  assign _GEN_6 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@4186.4]
  assign _GEN_7 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@4186.4]
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
module R2SDF_TFMul_4( // @[:@4195.2]
  input  [17:0] io_din_real, // @[:@4198.4]
  input  [17:0] io_din_imag, // @[:@4198.4]
  output [17:0] io_dout_real, // @[:@4198.4]
  output [17:0] io_dout_imag, // @[:@4198.4]
  input  [1:0]  io_addr // @[:@4198.4]
);
  wire  msb; // @[r2sdf.scala 62:21:@4200.4]
  wire  _T_14; // @[r2sdf.scala 63:35:@4201.4]
  wire  addr; // @[r2sdf.scala 63:17:@4202.4]
  wire [17:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@4208.4]
  wire [17:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@4208.4]
  wire [18:0] _T_51; // @[FixedPointTypeClass.scala 21:58:@4208.4]
  wire [17:0] _T_52; // @[FixedPointTypeClass.scala 21:58:@4209.4]
  wire [17:0] _T_53; // @[FixedPointTypeClass.scala 21:58:@4210.4]
  wire [18:0] _T_54; // @[FixedPointTypeClass.scala 21:58:@4211.4]
  wire [17:0] _T_55; // @[FixedPointTypeClass.scala 21:58:@4212.4]
  wire [17:0] _T_56; // @[FixedPointTypeClass.scala 21:58:@4213.4]
  wire [18:0] _T_57; // @[FixedPointTypeClass.scala 31:68:@4214.4]
  wire [17:0] _T_58; // @[FixedPointTypeClass.scala 31:68:@4215.4]
  wire [17:0] _T_59; // @[FixedPointTypeClass.scala 31:68:@4216.4]
  wire [35:0] _T_60; // @[FixedPointTypeClass.scala 43:59:@4217.4]
  wire [35:0] _T_61; // @[FixedPointTypeClass.scala 43:59:@4218.4]
  wire [35:0] _T_62; // @[FixedPointTypeClass.scala 43:59:@4219.4]
  wire [36:0] _T_63; // @[FixedPointTypeClass.scala 31:68:@4220.4]
  wire [35:0] _T_64; // @[FixedPointTypeClass.scala 31:68:@4221.4]
  wire [35:0] _T_65; // @[FixedPointTypeClass.scala 31:68:@4222.4]
  wire [36:0] _T_66; // @[FixedPointTypeClass.scala 21:58:@4223.4]
  wire [35:0] _T_67; // @[FixedPointTypeClass.scala 21:58:@4224.4]
  wire [35:0] _T_68; // @[FixedPointTypeClass.scala 21:58:@4225.4]
  wire [25:0] _GEN_0;
  wire [17:0] _GEN_1;
  wire [25:0] _GEN_2;
  wire [17:0] _GEN_3;
  assign msb = io_addr[1]; // @[r2sdf.scala 62:21:@4200.4]
  assign _T_14 = io_addr[0]; // @[r2sdf.scala 63:35:@4201.4]
  assign addr = msb ? 1'h0 : _T_14; // @[r2sdf.scala 63:17:@4202.4]
  assign _GEN_4 = addr ? $signed(18'sh0) : $signed(18'sh400); // @[FixedPointTypeClass.scala 21:58:@4208.4]
  assign _GEN_5 = addr ? $signed(-18'sh400) : $signed(18'sh0); // @[FixedPointTypeClass.scala 21:58:@4208.4]
  assign _T_51 = $signed(_GEN_4) + $signed(_GEN_5); // @[FixedPointTypeClass.scala 21:58:@4208.4]
  assign _T_52 = _T_51[17:0]; // @[FixedPointTypeClass.scala 21:58:@4209.4]
  assign _T_53 = $signed(_T_52); // @[FixedPointTypeClass.scala 21:58:@4210.4]
  assign _T_54 = $signed(io_din_real) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4211.4]
  assign _T_55 = _T_54[17:0]; // @[FixedPointTypeClass.scala 21:58:@4212.4]
  assign _T_56 = $signed(_T_55); // @[FixedPointTypeClass.scala 21:58:@4213.4]
  assign _T_57 = $signed(io_din_imag) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4214.4]
  assign _T_58 = _T_57[17:0]; // @[FixedPointTypeClass.scala 31:68:@4215.4]
  assign _T_59 = $signed(_T_58); // @[FixedPointTypeClass.scala 31:68:@4216.4]
  assign _T_60 = $signed(io_din_real) * $signed(_T_53); // @[FixedPointTypeClass.scala 43:59:@4217.4]
  assign _T_61 = $signed(_T_56) * $signed(_GEN_5); // @[FixedPointTypeClass.scala 43:59:@4218.4]
  assign _T_62 = $signed(_T_59) * $signed(_GEN_4); // @[FixedPointTypeClass.scala 43:59:@4219.4]
  assign _T_63 = $signed(_T_60) - $signed(_T_61); // @[FixedPointTypeClass.scala 31:68:@4220.4]
  assign _T_64 = _T_63[35:0]; // @[FixedPointTypeClass.scala 31:68:@4221.4]
  assign _T_65 = $signed(_T_64); // @[FixedPointTypeClass.scala 31:68:@4222.4]
  assign _T_66 = $signed(_T_60) + $signed(_T_62); // @[FixedPointTypeClass.scala 21:58:@4223.4]
  assign _T_67 = _T_66[35:0]; // @[FixedPointTypeClass.scala 21:58:@4224.4]
  assign _T_68 = $signed(_T_67); // @[FixedPointTypeClass.scala 21:58:@4225.4]
  assign _GEN_0 = _T_65[35:10];
  assign _GEN_1 = _GEN_0[17:0];
  assign io_dout_real = $signed(_GEN_1);
  assign _GEN_2 = _T_68[35:10];
  assign _GEN_3 = _GEN_2[17:0];
  assign io_dout_imag = $signed(_GEN_3);
endmodule
module BflyR22_5( // @[:@4232.2]
  input         clock, // @[:@4233.4]
  input  [17:0] io_din_real, // @[:@4235.4]
  input  [17:0] io_din_imag, // @[:@4235.4]
  output [17:0] io_dout_real, // @[:@4235.4]
  output [17:0] io_dout_imag, // @[:@4235.4]
  input         io_sel, // @[:@4235.4]
  input         io_stall // @[:@4235.4]
);
  reg [17:0] q_dout_real; // @[Reg.scala 11:16:@4266.4]
  reg [31:0] _RAND_0;
  reg [17:0] q_dout_imag; // @[Reg.scala 11:16:@4266.4]
  reg [31:0] _RAND_1;
  wire [18:0] _T_24; // @[FixedPointTypeClass.scala 21:58:@4239.4]
  wire [17:0] _T_25; // @[FixedPointTypeClass.scala 21:58:@4240.4]
  wire [17:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@4241.4]
  wire [18:0] _T_27; // @[FixedPointTypeClass.scala 21:58:@4242.4]
  wire [17:0] _T_28; // @[FixedPointTypeClass.scala 21:58:@4243.4]
  wire [17:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@4244.4]
  wire [18:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@4248.4]
  wire [17:0] _T_38; // @[FixedPointTypeClass.scala 31:68:@4249.4]
  wire [17:0] diff_real; // @[FixedPointTypeClass.scala 31:68:@4250.4]
  wire [18:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@4251.4]
  wire [17:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@4252.4]
  wire [17:0] diff_imag; // @[FixedPointTypeClass.scala 31:68:@4253.4]
  wire [17:0] q_din_imag; // @[r2sdf.scala 35:17:@4257.4]
  wire [17:0] q_din_real; // @[r2sdf.scala 35:17:@4257.4]
  wire  _T_51; // @[r2sdf.scala 42:37:@4265.4]
  wire [17:0] _GEN_2; // @[Reg.scala 12:19:@4267.4]
  wire [17:0] _GEN_3; // @[Reg.scala 12:19:@4267.4]
  wire [17:0] _GEN_4; // @[r2sdf.scala 45:17:@4273.4]
  wire [17:0] _GEN_5; // @[r2sdf.scala 45:17:@4273.4]
  assign _T_24 = $signed(q_dout_real) + $signed(io_din_real); // @[FixedPointTypeClass.scala 21:58:@4239.4]
  assign _T_25 = _T_24[17:0]; // @[FixedPointTypeClass.scala 21:58:@4240.4]
  assign sum_real = $signed(_T_25); // @[FixedPointTypeClass.scala 21:58:@4241.4]
  assign _T_27 = $signed(q_dout_imag) + $signed(io_din_imag); // @[FixedPointTypeClass.scala 21:58:@4242.4]
  assign _T_28 = _T_27[17:0]; // @[FixedPointTypeClass.scala 21:58:@4243.4]
  assign sum_imag = $signed(_T_28); // @[FixedPointTypeClass.scala 21:58:@4244.4]
  assign _T_37 = $signed(q_dout_real) - $signed(io_din_real); // @[FixedPointTypeClass.scala 31:68:@4248.4]
  assign _T_38 = _T_37[17:0]; // @[FixedPointTypeClass.scala 31:68:@4249.4]
  assign diff_real = $signed(_T_38); // @[FixedPointTypeClass.scala 31:68:@4250.4]
  assign _T_40 = $signed(q_dout_imag) - $signed(io_din_imag); // @[FixedPointTypeClass.scala 31:68:@4251.4]
  assign _T_41 = _T_40[17:0]; // @[FixedPointTypeClass.scala 31:68:@4252.4]
  assign diff_imag = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@4253.4]
  assign q_din_imag = io_sel ? $signed(diff_imag) : $signed(io_din_imag); // @[r2sdf.scala 35:17:@4257.4]
  assign q_din_real = io_sel ? $signed(diff_real) : $signed(io_din_real); // @[r2sdf.scala 35:17:@4257.4]
  assign _T_51 = io_stall == 1'h0; // @[r2sdf.scala 42:37:@4265.4]
  assign _GEN_2 = _T_51 ? $signed(q_din_imag) : $signed(q_dout_imag); // @[Reg.scala 12:19:@4267.4]
  assign _GEN_3 = _T_51 ? $signed(q_din_real) : $signed(q_dout_real); // @[Reg.scala 12:19:@4267.4]
  assign _GEN_4 = io_sel ? $signed(sum_imag) : $signed(q_dout_imag); // @[r2sdf.scala 45:17:@4273.4]
  assign _GEN_5 = io_sel ? $signed(sum_real) : $signed(q_dout_real); // @[r2sdf.scala 45:17:@4273.4]
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
module FFT_R2SDF( // @[:@4282.2]
  input         clock, // @[:@4283.4]
  input         reset, // @[:@4284.4]
  input         io_din_valid, // @[:@4285.4]
  input  [11:0] io_din_bits_real, // @[:@4285.4]
  input  [11:0] io_din_bits_imag, // @[:@4285.4]
  output        io_dout_valid, // @[:@4285.4]
  output [11:0] io_dout_bits_real, // @[:@4285.4]
  output [11:0] io_dout_bits_imag, // @[:@4285.4]
  input         io_init, // @[:@4285.4]
  input         io_stall // @[:@4285.4]
);
  reg [17:0] s_dout_reg_0_real; // @[r2sdf.scala 101:44:@4287.4]
  reg [31:0] _RAND_0;
  reg [17:0] s_dout_reg_0_imag; // @[r2sdf.scala 101:44:@4287.4]
  reg [31:0] _RAND_1;
  reg [17:0] s_dout_reg_1_real; // @[r2sdf.scala 101:44:@4288.4]
  reg [31:0] _RAND_2;
  reg [17:0] s_dout_reg_1_imag; // @[r2sdf.scala 101:44:@4288.4]
  reg [31:0] _RAND_3;
  reg [17:0] s_dout_reg_2_real; // @[r2sdf.scala 101:44:@4289.4]
  reg [31:0] _RAND_4;
  reg [17:0] s_dout_reg_2_imag; // @[r2sdf.scala 101:44:@4289.4]
  reg [31:0] _RAND_5;
  reg [17:0] s_dout_reg_3_real; // @[r2sdf.scala 101:44:@4290.4]
  reg [31:0] _RAND_6;
  reg [17:0] s_dout_reg_3_imag; // @[r2sdf.scala 101:44:@4290.4]
  reg [31:0] _RAND_7;
  reg [17:0] s_dout_reg_4_real; // @[r2sdf.scala 101:44:@4291.4]
  reg [31:0] _RAND_8;
  reg [17:0] s_dout_reg_4_imag; // @[r2sdf.scala 101:44:@4291.4]
  reg [31:0] _RAND_9;
  reg [17:0] s_dout_reg_5_real; // @[r2sdf.scala 101:44:@4292.4]
  reg [31:0] _RAND_10;
  reg [17:0] s_dout_reg_5_imag; // @[r2sdf.scala 101:44:@4292.4]
  reg [31:0] _RAND_11;
  reg  en_regs_0; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_12;
  reg  en_regs_1; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_13;
  reg  en_regs_2; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_14;
  reg  en_regs_3; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_15;
  reg  en_regs_4; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_16;
  reg  en_regs_5; // @[r2sdf.scala 103:24:@4301.4]
  reg [31:0] _RAND_17;
  reg [5:0] dcnt_0; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_18;
  reg [5:0] dcnt_1; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_19;
  reg [5:0] dcnt_2; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_20;
  reg [5:0] dcnt_3; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_21;
  reg [5:0] dcnt_4; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_22;
  reg [5:0] dcnt_5; // @[r2sdf.scala 104:24:@4309.4]
  reg [31:0] _RAND_23;
  reg [8:0] cycles; // @[r2sdf.scala 105:24:@4310.4]
  reg [31:0] _RAND_24;
  reg [11:0] din_reg_real; // @[Reg.scala 11:16:@4312.4]
  reg [31:0] _RAND_25;
  reg [11:0] din_reg_imag; // @[Reg.scala 11:16:@4312.4]
  reg [31:0] _RAND_26;
  wire  BflyR22_clock; // @[r2sdf.scala 131:20:@4427.4]
  wire [17:0] BflyR22_io_din_real; // @[r2sdf.scala 131:20:@4427.4]
  wire [17:0] BflyR22_io_din_imag; // @[r2sdf.scala 131:20:@4427.4]
  wire [17:0] BflyR22_io_dout_real; // @[r2sdf.scala 131:20:@4427.4]
  wire [17:0] BflyR22_io_dout_imag; // @[r2sdf.scala 131:20:@4427.4]
  wire  BflyR22_io_sel; // @[r2sdf.scala 131:20:@4427.4]
  wire  BflyR22_io_stall; // @[r2sdf.scala 131:20:@4427.4]
  wire [17:0] R2SDF_TFMul_io_din_real; // @[r2sdf.scala 138:25:@4435.4]
  wire [17:0] R2SDF_TFMul_io_din_imag; // @[r2sdf.scala 138:25:@4435.4]
  wire [17:0] R2SDF_TFMul_io_dout_real; // @[r2sdf.scala 138:25:@4435.4]
  wire [17:0] R2SDF_TFMul_io_dout_imag; // @[r2sdf.scala 138:25:@4435.4]
  wire [5:0] R2SDF_TFMul_io_addr; // @[r2sdf.scala 138:25:@4435.4]
  wire  BflyR22_1_clock; // @[r2sdf.scala 131:20:@4444.4]
  wire [17:0] BflyR22_1_io_din_real; // @[r2sdf.scala 131:20:@4444.4]
  wire [17:0] BflyR22_1_io_din_imag; // @[r2sdf.scala 131:20:@4444.4]
  wire [17:0] BflyR22_1_io_dout_real; // @[r2sdf.scala 131:20:@4444.4]
  wire [17:0] BflyR22_1_io_dout_imag; // @[r2sdf.scala 131:20:@4444.4]
  wire  BflyR22_1_io_sel; // @[r2sdf.scala 131:20:@4444.4]
  wire  BflyR22_1_io_stall; // @[r2sdf.scala 131:20:@4444.4]
  wire [17:0] R2SDF_TFMul_1_io_din_real; // @[r2sdf.scala 138:25:@4452.4]
  wire [17:0] R2SDF_TFMul_1_io_din_imag; // @[r2sdf.scala 138:25:@4452.4]
  wire [17:0] R2SDF_TFMul_1_io_dout_real; // @[r2sdf.scala 138:25:@4452.4]
  wire [17:0] R2SDF_TFMul_1_io_dout_imag; // @[r2sdf.scala 138:25:@4452.4]
  wire [4:0] R2SDF_TFMul_1_io_addr; // @[r2sdf.scala 138:25:@4452.4]
  wire  BflyR22_2_clock; // @[r2sdf.scala 131:20:@4461.4]
  wire [17:0] BflyR22_2_io_din_real; // @[r2sdf.scala 131:20:@4461.4]
  wire [17:0] BflyR22_2_io_din_imag; // @[r2sdf.scala 131:20:@4461.4]
  wire [17:0] BflyR22_2_io_dout_real; // @[r2sdf.scala 131:20:@4461.4]
  wire [17:0] BflyR22_2_io_dout_imag; // @[r2sdf.scala 131:20:@4461.4]
  wire  BflyR22_2_io_sel; // @[r2sdf.scala 131:20:@4461.4]
  wire  BflyR22_2_io_stall; // @[r2sdf.scala 131:20:@4461.4]
  wire [17:0] R2SDF_TFMul_2_io_din_real; // @[r2sdf.scala 138:25:@4469.4]
  wire [17:0] R2SDF_TFMul_2_io_din_imag; // @[r2sdf.scala 138:25:@4469.4]
  wire [17:0] R2SDF_TFMul_2_io_dout_real; // @[r2sdf.scala 138:25:@4469.4]
  wire [17:0] R2SDF_TFMul_2_io_dout_imag; // @[r2sdf.scala 138:25:@4469.4]
  wire [3:0] R2SDF_TFMul_2_io_addr; // @[r2sdf.scala 138:25:@4469.4]
  wire  BflyR22_3_clock; // @[r2sdf.scala 131:20:@4478.4]
  wire [17:0] BflyR22_3_io_din_real; // @[r2sdf.scala 131:20:@4478.4]
  wire [17:0] BflyR22_3_io_din_imag; // @[r2sdf.scala 131:20:@4478.4]
  wire [17:0] BflyR22_3_io_dout_real; // @[r2sdf.scala 131:20:@4478.4]
  wire [17:0] BflyR22_3_io_dout_imag; // @[r2sdf.scala 131:20:@4478.4]
  wire  BflyR22_3_io_sel; // @[r2sdf.scala 131:20:@4478.4]
  wire  BflyR22_3_io_stall; // @[r2sdf.scala 131:20:@4478.4]
  wire [17:0] R2SDF_TFMul_3_io_din_real; // @[r2sdf.scala 138:25:@4486.4]
  wire [17:0] R2SDF_TFMul_3_io_din_imag; // @[r2sdf.scala 138:25:@4486.4]
  wire [17:0] R2SDF_TFMul_3_io_dout_real; // @[r2sdf.scala 138:25:@4486.4]
  wire [17:0] R2SDF_TFMul_3_io_dout_imag; // @[r2sdf.scala 138:25:@4486.4]
  wire [2:0] R2SDF_TFMul_3_io_addr; // @[r2sdf.scala 138:25:@4486.4]
  wire  BflyR22_4_clock; // @[r2sdf.scala 131:20:@4495.4]
  wire [17:0] BflyR22_4_io_din_real; // @[r2sdf.scala 131:20:@4495.4]
  wire [17:0] BflyR22_4_io_din_imag; // @[r2sdf.scala 131:20:@4495.4]
  wire [17:0] BflyR22_4_io_dout_real; // @[r2sdf.scala 131:20:@4495.4]
  wire [17:0] BflyR22_4_io_dout_imag; // @[r2sdf.scala 131:20:@4495.4]
  wire  BflyR22_4_io_sel; // @[r2sdf.scala 131:20:@4495.4]
  wire  BflyR22_4_io_stall; // @[r2sdf.scala 131:20:@4495.4]
  wire [17:0] R2SDF_TFMul_4_io_din_real; // @[r2sdf.scala 138:25:@4503.4]
  wire [17:0] R2SDF_TFMul_4_io_din_imag; // @[r2sdf.scala 138:25:@4503.4]
  wire [17:0] R2SDF_TFMul_4_io_dout_real; // @[r2sdf.scala 138:25:@4503.4]
  wire [17:0] R2SDF_TFMul_4_io_dout_imag; // @[r2sdf.scala 138:25:@4503.4]
  wire [1:0] R2SDF_TFMul_4_io_addr; // @[r2sdf.scala 138:25:@4503.4]
  wire  BflyR22_5_clock; // @[r2sdf.scala 131:20:@4512.4]
  wire [17:0] BflyR22_5_io_din_real; // @[r2sdf.scala 131:20:@4512.4]
  wire [17:0] BflyR22_5_io_din_imag; // @[r2sdf.scala 131:20:@4512.4]
  wire [17:0] BflyR22_5_io_dout_real; // @[r2sdf.scala 131:20:@4512.4]
  wire [17:0] BflyR22_5_io_dout_imag; // @[r2sdf.scala 131:20:@4512.4]
  wire  BflyR22_5_io_sel; // @[r2sdf.scala 131:20:@4512.4]
  wire  BflyR22_5_io_stall; // @[r2sdf.scala 131:20:@4512.4]
  wire  _T_227; // @[r2sdf.scala 106:40:@4311.4]
  wire [11:0] _GEN_0; // @[Reg.scala 12:19:@4313.4]
  wire [11:0] _GEN_1; // @[Reg.scala 12:19:@4313.4]
  wire  _T_236; // @[r2sdf.scala 110:35:@4322.6]
  wire  _T_238; // @[r2sdf.scala 111:26:@4324.8]
  wire [9:0] _T_240; // @[r2sdf.scala 111:50:@4325.8]
  wire [8:0] _T_241; // @[r2sdf.scala 111:50:@4326.8]
  wire [8:0] _T_242; // @[r2sdf.scala 111:18:@4327.8]
  wire [8:0] _GEN_2; // @[r2sdf.scala 110:48:@4323.6]
  wire [8:0] _GEN_3; // @[r2sdf.scala 108:18:@4317.4]
  wire [6:0] _T_249; // @[r2sdf.scala 124:69:@4342.10]
  wire [5:0] _T_250; // @[r2sdf.scala 124:69:@4343.10]
  wire [5:0] _GEN_4; // @[r2sdf.scala 123:29:@4341.8]
  wire [17:0] s_dout_0_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_5; // @[r2sdf.scala 120:29:@4337.6]
  wire [17:0] s_dout_0_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_6; // @[r2sdf.scala 120:29:@4337.6]
  wire  _GEN_7; // @[r2sdf.scala 120:29:@4337.6]
  wire [5:0] _GEN_8; // @[r2sdf.scala 120:29:@4337.6]
  wire  _GEN_9; // @[r2sdf.scala 117:20:@4331.4]
  wire [5:0] _GEN_10; // @[r2sdf.scala 117:20:@4331.4]
  wire [17:0] _GEN_11; // @[r2sdf.scala 117:20:@4331.4]
  wire [17:0] _GEN_12; // @[r2sdf.scala 117:20:@4331.4]
  wire [5:0] _GEN_13; // @[r2sdf.scala 123:29:@4357.8]
  wire [17:0] s_dout_1_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_14; // @[r2sdf.scala 120:29:@4353.6]
  wire [17:0] s_dout_1_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_15; // @[r2sdf.scala 120:29:@4353.6]
  wire  _GEN_16; // @[r2sdf.scala 120:29:@4353.6]
  wire [5:0] _GEN_17; // @[r2sdf.scala 120:29:@4353.6]
  wire  _GEN_18; // @[r2sdf.scala 117:20:@4347.4]
  wire [5:0] _GEN_19; // @[r2sdf.scala 117:20:@4347.4]
  wire [17:0] _GEN_20; // @[r2sdf.scala 117:20:@4347.4]
  wire [17:0] _GEN_21; // @[r2sdf.scala 117:20:@4347.4]
  wire [5:0] _GEN_22; // @[r2sdf.scala 123:29:@4373.8]
  wire [17:0] s_dout_2_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_23; // @[r2sdf.scala 120:29:@4369.6]
  wire [17:0] s_dout_2_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_24; // @[r2sdf.scala 120:29:@4369.6]
  wire  _GEN_25; // @[r2sdf.scala 120:29:@4369.6]
  wire [5:0] _GEN_26; // @[r2sdf.scala 120:29:@4369.6]
  wire  _GEN_27; // @[r2sdf.scala 117:20:@4363.4]
  wire [5:0] _GEN_28; // @[r2sdf.scala 117:20:@4363.4]
  wire [17:0] _GEN_29; // @[r2sdf.scala 117:20:@4363.4]
  wire [17:0] _GEN_30; // @[r2sdf.scala 117:20:@4363.4]
  wire [5:0] _GEN_31; // @[r2sdf.scala 123:29:@4389.8]
  wire [17:0] s_dout_3_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_32; // @[r2sdf.scala 120:29:@4385.6]
  wire [17:0] s_dout_3_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_33; // @[r2sdf.scala 120:29:@4385.6]
  wire  _GEN_34; // @[r2sdf.scala 120:29:@4385.6]
  wire [5:0] _GEN_35; // @[r2sdf.scala 120:29:@4385.6]
  wire  _GEN_36; // @[r2sdf.scala 117:20:@4379.4]
  wire [5:0] _GEN_37; // @[r2sdf.scala 117:20:@4379.4]
  wire [17:0] _GEN_38; // @[r2sdf.scala 117:20:@4379.4]
  wire [17:0] _GEN_39; // @[r2sdf.scala 117:20:@4379.4]
  wire [5:0] _GEN_40; // @[r2sdf.scala 123:29:@4405.8]
  wire [17:0] s_dout_4_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_41; // @[r2sdf.scala 120:29:@4401.6]
  wire [17:0] s_dout_4_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_42; // @[r2sdf.scala 120:29:@4401.6]
  wire  _GEN_43; // @[r2sdf.scala 120:29:@4401.6]
  wire [5:0] _GEN_44; // @[r2sdf.scala 120:29:@4401.6]
  wire  _GEN_45; // @[r2sdf.scala 117:20:@4395.4]
  wire [5:0] _GEN_46; // @[r2sdf.scala 117:20:@4395.4]
  wire [17:0] _GEN_47; // @[r2sdf.scala 117:20:@4395.4]
  wire [17:0] _GEN_48; // @[r2sdf.scala 117:20:@4395.4]
  wire [5:0] _GEN_49; // @[r2sdf.scala 123:29:@4421.8]
  wire [17:0] s_dout_5_imag; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_50; // @[r2sdf.scala 120:29:@4417.6]
  wire [17:0] s_dout_5_real; // @[r2sdf.scala 102:21:@4293.4]
  wire [17:0] _GEN_51; // @[r2sdf.scala 120:29:@4417.6]
  wire  _GEN_52; // @[r2sdf.scala 120:29:@4417.6]
  wire [5:0] _GEN_53; // @[r2sdf.scala 120:29:@4417.6]
  wire  _GEN_54; // @[r2sdf.scala 117:20:@4411.4]
  wire [5:0] _GEN_55; // @[r2sdf.scala 117:20:@4411.4]
  wire [17:0] _GEN_56; // @[r2sdf.scala 117:20:@4411.4]
  wire [17:0] _GEN_57; // @[r2sdf.scala 117:20:@4411.4]
  wire  _T_286; // @[r2sdf.scala 132:31:@4430.4]
  wire  _T_288; // @[r2sdf.scala 132:31:@4447.4]
  wire [4:0] _T_289; // @[r2sdf.scala 140:74:@4457.4]
  wire  _T_290; // @[r2sdf.scala 132:31:@4464.4]
  wire [3:0] _T_291; // @[r2sdf.scala 140:74:@4474.4]
  wire  _T_292; // @[r2sdf.scala 132:31:@4481.4]
  wire [2:0] _T_293; // @[r2sdf.scala 140:74:@4491.4]
  wire  _T_294; // @[r2sdf.scala 132:31:@4498.4]
  wire [1:0] _T_295; // @[r2sdf.scala 140:74:@4508.4]
  wire  _T_296; // @[r2sdf.scala 132:31:@4515.4]
  wire  _T_297; // @[r2sdf.scala 145:39:@4522.4]
  wire  _T_300; // @[r2sdf.scala 145:51:@4524.4]
  wire [11:0] _GEN_58;
  wire [11:0] _GEN_59;
  BflyR22 BflyR22 ( // @[r2sdf.scala 131:20:@4427.4]
    .clock(BflyR22_clock),
    .io_din_real(BflyR22_io_din_real),
    .io_din_imag(BflyR22_io_din_imag),
    .io_dout_real(BflyR22_io_dout_real),
    .io_dout_imag(BflyR22_io_dout_imag),
    .io_sel(BflyR22_io_sel),
    .io_stall(BflyR22_io_stall)
  );
  R2SDF_TFMul R2SDF_TFMul ( // @[r2sdf.scala 138:25:@4435.4]
    .io_din_real(R2SDF_TFMul_io_din_real),
    .io_din_imag(R2SDF_TFMul_io_din_imag),
    .io_dout_real(R2SDF_TFMul_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_io_dout_imag),
    .io_addr(R2SDF_TFMul_io_addr)
  );
  BflyR22_1 BflyR22_1 ( // @[r2sdf.scala 131:20:@4444.4]
    .clock(BflyR22_1_clock),
    .io_din_real(BflyR22_1_io_din_real),
    .io_din_imag(BflyR22_1_io_din_imag),
    .io_dout_real(BflyR22_1_io_dout_real),
    .io_dout_imag(BflyR22_1_io_dout_imag),
    .io_sel(BflyR22_1_io_sel),
    .io_stall(BflyR22_1_io_stall)
  );
  R2SDF_TFMul_1 R2SDF_TFMul_1 ( // @[r2sdf.scala 138:25:@4452.4]
    .io_din_real(R2SDF_TFMul_1_io_din_real),
    .io_din_imag(R2SDF_TFMul_1_io_din_imag),
    .io_dout_real(R2SDF_TFMul_1_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_1_io_dout_imag),
    .io_addr(R2SDF_TFMul_1_io_addr)
  );
  BflyR22_2 BflyR22_2 ( // @[r2sdf.scala 131:20:@4461.4]
    .clock(BflyR22_2_clock),
    .io_din_real(BflyR22_2_io_din_real),
    .io_din_imag(BflyR22_2_io_din_imag),
    .io_dout_real(BflyR22_2_io_dout_real),
    .io_dout_imag(BflyR22_2_io_dout_imag),
    .io_sel(BflyR22_2_io_sel),
    .io_stall(BflyR22_2_io_stall)
  );
  R2SDF_TFMul_2 R2SDF_TFMul_2 ( // @[r2sdf.scala 138:25:@4469.4]
    .io_din_real(R2SDF_TFMul_2_io_din_real),
    .io_din_imag(R2SDF_TFMul_2_io_din_imag),
    .io_dout_real(R2SDF_TFMul_2_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_2_io_dout_imag),
    .io_addr(R2SDF_TFMul_2_io_addr)
  );
  BflyR22_3 BflyR22_3 ( // @[r2sdf.scala 131:20:@4478.4]
    .clock(BflyR22_3_clock),
    .io_din_real(BflyR22_3_io_din_real),
    .io_din_imag(BflyR22_3_io_din_imag),
    .io_dout_real(BflyR22_3_io_dout_real),
    .io_dout_imag(BflyR22_3_io_dout_imag),
    .io_sel(BflyR22_3_io_sel),
    .io_stall(BflyR22_3_io_stall)
  );
  R2SDF_TFMul_3 R2SDF_TFMul_3 ( // @[r2sdf.scala 138:25:@4486.4]
    .io_din_real(R2SDF_TFMul_3_io_din_real),
    .io_din_imag(R2SDF_TFMul_3_io_din_imag),
    .io_dout_real(R2SDF_TFMul_3_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_3_io_dout_imag),
    .io_addr(R2SDF_TFMul_3_io_addr)
  );
  BflyR22_4 BflyR22_4 ( // @[r2sdf.scala 131:20:@4495.4]
    .clock(BflyR22_4_clock),
    .io_din_real(BflyR22_4_io_din_real),
    .io_din_imag(BflyR22_4_io_din_imag),
    .io_dout_real(BflyR22_4_io_dout_real),
    .io_dout_imag(BflyR22_4_io_dout_imag),
    .io_sel(BflyR22_4_io_sel),
    .io_stall(BflyR22_4_io_stall)
  );
  R2SDF_TFMul_4 R2SDF_TFMul_4 ( // @[r2sdf.scala 138:25:@4503.4]
    .io_din_real(R2SDF_TFMul_4_io_din_real),
    .io_din_imag(R2SDF_TFMul_4_io_din_imag),
    .io_dout_real(R2SDF_TFMul_4_io_dout_real),
    .io_dout_imag(R2SDF_TFMul_4_io_dout_imag),
    .io_addr(R2SDF_TFMul_4_io_addr)
  );
  BflyR22_5 BflyR22_5 ( // @[r2sdf.scala 131:20:@4512.4]
    .clock(BflyR22_5_clock),
    .io_din_real(BflyR22_5_io_din_real),
    .io_din_imag(BflyR22_5_io_din_imag),
    .io_dout_real(BflyR22_5_io_dout_real),
    .io_dout_imag(BflyR22_5_io_dout_imag),
    .io_sel(BflyR22_5_io_sel),
    .io_stall(BflyR22_5_io_stall)
  );
  assign _T_227 = io_stall == 1'h0; // @[r2sdf.scala 106:40:@4311.4]
  assign _GEN_0 = _T_227 ? $signed(io_din_bits_imag) : $signed(din_reg_imag); // @[Reg.scala 12:19:@4313.4]
  assign _GEN_1 = _T_227 ? $signed(io_din_bits_real) : $signed(din_reg_real); // @[Reg.scala 12:19:@4313.4]
  assign _T_236 = en_regs_5 & _T_227; // @[r2sdf.scala 110:35:@4322.6]
  assign _T_238 = cycles == 9'h40; // @[r2sdf.scala 111:26:@4324.8]
  assign _T_240 = cycles + 9'h1; // @[r2sdf.scala 111:50:@4325.8]
  assign _T_241 = _T_240[8:0]; // @[r2sdf.scala 111:50:@4326.8]
  assign _T_242 = _T_238 ? cycles : _T_241; // @[r2sdf.scala 111:18:@4327.8]
  assign _GEN_2 = _T_236 ? _T_242 : cycles; // @[r2sdf.scala 110:48:@4323.6]
  assign _GEN_3 = io_init ? 9'h0 : _GEN_2; // @[r2sdf.scala 108:18:@4317.4]
  assign _T_249 = dcnt_0 + 6'h1; // @[r2sdf.scala 124:69:@4342.10]
  assign _T_250 = _T_249[5:0]; // @[r2sdf.scala 124:69:@4343.10]
  assign _GEN_4 = en_regs_0 ? _T_250 : dcnt_0; // @[r2sdf.scala 123:29:@4341.8]
  assign s_dout_0_imag = R2SDF_TFMul_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_5 = _T_227 ? $signed(s_dout_0_imag) : $signed(s_dout_reg_0_imag); // @[r2sdf.scala 120:29:@4337.6]
  assign s_dout_0_real = R2SDF_TFMul_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_6 = _T_227 ? $signed(s_dout_0_real) : $signed(s_dout_reg_0_real); // @[r2sdf.scala 120:29:@4337.6]
  assign _GEN_7 = _T_227 ? io_din_valid : en_regs_0; // @[r2sdf.scala 120:29:@4337.6]
  assign _GEN_8 = _T_227 ? _GEN_4 : dcnt_0; // @[r2sdf.scala 120:29:@4337.6]
  assign _GEN_9 = io_init ? 1'h0 : _GEN_7; // @[r2sdf.scala 117:20:@4331.4]
  assign _GEN_10 = io_init ? 6'h0 : _GEN_8; // @[r2sdf.scala 117:20:@4331.4]
  assign _GEN_11 = io_init ? $signed(s_dout_reg_0_imag) : $signed(_GEN_5); // @[r2sdf.scala 117:20:@4331.4]
  assign _GEN_12 = io_init ? $signed(s_dout_reg_0_real) : $signed(_GEN_6); // @[r2sdf.scala 117:20:@4331.4]
  assign _GEN_13 = en_regs_1 ? dcnt_0 : dcnt_1; // @[r2sdf.scala 123:29:@4357.8]
  assign s_dout_1_imag = R2SDF_TFMul_1_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_14 = _T_227 ? $signed(s_dout_1_imag) : $signed(s_dout_reg_1_imag); // @[r2sdf.scala 120:29:@4353.6]
  assign s_dout_1_real = R2SDF_TFMul_1_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_15 = _T_227 ? $signed(s_dout_1_real) : $signed(s_dout_reg_1_real); // @[r2sdf.scala 120:29:@4353.6]
  assign _GEN_16 = _T_227 ? en_regs_0 : en_regs_1; // @[r2sdf.scala 120:29:@4353.6]
  assign _GEN_17 = _T_227 ? _GEN_13 : dcnt_1; // @[r2sdf.scala 120:29:@4353.6]
  assign _GEN_18 = io_init ? 1'h0 : _GEN_16; // @[r2sdf.scala 117:20:@4347.4]
  assign _GEN_19 = io_init ? 6'h0 : _GEN_17; // @[r2sdf.scala 117:20:@4347.4]
  assign _GEN_20 = io_init ? $signed(s_dout_reg_1_imag) : $signed(_GEN_14); // @[r2sdf.scala 117:20:@4347.4]
  assign _GEN_21 = io_init ? $signed(s_dout_reg_1_real) : $signed(_GEN_15); // @[r2sdf.scala 117:20:@4347.4]
  assign _GEN_22 = en_regs_2 ? dcnt_1 : dcnt_2; // @[r2sdf.scala 123:29:@4373.8]
  assign s_dout_2_imag = R2SDF_TFMul_2_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_23 = _T_227 ? $signed(s_dout_2_imag) : $signed(s_dout_reg_2_imag); // @[r2sdf.scala 120:29:@4369.6]
  assign s_dout_2_real = R2SDF_TFMul_2_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_24 = _T_227 ? $signed(s_dout_2_real) : $signed(s_dout_reg_2_real); // @[r2sdf.scala 120:29:@4369.6]
  assign _GEN_25 = _T_227 ? en_regs_1 : en_regs_2; // @[r2sdf.scala 120:29:@4369.6]
  assign _GEN_26 = _T_227 ? _GEN_22 : dcnt_2; // @[r2sdf.scala 120:29:@4369.6]
  assign _GEN_27 = io_init ? 1'h0 : _GEN_25; // @[r2sdf.scala 117:20:@4363.4]
  assign _GEN_28 = io_init ? 6'h0 : _GEN_26; // @[r2sdf.scala 117:20:@4363.4]
  assign _GEN_29 = io_init ? $signed(s_dout_reg_2_imag) : $signed(_GEN_23); // @[r2sdf.scala 117:20:@4363.4]
  assign _GEN_30 = io_init ? $signed(s_dout_reg_2_real) : $signed(_GEN_24); // @[r2sdf.scala 117:20:@4363.4]
  assign _GEN_31 = en_regs_3 ? dcnt_2 : dcnt_3; // @[r2sdf.scala 123:29:@4389.8]
  assign s_dout_3_imag = R2SDF_TFMul_3_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_32 = _T_227 ? $signed(s_dout_3_imag) : $signed(s_dout_reg_3_imag); // @[r2sdf.scala 120:29:@4385.6]
  assign s_dout_3_real = R2SDF_TFMul_3_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_33 = _T_227 ? $signed(s_dout_3_real) : $signed(s_dout_reg_3_real); // @[r2sdf.scala 120:29:@4385.6]
  assign _GEN_34 = _T_227 ? en_regs_2 : en_regs_3; // @[r2sdf.scala 120:29:@4385.6]
  assign _GEN_35 = _T_227 ? _GEN_31 : dcnt_3; // @[r2sdf.scala 120:29:@4385.6]
  assign _GEN_36 = io_init ? 1'h0 : _GEN_34; // @[r2sdf.scala 117:20:@4379.4]
  assign _GEN_37 = io_init ? 6'h0 : _GEN_35; // @[r2sdf.scala 117:20:@4379.4]
  assign _GEN_38 = io_init ? $signed(s_dout_reg_3_imag) : $signed(_GEN_32); // @[r2sdf.scala 117:20:@4379.4]
  assign _GEN_39 = io_init ? $signed(s_dout_reg_3_real) : $signed(_GEN_33); // @[r2sdf.scala 117:20:@4379.4]
  assign _GEN_40 = en_regs_4 ? dcnt_3 : dcnt_4; // @[r2sdf.scala 123:29:@4405.8]
  assign s_dout_4_imag = R2SDF_TFMul_4_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_41 = _T_227 ? $signed(s_dout_4_imag) : $signed(s_dout_reg_4_imag); // @[r2sdf.scala 120:29:@4401.6]
  assign s_dout_4_real = R2SDF_TFMul_4_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_42 = _T_227 ? $signed(s_dout_4_real) : $signed(s_dout_reg_4_real); // @[r2sdf.scala 120:29:@4401.6]
  assign _GEN_43 = _T_227 ? en_regs_3 : en_regs_4; // @[r2sdf.scala 120:29:@4401.6]
  assign _GEN_44 = _T_227 ? _GEN_40 : dcnt_4; // @[r2sdf.scala 120:29:@4401.6]
  assign _GEN_45 = io_init ? 1'h0 : _GEN_43; // @[r2sdf.scala 117:20:@4395.4]
  assign _GEN_46 = io_init ? 6'h0 : _GEN_44; // @[r2sdf.scala 117:20:@4395.4]
  assign _GEN_47 = io_init ? $signed(s_dout_reg_4_imag) : $signed(_GEN_41); // @[r2sdf.scala 117:20:@4395.4]
  assign _GEN_48 = io_init ? $signed(s_dout_reg_4_real) : $signed(_GEN_42); // @[r2sdf.scala 117:20:@4395.4]
  assign _GEN_49 = en_regs_5 ? dcnt_4 : dcnt_5; // @[r2sdf.scala 123:29:@4421.8]
  assign s_dout_5_imag = BflyR22_5_io_dout_imag; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_50 = _T_227 ? $signed(s_dout_5_imag) : $signed(s_dout_reg_5_imag); // @[r2sdf.scala 120:29:@4417.6]
  assign s_dout_5_real = BflyR22_5_io_dout_real; // @[r2sdf.scala 102:21:@4293.4]
  assign _GEN_51 = _T_227 ? $signed(s_dout_5_real) : $signed(s_dout_reg_5_real); // @[r2sdf.scala 120:29:@4417.6]
  assign _GEN_52 = _T_227 ? en_regs_4 : en_regs_5; // @[r2sdf.scala 120:29:@4417.6]
  assign _GEN_53 = _T_227 ? _GEN_49 : dcnt_5; // @[r2sdf.scala 120:29:@4417.6]
  assign _GEN_54 = io_init ? 1'h0 : _GEN_52; // @[r2sdf.scala 117:20:@4411.4]
  assign _GEN_55 = io_init ? 6'h0 : _GEN_53; // @[r2sdf.scala 117:20:@4411.4]
  assign _GEN_56 = io_init ? $signed(s_dout_reg_5_imag) : $signed(_GEN_50); // @[r2sdf.scala 117:20:@4411.4]
  assign _GEN_57 = io_init ? $signed(s_dout_reg_5_real) : $signed(_GEN_51); // @[r2sdf.scala 117:20:@4411.4]
  assign _T_286 = dcnt_0[5]; // @[r2sdf.scala 132:31:@4430.4]
  assign _T_288 = dcnt_1[4]; // @[r2sdf.scala 132:31:@4447.4]
  assign _T_289 = dcnt_1[4:0]; // @[r2sdf.scala 140:74:@4457.4]
  assign _T_290 = dcnt_2[3]; // @[r2sdf.scala 132:31:@4464.4]
  assign _T_291 = dcnt_2[3:0]; // @[r2sdf.scala 140:74:@4474.4]
  assign _T_292 = dcnt_3[2]; // @[r2sdf.scala 132:31:@4481.4]
  assign _T_293 = dcnt_3[2:0]; // @[r2sdf.scala 140:74:@4491.4]
  assign _T_294 = dcnt_4[1]; // @[r2sdf.scala 132:31:@4498.4]
  assign _T_295 = dcnt_4[1:0]; // @[r2sdf.scala 140:74:@4508.4]
  assign _T_296 = dcnt_5[0]; // @[r2sdf.scala 132:31:@4515.4]
  assign _T_297 = en_regs_5 & _T_238; // @[r2sdf.scala 145:39:@4522.4]
  assign _T_300 = _T_297 & _T_227; // @[r2sdf.scala 145:51:@4524.4]
  assign io_dout_valid = _T_300;
  assign _GEN_58 = s_dout_reg_5_real[11:0];
  assign io_dout_bits_real = $signed(_GEN_58);
  assign _GEN_59 = s_dout_reg_5_imag[11:0];
  assign io_dout_bits_imag = $signed(_GEN_59);
  assign BflyR22_clock = clock;
  assign BflyR22_io_din_real = {{6{din_reg_real[11]}},din_reg_real};
  assign BflyR22_io_din_imag = {{6{din_reg_imag[11]}},din_reg_imag};
  assign BflyR22_io_sel = _T_286;
  assign BflyR22_io_stall = io_stall;
  assign R2SDF_TFMul_io_din_real = BflyR22_io_dout_real;
  assign R2SDF_TFMul_io_din_imag = BflyR22_io_dout_imag;
  assign R2SDF_TFMul_io_addr = dcnt_0;
  assign BflyR22_1_clock = clock;
  assign BflyR22_1_io_din_real = s_dout_reg_0_real;
  assign BflyR22_1_io_din_imag = s_dout_reg_0_imag;
  assign BflyR22_1_io_sel = _T_288;
  assign BflyR22_1_io_stall = io_stall;
  assign R2SDF_TFMul_1_io_din_real = BflyR22_1_io_dout_real;
  assign R2SDF_TFMul_1_io_din_imag = BflyR22_1_io_dout_imag;
  assign R2SDF_TFMul_1_io_addr = _T_289;
  assign BflyR22_2_clock = clock;
  assign BflyR22_2_io_din_real = s_dout_reg_1_real;
  assign BflyR22_2_io_din_imag = s_dout_reg_1_imag;
  assign BflyR22_2_io_sel = _T_290;
  assign BflyR22_2_io_stall = io_stall;
  assign R2SDF_TFMul_2_io_din_real = BflyR22_2_io_dout_real;
  assign R2SDF_TFMul_2_io_din_imag = BflyR22_2_io_dout_imag;
  assign R2SDF_TFMul_2_io_addr = _T_291;
  assign BflyR22_3_clock = clock;
  assign BflyR22_3_io_din_real = s_dout_reg_2_real;
  assign BflyR22_3_io_din_imag = s_dout_reg_2_imag;
  assign BflyR22_3_io_sel = _T_292;
  assign BflyR22_3_io_stall = io_stall;
  assign R2SDF_TFMul_3_io_din_real = BflyR22_3_io_dout_real;
  assign R2SDF_TFMul_3_io_din_imag = BflyR22_3_io_dout_imag;
  assign R2SDF_TFMul_3_io_addr = _T_293;
  assign BflyR22_4_clock = clock;
  assign BflyR22_4_io_din_real = s_dout_reg_3_real;
  assign BflyR22_4_io_din_imag = s_dout_reg_3_imag;
  assign BflyR22_4_io_sel = _T_294;
  assign BflyR22_4_io_stall = io_stall;
  assign R2SDF_TFMul_4_io_din_real = BflyR22_4_io_dout_real;
  assign R2SDF_TFMul_4_io_din_imag = BflyR22_4_io_dout_imag;
  assign R2SDF_TFMul_4_io_addr = _T_295;
  assign BflyR22_5_clock = clock;
  assign BflyR22_5_io_din_real = s_dout_reg_4_real;
  assign BflyR22_5_io_din_imag = s_dout_reg_4_imag;
  assign BflyR22_5_io_sel = _T_296;
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
        dcnt_0 <= 6'h0;
      end else begin
        if (_T_227) begin
          if (en_regs_0) begin
            dcnt_0 <= _T_250;
          end
        end
      end
    end
    if (reset) begin
      dcnt_1 <= 6'h0;
    end else begin
      if (io_init) begin
        dcnt_1 <= 6'h0;
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
        dcnt_2 <= 6'h0;
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
        dcnt_3 <= 6'h0;
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
        dcnt_4 <= 6'h0;
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
        dcnt_5 <= 6'h0;
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
module RxModule( // @[:@4529.2]
  input         clock, // @[:@4530.4]
  input         reset, // @[:@4531.4]
  output        io_cmd_ready, // @[:@4532.4]
  input         io_cmd_valid, // @[:@4532.4]
  input  [7:0]  io_cmd_bits_length, // @[:@4532.4]
  input  [1:0]  io_cmd_bits_mode, // @[:@4532.4]
  input  [6:0]  io_cmd_bits_seed, // @[:@4532.4]
  input         io_start, // @[:@4532.4]
  input  [11:0] io_din_real, // @[:@4532.4]
  input  [11:0] io_din_imag, // @[:@4532.4]
  output        io_dout_valid, // @[:@4532.4]
  output [23:0] io_dout_bits, // @[:@4532.4]
  output        io_coeff_dout_valid, // @[:@4532.4]
  output [11:0] io_coeff_dout_bits_real, // @[:@4532.4]
  output [11:0] io_coeff_dout_bits_imag // @[:@4532.4]
);
  wire  ctrl_clock; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_reset; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_cmd_ready; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_cmd_valid; // @[rx.scala 195:27:@4534.4]
  wire [7:0] ctrl_io_cmd_bits_length; // @[rx.scala 195:27:@4534.4]
  wire [1:0] ctrl_io_cmd_bits_mode; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_start; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_dec_busy; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_fft_enable; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_fft_init; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_fft_stall; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_dec_last; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_rx_init; // @[rx.scala 195:27:@4534.4]
  wire [1:0] ctrl_io_mode; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_ctf_wr; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_demap_en; // @[rx.scala 195:27:@4534.4]
  wire  ctrl_io_fft_dout_v; // @[rx.scala 195:27:@4534.4]
  wire  demapper_clock; // @[rx.scala 196:27:@4537.4]
  wire  demapper_reset; // @[rx.scala 196:27:@4537.4]
  wire [1:0] demapper_io_mode; // @[rx.scala 196:27:@4537.4]
  wire  demapper_io_din_valid; // @[rx.scala 196:27:@4537.4]
  wire [11:0] demapper_io_din_bits_real; // @[rx.scala 196:27:@4537.4]
  wire  demapper_io_dout_valid; // @[rx.scala 196:27:@4537.4]
  wire [2:0] demapper_io_dout_bits_0; // @[rx.scala 196:27:@4537.4]
  wire  deint_clock; // @[rx.scala 197:27:@4540.4]
  wire  deint_reset; // @[rx.scala 197:27:@4540.4]
  wire  deint_io_din_valid; // @[rx.scala 197:27:@4540.4]
  wire [2:0] deint_io_din_bits_0; // @[rx.scala 197:27:@4540.4]
  wire  deint_io_dout_valid; // @[rx.scala 197:27:@4540.4]
  wire [2:0] deint_io_dout_bits_0; // @[rx.scala 197:27:@4540.4]
  wire [2:0] deint_io_dout_bits_1; // @[rx.scala 197:27:@4540.4]
  wire  decoder_clock; // @[rx.scala 198:27:@4543.4]
  wire  decoder_reset; // @[rx.scala 198:27:@4543.4]
  wire  decoder_io_init; // @[rx.scala 198:27:@4543.4]
  wire  decoder_io_last; // @[rx.scala 198:27:@4543.4]
  wire  decoder_io_busy; // @[rx.scala 198:27:@4543.4]
  wire  decoder_io_din_valid; // @[rx.scala 198:27:@4543.4]
  wire [2:0] decoder_io_din_bits_0; // @[rx.scala 198:27:@4543.4]
  wire [2:0] decoder_io_din_bits_1; // @[rx.scala 198:27:@4543.4]
  wire  decoder_io_dout_valid; // @[rx.scala 198:27:@4543.4]
  wire [23:0] decoder_io_dout_bits; // @[rx.scala 198:27:@4543.4]
  wire  descram_clock; // @[rx.scala 199:27:@4546.4]
  wire  descram_reset; // @[rx.scala 199:27:@4546.4]
  wire  descram_io_init; // @[rx.scala 199:27:@4546.4]
  wire [6:0] descram_io_seed; // @[rx.scala 199:27:@4546.4]
  wire  descram_io_din_valid; // @[rx.scala 199:27:@4546.4]
  wire [23:0] descram_io_din_bits; // @[rx.scala 199:27:@4546.4]
  wire  descram_io_dout_valid; // @[rx.scala 199:27:@4546.4]
  wire [23:0] descram_io_dout_bits; // @[rx.scala 199:27:@4546.4]
  wire  fft_clock; // @[rx.scala 200:27:@4549.4]
  wire  fft_reset; // @[rx.scala 200:27:@4549.4]
  wire  fft_io_din_valid; // @[rx.scala 200:27:@4549.4]
  wire [11:0] fft_io_din_bits_real; // @[rx.scala 200:27:@4549.4]
  wire [11:0] fft_io_din_bits_imag; // @[rx.scala 200:27:@4549.4]
  wire  fft_io_dout_valid; // @[rx.scala 200:27:@4549.4]
  wire [11:0] fft_io_dout_bits_real; // @[rx.scala 200:27:@4549.4]
  wire [11:0] fft_io_dout_bits_imag; // @[rx.scala 200:27:@4549.4]
  wire  fft_io_init; // @[rx.scala 200:27:@4549.4]
  wire  fft_io_stall; // @[rx.scala 200:27:@4549.4]
  wire  _T_29; // @[rx.scala 208:45:@4564.4]
  wire  _T_30; // @[rx.scala 217:46:@4574.4]
  wire  _T_31; // @[Decoupled.scala 30:37:@4588.4]
  wire [23:0] _T_32; // @[rx.scala 233:83:@4593.4]
  wire [23:0] dout_bits; // @[rx.scala 233:22:@4594.4]
  RxControl ctrl ( // @[rx.scala 195:27:@4534.4]
    .clock(ctrl_clock),
    .reset(ctrl_reset),
    .io_cmd_ready(ctrl_io_cmd_ready),
    .io_cmd_valid(ctrl_io_cmd_valid),
    .io_cmd_bits_length(ctrl_io_cmd_bits_length),
    .io_cmd_bits_mode(ctrl_io_cmd_bits_mode),
    .io_start(ctrl_io_start),
    .io_dec_busy(ctrl_io_dec_busy),
    .io_fft_enable(ctrl_io_fft_enable),
    .io_fft_init(ctrl_io_fft_init),
    .io_fft_stall(ctrl_io_fft_stall),
    .io_dec_last(ctrl_io_dec_last),
    .io_rx_init(ctrl_io_rx_init),
    .io_mode(ctrl_io_mode),
    .io_ctf_wr(ctrl_io_ctf_wr),
    .io_demap_en(ctrl_io_demap_en),
    .io_fft_dout_v(ctrl_io_fft_dout_v)
  );
  Demapper demapper ( // @[rx.scala 196:27:@4537.4]
    .clock(demapper_clock),
    .reset(demapper_reset),
    .io_mode(demapper_io_mode),
    .io_din_valid(demapper_io_din_valid),
    .io_din_bits_real(demapper_io_din_bits_real),
    .io_dout_valid(demapper_io_dout_valid),
    .io_dout_bits_0(demapper_io_dout_bits_0)
  );
  Deinterleaver deint ( // @[rx.scala 197:27:@4540.4]
    .clock(deint_clock),
    .reset(deint_reset),
    .io_din_valid(deint_io_din_valid),
    .io_din_bits_0(deint_io_din_bits_0),
    .io_dout_valid(deint_io_dout_valid),
    .io_dout_bits_0(deint_io_dout_bits_0),
    .io_dout_bits_1(deint_io_dout_bits_1)
  );
  ViterbiDecoder decoder ( // @[rx.scala 198:27:@4543.4]
    .clock(decoder_clock),
    .reset(decoder_reset),
    .io_init(decoder_io_init),
    .io_last(decoder_io_last),
    .io_busy(decoder_io_busy),
    .io_din_valid(decoder_io_din_valid),
    .io_din_bits_0(decoder_io_din_bits_0),
    .io_din_bits_1(decoder_io_din_bits_1),
    .io_dout_valid(decoder_io_dout_valid),
    .io_dout_bits(decoder_io_dout_bits)
  );
  Scrambler descram ( // @[rx.scala 199:27:@4546.4]
    .clock(descram_clock),
    .reset(descram_reset),
    .io_init(descram_io_init),
    .io_seed(descram_io_seed),
    .io_din_valid(descram_io_din_valid),
    .io_din_bits(descram_io_din_bits),
    .io_dout_valid(descram_io_dout_valid),
    .io_dout_bits(descram_io_dout_bits)
  );
  FFT_R2SDF fft ( // @[rx.scala 200:27:@4549.4]
    .clock(fft_clock),
    .reset(fft_reset),
    .io_din_valid(fft_io_din_valid),
    .io_din_bits_real(fft_io_din_bits_real),
    .io_din_bits_imag(fft_io_din_bits_imag),
    .io_dout_valid(fft_io_dout_valid),
    .io_dout_bits_real(fft_io_dout_bits_real),
    .io_dout_bits_imag(fft_io_dout_bits_imag),
    .io_init(fft_io_init),
    .io_stall(fft_io_stall)
  );
  assign _T_29 = fft_io_dout_valid & ctrl_io_ctf_wr; // @[rx.scala 208:45:@4564.4]
  assign _T_30 = fft_io_dout_valid & ctrl_io_demap_en; // @[rx.scala 217:46:@4574.4]
  assign _T_31 = io_cmd_ready & io_cmd_valid; // @[Decoupled.scala 30:37:@4588.4]
  assign _T_32 = descram_io_dout_bits & 24'hffffc0; // @[rx.scala 233:83:@4593.4]
  assign dout_bits = decoder_io_busy ? descram_io_dout_bits : _T_32; // @[rx.scala 233:22:@4594.4]
  assign io_cmd_ready = ctrl_io_cmd_ready;
  assign io_dout_valid = descram_io_dout_valid;
  assign io_dout_bits = dout_bits;
  assign io_coeff_dout_valid = _T_29;
  assign io_coeff_dout_bits_real = fft_io_dout_bits_real;
  assign io_coeff_dout_bits_imag = fft_io_dout_bits_imag;
  assign ctrl_clock = clock;
  assign ctrl_reset = reset;
  assign ctrl_io_cmd_valid = io_cmd_valid;
  assign ctrl_io_cmd_bits_length = io_cmd_bits_length;
  assign ctrl_io_cmd_bits_mode = io_cmd_bits_mode;
  assign ctrl_io_start = io_start;
  assign ctrl_io_dec_busy = decoder_io_busy;
  assign ctrl_io_fft_dout_v = fft_io_dout_valid;
  assign demapper_clock = clock;
  assign demapper_reset = reset;
  assign demapper_io_mode = ctrl_io_mode;
  assign demapper_io_din_valid = _T_30;
  assign demapper_io_din_bits_real = fft_io_dout_bits_real;
  assign deint_clock = clock;
  assign deint_reset = reset;
  assign deint_io_din_valid = demapper_io_dout_valid;
  assign deint_io_din_bits_0 = demapper_io_dout_bits_0;
  assign decoder_clock = clock;
  assign decoder_reset = reset;
  assign decoder_io_init = ctrl_io_rx_init;
  assign decoder_io_last = ctrl_io_dec_last;
  assign decoder_io_din_valid = deint_io_dout_valid;
  assign decoder_io_din_bits_0 = deint_io_dout_bits_0;
  assign decoder_io_din_bits_1 = deint_io_dout_bits_1;
  assign descram_clock = clock;
  assign descram_reset = reset;
  assign descram_io_init = _T_31;
  assign descram_io_seed = io_cmd_bits_seed;
  assign descram_io_din_valid = decoder_io_dout_valid;
  assign descram_io_din_bits = decoder_io_dout_bits;
  assign fft_clock = clock;
  assign fft_reset = reset;
  assign fft_io_din_valid = ctrl_io_fft_enable;
  assign fft_io_din_bits_real = io_din_real;
  assign fft_io_din_bits_imag = io_din_imag;
  assign fft_io_init = ctrl_io_fft_init;
  assign fft_io_stall = ctrl_io_fft_stall;
endmodule
module FpgaRxWrapper( // @[:@4598.2]
  input         clock, // @[:@4599.4]
  input         reset, // @[:@4600.4]
  output        io_cmd_ready, // @[:@4601.4]
  input         io_cmd_valid, // @[:@4601.4]
  input  [7:0]  io_cmd_bits_length, // @[:@4601.4]
  input  [1:0]  io_cmd_bits_mode, // @[:@4601.4]
  input  [6:0]  io_cmd_bits_seed, // @[:@4601.4]
  input  [6:0]  io_cmd_bits_repeat, // @[:@4601.4]
  input  [7:0]  io_cmd_bits_pause, // @[:@4601.4]
  input         io_start, // @[:@4601.4]
  input  [11:0] io_din_real, // @[:@4601.4]
  input  [11:0] io_din_imag, // @[:@4601.4]
  output        io_dout_valid, // @[:@4601.4]
  output [23:0] io_dout_bits, // @[:@4601.4]
  output        io_coeff_dout_valid, // @[:@4601.4]
  output [11:0] io_coeff_dout_bits_real, // @[:@4601.4]
  output [11:0] io_coeff_dout_bits_imag, // @[:@4601.4]
  output [15:0] io_rx_cyclecnt, // @[:@4601.4]
  output [3:0]  io_adc_raddr // @[:@4601.4]
);
  wire  rx_clock; // @[rx.scala 320:21:@4603.4]
  wire  rx_reset; // @[rx.scala 320:21:@4603.4]
  wire  rx_io_cmd_ready; // @[rx.scala 320:21:@4603.4]
  wire  rx_io_cmd_valid; // @[rx.scala 320:21:@4603.4]
  wire [7:0] rx_io_cmd_bits_length; // @[rx.scala 320:21:@4603.4]
  wire [1:0] rx_io_cmd_bits_mode; // @[rx.scala 320:21:@4603.4]
  wire [6:0] rx_io_cmd_bits_seed; // @[rx.scala 320:21:@4603.4]
  wire  rx_io_start; // @[rx.scala 320:21:@4603.4]
  wire [11:0] rx_io_din_real; // @[rx.scala 320:21:@4603.4]
  wire [11:0] rx_io_din_imag; // @[rx.scala 320:21:@4603.4]
  wire  rx_io_dout_valid; // @[rx.scala 320:21:@4603.4]
  wire [23:0] rx_io_dout_bits; // @[rx.scala 320:21:@4603.4]
  wire  rx_io_coeff_dout_valid; // @[rx.scala 320:21:@4603.4]
  wire [11:0] rx_io_coeff_dout_bits_real; // @[rx.scala 320:21:@4603.4]
  wire [11:0] rx_io_coeff_dout_bits_imag; // @[rx.scala 320:21:@4603.4]
  reg [15:0] rx_cyclecnt; // @[rx.scala 322:28:@4606.4]
  reg [31:0] _RAND_0;
  reg [3:0] value; // @[Counter.scala 26:33:@4631.4]
  reg [31:0] _RAND_1;
  wire [16:0] _T_34; // @[rx.scala 327:32:@4611.6]
  wire [15:0] _T_35; // @[rx.scala 327:32:@4612.6]
  wire [15:0] _GEN_0; // @[rx.scala 324:19:@4607.4]
  wire [4:0] _T_42; // @[Counter.scala 35:22:@4634.6]
  wire [3:0] _T_43; // @[Counter.scala 35:22:@4635.6]
  RxModule rx ( // @[rx.scala 320:21:@4603.4]
    .clock(rx_clock),
    .reset(rx_reset),
    .io_cmd_ready(rx_io_cmd_ready),
    .io_cmd_valid(rx_io_cmd_valid),
    .io_cmd_bits_length(rx_io_cmd_bits_length),
    .io_cmd_bits_mode(rx_io_cmd_bits_mode),
    .io_cmd_bits_seed(rx_io_cmd_bits_seed),
    .io_start(rx_io_start),
    .io_din_real(rx_io_din_real),
    .io_din_imag(rx_io_din_imag),
    .io_dout_valid(rx_io_dout_valid),
    .io_dout_bits(rx_io_dout_bits),
    .io_coeff_dout_valid(rx_io_coeff_dout_valid),
    .io_coeff_dout_bits_real(rx_io_coeff_dout_bits_real),
    .io_coeff_dout_bits_imag(rx_io_coeff_dout_bits_imag)
  );
  assign _T_34 = rx_cyclecnt + 16'h1; // @[rx.scala 327:32:@4611.6]
  assign _T_35 = _T_34[15:0]; // @[rx.scala 327:32:@4612.6]
  assign _GEN_0 = io_start ? 16'h0 : _T_35; // @[rx.scala 324:19:@4607.4]
  assign _T_42 = value + 4'h1; // @[Counter.scala 35:22:@4634.6]
  assign _T_43 = _T_42[3:0]; // @[Counter.scala 35:22:@4635.6]
  assign io_cmd_ready = rx_io_cmd_ready;
  assign io_dout_valid = rx_io_dout_valid;
  assign io_dout_bits = rx_io_dout_bits;
  assign io_coeff_dout_valid = rx_io_coeff_dout_valid;
  assign io_coeff_dout_bits_real = rx_io_coeff_dout_bits_real;
  assign io_coeff_dout_bits_imag = rx_io_coeff_dout_bits_imag;
  assign io_rx_cyclecnt = rx_cyclecnt;
  assign io_adc_raddr = value;
  assign rx_clock = clock;
  assign rx_reset = reset;
  assign rx_io_cmd_valid = io_cmd_valid;
  assign rx_io_cmd_bits_length = io_cmd_bits_length;
  assign rx_io_cmd_bits_mode = io_cmd_bits_mode;
  assign rx_io_cmd_bits_seed = io_cmd_bits_seed;
  assign rx_io_start = io_start;
  assign rx_io_din_real = io_din_real;
  assign rx_io_din_imag = io_din_imag;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  rx_cyclecnt = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  value = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      rx_cyclecnt <= 16'h0;
    end else begin
      if (io_start) begin
        rx_cyclecnt <= 16'h0;
      end else begin
        rx_cyclecnt <= _T_35;
      end
    end
    if (reset) begin
      value <= 4'h0;
    end else begin
      value <= _T_43;
    end
  end
endmodule
