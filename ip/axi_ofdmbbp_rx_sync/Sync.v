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

module ShiftRegisterMem( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_depth_valid, // @[:@6.4]
  input  [7:0]  io_depth_bits, // @[:@6.4]
  input         io_in_valid, // @[:@6.4]
  input  [11:0] io_in_bits_real, // @[:@6.4]
  input  [11:0] io_in_bits_imag, // @[:@6.4]
  output        io_out_valid, // @[:@6.4]
  output [11:0] io_out_bits_real, // @[:@6.4]
  output [11:0] io_out_bits_imag // @[:@6.4]
);
  reg [11:0] mem_real [0:127]; // @[ShiftRegisterMem.scala 17:31:@8.4]
  reg [31:0] _RAND_0;
  wire [11:0] mem_real__T_80_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [6:0] mem_real__T_80_addr; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [11:0] mem_real__T_77_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [6:0] mem_real__T_77_addr; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire  mem_real__T_77_mask; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire  mem_real__T_77_en; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire  _GEN_6;
  reg [6:0] mem_real__T_80_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [11:0] mem_imag [0:127]; // @[ShiftRegisterMem.scala 17:31:@8.4]
  reg [31:0] _RAND_2;
  wire [11:0] mem_imag__T_80_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [6:0] mem_imag__T_80_addr; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [11:0] mem_imag__T_77_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire [6:0] mem_imag__T_77_addr; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire  mem_imag__T_77_mask; // @[ShiftRegisterMem.scala 17:31:@8.4]
  wire  mem_imag__T_77_en; // @[ShiftRegisterMem.scala 17:31:@8.4]
  reg [6:0] mem_imag__T_80_addr_pipe_0;
  reg [31:0] _RAND_3;
  reg [6:0] readIdxReg; // @[ShiftRegisterMem.scala 19:27:@13.4]
  reg [31:0] _RAND_4;
  reg [6:0] writeIdx; // @[ShiftRegisterMem.scala 20:27:@14.4]
  reg [31:0] _RAND_5;
  reg  _T_83; // @[ShiftRegisterMem.scala 42:26:@54.4]
  reg [31:0] _RAND_6;
  wire [7:0] _T_46; // @[ShiftRegisterMem.scala 19:54:@10.4]
  wire [7:0] _T_47; // @[ShiftRegisterMem.scala 19:54:@11.4]
  wire [6:0] _T_48; // @[ShiftRegisterMem.scala 19:54:@12.4]
  wire [7:0] _GEN_18; // @[ShiftRegisterMem.scala 23:25:@16.6]
  wire [8:0] _T_52; // @[ShiftRegisterMem.scala 23:25:@16.6]
  wire [8:0] _T_53; // @[ShiftRegisterMem.scala 23:25:@17.6]
  wire [7:0] _T_54; // @[ShiftRegisterMem.scala 23:25:@18.6]
  wire [7:0] _GEN_2; // @[ShiftRegisterMem.scala 22:25:@15.4]
  wire [6:0] readIdx; // @[ShiftRegisterMem.scala 18:24:@9.4]
  wire  _T_62; // @[ShiftRegisterMem.scala 34:31:@34.6]
  wire [7:0] _T_64; // @[ShiftRegisterMem.scala 34:59:@35.6]
  wire [6:0] _T_65; // @[ShiftRegisterMem.scala 34:59:@36.6]
  wire [6:0] _T_67; // @[ShiftRegisterMem.scala 34:22:@37.6]
  wire  _T_69; // @[ShiftRegisterMem.scala 35:30:@39.6]
  wire [7:0] _T_71; // @[ShiftRegisterMem.scala 35:59:@40.6]
  wire [6:0] _T_72; // @[ShiftRegisterMem.scala 35:59:@41.6]
  wire [6:0] _T_74; // @[ShiftRegisterMem.scala 35:20:@42.6]
  wire [6:0] _GEN_4; // @[ShiftRegisterMem.scala 33:22:@33.4]
  wire [6:0] _GEN_5; // @[ShiftRegisterMem.scala 33:22:@33.4]
  assign mem_real__T_80_addr = mem_real__T_80_addr_pipe_0;
  assign mem_real__T_80_data = mem_real[mem_real__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@8.4]
  assign mem_real__T_77_data = io_in_bits_real;
  assign mem_real__T_77_addr = writeIdx;
  assign mem_real__T_77_mask = 1'h1;
  assign mem_real__T_77_en = 1'h1;
  assign _GEN_6 = 1'h1;
  assign mem_imag__T_80_addr = mem_imag__T_80_addr_pipe_0;
  assign mem_imag__T_80_data = mem_imag[mem_imag__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@8.4]
  assign mem_imag__T_77_data = io_in_bits_imag;
  assign mem_imag__T_77_addr = writeIdx;
  assign mem_imag__T_77_mask = 1'h1;
  assign mem_imag__T_77_en = 1'h1;
  assign _T_46 = 7'h0 - 7'h7f; // @[ShiftRegisterMem.scala 19:54:@10.4]
  assign _T_47 = $unsigned(_T_46); // @[ShiftRegisterMem.scala 19:54:@11.4]
  assign _T_48 = _T_47[6:0]; // @[ShiftRegisterMem.scala 19:54:@12.4]
  assign _GEN_18 = {{1'd0}, writeIdx}; // @[ShiftRegisterMem.scala 23:25:@16.6]
  assign _T_52 = _GEN_18 - io_depth_bits; // @[ShiftRegisterMem.scala 23:25:@16.6]
  assign _T_53 = $unsigned(_T_52); // @[ShiftRegisterMem.scala 23:25:@17.6]
  assign _T_54 = _T_53[7:0]; // @[ShiftRegisterMem.scala 23:25:@18.6]
  assign _GEN_2 = io_depth_valid ? _T_54 : {{1'd0}, readIdxReg}; // @[ShiftRegisterMem.scala 22:25:@15.4]
  assign readIdx = _GEN_2[6:0]; // @[ShiftRegisterMem.scala 18:24:@9.4]
  assign _T_62 = readIdx < 7'h7f; // @[ShiftRegisterMem.scala 34:31:@34.6]
  assign _T_64 = readIdx + 7'h1; // @[ShiftRegisterMem.scala 34:59:@35.6]
  assign _T_65 = _T_64[6:0]; // @[ShiftRegisterMem.scala 34:59:@36.6]
  assign _T_67 = _T_62 ? _T_65 : 7'h0; // @[ShiftRegisterMem.scala 34:22:@37.6]
  assign _T_69 = writeIdx < 7'h7f; // @[ShiftRegisterMem.scala 35:30:@39.6]
  assign _T_71 = writeIdx + 7'h1; // @[ShiftRegisterMem.scala 35:59:@40.6]
  assign _T_72 = _T_71[6:0]; // @[ShiftRegisterMem.scala 35:59:@41.6]
  assign _T_74 = _T_69 ? _T_72 : 7'h0; // @[ShiftRegisterMem.scala 35:20:@42.6]
  assign _GEN_4 = io_in_valid ? _T_67 : readIdx; // @[ShiftRegisterMem.scala 33:22:@33.4]
  assign _GEN_5 = io_in_valid ? _T_74 : writeIdx; // @[ShiftRegisterMem.scala 33:22:@33.4]
  assign io_out_valid = _T_83;
  assign io_out_bits_real = mem_real__T_80_data;
  assign io_out_bits_imag = mem_imag__T_80_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    mem_real[initvar] = _RAND_0[11:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mem_real__T_80_addr_pipe_0 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    mem_imag[initvar] = _RAND_2[11:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  mem_imag__T_80_addr_pipe_0 = _RAND_3[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  readIdxReg = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  writeIdx = _RAND_5[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_83 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem_real__T_77_en & mem_real__T_77_mask) begin
      mem_real[mem_real__T_77_addr] <= mem_real__T_77_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
    end
    if (_GEN_6) begin
      mem_real__T_80_addr_pipe_0 <= readIdx;
    end
    if(mem_imag__T_77_en & mem_imag__T_77_mask) begin
      mem_imag[mem_imag__T_77_addr] <= mem_imag__T_77_data; // @[ShiftRegisterMem.scala 17:31:@8.4]
    end
    if (_GEN_6) begin
      mem_imag__T_80_addr_pipe_0 <= readIdx;
    end
    if (reset) begin
      readIdxReg <= _T_48;
    end else begin
      if (io_in_valid) begin
        if (_T_62) begin
          readIdxReg <= _T_65;
        end else begin
          readIdxReg <= 7'h0;
        end
      end else begin
        readIdxReg <= readIdx;
      end
    end
    if (reset) begin
      writeIdx <= 7'h0;
    end else begin
      if (io_in_valid) begin
        if (_T_69) begin
          writeIdx <= _T_72;
        end else begin
          writeIdx <= 7'h0;
        end
      end
    end
    if (reset) begin
      _T_83 <= 1'h0;
    end else begin
      _T_83 <= io_in_valid;
    end
  end
endmodule
module OverlapSum( // @[:@58.2]
  input         clock, // @[:@59.4]
  input         reset, // @[:@60.4]
  input         io_depth_valid, // @[:@61.4]
  input  [7:0]  io_depth_bits, // @[:@61.4]
  input         io_in_valid, // @[:@61.4]
  input  [11:0] io_in_bits_real, // @[:@61.4]
  input  [11:0] io_in_bits_imag, // @[:@61.4]
  output [11:0] io_out_bits_real, // @[:@61.4]
  output [11:0] io_out_bits_imag // @[:@61.4]
);
  reg [7:0] depth; // @[OverlapSum.scala 35:22:@63.4]
  reg [31:0] _RAND_0;
  reg [11:0] shr_0_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_1;
  reg [11:0] shr_0_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_2;
  reg [11:0] shr_1_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_3;
  reg [11:0] shr_1_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_4;
  reg [11:0] shr_2_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_5;
  reg [11:0] shr_2_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_6;
  reg [11:0] shr_3_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_7;
  reg [11:0] shr_3_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_8;
  reg [11:0] shr_4_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_9;
  reg [11:0] shr_4_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_10;
  reg [11:0] shr_5_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_11;
  reg [11:0] shr_5_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_12;
  reg [11:0] shr_6_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_13;
  reg [11:0] shr_6_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_14;
  reg [11:0] shr_7_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_15;
  reg [11:0] shr_7_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_16;
  reg [11:0] shr_8_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_17;
  reg [11:0] shr_8_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_18;
  reg [11:0] shr_9_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_19;
  reg [11:0] shr_9_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_20;
  reg [11:0] shr_10_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_21;
  reg [11:0] shr_10_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_22;
  reg [11:0] shr_11_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_23;
  reg [11:0] shr_11_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_24;
  reg [11:0] shr_12_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_25;
  reg [11:0] shr_12_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_26;
  reg [11:0] shr_13_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_27;
  reg [11:0] shr_13_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_28;
  reg [11:0] shr_14_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_29;
  reg [11:0] shr_14_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_30;
  reg [11:0] shr_15_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_31;
  reg [11:0] shr_15_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_32;
  reg [11:0] shr_16_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_33;
  reg [11:0] shr_16_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_34;
  reg [11:0] shr_17_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_35;
  reg [11:0] shr_17_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_36;
  reg [11:0] shr_18_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_37;
  reg [11:0] shr_18_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_38;
  reg [11:0] shr_19_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_39;
  reg [11:0] shr_19_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_40;
  reg [11:0] shr_20_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_41;
  reg [11:0] shr_20_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_42;
  reg [11:0] shr_21_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_43;
  reg [11:0] shr_21_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_44;
  reg [11:0] shr_22_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_45;
  reg [11:0] shr_22_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_46;
  reg [11:0] shr_23_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_47;
  reg [11:0] shr_23_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_48;
  reg [11:0] shr_24_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_49;
  reg [11:0] shr_24_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_50;
  reg [11:0] shr_25_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_51;
  reg [11:0] shr_25_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_52;
  reg [11:0] shr_26_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_53;
  reg [11:0] shr_26_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_54;
  reg [11:0] shr_27_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_55;
  reg [11:0] shr_27_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_56;
  reg [11:0] shr_28_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_57;
  reg [11:0] shr_28_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_58;
  reg [11:0] shr_29_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_59;
  reg [11:0] shr_29_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_60;
  reg [11:0] shr_30_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_61;
  reg [11:0] shr_30_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_62;
  reg [11:0] shr_31_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_63;
  reg [11:0] shr_31_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_64;
  reg [11:0] shr_32_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_65;
  reg [11:0] shr_32_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_66;
  reg [11:0] shr_33_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_67;
  reg [11:0] shr_33_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_68;
  reg [11:0] shr_34_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_69;
  reg [11:0] shr_34_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_70;
  reg [11:0] shr_35_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_71;
  reg [11:0] shr_35_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_72;
  reg [11:0] shr_36_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_73;
  reg [11:0] shr_36_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_74;
  reg [11:0] shr_37_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_75;
  reg [11:0] shr_37_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_76;
  reg [11:0] shr_38_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_77;
  reg [11:0] shr_38_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_78;
  reg [11:0] shr_39_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_79;
  reg [11:0] shr_39_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_80;
  reg [11:0] shr_40_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_81;
  reg [11:0] shr_40_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_82;
  reg [11:0] shr_41_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_83;
  reg [11:0] shr_41_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_84;
  reg [11:0] shr_42_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_85;
  reg [11:0] shr_42_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_86;
  reg [11:0] shr_43_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_87;
  reg [11:0] shr_43_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_88;
  reg [11:0] shr_44_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_89;
  reg [11:0] shr_44_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_90;
  reg [11:0] shr_45_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_91;
  reg [11:0] shr_45_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_92;
  reg [11:0] shr_46_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_93;
  reg [11:0] shr_46_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_94;
  reg [11:0] shr_47_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_95;
  reg [11:0] shr_47_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_96;
  reg [11:0] shr_48_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_97;
  reg [11:0] shr_48_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_98;
  reg [11:0] shr_49_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_99;
  reg [11:0] shr_49_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_100;
  reg [11:0] shr_50_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_101;
  reg [11:0] shr_50_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_102;
  reg [11:0] shr_51_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_103;
  reg [11:0] shr_51_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_104;
  reg [11:0] shr_52_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_105;
  reg [11:0] shr_52_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_106;
  reg [11:0] shr_53_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_107;
  reg [11:0] shr_53_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_108;
  reg [11:0] shr_54_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_109;
  reg [11:0] shr_54_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_110;
  reg [11:0] shr_55_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_111;
  reg [11:0] shr_55_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_112;
  reg [11:0] shr_56_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_113;
  reg [11:0] shr_56_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_114;
  reg [11:0] shr_57_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_115;
  reg [11:0] shr_57_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_116;
  reg [11:0] shr_58_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_117;
  reg [11:0] shr_58_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_118;
  reg [11:0] shr_59_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_119;
  reg [11:0] shr_59_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_120;
  reg [11:0] shr_60_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_121;
  reg [11:0] shr_60_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_122;
  reg [11:0] shr_61_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_123;
  reg [11:0] shr_61_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_124;
  reg [11:0] shr_62_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_125;
  reg [11:0] shr_62_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_126;
  reg [11:0] shr_63_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_127;
  reg [11:0] shr_63_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_128;
  reg [11:0] shr_64_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_129;
  reg [11:0] shr_64_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_130;
  reg [11:0] shr_65_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_131;
  reg [11:0] shr_65_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_132;
  reg [11:0] shr_66_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_133;
  reg [11:0] shr_66_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_134;
  reg [11:0] shr_67_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_135;
  reg [11:0] shr_67_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_136;
  reg [11:0] shr_68_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_137;
  reg [11:0] shr_68_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_138;
  reg [11:0] shr_69_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_139;
  reg [11:0] shr_69_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_140;
  reg [11:0] shr_70_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_141;
  reg [11:0] shr_70_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_142;
  reg [11:0] shr_71_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_143;
  reg [11:0] shr_71_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_144;
  reg [11:0] shr_72_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_145;
  reg [11:0] shr_72_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_146;
  reg [11:0] shr_73_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_147;
  reg [11:0] shr_73_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_148;
  reg [11:0] shr_74_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_149;
  reg [11:0] shr_74_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_150;
  reg [11:0] shr_75_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_151;
  reg [11:0] shr_75_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_152;
  reg [11:0] shr_76_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_153;
  reg [11:0] shr_76_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_154;
  reg [11:0] shr_77_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_155;
  reg [11:0] shr_77_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_156;
  reg [11:0] shr_78_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_157;
  reg [11:0] shr_78_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_158;
  reg [11:0] shr_79_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_159;
  reg [11:0] shr_79_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_160;
  reg [11:0] shr_80_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_161;
  reg [11:0] shr_80_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_162;
  reg [11:0] shr_81_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_163;
  reg [11:0] shr_81_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_164;
  reg [11:0] shr_82_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_165;
  reg [11:0] shr_82_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_166;
  reg [11:0] shr_83_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_167;
  reg [11:0] shr_83_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_168;
  reg [11:0] shr_84_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_169;
  reg [11:0] shr_84_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_170;
  reg [11:0] shr_85_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_171;
  reg [11:0] shr_85_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_172;
  reg [11:0] shr_86_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_173;
  reg [11:0] shr_86_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_174;
  reg [11:0] shr_87_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_175;
  reg [11:0] shr_87_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_176;
  reg [11:0] shr_88_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_177;
  reg [11:0] shr_88_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_178;
  reg [11:0] shr_89_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_179;
  reg [11:0] shr_89_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_180;
  reg [11:0] shr_90_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_181;
  reg [11:0] shr_90_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_182;
  reg [11:0] shr_91_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_183;
  reg [11:0] shr_91_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_184;
  reg [11:0] shr_92_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_185;
  reg [11:0] shr_92_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_186;
  reg [11:0] shr_93_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_187;
  reg [11:0] shr_93_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_188;
  reg [11:0] shr_94_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_189;
  reg [11:0] shr_94_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_190;
  reg [11:0] shr_95_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_191;
  reg [11:0] shr_95_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_192;
  reg [11:0] shr_96_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_193;
  reg [11:0] shr_96_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_194;
  reg [11:0] shr_97_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_195;
  reg [11:0] shr_97_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_196;
  reg [11:0] shr_98_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_197;
  reg [11:0] shr_98_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_198;
  reg [11:0] shr_99_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_199;
  reg [11:0] shr_99_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_200;
  reg [11:0] shr_100_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_201;
  reg [11:0] shr_100_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_202;
  reg [11:0] shr_101_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_203;
  reg [11:0] shr_101_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_204;
  reg [11:0] shr_102_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_205;
  reg [11:0] shr_102_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_206;
  reg [11:0] shr_103_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_207;
  reg [11:0] shr_103_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_208;
  reg [11:0] shr_104_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_209;
  reg [11:0] shr_104_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_210;
  reg [11:0] shr_105_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_211;
  reg [11:0] shr_105_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_212;
  reg [11:0] shr_106_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_213;
  reg [11:0] shr_106_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_214;
  reg [11:0] shr_107_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_215;
  reg [11:0] shr_107_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_216;
  reg [11:0] shr_108_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_217;
  reg [11:0] shr_108_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_218;
  reg [11:0] shr_109_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_219;
  reg [11:0] shr_109_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_220;
  reg [11:0] shr_110_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_221;
  reg [11:0] shr_110_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_222;
  reg [11:0] shr_111_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_223;
  reg [11:0] shr_111_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_224;
  reg [11:0] shr_112_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_225;
  reg [11:0] shr_112_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_226;
  reg [11:0] shr_113_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_227;
  reg [11:0] shr_113_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_228;
  reg [11:0] shr_114_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_229;
  reg [11:0] shr_114_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_230;
  reg [11:0] shr_115_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_231;
  reg [11:0] shr_115_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_232;
  reg [11:0] shr_116_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_233;
  reg [11:0] shr_116_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_234;
  reg [11:0] shr_117_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_235;
  reg [11:0] shr_117_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_236;
  reg [11:0] shr_118_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_237;
  reg [11:0] shr_118_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_238;
  reg [11:0] shr_119_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_239;
  reg [11:0] shr_119_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_240;
  reg [11:0] shr_120_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_241;
  reg [11:0] shr_120_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_242;
  reg [11:0] shr_121_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_243;
  reg [11:0] shr_121_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_244;
  reg [11:0] shr_122_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_245;
  reg [11:0] shr_122_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_246;
  reg [11:0] shr_123_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_247;
  reg [11:0] shr_123_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_248;
  reg [11:0] shr_124_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_249;
  reg [11:0] shr_124_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_250;
  reg [11:0] shr_125_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_251;
  reg [11:0] shr_125_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_252;
  reg [11:0] shr_126_real; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_253;
  reg [11:0] shr_126_imag; // @[OverlapSum.scala 40:63:@67.4]
  reg [31:0] _RAND_254;
  reg [11:0] _T_4886_real; // @[Reg.scala 11:16:@2608.4]
  reg [31:0] _RAND_255;
  reg [11:0] _T_4886_imag; // @[Reg.scala 11:16:@2608.4]
  reg [31:0] _RAND_256;
  reg [11:0] _T_4892_real; // @[Reg.scala 11:16:@2613.4]
  reg [31:0] _RAND_257;
  reg [11:0] _T_4892_imag; // @[Reg.scala 11:16:@2613.4]
  reg [31:0] _RAND_258;
  reg [11:0] _T_4898_real; // @[Reg.scala 11:16:@2618.4]
  reg [31:0] _RAND_259;
  reg [11:0] _T_4898_imag; // @[Reg.scala 11:16:@2618.4]
  reg [31:0] _RAND_260;
  wire [7:0] _GEN_0; // @[OverlapSum.scala 36:25:@64.4]
  wire  _T_945; // @[OverlapSum.scala 42:38:@68.4]
  wire [11:0] shrSelected_0_real; // @[OverlapSum.scala 43:8:@78.4]
  wire [11:0] shrSelected_0_imag; // @[OverlapSum.scala 43:8:@78.4]
  wire  _T_962; // @[OverlapSum.scala 42:38:@79.4]
  wire [11:0] shrSelected_1_real; // @[OverlapSum.scala 43:8:@89.4]
  wire [11:0] shrSelected_1_imag; // @[OverlapSum.scala 43:8:@89.4]
  wire  _T_979; // @[OverlapSum.scala 42:38:@90.4]
  wire [11:0] shrSelected_2_real; // @[OverlapSum.scala 43:8:@100.4]
  wire [11:0] shrSelected_2_imag; // @[OverlapSum.scala 43:8:@100.4]
  wire  _T_996; // @[OverlapSum.scala 42:38:@101.4]
  wire [11:0] shrSelected_3_real; // @[OverlapSum.scala 43:8:@111.4]
  wire [11:0] shrSelected_3_imag; // @[OverlapSum.scala 43:8:@111.4]
  wire  _T_1013; // @[OverlapSum.scala 42:38:@112.4]
  wire [11:0] shrSelected_4_real; // @[OverlapSum.scala 43:8:@122.4]
  wire [11:0] shrSelected_4_imag; // @[OverlapSum.scala 43:8:@122.4]
  wire  _T_1030; // @[OverlapSum.scala 42:38:@123.4]
  wire [11:0] shrSelected_5_real; // @[OverlapSum.scala 43:8:@133.4]
  wire [11:0] shrSelected_5_imag; // @[OverlapSum.scala 43:8:@133.4]
  wire  _T_1047; // @[OverlapSum.scala 42:38:@134.4]
  wire [11:0] shrSelected_6_real; // @[OverlapSum.scala 43:8:@144.4]
  wire [11:0] shrSelected_6_imag; // @[OverlapSum.scala 43:8:@144.4]
  wire  _T_1064; // @[OverlapSum.scala 42:38:@145.4]
  wire [11:0] shrSelected_7_real; // @[OverlapSum.scala 43:8:@155.4]
  wire [11:0] shrSelected_7_imag; // @[OverlapSum.scala 43:8:@155.4]
  wire  _T_1081; // @[OverlapSum.scala 42:38:@156.4]
  wire [11:0] shrSelected_8_real; // @[OverlapSum.scala 43:8:@166.4]
  wire [11:0] shrSelected_8_imag; // @[OverlapSum.scala 43:8:@166.4]
  wire  _T_1098; // @[OverlapSum.scala 42:38:@167.4]
  wire [11:0] shrSelected_9_real; // @[OverlapSum.scala 43:8:@177.4]
  wire [11:0] shrSelected_9_imag; // @[OverlapSum.scala 43:8:@177.4]
  wire  _T_1115; // @[OverlapSum.scala 42:38:@178.4]
  wire [11:0] shrSelected_10_real; // @[OverlapSum.scala 43:8:@188.4]
  wire [11:0] shrSelected_10_imag; // @[OverlapSum.scala 43:8:@188.4]
  wire  _T_1132; // @[OverlapSum.scala 42:38:@189.4]
  wire [11:0] shrSelected_11_real; // @[OverlapSum.scala 43:8:@199.4]
  wire [11:0] shrSelected_11_imag; // @[OverlapSum.scala 43:8:@199.4]
  wire  _T_1149; // @[OverlapSum.scala 42:38:@200.4]
  wire [11:0] shrSelected_12_real; // @[OverlapSum.scala 43:8:@210.4]
  wire [11:0] shrSelected_12_imag; // @[OverlapSum.scala 43:8:@210.4]
  wire  _T_1166; // @[OverlapSum.scala 42:38:@211.4]
  wire [11:0] shrSelected_13_real; // @[OverlapSum.scala 43:8:@221.4]
  wire [11:0] shrSelected_13_imag; // @[OverlapSum.scala 43:8:@221.4]
  wire  _T_1183; // @[OverlapSum.scala 42:38:@222.4]
  wire [11:0] shrSelected_14_real; // @[OverlapSum.scala 43:8:@232.4]
  wire [11:0] shrSelected_14_imag; // @[OverlapSum.scala 43:8:@232.4]
  wire  _T_1200; // @[OverlapSum.scala 42:38:@233.4]
  wire [11:0] shrSelected_15_real; // @[OverlapSum.scala 43:8:@243.4]
  wire [11:0] shrSelected_15_imag; // @[OverlapSum.scala 43:8:@243.4]
  wire  _T_1217; // @[OverlapSum.scala 42:38:@244.4]
  wire [11:0] shrSelected_16_real; // @[OverlapSum.scala 43:8:@254.4]
  wire [11:0] shrSelected_16_imag; // @[OverlapSum.scala 43:8:@254.4]
  wire  _T_1234; // @[OverlapSum.scala 42:38:@255.4]
  wire [11:0] shrSelected_17_real; // @[OverlapSum.scala 43:8:@265.4]
  wire [11:0] shrSelected_17_imag; // @[OverlapSum.scala 43:8:@265.4]
  wire  _T_1251; // @[OverlapSum.scala 42:38:@266.4]
  wire [11:0] shrSelected_18_real; // @[OverlapSum.scala 43:8:@276.4]
  wire [11:0] shrSelected_18_imag; // @[OverlapSum.scala 43:8:@276.4]
  wire  _T_1268; // @[OverlapSum.scala 42:38:@277.4]
  wire [11:0] shrSelected_19_real; // @[OverlapSum.scala 43:8:@287.4]
  wire [11:0] shrSelected_19_imag; // @[OverlapSum.scala 43:8:@287.4]
  wire  _T_1285; // @[OverlapSum.scala 42:38:@288.4]
  wire [11:0] shrSelected_20_real; // @[OverlapSum.scala 43:8:@298.4]
  wire [11:0] shrSelected_20_imag; // @[OverlapSum.scala 43:8:@298.4]
  wire  _T_1302; // @[OverlapSum.scala 42:38:@299.4]
  wire [11:0] shrSelected_21_real; // @[OverlapSum.scala 43:8:@309.4]
  wire [11:0] shrSelected_21_imag; // @[OverlapSum.scala 43:8:@309.4]
  wire  _T_1319; // @[OverlapSum.scala 42:38:@310.4]
  wire [11:0] shrSelected_22_real; // @[OverlapSum.scala 43:8:@320.4]
  wire [11:0] shrSelected_22_imag; // @[OverlapSum.scala 43:8:@320.4]
  wire  _T_1336; // @[OverlapSum.scala 42:38:@321.4]
  wire [11:0] shrSelected_23_real; // @[OverlapSum.scala 43:8:@331.4]
  wire [11:0] shrSelected_23_imag; // @[OverlapSum.scala 43:8:@331.4]
  wire  _T_1353; // @[OverlapSum.scala 42:38:@332.4]
  wire [11:0] shrSelected_24_real; // @[OverlapSum.scala 43:8:@342.4]
  wire [11:0] shrSelected_24_imag; // @[OverlapSum.scala 43:8:@342.4]
  wire  _T_1370; // @[OverlapSum.scala 42:38:@343.4]
  wire [11:0] shrSelected_25_real; // @[OverlapSum.scala 43:8:@353.4]
  wire [11:0] shrSelected_25_imag; // @[OverlapSum.scala 43:8:@353.4]
  wire  _T_1387; // @[OverlapSum.scala 42:38:@354.4]
  wire [11:0] shrSelected_26_real; // @[OverlapSum.scala 43:8:@364.4]
  wire [11:0] shrSelected_26_imag; // @[OverlapSum.scala 43:8:@364.4]
  wire  _T_1404; // @[OverlapSum.scala 42:38:@365.4]
  wire [11:0] shrSelected_27_real; // @[OverlapSum.scala 43:8:@375.4]
  wire [11:0] shrSelected_27_imag; // @[OverlapSum.scala 43:8:@375.4]
  wire  _T_1421; // @[OverlapSum.scala 42:38:@376.4]
  wire [11:0] shrSelected_28_real; // @[OverlapSum.scala 43:8:@386.4]
  wire [11:0] shrSelected_28_imag; // @[OverlapSum.scala 43:8:@386.4]
  wire  _T_1438; // @[OverlapSum.scala 42:38:@387.4]
  wire [11:0] shrSelected_29_real; // @[OverlapSum.scala 43:8:@397.4]
  wire [11:0] shrSelected_29_imag; // @[OverlapSum.scala 43:8:@397.4]
  wire  _T_1455; // @[OverlapSum.scala 42:38:@398.4]
  wire [11:0] shrSelected_30_real; // @[OverlapSum.scala 43:8:@408.4]
  wire [11:0] shrSelected_30_imag; // @[OverlapSum.scala 43:8:@408.4]
  wire  _T_1472; // @[OverlapSum.scala 42:38:@409.4]
  wire [11:0] shrSelected_31_real; // @[OverlapSum.scala 43:8:@419.4]
  wire [11:0] shrSelected_31_imag; // @[OverlapSum.scala 43:8:@419.4]
  wire  _T_1489; // @[OverlapSum.scala 42:38:@420.4]
  wire [11:0] shrSelected_32_real; // @[OverlapSum.scala 43:8:@430.4]
  wire [11:0] shrSelected_32_imag; // @[OverlapSum.scala 43:8:@430.4]
  wire  _T_1506; // @[OverlapSum.scala 42:38:@431.4]
  wire [11:0] shrSelected_33_real; // @[OverlapSum.scala 43:8:@441.4]
  wire [11:0] shrSelected_33_imag; // @[OverlapSum.scala 43:8:@441.4]
  wire  _T_1523; // @[OverlapSum.scala 42:38:@442.4]
  wire [11:0] shrSelected_34_real; // @[OverlapSum.scala 43:8:@452.4]
  wire [11:0] shrSelected_34_imag; // @[OverlapSum.scala 43:8:@452.4]
  wire  _T_1540; // @[OverlapSum.scala 42:38:@453.4]
  wire [11:0] shrSelected_35_real; // @[OverlapSum.scala 43:8:@463.4]
  wire [11:0] shrSelected_35_imag; // @[OverlapSum.scala 43:8:@463.4]
  wire  _T_1557; // @[OverlapSum.scala 42:38:@464.4]
  wire [11:0] shrSelected_36_real; // @[OverlapSum.scala 43:8:@474.4]
  wire [11:0] shrSelected_36_imag; // @[OverlapSum.scala 43:8:@474.4]
  wire  _T_1574; // @[OverlapSum.scala 42:38:@475.4]
  wire [11:0] shrSelected_37_real; // @[OverlapSum.scala 43:8:@485.4]
  wire [11:0] shrSelected_37_imag; // @[OverlapSum.scala 43:8:@485.4]
  wire  _T_1591; // @[OverlapSum.scala 42:38:@486.4]
  wire [11:0] shrSelected_38_real; // @[OverlapSum.scala 43:8:@496.4]
  wire [11:0] shrSelected_38_imag; // @[OverlapSum.scala 43:8:@496.4]
  wire  _T_1608; // @[OverlapSum.scala 42:38:@497.4]
  wire [11:0] shrSelected_39_real; // @[OverlapSum.scala 43:8:@507.4]
  wire [11:0] shrSelected_39_imag; // @[OverlapSum.scala 43:8:@507.4]
  wire  _T_1625; // @[OverlapSum.scala 42:38:@508.4]
  wire [11:0] shrSelected_40_real; // @[OverlapSum.scala 43:8:@518.4]
  wire [11:0] shrSelected_40_imag; // @[OverlapSum.scala 43:8:@518.4]
  wire  _T_1642; // @[OverlapSum.scala 42:38:@519.4]
  wire [11:0] shrSelected_41_real; // @[OverlapSum.scala 43:8:@529.4]
  wire [11:0] shrSelected_41_imag; // @[OverlapSum.scala 43:8:@529.4]
  wire  _T_1659; // @[OverlapSum.scala 42:38:@530.4]
  wire [11:0] shrSelected_42_real; // @[OverlapSum.scala 43:8:@540.4]
  wire [11:0] shrSelected_42_imag; // @[OverlapSum.scala 43:8:@540.4]
  wire  _T_1676; // @[OverlapSum.scala 42:38:@541.4]
  wire [11:0] shrSelected_43_real; // @[OverlapSum.scala 43:8:@551.4]
  wire [11:0] shrSelected_43_imag; // @[OverlapSum.scala 43:8:@551.4]
  wire  _T_1693; // @[OverlapSum.scala 42:38:@552.4]
  wire [11:0] shrSelected_44_real; // @[OverlapSum.scala 43:8:@562.4]
  wire [11:0] shrSelected_44_imag; // @[OverlapSum.scala 43:8:@562.4]
  wire  _T_1710; // @[OverlapSum.scala 42:38:@563.4]
  wire [11:0] shrSelected_45_real; // @[OverlapSum.scala 43:8:@573.4]
  wire [11:0] shrSelected_45_imag; // @[OverlapSum.scala 43:8:@573.4]
  wire  _T_1727; // @[OverlapSum.scala 42:38:@574.4]
  wire [11:0] shrSelected_46_real; // @[OverlapSum.scala 43:8:@584.4]
  wire [11:0] shrSelected_46_imag; // @[OverlapSum.scala 43:8:@584.4]
  wire  _T_1744; // @[OverlapSum.scala 42:38:@585.4]
  wire [11:0] shrSelected_47_real; // @[OverlapSum.scala 43:8:@595.4]
  wire [11:0] shrSelected_47_imag; // @[OverlapSum.scala 43:8:@595.4]
  wire  _T_1761; // @[OverlapSum.scala 42:38:@596.4]
  wire [11:0] shrSelected_48_real; // @[OverlapSum.scala 43:8:@606.4]
  wire [11:0] shrSelected_48_imag; // @[OverlapSum.scala 43:8:@606.4]
  wire  _T_1778; // @[OverlapSum.scala 42:38:@607.4]
  wire [11:0] shrSelected_49_real; // @[OverlapSum.scala 43:8:@617.4]
  wire [11:0] shrSelected_49_imag; // @[OverlapSum.scala 43:8:@617.4]
  wire  _T_1795; // @[OverlapSum.scala 42:38:@618.4]
  wire [11:0] shrSelected_50_real; // @[OverlapSum.scala 43:8:@628.4]
  wire [11:0] shrSelected_50_imag; // @[OverlapSum.scala 43:8:@628.4]
  wire  _T_1812; // @[OverlapSum.scala 42:38:@629.4]
  wire [11:0] shrSelected_51_real; // @[OverlapSum.scala 43:8:@639.4]
  wire [11:0] shrSelected_51_imag; // @[OverlapSum.scala 43:8:@639.4]
  wire  _T_1829; // @[OverlapSum.scala 42:38:@640.4]
  wire [11:0] shrSelected_52_real; // @[OverlapSum.scala 43:8:@650.4]
  wire [11:0] shrSelected_52_imag; // @[OverlapSum.scala 43:8:@650.4]
  wire  _T_1846; // @[OverlapSum.scala 42:38:@651.4]
  wire [11:0] shrSelected_53_real; // @[OverlapSum.scala 43:8:@661.4]
  wire [11:0] shrSelected_53_imag; // @[OverlapSum.scala 43:8:@661.4]
  wire  _T_1863; // @[OverlapSum.scala 42:38:@662.4]
  wire [11:0] shrSelected_54_real; // @[OverlapSum.scala 43:8:@672.4]
  wire [11:0] shrSelected_54_imag; // @[OverlapSum.scala 43:8:@672.4]
  wire  _T_1880; // @[OverlapSum.scala 42:38:@673.4]
  wire [11:0] shrSelected_55_real; // @[OverlapSum.scala 43:8:@683.4]
  wire [11:0] shrSelected_55_imag; // @[OverlapSum.scala 43:8:@683.4]
  wire  _T_1897; // @[OverlapSum.scala 42:38:@684.4]
  wire [11:0] shrSelected_56_real; // @[OverlapSum.scala 43:8:@694.4]
  wire [11:0] shrSelected_56_imag; // @[OverlapSum.scala 43:8:@694.4]
  wire  _T_1914; // @[OverlapSum.scala 42:38:@695.4]
  wire [11:0] shrSelected_57_real; // @[OverlapSum.scala 43:8:@705.4]
  wire [11:0] shrSelected_57_imag; // @[OverlapSum.scala 43:8:@705.4]
  wire  _T_1931; // @[OverlapSum.scala 42:38:@706.4]
  wire [11:0] shrSelected_58_real; // @[OverlapSum.scala 43:8:@716.4]
  wire [11:0] shrSelected_58_imag; // @[OverlapSum.scala 43:8:@716.4]
  wire  _T_1948; // @[OverlapSum.scala 42:38:@717.4]
  wire [11:0] shrSelected_59_real; // @[OverlapSum.scala 43:8:@727.4]
  wire [11:0] shrSelected_59_imag; // @[OverlapSum.scala 43:8:@727.4]
  wire  _T_1965; // @[OverlapSum.scala 42:38:@728.4]
  wire [11:0] shrSelected_60_real; // @[OverlapSum.scala 43:8:@738.4]
  wire [11:0] shrSelected_60_imag; // @[OverlapSum.scala 43:8:@738.4]
  wire  _T_1982; // @[OverlapSum.scala 42:38:@739.4]
  wire [11:0] shrSelected_61_real; // @[OverlapSum.scala 43:8:@749.4]
  wire [11:0] shrSelected_61_imag; // @[OverlapSum.scala 43:8:@749.4]
  wire  _T_1999; // @[OverlapSum.scala 42:38:@750.4]
  wire [11:0] shrSelected_62_real; // @[OverlapSum.scala 43:8:@760.4]
  wire [11:0] shrSelected_62_imag; // @[OverlapSum.scala 43:8:@760.4]
  wire  _T_2016; // @[OverlapSum.scala 42:38:@761.4]
  wire [11:0] shrSelected_63_real; // @[OverlapSum.scala 43:8:@771.4]
  wire [11:0] shrSelected_63_imag; // @[OverlapSum.scala 43:8:@771.4]
  wire  _T_2033; // @[OverlapSum.scala 42:38:@772.4]
  wire [11:0] shrSelected_64_real; // @[OverlapSum.scala 43:8:@782.4]
  wire [11:0] shrSelected_64_imag; // @[OverlapSum.scala 43:8:@782.4]
  wire  _T_2050; // @[OverlapSum.scala 42:38:@783.4]
  wire [11:0] shrSelected_65_real; // @[OverlapSum.scala 43:8:@793.4]
  wire [11:0] shrSelected_65_imag; // @[OverlapSum.scala 43:8:@793.4]
  wire  _T_2067; // @[OverlapSum.scala 42:38:@794.4]
  wire [11:0] shrSelected_66_real; // @[OverlapSum.scala 43:8:@804.4]
  wire [11:0] shrSelected_66_imag; // @[OverlapSum.scala 43:8:@804.4]
  wire  _T_2084; // @[OverlapSum.scala 42:38:@805.4]
  wire [11:0] shrSelected_67_real; // @[OverlapSum.scala 43:8:@815.4]
  wire [11:0] shrSelected_67_imag; // @[OverlapSum.scala 43:8:@815.4]
  wire  _T_2101; // @[OverlapSum.scala 42:38:@816.4]
  wire [11:0] shrSelected_68_real; // @[OverlapSum.scala 43:8:@826.4]
  wire [11:0] shrSelected_68_imag; // @[OverlapSum.scala 43:8:@826.4]
  wire  _T_2118; // @[OverlapSum.scala 42:38:@827.4]
  wire [11:0] shrSelected_69_real; // @[OverlapSum.scala 43:8:@837.4]
  wire [11:0] shrSelected_69_imag; // @[OverlapSum.scala 43:8:@837.4]
  wire  _T_2135; // @[OverlapSum.scala 42:38:@838.4]
  wire [11:0] shrSelected_70_real; // @[OverlapSum.scala 43:8:@848.4]
  wire [11:0] shrSelected_70_imag; // @[OverlapSum.scala 43:8:@848.4]
  wire  _T_2152; // @[OverlapSum.scala 42:38:@849.4]
  wire [11:0] shrSelected_71_real; // @[OverlapSum.scala 43:8:@859.4]
  wire [11:0] shrSelected_71_imag; // @[OverlapSum.scala 43:8:@859.4]
  wire  _T_2169; // @[OverlapSum.scala 42:38:@860.4]
  wire [11:0] shrSelected_72_real; // @[OverlapSum.scala 43:8:@870.4]
  wire [11:0] shrSelected_72_imag; // @[OverlapSum.scala 43:8:@870.4]
  wire  _T_2186; // @[OverlapSum.scala 42:38:@871.4]
  wire [11:0] shrSelected_73_real; // @[OverlapSum.scala 43:8:@881.4]
  wire [11:0] shrSelected_73_imag; // @[OverlapSum.scala 43:8:@881.4]
  wire  _T_2203; // @[OverlapSum.scala 42:38:@882.4]
  wire [11:0] shrSelected_74_real; // @[OverlapSum.scala 43:8:@892.4]
  wire [11:0] shrSelected_74_imag; // @[OverlapSum.scala 43:8:@892.4]
  wire  _T_2220; // @[OverlapSum.scala 42:38:@893.4]
  wire [11:0] shrSelected_75_real; // @[OverlapSum.scala 43:8:@903.4]
  wire [11:0] shrSelected_75_imag; // @[OverlapSum.scala 43:8:@903.4]
  wire  _T_2237; // @[OverlapSum.scala 42:38:@904.4]
  wire [11:0] shrSelected_76_real; // @[OverlapSum.scala 43:8:@914.4]
  wire [11:0] shrSelected_76_imag; // @[OverlapSum.scala 43:8:@914.4]
  wire  _T_2254; // @[OverlapSum.scala 42:38:@915.4]
  wire [11:0] shrSelected_77_real; // @[OverlapSum.scala 43:8:@925.4]
  wire [11:0] shrSelected_77_imag; // @[OverlapSum.scala 43:8:@925.4]
  wire  _T_2271; // @[OverlapSum.scala 42:38:@926.4]
  wire [11:0] shrSelected_78_real; // @[OverlapSum.scala 43:8:@936.4]
  wire [11:0] shrSelected_78_imag; // @[OverlapSum.scala 43:8:@936.4]
  wire  _T_2288; // @[OverlapSum.scala 42:38:@937.4]
  wire [11:0] shrSelected_79_real; // @[OverlapSum.scala 43:8:@947.4]
  wire [11:0] shrSelected_79_imag; // @[OverlapSum.scala 43:8:@947.4]
  wire  _T_2305; // @[OverlapSum.scala 42:38:@948.4]
  wire [11:0] shrSelected_80_real; // @[OverlapSum.scala 43:8:@958.4]
  wire [11:0] shrSelected_80_imag; // @[OverlapSum.scala 43:8:@958.4]
  wire  _T_2322; // @[OverlapSum.scala 42:38:@959.4]
  wire [11:0] shrSelected_81_real; // @[OverlapSum.scala 43:8:@969.4]
  wire [11:0] shrSelected_81_imag; // @[OverlapSum.scala 43:8:@969.4]
  wire  _T_2339; // @[OverlapSum.scala 42:38:@970.4]
  wire [11:0] shrSelected_82_real; // @[OverlapSum.scala 43:8:@980.4]
  wire [11:0] shrSelected_82_imag; // @[OverlapSum.scala 43:8:@980.4]
  wire  _T_2356; // @[OverlapSum.scala 42:38:@981.4]
  wire [11:0] shrSelected_83_real; // @[OverlapSum.scala 43:8:@991.4]
  wire [11:0] shrSelected_83_imag; // @[OverlapSum.scala 43:8:@991.4]
  wire  _T_2373; // @[OverlapSum.scala 42:38:@992.4]
  wire [11:0] shrSelected_84_real; // @[OverlapSum.scala 43:8:@1002.4]
  wire [11:0] shrSelected_84_imag; // @[OverlapSum.scala 43:8:@1002.4]
  wire  _T_2390; // @[OverlapSum.scala 42:38:@1003.4]
  wire [11:0] shrSelected_85_real; // @[OverlapSum.scala 43:8:@1013.4]
  wire [11:0] shrSelected_85_imag; // @[OverlapSum.scala 43:8:@1013.4]
  wire  _T_2407; // @[OverlapSum.scala 42:38:@1014.4]
  wire [11:0] shrSelected_86_real; // @[OverlapSum.scala 43:8:@1024.4]
  wire [11:0] shrSelected_86_imag; // @[OverlapSum.scala 43:8:@1024.4]
  wire  _T_2424; // @[OverlapSum.scala 42:38:@1025.4]
  wire [11:0] shrSelected_87_real; // @[OverlapSum.scala 43:8:@1035.4]
  wire [11:0] shrSelected_87_imag; // @[OverlapSum.scala 43:8:@1035.4]
  wire  _T_2441; // @[OverlapSum.scala 42:38:@1036.4]
  wire [11:0] shrSelected_88_real; // @[OverlapSum.scala 43:8:@1046.4]
  wire [11:0] shrSelected_88_imag; // @[OverlapSum.scala 43:8:@1046.4]
  wire  _T_2458; // @[OverlapSum.scala 42:38:@1047.4]
  wire [11:0] shrSelected_89_real; // @[OverlapSum.scala 43:8:@1057.4]
  wire [11:0] shrSelected_89_imag; // @[OverlapSum.scala 43:8:@1057.4]
  wire  _T_2475; // @[OverlapSum.scala 42:38:@1058.4]
  wire [11:0] shrSelected_90_real; // @[OverlapSum.scala 43:8:@1068.4]
  wire [11:0] shrSelected_90_imag; // @[OverlapSum.scala 43:8:@1068.4]
  wire  _T_2492; // @[OverlapSum.scala 42:38:@1069.4]
  wire [11:0] shrSelected_91_real; // @[OverlapSum.scala 43:8:@1079.4]
  wire [11:0] shrSelected_91_imag; // @[OverlapSum.scala 43:8:@1079.4]
  wire  _T_2509; // @[OverlapSum.scala 42:38:@1080.4]
  wire [11:0] shrSelected_92_real; // @[OverlapSum.scala 43:8:@1090.4]
  wire [11:0] shrSelected_92_imag; // @[OverlapSum.scala 43:8:@1090.4]
  wire  _T_2526; // @[OverlapSum.scala 42:38:@1091.4]
  wire [11:0] shrSelected_93_real; // @[OverlapSum.scala 43:8:@1101.4]
  wire [11:0] shrSelected_93_imag; // @[OverlapSum.scala 43:8:@1101.4]
  wire  _T_2543; // @[OverlapSum.scala 42:38:@1102.4]
  wire [11:0] shrSelected_94_real; // @[OverlapSum.scala 43:8:@1112.4]
  wire [11:0] shrSelected_94_imag; // @[OverlapSum.scala 43:8:@1112.4]
  wire  _T_2560; // @[OverlapSum.scala 42:38:@1113.4]
  wire [11:0] shrSelected_95_real; // @[OverlapSum.scala 43:8:@1123.4]
  wire [11:0] shrSelected_95_imag; // @[OverlapSum.scala 43:8:@1123.4]
  wire  _T_2577; // @[OverlapSum.scala 42:38:@1124.4]
  wire [11:0] shrSelected_96_real; // @[OverlapSum.scala 43:8:@1134.4]
  wire [11:0] shrSelected_96_imag; // @[OverlapSum.scala 43:8:@1134.4]
  wire  _T_2594; // @[OverlapSum.scala 42:38:@1135.4]
  wire [11:0] shrSelected_97_real; // @[OverlapSum.scala 43:8:@1145.4]
  wire [11:0] shrSelected_97_imag; // @[OverlapSum.scala 43:8:@1145.4]
  wire  _T_2611; // @[OverlapSum.scala 42:38:@1146.4]
  wire [11:0] shrSelected_98_real; // @[OverlapSum.scala 43:8:@1156.4]
  wire [11:0] shrSelected_98_imag; // @[OverlapSum.scala 43:8:@1156.4]
  wire  _T_2628; // @[OverlapSum.scala 42:38:@1157.4]
  wire [11:0] shrSelected_99_real; // @[OverlapSum.scala 43:8:@1167.4]
  wire [11:0] shrSelected_99_imag; // @[OverlapSum.scala 43:8:@1167.4]
  wire  _T_2645; // @[OverlapSum.scala 42:38:@1168.4]
  wire [11:0] shrSelected_100_real; // @[OverlapSum.scala 43:8:@1178.4]
  wire [11:0] shrSelected_100_imag; // @[OverlapSum.scala 43:8:@1178.4]
  wire  _T_2662; // @[OverlapSum.scala 42:38:@1179.4]
  wire [11:0] shrSelected_101_real; // @[OverlapSum.scala 43:8:@1189.4]
  wire [11:0] shrSelected_101_imag; // @[OverlapSum.scala 43:8:@1189.4]
  wire  _T_2679; // @[OverlapSum.scala 42:38:@1190.4]
  wire [11:0] shrSelected_102_real; // @[OverlapSum.scala 43:8:@1200.4]
  wire [11:0] shrSelected_102_imag; // @[OverlapSum.scala 43:8:@1200.4]
  wire  _T_2696; // @[OverlapSum.scala 42:38:@1201.4]
  wire [11:0] shrSelected_103_real; // @[OverlapSum.scala 43:8:@1211.4]
  wire [11:0] shrSelected_103_imag; // @[OverlapSum.scala 43:8:@1211.4]
  wire  _T_2713; // @[OverlapSum.scala 42:38:@1212.4]
  wire [11:0] shrSelected_104_real; // @[OverlapSum.scala 43:8:@1222.4]
  wire [11:0] shrSelected_104_imag; // @[OverlapSum.scala 43:8:@1222.4]
  wire  _T_2730; // @[OverlapSum.scala 42:38:@1223.4]
  wire [11:0] shrSelected_105_real; // @[OverlapSum.scala 43:8:@1233.4]
  wire [11:0] shrSelected_105_imag; // @[OverlapSum.scala 43:8:@1233.4]
  wire  _T_2747; // @[OverlapSum.scala 42:38:@1234.4]
  wire [11:0] shrSelected_106_real; // @[OverlapSum.scala 43:8:@1244.4]
  wire [11:0] shrSelected_106_imag; // @[OverlapSum.scala 43:8:@1244.4]
  wire  _T_2764; // @[OverlapSum.scala 42:38:@1245.4]
  wire [11:0] shrSelected_107_real; // @[OverlapSum.scala 43:8:@1255.4]
  wire [11:0] shrSelected_107_imag; // @[OverlapSum.scala 43:8:@1255.4]
  wire  _T_2781; // @[OverlapSum.scala 42:38:@1256.4]
  wire [11:0] shrSelected_108_real; // @[OverlapSum.scala 43:8:@1266.4]
  wire [11:0] shrSelected_108_imag; // @[OverlapSum.scala 43:8:@1266.4]
  wire  _T_2798; // @[OverlapSum.scala 42:38:@1267.4]
  wire [11:0] shrSelected_109_real; // @[OverlapSum.scala 43:8:@1277.4]
  wire [11:0] shrSelected_109_imag; // @[OverlapSum.scala 43:8:@1277.4]
  wire  _T_2815; // @[OverlapSum.scala 42:38:@1278.4]
  wire [11:0] shrSelected_110_real; // @[OverlapSum.scala 43:8:@1288.4]
  wire [11:0] shrSelected_110_imag; // @[OverlapSum.scala 43:8:@1288.4]
  wire  _T_2832; // @[OverlapSum.scala 42:38:@1289.4]
  wire [11:0] shrSelected_111_real; // @[OverlapSum.scala 43:8:@1299.4]
  wire [11:0] shrSelected_111_imag; // @[OverlapSum.scala 43:8:@1299.4]
  wire  _T_2849; // @[OverlapSum.scala 42:38:@1300.4]
  wire [11:0] shrSelected_112_real; // @[OverlapSum.scala 43:8:@1310.4]
  wire [11:0] shrSelected_112_imag; // @[OverlapSum.scala 43:8:@1310.4]
  wire  _T_2866; // @[OverlapSum.scala 42:38:@1311.4]
  wire [11:0] shrSelected_113_real; // @[OverlapSum.scala 43:8:@1321.4]
  wire [11:0] shrSelected_113_imag; // @[OverlapSum.scala 43:8:@1321.4]
  wire  _T_2883; // @[OverlapSum.scala 42:38:@1322.4]
  wire [11:0] shrSelected_114_real; // @[OverlapSum.scala 43:8:@1332.4]
  wire [11:0] shrSelected_114_imag; // @[OverlapSum.scala 43:8:@1332.4]
  wire  _T_2900; // @[OverlapSum.scala 42:38:@1333.4]
  wire [11:0] shrSelected_115_real; // @[OverlapSum.scala 43:8:@1343.4]
  wire [11:0] shrSelected_115_imag; // @[OverlapSum.scala 43:8:@1343.4]
  wire  _T_2917; // @[OverlapSum.scala 42:38:@1344.4]
  wire [11:0] shrSelected_116_real; // @[OverlapSum.scala 43:8:@1354.4]
  wire [11:0] shrSelected_116_imag; // @[OverlapSum.scala 43:8:@1354.4]
  wire  _T_2934; // @[OverlapSum.scala 42:38:@1355.4]
  wire [11:0] shrSelected_117_real; // @[OverlapSum.scala 43:8:@1365.4]
  wire [11:0] shrSelected_117_imag; // @[OverlapSum.scala 43:8:@1365.4]
  wire  _T_2951; // @[OverlapSum.scala 42:38:@1366.4]
  wire [11:0] shrSelected_118_real; // @[OverlapSum.scala 43:8:@1376.4]
  wire [11:0] shrSelected_118_imag; // @[OverlapSum.scala 43:8:@1376.4]
  wire  _T_2968; // @[OverlapSum.scala 42:38:@1377.4]
  wire [11:0] shrSelected_119_real; // @[OverlapSum.scala 43:8:@1387.4]
  wire [11:0] shrSelected_119_imag; // @[OverlapSum.scala 43:8:@1387.4]
  wire  _T_2985; // @[OverlapSum.scala 42:38:@1388.4]
  wire [11:0] shrSelected_120_real; // @[OverlapSum.scala 43:8:@1398.4]
  wire [11:0] shrSelected_120_imag; // @[OverlapSum.scala 43:8:@1398.4]
  wire  _T_3002; // @[OverlapSum.scala 42:38:@1399.4]
  wire [11:0] shrSelected_121_real; // @[OverlapSum.scala 43:8:@1409.4]
  wire [11:0] shrSelected_121_imag; // @[OverlapSum.scala 43:8:@1409.4]
  wire  _T_3019; // @[OverlapSum.scala 42:38:@1410.4]
  wire [11:0] shrSelected_122_real; // @[OverlapSum.scala 43:8:@1420.4]
  wire [11:0] shrSelected_122_imag; // @[OverlapSum.scala 43:8:@1420.4]
  wire  _T_3036; // @[OverlapSum.scala 42:38:@1421.4]
  wire [11:0] shrSelected_123_real; // @[OverlapSum.scala 43:8:@1431.4]
  wire [11:0] shrSelected_123_imag; // @[OverlapSum.scala 43:8:@1431.4]
  wire  _T_3053; // @[OverlapSum.scala 42:38:@1432.4]
  wire [11:0] shrSelected_124_real; // @[OverlapSum.scala 43:8:@1442.4]
  wire [11:0] shrSelected_124_imag; // @[OverlapSum.scala 43:8:@1442.4]
  wire  _T_3070; // @[OverlapSum.scala 42:38:@1443.4]
  wire [11:0] shrSelected_125_real; // @[OverlapSum.scala 43:8:@1453.4]
  wire [11:0] shrSelected_125_imag; // @[OverlapSum.scala 43:8:@1453.4]
  wire  _T_3087; // @[OverlapSum.scala 42:38:@1454.4]
  wire [11:0] shrSelected_126_real; // @[OverlapSum.scala 43:8:@1464.4]
  wire [11:0] shrSelected_126_imag; // @[OverlapSum.scala 43:8:@1464.4]
  wire [12:0] _T_3103; // @[FixedPointTypeClass.scala 21:58:@1465.4]
  wire [11:0] _T_3104; // @[FixedPointTypeClass.scala 21:58:@1466.4]
  wire [11:0] _T_3105; // @[FixedPointTypeClass.scala 21:58:@1467.4]
  wire [12:0] _T_3106; // @[FixedPointTypeClass.scala 21:58:@1468.4]
  wire [11:0] _T_3107; // @[FixedPointTypeClass.scala 21:58:@1469.4]
  wire [11:0] _T_3108; // @[FixedPointTypeClass.scala 21:58:@1470.4]
  wire [12:0] _T_3117; // @[FixedPointTypeClass.scala 21:58:@1474.4]
  wire [11:0] _T_3118; // @[FixedPointTypeClass.scala 21:58:@1475.4]
  wire [11:0] _T_3119; // @[FixedPointTypeClass.scala 21:58:@1476.4]
  wire [12:0] _T_3120; // @[FixedPointTypeClass.scala 21:58:@1477.4]
  wire [11:0] _T_3121; // @[FixedPointTypeClass.scala 21:58:@1478.4]
  wire [11:0] _T_3122; // @[FixedPointTypeClass.scala 21:58:@1479.4]
  wire [12:0] _T_3131; // @[FixedPointTypeClass.scala 21:58:@1483.4]
  wire [11:0] _T_3132; // @[FixedPointTypeClass.scala 21:58:@1484.4]
  wire [11:0] _T_3133; // @[FixedPointTypeClass.scala 21:58:@1485.4]
  wire [12:0] _T_3134; // @[FixedPointTypeClass.scala 21:58:@1486.4]
  wire [11:0] _T_3135; // @[FixedPointTypeClass.scala 21:58:@1487.4]
  wire [11:0] _T_3136; // @[FixedPointTypeClass.scala 21:58:@1488.4]
  wire [12:0] _T_3145; // @[FixedPointTypeClass.scala 21:58:@1492.4]
  wire [11:0] _T_3146; // @[FixedPointTypeClass.scala 21:58:@1493.4]
  wire [11:0] _T_3147; // @[FixedPointTypeClass.scala 21:58:@1494.4]
  wire [12:0] _T_3148; // @[FixedPointTypeClass.scala 21:58:@1495.4]
  wire [11:0] _T_3149; // @[FixedPointTypeClass.scala 21:58:@1496.4]
  wire [11:0] _T_3150; // @[FixedPointTypeClass.scala 21:58:@1497.4]
  wire [12:0] _T_3159; // @[FixedPointTypeClass.scala 21:58:@1501.4]
  wire [11:0] _T_3160; // @[FixedPointTypeClass.scala 21:58:@1502.4]
  wire [11:0] _T_3161; // @[FixedPointTypeClass.scala 21:58:@1503.4]
  wire [12:0] _T_3162; // @[FixedPointTypeClass.scala 21:58:@1504.4]
  wire [11:0] _T_3163; // @[FixedPointTypeClass.scala 21:58:@1505.4]
  wire [11:0] _T_3164; // @[FixedPointTypeClass.scala 21:58:@1506.4]
  wire [12:0] _T_3173; // @[FixedPointTypeClass.scala 21:58:@1510.4]
  wire [11:0] _T_3174; // @[FixedPointTypeClass.scala 21:58:@1511.4]
  wire [11:0] _T_3175; // @[FixedPointTypeClass.scala 21:58:@1512.4]
  wire [12:0] _T_3176; // @[FixedPointTypeClass.scala 21:58:@1513.4]
  wire [11:0] _T_3177; // @[FixedPointTypeClass.scala 21:58:@1514.4]
  wire [11:0] _T_3178; // @[FixedPointTypeClass.scala 21:58:@1515.4]
  wire [12:0] _T_3187; // @[FixedPointTypeClass.scala 21:58:@1519.4]
  wire [11:0] _T_3188; // @[FixedPointTypeClass.scala 21:58:@1520.4]
  wire [11:0] _T_3189; // @[FixedPointTypeClass.scala 21:58:@1521.4]
  wire [12:0] _T_3190; // @[FixedPointTypeClass.scala 21:58:@1522.4]
  wire [11:0] _T_3191; // @[FixedPointTypeClass.scala 21:58:@1523.4]
  wire [11:0] _T_3192; // @[FixedPointTypeClass.scala 21:58:@1524.4]
  wire [12:0] _T_3201; // @[FixedPointTypeClass.scala 21:58:@1528.4]
  wire [11:0] _T_3202; // @[FixedPointTypeClass.scala 21:58:@1529.4]
  wire [11:0] _T_3203; // @[FixedPointTypeClass.scala 21:58:@1530.4]
  wire [12:0] _T_3204; // @[FixedPointTypeClass.scala 21:58:@1531.4]
  wire [11:0] _T_3205; // @[FixedPointTypeClass.scala 21:58:@1532.4]
  wire [11:0] _T_3206; // @[FixedPointTypeClass.scala 21:58:@1533.4]
  wire [12:0] _T_3215; // @[FixedPointTypeClass.scala 21:58:@1537.4]
  wire [11:0] _T_3216; // @[FixedPointTypeClass.scala 21:58:@1538.4]
  wire [11:0] _T_3217; // @[FixedPointTypeClass.scala 21:58:@1539.4]
  wire [12:0] _T_3218; // @[FixedPointTypeClass.scala 21:58:@1540.4]
  wire [11:0] _T_3219; // @[FixedPointTypeClass.scala 21:58:@1541.4]
  wire [11:0] _T_3220; // @[FixedPointTypeClass.scala 21:58:@1542.4]
  wire [12:0] _T_3229; // @[FixedPointTypeClass.scala 21:58:@1546.4]
  wire [11:0] _T_3230; // @[FixedPointTypeClass.scala 21:58:@1547.4]
  wire [11:0] _T_3231; // @[FixedPointTypeClass.scala 21:58:@1548.4]
  wire [12:0] _T_3232; // @[FixedPointTypeClass.scala 21:58:@1549.4]
  wire [11:0] _T_3233; // @[FixedPointTypeClass.scala 21:58:@1550.4]
  wire [11:0] _T_3234; // @[FixedPointTypeClass.scala 21:58:@1551.4]
  wire [12:0] _T_3243; // @[FixedPointTypeClass.scala 21:58:@1555.4]
  wire [11:0] _T_3244; // @[FixedPointTypeClass.scala 21:58:@1556.4]
  wire [11:0] _T_3245; // @[FixedPointTypeClass.scala 21:58:@1557.4]
  wire [12:0] _T_3246; // @[FixedPointTypeClass.scala 21:58:@1558.4]
  wire [11:0] _T_3247; // @[FixedPointTypeClass.scala 21:58:@1559.4]
  wire [11:0] _T_3248; // @[FixedPointTypeClass.scala 21:58:@1560.4]
  wire [12:0] _T_3257; // @[FixedPointTypeClass.scala 21:58:@1564.4]
  wire [11:0] _T_3258; // @[FixedPointTypeClass.scala 21:58:@1565.4]
  wire [11:0] _T_3259; // @[FixedPointTypeClass.scala 21:58:@1566.4]
  wire [12:0] _T_3260; // @[FixedPointTypeClass.scala 21:58:@1567.4]
  wire [11:0] _T_3261; // @[FixedPointTypeClass.scala 21:58:@1568.4]
  wire [11:0] _T_3262; // @[FixedPointTypeClass.scala 21:58:@1569.4]
  wire [12:0] _T_3271; // @[FixedPointTypeClass.scala 21:58:@1573.4]
  wire [11:0] _T_3272; // @[FixedPointTypeClass.scala 21:58:@1574.4]
  wire [11:0] _T_3273; // @[FixedPointTypeClass.scala 21:58:@1575.4]
  wire [12:0] _T_3274; // @[FixedPointTypeClass.scala 21:58:@1576.4]
  wire [11:0] _T_3275; // @[FixedPointTypeClass.scala 21:58:@1577.4]
  wire [11:0] _T_3276; // @[FixedPointTypeClass.scala 21:58:@1578.4]
  wire [12:0] _T_3285; // @[FixedPointTypeClass.scala 21:58:@1582.4]
  wire [11:0] _T_3286; // @[FixedPointTypeClass.scala 21:58:@1583.4]
  wire [11:0] _T_3287; // @[FixedPointTypeClass.scala 21:58:@1584.4]
  wire [12:0] _T_3288; // @[FixedPointTypeClass.scala 21:58:@1585.4]
  wire [11:0] _T_3289; // @[FixedPointTypeClass.scala 21:58:@1586.4]
  wire [11:0] _T_3290; // @[FixedPointTypeClass.scala 21:58:@1587.4]
  wire [12:0] _T_3299; // @[FixedPointTypeClass.scala 21:58:@1591.4]
  wire [11:0] _T_3300; // @[FixedPointTypeClass.scala 21:58:@1592.4]
  wire [11:0] _T_3301; // @[FixedPointTypeClass.scala 21:58:@1593.4]
  wire [12:0] _T_3302; // @[FixedPointTypeClass.scala 21:58:@1594.4]
  wire [11:0] _T_3303; // @[FixedPointTypeClass.scala 21:58:@1595.4]
  wire [11:0] _T_3304; // @[FixedPointTypeClass.scala 21:58:@1596.4]
  wire [12:0] _T_3313; // @[FixedPointTypeClass.scala 21:58:@1600.4]
  wire [11:0] _T_3314; // @[FixedPointTypeClass.scala 21:58:@1601.4]
  wire [11:0] _T_3315; // @[FixedPointTypeClass.scala 21:58:@1602.4]
  wire [12:0] _T_3316; // @[FixedPointTypeClass.scala 21:58:@1603.4]
  wire [11:0] _T_3317; // @[FixedPointTypeClass.scala 21:58:@1604.4]
  wire [11:0] _T_3318; // @[FixedPointTypeClass.scala 21:58:@1605.4]
  wire [12:0] _T_3327; // @[FixedPointTypeClass.scala 21:58:@1609.4]
  wire [11:0] _T_3328; // @[FixedPointTypeClass.scala 21:58:@1610.4]
  wire [11:0] _T_3329; // @[FixedPointTypeClass.scala 21:58:@1611.4]
  wire [12:0] _T_3330; // @[FixedPointTypeClass.scala 21:58:@1612.4]
  wire [11:0] _T_3331; // @[FixedPointTypeClass.scala 21:58:@1613.4]
  wire [11:0] _T_3332; // @[FixedPointTypeClass.scala 21:58:@1614.4]
  wire [12:0] _T_3341; // @[FixedPointTypeClass.scala 21:58:@1618.4]
  wire [11:0] _T_3342; // @[FixedPointTypeClass.scala 21:58:@1619.4]
  wire [11:0] _T_3343; // @[FixedPointTypeClass.scala 21:58:@1620.4]
  wire [12:0] _T_3344; // @[FixedPointTypeClass.scala 21:58:@1621.4]
  wire [11:0] _T_3345; // @[FixedPointTypeClass.scala 21:58:@1622.4]
  wire [11:0] _T_3346; // @[FixedPointTypeClass.scala 21:58:@1623.4]
  wire [12:0] _T_3355; // @[FixedPointTypeClass.scala 21:58:@1627.4]
  wire [11:0] _T_3356; // @[FixedPointTypeClass.scala 21:58:@1628.4]
  wire [11:0] _T_3357; // @[FixedPointTypeClass.scala 21:58:@1629.4]
  wire [12:0] _T_3358; // @[FixedPointTypeClass.scala 21:58:@1630.4]
  wire [11:0] _T_3359; // @[FixedPointTypeClass.scala 21:58:@1631.4]
  wire [11:0] _T_3360; // @[FixedPointTypeClass.scala 21:58:@1632.4]
  wire [12:0] _T_3369; // @[FixedPointTypeClass.scala 21:58:@1636.4]
  wire [11:0] _T_3370; // @[FixedPointTypeClass.scala 21:58:@1637.4]
  wire [11:0] _T_3371; // @[FixedPointTypeClass.scala 21:58:@1638.4]
  wire [12:0] _T_3372; // @[FixedPointTypeClass.scala 21:58:@1639.4]
  wire [11:0] _T_3373; // @[FixedPointTypeClass.scala 21:58:@1640.4]
  wire [11:0] _T_3374; // @[FixedPointTypeClass.scala 21:58:@1641.4]
  wire [12:0] _T_3383; // @[FixedPointTypeClass.scala 21:58:@1645.4]
  wire [11:0] _T_3384; // @[FixedPointTypeClass.scala 21:58:@1646.4]
  wire [11:0] _T_3385; // @[FixedPointTypeClass.scala 21:58:@1647.4]
  wire [12:0] _T_3386; // @[FixedPointTypeClass.scala 21:58:@1648.4]
  wire [11:0] _T_3387; // @[FixedPointTypeClass.scala 21:58:@1649.4]
  wire [11:0] _T_3388; // @[FixedPointTypeClass.scala 21:58:@1650.4]
  wire [12:0] _T_3397; // @[FixedPointTypeClass.scala 21:58:@1654.4]
  wire [11:0] _T_3398; // @[FixedPointTypeClass.scala 21:58:@1655.4]
  wire [11:0] _T_3399; // @[FixedPointTypeClass.scala 21:58:@1656.4]
  wire [12:0] _T_3400; // @[FixedPointTypeClass.scala 21:58:@1657.4]
  wire [11:0] _T_3401; // @[FixedPointTypeClass.scala 21:58:@1658.4]
  wire [11:0] _T_3402; // @[FixedPointTypeClass.scala 21:58:@1659.4]
  wire [12:0] _T_3411; // @[FixedPointTypeClass.scala 21:58:@1663.4]
  wire [11:0] _T_3412; // @[FixedPointTypeClass.scala 21:58:@1664.4]
  wire [11:0] _T_3413; // @[FixedPointTypeClass.scala 21:58:@1665.4]
  wire [12:0] _T_3414; // @[FixedPointTypeClass.scala 21:58:@1666.4]
  wire [11:0] _T_3415; // @[FixedPointTypeClass.scala 21:58:@1667.4]
  wire [11:0] _T_3416; // @[FixedPointTypeClass.scala 21:58:@1668.4]
  wire [12:0] _T_3425; // @[FixedPointTypeClass.scala 21:58:@1672.4]
  wire [11:0] _T_3426; // @[FixedPointTypeClass.scala 21:58:@1673.4]
  wire [11:0] _T_3427; // @[FixedPointTypeClass.scala 21:58:@1674.4]
  wire [12:0] _T_3428; // @[FixedPointTypeClass.scala 21:58:@1675.4]
  wire [11:0] _T_3429; // @[FixedPointTypeClass.scala 21:58:@1676.4]
  wire [11:0] _T_3430; // @[FixedPointTypeClass.scala 21:58:@1677.4]
  wire [12:0] _T_3439; // @[FixedPointTypeClass.scala 21:58:@1681.4]
  wire [11:0] _T_3440; // @[FixedPointTypeClass.scala 21:58:@1682.4]
  wire [11:0] _T_3441; // @[FixedPointTypeClass.scala 21:58:@1683.4]
  wire [12:0] _T_3442; // @[FixedPointTypeClass.scala 21:58:@1684.4]
  wire [11:0] _T_3443; // @[FixedPointTypeClass.scala 21:58:@1685.4]
  wire [11:0] _T_3444; // @[FixedPointTypeClass.scala 21:58:@1686.4]
  wire [12:0] _T_3453; // @[FixedPointTypeClass.scala 21:58:@1690.4]
  wire [11:0] _T_3454; // @[FixedPointTypeClass.scala 21:58:@1691.4]
  wire [11:0] _T_3455; // @[FixedPointTypeClass.scala 21:58:@1692.4]
  wire [12:0] _T_3456; // @[FixedPointTypeClass.scala 21:58:@1693.4]
  wire [11:0] _T_3457; // @[FixedPointTypeClass.scala 21:58:@1694.4]
  wire [11:0] _T_3458; // @[FixedPointTypeClass.scala 21:58:@1695.4]
  wire [12:0] _T_3467; // @[FixedPointTypeClass.scala 21:58:@1699.4]
  wire [11:0] _T_3468; // @[FixedPointTypeClass.scala 21:58:@1700.4]
  wire [11:0] _T_3469; // @[FixedPointTypeClass.scala 21:58:@1701.4]
  wire [12:0] _T_3470; // @[FixedPointTypeClass.scala 21:58:@1702.4]
  wire [11:0] _T_3471; // @[FixedPointTypeClass.scala 21:58:@1703.4]
  wire [11:0] _T_3472; // @[FixedPointTypeClass.scala 21:58:@1704.4]
  wire [12:0] _T_3481; // @[FixedPointTypeClass.scala 21:58:@1708.4]
  wire [11:0] _T_3482; // @[FixedPointTypeClass.scala 21:58:@1709.4]
  wire [11:0] _T_3483; // @[FixedPointTypeClass.scala 21:58:@1710.4]
  wire [12:0] _T_3484; // @[FixedPointTypeClass.scala 21:58:@1711.4]
  wire [11:0] _T_3485; // @[FixedPointTypeClass.scala 21:58:@1712.4]
  wire [11:0] _T_3486; // @[FixedPointTypeClass.scala 21:58:@1713.4]
  wire [12:0] _T_3495; // @[FixedPointTypeClass.scala 21:58:@1717.4]
  wire [11:0] _T_3496; // @[FixedPointTypeClass.scala 21:58:@1718.4]
  wire [11:0] _T_3497; // @[FixedPointTypeClass.scala 21:58:@1719.4]
  wire [12:0] _T_3498; // @[FixedPointTypeClass.scala 21:58:@1720.4]
  wire [11:0] _T_3499; // @[FixedPointTypeClass.scala 21:58:@1721.4]
  wire [11:0] _T_3500; // @[FixedPointTypeClass.scala 21:58:@1722.4]
  wire [12:0] _T_3509; // @[FixedPointTypeClass.scala 21:58:@1726.4]
  wire [11:0] _T_3510; // @[FixedPointTypeClass.scala 21:58:@1727.4]
  wire [11:0] _T_3511; // @[FixedPointTypeClass.scala 21:58:@1728.4]
  wire [12:0] _T_3512; // @[FixedPointTypeClass.scala 21:58:@1729.4]
  wire [11:0] _T_3513; // @[FixedPointTypeClass.scala 21:58:@1730.4]
  wire [11:0] _T_3514; // @[FixedPointTypeClass.scala 21:58:@1731.4]
  wire [12:0] _T_3523; // @[FixedPointTypeClass.scala 21:58:@1735.4]
  wire [11:0] _T_3524; // @[FixedPointTypeClass.scala 21:58:@1736.4]
  wire [11:0] _T_3525; // @[FixedPointTypeClass.scala 21:58:@1737.4]
  wire [12:0] _T_3526; // @[FixedPointTypeClass.scala 21:58:@1738.4]
  wire [11:0] _T_3527; // @[FixedPointTypeClass.scala 21:58:@1739.4]
  wire [11:0] _T_3528; // @[FixedPointTypeClass.scala 21:58:@1740.4]
  wire [12:0] _T_3537; // @[FixedPointTypeClass.scala 21:58:@1744.4]
  wire [11:0] _T_3538; // @[FixedPointTypeClass.scala 21:58:@1745.4]
  wire [11:0] _T_3539; // @[FixedPointTypeClass.scala 21:58:@1746.4]
  wire [12:0] _T_3540; // @[FixedPointTypeClass.scala 21:58:@1747.4]
  wire [11:0] _T_3541; // @[FixedPointTypeClass.scala 21:58:@1748.4]
  wire [11:0] _T_3542; // @[FixedPointTypeClass.scala 21:58:@1749.4]
  wire [12:0] _T_3551; // @[FixedPointTypeClass.scala 21:58:@1753.4]
  wire [11:0] _T_3552; // @[FixedPointTypeClass.scala 21:58:@1754.4]
  wire [11:0] _T_3553; // @[FixedPointTypeClass.scala 21:58:@1755.4]
  wire [12:0] _T_3554; // @[FixedPointTypeClass.scala 21:58:@1756.4]
  wire [11:0] _T_3555; // @[FixedPointTypeClass.scala 21:58:@1757.4]
  wire [11:0] _T_3556; // @[FixedPointTypeClass.scala 21:58:@1758.4]
  wire [12:0] _T_3565; // @[FixedPointTypeClass.scala 21:58:@1762.4]
  wire [11:0] _T_3566; // @[FixedPointTypeClass.scala 21:58:@1763.4]
  wire [11:0] _T_3567; // @[FixedPointTypeClass.scala 21:58:@1764.4]
  wire [12:0] _T_3568; // @[FixedPointTypeClass.scala 21:58:@1765.4]
  wire [11:0] _T_3569; // @[FixedPointTypeClass.scala 21:58:@1766.4]
  wire [11:0] _T_3570; // @[FixedPointTypeClass.scala 21:58:@1767.4]
  wire [12:0] _T_3579; // @[FixedPointTypeClass.scala 21:58:@1771.4]
  wire [11:0] _T_3580; // @[FixedPointTypeClass.scala 21:58:@1772.4]
  wire [11:0] _T_3581; // @[FixedPointTypeClass.scala 21:58:@1773.4]
  wire [12:0] _T_3582; // @[FixedPointTypeClass.scala 21:58:@1774.4]
  wire [11:0] _T_3583; // @[FixedPointTypeClass.scala 21:58:@1775.4]
  wire [11:0] _T_3584; // @[FixedPointTypeClass.scala 21:58:@1776.4]
  wire [12:0] _T_3593; // @[FixedPointTypeClass.scala 21:58:@1780.4]
  wire [11:0] _T_3594; // @[FixedPointTypeClass.scala 21:58:@1781.4]
  wire [11:0] _T_3595; // @[FixedPointTypeClass.scala 21:58:@1782.4]
  wire [12:0] _T_3596; // @[FixedPointTypeClass.scala 21:58:@1783.4]
  wire [11:0] _T_3597; // @[FixedPointTypeClass.scala 21:58:@1784.4]
  wire [11:0] _T_3598; // @[FixedPointTypeClass.scala 21:58:@1785.4]
  wire [12:0] _T_3607; // @[FixedPointTypeClass.scala 21:58:@1789.4]
  wire [11:0] _T_3608; // @[FixedPointTypeClass.scala 21:58:@1790.4]
  wire [11:0] _T_3609; // @[FixedPointTypeClass.scala 21:58:@1791.4]
  wire [12:0] _T_3610; // @[FixedPointTypeClass.scala 21:58:@1792.4]
  wire [11:0] _T_3611; // @[FixedPointTypeClass.scala 21:58:@1793.4]
  wire [11:0] _T_3612; // @[FixedPointTypeClass.scala 21:58:@1794.4]
  wire [12:0] _T_3621; // @[FixedPointTypeClass.scala 21:58:@1798.4]
  wire [11:0] _T_3622; // @[FixedPointTypeClass.scala 21:58:@1799.4]
  wire [11:0] _T_3623; // @[FixedPointTypeClass.scala 21:58:@1800.4]
  wire [12:0] _T_3624; // @[FixedPointTypeClass.scala 21:58:@1801.4]
  wire [11:0] _T_3625; // @[FixedPointTypeClass.scala 21:58:@1802.4]
  wire [11:0] _T_3626; // @[FixedPointTypeClass.scala 21:58:@1803.4]
  wire [12:0] _T_3635; // @[FixedPointTypeClass.scala 21:58:@1807.4]
  wire [11:0] _T_3636; // @[FixedPointTypeClass.scala 21:58:@1808.4]
  wire [11:0] _T_3637; // @[FixedPointTypeClass.scala 21:58:@1809.4]
  wire [12:0] _T_3638; // @[FixedPointTypeClass.scala 21:58:@1810.4]
  wire [11:0] _T_3639; // @[FixedPointTypeClass.scala 21:58:@1811.4]
  wire [11:0] _T_3640; // @[FixedPointTypeClass.scala 21:58:@1812.4]
  wire [12:0] _T_3649; // @[FixedPointTypeClass.scala 21:58:@1816.4]
  wire [11:0] _T_3650; // @[FixedPointTypeClass.scala 21:58:@1817.4]
  wire [11:0] _T_3651; // @[FixedPointTypeClass.scala 21:58:@1818.4]
  wire [12:0] _T_3652; // @[FixedPointTypeClass.scala 21:58:@1819.4]
  wire [11:0] _T_3653; // @[FixedPointTypeClass.scala 21:58:@1820.4]
  wire [11:0] _T_3654; // @[FixedPointTypeClass.scala 21:58:@1821.4]
  wire [12:0] _T_3663; // @[FixedPointTypeClass.scala 21:58:@1825.4]
  wire [11:0] _T_3664; // @[FixedPointTypeClass.scala 21:58:@1826.4]
  wire [11:0] _T_3665; // @[FixedPointTypeClass.scala 21:58:@1827.4]
  wire [12:0] _T_3666; // @[FixedPointTypeClass.scala 21:58:@1828.4]
  wire [11:0] _T_3667; // @[FixedPointTypeClass.scala 21:58:@1829.4]
  wire [11:0] _T_3668; // @[FixedPointTypeClass.scala 21:58:@1830.4]
  wire [12:0] _T_3677; // @[FixedPointTypeClass.scala 21:58:@1834.4]
  wire [11:0] _T_3678; // @[FixedPointTypeClass.scala 21:58:@1835.4]
  wire [11:0] _T_3679; // @[FixedPointTypeClass.scala 21:58:@1836.4]
  wire [12:0] _T_3680; // @[FixedPointTypeClass.scala 21:58:@1837.4]
  wire [11:0] _T_3681; // @[FixedPointTypeClass.scala 21:58:@1838.4]
  wire [11:0] _T_3682; // @[FixedPointTypeClass.scala 21:58:@1839.4]
  wire [12:0] _T_3691; // @[FixedPointTypeClass.scala 21:58:@1843.4]
  wire [11:0] _T_3692; // @[FixedPointTypeClass.scala 21:58:@1844.4]
  wire [11:0] _T_3693; // @[FixedPointTypeClass.scala 21:58:@1845.4]
  wire [12:0] _T_3694; // @[FixedPointTypeClass.scala 21:58:@1846.4]
  wire [11:0] _T_3695; // @[FixedPointTypeClass.scala 21:58:@1847.4]
  wire [11:0] _T_3696; // @[FixedPointTypeClass.scala 21:58:@1848.4]
  wire [12:0] _T_3705; // @[FixedPointTypeClass.scala 21:58:@1852.4]
  wire [11:0] _T_3706; // @[FixedPointTypeClass.scala 21:58:@1853.4]
  wire [11:0] _T_3707; // @[FixedPointTypeClass.scala 21:58:@1854.4]
  wire [12:0] _T_3708; // @[FixedPointTypeClass.scala 21:58:@1855.4]
  wire [11:0] _T_3709; // @[FixedPointTypeClass.scala 21:58:@1856.4]
  wire [11:0] _T_3710; // @[FixedPointTypeClass.scala 21:58:@1857.4]
  wire [12:0] _T_3719; // @[FixedPointTypeClass.scala 21:58:@1861.4]
  wire [11:0] _T_3720; // @[FixedPointTypeClass.scala 21:58:@1862.4]
  wire [11:0] _T_3721; // @[FixedPointTypeClass.scala 21:58:@1863.4]
  wire [12:0] _T_3722; // @[FixedPointTypeClass.scala 21:58:@1864.4]
  wire [11:0] _T_3723; // @[FixedPointTypeClass.scala 21:58:@1865.4]
  wire [11:0] _T_3724; // @[FixedPointTypeClass.scala 21:58:@1866.4]
  wire [12:0] _T_3733; // @[FixedPointTypeClass.scala 21:58:@1870.4]
  wire [11:0] _T_3734; // @[FixedPointTypeClass.scala 21:58:@1871.4]
  wire [11:0] _T_3735; // @[FixedPointTypeClass.scala 21:58:@1872.4]
  wire [12:0] _T_3736; // @[FixedPointTypeClass.scala 21:58:@1873.4]
  wire [11:0] _T_3737; // @[FixedPointTypeClass.scala 21:58:@1874.4]
  wire [11:0] _T_3738; // @[FixedPointTypeClass.scala 21:58:@1875.4]
  wire [12:0] _T_3747; // @[FixedPointTypeClass.scala 21:58:@1879.4]
  wire [11:0] _T_3748; // @[FixedPointTypeClass.scala 21:58:@1880.4]
  wire [11:0] _T_3749; // @[FixedPointTypeClass.scala 21:58:@1881.4]
  wire [12:0] _T_3750; // @[FixedPointTypeClass.scala 21:58:@1882.4]
  wire [11:0] _T_3751; // @[FixedPointTypeClass.scala 21:58:@1883.4]
  wire [11:0] _T_3752; // @[FixedPointTypeClass.scala 21:58:@1884.4]
  wire [12:0] _T_3761; // @[FixedPointTypeClass.scala 21:58:@1888.4]
  wire [11:0] _T_3762; // @[FixedPointTypeClass.scala 21:58:@1889.4]
  wire [11:0] _T_3763; // @[FixedPointTypeClass.scala 21:58:@1890.4]
  wire [12:0] _T_3764; // @[FixedPointTypeClass.scala 21:58:@1891.4]
  wire [11:0] _T_3765; // @[FixedPointTypeClass.scala 21:58:@1892.4]
  wire [11:0] _T_3766; // @[FixedPointTypeClass.scala 21:58:@1893.4]
  wire [12:0] _T_3775; // @[FixedPointTypeClass.scala 21:58:@1897.4]
  wire [11:0] _T_3776; // @[FixedPointTypeClass.scala 21:58:@1898.4]
  wire [11:0] _T_3777; // @[FixedPointTypeClass.scala 21:58:@1899.4]
  wire [12:0] _T_3778; // @[FixedPointTypeClass.scala 21:58:@1900.4]
  wire [11:0] _T_3779; // @[FixedPointTypeClass.scala 21:58:@1901.4]
  wire [11:0] _T_3780; // @[FixedPointTypeClass.scala 21:58:@1902.4]
  wire [12:0] _T_3789; // @[FixedPointTypeClass.scala 21:58:@1906.4]
  wire [11:0] _T_3790; // @[FixedPointTypeClass.scala 21:58:@1907.4]
  wire [11:0] _T_3791; // @[FixedPointTypeClass.scala 21:58:@1908.4]
  wire [12:0] _T_3792; // @[FixedPointTypeClass.scala 21:58:@1909.4]
  wire [11:0] _T_3793; // @[FixedPointTypeClass.scala 21:58:@1910.4]
  wire [11:0] _T_3794; // @[FixedPointTypeClass.scala 21:58:@1911.4]
  wire [12:0] _T_3803; // @[FixedPointTypeClass.scala 21:58:@1915.4]
  wire [11:0] _T_3804; // @[FixedPointTypeClass.scala 21:58:@1916.4]
  wire [11:0] _T_3805; // @[FixedPointTypeClass.scala 21:58:@1917.4]
  wire [12:0] _T_3806; // @[FixedPointTypeClass.scala 21:58:@1918.4]
  wire [11:0] _T_3807; // @[FixedPointTypeClass.scala 21:58:@1919.4]
  wire [11:0] _T_3808; // @[FixedPointTypeClass.scala 21:58:@1920.4]
  wire [12:0] _T_3817; // @[FixedPointTypeClass.scala 21:58:@1924.4]
  wire [11:0] _T_3818; // @[FixedPointTypeClass.scala 21:58:@1925.4]
  wire [11:0] _T_3819; // @[FixedPointTypeClass.scala 21:58:@1926.4]
  wire [12:0] _T_3820; // @[FixedPointTypeClass.scala 21:58:@1927.4]
  wire [11:0] _T_3821; // @[FixedPointTypeClass.scala 21:58:@1928.4]
  wire [11:0] _T_3822; // @[FixedPointTypeClass.scala 21:58:@1929.4]
  wire [12:0] _T_3831; // @[FixedPointTypeClass.scala 21:58:@1933.4]
  wire [11:0] _T_3832; // @[FixedPointTypeClass.scala 21:58:@1934.4]
  wire [11:0] _T_3833; // @[FixedPointTypeClass.scala 21:58:@1935.4]
  wire [12:0] _T_3834; // @[FixedPointTypeClass.scala 21:58:@1936.4]
  wire [11:0] _T_3835; // @[FixedPointTypeClass.scala 21:58:@1937.4]
  wire [11:0] _T_3836; // @[FixedPointTypeClass.scala 21:58:@1938.4]
  wire [12:0] _T_3845; // @[FixedPointTypeClass.scala 21:58:@1942.4]
  wire [11:0] _T_3846; // @[FixedPointTypeClass.scala 21:58:@1943.4]
  wire [11:0] _T_3847; // @[FixedPointTypeClass.scala 21:58:@1944.4]
  wire [12:0] _T_3848; // @[FixedPointTypeClass.scala 21:58:@1945.4]
  wire [11:0] _T_3849; // @[FixedPointTypeClass.scala 21:58:@1946.4]
  wire [11:0] _T_3850; // @[FixedPointTypeClass.scala 21:58:@1947.4]
  wire [12:0] _T_3859; // @[FixedPointTypeClass.scala 21:58:@1951.4]
  wire [11:0] _T_3860; // @[FixedPointTypeClass.scala 21:58:@1952.4]
  wire [11:0] _T_3861; // @[FixedPointTypeClass.scala 21:58:@1953.4]
  wire [12:0] _T_3862; // @[FixedPointTypeClass.scala 21:58:@1954.4]
  wire [11:0] _T_3863; // @[FixedPointTypeClass.scala 21:58:@1955.4]
  wire [11:0] _T_3864; // @[FixedPointTypeClass.scala 21:58:@1956.4]
  wire [12:0] _T_3873; // @[FixedPointTypeClass.scala 21:58:@1960.4]
  wire [11:0] _T_3874; // @[FixedPointTypeClass.scala 21:58:@1961.4]
  wire [11:0] _T_3875; // @[FixedPointTypeClass.scala 21:58:@1962.4]
  wire [12:0] _T_3876; // @[FixedPointTypeClass.scala 21:58:@1963.4]
  wire [11:0] _T_3877; // @[FixedPointTypeClass.scala 21:58:@1964.4]
  wire [11:0] _T_3878; // @[FixedPointTypeClass.scala 21:58:@1965.4]
  wire [12:0] _T_3887; // @[FixedPointTypeClass.scala 21:58:@1969.4]
  wire [11:0] _T_3888; // @[FixedPointTypeClass.scala 21:58:@1970.4]
  wire [11:0] _T_3889; // @[FixedPointTypeClass.scala 21:58:@1971.4]
  wire [12:0] _T_3890; // @[FixedPointTypeClass.scala 21:58:@1972.4]
  wire [11:0] _T_3891; // @[FixedPointTypeClass.scala 21:58:@1973.4]
  wire [11:0] _T_3892; // @[FixedPointTypeClass.scala 21:58:@1974.4]
  wire [12:0] _T_3901; // @[FixedPointTypeClass.scala 21:58:@1978.4]
  wire [11:0] _T_3902; // @[FixedPointTypeClass.scala 21:58:@1979.4]
  wire [11:0] _T_3903; // @[FixedPointTypeClass.scala 21:58:@1980.4]
  wire [12:0] _T_3904; // @[FixedPointTypeClass.scala 21:58:@1981.4]
  wire [11:0] _T_3905; // @[FixedPointTypeClass.scala 21:58:@1982.4]
  wire [11:0] _T_3906; // @[FixedPointTypeClass.scala 21:58:@1983.4]
  wire [12:0] _T_3915; // @[FixedPointTypeClass.scala 21:58:@1987.4]
  wire [11:0] _T_3916; // @[FixedPointTypeClass.scala 21:58:@1988.4]
  wire [11:0] _T_3917; // @[FixedPointTypeClass.scala 21:58:@1989.4]
  wire [12:0] _T_3918; // @[FixedPointTypeClass.scala 21:58:@1990.4]
  wire [11:0] _T_3919; // @[FixedPointTypeClass.scala 21:58:@1991.4]
  wire [11:0] _T_3920; // @[FixedPointTypeClass.scala 21:58:@1992.4]
  wire [12:0] _T_3929; // @[FixedPointTypeClass.scala 21:58:@1996.4]
  wire [11:0] _T_3930; // @[FixedPointTypeClass.scala 21:58:@1997.4]
  wire [11:0] _T_3931; // @[FixedPointTypeClass.scala 21:58:@1998.4]
  wire [12:0] _T_3932; // @[FixedPointTypeClass.scala 21:58:@1999.4]
  wire [11:0] _T_3933; // @[FixedPointTypeClass.scala 21:58:@2000.4]
  wire [11:0] _T_3934; // @[FixedPointTypeClass.scala 21:58:@2001.4]
  wire [12:0] _T_3943; // @[FixedPointTypeClass.scala 21:58:@2005.4]
  wire [11:0] _T_3944; // @[FixedPointTypeClass.scala 21:58:@2006.4]
  wire [11:0] _T_3945; // @[FixedPointTypeClass.scala 21:58:@2007.4]
  wire [12:0] _T_3946; // @[FixedPointTypeClass.scala 21:58:@2008.4]
  wire [11:0] _T_3947; // @[FixedPointTypeClass.scala 21:58:@2009.4]
  wire [11:0] _T_3948; // @[FixedPointTypeClass.scala 21:58:@2010.4]
  wire [12:0] _T_3957; // @[FixedPointTypeClass.scala 21:58:@2014.4]
  wire [11:0] _T_3958; // @[FixedPointTypeClass.scala 21:58:@2015.4]
  wire [11:0] _T_3959; // @[FixedPointTypeClass.scala 21:58:@2016.4]
  wire [12:0] _T_3960; // @[FixedPointTypeClass.scala 21:58:@2017.4]
  wire [11:0] _T_3961; // @[FixedPointTypeClass.scala 21:58:@2018.4]
  wire [11:0] _T_3962; // @[FixedPointTypeClass.scala 21:58:@2019.4]
  wire [12:0] _T_3971; // @[FixedPointTypeClass.scala 21:58:@2023.4]
  wire [11:0] _T_3972; // @[FixedPointTypeClass.scala 21:58:@2024.4]
  wire [11:0] _T_3973; // @[FixedPointTypeClass.scala 21:58:@2025.4]
  wire [12:0] _T_3974; // @[FixedPointTypeClass.scala 21:58:@2026.4]
  wire [11:0] _T_3975; // @[FixedPointTypeClass.scala 21:58:@2027.4]
  wire [11:0] _T_3976; // @[FixedPointTypeClass.scala 21:58:@2028.4]
  wire [12:0] _T_3985; // @[FixedPointTypeClass.scala 21:58:@2032.4]
  wire [11:0] _T_3986; // @[FixedPointTypeClass.scala 21:58:@2033.4]
  wire [11:0] _T_3987; // @[FixedPointTypeClass.scala 21:58:@2034.4]
  wire [12:0] _T_3988; // @[FixedPointTypeClass.scala 21:58:@2035.4]
  wire [11:0] _T_3989; // @[FixedPointTypeClass.scala 21:58:@2036.4]
  wire [11:0] _T_3990; // @[FixedPointTypeClass.scala 21:58:@2037.4]
  wire [12:0] _T_3999; // @[FixedPointTypeClass.scala 21:58:@2041.4]
  wire [11:0] _T_4000; // @[FixedPointTypeClass.scala 21:58:@2042.4]
  wire [11:0] _T_4001; // @[FixedPointTypeClass.scala 21:58:@2043.4]
  wire [12:0] _T_4002; // @[FixedPointTypeClass.scala 21:58:@2044.4]
  wire [11:0] _T_4003; // @[FixedPointTypeClass.scala 21:58:@2045.4]
  wire [11:0] _T_4004; // @[FixedPointTypeClass.scala 21:58:@2046.4]
  wire [12:0] _T_4013; // @[FixedPointTypeClass.scala 21:58:@2050.4]
  wire [11:0] _T_4014; // @[FixedPointTypeClass.scala 21:58:@2051.4]
  wire [11:0] _T_4015; // @[FixedPointTypeClass.scala 21:58:@2052.4]
  wire [12:0] _T_4016; // @[FixedPointTypeClass.scala 21:58:@2053.4]
  wire [11:0] _T_4017; // @[FixedPointTypeClass.scala 21:58:@2054.4]
  wire [11:0] _T_4018; // @[FixedPointTypeClass.scala 21:58:@2055.4]
  wire [12:0] _T_4027; // @[FixedPointTypeClass.scala 21:58:@2059.4]
  wire [11:0] _T_4028; // @[FixedPointTypeClass.scala 21:58:@2060.4]
  wire [11:0] _T_4029; // @[FixedPointTypeClass.scala 21:58:@2061.4]
  wire [12:0] _T_4030; // @[FixedPointTypeClass.scala 21:58:@2062.4]
  wire [11:0] _T_4031; // @[FixedPointTypeClass.scala 21:58:@2063.4]
  wire [11:0] _T_4032; // @[FixedPointTypeClass.scala 21:58:@2064.4]
  wire [12:0] _T_4041; // @[FixedPointTypeClass.scala 21:58:@2068.4]
  wire [11:0] _T_4042; // @[FixedPointTypeClass.scala 21:58:@2069.4]
  wire [11:0] _T_4043; // @[FixedPointTypeClass.scala 21:58:@2070.4]
  wire [12:0] _T_4044; // @[FixedPointTypeClass.scala 21:58:@2071.4]
  wire [11:0] _T_4045; // @[FixedPointTypeClass.scala 21:58:@2072.4]
  wire [11:0] _T_4046; // @[FixedPointTypeClass.scala 21:58:@2073.4]
  wire [12:0] _T_4055; // @[FixedPointTypeClass.scala 21:58:@2077.4]
  wire [11:0] _T_4056; // @[FixedPointTypeClass.scala 21:58:@2078.4]
  wire [11:0] _T_4057; // @[FixedPointTypeClass.scala 21:58:@2079.4]
  wire [12:0] _T_4058; // @[FixedPointTypeClass.scala 21:58:@2080.4]
  wire [11:0] _T_4059; // @[FixedPointTypeClass.scala 21:58:@2081.4]
  wire [11:0] _T_4060; // @[FixedPointTypeClass.scala 21:58:@2082.4]
  wire [12:0] _T_4069; // @[FixedPointTypeClass.scala 21:58:@2086.4]
  wire [11:0] _T_4070; // @[FixedPointTypeClass.scala 21:58:@2087.4]
  wire [11:0] _T_4071; // @[FixedPointTypeClass.scala 21:58:@2088.4]
  wire [12:0] _T_4072; // @[FixedPointTypeClass.scala 21:58:@2089.4]
  wire [11:0] _T_4073; // @[FixedPointTypeClass.scala 21:58:@2090.4]
  wire [11:0] _T_4074; // @[FixedPointTypeClass.scala 21:58:@2091.4]
  wire [12:0] _T_4083; // @[FixedPointTypeClass.scala 21:58:@2095.4]
  wire [11:0] _T_4084; // @[FixedPointTypeClass.scala 21:58:@2096.4]
  wire [11:0] _T_4085; // @[FixedPointTypeClass.scala 21:58:@2097.4]
  wire [12:0] _T_4086; // @[FixedPointTypeClass.scala 21:58:@2098.4]
  wire [11:0] _T_4087; // @[FixedPointTypeClass.scala 21:58:@2099.4]
  wire [11:0] _T_4088; // @[FixedPointTypeClass.scala 21:58:@2100.4]
  wire [12:0] _T_4097; // @[FixedPointTypeClass.scala 21:58:@2104.4]
  wire [11:0] _T_4098; // @[FixedPointTypeClass.scala 21:58:@2105.4]
  wire [11:0] _T_4099; // @[FixedPointTypeClass.scala 21:58:@2106.4]
  wire [12:0] _T_4100; // @[FixedPointTypeClass.scala 21:58:@2107.4]
  wire [11:0] _T_4101; // @[FixedPointTypeClass.scala 21:58:@2108.4]
  wire [11:0] _T_4102; // @[FixedPointTypeClass.scala 21:58:@2109.4]
  wire [12:0] _T_4111; // @[FixedPointTypeClass.scala 21:58:@2113.4]
  wire [11:0] _T_4112; // @[FixedPointTypeClass.scala 21:58:@2114.4]
  wire [11:0] _T_4113; // @[FixedPointTypeClass.scala 21:58:@2115.4]
  wire [12:0] _T_4114; // @[FixedPointTypeClass.scala 21:58:@2116.4]
  wire [11:0] _T_4115; // @[FixedPointTypeClass.scala 21:58:@2117.4]
  wire [11:0] _T_4116; // @[FixedPointTypeClass.scala 21:58:@2118.4]
  wire [12:0] _T_4125; // @[FixedPointTypeClass.scala 21:58:@2122.4]
  wire [11:0] _T_4126; // @[FixedPointTypeClass.scala 21:58:@2123.4]
  wire [11:0] _T_4127; // @[FixedPointTypeClass.scala 21:58:@2124.4]
  wire [12:0] _T_4128; // @[FixedPointTypeClass.scala 21:58:@2125.4]
  wire [11:0] _T_4129; // @[FixedPointTypeClass.scala 21:58:@2126.4]
  wire [11:0] _T_4130; // @[FixedPointTypeClass.scala 21:58:@2127.4]
  wire [12:0] _T_4139; // @[FixedPointTypeClass.scala 21:58:@2131.4]
  wire [11:0] _T_4140; // @[FixedPointTypeClass.scala 21:58:@2132.4]
  wire [11:0] _T_4141; // @[FixedPointTypeClass.scala 21:58:@2133.4]
  wire [12:0] _T_4142; // @[FixedPointTypeClass.scala 21:58:@2134.4]
  wire [11:0] _T_4143; // @[FixedPointTypeClass.scala 21:58:@2135.4]
  wire [11:0] _T_4144; // @[FixedPointTypeClass.scala 21:58:@2136.4]
  wire [12:0] _T_4153; // @[FixedPointTypeClass.scala 21:58:@2140.4]
  wire [11:0] _T_4154; // @[FixedPointTypeClass.scala 21:58:@2141.4]
  wire [11:0] _T_4155; // @[FixedPointTypeClass.scala 21:58:@2142.4]
  wire [12:0] _T_4156; // @[FixedPointTypeClass.scala 21:58:@2143.4]
  wire [11:0] _T_4157; // @[FixedPointTypeClass.scala 21:58:@2144.4]
  wire [11:0] _T_4158; // @[FixedPointTypeClass.scala 21:58:@2145.4]
  wire [12:0] _T_4167; // @[FixedPointTypeClass.scala 21:58:@2149.4]
  wire [11:0] _T_4168; // @[FixedPointTypeClass.scala 21:58:@2150.4]
  wire [11:0] _T_4169; // @[FixedPointTypeClass.scala 21:58:@2151.4]
  wire [12:0] _T_4170; // @[FixedPointTypeClass.scala 21:58:@2152.4]
  wire [11:0] _T_4171; // @[FixedPointTypeClass.scala 21:58:@2153.4]
  wire [11:0] _T_4172; // @[FixedPointTypeClass.scala 21:58:@2154.4]
  wire [12:0] _T_4181; // @[FixedPointTypeClass.scala 21:58:@2158.4]
  wire [11:0] _T_4182; // @[FixedPointTypeClass.scala 21:58:@2159.4]
  wire [11:0] _T_4183; // @[FixedPointTypeClass.scala 21:58:@2160.4]
  wire [12:0] _T_4184; // @[FixedPointTypeClass.scala 21:58:@2161.4]
  wire [11:0] _T_4185; // @[FixedPointTypeClass.scala 21:58:@2162.4]
  wire [11:0] _T_4186; // @[FixedPointTypeClass.scala 21:58:@2163.4]
  wire [12:0] _T_4195; // @[FixedPointTypeClass.scala 21:58:@2167.4]
  wire [11:0] _T_4196; // @[FixedPointTypeClass.scala 21:58:@2168.4]
  wire [11:0] _T_4197; // @[FixedPointTypeClass.scala 21:58:@2169.4]
  wire [12:0] _T_4198; // @[FixedPointTypeClass.scala 21:58:@2170.4]
  wire [11:0] _T_4199; // @[FixedPointTypeClass.scala 21:58:@2171.4]
  wire [11:0] _T_4200; // @[FixedPointTypeClass.scala 21:58:@2172.4]
  wire [12:0] _T_4209; // @[FixedPointTypeClass.scala 21:58:@2176.4]
  wire [11:0] _T_4210; // @[FixedPointTypeClass.scala 21:58:@2177.4]
  wire [11:0] _T_4211; // @[FixedPointTypeClass.scala 21:58:@2178.4]
  wire [12:0] _T_4212; // @[FixedPointTypeClass.scala 21:58:@2179.4]
  wire [11:0] _T_4213; // @[FixedPointTypeClass.scala 21:58:@2180.4]
  wire [11:0] _T_4214; // @[FixedPointTypeClass.scala 21:58:@2181.4]
  wire [12:0] _T_4223; // @[FixedPointTypeClass.scala 21:58:@2185.4]
  wire [11:0] _T_4224; // @[FixedPointTypeClass.scala 21:58:@2186.4]
  wire [11:0] _T_4225; // @[FixedPointTypeClass.scala 21:58:@2187.4]
  wire [12:0] _T_4226; // @[FixedPointTypeClass.scala 21:58:@2188.4]
  wire [11:0] _T_4227; // @[FixedPointTypeClass.scala 21:58:@2189.4]
  wire [11:0] _T_4228; // @[FixedPointTypeClass.scala 21:58:@2190.4]
  wire [12:0] _T_4237; // @[FixedPointTypeClass.scala 21:58:@2194.4]
  wire [11:0] _T_4238; // @[FixedPointTypeClass.scala 21:58:@2195.4]
  wire [11:0] _T_4239; // @[FixedPointTypeClass.scala 21:58:@2196.4]
  wire [12:0] _T_4240; // @[FixedPointTypeClass.scala 21:58:@2197.4]
  wire [11:0] _T_4241; // @[FixedPointTypeClass.scala 21:58:@2198.4]
  wire [11:0] _T_4242; // @[FixedPointTypeClass.scala 21:58:@2199.4]
  wire [12:0] _T_4251; // @[FixedPointTypeClass.scala 21:58:@2203.4]
  wire [11:0] _T_4252; // @[FixedPointTypeClass.scala 21:58:@2204.4]
  wire [11:0] _T_4253; // @[FixedPointTypeClass.scala 21:58:@2205.4]
  wire [12:0] _T_4254; // @[FixedPointTypeClass.scala 21:58:@2206.4]
  wire [11:0] _T_4255; // @[FixedPointTypeClass.scala 21:58:@2207.4]
  wire [11:0] _T_4256; // @[FixedPointTypeClass.scala 21:58:@2208.4]
  wire [12:0] _T_4265; // @[FixedPointTypeClass.scala 21:58:@2212.4]
  wire [11:0] _T_4266; // @[FixedPointTypeClass.scala 21:58:@2213.4]
  wire [11:0] _T_4267; // @[FixedPointTypeClass.scala 21:58:@2214.4]
  wire [12:0] _T_4268; // @[FixedPointTypeClass.scala 21:58:@2215.4]
  wire [11:0] _T_4269; // @[FixedPointTypeClass.scala 21:58:@2216.4]
  wire [11:0] _T_4270; // @[FixedPointTypeClass.scala 21:58:@2217.4]
  wire [12:0] _T_4279; // @[FixedPointTypeClass.scala 21:58:@2221.4]
  wire [11:0] _T_4280; // @[FixedPointTypeClass.scala 21:58:@2222.4]
  wire [11:0] _T_4281; // @[FixedPointTypeClass.scala 21:58:@2223.4]
  wire [12:0] _T_4282; // @[FixedPointTypeClass.scala 21:58:@2224.4]
  wire [11:0] _T_4283; // @[FixedPointTypeClass.scala 21:58:@2225.4]
  wire [11:0] _T_4284; // @[FixedPointTypeClass.scala 21:58:@2226.4]
  wire [12:0] _T_4293; // @[FixedPointTypeClass.scala 21:58:@2230.4]
  wire [11:0] _T_4294; // @[FixedPointTypeClass.scala 21:58:@2231.4]
  wire [11:0] _T_4295; // @[FixedPointTypeClass.scala 21:58:@2232.4]
  wire [12:0] _T_4296; // @[FixedPointTypeClass.scala 21:58:@2233.4]
  wire [11:0] _T_4297; // @[FixedPointTypeClass.scala 21:58:@2234.4]
  wire [11:0] _T_4298; // @[FixedPointTypeClass.scala 21:58:@2235.4]
  wire [12:0] _T_4307; // @[FixedPointTypeClass.scala 21:58:@2239.4]
  wire [11:0] _T_4308; // @[FixedPointTypeClass.scala 21:58:@2240.4]
  wire [11:0] _T_4309; // @[FixedPointTypeClass.scala 21:58:@2241.4]
  wire [12:0] _T_4310; // @[FixedPointTypeClass.scala 21:58:@2242.4]
  wire [11:0] _T_4311; // @[FixedPointTypeClass.scala 21:58:@2243.4]
  wire [11:0] _T_4312; // @[FixedPointTypeClass.scala 21:58:@2244.4]
  wire [12:0] _T_4321; // @[FixedPointTypeClass.scala 21:58:@2248.4]
  wire [11:0] _T_4322; // @[FixedPointTypeClass.scala 21:58:@2249.4]
  wire [11:0] _T_4323; // @[FixedPointTypeClass.scala 21:58:@2250.4]
  wire [12:0] _T_4324; // @[FixedPointTypeClass.scala 21:58:@2251.4]
  wire [11:0] _T_4325; // @[FixedPointTypeClass.scala 21:58:@2252.4]
  wire [11:0] _T_4326; // @[FixedPointTypeClass.scala 21:58:@2253.4]
  wire [12:0] _T_4335; // @[FixedPointTypeClass.scala 21:58:@2257.4]
  wire [11:0] _T_4336; // @[FixedPointTypeClass.scala 21:58:@2258.4]
  wire [11:0] _T_4337; // @[FixedPointTypeClass.scala 21:58:@2259.4]
  wire [12:0] _T_4338; // @[FixedPointTypeClass.scala 21:58:@2260.4]
  wire [11:0] _T_4339; // @[FixedPointTypeClass.scala 21:58:@2261.4]
  wire [11:0] _T_4340; // @[FixedPointTypeClass.scala 21:58:@2262.4]
  wire [12:0] _T_4349; // @[FixedPointTypeClass.scala 21:58:@2266.4]
  wire [11:0] _T_4350; // @[FixedPointTypeClass.scala 21:58:@2267.4]
  wire [11:0] _T_4351; // @[FixedPointTypeClass.scala 21:58:@2268.4]
  wire [12:0] _T_4352; // @[FixedPointTypeClass.scala 21:58:@2269.4]
  wire [11:0] _T_4353; // @[FixedPointTypeClass.scala 21:58:@2270.4]
  wire [11:0] _T_4354; // @[FixedPointTypeClass.scala 21:58:@2271.4]
  wire [12:0] _T_4363; // @[FixedPointTypeClass.scala 21:58:@2275.4]
  wire [11:0] _T_4364; // @[FixedPointTypeClass.scala 21:58:@2276.4]
  wire [11:0] _T_4365; // @[FixedPointTypeClass.scala 21:58:@2277.4]
  wire [12:0] _T_4366; // @[FixedPointTypeClass.scala 21:58:@2278.4]
  wire [11:0] _T_4367; // @[FixedPointTypeClass.scala 21:58:@2279.4]
  wire [11:0] _T_4368; // @[FixedPointTypeClass.scala 21:58:@2280.4]
  wire [12:0] _T_4377; // @[FixedPointTypeClass.scala 21:58:@2284.4]
  wire [11:0] _T_4378; // @[FixedPointTypeClass.scala 21:58:@2285.4]
  wire [11:0] _T_4379; // @[FixedPointTypeClass.scala 21:58:@2286.4]
  wire [12:0] _T_4380; // @[FixedPointTypeClass.scala 21:58:@2287.4]
  wire [11:0] _T_4381; // @[FixedPointTypeClass.scala 21:58:@2288.4]
  wire [11:0] _T_4382; // @[FixedPointTypeClass.scala 21:58:@2289.4]
  wire [12:0] _T_4391; // @[FixedPointTypeClass.scala 21:58:@2293.4]
  wire [11:0] _T_4392; // @[FixedPointTypeClass.scala 21:58:@2294.4]
  wire [11:0] _T_4393; // @[FixedPointTypeClass.scala 21:58:@2295.4]
  wire [12:0] _T_4394; // @[FixedPointTypeClass.scala 21:58:@2296.4]
  wire [11:0] _T_4395; // @[FixedPointTypeClass.scala 21:58:@2297.4]
  wire [11:0] _T_4396; // @[FixedPointTypeClass.scala 21:58:@2298.4]
  wire [12:0] _T_4405; // @[FixedPointTypeClass.scala 21:58:@2302.4]
  wire [11:0] _T_4406; // @[FixedPointTypeClass.scala 21:58:@2303.4]
  wire [11:0] _T_4407; // @[FixedPointTypeClass.scala 21:58:@2304.4]
  wire [12:0] _T_4408; // @[FixedPointTypeClass.scala 21:58:@2305.4]
  wire [11:0] _T_4409; // @[FixedPointTypeClass.scala 21:58:@2306.4]
  wire [11:0] _T_4410; // @[FixedPointTypeClass.scala 21:58:@2307.4]
  wire [12:0] _T_4419; // @[FixedPointTypeClass.scala 21:58:@2311.4]
  wire [11:0] _T_4420; // @[FixedPointTypeClass.scala 21:58:@2312.4]
  wire [11:0] _T_4421; // @[FixedPointTypeClass.scala 21:58:@2313.4]
  wire [12:0] _T_4422; // @[FixedPointTypeClass.scala 21:58:@2314.4]
  wire [11:0] _T_4423; // @[FixedPointTypeClass.scala 21:58:@2315.4]
  wire [11:0] _T_4424; // @[FixedPointTypeClass.scala 21:58:@2316.4]
  wire [12:0] _T_4433; // @[FixedPointTypeClass.scala 21:58:@2320.4]
  wire [11:0] _T_4434; // @[FixedPointTypeClass.scala 21:58:@2321.4]
  wire [11:0] _T_4435; // @[FixedPointTypeClass.scala 21:58:@2322.4]
  wire [12:0] _T_4436; // @[FixedPointTypeClass.scala 21:58:@2323.4]
  wire [11:0] _T_4437; // @[FixedPointTypeClass.scala 21:58:@2324.4]
  wire [11:0] _T_4438; // @[FixedPointTypeClass.scala 21:58:@2325.4]
  wire [12:0] _T_4447; // @[FixedPointTypeClass.scala 21:58:@2329.4]
  wire [11:0] _T_4448; // @[FixedPointTypeClass.scala 21:58:@2330.4]
  wire [11:0] _T_4449; // @[FixedPointTypeClass.scala 21:58:@2331.4]
  wire [12:0] _T_4450; // @[FixedPointTypeClass.scala 21:58:@2332.4]
  wire [11:0] _T_4451; // @[FixedPointTypeClass.scala 21:58:@2333.4]
  wire [11:0] _T_4452; // @[FixedPointTypeClass.scala 21:58:@2334.4]
  wire [12:0] _T_4461; // @[FixedPointTypeClass.scala 21:58:@2338.4]
  wire [11:0] _T_4462; // @[FixedPointTypeClass.scala 21:58:@2339.4]
  wire [11:0] _T_4463; // @[FixedPointTypeClass.scala 21:58:@2340.4]
  wire [12:0] _T_4464; // @[FixedPointTypeClass.scala 21:58:@2341.4]
  wire [11:0] _T_4465; // @[FixedPointTypeClass.scala 21:58:@2342.4]
  wire [11:0] _T_4466; // @[FixedPointTypeClass.scala 21:58:@2343.4]
  wire [12:0] _T_4475; // @[FixedPointTypeClass.scala 21:58:@2347.4]
  wire [11:0] _T_4476; // @[FixedPointTypeClass.scala 21:58:@2348.4]
  wire [11:0] _T_4477; // @[FixedPointTypeClass.scala 21:58:@2349.4]
  wire [12:0] _T_4478; // @[FixedPointTypeClass.scala 21:58:@2350.4]
  wire [11:0] _T_4479; // @[FixedPointTypeClass.scala 21:58:@2351.4]
  wire [11:0] _T_4480; // @[FixedPointTypeClass.scala 21:58:@2352.4]
  wire [12:0] _T_4489; // @[FixedPointTypeClass.scala 21:58:@2356.4]
  wire [11:0] _T_4490; // @[FixedPointTypeClass.scala 21:58:@2357.4]
  wire [11:0] _T_4491; // @[FixedPointTypeClass.scala 21:58:@2358.4]
  wire [12:0] _T_4492; // @[FixedPointTypeClass.scala 21:58:@2359.4]
  wire [11:0] _T_4493; // @[FixedPointTypeClass.scala 21:58:@2360.4]
  wire [11:0] _T_4494; // @[FixedPointTypeClass.scala 21:58:@2361.4]
  wire [12:0] _T_4503; // @[FixedPointTypeClass.scala 21:58:@2365.4]
  wire [11:0] _T_4504; // @[FixedPointTypeClass.scala 21:58:@2366.4]
  wire [11:0] _T_4505; // @[FixedPointTypeClass.scala 21:58:@2367.4]
  wire [12:0] _T_4506; // @[FixedPointTypeClass.scala 21:58:@2368.4]
  wire [11:0] _T_4507; // @[FixedPointTypeClass.scala 21:58:@2369.4]
  wire [11:0] _T_4508; // @[FixedPointTypeClass.scala 21:58:@2370.4]
  wire [12:0] _T_4517; // @[FixedPointTypeClass.scala 21:58:@2374.4]
  wire [11:0] _T_4518; // @[FixedPointTypeClass.scala 21:58:@2375.4]
  wire [11:0] _T_4519; // @[FixedPointTypeClass.scala 21:58:@2376.4]
  wire [12:0] _T_4520; // @[FixedPointTypeClass.scala 21:58:@2377.4]
  wire [11:0] _T_4521; // @[FixedPointTypeClass.scala 21:58:@2378.4]
  wire [11:0] _T_4522; // @[FixedPointTypeClass.scala 21:58:@2379.4]
  wire [12:0] _T_4531; // @[FixedPointTypeClass.scala 21:58:@2383.4]
  wire [11:0] _T_4532; // @[FixedPointTypeClass.scala 21:58:@2384.4]
  wire [11:0] _T_4533; // @[FixedPointTypeClass.scala 21:58:@2385.4]
  wire [12:0] _T_4534; // @[FixedPointTypeClass.scala 21:58:@2386.4]
  wire [11:0] _T_4535; // @[FixedPointTypeClass.scala 21:58:@2387.4]
  wire [11:0] _T_4536; // @[FixedPointTypeClass.scala 21:58:@2388.4]
  wire [12:0] _T_4545; // @[FixedPointTypeClass.scala 21:58:@2392.4]
  wire [11:0] _T_4546; // @[FixedPointTypeClass.scala 21:58:@2393.4]
  wire [11:0] _T_4547; // @[FixedPointTypeClass.scala 21:58:@2394.4]
  wire [12:0] _T_4548; // @[FixedPointTypeClass.scala 21:58:@2395.4]
  wire [11:0] _T_4549; // @[FixedPointTypeClass.scala 21:58:@2396.4]
  wire [11:0] _T_4550; // @[FixedPointTypeClass.scala 21:58:@2397.4]
  wire [12:0] _T_4559; // @[FixedPointTypeClass.scala 21:58:@2401.4]
  wire [11:0] _T_4560; // @[FixedPointTypeClass.scala 21:58:@2402.4]
  wire [11:0] _T_4561; // @[FixedPointTypeClass.scala 21:58:@2403.4]
  wire [12:0] _T_4562; // @[FixedPointTypeClass.scala 21:58:@2404.4]
  wire [11:0] _T_4563; // @[FixedPointTypeClass.scala 21:58:@2405.4]
  wire [11:0] _T_4564; // @[FixedPointTypeClass.scala 21:58:@2406.4]
  wire [12:0] _T_4573; // @[FixedPointTypeClass.scala 21:58:@2410.4]
  wire [11:0] _T_4574; // @[FixedPointTypeClass.scala 21:58:@2411.4]
  wire [11:0] _T_4575; // @[FixedPointTypeClass.scala 21:58:@2412.4]
  wire [12:0] _T_4576; // @[FixedPointTypeClass.scala 21:58:@2413.4]
  wire [11:0] _T_4577; // @[FixedPointTypeClass.scala 21:58:@2414.4]
  wire [11:0] _T_4578; // @[FixedPointTypeClass.scala 21:58:@2415.4]
  wire [12:0] _T_4587; // @[FixedPointTypeClass.scala 21:58:@2419.4]
  wire [11:0] _T_4588; // @[FixedPointTypeClass.scala 21:58:@2420.4]
  wire [11:0] _T_4589; // @[FixedPointTypeClass.scala 21:58:@2421.4]
  wire [12:0] _T_4590; // @[FixedPointTypeClass.scala 21:58:@2422.4]
  wire [11:0] _T_4591; // @[FixedPointTypeClass.scala 21:58:@2423.4]
  wire [11:0] _T_4592; // @[FixedPointTypeClass.scala 21:58:@2424.4]
  wire [12:0] _T_4601; // @[FixedPointTypeClass.scala 21:58:@2428.4]
  wire [11:0] _T_4602; // @[FixedPointTypeClass.scala 21:58:@2429.4]
  wire [11:0] _T_4603; // @[FixedPointTypeClass.scala 21:58:@2430.4]
  wire [12:0] _T_4604; // @[FixedPointTypeClass.scala 21:58:@2431.4]
  wire [11:0] _T_4605; // @[FixedPointTypeClass.scala 21:58:@2432.4]
  wire [11:0] _T_4606; // @[FixedPointTypeClass.scala 21:58:@2433.4]
  wire [12:0] _T_4615; // @[FixedPointTypeClass.scala 21:58:@2437.4]
  wire [11:0] _T_4616; // @[FixedPointTypeClass.scala 21:58:@2438.4]
  wire [11:0] _T_4617; // @[FixedPointTypeClass.scala 21:58:@2439.4]
  wire [12:0] _T_4618; // @[FixedPointTypeClass.scala 21:58:@2440.4]
  wire [11:0] _T_4619; // @[FixedPointTypeClass.scala 21:58:@2441.4]
  wire [11:0] _T_4620; // @[FixedPointTypeClass.scala 21:58:@2442.4]
  wire [12:0] _T_4629; // @[FixedPointTypeClass.scala 21:58:@2446.4]
  wire [11:0] _T_4630; // @[FixedPointTypeClass.scala 21:58:@2447.4]
  wire [11:0] _T_4631; // @[FixedPointTypeClass.scala 21:58:@2448.4]
  wire [12:0] _T_4632; // @[FixedPointTypeClass.scala 21:58:@2449.4]
  wire [11:0] _T_4633; // @[FixedPointTypeClass.scala 21:58:@2450.4]
  wire [11:0] _T_4634; // @[FixedPointTypeClass.scala 21:58:@2451.4]
  wire [12:0] _T_4643; // @[FixedPointTypeClass.scala 21:58:@2455.4]
  wire [11:0] _T_4644; // @[FixedPointTypeClass.scala 21:58:@2456.4]
  wire [11:0] _T_4645; // @[FixedPointTypeClass.scala 21:58:@2457.4]
  wire [12:0] _T_4646; // @[FixedPointTypeClass.scala 21:58:@2458.4]
  wire [11:0] _T_4647; // @[FixedPointTypeClass.scala 21:58:@2459.4]
  wire [11:0] _T_4648; // @[FixedPointTypeClass.scala 21:58:@2460.4]
  wire [12:0] _T_4657; // @[FixedPointTypeClass.scala 21:58:@2464.4]
  wire [11:0] _T_4658; // @[FixedPointTypeClass.scala 21:58:@2465.4]
  wire [11:0] _T_4659; // @[FixedPointTypeClass.scala 21:58:@2466.4]
  wire [12:0] _T_4660; // @[FixedPointTypeClass.scala 21:58:@2467.4]
  wire [11:0] _T_4661; // @[FixedPointTypeClass.scala 21:58:@2468.4]
  wire [11:0] _T_4662; // @[FixedPointTypeClass.scala 21:58:@2469.4]
  wire [12:0] _T_4671; // @[FixedPointTypeClass.scala 21:58:@2473.4]
  wire [11:0] _T_4672; // @[FixedPointTypeClass.scala 21:58:@2474.4]
  wire [11:0] _T_4673; // @[FixedPointTypeClass.scala 21:58:@2475.4]
  wire [12:0] _T_4674; // @[FixedPointTypeClass.scala 21:58:@2476.4]
  wire [11:0] _T_4675; // @[FixedPointTypeClass.scala 21:58:@2477.4]
  wire [11:0] _T_4676; // @[FixedPointTypeClass.scala 21:58:@2478.4]
  wire [12:0] _T_4685; // @[FixedPointTypeClass.scala 21:58:@2482.4]
  wire [11:0] _T_4686; // @[FixedPointTypeClass.scala 21:58:@2483.4]
  wire [11:0] _T_4687; // @[FixedPointTypeClass.scala 21:58:@2484.4]
  wire [12:0] _T_4688; // @[FixedPointTypeClass.scala 21:58:@2485.4]
  wire [11:0] _T_4689; // @[FixedPointTypeClass.scala 21:58:@2486.4]
  wire [11:0] _T_4690; // @[FixedPointTypeClass.scala 21:58:@2487.4]
  wire [12:0] _T_4699; // @[FixedPointTypeClass.scala 21:58:@2491.4]
  wire [11:0] _T_4700; // @[FixedPointTypeClass.scala 21:58:@2492.4]
  wire [11:0] _T_4701; // @[FixedPointTypeClass.scala 21:58:@2493.4]
  wire [12:0] _T_4702; // @[FixedPointTypeClass.scala 21:58:@2494.4]
  wire [11:0] _T_4703; // @[FixedPointTypeClass.scala 21:58:@2495.4]
  wire [11:0] _T_4704; // @[FixedPointTypeClass.scala 21:58:@2496.4]
  wire [12:0] _T_4713; // @[FixedPointTypeClass.scala 21:58:@2500.4]
  wire [11:0] _T_4714; // @[FixedPointTypeClass.scala 21:58:@2501.4]
  wire [11:0] _T_4715; // @[FixedPointTypeClass.scala 21:58:@2502.4]
  wire [12:0] _T_4716; // @[FixedPointTypeClass.scala 21:58:@2503.4]
  wire [11:0] _T_4717; // @[FixedPointTypeClass.scala 21:58:@2504.4]
  wire [11:0] _T_4718; // @[FixedPointTypeClass.scala 21:58:@2505.4]
  wire [12:0] _T_4727; // @[FixedPointTypeClass.scala 21:58:@2509.4]
  wire [11:0] _T_4728; // @[FixedPointTypeClass.scala 21:58:@2510.4]
  wire [11:0] _T_4729; // @[FixedPointTypeClass.scala 21:58:@2511.4]
  wire [12:0] _T_4730; // @[FixedPointTypeClass.scala 21:58:@2512.4]
  wire [11:0] _T_4731; // @[FixedPointTypeClass.scala 21:58:@2513.4]
  wire [11:0] _T_4732; // @[FixedPointTypeClass.scala 21:58:@2514.4]
  wire [12:0] _T_4741; // @[FixedPointTypeClass.scala 21:58:@2518.4]
  wire [11:0] _T_4742; // @[FixedPointTypeClass.scala 21:58:@2519.4]
  wire [11:0] _T_4743; // @[FixedPointTypeClass.scala 21:58:@2520.4]
  wire [12:0] _T_4744; // @[FixedPointTypeClass.scala 21:58:@2521.4]
  wire [11:0] _T_4745; // @[FixedPointTypeClass.scala 21:58:@2522.4]
  wire [11:0] _T_4746; // @[FixedPointTypeClass.scala 21:58:@2523.4]
  wire [12:0] _T_4755; // @[FixedPointTypeClass.scala 21:58:@2527.4]
  wire [11:0] _T_4756; // @[FixedPointTypeClass.scala 21:58:@2528.4]
  wire [11:0] _T_4757; // @[FixedPointTypeClass.scala 21:58:@2529.4]
  wire [12:0] _T_4758; // @[FixedPointTypeClass.scala 21:58:@2530.4]
  wire [11:0] _T_4759; // @[FixedPointTypeClass.scala 21:58:@2531.4]
  wire [11:0] _T_4760; // @[FixedPointTypeClass.scala 21:58:@2532.4]
  wire [12:0] _T_4769; // @[FixedPointTypeClass.scala 21:58:@2536.4]
  wire [11:0] _T_4770; // @[FixedPointTypeClass.scala 21:58:@2537.4]
  wire [11:0] _T_4771; // @[FixedPointTypeClass.scala 21:58:@2538.4]
  wire [12:0] _T_4772; // @[FixedPointTypeClass.scala 21:58:@2539.4]
  wire [11:0] _T_4773; // @[FixedPointTypeClass.scala 21:58:@2540.4]
  wire [11:0] _T_4774; // @[FixedPointTypeClass.scala 21:58:@2541.4]
  wire [12:0] _T_4783; // @[FixedPointTypeClass.scala 21:58:@2545.4]
  wire [11:0] _T_4784; // @[FixedPointTypeClass.scala 21:58:@2546.4]
  wire [11:0] _T_4785; // @[FixedPointTypeClass.scala 21:58:@2547.4]
  wire [12:0] _T_4786; // @[FixedPointTypeClass.scala 21:58:@2548.4]
  wire [11:0] _T_4787; // @[FixedPointTypeClass.scala 21:58:@2549.4]
  wire [11:0] _T_4788; // @[FixedPointTypeClass.scala 21:58:@2550.4]
  wire [12:0] _T_4797; // @[FixedPointTypeClass.scala 21:58:@2554.4]
  wire [11:0] _T_4798; // @[FixedPointTypeClass.scala 21:58:@2555.4]
  wire [11:0] _T_4799; // @[FixedPointTypeClass.scala 21:58:@2556.4]
  wire [12:0] _T_4800; // @[FixedPointTypeClass.scala 21:58:@2557.4]
  wire [11:0] _T_4801; // @[FixedPointTypeClass.scala 21:58:@2558.4]
  wire [11:0] _T_4802; // @[FixedPointTypeClass.scala 21:58:@2559.4]
  wire [12:0] _T_4811; // @[FixedPointTypeClass.scala 21:58:@2563.4]
  wire [11:0] _T_4812; // @[FixedPointTypeClass.scala 21:58:@2564.4]
  wire [11:0] _T_4813; // @[FixedPointTypeClass.scala 21:58:@2565.4]
  wire [12:0] _T_4814; // @[FixedPointTypeClass.scala 21:58:@2566.4]
  wire [11:0] _T_4815; // @[FixedPointTypeClass.scala 21:58:@2567.4]
  wire [11:0] _T_4816; // @[FixedPointTypeClass.scala 21:58:@2568.4]
  wire [12:0] _T_4825; // @[FixedPointTypeClass.scala 21:58:@2572.4]
  wire [11:0] _T_4826; // @[FixedPointTypeClass.scala 21:58:@2573.4]
  wire [11:0] _T_4827; // @[FixedPointTypeClass.scala 21:58:@2574.4]
  wire [12:0] _T_4828; // @[FixedPointTypeClass.scala 21:58:@2575.4]
  wire [11:0] _T_4829; // @[FixedPointTypeClass.scala 21:58:@2576.4]
  wire [11:0] _T_4830; // @[FixedPointTypeClass.scala 21:58:@2577.4]
  wire [12:0] _T_4839; // @[FixedPointTypeClass.scala 21:58:@2581.4]
  wire [11:0] _T_4840; // @[FixedPointTypeClass.scala 21:58:@2582.4]
  wire [11:0] _T_4841; // @[FixedPointTypeClass.scala 21:58:@2583.4]
  wire [12:0] _T_4842; // @[FixedPointTypeClass.scala 21:58:@2584.4]
  wire [11:0] _T_4843; // @[FixedPointTypeClass.scala 21:58:@2585.4]
  wire [11:0] _T_4844; // @[FixedPointTypeClass.scala 21:58:@2586.4]
  wire [12:0] _T_4853; // @[FixedPointTypeClass.scala 21:58:@2590.4]
  wire [11:0] _T_4854; // @[FixedPointTypeClass.scala 21:58:@2591.4]
  wire [11:0] _T_4855; // @[FixedPointTypeClass.scala 21:58:@2592.4]
  wire [12:0] _T_4856; // @[FixedPointTypeClass.scala 21:58:@2593.4]
  wire [11:0] _T_4857; // @[FixedPointTypeClass.scala 21:58:@2594.4]
  wire [11:0] _T_4858; // @[FixedPointTypeClass.scala 21:58:@2595.4]
  wire [12:0] _T_4867; // @[FixedPointTypeClass.scala 21:58:@2599.4]
  wire [11:0] _T_4868; // @[FixedPointTypeClass.scala 21:58:@2600.4]
  wire [11:0] sum_real; // @[FixedPointTypeClass.scala 21:58:@2601.4]
  wire [12:0] _T_4870; // @[FixedPointTypeClass.scala 21:58:@2602.4]
  wire [11:0] _T_4871; // @[FixedPointTypeClass.scala 21:58:@2603.4]
  wire [11:0] sum_imag; // @[FixedPointTypeClass.scala 21:58:@2604.4]
  wire [11:0] _GEN_10; // @[OverlapSum.scala 52:25:@2638.4]
  wire [11:0] _GEN_11; // @[OverlapSum.scala 52:25:@2638.4]
  wire [11:0] _GEN_12; // @[OverlapSum.scala 52:25:@2642.4]
  wire [11:0] _GEN_13; // @[OverlapSum.scala 52:25:@2642.4]
  wire [11:0] _GEN_14; // @[OverlapSum.scala 52:25:@2646.4]
  wire [11:0] _GEN_15; // @[OverlapSum.scala 52:25:@2646.4]
  wire [11:0] _GEN_16; // @[OverlapSum.scala 52:25:@2650.4]
  wire [11:0] _GEN_17; // @[OverlapSum.scala 52:25:@2650.4]
  wire [11:0] _GEN_18; // @[OverlapSum.scala 52:25:@2654.4]
  wire [11:0] _GEN_19; // @[OverlapSum.scala 52:25:@2654.4]
  wire [11:0] _GEN_20; // @[OverlapSum.scala 52:25:@2658.4]
  wire [11:0] _GEN_21; // @[OverlapSum.scala 52:25:@2658.4]
  wire [11:0] _GEN_22; // @[OverlapSum.scala 52:25:@2662.4]
  wire [11:0] _GEN_23; // @[OverlapSum.scala 52:25:@2662.4]
  wire [11:0] _GEN_24; // @[OverlapSum.scala 52:25:@2666.4]
  wire [11:0] _GEN_25; // @[OverlapSum.scala 52:25:@2666.4]
  wire [11:0] _GEN_26; // @[OverlapSum.scala 52:25:@2670.4]
  wire [11:0] _GEN_27; // @[OverlapSum.scala 52:25:@2670.4]
  wire [11:0] _GEN_28; // @[OverlapSum.scala 52:25:@2674.4]
  wire [11:0] _GEN_29; // @[OverlapSum.scala 52:25:@2674.4]
  wire [11:0] _GEN_30; // @[OverlapSum.scala 52:25:@2678.4]
  wire [11:0] _GEN_31; // @[OverlapSum.scala 52:25:@2678.4]
  wire [11:0] _GEN_32; // @[OverlapSum.scala 52:25:@2682.4]
  wire [11:0] _GEN_33; // @[OverlapSum.scala 52:25:@2682.4]
  wire [11:0] _GEN_34; // @[OverlapSum.scala 52:25:@2686.4]
  wire [11:0] _GEN_35; // @[OverlapSum.scala 52:25:@2686.4]
  wire [11:0] _GEN_36; // @[OverlapSum.scala 52:25:@2690.4]
  wire [11:0] _GEN_37; // @[OverlapSum.scala 52:25:@2690.4]
  wire [11:0] _GEN_38; // @[OverlapSum.scala 52:25:@2694.4]
  wire [11:0] _GEN_39; // @[OverlapSum.scala 52:25:@2694.4]
  wire [11:0] _GEN_40; // @[OverlapSum.scala 52:25:@2698.4]
  wire [11:0] _GEN_41; // @[OverlapSum.scala 52:25:@2698.4]
  wire [11:0] _GEN_42; // @[OverlapSum.scala 52:25:@2702.4]
  wire [11:0] _GEN_43; // @[OverlapSum.scala 52:25:@2702.4]
  wire [11:0] _GEN_44; // @[OverlapSum.scala 52:25:@2706.4]
  wire [11:0] _GEN_45; // @[OverlapSum.scala 52:25:@2706.4]
  wire [11:0] _GEN_46; // @[OverlapSum.scala 52:25:@2710.4]
  wire [11:0] _GEN_47; // @[OverlapSum.scala 52:25:@2710.4]
  wire [11:0] _GEN_48; // @[OverlapSum.scala 52:25:@2714.4]
  wire [11:0] _GEN_49; // @[OverlapSum.scala 52:25:@2714.4]
  wire [11:0] _GEN_50; // @[OverlapSum.scala 52:25:@2718.4]
  wire [11:0] _GEN_51; // @[OverlapSum.scala 52:25:@2718.4]
  wire [11:0] _GEN_52; // @[OverlapSum.scala 52:25:@2722.4]
  wire [11:0] _GEN_53; // @[OverlapSum.scala 52:25:@2722.4]
  wire [11:0] _GEN_54; // @[OverlapSum.scala 52:25:@2726.4]
  wire [11:0] _GEN_55; // @[OverlapSum.scala 52:25:@2726.4]
  wire [11:0] _GEN_56; // @[OverlapSum.scala 52:25:@2730.4]
  wire [11:0] _GEN_57; // @[OverlapSum.scala 52:25:@2730.4]
  wire [11:0] _GEN_58; // @[OverlapSum.scala 52:25:@2734.4]
  wire [11:0] _GEN_59; // @[OverlapSum.scala 52:25:@2734.4]
  wire [11:0] _GEN_60; // @[OverlapSum.scala 52:25:@2738.4]
  wire [11:0] _GEN_61; // @[OverlapSum.scala 52:25:@2738.4]
  wire [11:0] _GEN_62; // @[OverlapSum.scala 52:25:@2742.4]
  wire [11:0] _GEN_63; // @[OverlapSum.scala 52:25:@2742.4]
  wire [11:0] _GEN_64; // @[OverlapSum.scala 52:25:@2746.4]
  wire [11:0] _GEN_65; // @[OverlapSum.scala 52:25:@2746.4]
  wire [11:0] _GEN_66; // @[OverlapSum.scala 52:25:@2750.4]
  wire [11:0] _GEN_67; // @[OverlapSum.scala 52:25:@2750.4]
  wire [11:0] _GEN_68; // @[OverlapSum.scala 52:25:@2754.4]
  wire [11:0] _GEN_69; // @[OverlapSum.scala 52:25:@2754.4]
  wire [11:0] _GEN_70; // @[OverlapSum.scala 52:25:@2758.4]
  wire [11:0] _GEN_71; // @[OverlapSum.scala 52:25:@2758.4]
  wire [11:0] _GEN_72; // @[OverlapSum.scala 52:25:@2762.4]
  wire [11:0] _GEN_73; // @[OverlapSum.scala 52:25:@2762.4]
  wire [11:0] _GEN_74; // @[OverlapSum.scala 52:25:@2766.4]
  wire [11:0] _GEN_75; // @[OverlapSum.scala 52:25:@2766.4]
  wire [11:0] _GEN_76; // @[OverlapSum.scala 52:25:@2770.4]
  wire [11:0] _GEN_77; // @[OverlapSum.scala 52:25:@2770.4]
  wire [11:0] _GEN_78; // @[OverlapSum.scala 52:25:@2774.4]
  wire [11:0] _GEN_79; // @[OverlapSum.scala 52:25:@2774.4]
  wire [11:0] _GEN_80; // @[OverlapSum.scala 52:25:@2778.4]
  wire [11:0] _GEN_81; // @[OverlapSum.scala 52:25:@2778.4]
  wire [11:0] _GEN_82; // @[OverlapSum.scala 52:25:@2782.4]
  wire [11:0] _GEN_83; // @[OverlapSum.scala 52:25:@2782.4]
  wire [11:0] _GEN_84; // @[OverlapSum.scala 52:25:@2786.4]
  wire [11:0] _GEN_85; // @[OverlapSum.scala 52:25:@2786.4]
  wire [11:0] _GEN_86; // @[OverlapSum.scala 52:25:@2790.4]
  wire [11:0] _GEN_87; // @[OverlapSum.scala 52:25:@2790.4]
  wire [11:0] _GEN_88; // @[OverlapSum.scala 52:25:@2794.4]
  wire [11:0] _GEN_89; // @[OverlapSum.scala 52:25:@2794.4]
  wire [11:0] _GEN_90; // @[OverlapSum.scala 52:25:@2798.4]
  wire [11:0] _GEN_91; // @[OverlapSum.scala 52:25:@2798.4]
  wire [11:0] _GEN_92; // @[OverlapSum.scala 52:25:@2802.4]
  wire [11:0] _GEN_93; // @[OverlapSum.scala 52:25:@2802.4]
  wire [11:0] _GEN_94; // @[OverlapSum.scala 52:25:@2806.4]
  wire [11:0] _GEN_95; // @[OverlapSum.scala 52:25:@2806.4]
  wire [11:0] _GEN_96; // @[OverlapSum.scala 52:25:@2810.4]
  wire [11:0] _GEN_97; // @[OverlapSum.scala 52:25:@2810.4]
  wire [11:0] _GEN_98; // @[OverlapSum.scala 52:25:@2814.4]
  wire [11:0] _GEN_99; // @[OverlapSum.scala 52:25:@2814.4]
  wire [11:0] _GEN_100; // @[OverlapSum.scala 52:25:@2818.4]
  wire [11:0] _GEN_101; // @[OverlapSum.scala 52:25:@2818.4]
  wire [11:0] _GEN_102; // @[OverlapSum.scala 52:25:@2822.4]
  wire [11:0] _GEN_103; // @[OverlapSum.scala 52:25:@2822.4]
  wire [11:0] _GEN_104; // @[OverlapSum.scala 52:25:@2826.4]
  wire [11:0] _GEN_105; // @[OverlapSum.scala 52:25:@2826.4]
  wire [11:0] _GEN_106; // @[OverlapSum.scala 52:25:@2830.4]
  wire [11:0] _GEN_107; // @[OverlapSum.scala 52:25:@2830.4]
  wire [11:0] _GEN_108; // @[OverlapSum.scala 52:25:@2834.4]
  wire [11:0] _GEN_109; // @[OverlapSum.scala 52:25:@2834.4]
  wire [11:0] _GEN_110; // @[OverlapSum.scala 52:25:@2838.4]
  wire [11:0] _GEN_111; // @[OverlapSum.scala 52:25:@2838.4]
  wire [11:0] _GEN_112; // @[OverlapSum.scala 52:25:@2842.4]
  wire [11:0] _GEN_113; // @[OverlapSum.scala 52:25:@2842.4]
  wire [11:0] _GEN_114; // @[OverlapSum.scala 52:25:@2846.4]
  wire [11:0] _GEN_115; // @[OverlapSum.scala 52:25:@2846.4]
  wire [11:0] _GEN_116; // @[OverlapSum.scala 52:25:@2850.4]
  wire [11:0] _GEN_117; // @[OverlapSum.scala 52:25:@2850.4]
  wire [11:0] _GEN_118; // @[OverlapSum.scala 52:25:@2854.4]
  wire [11:0] _GEN_119; // @[OverlapSum.scala 52:25:@2854.4]
  wire [11:0] _GEN_120; // @[OverlapSum.scala 52:25:@2858.4]
  wire [11:0] _GEN_121; // @[OverlapSum.scala 52:25:@2858.4]
  wire [11:0] _GEN_122; // @[OverlapSum.scala 52:25:@2862.4]
  wire [11:0] _GEN_123; // @[OverlapSum.scala 52:25:@2862.4]
  wire [11:0] _GEN_124; // @[OverlapSum.scala 52:25:@2866.4]
  wire [11:0] _GEN_125; // @[OverlapSum.scala 52:25:@2866.4]
  wire [11:0] _GEN_126; // @[OverlapSum.scala 52:25:@2870.4]
  wire [11:0] _GEN_127; // @[OverlapSum.scala 52:25:@2870.4]
  wire [11:0] _GEN_128; // @[OverlapSum.scala 52:25:@2874.4]
  wire [11:0] _GEN_129; // @[OverlapSum.scala 52:25:@2874.4]
  wire [11:0] _GEN_130; // @[OverlapSum.scala 52:25:@2878.4]
  wire [11:0] _GEN_131; // @[OverlapSum.scala 52:25:@2878.4]
  wire [11:0] _GEN_132; // @[OverlapSum.scala 52:25:@2882.4]
  wire [11:0] _GEN_133; // @[OverlapSum.scala 52:25:@2882.4]
  wire [11:0] _GEN_134; // @[OverlapSum.scala 52:25:@2886.4]
  wire [11:0] _GEN_135; // @[OverlapSum.scala 52:25:@2886.4]
  wire [11:0] _GEN_136; // @[OverlapSum.scala 52:25:@2890.4]
  wire [11:0] _GEN_137; // @[OverlapSum.scala 52:25:@2890.4]
  wire [11:0] _GEN_138; // @[OverlapSum.scala 52:25:@2894.4]
  wire [11:0] _GEN_139; // @[OverlapSum.scala 52:25:@2894.4]
  wire [11:0] _GEN_140; // @[OverlapSum.scala 52:25:@2898.4]
  wire [11:0] _GEN_141; // @[OverlapSum.scala 52:25:@2898.4]
  wire [11:0] _GEN_142; // @[OverlapSum.scala 52:25:@2902.4]
  wire [11:0] _GEN_143; // @[OverlapSum.scala 52:25:@2902.4]
  wire [11:0] _GEN_144; // @[OverlapSum.scala 52:25:@2906.4]
  wire [11:0] _GEN_145; // @[OverlapSum.scala 52:25:@2906.4]
  wire [11:0] _GEN_146; // @[OverlapSum.scala 52:25:@2910.4]
  wire [11:0] _GEN_147; // @[OverlapSum.scala 52:25:@2910.4]
  wire [11:0] _GEN_148; // @[OverlapSum.scala 52:25:@2914.4]
  wire [11:0] _GEN_149; // @[OverlapSum.scala 52:25:@2914.4]
  wire [11:0] _GEN_150; // @[OverlapSum.scala 52:25:@2918.4]
  wire [11:0] _GEN_151; // @[OverlapSum.scala 52:25:@2918.4]
  wire [11:0] _GEN_152; // @[OverlapSum.scala 52:25:@2922.4]
  wire [11:0] _GEN_153; // @[OverlapSum.scala 52:25:@2922.4]
  wire [11:0] _GEN_154; // @[OverlapSum.scala 52:25:@2926.4]
  wire [11:0] _GEN_155; // @[OverlapSum.scala 52:25:@2926.4]
  wire [11:0] _GEN_156; // @[OverlapSum.scala 52:25:@2930.4]
  wire [11:0] _GEN_157; // @[OverlapSum.scala 52:25:@2930.4]
  wire [11:0] _GEN_158; // @[OverlapSum.scala 52:25:@2934.4]
  wire [11:0] _GEN_159; // @[OverlapSum.scala 52:25:@2934.4]
  wire [11:0] _GEN_160; // @[OverlapSum.scala 52:25:@2938.4]
  wire [11:0] _GEN_161; // @[OverlapSum.scala 52:25:@2938.4]
  wire [11:0] _GEN_162; // @[OverlapSum.scala 52:25:@2942.4]
  wire [11:0] _GEN_163; // @[OverlapSum.scala 52:25:@2942.4]
  wire [11:0] _GEN_164; // @[OverlapSum.scala 52:25:@2946.4]
  wire [11:0] _GEN_165; // @[OverlapSum.scala 52:25:@2946.4]
  wire [11:0] _GEN_166; // @[OverlapSum.scala 52:25:@2950.4]
  wire [11:0] _GEN_167; // @[OverlapSum.scala 52:25:@2950.4]
  wire [11:0] _GEN_168; // @[OverlapSum.scala 52:25:@2954.4]
  wire [11:0] _GEN_169; // @[OverlapSum.scala 52:25:@2954.4]
  wire [11:0] _GEN_170; // @[OverlapSum.scala 52:25:@2958.4]
  wire [11:0] _GEN_171; // @[OverlapSum.scala 52:25:@2958.4]
  wire [11:0] _GEN_172; // @[OverlapSum.scala 52:25:@2962.4]
  wire [11:0] _GEN_173; // @[OverlapSum.scala 52:25:@2962.4]
  wire [11:0] _GEN_174; // @[OverlapSum.scala 52:25:@2966.4]
  wire [11:0] _GEN_175; // @[OverlapSum.scala 52:25:@2966.4]
  wire [11:0] _GEN_176; // @[OverlapSum.scala 52:25:@2970.4]
  wire [11:0] _GEN_177; // @[OverlapSum.scala 52:25:@2970.4]
  wire [11:0] _GEN_178; // @[OverlapSum.scala 52:25:@2974.4]
  wire [11:0] _GEN_179; // @[OverlapSum.scala 52:25:@2974.4]
  wire [11:0] _GEN_180; // @[OverlapSum.scala 52:25:@2978.4]
  wire [11:0] _GEN_181; // @[OverlapSum.scala 52:25:@2978.4]
  wire [11:0] _GEN_182; // @[OverlapSum.scala 52:25:@2982.4]
  wire [11:0] _GEN_183; // @[OverlapSum.scala 52:25:@2982.4]
  wire [11:0] _GEN_184; // @[OverlapSum.scala 52:25:@2986.4]
  wire [11:0] _GEN_185; // @[OverlapSum.scala 52:25:@2986.4]
  wire [11:0] _GEN_186; // @[OverlapSum.scala 52:25:@2990.4]
  wire [11:0] _GEN_187; // @[OverlapSum.scala 52:25:@2990.4]
  wire [11:0] _GEN_188; // @[OverlapSum.scala 52:25:@2994.4]
  wire [11:0] _GEN_189; // @[OverlapSum.scala 52:25:@2994.4]
  wire [11:0] _GEN_190; // @[OverlapSum.scala 52:25:@2998.4]
  wire [11:0] _GEN_191; // @[OverlapSum.scala 52:25:@2998.4]
  wire [11:0] _GEN_192; // @[OverlapSum.scala 52:25:@3002.4]
  wire [11:0] _GEN_193; // @[OverlapSum.scala 52:25:@3002.4]
  wire [11:0] _GEN_194; // @[OverlapSum.scala 52:25:@3006.4]
  wire [11:0] _GEN_195; // @[OverlapSum.scala 52:25:@3006.4]
  wire [11:0] _GEN_196; // @[OverlapSum.scala 52:25:@3010.4]
  wire [11:0] _GEN_197; // @[OverlapSum.scala 52:25:@3010.4]
  wire [11:0] _GEN_198; // @[OverlapSum.scala 52:25:@3014.4]
  wire [11:0] _GEN_199; // @[OverlapSum.scala 52:25:@3014.4]
  wire [11:0] _GEN_200; // @[OverlapSum.scala 52:25:@3018.4]
  wire [11:0] _GEN_201; // @[OverlapSum.scala 52:25:@3018.4]
  wire [11:0] _GEN_202; // @[OverlapSum.scala 52:25:@3022.4]
  wire [11:0] _GEN_203; // @[OverlapSum.scala 52:25:@3022.4]
  wire [11:0] _GEN_204; // @[OverlapSum.scala 52:25:@3026.4]
  wire [11:0] _GEN_205; // @[OverlapSum.scala 52:25:@3026.4]
  wire [11:0] _GEN_206; // @[OverlapSum.scala 52:25:@3030.4]
  wire [11:0] _GEN_207; // @[OverlapSum.scala 52:25:@3030.4]
  wire [11:0] _GEN_208; // @[OverlapSum.scala 52:25:@3034.4]
  wire [11:0] _GEN_209; // @[OverlapSum.scala 52:25:@3034.4]
  wire [11:0] _GEN_210; // @[OverlapSum.scala 52:25:@3038.4]
  wire [11:0] _GEN_211; // @[OverlapSum.scala 52:25:@3038.4]
  wire [11:0] _GEN_212; // @[OverlapSum.scala 52:25:@3042.4]
  wire [11:0] _GEN_213; // @[OverlapSum.scala 52:25:@3042.4]
  wire [11:0] _GEN_214; // @[OverlapSum.scala 52:25:@3046.4]
  wire [11:0] _GEN_215; // @[OverlapSum.scala 52:25:@3046.4]
  wire [11:0] _GEN_216; // @[OverlapSum.scala 52:25:@3050.4]
  wire [11:0] _GEN_217; // @[OverlapSum.scala 52:25:@3050.4]
  wire [11:0] _GEN_218; // @[OverlapSum.scala 52:25:@3054.4]
  wire [11:0] _GEN_219; // @[OverlapSum.scala 52:25:@3054.4]
  wire [11:0] _GEN_220; // @[OverlapSum.scala 52:25:@3058.4]
  wire [11:0] _GEN_221; // @[OverlapSum.scala 52:25:@3058.4]
  wire [11:0] _GEN_222; // @[OverlapSum.scala 52:25:@3062.4]
  wire [11:0] _GEN_223; // @[OverlapSum.scala 52:25:@3062.4]
  wire [11:0] _GEN_224; // @[OverlapSum.scala 52:25:@3066.4]
  wire [11:0] _GEN_225; // @[OverlapSum.scala 52:25:@3066.4]
  wire [11:0] _GEN_226; // @[OverlapSum.scala 52:25:@3070.4]
  wire [11:0] _GEN_227; // @[OverlapSum.scala 52:25:@3070.4]
  wire [11:0] _GEN_228; // @[OverlapSum.scala 52:25:@3074.4]
  wire [11:0] _GEN_229; // @[OverlapSum.scala 52:25:@3074.4]
  wire [11:0] _GEN_230; // @[OverlapSum.scala 52:25:@3078.4]
  wire [11:0] _GEN_231; // @[OverlapSum.scala 52:25:@3078.4]
  wire [11:0] _GEN_232; // @[OverlapSum.scala 52:25:@3082.4]
  wire [11:0] _GEN_233; // @[OverlapSum.scala 52:25:@3082.4]
  wire [11:0] _GEN_234; // @[OverlapSum.scala 52:25:@3086.4]
  wire [11:0] _GEN_235; // @[OverlapSum.scala 52:25:@3086.4]
  wire [11:0] _GEN_236; // @[OverlapSum.scala 52:25:@3090.4]
  wire [11:0] _GEN_237; // @[OverlapSum.scala 52:25:@3090.4]
  wire [11:0] _GEN_238; // @[OverlapSum.scala 52:25:@3094.4]
  wire [11:0] _GEN_239; // @[OverlapSum.scala 52:25:@3094.4]
  wire [11:0] _GEN_240; // @[OverlapSum.scala 52:25:@3098.4]
  wire [11:0] _GEN_241; // @[OverlapSum.scala 52:25:@3098.4]
  wire [11:0] _GEN_242; // @[OverlapSum.scala 52:25:@3102.4]
  wire [11:0] _GEN_243; // @[OverlapSum.scala 52:25:@3102.4]
  wire [11:0] _GEN_244; // @[OverlapSum.scala 52:25:@3106.4]
  wire [11:0] _GEN_245; // @[OverlapSum.scala 52:25:@3106.4]
  wire [11:0] _GEN_246; // @[OverlapSum.scala 52:25:@3110.4]
  wire [11:0] _GEN_247; // @[OverlapSum.scala 52:25:@3110.4]
  wire [11:0] _GEN_248; // @[OverlapSum.scala 52:25:@3114.4]
  wire [11:0] _GEN_249; // @[OverlapSum.scala 52:25:@3114.4]
  wire [11:0] _GEN_250; // @[OverlapSum.scala 52:25:@3118.4]
  wire [11:0] _GEN_251; // @[OverlapSum.scala 52:25:@3118.4]
  wire [11:0] _GEN_252; // @[OverlapSum.scala 52:25:@3122.4]
  wire [11:0] _GEN_253; // @[OverlapSum.scala 52:25:@3122.4]
  wire [11:0] _GEN_254; // @[OverlapSum.scala 52:25:@3126.4]
  wire [11:0] _GEN_255; // @[OverlapSum.scala 52:25:@3126.4]
  wire [11:0] _GEN_256; // @[OverlapSum.scala 52:25:@3130.4]
  wire [11:0] _GEN_257; // @[OverlapSum.scala 52:25:@3130.4]
  wire [11:0] _GEN_258; // @[OverlapSum.scala 52:25:@3134.4]
  wire [11:0] _GEN_259; // @[OverlapSum.scala 52:25:@3134.4]
  wire [11:0] _GEN_260; // @[OverlapSum.scala 52:25:@3138.4]
  wire [11:0] _GEN_261; // @[OverlapSum.scala 52:25:@3138.4]
  wire [11:0] _GEN_262; // @[OverlapSum.scala 52:25:@3142.4]
  wire [11:0] _GEN_263; // @[OverlapSum.scala 52:25:@3142.4]
  assign _GEN_0 = io_depth_valid ? io_depth_bits : depth; // @[OverlapSum.scala 36:25:@64.4]
  assign _T_945 = 8'h1 < depth; // @[OverlapSum.scala 42:38:@68.4]
  assign shrSelected_0_real = _T_945 ? $signed(shr_0_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@78.4]
  assign shrSelected_0_imag = _T_945 ? $signed(shr_0_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@78.4]
  assign _T_962 = 8'h2 < depth; // @[OverlapSum.scala 42:38:@79.4]
  assign shrSelected_1_real = _T_962 ? $signed(shr_1_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@89.4]
  assign shrSelected_1_imag = _T_962 ? $signed(shr_1_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@89.4]
  assign _T_979 = 8'h3 < depth; // @[OverlapSum.scala 42:38:@90.4]
  assign shrSelected_2_real = _T_979 ? $signed(shr_2_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@100.4]
  assign shrSelected_2_imag = _T_979 ? $signed(shr_2_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@100.4]
  assign _T_996 = 8'h4 < depth; // @[OverlapSum.scala 42:38:@101.4]
  assign shrSelected_3_real = _T_996 ? $signed(shr_3_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@111.4]
  assign shrSelected_3_imag = _T_996 ? $signed(shr_3_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@111.4]
  assign _T_1013 = 8'h5 < depth; // @[OverlapSum.scala 42:38:@112.4]
  assign shrSelected_4_real = _T_1013 ? $signed(shr_4_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@122.4]
  assign shrSelected_4_imag = _T_1013 ? $signed(shr_4_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@122.4]
  assign _T_1030 = 8'h6 < depth; // @[OverlapSum.scala 42:38:@123.4]
  assign shrSelected_5_real = _T_1030 ? $signed(shr_5_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@133.4]
  assign shrSelected_5_imag = _T_1030 ? $signed(shr_5_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@133.4]
  assign _T_1047 = 8'h7 < depth; // @[OverlapSum.scala 42:38:@134.4]
  assign shrSelected_6_real = _T_1047 ? $signed(shr_6_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@144.4]
  assign shrSelected_6_imag = _T_1047 ? $signed(shr_6_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@144.4]
  assign _T_1064 = 8'h8 < depth; // @[OverlapSum.scala 42:38:@145.4]
  assign shrSelected_7_real = _T_1064 ? $signed(shr_7_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@155.4]
  assign shrSelected_7_imag = _T_1064 ? $signed(shr_7_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@155.4]
  assign _T_1081 = 8'h9 < depth; // @[OverlapSum.scala 42:38:@156.4]
  assign shrSelected_8_real = _T_1081 ? $signed(shr_8_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@166.4]
  assign shrSelected_8_imag = _T_1081 ? $signed(shr_8_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@166.4]
  assign _T_1098 = 8'ha < depth; // @[OverlapSum.scala 42:38:@167.4]
  assign shrSelected_9_real = _T_1098 ? $signed(shr_9_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@177.4]
  assign shrSelected_9_imag = _T_1098 ? $signed(shr_9_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@177.4]
  assign _T_1115 = 8'hb < depth; // @[OverlapSum.scala 42:38:@178.4]
  assign shrSelected_10_real = _T_1115 ? $signed(shr_10_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@188.4]
  assign shrSelected_10_imag = _T_1115 ? $signed(shr_10_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@188.4]
  assign _T_1132 = 8'hc < depth; // @[OverlapSum.scala 42:38:@189.4]
  assign shrSelected_11_real = _T_1132 ? $signed(shr_11_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@199.4]
  assign shrSelected_11_imag = _T_1132 ? $signed(shr_11_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@199.4]
  assign _T_1149 = 8'hd < depth; // @[OverlapSum.scala 42:38:@200.4]
  assign shrSelected_12_real = _T_1149 ? $signed(shr_12_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@210.4]
  assign shrSelected_12_imag = _T_1149 ? $signed(shr_12_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@210.4]
  assign _T_1166 = 8'he < depth; // @[OverlapSum.scala 42:38:@211.4]
  assign shrSelected_13_real = _T_1166 ? $signed(shr_13_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@221.4]
  assign shrSelected_13_imag = _T_1166 ? $signed(shr_13_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@221.4]
  assign _T_1183 = 8'hf < depth; // @[OverlapSum.scala 42:38:@222.4]
  assign shrSelected_14_real = _T_1183 ? $signed(shr_14_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@232.4]
  assign shrSelected_14_imag = _T_1183 ? $signed(shr_14_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@232.4]
  assign _T_1200 = 8'h10 < depth; // @[OverlapSum.scala 42:38:@233.4]
  assign shrSelected_15_real = _T_1200 ? $signed(shr_15_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@243.4]
  assign shrSelected_15_imag = _T_1200 ? $signed(shr_15_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@243.4]
  assign _T_1217 = 8'h11 < depth; // @[OverlapSum.scala 42:38:@244.4]
  assign shrSelected_16_real = _T_1217 ? $signed(shr_16_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@254.4]
  assign shrSelected_16_imag = _T_1217 ? $signed(shr_16_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@254.4]
  assign _T_1234 = 8'h12 < depth; // @[OverlapSum.scala 42:38:@255.4]
  assign shrSelected_17_real = _T_1234 ? $signed(shr_17_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@265.4]
  assign shrSelected_17_imag = _T_1234 ? $signed(shr_17_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@265.4]
  assign _T_1251 = 8'h13 < depth; // @[OverlapSum.scala 42:38:@266.4]
  assign shrSelected_18_real = _T_1251 ? $signed(shr_18_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@276.4]
  assign shrSelected_18_imag = _T_1251 ? $signed(shr_18_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@276.4]
  assign _T_1268 = 8'h14 < depth; // @[OverlapSum.scala 42:38:@277.4]
  assign shrSelected_19_real = _T_1268 ? $signed(shr_19_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@287.4]
  assign shrSelected_19_imag = _T_1268 ? $signed(shr_19_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@287.4]
  assign _T_1285 = 8'h15 < depth; // @[OverlapSum.scala 42:38:@288.4]
  assign shrSelected_20_real = _T_1285 ? $signed(shr_20_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@298.4]
  assign shrSelected_20_imag = _T_1285 ? $signed(shr_20_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@298.4]
  assign _T_1302 = 8'h16 < depth; // @[OverlapSum.scala 42:38:@299.4]
  assign shrSelected_21_real = _T_1302 ? $signed(shr_21_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@309.4]
  assign shrSelected_21_imag = _T_1302 ? $signed(shr_21_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@309.4]
  assign _T_1319 = 8'h17 < depth; // @[OverlapSum.scala 42:38:@310.4]
  assign shrSelected_22_real = _T_1319 ? $signed(shr_22_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@320.4]
  assign shrSelected_22_imag = _T_1319 ? $signed(shr_22_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@320.4]
  assign _T_1336 = 8'h18 < depth; // @[OverlapSum.scala 42:38:@321.4]
  assign shrSelected_23_real = _T_1336 ? $signed(shr_23_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@331.4]
  assign shrSelected_23_imag = _T_1336 ? $signed(shr_23_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@331.4]
  assign _T_1353 = 8'h19 < depth; // @[OverlapSum.scala 42:38:@332.4]
  assign shrSelected_24_real = _T_1353 ? $signed(shr_24_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@342.4]
  assign shrSelected_24_imag = _T_1353 ? $signed(shr_24_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@342.4]
  assign _T_1370 = 8'h1a < depth; // @[OverlapSum.scala 42:38:@343.4]
  assign shrSelected_25_real = _T_1370 ? $signed(shr_25_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@353.4]
  assign shrSelected_25_imag = _T_1370 ? $signed(shr_25_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@353.4]
  assign _T_1387 = 8'h1b < depth; // @[OverlapSum.scala 42:38:@354.4]
  assign shrSelected_26_real = _T_1387 ? $signed(shr_26_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@364.4]
  assign shrSelected_26_imag = _T_1387 ? $signed(shr_26_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@364.4]
  assign _T_1404 = 8'h1c < depth; // @[OverlapSum.scala 42:38:@365.4]
  assign shrSelected_27_real = _T_1404 ? $signed(shr_27_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@375.4]
  assign shrSelected_27_imag = _T_1404 ? $signed(shr_27_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@375.4]
  assign _T_1421 = 8'h1d < depth; // @[OverlapSum.scala 42:38:@376.4]
  assign shrSelected_28_real = _T_1421 ? $signed(shr_28_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@386.4]
  assign shrSelected_28_imag = _T_1421 ? $signed(shr_28_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@386.4]
  assign _T_1438 = 8'h1e < depth; // @[OverlapSum.scala 42:38:@387.4]
  assign shrSelected_29_real = _T_1438 ? $signed(shr_29_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@397.4]
  assign shrSelected_29_imag = _T_1438 ? $signed(shr_29_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@397.4]
  assign _T_1455 = 8'h1f < depth; // @[OverlapSum.scala 42:38:@398.4]
  assign shrSelected_30_real = _T_1455 ? $signed(shr_30_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@408.4]
  assign shrSelected_30_imag = _T_1455 ? $signed(shr_30_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@408.4]
  assign _T_1472 = 8'h20 < depth; // @[OverlapSum.scala 42:38:@409.4]
  assign shrSelected_31_real = _T_1472 ? $signed(shr_31_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@419.4]
  assign shrSelected_31_imag = _T_1472 ? $signed(shr_31_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@419.4]
  assign _T_1489 = 8'h21 < depth; // @[OverlapSum.scala 42:38:@420.4]
  assign shrSelected_32_real = _T_1489 ? $signed(shr_32_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@430.4]
  assign shrSelected_32_imag = _T_1489 ? $signed(shr_32_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@430.4]
  assign _T_1506 = 8'h22 < depth; // @[OverlapSum.scala 42:38:@431.4]
  assign shrSelected_33_real = _T_1506 ? $signed(shr_33_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@441.4]
  assign shrSelected_33_imag = _T_1506 ? $signed(shr_33_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@441.4]
  assign _T_1523 = 8'h23 < depth; // @[OverlapSum.scala 42:38:@442.4]
  assign shrSelected_34_real = _T_1523 ? $signed(shr_34_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@452.4]
  assign shrSelected_34_imag = _T_1523 ? $signed(shr_34_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@452.4]
  assign _T_1540 = 8'h24 < depth; // @[OverlapSum.scala 42:38:@453.4]
  assign shrSelected_35_real = _T_1540 ? $signed(shr_35_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@463.4]
  assign shrSelected_35_imag = _T_1540 ? $signed(shr_35_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@463.4]
  assign _T_1557 = 8'h25 < depth; // @[OverlapSum.scala 42:38:@464.4]
  assign shrSelected_36_real = _T_1557 ? $signed(shr_36_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@474.4]
  assign shrSelected_36_imag = _T_1557 ? $signed(shr_36_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@474.4]
  assign _T_1574 = 8'h26 < depth; // @[OverlapSum.scala 42:38:@475.4]
  assign shrSelected_37_real = _T_1574 ? $signed(shr_37_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@485.4]
  assign shrSelected_37_imag = _T_1574 ? $signed(shr_37_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@485.4]
  assign _T_1591 = 8'h27 < depth; // @[OverlapSum.scala 42:38:@486.4]
  assign shrSelected_38_real = _T_1591 ? $signed(shr_38_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@496.4]
  assign shrSelected_38_imag = _T_1591 ? $signed(shr_38_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@496.4]
  assign _T_1608 = 8'h28 < depth; // @[OverlapSum.scala 42:38:@497.4]
  assign shrSelected_39_real = _T_1608 ? $signed(shr_39_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@507.4]
  assign shrSelected_39_imag = _T_1608 ? $signed(shr_39_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@507.4]
  assign _T_1625 = 8'h29 < depth; // @[OverlapSum.scala 42:38:@508.4]
  assign shrSelected_40_real = _T_1625 ? $signed(shr_40_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@518.4]
  assign shrSelected_40_imag = _T_1625 ? $signed(shr_40_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@518.4]
  assign _T_1642 = 8'h2a < depth; // @[OverlapSum.scala 42:38:@519.4]
  assign shrSelected_41_real = _T_1642 ? $signed(shr_41_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@529.4]
  assign shrSelected_41_imag = _T_1642 ? $signed(shr_41_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@529.4]
  assign _T_1659 = 8'h2b < depth; // @[OverlapSum.scala 42:38:@530.4]
  assign shrSelected_42_real = _T_1659 ? $signed(shr_42_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@540.4]
  assign shrSelected_42_imag = _T_1659 ? $signed(shr_42_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@540.4]
  assign _T_1676 = 8'h2c < depth; // @[OverlapSum.scala 42:38:@541.4]
  assign shrSelected_43_real = _T_1676 ? $signed(shr_43_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@551.4]
  assign shrSelected_43_imag = _T_1676 ? $signed(shr_43_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@551.4]
  assign _T_1693 = 8'h2d < depth; // @[OverlapSum.scala 42:38:@552.4]
  assign shrSelected_44_real = _T_1693 ? $signed(shr_44_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@562.4]
  assign shrSelected_44_imag = _T_1693 ? $signed(shr_44_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@562.4]
  assign _T_1710 = 8'h2e < depth; // @[OverlapSum.scala 42:38:@563.4]
  assign shrSelected_45_real = _T_1710 ? $signed(shr_45_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@573.4]
  assign shrSelected_45_imag = _T_1710 ? $signed(shr_45_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@573.4]
  assign _T_1727 = 8'h2f < depth; // @[OverlapSum.scala 42:38:@574.4]
  assign shrSelected_46_real = _T_1727 ? $signed(shr_46_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@584.4]
  assign shrSelected_46_imag = _T_1727 ? $signed(shr_46_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@584.4]
  assign _T_1744 = 8'h30 < depth; // @[OverlapSum.scala 42:38:@585.4]
  assign shrSelected_47_real = _T_1744 ? $signed(shr_47_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@595.4]
  assign shrSelected_47_imag = _T_1744 ? $signed(shr_47_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@595.4]
  assign _T_1761 = 8'h31 < depth; // @[OverlapSum.scala 42:38:@596.4]
  assign shrSelected_48_real = _T_1761 ? $signed(shr_48_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@606.4]
  assign shrSelected_48_imag = _T_1761 ? $signed(shr_48_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@606.4]
  assign _T_1778 = 8'h32 < depth; // @[OverlapSum.scala 42:38:@607.4]
  assign shrSelected_49_real = _T_1778 ? $signed(shr_49_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@617.4]
  assign shrSelected_49_imag = _T_1778 ? $signed(shr_49_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@617.4]
  assign _T_1795 = 8'h33 < depth; // @[OverlapSum.scala 42:38:@618.4]
  assign shrSelected_50_real = _T_1795 ? $signed(shr_50_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@628.4]
  assign shrSelected_50_imag = _T_1795 ? $signed(shr_50_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@628.4]
  assign _T_1812 = 8'h34 < depth; // @[OverlapSum.scala 42:38:@629.4]
  assign shrSelected_51_real = _T_1812 ? $signed(shr_51_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@639.4]
  assign shrSelected_51_imag = _T_1812 ? $signed(shr_51_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@639.4]
  assign _T_1829 = 8'h35 < depth; // @[OverlapSum.scala 42:38:@640.4]
  assign shrSelected_52_real = _T_1829 ? $signed(shr_52_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@650.4]
  assign shrSelected_52_imag = _T_1829 ? $signed(shr_52_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@650.4]
  assign _T_1846 = 8'h36 < depth; // @[OverlapSum.scala 42:38:@651.4]
  assign shrSelected_53_real = _T_1846 ? $signed(shr_53_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@661.4]
  assign shrSelected_53_imag = _T_1846 ? $signed(shr_53_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@661.4]
  assign _T_1863 = 8'h37 < depth; // @[OverlapSum.scala 42:38:@662.4]
  assign shrSelected_54_real = _T_1863 ? $signed(shr_54_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@672.4]
  assign shrSelected_54_imag = _T_1863 ? $signed(shr_54_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@672.4]
  assign _T_1880 = 8'h38 < depth; // @[OverlapSum.scala 42:38:@673.4]
  assign shrSelected_55_real = _T_1880 ? $signed(shr_55_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@683.4]
  assign shrSelected_55_imag = _T_1880 ? $signed(shr_55_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@683.4]
  assign _T_1897 = 8'h39 < depth; // @[OverlapSum.scala 42:38:@684.4]
  assign shrSelected_56_real = _T_1897 ? $signed(shr_56_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@694.4]
  assign shrSelected_56_imag = _T_1897 ? $signed(shr_56_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@694.4]
  assign _T_1914 = 8'h3a < depth; // @[OverlapSum.scala 42:38:@695.4]
  assign shrSelected_57_real = _T_1914 ? $signed(shr_57_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@705.4]
  assign shrSelected_57_imag = _T_1914 ? $signed(shr_57_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@705.4]
  assign _T_1931 = 8'h3b < depth; // @[OverlapSum.scala 42:38:@706.4]
  assign shrSelected_58_real = _T_1931 ? $signed(shr_58_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@716.4]
  assign shrSelected_58_imag = _T_1931 ? $signed(shr_58_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@716.4]
  assign _T_1948 = 8'h3c < depth; // @[OverlapSum.scala 42:38:@717.4]
  assign shrSelected_59_real = _T_1948 ? $signed(shr_59_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@727.4]
  assign shrSelected_59_imag = _T_1948 ? $signed(shr_59_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@727.4]
  assign _T_1965 = 8'h3d < depth; // @[OverlapSum.scala 42:38:@728.4]
  assign shrSelected_60_real = _T_1965 ? $signed(shr_60_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@738.4]
  assign shrSelected_60_imag = _T_1965 ? $signed(shr_60_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@738.4]
  assign _T_1982 = 8'h3e < depth; // @[OverlapSum.scala 42:38:@739.4]
  assign shrSelected_61_real = _T_1982 ? $signed(shr_61_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@749.4]
  assign shrSelected_61_imag = _T_1982 ? $signed(shr_61_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@749.4]
  assign _T_1999 = 8'h3f < depth; // @[OverlapSum.scala 42:38:@750.4]
  assign shrSelected_62_real = _T_1999 ? $signed(shr_62_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@760.4]
  assign shrSelected_62_imag = _T_1999 ? $signed(shr_62_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@760.4]
  assign _T_2016 = 8'h40 < depth; // @[OverlapSum.scala 42:38:@761.4]
  assign shrSelected_63_real = _T_2016 ? $signed(shr_63_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@771.4]
  assign shrSelected_63_imag = _T_2016 ? $signed(shr_63_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@771.4]
  assign _T_2033 = 8'h41 < depth; // @[OverlapSum.scala 42:38:@772.4]
  assign shrSelected_64_real = _T_2033 ? $signed(shr_64_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@782.4]
  assign shrSelected_64_imag = _T_2033 ? $signed(shr_64_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@782.4]
  assign _T_2050 = 8'h42 < depth; // @[OverlapSum.scala 42:38:@783.4]
  assign shrSelected_65_real = _T_2050 ? $signed(shr_65_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@793.4]
  assign shrSelected_65_imag = _T_2050 ? $signed(shr_65_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@793.4]
  assign _T_2067 = 8'h43 < depth; // @[OverlapSum.scala 42:38:@794.4]
  assign shrSelected_66_real = _T_2067 ? $signed(shr_66_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@804.4]
  assign shrSelected_66_imag = _T_2067 ? $signed(shr_66_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@804.4]
  assign _T_2084 = 8'h44 < depth; // @[OverlapSum.scala 42:38:@805.4]
  assign shrSelected_67_real = _T_2084 ? $signed(shr_67_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@815.4]
  assign shrSelected_67_imag = _T_2084 ? $signed(shr_67_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@815.4]
  assign _T_2101 = 8'h45 < depth; // @[OverlapSum.scala 42:38:@816.4]
  assign shrSelected_68_real = _T_2101 ? $signed(shr_68_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@826.4]
  assign shrSelected_68_imag = _T_2101 ? $signed(shr_68_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@826.4]
  assign _T_2118 = 8'h46 < depth; // @[OverlapSum.scala 42:38:@827.4]
  assign shrSelected_69_real = _T_2118 ? $signed(shr_69_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@837.4]
  assign shrSelected_69_imag = _T_2118 ? $signed(shr_69_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@837.4]
  assign _T_2135 = 8'h47 < depth; // @[OverlapSum.scala 42:38:@838.4]
  assign shrSelected_70_real = _T_2135 ? $signed(shr_70_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@848.4]
  assign shrSelected_70_imag = _T_2135 ? $signed(shr_70_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@848.4]
  assign _T_2152 = 8'h48 < depth; // @[OverlapSum.scala 42:38:@849.4]
  assign shrSelected_71_real = _T_2152 ? $signed(shr_71_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@859.4]
  assign shrSelected_71_imag = _T_2152 ? $signed(shr_71_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@859.4]
  assign _T_2169 = 8'h49 < depth; // @[OverlapSum.scala 42:38:@860.4]
  assign shrSelected_72_real = _T_2169 ? $signed(shr_72_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@870.4]
  assign shrSelected_72_imag = _T_2169 ? $signed(shr_72_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@870.4]
  assign _T_2186 = 8'h4a < depth; // @[OverlapSum.scala 42:38:@871.4]
  assign shrSelected_73_real = _T_2186 ? $signed(shr_73_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@881.4]
  assign shrSelected_73_imag = _T_2186 ? $signed(shr_73_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@881.4]
  assign _T_2203 = 8'h4b < depth; // @[OverlapSum.scala 42:38:@882.4]
  assign shrSelected_74_real = _T_2203 ? $signed(shr_74_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@892.4]
  assign shrSelected_74_imag = _T_2203 ? $signed(shr_74_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@892.4]
  assign _T_2220 = 8'h4c < depth; // @[OverlapSum.scala 42:38:@893.4]
  assign shrSelected_75_real = _T_2220 ? $signed(shr_75_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@903.4]
  assign shrSelected_75_imag = _T_2220 ? $signed(shr_75_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@903.4]
  assign _T_2237 = 8'h4d < depth; // @[OverlapSum.scala 42:38:@904.4]
  assign shrSelected_76_real = _T_2237 ? $signed(shr_76_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@914.4]
  assign shrSelected_76_imag = _T_2237 ? $signed(shr_76_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@914.4]
  assign _T_2254 = 8'h4e < depth; // @[OverlapSum.scala 42:38:@915.4]
  assign shrSelected_77_real = _T_2254 ? $signed(shr_77_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@925.4]
  assign shrSelected_77_imag = _T_2254 ? $signed(shr_77_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@925.4]
  assign _T_2271 = 8'h4f < depth; // @[OverlapSum.scala 42:38:@926.4]
  assign shrSelected_78_real = _T_2271 ? $signed(shr_78_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@936.4]
  assign shrSelected_78_imag = _T_2271 ? $signed(shr_78_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@936.4]
  assign _T_2288 = 8'h50 < depth; // @[OverlapSum.scala 42:38:@937.4]
  assign shrSelected_79_real = _T_2288 ? $signed(shr_79_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@947.4]
  assign shrSelected_79_imag = _T_2288 ? $signed(shr_79_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@947.4]
  assign _T_2305 = 8'h51 < depth; // @[OverlapSum.scala 42:38:@948.4]
  assign shrSelected_80_real = _T_2305 ? $signed(shr_80_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@958.4]
  assign shrSelected_80_imag = _T_2305 ? $signed(shr_80_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@958.4]
  assign _T_2322 = 8'h52 < depth; // @[OverlapSum.scala 42:38:@959.4]
  assign shrSelected_81_real = _T_2322 ? $signed(shr_81_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@969.4]
  assign shrSelected_81_imag = _T_2322 ? $signed(shr_81_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@969.4]
  assign _T_2339 = 8'h53 < depth; // @[OverlapSum.scala 42:38:@970.4]
  assign shrSelected_82_real = _T_2339 ? $signed(shr_82_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@980.4]
  assign shrSelected_82_imag = _T_2339 ? $signed(shr_82_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@980.4]
  assign _T_2356 = 8'h54 < depth; // @[OverlapSum.scala 42:38:@981.4]
  assign shrSelected_83_real = _T_2356 ? $signed(shr_83_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@991.4]
  assign shrSelected_83_imag = _T_2356 ? $signed(shr_83_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@991.4]
  assign _T_2373 = 8'h55 < depth; // @[OverlapSum.scala 42:38:@992.4]
  assign shrSelected_84_real = _T_2373 ? $signed(shr_84_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1002.4]
  assign shrSelected_84_imag = _T_2373 ? $signed(shr_84_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1002.4]
  assign _T_2390 = 8'h56 < depth; // @[OverlapSum.scala 42:38:@1003.4]
  assign shrSelected_85_real = _T_2390 ? $signed(shr_85_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1013.4]
  assign shrSelected_85_imag = _T_2390 ? $signed(shr_85_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1013.4]
  assign _T_2407 = 8'h57 < depth; // @[OverlapSum.scala 42:38:@1014.4]
  assign shrSelected_86_real = _T_2407 ? $signed(shr_86_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1024.4]
  assign shrSelected_86_imag = _T_2407 ? $signed(shr_86_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1024.4]
  assign _T_2424 = 8'h58 < depth; // @[OverlapSum.scala 42:38:@1025.4]
  assign shrSelected_87_real = _T_2424 ? $signed(shr_87_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1035.4]
  assign shrSelected_87_imag = _T_2424 ? $signed(shr_87_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1035.4]
  assign _T_2441 = 8'h59 < depth; // @[OverlapSum.scala 42:38:@1036.4]
  assign shrSelected_88_real = _T_2441 ? $signed(shr_88_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1046.4]
  assign shrSelected_88_imag = _T_2441 ? $signed(shr_88_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1046.4]
  assign _T_2458 = 8'h5a < depth; // @[OverlapSum.scala 42:38:@1047.4]
  assign shrSelected_89_real = _T_2458 ? $signed(shr_89_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1057.4]
  assign shrSelected_89_imag = _T_2458 ? $signed(shr_89_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1057.4]
  assign _T_2475 = 8'h5b < depth; // @[OverlapSum.scala 42:38:@1058.4]
  assign shrSelected_90_real = _T_2475 ? $signed(shr_90_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1068.4]
  assign shrSelected_90_imag = _T_2475 ? $signed(shr_90_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1068.4]
  assign _T_2492 = 8'h5c < depth; // @[OverlapSum.scala 42:38:@1069.4]
  assign shrSelected_91_real = _T_2492 ? $signed(shr_91_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1079.4]
  assign shrSelected_91_imag = _T_2492 ? $signed(shr_91_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1079.4]
  assign _T_2509 = 8'h5d < depth; // @[OverlapSum.scala 42:38:@1080.4]
  assign shrSelected_92_real = _T_2509 ? $signed(shr_92_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1090.4]
  assign shrSelected_92_imag = _T_2509 ? $signed(shr_92_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1090.4]
  assign _T_2526 = 8'h5e < depth; // @[OverlapSum.scala 42:38:@1091.4]
  assign shrSelected_93_real = _T_2526 ? $signed(shr_93_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1101.4]
  assign shrSelected_93_imag = _T_2526 ? $signed(shr_93_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1101.4]
  assign _T_2543 = 8'h5f < depth; // @[OverlapSum.scala 42:38:@1102.4]
  assign shrSelected_94_real = _T_2543 ? $signed(shr_94_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1112.4]
  assign shrSelected_94_imag = _T_2543 ? $signed(shr_94_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1112.4]
  assign _T_2560 = 8'h60 < depth; // @[OverlapSum.scala 42:38:@1113.4]
  assign shrSelected_95_real = _T_2560 ? $signed(shr_95_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1123.4]
  assign shrSelected_95_imag = _T_2560 ? $signed(shr_95_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1123.4]
  assign _T_2577 = 8'h61 < depth; // @[OverlapSum.scala 42:38:@1124.4]
  assign shrSelected_96_real = _T_2577 ? $signed(shr_96_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1134.4]
  assign shrSelected_96_imag = _T_2577 ? $signed(shr_96_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1134.4]
  assign _T_2594 = 8'h62 < depth; // @[OverlapSum.scala 42:38:@1135.4]
  assign shrSelected_97_real = _T_2594 ? $signed(shr_97_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1145.4]
  assign shrSelected_97_imag = _T_2594 ? $signed(shr_97_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1145.4]
  assign _T_2611 = 8'h63 < depth; // @[OverlapSum.scala 42:38:@1146.4]
  assign shrSelected_98_real = _T_2611 ? $signed(shr_98_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1156.4]
  assign shrSelected_98_imag = _T_2611 ? $signed(shr_98_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1156.4]
  assign _T_2628 = 8'h64 < depth; // @[OverlapSum.scala 42:38:@1157.4]
  assign shrSelected_99_real = _T_2628 ? $signed(shr_99_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1167.4]
  assign shrSelected_99_imag = _T_2628 ? $signed(shr_99_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1167.4]
  assign _T_2645 = 8'h65 < depth; // @[OverlapSum.scala 42:38:@1168.4]
  assign shrSelected_100_real = _T_2645 ? $signed(shr_100_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1178.4]
  assign shrSelected_100_imag = _T_2645 ? $signed(shr_100_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1178.4]
  assign _T_2662 = 8'h66 < depth; // @[OverlapSum.scala 42:38:@1179.4]
  assign shrSelected_101_real = _T_2662 ? $signed(shr_101_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1189.4]
  assign shrSelected_101_imag = _T_2662 ? $signed(shr_101_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1189.4]
  assign _T_2679 = 8'h67 < depth; // @[OverlapSum.scala 42:38:@1190.4]
  assign shrSelected_102_real = _T_2679 ? $signed(shr_102_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1200.4]
  assign shrSelected_102_imag = _T_2679 ? $signed(shr_102_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1200.4]
  assign _T_2696 = 8'h68 < depth; // @[OverlapSum.scala 42:38:@1201.4]
  assign shrSelected_103_real = _T_2696 ? $signed(shr_103_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1211.4]
  assign shrSelected_103_imag = _T_2696 ? $signed(shr_103_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1211.4]
  assign _T_2713 = 8'h69 < depth; // @[OverlapSum.scala 42:38:@1212.4]
  assign shrSelected_104_real = _T_2713 ? $signed(shr_104_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1222.4]
  assign shrSelected_104_imag = _T_2713 ? $signed(shr_104_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1222.4]
  assign _T_2730 = 8'h6a < depth; // @[OverlapSum.scala 42:38:@1223.4]
  assign shrSelected_105_real = _T_2730 ? $signed(shr_105_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1233.4]
  assign shrSelected_105_imag = _T_2730 ? $signed(shr_105_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1233.4]
  assign _T_2747 = 8'h6b < depth; // @[OverlapSum.scala 42:38:@1234.4]
  assign shrSelected_106_real = _T_2747 ? $signed(shr_106_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1244.4]
  assign shrSelected_106_imag = _T_2747 ? $signed(shr_106_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1244.4]
  assign _T_2764 = 8'h6c < depth; // @[OverlapSum.scala 42:38:@1245.4]
  assign shrSelected_107_real = _T_2764 ? $signed(shr_107_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1255.4]
  assign shrSelected_107_imag = _T_2764 ? $signed(shr_107_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1255.4]
  assign _T_2781 = 8'h6d < depth; // @[OverlapSum.scala 42:38:@1256.4]
  assign shrSelected_108_real = _T_2781 ? $signed(shr_108_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1266.4]
  assign shrSelected_108_imag = _T_2781 ? $signed(shr_108_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1266.4]
  assign _T_2798 = 8'h6e < depth; // @[OverlapSum.scala 42:38:@1267.4]
  assign shrSelected_109_real = _T_2798 ? $signed(shr_109_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1277.4]
  assign shrSelected_109_imag = _T_2798 ? $signed(shr_109_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1277.4]
  assign _T_2815 = 8'h6f < depth; // @[OverlapSum.scala 42:38:@1278.4]
  assign shrSelected_110_real = _T_2815 ? $signed(shr_110_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1288.4]
  assign shrSelected_110_imag = _T_2815 ? $signed(shr_110_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1288.4]
  assign _T_2832 = 8'h70 < depth; // @[OverlapSum.scala 42:38:@1289.4]
  assign shrSelected_111_real = _T_2832 ? $signed(shr_111_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1299.4]
  assign shrSelected_111_imag = _T_2832 ? $signed(shr_111_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1299.4]
  assign _T_2849 = 8'h71 < depth; // @[OverlapSum.scala 42:38:@1300.4]
  assign shrSelected_112_real = _T_2849 ? $signed(shr_112_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1310.4]
  assign shrSelected_112_imag = _T_2849 ? $signed(shr_112_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1310.4]
  assign _T_2866 = 8'h72 < depth; // @[OverlapSum.scala 42:38:@1311.4]
  assign shrSelected_113_real = _T_2866 ? $signed(shr_113_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1321.4]
  assign shrSelected_113_imag = _T_2866 ? $signed(shr_113_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1321.4]
  assign _T_2883 = 8'h73 < depth; // @[OverlapSum.scala 42:38:@1322.4]
  assign shrSelected_114_real = _T_2883 ? $signed(shr_114_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1332.4]
  assign shrSelected_114_imag = _T_2883 ? $signed(shr_114_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1332.4]
  assign _T_2900 = 8'h74 < depth; // @[OverlapSum.scala 42:38:@1333.4]
  assign shrSelected_115_real = _T_2900 ? $signed(shr_115_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1343.4]
  assign shrSelected_115_imag = _T_2900 ? $signed(shr_115_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1343.4]
  assign _T_2917 = 8'h75 < depth; // @[OverlapSum.scala 42:38:@1344.4]
  assign shrSelected_116_real = _T_2917 ? $signed(shr_116_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1354.4]
  assign shrSelected_116_imag = _T_2917 ? $signed(shr_116_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1354.4]
  assign _T_2934 = 8'h76 < depth; // @[OverlapSum.scala 42:38:@1355.4]
  assign shrSelected_117_real = _T_2934 ? $signed(shr_117_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1365.4]
  assign shrSelected_117_imag = _T_2934 ? $signed(shr_117_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1365.4]
  assign _T_2951 = 8'h77 < depth; // @[OverlapSum.scala 42:38:@1366.4]
  assign shrSelected_118_real = _T_2951 ? $signed(shr_118_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1376.4]
  assign shrSelected_118_imag = _T_2951 ? $signed(shr_118_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1376.4]
  assign _T_2968 = 8'h78 < depth; // @[OverlapSum.scala 42:38:@1377.4]
  assign shrSelected_119_real = _T_2968 ? $signed(shr_119_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1387.4]
  assign shrSelected_119_imag = _T_2968 ? $signed(shr_119_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1387.4]
  assign _T_2985 = 8'h79 < depth; // @[OverlapSum.scala 42:38:@1388.4]
  assign shrSelected_120_real = _T_2985 ? $signed(shr_120_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1398.4]
  assign shrSelected_120_imag = _T_2985 ? $signed(shr_120_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1398.4]
  assign _T_3002 = 8'h7a < depth; // @[OverlapSum.scala 42:38:@1399.4]
  assign shrSelected_121_real = _T_3002 ? $signed(shr_121_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1409.4]
  assign shrSelected_121_imag = _T_3002 ? $signed(shr_121_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1409.4]
  assign _T_3019 = 8'h7b < depth; // @[OverlapSum.scala 42:38:@1410.4]
  assign shrSelected_122_real = _T_3019 ? $signed(shr_122_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1420.4]
  assign shrSelected_122_imag = _T_3019 ? $signed(shr_122_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1420.4]
  assign _T_3036 = 8'h7c < depth; // @[OverlapSum.scala 42:38:@1421.4]
  assign shrSelected_123_real = _T_3036 ? $signed(shr_123_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1431.4]
  assign shrSelected_123_imag = _T_3036 ? $signed(shr_123_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1431.4]
  assign _T_3053 = 8'h7d < depth; // @[OverlapSum.scala 42:38:@1432.4]
  assign shrSelected_124_real = _T_3053 ? $signed(shr_124_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1442.4]
  assign shrSelected_124_imag = _T_3053 ? $signed(shr_124_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1442.4]
  assign _T_3070 = 8'h7e < depth; // @[OverlapSum.scala 42:38:@1443.4]
  assign shrSelected_125_real = _T_3070 ? $signed(shr_125_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1453.4]
  assign shrSelected_125_imag = _T_3070 ? $signed(shr_125_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1453.4]
  assign _T_3087 = 8'h7f < depth; // @[OverlapSum.scala 42:38:@1454.4]
  assign shrSelected_126_real = _T_3087 ? $signed(shr_126_real) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1464.4]
  assign shrSelected_126_imag = _T_3087 ? $signed(shr_126_imag) : $signed(12'sh0); // @[OverlapSum.scala 43:8:@1464.4]
  assign _T_3103 = $signed(io_in_bits_real) + $signed(shrSelected_0_real); // @[FixedPointTypeClass.scala 21:58:@1465.4]
  assign _T_3104 = _T_3103[11:0]; // @[FixedPointTypeClass.scala 21:58:@1466.4]
  assign _T_3105 = $signed(_T_3104); // @[FixedPointTypeClass.scala 21:58:@1467.4]
  assign _T_3106 = $signed(io_in_bits_imag) + $signed(shrSelected_0_imag); // @[FixedPointTypeClass.scala 21:58:@1468.4]
  assign _T_3107 = _T_3106[11:0]; // @[FixedPointTypeClass.scala 21:58:@1469.4]
  assign _T_3108 = $signed(_T_3107); // @[FixedPointTypeClass.scala 21:58:@1470.4]
  assign _T_3117 = $signed(shrSelected_1_real) + $signed(shrSelected_2_real); // @[FixedPointTypeClass.scala 21:58:@1474.4]
  assign _T_3118 = _T_3117[11:0]; // @[FixedPointTypeClass.scala 21:58:@1475.4]
  assign _T_3119 = $signed(_T_3118); // @[FixedPointTypeClass.scala 21:58:@1476.4]
  assign _T_3120 = $signed(shrSelected_1_imag) + $signed(shrSelected_2_imag); // @[FixedPointTypeClass.scala 21:58:@1477.4]
  assign _T_3121 = _T_3120[11:0]; // @[FixedPointTypeClass.scala 21:58:@1478.4]
  assign _T_3122 = $signed(_T_3121); // @[FixedPointTypeClass.scala 21:58:@1479.4]
  assign _T_3131 = $signed(shrSelected_3_real) + $signed(shrSelected_4_real); // @[FixedPointTypeClass.scala 21:58:@1483.4]
  assign _T_3132 = _T_3131[11:0]; // @[FixedPointTypeClass.scala 21:58:@1484.4]
  assign _T_3133 = $signed(_T_3132); // @[FixedPointTypeClass.scala 21:58:@1485.4]
  assign _T_3134 = $signed(shrSelected_3_imag) + $signed(shrSelected_4_imag); // @[FixedPointTypeClass.scala 21:58:@1486.4]
  assign _T_3135 = _T_3134[11:0]; // @[FixedPointTypeClass.scala 21:58:@1487.4]
  assign _T_3136 = $signed(_T_3135); // @[FixedPointTypeClass.scala 21:58:@1488.4]
  assign _T_3145 = $signed(shrSelected_5_real) + $signed(shrSelected_6_real); // @[FixedPointTypeClass.scala 21:58:@1492.4]
  assign _T_3146 = _T_3145[11:0]; // @[FixedPointTypeClass.scala 21:58:@1493.4]
  assign _T_3147 = $signed(_T_3146); // @[FixedPointTypeClass.scala 21:58:@1494.4]
  assign _T_3148 = $signed(shrSelected_5_imag) + $signed(shrSelected_6_imag); // @[FixedPointTypeClass.scala 21:58:@1495.4]
  assign _T_3149 = _T_3148[11:0]; // @[FixedPointTypeClass.scala 21:58:@1496.4]
  assign _T_3150 = $signed(_T_3149); // @[FixedPointTypeClass.scala 21:58:@1497.4]
  assign _T_3159 = $signed(shrSelected_7_real) + $signed(shrSelected_8_real); // @[FixedPointTypeClass.scala 21:58:@1501.4]
  assign _T_3160 = _T_3159[11:0]; // @[FixedPointTypeClass.scala 21:58:@1502.4]
  assign _T_3161 = $signed(_T_3160); // @[FixedPointTypeClass.scala 21:58:@1503.4]
  assign _T_3162 = $signed(shrSelected_7_imag) + $signed(shrSelected_8_imag); // @[FixedPointTypeClass.scala 21:58:@1504.4]
  assign _T_3163 = _T_3162[11:0]; // @[FixedPointTypeClass.scala 21:58:@1505.4]
  assign _T_3164 = $signed(_T_3163); // @[FixedPointTypeClass.scala 21:58:@1506.4]
  assign _T_3173 = $signed(shrSelected_9_real) + $signed(shrSelected_10_real); // @[FixedPointTypeClass.scala 21:58:@1510.4]
  assign _T_3174 = _T_3173[11:0]; // @[FixedPointTypeClass.scala 21:58:@1511.4]
  assign _T_3175 = $signed(_T_3174); // @[FixedPointTypeClass.scala 21:58:@1512.4]
  assign _T_3176 = $signed(shrSelected_9_imag) + $signed(shrSelected_10_imag); // @[FixedPointTypeClass.scala 21:58:@1513.4]
  assign _T_3177 = _T_3176[11:0]; // @[FixedPointTypeClass.scala 21:58:@1514.4]
  assign _T_3178 = $signed(_T_3177); // @[FixedPointTypeClass.scala 21:58:@1515.4]
  assign _T_3187 = $signed(shrSelected_11_real) + $signed(shrSelected_12_real); // @[FixedPointTypeClass.scala 21:58:@1519.4]
  assign _T_3188 = _T_3187[11:0]; // @[FixedPointTypeClass.scala 21:58:@1520.4]
  assign _T_3189 = $signed(_T_3188); // @[FixedPointTypeClass.scala 21:58:@1521.4]
  assign _T_3190 = $signed(shrSelected_11_imag) + $signed(shrSelected_12_imag); // @[FixedPointTypeClass.scala 21:58:@1522.4]
  assign _T_3191 = _T_3190[11:0]; // @[FixedPointTypeClass.scala 21:58:@1523.4]
  assign _T_3192 = $signed(_T_3191); // @[FixedPointTypeClass.scala 21:58:@1524.4]
  assign _T_3201 = $signed(shrSelected_13_real) + $signed(shrSelected_14_real); // @[FixedPointTypeClass.scala 21:58:@1528.4]
  assign _T_3202 = _T_3201[11:0]; // @[FixedPointTypeClass.scala 21:58:@1529.4]
  assign _T_3203 = $signed(_T_3202); // @[FixedPointTypeClass.scala 21:58:@1530.4]
  assign _T_3204 = $signed(shrSelected_13_imag) + $signed(shrSelected_14_imag); // @[FixedPointTypeClass.scala 21:58:@1531.4]
  assign _T_3205 = _T_3204[11:0]; // @[FixedPointTypeClass.scala 21:58:@1532.4]
  assign _T_3206 = $signed(_T_3205); // @[FixedPointTypeClass.scala 21:58:@1533.4]
  assign _T_3215 = $signed(shrSelected_15_real) + $signed(shrSelected_16_real); // @[FixedPointTypeClass.scala 21:58:@1537.4]
  assign _T_3216 = _T_3215[11:0]; // @[FixedPointTypeClass.scala 21:58:@1538.4]
  assign _T_3217 = $signed(_T_3216); // @[FixedPointTypeClass.scala 21:58:@1539.4]
  assign _T_3218 = $signed(shrSelected_15_imag) + $signed(shrSelected_16_imag); // @[FixedPointTypeClass.scala 21:58:@1540.4]
  assign _T_3219 = _T_3218[11:0]; // @[FixedPointTypeClass.scala 21:58:@1541.4]
  assign _T_3220 = $signed(_T_3219); // @[FixedPointTypeClass.scala 21:58:@1542.4]
  assign _T_3229 = $signed(shrSelected_17_real) + $signed(shrSelected_18_real); // @[FixedPointTypeClass.scala 21:58:@1546.4]
  assign _T_3230 = _T_3229[11:0]; // @[FixedPointTypeClass.scala 21:58:@1547.4]
  assign _T_3231 = $signed(_T_3230); // @[FixedPointTypeClass.scala 21:58:@1548.4]
  assign _T_3232 = $signed(shrSelected_17_imag) + $signed(shrSelected_18_imag); // @[FixedPointTypeClass.scala 21:58:@1549.4]
  assign _T_3233 = _T_3232[11:0]; // @[FixedPointTypeClass.scala 21:58:@1550.4]
  assign _T_3234 = $signed(_T_3233); // @[FixedPointTypeClass.scala 21:58:@1551.4]
  assign _T_3243 = $signed(shrSelected_19_real) + $signed(shrSelected_20_real); // @[FixedPointTypeClass.scala 21:58:@1555.4]
  assign _T_3244 = _T_3243[11:0]; // @[FixedPointTypeClass.scala 21:58:@1556.4]
  assign _T_3245 = $signed(_T_3244); // @[FixedPointTypeClass.scala 21:58:@1557.4]
  assign _T_3246 = $signed(shrSelected_19_imag) + $signed(shrSelected_20_imag); // @[FixedPointTypeClass.scala 21:58:@1558.4]
  assign _T_3247 = _T_3246[11:0]; // @[FixedPointTypeClass.scala 21:58:@1559.4]
  assign _T_3248 = $signed(_T_3247); // @[FixedPointTypeClass.scala 21:58:@1560.4]
  assign _T_3257 = $signed(shrSelected_21_real) + $signed(shrSelected_22_real); // @[FixedPointTypeClass.scala 21:58:@1564.4]
  assign _T_3258 = _T_3257[11:0]; // @[FixedPointTypeClass.scala 21:58:@1565.4]
  assign _T_3259 = $signed(_T_3258); // @[FixedPointTypeClass.scala 21:58:@1566.4]
  assign _T_3260 = $signed(shrSelected_21_imag) + $signed(shrSelected_22_imag); // @[FixedPointTypeClass.scala 21:58:@1567.4]
  assign _T_3261 = _T_3260[11:0]; // @[FixedPointTypeClass.scala 21:58:@1568.4]
  assign _T_3262 = $signed(_T_3261); // @[FixedPointTypeClass.scala 21:58:@1569.4]
  assign _T_3271 = $signed(shrSelected_23_real) + $signed(shrSelected_24_real); // @[FixedPointTypeClass.scala 21:58:@1573.4]
  assign _T_3272 = _T_3271[11:0]; // @[FixedPointTypeClass.scala 21:58:@1574.4]
  assign _T_3273 = $signed(_T_3272); // @[FixedPointTypeClass.scala 21:58:@1575.4]
  assign _T_3274 = $signed(shrSelected_23_imag) + $signed(shrSelected_24_imag); // @[FixedPointTypeClass.scala 21:58:@1576.4]
  assign _T_3275 = _T_3274[11:0]; // @[FixedPointTypeClass.scala 21:58:@1577.4]
  assign _T_3276 = $signed(_T_3275); // @[FixedPointTypeClass.scala 21:58:@1578.4]
  assign _T_3285 = $signed(shrSelected_25_real) + $signed(shrSelected_26_real); // @[FixedPointTypeClass.scala 21:58:@1582.4]
  assign _T_3286 = _T_3285[11:0]; // @[FixedPointTypeClass.scala 21:58:@1583.4]
  assign _T_3287 = $signed(_T_3286); // @[FixedPointTypeClass.scala 21:58:@1584.4]
  assign _T_3288 = $signed(shrSelected_25_imag) + $signed(shrSelected_26_imag); // @[FixedPointTypeClass.scala 21:58:@1585.4]
  assign _T_3289 = _T_3288[11:0]; // @[FixedPointTypeClass.scala 21:58:@1586.4]
  assign _T_3290 = $signed(_T_3289); // @[FixedPointTypeClass.scala 21:58:@1587.4]
  assign _T_3299 = $signed(shrSelected_27_real) + $signed(shrSelected_28_real); // @[FixedPointTypeClass.scala 21:58:@1591.4]
  assign _T_3300 = _T_3299[11:0]; // @[FixedPointTypeClass.scala 21:58:@1592.4]
  assign _T_3301 = $signed(_T_3300); // @[FixedPointTypeClass.scala 21:58:@1593.4]
  assign _T_3302 = $signed(shrSelected_27_imag) + $signed(shrSelected_28_imag); // @[FixedPointTypeClass.scala 21:58:@1594.4]
  assign _T_3303 = _T_3302[11:0]; // @[FixedPointTypeClass.scala 21:58:@1595.4]
  assign _T_3304 = $signed(_T_3303); // @[FixedPointTypeClass.scala 21:58:@1596.4]
  assign _T_3313 = $signed(shrSelected_29_real) + $signed(shrSelected_30_real); // @[FixedPointTypeClass.scala 21:58:@1600.4]
  assign _T_3314 = _T_3313[11:0]; // @[FixedPointTypeClass.scala 21:58:@1601.4]
  assign _T_3315 = $signed(_T_3314); // @[FixedPointTypeClass.scala 21:58:@1602.4]
  assign _T_3316 = $signed(shrSelected_29_imag) + $signed(shrSelected_30_imag); // @[FixedPointTypeClass.scala 21:58:@1603.4]
  assign _T_3317 = _T_3316[11:0]; // @[FixedPointTypeClass.scala 21:58:@1604.4]
  assign _T_3318 = $signed(_T_3317); // @[FixedPointTypeClass.scala 21:58:@1605.4]
  assign _T_3327 = $signed(shrSelected_31_real) + $signed(shrSelected_32_real); // @[FixedPointTypeClass.scala 21:58:@1609.4]
  assign _T_3328 = _T_3327[11:0]; // @[FixedPointTypeClass.scala 21:58:@1610.4]
  assign _T_3329 = $signed(_T_3328); // @[FixedPointTypeClass.scala 21:58:@1611.4]
  assign _T_3330 = $signed(shrSelected_31_imag) + $signed(shrSelected_32_imag); // @[FixedPointTypeClass.scala 21:58:@1612.4]
  assign _T_3331 = _T_3330[11:0]; // @[FixedPointTypeClass.scala 21:58:@1613.4]
  assign _T_3332 = $signed(_T_3331); // @[FixedPointTypeClass.scala 21:58:@1614.4]
  assign _T_3341 = $signed(shrSelected_33_real) + $signed(shrSelected_34_real); // @[FixedPointTypeClass.scala 21:58:@1618.4]
  assign _T_3342 = _T_3341[11:0]; // @[FixedPointTypeClass.scala 21:58:@1619.4]
  assign _T_3343 = $signed(_T_3342); // @[FixedPointTypeClass.scala 21:58:@1620.4]
  assign _T_3344 = $signed(shrSelected_33_imag) + $signed(shrSelected_34_imag); // @[FixedPointTypeClass.scala 21:58:@1621.4]
  assign _T_3345 = _T_3344[11:0]; // @[FixedPointTypeClass.scala 21:58:@1622.4]
  assign _T_3346 = $signed(_T_3345); // @[FixedPointTypeClass.scala 21:58:@1623.4]
  assign _T_3355 = $signed(shrSelected_35_real) + $signed(shrSelected_36_real); // @[FixedPointTypeClass.scala 21:58:@1627.4]
  assign _T_3356 = _T_3355[11:0]; // @[FixedPointTypeClass.scala 21:58:@1628.4]
  assign _T_3357 = $signed(_T_3356); // @[FixedPointTypeClass.scala 21:58:@1629.4]
  assign _T_3358 = $signed(shrSelected_35_imag) + $signed(shrSelected_36_imag); // @[FixedPointTypeClass.scala 21:58:@1630.4]
  assign _T_3359 = _T_3358[11:0]; // @[FixedPointTypeClass.scala 21:58:@1631.4]
  assign _T_3360 = $signed(_T_3359); // @[FixedPointTypeClass.scala 21:58:@1632.4]
  assign _T_3369 = $signed(shrSelected_37_real) + $signed(shrSelected_38_real); // @[FixedPointTypeClass.scala 21:58:@1636.4]
  assign _T_3370 = _T_3369[11:0]; // @[FixedPointTypeClass.scala 21:58:@1637.4]
  assign _T_3371 = $signed(_T_3370); // @[FixedPointTypeClass.scala 21:58:@1638.4]
  assign _T_3372 = $signed(shrSelected_37_imag) + $signed(shrSelected_38_imag); // @[FixedPointTypeClass.scala 21:58:@1639.4]
  assign _T_3373 = _T_3372[11:0]; // @[FixedPointTypeClass.scala 21:58:@1640.4]
  assign _T_3374 = $signed(_T_3373); // @[FixedPointTypeClass.scala 21:58:@1641.4]
  assign _T_3383 = $signed(shrSelected_39_real) + $signed(shrSelected_40_real); // @[FixedPointTypeClass.scala 21:58:@1645.4]
  assign _T_3384 = _T_3383[11:0]; // @[FixedPointTypeClass.scala 21:58:@1646.4]
  assign _T_3385 = $signed(_T_3384); // @[FixedPointTypeClass.scala 21:58:@1647.4]
  assign _T_3386 = $signed(shrSelected_39_imag) + $signed(shrSelected_40_imag); // @[FixedPointTypeClass.scala 21:58:@1648.4]
  assign _T_3387 = _T_3386[11:0]; // @[FixedPointTypeClass.scala 21:58:@1649.4]
  assign _T_3388 = $signed(_T_3387); // @[FixedPointTypeClass.scala 21:58:@1650.4]
  assign _T_3397 = $signed(shrSelected_41_real) + $signed(shrSelected_42_real); // @[FixedPointTypeClass.scala 21:58:@1654.4]
  assign _T_3398 = _T_3397[11:0]; // @[FixedPointTypeClass.scala 21:58:@1655.4]
  assign _T_3399 = $signed(_T_3398); // @[FixedPointTypeClass.scala 21:58:@1656.4]
  assign _T_3400 = $signed(shrSelected_41_imag) + $signed(shrSelected_42_imag); // @[FixedPointTypeClass.scala 21:58:@1657.4]
  assign _T_3401 = _T_3400[11:0]; // @[FixedPointTypeClass.scala 21:58:@1658.4]
  assign _T_3402 = $signed(_T_3401); // @[FixedPointTypeClass.scala 21:58:@1659.4]
  assign _T_3411 = $signed(shrSelected_43_real) + $signed(shrSelected_44_real); // @[FixedPointTypeClass.scala 21:58:@1663.4]
  assign _T_3412 = _T_3411[11:0]; // @[FixedPointTypeClass.scala 21:58:@1664.4]
  assign _T_3413 = $signed(_T_3412); // @[FixedPointTypeClass.scala 21:58:@1665.4]
  assign _T_3414 = $signed(shrSelected_43_imag) + $signed(shrSelected_44_imag); // @[FixedPointTypeClass.scala 21:58:@1666.4]
  assign _T_3415 = _T_3414[11:0]; // @[FixedPointTypeClass.scala 21:58:@1667.4]
  assign _T_3416 = $signed(_T_3415); // @[FixedPointTypeClass.scala 21:58:@1668.4]
  assign _T_3425 = $signed(shrSelected_45_real) + $signed(shrSelected_46_real); // @[FixedPointTypeClass.scala 21:58:@1672.4]
  assign _T_3426 = _T_3425[11:0]; // @[FixedPointTypeClass.scala 21:58:@1673.4]
  assign _T_3427 = $signed(_T_3426); // @[FixedPointTypeClass.scala 21:58:@1674.4]
  assign _T_3428 = $signed(shrSelected_45_imag) + $signed(shrSelected_46_imag); // @[FixedPointTypeClass.scala 21:58:@1675.4]
  assign _T_3429 = _T_3428[11:0]; // @[FixedPointTypeClass.scala 21:58:@1676.4]
  assign _T_3430 = $signed(_T_3429); // @[FixedPointTypeClass.scala 21:58:@1677.4]
  assign _T_3439 = $signed(shrSelected_47_real) + $signed(shrSelected_48_real); // @[FixedPointTypeClass.scala 21:58:@1681.4]
  assign _T_3440 = _T_3439[11:0]; // @[FixedPointTypeClass.scala 21:58:@1682.4]
  assign _T_3441 = $signed(_T_3440); // @[FixedPointTypeClass.scala 21:58:@1683.4]
  assign _T_3442 = $signed(shrSelected_47_imag) + $signed(shrSelected_48_imag); // @[FixedPointTypeClass.scala 21:58:@1684.4]
  assign _T_3443 = _T_3442[11:0]; // @[FixedPointTypeClass.scala 21:58:@1685.4]
  assign _T_3444 = $signed(_T_3443); // @[FixedPointTypeClass.scala 21:58:@1686.4]
  assign _T_3453 = $signed(shrSelected_49_real) + $signed(shrSelected_50_real); // @[FixedPointTypeClass.scala 21:58:@1690.4]
  assign _T_3454 = _T_3453[11:0]; // @[FixedPointTypeClass.scala 21:58:@1691.4]
  assign _T_3455 = $signed(_T_3454); // @[FixedPointTypeClass.scala 21:58:@1692.4]
  assign _T_3456 = $signed(shrSelected_49_imag) + $signed(shrSelected_50_imag); // @[FixedPointTypeClass.scala 21:58:@1693.4]
  assign _T_3457 = _T_3456[11:0]; // @[FixedPointTypeClass.scala 21:58:@1694.4]
  assign _T_3458 = $signed(_T_3457); // @[FixedPointTypeClass.scala 21:58:@1695.4]
  assign _T_3467 = $signed(shrSelected_51_real) + $signed(shrSelected_52_real); // @[FixedPointTypeClass.scala 21:58:@1699.4]
  assign _T_3468 = _T_3467[11:0]; // @[FixedPointTypeClass.scala 21:58:@1700.4]
  assign _T_3469 = $signed(_T_3468); // @[FixedPointTypeClass.scala 21:58:@1701.4]
  assign _T_3470 = $signed(shrSelected_51_imag) + $signed(shrSelected_52_imag); // @[FixedPointTypeClass.scala 21:58:@1702.4]
  assign _T_3471 = _T_3470[11:0]; // @[FixedPointTypeClass.scala 21:58:@1703.4]
  assign _T_3472 = $signed(_T_3471); // @[FixedPointTypeClass.scala 21:58:@1704.4]
  assign _T_3481 = $signed(shrSelected_53_real) + $signed(shrSelected_54_real); // @[FixedPointTypeClass.scala 21:58:@1708.4]
  assign _T_3482 = _T_3481[11:0]; // @[FixedPointTypeClass.scala 21:58:@1709.4]
  assign _T_3483 = $signed(_T_3482); // @[FixedPointTypeClass.scala 21:58:@1710.4]
  assign _T_3484 = $signed(shrSelected_53_imag) + $signed(shrSelected_54_imag); // @[FixedPointTypeClass.scala 21:58:@1711.4]
  assign _T_3485 = _T_3484[11:0]; // @[FixedPointTypeClass.scala 21:58:@1712.4]
  assign _T_3486 = $signed(_T_3485); // @[FixedPointTypeClass.scala 21:58:@1713.4]
  assign _T_3495 = $signed(shrSelected_55_real) + $signed(shrSelected_56_real); // @[FixedPointTypeClass.scala 21:58:@1717.4]
  assign _T_3496 = _T_3495[11:0]; // @[FixedPointTypeClass.scala 21:58:@1718.4]
  assign _T_3497 = $signed(_T_3496); // @[FixedPointTypeClass.scala 21:58:@1719.4]
  assign _T_3498 = $signed(shrSelected_55_imag) + $signed(shrSelected_56_imag); // @[FixedPointTypeClass.scala 21:58:@1720.4]
  assign _T_3499 = _T_3498[11:0]; // @[FixedPointTypeClass.scala 21:58:@1721.4]
  assign _T_3500 = $signed(_T_3499); // @[FixedPointTypeClass.scala 21:58:@1722.4]
  assign _T_3509 = $signed(shrSelected_57_real) + $signed(shrSelected_58_real); // @[FixedPointTypeClass.scala 21:58:@1726.4]
  assign _T_3510 = _T_3509[11:0]; // @[FixedPointTypeClass.scala 21:58:@1727.4]
  assign _T_3511 = $signed(_T_3510); // @[FixedPointTypeClass.scala 21:58:@1728.4]
  assign _T_3512 = $signed(shrSelected_57_imag) + $signed(shrSelected_58_imag); // @[FixedPointTypeClass.scala 21:58:@1729.4]
  assign _T_3513 = _T_3512[11:0]; // @[FixedPointTypeClass.scala 21:58:@1730.4]
  assign _T_3514 = $signed(_T_3513); // @[FixedPointTypeClass.scala 21:58:@1731.4]
  assign _T_3523 = $signed(shrSelected_59_real) + $signed(shrSelected_60_real); // @[FixedPointTypeClass.scala 21:58:@1735.4]
  assign _T_3524 = _T_3523[11:0]; // @[FixedPointTypeClass.scala 21:58:@1736.4]
  assign _T_3525 = $signed(_T_3524); // @[FixedPointTypeClass.scala 21:58:@1737.4]
  assign _T_3526 = $signed(shrSelected_59_imag) + $signed(shrSelected_60_imag); // @[FixedPointTypeClass.scala 21:58:@1738.4]
  assign _T_3527 = _T_3526[11:0]; // @[FixedPointTypeClass.scala 21:58:@1739.4]
  assign _T_3528 = $signed(_T_3527); // @[FixedPointTypeClass.scala 21:58:@1740.4]
  assign _T_3537 = $signed(shrSelected_61_real) + $signed(shrSelected_62_real); // @[FixedPointTypeClass.scala 21:58:@1744.4]
  assign _T_3538 = _T_3537[11:0]; // @[FixedPointTypeClass.scala 21:58:@1745.4]
  assign _T_3539 = $signed(_T_3538); // @[FixedPointTypeClass.scala 21:58:@1746.4]
  assign _T_3540 = $signed(shrSelected_61_imag) + $signed(shrSelected_62_imag); // @[FixedPointTypeClass.scala 21:58:@1747.4]
  assign _T_3541 = _T_3540[11:0]; // @[FixedPointTypeClass.scala 21:58:@1748.4]
  assign _T_3542 = $signed(_T_3541); // @[FixedPointTypeClass.scala 21:58:@1749.4]
  assign _T_3551 = $signed(shrSelected_63_real) + $signed(shrSelected_64_real); // @[FixedPointTypeClass.scala 21:58:@1753.4]
  assign _T_3552 = _T_3551[11:0]; // @[FixedPointTypeClass.scala 21:58:@1754.4]
  assign _T_3553 = $signed(_T_3552); // @[FixedPointTypeClass.scala 21:58:@1755.4]
  assign _T_3554 = $signed(shrSelected_63_imag) + $signed(shrSelected_64_imag); // @[FixedPointTypeClass.scala 21:58:@1756.4]
  assign _T_3555 = _T_3554[11:0]; // @[FixedPointTypeClass.scala 21:58:@1757.4]
  assign _T_3556 = $signed(_T_3555); // @[FixedPointTypeClass.scala 21:58:@1758.4]
  assign _T_3565 = $signed(shrSelected_65_real) + $signed(shrSelected_66_real); // @[FixedPointTypeClass.scala 21:58:@1762.4]
  assign _T_3566 = _T_3565[11:0]; // @[FixedPointTypeClass.scala 21:58:@1763.4]
  assign _T_3567 = $signed(_T_3566); // @[FixedPointTypeClass.scala 21:58:@1764.4]
  assign _T_3568 = $signed(shrSelected_65_imag) + $signed(shrSelected_66_imag); // @[FixedPointTypeClass.scala 21:58:@1765.4]
  assign _T_3569 = _T_3568[11:0]; // @[FixedPointTypeClass.scala 21:58:@1766.4]
  assign _T_3570 = $signed(_T_3569); // @[FixedPointTypeClass.scala 21:58:@1767.4]
  assign _T_3579 = $signed(shrSelected_67_real) + $signed(shrSelected_68_real); // @[FixedPointTypeClass.scala 21:58:@1771.4]
  assign _T_3580 = _T_3579[11:0]; // @[FixedPointTypeClass.scala 21:58:@1772.4]
  assign _T_3581 = $signed(_T_3580); // @[FixedPointTypeClass.scala 21:58:@1773.4]
  assign _T_3582 = $signed(shrSelected_67_imag) + $signed(shrSelected_68_imag); // @[FixedPointTypeClass.scala 21:58:@1774.4]
  assign _T_3583 = _T_3582[11:0]; // @[FixedPointTypeClass.scala 21:58:@1775.4]
  assign _T_3584 = $signed(_T_3583); // @[FixedPointTypeClass.scala 21:58:@1776.4]
  assign _T_3593 = $signed(shrSelected_69_real) + $signed(shrSelected_70_real); // @[FixedPointTypeClass.scala 21:58:@1780.4]
  assign _T_3594 = _T_3593[11:0]; // @[FixedPointTypeClass.scala 21:58:@1781.4]
  assign _T_3595 = $signed(_T_3594); // @[FixedPointTypeClass.scala 21:58:@1782.4]
  assign _T_3596 = $signed(shrSelected_69_imag) + $signed(shrSelected_70_imag); // @[FixedPointTypeClass.scala 21:58:@1783.4]
  assign _T_3597 = _T_3596[11:0]; // @[FixedPointTypeClass.scala 21:58:@1784.4]
  assign _T_3598 = $signed(_T_3597); // @[FixedPointTypeClass.scala 21:58:@1785.4]
  assign _T_3607 = $signed(shrSelected_71_real) + $signed(shrSelected_72_real); // @[FixedPointTypeClass.scala 21:58:@1789.4]
  assign _T_3608 = _T_3607[11:0]; // @[FixedPointTypeClass.scala 21:58:@1790.4]
  assign _T_3609 = $signed(_T_3608); // @[FixedPointTypeClass.scala 21:58:@1791.4]
  assign _T_3610 = $signed(shrSelected_71_imag) + $signed(shrSelected_72_imag); // @[FixedPointTypeClass.scala 21:58:@1792.4]
  assign _T_3611 = _T_3610[11:0]; // @[FixedPointTypeClass.scala 21:58:@1793.4]
  assign _T_3612 = $signed(_T_3611); // @[FixedPointTypeClass.scala 21:58:@1794.4]
  assign _T_3621 = $signed(shrSelected_73_real) + $signed(shrSelected_74_real); // @[FixedPointTypeClass.scala 21:58:@1798.4]
  assign _T_3622 = _T_3621[11:0]; // @[FixedPointTypeClass.scala 21:58:@1799.4]
  assign _T_3623 = $signed(_T_3622); // @[FixedPointTypeClass.scala 21:58:@1800.4]
  assign _T_3624 = $signed(shrSelected_73_imag) + $signed(shrSelected_74_imag); // @[FixedPointTypeClass.scala 21:58:@1801.4]
  assign _T_3625 = _T_3624[11:0]; // @[FixedPointTypeClass.scala 21:58:@1802.4]
  assign _T_3626 = $signed(_T_3625); // @[FixedPointTypeClass.scala 21:58:@1803.4]
  assign _T_3635 = $signed(shrSelected_75_real) + $signed(shrSelected_76_real); // @[FixedPointTypeClass.scala 21:58:@1807.4]
  assign _T_3636 = _T_3635[11:0]; // @[FixedPointTypeClass.scala 21:58:@1808.4]
  assign _T_3637 = $signed(_T_3636); // @[FixedPointTypeClass.scala 21:58:@1809.4]
  assign _T_3638 = $signed(shrSelected_75_imag) + $signed(shrSelected_76_imag); // @[FixedPointTypeClass.scala 21:58:@1810.4]
  assign _T_3639 = _T_3638[11:0]; // @[FixedPointTypeClass.scala 21:58:@1811.4]
  assign _T_3640 = $signed(_T_3639); // @[FixedPointTypeClass.scala 21:58:@1812.4]
  assign _T_3649 = $signed(shrSelected_77_real) + $signed(shrSelected_78_real); // @[FixedPointTypeClass.scala 21:58:@1816.4]
  assign _T_3650 = _T_3649[11:0]; // @[FixedPointTypeClass.scala 21:58:@1817.4]
  assign _T_3651 = $signed(_T_3650); // @[FixedPointTypeClass.scala 21:58:@1818.4]
  assign _T_3652 = $signed(shrSelected_77_imag) + $signed(shrSelected_78_imag); // @[FixedPointTypeClass.scala 21:58:@1819.4]
  assign _T_3653 = _T_3652[11:0]; // @[FixedPointTypeClass.scala 21:58:@1820.4]
  assign _T_3654 = $signed(_T_3653); // @[FixedPointTypeClass.scala 21:58:@1821.4]
  assign _T_3663 = $signed(shrSelected_79_real) + $signed(shrSelected_80_real); // @[FixedPointTypeClass.scala 21:58:@1825.4]
  assign _T_3664 = _T_3663[11:0]; // @[FixedPointTypeClass.scala 21:58:@1826.4]
  assign _T_3665 = $signed(_T_3664); // @[FixedPointTypeClass.scala 21:58:@1827.4]
  assign _T_3666 = $signed(shrSelected_79_imag) + $signed(shrSelected_80_imag); // @[FixedPointTypeClass.scala 21:58:@1828.4]
  assign _T_3667 = _T_3666[11:0]; // @[FixedPointTypeClass.scala 21:58:@1829.4]
  assign _T_3668 = $signed(_T_3667); // @[FixedPointTypeClass.scala 21:58:@1830.4]
  assign _T_3677 = $signed(shrSelected_81_real) + $signed(shrSelected_82_real); // @[FixedPointTypeClass.scala 21:58:@1834.4]
  assign _T_3678 = _T_3677[11:0]; // @[FixedPointTypeClass.scala 21:58:@1835.4]
  assign _T_3679 = $signed(_T_3678); // @[FixedPointTypeClass.scala 21:58:@1836.4]
  assign _T_3680 = $signed(shrSelected_81_imag) + $signed(shrSelected_82_imag); // @[FixedPointTypeClass.scala 21:58:@1837.4]
  assign _T_3681 = _T_3680[11:0]; // @[FixedPointTypeClass.scala 21:58:@1838.4]
  assign _T_3682 = $signed(_T_3681); // @[FixedPointTypeClass.scala 21:58:@1839.4]
  assign _T_3691 = $signed(shrSelected_83_real) + $signed(shrSelected_84_real); // @[FixedPointTypeClass.scala 21:58:@1843.4]
  assign _T_3692 = _T_3691[11:0]; // @[FixedPointTypeClass.scala 21:58:@1844.4]
  assign _T_3693 = $signed(_T_3692); // @[FixedPointTypeClass.scala 21:58:@1845.4]
  assign _T_3694 = $signed(shrSelected_83_imag) + $signed(shrSelected_84_imag); // @[FixedPointTypeClass.scala 21:58:@1846.4]
  assign _T_3695 = _T_3694[11:0]; // @[FixedPointTypeClass.scala 21:58:@1847.4]
  assign _T_3696 = $signed(_T_3695); // @[FixedPointTypeClass.scala 21:58:@1848.4]
  assign _T_3705 = $signed(shrSelected_85_real) + $signed(shrSelected_86_real); // @[FixedPointTypeClass.scala 21:58:@1852.4]
  assign _T_3706 = _T_3705[11:0]; // @[FixedPointTypeClass.scala 21:58:@1853.4]
  assign _T_3707 = $signed(_T_3706); // @[FixedPointTypeClass.scala 21:58:@1854.4]
  assign _T_3708 = $signed(shrSelected_85_imag) + $signed(shrSelected_86_imag); // @[FixedPointTypeClass.scala 21:58:@1855.4]
  assign _T_3709 = _T_3708[11:0]; // @[FixedPointTypeClass.scala 21:58:@1856.4]
  assign _T_3710 = $signed(_T_3709); // @[FixedPointTypeClass.scala 21:58:@1857.4]
  assign _T_3719 = $signed(shrSelected_87_real) + $signed(shrSelected_88_real); // @[FixedPointTypeClass.scala 21:58:@1861.4]
  assign _T_3720 = _T_3719[11:0]; // @[FixedPointTypeClass.scala 21:58:@1862.4]
  assign _T_3721 = $signed(_T_3720); // @[FixedPointTypeClass.scala 21:58:@1863.4]
  assign _T_3722 = $signed(shrSelected_87_imag) + $signed(shrSelected_88_imag); // @[FixedPointTypeClass.scala 21:58:@1864.4]
  assign _T_3723 = _T_3722[11:0]; // @[FixedPointTypeClass.scala 21:58:@1865.4]
  assign _T_3724 = $signed(_T_3723); // @[FixedPointTypeClass.scala 21:58:@1866.4]
  assign _T_3733 = $signed(shrSelected_89_real) + $signed(shrSelected_90_real); // @[FixedPointTypeClass.scala 21:58:@1870.4]
  assign _T_3734 = _T_3733[11:0]; // @[FixedPointTypeClass.scala 21:58:@1871.4]
  assign _T_3735 = $signed(_T_3734); // @[FixedPointTypeClass.scala 21:58:@1872.4]
  assign _T_3736 = $signed(shrSelected_89_imag) + $signed(shrSelected_90_imag); // @[FixedPointTypeClass.scala 21:58:@1873.4]
  assign _T_3737 = _T_3736[11:0]; // @[FixedPointTypeClass.scala 21:58:@1874.4]
  assign _T_3738 = $signed(_T_3737); // @[FixedPointTypeClass.scala 21:58:@1875.4]
  assign _T_3747 = $signed(shrSelected_91_real) + $signed(shrSelected_92_real); // @[FixedPointTypeClass.scala 21:58:@1879.4]
  assign _T_3748 = _T_3747[11:0]; // @[FixedPointTypeClass.scala 21:58:@1880.4]
  assign _T_3749 = $signed(_T_3748); // @[FixedPointTypeClass.scala 21:58:@1881.4]
  assign _T_3750 = $signed(shrSelected_91_imag) + $signed(shrSelected_92_imag); // @[FixedPointTypeClass.scala 21:58:@1882.4]
  assign _T_3751 = _T_3750[11:0]; // @[FixedPointTypeClass.scala 21:58:@1883.4]
  assign _T_3752 = $signed(_T_3751); // @[FixedPointTypeClass.scala 21:58:@1884.4]
  assign _T_3761 = $signed(shrSelected_93_real) + $signed(shrSelected_94_real); // @[FixedPointTypeClass.scala 21:58:@1888.4]
  assign _T_3762 = _T_3761[11:0]; // @[FixedPointTypeClass.scala 21:58:@1889.4]
  assign _T_3763 = $signed(_T_3762); // @[FixedPointTypeClass.scala 21:58:@1890.4]
  assign _T_3764 = $signed(shrSelected_93_imag) + $signed(shrSelected_94_imag); // @[FixedPointTypeClass.scala 21:58:@1891.4]
  assign _T_3765 = _T_3764[11:0]; // @[FixedPointTypeClass.scala 21:58:@1892.4]
  assign _T_3766 = $signed(_T_3765); // @[FixedPointTypeClass.scala 21:58:@1893.4]
  assign _T_3775 = $signed(shrSelected_95_real) + $signed(shrSelected_96_real); // @[FixedPointTypeClass.scala 21:58:@1897.4]
  assign _T_3776 = _T_3775[11:0]; // @[FixedPointTypeClass.scala 21:58:@1898.4]
  assign _T_3777 = $signed(_T_3776); // @[FixedPointTypeClass.scala 21:58:@1899.4]
  assign _T_3778 = $signed(shrSelected_95_imag) + $signed(shrSelected_96_imag); // @[FixedPointTypeClass.scala 21:58:@1900.4]
  assign _T_3779 = _T_3778[11:0]; // @[FixedPointTypeClass.scala 21:58:@1901.4]
  assign _T_3780 = $signed(_T_3779); // @[FixedPointTypeClass.scala 21:58:@1902.4]
  assign _T_3789 = $signed(shrSelected_97_real) + $signed(shrSelected_98_real); // @[FixedPointTypeClass.scala 21:58:@1906.4]
  assign _T_3790 = _T_3789[11:0]; // @[FixedPointTypeClass.scala 21:58:@1907.4]
  assign _T_3791 = $signed(_T_3790); // @[FixedPointTypeClass.scala 21:58:@1908.4]
  assign _T_3792 = $signed(shrSelected_97_imag) + $signed(shrSelected_98_imag); // @[FixedPointTypeClass.scala 21:58:@1909.4]
  assign _T_3793 = _T_3792[11:0]; // @[FixedPointTypeClass.scala 21:58:@1910.4]
  assign _T_3794 = $signed(_T_3793); // @[FixedPointTypeClass.scala 21:58:@1911.4]
  assign _T_3803 = $signed(shrSelected_99_real) + $signed(shrSelected_100_real); // @[FixedPointTypeClass.scala 21:58:@1915.4]
  assign _T_3804 = _T_3803[11:0]; // @[FixedPointTypeClass.scala 21:58:@1916.4]
  assign _T_3805 = $signed(_T_3804); // @[FixedPointTypeClass.scala 21:58:@1917.4]
  assign _T_3806 = $signed(shrSelected_99_imag) + $signed(shrSelected_100_imag); // @[FixedPointTypeClass.scala 21:58:@1918.4]
  assign _T_3807 = _T_3806[11:0]; // @[FixedPointTypeClass.scala 21:58:@1919.4]
  assign _T_3808 = $signed(_T_3807); // @[FixedPointTypeClass.scala 21:58:@1920.4]
  assign _T_3817 = $signed(shrSelected_101_real) + $signed(shrSelected_102_real); // @[FixedPointTypeClass.scala 21:58:@1924.4]
  assign _T_3818 = _T_3817[11:0]; // @[FixedPointTypeClass.scala 21:58:@1925.4]
  assign _T_3819 = $signed(_T_3818); // @[FixedPointTypeClass.scala 21:58:@1926.4]
  assign _T_3820 = $signed(shrSelected_101_imag) + $signed(shrSelected_102_imag); // @[FixedPointTypeClass.scala 21:58:@1927.4]
  assign _T_3821 = _T_3820[11:0]; // @[FixedPointTypeClass.scala 21:58:@1928.4]
  assign _T_3822 = $signed(_T_3821); // @[FixedPointTypeClass.scala 21:58:@1929.4]
  assign _T_3831 = $signed(shrSelected_103_real) + $signed(shrSelected_104_real); // @[FixedPointTypeClass.scala 21:58:@1933.4]
  assign _T_3832 = _T_3831[11:0]; // @[FixedPointTypeClass.scala 21:58:@1934.4]
  assign _T_3833 = $signed(_T_3832); // @[FixedPointTypeClass.scala 21:58:@1935.4]
  assign _T_3834 = $signed(shrSelected_103_imag) + $signed(shrSelected_104_imag); // @[FixedPointTypeClass.scala 21:58:@1936.4]
  assign _T_3835 = _T_3834[11:0]; // @[FixedPointTypeClass.scala 21:58:@1937.4]
  assign _T_3836 = $signed(_T_3835); // @[FixedPointTypeClass.scala 21:58:@1938.4]
  assign _T_3845 = $signed(shrSelected_105_real) + $signed(shrSelected_106_real); // @[FixedPointTypeClass.scala 21:58:@1942.4]
  assign _T_3846 = _T_3845[11:0]; // @[FixedPointTypeClass.scala 21:58:@1943.4]
  assign _T_3847 = $signed(_T_3846); // @[FixedPointTypeClass.scala 21:58:@1944.4]
  assign _T_3848 = $signed(shrSelected_105_imag) + $signed(shrSelected_106_imag); // @[FixedPointTypeClass.scala 21:58:@1945.4]
  assign _T_3849 = _T_3848[11:0]; // @[FixedPointTypeClass.scala 21:58:@1946.4]
  assign _T_3850 = $signed(_T_3849); // @[FixedPointTypeClass.scala 21:58:@1947.4]
  assign _T_3859 = $signed(shrSelected_107_real) + $signed(shrSelected_108_real); // @[FixedPointTypeClass.scala 21:58:@1951.4]
  assign _T_3860 = _T_3859[11:0]; // @[FixedPointTypeClass.scala 21:58:@1952.4]
  assign _T_3861 = $signed(_T_3860); // @[FixedPointTypeClass.scala 21:58:@1953.4]
  assign _T_3862 = $signed(shrSelected_107_imag) + $signed(shrSelected_108_imag); // @[FixedPointTypeClass.scala 21:58:@1954.4]
  assign _T_3863 = _T_3862[11:0]; // @[FixedPointTypeClass.scala 21:58:@1955.4]
  assign _T_3864 = $signed(_T_3863); // @[FixedPointTypeClass.scala 21:58:@1956.4]
  assign _T_3873 = $signed(shrSelected_109_real) + $signed(shrSelected_110_real); // @[FixedPointTypeClass.scala 21:58:@1960.4]
  assign _T_3874 = _T_3873[11:0]; // @[FixedPointTypeClass.scala 21:58:@1961.4]
  assign _T_3875 = $signed(_T_3874); // @[FixedPointTypeClass.scala 21:58:@1962.4]
  assign _T_3876 = $signed(shrSelected_109_imag) + $signed(shrSelected_110_imag); // @[FixedPointTypeClass.scala 21:58:@1963.4]
  assign _T_3877 = _T_3876[11:0]; // @[FixedPointTypeClass.scala 21:58:@1964.4]
  assign _T_3878 = $signed(_T_3877); // @[FixedPointTypeClass.scala 21:58:@1965.4]
  assign _T_3887 = $signed(shrSelected_111_real) + $signed(shrSelected_112_real); // @[FixedPointTypeClass.scala 21:58:@1969.4]
  assign _T_3888 = _T_3887[11:0]; // @[FixedPointTypeClass.scala 21:58:@1970.4]
  assign _T_3889 = $signed(_T_3888); // @[FixedPointTypeClass.scala 21:58:@1971.4]
  assign _T_3890 = $signed(shrSelected_111_imag) + $signed(shrSelected_112_imag); // @[FixedPointTypeClass.scala 21:58:@1972.4]
  assign _T_3891 = _T_3890[11:0]; // @[FixedPointTypeClass.scala 21:58:@1973.4]
  assign _T_3892 = $signed(_T_3891); // @[FixedPointTypeClass.scala 21:58:@1974.4]
  assign _T_3901 = $signed(shrSelected_113_real) + $signed(shrSelected_114_real); // @[FixedPointTypeClass.scala 21:58:@1978.4]
  assign _T_3902 = _T_3901[11:0]; // @[FixedPointTypeClass.scala 21:58:@1979.4]
  assign _T_3903 = $signed(_T_3902); // @[FixedPointTypeClass.scala 21:58:@1980.4]
  assign _T_3904 = $signed(shrSelected_113_imag) + $signed(shrSelected_114_imag); // @[FixedPointTypeClass.scala 21:58:@1981.4]
  assign _T_3905 = _T_3904[11:0]; // @[FixedPointTypeClass.scala 21:58:@1982.4]
  assign _T_3906 = $signed(_T_3905); // @[FixedPointTypeClass.scala 21:58:@1983.4]
  assign _T_3915 = $signed(shrSelected_115_real) + $signed(shrSelected_116_real); // @[FixedPointTypeClass.scala 21:58:@1987.4]
  assign _T_3916 = _T_3915[11:0]; // @[FixedPointTypeClass.scala 21:58:@1988.4]
  assign _T_3917 = $signed(_T_3916); // @[FixedPointTypeClass.scala 21:58:@1989.4]
  assign _T_3918 = $signed(shrSelected_115_imag) + $signed(shrSelected_116_imag); // @[FixedPointTypeClass.scala 21:58:@1990.4]
  assign _T_3919 = _T_3918[11:0]; // @[FixedPointTypeClass.scala 21:58:@1991.4]
  assign _T_3920 = $signed(_T_3919); // @[FixedPointTypeClass.scala 21:58:@1992.4]
  assign _T_3929 = $signed(shrSelected_117_real) + $signed(shrSelected_118_real); // @[FixedPointTypeClass.scala 21:58:@1996.4]
  assign _T_3930 = _T_3929[11:0]; // @[FixedPointTypeClass.scala 21:58:@1997.4]
  assign _T_3931 = $signed(_T_3930); // @[FixedPointTypeClass.scala 21:58:@1998.4]
  assign _T_3932 = $signed(shrSelected_117_imag) + $signed(shrSelected_118_imag); // @[FixedPointTypeClass.scala 21:58:@1999.4]
  assign _T_3933 = _T_3932[11:0]; // @[FixedPointTypeClass.scala 21:58:@2000.4]
  assign _T_3934 = $signed(_T_3933); // @[FixedPointTypeClass.scala 21:58:@2001.4]
  assign _T_3943 = $signed(shrSelected_119_real) + $signed(shrSelected_120_real); // @[FixedPointTypeClass.scala 21:58:@2005.4]
  assign _T_3944 = _T_3943[11:0]; // @[FixedPointTypeClass.scala 21:58:@2006.4]
  assign _T_3945 = $signed(_T_3944); // @[FixedPointTypeClass.scala 21:58:@2007.4]
  assign _T_3946 = $signed(shrSelected_119_imag) + $signed(shrSelected_120_imag); // @[FixedPointTypeClass.scala 21:58:@2008.4]
  assign _T_3947 = _T_3946[11:0]; // @[FixedPointTypeClass.scala 21:58:@2009.4]
  assign _T_3948 = $signed(_T_3947); // @[FixedPointTypeClass.scala 21:58:@2010.4]
  assign _T_3957 = $signed(shrSelected_121_real) + $signed(shrSelected_122_real); // @[FixedPointTypeClass.scala 21:58:@2014.4]
  assign _T_3958 = _T_3957[11:0]; // @[FixedPointTypeClass.scala 21:58:@2015.4]
  assign _T_3959 = $signed(_T_3958); // @[FixedPointTypeClass.scala 21:58:@2016.4]
  assign _T_3960 = $signed(shrSelected_121_imag) + $signed(shrSelected_122_imag); // @[FixedPointTypeClass.scala 21:58:@2017.4]
  assign _T_3961 = _T_3960[11:0]; // @[FixedPointTypeClass.scala 21:58:@2018.4]
  assign _T_3962 = $signed(_T_3961); // @[FixedPointTypeClass.scala 21:58:@2019.4]
  assign _T_3971 = $signed(shrSelected_123_real) + $signed(shrSelected_124_real); // @[FixedPointTypeClass.scala 21:58:@2023.4]
  assign _T_3972 = _T_3971[11:0]; // @[FixedPointTypeClass.scala 21:58:@2024.4]
  assign _T_3973 = $signed(_T_3972); // @[FixedPointTypeClass.scala 21:58:@2025.4]
  assign _T_3974 = $signed(shrSelected_123_imag) + $signed(shrSelected_124_imag); // @[FixedPointTypeClass.scala 21:58:@2026.4]
  assign _T_3975 = _T_3974[11:0]; // @[FixedPointTypeClass.scala 21:58:@2027.4]
  assign _T_3976 = $signed(_T_3975); // @[FixedPointTypeClass.scala 21:58:@2028.4]
  assign _T_3985 = $signed(shrSelected_125_real) + $signed(shrSelected_126_real); // @[FixedPointTypeClass.scala 21:58:@2032.4]
  assign _T_3986 = _T_3985[11:0]; // @[FixedPointTypeClass.scala 21:58:@2033.4]
  assign _T_3987 = $signed(_T_3986); // @[FixedPointTypeClass.scala 21:58:@2034.4]
  assign _T_3988 = $signed(shrSelected_125_imag) + $signed(shrSelected_126_imag); // @[FixedPointTypeClass.scala 21:58:@2035.4]
  assign _T_3989 = _T_3988[11:0]; // @[FixedPointTypeClass.scala 21:58:@2036.4]
  assign _T_3990 = $signed(_T_3989); // @[FixedPointTypeClass.scala 21:58:@2037.4]
  assign _T_3999 = $signed(_T_3105) + $signed(_T_3119); // @[FixedPointTypeClass.scala 21:58:@2041.4]
  assign _T_4000 = _T_3999[11:0]; // @[FixedPointTypeClass.scala 21:58:@2042.4]
  assign _T_4001 = $signed(_T_4000); // @[FixedPointTypeClass.scala 21:58:@2043.4]
  assign _T_4002 = $signed(_T_3108) + $signed(_T_3122); // @[FixedPointTypeClass.scala 21:58:@2044.4]
  assign _T_4003 = _T_4002[11:0]; // @[FixedPointTypeClass.scala 21:58:@2045.4]
  assign _T_4004 = $signed(_T_4003); // @[FixedPointTypeClass.scala 21:58:@2046.4]
  assign _T_4013 = $signed(_T_3133) + $signed(_T_3147); // @[FixedPointTypeClass.scala 21:58:@2050.4]
  assign _T_4014 = _T_4013[11:0]; // @[FixedPointTypeClass.scala 21:58:@2051.4]
  assign _T_4015 = $signed(_T_4014); // @[FixedPointTypeClass.scala 21:58:@2052.4]
  assign _T_4016 = $signed(_T_3136) + $signed(_T_3150); // @[FixedPointTypeClass.scala 21:58:@2053.4]
  assign _T_4017 = _T_4016[11:0]; // @[FixedPointTypeClass.scala 21:58:@2054.4]
  assign _T_4018 = $signed(_T_4017); // @[FixedPointTypeClass.scala 21:58:@2055.4]
  assign _T_4027 = $signed(_T_3161) + $signed(_T_3175); // @[FixedPointTypeClass.scala 21:58:@2059.4]
  assign _T_4028 = _T_4027[11:0]; // @[FixedPointTypeClass.scala 21:58:@2060.4]
  assign _T_4029 = $signed(_T_4028); // @[FixedPointTypeClass.scala 21:58:@2061.4]
  assign _T_4030 = $signed(_T_3164) + $signed(_T_3178); // @[FixedPointTypeClass.scala 21:58:@2062.4]
  assign _T_4031 = _T_4030[11:0]; // @[FixedPointTypeClass.scala 21:58:@2063.4]
  assign _T_4032 = $signed(_T_4031); // @[FixedPointTypeClass.scala 21:58:@2064.4]
  assign _T_4041 = $signed(_T_3189) + $signed(_T_3203); // @[FixedPointTypeClass.scala 21:58:@2068.4]
  assign _T_4042 = _T_4041[11:0]; // @[FixedPointTypeClass.scala 21:58:@2069.4]
  assign _T_4043 = $signed(_T_4042); // @[FixedPointTypeClass.scala 21:58:@2070.4]
  assign _T_4044 = $signed(_T_3192) + $signed(_T_3206); // @[FixedPointTypeClass.scala 21:58:@2071.4]
  assign _T_4045 = _T_4044[11:0]; // @[FixedPointTypeClass.scala 21:58:@2072.4]
  assign _T_4046 = $signed(_T_4045); // @[FixedPointTypeClass.scala 21:58:@2073.4]
  assign _T_4055 = $signed(_T_3217) + $signed(_T_3231); // @[FixedPointTypeClass.scala 21:58:@2077.4]
  assign _T_4056 = _T_4055[11:0]; // @[FixedPointTypeClass.scala 21:58:@2078.4]
  assign _T_4057 = $signed(_T_4056); // @[FixedPointTypeClass.scala 21:58:@2079.4]
  assign _T_4058 = $signed(_T_3220) + $signed(_T_3234); // @[FixedPointTypeClass.scala 21:58:@2080.4]
  assign _T_4059 = _T_4058[11:0]; // @[FixedPointTypeClass.scala 21:58:@2081.4]
  assign _T_4060 = $signed(_T_4059); // @[FixedPointTypeClass.scala 21:58:@2082.4]
  assign _T_4069 = $signed(_T_3245) + $signed(_T_3259); // @[FixedPointTypeClass.scala 21:58:@2086.4]
  assign _T_4070 = _T_4069[11:0]; // @[FixedPointTypeClass.scala 21:58:@2087.4]
  assign _T_4071 = $signed(_T_4070); // @[FixedPointTypeClass.scala 21:58:@2088.4]
  assign _T_4072 = $signed(_T_3248) + $signed(_T_3262); // @[FixedPointTypeClass.scala 21:58:@2089.4]
  assign _T_4073 = _T_4072[11:0]; // @[FixedPointTypeClass.scala 21:58:@2090.4]
  assign _T_4074 = $signed(_T_4073); // @[FixedPointTypeClass.scala 21:58:@2091.4]
  assign _T_4083 = $signed(_T_3273) + $signed(_T_3287); // @[FixedPointTypeClass.scala 21:58:@2095.4]
  assign _T_4084 = _T_4083[11:0]; // @[FixedPointTypeClass.scala 21:58:@2096.4]
  assign _T_4085 = $signed(_T_4084); // @[FixedPointTypeClass.scala 21:58:@2097.4]
  assign _T_4086 = $signed(_T_3276) + $signed(_T_3290); // @[FixedPointTypeClass.scala 21:58:@2098.4]
  assign _T_4087 = _T_4086[11:0]; // @[FixedPointTypeClass.scala 21:58:@2099.4]
  assign _T_4088 = $signed(_T_4087); // @[FixedPointTypeClass.scala 21:58:@2100.4]
  assign _T_4097 = $signed(_T_3301) + $signed(_T_3315); // @[FixedPointTypeClass.scala 21:58:@2104.4]
  assign _T_4098 = _T_4097[11:0]; // @[FixedPointTypeClass.scala 21:58:@2105.4]
  assign _T_4099 = $signed(_T_4098); // @[FixedPointTypeClass.scala 21:58:@2106.4]
  assign _T_4100 = $signed(_T_3304) + $signed(_T_3318); // @[FixedPointTypeClass.scala 21:58:@2107.4]
  assign _T_4101 = _T_4100[11:0]; // @[FixedPointTypeClass.scala 21:58:@2108.4]
  assign _T_4102 = $signed(_T_4101); // @[FixedPointTypeClass.scala 21:58:@2109.4]
  assign _T_4111 = $signed(_T_3329) + $signed(_T_3343); // @[FixedPointTypeClass.scala 21:58:@2113.4]
  assign _T_4112 = _T_4111[11:0]; // @[FixedPointTypeClass.scala 21:58:@2114.4]
  assign _T_4113 = $signed(_T_4112); // @[FixedPointTypeClass.scala 21:58:@2115.4]
  assign _T_4114 = $signed(_T_3332) + $signed(_T_3346); // @[FixedPointTypeClass.scala 21:58:@2116.4]
  assign _T_4115 = _T_4114[11:0]; // @[FixedPointTypeClass.scala 21:58:@2117.4]
  assign _T_4116 = $signed(_T_4115); // @[FixedPointTypeClass.scala 21:58:@2118.4]
  assign _T_4125 = $signed(_T_3357) + $signed(_T_3371); // @[FixedPointTypeClass.scala 21:58:@2122.4]
  assign _T_4126 = _T_4125[11:0]; // @[FixedPointTypeClass.scala 21:58:@2123.4]
  assign _T_4127 = $signed(_T_4126); // @[FixedPointTypeClass.scala 21:58:@2124.4]
  assign _T_4128 = $signed(_T_3360) + $signed(_T_3374); // @[FixedPointTypeClass.scala 21:58:@2125.4]
  assign _T_4129 = _T_4128[11:0]; // @[FixedPointTypeClass.scala 21:58:@2126.4]
  assign _T_4130 = $signed(_T_4129); // @[FixedPointTypeClass.scala 21:58:@2127.4]
  assign _T_4139 = $signed(_T_3385) + $signed(_T_3399); // @[FixedPointTypeClass.scala 21:58:@2131.4]
  assign _T_4140 = _T_4139[11:0]; // @[FixedPointTypeClass.scala 21:58:@2132.4]
  assign _T_4141 = $signed(_T_4140); // @[FixedPointTypeClass.scala 21:58:@2133.4]
  assign _T_4142 = $signed(_T_3388) + $signed(_T_3402); // @[FixedPointTypeClass.scala 21:58:@2134.4]
  assign _T_4143 = _T_4142[11:0]; // @[FixedPointTypeClass.scala 21:58:@2135.4]
  assign _T_4144 = $signed(_T_4143); // @[FixedPointTypeClass.scala 21:58:@2136.4]
  assign _T_4153 = $signed(_T_3413) + $signed(_T_3427); // @[FixedPointTypeClass.scala 21:58:@2140.4]
  assign _T_4154 = _T_4153[11:0]; // @[FixedPointTypeClass.scala 21:58:@2141.4]
  assign _T_4155 = $signed(_T_4154); // @[FixedPointTypeClass.scala 21:58:@2142.4]
  assign _T_4156 = $signed(_T_3416) + $signed(_T_3430); // @[FixedPointTypeClass.scala 21:58:@2143.4]
  assign _T_4157 = _T_4156[11:0]; // @[FixedPointTypeClass.scala 21:58:@2144.4]
  assign _T_4158 = $signed(_T_4157); // @[FixedPointTypeClass.scala 21:58:@2145.4]
  assign _T_4167 = $signed(_T_3441) + $signed(_T_3455); // @[FixedPointTypeClass.scala 21:58:@2149.4]
  assign _T_4168 = _T_4167[11:0]; // @[FixedPointTypeClass.scala 21:58:@2150.4]
  assign _T_4169 = $signed(_T_4168); // @[FixedPointTypeClass.scala 21:58:@2151.4]
  assign _T_4170 = $signed(_T_3444) + $signed(_T_3458); // @[FixedPointTypeClass.scala 21:58:@2152.4]
  assign _T_4171 = _T_4170[11:0]; // @[FixedPointTypeClass.scala 21:58:@2153.4]
  assign _T_4172 = $signed(_T_4171); // @[FixedPointTypeClass.scala 21:58:@2154.4]
  assign _T_4181 = $signed(_T_3469) + $signed(_T_3483); // @[FixedPointTypeClass.scala 21:58:@2158.4]
  assign _T_4182 = _T_4181[11:0]; // @[FixedPointTypeClass.scala 21:58:@2159.4]
  assign _T_4183 = $signed(_T_4182); // @[FixedPointTypeClass.scala 21:58:@2160.4]
  assign _T_4184 = $signed(_T_3472) + $signed(_T_3486); // @[FixedPointTypeClass.scala 21:58:@2161.4]
  assign _T_4185 = _T_4184[11:0]; // @[FixedPointTypeClass.scala 21:58:@2162.4]
  assign _T_4186 = $signed(_T_4185); // @[FixedPointTypeClass.scala 21:58:@2163.4]
  assign _T_4195 = $signed(_T_3497) + $signed(_T_3511); // @[FixedPointTypeClass.scala 21:58:@2167.4]
  assign _T_4196 = _T_4195[11:0]; // @[FixedPointTypeClass.scala 21:58:@2168.4]
  assign _T_4197 = $signed(_T_4196); // @[FixedPointTypeClass.scala 21:58:@2169.4]
  assign _T_4198 = $signed(_T_3500) + $signed(_T_3514); // @[FixedPointTypeClass.scala 21:58:@2170.4]
  assign _T_4199 = _T_4198[11:0]; // @[FixedPointTypeClass.scala 21:58:@2171.4]
  assign _T_4200 = $signed(_T_4199); // @[FixedPointTypeClass.scala 21:58:@2172.4]
  assign _T_4209 = $signed(_T_3525) + $signed(_T_3539); // @[FixedPointTypeClass.scala 21:58:@2176.4]
  assign _T_4210 = _T_4209[11:0]; // @[FixedPointTypeClass.scala 21:58:@2177.4]
  assign _T_4211 = $signed(_T_4210); // @[FixedPointTypeClass.scala 21:58:@2178.4]
  assign _T_4212 = $signed(_T_3528) + $signed(_T_3542); // @[FixedPointTypeClass.scala 21:58:@2179.4]
  assign _T_4213 = _T_4212[11:0]; // @[FixedPointTypeClass.scala 21:58:@2180.4]
  assign _T_4214 = $signed(_T_4213); // @[FixedPointTypeClass.scala 21:58:@2181.4]
  assign _T_4223 = $signed(_T_3553) + $signed(_T_3567); // @[FixedPointTypeClass.scala 21:58:@2185.4]
  assign _T_4224 = _T_4223[11:0]; // @[FixedPointTypeClass.scala 21:58:@2186.4]
  assign _T_4225 = $signed(_T_4224); // @[FixedPointTypeClass.scala 21:58:@2187.4]
  assign _T_4226 = $signed(_T_3556) + $signed(_T_3570); // @[FixedPointTypeClass.scala 21:58:@2188.4]
  assign _T_4227 = _T_4226[11:0]; // @[FixedPointTypeClass.scala 21:58:@2189.4]
  assign _T_4228 = $signed(_T_4227); // @[FixedPointTypeClass.scala 21:58:@2190.4]
  assign _T_4237 = $signed(_T_3581) + $signed(_T_3595); // @[FixedPointTypeClass.scala 21:58:@2194.4]
  assign _T_4238 = _T_4237[11:0]; // @[FixedPointTypeClass.scala 21:58:@2195.4]
  assign _T_4239 = $signed(_T_4238); // @[FixedPointTypeClass.scala 21:58:@2196.4]
  assign _T_4240 = $signed(_T_3584) + $signed(_T_3598); // @[FixedPointTypeClass.scala 21:58:@2197.4]
  assign _T_4241 = _T_4240[11:0]; // @[FixedPointTypeClass.scala 21:58:@2198.4]
  assign _T_4242 = $signed(_T_4241); // @[FixedPointTypeClass.scala 21:58:@2199.4]
  assign _T_4251 = $signed(_T_3609) + $signed(_T_3623); // @[FixedPointTypeClass.scala 21:58:@2203.4]
  assign _T_4252 = _T_4251[11:0]; // @[FixedPointTypeClass.scala 21:58:@2204.4]
  assign _T_4253 = $signed(_T_4252); // @[FixedPointTypeClass.scala 21:58:@2205.4]
  assign _T_4254 = $signed(_T_3612) + $signed(_T_3626); // @[FixedPointTypeClass.scala 21:58:@2206.4]
  assign _T_4255 = _T_4254[11:0]; // @[FixedPointTypeClass.scala 21:58:@2207.4]
  assign _T_4256 = $signed(_T_4255); // @[FixedPointTypeClass.scala 21:58:@2208.4]
  assign _T_4265 = $signed(_T_3637) + $signed(_T_3651); // @[FixedPointTypeClass.scala 21:58:@2212.4]
  assign _T_4266 = _T_4265[11:0]; // @[FixedPointTypeClass.scala 21:58:@2213.4]
  assign _T_4267 = $signed(_T_4266); // @[FixedPointTypeClass.scala 21:58:@2214.4]
  assign _T_4268 = $signed(_T_3640) + $signed(_T_3654); // @[FixedPointTypeClass.scala 21:58:@2215.4]
  assign _T_4269 = _T_4268[11:0]; // @[FixedPointTypeClass.scala 21:58:@2216.4]
  assign _T_4270 = $signed(_T_4269); // @[FixedPointTypeClass.scala 21:58:@2217.4]
  assign _T_4279 = $signed(_T_3665) + $signed(_T_3679); // @[FixedPointTypeClass.scala 21:58:@2221.4]
  assign _T_4280 = _T_4279[11:0]; // @[FixedPointTypeClass.scala 21:58:@2222.4]
  assign _T_4281 = $signed(_T_4280); // @[FixedPointTypeClass.scala 21:58:@2223.4]
  assign _T_4282 = $signed(_T_3668) + $signed(_T_3682); // @[FixedPointTypeClass.scala 21:58:@2224.4]
  assign _T_4283 = _T_4282[11:0]; // @[FixedPointTypeClass.scala 21:58:@2225.4]
  assign _T_4284 = $signed(_T_4283); // @[FixedPointTypeClass.scala 21:58:@2226.4]
  assign _T_4293 = $signed(_T_3693) + $signed(_T_3707); // @[FixedPointTypeClass.scala 21:58:@2230.4]
  assign _T_4294 = _T_4293[11:0]; // @[FixedPointTypeClass.scala 21:58:@2231.4]
  assign _T_4295 = $signed(_T_4294); // @[FixedPointTypeClass.scala 21:58:@2232.4]
  assign _T_4296 = $signed(_T_3696) + $signed(_T_3710); // @[FixedPointTypeClass.scala 21:58:@2233.4]
  assign _T_4297 = _T_4296[11:0]; // @[FixedPointTypeClass.scala 21:58:@2234.4]
  assign _T_4298 = $signed(_T_4297); // @[FixedPointTypeClass.scala 21:58:@2235.4]
  assign _T_4307 = $signed(_T_3721) + $signed(_T_3735); // @[FixedPointTypeClass.scala 21:58:@2239.4]
  assign _T_4308 = _T_4307[11:0]; // @[FixedPointTypeClass.scala 21:58:@2240.4]
  assign _T_4309 = $signed(_T_4308); // @[FixedPointTypeClass.scala 21:58:@2241.4]
  assign _T_4310 = $signed(_T_3724) + $signed(_T_3738); // @[FixedPointTypeClass.scala 21:58:@2242.4]
  assign _T_4311 = _T_4310[11:0]; // @[FixedPointTypeClass.scala 21:58:@2243.4]
  assign _T_4312 = $signed(_T_4311); // @[FixedPointTypeClass.scala 21:58:@2244.4]
  assign _T_4321 = $signed(_T_3749) + $signed(_T_3763); // @[FixedPointTypeClass.scala 21:58:@2248.4]
  assign _T_4322 = _T_4321[11:0]; // @[FixedPointTypeClass.scala 21:58:@2249.4]
  assign _T_4323 = $signed(_T_4322); // @[FixedPointTypeClass.scala 21:58:@2250.4]
  assign _T_4324 = $signed(_T_3752) + $signed(_T_3766); // @[FixedPointTypeClass.scala 21:58:@2251.4]
  assign _T_4325 = _T_4324[11:0]; // @[FixedPointTypeClass.scala 21:58:@2252.4]
  assign _T_4326 = $signed(_T_4325); // @[FixedPointTypeClass.scala 21:58:@2253.4]
  assign _T_4335 = $signed(_T_3777) + $signed(_T_3791); // @[FixedPointTypeClass.scala 21:58:@2257.4]
  assign _T_4336 = _T_4335[11:0]; // @[FixedPointTypeClass.scala 21:58:@2258.4]
  assign _T_4337 = $signed(_T_4336); // @[FixedPointTypeClass.scala 21:58:@2259.4]
  assign _T_4338 = $signed(_T_3780) + $signed(_T_3794); // @[FixedPointTypeClass.scala 21:58:@2260.4]
  assign _T_4339 = _T_4338[11:0]; // @[FixedPointTypeClass.scala 21:58:@2261.4]
  assign _T_4340 = $signed(_T_4339); // @[FixedPointTypeClass.scala 21:58:@2262.4]
  assign _T_4349 = $signed(_T_3805) + $signed(_T_3819); // @[FixedPointTypeClass.scala 21:58:@2266.4]
  assign _T_4350 = _T_4349[11:0]; // @[FixedPointTypeClass.scala 21:58:@2267.4]
  assign _T_4351 = $signed(_T_4350); // @[FixedPointTypeClass.scala 21:58:@2268.4]
  assign _T_4352 = $signed(_T_3808) + $signed(_T_3822); // @[FixedPointTypeClass.scala 21:58:@2269.4]
  assign _T_4353 = _T_4352[11:0]; // @[FixedPointTypeClass.scala 21:58:@2270.4]
  assign _T_4354 = $signed(_T_4353); // @[FixedPointTypeClass.scala 21:58:@2271.4]
  assign _T_4363 = $signed(_T_3833) + $signed(_T_3847); // @[FixedPointTypeClass.scala 21:58:@2275.4]
  assign _T_4364 = _T_4363[11:0]; // @[FixedPointTypeClass.scala 21:58:@2276.4]
  assign _T_4365 = $signed(_T_4364); // @[FixedPointTypeClass.scala 21:58:@2277.4]
  assign _T_4366 = $signed(_T_3836) + $signed(_T_3850); // @[FixedPointTypeClass.scala 21:58:@2278.4]
  assign _T_4367 = _T_4366[11:0]; // @[FixedPointTypeClass.scala 21:58:@2279.4]
  assign _T_4368 = $signed(_T_4367); // @[FixedPointTypeClass.scala 21:58:@2280.4]
  assign _T_4377 = $signed(_T_3861) + $signed(_T_3875); // @[FixedPointTypeClass.scala 21:58:@2284.4]
  assign _T_4378 = _T_4377[11:0]; // @[FixedPointTypeClass.scala 21:58:@2285.4]
  assign _T_4379 = $signed(_T_4378); // @[FixedPointTypeClass.scala 21:58:@2286.4]
  assign _T_4380 = $signed(_T_3864) + $signed(_T_3878); // @[FixedPointTypeClass.scala 21:58:@2287.4]
  assign _T_4381 = _T_4380[11:0]; // @[FixedPointTypeClass.scala 21:58:@2288.4]
  assign _T_4382 = $signed(_T_4381); // @[FixedPointTypeClass.scala 21:58:@2289.4]
  assign _T_4391 = $signed(_T_3889) + $signed(_T_3903); // @[FixedPointTypeClass.scala 21:58:@2293.4]
  assign _T_4392 = _T_4391[11:0]; // @[FixedPointTypeClass.scala 21:58:@2294.4]
  assign _T_4393 = $signed(_T_4392); // @[FixedPointTypeClass.scala 21:58:@2295.4]
  assign _T_4394 = $signed(_T_3892) + $signed(_T_3906); // @[FixedPointTypeClass.scala 21:58:@2296.4]
  assign _T_4395 = _T_4394[11:0]; // @[FixedPointTypeClass.scala 21:58:@2297.4]
  assign _T_4396 = $signed(_T_4395); // @[FixedPointTypeClass.scala 21:58:@2298.4]
  assign _T_4405 = $signed(_T_3917) + $signed(_T_3931); // @[FixedPointTypeClass.scala 21:58:@2302.4]
  assign _T_4406 = _T_4405[11:0]; // @[FixedPointTypeClass.scala 21:58:@2303.4]
  assign _T_4407 = $signed(_T_4406); // @[FixedPointTypeClass.scala 21:58:@2304.4]
  assign _T_4408 = $signed(_T_3920) + $signed(_T_3934); // @[FixedPointTypeClass.scala 21:58:@2305.4]
  assign _T_4409 = _T_4408[11:0]; // @[FixedPointTypeClass.scala 21:58:@2306.4]
  assign _T_4410 = $signed(_T_4409); // @[FixedPointTypeClass.scala 21:58:@2307.4]
  assign _T_4419 = $signed(_T_3945) + $signed(_T_3959); // @[FixedPointTypeClass.scala 21:58:@2311.4]
  assign _T_4420 = _T_4419[11:0]; // @[FixedPointTypeClass.scala 21:58:@2312.4]
  assign _T_4421 = $signed(_T_4420); // @[FixedPointTypeClass.scala 21:58:@2313.4]
  assign _T_4422 = $signed(_T_3948) + $signed(_T_3962); // @[FixedPointTypeClass.scala 21:58:@2314.4]
  assign _T_4423 = _T_4422[11:0]; // @[FixedPointTypeClass.scala 21:58:@2315.4]
  assign _T_4424 = $signed(_T_4423); // @[FixedPointTypeClass.scala 21:58:@2316.4]
  assign _T_4433 = $signed(_T_3973) + $signed(_T_3987); // @[FixedPointTypeClass.scala 21:58:@2320.4]
  assign _T_4434 = _T_4433[11:0]; // @[FixedPointTypeClass.scala 21:58:@2321.4]
  assign _T_4435 = $signed(_T_4434); // @[FixedPointTypeClass.scala 21:58:@2322.4]
  assign _T_4436 = $signed(_T_3976) + $signed(_T_3990); // @[FixedPointTypeClass.scala 21:58:@2323.4]
  assign _T_4437 = _T_4436[11:0]; // @[FixedPointTypeClass.scala 21:58:@2324.4]
  assign _T_4438 = $signed(_T_4437); // @[FixedPointTypeClass.scala 21:58:@2325.4]
  assign _T_4447 = $signed(_T_4001) + $signed(_T_4015); // @[FixedPointTypeClass.scala 21:58:@2329.4]
  assign _T_4448 = _T_4447[11:0]; // @[FixedPointTypeClass.scala 21:58:@2330.4]
  assign _T_4449 = $signed(_T_4448); // @[FixedPointTypeClass.scala 21:58:@2331.4]
  assign _T_4450 = $signed(_T_4004) + $signed(_T_4018); // @[FixedPointTypeClass.scala 21:58:@2332.4]
  assign _T_4451 = _T_4450[11:0]; // @[FixedPointTypeClass.scala 21:58:@2333.4]
  assign _T_4452 = $signed(_T_4451); // @[FixedPointTypeClass.scala 21:58:@2334.4]
  assign _T_4461 = $signed(_T_4029) + $signed(_T_4043); // @[FixedPointTypeClass.scala 21:58:@2338.4]
  assign _T_4462 = _T_4461[11:0]; // @[FixedPointTypeClass.scala 21:58:@2339.4]
  assign _T_4463 = $signed(_T_4462); // @[FixedPointTypeClass.scala 21:58:@2340.4]
  assign _T_4464 = $signed(_T_4032) + $signed(_T_4046); // @[FixedPointTypeClass.scala 21:58:@2341.4]
  assign _T_4465 = _T_4464[11:0]; // @[FixedPointTypeClass.scala 21:58:@2342.4]
  assign _T_4466 = $signed(_T_4465); // @[FixedPointTypeClass.scala 21:58:@2343.4]
  assign _T_4475 = $signed(_T_4057) + $signed(_T_4071); // @[FixedPointTypeClass.scala 21:58:@2347.4]
  assign _T_4476 = _T_4475[11:0]; // @[FixedPointTypeClass.scala 21:58:@2348.4]
  assign _T_4477 = $signed(_T_4476); // @[FixedPointTypeClass.scala 21:58:@2349.4]
  assign _T_4478 = $signed(_T_4060) + $signed(_T_4074); // @[FixedPointTypeClass.scala 21:58:@2350.4]
  assign _T_4479 = _T_4478[11:0]; // @[FixedPointTypeClass.scala 21:58:@2351.4]
  assign _T_4480 = $signed(_T_4479); // @[FixedPointTypeClass.scala 21:58:@2352.4]
  assign _T_4489 = $signed(_T_4085) + $signed(_T_4099); // @[FixedPointTypeClass.scala 21:58:@2356.4]
  assign _T_4490 = _T_4489[11:0]; // @[FixedPointTypeClass.scala 21:58:@2357.4]
  assign _T_4491 = $signed(_T_4490); // @[FixedPointTypeClass.scala 21:58:@2358.4]
  assign _T_4492 = $signed(_T_4088) + $signed(_T_4102); // @[FixedPointTypeClass.scala 21:58:@2359.4]
  assign _T_4493 = _T_4492[11:0]; // @[FixedPointTypeClass.scala 21:58:@2360.4]
  assign _T_4494 = $signed(_T_4493); // @[FixedPointTypeClass.scala 21:58:@2361.4]
  assign _T_4503 = $signed(_T_4113) + $signed(_T_4127); // @[FixedPointTypeClass.scala 21:58:@2365.4]
  assign _T_4504 = _T_4503[11:0]; // @[FixedPointTypeClass.scala 21:58:@2366.4]
  assign _T_4505 = $signed(_T_4504); // @[FixedPointTypeClass.scala 21:58:@2367.4]
  assign _T_4506 = $signed(_T_4116) + $signed(_T_4130); // @[FixedPointTypeClass.scala 21:58:@2368.4]
  assign _T_4507 = _T_4506[11:0]; // @[FixedPointTypeClass.scala 21:58:@2369.4]
  assign _T_4508 = $signed(_T_4507); // @[FixedPointTypeClass.scala 21:58:@2370.4]
  assign _T_4517 = $signed(_T_4141) + $signed(_T_4155); // @[FixedPointTypeClass.scala 21:58:@2374.4]
  assign _T_4518 = _T_4517[11:0]; // @[FixedPointTypeClass.scala 21:58:@2375.4]
  assign _T_4519 = $signed(_T_4518); // @[FixedPointTypeClass.scala 21:58:@2376.4]
  assign _T_4520 = $signed(_T_4144) + $signed(_T_4158); // @[FixedPointTypeClass.scala 21:58:@2377.4]
  assign _T_4521 = _T_4520[11:0]; // @[FixedPointTypeClass.scala 21:58:@2378.4]
  assign _T_4522 = $signed(_T_4521); // @[FixedPointTypeClass.scala 21:58:@2379.4]
  assign _T_4531 = $signed(_T_4169) + $signed(_T_4183); // @[FixedPointTypeClass.scala 21:58:@2383.4]
  assign _T_4532 = _T_4531[11:0]; // @[FixedPointTypeClass.scala 21:58:@2384.4]
  assign _T_4533 = $signed(_T_4532); // @[FixedPointTypeClass.scala 21:58:@2385.4]
  assign _T_4534 = $signed(_T_4172) + $signed(_T_4186); // @[FixedPointTypeClass.scala 21:58:@2386.4]
  assign _T_4535 = _T_4534[11:0]; // @[FixedPointTypeClass.scala 21:58:@2387.4]
  assign _T_4536 = $signed(_T_4535); // @[FixedPointTypeClass.scala 21:58:@2388.4]
  assign _T_4545 = $signed(_T_4197) + $signed(_T_4211); // @[FixedPointTypeClass.scala 21:58:@2392.4]
  assign _T_4546 = _T_4545[11:0]; // @[FixedPointTypeClass.scala 21:58:@2393.4]
  assign _T_4547 = $signed(_T_4546); // @[FixedPointTypeClass.scala 21:58:@2394.4]
  assign _T_4548 = $signed(_T_4200) + $signed(_T_4214); // @[FixedPointTypeClass.scala 21:58:@2395.4]
  assign _T_4549 = _T_4548[11:0]; // @[FixedPointTypeClass.scala 21:58:@2396.4]
  assign _T_4550 = $signed(_T_4549); // @[FixedPointTypeClass.scala 21:58:@2397.4]
  assign _T_4559 = $signed(_T_4225) + $signed(_T_4239); // @[FixedPointTypeClass.scala 21:58:@2401.4]
  assign _T_4560 = _T_4559[11:0]; // @[FixedPointTypeClass.scala 21:58:@2402.4]
  assign _T_4561 = $signed(_T_4560); // @[FixedPointTypeClass.scala 21:58:@2403.4]
  assign _T_4562 = $signed(_T_4228) + $signed(_T_4242); // @[FixedPointTypeClass.scala 21:58:@2404.4]
  assign _T_4563 = _T_4562[11:0]; // @[FixedPointTypeClass.scala 21:58:@2405.4]
  assign _T_4564 = $signed(_T_4563); // @[FixedPointTypeClass.scala 21:58:@2406.4]
  assign _T_4573 = $signed(_T_4253) + $signed(_T_4267); // @[FixedPointTypeClass.scala 21:58:@2410.4]
  assign _T_4574 = _T_4573[11:0]; // @[FixedPointTypeClass.scala 21:58:@2411.4]
  assign _T_4575 = $signed(_T_4574); // @[FixedPointTypeClass.scala 21:58:@2412.4]
  assign _T_4576 = $signed(_T_4256) + $signed(_T_4270); // @[FixedPointTypeClass.scala 21:58:@2413.4]
  assign _T_4577 = _T_4576[11:0]; // @[FixedPointTypeClass.scala 21:58:@2414.4]
  assign _T_4578 = $signed(_T_4577); // @[FixedPointTypeClass.scala 21:58:@2415.4]
  assign _T_4587 = $signed(_T_4281) + $signed(_T_4295); // @[FixedPointTypeClass.scala 21:58:@2419.4]
  assign _T_4588 = _T_4587[11:0]; // @[FixedPointTypeClass.scala 21:58:@2420.4]
  assign _T_4589 = $signed(_T_4588); // @[FixedPointTypeClass.scala 21:58:@2421.4]
  assign _T_4590 = $signed(_T_4284) + $signed(_T_4298); // @[FixedPointTypeClass.scala 21:58:@2422.4]
  assign _T_4591 = _T_4590[11:0]; // @[FixedPointTypeClass.scala 21:58:@2423.4]
  assign _T_4592 = $signed(_T_4591); // @[FixedPointTypeClass.scala 21:58:@2424.4]
  assign _T_4601 = $signed(_T_4309) + $signed(_T_4323); // @[FixedPointTypeClass.scala 21:58:@2428.4]
  assign _T_4602 = _T_4601[11:0]; // @[FixedPointTypeClass.scala 21:58:@2429.4]
  assign _T_4603 = $signed(_T_4602); // @[FixedPointTypeClass.scala 21:58:@2430.4]
  assign _T_4604 = $signed(_T_4312) + $signed(_T_4326); // @[FixedPointTypeClass.scala 21:58:@2431.4]
  assign _T_4605 = _T_4604[11:0]; // @[FixedPointTypeClass.scala 21:58:@2432.4]
  assign _T_4606 = $signed(_T_4605); // @[FixedPointTypeClass.scala 21:58:@2433.4]
  assign _T_4615 = $signed(_T_4337) + $signed(_T_4351); // @[FixedPointTypeClass.scala 21:58:@2437.4]
  assign _T_4616 = _T_4615[11:0]; // @[FixedPointTypeClass.scala 21:58:@2438.4]
  assign _T_4617 = $signed(_T_4616); // @[FixedPointTypeClass.scala 21:58:@2439.4]
  assign _T_4618 = $signed(_T_4340) + $signed(_T_4354); // @[FixedPointTypeClass.scala 21:58:@2440.4]
  assign _T_4619 = _T_4618[11:0]; // @[FixedPointTypeClass.scala 21:58:@2441.4]
  assign _T_4620 = $signed(_T_4619); // @[FixedPointTypeClass.scala 21:58:@2442.4]
  assign _T_4629 = $signed(_T_4365) + $signed(_T_4379); // @[FixedPointTypeClass.scala 21:58:@2446.4]
  assign _T_4630 = _T_4629[11:0]; // @[FixedPointTypeClass.scala 21:58:@2447.4]
  assign _T_4631 = $signed(_T_4630); // @[FixedPointTypeClass.scala 21:58:@2448.4]
  assign _T_4632 = $signed(_T_4368) + $signed(_T_4382); // @[FixedPointTypeClass.scala 21:58:@2449.4]
  assign _T_4633 = _T_4632[11:0]; // @[FixedPointTypeClass.scala 21:58:@2450.4]
  assign _T_4634 = $signed(_T_4633); // @[FixedPointTypeClass.scala 21:58:@2451.4]
  assign _T_4643 = $signed(_T_4393) + $signed(_T_4407); // @[FixedPointTypeClass.scala 21:58:@2455.4]
  assign _T_4644 = _T_4643[11:0]; // @[FixedPointTypeClass.scala 21:58:@2456.4]
  assign _T_4645 = $signed(_T_4644); // @[FixedPointTypeClass.scala 21:58:@2457.4]
  assign _T_4646 = $signed(_T_4396) + $signed(_T_4410); // @[FixedPointTypeClass.scala 21:58:@2458.4]
  assign _T_4647 = _T_4646[11:0]; // @[FixedPointTypeClass.scala 21:58:@2459.4]
  assign _T_4648 = $signed(_T_4647); // @[FixedPointTypeClass.scala 21:58:@2460.4]
  assign _T_4657 = $signed(_T_4421) + $signed(_T_4435); // @[FixedPointTypeClass.scala 21:58:@2464.4]
  assign _T_4658 = _T_4657[11:0]; // @[FixedPointTypeClass.scala 21:58:@2465.4]
  assign _T_4659 = $signed(_T_4658); // @[FixedPointTypeClass.scala 21:58:@2466.4]
  assign _T_4660 = $signed(_T_4424) + $signed(_T_4438); // @[FixedPointTypeClass.scala 21:58:@2467.4]
  assign _T_4661 = _T_4660[11:0]; // @[FixedPointTypeClass.scala 21:58:@2468.4]
  assign _T_4662 = $signed(_T_4661); // @[FixedPointTypeClass.scala 21:58:@2469.4]
  assign _T_4671 = $signed(_T_4449) + $signed(_T_4463); // @[FixedPointTypeClass.scala 21:58:@2473.4]
  assign _T_4672 = _T_4671[11:0]; // @[FixedPointTypeClass.scala 21:58:@2474.4]
  assign _T_4673 = $signed(_T_4672); // @[FixedPointTypeClass.scala 21:58:@2475.4]
  assign _T_4674 = $signed(_T_4452) + $signed(_T_4466); // @[FixedPointTypeClass.scala 21:58:@2476.4]
  assign _T_4675 = _T_4674[11:0]; // @[FixedPointTypeClass.scala 21:58:@2477.4]
  assign _T_4676 = $signed(_T_4675); // @[FixedPointTypeClass.scala 21:58:@2478.4]
  assign _T_4685 = $signed(_T_4477) + $signed(_T_4491); // @[FixedPointTypeClass.scala 21:58:@2482.4]
  assign _T_4686 = _T_4685[11:0]; // @[FixedPointTypeClass.scala 21:58:@2483.4]
  assign _T_4687 = $signed(_T_4686); // @[FixedPointTypeClass.scala 21:58:@2484.4]
  assign _T_4688 = $signed(_T_4480) + $signed(_T_4494); // @[FixedPointTypeClass.scala 21:58:@2485.4]
  assign _T_4689 = _T_4688[11:0]; // @[FixedPointTypeClass.scala 21:58:@2486.4]
  assign _T_4690 = $signed(_T_4689); // @[FixedPointTypeClass.scala 21:58:@2487.4]
  assign _T_4699 = $signed(_T_4505) + $signed(_T_4519); // @[FixedPointTypeClass.scala 21:58:@2491.4]
  assign _T_4700 = _T_4699[11:0]; // @[FixedPointTypeClass.scala 21:58:@2492.4]
  assign _T_4701 = $signed(_T_4700); // @[FixedPointTypeClass.scala 21:58:@2493.4]
  assign _T_4702 = $signed(_T_4508) + $signed(_T_4522); // @[FixedPointTypeClass.scala 21:58:@2494.4]
  assign _T_4703 = _T_4702[11:0]; // @[FixedPointTypeClass.scala 21:58:@2495.4]
  assign _T_4704 = $signed(_T_4703); // @[FixedPointTypeClass.scala 21:58:@2496.4]
  assign _T_4713 = $signed(_T_4533) + $signed(_T_4547); // @[FixedPointTypeClass.scala 21:58:@2500.4]
  assign _T_4714 = _T_4713[11:0]; // @[FixedPointTypeClass.scala 21:58:@2501.4]
  assign _T_4715 = $signed(_T_4714); // @[FixedPointTypeClass.scala 21:58:@2502.4]
  assign _T_4716 = $signed(_T_4536) + $signed(_T_4550); // @[FixedPointTypeClass.scala 21:58:@2503.4]
  assign _T_4717 = _T_4716[11:0]; // @[FixedPointTypeClass.scala 21:58:@2504.4]
  assign _T_4718 = $signed(_T_4717); // @[FixedPointTypeClass.scala 21:58:@2505.4]
  assign _T_4727 = $signed(_T_4561) + $signed(_T_4575); // @[FixedPointTypeClass.scala 21:58:@2509.4]
  assign _T_4728 = _T_4727[11:0]; // @[FixedPointTypeClass.scala 21:58:@2510.4]
  assign _T_4729 = $signed(_T_4728); // @[FixedPointTypeClass.scala 21:58:@2511.4]
  assign _T_4730 = $signed(_T_4564) + $signed(_T_4578); // @[FixedPointTypeClass.scala 21:58:@2512.4]
  assign _T_4731 = _T_4730[11:0]; // @[FixedPointTypeClass.scala 21:58:@2513.4]
  assign _T_4732 = $signed(_T_4731); // @[FixedPointTypeClass.scala 21:58:@2514.4]
  assign _T_4741 = $signed(_T_4589) + $signed(_T_4603); // @[FixedPointTypeClass.scala 21:58:@2518.4]
  assign _T_4742 = _T_4741[11:0]; // @[FixedPointTypeClass.scala 21:58:@2519.4]
  assign _T_4743 = $signed(_T_4742); // @[FixedPointTypeClass.scala 21:58:@2520.4]
  assign _T_4744 = $signed(_T_4592) + $signed(_T_4606); // @[FixedPointTypeClass.scala 21:58:@2521.4]
  assign _T_4745 = _T_4744[11:0]; // @[FixedPointTypeClass.scala 21:58:@2522.4]
  assign _T_4746 = $signed(_T_4745); // @[FixedPointTypeClass.scala 21:58:@2523.4]
  assign _T_4755 = $signed(_T_4617) + $signed(_T_4631); // @[FixedPointTypeClass.scala 21:58:@2527.4]
  assign _T_4756 = _T_4755[11:0]; // @[FixedPointTypeClass.scala 21:58:@2528.4]
  assign _T_4757 = $signed(_T_4756); // @[FixedPointTypeClass.scala 21:58:@2529.4]
  assign _T_4758 = $signed(_T_4620) + $signed(_T_4634); // @[FixedPointTypeClass.scala 21:58:@2530.4]
  assign _T_4759 = _T_4758[11:0]; // @[FixedPointTypeClass.scala 21:58:@2531.4]
  assign _T_4760 = $signed(_T_4759); // @[FixedPointTypeClass.scala 21:58:@2532.4]
  assign _T_4769 = $signed(_T_4645) + $signed(_T_4659); // @[FixedPointTypeClass.scala 21:58:@2536.4]
  assign _T_4770 = _T_4769[11:0]; // @[FixedPointTypeClass.scala 21:58:@2537.4]
  assign _T_4771 = $signed(_T_4770); // @[FixedPointTypeClass.scala 21:58:@2538.4]
  assign _T_4772 = $signed(_T_4648) + $signed(_T_4662); // @[FixedPointTypeClass.scala 21:58:@2539.4]
  assign _T_4773 = _T_4772[11:0]; // @[FixedPointTypeClass.scala 21:58:@2540.4]
  assign _T_4774 = $signed(_T_4773); // @[FixedPointTypeClass.scala 21:58:@2541.4]
  assign _T_4783 = $signed(_T_4673) + $signed(_T_4687); // @[FixedPointTypeClass.scala 21:58:@2545.4]
  assign _T_4784 = _T_4783[11:0]; // @[FixedPointTypeClass.scala 21:58:@2546.4]
  assign _T_4785 = $signed(_T_4784); // @[FixedPointTypeClass.scala 21:58:@2547.4]
  assign _T_4786 = $signed(_T_4676) + $signed(_T_4690); // @[FixedPointTypeClass.scala 21:58:@2548.4]
  assign _T_4787 = _T_4786[11:0]; // @[FixedPointTypeClass.scala 21:58:@2549.4]
  assign _T_4788 = $signed(_T_4787); // @[FixedPointTypeClass.scala 21:58:@2550.4]
  assign _T_4797 = $signed(_T_4701) + $signed(_T_4715); // @[FixedPointTypeClass.scala 21:58:@2554.4]
  assign _T_4798 = _T_4797[11:0]; // @[FixedPointTypeClass.scala 21:58:@2555.4]
  assign _T_4799 = $signed(_T_4798); // @[FixedPointTypeClass.scala 21:58:@2556.4]
  assign _T_4800 = $signed(_T_4704) + $signed(_T_4718); // @[FixedPointTypeClass.scala 21:58:@2557.4]
  assign _T_4801 = _T_4800[11:0]; // @[FixedPointTypeClass.scala 21:58:@2558.4]
  assign _T_4802 = $signed(_T_4801); // @[FixedPointTypeClass.scala 21:58:@2559.4]
  assign _T_4811 = $signed(_T_4729) + $signed(_T_4743); // @[FixedPointTypeClass.scala 21:58:@2563.4]
  assign _T_4812 = _T_4811[11:0]; // @[FixedPointTypeClass.scala 21:58:@2564.4]
  assign _T_4813 = $signed(_T_4812); // @[FixedPointTypeClass.scala 21:58:@2565.4]
  assign _T_4814 = $signed(_T_4732) + $signed(_T_4746); // @[FixedPointTypeClass.scala 21:58:@2566.4]
  assign _T_4815 = _T_4814[11:0]; // @[FixedPointTypeClass.scala 21:58:@2567.4]
  assign _T_4816 = $signed(_T_4815); // @[FixedPointTypeClass.scala 21:58:@2568.4]
  assign _T_4825 = $signed(_T_4757) + $signed(_T_4771); // @[FixedPointTypeClass.scala 21:58:@2572.4]
  assign _T_4826 = _T_4825[11:0]; // @[FixedPointTypeClass.scala 21:58:@2573.4]
  assign _T_4827 = $signed(_T_4826); // @[FixedPointTypeClass.scala 21:58:@2574.4]
  assign _T_4828 = $signed(_T_4760) + $signed(_T_4774); // @[FixedPointTypeClass.scala 21:58:@2575.4]
  assign _T_4829 = _T_4828[11:0]; // @[FixedPointTypeClass.scala 21:58:@2576.4]
  assign _T_4830 = $signed(_T_4829); // @[FixedPointTypeClass.scala 21:58:@2577.4]
  assign _T_4839 = $signed(_T_4785) + $signed(_T_4799); // @[FixedPointTypeClass.scala 21:58:@2581.4]
  assign _T_4840 = _T_4839[11:0]; // @[FixedPointTypeClass.scala 21:58:@2582.4]
  assign _T_4841 = $signed(_T_4840); // @[FixedPointTypeClass.scala 21:58:@2583.4]
  assign _T_4842 = $signed(_T_4788) + $signed(_T_4802); // @[FixedPointTypeClass.scala 21:58:@2584.4]
  assign _T_4843 = _T_4842[11:0]; // @[FixedPointTypeClass.scala 21:58:@2585.4]
  assign _T_4844 = $signed(_T_4843); // @[FixedPointTypeClass.scala 21:58:@2586.4]
  assign _T_4853 = $signed(_T_4813) + $signed(_T_4827); // @[FixedPointTypeClass.scala 21:58:@2590.4]
  assign _T_4854 = _T_4853[11:0]; // @[FixedPointTypeClass.scala 21:58:@2591.4]
  assign _T_4855 = $signed(_T_4854); // @[FixedPointTypeClass.scala 21:58:@2592.4]
  assign _T_4856 = $signed(_T_4816) + $signed(_T_4830); // @[FixedPointTypeClass.scala 21:58:@2593.4]
  assign _T_4857 = _T_4856[11:0]; // @[FixedPointTypeClass.scala 21:58:@2594.4]
  assign _T_4858 = $signed(_T_4857); // @[FixedPointTypeClass.scala 21:58:@2595.4]
  assign _T_4867 = $signed(_T_4841) + $signed(_T_4855); // @[FixedPointTypeClass.scala 21:58:@2599.4]
  assign _T_4868 = _T_4867[11:0]; // @[FixedPointTypeClass.scala 21:58:@2600.4]
  assign sum_real = $signed(_T_4868); // @[FixedPointTypeClass.scala 21:58:@2601.4]
  assign _T_4870 = $signed(_T_4844) + $signed(_T_4858); // @[FixedPointTypeClass.scala 21:58:@2602.4]
  assign _T_4871 = _T_4870[11:0]; // @[FixedPointTypeClass.scala 21:58:@2603.4]
  assign sum_imag = $signed(_T_4871); // @[FixedPointTypeClass.scala 21:58:@2604.4]
  assign _GEN_10 = io_in_valid ? $signed(io_in_bits_imag) : $signed(shr_0_imag); // @[OverlapSum.scala 52:25:@2638.4]
  assign _GEN_11 = io_in_valid ? $signed(io_in_bits_real) : $signed(shr_0_real); // @[OverlapSum.scala 52:25:@2638.4]
  assign _GEN_12 = io_in_valid ? $signed(shr_0_imag) : $signed(shr_1_imag); // @[OverlapSum.scala 52:25:@2642.4]
  assign _GEN_13 = io_in_valid ? $signed(shr_0_real) : $signed(shr_1_real); // @[OverlapSum.scala 52:25:@2642.4]
  assign _GEN_14 = io_in_valid ? $signed(shr_1_imag) : $signed(shr_2_imag); // @[OverlapSum.scala 52:25:@2646.4]
  assign _GEN_15 = io_in_valid ? $signed(shr_1_real) : $signed(shr_2_real); // @[OverlapSum.scala 52:25:@2646.4]
  assign _GEN_16 = io_in_valid ? $signed(shr_2_imag) : $signed(shr_3_imag); // @[OverlapSum.scala 52:25:@2650.4]
  assign _GEN_17 = io_in_valid ? $signed(shr_2_real) : $signed(shr_3_real); // @[OverlapSum.scala 52:25:@2650.4]
  assign _GEN_18 = io_in_valid ? $signed(shr_3_imag) : $signed(shr_4_imag); // @[OverlapSum.scala 52:25:@2654.4]
  assign _GEN_19 = io_in_valid ? $signed(shr_3_real) : $signed(shr_4_real); // @[OverlapSum.scala 52:25:@2654.4]
  assign _GEN_20 = io_in_valid ? $signed(shr_4_imag) : $signed(shr_5_imag); // @[OverlapSum.scala 52:25:@2658.4]
  assign _GEN_21 = io_in_valid ? $signed(shr_4_real) : $signed(shr_5_real); // @[OverlapSum.scala 52:25:@2658.4]
  assign _GEN_22 = io_in_valid ? $signed(shr_5_imag) : $signed(shr_6_imag); // @[OverlapSum.scala 52:25:@2662.4]
  assign _GEN_23 = io_in_valid ? $signed(shr_5_real) : $signed(shr_6_real); // @[OverlapSum.scala 52:25:@2662.4]
  assign _GEN_24 = io_in_valid ? $signed(shr_6_imag) : $signed(shr_7_imag); // @[OverlapSum.scala 52:25:@2666.4]
  assign _GEN_25 = io_in_valid ? $signed(shr_6_real) : $signed(shr_7_real); // @[OverlapSum.scala 52:25:@2666.4]
  assign _GEN_26 = io_in_valid ? $signed(shr_7_imag) : $signed(shr_8_imag); // @[OverlapSum.scala 52:25:@2670.4]
  assign _GEN_27 = io_in_valid ? $signed(shr_7_real) : $signed(shr_8_real); // @[OverlapSum.scala 52:25:@2670.4]
  assign _GEN_28 = io_in_valid ? $signed(shr_8_imag) : $signed(shr_9_imag); // @[OverlapSum.scala 52:25:@2674.4]
  assign _GEN_29 = io_in_valid ? $signed(shr_8_real) : $signed(shr_9_real); // @[OverlapSum.scala 52:25:@2674.4]
  assign _GEN_30 = io_in_valid ? $signed(shr_9_imag) : $signed(shr_10_imag); // @[OverlapSum.scala 52:25:@2678.4]
  assign _GEN_31 = io_in_valid ? $signed(shr_9_real) : $signed(shr_10_real); // @[OverlapSum.scala 52:25:@2678.4]
  assign _GEN_32 = io_in_valid ? $signed(shr_10_imag) : $signed(shr_11_imag); // @[OverlapSum.scala 52:25:@2682.4]
  assign _GEN_33 = io_in_valid ? $signed(shr_10_real) : $signed(shr_11_real); // @[OverlapSum.scala 52:25:@2682.4]
  assign _GEN_34 = io_in_valid ? $signed(shr_11_imag) : $signed(shr_12_imag); // @[OverlapSum.scala 52:25:@2686.4]
  assign _GEN_35 = io_in_valid ? $signed(shr_11_real) : $signed(shr_12_real); // @[OverlapSum.scala 52:25:@2686.4]
  assign _GEN_36 = io_in_valid ? $signed(shr_12_imag) : $signed(shr_13_imag); // @[OverlapSum.scala 52:25:@2690.4]
  assign _GEN_37 = io_in_valid ? $signed(shr_12_real) : $signed(shr_13_real); // @[OverlapSum.scala 52:25:@2690.4]
  assign _GEN_38 = io_in_valid ? $signed(shr_13_imag) : $signed(shr_14_imag); // @[OverlapSum.scala 52:25:@2694.4]
  assign _GEN_39 = io_in_valid ? $signed(shr_13_real) : $signed(shr_14_real); // @[OverlapSum.scala 52:25:@2694.4]
  assign _GEN_40 = io_in_valid ? $signed(shr_14_imag) : $signed(shr_15_imag); // @[OverlapSum.scala 52:25:@2698.4]
  assign _GEN_41 = io_in_valid ? $signed(shr_14_real) : $signed(shr_15_real); // @[OverlapSum.scala 52:25:@2698.4]
  assign _GEN_42 = io_in_valid ? $signed(shr_15_imag) : $signed(shr_16_imag); // @[OverlapSum.scala 52:25:@2702.4]
  assign _GEN_43 = io_in_valid ? $signed(shr_15_real) : $signed(shr_16_real); // @[OverlapSum.scala 52:25:@2702.4]
  assign _GEN_44 = io_in_valid ? $signed(shr_16_imag) : $signed(shr_17_imag); // @[OverlapSum.scala 52:25:@2706.4]
  assign _GEN_45 = io_in_valid ? $signed(shr_16_real) : $signed(shr_17_real); // @[OverlapSum.scala 52:25:@2706.4]
  assign _GEN_46 = io_in_valid ? $signed(shr_17_imag) : $signed(shr_18_imag); // @[OverlapSum.scala 52:25:@2710.4]
  assign _GEN_47 = io_in_valid ? $signed(shr_17_real) : $signed(shr_18_real); // @[OverlapSum.scala 52:25:@2710.4]
  assign _GEN_48 = io_in_valid ? $signed(shr_18_imag) : $signed(shr_19_imag); // @[OverlapSum.scala 52:25:@2714.4]
  assign _GEN_49 = io_in_valid ? $signed(shr_18_real) : $signed(shr_19_real); // @[OverlapSum.scala 52:25:@2714.4]
  assign _GEN_50 = io_in_valid ? $signed(shr_19_imag) : $signed(shr_20_imag); // @[OverlapSum.scala 52:25:@2718.4]
  assign _GEN_51 = io_in_valid ? $signed(shr_19_real) : $signed(shr_20_real); // @[OverlapSum.scala 52:25:@2718.4]
  assign _GEN_52 = io_in_valid ? $signed(shr_20_imag) : $signed(shr_21_imag); // @[OverlapSum.scala 52:25:@2722.4]
  assign _GEN_53 = io_in_valid ? $signed(shr_20_real) : $signed(shr_21_real); // @[OverlapSum.scala 52:25:@2722.4]
  assign _GEN_54 = io_in_valid ? $signed(shr_21_imag) : $signed(shr_22_imag); // @[OverlapSum.scala 52:25:@2726.4]
  assign _GEN_55 = io_in_valid ? $signed(shr_21_real) : $signed(shr_22_real); // @[OverlapSum.scala 52:25:@2726.4]
  assign _GEN_56 = io_in_valid ? $signed(shr_22_imag) : $signed(shr_23_imag); // @[OverlapSum.scala 52:25:@2730.4]
  assign _GEN_57 = io_in_valid ? $signed(shr_22_real) : $signed(shr_23_real); // @[OverlapSum.scala 52:25:@2730.4]
  assign _GEN_58 = io_in_valid ? $signed(shr_23_imag) : $signed(shr_24_imag); // @[OverlapSum.scala 52:25:@2734.4]
  assign _GEN_59 = io_in_valid ? $signed(shr_23_real) : $signed(shr_24_real); // @[OverlapSum.scala 52:25:@2734.4]
  assign _GEN_60 = io_in_valid ? $signed(shr_24_imag) : $signed(shr_25_imag); // @[OverlapSum.scala 52:25:@2738.4]
  assign _GEN_61 = io_in_valid ? $signed(shr_24_real) : $signed(shr_25_real); // @[OverlapSum.scala 52:25:@2738.4]
  assign _GEN_62 = io_in_valid ? $signed(shr_25_imag) : $signed(shr_26_imag); // @[OverlapSum.scala 52:25:@2742.4]
  assign _GEN_63 = io_in_valid ? $signed(shr_25_real) : $signed(shr_26_real); // @[OverlapSum.scala 52:25:@2742.4]
  assign _GEN_64 = io_in_valid ? $signed(shr_26_imag) : $signed(shr_27_imag); // @[OverlapSum.scala 52:25:@2746.4]
  assign _GEN_65 = io_in_valid ? $signed(shr_26_real) : $signed(shr_27_real); // @[OverlapSum.scala 52:25:@2746.4]
  assign _GEN_66 = io_in_valid ? $signed(shr_27_imag) : $signed(shr_28_imag); // @[OverlapSum.scala 52:25:@2750.4]
  assign _GEN_67 = io_in_valid ? $signed(shr_27_real) : $signed(shr_28_real); // @[OverlapSum.scala 52:25:@2750.4]
  assign _GEN_68 = io_in_valid ? $signed(shr_28_imag) : $signed(shr_29_imag); // @[OverlapSum.scala 52:25:@2754.4]
  assign _GEN_69 = io_in_valid ? $signed(shr_28_real) : $signed(shr_29_real); // @[OverlapSum.scala 52:25:@2754.4]
  assign _GEN_70 = io_in_valid ? $signed(shr_29_imag) : $signed(shr_30_imag); // @[OverlapSum.scala 52:25:@2758.4]
  assign _GEN_71 = io_in_valid ? $signed(shr_29_real) : $signed(shr_30_real); // @[OverlapSum.scala 52:25:@2758.4]
  assign _GEN_72 = io_in_valid ? $signed(shr_30_imag) : $signed(shr_31_imag); // @[OverlapSum.scala 52:25:@2762.4]
  assign _GEN_73 = io_in_valid ? $signed(shr_30_real) : $signed(shr_31_real); // @[OverlapSum.scala 52:25:@2762.4]
  assign _GEN_74 = io_in_valid ? $signed(shr_31_imag) : $signed(shr_32_imag); // @[OverlapSum.scala 52:25:@2766.4]
  assign _GEN_75 = io_in_valid ? $signed(shr_31_real) : $signed(shr_32_real); // @[OverlapSum.scala 52:25:@2766.4]
  assign _GEN_76 = io_in_valid ? $signed(shr_32_imag) : $signed(shr_33_imag); // @[OverlapSum.scala 52:25:@2770.4]
  assign _GEN_77 = io_in_valid ? $signed(shr_32_real) : $signed(shr_33_real); // @[OverlapSum.scala 52:25:@2770.4]
  assign _GEN_78 = io_in_valid ? $signed(shr_33_imag) : $signed(shr_34_imag); // @[OverlapSum.scala 52:25:@2774.4]
  assign _GEN_79 = io_in_valid ? $signed(shr_33_real) : $signed(shr_34_real); // @[OverlapSum.scala 52:25:@2774.4]
  assign _GEN_80 = io_in_valid ? $signed(shr_34_imag) : $signed(shr_35_imag); // @[OverlapSum.scala 52:25:@2778.4]
  assign _GEN_81 = io_in_valid ? $signed(shr_34_real) : $signed(shr_35_real); // @[OverlapSum.scala 52:25:@2778.4]
  assign _GEN_82 = io_in_valid ? $signed(shr_35_imag) : $signed(shr_36_imag); // @[OverlapSum.scala 52:25:@2782.4]
  assign _GEN_83 = io_in_valid ? $signed(shr_35_real) : $signed(shr_36_real); // @[OverlapSum.scala 52:25:@2782.4]
  assign _GEN_84 = io_in_valid ? $signed(shr_36_imag) : $signed(shr_37_imag); // @[OverlapSum.scala 52:25:@2786.4]
  assign _GEN_85 = io_in_valid ? $signed(shr_36_real) : $signed(shr_37_real); // @[OverlapSum.scala 52:25:@2786.4]
  assign _GEN_86 = io_in_valid ? $signed(shr_37_imag) : $signed(shr_38_imag); // @[OverlapSum.scala 52:25:@2790.4]
  assign _GEN_87 = io_in_valid ? $signed(shr_37_real) : $signed(shr_38_real); // @[OverlapSum.scala 52:25:@2790.4]
  assign _GEN_88 = io_in_valid ? $signed(shr_38_imag) : $signed(shr_39_imag); // @[OverlapSum.scala 52:25:@2794.4]
  assign _GEN_89 = io_in_valid ? $signed(shr_38_real) : $signed(shr_39_real); // @[OverlapSum.scala 52:25:@2794.4]
  assign _GEN_90 = io_in_valid ? $signed(shr_39_imag) : $signed(shr_40_imag); // @[OverlapSum.scala 52:25:@2798.4]
  assign _GEN_91 = io_in_valid ? $signed(shr_39_real) : $signed(shr_40_real); // @[OverlapSum.scala 52:25:@2798.4]
  assign _GEN_92 = io_in_valid ? $signed(shr_40_imag) : $signed(shr_41_imag); // @[OverlapSum.scala 52:25:@2802.4]
  assign _GEN_93 = io_in_valid ? $signed(shr_40_real) : $signed(shr_41_real); // @[OverlapSum.scala 52:25:@2802.4]
  assign _GEN_94 = io_in_valid ? $signed(shr_41_imag) : $signed(shr_42_imag); // @[OverlapSum.scala 52:25:@2806.4]
  assign _GEN_95 = io_in_valid ? $signed(shr_41_real) : $signed(shr_42_real); // @[OverlapSum.scala 52:25:@2806.4]
  assign _GEN_96 = io_in_valid ? $signed(shr_42_imag) : $signed(shr_43_imag); // @[OverlapSum.scala 52:25:@2810.4]
  assign _GEN_97 = io_in_valid ? $signed(shr_42_real) : $signed(shr_43_real); // @[OverlapSum.scala 52:25:@2810.4]
  assign _GEN_98 = io_in_valid ? $signed(shr_43_imag) : $signed(shr_44_imag); // @[OverlapSum.scala 52:25:@2814.4]
  assign _GEN_99 = io_in_valid ? $signed(shr_43_real) : $signed(shr_44_real); // @[OverlapSum.scala 52:25:@2814.4]
  assign _GEN_100 = io_in_valid ? $signed(shr_44_imag) : $signed(shr_45_imag); // @[OverlapSum.scala 52:25:@2818.4]
  assign _GEN_101 = io_in_valid ? $signed(shr_44_real) : $signed(shr_45_real); // @[OverlapSum.scala 52:25:@2818.4]
  assign _GEN_102 = io_in_valid ? $signed(shr_45_imag) : $signed(shr_46_imag); // @[OverlapSum.scala 52:25:@2822.4]
  assign _GEN_103 = io_in_valid ? $signed(shr_45_real) : $signed(shr_46_real); // @[OverlapSum.scala 52:25:@2822.4]
  assign _GEN_104 = io_in_valid ? $signed(shr_46_imag) : $signed(shr_47_imag); // @[OverlapSum.scala 52:25:@2826.4]
  assign _GEN_105 = io_in_valid ? $signed(shr_46_real) : $signed(shr_47_real); // @[OverlapSum.scala 52:25:@2826.4]
  assign _GEN_106 = io_in_valid ? $signed(shr_47_imag) : $signed(shr_48_imag); // @[OverlapSum.scala 52:25:@2830.4]
  assign _GEN_107 = io_in_valid ? $signed(shr_47_real) : $signed(shr_48_real); // @[OverlapSum.scala 52:25:@2830.4]
  assign _GEN_108 = io_in_valid ? $signed(shr_48_imag) : $signed(shr_49_imag); // @[OverlapSum.scala 52:25:@2834.4]
  assign _GEN_109 = io_in_valid ? $signed(shr_48_real) : $signed(shr_49_real); // @[OverlapSum.scala 52:25:@2834.4]
  assign _GEN_110 = io_in_valid ? $signed(shr_49_imag) : $signed(shr_50_imag); // @[OverlapSum.scala 52:25:@2838.4]
  assign _GEN_111 = io_in_valid ? $signed(shr_49_real) : $signed(shr_50_real); // @[OverlapSum.scala 52:25:@2838.4]
  assign _GEN_112 = io_in_valid ? $signed(shr_50_imag) : $signed(shr_51_imag); // @[OverlapSum.scala 52:25:@2842.4]
  assign _GEN_113 = io_in_valid ? $signed(shr_50_real) : $signed(shr_51_real); // @[OverlapSum.scala 52:25:@2842.4]
  assign _GEN_114 = io_in_valid ? $signed(shr_51_imag) : $signed(shr_52_imag); // @[OverlapSum.scala 52:25:@2846.4]
  assign _GEN_115 = io_in_valid ? $signed(shr_51_real) : $signed(shr_52_real); // @[OverlapSum.scala 52:25:@2846.4]
  assign _GEN_116 = io_in_valid ? $signed(shr_52_imag) : $signed(shr_53_imag); // @[OverlapSum.scala 52:25:@2850.4]
  assign _GEN_117 = io_in_valid ? $signed(shr_52_real) : $signed(shr_53_real); // @[OverlapSum.scala 52:25:@2850.4]
  assign _GEN_118 = io_in_valid ? $signed(shr_53_imag) : $signed(shr_54_imag); // @[OverlapSum.scala 52:25:@2854.4]
  assign _GEN_119 = io_in_valid ? $signed(shr_53_real) : $signed(shr_54_real); // @[OverlapSum.scala 52:25:@2854.4]
  assign _GEN_120 = io_in_valid ? $signed(shr_54_imag) : $signed(shr_55_imag); // @[OverlapSum.scala 52:25:@2858.4]
  assign _GEN_121 = io_in_valid ? $signed(shr_54_real) : $signed(shr_55_real); // @[OverlapSum.scala 52:25:@2858.4]
  assign _GEN_122 = io_in_valid ? $signed(shr_55_imag) : $signed(shr_56_imag); // @[OverlapSum.scala 52:25:@2862.4]
  assign _GEN_123 = io_in_valid ? $signed(shr_55_real) : $signed(shr_56_real); // @[OverlapSum.scala 52:25:@2862.4]
  assign _GEN_124 = io_in_valid ? $signed(shr_56_imag) : $signed(shr_57_imag); // @[OverlapSum.scala 52:25:@2866.4]
  assign _GEN_125 = io_in_valid ? $signed(shr_56_real) : $signed(shr_57_real); // @[OverlapSum.scala 52:25:@2866.4]
  assign _GEN_126 = io_in_valid ? $signed(shr_57_imag) : $signed(shr_58_imag); // @[OverlapSum.scala 52:25:@2870.4]
  assign _GEN_127 = io_in_valid ? $signed(shr_57_real) : $signed(shr_58_real); // @[OverlapSum.scala 52:25:@2870.4]
  assign _GEN_128 = io_in_valid ? $signed(shr_58_imag) : $signed(shr_59_imag); // @[OverlapSum.scala 52:25:@2874.4]
  assign _GEN_129 = io_in_valid ? $signed(shr_58_real) : $signed(shr_59_real); // @[OverlapSum.scala 52:25:@2874.4]
  assign _GEN_130 = io_in_valid ? $signed(shr_59_imag) : $signed(shr_60_imag); // @[OverlapSum.scala 52:25:@2878.4]
  assign _GEN_131 = io_in_valid ? $signed(shr_59_real) : $signed(shr_60_real); // @[OverlapSum.scala 52:25:@2878.4]
  assign _GEN_132 = io_in_valid ? $signed(shr_60_imag) : $signed(shr_61_imag); // @[OverlapSum.scala 52:25:@2882.4]
  assign _GEN_133 = io_in_valid ? $signed(shr_60_real) : $signed(shr_61_real); // @[OverlapSum.scala 52:25:@2882.4]
  assign _GEN_134 = io_in_valid ? $signed(shr_61_imag) : $signed(shr_62_imag); // @[OverlapSum.scala 52:25:@2886.4]
  assign _GEN_135 = io_in_valid ? $signed(shr_61_real) : $signed(shr_62_real); // @[OverlapSum.scala 52:25:@2886.4]
  assign _GEN_136 = io_in_valid ? $signed(shr_62_imag) : $signed(shr_63_imag); // @[OverlapSum.scala 52:25:@2890.4]
  assign _GEN_137 = io_in_valid ? $signed(shr_62_real) : $signed(shr_63_real); // @[OverlapSum.scala 52:25:@2890.4]
  assign _GEN_138 = io_in_valid ? $signed(shr_63_imag) : $signed(shr_64_imag); // @[OverlapSum.scala 52:25:@2894.4]
  assign _GEN_139 = io_in_valid ? $signed(shr_63_real) : $signed(shr_64_real); // @[OverlapSum.scala 52:25:@2894.4]
  assign _GEN_140 = io_in_valid ? $signed(shr_64_imag) : $signed(shr_65_imag); // @[OverlapSum.scala 52:25:@2898.4]
  assign _GEN_141 = io_in_valid ? $signed(shr_64_real) : $signed(shr_65_real); // @[OverlapSum.scala 52:25:@2898.4]
  assign _GEN_142 = io_in_valid ? $signed(shr_65_imag) : $signed(shr_66_imag); // @[OverlapSum.scala 52:25:@2902.4]
  assign _GEN_143 = io_in_valid ? $signed(shr_65_real) : $signed(shr_66_real); // @[OverlapSum.scala 52:25:@2902.4]
  assign _GEN_144 = io_in_valid ? $signed(shr_66_imag) : $signed(shr_67_imag); // @[OverlapSum.scala 52:25:@2906.4]
  assign _GEN_145 = io_in_valid ? $signed(shr_66_real) : $signed(shr_67_real); // @[OverlapSum.scala 52:25:@2906.4]
  assign _GEN_146 = io_in_valid ? $signed(shr_67_imag) : $signed(shr_68_imag); // @[OverlapSum.scala 52:25:@2910.4]
  assign _GEN_147 = io_in_valid ? $signed(shr_67_real) : $signed(shr_68_real); // @[OverlapSum.scala 52:25:@2910.4]
  assign _GEN_148 = io_in_valid ? $signed(shr_68_imag) : $signed(shr_69_imag); // @[OverlapSum.scala 52:25:@2914.4]
  assign _GEN_149 = io_in_valid ? $signed(shr_68_real) : $signed(shr_69_real); // @[OverlapSum.scala 52:25:@2914.4]
  assign _GEN_150 = io_in_valid ? $signed(shr_69_imag) : $signed(shr_70_imag); // @[OverlapSum.scala 52:25:@2918.4]
  assign _GEN_151 = io_in_valid ? $signed(shr_69_real) : $signed(shr_70_real); // @[OverlapSum.scala 52:25:@2918.4]
  assign _GEN_152 = io_in_valid ? $signed(shr_70_imag) : $signed(shr_71_imag); // @[OverlapSum.scala 52:25:@2922.4]
  assign _GEN_153 = io_in_valid ? $signed(shr_70_real) : $signed(shr_71_real); // @[OverlapSum.scala 52:25:@2922.4]
  assign _GEN_154 = io_in_valid ? $signed(shr_71_imag) : $signed(shr_72_imag); // @[OverlapSum.scala 52:25:@2926.4]
  assign _GEN_155 = io_in_valid ? $signed(shr_71_real) : $signed(shr_72_real); // @[OverlapSum.scala 52:25:@2926.4]
  assign _GEN_156 = io_in_valid ? $signed(shr_72_imag) : $signed(shr_73_imag); // @[OverlapSum.scala 52:25:@2930.4]
  assign _GEN_157 = io_in_valid ? $signed(shr_72_real) : $signed(shr_73_real); // @[OverlapSum.scala 52:25:@2930.4]
  assign _GEN_158 = io_in_valid ? $signed(shr_73_imag) : $signed(shr_74_imag); // @[OverlapSum.scala 52:25:@2934.4]
  assign _GEN_159 = io_in_valid ? $signed(shr_73_real) : $signed(shr_74_real); // @[OverlapSum.scala 52:25:@2934.4]
  assign _GEN_160 = io_in_valid ? $signed(shr_74_imag) : $signed(shr_75_imag); // @[OverlapSum.scala 52:25:@2938.4]
  assign _GEN_161 = io_in_valid ? $signed(shr_74_real) : $signed(shr_75_real); // @[OverlapSum.scala 52:25:@2938.4]
  assign _GEN_162 = io_in_valid ? $signed(shr_75_imag) : $signed(shr_76_imag); // @[OverlapSum.scala 52:25:@2942.4]
  assign _GEN_163 = io_in_valid ? $signed(shr_75_real) : $signed(shr_76_real); // @[OverlapSum.scala 52:25:@2942.4]
  assign _GEN_164 = io_in_valid ? $signed(shr_76_imag) : $signed(shr_77_imag); // @[OverlapSum.scala 52:25:@2946.4]
  assign _GEN_165 = io_in_valid ? $signed(shr_76_real) : $signed(shr_77_real); // @[OverlapSum.scala 52:25:@2946.4]
  assign _GEN_166 = io_in_valid ? $signed(shr_77_imag) : $signed(shr_78_imag); // @[OverlapSum.scala 52:25:@2950.4]
  assign _GEN_167 = io_in_valid ? $signed(shr_77_real) : $signed(shr_78_real); // @[OverlapSum.scala 52:25:@2950.4]
  assign _GEN_168 = io_in_valid ? $signed(shr_78_imag) : $signed(shr_79_imag); // @[OverlapSum.scala 52:25:@2954.4]
  assign _GEN_169 = io_in_valid ? $signed(shr_78_real) : $signed(shr_79_real); // @[OverlapSum.scala 52:25:@2954.4]
  assign _GEN_170 = io_in_valid ? $signed(shr_79_imag) : $signed(shr_80_imag); // @[OverlapSum.scala 52:25:@2958.4]
  assign _GEN_171 = io_in_valid ? $signed(shr_79_real) : $signed(shr_80_real); // @[OverlapSum.scala 52:25:@2958.4]
  assign _GEN_172 = io_in_valid ? $signed(shr_80_imag) : $signed(shr_81_imag); // @[OverlapSum.scala 52:25:@2962.4]
  assign _GEN_173 = io_in_valid ? $signed(shr_80_real) : $signed(shr_81_real); // @[OverlapSum.scala 52:25:@2962.4]
  assign _GEN_174 = io_in_valid ? $signed(shr_81_imag) : $signed(shr_82_imag); // @[OverlapSum.scala 52:25:@2966.4]
  assign _GEN_175 = io_in_valid ? $signed(shr_81_real) : $signed(shr_82_real); // @[OverlapSum.scala 52:25:@2966.4]
  assign _GEN_176 = io_in_valid ? $signed(shr_82_imag) : $signed(shr_83_imag); // @[OverlapSum.scala 52:25:@2970.4]
  assign _GEN_177 = io_in_valid ? $signed(shr_82_real) : $signed(shr_83_real); // @[OverlapSum.scala 52:25:@2970.4]
  assign _GEN_178 = io_in_valid ? $signed(shr_83_imag) : $signed(shr_84_imag); // @[OverlapSum.scala 52:25:@2974.4]
  assign _GEN_179 = io_in_valid ? $signed(shr_83_real) : $signed(shr_84_real); // @[OverlapSum.scala 52:25:@2974.4]
  assign _GEN_180 = io_in_valid ? $signed(shr_84_imag) : $signed(shr_85_imag); // @[OverlapSum.scala 52:25:@2978.4]
  assign _GEN_181 = io_in_valid ? $signed(shr_84_real) : $signed(shr_85_real); // @[OverlapSum.scala 52:25:@2978.4]
  assign _GEN_182 = io_in_valid ? $signed(shr_85_imag) : $signed(shr_86_imag); // @[OverlapSum.scala 52:25:@2982.4]
  assign _GEN_183 = io_in_valid ? $signed(shr_85_real) : $signed(shr_86_real); // @[OverlapSum.scala 52:25:@2982.4]
  assign _GEN_184 = io_in_valid ? $signed(shr_86_imag) : $signed(shr_87_imag); // @[OverlapSum.scala 52:25:@2986.4]
  assign _GEN_185 = io_in_valid ? $signed(shr_86_real) : $signed(shr_87_real); // @[OverlapSum.scala 52:25:@2986.4]
  assign _GEN_186 = io_in_valid ? $signed(shr_87_imag) : $signed(shr_88_imag); // @[OverlapSum.scala 52:25:@2990.4]
  assign _GEN_187 = io_in_valid ? $signed(shr_87_real) : $signed(shr_88_real); // @[OverlapSum.scala 52:25:@2990.4]
  assign _GEN_188 = io_in_valid ? $signed(shr_88_imag) : $signed(shr_89_imag); // @[OverlapSum.scala 52:25:@2994.4]
  assign _GEN_189 = io_in_valid ? $signed(shr_88_real) : $signed(shr_89_real); // @[OverlapSum.scala 52:25:@2994.4]
  assign _GEN_190 = io_in_valid ? $signed(shr_89_imag) : $signed(shr_90_imag); // @[OverlapSum.scala 52:25:@2998.4]
  assign _GEN_191 = io_in_valid ? $signed(shr_89_real) : $signed(shr_90_real); // @[OverlapSum.scala 52:25:@2998.4]
  assign _GEN_192 = io_in_valid ? $signed(shr_90_imag) : $signed(shr_91_imag); // @[OverlapSum.scala 52:25:@3002.4]
  assign _GEN_193 = io_in_valid ? $signed(shr_90_real) : $signed(shr_91_real); // @[OverlapSum.scala 52:25:@3002.4]
  assign _GEN_194 = io_in_valid ? $signed(shr_91_imag) : $signed(shr_92_imag); // @[OverlapSum.scala 52:25:@3006.4]
  assign _GEN_195 = io_in_valid ? $signed(shr_91_real) : $signed(shr_92_real); // @[OverlapSum.scala 52:25:@3006.4]
  assign _GEN_196 = io_in_valid ? $signed(shr_92_imag) : $signed(shr_93_imag); // @[OverlapSum.scala 52:25:@3010.4]
  assign _GEN_197 = io_in_valid ? $signed(shr_92_real) : $signed(shr_93_real); // @[OverlapSum.scala 52:25:@3010.4]
  assign _GEN_198 = io_in_valid ? $signed(shr_93_imag) : $signed(shr_94_imag); // @[OverlapSum.scala 52:25:@3014.4]
  assign _GEN_199 = io_in_valid ? $signed(shr_93_real) : $signed(shr_94_real); // @[OverlapSum.scala 52:25:@3014.4]
  assign _GEN_200 = io_in_valid ? $signed(shr_94_imag) : $signed(shr_95_imag); // @[OverlapSum.scala 52:25:@3018.4]
  assign _GEN_201 = io_in_valid ? $signed(shr_94_real) : $signed(shr_95_real); // @[OverlapSum.scala 52:25:@3018.4]
  assign _GEN_202 = io_in_valid ? $signed(shr_95_imag) : $signed(shr_96_imag); // @[OverlapSum.scala 52:25:@3022.4]
  assign _GEN_203 = io_in_valid ? $signed(shr_95_real) : $signed(shr_96_real); // @[OverlapSum.scala 52:25:@3022.4]
  assign _GEN_204 = io_in_valid ? $signed(shr_96_imag) : $signed(shr_97_imag); // @[OverlapSum.scala 52:25:@3026.4]
  assign _GEN_205 = io_in_valid ? $signed(shr_96_real) : $signed(shr_97_real); // @[OverlapSum.scala 52:25:@3026.4]
  assign _GEN_206 = io_in_valid ? $signed(shr_97_imag) : $signed(shr_98_imag); // @[OverlapSum.scala 52:25:@3030.4]
  assign _GEN_207 = io_in_valid ? $signed(shr_97_real) : $signed(shr_98_real); // @[OverlapSum.scala 52:25:@3030.4]
  assign _GEN_208 = io_in_valid ? $signed(shr_98_imag) : $signed(shr_99_imag); // @[OverlapSum.scala 52:25:@3034.4]
  assign _GEN_209 = io_in_valid ? $signed(shr_98_real) : $signed(shr_99_real); // @[OverlapSum.scala 52:25:@3034.4]
  assign _GEN_210 = io_in_valid ? $signed(shr_99_imag) : $signed(shr_100_imag); // @[OverlapSum.scala 52:25:@3038.4]
  assign _GEN_211 = io_in_valid ? $signed(shr_99_real) : $signed(shr_100_real); // @[OverlapSum.scala 52:25:@3038.4]
  assign _GEN_212 = io_in_valid ? $signed(shr_100_imag) : $signed(shr_101_imag); // @[OverlapSum.scala 52:25:@3042.4]
  assign _GEN_213 = io_in_valid ? $signed(shr_100_real) : $signed(shr_101_real); // @[OverlapSum.scala 52:25:@3042.4]
  assign _GEN_214 = io_in_valid ? $signed(shr_101_imag) : $signed(shr_102_imag); // @[OverlapSum.scala 52:25:@3046.4]
  assign _GEN_215 = io_in_valid ? $signed(shr_101_real) : $signed(shr_102_real); // @[OverlapSum.scala 52:25:@3046.4]
  assign _GEN_216 = io_in_valid ? $signed(shr_102_imag) : $signed(shr_103_imag); // @[OverlapSum.scala 52:25:@3050.4]
  assign _GEN_217 = io_in_valid ? $signed(shr_102_real) : $signed(shr_103_real); // @[OverlapSum.scala 52:25:@3050.4]
  assign _GEN_218 = io_in_valid ? $signed(shr_103_imag) : $signed(shr_104_imag); // @[OverlapSum.scala 52:25:@3054.4]
  assign _GEN_219 = io_in_valid ? $signed(shr_103_real) : $signed(shr_104_real); // @[OverlapSum.scala 52:25:@3054.4]
  assign _GEN_220 = io_in_valid ? $signed(shr_104_imag) : $signed(shr_105_imag); // @[OverlapSum.scala 52:25:@3058.4]
  assign _GEN_221 = io_in_valid ? $signed(shr_104_real) : $signed(shr_105_real); // @[OverlapSum.scala 52:25:@3058.4]
  assign _GEN_222 = io_in_valid ? $signed(shr_105_imag) : $signed(shr_106_imag); // @[OverlapSum.scala 52:25:@3062.4]
  assign _GEN_223 = io_in_valid ? $signed(shr_105_real) : $signed(shr_106_real); // @[OverlapSum.scala 52:25:@3062.4]
  assign _GEN_224 = io_in_valid ? $signed(shr_106_imag) : $signed(shr_107_imag); // @[OverlapSum.scala 52:25:@3066.4]
  assign _GEN_225 = io_in_valid ? $signed(shr_106_real) : $signed(shr_107_real); // @[OverlapSum.scala 52:25:@3066.4]
  assign _GEN_226 = io_in_valid ? $signed(shr_107_imag) : $signed(shr_108_imag); // @[OverlapSum.scala 52:25:@3070.4]
  assign _GEN_227 = io_in_valid ? $signed(shr_107_real) : $signed(shr_108_real); // @[OverlapSum.scala 52:25:@3070.4]
  assign _GEN_228 = io_in_valid ? $signed(shr_108_imag) : $signed(shr_109_imag); // @[OverlapSum.scala 52:25:@3074.4]
  assign _GEN_229 = io_in_valid ? $signed(shr_108_real) : $signed(shr_109_real); // @[OverlapSum.scala 52:25:@3074.4]
  assign _GEN_230 = io_in_valid ? $signed(shr_109_imag) : $signed(shr_110_imag); // @[OverlapSum.scala 52:25:@3078.4]
  assign _GEN_231 = io_in_valid ? $signed(shr_109_real) : $signed(shr_110_real); // @[OverlapSum.scala 52:25:@3078.4]
  assign _GEN_232 = io_in_valid ? $signed(shr_110_imag) : $signed(shr_111_imag); // @[OverlapSum.scala 52:25:@3082.4]
  assign _GEN_233 = io_in_valid ? $signed(shr_110_real) : $signed(shr_111_real); // @[OverlapSum.scala 52:25:@3082.4]
  assign _GEN_234 = io_in_valid ? $signed(shr_111_imag) : $signed(shr_112_imag); // @[OverlapSum.scala 52:25:@3086.4]
  assign _GEN_235 = io_in_valid ? $signed(shr_111_real) : $signed(shr_112_real); // @[OverlapSum.scala 52:25:@3086.4]
  assign _GEN_236 = io_in_valid ? $signed(shr_112_imag) : $signed(shr_113_imag); // @[OverlapSum.scala 52:25:@3090.4]
  assign _GEN_237 = io_in_valid ? $signed(shr_112_real) : $signed(shr_113_real); // @[OverlapSum.scala 52:25:@3090.4]
  assign _GEN_238 = io_in_valid ? $signed(shr_113_imag) : $signed(shr_114_imag); // @[OverlapSum.scala 52:25:@3094.4]
  assign _GEN_239 = io_in_valid ? $signed(shr_113_real) : $signed(shr_114_real); // @[OverlapSum.scala 52:25:@3094.4]
  assign _GEN_240 = io_in_valid ? $signed(shr_114_imag) : $signed(shr_115_imag); // @[OverlapSum.scala 52:25:@3098.4]
  assign _GEN_241 = io_in_valid ? $signed(shr_114_real) : $signed(shr_115_real); // @[OverlapSum.scala 52:25:@3098.4]
  assign _GEN_242 = io_in_valid ? $signed(shr_115_imag) : $signed(shr_116_imag); // @[OverlapSum.scala 52:25:@3102.4]
  assign _GEN_243 = io_in_valid ? $signed(shr_115_real) : $signed(shr_116_real); // @[OverlapSum.scala 52:25:@3102.4]
  assign _GEN_244 = io_in_valid ? $signed(shr_116_imag) : $signed(shr_117_imag); // @[OverlapSum.scala 52:25:@3106.4]
  assign _GEN_245 = io_in_valid ? $signed(shr_116_real) : $signed(shr_117_real); // @[OverlapSum.scala 52:25:@3106.4]
  assign _GEN_246 = io_in_valid ? $signed(shr_117_imag) : $signed(shr_118_imag); // @[OverlapSum.scala 52:25:@3110.4]
  assign _GEN_247 = io_in_valid ? $signed(shr_117_real) : $signed(shr_118_real); // @[OverlapSum.scala 52:25:@3110.4]
  assign _GEN_248 = io_in_valid ? $signed(shr_118_imag) : $signed(shr_119_imag); // @[OverlapSum.scala 52:25:@3114.4]
  assign _GEN_249 = io_in_valid ? $signed(shr_118_real) : $signed(shr_119_real); // @[OverlapSum.scala 52:25:@3114.4]
  assign _GEN_250 = io_in_valid ? $signed(shr_119_imag) : $signed(shr_120_imag); // @[OverlapSum.scala 52:25:@3118.4]
  assign _GEN_251 = io_in_valid ? $signed(shr_119_real) : $signed(shr_120_real); // @[OverlapSum.scala 52:25:@3118.4]
  assign _GEN_252 = io_in_valid ? $signed(shr_120_imag) : $signed(shr_121_imag); // @[OverlapSum.scala 52:25:@3122.4]
  assign _GEN_253 = io_in_valid ? $signed(shr_120_real) : $signed(shr_121_real); // @[OverlapSum.scala 52:25:@3122.4]
  assign _GEN_254 = io_in_valid ? $signed(shr_121_imag) : $signed(shr_122_imag); // @[OverlapSum.scala 52:25:@3126.4]
  assign _GEN_255 = io_in_valid ? $signed(shr_121_real) : $signed(shr_122_real); // @[OverlapSum.scala 52:25:@3126.4]
  assign _GEN_256 = io_in_valid ? $signed(shr_122_imag) : $signed(shr_123_imag); // @[OverlapSum.scala 52:25:@3130.4]
  assign _GEN_257 = io_in_valid ? $signed(shr_122_real) : $signed(shr_123_real); // @[OverlapSum.scala 52:25:@3130.4]
  assign _GEN_258 = io_in_valid ? $signed(shr_123_imag) : $signed(shr_124_imag); // @[OverlapSum.scala 52:25:@3134.4]
  assign _GEN_259 = io_in_valid ? $signed(shr_123_real) : $signed(shr_124_real); // @[OverlapSum.scala 52:25:@3134.4]
  assign _GEN_260 = io_in_valid ? $signed(shr_124_imag) : $signed(shr_125_imag); // @[OverlapSum.scala 52:25:@3138.4]
  assign _GEN_261 = io_in_valid ? $signed(shr_124_real) : $signed(shr_125_real); // @[OverlapSum.scala 52:25:@3138.4]
  assign _GEN_262 = io_in_valid ? $signed(shr_125_imag) : $signed(shr_126_imag); // @[OverlapSum.scala 52:25:@3142.4]
  assign _GEN_263 = io_in_valid ? $signed(shr_125_real) : $signed(shr_126_real); // @[OverlapSum.scala 52:25:@3142.4]
  assign io_out_bits_real = _T_4898_real;
  assign io_out_bits_imag = _T_4898_imag;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  depth = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  shr_0_real = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  shr_0_imag = _RAND_2[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  shr_1_real = _RAND_3[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  shr_1_imag = _RAND_4[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  shr_2_real = _RAND_5[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  shr_2_imag = _RAND_6[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  shr_3_real = _RAND_7[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  shr_3_imag = _RAND_8[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  shr_4_real = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  shr_4_imag = _RAND_10[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  shr_5_real = _RAND_11[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  shr_5_imag = _RAND_12[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  shr_6_real = _RAND_13[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  shr_6_imag = _RAND_14[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  shr_7_real = _RAND_15[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  shr_7_imag = _RAND_16[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  shr_8_real = _RAND_17[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  shr_8_imag = _RAND_18[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  shr_9_real = _RAND_19[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  shr_9_imag = _RAND_20[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  shr_10_real = _RAND_21[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  shr_10_imag = _RAND_22[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  shr_11_real = _RAND_23[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  shr_11_imag = _RAND_24[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  shr_12_real = _RAND_25[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  shr_12_imag = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  shr_13_real = _RAND_27[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  shr_13_imag = _RAND_28[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  shr_14_real = _RAND_29[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  shr_14_imag = _RAND_30[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  shr_15_real = _RAND_31[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  shr_15_imag = _RAND_32[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  shr_16_real = _RAND_33[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  shr_16_imag = _RAND_34[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  shr_17_real = _RAND_35[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  shr_17_imag = _RAND_36[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  shr_18_real = _RAND_37[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  shr_18_imag = _RAND_38[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  shr_19_real = _RAND_39[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  shr_19_imag = _RAND_40[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  shr_20_real = _RAND_41[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  shr_20_imag = _RAND_42[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  shr_21_real = _RAND_43[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  shr_21_imag = _RAND_44[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  shr_22_real = _RAND_45[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  shr_22_imag = _RAND_46[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  shr_23_real = _RAND_47[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  shr_23_imag = _RAND_48[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  shr_24_real = _RAND_49[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  shr_24_imag = _RAND_50[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  shr_25_real = _RAND_51[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  shr_25_imag = _RAND_52[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  shr_26_real = _RAND_53[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  shr_26_imag = _RAND_54[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  shr_27_real = _RAND_55[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  shr_27_imag = _RAND_56[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  shr_28_real = _RAND_57[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  shr_28_imag = _RAND_58[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  shr_29_real = _RAND_59[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  shr_29_imag = _RAND_60[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  shr_30_real = _RAND_61[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  shr_30_imag = _RAND_62[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  shr_31_real = _RAND_63[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  shr_31_imag = _RAND_64[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  shr_32_real = _RAND_65[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  shr_32_imag = _RAND_66[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  shr_33_real = _RAND_67[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  shr_33_imag = _RAND_68[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  shr_34_real = _RAND_69[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  shr_34_imag = _RAND_70[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  shr_35_real = _RAND_71[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  shr_35_imag = _RAND_72[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  shr_36_real = _RAND_73[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  shr_36_imag = _RAND_74[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  shr_37_real = _RAND_75[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  shr_37_imag = _RAND_76[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{$random}};
  shr_38_real = _RAND_77[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{$random}};
  shr_38_imag = _RAND_78[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  shr_39_real = _RAND_79[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  shr_39_imag = _RAND_80[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  shr_40_real = _RAND_81[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  shr_40_imag = _RAND_82[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  shr_41_real = _RAND_83[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  shr_41_imag = _RAND_84[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  shr_42_real = _RAND_85[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  shr_42_imag = _RAND_86[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  shr_43_real = _RAND_87[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{$random}};
  shr_43_imag = _RAND_88[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{$random}};
  shr_44_real = _RAND_89[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{$random}};
  shr_44_imag = _RAND_90[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{$random}};
  shr_45_real = _RAND_91[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{$random}};
  shr_45_imag = _RAND_92[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{$random}};
  shr_46_real = _RAND_93[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{$random}};
  shr_46_imag = _RAND_94[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{$random}};
  shr_47_real = _RAND_95[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{$random}};
  shr_47_imag = _RAND_96[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{$random}};
  shr_48_real = _RAND_97[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{$random}};
  shr_48_imag = _RAND_98[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{$random}};
  shr_49_real = _RAND_99[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{$random}};
  shr_49_imag = _RAND_100[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{$random}};
  shr_50_real = _RAND_101[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{$random}};
  shr_50_imag = _RAND_102[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{$random}};
  shr_51_real = _RAND_103[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{$random}};
  shr_51_imag = _RAND_104[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{$random}};
  shr_52_real = _RAND_105[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{$random}};
  shr_52_imag = _RAND_106[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{$random}};
  shr_53_real = _RAND_107[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{$random}};
  shr_53_imag = _RAND_108[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{$random}};
  shr_54_real = _RAND_109[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{$random}};
  shr_54_imag = _RAND_110[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{$random}};
  shr_55_real = _RAND_111[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{$random}};
  shr_55_imag = _RAND_112[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{$random}};
  shr_56_real = _RAND_113[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{$random}};
  shr_56_imag = _RAND_114[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{$random}};
  shr_57_real = _RAND_115[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{$random}};
  shr_57_imag = _RAND_116[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{$random}};
  shr_58_real = _RAND_117[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{$random}};
  shr_58_imag = _RAND_118[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{$random}};
  shr_59_real = _RAND_119[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{$random}};
  shr_59_imag = _RAND_120[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{$random}};
  shr_60_real = _RAND_121[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{$random}};
  shr_60_imag = _RAND_122[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{$random}};
  shr_61_real = _RAND_123[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{$random}};
  shr_61_imag = _RAND_124[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{$random}};
  shr_62_real = _RAND_125[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{$random}};
  shr_62_imag = _RAND_126[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{$random}};
  shr_63_real = _RAND_127[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{$random}};
  shr_63_imag = _RAND_128[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{$random}};
  shr_64_real = _RAND_129[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{$random}};
  shr_64_imag = _RAND_130[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{$random}};
  shr_65_real = _RAND_131[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{$random}};
  shr_65_imag = _RAND_132[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{$random}};
  shr_66_real = _RAND_133[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{$random}};
  shr_66_imag = _RAND_134[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{$random}};
  shr_67_real = _RAND_135[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{$random}};
  shr_67_imag = _RAND_136[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{$random}};
  shr_68_real = _RAND_137[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{$random}};
  shr_68_imag = _RAND_138[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{$random}};
  shr_69_real = _RAND_139[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{$random}};
  shr_69_imag = _RAND_140[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{$random}};
  shr_70_real = _RAND_141[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{$random}};
  shr_70_imag = _RAND_142[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{$random}};
  shr_71_real = _RAND_143[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{$random}};
  shr_71_imag = _RAND_144[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{$random}};
  shr_72_real = _RAND_145[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{$random}};
  shr_72_imag = _RAND_146[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{$random}};
  shr_73_real = _RAND_147[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{$random}};
  shr_73_imag = _RAND_148[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{$random}};
  shr_74_real = _RAND_149[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{$random}};
  shr_74_imag = _RAND_150[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{$random}};
  shr_75_real = _RAND_151[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{$random}};
  shr_75_imag = _RAND_152[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{$random}};
  shr_76_real = _RAND_153[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{$random}};
  shr_76_imag = _RAND_154[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{$random}};
  shr_77_real = _RAND_155[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{$random}};
  shr_77_imag = _RAND_156[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{$random}};
  shr_78_real = _RAND_157[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{$random}};
  shr_78_imag = _RAND_158[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{$random}};
  shr_79_real = _RAND_159[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{$random}};
  shr_79_imag = _RAND_160[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{$random}};
  shr_80_real = _RAND_161[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{$random}};
  shr_80_imag = _RAND_162[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{$random}};
  shr_81_real = _RAND_163[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{$random}};
  shr_81_imag = _RAND_164[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{$random}};
  shr_82_real = _RAND_165[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{$random}};
  shr_82_imag = _RAND_166[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{$random}};
  shr_83_real = _RAND_167[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{$random}};
  shr_83_imag = _RAND_168[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{$random}};
  shr_84_real = _RAND_169[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{$random}};
  shr_84_imag = _RAND_170[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{$random}};
  shr_85_real = _RAND_171[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{$random}};
  shr_85_imag = _RAND_172[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{$random}};
  shr_86_real = _RAND_173[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{$random}};
  shr_86_imag = _RAND_174[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{$random}};
  shr_87_real = _RAND_175[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{$random}};
  shr_87_imag = _RAND_176[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{$random}};
  shr_88_real = _RAND_177[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{$random}};
  shr_88_imag = _RAND_178[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{$random}};
  shr_89_real = _RAND_179[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{$random}};
  shr_89_imag = _RAND_180[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{$random}};
  shr_90_real = _RAND_181[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{$random}};
  shr_90_imag = _RAND_182[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{$random}};
  shr_91_real = _RAND_183[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{$random}};
  shr_91_imag = _RAND_184[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{$random}};
  shr_92_real = _RAND_185[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{$random}};
  shr_92_imag = _RAND_186[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{$random}};
  shr_93_real = _RAND_187[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{$random}};
  shr_93_imag = _RAND_188[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{$random}};
  shr_94_real = _RAND_189[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{$random}};
  shr_94_imag = _RAND_190[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {1{$random}};
  shr_95_real = _RAND_191[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{$random}};
  shr_95_imag = _RAND_192[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{$random}};
  shr_96_real = _RAND_193[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{$random}};
  shr_96_imag = _RAND_194[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{$random}};
  shr_97_real = _RAND_195[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{$random}};
  shr_97_imag = _RAND_196[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_197 = {1{$random}};
  shr_98_real = _RAND_197[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_198 = {1{$random}};
  shr_98_imag = _RAND_198[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_199 = {1{$random}};
  shr_99_real = _RAND_199[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_200 = {1{$random}};
  shr_99_imag = _RAND_200[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_201 = {1{$random}};
  shr_100_real = _RAND_201[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_202 = {1{$random}};
  shr_100_imag = _RAND_202[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_203 = {1{$random}};
  shr_101_real = _RAND_203[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_204 = {1{$random}};
  shr_101_imag = _RAND_204[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_205 = {1{$random}};
  shr_102_real = _RAND_205[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_206 = {1{$random}};
  shr_102_imag = _RAND_206[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_207 = {1{$random}};
  shr_103_real = _RAND_207[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_208 = {1{$random}};
  shr_103_imag = _RAND_208[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_209 = {1{$random}};
  shr_104_real = _RAND_209[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_210 = {1{$random}};
  shr_104_imag = _RAND_210[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_211 = {1{$random}};
  shr_105_real = _RAND_211[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_212 = {1{$random}};
  shr_105_imag = _RAND_212[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_213 = {1{$random}};
  shr_106_real = _RAND_213[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_214 = {1{$random}};
  shr_106_imag = _RAND_214[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_215 = {1{$random}};
  shr_107_real = _RAND_215[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_216 = {1{$random}};
  shr_107_imag = _RAND_216[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_217 = {1{$random}};
  shr_108_real = _RAND_217[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_218 = {1{$random}};
  shr_108_imag = _RAND_218[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_219 = {1{$random}};
  shr_109_real = _RAND_219[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_220 = {1{$random}};
  shr_109_imag = _RAND_220[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_221 = {1{$random}};
  shr_110_real = _RAND_221[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_222 = {1{$random}};
  shr_110_imag = _RAND_222[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_223 = {1{$random}};
  shr_111_real = _RAND_223[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_224 = {1{$random}};
  shr_111_imag = _RAND_224[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_225 = {1{$random}};
  shr_112_real = _RAND_225[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_226 = {1{$random}};
  shr_112_imag = _RAND_226[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_227 = {1{$random}};
  shr_113_real = _RAND_227[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_228 = {1{$random}};
  shr_113_imag = _RAND_228[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_229 = {1{$random}};
  shr_114_real = _RAND_229[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_230 = {1{$random}};
  shr_114_imag = _RAND_230[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_231 = {1{$random}};
  shr_115_real = _RAND_231[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_232 = {1{$random}};
  shr_115_imag = _RAND_232[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_233 = {1{$random}};
  shr_116_real = _RAND_233[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_234 = {1{$random}};
  shr_116_imag = _RAND_234[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_235 = {1{$random}};
  shr_117_real = _RAND_235[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_236 = {1{$random}};
  shr_117_imag = _RAND_236[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_237 = {1{$random}};
  shr_118_real = _RAND_237[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_238 = {1{$random}};
  shr_118_imag = _RAND_238[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_239 = {1{$random}};
  shr_119_real = _RAND_239[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_240 = {1{$random}};
  shr_119_imag = _RAND_240[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_241 = {1{$random}};
  shr_120_real = _RAND_241[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_242 = {1{$random}};
  shr_120_imag = _RAND_242[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_243 = {1{$random}};
  shr_121_real = _RAND_243[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_244 = {1{$random}};
  shr_121_imag = _RAND_244[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_245 = {1{$random}};
  shr_122_real = _RAND_245[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_246 = {1{$random}};
  shr_122_imag = _RAND_246[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_247 = {1{$random}};
  shr_123_real = _RAND_247[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_248 = {1{$random}};
  shr_123_imag = _RAND_248[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_249 = {1{$random}};
  shr_124_real = _RAND_249[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_250 = {1{$random}};
  shr_124_imag = _RAND_250[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_251 = {1{$random}};
  shr_125_real = _RAND_251[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_252 = {1{$random}};
  shr_125_imag = _RAND_252[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_253 = {1{$random}};
  shr_126_real = _RAND_253[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_254 = {1{$random}};
  shr_126_imag = _RAND_254[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_255 = {1{$random}};
  _T_4886_real = _RAND_255[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_256 = {1{$random}};
  _T_4886_imag = _RAND_256[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_257 = {1{$random}};
  _T_4892_real = _RAND_257[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_258 = {1{$random}};
  _T_4892_imag = _RAND_258[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_259 = {1{$random}};
  _T_4898_real = _RAND_259[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_260 = {1{$random}};
  _T_4898_imag = _RAND_260[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      depth <= 8'h80;
    end else begin
      if (io_depth_valid) begin
        depth <= io_depth_bits;
      end
    end
    if (io_in_valid) begin
      shr_0_real <= io_in_bits_real;
    end
    if (io_in_valid) begin
      shr_0_imag <= io_in_bits_imag;
    end
    if (io_in_valid) begin
      shr_1_real <= shr_0_real;
    end
    if (io_in_valid) begin
      shr_1_imag <= shr_0_imag;
    end
    if (io_in_valid) begin
      shr_2_real <= shr_1_real;
    end
    if (io_in_valid) begin
      shr_2_imag <= shr_1_imag;
    end
    if (io_in_valid) begin
      shr_3_real <= shr_2_real;
    end
    if (io_in_valid) begin
      shr_3_imag <= shr_2_imag;
    end
    if (io_in_valid) begin
      shr_4_real <= shr_3_real;
    end
    if (io_in_valid) begin
      shr_4_imag <= shr_3_imag;
    end
    if (io_in_valid) begin
      shr_5_real <= shr_4_real;
    end
    if (io_in_valid) begin
      shr_5_imag <= shr_4_imag;
    end
    if (io_in_valid) begin
      shr_6_real <= shr_5_real;
    end
    if (io_in_valid) begin
      shr_6_imag <= shr_5_imag;
    end
    if (io_in_valid) begin
      shr_7_real <= shr_6_real;
    end
    if (io_in_valid) begin
      shr_7_imag <= shr_6_imag;
    end
    if (io_in_valid) begin
      shr_8_real <= shr_7_real;
    end
    if (io_in_valid) begin
      shr_8_imag <= shr_7_imag;
    end
    if (io_in_valid) begin
      shr_9_real <= shr_8_real;
    end
    if (io_in_valid) begin
      shr_9_imag <= shr_8_imag;
    end
    if (io_in_valid) begin
      shr_10_real <= shr_9_real;
    end
    if (io_in_valid) begin
      shr_10_imag <= shr_9_imag;
    end
    if (io_in_valid) begin
      shr_11_real <= shr_10_real;
    end
    if (io_in_valid) begin
      shr_11_imag <= shr_10_imag;
    end
    if (io_in_valid) begin
      shr_12_real <= shr_11_real;
    end
    if (io_in_valid) begin
      shr_12_imag <= shr_11_imag;
    end
    if (io_in_valid) begin
      shr_13_real <= shr_12_real;
    end
    if (io_in_valid) begin
      shr_13_imag <= shr_12_imag;
    end
    if (io_in_valid) begin
      shr_14_real <= shr_13_real;
    end
    if (io_in_valid) begin
      shr_14_imag <= shr_13_imag;
    end
    if (io_in_valid) begin
      shr_15_real <= shr_14_real;
    end
    if (io_in_valid) begin
      shr_15_imag <= shr_14_imag;
    end
    if (io_in_valid) begin
      shr_16_real <= shr_15_real;
    end
    if (io_in_valid) begin
      shr_16_imag <= shr_15_imag;
    end
    if (io_in_valid) begin
      shr_17_real <= shr_16_real;
    end
    if (io_in_valid) begin
      shr_17_imag <= shr_16_imag;
    end
    if (io_in_valid) begin
      shr_18_real <= shr_17_real;
    end
    if (io_in_valid) begin
      shr_18_imag <= shr_17_imag;
    end
    if (io_in_valid) begin
      shr_19_real <= shr_18_real;
    end
    if (io_in_valid) begin
      shr_19_imag <= shr_18_imag;
    end
    if (io_in_valid) begin
      shr_20_real <= shr_19_real;
    end
    if (io_in_valid) begin
      shr_20_imag <= shr_19_imag;
    end
    if (io_in_valid) begin
      shr_21_real <= shr_20_real;
    end
    if (io_in_valid) begin
      shr_21_imag <= shr_20_imag;
    end
    if (io_in_valid) begin
      shr_22_real <= shr_21_real;
    end
    if (io_in_valid) begin
      shr_22_imag <= shr_21_imag;
    end
    if (io_in_valid) begin
      shr_23_real <= shr_22_real;
    end
    if (io_in_valid) begin
      shr_23_imag <= shr_22_imag;
    end
    if (io_in_valid) begin
      shr_24_real <= shr_23_real;
    end
    if (io_in_valid) begin
      shr_24_imag <= shr_23_imag;
    end
    if (io_in_valid) begin
      shr_25_real <= shr_24_real;
    end
    if (io_in_valid) begin
      shr_25_imag <= shr_24_imag;
    end
    if (io_in_valid) begin
      shr_26_real <= shr_25_real;
    end
    if (io_in_valid) begin
      shr_26_imag <= shr_25_imag;
    end
    if (io_in_valid) begin
      shr_27_real <= shr_26_real;
    end
    if (io_in_valid) begin
      shr_27_imag <= shr_26_imag;
    end
    if (io_in_valid) begin
      shr_28_real <= shr_27_real;
    end
    if (io_in_valid) begin
      shr_28_imag <= shr_27_imag;
    end
    if (io_in_valid) begin
      shr_29_real <= shr_28_real;
    end
    if (io_in_valid) begin
      shr_29_imag <= shr_28_imag;
    end
    if (io_in_valid) begin
      shr_30_real <= shr_29_real;
    end
    if (io_in_valid) begin
      shr_30_imag <= shr_29_imag;
    end
    if (io_in_valid) begin
      shr_31_real <= shr_30_real;
    end
    if (io_in_valid) begin
      shr_31_imag <= shr_30_imag;
    end
    if (io_in_valid) begin
      shr_32_real <= shr_31_real;
    end
    if (io_in_valid) begin
      shr_32_imag <= shr_31_imag;
    end
    if (io_in_valid) begin
      shr_33_real <= shr_32_real;
    end
    if (io_in_valid) begin
      shr_33_imag <= shr_32_imag;
    end
    if (io_in_valid) begin
      shr_34_real <= shr_33_real;
    end
    if (io_in_valid) begin
      shr_34_imag <= shr_33_imag;
    end
    if (io_in_valid) begin
      shr_35_real <= shr_34_real;
    end
    if (io_in_valid) begin
      shr_35_imag <= shr_34_imag;
    end
    if (io_in_valid) begin
      shr_36_real <= shr_35_real;
    end
    if (io_in_valid) begin
      shr_36_imag <= shr_35_imag;
    end
    if (io_in_valid) begin
      shr_37_real <= shr_36_real;
    end
    if (io_in_valid) begin
      shr_37_imag <= shr_36_imag;
    end
    if (io_in_valid) begin
      shr_38_real <= shr_37_real;
    end
    if (io_in_valid) begin
      shr_38_imag <= shr_37_imag;
    end
    if (io_in_valid) begin
      shr_39_real <= shr_38_real;
    end
    if (io_in_valid) begin
      shr_39_imag <= shr_38_imag;
    end
    if (io_in_valid) begin
      shr_40_real <= shr_39_real;
    end
    if (io_in_valid) begin
      shr_40_imag <= shr_39_imag;
    end
    if (io_in_valid) begin
      shr_41_real <= shr_40_real;
    end
    if (io_in_valid) begin
      shr_41_imag <= shr_40_imag;
    end
    if (io_in_valid) begin
      shr_42_real <= shr_41_real;
    end
    if (io_in_valid) begin
      shr_42_imag <= shr_41_imag;
    end
    if (io_in_valid) begin
      shr_43_real <= shr_42_real;
    end
    if (io_in_valid) begin
      shr_43_imag <= shr_42_imag;
    end
    if (io_in_valid) begin
      shr_44_real <= shr_43_real;
    end
    if (io_in_valid) begin
      shr_44_imag <= shr_43_imag;
    end
    if (io_in_valid) begin
      shr_45_real <= shr_44_real;
    end
    if (io_in_valid) begin
      shr_45_imag <= shr_44_imag;
    end
    if (io_in_valid) begin
      shr_46_real <= shr_45_real;
    end
    if (io_in_valid) begin
      shr_46_imag <= shr_45_imag;
    end
    if (io_in_valid) begin
      shr_47_real <= shr_46_real;
    end
    if (io_in_valid) begin
      shr_47_imag <= shr_46_imag;
    end
    if (io_in_valid) begin
      shr_48_real <= shr_47_real;
    end
    if (io_in_valid) begin
      shr_48_imag <= shr_47_imag;
    end
    if (io_in_valid) begin
      shr_49_real <= shr_48_real;
    end
    if (io_in_valid) begin
      shr_49_imag <= shr_48_imag;
    end
    if (io_in_valid) begin
      shr_50_real <= shr_49_real;
    end
    if (io_in_valid) begin
      shr_50_imag <= shr_49_imag;
    end
    if (io_in_valid) begin
      shr_51_real <= shr_50_real;
    end
    if (io_in_valid) begin
      shr_51_imag <= shr_50_imag;
    end
    if (io_in_valid) begin
      shr_52_real <= shr_51_real;
    end
    if (io_in_valid) begin
      shr_52_imag <= shr_51_imag;
    end
    if (io_in_valid) begin
      shr_53_real <= shr_52_real;
    end
    if (io_in_valid) begin
      shr_53_imag <= shr_52_imag;
    end
    if (io_in_valid) begin
      shr_54_real <= shr_53_real;
    end
    if (io_in_valid) begin
      shr_54_imag <= shr_53_imag;
    end
    if (io_in_valid) begin
      shr_55_real <= shr_54_real;
    end
    if (io_in_valid) begin
      shr_55_imag <= shr_54_imag;
    end
    if (io_in_valid) begin
      shr_56_real <= shr_55_real;
    end
    if (io_in_valid) begin
      shr_56_imag <= shr_55_imag;
    end
    if (io_in_valid) begin
      shr_57_real <= shr_56_real;
    end
    if (io_in_valid) begin
      shr_57_imag <= shr_56_imag;
    end
    if (io_in_valid) begin
      shr_58_real <= shr_57_real;
    end
    if (io_in_valid) begin
      shr_58_imag <= shr_57_imag;
    end
    if (io_in_valid) begin
      shr_59_real <= shr_58_real;
    end
    if (io_in_valid) begin
      shr_59_imag <= shr_58_imag;
    end
    if (io_in_valid) begin
      shr_60_real <= shr_59_real;
    end
    if (io_in_valid) begin
      shr_60_imag <= shr_59_imag;
    end
    if (io_in_valid) begin
      shr_61_real <= shr_60_real;
    end
    if (io_in_valid) begin
      shr_61_imag <= shr_60_imag;
    end
    if (io_in_valid) begin
      shr_62_real <= shr_61_real;
    end
    if (io_in_valid) begin
      shr_62_imag <= shr_61_imag;
    end
    if (io_in_valid) begin
      shr_63_real <= shr_62_real;
    end
    if (io_in_valid) begin
      shr_63_imag <= shr_62_imag;
    end
    if (io_in_valid) begin
      shr_64_real <= shr_63_real;
    end
    if (io_in_valid) begin
      shr_64_imag <= shr_63_imag;
    end
    if (io_in_valid) begin
      shr_65_real <= shr_64_real;
    end
    if (io_in_valid) begin
      shr_65_imag <= shr_64_imag;
    end
    if (io_in_valid) begin
      shr_66_real <= shr_65_real;
    end
    if (io_in_valid) begin
      shr_66_imag <= shr_65_imag;
    end
    if (io_in_valid) begin
      shr_67_real <= shr_66_real;
    end
    if (io_in_valid) begin
      shr_67_imag <= shr_66_imag;
    end
    if (io_in_valid) begin
      shr_68_real <= shr_67_real;
    end
    if (io_in_valid) begin
      shr_68_imag <= shr_67_imag;
    end
    if (io_in_valid) begin
      shr_69_real <= shr_68_real;
    end
    if (io_in_valid) begin
      shr_69_imag <= shr_68_imag;
    end
    if (io_in_valid) begin
      shr_70_real <= shr_69_real;
    end
    if (io_in_valid) begin
      shr_70_imag <= shr_69_imag;
    end
    if (io_in_valid) begin
      shr_71_real <= shr_70_real;
    end
    if (io_in_valid) begin
      shr_71_imag <= shr_70_imag;
    end
    if (io_in_valid) begin
      shr_72_real <= shr_71_real;
    end
    if (io_in_valid) begin
      shr_72_imag <= shr_71_imag;
    end
    if (io_in_valid) begin
      shr_73_real <= shr_72_real;
    end
    if (io_in_valid) begin
      shr_73_imag <= shr_72_imag;
    end
    if (io_in_valid) begin
      shr_74_real <= shr_73_real;
    end
    if (io_in_valid) begin
      shr_74_imag <= shr_73_imag;
    end
    if (io_in_valid) begin
      shr_75_real <= shr_74_real;
    end
    if (io_in_valid) begin
      shr_75_imag <= shr_74_imag;
    end
    if (io_in_valid) begin
      shr_76_real <= shr_75_real;
    end
    if (io_in_valid) begin
      shr_76_imag <= shr_75_imag;
    end
    if (io_in_valid) begin
      shr_77_real <= shr_76_real;
    end
    if (io_in_valid) begin
      shr_77_imag <= shr_76_imag;
    end
    if (io_in_valid) begin
      shr_78_real <= shr_77_real;
    end
    if (io_in_valid) begin
      shr_78_imag <= shr_77_imag;
    end
    if (io_in_valid) begin
      shr_79_real <= shr_78_real;
    end
    if (io_in_valid) begin
      shr_79_imag <= shr_78_imag;
    end
    if (io_in_valid) begin
      shr_80_real <= shr_79_real;
    end
    if (io_in_valid) begin
      shr_80_imag <= shr_79_imag;
    end
    if (io_in_valid) begin
      shr_81_real <= shr_80_real;
    end
    if (io_in_valid) begin
      shr_81_imag <= shr_80_imag;
    end
    if (io_in_valid) begin
      shr_82_real <= shr_81_real;
    end
    if (io_in_valid) begin
      shr_82_imag <= shr_81_imag;
    end
    if (io_in_valid) begin
      shr_83_real <= shr_82_real;
    end
    if (io_in_valid) begin
      shr_83_imag <= shr_82_imag;
    end
    if (io_in_valid) begin
      shr_84_real <= shr_83_real;
    end
    if (io_in_valid) begin
      shr_84_imag <= shr_83_imag;
    end
    if (io_in_valid) begin
      shr_85_real <= shr_84_real;
    end
    if (io_in_valid) begin
      shr_85_imag <= shr_84_imag;
    end
    if (io_in_valid) begin
      shr_86_real <= shr_85_real;
    end
    if (io_in_valid) begin
      shr_86_imag <= shr_85_imag;
    end
    if (io_in_valid) begin
      shr_87_real <= shr_86_real;
    end
    if (io_in_valid) begin
      shr_87_imag <= shr_86_imag;
    end
    if (io_in_valid) begin
      shr_88_real <= shr_87_real;
    end
    if (io_in_valid) begin
      shr_88_imag <= shr_87_imag;
    end
    if (io_in_valid) begin
      shr_89_real <= shr_88_real;
    end
    if (io_in_valid) begin
      shr_89_imag <= shr_88_imag;
    end
    if (io_in_valid) begin
      shr_90_real <= shr_89_real;
    end
    if (io_in_valid) begin
      shr_90_imag <= shr_89_imag;
    end
    if (io_in_valid) begin
      shr_91_real <= shr_90_real;
    end
    if (io_in_valid) begin
      shr_91_imag <= shr_90_imag;
    end
    if (io_in_valid) begin
      shr_92_real <= shr_91_real;
    end
    if (io_in_valid) begin
      shr_92_imag <= shr_91_imag;
    end
    if (io_in_valid) begin
      shr_93_real <= shr_92_real;
    end
    if (io_in_valid) begin
      shr_93_imag <= shr_92_imag;
    end
    if (io_in_valid) begin
      shr_94_real <= shr_93_real;
    end
    if (io_in_valid) begin
      shr_94_imag <= shr_93_imag;
    end
    if (io_in_valid) begin
      shr_95_real <= shr_94_real;
    end
    if (io_in_valid) begin
      shr_95_imag <= shr_94_imag;
    end
    if (io_in_valid) begin
      shr_96_real <= shr_95_real;
    end
    if (io_in_valid) begin
      shr_96_imag <= shr_95_imag;
    end
    if (io_in_valid) begin
      shr_97_real <= shr_96_real;
    end
    if (io_in_valid) begin
      shr_97_imag <= shr_96_imag;
    end
    if (io_in_valid) begin
      shr_98_real <= shr_97_real;
    end
    if (io_in_valid) begin
      shr_98_imag <= shr_97_imag;
    end
    if (io_in_valid) begin
      shr_99_real <= shr_98_real;
    end
    if (io_in_valid) begin
      shr_99_imag <= shr_98_imag;
    end
    if (io_in_valid) begin
      shr_100_real <= shr_99_real;
    end
    if (io_in_valid) begin
      shr_100_imag <= shr_99_imag;
    end
    if (io_in_valid) begin
      shr_101_real <= shr_100_real;
    end
    if (io_in_valid) begin
      shr_101_imag <= shr_100_imag;
    end
    if (io_in_valid) begin
      shr_102_real <= shr_101_real;
    end
    if (io_in_valid) begin
      shr_102_imag <= shr_101_imag;
    end
    if (io_in_valid) begin
      shr_103_real <= shr_102_real;
    end
    if (io_in_valid) begin
      shr_103_imag <= shr_102_imag;
    end
    if (io_in_valid) begin
      shr_104_real <= shr_103_real;
    end
    if (io_in_valid) begin
      shr_104_imag <= shr_103_imag;
    end
    if (io_in_valid) begin
      shr_105_real <= shr_104_real;
    end
    if (io_in_valid) begin
      shr_105_imag <= shr_104_imag;
    end
    if (io_in_valid) begin
      shr_106_real <= shr_105_real;
    end
    if (io_in_valid) begin
      shr_106_imag <= shr_105_imag;
    end
    if (io_in_valid) begin
      shr_107_real <= shr_106_real;
    end
    if (io_in_valid) begin
      shr_107_imag <= shr_106_imag;
    end
    if (io_in_valid) begin
      shr_108_real <= shr_107_real;
    end
    if (io_in_valid) begin
      shr_108_imag <= shr_107_imag;
    end
    if (io_in_valid) begin
      shr_109_real <= shr_108_real;
    end
    if (io_in_valid) begin
      shr_109_imag <= shr_108_imag;
    end
    if (io_in_valid) begin
      shr_110_real <= shr_109_real;
    end
    if (io_in_valid) begin
      shr_110_imag <= shr_109_imag;
    end
    if (io_in_valid) begin
      shr_111_real <= shr_110_real;
    end
    if (io_in_valid) begin
      shr_111_imag <= shr_110_imag;
    end
    if (io_in_valid) begin
      shr_112_real <= shr_111_real;
    end
    if (io_in_valid) begin
      shr_112_imag <= shr_111_imag;
    end
    if (io_in_valid) begin
      shr_113_real <= shr_112_real;
    end
    if (io_in_valid) begin
      shr_113_imag <= shr_112_imag;
    end
    if (io_in_valid) begin
      shr_114_real <= shr_113_real;
    end
    if (io_in_valid) begin
      shr_114_imag <= shr_113_imag;
    end
    if (io_in_valid) begin
      shr_115_real <= shr_114_real;
    end
    if (io_in_valid) begin
      shr_115_imag <= shr_114_imag;
    end
    if (io_in_valid) begin
      shr_116_real <= shr_115_real;
    end
    if (io_in_valid) begin
      shr_116_imag <= shr_115_imag;
    end
    if (io_in_valid) begin
      shr_117_real <= shr_116_real;
    end
    if (io_in_valid) begin
      shr_117_imag <= shr_116_imag;
    end
    if (io_in_valid) begin
      shr_118_real <= shr_117_real;
    end
    if (io_in_valid) begin
      shr_118_imag <= shr_117_imag;
    end
    if (io_in_valid) begin
      shr_119_real <= shr_118_real;
    end
    if (io_in_valid) begin
      shr_119_imag <= shr_118_imag;
    end
    if (io_in_valid) begin
      shr_120_real <= shr_119_real;
    end
    if (io_in_valid) begin
      shr_120_imag <= shr_119_imag;
    end
    if (io_in_valid) begin
      shr_121_real <= shr_120_real;
    end
    if (io_in_valid) begin
      shr_121_imag <= shr_120_imag;
    end
    if (io_in_valid) begin
      shr_122_real <= shr_121_real;
    end
    if (io_in_valid) begin
      shr_122_imag <= shr_121_imag;
    end
    if (io_in_valid) begin
      shr_123_real <= shr_122_real;
    end
    if (io_in_valid) begin
      shr_123_imag <= shr_122_imag;
    end
    if (io_in_valid) begin
      shr_124_real <= shr_123_real;
    end
    if (io_in_valid) begin
      shr_124_imag <= shr_123_imag;
    end
    if (io_in_valid) begin
      shr_125_real <= shr_124_real;
    end
    if (io_in_valid) begin
      shr_125_imag <= shr_124_imag;
    end
    if (io_in_valid) begin
      shr_126_real <= shr_125_real;
    end
    if (io_in_valid) begin
      shr_126_imag <= shr_125_imag;
    end
    _T_4886_real <= sum_real;
    _T_4886_imag <= sum_imag;
    _T_4892_real <= _T_4886_real;
    _T_4892_imag <= _T_4886_imag;
    _T_4898_real <= _T_4892_real;
    _T_4898_imag <= _T_4892_imag;
  end
endmodule
module AutocorrSimple( // @[:@3147.2]
  input         clock, // @[:@3148.4]
  input         reset, // @[:@3149.4]
  input         io_in_valid, // @[:@3150.4]
  input  [11:0] io_in_bits_real, // @[:@3150.4]
  input  [11:0] io_in_bits_imag, // @[:@3150.4]
  output [11:0] io_out_bits_real, // @[:@3150.4]
  output [11:0] io_out_bits_imag, // @[:@3150.4]
  input  [7:0]  io_config_depthApart, // @[:@3150.4]
  input  [7:0]  io_config_depthOverlap // @[:@3150.4]
);
  wire  shr_clock; // @[Autocorr.scala 211:19:@3152.4]
  wire  shr_reset; // @[Autocorr.scala 211:19:@3152.4]
  wire  shr_io_depth_valid; // @[Autocorr.scala 211:19:@3152.4]
  wire [7:0] shr_io_depth_bits; // @[Autocorr.scala 211:19:@3152.4]
  wire  shr_io_in_valid; // @[Autocorr.scala 211:19:@3152.4]
  wire [11:0] shr_io_in_bits_real; // @[Autocorr.scala 211:19:@3152.4]
  wire [11:0] shr_io_in_bits_imag; // @[Autocorr.scala 211:19:@3152.4]
  wire  shr_io_out_valid; // @[Autocorr.scala 211:19:@3152.4]
  wire [11:0] shr_io_out_bits_real; // @[Autocorr.scala 211:19:@3152.4]
  wire [11:0] shr_io_out_bits_imag; // @[Autocorr.scala 211:19:@3152.4]
  reg [7:0] _T_24; // @[Autocorr.scala 214:57:@3156.4]
  reg [31:0] _RAND_0;
  reg  shr_out_valid; // @[Autocorr.scala 218:43:@3163.4]
  reg [31:0] _RAND_1;
  reg [11:0] shr_in_delay_real; // @[Autocorr.scala 219:43:@3165.4]
  reg [31:0] _RAND_2;
  reg [11:0] shr_in_delay_imag; // @[Autocorr.scala 219:43:@3165.4]
  reg [31:0] _RAND_3;
  wire  sum_clock; // @[Autocorr.scala 236:19:@3195.4]
  wire  sum_reset; // @[Autocorr.scala 236:19:@3195.4]
  wire  sum_io_depth_valid; // @[Autocorr.scala 236:19:@3195.4]
  wire [7:0] sum_io_depth_bits; // @[Autocorr.scala 236:19:@3195.4]
  wire  sum_io_in_valid; // @[Autocorr.scala 236:19:@3195.4]
  wire [11:0] sum_io_in_bits_real; // @[Autocorr.scala 236:19:@3195.4]
  wire [11:0] sum_io_in_bits_imag; // @[Autocorr.scala 236:19:@3195.4]
  wire [11:0] sum_io_out_bits_real; // @[Autocorr.scala 236:19:@3195.4]
  wire [11:0] sum_io_out_bits_imag; // @[Autocorr.scala 236:19:@3195.4]
  reg [7:0] _T_69; // @[Autocorr.scala 239:59:@3199.4]
  reg [31:0] _RAND_4;
  reg [23:0] _T_76_real; // @[Reg.scala 11:16:@3203.4]
  reg [31:0] _RAND_5;
  reg [23:0] _T_76_imag; // @[Reg.scala 11:16:@3203.4]
  reg [31:0] _RAND_6;
  reg [23:0] _T_82_real; // @[Reg.scala 11:16:@3208.4]
  reg [31:0] _RAND_7;
  reg [23:0] _T_82_imag; // @[Reg.scala 11:16:@3208.4]
  reg [31:0] _RAND_8;
  reg [23:0] _T_88_real; // @[Reg.scala 11:16:@3213.4]
  reg [31:0] _RAND_9;
  reg [23:0] _T_88_imag; // @[Reg.scala 11:16:@3213.4]
  reg [31:0] _RAND_10;
  reg  _T_91; // @[Reg.scala 19:20:@3220.4]
  reg [31:0] _RAND_11;
  reg  _T_93; // @[Reg.scala 19:20:@3224.4]
  reg [31:0] _RAND_12;
  reg  _T_95; // @[Reg.scala 19:20:@3228.4]
  reg [31:0] _RAND_13;
  wire  _T_25; // @[Autocorr.scala 214:46:@3158.4]
  wire [12:0] _T_33; // @[FixedPointTypeClass.scala 40:43:@3168.4]
  wire [11:0] _T_34; // @[FixedPointTypeClass.scala 40:43:@3169.4]
  wire [11:0] toMult_imag; // @[FixedPointTypeClass.scala 40:43:@3170.4]
  wire [11:0] toMult_real; // @[DspComplex.scala 30:22:@3171.4]
  wire [12:0] _T_43; // @[FixedPointTypeClass.scala 21:58:@3174.4]
  wire [11:0] _T_44; // @[FixedPointTypeClass.scala 21:58:@3175.4]
  wire [11:0] _T_45; // @[FixedPointTypeClass.scala 21:58:@3176.4]
  wire [12:0] _T_46; // @[FixedPointTypeClass.scala 21:58:@3177.4]
  wire [11:0] _T_47; // @[FixedPointTypeClass.scala 21:58:@3178.4]
  wire [11:0] _T_48; // @[FixedPointTypeClass.scala 21:58:@3179.4]
  wire [12:0] _T_49; // @[FixedPointTypeClass.scala 31:68:@3180.4]
  wire [11:0] _T_50; // @[FixedPointTypeClass.scala 31:68:@3181.4]
  wire [11:0] _T_51; // @[FixedPointTypeClass.scala 31:68:@3182.4]
  wire [23:0] _T_52; // @[FixedPointTypeClass.scala 43:59:@3183.4]
  wire [23:0] _T_53; // @[FixedPointTypeClass.scala 43:59:@3184.4]
  wire [23:0] _T_54; // @[FixedPointTypeClass.scala 43:59:@3185.4]
  wire [24:0] _T_55; // @[FixedPointTypeClass.scala 31:68:@3186.4]
  wire [23:0] _T_56; // @[FixedPointTypeClass.scala 31:68:@3187.4]
  wire [23:0] prod_real; // @[FixedPointTypeClass.scala 31:68:@3188.4]
  wire [24:0] _T_58; // @[FixedPointTypeClass.scala 21:58:@3189.4]
  wire [23:0] _T_59; // @[FixedPointTypeClass.scala 21:58:@3190.4]
  wire [23:0] prod_imag; // @[FixedPointTypeClass.scala 21:58:@3191.4]
  wire  _T_70; // @[Autocorr.scala 239:48:@3201.4]
  wire [23:0] _GEN_0; // @[Reg.scala 12:19:@3204.4]
  wire [23:0] _GEN_1; // @[Reg.scala 12:19:@3204.4]
  wire [23:0] _GEN_2; // @[Reg.scala 12:19:@3209.4]
  wire [23:0] _GEN_3; // @[Reg.scala 12:19:@3209.4]
  wire [23:0] _GEN_4; // @[Reg.scala 12:19:@3214.4]
  wire [23:0] _GEN_5; // @[Reg.scala 12:19:@3214.4]
  wire  _GEN_6; // @[Reg.scala 20:19:@3221.4]
  wire  _GEN_7; // @[Reg.scala 20:19:@3225.4]
  wire  _GEN_8; // @[Reg.scala 20:19:@3229.4]
  wire [13:0] _GEN_9;
  wire [11:0] _GEN_10;
  wire [13:0] _GEN_11;
  wire [11:0] _GEN_12;
  ShiftRegisterMem shr ( // @[Autocorr.scala 211:19:@3152.4]
    .clock(shr_clock),
    .reset(shr_reset),
    .io_depth_valid(shr_io_depth_valid),
    .io_depth_bits(shr_io_depth_bits),
    .io_in_valid(shr_io_in_valid),
    .io_in_bits_real(shr_io_in_bits_real),
    .io_in_bits_imag(shr_io_in_bits_imag),
    .io_out_valid(shr_io_out_valid),
    .io_out_bits_real(shr_io_out_bits_real),
    .io_out_bits_imag(shr_io_out_bits_imag)
  );
  OverlapSum sum ( // @[Autocorr.scala 236:19:@3195.4]
    .clock(sum_clock),
    .reset(sum_reset),
    .io_depth_valid(sum_io_depth_valid),
    .io_depth_bits(sum_io_depth_bits),
    .io_in_valid(sum_io_in_valid),
    .io_in_bits_real(sum_io_in_bits_real),
    .io_in_bits_imag(sum_io_in_bits_imag),
    .io_out_bits_real(sum_io_out_bits_real),
    .io_out_bits_imag(sum_io_out_bits_imag)
  );
  assign _T_25 = io_config_depthApart != _T_24; // @[Autocorr.scala 214:46:@3158.4]
  assign _T_33 = $signed(12'sh0) - $signed(shr_io_out_bits_imag); // @[FixedPointTypeClass.scala 40:43:@3168.4]
  assign _T_34 = _T_33[11:0]; // @[FixedPointTypeClass.scala 40:43:@3169.4]
  assign toMult_imag = $signed(_T_34); // @[FixedPointTypeClass.scala 40:43:@3170.4]
  assign toMult_real = shr_io_out_bits_real; // @[DspComplex.scala 30:22:@3171.4]
  assign _T_43 = $signed(toMult_real) + $signed(toMult_imag); // @[FixedPointTypeClass.scala 21:58:@3174.4]
  assign _T_44 = _T_43[11:0]; // @[FixedPointTypeClass.scala 21:58:@3175.4]
  assign _T_45 = $signed(_T_44); // @[FixedPointTypeClass.scala 21:58:@3176.4]
  assign _T_46 = $signed(shr_in_delay_real) + $signed(shr_in_delay_imag); // @[FixedPointTypeClass.scala 21:58:@3177.4]
  assign _T_47 = _T_46[11:0]; // @[FixedPointTypeClass.scala 21:58:@3178.4]
  assign _T_48 = $signed(_T_47); // @[FixedPointTypeClass.scala 21:58:@3179.4]
  assign _T_49 = $signed(shr_in_delay_imag) - $signed(shr_in_delay_real); // @[FixedPointTypeClass.scala 31:68:@3180.4]
  assign _T_50 = _T_49[11:0]; // @[FixedPointTypeClass.scala 31:68:@3181.4]
  assign _T_51 = $signed(_T_50); // @[FixedPointTypeClass.scala 31:68:@3182.4]
  assign _T_52 = $signed(shr_in_delay_real) * $signed(_T_45); // @[FixedPointTypeClass.scala 43:59:@3183.4]
  assign _T_53 = $signed(_T_48) * $signed(toMult_imag); // @[FixedPointTypeClass.scala 43:59:@3184.4]
  assign _T_54 = $signed(_T_51) * $signed(toMult_real); // @[FixedPointTypeClass.scala 43:59:@3185.4]
  assign _T_55 = $signed(_T_52) - $signed(_T_53); // @[FixedPointTypeClass.scala 31:68:@3186.4]
  assign _T_56 = _T_55[23:0]; // @[FixedPointTypeClass.scala 31:68:@3187.4]
  assign prod_real = $signed(_T_56); // @[FixedPointTypeClass.scala 31:68:@3188.4]
  assign _T_58 = $signed(_T_52) + $signed(_T_54); // @[FixedPointTypeClass.scala 21:58:@3189.4]
  assign _T_59 = _T_58[23:0]; // @[FixedPointTypeClass.scala 21:58:@3190.4]
  assign prod_imag = $signed(_T_59); // @[FixedPointTypeClass.scala 21:58:@3191.4]
  assign _T_70 = io_config_depthOverlap != _T_69; // @[Autocorr.scala 239:48:@3201.4]
  assign _GEN_0 = io_in_valid ? $signed(prod_imag) : $signed(_T_76_imag); // @[Reg.scala 12:19:@3204.4]
  assign _GEN_1 = io_in_valid ? $signed(prod_real) : $signed(_T_76_real); // @[Reg.scala 12:19:@3204.4]
  assign _GEN_2 = io_in_valid ? $signed(_T_76_imag) : $signed(_T_82_imag); // @[Reg.scala 12:19:@3209.4]
  assign _GEN_3 = io_in_valid ? $signed(_T_76_real) : $signed(_T_82_real); // @[Reg.scala 12:19:@3209.4]
  assign _GEN_4 = io_in_valid ? $signed(_T_82_imag) : $signed(_T_88_imag); // @[Reg.scala 12:19:@3214.4]
  assign _GEN_5 = io_in_valid ? $signed(_T_82_real) : $signed(_T_88_real); // @[Reg.scala 12:19:@3214.4]
  assign _GEN_6 = io_in_valid ? shr_out_valid : _T_91; // @[Reg.scala 20:19:@3221.4]
  assign _GEN_7 = io_in_valid ? _T_91 : _T_93; // @[Reg.scala 20:19:@3225.4]
  assign _GEN_8 = io_in_valid ? _T_93 : _T_95; // @[Reg.scala 20:19:@3229.4]
  assign io_out_bits_real = sum_io_out_bits_real;
  assign io_out_bits_imag = sum_io_out_bits_imag;
  assign shr_clock = clock;
  assign shr_reset = reset;
  assign shr_io_depth_valid = _T_25;
  assign shr_io_depth_bits = io_config_depthApart;
  assign shr_io_in_valid = io_in_valid;
  assign shr_io_in_bits_real = io_in_bits_real;
  assign shr_io_in_bits_imag = io_in_bits_imag;
  assign sum_clock = clock;
  assign sum_reset = reset;
  assign sum_io_depth_valid = _T_70;
  assign sum_io_depth_bits = io_config_depthOverlap;
  assign sum_io_in_valid = _T_95;
  assign _GEN_9 = _T_88_real[23:10];
  assign _GEN_10 = _GEN_9[11:0];
  assign sum_io_in_bits_real = $signed(_GEN_10);
  assign _GEN_11 = _T_88_imag[23:10];
  assign _GEN_12 = _GEN_11[11:0];
  assign sum_io_in_bits_imag = $signed(_GEN_12);
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_24 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  shr_out_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  shr_in_delay_real = _RAND_2[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  shr_in_delay_imag = _RAND_3[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_69 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_76_real = _RAND_5[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_76_imag = _RAND_6[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_82_real = _RAND_7[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_82_imag = _RAND_8[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_88_real = _RAND_9[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_88_imag = _RAND_10[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_91 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_93 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_95 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_24 <= io_config_depthApart;
    shr_out_valid <= shr_io_in_valid;
    shr_in_delay_real <= io_in_bits_real;
    shr_in_delay_imag <= io_in_bits_imag;
    _T_69 <= io_config_depthOverlap;
    if (io_in_valid) begin
      _T_76_real <= prod_real;
    end
    if (io_in_valid) begin
      _T_76_imag <= prod_imag;
    end
    if (io_in_valid) begin
      _T_82_real <= _T_76_real;
    end
    if (io_in_valid) begin
      _T_82_imag <= _T_76_imag;
    end
    if (io_in_valid) begin
      _T_88_real <= _T_82_real;
    end
    if (io_in_valid) begin
      _T_88_imag <= _T_82_imag;
    end
    if (reset) begin
      _T_91 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_91 <= shr_out_valid;
      end
    end
    if (reset) begin
      _T_93 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_93 <= _T_91;
      end
    end
    if (reset) begin
      _T_95 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_95 <= _T_93;
      end
    end
  end
endmodule
module STF64MatchedFilter( // @[:@3240.2]
  input         clock, // @[:@3241.4]
  input         io_in_valid, // @[:@3243.4]
  input  [11:0] io_in_bits_real, // @[:@3243.4]
  input  [11:0] io_in_bits_imag, // @[:@3243.4]
  output        io_out_valid, // @[:@3243.4]
  output [11:0] io_out_bits_real, // @[:@3243.4]
  output [11:0] io_out_bits_imag // @[:@3243.4]
);
  reg [11:0] regs_0_real; // @[FIR.scala 19:45:@4589.4]
  reg [31:0] _RAND_0;
  reg [11:0] regs_0_imag; // @[FIR.scala 19:45:@4589.4]
  reg [31:0] _RAND_1;
  reg [11:0] regs_1_real; // @[FIR.scala 19:45:@4590.4]
  reg [31:0] _RAND_2;
  reg [11:0] regs_1_imag; // @[FIR.scala 19:45:@4590.4]
  reg [31:0] _RAND_3;
  reg [11:0] regs_2_real; // @[FIR.scala 19:45:@4591.4]
  reg [31:0] _RAND_4;
  reg [11:0] regs_2_imag; // @[FIR.scala 19:45:@4591.4]
  reg [31:0] _RAND_5;
  reg [11:0] regs_3_real; // @[FIR.scala 19:45:@4592.4]
  reg [31:0] _RAND_6;
  reg [11:0] regs_3_imag; // @[FIR.scala 19:45:@4592.4]
  reg [31:0] _RAND_7;
  reg [11:0] regs_4_real; // @[FIR.scala 19:45:@4593.4]
  reg [31:0] _RAND_8;
  reg [11:0] regs_4_imag; // @[FIR.scala 19:45:@4593.4]
  reg [31:0] _RAND_9;
  reg [11:0] regs_5_real; // @[FIR.scala 19:45:@4594.4]
  reg [31:0] _RAND_10;
  reg [11:0] regs_5_imag; // @[FIR.scala 19:45:@4594.4]
  reg [31:0] _RAND_11;
  reg [11:0] regs_6_real; // @[FIR.scala 19:45:@4595.4]
  reg [31:0] _RAND_12;
  reg [11:0] regs_6_imag; // @[FIR.scala 19:45:@4595.4]
  reg [31:0] _RAND_13;
  reg [11:0] regs_7_real; // @[FIR.scala 19:45:@4596.4]
  reg [31:0] _RAND_14;
  reg [11:0] regs_7_imag; // @[FIR.scala 19:45:@4596.4]
  reg [31:0] _RAND_15;
  reg [11:0] regs_8_real; // @[FIR.scala 19:45:@4597.4]
  reg [31:0] _RAND_16;
  reg [11:0] regs_8_imag; // @[FIR.scala 19:45:@4597.4]
  reg [31:0] _RAND_17;
  reg [11:0] regs_9_real; // @[FIR.scala 19:45:@4598.4]
  reg [31:0] _RAND_18;
  reg [11:0] regs_9_imag; // @[FIR.scala 19:45:@4598.4]
  reg [31:0] _RAND_19;
  reg [11:0] regs_10_real; // @[FIR.scala 19:45:@4599.4]
  reg [31:0] _RAND_20;
  reg [11:0] regs_10_imag; // @[FIR.scala 19:45:@4599.4]
  reg [31:0] _RAND_21;
  reg [11:0] regs_11_real; // @[FIR.scala 19:45:@4600.4]
  reg [31:0] _RAND_22;
  reg [11:0] regs_11_imag; // @[FIR.scala 19:45:@4600.4]
  reg [31:0] _RAND_23;
  reg [11:0] regs_12_real; // @[FIR.scala 19:45:@4601.4]
  reg [31:0] _RAND_24;
  reg [11:0] regs_12_imag; // @[FIR.scala 19:45:@4601.4]
  reg [31:0] _RAND_25;
  reg [11:0] regs_13_real; // @[FIR.scala 19:45:@4602.4]
  reg [31:0] _RAND_26;
  reg [11:0] regs_13_imag; // @[FIR.scala 19:45:@4602.4]
  reg [31:0] _RAND_27;
  reg [11:0] regs_14_real; // @[FIR.scala 19:45:@4603.4]
  reg [31:0] _RAND_28;
  reg [11:0] regs_14_imag; // @[FIR.scala 19:45:@4603.4]
  reg [31:0] _RAND_29;
  reg [11:0] regs_15_real; // @[FIR.scala 19:45:@4604.4]
  reg [31:0] _RAND_30;
  reg [11:0] regs_15_imag; // @[FIR.scala 19:45:@4604.4]
  reg [31:0] _RAND_31;
  reg [11:0] regs_16_real; // @[FIR.scala 19:45:@4605.4]
  reg [31:0] _RAND_32;
  reg [11:0] regs_16_imag; // @[FIR.scala 19:45:@4605.4]
  reg [31:0] _RAND_33;
  reg [11:0] regs_17_real; // @[FIR.scala 19:45:@4606.4]
  reg [31:0] _RAND_34;
  reg [11:0] regs_17_imag; // @[FIR.scala 19:45:@4606.4]
  reg [31:0] _RAND_35;
  reg [11:0] regs_18_real; // @[FIR.scala 19:45:@4607.4]
  reg [31:0] _RAND_36;
  reg [11:0] regs_18_imag; // @[FIR.scala 19:45:@4607.4]
  reg [31:0] _RAND_37;
  reg [11:0] regs_19_real; // @[FIR.scala 19:45:@4608.4]
  reg [31:0] _RAND_38;
  reg [11:0] regs_19_imag; // @[FIR.scala 19:45:@4608.4]
  reg [31:0] _RAND_39;
  reg [11:0] regs_20_real; // @[FIR.scala 19:45:@4609.4]
  reg [31:0] _RAND_40;
  reg [11:0] regs_20_imag; // @[FIR.scala 19:45:@4609.4]
  reg [31:0] _RAND_41;
  reg [11:0] regs_21_real; // @[FIR.scala 19:45:@4610.4]
  reg [31:0] _RAND_42;
  reg [11:0] regs_21_imag; // @[FIR.scala 19:45:@4610.4]
  reg [31:0] _RAND_43;
  reg [11:0] regs_22_real; // @[FIR.scala 19:45:@4611.4]
  reg [31:0] _RAND_44;
  reg [11:0] regs_22_imag; // @[FIR.scala 19:45:@4611.4]
  reg [31:0] _RAND_45;
  reg [11:0] regs_23_real; // @[FIR.scala 19:45:@4612.4]
  reg [31:0] _RAND_46;
  reg [11:0] regs_23_imag; // @[FIR.scala 19:45:@4612.4]
  reg [31:0] _RAND_47;
  reg [11:0] regs_24_real; // @[FIR.scala 19:45:@4613.4]
  reg [31:0] _RAND_48;
  reg [11:0] regs_24_imag; // @[FIR.scala 19:45:@4613.4]
  reg [31:0] _RAND_49;
  reg [11:0] regs_25_real; // @[FIR.scala 19:45:@4614.4]
  reg [31:0] _RAND_50;
  reg [11:0] regs_25_imag; // @[FIR.scala 19:45:@4614.4]
  reg [31:0] _RAND_51;
  reg [11:0] regs_26_real; // @[FIR.scala 19:45:@4615.4]
  reg [31:0] _RAND_52;
  reg [11:0] regs_26_imag; // @[FIR.scala 19:45:@4615.4]
  reg [31:0] _RAND_53;
  reg [11:0] regs_27_real; // @[FIR.scala 19:45:@4616.4]
  reg [31:0] _RAND_54;
  reg [11:0] regs_27_imag; // @[FIR.scala 19:45:@4616.4]
  reg [31:0] _RAND_55;
  reg [11:0] regs_28_real; // @[FIR.scala 19:45:@4617.4]
  reg [31:0] _RAND_56;
  reg [11:0] regs_28_imag; // @[FIR.scala 19:45:@4617.4]
  reg [31:0] _RAND_57;
  reg [11:0] regs_29_real; // @[FIR.scala 19:45:@4618.4]
  reg [31:0] _RAND_58;
  reg [11:0] regs_29_imag; // @[FIR.scala 19:45:@4618.4]
  reg [31:0] _RAND_59;
  reg [11:0] regs_30_real; // @[FIR.scala 19:45:@4619.4]
  reg [31:0] _RAND_60;
  reg [11:0] regs_30_imag; // @[FIR.scala 19:45:@4619.4]
  reg [31:0] _RAND_61;
  reg [11:0] regs_31_real; // @[FIR.scala 19:45:@4620.4]
  reg [31:0] _RAND_62;
  reg [11:0] regs_31_imag; // @[FIR.scala 19:45:@4620.4]
  reg [31:0] _RAND_63;
  reg [11:0] regs_32_real; // @[FIR.scala 19:45:@4621.4]
  reg [31:0] _RAND_64;
  reg [11:0] regs_32_imag; // @[FIR.scala 19:45:@4621.4]
  reg [31:0] _RAND_65;
  reg [11:0] regs_33_real; // @[FIR.scala 19:45:@4622.4]
  reg [31:0] _RAND_66;
  reg [11:0] regs_33_imag; // @[FIR.scala 19:45:@4622.4]
  reg [31:0] _RAND_67;
  reg [11:0] regs_34_real; // @[FIR.scala 19:45:@4623.4]
  reg [31:0] _RAND_68;
  reg [11:0] regs_34_imag; // @[FIR.scala 19:45:@4623.4]
  reg [31:0] _RAND_69;
  reg [11:0] regs_35_real; // @[FIR.scala 19:45:@4624.4]
  reg [31:0] _RAND_70;
  reg [11:0] regs_35_imag; // @[FIR.scala 19:45:@4624.4]
  reg [31:0] _RAND_71;
  reg [11:0] regs_36_real; // @[FIR.scala 19:45:@4625.4]
  reg [31:0] _RAND_72;
  reg [11:0] regs_36_imag; // @[FIR.scala 19:45:@4625.4]
  reg [31:0] _RAND_73;
  reg [11:0] regs_37_real; // @[FIR.scala 19:45:@4626.4]
  reg [31:0] _RAND_74;
  reg [11:0] regs_37_imag; // @[FIR.scala 19:45:@4626.4]
  reg [31:0] _RAND_75;
  reg [11:0] regs_38_real; // @[FIR.scala 19:45:@4627.4]
  reg [31:0] _RAND_76;
  reg [11:0] regs_38_imag; // @[FIR.scala 19:45:@4627.4]
  reg [31:0] _RAND_77;
  reg [11:0] regs_39_real; // @[FIR.scala 19:45:@4628.4]
  reg [31:0] _RAND_78;
  reg [11:0] regs_39_imag; // @[FIR.scala 19:45:@4628.4]
  reg [31:0] _RAND_79;
  reg [11:0] regs_40_real; // @[FIR.scala 19:45:@4629.4]
  reg [31:0] _RAND_80;
  reg [11:0] regs_40_imag; // @[FIR.scala 19:45:@4629.4]
  reg [31:0] _RAND_81;
  reg [11:0] regs_41_real; // @[FIR.scala 19:45:@4630.4]
  reg [31:0] _RAND_82;
  reg [11:0] regs_41_imag; // @[FIR.scala 19:45:@4630.4]
  reg [31:0] _RAND_83;
  reg [11:0] regs_42_real; // @[FIR.scala 19:45:@4631.4]
  reg [31:0] _RAND_84;
  reg [11:0] regs_42_imag; // @[FIR.scala 19:45:@4631.4]
  reg [31:0] _RAND_85;
  reg [11:0] regs_43_real; // @[FIR.scala 19:45:@4632.4]
  reg [31:0] _RAND_86;
  reg [11:0] regs_43_imag; // @[FIR.scala 19:45:@4632.4]
  reg [31:0] _RAND_87;
  reg [11:0] regs_44_real; // @[FIR.scala 19:45:@4633.4]
  reg [31:0] _RAND_88;
  reg [11:0] regs_44_imag; // @[FIR.scala 19:45:@4633.4]
  reg [31:0] _RAND_89;
  reg [11:0] regs_45_real; // @[FIR.scala 19:45:@4634.4]
  reg [31:0] _RAND_90;
  reg [11:0] regs_45_imag; // @[FIR.scala 19:45:@4634.4]
  reg [31:0] _RAND_91;
  reg [11:0] regs_46_real; // @[FIR.scala 19:45:@4635.4]
  reg [31:0] _RAND_92;
  reg [11:0] regs_46_imag; // @[FIR.scala 19:45:@4635.4]
  reg [31:0] _RAND_93;
  reg [11:0] regs_47_real; // @[FIR.scala 19:45:@4636.4]
  reg [31:0] _RAND_94;
  reg [11:0] regs_47_imag; // @[FIR.scala 19:45:@4636.4]
  reg [31:0] _RAND_95;
  reg [11:0] regs_48_real; // @[FIR.scala 19:45:@4637.4]
  reg [31:0] _RAND_96;
  reg [11:0] regs_48_imag; // @[FIR.scala 19:45:@4637.4]
  reg [31:0] _RAND_97;
  reg [11:0] regs_49_real; // @[FIR.scala 19:45:@4638.4]
  reg [31:0] _RAND_98;
  reg [11:0] regs_49_imag; // @[FIR.scala 19:45:@4638.4]
  reg [31:0] _RAND_99;
  reg [11:0] regs_50_real; // @[FIR.scala 19:45:@4639.4]
  reg [31:0] _RAND_100;
  reg [11:0] regs_50_imag; // @[FIR.scala 19:45:@4639.4]
  reg [31:0] _RAND_101;
  reg [11:0] regs_51_real; // @[FIR.scala 19:45:@4640.4]
  reg [31:0] _RAND_102;
  reg [11:0] regs_51_imag; // @[FIR.scala 19:45:@4640.4]
  reg [31:0] _RAND_103;
  reg [11:0] regs_52_real; // @[FIR.scala 19:45:@4641.4]
  reg [31:0] _RAND_104;
  reg [11:0] regs_52_imag; // @[FIR.scala 19:45:@4641.4]
  reg [31:0] _RAND_105;
  reg [11:0] regs_53_real; // @[FIR.scala 19:45:@4642.4]
  reg [31:0] _RAND_106;
  reg [11:0] regs_53_imag; // @[FIR.scala 19:45:@4642.4]
  reg [31:0] _RAND_107;
  reg [11:0] regs_54_real; // @[FIR.scala 19:45:@4643.4]
  reg [31:0] _RAND_108;
  reg [11:0] regs_54_imag; // @[FIR.scala 19:45:@4643.4]
  reg [31:0] _RAND_109;
  reg [11:0] regs_55_real; // @[FIR.scala 19:45:@4644.4]
  reg [31:0] _RAND_110;
  reg [11:0] regs_55_imag; // @[FIR.scala 19:45:@4644.4]
  reg [31:0] _RAND_111;
  reg [11:0] regs_56_real; // @[FIR.scala 19:45:@4645.4]
  reg [31:0] _RAND_112;
  reg [11:0] regs_56_imag; // @[FIR.scala 19:45:@4645.4]
  reg [31:0] _RAND_113;
  reg [11:0] regs_57_real; // @[FIR.scala 19:45:@4646.4]
  reg [31:0] _RAND_114;
  reg [11:0] regs_57_imag; // @[FIR.scala 19:45:@4646.4]
  reg [31:0] _RAND_115;
  reg [11:0] regs_58_real; // @[FIR.scala 19:45:@4647.4]
  reg [31:0] _RAND_116;
  reg [11:0] regs_58_imag; // @[FIR.scala 19:45:@4647.4]
  reg [31:0] _RAND_117;
  reg [11:0] regs_59_real; // @[FIR.scala 19:45:@4648.4]
  reg [31:0] _RAND_118;
  reg [11:0] regs_59_imag; // @[FIR.scala 19:45:@4648.4]
  reg [31:0] _RAND_119;
  reg [11:0] regs_60_real; // @[FIR.scala 19:45:@4649.4]
  reg [31:0] _RAND_120;
  reg [11:0] regs_60_imag; // @[FIR.scala 19:45:@4649.4]
  reg [31:0] _RAND_121;
  reg [11:0] regs_61_real; // @[FIR.scala 19:45:@4650.4]
  reg [31:0] _RAND_122;
  reg [11:0] regs_61_imag; // @[FIR.scala 19:45:@4650.4]
  reg [31:0] _RAND_123;
  reg [11:0] regs_62_real; // @[FIR.scala 19:45:@4651.4]
  reg [31:0] _RAND_124;
  reg [11:0] regs_62_imag; // @[FIR.scala 19:45:@4651.4]
  reg [31:0] _RAND_125;
  wire [12:0] _T_34; // @[FixedPointTypeClass.scala 21:58:@3245.4]
  wire [11:0] _T_35; // @[FixedPointTypeClass.scala 21:58:@3246.4]
  wire [11:0] _T_36; // @[FixedPointTypeClass.scala 21:58:@3247.4]
  wire [9:0] _T_37; // @[FixedPointTypeClass.scala 21:58:@3248.4]
  wire [8:0] _T_38; // @[FixedPointTypeClass.scala 21:58:@3249.4]
  wire [8:0] _T_39; // @[FixedPointTypeClass.scala 21:58:@3250.4]
  wire [9:0] _T_40; // @[FixedPointTypeClass.scala 31:68:@3251.4]
  wire [8:0] _T_41; // @[FixedPointTypeClass.scala 31:68:@3252.4]
  wire [8:0] _T_42; // @[FixedPointTypeClass.scala 31:68:@3253.4]
  wire [14:0] _T_43; // @[FixedPointTypeClass.scala 43:59:@3254.4]
  wire [11:0] _GEN_126; // @[FixedPointTypeClass.scala 43:59:@3255.4]
  wire [20:0] _T_44; // @[FixedPointTypeClass.scala 43:59:@3255.4]
  wire [11:0] _GEN_127; // @[FixedPointTypeClass.scala 43:59:@3256.4]
  wire [20:0] _T_45; // @[FixedPointTypeClass.scala 43:59:@3256.4]
  wire [20:0] _GEN_128; // @[FixedPointTypeClass.scala 31:68:@3257.4]
  wire [21:0] _T_46; // @[FixedPointTypeClass.scala 31:68:@3257.4]
  wire [20:0] _T_47; // @[FixedPointTypeClass.scala 31:68:@3258.4]
  wire [20:0] prods_0_real; // @[FixedPointTypeClass.scala 31:68:@3259.4]
  wire [21:0] _T_49; // @[FixedPointTypeClass.scala 21:58:@3260.4]
  wire [20:0] _T_50; // @[FixedPointTypeClass.scala 21:58:@3261.4]
  wire [20:0] prods_0_imag; // @[FixedPointTypeClass.scala 21:58:@3262.4]
  wire [8:0] _T_62; // @[FixedPointTypeClass.scala 21:58:@3269.4]
  wire [7:0] _T_63; // @[FixedPointTypeClass.scala 21:58:@3270.4]
  wire [7:0] _T_64; // @[FixedPointTypeClass.scala 21:58:@3271.4]
  wire [8:0] _T_65; // @[FixedPointTypeClass.scala 31:68:@3272.4]
  wire [7:0] _T_66; // @[FixedPointTypeClass.scala 31:68:@3273.4]
  wire [7:0] _T_67; // @[FixedPointTypeClass.scala 31:68:@3274.4]
  wire [19:0] _T_68; // @[FixedPointTypeClass.scala 43:59:@3275.4]
  wire [11:0] _GEN_130; // @[FixedPointTypeClass.scala 43:59:@3276.4]
  wire [19:0] _T_69; // @[FixedPointTypeClass.scala 43:59:@3276.4]
  wire [11:0] _GEN_131; // @[FixedPointTypeClass.scala 43:59:@3277.4]
  wire [19:0] _T_70; // @[FixedPointTypeClass.scala 43:59:@3277.4]
  wire [20:0] _T_71; // @[FixedPointTypeClass.scala 31:68:@3278.4]
  wire [19:0] _T_72; // @[FixedPointTypeClass.scala 31:68:@3279.4]
  wire [19:0] prods_1_real; // @[FixedPointTypeClass.scala 31:68:@3280.4]
  wire [20:0] _T_74; // @[FixedPointTypeClass.scala 21:58:@3281.4]
  wire [19:0] _T_75; // @[FixedPointTypeClass.scala 21:58:@3282.4]
  wire [19:0] prods_1_imag; // @[FixedPointTypeClass.scala 21:58:@3283.4]
  wire [9:0] _T_87; // @[FixedPointTypeClass.scala 21:58:@3290.4]
  wire [8:0] _T_88; // @[FixedPointTypeClass.scala 21:58:@3291.4]
  wire [8:0] _T_89; // @[FixedPointTypeClass.scala 21:58:@3292.4]
  wire [9:0] _T_90; // @[FixedPointTypeClass.scala 31:68:@3293.4]
  wire [8:0] _T_91; // @[FixedPointTypeClass.scala 31:68:@3294.4]
  wire [8:0] _T_92; // @[FixedPointTypeClass.scala 31:68:@3295.4]
  wire [16:0] _T_93; // @[FixedPointTypeClass.scala 43:59:@3296.4]
  wire [11:0] _GEN_132; // @[FixedPointTypeClass.scala 43:59:@3297.4]
  wire [20:0] _T_94; // @[FixedPointTypeClass.scala 43:59:@3297.4]
  wire [11:0] _GEN_133; // @[FixedPointTypeClass.scala 43:59:@3298.4]
  wire [20:0] _T_95; // @[FixedPointTypeClass.scala 43:59:@3298.4]
  wire [20:0] _GEN_134; // @[FixedPointTypeClass.scala 31:68:@3299.4]
  wire [21:0] _T_96; // @[FixedPointTypeClass.scala 31:68:@3299.4]
  wire [20:0] _T_97; // @[FixedPointTypeClass.scala 31:68:@3300.4]
  wire [20:0] prods_2_real; // @[FixedPointTypeClass.scala 31:68:@3301.4]
  wire [21:0] _T_99; // @[FixedPointTypeClass.scala 21:58:@3302.4]
  wire [20:0] _T_100; // @[FixedPointTypeClass.scala 21:58:@3303.4]
  wire [20:0] prods_2_imag; // @[FixedPointTypeClass.scala 21:58:@3304.4]
  wire [8:0] _T_112; // @[FixedPointTypeClass.scala 21:58:@3311.4]
  wire [7:0] _T_113; // @[FixedPointTypeClass.scala 21:58:@3312.4]
  wire [7:0] _T_114; // @[FixedPointTypeClass.scala 21:58:@3313.4]
  wire [8:0] _T_115; // @[FixedPointTypeClass.scala 31:68:@3314.4]
  wire [7:0] _T_116; // @[FixedPointTypeClass.scala 31:68:@3315.4]
  wire [7:0] _T_117; // @[FixedPointTypeClass.scala 31:68:@3316.4]
  wire [12:0] _T_118; // @[FixedPointTypeClass.scala 43:59:@3317.4]
  wire [11:0] _GEN_136; // @[FixedPointTypeClass.scala 43:59:@3318.4]
  wire [19:0] _T_119; // @[FixedPointTypeClass.scala 43:59:@3318.4]
  wire [11:0] _GEN_137; // @[FixedPointTypeClass.scala 43:59:@3319.4]
  wire [19:0] _T_120; // @[FixedPointTypeClass.scala 43:59:@3319.4]
  wire [19:0] _GEN_138; // @[FixedPointTypeClass.scala 31:68:@3320.4]
  wire [20:0] _T_121; // @[FixedPointTypeClass.scala 31:68:@3320.4]
  wire [19:0] _T_122; // @[FixedPointTypeClass.scala 31:68:@3321.4]
  wire [19:0] prods_3_real; // @[FixedPointTypeClass.scala 31:68:@3322.4]
  wire [20:0] _T_124; // @[FixedPointTypeClass.scala 21:58:@3323.4]
  wire [19:0] _T_125; // @[FixedPointTypeClass.scala 21:58:@3324.4]
  wire [19:0] prods_3_imag; // @[FixedPointTypeClass.scala 21:58:@3325.4]
  wire [7:0] _T_212; // @[FixedPointTypeClass.scala 21:58:@3395.4]
  wire [6:0] _T_213; // @[FixedPointTypeClass.scala 21:58:@3396.4]
  wire [6:0] _T_214; // @[FixedPointTypeClass.scala 21:58:@3397.4]
  wire [7:0] _T_215; // @[FixedPointTypeClass.scala 31:68:@3398.4]
  wire [6:0] _T_216; // @[FixedPointTypeClass.scala 31:68:@3399.4]
  wire [6:0] _T_217; // @[FixedPointTypeClass.scala 31:68:@3400.4]
  wire [18:0] _T_218; // @[FixedPointTypeClass.scala 43:59:@3401.4]
  wire [11:0] _GEN_150; // @[FixedPointTypeClass.scala 43:59:@3402.4]
  wire [18:0] _T_219; // @[FixedPointTypeClass.scala 43:59:@3402.4]
  wire [11:0] _GEN_151; // @[FixedPointTypeClass.scala 43:59:@3403.4]
  wire [18:0] _T_220; // @[FixedPointTypeClass.scala 43:59:@3403.4]
  wire [19:0] _T_221; // @[FixedPointTypeClass.scala 31:68:@3404.4]
  wire [18:0] _T_222; // @[FixedPointTypeClass.scala 31:68:@3405.4]
  wire [18:0] prods_7_real; // @[FixedPointTypeClass.scala 31:68:@3406.4]
  wire [19:0] _T_224; // @[FixedPointTypeClass.scala 21:58:@3407.4]
  wire [18:0] _T_225; // @[FixedPointTypeClass.scala 21:58:@3408.4]
  wire [18:0] prods_7_imag; // @[FixedPointTypeClass.scala 21:58:@3409.4]
  wire [9:0] _T_237; // @[FixedPointTypeClass.scala 21:58:@3416.4]
  wire [8:0] _T_238; // @[FixedPointTypeClass.scala 21:58:@3417.4]
  wire [8:0] _T_239; // @[FixedPointTypeClass.scala 21:58:@3418.4]
  wire [9:0] _T_240; // @[FixedPointTypeClass.scala 31:68:@3419.4]
  wire [8:0] _T_241; // @[FixedPointTypeClass.scala 31:68:@3420.4]
  wire [8:0] _T_242; // @[FixedPointTypeClass.scala 31:68:@3421.4]
  wire [20:0] _T_243; // @[FixedPointTypeClass.scala 43:59:@3422.4]
  wire [11:0] _GEN_152; // @[FixedPointTypeClass.scala 43:59:@3423.4]
  wire [20:0] _T_244; // @[FixedPointTypeClass.scala 43:59:@3423.4]
  wire [11:0] _GEN_153; // @[FixedPointTypeClass.scala 43:59:@3424.4]
  wire [20:0] _T_245; // @[FixedPointTypeClass.scala 43:59:@3424.4]
  wire [21:0] _T_246; // @[FixedPointTypeClass.scala 31:68:@3425.4]
  wire [20:0] _T_247; // @[FixedPointTypeClass.scala 31:68:@3426.4]
  wire [20:0] prods_8_real; // @[FixedPointTypeClass.scala 31:68:@3427.4]
  wire [21:0] _T_249; // @[FixedPointTypeClass.scala 21:58:@3428.4]
  wire [20:0] _T_250; // @[FixedPointTypeClass.scala 21:58:@3429.4]
  wire [20:0] prods_8_imag; // @[FixedPointTypeClass.scala 21:58:@3430.4]
  wire [8:0] _T_262; // @[FixedPointTypeClass.scala 21:58:@3437.4]
  wire [7:0] _T_263; // @[FixedPointTypeClass.scala 21:58:@3438.4]
  wire [7:0] _T_264; // @[FixedPointTypeClass.scala 21:58:@3439.4]
  wire [8:0] _T_265; // @[FixedPointTypeClass.scala 31:68:@3440.4]
  wire [7:0] _T_266; // @[FixedPointTypeClass.scala 31:68:@3441.4]
  wire [7:0] _T_267; // @[FixedPointTypeClass.scala 31:68:@3442.4]
  wire [16:0] _T_268; // @[FixedPointTypeClass.scala 43:59:@3443.4]
  wire [11:0] _GEN_154; // @[FixedPointTypeClass.scala 43:59:@3444.4]
  wire [19:0] _T_269; // @[FixedPointTypeClass.scala 43:59:@3444.4]
  wire [11:0] _GEN_155; // @[FixedPointTypeClass.scala 43:59:@3445.4]
  wire [19:0] _T_270; // @[FixedPointTypeClass.scala 43:59:@3445.4]
  wire [19:0] _GEN_156; // @[FixedPointTypeClass.scala 31:68:@3446.4]
  wire [20:0] _T_271; // @[FixedPointTypeClass.scala 31:68:@3446.4]
  wire [19:0] _T_272; // @[FixedPointTypeClass.scala 31:68:@3447.4]
  wire [19:0] prods_9_real; // @[FixedPointTypeClass.scala 31:68:@3448.4]
  wire [20:0] _T_274; // @[FixedPointTypeClass.scala 21:58:@3449.4]
  wire [19:0] _T_275; // @[FixedPointTypeClass.scala 21:58:@3450.4]
  wire [19:0] prods_9_imag; // @[FixedPointTypeClass.scala 21:58:@3451.4]
  wire [9:0] _T_287; // @[FixedPointTypeClass.scala 21:58:@3458.4]
  wire [8:0] _T_288; // @[FixedPointTypeClass.scala 21:58:@3459.4]
  wire [8:0] _T_289; // @[FixedPointTypeClass.scala 21:58:@3460.4]
  wire [9:0] _T_290; // @[FixedPointTypeClass.scala 31:68:@3461.4]
  wire [8:0] _T_291; // @[FixedPointTypeClass.scala 31:68:@3462.4]
  wire [8:0] _T_292; // @[FixedPointTypeClass.scala 31:68:@3463.4]
  wire [20:0] _T_293; // @[FixedPointTypeClass.scala 43:59:@3464.4]
  wire [11:0] _GEN_158; // @[FixedPointTypeClass.scala 43:59:@3465.4]
  wire [20:0] _T_294; // @[FixedPointTypeClass.scala 43:59:@3465.4]
  wire [11:0] _GEN_159; // @[FixedPointTypeClass.scala 43:59:@3466.4]
  wire [20:0] _T_295; // @[FixedPointTypeClass.scala 43:59:@3466.4]
  wire [21:0] _T_296; // @[FixedPointTypeClass.scala 31:68:@3467.4]
  wire [20:0] _T_297; // @[FixedPointTypeClass.scala 31:68:@3468.4]
  wire [20:0] prods_10_real; // @[FixedPointTypeClass.scala 31:68:@3469.4]
  wire [21:0] _T_299; // @[FixedPointTypeClass.scala 21:58:@3470.4]
  wire [20:0] _T_300; // @[FixedPointTypeClass.scala 21:58:@3471.4]
  wire [20:0] prods_10_imag; // @[FixedPointTypeClass.scala 21:58:@3472.4]
  wire [8:0] _T_312; // @[FixedPointTypeClass.scala 21:58:@3479.4]
  wire [7:0] _T_313; // @[FixedPointTypeClass.scala 21:58:@3480.4]
  wire [7:0] _T_314; // @[FixedPointTypeClass.scala 21:58:@3481.4]
  wire [8:0] _T_315; // @[FixedPointTypeClass.scala 31:68:@3482.4]
  wire [7:0] _T_316; // @[FixedPointTypeClass.scala 31:68:@3483.4]
  wire [7:0] _T_317; // @[FixedPointTypeClass.scala 31:68:@3484.4]
  wire [19:0] _T_318; // @[FixedPointTypeClass.scala 43:59:@3485.4]
  wire [11:0] _GEN_160; // @[FixedPointTypeClass.scala 43:59:@3486.4]
  wire [19:0] _T_319; // @[FixedPointTypeClass.scala 43:59:@3486.4]
  wire [11:0] _GEN_161; // @[FixedPointTypeClass.scala 43:59:@3487.4]
  wire [19:0] _T_320; // @[FixedPointTypeClass.scala 43:59:@3487.4]
  wire [20:0] _T_321; // @[FixedPointTypeClass.scala 31:68:@3488.4]
  wire [19:0] _T_322; // @[FixedPointTypeClass.scala 31:68:@3489.4]
  wire [19:0] prods_11_real; // @[FixedPointTypeClass.scala 31:68:@3490.4]
  wire [20:0] _T_324; // @[FixedPointTypeClass.scala 21:58:@3491.4]
  wire [19:0] _T_325; // @[FixedPointTypeClass.scala 21:58:@3492.4]
  wire [19:0] prods_11_imag; // @[FixedPointTypeClass.scala 21:58:@3493.4]
  wire [21:0] _GEN_310; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  wire [21:0] _GEN_311; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  wire [21:0] _GEN_312; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  wire [22:0] _T_1760; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  wire [21:0] _T_1761; // @[FixedPointTypeClass.scala 21:58:@4654.6]
  wire [21:0] _T_1762; // @[FixedPointTypeClass.scala 21:58:@4655.6]
  wire [21:0] _GEN_313; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  wire [21:0] _GEN_314; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  wire [21:0] _GEN_315; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  wire [22:0] _T_1763; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  wire [21:0] _T_1764; // @[FixedPointTypeClass.scala 21:58:@4657.6]
  wire [21:0] _T_1765; // @[FixedPointTypeClass.scala 21:58:@4658.6]
  wire [21:0] _GEN_316; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  wire [21:0] _GEN_317; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  wire [21:0] _GEN_318; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  wire [22:0] _T_1774; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  wire [21:0] _T_1775; // @[FixedPointTypeClass.scala 21:58:@4665.6]
  wire [21:0] _T_1776; // @[FixedPointTypeClass.scala 21:58:@4666.6]
  wire [21:0] _GEN_319; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  wire [21:0] _GEN_320; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  wire [21:0] _GEN_321; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  wire [22:0] _T_1777; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  wire [21:0] _T_1778; // @[FixedPointTypeClass.scala 21:58:@4668.6]
  wire [21:0] _T_1779; // @[FixedPointTypeClass.scala 21:58:@4669.6]
  wire [21:0] _GEN_322; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  wire [21:0] _GEN_323; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  wire [21:0] _GEN_324; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  wire [22:0] _T_1788; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  wire [21:0] _T_1789; // @[FixedPointTypeClass.scala 21:58:@4676.6]
  wire [21:0] _T_1790; // @[FixedPointTypeClass.scala 21:58:@4677.6]
  wire [21:0] _GEN_325; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  wire [21:0] _GEN_326; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  wire [21:0] _GEN_327; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  wire [22:0] _T_1791; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  wire [21:0] _T_1792; // @[FixedPointTypeClass.scala 21:58:@4679.6]
  wire [21:0] _T_1793; // @[FixedPointTypeClass.scala 21:58:@4680.6]
  wire [21:0] _GEN_328; // @[FixedPointTypeClass.scala 21:58:@4686.6]
  wire [21:0] _GEN_330; // @[FixedPointTypeClass.scala 21:58:@4686.6]
  wire [22:0] _T_1802; // @[FixedPointTypeClass.scala 21:58:@4686.6]
  wire [21:0] _T_1803; // @[FixedPointTypeClass.scala 21:58:@4687.6]
  wire [21:0] _T_1804; // @[FixedPointTypeClass.scala 21:58:@4688.6]
  wire [21:0] _GEN_331; // @[FixedPointTypeClass.scala 21:58:@4689.6]
  wire [21:0] _GEN_333; // @[FixedPointTypeClass.scala 21:58:@4689.6]
  wire [22:0] _T_1805; // @[FixedPointTypeClass.scala 21:58:@4689.6]
  wire [21:0] _T_1806; // @[FixedPointTypeClass.scala 21:58:@4690.6]
  wire [21:0] _T_1807; // @[FixedPointTypeClass.scala 21:58:@4691.6]
  wire [21:0] _GEN_334; // @[FixedPointTypeClass.scala 21:58:@4697.6]
  wire [21:0] _GEN_336; // @[FixedPointTypeClass.scala 21:58:@4697.6]
  wire [22:0] _T_1816; // @[FixedPointTypeClass.scala 21:58:@4697.6]
  wire [21:0] _T_1817; // @[FixedPointTypeClass.scala 21:58:@4698.6]
  wire [21:0] _T_1818; // @[FixedPointTypeClass.scala 21:58:@4699.6]
  wire [21:0] _GEN_337; // @[FixedPointTypeClass.scala 21:58:@4700.6]
  wire [21:0] _GEN_339; // @[FixedPointTypeClass.scala 21:58:@4700.6]
  wire [22:0] _T_1819; // @[FixedPointTypeClass.scala 21:58:@4700.6]
  wire [21:0] _T_1820; // @[FixedPointTypeClass.scala 21:58:@4701.6]
  wire [21:0] _T_1821; // @[FixedPointTypeClass.scala 21:58:@4702.6]
  wire [21:0] _GEN_340; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  wire [21:0] _GEN_341; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  wire [21:0] _GEN_342; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  wire [22:0] _T_1830; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  wire [21:0] _T_1831; // @[FixedPointTypeClass.scala 21:58:@4709.6]
  wire [21:0] _T_1832; // @[FixedPointTypeClass.scala 21:58:@4710.6]
  wire [21:0] _GEN_343; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  wire [21:0] _GEN_344; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  wire [21:0] _GEN_345; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  wire [22:0] _T_1833; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  wire [21:0] _T_1834; // @[FixedPointTypeClass.scala 21:58:@4712.6]
  wire [21:0] _T_1835; // @[FixedPointTypeClass.scala 21:58:@4713.6]
  wire [21:0] _GEN_346; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  wire [21:0] _GEN_347; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  wire [21:0] _GEN_348; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  wire [22:0] _T_1844; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  wire [21:0] _T_1845; // @[FixedPointTypeClass.scala 21:58:@4720.6]
  wire [21:0] _T_1846; // @[FixedPointTypeClass.scala 21:58:@4721.6]
  wire [21:0] _GEN_349; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  wire [21:0] _GEN_350; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  wire [21:0] _GEN_351; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  wire [22:0] _T_1847; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  wire [21:0] _T_1848; // @[FixedPointTypeClass.scala 21:58:@4723.6]
  wire [21:0] _T_1849; // @[FixedPointTypeClass.scala 21:58:@4724.6]
  wire [21:0] _GEN_352; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  wire [21:0] _GEN_353; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  wire [21:0] _GEN_354; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  wire [22:0] _T_1858; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  wire [21:0] _T_1859; // @[FixedPointTypeClass.scala 21:58:@4731.6]
  wire [21:0] _T_1860; // @[FixedPointTypeClass.scala 21:58:@4732.6]
  wire [21:0] _GEN_355; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  wire [21:0] _GEN_356; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  wire [21:0] _GEN_357; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  wire [22:0] _T_1861; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  wire [21:0] _T_1862; // @[FixedPointTypeClass.scala 21:58:@4734.6]
  wire [21:0] _T_1863; // @[FixedPointTypeClass.scala 21:58:@4735.6]
  wire [21:0] _GEN_358; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  wire [21:0] _GEN_359; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  wire [21:0] _GEN_360; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  wire [22:0] _T_1872; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  wire [21:0] _T_1873; // @[FixedPointTypeClass.scala 21:58:@4742.6]
  wire [21:0] _T_1874; // @[FixedPointTypeClass.scala 21:58:@4743.6]
  wire [21:0] _GEN_361; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  wire [21:0] _GEN_362; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  wire [21:0] _GEN_363; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  wire [22:0] _T_1875; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  wire [21:0] _T_1876; // @[FixedPointTypeClass.scala 21:58:@4745.6]
  wire [21:0] _T_1877; // @[FixedPointTypeClass.scala 21:58:@4746.6]
  wire [21:0] _GEN_364; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  wire [21:0] _GEN_365; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  wire [21:0] _GEN_366; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  wire [22:0] _T_1886; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  wire [21:0] _T_1887; // @[FixedPointTypeClass.scala 21:58:@4753.6]
  wire [21:0] _T_1888; // @[FixedPointTypeClass.scala 21:58:@4754.6]
  wire [21:0] _GEN_367; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  wire [21:0] _GEN_368; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  wire [21:0] _GEN_369; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  wire [22:0] _T_1889; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  wire [21:0] _T_1890; // @[FixedPointTypeClass.scala 21:58:@4756.6]
  wire [21:0] _T_1891; // @[FixedPointTypeClass.scala 21:58:@4757.6]
  wire [21:0] _GEN_370; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  wire [21:0] _GEN_371; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  wire [21:0] _GEN_372; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  wire [22:0] _T_1900; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  wire [21:0] _T_1901; // @[FixedPointTypeClass.scala 21:58:@4764.6]
  wire [21:0] _T_1902; // @[FixedPointTypeClass.scala 21:58:@4765.6]
  wire [21:0] _GEN_373; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  wire [21:0] _GEN_374; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  wire [21:0] _GEN_375; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  wire [22:0] _T_1903; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  wire [21:0] _T_1904; // @[FixedPointTypeClass.scala 21:58:@4767.6]
  wire [21:0] _T_1905; // @[FixedPointTypeClass.scala 21:58:@4768.6]
  wire [21:0] _GEN_376; // @[FixedPointTypeClass.scala 21:58:@4774.6]
  wire [21:0] _GEN_378; // @[FixedPointTypeClass.scala 21:58:@4774.6]
  wire [22:0] _T_1914; // @[FixedPointTypeClass.scala 21:58:@4774.6]
  wire [21:0] _T_1915; // @[FixedPointTypeClass.scala 21:58:@4775.6]
  wire [21:0] _T_1916; // @[FixedPointTypeClass.scala 21:58:@4776.6]
  wire [21:0] _GEN_379; // @[FixedPointTypeClass.scala 21:58:@4777.6]
  wire [21:0] _GEN_381; // @[FixedPointTypeClass.scala 21:58:@4777.6]
  wire [22:0] _T_1917; // @[FixedPointTypeClass.scala 21:58:@4777.6]
  wire [21:0] _T_1918; // @[FixedPointTypeClass.scala 21:58:@4778.6]
  wire [21:0] _T_1919; // @[FixedPointTypeClass.scala 21:58:@4779.6]
  wire [21:0] _GEN_382; // @[FixedPointTypeClass.scala 21:58:@4785.6]
  wire [21:0] _GEN_384; // @[FixedPointTypeClass.scala 21:58:@4785.6]
  wire [22:0] _T_1928; // @[FixedPointTypeClass.scala 21:58:@4785.6]
  wire [21:0] _T_1929; // @[FixedPointTypeClass.scala 21:58:@4786.6]
  wire [21:0] _T_1930; // @[FixedPointTypeClass.scala 21:58:@4787.6]
  wire [21:0] _GEN_385; // @[FixedPointTypeClass.scala 21:58:@4788.6]
  wire [21:0] _GEN_387; // @[FixedPointTypeClass.scala 21:58:@4788.6]
  wire [22:0] _T_1931; // @[FixedPointTypeClass.scala 21:58:@4788.6]
  wire [21:0] _T_1932; // @[FixedPointTypeClass.scala 21:58:@4789.6]
  wire [21:0] _T_1933; // @[FixedPointTypeClass.scala 21:58:@4790.6]
  wire [21:0] _GEN_388; // @[FixedPointTypeClass.scala 21:58:@4796.6]
  wire [21:0] _GEN_390; // @[FixedPointTypeClass.scala 21:58:@4796.6]
  wire [22:0] _T_1942; // @[FixedPointTypeClass.scala 21:58:@4796.6]
  wire [21:0] _T_1943; // @[FixedPointTypeClass.scala 21:58:@4797.6]
  wire [21:0] _T_1944; // @[FixedPointTypeClass.scala 21:58:@4798.6]
  wire [21:0] _GEN_391; // @[FixedPointTypeClass.scala 21:58:@4799.6]
  wire [21:0] _GEN_393; // @[FixedPointTypeClass.scala 21:58:@4799.6]
  wire [22:0] _T_1945; // @[FixedPointTypeClass.scala 21:58:@4799.6]
  wire [21:0] _T_1946; // @[FixedPointTypeClass.scala 21:58:@4800.6]
  wire [21:0] _T_1947; // @[FixedPointTypeClass.scala 21:58:@4801.6]
  wire [21:0] _GEN_394; // @[FixedPointTypeClass.scala 21:58:@4807.6]
  wire [21:0] _GEN_396; // @[FixedPointTypeClass.scala 21:58:@4807.6]
  wire [22:0] _T_1956; // @[FixedPointTypeClass.scala 21:58:@4807.6]
  wire [21:0] _T_1957; // @[FixedPointTypeClass.scala 21:58:@4808.6]
  wire [21:0] _T_1958; // @[FixedPointTypeClass.scala 21:58:@4809.6]
  wire [21:0] _GEN_397; // @[FixedPointTypeClass.scala 21:58:@4810.6]
  wire [21:0] _GEN_399; // @[FixedPointTypeClass.scala 21:58:@4810.6]
  wire [22:0] _T_1959; // @[FixedPointTypeClass.scala 21:58:@4810.6]
  wire [21:0] _T_1960; // @[FixedPointTypeClass.scala 21:58:@4811.6]
  wire [21:0] _T_1961; // @[FixedPointTypeClass.scala 21:58:@4812.6]
  wire [21:0] _GEN_400; // @[FixedPointTypeClass.scala 21:58:@4818.6]
  wire [21:0] _GEN_402; // @[FixedPointTypeClass.scala 21:58:@4818.6]
  wire [22:0] _T_1970; // @[FixedPointTypeClass.scala 21:58:@4818.6]
  wire [21:0] _T_1971; // @[FixedPointTypeClass.scala 21:58:@4819.6]
  wire [21:0] _T_1972; // @[FixedPointTypeClass.scala 21:58:@4820.6]
  wire [21:0] _GEN_403; // @[FixedPointTypeClass.scala 21:58:@4821.6]
  wire [21:0] _GEN_405; // @[FixedPointTypeClass.scala 21:58:@4821.6]
  wire [22:0] _T_1973; // @[FixedPointTypeClass.scala 21:58:@4821.6]
  wire [21:0] _T_1974; // @[FixedPointTypeClass.scala 21:58:@4822.6]
  wire [21:0] _T_1975; // @[FixedPointTypeClass.scala 21:58:@4823.6]
  wire [21:0] _GEN_406; // @[FixedPointTypeClass.scala 21:58:@4829.6]
  wire [21:0] _GEN_408; // @[FixedPointTypeClass.scala 21:58:@4829.6]
  wire [22:0] _T_1984; // @[FixedPointTypeClass.scala 21:58:@4829.6]
  wire [21:0] _T_1985; // @[FixedPointTypeClass.scala 21:58:@4830.6]
  wire [21:0] _T_1986; // @[FixedPointTypeClass.scala 21:58:@4831.6]
  wire [21:0] _GEN_409; // @[FixedPointTypeClass.scala 21:58:@4832.6]
  wire [21:0] _GEN_411; // @[FixedPointTypeClass.scala 21:58:@4832.6]
  wire [22:0] _T_1987; // @[FixedPointTypeClass.scala 21:58:@4832.6]
  wire [21:0] _T_1988; // @[FixedPointTypeClass.scala 21:58:@4833.6]
  wire [21:0] _T_1989; // @[FixedPointTypeClass.scala 21:58:@4834.6]
  wire [21:0] _GEN_412; // @[FixedPointTypeClass.scala 21:58:@4840.6]
  wire [21:0] _GEN_414; // @[FixedPointTypeClass.scala 21:58:@4840.6]
  wire [22:0] _T_1998; // @[FixedPointTypeClass.scala 21:58:@4840.6]
  wire [21:0] _T_1999; // @[FixedPointTypeClass.scala 21:58:@4841.6]
  wire [21:0] _T_2000; // @[FixedPointTypeClass.scala 21:58:@4842.6]
  wire [21:0] _GEN_415; // @[FixedPointTypeClass.scala 21:58:@4843.6]
  wire [21:0] _GEN_417; // @[FixedPointTypeClass.scala 21:58:@4843.6]
  wire [22:0] _T_2001; // @[FixedPointTypeClass.scala 21:58:@4843.6]
  wire [21:0] _T_2002; // @[FixedPointTypeClass.scala 21:58:@4844.6]
  wire [21:0] _T_2003; // @[FixedPointTypeClass.scala 21:58:@4845.6]
  wire [21:0] _GEN_418; // @[FixedPointTypeClass.scala 21:58:@4851.6]
  wire [21:0] _GEN_420; // @[FixedPointTypeClass.scala 21:58:@4851.6]
  wire [22:0] _T_2012; // @[FixedPointTypeClass.scala 21:58:@4851.6]
  wire [21:0] _T_2013; // @[FixedPointTypeClass.scala 21:58:@4852.6]
  wire [21:0] _T_2014; // @[FixedPointTypeClass.scala 21:58:@4853.6]
  wire [21:0] _GEN_421; // @[FixedPointTypeClass.scala 21:58:@4854.6]
  wire [21:0] _GEN_423; // @[FixedPointTypeClass.scala 21:58:@4854.6]
  wire [22:0] _T_2015; // @[FixedPointTypeClass.scala 21:58:@4854.6]
  wire [21:0] _T_2016; // @[FixedPointTypeClass.scala 21:58:@4855.6]
  wire [21:0] _T_2017; // @[FixedPointTypeClass.scala 21:58:@4856.6]
  wire [21:0] _GEN_424; // @[FixedPointTypeClass.scala 21:58:@4862.6]
  wire [21:0] _GEN_426; // @[FixedPointTypeClass.scala 21:58:@4862.6]
  wire [22:0] _T_2026; // @[FixedPointTypeClass.scala 21:58:@4862.6]
  wire [21:0] _T_2027; // @[FixedPointTypeClass.scala 21:58:@4863.6]
  wire [21:0] _T_2028; // @[FixedPointTypeClass.scala 21:58:@4864.6]
  wire [21:0] _GEN_427; // @[FixedPointTypeClass.scala 21:58:@4865.6]
  wire [21:0] _GEN_429; // @[FixedPointTypeClass.scala 21:58:@4865.6]
  wire [22:0] _T_2029; // @[FixedPointTypeClass.scala 21:58:@4865.6]
  wire [21:0] _T_2030; // @[FixedPointTypeClass.scala 21:58:@4866.6]
  wire [21:0] _T_2031; // @[FixedPointTypeClass.scala 21:58:@4867.6]
  wire [21:0] _GEN_430; // @[FixedPointTypeClass.scala 21:58:@4873.6]
  wire [21:0] _GEN_432; // @[FixedPointTypeClass.scala 21:58:@4873.6]
  wire [22:0] _T_2040; // @[FixedPointTypeClass.scala 21:58:@4873.6]
  wire [21:0] _T_2041; // @[FixedPointTypeClass.scala 21:58:@4874.6]
  wire [21:0] _T_2042; // @[FixedPointTypeClass.scala 21:58:@4875.6]
  wire [21:0] _GEN_433; // @[FixedPointTypeClass.scala 21:58:@4876.6]
  wire [21:0] _GEN_435; // @[FixedPointTypeClass.scala 21:58:@4876.6]
  wire [22:0] _T_2043; // @[FixedPointTypeClass.scala 21:58:@4876.6]
  wire [21:0] _T_2044; // @[FixedPointTypeClass.scala 21:58:@4877.6]
  wire [21:0] _T_2045; // @[FixedPointTypeClass.scala 21:58:@4878.6]
  wire [21:0] _GEN_436; // @[FixedPointTypeClass.scala 21:58:@4884.6]
  wire [21:0] _GEN_438; // @[FixedPointTypeClass.scala 21:58:@4884.6]
  wire [22:0] _T_2054; // @[FixedPointTypeClass.scala 21:58:@4884.6]
  wire [21:0] _T_2055; // @[FixedPointTypeClass.scala 21:58:@4885.6]
  wire [21:0] _T_2056; // @[FixedPointTypeClass.scala 21:58:@4886.6]
  wire [21:0] _GEN_439; // @[FixedPointTypeClass.scala 21:58:@4887.6]
  wire [21:0] _GEN_441; // @[FixedPointTypeClass.scala 21:58:@4887.6]
  wire [22:0] _T_2057; // @[FixedPointTypeClass.scala 21:58:@4887.6]
  wire [21:0] _T_2058; // @[FixedPointTypeClass.scala 21:58:@4888.6]
  wire [21:0] _T_2059; // @[FixedPointTypeClass.scala 21:58:@4889.6]
  wire [21:0] _GEN_442; // @[FixedPointTypeClass.scala 21:58:@4895.6]
  wire [21:0] _GEN_444; // @[FixedPointTypeClass.scala 21:58:@4895.6]
  wire [22:0] _T_2068; // @[FixedPointTypeClass.scala 21:58:@4895.6]
  wire [21:0] _T_2069; // @[FixedPointTypeClass.scala 21:58:@4896.6]
  wire [21:0] _T_2070; // @[FixedPointTypeClass.scala 21:58:@4897.6]
  wire [21:0] _GEN_445; // @[FixedPointTypeClass.scala 21:58:@4898.6]
  wire [21:0] _GEN_447; // @[FixedPointTypeClass.scala 21:58:@4898.6]
  wire [22:0] _T_2071; // @[FixedPointTypeClass.scala 21:58:@4898.6]
  wire [21:0] _T_2072; // @[FixedPointTypeClass.scala 21:58:@4899.6]
  wire [21:0] _T_2073; // @[FixedPointTypeClass.scala 21:58:@4900.6]
  wire [21:0] _GEN_448; // @[FixedPointTypeClass.scala 21:58:@4906.6]
  wire [21:0] _GEN_450; // @[FixedPointTypeClass.scala 21:58:@4906.6]
  wire [22:0] _T_2082; // @[FixedPointTypeClass.scala 21:58:@4906.6]
  wire [21:0] _T_2083; // @[FixedPointTypeClass.scala 21:58:@4907.6]
  wire [21:0] _T_2084; // @[FixedPointTypeClass.scala 21:58:@4908.6]
  wire [21:0] _GEN_451; // @[FixedPointTypeClass.scala 21:58:@4909.6]
  wire [21:0] _GEN_453; // @[FixedPointTypeClass.scala 21:58:@4909.6]
  wire [22:0] _T_2085; // @[FixedPointTypeClass.scala 21:58:@4909.6]
  wire [21:0] _T_2086; // @[FixedPointTypeClass.scala 21:58:@4910.6]
  wire [21:0] _T_2087; // @[FixedPointTypeClass.scala 21:58:@4911.6]
  wire [21:0] _GEN_454; // @[FixedPointTypeClass.scala 21:58:@4917.6]
  wire [21:0] _GEN_456; // @[FixedPointTypeClass.scala 21:58:@4917.6]
  wire [22:0] _T_2096; // @[FixedPointTypeClass.scala 21:58:@4917.6]
  wire [21:0] _T_2097; // @[FixedPointTypeClass.scala 21:58:@4918.6]
  wire [21:0] _T_2098; // @[FixedPointTypeClass.scala 21:58:@4919.6]
  wire [21:0] _GEN_457; // @[FixedPointTypeClass.scala 21:58:@4920.6]
  wire [21:0] _GEN_459; // @[FixedPointTypeClass.scala 21:58:@4920.6]
  wire [22:0] _T_2099; // @[FixedPointTypeClass.scala 21:58:@4920.6]
  wire [21:0] _T_2100; // @[FixedPointTypeClass.scala 21:58:@4921.6]
  wire [21:0] _T_2101; // @[FixedPointTypeClass.scala 21:58:@4922.6]
  wire [21:0] _GEN_460; // @[FixedPointTypeClass.scala 21:58:@4928.6]
  wire [21:0] _GEN_462; // @[FixedPointTypeClass.scala 21:58:@4928.6]
  wire [22:0] _T_2110; // @[FixedPointTypeClass.scala 21:58:@4928.6]
  wire [21:0] _T_2111; // @[FixedPointTypeClass.scala 21:58:@4929.6]
  wire [21:0] _T_2112; // @[FixedPointTypeClass.scala 21:58:@4930.6]
  wire [21:0] _GEN_463; // @[FixedPointTypeClass.scala 21:58:@4931.6]
  wire [21:0] _GEN_465; // @[FixedPointTypeClass.scala 21:58:@4931.6]
  wire [22:0] _T_2113; // @[FixedPointTypeClass.scala 21:58:@4931.6]
  wire [21:0] _T_2114; // @[FixedPointTypeClass.scala 21:58:@4932.6]
  wire [21:0] _T_2115; // @[FixedPointTypeClass.scala 21:58:@4933.6]
  wire [21:0] _GEN_466; // @[FixedPointTypeClass.scala 21:58:@4939.6]
  wire [21:0] _GEN_468; // @[FixedPointTypeClass.scala 21:58:@4939.6]
  wire [22:0] _T_2124; // @[FixedPointTypeClass.scala 21:58:@4939.6]
  wire [21:0] _T_2125; // @[FixedPointTypeClass.scala 21:58:@4940.6]
  wire [21:0] _T_2126; // @[FixedPointTypeClass.scala 21:58:@4941.6]
  wire [21:0] _GEN_469; // @[FixedPointTypeClass.scala 21:58:@4942.6]
  wire [21:0] _GEN_471; // @[FixedPointTypeClass.scala 21:58:@4942.6]
  wire [22:0] _T_2127; // @[FixedPointTypeClass.scala 21:58:@4942.6]
  wire [21:0] _T_2128; // @[FixedPointTypeClass.scala 21:58:@4943.6]
  wire [21:0] _T_2129; // @[FixedPointTypeClass.scala 21:58:@4944.6]
  wire [21:0] _GEN_472; // @[FixedPointTypeClass.scala 21:58:@4950.6]
  wire [21:0] _GEN_474; // @[FixedPointTypeClass.scala 21:58:@4950.6]
  wire [22:0] _T_2138; // @[FixedPointTypeClass.scala 21:58:@4950.6]
  wire [21:0] _T_2139; // @[FixedPointTypeClass.scala 21:58:@4951.6]
  wire [21:0] _T_2140; // @[FixedPointTypeClass.scala 21:58:@4952.6]
  wire [21:0] _GEN_475; // @[FixedPointTypeClass.scala 21:58:@4953.6]
  wire [21:0] _GEN_477; // @[FixedPointTypeClass.scala 21:58:@4953.6]
  wire [22:0] _T_2141; // @[FixedPointTypeClass.scala 21:58:@4953.6]
  wire [21:0] _T_2142; // @[FixedPointTypeClass.scala 21:58:@4954.6]
  wire [21:0] _T_2143; // @[FixedPointTypeClass.scala 21:58:@4955.6]
  wire [21:0] _GEN_478; // @[FixedPointTypeClass.scala 21:58:@4961.6]
  wire [21:0] _GEN_480; // @[FixedPointTypeClass.scala 21:58:@4961.6]
  wire [22:0] _T_2152; // @[FixedPointTypeClass.scala 21:58:@4961.6]
  wire [21:0] _T_2153; // @[FixedPointTypeClass.scala 21:58:@4962.6]
  wire [21:0] _T_2154; // @[FixedPointTypeClass.scala 21:58:@4963.6]
  wire [21:0] _GEN_481; // @[FixedPointTypeClass.scala 21:58:@4964.6]
  wire [21:0] _GEN_483; // @[FixedPointTypeClass.scala 21:58:@4964.6]
  wire [22:0] _T_2155; // @[FixedPointTypeClass.scala 21:58:@4964.6]
  wire [21:0] _T_2156; // @[FixedPointTypeClass.scala 21:58:@4965.6]
  wire [21:0] _T_2157; // @[FixedPointTypeClass.scala 21:58:@4966.6]
  wire [21:0] _GEN_484; // @[FixedPointTypeClass.scala 21:58:@4972.6]
  wire [21:0] _GEN_486; // @[FixedPointTypeClass.scala 21:58:@4972.6]
  wire [22:0] _T_2166; // @[FixedPointTypeClass.scala 21:58:@4972.6]
  wire [21:0] _T_2167; // @[FixedPointTypeClass.scala 21:58:@4973.6]
  wire [21:0] _T_2168; // @[FixedPointTypeClass.scala 21:58:@4974.6]
  wire [21:0] _GEN_487; // @[FixedPointTypeClass.scala 21:58:@4975.6]
  wire [21:0] _GEN_489; // @[FixedPointTypeClass.scala 21:58:@4975.6]
  wire [22:0] _T_2169; // @[FixedPointTypeClass.scala 21:58:@4975.6]
  wire [21:0] _T_2170; // @[FixedPointTypeClass.scala 21:58:@4976.6]
  wire [21:0] _T_2171; // @[FixedPointTypeClass.scala 21:58:@4977.6]
  wire [21:0] _GEN_490; // @[FixedPointTypeClass.scala 21:58:@4983.6]
  wire [21:0] _GEN_492; // @[FixedPointTypeClass.scala 21:58:@4983.6]
  wire [22:0] _T_2180; // @[FixedPointTypeClass.scala 21:58:@4983.6]
  wire [21:0] _T_2181; // @[FixedPointTypeClass.scala 21:58:@4984.6]
  wire [21:0] _T_2182; // @[FixedPointTypeClass.scala 21:58:@4985.6]
  wire [21:0] _GEN_493; // @[FixedPointTypeClass.scala 21:58:@4986.6]
  wire [21:0] _GEN_495; // @[FixedPointTypeClass.scala 21:58:@4986.6]
  wire [22:0] _T_2183; // @[FixedPointTypeClass.scala 21:58:@4986.6]
  wire [21:0] _T_2184; // @[FixedPointTypeClass.scala 21:58:@4987.6]
  wire [21:0] _T_2185; // @[FixedPointTypeClass.scala 21:58:@4988.6]
  wire [21:0] _GEN_496; // @[FixedPointTypeClass.scala 21:58:@4994.6]
  wire [21:0] _GEN_498; // @[FixedPointTypeClass.scala 21:58:@4994.6]
  wire [22:0] _T_2194; // @[FixedPointTypeClass.scala 21:58:@4994.6]
  wire [21:0] _T_2195; // @[FixedPointTypeClass.scala 21:58:@4995.6]
  wire [21:0] _T_2196; // @[FixedPointTypeClass.scala 21:58:@4996.6]
  wire [21:0] _GEN_499; // @[FixedPointTypeClass.scala 21:58:@4997.6]
  wire [21:0] _GEN_501; // @[FixedPointTypeClass.scala 21:58:@4997.6]
  wire [22:0] _T_2197; // @[FixedPointTypeClass.scala 21:58:@4997.6]
  wire [21:0] _T_2198; // @[FixedPointTypeClass.scala 21:58:@4998.6]
  wire [21:0] _T_2199; // @[FixedPointTypeClass.scala 21:58:@4999.6]
  wire [21:0] _GEN_502; // @[FixedPointTypeClass.scala 21:58:@5005.6]
  wire [21:0] _GEN_504; // @[FixedPointTypeClass.scala 21:58:@5005.6]
  wire [22:0] _T_2208; // @[FixedPointTypeClass.scala 21:58:@5005.6]
  wire [21:0] _T_2209; // @[FixedPointTypeClass.scala 21:58:@5006.6]
  wire [21:0] _T_2210; // @[FixedPointTypeClass.scala 21:58:@5007.6]
  wire [21:0] _GEN_505; // @[FixedPointTypeClass.scala 21:58:@5008.6]
  wire [21:0] _GEN_507; // @[FixedPointTypeClass.scala 21:58:@5008.6]
  wire [22:0] _T_2211; // @[FixedPointTypeClass.scala 21:58:@5008.6]
  wire [21:0] _T_2212; // @[FixedPointTypeClass.scala 21:58:@5009.6]
  wire [21:0] _T_2213; // @[FixedPointTypeClass.scala 21:58:@5010.6]
  wire [21:0] _GEN_508; // @[FixedPointTypeClass.scala 21:58:@5016.6]
  wire [21:0] _GEN_510; // @[FixedPointTypeClass.scala 21:58:@5016.6]
  wire [22:0] _T_2222; // @[FixedPointTypeClass.scala 21:58:@5016.6]
  wire [21:0] _T_2223; // @[FixedPointTypeClass.scala 21:58:@5017.6]
  wire [21:0] _T_2224; // @[FixedPointTypeClass.scala 21:58:@5018.6]
  wire [21:0] _GEN_511; // @[FixedPointTypeClass.scala 21:58:@5019.6]
  wire [21:0] _GEN_513; // @[FixedPointTypeClass.scala 21:58:@5019.6]
  wire [22:0] _T_2225; // @[FixedPointTypeClass.scala 21:58:@5019.6]
  wire [21:0] _T_2226; // @[FixedPointTypeClass.scala 21:58:@5020.6]
  wire [21:0] _T_2227; // @[FixedPointTypeClass.scala 21:58:@5021.6]
  wire [21:0] _GEN_514; // @[FixedPointTypeClass.scala 21:58:@5027.6]
  wire [21:0] _GEN_516; // @[FixedPointTypeClass.scala 21:58:@5027.6]
  wire [22:0] _T_2236; // @[FixedPointTypeClass.scala 21:58:@5027.6]
  wire [21:0] _T_2237; // @[FixedPointTypeClass.scala 21:58:@5028.6]
  wire [21:0] _T_2238; // @[FixedPointTypeClass.scala 21:58:@5029.6]
  wire [21:0] _GEN_517; // @[FixedPointTypeClass.scala 21:58:@5030.6]
  wire [21:0] _GEN_519; // @[FixedPointTypeClass.scala 21:58:@5030.6]
  wire [22:0] _T_2239; // @[FixedPointTypeClass.scala 21:58:@5030.6]
  wire [21:0] _T_2240; // @[FixedPointTypeClass.scala 21:58:@5031.6]
  wire [21:0] _T_2241; // @[FixedPointTypeClass.scala 21:58:@5032.6]
  wire [21:0] _GEN_520; // @[FixedPointTypeClass.scala 21:58:@5038.6]
  wire [21:0] _GEN_522; // @[FixedPointTypeClass.scala 21:58:@5038.6]
  wire [22:0] _T_2250; // @[FixedPointTypeClass.scala 21:58:@5038.6]
  wire [21:0] _T_2251; // @[FixedPointTypeClass.scala 21:58:@5039.6]
  wire [21:0] _T_2252; // @[FixedPointTypeClass.scala 21:58:@5040.6]
  wire [21:0] _GEN_523; // @[FixedPointTypeClass.scala 21:58:@5041.6]
  wire [21:0] _GEN_525; // @[FixedPointTypeClass.scala 21:58:@5041.6]
  wire [22:0] _T_2253; // @[FixedPointTypeClass.scala 21:58:@5041.6]
  wire [21:0] _T_2254; // @[FixedPointTypeClass.scala 21:58:@5042.6]
  wire [21:0] _T_2255; // @[FixedPointTypeClass.scala 21:58:@5043.6]
  wire [21:0] _GEN_526; // @[FixedPointTypeClass.scala 21:58:@5049.6]
  wire [21:0] _GEN_528; // @[FixedPointTypeClass.scala 21:58:@5049.6]
  wire [22:0] _T_2264; // @[FixedPointTypeClass.scala 21:58:@5049.6]
  wire [21:0] _T_2265; // @[FixedPointTypeClass.scala 21:58:@5050.6]
  wire [21:0] _T_2266; // @[FixedPointTypeClass.scala 21:58:@5051.6]
  wire [21:0] _GEN_529; // @[FixedPointTypeClass.scala 21:58:@5052.6]
  wire [21:0] _GEN_531; // @[FixedPointTypeClass.scala 21:58:@5052.6]
  wire [22:0] _T_2267; // @[FixedPointTypeClass.scala 21:58:@5052.6]
  wire [21:0] _T_2268; // @[FixedPointTypeClass.scala 21:58:@5053.6]
  wire [21:0] _T_2269; // @[FixedPointTypeClass.scala 21:58:@5054.6]
  wire [21:0] _GEN_532; // @[FixedPointTypeClass.scala 21:58:@5060.6]
  wire [21:0] _GEN_534; // @[FixedPointTypeClass.scala 21:58:@5060.6]
  wire [22:0] _T_2278; // @[FixedPointTypeClass.scala 21:58:@5060.6]
  wire [21:0] _T_2279; // @[FixedPointTypeClass.scala 21:58:@5061.6]
  wire [21:0] _T_2280; // @[FixedPointTypeClass.scala 21:58:@5062.6]
  wire [21:0] _GEN_535; // @[FixedPointTypeClass.scala 21:58:@5063.6]
  wire [21:0] _GEN_537; // @[FixedPointTypeClass.scala 21:58:@5063.6]
  wire [22:0] _T_2281; // @[FixedPointTypeClass.scala 21:58:@5063.6]
  wire [21:0] _T_2282; // @[FixedPointTypeClass.scala 21:58:@5064.6]
  wire [21:0] _T_2283; // @[FixedPointTypeClass.scala 21:58:@5065.6]
  wire [21:0] _GEN_538; // @[FixedPointTypeClass.scala 21:58:@5071.6]
  wire [21:0] _GEN_540; // @[FixedPointTypeClass.scala 21:58:@5071.6]
  wire [22:0] _T_2292; // @[FixedPointTypeClass.scala 21:58:@5071.6]
  wire [21:0] _T_2293; // @[FixedPointTypeClass.scala 21:58:@5072.6]
  wire [21:0] _T_2294; // @[FixedPointTypeClass.scala 21:58:@5073.6]
  wire [21:0] _GEN_541; // @[FixedPointTypeClass.scala 21:58:@5074.6]
  wire [21:0] _GEN_543; // @[FixedPointTypeClass.scala 21:58:@5074.6]
  wire [22:0] _T_2295; // @[FixedPointTypeClass.scala 21:58:@5074.6]
  wire [21:0] _T_2296; // @[FixedPointTypeClass.scala 21:58:@5075.6]
  wire [21:0] _T_2297; // @[FixedPointTypeClass.scala 21:58:@5076.6]
  wire [21:0] _GEN_544; // @[FixedPointTypeClass.scala 21:58:@5082.6]
  wire [21:0] _GEN_546; // @[FixedPointTypeClass.scala 21:58:@5082.6]
  wire [22:0] _T_2306; // @[FixedPointTypeClass.scala 21:58:@5082.6]
  wire [21:0] _T_2307; // @[FixedPointTypeClass.scala 21:58:@5083.6]
  wire [21:0] _T_2308; // @[FixedPointTypeClass.scala 21:58:@5084.6]
  wire [21:0] _GEN_547; // @[FixedPointTypeClass.scala 21:58:@5085.6]
  wire [21:0] _GEN_549; // @[FixedPointTypeClass.scala 21:58:@5085.6]
  wire [22:0] _T_2309; // @[FixedPointTypeClass.scala 21:58:@5085.6]
  wire [21:0] _T_2310; // @[FixedPointTypeClass.scala 21:58:@5086.6]
  wire [21:0] _T_2311; // @[FixedPointTypeClass.scala 21:58:@5087.6]
  wire [21:0] _GEN_550; // @[FixedPointTypeClass.scala 21:58:@5093.6]
  wire [21:0] _GEN_552; // @[FixedPointTypeClass.scala 21:58:@5093.6]
  wire [22:0] _T_2320; // @[FixedPointTypeClass.scala 21:58:@5093.6]
  wire [21:0] _T_2321; // @[FixedPointTypeClass.scala 21:58:@5094.6]
  wire [21:0] _T_2322; // @[FixedPointTypeClass.scala 21:58:@5095.6]
  wire [21:0] _GEN_553; // @[FixedPointTypeClass.scala 21:58:@5096.6]
  wire [21:0] _GEN_555; // @[FixedPointTypeClass.scala 21:58:@5096.6]
  wire [22:0] _T_2323; // @[FixedPointTypeClass.scala 21:58:@5096.6]
  wire [21:0] _T_2324; // @[FixedPointTypeClass.scala 21:58:@5097.6]
  wire [21:0] _T_2325; // @[FixedPointTypeClass.scala 21:58:@5098.6]
  wire [21:0] _GEN_556; // @[FixedPointTypeClass.scala 21:58:@5104.6]
  wire [21:0] _GEN_558; // @[FixedPointTypeClass.scala 21:58:@5104.6]
  wire [22:0] _T_2334; // @[FixedPointTypeClass.scala 21:58:@5104.6]
  wire [21:0] _T_2335; // @[FixedPointTypeClass.scala 21:58:@5105.6]
  wire [21:0] _T_2336; // @[FixedPointTypeClass.scala 21:58:@5106.6]
  wire [21:0] _GEN_559; // @[FixedPointTypeClass.scala 21:58:@5107.6]
  wire [21:0] _GEN_561; // @[FixedPointTypeClass.scala 21:58:@5107.6]
  wire [22:0] _T_2337; // @[FixedPointTypeClass.scala 21:58:@5107.6]
  wire [21:0] _T_2338; // @[FixedPointTypeClass.scala 21:58:@5108.6]
  wire [21:0] _T_2339; // @[FixedPointTypeClass.scala 21:58:@5109.6]
  wire [21:0] _GEN_562; // @[FixedPointTypeClass.scala 21:58:@5115.6]
  wire [21:0] _GEN_564; // @[FixedPointTypeClass.scala 21:58:@5115.6]
  wire [22:0] _T_2348; // @[FixedPointTypeClass.scala 21:58:@5115.6]
  wire [21:0] _T_2349; // @[FixedPointTypeClass.scala 21:58:@5116.6]
  wire [21:0] _T_2350; // @[FixedPointTypeClass.scala 21:58:@5117.6]
  wire [21:0] _GEN_565; // @[FixedPointTypeClass.scala 21:58:@5118.6]
  wire [21:0] _GEN_567; // @[FixedPointTypeClass.scala 21:58:@5118.6]
  wire [22:0] _T_2351; // @[FixedPointTypeClass.scala 21:58:@5118.6]
  wire [21:0] _T_2352; // @[FixedPointTypeClass.scala 21:58:@5119.6]
  wire [21:0] _T_2353; // @[FixedPointTypeClass.scala 21:58:@5120.6]
  wire [21:0] _GEN_568; // @[FixedPointTypeClass.scala 21:58:@5126.6]
  wire [21:0] _GEN_570; // @[FixedPointTypeClass.scala 21:58:@5126.6]
  wire [22:0] _T_2362; // @[FixedPointTypeClass.scala 21:58:@5126.6]
  wire [21:0] _T_2363; // @[FixedPointTypeClass.scala 21:58:@5127.6]
  wire [21:0] _T_2364; // @[FixedPointTypeClass.scala 21:58:@5128.6]
  wire [21:0] _GEN_571; // @[FixedPointTypeClass.scala 21:58:@5129.6]
  wire [21:0] _GEN_573; // @[FixedPointTypeClass.scala 21:58:@5129.6]
  wire [22:0] _T_2365; // @[FixedPointTypeClass.scala 21:58:@5129.6]
  wire [21:0] _T_2366; // @[FixedPointTypeClass.scala 21:58:@5130.6]
  wire [21:0] _T_2367; // @[FixedPointTypeClass.scala 21:58:@5131.6]
  wire [21:0] _GEN_574; // @[FixedPointTypeClass.scala 21:58:@5137.6]
  wire [21:0] _GEN_576; // @[FixedPointTypeClass.scala 21:58:@5137.6]
  wire [22:0] _T_2376; // @[FixedPointTypeClass.scala 21:58:@5137.6]
  wire [21:0] _T_2377; // @[FixedPointTypeClass.scala 21:58:@5138.6]
  wire [21:0] _T_2378; // @[FixedPointTypeClass.scala 21:58:@5139.6]
  wire [21:0] _GEN_577; // @[FixedPointTypeClass.scala 21:58:@5140.6]
  wire [21:0] _GEN_579; // @[FixedPointTypeClass.scala 21:58:@5140.6]
  wire [22:0] _T_2379; // @[FixedPointTypeClass.scala 21:58:@5140.6]
  wire [21:0] _T_2380; // @[FixedPointTypeClass.scala 21:58:@5141.6]
  wire [21:0] _T_2381; // @[FixedPointTypeClass.scala 21:58:@5142.6]
  wire [21:0] _GEN_580; // @[FixedPointTypeClass.scala 21:58:@5148.6]
  wire [21:0] _GEN_582; // @[FixedPointTypeClass.scala 21:58:@5148.6]
  wire [22:0] _T_2390; // @[FixedPointTypeClass.scala 21:58:@5148.6]
  wire [21:0] _T_2391; // @[FixedPointTypeClass.scala 21:58:@5149.6]
  wire [21:0] _T_2392; // @[FixedPointTypeClass.scala 21:58:@5150.6]
  wire [21:0] _GEN_583; // @[FixedPointTypeClass.scala 21:58:@5151.6]
  wire [21:0] _GEN_585; // @[FixedPointTypeClass.scala 21:58:@5151.6]
  wire [22:0] _T_2393; // @[FixedPointTypeClass.scala 21:58:@5151.6]
  wire [21:0] _T_2394; // @[FixedPointTypeClass.scala 21:58:@5152.6]
  wire [21:0] _T_2395; // @[FixedPointTypeClass.scala 21:58:@5153.6]
  wire [21:0] _GEN_586; // @[FixedPointTypeClass.scala 21:58:@5159.6]
  wire [21:0] _GEN_588; // @[FixedPointTypeClass.scala 21:58:@5159.6]
  wire [22:0] _T_2404; // @[FixedPointTypeClass.scala 21:58:@5159.6]
  wire [21:0] _T_2405; // @[FixedPointTypeClass.scala 21:58:@5160.6]
  wire [21:0] _T_2406; // @[FixedPointTypeClass.scala 21:58:@5161.6]
  wire [21:0] _GEN_589; // @[FixedPointTypeClass.scala 21:58:@5162.6]
  wire [21:0] _GEN_591; // @[FixedPointTypeClass.scala 21:58:@5162.6]
  wire [22:0] _T_2407; // @[FixedPointTypeClass.scala 21:58:@5162.6]
  wire [21:0] _T_2408; // @[FixedPointTypeClass.scala 21:58:@5163.6]
  wire [21:0] _T_2409; // @[FixedPointTypeClass.scala 21:58:@5164.6]
  wire [21:0] _GEN_592; // @[FixedPointTypeClass.scala 21:58:@5170.6]
  wire [21:0] _GEN_594; // @[FixedPointTypeClass.scala 21:58:@5170.6]
  wire [22:0] _T_2418; // @[FixedPointTypeClass.scala 21:58:@5170.6]
  wire [21:0] _T_2419; // @[FixedPointTypeClass.scala 21:58:@5171.6]
  wire [21:0] _T_2420; // @[FixedPointTypeClass.scala 21:58:@5172.6]
  wire [21:0] _GEN_595; // @[FixedPointTypeClass.scala 21:58:@5173.6]
  wire [21:0] _GEN_597; // @[FixedPointTypeClass.scala 21:58:@5173.6]
  wire [22:0] _T_2421; // @[FixedPointTypeClass.scala 21:58:@5173.6]
  wire [21:0] _T_2422; // @[FixedPointTypeClass.scala 21:58:@5174.6]
  wire [21:0] _T_2423; // @[FixedPointTypeClass.scala 21:58:@5175.6]
  wire [21:0] _GEN_598; // @[FixedPointTypeClass.scala 21:58:@5181.6]
  wire [21:0] _GEN_600; // @[FixedPointTypeClass.scala 21:58:@5181.6]
  wire [22:0] _T_2432; // @[FixedPointTypeClass.scala 21:58:@5181.6]
  wire [21:0] _T_2433; // @[FixedPointTypeClass.scala 21:58:@5182.6]
  wire [21:0] _T_2434; // @[FixedPointTypeClass.scala 21:58:@5183.6]
  wire [21:0] _GEN_601; // @[FixedPointTypeClass.scala 21:58:@5184.6]
  wire [21:0] _GEN_603; // @[FixedPointTypeClass.scala 21:58:@5184.6]
  wire [22:0] _T_2435; // @[FixedPointTypeClass.scala 21:58:@5184.6]
  wire [21:0] _T_2436; // @[FixedPointTypeClass.scala 21:58:@5185.6]
  wire [21:0] _T_2437; // @[FixedPointTypeClass.scala 21:58:@5186.6]
  wire [21:0] _GEN_604; // @[FixedPointTypeClass.scala 21:58:@5192.6]
  wire [21:0] _GEN_606; // @[FixedPointTypeClass.scala 21:58:@5192.6]
  wire [22:0] _T_2446; // @[FixedPointTypeClass.scala 21:58:@5192.6]
  wire [21:0] _T_2447; // @[FixedPointTypeClass.scala 21:58:@5193.6]
  wire [21:0] _T_2448; // @[FixedPointTypeClass.scala 21:58:@5194.6]
  wire [21:0] _GEN_607; // @[FixedPointTypeClass.scala 21:58:@5195.6]
  wire [21:0] _GEN_609; // @[FixedPointTypeClass.scala 21:58:@5195.6]
  wire [22:0] _T_2449; // @[FixedPointTypeClass.scala 21:58:@5195.6]
  wire [21:0] _T_2450; // @[FixedPointTypeClass.scala 21:58:@5196.6]
  wire [21:0] _T_2451; // @[FixedPointTypeClass.scala 21:58:@5197.6]
  wire [21:0] _GEN_610; // @[FixedPointTypeClass.scala 21:58:@5203.6]
  wire [21:0] _GEN_612; // @[FixedPointTypeClass.scala 21:58:@5203.6]
  wire [22:0] _T_2460; // @[FixedPointTypeClass.scala 21:58:@5203.6]
  wire [21:0] _T_2461; // @[FixedPointTypeClass.scala 21:58:@5204.6]
  wire [21:0] _T_2462; // @[FixedPointTypeClass.scala 21:58:@5205.6]
  wire [21:0] _GEN_613; // @[FixedPointTypeClass.scala 21:58:@5206.6]
  wire [21:0] _GEN_615; // @[FixedPointTypeClass.scala 21:58:@5206.6]
  wire [22:0] _T_2463; // @[FixedPointTypeClass.scala 21:58:@5206.6]
  wire [21:0] _T_2464; // @[FixedPointTypeClass.scala 21:58:@5207.6]
  wire [21:0] _T_2465; // @[FixedPointTypeClass.scala 21:58:@5208.6]
  wire [21:0] _GEN_616; // @[FixedPointTypeClass.scala 21:58:@5214.6]
  wire [21:0] _GEN_618; // @[FixedPointTypeClass.scala 21:58:@5214.6]
  wire [22:0] _T_2474; // @[FixedPointTypeClass.scala 21:58:@5214.6]
  wire [21:0] _T_2475; // @[FixedPointTypeClass.scala 21:58:@5215.6]
  wire [21:0] _T_2476; // @[FixedPointTypeClass.scala 21:58:@5216.6]
  wire [21:0] _GEN_619; // @[FixedPointTypeClass.scala 21:58:@5217.6]
  wire [21:0] _GEN_621; // @[FixedPointTypeClass.scala 21:58:@5217.6]
  wire [22:0] _T_2477; // @[FixedPointTypeClass.scala 21:58:@5217.6]
  wire [21:0] _T_2478; // @[FixedPointTypeClass.scala 21:58:@5218.6]
  wire [21:0] _T_2479; // @[FixedPointTypeClass.scala 21:58:@5219.6]
  wire [21:0] _GEN_622; // @[FixedPointTypeClass.scala 21:58:@5225.6]
  wire [21:0] _GEN_624; // @[FixedPointTypeClass.scala 21:58:@5225.6]
  wire [22:0] _T_2488; // @[FixedPointTypeClass.scala 21:58:@5225.6]
  wire [21:0] _T_2489; // @[FixedPointTypeClass.scala 21:58:@5226.6]
  wire [21:0] _T_2490; // @[FixedPointTypeClass.scala 21:58:@5227.6]
  wire [21:0] _GEN_625; // @[FixedPointTypeClass.scala 21:58:@5228.6]
  wire [21:0] _GEN_627; // @[FixedPointTypeClass.scala 21:58:@5228.6]
  wire [22:0] _T_2491; // @[FixedPointTypeClass.scala 21:58:@5228.6]
  wire [21:0] _T_2492; // @[FixedPointTypeClass.scala 21:58:@5229.6]
  wire [21:0] _T_2493; // @[FixedPointTypeClass.scala 21:58:@5230.6]
  wire [21:0] _GEN_628; // @[FixedPointTypeClass.scala 21:58:@5236.6]
  wire [21:0] _GEN_630; // @[FixedPointTypeClass.scala 21:58:@5236.6]
  wire [22:0] _T_2502; // @[FixedPointTypeClass.scala 21:58:@5236.6]
  wire [21:0] _T_2503; // @[FixedPointTypeClass.scala 21:58:@5237.6]
  wire [21:0] _T_2504; // @[FixedPointTypeClass.scala 21:58:@5238.6]
  wire [21:0] _GEN_631; // @[FixedPointTypeClass.scala 21:58:@5239.6]
  wire [21:0] _GEN_633; // @[FixedPointTypeClass.scala 21:58:@5239.6]
  wire [22:0] _T_2505; // @[FixedPointTypeClass.scala 21:58:@5239.6]
  wire [21:0] _T_2506; // @[FixedPointTypeClass.scala 21:58:@5240.6]
  wire [21:0] _T_2507; // @[FixedPointTypeClass.scala 21:58:@5241.6]
  wire [21:0] _GEN_634; // @[FixedPointTypeClass.scala 21:58:@5247.6]
  wire [21:0] _GEN_636; // @[FixedPointTypeClass.scala 21:58:@5247.6]
  wire [22:0] _T_2516; // @[FixedPointTypeClass.scala 21:58:@5247.6]
  wire [21:0] _T_2517; // @[FixedPointTypeClass.scala 21:58:@5248.6]
  wire [21:0] _T_2518; // @[FixedPointTypeClass.scala 21:58:@5249.6]
  wire [21:0] _GEN_637; // @[FixedPointTypeClass.scala 21:58:@5250.6]
  wire [21:0] _GEN_639; // @[FixedPointTypeClass.scala 21:58:@5250.6]
  wire [22:0] _T_2519; // @[FixedPointTypeClass.scala 21:58:@5250.6]
  wire [21:0] _T_2520; // @[FixedPointTypeClass.scala 21:58:@5251.6]
  wire [21:0] _T_2521; // @[FixedPointTypeClass.scala 21:58:@5252.6]
  wire [21:0] _GEN_640; // @[FixedPointTypeClass.scala 21:58:@5258.6]
  wire [21:0] _GEN_642; // @[FixedPointTypeClass.scala 21:58:@5258.6]
  wire [22:0] _T_2530; // @[FixedPointTypeClass.scala 21:58:@5258.6]
  wire [21:0] _T_2531; // @[FixedPointTypeClass.scala 21:58:@5259.6]
  wire [21:0] _T_2532; // @[FixedPointTypeClass.scala 21:58:@5260.6]
  wire [21:0] _GEN_643; // @[FixedPointTypeClass.scala 21:58:@5261.6]
  wire [21:0] _GEN_645; // @[FixedPointTypeClass.scala 21:58:@5261.6]
  wire [22:0] _T_2533; // @[FixedPointTypeClass.scala 21:58:@5261.6]
  wire [21:0] _T_2534; // @[FixedPointTypeClass.scala 21:58:@5262.6]
  wire [21:0] _T_2535; // @[FixedPointTypeClass.scala 21:58:@5263.6]
  wire [21:0] _GEN_646; // @[FixedPointTypeClass.scala 21:58:@5269.6]
  wire [21:0] _GEN_648; // @[FixedPointTypeClass.scala 21:58:@5269.6]
  wire [22:0] _T_2544; // @[FixedPointTypeClass.scala 21:58:@5269.6]
  wire [21:0] _T_2545; // @[FixedPointTypeClass.scala 21:58:@5270.6]
  wire [21:0] _T_2546; // @[FixedPointTypeClass.scala 21:58:@5271.6]
  wire [21:0] _GEN_649; // @[FixedPointTypeClass.scala 21:58:@5272.6]
  wire [21:0] _GEN_651; // @[FixedPointTypeClass.scala 21:58:@5272.6]
  wire [22:0] _T_2547; // @[FixedPointTypeClass.scala 21:58:@5272.6]
  wire [21:0] _T_2548; // @[FixedPointTypeClass.scala 21:58:@5273.6]
  wire [21:0] _T_2549; // @[FixedPointTypeClass.scala 21:58:@5274.6]
  wire [21:0] _GEN_652; // @[FixedPointTypeClass.scala 21:58:@5280.6]
  wire [21:0] _GEN_654; // @[FixedPointTypeClass.scala 21:58:@5280.6]
  wire [22:0] _T_2558; // @[FixedPointTypeClass.scala 21:58:@5280.6]
  wire [21:0] _T_2559; // @[FixedPointTypeClass.scala 21:58:@5281.6]
  wire [21:0] _T_2560; // @[FixedPointTypeClass.scala 21:58:@5282.6]
  wire [21:0] _GEN_655; // @[FixedPointTypeClass.scala 21:58:@5283.6]
  wire [21:0] _GEN_657; // @[FixedPointTypeClass.scala 21:58:@5283.6]
  wire [22:0] _T_2561; // @[FixedPointTypeClass.scala 21:58:@5283.6]
  wire [21:0] _T_2562; // @[FixedPointTypeClass.scala 21:58:@5284.6]
  wire [21:0] _T_2563; // @[FixedPointTypeClass.scala 21:58:@5285.6]
  wire [21:0] _GEN_658; // @[FixedPointTypeClass.scala 21:58:@5291.6]
  wire [21:0] _GEN_660; // @[FixedPointTypeClass.scala 21:58:@5291.6]
  wire [22:0] _T_2572; // @[FixedPointTypeClass.scala 21:58:@5291.6]
  wire [21:0] _T_2573; // @[FixedPointTypeClass.scala 21:58:@5292.6]
  wire [21:0] _T_2574; // @[FixedPointTypeClass.scala 21:58:@5293.6]
  wire [21:0] _GEN_661; // @[FixedPointTypeClass.scala 21:58:@5294.6]
  wire [21:0] _GEN_663; // @[FixedPointTypeClass.scala 21:58:@5294.6]
  wire [22:0] _T_2575; // @[FixedPointTypeClass.scala 21:58:@5294.6]
  wire [21:0] _T_2576; // @[FixedPointTypeClass.scala 21:58:@5295.6]
  wire [21:0] _T_2577; // @[FixedPointTypeClass.scala 21:58:@5296.6]
  wire [21:0] _GEN_664; // @[FixedPointTypeClass.scala 21:58:@5302.6]
  wire [21:0] _GEN_666; // @[FixedPointTypeClass.scala 21:58:@5302.6]
  wire [22:0] _T_2586; // @[FixedPointTypeClass.scala 21:58:@5302.6]
  wire [21:0] _T_2587; // @[FixedPointTypeClass.scala 21:58:@5303.6]
  wire [21:0] _T_2588; // @[FixedPointTypeClass.scala 21:58:@5304.6]
  wire [21:0] _GEN_667; // @[FixedPointTypeClass.scala 21:58:@5305.6]
  wire [21:0] _GEN_669; // @[FixedPointTypeClass.scala 21:58:@5305.6]
  wire [22:0] _T_2589; // @[FixedPointTypeClass.scala 21:58:@5305.6]
  wire [21:0] _T_2590; // @[FixedPointTypeClass.scala 21:58:@5306.6]
  wire [21:0] _T_2591; // @[FixedPointTypeClass.scala 21:58:@5307.6]
  wire [21:0] _GEN_670; // @[FixedPointTypeClass.scala 21:58:@5313.6]
  wire [21:0] _GEN_672; // @[FixedPointTypeClass.scala 21:58:@5313.6]
  wire [22:0] _T_2600; // @[FixedPointTypeClass.scala 21:58:@5313.6]
  wire [21:0] _T_2601; // @[FixedPointTypeClass.scala 21:58:@5314.6]
  wire [21:0] _T_2602; // @[FixedPointTypeClass.scala 21:58:@5315.6]
  wire [21:0] _GEN_673; // @[FixedPointTypeClass.scala 21:58:@5316.6]
  wire [21:0] _GEN_675; // @[FixedPointTypeClass.scala 21:58:@5316.6]
  wire [22:0] _T_2603; // @[FixedPointTypeClass.scala 21:58:@5316.6]
  wire [21:0] _T_2604; // @[FixedPointTypeClass.scala 21:58:@5317.6]
  wire [21:0] _T_2605; // @[FixedPointTypeClass.scala 21:58:@5318.6]
  wire [21:0] _GEN_676; // @[FixedPointTypeClass.scala 21:58:@5324.6]
  wire [21:0] _GEN_678; // @[FixedPointTypeClass.scala 21:58:@5324.6]
  wire [22:0] _T_2614; // @[FixedPointTypeClass.scala 21:58:@5324.6]
  wire [21:0] _T_2615; // @[FixedPointTypeClass.scala 21:58:@5325.6]
  wire [21:0] _T_2616; // @[FixedPointTypeClass.scala 21:58:@5326.6]
  wire [21:0] _GEN_679; // @[FixedPointTypeClass.scala 21:58:@5327.6]
  wire [21:0] _GEN_681; // @[FixedPointTypeClass.scala 21:58:@5327.6]
  wire [22:0] _T_2617; // @[FixedPointTypeClass.scala 21:58:@5327.6]
  wire [21:0] _T_2618; // @[FixedPointTypeClass.scala 21:58:@5328.6]
  wire [21:0] _T_2619; // @[FixedPointTypeClass.scala 21:58:@5329.6]
  wire [21:0] _GEN_682; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_0; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_683; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_1; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_2; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_3; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_4; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_5; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_6; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_7; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_8; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_9; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_10; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_11; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_12; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_13; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_14; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_15; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_16; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_17; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_18; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_19; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_20; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_21; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_22; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_23; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_24; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_25; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_26; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_27; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_28; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_29; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_30; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_31; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_32; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_33; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_34; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_35; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_36; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_37; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_38; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_39; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_40; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_41; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_42; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_43; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_44; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_45; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_46; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_47; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_48; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_49; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_50; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_51; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_52; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_53; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_54; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_55; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_56; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_57; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_58; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_59; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_60; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_61; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_62; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_63; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_64; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_65; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_66; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_67; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_68; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_69; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_70; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_71; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_72; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_73; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_74; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_75; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_76; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_77; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_78; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_79; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_80; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_81; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_82; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_83; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_84; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_85; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_86; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_87; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_88; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_89; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_90; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_91; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_92; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_93; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_94; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_95; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_96; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_97; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_98; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_99; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_100; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_101; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_102; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_103; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_104; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_105; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_106; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_107; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_108; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_109; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_110; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_111; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_112; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_113; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_114; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_115; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_116; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_117; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_118; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_119; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_120; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_121; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_122; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_123; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_124; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_125; // @[FIR.scala 21:22:@4652.4]
  wire [21:0] _GEN_810; // @[FixedPointTypeClass.scala 21:58:@5338.4]
  wire [22:0] _T_2628; // @[FixedPointTypeClass.scala 21:58:@5338.4]
  wire [21:0] _T_2629; // @[FixedPointTypeClass.scala 21:58:@5339.4]
  wire [21:0] _T_2630; // @[FixedPointTypeClass.scala 21:58:@5340.4]
  wire [21:0] _GEN_813; // @[FixedPointTypeClass.scala 21:58:@5341.4]
  wire [22:0] _T_2631; // @[FixedPointTypeClass.scala 21:58:@5341.4]
  wire [21:0] _T_2632; // @[FixedPointTypeClass.scala 21:58:@5342.4]
  wire [21:0] _T_2633; // @[FixedPointTypeClass.scala 21:58:@5343.4]
  assign _T_34 = $signed(io_in_bits_real) + $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 21:58:@3245.4]
  assign _T_35 = _T_34[11:0]; // @[FixedPointTypeClass.scala 21:58:@3246.4]
  assign _T_36 = $signed(_T_35); // @[FixedPointTypeClass.scala 21:58:@3247.4]
  assign _T_37 = $signed(9'sh2) + $signed(9'sh88); // @[FixedPointTypeClass.scala 21:58:@3248.4]
  assign _T_38 = _T_37[8:0]; // @[FixedPointTypeClass.scala 21:58:@3249.4]
  assign _T_39 = $signed(_T_38); // @[FixedPointTypeClass.scala 21:58:@3250.4]
  assign _T_40 = $signed(9'sh88) - $signed(9'sh2); // @[FixedPointTypeClass.scala 31:68:@3251.4]
  assign _T_41 = _T_40[8:0]; // @[FixedPointTypeClass.scala 31:68:@3252.4]
  assign _T_42 = $signed(_T_41); // @[FixedPointTypeClass.scala 31:68:@3253.4]
  assign _T_43 = $signed(12'sh2) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3254.4]
  assign _GEN_126 = {{3{_T_39[8]}},_T_39}; // @[FixedPointTypeClass.scala 43:59:@3255.4]
  assign _T_44 = $signed(_GEN_126) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3255.4]
  assign _GEN_127 = {{3{_T_42[8]}},_T_42}; // @[FixedPointTypeClass.scala 43:59:@3256.4]
  assign _T_45 = $signed(_GEN_127) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3256.4]
  assign _GEN_128 = {{6{_T_43[14]}},_T_43}; // @[FixedPointTypeClass.scala 31:68:@3257.4]
  assign _T_46 = $signed(_GEN_128) - $signed(_T_44); // @[FixedPointTypeClass.scala 31:68:@3257.4]
  assign _T_47 = _T_46[20:0]; // @[FixedPointTypeClass.scala 31:68:@3258.4]
  assign prods_0_real = $signed(_T_47); // @[FixedPointTypeClass.scala 31:68:@3259.4]
  assign _T_49 = $signed(_GEN_128) + $signed(_T_45); // @[FixedPointTypeClass.scala 21:58:@3260.4]
  assign _T_50 = _T_49[20:0]; // @[FixedPointTypeClass.scala 21:58:@3261.4]
  assign prods_0_imag = $signed(_T_50); // @[FixedPointTypeClass.scala 21:58:@3262.4]
  assign _T_62 = $signed(-8'sh50) + $signed(8'she); // @[FixedPointTypeClass.scala 21:58:@3269.4]
  assign _T_63 = _T_62[7:0]; // @[FixedPointTypeClass.scala 21:58:@3270.4]
  assign _T_64 = $signed(_T_63); // @[FixedPointTypeClass.scala 21:58:@3271.4]
  assign _T_65 = $signed(8'she) - $signed(-8'sh50); // @[FixedPointTypeClass.scala 31:68:@3272.4]
  assign _T_66 = _T_65[7:0]; // @[FixedPointTypeClass.scala 31:68:@3273.4]
  assign _T_67 = $signed(_T_66); // @[FixedPointTypeClass.scala 31:68:@3274.4]
  assign _T_68 = $signed(-12'sh50) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3275.4]
  assign _GEN_130 = {{4{_T_64[7]}},_T_64}; // @[FixedPointTypeClass.scala 43:59:@3276.4]
  assign _T_69 = $signed(_GEN_130) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3276.4]
  assign _GEN_131 = {{4{_T_67[7]}},_T_67}; // @[FixedPointTypeClass.scala 43:59:@3277.4]
  assign _T_70 = $signed(_GEN_131) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3277.4]
  assign _T_71 = $signed(_T_68) - $signed(_T_69); // @[FixedPointTypeClass.scala 31:68:@3278.4]
  assign _T_72 = _T_71[19:0]; // @[FixedPointTypeClass.scala 31:68:@3279.4]
  assign prods_1_real = $signed(_T_72); // @[FixedPointTypeClass.scala 31:68:@3280.4]
  assign _T_74 = $signed(_T_68) + $signed(_T_70); // @[FixedPointTypeClass.scala 21:58:@3281.4]
  assign _T_75 = _T_74[19:0]; // @[FixedPointTypeClass.scala 21:58:@3282.4]
  assign prods_1_imag = $signed(_T_75); // @[FixedPointTypeClass.scala 21:58:@3283.4]
  assign _T_87 = $signed(-9'shd) + $signed(-9'sh92); // @[FixedPointTypeClass.scala 21:58:@3290.4]
  assign _T_88 = _T_87[8:0]; // @[FixedPointTypeClass.scala 21:58:@3291.4]
  assign _T_89 = $signed(_T_88); // @[FixedPointTypeClass.scala 21:58:@3292.4]
  assign _T_90 = $signed(-9'sh92) - $signed(-9'shd); // @[FixedPointTypeClass.scala 31:68:@3293.4]
  assign _T_91 = _T_90[8:0]; // @[FixedPointTypeClass.scala 31:68:@3294.4]
  assign _T_92 = $signed(_T_91); // @[FixedPointTypeClass.scala 31:68:@3295.4]
  assign _T_93 = $signed(-12'shd) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3296.4]
  assign _GEN_132 = {{3{_T_89[8]}},_T_89}; // @[FixedPointTypeClass.scala 43:59:@3297.4]
  assign _T_94 = $signed(_GEN_132) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3297.4]
  assign _GEN_133 = {{3{_T_92[8]}},_T_92}; // @[FixedPointTypeClass.scala 43:59:@3298.4]
  assign _T_95 = $signed(_GEN_133) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3298.4]
  assign _GEN_134 = {{4{_T_93[16]}},_T_93}; // @[FixedPointTypeClass.scala 31:68:@3299.4]
  assign _T_96 = $signed(_GEN_134) - $signed(_T_94); // @[FixedPointTypeClass.scala 31:68:@3299.4]
  assign _T_97 = _T_96[20:0]; // @[FixedPointTypeClass.scala 31:68:@3300.4]
  assign prods_2_real = $signed(_T_97); // @[FixedPointTypeClass.scala 31:68:@3301.4]
  assign _T_99 = $signed(_GEN_134) + $signed(_T_95); // @[FixedPointTypeClass.scala 21:58:@3302.4]
  assign _T_100 = _T_99[20:0]; // @[FixedPointTypeClass.scala 21:58:@3303.4]
  assign prods_2_imag = $signed(_T_100); // @[FixedPointTypeClass.scala 21:58:@3304.4]
  assign _T_112 = $signed(8'sh0) + $signed(-8'sh5e); // @[FixedPointTypeClass.scala 21:58:@3311.4]
  assign _T_113 = _T_112[7:0]; // @[FixedPointTypeClass.scala 21:58:@3312.4]
  assign _T_114 = $signed(_T_113); // @[FixedPointTypeClass.scala 21:58:@3313.4]
  assign _T_115 = $signed(-8'sh5e) - $signed(8'sh0); // @[FixedPointTypeClass.scala 31:68:@3314.4]
  assign _T_116 = _T_115[7:0]; // @[FixedPointTypeClass.scala 31:68:@3315.4]
  assign _T_117 = $signed(_T_116); // @[FixedPointTypeClass.scala 31:68:@3316.4]
  assign _T_118 = $signed(12'sh0) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3317.4]
  assign _GEN_136 = {{4{_T_114[7]}},_T_114}; // @[FixedPointTypeClass.scala 43:59:@3318.4]
  assign _T_119 = $signed(_GEN_136) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3318.4]
  assign _GEN_137 = {{4{_T_117[7]}},_T_117}; // @[FixedPointTypeClass.scala 43:59:@3319.4]
  assign _T_120 = $signed(_GEN_137) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3319.4]
  assign _GEN_138 = {{7{_T_118[12]}},_T_118}; // @[FixedPointTypeClass.scala 31:68:@3320.4]
  assign _T_121 = $signed(_GEN_138) - $signed(_T_119); // @[FixedPointTypeClass.scala 31:68:@3320.4]
  assign _T_122 = _T_121[19:0]; // @[FixedPointTypeClass.scala 31:68:@3321.4]
  assign prods_3_real = $signed(_T_122); // @[FixedPointTypeClass.scala 31:68:@3322.4]
  assign _T_124 = $signed(_GEN_138) + $signed(_T_120); // @[FixedPointTypeClass.scala 21:58:@3323.4]
  assign _T_125 = _T_124[19:0]; // @[FixedPointTypeClass.scala 21:58:@3324.4]
  assign prods_3_imag = $signed(_T_125); // @[FixedPointTypeClass.scala 21:58:@3325.4]
  assign _T_212 = $signed(7'sh2f) + $signed(-7'sh2f); // @[FixedPointTypeClass.scala 21:58:@3395.4]
  assign _T_213 = _T_212[6:0]; // @[FixedPointTypeClass.scala 21:58:@3396.4]
  assign _T_214 = $signed(_T_213); // @[FixedPointTypeClass.scala 21:58:@3397.4]
  assign _T_215 = $signed(-7'sh2f) - $signed(7'sh2f); // @[FixedPointTypeClass.scala 31:68:@3398.4]
  assign _T_216 = _T_215[6:0]; // @[FixedPointTypeClass.scala 31:68:@3399.4]
  assign _T_217 = $signed(_T_216); // @[FixedPointTypeClass.scala 31:68:@3400.4]
  assign _T_218 = $signed(12'sh2f) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3401.4]
  assign _GEN_150 = {{5{_T_214[6]}},_T_214}; // @[FixedPointTypeClass.scala 43:59:@3402.4]
  assign _T_219 = $signed(_GEN_150) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3402.4]
  assign _GEN_151 = {{5{_T_217[6]}},_T_217}; // @[FixedPointTypeClass.scala 43:59:@3403.4]
  assign _T_220 = $signed(_GEN_151) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3403.4]
  assign _T_221 = $signed(_T_218) - $signed(_T_219); // @[FixedPointTypeClass.scala 31:68:@3404.4]
  assign _T_222 = _T_221[18:0]; // @[FixedPointTypeClass.scala 31:68:@3405.4]
  assign prods_7_real = $signed(_T_222); // @[FixedPointTypeClass.scala 31:68:@3406.4]
  assign _T_224 = $signed(_T_218) + $signed(_T_220); // @[FixedPointTypeClass.scala 21:58:@3407.4]
  assign _T_225 = _T_224[18:0]; // @[FixedPointTypeClass.scala 21:58:@3408.4]
  assign prods_7_imag = $signed(_T_225); // @[FixedPointTypeClass.scala 21:58:@3409.4]
  assign _T_237 = $signed(-9'sh88) + $signed(-9'sh2); // @[FixedPointTypeClass.scala 21:58:@3416.4]
  assign _T_238 = _T_237[8:0]; // @[FixedPointTypeClass.scala 21:58:@3417.4]
  assign _T_239 = $signed(_T_238); // @[FixedPointTypeClass.scala 21:58:@3418.4]
  assign _T_240 = $signed(-9'sh2) - $signed(-9'sh88); // @[FixedPointTypeClass.scala 31:68:@3419.4]
  assign _T_241 = _T_240[8:0]; // @[FixedPointTypeClass.scala 31:68:@3420.4]
  assign _T_242 = $signed(_T_241); // @[FixedPointTypeClass.scala 31:68:@3421.4]
  assign _T_243 = $signed(-12'sh88) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3422.4]
  assign _GEN_152 = {{3{_T_239[8]}},_T_239}; // @[FixedPointTypeClass.scala 43:59:@3423.4]
  assign _T_244 = $signed(_GEN_152) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3423.4]
  assign _GEN_153 = {{3{_T_242[8]}},_T_242}; // @[FixedPointTypeClass.scala 43:59:@3424.4]
  assign _T_245 = $signed(_GEN_153) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3424.4]
  assign _T_246 = $signed(_T_243) - $signed(_T_244); // @[FixedPointTypeClass.scala 31:68:@3425.4]
  assign _T_247 = _T_246[20:0]; // @[FixedPointTypeClass.scala 31:68:@3426.4]
  assign prods_8_real = $signed(_T_247); // @[FixedPointTypeClass.scala 31:68:@3427.4]
  assign _T_249 = $signed(_T_243) + $signed(_T_245); // @[FixedPointTypeClass.scala 21:58:@3428.4]
  assign _T_250 = _T_249[20:0]; // @[FixedPointTypeClass.scala 21:58:@3429.4]
  assign prods_8_imag = $signed(_T_250); // @[FixedPointTypeClass.scala 21:58:@3430.4]
  assign _T_262 = $signed(-8'she) + $signed(8'sh50); // @[FixedPointTypeClass.scala 21:58:@3437.4]
  assign _T_263 = _T_262[7:0]; // @[FixedPointTypeClass.scala 21:58:@3438.4]
  assign _T_264 = $signed(_T_263); // @[FixedPointTypeClass.scala 21:58:@3439.4]
  assign _T_265 = $signed(8'sh50) - $signed(-8'she); // @[FixedPointTypeClass.scala 31:68:@3440.4]
  assign _T_266 = _T_265[7:0]; // @[FixedPointTypeClass.scala 31:68:@3441.4]
  assign _T_267 = $signed(_T_266); // @[FixedPointTypeClass.scala 31:68:@3442.4]
  assign _T_268 = $signed(-12'she) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3443.4]
  assign _GEN_154 = {{4{_T_264[7]}},_T_264}; // @[FixedPointTypeClass.scala 43:59:@3444.4]
  assign _T_269 = $signed(_GEN_154) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3444.4]
  assign _GEN_155 = {{4{_T_267[7]}},_T_267}; // @[FixedPointTypeClass.scala 43:59:@3445.4]
  assign _T_270 = $signed(_GEN_155) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3445.4]
  assign _GEN_156 = {{3{_T_268[16]}},_T_268}; // @[FixedPointTypeClass.scala 31:68:@3446.4]
  assign _T_271 = $signed(_GEN_156) - $signed(_T_269); // @[FixedPointTypeClass.scala 31:68:@3446.4]
  assign _T_272 = _T_271[19:0]; // @[FixedPointTypeClass.scala 31:68:@3447.4]
  assign prods_9_real = $signed(_T_272); // @[FixedPointTypeClass.scala 31:68:@3448.4]
  assign _T_274 = $signed(_GEN_156) + $signed(_T_270); // @[FixedPointTypeClass.scala 21:58:@3449.4]
  assign _T_275 = _T_274[19:0]; // @[FixedPointTypeClass.scala 21:58:@3450.4]
  assign prods_9_imag = $signed(_T_275); // @[FixedPointTypeClass.scala 21:58:@3451.4]
  assign _T_287 = $signed(9'sh92) + $signed(9'shd); // @[FixedPointTypeClass.scala 21:58:@3458.4]
  assign _T_288 = _T_287[8:0]; // @[FixedPointTypeClass.scala 21:58:@3459.4]
  assign _T_289 = $signed(_T_288); // @[FixedPointTypeClass.scala 21:58:@3460.4]
  assign _T_290 = $signed(9'shd) - $signed(9'sh92); // @[FixedPointTypeClass.scala 31:68:@3461.4]
  assign _T_291 = _T_290[8:0]; // @[FixedPointTypeClass.scala 31:68:@3462.4]
  assign _T_292 = $signed(_T_291); // @[FixedPointTypeClass.scala 31:68:@3463.4]
  assign _T_293 = $signed(12'sh92) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3464.4]
  assign _GEN_158 = {{3{_T_289[8]}},_T_289}; // @[FixedPointTypeClass.scala 43:59:@3465.4]
  assign _T_294 = $signed(_GEN_158) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3465.4]
  assign _GEN_159 = {{3{_T_292[8]}},_T_292}; // @[FixedPointTypeClass.scala 43:59:@3466.4]
  assign _T_295 = $signed(_GEN_159) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3466.4]
  assign _T_296 = $signed(_T_293) - $signed(_T_294); // @[FixedPointTypeClass.scala 31:68:@3467.4]
  assign _T_297 = _T_296[20:0]; // @[FixedPointTypeClass.scala 31:68:@3468.4]
  assign prods_10_real = $signed(_T_297); // @[FixedPointTypeClass.scala 31:68:@3469.4]
  assign _T_299 = $signed(_T_293) + $signed(_T_295); // @[FixedPointTypeClass.scala 21:58:@3470.4]
  assign _T_300 = _T_299[20:0]; // @[FixedPointTypeClass.scala 21:58:@3471.4]
  assign prods_10_imag = $signed(_T_300); // @[FixedPointTypeClass.scala 21:58:@3472.4]
  assign _T_312 = $signed(8'sh5e) + $signed(8'sh0); // @[FixedPointTypeClass.scala 21:58:@3479.4]
  assign _T_313 = _T_312[7:0]; // @[FixedPointTypeClass.scala 21:58:@3480.4]
  assign _T_314 = $signed(_T_313); // @[FixedPointTypeClass.scala 21:58:@3481.4]
  assign _T_315 = $signed(8'sh0) - $signed(8'sh5e); // @[FixedPointTypeClass.scala 31:68:@3482.4]
  assign _T_316 = _T_315[7:0]; // @[FixedPointTypeClass.scala 31:68:@3483.4]
  assign _T_317 = $signed(_T_316); // @[FixedPointTypeClass.scala 31:68:@3484.4]
  assign _T_318 = $signed(12'sh5e) * $signed(_T_36); // @[FixedPointTypeClass.scala 43:59:@3485.4]
  assign _GEN_160 = {{4{_T_314[7]}},_T_314}; // @[FixedPointTypeClass.scala 43:59:@3486.4]
  assign _T_319 = $signed(_GEN_160) * $signed(io_in_bits_imag); // @[FixedPointTypeClass.scala 43:59:@3486.4]
  assign _GEN_161 = {{4{_T_317[7]}},_T_317}; // @[FixedPointTypeClass.scala 43:59:@3487.4]
  assign _T_320 = $signed(_GEN_161) * $signed(io_in_bits_real); // @[FixedPointTypeClass.scala 43:59:@3487.4]
  assign _T_321 = $signed(_T_318) - $signed(_T_319); // @[FixedPointTypeClass.scala 31:68:@3488.4]
  assign _T_322 = _T_321[19:0]; // @[FixedPointTypeClass.scala 31:68:@3489.4]
  assign prods_11_real = $signed(_T_322); // @[FixedPointTypeClass.scala 31:68:@3490.4]
  assign _T_324 = $signed(_T_318) + $signed(_T_320); // @[FixedPointTypeClass.scala 21:58:@3491.4]
  assign _T_325 = _T_324[19:0]; // @[FixedPointTypeClass.scala 21:58:@3492.4]
  assign prods_11_imag = $signed(_T_325); // @[FixedPointTypeClass.scala 21:58:@3493.4]
  assign _GEN_310 = {{10{regs_1_real[11]}},regs_1_real}; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  assign _GEN_311 = {{2{prods_1_real[19]}},prods_1_real}; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  assign _GEN_312 = $signed(_GEN_310) << 10; // @[FixedPointTypeClass.scala 21:58:@4653.6]
  assign _T_1760 = $signed(_GEN_311) + $signed(_GEN_312); // @[FixedPointTypeClass.scala 21:58:@4653.6]
  assign _T_1761 = _T_1760[21:0]; // @[FixedPointTypeClass.scala 21:58:@4654.6]
  assign _T_1762 = $signed(_T_1761); // @[FixedPointTypeClass.scala 21:58:@4655.6]
  assign _GEN_313 = {{10{regs_1_imag[11]}},regs_1_imag}; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  assign _GEN_314 = {{2{prods_1_imag[19]}},prods_1_imag}; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  assign _GEN_315 = $signed(_GEN_313) << 10; // @[FixedPointTypeClass.scala 21:58:@4656.6]
  assign _T_1763 = $signed(_GEN_314) + $signed(_GEN_315); // @[FixedPointTypeClass.scala 21:58:@4656.6]
  assign _T_1764 = _T_1763[21:0]; // @[FixedPointTypeClass.scala 21:58:@4657.6]
  assign _T_1765 = $signed(_T_1764); // @[FixedPointTypeClass.scala 21:58:@4658.6]
  assign _GEN_316 = {{10{regs_2_real[11]}},regs_2_real}; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  assign _GEN_317 = {{1{prods_2_real[20]}},prods_2_real}; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  assign _GEN_318 = $signed(_GEN_316) << 10; // @[FixedPointTypeClass.scala 21:58:@4664.6]
  assign _T_1774 = $signed(_GEN_317) + $signed(_GEN_318); // @[FixedPointTypeClass.scala 21:58:@4664.6]
  assign _T_1775 = _T_1774[21:0]; // @[FixedPointTypeClass.scala 21:58:@4665.6]
  assign _T_1776 = $signed(_T_1775); // @[FixedPointTypeClass.scala 21:58:@4666.6]
  assign _GEN_319 = {{10{regs_2_imag[11]}},regs_2_imag}; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  assign _GEN_320 = {{1{prods_2_imag[20]}},prods_2_imag}; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  assign _GEN_321 = $signed(_GEN_319) << 10; // @[FixedPointTypeClass.scala 21:58:@4667.6]
  assign _T_1777 = $signed(_GEN_320) + $signed(_GEN_321); // @[FixedPointTypeClass.scala 21:58:@4667.6]
  assign _T_1778 = _T_1777[21:0]; // @[FixedPointTypeClass.scala 21:58:@4668.6]
  assign _T_1779 = $signed(_T_1778); // @[FixedPointTypeClass.scala 21:58:@4669.6]
  assign _GEN_322 = {{10{regs_3_real[11]}},regs_3_real}; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  assign _GEN_323 = {{2{prods_3_real[19]}},prods_3_real}; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  assign _GEN_324 = $signed(_GEN_322) << 10; // @[FixedPointTypeClass.scala 21:58:@4675.6]
  assign _T_1788 = $signed(_GEN_323) + $signed(_GEN_324); // @[FixedPointTypeClass.scala 21:58:@4675.6]
  assign _T_1789 = _T_1788[21:0]; // @[FixedPointTypeClass.scala 21:58:@4676.6]
  assign _T_1790 = $signed(_T_1789); // @[FixedPointTypeClass.scala 21:58:@4677.6]
  assign _GEN_325 = {{10{regs_3_imag[11]}},regs_3_imag}; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  assign _GEN_326 = {{2{prods_3_imag[19]}},prods_3_imag}; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  assign _GEN_327 = $signed(_GEN_325) << 10; // @[FixedPointTypeClass.scala 21:58:@4678.6]
  assign _T_1791 = $signed(_GEN_326) + $signed(_GEN_327); // @[FixedPointTypeClass.scala 21:58:@4678.6]
  assign _T_1792 = _T_1791[21:0]; // @[FixedPointTypeClass.scala 21:58:@4679.6]
  assign _T_1793 = $signed(_T_1792); // @[FixedPointTypeClass.scala 21:58:@4680.6]
  assign _GEN_328 = {{10{regs_4_real[11]}},regs_4_real}; // @[FixedPointTypeClass.scala 21:58:@4686.6]
  assign _GEN_330 = $signed(_GEN_328) << 10; // @[FixedPointTypeClass.scala 21:58:@4686.6]
  assign _T_1802 = $signed(_GEN_317) + $signed(_GEN_330); // @[FixedPointTypeClass.scala 21:58:@4686.6]
  assign _T_1803 = _T_1802[21:0]; // @[FixedPointTypeClass.scala 21:58:@4687.6]
  assign _T_1804 = $signed(_T_1803); // @[FixedPointTypeClass.scala 21:58:@4688.6]
  assign _GEN_331 = {{10{regs_4_imag[11]}},regs_4_imag}; // @[FixedPointTypeClass.scala 21:58:@4689.6]
  assign _GEN_333 = $signed(_GEN_331) << 10; // @[FixedPointTypeClass.scala 21:58:@4689.6]
  assign _T_1805 = $signed(_GEN_320) + $signed(_GEN_333); // @[FixedPointTypeClass.scala 21:58:@4689.6]
  assign _T_1806 = _T_1805[21:0]; // @[FixedPointTypeClass.scala 21:58:@4690.6]
  assign _T_1807 = $signed(_T_1806); // @[FixedPointTypeClass.scala 21:58:@4691.6]
  assign _GEN_334 = {{10{regs_5_real[11]}},regs_5_real}; // @[FixedPointTypeClass.scala 21:58:@4697.6]
  assign _GEN_336 = $signed(_GEN_334) << 10; // @[FixedPointTypeClass.scala 21:58:@4697.6]
  assign _T_1816 = $signed(_GEN_311) + $signed(_GEN_336); // @[FixedPointTypeClass.scala 21:58:@4697.6]
  assign _T_1817 = _T_1816[21:0]; // @[FixedPointTypeClass.scala 21:58:@4698.6]
  assign _T_1818 = $signed(_T_1817); // @[FixedPointTypeClass.scala 21:58:@4699.6]
  assign _GEN_337 = {{10{regs_5_imag[11]}},regs_5_imag}; // @[FixedPointTypeClass.scala 21:58:@4700.6]
  assign _GEN_339 = $signed(_GEN_337) << 10; // @[FixedPointTypeClass.scala 21:58:@4700.6]
  assign _T_1819 = $signed(_GEN_314) + $signed(_GEN_339); // @[FixedPointTypeClass.scala 21:58:@4700.6]
  assign _T_1820 = _T_1819[21:0]; // @[FixedPointTypeClass.scala 21:58:@4701.6]
  assign _T_1821 = $signed(_T_1820); // @[FixedPointTypeClass.scala 21:58:@4702.6]
  assign _GEN_340 = {{10{regs_6_real[11]}},regs_6_real}; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  assign _GEN_341 = {{1{prods_0_real[20]}},prods_0_real}; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  assign _GEN_342 = $signed(_GEN_340) << 10; // @[FixedPointTypeClass.scala 21:58:@4708.6]
  assign _T_1830 = $signed(_GEN_341) + $signed(_GEN_342); // @[FixedPointTypeClass.scala 21:58:@4708.6]
  assign _T_1831 = _T_1830[21:0]; // @[FixedPointTypeClass.scala 21:58:@4709.6]
  assign _T_1832 = $signed(_T_1831); // @[FixedPointTypeClass.scala 21:58:@4710.6]
  assign _GEN_343 = {{10{regs_6_imag[11]}},regs_6_imag}; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  assign _GEN_344 = {{1{prods_0_imag[20]}},prods_0_imag}; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  assign _GEN_345 = $signed(_GEN_343) << 10; // @[FixedPointTypeClass.scala 21:58:@4711.6]
  assign _T_1833 = $signed(_GEN_344) + $signed(_GEN_345); // @[FixedPointTypeClass.scala 21:58:@4711.6]
  assign _T_1834 = _T_1833[21:0]; // @[FixedPointTypeClass.scala 21:58:@4712.6]
  assign _T_1835 = $signed(_T_1834); // @[FixedPointTypeClass.scala 21:58:@4713.6]
  assign _GEN_346 = {{10{regs_7_real[11]}},regs_7_real}; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  assign _GEN_347 = {{3{prods_7_real[18]}},prods_7_real}; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  assign _GEN_348 = $signed(_GEN_346) << 10; // @[FixedPointTypeClass.scala 21:58:@4719.6]
  assign _T_1844 = $signed(_GEN_347) + $signed(_GEN_348); // @[FixedPointTypeClass.scala 21:58:@4719.6]
  assign _T_1845 = _T_1844[21:0]; // @[FixedPointTypeClass.scala 21:58:@4720.6]
  assign _T_1846 = $signed(_T_1845); // @[FixedPointTypeClass.scala 21:58:@4721.6]
  assign _GEN_349 = {{10{regs_7_imag[11]}},regs_7_imag}; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  assign _GEN_350 = {{3{prods_7_imag[18]}},prods_7_imag}; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  assign _GEN_351 = $signed(_GEN_349) << 10; // @[FixedPointTypeClass.scala 21:58:@4722.6]
  assign _T_1847 = $signed(_GEN_350) + $signed(_GEN_351); // @[FixedPointTypeClass.scala 21:58:@4722.6]
  assign _T_1848 = _T_1847[21:0]; // @[FixedPointTypeClass.scala 21:58:@4723.6]
  assign _T_1849 = $signed(_T_1848); // @[FixedPointTypeClass.scala 21:58:@4724.6]
  assign _GEN_352 = {{10{regs_8_real[11]}},regs_8_real}; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  assign _GEN_353 = {{1{prods_8_real[20]}},prods_8_real}; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  assign _GEN_354 = $signed(_GEN_352) << 10; // @[FixedPointTypeClass.scala 21:58:@4730.6]
  assign _T_1858 = $signed(_GEN_353) + $signed(_GEN_354); // @[FixedPointTypeClass.scala 21:58:@4730.6]
  assign _T_1859 = _T_1858[21:0]; // @[FixedPointTypeClass.scala 21:58:@4731.6]
  assign _T_1860 = $signed(_T_1859); // @[FixedPointTypeClass.scala 21:58:@4732.6]
  assign _GEN_355 = {{10{regs_8_imag[11]}},regs_8_imag}; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  assign _GEN_356 = {{1{prods_8_imag[20]}},prods_8_imag}; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  assign _GEN_357 = $signed(_GEN_355) << 10; // @[FixedPointTypeClass.scala 21:58:@4733.6]
  assign _T_1861 = $signed(_GEN_356) + $signed(_GEN_357); // @[FixedPointTypeClass.scala 21:58:@4733.6]
  assign _T_1862 = _T_1861[21:0]; // @[FixedPointTypeClass.scala 21:58:@4734.6]
  assign _T_1863 = $signed(_T_1862); // @[FixedPointTypeClass.scala 21:58:@4735.6]
  assign _GEN_358 = {{10{regs_9_real[11]}},regs_9_real}; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  assign _GEN_359 = {{2{prods_9_real[19]}},prods_9_real}; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  assign _GEN_360 = $signed(_GEN_358) << 10; // @[FixedPointTypeClass.scala 21:58:@4741.6]
  assign _T_1872 = $signed(_GEN_359) + $signed(_GEN_360); // @[FixedPointTypeClass.scala 21:58:@4741.6]
  assign _T_1873 = _T_1872[21:0]; // @[FixedPointTypeClass.scala 21:58:@4742.6]
  assign _T_1874 = $signed(_T_1873); // @[FixedPointTypeClass.scala 21:58:@4743.6]
  assign _GEN_361 = {{10{regs_9_imag[11]}},regs_9_imag}; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  assign _GEN_362 = {{2{prods_9_imag[19]}},prods_9_imag}; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  assign _GEN_363 = $signed(_GEN_361) << 10; // @[FixedPointTypeClass.scala 21:58:@4744.6]
  assign _T_1875 = $signed(_GEN_362) + $signed(_GEN_363); // @[FixedPointTypeClass.scala 21:58:@4744.6]
  assign _T_1876 = _T_1875[21:0]; // @[FixedPointTypeClass.scala 21:58:@4745.6]
  assign _T_1877 = $signed(_T_1876); // @[FixedPointTypeClass.scala 21:58:@4746.6]
  assign _GEN_364 = {{10{regs_10_real[11]}},regs_10_real}; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  assign _GEN_365 = {{1{prods_10_real[20]}},prods_10_real}; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  assign _GEN_366 = $signed(_GEN_364) << 10; // @[FixedPointTypeClass.scala 21:58:@4752.6]
  assign _T_1886 = $signed(_GEN_365) + $signed(_GEN_366); // @[FixedPointTypeClass.scala 21:58:@4752.6]
  assign _T_1887 = _T_1886[21:0]; // @[FixedPointTypeClass.scala 21:58:@4753.6]
  assign _T_1888 = $signed(_T_1887); // @[FixedPointTypeClass.scala 21:58:@4754.6]
  assign _GEN_367 = {{10{regs_10_imag[11]}},regs_10_imag}; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  assign _GEN_368 = {{1{prods_10_imag[20]}},prods_10_imag}; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  assign _GEN_369 = $signed(_GEN_367) << 10; // @[FixedPointTypeClass.scala 21:58:@4755.6]
  assign _T_1889 = $signed(_GEN_368) + $signed(_GEN_369); // @[FixedPointTypeClass.scala 21:58:@4755.6]
  assign _T_1890 = _T_1889[21:0]; // @[FixedPointTypeClass.scala 21:58:@4756.6]
  assign _T_1891 = $signed(_T_1890); // @[FixedPointTypeClass.scala 21:58:@4757.6]
  assign _GEN_370 = {{10{regs_11_real[11]}},regs_11_real}; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  assign _GEN_371 = {{2{prods_11_real[19]}},prods_11_real}; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  assign _GEN_372 = $signed(_GEN_370) << 10; // @[FixedPointTypeClass.scala 21:58:@4763.6]
  assign _T_1900 = $signed(_GEN_371) + $signed(_GEN_372); // @[FixedPointTypeClass.scala 21:58:@4763.6]
  assign _T_1901 = _T_1900[21:0]; // @[FixedPointTypeClass.scala 21:58:@4764.6]
  assign _T_1902 = $signed(_T_1901); // @[FixedPointTypeClass.scala 21:58:@4765.6]
  assign _GEN_373 = {{10{regs_11_imag[11]}},regs_11_imag}; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  assign _GEN_374 = {{2{prods_11_imag[19]}},prods_11_imag}; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  assign _GEN_375 = $signed(_GEN_373) << 10; // @[FixedPointTypeClass.scala 21:58:@4766.6]
  assign _T_1903 = $signed(_GEN_374) + $signed(_GEN_375); // @[FixedPointTypeClass.scala 21:58:@4766.6]
  assign _T_1904 = _T_1903[21:0]; // @[FixedPointTypeClass.scala 21:58:@4767.6]
  assign _T_1905 = $signed(_T_1904); // @[FixedPointTypeClass.scala 21:58:@4768.6]
  assign _GEN_376 = {{10{regs_12_real[11]}},regs_12_real}; // @[FixedPointTypeClass.scala 21:58:@4774.6]
  assign _GEN_378 = $signed(_GEN_376) << 10; // @[FixedPointTypeClass.scala 21:58:@4774.6]
  assign _T_1914 = $signed(_GEN_365) + $signed(_GEN_378); // @[FixedPointTypeClass.scala 21:58:@4774.6]
  assign _T_1915 = _T_1914[21:0]; // @[FixedPointTypeClass.scala 21:58:@4775.6]
  assign _T_1916 = $signed(_T_1915); // @[FixedPointTypeClass.scala 21:58:@4776.6]
  assign _GEN_379 = {{10{regs_12_imag[11]}},regs_12_imag}; // @[FixedPointTypeClass.scala 21:58:@4777.6]
  assign _GEN_381 = $signed(_GEN_379) << 10; // @[FixedPointTypeClass.scala 21:58:@4777.6]
  assign _T_1917 = $signed(_GEN_368) + $signed(_GEN_381); // @[FixedPointTypeClass.scala 21:58:@4777.6]
  assign _T_1918 = _T_1917[21:0]; // @[FixedPointTypeClass.scala 21:58:@4778.6]
  assign _T_1919 = $signed(_T_1918); // @[FixedPointTypeClass.scala 21:58:@4779.6]
  assign _GEN_382 = {{10{regs_13_real[11]}},regs_13_real}; // @[FixedPointTypeClass.scala 21:58:@4785.6]
  assign _GEN_384 = $signed(_GEN_382) << 10; // @[FixedPointTypeClass.scala 21:58:@4785.6]
  assign _T_1928 = $signed(_GEN_359) + $signed(_GEN_384); // @[FixedPointTypeClass.scala 21:58:@4785.6]
  assign _T_1929 = _T_1928[21:0]; // @[FixedPointTypeClass.scala 21:58:@4786.6]
  assign _T_1930 = $signed(_T_1929); // @[FixedPointTypeClass.scala 21:58:@4787.6]
  assign _GEN_385 = {{10{regs_13_imag[11]}},regs_13_imag}; // @[FixedPointTypeClass.scala 21:58:@4788.6]
  assign _GEN_387 = $signed(_GEN_385) << 10; // @[FixedPointTypeClass.scala 21:58:@4788.6]
  assign _T_1931 = $signed(_GEN_362) + $signed(_GEN_387); // @[FixedPointTypeClass.scala 21:58:@4788.6]
  assign _T_1932 = _T_1931[21:0]; // @[FixedPointTypeClass.scala 21:58:@4789.6]
  assign _T_1933 = $signed(_T_1932); // @[FixedPointTypeClass.scala 21:58:@4790.6]
  assign _GEN_388 = {{10{regs_14_real[11]}},regs_14_real}; // @[FixedPointTypeClass.scala 21:58:@4796.6]
  assign _GEN_390 = $signed(_GEN_388) << 10; // @[FixedPointTypeClass.scala 21:58:@4796.6]
  assign _T_1942 = $signed(_GEN_353) + $signed(_GEN_390); // @[FixedPointTypeClass.scala 21:58:@4796.6]
  assign _T_1943 = _T_1942[21:0]; // @[FixedPointTypeClass.scala 21:58:@4797.6]
  assign _T_1944 = $signed(_T_1943); // @[FixedPointTypeClass.scala 21:58:@4798.6]
  assign _GEN_391 = {{10{regs_14_imag[11]}},regs_14_imag}; // @[FixedPointTypeClass.scala 21:58:@4799.6]
  assign _GEN_393 = $signed(_GEN_391) << 10; // @[FixedPointTypeClass.scala 21:58:@4799.6]
  assign _T_1945 = $signed(_GEN_356) + $signed(_GEN_393); // @[FixedPointTypeClass.scala 21:58:@4799.6]
  assign _T_1946 = _T_1945[21:0]; // @[FixedPointTypeClass.scala 21:58:@4800.6]
  assign _T_1947 = $signed(_T_1946); // @[FixedPointTypeClass.scala 21:58:@4801.6]
  assign _GEN_394 = {{10{regs_15_real[11]}},regs_15_real}; // @[FixedPointTypeClass.scala 21:58:@4807.6]
  assign _GEN_396 = $signed(_GEN_394) << 10; // @[FixedPointTypeClass.scala 21:58:@4807.6]
  assign _T_1956 = $signed(_GEN_347) + $signed(_GEN_396); // @[FixedPointTypeClass.scala 21:58:@4807.6]
  assign _T_1957 = _T_1956[21:0]; // @[FixedPointTypeClass.scala 21:58:@4808.6]
  assign _T_1958 = $signed(_T_1957); // @[FixedPointTypeClass.scala 21:58:@4809.6]
  assign _GEN_397 = {{10{regs_15_imag[11]}},regs_15_imag}; // @[FixedPointTypeClass.scala 21:58:@4810.6]
  assign _GEN_399 = $signed(_GEN_397) << 10; // @[FixedPointTypeClass.scala 21:58:@4810.6]
  assign _T_1959 = $signed(_GEN_350) + $signed(_GEN_399); // @[FixedPointTypeClass.scala 21:58:@4810.6]
  assign _T_1960 = _T_1959[21:0]; // @[FixedPointTypeClass.scala 21:58:@4811.6]
  assign _T_1961 = $signed(_T_1960); // @[FixedPointTypeClass.scala 21:58:@4812.6]
  assign _GEN_400 = {{10{regs_16_real[11]}},regs_16_real}; // @[FixedPointTypeClass.scala 21:58:@4818.6]
  assign _GEN_402 = $signed(_GEN_400) << 10; // @[FixedPointTypeClass.scala 21:58:@4818.6]
  assign _T_1970 = $signed(_GEN_341) + $signed(_GEN_402); // @[FixedPointTypeClass.scala 21:58:@4818.6]
  assign _T_1971 = _T_1970[21:0]; // @[FixedPointTypeClass.scala 21:58:@4819.6]
  assign _T_1972 = $signed(_T_1971); // @[FixedPointTypeClass.scala 21:58:@4820.6]
  assign _GEN_403 = {{10{regs_16_imag[11]}},regs_16_imag}; // @[FixedPointTypeClass.scala 21:58:@4821.6]
  assign _GEN_405 = $signed(_GEN_403) << 10; // @[FixedPointTypeClass.scala 21:58:@4821.6]
  assign _T_1973 = $signed(_GEN_344) + $signed(_GEN_405); // @[FixedPointTypeClass.scala 21:58:@4821.6]
  assign _T_1974 = _T_1973[21:0]; // @[FixedPointTypeClass.scala 21:58:@4822.6]
  assign _T_1975 = $signed(_T_1974); // @[FixedPointTypeClass.scala 21:58:@4823.6]
  assign _GEN_406 = {{10{regs_17_real[11]}},regs_17_real}; // @[FixedPointTypeClass.scala 21:58:@4829.6]
  assign _GEN_408 = $signed(_GEN_406) << 10; // @[FixedPointTypeClass.scala 21:58:@4829.6]
  assign _T_1984 = $signed(_GEN_311) + $signed(_GEN_408); // @[FixedPointTypeClass.scala 21:58:@4829.6]
  assign _T_1985 = _T_1984[21:0]; // @[FixedPointTypeClass.scala 21:58:@4830.6]
  assign _T_1986 = $signed(_T_1985); // @[FixedPointTypeClass.scala 21:58:@4831.6]
  assign _GEN_409 = {{10{regs_17_imag[11]}},regs_17_imag}; // @[FixedPointTypeClass.scala 21:58:@4832.6]
  assign _GEN_411 = $signed(_GEN_409) << 10; // @[FixedPointTypeClass.scala 21:58:@4832.6]
  assign _T_1987 = $signed(_GEN_314) + $signed(_GEN_411); // @[FixedPointTypeClass.scala 21:58:@4832.6]
  assign _T_1988 = _T_1987[21:0]; // @[FixedPointTypeClass.scala 21:58:@4833.6]
  assign _T_1989 = $signed(_T_1988); // @[FixedPointTypeClass.scala 21:58:@4834.6]
  assign _GEN_412 = {{10{regs_18_real[11]}},regs_18_real}; // @[FixedPointTypeClass.scala 21:58:@4840.6]
  assign _GEN_414 = $signed(_GEN_412) << 10; // @[FixedPointTypeClass.scala 21:58:@4840.6]
  assign _T_1998 = $signed(_GEN_317) + $signed(_GEN_414); // @[FixedPointTypeClass.scala 21:58:@4840.6]
  assign _T_1999 = _T_1998[21:0]; // @[FixedPointTypeClass.scala 21:58:@4841.6]
  assign _T_2000 = $signed(_T_1999); // @[FixedPointTypeClass.scala 21:58:@4842.6]
  assign _GEN_415 = {{10{regs_18_imag[11]}},regs_18_imag}; // @[FixedPointTypeClass.scala 21:58:@4843.6]
  assign _GEN_417 = $signed(_GEN_415) << 10; // @[FixedPointTypeClass.scala 21:58:@4843.6]
  assign _T_2001 = $signed(_GEN_320) + $signed(_GEN_417); // @[FixedPointTypeClass.scala 21:58:@4843.6]
  assign _T_2002 = _T_2001[21:0]; // @[FixedPointTypeClass.scala 21:58:@4844.6]
  assign _T_2003 = $signed(_T_2002); // @[FixedPointTypeClass.scala 21:58:@4845.6]
  assign _GEN_418 = {{10{regs_19_real[11]}},regs_19_real}; // @[FixedPointTypeClass.scala 21:58:@4851.6]
  assign _GEN_420 = $signed(_GEN_418) << 10; // @[FixedPointTypeClass.scala 21:58:@4851.6]
  assign _T_2012 = $signed(_GEN_323) + $signed(_GEN_420); // @[FixedPointTypeClass.scala 21:58:@4851.6]
  assign _T_2013 = _T_2012[21:0]; // @[FixedPointTypeClass.scala 21:58:@4852.6]
  assign _T_2014 = $signed(_T_2013); // @[FixedPointTypeClass.scala 21:58:@4853.6]
  assign _GEN_421 = {{10{regs_19_imag[11]}},regs_19_imag}; // @[FixedPointTypeClass.scala 21:58:@4854.6]
  assign _GEN_423 = $signed(_GEN_421) << 10; // @[FixedPointTypeClass.scala 21:58:@4854.6]
  assign _T_2015 = $signed(_GEN_326) + $signed(_GEN_423); // @[FixedPointTypeClass.scala 21:58:@4854.6]
  assign _T_2016 = _T_2015[21:0]; // @[FixedPointTypeClass.scala 21:58:@4855.6]
  assign _T_2017 = $signed(_T_2016); // @[FixedPointTypeClass.scala 21:58:@4856.6]
  assign _GEN_424 = {{10{regs_20_real[11]}},regs_20_real}; // @[FixedPointTypeClass.scala 21:58:@4862.6]
  assign _GEN_426 = $signed(_GEN_424) << 10; // @[FixedPointTypeClass.scala 21:58:@4862.6]
  assign _T_2026 = $signed(_GEN_317) + $signed(_GEN_426); // @[FixedPointTypeClass.scala 21:58:@4862.6]
  assign _T_2027 = _T_2026[21:0]; // @[FixedPointTypeClass.scala 21:58:@4863.6]
  assign _T_2028 = $signed(_T_2027); // @[FixedPointTypeClass.scala 21:58:@4864.6]
  assign _GEN_427 = {{10{regs_20_imag[11]}},regs_20_imag}; // @[FixedPointTypeClass.scala 21:58:@4865.6]
  assign _GEN_429 = $signed(_GEN_427) << 10; // @[FixedPointTypeClass.scala 21:58:@4865.6]
  assign _T_2029 = $signed(_GEN_320) + $signed(_GEN_429); // @[FixedPointTypeClass.scala 21:58:@4865.6]
  assign _T_2030 = _T_2029[21:0]; // @[FixedPointTypeClass.scala 21:58:@4866.6]
  assign _T_2031 = $signed(_T_2030); // @[FixedPointTypeClass.scala 21:58:@4867.6]
  assign _GEN_430 = {{10{regs_21_real[11]}},regs_21_real}; // @[FixedPointTypeClass.scala 21:58:@4873.6]
  assign _GEN_432 = $signed(_GEN_430) << 10; // @[FixedPointTypeClass.scala 21:58:@4873.6]
  assign _T_2040 = $signed(_GEN_311) + $signed(_GEN_432); // @[FixedPointTypeClass.scala 21:58:@4873.6]
  assign _T_2041 = _T_2040[21:0]; // @[FixedPointTypeClass.scala 21:58:@4874.6]
  assign _T_2042 = $signed(_T_2041); // @[FixedPointTypeClass.scala 21:58:@4875.6]
  assign _GEN_433 = {{10{regs_21_imag[11]}},regs_21_imag}; // @[FixedPointTypeClass.scala 21:58:@4876.6]
  assign _GEN_435 = $signed(_GEN_433) << 10; // @[FixedPointTypeClass.scala 21:58:@4876.6]
  assign _T_2043 = $signed(_GEN_314) + $signed(_GEN_435); // @[FixedPointTypeClass.scala 21:58:@4876.6]
  assign _T_2044 = _T_2043[21:0]; // @[FixedPointTypeClass.scala 21:58:@4877.6]
  assign _T_2045 = $signed(_T_2044); // @[FixedPointTypeClass.scala 21:58:@4878.6]
  assign _GEN_436 = {{10{regs_22_real[11]}},regs_22_real}; // @[FixedPointTypeClass.scala 21:58:@4884.6]
  assign _GEN_438 = $signed(_GEN_436) << 10; // @[FixedPointTypeClass.scala 21:58:@4884.6]
  assign _T_2054 = $signed(_GEN_341) + $signed(_GEN_438); // @[FixedPointTypeClass.scala 21:58:@4884.6]
  assign _T_2055 = _T_2054[21:0]; // @[FixedPointTypeClass.scala 21:58:@4885.6]
  assign _T_2056 = $signed(_T_2055); // @[FixedPointTypeClass.scala 21:58:@4886.6]
  assign _GEN_439 = {{10{regs_22_imag[11]}},regs_22_imag}; // @[FixedPointTypeClass.scala 21:58:@4887.6]
  assign _GEN_441 = $signed(_GEN_439) << 10; // @[FixedPointTypeClass.scala 21:58:@4887.6]
  assign _T_2057 = $signed(_GEN_344) + $signed(_GEN_441); // @[FixedPointTypeClass.scala 21:58:@4887.6]
  assign _T_2058 = _T_2057[21:0]; // @[FixedPointTypeClass.scala 21:58:@4888.6]
  assign _T_2059 = $signed(_T_2058); // @[FixedPointTypeClass.scala 21:58:@4889.6]
  assign _GEN_442 = {{10{regs_23_real[11]}},regs_23_real}; // @[FixedPointTypeClass.scala 21:58:@4895.6]
  assign _GEN_444 = $signed(_GEN_442) << 10; // @[FixedPointTypeClass.scala 21:58:@4895.6]
  assign _T_2068 = $signed(_GEN_347) + $signed(_GEN_444); // @[FixedPointTypeClass.scala 21:58:@4895.6]
  assign _T_2069 = _T_2068[21:0]; // @[FixedPointTypeClass.scala 21:58:@4896.6]
  assign _T_2070 = $signed(_T_2069); // @[FixedPointTypeClass.scala 21:58:@4897.6]
  assign _GEN_445 = {{10{regs_23_imag[11]}},regs_23_imag}; // @[FixedPointTypeClass.scala 21:58:@4898.6]
  assign _GEN_447 = $signed(_GEN_445) << 10; // @[FixedPointTypeClass.scala 21:58:@4898.6]
  assign _T_2071 = $signed(_GEN_350) + $signed(_GEN_447); // @[FixedPointTypeClass.scala 21:58:@4898.6]
  assign _T_2072 = _T_2071[21:0]; // @[FixedPointTypeClass.scala 21:58:@4899.6]
  assign _T_2073 = $signed(_T_2072); // @[FixedPointTypeClass.scala 21:58:@4900.6]
  assign _GEN_448 = {{10{regs_24_real[11]}},regs_24_real}; // @[FixedPointTypeClass.scala 21:58:@4906.6]
  assign _GEN_450 = $signed(_GEN_448) << 10; // @[FixedPointTypeClass.scala 21:58:@4906.6]
  assign _T_2082 = $signed(_GEN_353) + $signed(_GEN_450); // @[FixedPointTypeClass.scala 21:58:@4906.6]
  assign _T_2083 = _T_2082[21:0]; // @[FixedPointTypeClass.scala 21:58:@4907.6]
  assign _T_2084 = $signed(_T_2083); // @[FixedPointTypeClass.scala 21:58:@4908.6]
  assign _GEN_451 = {{10{regs_24_imag[11]}},regs_24_imag}; // @[FixedPointTypeClass.scala 21:58:@4909.6]
  assign _GEN_453 = $signed(_GEN_451) << 10; // @[FixedPointTypeClass.scala 21:58:@4909.6]
  assign _T_2085 = $signed(_GEN_356) + $signed(_GEN_453); // @[FixedPointTypeClass.scala 21:58:@4909.6]
  assign _T_2086 = _T_2085[21:0]; // @[FixedPointTypeClass.scala 21:58:@4910.6]
  assign _T_2087 = $signed(_T_2086); // @[FixedPointTypeClass.scala 21:58:@4911.6]
  assign _GEN_454 = {{10{regs_25_real[11]}},regs_25_real}; // @[FixedPointTypeClass.scala 21:58:@4917.6]
  assign _GEN_456 = $signed(_GEN_454) << 10; // @[FixedPointTypeClass.scala 21:58:@4917.6]
  assign _T_2096 = $signed(_GEN_359) + $signed(_GEN_456); // @[FixedPointTypeClass.scala 21:58:@4917.6]
  assign _T_2097 = _T_2096[21:0]; // @[FixedPointTypeClass.scala 21:58:@4918.6]
  assign _T_2098 = $signed(_T_2097); // @[FixedPointTypeClass.scala 21:58:@4919.6]
  assign _GEN_457 = {{10{regs_25_imag[11]}},regs_25_imag}; // @[FixedPointTypeClass.scala 21:58:@4920.6]
  assign _GEN_459 = $signed(_GEN_457) << 10; // @[FixedPointTypeClass.scala 21:58:@4920.6]
  assign _T_2099 = $signed(_GEN_362) + $signed(_GEN_459); // @[FixedPointTypeClass.scala 21:58:@4920.6]
  assign _T_2100 = _T_2099[21:0]; // @[FixedPointTypeClass.scala 21:58:@4921.6]
  assign _T_2101 = $signed(_T_2100); // @[FixedPointTypeClass.scala 21:58:@4922.6]
  assign _GEN_460 = {{10{regs_26_real[11]}},regs_26_real}; // @[FixedPointTypeClass.scala 21:58:@4928.6]
  assign _GEN_462 = $signed(_GEN_460) << 10; // @[FixedPointTypeClass.scala 21:58:@4928.6]
  assign _T_2110 = $signed(_GEN_365) + $signed(_GEN_462); // @[FixedPointTypeClass.scala 21:58:@4928.6]
  assign _T_2111 = _T_2110[21:0]; // @[FixedPointTypeClass.scala 21:58:@4929.6]
  assign _T_2112 = $signed(_T_2111); // @[FixedPointTypeClass.scala 21:58:@4930.6]
  assign _GEN_463 = {{10{regs_26_imag[11]}},regs_26_imag}; // @[FixedPointTypeClass.scala 21:58:@4931.6]
  assign _GEN_465 = $signed(_GEN_463) << 10; // @[FixedPointTypeClass.scala 21:58:@4931.6]
  assign _T_2113 = $signed(_GEN_368) + $signed(_GEN_465); // @[FixedPointTypeClass.scala 21:58:@4931.6]
  assign _T_2114 = _T_2113[21:0]; // @[FixedPointTypeClass.scala 21:58:@4932.6]
  assign _T_2115 = $signed(_T_2114); // @[FixedPointTypeClass.scala 21:58:@4933.6]
  assign _GEN_466 = {{10{regs_27_real[11]}},regs_27_real}; // @[FixedPointTypeClass.scala 21:58:@4939.6]
  assign _GEN_468 = $signed(_GEN_466) << 10; // @[FixedPointTypeClass.scala 21:58:@4939.6]
  assign _T_2124 = $signed(_GEN_371) + $signed(_GEN_468); // @[FixedPointTypeClass.scala 21:58:@4939.6]
  assign _T_2125 = _T_2124[21:0]; // @[FixedPointTypeClass.scala 21:58:@4940.6]
  assign _T_2126 = $signed(_T_2125); // @[FixedPointTypeClass.scala 21:58:@4941.6]
  assign _GEN_469 = {{10{regs_27_imag[11]}},regs_27_imag}; // @[FixedPointTypeClass.scala 21:58:@4942.6]
  assign _GEN_471 = $signed(_GEN_469) << 10; // @[FixedPointTypeClass.scala 21:58:@4942.6]
  assign _T_2127 = $signed(_GEN_374) + $signed(_GEN_471); // @[FixedPointTypeClass.scala 21:58:@4942.6]
  assign _T_2128 = _T_2127[21:0]; // @[FixedPointTypeClass.scala 21:58:@4943.6]
  assign _T_2129 = $signed(_T_2128); // @[FixedPointTypeClass.scala 21:58:@4944.6]
  assign _GEN_472 = {{10{regs_28_real[11]}},regs_28_real}; // @[FixedPointTypeClass.scala 21:58:@4950.6]
  assign _GEN_474 = $signed(_GEN_472) << 10; // @[FixedPointTypeClass.scala 21:58:@4950.6]
  assign _T_2138 = $signed(_GEN_365) + $signed(_GEN_474); // @[FixedPointTypeClass.scala 21:58:@4950.6]
  assign _T_2139 = _T_2138[21:0]; // @[FixedPointTypeClass.scala 21:58:@4951.6]
  assign _T_2140 = $signed(_T_2139); // @[FixedPointTypeClass.scala 21:58:@4952.6]
  assign _GEN_475 = {{10{regs_28_imag[11]}},regs_28_imag}; // @[FixedPointTypeClass.scala 21:58:@4953.6]
  assign _GEN_477 = $signed(_GEN_475) << 10; // @[FixedPointTypeClass.scala 21:58:@4953.6]
  assign _T_2141 = $signed(_GEN_368) + $signed(_GEN_477); // @[FixedPointTypeClass.scala 21:58:@4953.6]
  assign _T_2142 = _T_2141[21:0]; // @[FixedPointTypeClass.scala 21:58:@4954.6]
  assign _T_2143 = $signed(_T_2142); // @[FixedPointTypeClass.scala 21:58:@4955.6]
  assign _GEN_478 = {{10{regs_29_real[11]}},regs_29_real}; // @[FixedPointTypeClass.scala 21:58:@4961.6]
  assign _GEN_480 = $signed(_GEN_478) << 10; // @[FixedPointTypeClass.scala 21:58:@4961.6]
  assign _T_2152 = $signed(_GEN_359) + $signed(_GEN_480); // @[FixedPointTypeClass.scala 21:58:@4961.6]
  assign _T_2153 = _T_2152[21:0]; // @[FixedPointTypeClass.scala 21:58:@4962.6]
  assign _T_2154 = $signed(_T_2153); // @[FixedPointTypeClass.scala 21:58:@4963.6]
  assign _GEN_481 = {{10{regs_29_imag[11]}},regs_29_imag}; // @[FixedPointTypeClass.scala 21:58:@4964.6]
  assign _GEN_483 = $signed(_GEN_481) << 10; // @[FixedPointTypeClass.scala 21:58:@4964.6]
  assign _T_2155 = $signed(_GEN_362) + $signed(_GEN_483); // @[FixedPointTypeClass.scala 21:58:@4964.6]
  assign _T_2156 = _T_2155[21:0]; // @[FixedPointTypeClass.scala 21:58:@4965.6]
  assign _T_2157 = $signed(_T_2156); // @[FixedPointTypeClass.scala 21:58:@4966.6]
  assign _GEN_484 = {{10{regs_30_real[11]}},regs_30_real}; // @[FixedPointTypeClass.scala 21:58:@4972.6]
  assign _GEN_486 = $signed(_GEN_484) << 10; // @[FixedPointTypeClass.scala 21:58:@4972.6]
  assign _T_2166 = $signed(_GEN_353) + $signed(_GEN_486); // @[FixedPointTypeClass.scala 21:58:@4972.6]
  assign _T_2167 = _T_2166[21:0]; // @[FixedPointTypeClass.scala 21:58:@4973.6]
  assign _T_2168 = $signed(_T_2167); // @[FixedPointTypeClass.scala 21:58:@4974.6]
  assign _GEN_487 = {{10{regs_30_imag[11]}},regs_30_imag}; // @[FixedPointTypeClass.scala 21:58:@4975.6]
  assign _GEN_489 = $signed(_GEN_487) << 10; // @[FixedPointTypeClass.scala 21:58:@4975.6]
  assign _T_2169 = $signed(_GEN_356) + $signed(_GEN_489); // @[FixedPointTypeClass.scala 21:58:@4975.6]
  assign _T_2170 = _T_2169[21:0]; // @[FixedPointTypeClass.scala 21:58:@4976.6]
  assign _T_2171 = $signed(_T_2170); // @[FixedPointTypeClass.scala 21:58:@4977.6]
  assign _GEN_490 = {{10{regs_31_real[11]}},regs_31_real}; // @[FixedPointTypeClass.scala 21:58:@4983.6]
  assign _GEN_492 = $signed(_GEN_490) << 10; // @[FixedPointTypeClass.scala 21:58:@4983.6]
  assign _T_2180 = $signed(_GEN_347) + $signed(_GEN_492); // @[FixedPointTypeClass.scala 21:58:@4983.6]
  assign _T_2181 = _T_2180[21:0]; // @[FixedPointTypeClass.scala 21:58:@4984.6]
  assign _T_2182 = $signed(_T_2181); // @[FixedPointTypeClass.scala 21:58:@4985.6]
  assign _GEN_493 = {{10{regs_31_imag[11]}},regs_31_imag}; // @[FixedPointTypeClass.scala 21:58:@4986.6]
  assign _GEN_495 = $signed(_GEN_493) << 10; // @[FixedPointTypeClass.scala 21:58:@4986.6]
  assign _T_2183 = $signed(_GEN_350) + $signed(_GEN_495); // @[FixedPointTypeClass.scala 21:58:@4986.6]
  assign _T_2184 = _T_2183[21:0]; // @[FixedPointTypeClass.scala 21:58:@4987.6]
  assign _T_2185 = $signed(_T_2184); // @[FixedPointTypeClass.scala 21:58:@4988.6]
  assign _GEN_496 = {{10{regs_32_real[11]}},regs_32_real}; // @[FixedPointTypeClass.scala 21:58:@4994.6]
  assign _GEN_498 = $signed(_GEN_496) << 10; // @[FixedPointTypeClass.scala 21:58:@4994.6]
  assign _T_2194 = $signed(_GEN_341) + $signed(_GEN_498); // @[FixedPointTypeClass.scala 21:58:@4994.6]
  assign _T_2195 = _T_2194[21:0]; // @[FixedPointTypeClass.scala 21:58:@4995.6]
  assign _T_2196 = $signed(_T_2195); // @[FixedPointTypeClass.scala 21:58:@4996.6]
  assign _GEN_499 = {{10{regs_32_imag[11]}},regs_32_imag}; // @[FixedPointTypeClass.scala 21:58:@4997.6]
  assign _GEN_501 = $signed(_GEN_499) << 10; // @[FixedPointTypeClass.scala 21:58:@4997.6]
  assign _T_2197 = $signed(_GEN_344) + $signed(_GEN_501); // @[FixedPointTypeClass.scala 21:58:@4997.6]
  assign _T_2198 = _T_2197[21:0]; // @[FixedPointTypeClass.scala 21:58:@4998.6]
  assign _T_2199 = $signed(_T_2198); // @[FixedPointTypeClass.scala 21:58:@4999.6]
  assign _GEN_502 = {{10{regs_33_real[11]}},regs_33_real}; // @[FixedPointTypeClass.scala 21:58:@5005.6]
  assign _GEN_504 = $signed(_GEN_502) << 10; // @[FixedPointTypeClass.scala 21:58:@5005.6]
  assign _T_2208 = $signed(_GEN_311) + $signed(_GEN_504); // @[FixedPointTypeClass.scala 21:58:@5005.6]
  assign _T_2209 = _T_2208[21:0]; // @[FixedPointTypeClass.scala 21:58:@5006.6]
  assign _T_2210 = $signed(_T_2209); // @[FixedPointTypeClass.scala 21:58:@5007.6]
  assign _GEN_505 = {{10{regs_33_imag[11]}},regs_33_imag}; // @[FixedPointTypeClass.scala 21:58:@5008.6]
  assign _GEN_507 = $signed(_GEN_505) << 10; // @[FixedPointTypeClass.scala 21:58:@5008.6]
  assign _T_2211 = $signed(_GEN_314) + $signed(_GEN_507); // @[FixedPointTypeClass.scala 21:58:@5008.6]
  assign _T_2212 = _T_2211[21:0]; // @[FixedPointTypeClass.scala 21:58:@5009.6]
  assign _T_2213 = $signed(_T_2212); // @[FixedPointTypeClass.scala 21:58:@5010.6]
  assign _GEN_508 = {{10{regs_34_real[11]}},regs_34_real}; // @[FixedPointTypeClass.scala 21:58:@5016.6]
  assign _GEN_510 = $signed(_GEN_508) << 10; // @[FixedPointTypeClass.scala 21:58:@5016.6]
  assign _T_2222 = $signed(_GEN_317) + $signed(_GEN_510); // @[FixedPointTypeClass.scala 21:58:@5016.6]
  assign _T_2223 = _T_2222[21:0]; // @[FixedPointTypeClass.scala 21:58:@5017.6]
  assign _T_2224 = $signed(_T_2223); // @[FixedPointTypeClass.scala 21:58:@5018.6]
  assign _GEN_511 = {{10{regs_34_imag[11]}},regs_34_imag}; // @[FixedPointTypeClass.scala 21:58:@5019.6]
  assign _GEN_513 = $signed(_GEN_511) << 10; // @[FixedPointTypeClass.scala 21:58:@5019.6]
  assign _T_2225 = $signed(_GEN_320) + $signed(_GEN_513); // @[FixedPointTypeClass.scala 21:58:@5019.6]
  assign _T_2226 = _T_2225[21:0]; // @[FixedPointTypeClass.scala 21:58:@5020.6]
  assign _T_2227 = $signed(_T_2226); // @[FixedPointTypeClass.scala 21:58:@5021.6]
  assign _GEN_514 = {{10{regs_35_real[11]}},regs_35_real}; // @[FixedPointTypeClass.scala 21:58:@5027.6]
  assign _GEN_516 = $signed(_GEN_514) << 10; // @[FixedPointTypeClass.scala 21:58:@5027.6]
  assign _T_2236 = $signed(_GEN_323) + $signed(_GEN_516); // @[FixedPointTypeClass.scala 21:58:@5027.6]
  assign _T_2237 = _T_2236[21:0]; // @[FixedPointTypeClass.scala 21:58:@5028.6]
  assign _T_2238 = $signed(_T_2237); // @[FixedPointTypeClass.scala 21:58:@5029.6]
  assign _GEN_517 = {{10{regs_35_imag[11]}},regs_35_imag}; // @[FixedPointTypeClass.scala 21:58:@5030.6]
  assign _GEN_519 = $signed(_GEN_517) << 10; // @[FixedPointTypeClass.scala 21:58:@5030.6]
  assign _T_2239 = $signed(_GEN_326) + $signed(_GEN_519); // @[FixedPointTypeClass.scala 21:58:@5030.6]
  assign _T_2240 = _T_2239[21:0]; // @[FixedPointTypeClass.scala 21:58:@5031.6]
  assign _T_2241 = $signed(_T_2240); // @[FixedPointTypeClass.scala 21:58:@5032.6]
  assign _GEN_520 = {{10{regs_36_real[11]}},regs_36_real}; // @[FixedPointTypeClass.scala 21:58:@5038.6]
  assign _GEN_522 = $signed(_GEN_520) << 10; // @[FixedPointTypeClass.scala 21:58:@5038.6]
  assign _T_2250 = $signed(_GEN_317) + $signed(_GEN_522); // @[FixedPointTypeClass.scala 21:58:@5038.6]
  assign _T_2251 = _T_2250[21:0]; // @[FixedPointTypeClass.scala 21:58:@5039.6]
  assign _T_2252 = $signed(_T_2251); // @[FixedPointTypeClass.scala 21:58:@5040.6]
  assign _GEN_523 = {{10{regs_36_imag[11]}},regs_36_imag}; // @[FixedPointTypeClass.scala 21:58:@5041.6]
  assign _GEN_525 = $signed(_GEN_523) << 10; // @[FixedPointTypeClass.scala 21:58:@5041.6]
  assign _T_2253 = $signed(_GEN_320) + $signed(_GEN_525); // @[FixedPointTypeClass.scala 21:58:@5041.6]
  assign _T_2254 = _T_2253[21:0]; // @[FixedPointTypeClass.scala 21:58:@5042.6]
  assign _T_2255 = $signed(_T_2254); // @[FixedPointTypeClass.scala 21:58:@5043.6]
  assign _GEN_526 = {{10{regs_37_real[11]}},regs_37_real}; // @[FixedPointTypeClass.scala 21:58:@5049.6]
  assign _GEN_528 = $signed(_GEN_526) << 10; // @[FixedPointTypeClass.scala 21:58:@5049.6]
  assign _T_2264 = $signed(_GEN_311) + $signed(_GEN_528); // @[FixedPointTypeClass.scala 21:58:@5049.6]
  assign _T_2265 = _T_2264[21:0]; // @[FixedPointTypeClass.scala 21:58:@5050.6]
  assign _T_2266 = $signed(_T_2265); // @[FixedPointTypeClass.scala 21:58:@5051.6]
  assign _GEN_529 = {{10{regs_37_imag[11]}},regs_37_imag}; // @[FixedPointTypeClass.scala 21:58:@5052.6]
  assign _GEN_531 = $signed(_GEN_529) << 10; // @[FixedPointTypeClass.scala 21:58:@5052.6]
  assign _T_2267 = $signed(_GEN_314) + $signed(_GEN_531); // @[FixedPointTypeClass.scala 21:58:@5052.6]
  assign _T_2268 = _T_2267[21:0]; // @[FixedPointTypeClass.scala 21:58:@5053.6]
  assign _T_2269 = $signed(_T_2268); // @[FixedPointTypeClass.scala 21:58:@5054.6]
  assign _GEN_532 = {{10{regs_38_real[11]}},regs_38_real}; // @[FixedPointTypeClass.scala 21:58:@5060.6]
  assign _GEN_534 = $signed(_GEN_532) << 10; // @[FixedPointTypeClass.scala 21:58:@5060.6]
  assign _T_2278 = $signed(_GEN_341) + $signed(_GEN_534); // @[FixedPointTypeClass.scala 21:58:@5060.6]
  assign _T_2279 = _T_2278[21:0]; // @[FixedPointTypeClass.scala 21:58:@5061.6]
  assign _T_2280 = $signed(_T_2279); // @[FixedPointTypeClass.scala 21:58:@5062.6]
  assign _GEN_535 = {{10{regs_38_imag[11]}},regs_38_imag}; // @[FixedPointTypeClass.scala 21:58:@5063.6]
  assign _GEN_537 = $signed(_GEN_535) << 10; // @[FixedPointTypeClass.scala 21:58:@5063.6]
  assign _T_2281 = $signed(_GEN_344) + $signed(_GEN_537); // @[FixedPointTypeClass.scala 21:58:@5063.6]
  assign _T_2282 = _T_2281[21:0]; // @[FixedPointTypeClass.scala 21:58:@5064.6]
  assign _T_2283 = $signed(_T_2282); // @[FixedPointTypeClass.scala 21:58:@5065.6]
  assign _GEN_538 = {{10{regs_39_real[11]}},regs_39_real}; // @[FixedPointTypeClass.scala 21:58:@5071.6]
  assign _GEN_540 = $signed(_GEN_538) << 10; // @[FixedPointTypeClass.scala 21:58:@5071.6]
  assign _T_2292 = $signed(_GEN_347) + $signed(_GEN_540); // @[FixedPointTypeClass.scala 21:58:@5071.6]
  assign _T_2293 = _T_2292[21:0]; // @[FixedPointTypeClass.scala 21:58:@5072.6]
  assign _T_2294 = $signed(_T_2293); // @[FixedPointTypeClass.scala 21:58:@5073.6]
  assign _GEN_541 = {{10{regs_39_imag[11]}},regs_39_imag}; // @[FixedPointTypeClass.scala 21:58:@5074.6]
  assign _GEN_543 = $signed(_GEN_541) << 10; // @[FixedPointTypeClass.scala 21:58:@5074.6]
  assign _T_2295 = $signed(_GEN_350) + $signed(_GEN_543); // @[FixedPointTypeClass.scala 21:58:@5074.6]
  assign _T_2296 = _T_2295[21:0]; // @[FixedPointTypeClass.scala 21:58:@5075.6]
  assign _T_2297 = $signed(_T_2296); // @[FixedPointTypeClass.scala 21:58:@5076.6]
  assign _GEN_544 = {{10{regs_40_real[11]}},regs_40_real}; // @[FixedPointTypeClass.scala 21:58:@5082.6]
  assign _GEN_546 = $signed(_GEN_544) << 10; // @[FixedPointTypeClass.scala 21:58:@5082.6]
  assign _T_2306 = $signed(_GEN_353) + $signed(_GEN_546); // @[FixedPointTypeClass.scala 21:58:@5082.6]
  assign _T_2307 = _T_2306[21:0]; // @[FixedPointTypeClass.scala 21:58:@5083.6]
  assign _T_2308 = $signed(_T_2307); // @[FixedPointTypeClass.scala 21:58:@5084.6]
  assign _GEN_547 = {{10{regs_40_imag[11]}},regs_40_imag}; // @[FixedPointTypeClass.scala 21:58:@5085.6]
  assign _GEN_549 = $signed(_GEN_547) << 10; // @[FixedPointTypeClass.scala 21:58:@5085.6]
  assign _T_2309 = $signed(_GEN_356) + $signed(_GEN_549); // @[FixedPointTypeClass.scala 21:58:@5085.6]
  assign _T_2310 = _T_2309[21:0]; // @[FixedPointTypeClass.scala 21:58:@5086.6]
  assign _T_2311 = $signed(_T_2310); // @[FixedPointTypeClass.scala 21:58:@5087.6]
  assign _GEN_550 = {{10{regs_41_real[11]}},regs_41_real}; // @[FixedPointTypeClass.scala 21:58:@5093.6]
  assign _GEN_552 = $signed(_GEN_550) << 10; // @[FixedPointTypeClass.scala 21:58:@5093.6]
  assign _T_2320 = $signed(_GEN_359) + $signed(_GEN_552); // @[FixedPointTypeClass.scala 21:58:@5093.6]
  assign _T_2321 = _T_2320[21:0]; // @[FixedPointTypeClass.scala 21:58:@5094.6]
  assign _T_2322 = $signed(_T_2321); // @[FixedPointTypeClass.scala 21:58:@5095.6]
  assign _GEN_553 = {{10{regs_41_imag[11]}},regs_41_imag}; // @[FixedPointTypeClass.scala 21:58:@5096.6]
  assign _GEN_555 = $signed(_GEN_553) << 10; // @[FixedPointTypeClass.scala 21:58:@5096.6]
  assign _T_2323 = $signed(_GEN_362) + $signed(_GEN_555); // @[FixedPointTypeClass.scala 21:58:@5096.6]
  assign _T_2324 = _T_2323[21:0]; // @[FixedPointTypeClass.scala 21:58:@5097.6]
  assign _T_2325 = $signed(_T_2324); // @[FixedPointTypeClass.scala 21:58:@5098.6]
  assign _GEN_556 = {{10{regs_42_real[11]}},regs_42_real}; // @[FixedPointTypeClass.scala 21:58:@5104.6]
  assign _GEN_558 = $signed(_GEN_556) << 10; // @[FixedPointTypeClass.scala 21:58:@5104.6]
  assign _T_2334 = $signed(_GEN_365) + $signed(_GEN_558); // @[FixedPointTypeClass.scala 21:58:@5104.6]
  assign _T_2335 = _T_2334[21:0]; // @[FixedPointTypeClass.scala 21:58:@5105.6]
  assign _T_2336 = $signed(_T_2335); // @[FixedPointTypeClass.scala 21:58:@5106.6]
  assign _GEN_559 = {{10{regs_42_imag[11]}},regs_42_imag}; // @[FixedPointTypeClass.scala 21:58:@5107.6]
  assign _GEN_561 = $signed(_GEN_559) << 10; // @[FixedPointTypeClass.scala 21:58:@5107.6]
  assign _T_2337 = $signed(_GEN_368) + $signed(_GEN_561); // @[FixedPointTypeClass.scala 21:58:@5107.6]
  assign _T_2338 = _T_2337[21:0]; // @[FixedPointTypeClass.scala 21:58:@5108.6]
  assign _T_2339 = $signed(_T_2338); // @[FixedPointTypeClass.scala 21:58:@5109.6]
  assign _GEN_562 = {{10{regs_43_real[11]}},regs_43_real}; // @[FixedPointTypeClass.scala 21:58:@5115.6]
  assign _GEN_564 = $signed(_GEN_562) << 10; // @[FixedPointTypeClass.scala 21:58:@5115.6]
  assign _T_2348 = $signed(_GEN_371) + $signed(_GEN_564); // @[FixedPointTypeClass.scala 21:58:@5115.6]
  assign _T_2349 = _T_2348[21:0]; // @[FixedPointTypeClass.scala 21:58:@5116.6]
  assign _T_2350 = $signed(_T_2349); // @[FixedPointTypeClass.scala 21:58:@5117.6]
  assign _GEN_565 = {{10{regs_43_imag[11]}},regs_43_imag}; // @[FixedPointTypeClass.scala 21:58:@5118.6]
  assign _GEN_567 = $signed(_GEN_565) << 10; // @[FixedPointTypeClass.scala 21:58:@5118.6]
  assign _T_2351 = $signed(_GEN_374) + $signed(_GEN_567); // @[FixedPointTypeClass.scala 21:58:@5118.6]
  assign _T_2352 = _T_2351[21:0]; // @[FixedPointTypeClass.scala 21:58:@5119.6]
  assign _T_2353 = $signed(_T_2352); // @[FixedPointTypeClass.scala 21:58:@5120.6]
  assign _GEN_568 = {{10{regs_44_real[11]}},regs_44_real}; // @[FixedPointTypeClass.scala 21:58:@5126.6]
  assign _GEN_570 = $signed(_GEN_568) << 10; // @[FixedPointTypeClass.scala 21:58:@5126.6]
  assign _T_2362 = $signed(_GEN_365) + $signed(_GEN_570); // @[FixedPointTypeClass.scala 21:58:@5126.6]
  assign _T_2363 = _T_2362[21:0]; // @[FixedPointTypeClass.scala 21:58:@5127.6]
  assign _T_2364 = $signed(_T_2363); // @[FixedPointTypeClass.scala 21:58:@5128.6]
  assign _GEN_571 = {{10{regs_44_imag[11]}},regs_44_imag}; // @[FixedPointTypeClass.scala 21:58:@5129.6]
  assign _GEN_573 = $signed(_GEN_571) << 10; // @[FixedPointTypeClass.scala 21:58:@5129.6]
  assign _T_2365 = $signed(_GEN_368) + $signed(_GEN_573); // @[FixedPointTypeClass.scala 21:58:@5129.6]
  assign _T_2366 = _T_2365[21:0]; // @[FixedPointTypeClass.scala 21:58:@5130.6]
  assign _T_2367 = $signed(_T_2366); // @[FixedPointTypeClass.scala 21:58:@5131.6]
  assign _GEN_574 = {{10{regs_45_real[11]}},regs_45_real}; // @[FixedPointTypeClass.scala 21:58:@5137.6]
  assign _GEN_576 = $signed(_GEN_574) << 10; // @[FixedPointTypeClass.scala 21:58:@5137.6]
  assign _T_2376 = $signed(_GEN_359) + $signed(_GEN_576); // @[FixedPointTypeClass.scala 21:58:@5137.6]
  assign _T_2377 = _T_2376[21:0]; // @[FixedPointTypeClass.scala 21:58:@5138.6]
  assign _T_2378 = $signed(_T_2377); // @[FixedPointTypeClass.scala 21:58:@5139.6]
  assign _GEN_577 = {{10{regs_45_imag[11]}},regs_45_imag}; // @[FixedPointTypeClass.scala 21:58:@5140.6]
  assign _GEN_579 = $signed(_GEN_577) << 10; // @[FixedPointTypeClass.scala 21:58:@5140.6]
  assign _T_2379 = $signed(_GEN_362) + $signed(_GEN_579); // @[FixedPointTypeClass.scala 21:58:@5140.6]
  assign _T_2380 = _T_2379[21:0]; // @[FixedPointTypeClass.scala 21:58:@5141.6]
  assign _T_2381 = $signed(_T_2380); // @[FixedPointTypeClass.scala 21:58:@5142.6]
  assign _GEN_580 = {{10{regs_46_real[11]}},regs_46_real}; // @[FixedPointTypeClass.scala 21:58:@5148.6]
  assign _GEN_582 = $signed(_GEN_580) << 10; // @[FixedPointTypeClass.scala 21:58:@5148.6]
  assign _T_2390 = $signed(_GEN_353) + $signed(_GEN_582); // @[FixedPointTypeClass.scala 21:58:@5148.6]
  assign _T_2391 = _T_2390[21:0]; // @[FixedPointTypeClass.scala 21:58:@5149.6]
  assign _T_2392 = $signed(_T_2391); // @[FixedPointTypeClass.scala 21:58:@5150.6]
  assign _GEN_583 = {{10{regs_46_imag[11]}},regs_46_imag}; // @[FixedPointTypeClass.scala 21:58:@5151.6]
  assign _GEN_585 = $signed(_GEN_583) << 10; // @[FixedPointTypeClass.scala 21:58:@5151.6]
  assign _T_2393 = $signed(_GEN_356) + $signed(_GEN_585); // @[FixedPointTypeClass.scala 21:58:@5151.6]
  assign _T_2394 = _T_2393[21:0]; // @[FixedPointTypeClass.scala 21:58:@5152.6]
  assign _T_2395 = $signed(_T_2394); // @[FixedPointTypeClass.scala 21:58:@5153.6]
  assign _GEN_586 = {{10{regs_47_real[11]}},regs_47_real}; // @[FixedPointTypeClass.scala 21:58:@5159.6]
  assign _GEN_588 = $signed(_GEN_586) << 10; // @[FixedPointTypeClass.scala 21:58:@5159.6]
  assign _T_2404 = $signed(_GEN_347) + $signed(_GEN_588); // @[FixedPointTypeClass.scala 21:58:@5159.6]
  assign _T_2405 = _T_2404[21:0]; // @[FixedPointTypeClass.scala 21:58:@5160.6]
  assign _T_2406 = $signed(_T_2405); // @[FixedPointTypeClass.scala 21:58:@5161.6]
  assign _GEN_589 = {{10{regs_47_imag[11]}},regs_47_imag}; // @[FixedPointTypeClass.scala 21:58:@5162.6]
  assign _GEN_591 = $signed(_GEN_589) << 10; // @[FixedPointTypeClass.scala 21:58:@5162.6]
  assign _T_2407 = $signed(_GEN_350) + $signed(_GEN_591); // @[FixedPointTypeClass.scala 21:58:@5162.6]
  assign _T_2408 = _T_2407[21:0]; // @[FixedPointTypeClass.scala 21:58:@5163.6]
  assign _T_2409 = $signed(_T_2408); // @[FixedPointTypeClass.scala 21:58:@5164.6]
  assign _GEN_592 = {{10{regs_48_real[11]}},regs_48_real}; // @[FixedPointTypeClass.scala 21:58:@5170.6]
  assign _GEN_594 = $signed(_GEN_592) << 10; // @[FixedPointTypeClass.scala 21:58:@5170.6]
  assign _T_2418 = $signed(_GEN_341) + $signed(_GEN_594); // @[FixedPointTypeClass.scala 21:58:@5170.6]
  assign _T_2419 = _T_2418[21:0]; // @[FixedPointTypeClass.scala 21:58:@5171.6]
  assign _T_2420 = $signed(_T_2419); // @[FixedPointTypeClass.scala 21:58:@5172.6]
  assign _GEN_595 = {{10{regs_48_imag[11]}},regs_48_imag}; // @[FixedPointTypeClass.scala 21:58:@5173.6]
  assign _GEN_597 = $signed(_GEN_595) << 10; // @[FixedPointTypeClass.scala 21:58:@5173.6]
  assign _T_2421 = $signed(_GEN_344) + $signed(_GEN_597); // @[FixedPointTypeClass.scala 21:58:@5173.6]
  assign _T_2422 = _T_2421[21:0]; // @[FixedPointTypeClass.scala 21:58:@5174.6]
  assign _T_2423 = $signed(_T_2422); // @[FixedPointTypeClass.scala 21:58:@5175.6]
  assign _GEN_598 = {{10{regs_49_real[11]}},regs_49_real}; // @[FixedPointTypeClass.scala 21:58:@5181.6]
  assign _GEN_600 = $signed(_GEN_598) << 10; // @[FixedPointTypeClass.scala 21:58:@5181.6]
  assign _T_2432 = $signed(_GEN_311) + $signed(_GEN_600); // @[FixedPointTypeClass.scala 21:58:@5181.6]
  assign _T_2433 = _T_2432[21:0]; // @[FixedPointTypeClass.scala 21:58:@5182.6]
  assign _T_2434 = $signed(_T_2433); // @[FixedPointTypeClass.scala 21:58:@5183.6]
  assign _GEN_601 = {{10{regs_49_imag[11]}},regs_49_imag}; // @[FixedPointTypeClass.scala 21:58:@5184.6]
  assign _GEN_603 = $signed(_GEN_601) << 10; // @[FixedPointTypeClass.scala 21:58:@5184.6]
  assign _T_2435 = $signed(_GEN_314) + $signed(_GEN_603); // @[FixedPointTypeClass.scala 21:58:@5184.6]
  assign _T_2436 = _T_2435[21:0]; // @[FixedPointTypeClass.scala 21:58:@5185.6]
  assign _T_2437 = $signed(_T_2436); // @[FixedPointTypeClass.scala 21:58:@5186.6]
  assign _GEN_604 = {{10{regs_50_real[11]}},regs_50_real}; // @[FixedPointTypeClass.scala 21:58:@5192.6]
  assign _GEN_606 = $signed(_GEN_604) << 10; // @[FixedPointTypeClass.scala 21:58:@5192.6]
  assign _T_2446 = $signed(_GEN_317) + $signed(_GEN_606); // @[FixedPointTypeClass.scala 21:58:@5192.6]
  assign _T_2447 = _T_2446[21:0]; // @[FixedPointTypeClass.scala 21:58:@5193.6]
  assign _T_2448 = $signed(_T_2447); // @[FixedPointTypeClass.scala 21:58:@5194.6]
  assign _GEN_607 = {{10{regs_50_imag[11]}},regs_50_imag}; // @[FixedPointTypeClass.scala 21:58:@5195.6]
  assign _GEN_609 = $signed(_GEN_607) << 10; // @[FixedPointTypeClass.scala 21:58:@5195.6]
  assign _T_2449 = $signed(_GEN_320) + $signed(_GEN_609); // @[FixedPointTypeClass.scala 21:58:@5195.6]
  assign _T_2450 = _T_2449[21:0]; // @[FixedPointTypeClass.scala 21:58:@5196.6]
  assign _T_2451 = $signed(_T_2450); // @[FixedPointTypeClass.scala 21:58:@5197.6]
  assign _GEN_610 = {{10{regs_51_real[11]}},regs_51_real}; // @[FixedPointTypeClass.scala 21:58:@5203.6]
  assign _GEN_612 = $signed(_GEN_610) << 10; // @[FixedPointTypeClass.scala 21:58:@5203.6]
  assign _T_2460 = $signed(_GEN_323) + $signed(_GEN_612); // @[FixedPointTypeClass.scala 21:58:@5203.6]
  assign _T_2461 = _T_2460[21:0]; // @[FixedPointTypeClass.scala 21:58:@5204.6]
  assign _T_2462 = $signed(_T_2461); // @[FixedPointTypeClass.scala 21:58:@5205.6]
  assign _GEN_613 = {{10{regs_51_imag[11]}},regs_51_imag}; // @[FixedPointTypeClass.scala 21:58:@5206.6]
  assign _GEN_615 = $signed(_GEN_613) << 10; // @[FixedPointTypeClass.scala 21:58:@5206.6]
  assign _T_2463 = $signed(_GEN_326) + $signed(_GEN_615); // @[FixedPointTypeClass.scala 21:58:@5206.6]
  assign _T_2464 = _T_2463[21:0]; // @[FixedPointTypeClass.scala 21:58:@5207.6]
  assign _T_2465 = $signed(_T_2464); // @[FixedPointTypeClass.scala 21:58:@5208.6]
  assign _GEN_616 = {{10{regs_52_real[11]}},regs_52_real}; // @[FixedPointTypeClass.scala 21:58:@5214.6]
  assign _GEN_618 = $signed(_GEN_616) << 10; // @[FixedPointTypeClass.scala 21:58:@5214.6]
  assign _T_2474 = $signed(_GEN_317) + $signed(_GEN_618); // @[FixedPointTypeClass.scala 21:58:@5214.6]
  assign _T_2475 = _T_2474[21:0]; // @[FixedPointTypeClass.scala 21:58:@5215.6]
  assign _T_2476 = $signed(_T_2475); // @[FixedPointTypeClass.scala 21:58:@5216.6]
  assign _GEN_619 = {{10{regs_52_imag[11]}},regs_52_imag}; // @[FixedPointTypeClass.scala 21:58:@5217.6]
  assign _GEN_621 = $signed(_GEN_619) << 10; // @[FixedPointTypeClass.scala 21:58:@5217.6]
  assign _T_2477 = $signed(_GEN_320) + $signed(_GEN_621); // @[FixedPointTypeClass.scala 21:58:@5217.6]
  assign _T_2478 = _T_2477[21:0]; // @[FixedPointTypeClass.scala 21:58:@5218.6]
  assign _T_2479 = $signed(_T_2478); // @[FixedPointTypeClass.scala 21:58:@5219.6]
  assign _GEN_622 = {{10{regs_53_real[11]}},regs_53_real}; // @[FixedPointTypeClass.scala 21:58:@5225.6]
  assign _GEN_624 = $signed(_GEN_622) << 10; // @[FixedPointTypeClass.scala 21:58:@5225.6]
  assign _T_2488 = $signed(_GEN_311) + $signed(_GEN_624); // @[FixedPointTypeClass.scala 21:58:@5225.6]
  assign _T_2489 = _T_2488[21:0]; // @[FixedPointTypeClass.scala 21:58:@5226.6]
  assign _T_2490 = $signed(_T_2489); // @[FixedPointTypeClass.scala 21:58:@5227.6]
  assign _GEN_625 = {{10{regs_53_imag[11]}},regs_53_imag}; // @[FixedPointTypeClass.scala 21:58:@5228.6]
  assign _GEN_627 = $signed(_GEN_625) << 10; // @[FixedPointTypeClass.scala 21:58:@5228.6]
  assign _T_2491 = $signed(_GEN_314) + $signed(_GEN_627); // @[FixedPointTypeClass.scala 21:58:@5228.6]
  assign _T_2492 = _T_2491[21:0]; // @[FixedPointTypeClass.scala 21:58:@5229.6]
  assign _T_2493 = $signed(_T_2492); // @[FixedPointTypeClass.scala 21:58:@5230.6]
  assign _GEN_628 = {{10{regs_54_real[11]}},regs_54_real}; // @[FixedPointTypeClass.scala 21:58:@5236.6]
  assign _GEN_630 = $signed(_GEN_628) << 10; // @[FixedPointTypeClass.scala 21:58:@5236.6]
  assign _T_2502 = $signed(_GEN_341) + $signed(_GEN_630); // @[FixedPointTypeClass.scala 21:58:@5236.6]
  assign _T_2503 = _T_2502[21:0]; // @[FixedPointTypeClass.scala 21:58:@5237.6]
  assign _T_2504 = $signed(_T_2503); // @[FixedPointTypeClass.scala 21:58:@5238.6]
  assign _GEN_631 = {{10{regs_54_imag[11]}},regs_54_imag}; // @[FixedPointTypeClass.scala 21:58:@5239.6]
  assign _GEN_633 = $signed(_GEN_631) << 10; // @[FixedPointTypeClass.scala 21:58:@5239.6]
  assign _T_2505 = $signed(_GEN_344) + $signed(_GEN_633); // @[FixedPointTypeClass.scala 21:58:@5239.6]
  assign _T_2506 = _T_2505[21:0]; // @[FixedPointTypeClass.scala 21:58:@5240.6]
  assign _T_2507 = $signed(_T_2506); // @[FixedPointTypeClass.scala 21:58:@5241.6]
  assign _GEN_634 = {{10{regs_55_real[11]}},regs_55_real}; // @[FixedPointTypeClass.scala 21:58:@5247.6]
  assign _GEN_636 = $signed(_GEN_634) << 10; // @[FixedPointTypeClass.scala 21:58:@5247.6]
  assign _T_2516 = $signed(_GEN_347) + $signed(_GEN_636); // @[FixedPointTypeClass.scala 21:58:@5247.6]
  assign _T_2517 = _T_2516[21:0]; // @[FixedPointTypeClass.scala 21:58:@5248.6]
  assign _T_2518 = $signed(_T_2517); // @[FixedPointTypeClass.scala 21:58:@5249.6]
  assign _GEN_637 = {{10{regs_55_imag[11]}},regs_55_imag}; // @[FixedPointTypeClass.scala 21:58:@5250.6]
  assign _GEN_639 = $signed(_GEN_637) << 10; // @[FixedPointTypeClass.scala 21:58:@5250.6]
  assign _T_2519 = $signed(_GEN_350) + $signed(_GEN_639); // @[FixedPointTypeClass.scala 21:58:@5250.6]
  assign _T_2520 = _T_2519[21:0]; // @[FixedPointTypeClass.scala 21:58:@5251.6]
  assign _T_2521 = $signed(_T_2520); // @[FixedPointTypeClass.scala 21:58:@5252.6]
  assign _GEN_640 = {{10{regs_56_real[11]}},regs_56_real}; // @[FixedPointTypeClass.scala 21:58:@5258.6]
  assign _GEN_642 = $signed(_GEN_640) << 10; // @[FixedPointTypeClass.scala 21:58:@5258.6]
  assign _T_2530 = $signed(_GEN_353) + $signed(_GEN_642); // @[FixedPointTypeClass.scala 21:58:@5258.6]
  assign _T_2531 = _T_2530[21:0]; // @[FixedPointTypeClass.scala 21:58:@5259.6]
  assign _T_2532 = $signed(_T_2531); // @[FixedPointTypeClass.scala 21:58:@5260.6]
  assign _GEN_643 = {{10{regs_56_imag[11]}},regs_56_imag}; // @[FixedPointTypeClass.scala 21:58:@5261.6]
  assign _GEN_645 = $signed(_GEN_643) << 10; // @[FixedPointTypeClass.scala 21:58:@5261.6]
  assign _T_2533 = $signed(_GEN_356) + $signed(_GEN_645); // @[FixedPointTypeClass.scala 21:58:@5261.6]
  assign _T_2534 = _T_2533[21:0]; // @[FixedPointTypeClass.scala 21:58:@5262.6]
  assign _T_2535 = $signed(_T_2534); // @[FixedPointTypeClass.scala 21:58:@5263.6]
  assign _GEN_646 = {{10{regs_57_real[11]}},regs_57_real}; // @[FixedPointTypeClass.scala 21:58:@5269.6]
  assign _GEN_648 = $signed(_GEN_646) << 10; // @[FixedPointTypeClass.scala 21:58:@5269.6]
  assign _T_2544 = $signed(_GEN_359) + $signed(_GEN_648); // @[FixedPointTypeClass.scala 21:58:@5269.6]
  assign _T_2545 = _T_2544[21:0]; // @[FixedPointTypeClass.scala 21:58:@5270.6]
  assign _T_2546 = $signed(_T_2545); // @[FixedPointTypeClass.scala 21:58:@5271.6]
  assign _GEN_649 = {{10{regs_57_imag[11]}},regs_57_imag}; // @[FixedPointTypeClass.scala 21:58:@5272.6]
  assign _GEN_651 = $signed(_GEN_649) << 10; // @[FixedPointTypeClass.scala 21:58:@5272.6]
  assign _T_2547 = $signed(_GEN_362) + $signed(_GEN_651); // @[FixedPointTypeClass.scala 21:58:@5272.6]
  assign _T_2548 = _T_2547[21:0]; // @[FixedPointTypeClass.scala 21:58:@5273.6]
  assign _T_2549 = $signed(_T_2548); // @[FixedPointTypeClass.scala 21:58:@5274.6]
  assign _GEN_652 = {{10{regs_58_real[11]}},regs_58_real}; // @[FixedPointTypeClass.scala 21:58:@5280.6]
  assign _GEN_654 = $signed(_GEN_652) << 10; // @[FixedPointTypeClass.scala 21:58:@5280.6]
  assign _T_2558 = $signed(_GEN_365) + $signed(_GEN_654); // @[FixedPointTypeClass.scala 21:58:@5280.6]
  assign _T_2559 = _T_2558[21:0]; // @[FixedPointTypeClass.scala 21:58:@5281.6]
  assign _T_2560 = $signed(_T_2559); // @[FixedPointTypeClass.scala 21:58:@5282.6]
  assign _GEN_655 = {{10{regs_58_imag[11]}},regs_58_imag}; // @[FixedPointTypeClass.scala 21:58:@5283.6]
  assign _GEN_657 = $signed(_GEN_655) << 10; // @[FixedPointTypeClass.scala 21:58:@5283.6]
  assign _T_2561 = $signed(_GEN_368) + $signed(_GEN_657); // @[FixedPointTypeClass.scala 21:58:@5283.6]
  assign _T_2562 = _T_2561[21:0]; // @[FixedPointTypeClass.scala 21:58:@5284.6]
  assign _T_2563 = $signed(_T_2562); // @[FixedPointTypeClass.scala 21:58:@5285.6]
  assign _GEN_658 = {{10{regs_59_real[11]}},regs_59_real}; // @[FixedPointTypeClass.scala 21:58:@5291.6]
  assign _GEN_660 = $signed(_GEN_658) << 10; // @[FixedPointTypeClass.scala 21:58:@5291.6]
  assign _T_2572 = $signed(_GEN_371) + $signed(_GEN_660); // @[FixedPointTypeClass.scala 21:58:@5291.6]
  assign _T_2573 = _T_2572[21:0]; // @[FixedPointTypeClass.scala 21:58:@5292.6]
  assign _T_2574 = $signed(_T_2573); // @[FixedPointTypeClass.scala 21:58:@5293.6]
  assign _GEN_661 = {{10{regs_59_imag[11]}},regs_59_imag}; // @[FixedPointTypeClass.scala 21:58:@5294.6]
  assign _GEN_663 = $signed(_GEN_661) << 10; // @[FixedPointTypeClass.scala 21:58:@5294.6]
  assign _T_2575 = $signed(_GEN_374) + $signed(_GEN_663); // @[FixedPointTypeClass.scala 21:58:@5294.6]
  assign _T_2576 = _T_2575[21:0]; // @[FixedPointTypeClass.scala 21:58:@5295.6]
  assign _T_2577 = $signed(_T_2576); // @[FixedPointTypeClass.scala 21:58:@5296.6]
  assign _GEN_664 = {{10{regs_60_real[11]}},regs_60_real}; // @[FixedPointTypeClass.scala 21:58:@5302.6]
  assign _GEN_666 = $signed(_GEN_664) << 10; // @[FixedPointTypeClass.scala 21:58:@5302.6]
  assign _T_2586 = $signed(_GEN_365) + $signed(_GEN_666); // @[FixedPointTypeClass.scala 21:58:@5302.6]
  assign _T_2587 = _T_2586[21:0]; // @[FixedPointTypeClass.scala 21:58:@5303.6]
  assign _T_2588 = $signed(_T_2587); // @[FixedPointTypeClass.scala 21:58:@5304.6]
  assign _GEN_667 = {{10{regs_60_imag[11]}},regs_60_imag}; // @[FixedPointTypeClass.scala 21:58:@5305.6]
  assign _GEN_669 = $signed(_GEN_667) << 10; // @[FixedPointTypeClass.scala 21:58:@5305.6]
  assign _T_2589 = $signed(_GEN_368) + $signed(_GEN_669); // @[FixedPointTypeClass.scala 21:58:@5305.6]
  assign _T_2590 = _T_2589[21:0]; // @[FixedPointTypeClass.scala 21:58:@5306.6]
  assign _T_2591 = $signed(_T_2590); // @[FixedPointTypeClass.scala 21:58:@5307.6]
  assign _GEN_670 = {{10{regs_61_real[11]}},regs_61_real}; // @[FixedPointTypeClass.scala 21:58:@5313.6]
  assign _GEN_672 = $signed(_GEN_670) << 10; // @[FixedPointTypeClass.scala 21:58:@5313.6]
  assign _T_2600 = $signed(_GEN_359) + $signed(_GEN_672); // @[FixedPointTypeClass.scala 21:58:@5313.6]
  assign _T_2601 = _T_2600[21:0]; // @[FixedPointTypeClass.scala 21:58:@5314.6]
  assign _T_2602 = $signed(_T_2601); // @[FixedPointTypeClass.scala 21:58:@5315.6]
  assign _GEN_673 = {{10{regs_61_imag[11]}},regs_61_imag}; // @[FixedPointTypeClass.scala 21:58:@5316.6]
  assign _GEN_675 = $signed(_GEN_673) << 10; // @[FixedPointTypeClass.scala 21:58:@5316.6]
  assign _T_2603 = $signed(_GEN_362) + $signed(_GEN_675); // @[FixedPointTypeClass.scala 21:58:@5316.6]
  assign _T_2604 = _T_2603[21:0]; // @[FixedPointTypeClass.scala 21:58:@5317.6]
  assign _T_2605 = $signed(_T_2604); // @[FixedPointTypeClass.scala 21:58:@5318.6]
  assign _GEN_676 = {{10{regs_62_real[11]}},regs_62_real}; // @[FixedPointTypeClass.scala 21:58:@5324.6]
  assign _GEN_678 = $signed(_GEN_676) << 10; // @[FixedPointTypeClass.scala 21:58:@5324.6]
  assign _T_2614 = $signed(_GEN_353) + $signed(_GEN_678); // @[FixedPointTypeClass.scala 21:58:@5324.6]
  assign _T_2615 = _T_2614[21:0]; // @[FixedPointTypeClass.scala 21:58:@5325.6]
  assign _T_2616 = $signed(_T_2615); // @[FixedPointTypeClass.scala 21:58:@5326.6]
  assign _GEN_679 = {{10{regs_62_imag[11]}},regs_62_imag}; // @[FixedPointTypeClass.scala 21:58:@5327.6]
  assign _GEN_681 = $signed(_GEN_679) << 10; // @[FixedPointTypeClass.scala 21:58:@5327.6]
  assign _T_2617 = $signed(_GEN_356) + $signed(_GEN_681); // @[FixedPointTypeClass.scala 21:58:@5327.6]
  assign _T_2618 = _T_2617[21:0]; // @[FixedPointTypeClass.scala 21:58:@5328.6]
  assign _T_2619 = $signed(_T_2618); // @[FixedPointTypeClass.scala 21:58:@5329.6]
  assign _GEN_682 = {{10{regs_0_imag[11]}},regs_0_imag}; // @[FIR.scala 21:22:@4652.4]
  assign _GEN_0 = io_in_valid ? $signed(_T_1765) : $signed($signed(_GEN_682) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_683 = {{10{regs_0_real[11]}},regs_0_real}; // @[FIR.scala 21:22:@4652.4]
  assign _GEN_1 = io_in_valid ? $signed(_T_1762) : $signed($signed(_GEN_683) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_2 = io_in_valid ? $signed(_T_1779) : $signed($signed(_GEN_313) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_3 = io_in_valid ? $signed(_T_1776) : $signed($signed(_GEN_310) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_4 = io_in_valid ? $signed(_T_1793) : $signed($signed(_GEN_319) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_5 = io_in_valid ? $signed(_T_1790) : $signed($signed(_GEN_316) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_6 = io_in_valid ? $signed(_T_1807) : $signed($signed(_GEN_325) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_7 = io_in_valid ? $signed(_T_1804) : $signed($signed(_GEN_322) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_8 = io_in_valid ? $signed(_T_1821) : $signed($signed(_GEN_331) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_9 = io_in_valid ? $signed(_T_1818) : $signed($signed(_GEN_328) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_10 = io_in_valid ? $signed(_T_1835) : $signed($signed(_GEN_337) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_11 = io_in_valid ? $signed(_T_1832) : $signed($signed(_GEN_334) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_12 = io_in_valid ? $signed(_T_1849) : $signed($signed(_GEN_343) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_13 = io_in_valid ? $signed(_T_1846) : $signed($signed(_GEN_340) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_14 = io_in_valid ? $signed(_T_1863) : $signed($signed(_GEN_349) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_15 = io_in_valid ? $signed(_T_1860) : $signed($signed(_GEN_346) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_16 = io_in_valid ? $signed(_T_1877) : $signed($signed(_GEN_355) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_17 = io_in_valid ? $signed(_T_1874) : $signed($signed(_GEN_352) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_18 = io_in_valid ? $signed(_T_1891) : $signed($signed(_GEN_361) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_19 = io_in_valid ? $signed(_T_1888) : $signed($signed(_GEN_358) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_20 = io_in_valid ? $signed(_T_1905) : $signed($signed(_GEN_367) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_21 = io_in_valid ? $signed(_T_1902) : $signed($signed(_GEN_364) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_22 = io_in_valid ? $signed(_T_1919) : $signed($signed(_GEN_373) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_23 = io_in_valid ? $signed(_T_1916) : $signed($signed(_GEN_370) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_24 = io_in_valid ? $signed(_T_1933) : $signed($signed(_GEN_379) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_25 = io_in_valid ? $signed(_T_1930) : $signed($signed(_GEN_376) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_26 = io_in_valid ? $signed(_T_1947) : $signed($signed(_GEN_385) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_27 = io_in_valid ? $signed(_T_1944) : $signed($signed(_GEN_382) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_28 = io_in_valid ? $signed(_T_1961) : $signed($signed(_GEN_391) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_29 = io_in_valid ? $signed(_T_1958) : $signed($signed(_GEN_388) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_30 = io_in_valid ? $signed(_T_1975) : $signed($signed(_GEN_397) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_31 = io_in_valid ? $signed(_T_1972) : $signed($signed(_GEN_394) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_32 = io_in_valid ? $signed(_T_1989) : $signed($signed(_GEN_403) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_33 = io_in_valid ? $signed(_T_1986) : $signed($signed(_GEN_400) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_34 = io_in_valid ? $signed(_T_2003) : $signed($signed(_GEN_409) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_35 = io_in_valid ? $signed(_T_2000) : $signed($signed(_GEN_406) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_36 = io_in_valid ? $signed(_T_2017) : $signed($signed(_GEN_415) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_37 = io_in_valid ? $signed(_T_2014) : $signed($signed(_GEN_412) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_38 = io_in_valid ? $signed(_T_2031) : $signed($signed(_GEN_421) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_39 = io_in_valid ? $signed(_T_2028) : $signed($signed(_GEN_418) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_40 = io_in_valid ? $signed(_T_2045) : $signed($signed(_GEN_427) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_41 = io_in_valid ? $signed(_T_2042) : $signed($signed(_GEN_424) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_42 = io_in_valid ? $signed(_T_2059) : $signed($signed(_GEN_433) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_43 = io_in_valid ? $signed(_T_2056) : $signed($signed(_GEN_430) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_44 = io_in_valid ? $signed(_T_2073) : $signed($signed(_GEN_439) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_45 = io_in_valid ? $signed(_T_2070) : $signed($signed(_GEN_436) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_46 = io_in_valid ? $signed(_T_2087) : $signed($signed(_GEN_445) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_47 = io_in_valid ? $signed(_T_2084) : $signed($signed(_GEN_442) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_48 = io_in_valid ? $signed(_T_2101) : $signed($signed(_GEN_451) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_49 = io_in_valid ? $signed(_T_2098) : $signed($signed(_GEN_448) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_50 = io_in_valid ? $signed(_T_2115) : $signed($signed(_GEN_457) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_51 = io_in_valid ? $signed(_T_2112) : $signed($signed(_GEN_454) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_52 = io_in_valid ? $signed(_T_2129) : $signed($signed(_GEN_463) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_53 = io_in_valid ? $signed(_T_2126) : $signed($signed(_GEN_460) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_54 = io_in_valid ? $signed(_T_2143) : $signed($signed(_GEN_469) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_55 = io_in_valid ? $signed(_T_2140) : $signed($signed(_GEN_466) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_56 = io_in_valid ? $signed(_T_2157) : $signed($signed(_GEN_475) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_57 = io_in_valid ? $signed(_T_2154) : $signed($signed(_GEN_472) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_58 = io_in_valid ? $signed(_T_2171) : $signed($signed(_GEN_481) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_59 = io_in_valid ? $signed(_T_2168) : $signed($signed(_GEN_478) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_60 = io_in_valid ? $signed(_T_2185) : $signed($signed(_GEN_487) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_61 = io_in_valid ? $signed(_T_2182) : $signed($signed(_GEN_484) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_62 = io_in_valid ? $signed(_T_2199) : $signed($signed(_GEN_493) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_63 = io_in_valid ? $signed(_T_2196) : $signed($signed(_GEN_490) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_64 = io_in_valid ? $signed(_T_2213) : $signed($signed(_GEN_499) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_65 = io_in_valid ? $signed(_T_2210) : $signed($signed(_GEN_496) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_66 = io_in_valid ? $signed(_T_2227) : $signed($signed(_GEN_505) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_67 = io_in_valid ? $signed(_T_2224) : $signed($signed(_GEN_502) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_68 = io_in_valid ? $signed(_T_2241) : $signed($signed(_GEN_511) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_69 = io_in_valid ? $signed(_T_2238) : $signed($signed(_GEN_508) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_70 = io_in_valid ? $signed(_T_2255) : $signed($signed(_GEN_517) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_71 = io_in_valid ? $signed(_T_2252) : $signed($signed(_GEN_514) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_72 = io_in_valid ? $signed(_T_2269) : $signed($signed(_GEN_523) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_73 = io_in_valid ? $signed(_T_2266) : $signed($signed(_GEN_520) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_74 = io_in_valid ? $signed(_T_2283) : $signed($signed(_GEN_529) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_75 = io_in_valid ? $signed(_T_2280) : $signed($signed(_GEN_526) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_76 = io_in_valid ? $signed(_T_2297) : $signed($signed(_GEN_535) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_77 = io_in_valid ? $signed(_T_2294) : $signed($signed(_GEN_532) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_78 = io_in_valid ? $signed(_T_2311) : $signed($signed(_GEN_541) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_79 = io_in_valid ? $signed(_T_2308) : $signed($signed(_GEN_538) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_80 = io_in_valid ? $signed(_T_2325) : $signed($signed(_GEN_547) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_81 = io_in_valid ? $signed(_T_2322) : $signed($signed(_GEN_544) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_82 = io_in_valid ? $signed(_T_2339) : $signed($signed(_GEN_553) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_83 = io_in_valid ? $signed(_T_2336) : $signed($signed(_GEN_550) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_84 = io_in_valid ? $signed(_T_2353) : $signed($signed(_GEN_559) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_85 = io_in_valid ? $signed(_T_2350) : $signed($signed(_GEN_556) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_86 = io_in_valid ? $signed(_T_2367) : $signed($signed(_GEN_565) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_87 = io_in_valid ? $signed(_T_2364) : $signed($signed(_GEN_562) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_88 = io_in_valid ? $signed(_T_2381) : $signed($signed(_GEN_571) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_89 = io_in_valid ? $signed(_T_2378) : $signed($signed(_GEN_568) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_90 = io_in_valid ? $signed(_T_2395) : $signed($signed(_GEN_577) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_91 = io_in_valid ? $signed(_T_2392) : $signed($signed(_GEN_574) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_92 = io_in_valid ? $signed(_T_2409) : $signed($signed(_GEN_583) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_93 = io_in_valid ? $signed(_T_2406) : $signed($signed(_GEN_580) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_94 = io_in_valid ? $signed(_T_2423) : $signed($signed(_GEN_589) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_95 = io_in_valid ? $signed(_T_2420) : $signed($signed(_GEN_586) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_96 = io_in_valid ? $signed(_T_2437) : $signed($signed(_GEN_595) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_97 = io_in_valid ? $signed(_T_2434) : $signed($signed(_GEN_592) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_98 = io_in_valid ? $signed(_T_2451) : $signed($signed(_GEN_601) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_99 = io_in_valid ? $signed(_T_2448) : $signed($signed(_GEN_598) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_100 = io_in_valid ? $signed(_T_2465) : $signed($signed(_GEN_607) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_101 = io_in_valid ? $signed(_T_2462) : $signed($signed(_GEN_604) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_102 = io_in_valid ? $signed(_T_2479) : $signed($signed(_GEN_613) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_103 = io_in_valid ? $signed(_T_2476) : $signed($signed(_GEN_610) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_104 = io_in_valid ? $signed(_T_2493) : $signed($signed(_GEN_619) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_105 = io_in_valid ? $signed(_T_2490) : $signed($signed(_GEN_616) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_106 = io_in_valid ? $signed(_T_2507) : $signed($signed(_GEN_625) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_107 = io_in_valid ? $signed(_T_2504) : $signed($signed(_GEN_622) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_108 = io_in_valid ? $signed(_T_2521) : $signed($signed(_GEN_631) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_109 = io_in_valid ? $signed(_T_2518) : $signed($signed(_GEN_628) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_110 = io_in_valid ? $signed(_T_2535) : $signed($signed(_GEN_637) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_111 = io_in_valid ? $signed(_T_2532) : $signed($signed(_GEN_634) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_112 = io_in_valid ? $signed(_T_2549) : $signed($signed(_GEN_643) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_113 = io_in_valid ? $signed(_T_2546) : $signed($signed(_GEN_640) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_114 = io_in_valid ? $signed(_T_2563) : $signed($signed(_GEN_649) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_115 = io_in_valid ? $signed(_T_2560) : $signed($signed(_GEN_646) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_116 = io_in_valid ? $signed(_T_2577) : $signed($signed(_GEN_655) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_117 = io_in_valid ? $signed(_T_2574) : $signed($signed(_GEN_652) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_118 = io_in_valid ? $signed(_T_2591) : $signed($signed(_GEN_661) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_119 = io_in_valid ? $signed(_T_2588) : $signed($signed(_GEN_658) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_120 = io_in_valid ? $signed(_T_2605) : $signed($signed(_GEN_667) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_121 = io_in_valid ? $signed(_T_2602) : $signed($signed(_GEN_664) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_122 = io_in_valid ? $signed(_T_2619) : $signed($signed(_GEN_673) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_123 = io_in_valid ? $signed(_T_2616) : $signed($signed(_GEN_670) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_124 = io_in_valid ? $signed({{3{prods_7_imag[18]}},prods_7_imag}) : $signed($signed(_GEN_679) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_125 = io_in_valid ? $signed({{3{prods_7_real[18]}},prods_7_real}) : $signed($signed(_GEN_676) << 10); // @[FIR.scala 21:22:@4652.4]
  assign _GEN_810 = $signed(_GEN_683) << 10; // @[FixedPointTypeClass.scala 21:58:@5338.4]
  assign _T_2628 = $signed(_GEN_341) + $signed(_GEN_810); // @[FixedPointTypeClass.scala 21:58:@5338.4]
  assign _T_2629 = _T_2628[21:0]; // @[FixedPointTypeClass.scala 21:58:@5339.4]
  assign _T_2630 = $signed(_T_2629); // @[FixedPointTypeClass.scala 21:58:@5340.4]
  assign _GEN_813 = $signed(_GEN_682) << 10; // @[FixedPointTypeClass.scala 21:58:@5341.4]
  assign _T_2631 = $signed(_GEN_344) + $signed(_GEN_813); // @[FixedPointTypeClass.scala 21:58:@5341.4]
  assign _T_2632 = _T_2631[21:0]; // @[FixedPointTypeClass.scala 21:58:@5342.4]
  assign _T_2633 = $signed(_T_2632); // @[FixedPointTypeClass.scala 21:58:@5343.4]
  assign io_out_valid = io_in_valid;
  assign io_out_bits_real = _T_2630[21:10];
  assign io_out_bits_imag = _T_2633[21:10];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  regs_0_real = _RAND_0[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  regs_0_imag = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  regs_1_real = _RAND_2[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  regs_1_imag = _RAND_3[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  regs_2_real = _RAND_4[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  regs_2_imag = _RAND_5[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  regs_3_real = _RAND_6[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  regs_3_imag = _RAND_7[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  regs_4_real = _RAND_8[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  regs_4_imag = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  regs_5_real = _RAND_10[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  regs_5_imag = _RAND_11[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  regs_6_real = _RAND_12[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  regs_6_imag = _RAND_13[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  regs_7_real = _RAND_14[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  regs_7_imag = _RAND_15[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  regs_8_real = _RAND_16[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  regs_8_imag = _RAND_17[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  regs_9_real = _RAND_18[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  regs_9_imag = _RAND_19[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  regs_10_real = _RAND_20[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  regs_10_imag = _RAND_21[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  regs_11_real = _RAND_22[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  regs_11_imag = _RAND_23[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  regs_12_real = _RAND_24[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  regs_12_imag = _RAND_25[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  regs_13_real = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  regs_13_imag = _RAND_27[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  regs_14_real = _RAND_28[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  regs_14_imag = _RAND_29[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  regs_15_real = _RAND_30[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  regs_15_imag = _RAND_31[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  regs_16_real = _RAND_32[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  regs_16_imag = _RAND_33[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  regs_17_real = _RAND_34[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  regs_17_imag = _RAND_35[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  regs_18_real = _RAND_36[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  regs_18_imag = _RAND_37[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  regs_19_real = _RAND_38[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  regs_19_imag = _RAND_39[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  regs_20_real = _RAND_40[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  regs_20_imag = _RAND_41[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  regs_21_real = _RAND_42[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  regs_21_imag = _RAND_43[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  regs_22_real = _RAND_44[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  regs_22_imag = _RAND_45[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  regs_23_real = _RAND_46[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  regs_23_imag = _RAND_47[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  regs_24_real = _RAND_48[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  regs_24_imag = _RAND_49[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  regs_25_real = _RAND_50[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  regs_25_imag = _RAND_51[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  regs_26_real = _RAND_52[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  regs_26_imag = _RAND_53[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  regs_27_real = _RAND_54[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  regs_27_imag = _RAND_55[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  regs_28_real = _RAND_56[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  regs_28_imag = _RAND_57[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  regs_29_real = _RAND_58[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  regs_29_imag = _RAND_59[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  regs_30_real = _RAND_60[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  regs_30_imag = _RAND_61[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  regs_31_real = _RAND_62[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  regs_31_imag = _RAND_63[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  regs_32_real = _RAND_64[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  regs_32_imag = _RAND_65[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  regs_33_real = _RAND_66[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  regs_33_imag = _RAND_67[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  regs_34_real = _RAND_68[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  regs_34_imag = _RAND_69[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  regs_35_real = _RAND_70[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  regs_35_imag = _RAND_71[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  regs_36_real = _RAND_72[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  regs_36_imag = _RAND_73[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  regs_37_real = _RAND_74[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  regs_37_imag = _RAND_75[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  regs_38_real = _RAND_76[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{$random}};
  regs_38_imag = _RAND_77[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{$random}};
  regs_39_real = _RAND_78[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  regs_39_imag = _RAND_79[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  regs_40_real = _RAND_80[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  regs_40_imag = _RAND_81[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  regs_41_real = _RAND_82[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  regs_41_imag = _RAND_83[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  regs_42_real = _RAND_84[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  regs_42_imag = _RAND_85[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  regs_43_real = _RAND_86[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  regs_43_imag = _RAND_87[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{$random}};
  regs_44_real = _RAND_88[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{$random}};
  regs_44_imag = _RAND_89[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{$random}};
  regs_45_real = _RAND_90[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{$random}};
  regs_45_imag = _RAND_91[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{$random}};
  regs_46_real = _RAND_92[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{$random}};
  regs_46_imag = _RAND_93[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{$random}};
  regs_47_real = _RAND_94[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{$random}};
  regs_47_imag = _RAND_95[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{$random}};
  regs_48_real = _RAND_96[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{$random}};
  regs_48_imag = _RAND_97[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{$random}};
  regs_49_real = _RAND_98[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{$random}};
  regs_49_imag = _RAND_99[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{$random}};
  regs_50_real = _RAND_100[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{$random}};
  regs_50_imag = _RAND_101[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{$random}};
  regs_51_real = _RAND_102[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{$random}};
  regs_51_imag = _RAND_103[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{$random}};
  regs_52_real = _RAND_104[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{$random}};
  regs_52_imag = _RAND_105[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{$random}};
  regs_53_real = _RAND_106[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{$random}};
  regs_53_imag = _RAND_107[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{$random}};
  regs_54_real = _RAND_108[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{$random}};
  regs_54_imag = _RAND_109[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{$random}};
  regs_55_real = _RAND_110[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{$random}};
  regs_55_imag = _RAND_111[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{$random}};
  regs_56_real = _RAND_112[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{$random}};
  regs_56_imag = _RAND_113[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{$random}};
  regs_57_real = _RAND_114[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{$random}};
  regs_57_imag = _RAND_115[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{$random}};
  regs_58_real = _RAND_116[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{$random}};
  regs_58_imag = _RAND_117[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{$random}};
  regs_59_real = _RAND_118[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{$random}};
  regs_59_imag = _RAND_119[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{$random}};
  regs_60_real = _RAND_120[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{$random}};
  regs_60_imag = _RAND_121[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{$random}};
  regs_61_real = _RAND_122[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{$random}};
  regs_61_imag = _RAND_123[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{$random}};
  regs_62_real = _RAND_124[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{$random}};
  regs_62_imag = _RAND_125[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    regs_0_real <= _GEN_1[21:10];
    regs_0_imag <= _GEN_0[21:10];
    regs_1_real <= _GEN_3[21:10];
    regs_1_imag <= _GEN_2[21:10];
    regs_2_real <= _GEN_5[21:10];
    regs_2_imag <= _GEN_4[21:10];
    regs_3_real <= _GEN_7[21:10];
    regs_3_imag <= _GEN_6[21:10];
    regs_4_real <= _GEN_9[21:10];
    regs_4_imag <= _GEN_8[21:10];
    regs_5_real <= _GEN_11[21:10];
    regs_5_imag <= _GEN_10[21:10];
    regs_6_real <= _GEN_13[21:10];
    regs_6_imag <= _GEN_12[21:10];
    regs_7_real <= _GEN_15[21:10];
    regs_7_imag <= _GEN_14[21:10];
    regs_8_real <= _GEN_17[21:10];
    regs_8_imag <= _GEN_16[21:10];
    regs_9_real <= _GEN_19[21:10];
    regs_9_imag <= _GEN_18[21:10];
    regs_10_real <= _GEN_21[21:10];
    regs_10_imag <= _GEN_20[21:10];
    regs_11_real <= _GEN_23[21:10];
    regs_11_imag <= _GEN_22[21:10];
    regs_12_real <= _GEN_25[21:10];
    regs_12_imag <= _GEN_24[21:10];
    regs_13_real <= _GEN_27[21:10];
    regs_13_imag <= _GEN_26[21:10];
    regs_14_real <= _GEN_29[21:10];
    regs_14_imag <= _GEN_28[21:10];
    regs_15_real <= _GEN_31[21:10];
    regs_15_imag <= _GEN_30[21:10];
    regs_16_real <= _GEN_33[21:10];
    regs_16_imag <= _GEN_32[21:10];
    regs_17_real <= _GEN_35[21:10];
    regs_17_imag <= _GEN_34[21:10];
    regs_18_real <= _GEN_37[21:10];
    regs_18_imag <= _GEN_36[21:10];
    regs_19_real <= _GEN_39[21:10];
    regs_19_imag <= _GEN_38[21:10];
    regs_20_real <= _GEN_41[21:10];
    regs_20_imag <= _GEN_40[21:10];
    regs_21_real <= _GEN_43[21:10];
    regs_21_imag <= _GEN_42[21:10];
    regs_22_real <= _GEN_45[21:10];
    regs_22_imag <= _GEN_44[21:10];
    regs_23_real <= _GEN_47[21:10];
    regs_23_imag <= _GEN_46[21:10];
    regs_24_real <= _GEN_49[21:10];
    regs_24_imag <= _GEN_48[21:10];
    regs_25_real <= _GEN_51[21:10];
    regs_25_imag <= _GEN_50[21:10];
    regs_26_real <= _GEN_53[21:10];
    regs_26_imag <= _GEN_52[21:10];
    regs_27_real <= _GEN_55[21:10];
    regs_27_imag <= _GEN_54[21:10];
    regs_28_real <= _GEN_57[21:10];
    regs_28_imag <= _GEN_56[21:10];
    regs_29_real <= _GEN_59[21:10];
    regs_29_imag <= _GEN_58[21:10];
    regs_30_real <= _GEN_61[21:10];
    regs_30_imag <= _GEN_60[21:10];
    regs_31_real <= _GEN_63[21:10];
    regs_31_imag <= _GEN_62[21:10];
    regs_32_real <= _GEN_65[21:10];
    regs_32_imag <= _GEN_64[21:10];
    regs_33_real <= _GEN_67[21:10];
    regs_33_imag <= _GEN_66[21:10];
    regs_34_real <= _GEN_69[21:10];
    regs_34_imag <= _GEN_68[21:10];
    regs_35_real <= _GEN_71[21:10];
    regs_35_imag <= _GEN_70[21:10];
    regs_36_real <= _GEN_73[21:10];
    regs_36_imag <= _GEN_72[21:10];
    regs_37_real <= _GEN_75[21:10];
    regs_37_imag <= _GEN_74[21:10];
    regs_38_real <= _GEN_77[21:10];
    regs_38_imag <= _GEN_76[21:10];
    regs_39_real <= _GEN_79[21:10];
    regs_39_imag <= _GEN_78[21:10];
    regs_40_real <= _GEN_81[21:10];
    regs_40_imag <= _GEN_80[21:10];
    regs_41_real <= _GEN_83[21:10];
    regs_41_imag <= _GEN_82[21:10];
    regs_42_real <= _GEN_85[21:10];
    regs_42_imag <= _GEN_84[21:10];
    regs_43_real <= _GEN_87[21:10];
    regs_43_imag <= _GEN_86[21:10];
    regs_44_real <= _GEN_89[21:10];
    regs_44_imag <= _GEN_88[21:10];
    regs_45_real <= _GEN_91[21:10];
    regs_45_imag <= _GEN_90[21:10];
    regs_46_real <= _GEN_93[21:10];
    regs_46_imag <= _GEN_92[21:10];
    regs_47_real <= _GEN_95[21:10];
    regs_47_imag <= _GEN_94[21:10];
    regs_48_real <= _GEN_97[21:10];
    regs_48_imag <= _GEN_96[21:10];
    regs_49_real <= _GEN_99[21:10];
    regs_49_imag <= _GEN_98[21:10];
    regs_50_real <= _GEN_101[21:10];
    regs_50_imag <= _GEN_100[21:10];
    regs_51_real <= _GEN_103[21:10];
    regs_51_imag <= _GEN_102[21:10];
    regs_52_real <= _GEN_105[21:10];
    regs_52_imag <= _GEN_104[21:10];
    regs_53_real <= _GEN_107[21:10];
    regs_53_imag <= _GEN_106[21:10];
    regs_54_real <= _GEN_109[21:10];
    regs_54_imag <= _GEN_108[21:10];
    regs_55_real <= _GEN_111[21:10];
    regs_55_imag <= _GEN_110[21:10];
    regs_56_real <= _GEN_113[21:10];
    regs_56_imag <= _GEN_112[21:10];
    regs_57_real <= _GEN_115[21:10];
    regs_57_imag <= _GEN_114[21:10];
    regs_58_real <= _GEN_117[21:10];
    regs_58_imag <= _GEN_116[21:10];
    regs_59_real <= _GEN_119[21:10];
    regs_59_imag <= _GEN_118[21:10];
    regs_60_real <= _GEN_121[21:10];
    regs_60_imag <= _GEN_120[21:10];
    regs_61_real <= _GEN_123[21:10];
    regs_61_imag <= _GEN_122[21:10];
    regs_62_real <= _GEN_125[21:10];
    regs_62_imag <= _GEN_124[21:10];
  end
endmodule
module PeakDetect( // @[:@5351.2]
  input         clock, // @[:@5352.4]
  input         reset, // @[:@5353.4]
  input         io_in_valid, // @[:@5354.4]
  input  [11:0] io_in_bits_corr_real, // @[:@5354.4]
  input  [11:0] io_in_bits_corr_imag, // @[:@5354.4]
  input  [11:0] io_in_bits_raw_real, // @[:@5354.4]
  input  [11:0] io_in_bits_raw_imag, // @[:@5354.4]
  output [11:0] io_out_bits_raw_real, // @[:@5354.4]
  output [11:0] io_out_bits_raw_imag, // @[:@5354.4]
  output        io_outLast, // @[:@5354.4]
  input  [31:0] io_config_energyFF, // @[:@5354.4]
  input  [31:0] io_config_energyMult, // @[:@5354.4]
  input  [31:0] io_config_accumMult, // @[:@5354.4]
  input  [31:0] io_config_energyOffset, // @[:@5354.4]
  input  [6:0]  io_config_idlePeriod // @[:@5354.4]
);
  reg [31:0] accumEnergy; // @[PeakDetect.scala 44:33:@5356.4]
  reg [31:0] _RAND_0;
  reg  hasMaxInShr; // @[PeakDetect.scala 46:33:@5362.4]
  reg [31:0] _RAND_1;
  reg [23:0] currentMax; // @[PeakDetect.scala 47:33:@5366.4]
  reg [31:0] _RAND_2;
  reg [4:0] consecutiveMaxes; // @[PeakDetect.scala 48:33:@5367.4]
  reg [31:0] _RAND_3;
  reg [6:0] idleCounter; // @[PeakDetect.scala 49:33:@5368.4]
  reg [31:0] _RAND_4;
  reg [11:0] _T_248_raw_real; // @[Reg.scala 19:20:@5384.4]
  reg [31:0] _RAND_5;
  reg [11:0] _T_248_raw_imag; // @[Reg.scala 19:20:@5384.4]
  reg [31:0] _RAND_6;
  reg [11:0] _T_278_raw_real; // @[Reg.scala 19:20:@5391.4]
  reg [31:0] _RAND_7;
  reg [11:0] _T_278_raw_imag; // @[Reg.scala 19:20:@5391.4]
  reg [31:0] _RAND_8;
  reg [11:0] _T_308_raw_real; // @[Reg.scala 19:20:@5398.4]
  reg [31:0] _RAND_9;
  reg [11:0] _T_308_raw_imag; // @[Reg.scala 19:20:@5398.4]
  reg [31:0] _RAND_10;
  reg [11:0] _T_338_raw_real; // @[Reg.scala 19:20:@5405.4]
  reg [31:0] _RAND_11;
  reg [11:0] _T_338_raw_imag; // @[Reg.scala 19:20:@5405.4]
  reg [31:0] _RAND_12;
  reg [11:0] _T_368_raw_real; // @[Reg.scala 19:20:@5412.4]
  reg [31:0] _RAND_13;
  reg [11:0] _T_368_raw_imag; // @[Reg.scala 19:20:@5412.4]
  reg [31:0] _RAND_14;
  reg [11:0] _T_398_raw_real; // @[Reg.scala 19:20:@5419.4]
  reg [31:0] _RAND_15;
  reg [11:0] _T_398_raw_imag; // @[Reg.scala 19:20:@5419.4]
  reg [31:0] _RAND_16;
  reg [11:0] _T_428_raw_real; // @[Reg.scala 19:20:@5426.4]
  reg [31:0] _RAND_17;
  reg [11:0] _T_428_raw_imag; // @[Reg.scala 19:20:@5426.4]
  reg [31:0] _RAND_18;
  reg [11:0] _T_458_raw_real; // @[Reg.scala 19:20:@5433.4]
  reg [31:0] _RAND_19;
  reg [11:0] _T_458_raw_imag; // @[Reg.scala 19:20:@5433.4]
  reg [31:0] _RAND_20;
  reg [11:0] _T_488_raw_real; // @[Reg.scala 19:20:@5440.4]
  reg [31:0] _RAND_21;
  reg [11:0] _T_488_raw_imag; // @[Reg.scala 19:20:@5440.4]
  reg [31:0] _RAND_22;
  reg [11:0] _T_518_raw_real; // @[Reg.scala 19:20:@5447.4]
  reg [31:0] _RAND_23;
  reg [11:0] _T_518_raw_imag; // @[Reg.scala 19:20:@5447.4]
  reg [31:0] _RAND_24;
  reg [11:0] _T_548_raw_real; // @[Reg.scala 19:20:@5454.4]
  reg [31:0] _RAND_25;
  reg [11:0] _T_548_raw_imag; // @[Reg.scala 19:20:@5454.4]
  reg [31:0] _RAND_26;
  reg [11:0] _T_578_raw_real; // @[Reg.scala 19:20:@5461.4]
  reg [31:0] _RAND_27;
  reg [11:0] _T_578_raw_imag; // @[Reg.scala 19:20:@5461.4]
  reg [31:0] _RAND_28;
  reg [11:0] _T_608_raw_real; // @[Reg.scala 19:20:@5468.4]
  reg [31:0] _RAND_29;
  reg [11:0] _T_608_raw_imag; // @[Reg.scala 19:20:@5468.4]
  reg [31:0] _RAND_30;
  reg [11:0] _T_638_raw_real; // @[Reg.scala 19:20:@5475.4]
  reg [31:0] _RAND_31;
  reg [11:0] _T_638_raw_imag; // @[Reg.scala 19:20:@5475.4]
  reg [31:0] _RAND_32;
  reg [11:0] _T_668_raw_real; // @[Reg.scala 19:20:@5482.4]
  reg [31:0] _RAND_33;
  reg [11:0] _T_668_raw_imag; // @[Reg.scala 19:20:@5482.4]
  reg [31:0] _RAND_34;
  reg [11:0] _T_698_raw_real; // @[Reg.scala 19:20:@5489.4]
  reg [31:0] _RAND_35;
  reg [11:0] _T_698_raw_imag; // @[Reg.scala 19:20:@5489.4]
  reg [31:0] _RAND_36;
  reg [11:0] shr_raw_real; // @[Reg.scala 19:20:@5496.4]
  reg [31:0] _RAND_37;
  reg [11:0] shr_raw_imag; // @[Reg.scala 19:20:@5496.4]
  reg [31:0] _RAND_38;
  wire [23:0] _T_161; // @[FixedPointTypeClass.scala 43:59:@5357.4]
  wire [23:0] _T_162; // @[FixedPointTypeClass.scala 43:59:@5358.4]
  wire [24:0] _T_163; // @[FixedPointTypeClass.scala 21:58:@5359.4]
  wire [23:0] _T_164; // @[FixedPointTypeClass.scala 21:58:@5360.4]
  wire [23:0] instEnergy; // @[FixedPointTypeClass.scala 21:58:@5361.4]
  wire [11:0] _GEN_0; // @[Reg.scala 20:19:@5385.4]
  wire [11:0] _GEN_1; // @[Reg.scala 20:19:@5385.4]
  wire [11:0] _GEN_4; // @[Reg.scala 20:19:@5392.4]
  wire [11:0] _GEN_5; // @[Reg.scala 20:19:@5392.4]
  wire [11:0] _GEN_8; // @[Reg.scala 20:19:@5399.4]
  wire [11:0] _GEN_9; // @[Reg.scala 20:19:@5399.4]
  wire [11:0] _GEN_12; // @[Reg.scala 20:19:@5406.4]
  wire [11:0] _GEN_13; // @[Reg.scala 20:19:@5406.4]
  wire [11:0] _GEN_16; // @[Reg.scala 20:19:@5413.4]
  wire [11:0] _GEN_17; // @[Reg.scala 20:19:@5413.4]
  wire [11:0] _GEN_20; // @[Reg.scala 20:19:@5420.4]
  wire [11:0] _GEN_21; // @[Reg.scala 20:19:@5420.4]
  wire [11:0] _GEN_24; // @[Reg.scala 20:19:@5427.4]
  wire [11:0] _GEN_25; // @[Reg.scala 20:19:@5427.4]
  wire [11:0] _GEN_28; // @[Reg.scala 20:19:@5434.4]
  wire [11:0] _GEN_29; // @[Reg.scala 20:19:@5434.4]
  wire [11:0] _GEN_32; // @[Reg.scala 20:19:@5441.4]
  wire [11:0] _GEN_33; // @[Reg.scala 20:19:@5441.4]
  wire [11:0] _GEN_36; // @[Reg.scala 20:19:@5448.4]
  wire [11:0] _GEN_37; // @[Reg.scala 20:19:@5448.4]
  wire [11:0] _GEN_40; // @[Reg.scala 20:19:@5455.4]
  wire [11:0] _GEN_41; // @[Reg.scala 20:19:@5455.4]
  wire [11:0] _GEN_44; // @[Reg.scala 20:19:@5462.4]
  wire [11:0] _GEN_45; // @[Reg.scala 20:19:@5462.4]
  wire [11:0] _GEN_48; // @[Reg.scala 20:19:@5469.4]
  wire [11:0] _GEN_49; // @[Reg.scala 20:19:@5469.4]
  wire [11:0] _GEN_52; // @[Reg.scala 20:19:@5476.4]
  wire [11:0] _GEN_53; // @[Reg.scala 20:19:@5476.4]
  wire [11:0] _GEN_56; // @[Reg.scala 20:19:@5483.4]
  wire [11:0] _GEN_57; // @[Reg.scala 20:19:@5483.4]
  wire [11:0] _GEN_60; // @[Reg.scala 20:19:@5490.4]
  wire [11:0] _GEN_61; // @[Reg.scala 20:19:@5490.4]
  wire [11:0] _GEN_64; // @[Reg.scala 20:19:@5497.4]
  wire [11:0] _GEN_65; // @[Reg.scala 20:19:@5497.4]
  wire [31:0] _GEN_92; // @[FixedPointTypeClass.scala 43:59:@5509.4]
  wire [55:0] _T_743; // @[FixedPointTypeClass.scala 43:59:@5509.4]
  wire [63:0] _T_744; // @[FixedPointTypeClass.scala 43:59:@5510.4]
  wire [47:0] _GEN_93; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  wire [47:0] _GEN_94; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  wire [63:0] _GEN_95; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  wire [64:0] _T_745; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  wire [63:0] _T_746; // @[FixedPointTypeClass.scala 21:58:@5512.4]
  wire [63:0] _T_747; // @[FixedPointTypeClass.scala 21:58:@5513.4]
  wire [67:0] _GEN_96; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  wire [67:0] _GEN_97; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  wire [67:0] _GEN_98; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  wire  hasBigEnergy; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  wire  _T_749; // @[PeakDetect.scala 58:23:@5515.4]
  wire  _T_750; // @[FixedPointTypeClass.scala 56:59:@5516.4]
  wire  hasNewMax; // @[PeakDetect.scala 58:37:@5517.4]
  wire  _T_753; // @[PeakDetect.scala 61:9:@5519.4]
  wire [63:0] _T_754; // @[FixedPointTypeClass.scala 43:59:@5524.6]
  wire [35:0] _GEN_99; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  wire [35:0] _GEN_100; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  wire [63:0] _GEN_101; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  wire [64:0] _T_755; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  wire [63:0] _T_756; // @[FixedPointTypeClass.scala 21:58:@5526.6]
  wire [63:0] _T_757; // @[FixedPointTypeClass.scala 21:58:@5527.6]
  wire  _T_759; // @[PeakDetect.scala 65:23:@5529.6]
  wire [7:0] _T_761; // @[PeakDetect.scala 66:34:@5531.8]
  wire [6:0] _T_762; // @[PeakDetect.scala 66:34:@5532.8]
  wire [6:0] _GEN_68; // @[PeakDetect.scala 65:32:@5530.6]
  wire [4:0] _GEN_69; // @[PeakDetect.scala 65:32:@5530.6]
  wire  _GEN_70; // @[PeakDetect.scala 65:32:@5530.6]
  wire  _T_765; // @[PeakDetect.scala 70:23:@5537.6]
  wire [6:0] _GEN_71; // @[PeakDetect.scala 70:49:@5538.6]
  wire  _T_768; // @[PeakDetect.scala 75:23:@5541.6]
  wire  _T_769; // @[PeakDetect.scala 75:31:@5542.6]
  wire [5:0] _T_772; // @[PeakDetect.scala 79:46:@5548.10]
  wire [4:0] _T_773; // @[PeakDetect.scala 79:46:@5549.10]
  wire [4:0] _GEN_72; // @[PeakDetect.scala 76:24:@5544.8]
  wire  _T_775; // @[PeakDetect.scala 81:30:@5552.8]
  wire [6:0] _GEN_73; // @[PeakDetect.scala 81:50:@5553.8]
  wire  _GEN_75; // @[PeakDetect.scala 81:50:@5553.8]
  wire [4:0] _GEN_76; // @[PeakDetect.scala 81:50:@5553.8]
  wire [23:0] _GEN_77; // @[PeakDetect.scala 81:50:@5553.8]
  wire [4:0] _GEN_78; // @[PeakDetect.scala 75:47:@5543.6]
  wire [6:0] _GEN_79; // @[PeakDetect.scala 75:47:@5543.6]
  wire  _GEN_80; // @[PeakDetect.scala 75:47:@5543.6]
  wire  _GEN_81; // @[PeakDetect.scala 75:47:@5543.6]
  wire [23:0] _GEN_82; // @[PeakDetect.scala 75:47:@5543.6]
  wire  _T_780; // @[PeakDetect.scala 89:24:@5561.6]
  wire  _GEN_83; // @[PeakDetect.scala 89:38:@5562.6]
  wire [4:0] _GEN_84; // @[PeakDetect.scala 89:38:@5562.6]
  wire [23:0] _GEN_85; // @[PeakDetect.scala 89:38:@5562.6]
  wire [47:0] _GEN_102; // @[PeakDetect.scala 62:23:@5523.4]
  wire [47:0] _GEN_103; // @[PeakDetect.scala 62:23:@5523.4]
  wire [63:0] _GEN_86; // @[PeakDetect.scala 62:23:@5523.4]
  wire [6:0] _GEN_87; // @[PeakDetect.scala 62:23:@5523.4]
  wire [4:0] _GEN_88; // @[PeakDetect.scala 62:23:@5523.4]
  wire  _GEN_89; // @[PeakDetect.scala 62:23:@5523.4]
  wire  _GEN_90; // @[PeakDetect.scala 62:23:@5523.4]
  wire [23:0] _GEN_91; // @[PeakDetect.scala 62:23:@5523.4]
  wire [47:0] _GEN_104;
  wire [31:0] _GEN_105;
  assign _T_161 = $signed(io_in_bits_corr_real) * $signed(io_in_bits_corr_real); // @[FixedPointTypeClass.scala 43:59:@5357.4]
  assign _T_162 = $signed(io_in_bits_corr_imag) * $signed(io_in_bits_corr_imag); // @[FixedPointTypeClass.scala 43:59:@5358.4]
  assign _T_163 = $signed(_T_161) + $signed(_T_162); // @[FixedPointTypeClass.scala 21:58:@5359.4]
  assign _T_164 = _T_163[23:0]; // @[FixedPointTypeClass.scala 21:58:@5360.4]
  assign instEnergy = $signed(_T_164); // @[FixedPointTypeClass.scala 21:58:@5361.4]
  assign _GEN_0 = io_in_valid ? $signed(io_in_bits_raw_imag) : $signed(_T_248_raw_imag); // @[Reg.scala 20:19:@5385.4]
  assign _GEN_1 = io_in_valid ? $signed(io_in_bits_raw_real) : $signed(_T_248_raw_real); // @[Reg.scala 20:19:@5385.4]
  assign _GEN_4 = io_in_valid ? $signed(_T_248_raw_imag) : $signed(_T_278_raw_imag); // @[Reg.scala 20:19:@5392.4]
  assign _GEN_5 = io_in_valid ? $signed(_T_248_raw_real) : $signed(_T_278_raw_real); // @[Reg.scala 20:19:@5392.4]
  assign _GEN_8 = io_in_valid ? $signed(_T_278_raw_imag) : $signed(_T_308_raw_imag); // @[Reg.scala 20:19:@5399.4]
  assign _GEN_9 = io_in_valid ? $signed(_T_278_raw_real) : $signed(_T_308_raw_real); // @[Reg.scala 20:19:@5399.4]
  assign _GEN_12 = io_in_valid ? $signed(_T_308_raw_imag) : $signed(_T_338_raw_imag); // @[Reg.scala 20:19:@5406.4]
  assign _GEN_13 = io_in_valid ? $signed(_T_308_raw_real) : $signed(_T_338_raw_real); // @[Reg.scala 20:19:@5406.4]
  assign _GEN_16 = io_in_valid ? $signed(_T_338_raw_imag) : $signed(_T_368_raw_imag); // @[Reg.scala 20:19:@5413.4]
  assign _GEN_17 = io_in_valid ? $signed(_T_338_raw_real) : $signed(_T_368_raw_real); // @[Reg.scala 20:19:@5413.4]
  assign _GEN_20 = io_in_valid ? $signed(_T_368_raw_imag) : $signed(_T_398_raw_imag); // @[Reg.scala 20:19:@5420.4]
  assign _GEN_21 = io_in_valid ? $signed(_T_368_raw_real) : $signed(_T_398_raw_real); // @[Reg.scala 20:19:@5420.4]
  assign _GEN_24 = io_in_valid ? $signed(_T_398_raw_imag) : $signed(_T_428_raw_imag); // @[Reg.scala 20:19:@5427.4]
  assign _GEN_25 = io_in_valid ? $signed(_T_398_raw_real) : $signed(_T_428_raw_real); // @[Reg.scala 20:19:@5427.4]
  assign _GEN_28 = io_in_valid ? $signed(_T_428_raw_imag) : $signed(_T_458_raw_imag); // @[Reg.scala 20:19:@5434.4]
  assign _GEN_29 = io_in_valid ? $signed(_T_428_raw_real) : $signed(_T_458_raw_real); // @[Reg.scala 20:19:@5434.4]
  assign _GEN_32 = io_in_valid ? $signed(_T_458_raw_imag) : $signed(_T_488_raw_imag); // @[Reg.scala 20:19:@5441.4]
  assign _GEN_33 = io_in_valid ? $signed(_T_458_raw_real) : $signed(_T_488_raw_real); // @[Reg.scala 20:19:@5441.4]
  assign _GEN_36 = io_in_valid ? $signed(_T_488_raw_imag) : $signed(_T_518_raw_imag); // @[Reg.scala 20:19:@5448.4]
  assign _GEN_37 = io_in_valid ? $signed(_T_488_raw_real) : $signed(_T_518_raw_real); // @[Reg.scala 20:19:@5448.4]
  assign _GEN_40 = io_in_valid ? $signed(_T_518_raw_imag) : $signed(_T_548_raw_imag); // @[Reg.scala 20:19:@5455.4]
  assign _GEN_41 = io_in_valid ? $signed(_T_518_raw_real) : $signed(_T_548_raw_real); // @[Reg.scala 20:19:@5455.4]
  assign _GEN_44 = io_in_valid ? $signed(_T_548_raw_imag) : $signed(_T_578_raw_imag); // @[Reg.scala 20:19:@5462.4]
  assign _GEN_45 = io_in_valid ? $signed(_T_548_raw_real) : $signed(_T_578_raw_real); // @[Reg.scala 20:19:@5462.4]
  assign _GEN_48 = io_in_valid ? $signed(_T_578_raw_imag) : $signed(_T_608_raw_imag); // @[Reg.scala 20:19:@5469.4]
  assign _GEN_49 = io_in_valid ? $signed(_T_578_raw_real) : $signed(_T_608_raw_real); // @[Reg.scala 20:19:@5469.4]
  assign _GEN_52 = io_in_valid ? $signed(_T_608_raw_imag) : $signed(_T_638_raw_imag); // @[Reg.scala 20:19:@5476.4]
  assign _GEN_53 = io_in_valid ? $signed(_T_608_raw_real) : $signed(_T_638_raw_real); // @[Reg.scala 20:19:@5476.4]
  assign _GEN_56 = io_in_valid ? $signed(_T_638_raw_imag) : $signed(_T_668_raw_imag); // @[Reg.scala 20:19:@5483.4]
  assign _GEN_57 = io_in_valid ? $signed(_T_638_raw_real) : $signed(_T_668_raw_real); // @[Reg.scala 20:19:@5483.4]
  assign _GEN_60 = io_in_valid ? $signed(_T_668_raw_imag) : $signed(_T_698_raw_imag); // @[Reg.scala 20:19:@5490.4]
  assign _GEN_61 = io_in_valid ? $signed(_T_668_raw_real) : $signed(_T_698_raw_real); // @[Reg.scala 20:19:@5490.4]
  assign _GEN_64 = io_in_valid ? $signed(_T_698_raw_imag) : $signed(shr_raw_imag); // @[Reg.scala 20:19:@5497.4]
  assign _GEN_65 = io_in_valid ? $signed(_T_698_raw_real) : $signed(shr_raw_real); // @[Reg.scala 20:19:@5497.4]
  assign _GEN_92 = {{8{instEnergy[23]}},instEnergy}; // @[FixedPointTypeClass.scala 43:59:@5509.4]
  assign _T_743 = $signed(_GEN_92) * $signed(io_config_energyMult); // @[FixedPointTypeClass.scala 43:59:@5509.4]
  assign _T_744 = $signed(io_config_accumMult) * $signed(accumEnergy); // @[FixedPointTypeClass.scala 43:59:@5510.4]
  assign _GEN_93 = {{16{io_config_energyOffset[31]}},io_config_energyOffset}; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  assign _GEN_94 = $signed(_GEN_93) << 16; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  assign _GEN_95 = {{16{_GEN_94[47]}},_GEN_94}; // @[FixedPointTypeClass.scala 21:58:@5511.4]
  assign _T_745 = $signed(_T_744) + $signed(_GEN_95); // @[FixedPointTypeClass.scala 21:58:@5511.4]
  assign _T_746 = _T_745[63:0]; // @[FixedPointTypeClass.scala 21:58:@5512.4]
  assign _T_747 = $signed(_T_746); // @[FixedPointTypeClass.scala 21:58:@5513.4]
  assign _GEN_96 = {{4{_T_747[63]}},_T_747}; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  assign _GEN_97 = {{12{_T_743[55]}},_T_743}; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  assign _GEN_98 = $signed(_GEN_96) << 4; // @[FixedPointTypeClass.scala 56:59:@5514.4]
  assign hasBigEnergy = $signed(_GEN_97) > $signed(_GEN_98); // @[FixedPointTypeClass.scala 56:59:@5514.4]
  assign _T_749 = hasMaxInShr == 1'h0; // @[PeakDetect.scala 58:23:@5515.4]
  assign _T_750 = $signed(instEnergy) > $signed(currentMax); // @[FixedPointTypeClass.scala 56:59:@5516.4]
  assign hasNewMax = _T_749 | _T_750; // @[PeakDetect.scala 58:37:@5517.4]
  assign _T_753 = reset == 1'h0; // @[PeakDetect.scala 61:9:@5519.4]
  assign _T_754 = $signed(accumEnergy) * $signed(io_config_energyFF); // @[FixedPointTypeClass.scala 43:59:@5524.6]
  assign _GEN_99 = {{12{instEnergy[23]}},instEnergy}; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  assign _GEN_100 = $signed(_GEN_99) << 12; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  assign _GEN_101 = {{28{_GEN_100[35]}},_GEN_100}; // @[FixedPointTypeClass.scala 21:58:@5525.6]
  assign _T_755 = $signed(_GEN_101) + $signed(_T_754); // @[FixedPointTypeClass.scala 21:58:@5525.6]
  assign _T_756 = _T_755[63:0]; // @[FixedPointTypeClass.scala 21:58:@5526.6]
  assign _T_757 = $signed(_T_756); // @[FixedPointTypeClass.scala 21:58:@5527.6]
  assign _T_759 = idleCounter != 7'h0; // @[PeakDetect.scala 65:23:@5529.6]
  assign _T_761 = idleCounter + 7'h1; // @[PeakDetect.scala 66:34:@5531.8]
  assign _T_762 = _T_761[6:0]; // @[PeakDetect.scala 66:34:@5532.8]
  assign _GEN_68 = _T_759 ? _T_762 : idleCounter; // @[PeakDetect.scala 65:32:@5530.6]
  assign _GEN_69 = _T_759 ? 5'h0 : consecutiveMaxes; // @[PeakDetect.scala 65:32:@5530.6]
  assign _GEN_70 = _T_759 ? 1'h0 : hasMaxInShr; // @[PeakDetect.scala 65:32:@5530.6]
  assign _T_765 = idleCounter == io_config_idlePeriod; // @[PeakDetect.scala 70:23:@5537.6]
  assign _GEN_71 = _T_765 ? 7'h0 : _GEN_68; // @[PeakDetect.scala 70:49:@5538.6]
  assign _T_768 = idleCounter == 7'h0; // @[PeakDetect.scala 75:23:@5541.6]
  assign _T_769 = _T_768 & hasMaxInShr; // @[PeakDetect.scala 75:31:@5542.6]
  assign _T_772 = consecutiveMaxes + 5'h1; // @[PeakDetect.scala 79:46:@5548.10]
  assign _T_773 = _T_772[4:0]; // @[PeakDetect.scala 79:46:@5549.10]
  assign _GEN_72 = hasNewMax ? 5'h0 : _T_773; // @[PeakDetect.scala 76:24:@5544.8]
  assign _T_775 = consecutiveMaxes == 5'h10; // @[PeakDetect.scala 81:30:@5552.8]
  assign _GEN_73 = _T_775 ? 7'h1 : _GEN_71; // @[PeakDetect.scala 81:50:@5553.8]
  assign _GEN_75 = _T_775 ? 1'h0 : _GEN_70; // @[PeakDetect.scala 81:50:@5553.8]
  assign _GEN_76 = _T_775 ? 5'h0 : _GEN_72; // @[PeakDetect.scala 81:50:@5553.8]
  assign _GEN_77 = _T_775 ? $signed(instEnergy) : $signed(currentMax); // @[PeakDetect.scala 81:50:@5553.8]
  assign _GEN_78 = _T_769 ? _GEN_76 : _GEN_69; // @[PeakDetect.scala 75:47:@5543.6]
  assign _GEN_79 = _T_769 ? _GEN_73 : _GEN_71; // @[PeakDetect.scala 75:47:@5543.6]
  assign _GEN_80 = _T_769 ? _T_775 : 1'h0; // @[PeakDetect.scala 75:47:@5543.6]
  assign _GEN_81 = _T_769 ? _GEN_75 : _GEN_70; // @[PeakDetect.scala 75:47:@5543.6]
  assign _GEN_82 = _T_769 ? $signed(_GEN_77) : $signed(currentMax); // @[PeakDetect.scala 75:47:@5543.6]
  assign _T_780 = hasBigEnergy & hasNewMax; // @[PeakDetect.scala 89:24:@5561.6]
  assign _GEN_83 = _T_780 ? 1'h1 : _GEN_81; // @[PeakDetect.scala 89:38:@5562.6]
  assign _GEN_84 = _T_780 ? 5'h0 : _GEN_78; // @[PeakDetect.scala 89:38:@5562.6]
  assign _GEN_85 = _T_780 ? $signed(instEnergy) : $signed(_GEN_82); // @[PeakDetect.scala 89:38:@5562.6]
  assign _GEN_102 = {{16{accumEnergy[31]}},accumEnergy}; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_103 = $signed(_GEN_102) << 16; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_86 = io_in_valid ? $signed(_T_757) : $signed({{16{_GEN_103[47]}},_GEN_103}); // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_87 = io_in_valid ? _GEN_79 : idleCounter; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_88 = io_in_valid ? _GEN_84 : consecutiveMaxes; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_89 = io_in_valid ? _GEN_83 : hasMaxInShr; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_90 = io_in_valid ? _GEN_80 : 1'h0; // @[PeakDetect.scala 62:23:@5523.4]
  assign _GEN_91 = io_in_valid ? $signed(_GEN_85) : $signed(currentMax); // @[PeakDetect.scala 62:23:@5523.4]
  assign io_out_bits_raw_real = shr_raw_real;
  assign io_out_bits_raw_imag = shr_raw_imag;
  assign io_outLast = _GEN_90;
  assign _GEN_104 = _GEN_86[63:16];
  assign _GEN_105 = _GEN_104[31:0];
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  accumEnergy = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  hasMaxInShr = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  currentMax = _RAND_2[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  consecutiveMaxes = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  idleCounter = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_248_raw_real = _RAND_5[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_248_raw_imag = _RAND_6[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_278_raw_real = _RAND_7[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_278_raw_imag = _RAND_8[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_308_raw_real = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_308_raw_imag = _RAND_10[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_338_raw_real = _RAND_11[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_338_raw_imag = _RAND_12[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_368_raw_real = _RAND_13[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_368_raw_imag = _RAND_14[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_398_raw_real = _RAND_15[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_398_raw_imag = _RAND_16[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_428_raw_real = _RAND_17[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  _T_428_raw_imag = _RAND_18[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  _T_458_raw_real = _RAND_19[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  _T_458_raw_imag = _RAND_20[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  _T_488_raw_real = _RAND_21[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  _T_488_raw_imag = _RAND_22[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  _T_518_raw_real = _RAND_23[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  _T_518_raw_imag = _RAND_24[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  _T_548_raw_real = _RAND_25[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  _T_548_raw_imag = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  _T_578_raw_real = _RAND_27[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  _T_578_raw_imag = _RAND_28[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  _T_608_raw_real = _RAND_29[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  _T_608_raw_imag = _RAND_30[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  _T_638_raw_real = _RAND_31[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  _T_638_raw_imag = _RAND_32[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  _T_668_raw_real = _RAND_33[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  _T_668_raw_imag = _RAND_34[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  _T_698_raw_real = _RAND_35[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  _T_698_raw_imag = _RAND_36[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  shr_raw_real = _RAND_37[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  shr_raw_imag = _RAND_38[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      accumEnergy <= 32'sh0;
    end else begin
      accumEnergy <= $signed(_GEN_105);
    end
    if (reset) begin
      hasMaxInShr <= 1'h0;
    end else begin
      if (io_in_valid) begin
        if (_T_780) begin
          hasMaxInShr <= 1'h1;
        end else begin
          if (_T_769) begin
            if (_T_775) begin
              hasMaxInShr <= 1'h0;
            end else begin
              if (_T_759) begin
                hasMaxInShr <= 1'h0;
              end
            end
          end else begin
            if (_T_759) begin
              hasMaxInShr <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      currentMax <= 24'sh0;
    end else begin
      if (io_in_valid) begin
        if (_T_780) begin
          currentMax <= instEnergy;
        end else begin
          if (_T_769) begin
            if (_T_775) begin
              currentMax <= instEnergy;
            end
          end
        end
      end
    end
    if (reset) begin
      consecutiveMaxes <= 5'h0;
    end else begin
      if (io_in_valid) begin
        if (_T_780) begin
          consecutiveMaxes <= 5'h0;
        end else begin
          if (_T_769) begin
            if (_T_775) begin
              consecutiveMaxes <= 5'h0;
            end else begin
              if (hasNewMax) begin
                consecutiveMaxes <= 5'h0;
              end else begin
                consecutiveMaxes <= _T_773;
              end
            end
          end else begin
            if (_T_759) begin
              consecutiveMaxes <= 5'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      idleCounter <= 7'h0;
    end else begin
      if (io_in_valid) begin
        if (_T_769) begin
          if (_T_775) begin
            idleCounter <= 7'h1;
          end else begin
            if (_T_765) begin
              idleCounter <= 7'h0;
            end else begin
              if (_T_759) begin
                idleCounter <= _T_762;
              end
            end
          end
        end else begin
          if (_T_765) begin
            idleCounter <= 7'h0;
          end else begin
            if (_T_759) begin
              idleCounter <= _T_762;
            end
          end
        end
      end
    end
    if (reset) begin
      _T_248_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_248_raw_real <= io_in_bits_raw_real;
      end
    end
    if (reset) begin
      _T_248_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_248_raw_imag <= io_in_bits_raw_imag;
      end
    end
    if (reset) begin
      _T_278_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_278_raw_real <= _T_248_raw_real;
      end
    end
    if (reset) begin
      _T_278_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_278_raw_imag <= _T_248_raw_imag;
      end
    end
    if (reset) begin
      _T_308_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_308_raw_real <= _T_278_raw_real;
      end
    end
    if (reset) begin
      _T_308_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_308_raw_imag <= _T_278_raw_imag;
      end
    end
    if (reset) begin
      _T_338_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_338_raw_real <= _T_308_raw_real;
      end
    end
    if (reset) begin
      _T_338_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_338_raw_imag <= _T_308_raw_imag;
      end
    end
    if (reset) begin
      _T_368_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_368_raw_real <= _T_338_raw_real;
      end
    end
    if (reset) begin
      _T_368_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_368_raw_imag <= _T_338_raw_imag;
      end
    end
    if (reset) begin
      _T_398_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_398_raw_real <= _T_368_raw_real;
      end
    end
    if (reset) begin
      _T_398_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_398_raw_imag <= _T_368_raw_imag;
      end
    end
    if (reset) begin
      _T_428_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_428_raw_real <= _T_398_raw_real;
      end
    end
    if (reset) begin
      _T_428_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_428_raw_imag <= _T_398_raw_imag;
      end
    end
    if (reset) begin
      _T_458_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_458_raw_real <= _T_428_raw_real;
      end
    end
    if (reset) begin
      _T_458_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_458_raw_imag <= _T_428_raw_imag;
      end
    end
    if (reset) begin
      _T_488_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_488_raw_real <= _T_458_raw_real;
      end
    end
    if (reset) begin
      _T_488_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_488_raw_imag <= _T_458_raw_imag;
      end
    end
    if (reset) begin
      _T_518_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_518_raw_real <= _T_488_raw_real;
      end
    end
    if (reset) begin
      _T_518_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_518_raw_imag <= _T_488_raw_imag;
      end
    end
    if (reset) begin
      _T_548_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_548_raw_real <= _T_518_raw_real;
      end
    end
    if (reset) begin
      _T_548_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_548_raw_imag <= _T_518_raw_imag;
      end
    end
    if (reset) begin
      _T_578_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_578_raw_real <= _T_548_raw_real;
      end
    end
    if (reset) begin
      _T_578_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_578_raw_imag <= _T_548_raw_imag;
      end
    end
    if (reset) begin
      _T_608_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_608_raw_real <= _T_578_raw_real;
      end
    end
    if (reset) begin
      _T_608_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_608_raw_imag <= _T_578_raw_imag;
      end
    end
    if (reset) begin
      _T_638_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_638_raw_real <= _T_608_raw_real;
      end
    end
    if (reset) begin
      _T_638_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_638_raw_imag <= _T_608_raw_imag;
      end
    end
    if (reset) begin
      _T_668_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_668_raw_real <= _T_638_raw_real;
      end
    end
    if (reset) begin
      _T_668_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_668_raw_imag <= _T_638_raw_imag;
      end
    end
    if (reset) begin
      _T_698_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_698_raw_real <= _T_668_raw_real;
      end
    end
    if (reset) begin
      _T_698_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        _T_698_raw_imag <= _T_668_raw_imag;
      end
    end
    if (reset) begin
      shr_raw_real <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        shr_raw_real <= _T_698_raw_real;
      end
    end
    if (reset) begin
      shr_raw_imag <= 12'sh0;
    end else begin
      if (io_in_valid) begin
        shr_raw_imag <= _T_698_raw_imag;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_753) begin
          $fwrite(32'h80000002,"hasMaxInShr %d\n\n",hasMaxInShr); // @[PeakDetect.scala 61:9:@5521.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module CORDICStage( // @[:@5569.2]
  input  [11:0] io_xin, // @[:@5572.4]
  input  [11:0] io_yin, // @[:@5572.4]
  input  [31:0] io_zin, // @[:@5572.4]
  input  [31:0] io_ROMin, // @[:@5572.4]
  input  [3:0]  io_nShift, // @[:@5572.4]
  output [11:0] io_xout, // @[:@5572.4]
  output [11:0] io_yout, // @[:@5572.4]
  output [31:0] io_zout // @[:@5572.4]
);
  wire  _T_15; // @[FixedPointTypeClass.scala 177:36:@5583.4]
  wire [11:0] my; // @[FixedPointTypeClass.scala 119:51:@5598.4]
  wire [11:0] xshift; // @[FixedPointTypeClass.scala 119:51:@5599.4]
  wire  _T_31; // @[CORDIC.scala 225:21:@5600.4]
  wire [12:0] _T_32; // @[FixedPointTypeClass.scala 21:58:@5601.4]
  wire [11:0] _T_33; // @[FixedPointTypeClass.scala 21:58:@5602.4]
  wire [11:0] _T_34; // @[FixedPointTypeClass.scala 21:58:@5603.4]
  wire [12:0] _T_35; // @[FixedPointTypeClass.scala 31:68:@5604.4]
  wire [11:0] _T_36; // @[FixedPointTypeClass.scala 31:68:@5605.4]
  wire [11:0] _T_37; // @[FixedPointTypeClass.scala 31:68:@5606.4]
  wire [11:0] _T_39; // @[CORDIC.scala 15:8:@5607.4]
  wire [12:0] _T_40; // @[FixedPointTypeClass.scala 21:58:@5609.4]
  wire [11:0] _T_41; // @[FixedPointTypeClass.scala 21:58:@5610.4]
  wire [11:0] _T_42; // @[FixedPointTypeClass.scala 21:58:@5611.4]
  wire [12:0] _T_43; // @[FixedPointTypeClass.scala 31:68:@5612.4]
  wire [11:0] _T_44; // @[FixedPointTypeClass.scala 31:68:@5613.4]
  wire [11:0] _T_45; // @[FixedPointTypeClass.scala 31:68:@5614.4]
  wire [11:0] _T_47; // @[CORDIC.scala 15:8:@5615.4]
  wire [32:0] _T_50; // @[FixedPointTypeClass.scala 21:58:@5618.4]
  wire [31:0] _T_51; // @[FixedPointTypeClass.scala 21:58:@5619.4]
  wire [31:0] _T_52; // @[FixedPointTypeClass.scala 21:58:@5620.4]
  wire [32:0] _T_53; // @[FixedPointTypeClass.scala 31:68:@5621.4]
  wire [31:0] _T_54; // @[FixedPointTypeClass.scala 31:68:@5622.4]
  wire [31:0] _T_55; // @[FixedPointTypeClass.scala 31:68:@5623.4]
  wire [31:0] _T_57; // @[CORDIC.scala 15:8:@5624.4]
  assign _T_15 = $signed(io_yin) < $signed(12'sh0); // @[FixedPointTypeClass.scala 177:36:@5583.4]
  assign my = $signed(io_yin) >>> io_nShift; // @[FixedPointTypeClass.scala 119:51:@5598.4]
  assign xshift = $signed(io_xin) >>> io_nShift; // @[FixedPointTypeClass.scala 119:51:@5599.4]
  assign _T_31 = _T_15 == 1'h0; // @[CORDIC.scala 225:21:@5600.4]
  assign _T_32 = $signed(io_xin) + $signed(my); // @[FixedPointTypeClass.scala 21:58:@5601.4]
  assign _T_33 = _T_32[11:0]; // @[FixedPointTypeClass.scala 21:58:@5602.4]
  assign _T_34 = $signed(_T_33); // @[FixedPointTypeClass.scala 21:58:@5603.4]
  assign _T_35 = $signed(io_xin) - $signed(my); // @[FixedPointTypeClass.scala 31:68:@5604.4]
  assign _T_36 = _T_35[11:0]; // @[FixedPointTypeClass.scala 31:68:@5605.4]
  assign _T_37 = $signed(_T_36); // @[FixedPointTypeClass.scala 31:68:@5606.4]
  assign _T_39 = _T_31 ? $signed(_T_34) : $signed(_T_37); // @[CORDIC.scala 15:8:@5607.4]
  assign _T_40 = $signed(io_yin) + $signed(xshift); // @[FixedPointTypeClass.scala 21:58:@5609.4]
  assign _T_41 = _T_40[11:0]; // @[FixedPointTypeClass.scala 21:58:@5610.4]
  assign _T_42 = $signed(_T_41); // @[FixedPointTypeClass.scala 21:58:@5611.4]
  assign _T_43 = $signed(io_yin) - $signed(xshift); // @[FixedPointTypeClass.scala 31:68:@5612.4]
  assign _T_44 = _T_43[11:0]; // @[FixedPointTypeClass.scala 31:68:@5613.4]
  assign _T_45 = $signed(_T_44); // @[FixedPointTypeClass.scala 31:68:@5614.4]
  assign _T_47 = _T_15 ? $signed(_T_42) : $signed(_T_45); // @[CORDIC.scala 15:8:@5615.4]
  assign _T_50 = $signed(io_zin) + $signed(io_ROMin); // @[FixedPointTypeClass.scala 21:58:@5618.4]
  assign _T_51 = _T_50[31:0]; // @[FixedPointTypeClass.scala 21:58:@5619.4]
  assign _T_52 = $signed(_T_51); // @[FixedPointTypeClass.scala 21:58:@5620.4]
  assign _T_53 = $signed(io_zin) - $signed(io_ROMin); // @[FixedPointTypeClass.scala 31:68:@5621.4]
  assign _T_54 = _T_53[31:0]; // @[FixedPointTypeClass.scala 31:68:@5622.4]
  assign _T_55 = $signed(_T_54); // @[FixedPointTypeClass.scala 31:68:@5623.4]
  assign _T_57 = _T_31 ? $signed(_T_52) : $signed(_T_55); // @[CORDIC.scala 15:8:@5624.4]
  assign io_xout = _T_39;
  assign io_yout = _T_47;
  assign io_zout = _T_57;
endmodule
module SyncROM( // @[:@5635.2]
  input         clock, // @[:@5636.4]
  input  [3:0]  io_addr, // @[:@5638.4]
  output [31:0] io_data // @[:@5638.4]
);
  wire  rom_clock; // @[SyncROM.scala 26:19:@5640.4]
  wire [31:0] rom_data; // @[SyncROM.scala 26:19:@5640.4]
  wire [3:0] rom_addr; // @[SyncROM.scala 26:19:@5640.4]
  circularTable12 rom ( // @[SyncROM.scala 26:19:@5640.4]
    .clock(rom_clock),
    .data(rom_data),
    .addr(rom_addr)
  );
  assign io_data = rom_data;
  assign rom_clock = clock;
  assign rom_addr = io_addr;
endmodule
module IterativeCORDIC( // @[:@5648.2]
  input         clock, // @[:@5649.4]
  input         reset, // @[:@5650.4]
  output        io_in_ready, // @[:@5651.4]
  input         io_in_valid, // @[:@5651.4]
  input  [11:0] io_in_bits_x, // @[:@5651.4]
  input  [11:0] io_in_bits_y, // @[:@5651.4]
  input         io_out_ready, // @[:@5651.4]
  output        io_out_valid, // @[:@5651.4]
  output [31:0] io_out_bits_z // @[:@5651.4]
);
  reg [1:0] state; // @[CORDIC.scala 270:22:@5653.4]
  reg [31:0] _RAND_0;
  reg [11:0] xyzreg_x; // @[CORDIC.scala 271:37:@5654.4]
  reg [31:0] _RAND_1;
  reg [11:0] xyzreg_y; // @[CORDIC.scala 271:37:@5654.4]
  reg [31:0] _RAND_2;
  reg [31:0] xyzreg_z; // @[CORDIC.scala 271:37:@5654.4]
  reg [31:0] _RAND_3;
  reg [3:0] currentStage; // @[CORDIC.scala 274:25:@5656.4]
  reg [31:0] _RAND_4;
  wire [11:0] stage_io_xin; // @[CORDIC.scala 289:21:@5665.4]
  wire [11:0] stage_io_yin; // @[CORDIC.scala 289:21:@5665.4]
  wire [31:0] stage_io_zin; // @[CORDIC.scala 289:21:@5665.4]
  wire [31:0] stage_io_ROMin; // @[CORDIC.scala 289:21:@5665.4]
  wire [3:0] stage_io_nShift; // @[CORDIC.scala 289:21:@5665.4]
  wire [11:0] stage_io_xout; // @[CORDIC.scala 289:21:@5665.4]
  wire [11:0] stage_io_yout; // @[CORDIC.scala 289:21:@5665.4]
  wire [31:0] stage_io_zout; // @[CORDIC.scala 289:21:@5665.4]
  wire  SyncROM_clock; // @[CORDIC.scala 147:21:@5668.4]
  wire [3:0] SyncROM_io_addr; // @[CORDIC.scala 147:21:@5668.4]
  wire [31:0] SyncROM_io_data; // @[CORDIC.scala 147:21:@5668.4]
  wire  _T_49; // @[Decoupled.scala 30:37:@5657.4]
  wire [4:0] _T_52; // @[CORDIC.scala 275:58:@5658.4]
  wire [3:0] _T_53; // @[CORDIC.scala 275:58:@5659.4]
  wire [3:0] romAddr; // @[CORDIC.scala 275:25:@5660.4]
  wire  _T_55; // @[CORDIC.scala 278:25:@5661.4]
  wire  _T_57; // @[CORDIC.scala 279:26:@5663.4]
  wire [32:0] _T_71; // @[Cat.scala 30:58:@5672.4]
  wire [32:0] _T_73; // @[CORDIC.scala 149:40:@5674.4]
  wire [1:0] _GEN_0; // @[CORDIC.scala 304:23:@5685.4]
  wire [31:0] _GEN_1; // @[CORDIC.scala 304:23:@5685.4]
  wire [11:0] _GEN_2; // @[CORDIC.scala 304:23:@5685.4]
  wire [11:0] _GEN_3; // @[CORDIC.scala 304:23:@5685.4]
  wire [3:0] _GEN_4; // @[CORDIC.scala 304:23:@5685.4]
  wire  _T_78; // @[CORDIC.scala 312:15:@5692.4]
  wire  _T_83; // @[CORDIC.scala 318:24:@5700.6]
  wire [1:0] _GEN_5; // @[CORDIC.scala 318:52:@5701.6]
  wire [11:0] _GEN_6; // @[CORDIC.scala 312:38:@5693.4]
  wire [11:0] _GEN_7; // @[CORDIC.scala 312:38:@5693.4]
  wire [31:0] _GEN_8; // @[CORDIC.scala 312:38:@5693.4]
  wire [3:0] _GEN_9; // @[CORDIC.scala 312:38:@5693.4]
  wire [1:0] _GEN_10; // @[CORDIC.scala 312:38:@5693.4]
  wire [1:0] _GEN_11; // @[CORDIC.scala 323:24:@5706.4]
  wire [31:0] _GEN_12; // @[CORDIC.scala 149:40:@5673.4]
  wire [31:0] romOut; // @[CORDIC.scala 149:40:@5673.4]
  CORDICStage stage ( // @[CORDIC.scala 289:21:@5665.4]
    .io_xin(stage_io_xin),
    .io_yin(stage_io_yin),
    .io_zin(stage_io_zin),
    .io_ROMin(stage_io_ROMin),
    .io_nShift(stage_io_nShift),
    .io_xout(stage_io_xout),
    .io_yout(stage_io_yout),
    .io_zout(stage_io_zout)
  );
  SyncROM SyncROM ( // @[CORDIC.scala 147:21:@5668.4]
    .clock(SyncROM_clock),
    .io_addr(SyncROM_io_addr),
    .io_data(SyncROM_io_data)
  );
  assign _T_49 = io_in_ready & io_in_valid; // @[Decoupled.scala 30:37:@5657.4]
  assign _T_52 = currentStage + 4'h1; // @[CORDIC.scala 275:58:@5658.4]
  assign _T_53 = _T_52[3:0]; // @[CORDIC.scala 275:58:@5659.4]
  assign romAddr = _T_49 ? 4'h0 : _T_53; // @[CORDIC.scala 275:25:@5660.4]
  assign _T_55 = state == 2'h0; // @[CORDIC.scala 278:25:@5661.4]
  assign _T_57 = state == 2'h2; // @[CORDIC.scala 279:26:@5663.4]
  assign _T_71 = {1'h0,SyncROM_io_data}; // @[Cat.scala 30:58:@5672.4]
  assign _T_73 = $signed(_T_71); // @[CORDIC.scala 149:40:@5674.4]
  assign _GEN_0 = _T_49 ? 2'h1 : state; // @[CORDIC.scala 304:23:@5685.4]
  assign _GEN_1 = _T_49 ? $signed(32'sh0) : $signed(xyzreg_z); // @[CORDIC.scala 304:23:@5685.4]
  assign _GEN_2 = _T_49 ? $signed(io_in_bits_y) : $signed(xyzreg_y); // @[CORDIC.scala 304:23:@5685.4]
  assign _GEN_3 = _T_49 ? $signed(io_in_bits_x) : $signed(xyzreg_x); // @[CORDIC.scala 304:23:@5685.4]
  assign _GEN_4 = _T_49 ? 4'h0 : currentStage; // @[CORDIC.scala 304:23:@5685.4]
  assign _T_78 = state == 2'h1; // @[CORDIC.scala 312:15:@5692.4]
  assign _T_83 = currentStage == 4'hb; // @[CORDIC.scala 318:24:@5700.6]
  assign _GEN_5 = _T_83 ? 2'h2 : _GEN_0; // @[CORDIC.scala 318:52:@5701.6]
  assign _GEN_6 = _T_78 ? $signed(stage_io_xout) : $signed(_GEN_3); // @[CORDIC.scala 312:38:@5693.4]
  assign _GEN_7 = _T_78 ? $signed(stage_io_yout) : $signed(_GEN_2); // @[CORDIC.scala 312:38:@5693.4]
  assign _GEN_8 = _T_78 ? $signed(stage_io_zout) : $signed(_GEN_1); // @[CORDIC.scala 312:38:@5693.4]
  assign _GEN_9 = _T_78 ? _T_53 : _GEN_4; // @[CORDIC.scala 312:38:@5693.4]
  assign _GEN_10 = _T_78 ? _GEN_5 : _GEN_0; // @[CORDIC.scala 312:38:@5693.4]
  assign _GEN_11 = io_out_valid ? 2'h0 : _GEN_10; // @[CORDIC.scala 323:24:@5706.4]
  assign _GEN_12 = _T_73[31:0]; // @[CORDIC.scala 149:40:@5673.4]
  assign romOut = $signed(_GEN_12); // @[CORDIC.scala 149:40:@5673.4]
  assign io_in_ready = _T_55;
  assign io_out_valid = _T_57;
  assign io_out_bits_z = xyzreg_z;
  assign stage_io_xin = xyzreg_x;
  assign stage_io_yin = xyzreg_y;
  assign stage_io_zin = xyzreg_z;
  assign stage_io_ROMin = romOut;
  assign stage_io_nShift = currentStage;
  assign SyncROM_clock = clock;
  assign SyncROM_io_addr = romAddr;
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
  xyzreg_x = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  xyzreg_y = _RAND_2[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  xyzreg_z = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  currentStage = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (io_out_valid) begin
        state <= 2'h0;
      end else begin
        if (_T_78) begin
          if (_T_83) begin
            state <= 2'h2;
          end else begin
            if (_T_49) begin
              state <= 2'h1;
            end
          end
        end else begin
          if (_T_49) begin
            state <= 2'h1;
          end
        end
      end
    end
    if (_T_78) begin
      xyzreg_x <= stage_io_xout;
    end else begin
      if (_T_49) begin
        xyzreg_x <= io_in_bits_x;
      end
    end
    if (_T_78) begin
      xyzreg_y <= stage_io_yout;
    end else begin
      if (_T_49) begin
        xyzreg_y <= io_in_bits_y;
      end
    end
    if (_T_78) begin
      xyzreg_z <= stage_io_zout;
    end else begin
      if (_T_49) begin
        xyzreg_z <= 32'sh0;
      end
    end
    if (_T_78) begin
      currentStage <= _T_53;
    end else begin
      if (_T_49) begin
        currentStage <= 4'h0;
      end
    end
  end
endmodule
module ShiftRegisterMem_2( // @[:@5765.2]
  input         clock, // @[:@5766.4]
  input         reset, // @[:@5767.4]
  input         io_depth_valid, // @[:@5768.4]
  input         io_in_valid, // @[:@5768.4]
  input  [11:0] io_in_bits_real, // @[:@5768.4]
  input  [11:0] io_in_bits_imag, // @[:@5768.4]
  output        io_out_valid, // @[:@5768.4]
  output [11:0] io_out_bits_real, // @[:@5768.4]
  output [11:0] io_out_bits_imag // @[:@5768.4]
);
  reg [11:0] mem_real [0:288]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  reg [31:0] _RAND_0;
  wire [11:0] mem_real__T_80_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire [8:0] mem_real__T_80_addr; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  reg [31:0] _RAND_1;
  wire [11:0] mem_real__T_77_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire [8:0] mem_real__T_77_addr; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire  mem_real__T_77_mask; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire  mem_real__T_77_en; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire  _GEN_6;
  reg [8:0] mem_real__T_80_addr_pipe_0;
  reg [31:0] _RAND_2;
  reg [11:0] mem_imag [0:288]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  reg [31:0] _RAND_3;
  wire [11:0] mem_imag__T_80_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire [8:0] mem_imag__T_80_addr; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  reg [31:0] _RAND_4;
  wire [11:0] mem_imag__T_77_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire [8:0] mem_imag__T_77_addr; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire  mem_imag__T_77_mask; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  wire  mem_imag__T_77_en; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  reg [8:0] mem_imag__T_80_addr_pipe_0;
  reg [31:0] _RAND_5;
  reg [8:0] readIdxReg; // @[ShiftRegisterMem.scala 19:27:@5775.4]
  reg [31:0] _RAND_6;
  reg [8:0] writeIdx; // @[ShiftRegisterMem.scala 20:27:@5776.4]
  reg [31:0] _RAND_7;
  reg  _T_83; // @[ShiftRegisterMem.scala 42:26:@5816.4]
  reg [31:0] _RAND_8;
  wire [9:0] _T_46; // @[ShiftRegisterMem.scala 19:54:@5772.4]
  wire [9:0] _T_47; // @[ShiftRegisterMem.scala 19:54:@5773.4]
  wire [8:0] _T_48; // @[ShiftRegisterMem.scala 19:54:@5774.4]
  wire [9:0] _T_52; // @[ShiftRegisterMem.scala 23:25:@5778.6]
  wire [9:0] _T_53; // @[ShiftRegisterMem.scala 23:25:@5779.6]
  wire [8:0] _T_54; // @[ShiftRegisterMem.scala 23:25:@5780.6]
  wire [8:0] readIdx; // @[ShiftRegisterMem.scala 22:25:@5777.4]
  wire  _T_62; // @[ShiftRegisterMem.scala 34:31:@5796.6]
  wire [9:0] _T_64; // @[ShiftRegisterMem.scala 34:59:@5797.6]
  wire [8:0] _T_65; // @[ShiftRegisterMem.scala 34:59:@5798.6]
  wire [8:0] _T_67; // @[ShiftRegisterMem.scala 34:22:@5799.6]
  wire  _T_69; // @[ShiftRegisterMem.scala 35:30:@5801.6]
  wire [9:0] _T_71; // @[ShiftRegisterMem.scala 35:59:@5802.6]
  wire [8:0] _T_72; // @[ShiftRegisterMem.scala 35:59:@5803.6]
  wire [8:0] _T_74; // @[ShiftRegisterMem.scala 35:20:@5804.6]
  wire [8:0] _GEN_4; // @[ShiftRegisterMem.scala 33:22:@5795.4]
  wire [8:0] _GEN_5; // @[ShiftRegisterMem.scala 33:22:@5795.4]
  assign mem_real__T_80_addr = mem_real__T_80_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_real__T_80_data = mem_real[mem_real__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  `else
  assign mem_real__T_80_data = mem_real__T_80_addr >= 9'h121 ? _RAND_1[11:0] : mem_real[mem_real__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_real__T_77_data = io_in_bits_real;
  assign mem_real__T_77_addr = writeIdx;
  assign mem_real__T_77_mask = 1'h1;
  assign mem_real__T_77_en = 1'h1;
  assign _GEN_6 = 1'h1;
  assign mem_imag__T_80_addr = mem_imag__T_80_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_imag__T_80_data = mem_imag[mem_imag__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  `else
  assign mem_imag__T_80_data = mem_imag__T_80_addr >= 9'h121 ? _RAND_4[11:0] : mem_imag[mem_imag__T_80_addr]; // @[ShiftRegisterMem.scala 17:31:@5770.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_imag__T_77_data = io_in_bits_imag;
  assign mem_imag__T_77_addr = writeIdx;
  assign mem_imag__T_77_mask = 1'h1;
  assign mem_imag__T_77_en = 1'h1;
  assign _T_46 = 9'h0 - 9'h120; // @[ShiftRegisterMem.scala 19:54:@5772.4]
  assign _T_47 = $unsigned(_T_46); // @[ShiftRegisterMem.scala 19:54:@5773.4]
  assign _T_48 = _T_47[8:0]; // @[ShiftRegisterMem.scala 19:54:@5774.4]
  assign _T_52 = writeIdx - 9'h121; // @[ShiftRegisterMem.scala 23:25:@5778.6]
  assign _T_53 = $unsigned(_T_52); // @[ShiftRegisterMem.scala 23:25:@5779.6]
  assign _T_54 = _T_53[8:0]; // @[ShiftRegisterMem.scala 23:25:@5780.6]
  assign readIdx = io_depth_valid ? _T_54 : readIdxReg; // @[ShiftRegisterMem.scala 22:25:@5777.4]
  assign _T_62 = readIdx < 9'h120; // @[ShiftRegisterMem.scala 34:31:@5796.6]
  assign _T_64 = readIdx + 9'h1; // @[ShiftRegisterMem.scala 34:59:@5797.6]
  assign _T_65 = _T_64[8:0]; // @[ShiftRegisterMem.scala 34:59:@5798.6]
  assign _T_67 = _T_62 ? _T_65 : 9'h0; // @[ShiftRegisterMem.scala 34:22:@5799.6]
  assign _T_69 = writeIdx < 9'h120; // @[ShiftRegisterMem.scala 35:30:@5801.6]
  assign _T_71 = writeIdx + 9'h1; // @[ShiftRegisterMem.scala 35:59:@5802.6]
  assign _T_72 = _T_71[8:0]; // @[ShiftRegisterMem.scala 35:59:@5803.6]
  assign _T_74 = _T_69 ? _T_72 : 9'h0; // @[ShiftRegisterMem.scala 35:20:@5804.6]
  assign _GEN_4 = io_in_valid ? _T_67 : readIdx; // @[ShiftRegisterMem.scala 33:22:@5795.4]
  assign _GEN_5 = io_in_valid ? _T_74 : writeIdx; // @[ShiftRegisterMem.scala 33:22:@5795.4]
  assign io_out_valid = _T_83;
  assign io_out_bits_real = mem_real__T_80_data;
  assign io_out_bits_imag = mem_imag__T_80_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 289; initvar = initvar+1)
    mem_real[initvar] = _RAND_0[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_real__T_80_addr_pipe_0 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 289; initvar = initvar+1)
    mem_imag[initvar] = _RAND_3[11:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  mem_imag__T_80_addr_pipe_0 = _RAND_5[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  readIdxReg = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  writeIdx = _RAND_7[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_83 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem_real__T_77_en & mem_real__T_77_mask) begin
      mem_real[mem_real__T_77_addr] <= mem_real__T_77_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
    end
    if (_GEN_6) begin
      if (io_depth_valid) begin
        mem_real__T_80_addr_pipe_0 <= _T_54;
      end else begin
        mem_real__T_80_addr_pipe_0 <= readIdxReg;
      end
    end
    if(mem_imag__T_77_en & mem_imag__T_77_mask) begin
      mem_imag[mem_imag__T_77_addr] <= mem_imag__T_77_data; // @[ShiftRegisterMem.scala 17:31:@5770.4]
    end
    if (_GEN_6) begin
      if (io_depth_valid) begin
        mem_imag__T_80_addr_pipe_0 <= _T_54;
      end else begin
        mem_imag__T_80_addr_pipe_0 <= readIdxReg;
      end
    end
    if (reset) begin
      readIdxReg <= _T_48;
    end else begin
      if (io_in_valid) begin
        if (_T_62) begin
          readIdxReg <= _T_65;
        end else begin
          readIdxReg <= 9'h0;
        end
      end else begin
        if (io_depth_valid) begin
          readIdxReg <= _T_54;
        end
      end
    end
    if (reset) begin
      writeIdx <= 9'h0;
    end else begin
      if (io_in_valid) begin
        if (_T_69) begin
          writeIdx <= _T_72;
        end else begin
          writeIdx <= 9'h0;
        end
      end
    end
    if (reset) begin
      _T_83 <= 1'h0;
    end else begin
      _T_83 <= io_in_valid;
    end
  end
endmodule
module SyncROM_1( // @[:@5828.2]
  input         clock, // @[:@5829.4]
  input  [9:0]  io_addr, // @[:@5831.4]
  output [29:0] io_data // @[:@5831.4]
);
  wire  rom_clock; // @[SyncROM.scala 26:19:@5833.4]
  wire [29:0] rom_data; // @[SyncROM.scala 26:19:@5833.4]
  wire [9:0] rom_addr; // @[SyncROM.scala 26:19:@5833.4]
  NCOTableLUT rom ( // @[SyncROM.scala 26:19:@5833.4]
    .clock(rom_clock),
    .data(rom_data),
    .addr(rom_addr)
  );
  assign io_data = rom_data;
  assign rom_clock = clock;
  assign rom_addr = io_addr;
endmodule
module NCOTable( // @[:@5862.2]
  input         clock, // @[:@5863.4]
  input  [31:0] io_phase, // @[:@5865.4]
  output [31:0] io_sinOut, // @[:@5865.4]
  output [31:0] io_cosOut // @[:@5865.4]
);
  wire  table0_clock; // @[NCOTable.scala 69:22:@5867.4]
  wire [9:0] table0_io_addr; // @[NCOTable.scala 69:22:@5867.4]
  wire [29:0] table0_io_data; // @[NCOTable.scala 69:22:@5867.4]
  wire  table1_clock; // @[NCOTable.scala 70:22:@5870.4]
  wire [9:0] table1_io_addr; // @[NCOTable.scala 70:22:@5870.4]
  wire [29:0] table1_io_data; // @[NCOTable.scala 70:22:@5870.4]
  reg  sinIsOne; // @[NCOTable.scala 111:21:@5887.4]
  reg [31:0] _RAND_0;
  reg  cosIsOne; // @[NCOTable.scala 112:21:@5888.4]
  reg [31:0] _RAND_1;
  wire [1:0] msbs; // @[NCOTable.scala 83:24:@5873.4]
  wire [9:0] addr; // @[NCOTable.scala 84:24:@5874.4]
  wire  _T_1044; // @[Conditional.scala 37:30:@5891.4]
  wire [10:0] _T_1046; // @[NCOTable.scala 102:9:@5894.6]
  wire [10:0] _T_1047; // @[NCOTable.scala 102:9:@5895.6]
  wire [9:0] _T_1048; // @[NCOTable.scala 102:9:@5896.6]
  wire  _T_1057; // @[Conditional.scala 37:30:@5906.6]
  wire  _T_1070; // @[Conditional.scala 37:30:@5921.8]
  wire  _T_1083; // @[Conditional.scala 37:30:@5936.10]
  wire [9:0] _GEN_1; // @[Conditional.scala 39:67:@5937.10]
  wire [9:0] _GEN_6; // @[Conditional.scala 39:67:@5922.8]
  wire [9:0] _GEN_12; // @[Conditional.scala 39:67:@5907.6]
  wire [9:0] cosAddr; // @[Conditional.scala 40:58:@5892.4]
  wire  _T_1052; // @[NCOTable.scala 123:27:@5900.6]
  wire  _T_1054; // @[NCOTable.scala 123:43:@5901.6]
  wire  _T_1055; // @[NCOTable.scala 123:35:@5902.6]
  wire [9:0] _GEN_0; // @[Conditional.scala 39:67:@5937.10]
  wire [9:0] _GEN_5; // @[Conditional.scala 39:67:@5922.8]
  wire [9:0] _GEN_11; // @[Conditional.scala 39:67:@5907.6]
  wire [9:0] sinAddr; // @[Conditional.scala 40:58:@5892.4]
  wire  _T_1065; // @[NCOTable.scala 130:27:@5915.8]
  wire  _T_1068; // @[NCOTable.scala 130:35:@5917.8]
  wire  _GEN_4; // @[Conditional.scala 39:67:@5937.10]
  wire  _GEN_7; // @[Conditional.scala 39:67:@5922.8]
  wire  _GEN_9; // @[Conditional.scala 39:67:@5922.8]
  wire  _GEN_10; // @[Conditional.scala 39:67:@5922.8]
  wire  _GEN_13; // @[Conditional.scala 39:67:@5907.6]
  wire  _GEN_14; // @[Conditional.scala 39:67:@5907.6]
  wire  _GEN_15; // @[Conditional.scala 39:67:@5907.6]
  wire  _GEN_16; // @[Conditional.scala 39:67:@5907.6]
  wire  sinNegative; // @[Conditional.scala 40:58:@5892.4]
  wire  cosNegative; // @[Conditional.scala 40:58:@5892.4]
  wire  _GEN_21; // @[Conditional.scala 40:58:@5892.4]
  wire  _GEN_22; // @[Conditional.scala 40:58:@5892.4]
  wire [30:0] _T_1096; // @[Cat.scala 30:58:@5952.4]
  wire [30:0] _T_1099; // @[NCOTable.scala 153:73:@5954.4]
  wire [31:0] _T_1098; // @[NCOTable.scala 153:73:@5953.4]
  wire [31:0] sinTableOut; // @[NCOTable.scala 153:24:@5956.4]
  wire [30:0] _T_1102; // @[Cat.scala 30:58:@5957.4]
  wire [30:0] _T_1105; // @[NCOTable.scala 154:73:@5959.4]
  wire [31:0] _T_1104; // @[NCOTable.scala 154:73:@5958.4]
  wire [31:0] cosTableOut; // @[NCOTable.scala 154:24:@5961.4]
  wire [32:0] _T_1108; // @[FixedPointTypeClass.scala 40:43:@5962.4]
  wire [31:0] _T_1109; // @[FixedPointTypeClass.scala 40:43:@5963.4]
  wire [31:0] _T_1110; // @[FixedPointTypeClass.scala 40:43:@5964.4]
  wire [31:0] cosDerivs_2; // @[NCOTable.scala 156:19:@5965.4]
  wire [32:0] _T_1113; // @[FixedPointTypeClass.scala 40:43:@5966.4]
  wire [31:0] _T_1114; // @[FixedPointTypeClass.scala 40:43:@5967.4]
  wire [31:0] _T_1115; // @[FixedPointTypeClass.scala 40:43:@5968.4]
  wire [31:0] cosDerivs_3; // @[NCOTable.scala 157:19:@5969.4]
  SyncROM_1 table0 ( // @[NCOTable.scala 69:22:@5867.4]
    .clock(table0_clock),
    .io_addr(table0_io_addr),
    .io_data(table0_io_data)
  );
  SyncROM_1 table1 ( // @[NCOTable.scala 70:22:@5870.4]
    .clock(table1_clock),
    .io_addr(table1_io_addr),
    .io_data(table1_io_data)
  );
  assign msbs = io_phase[31:30]; // @[NCOTable.scala 83:24:@5873.4]
  assign addr = io_phase[29:20]; // @[NCOTable.scala 84:24:@5874.4]
  assign _T_1044 = 2'h0 == msbs; // @[Conditional.scala 37:30:@5891.4]
  assign _T_1046 = 10'h0 - addr; // @[NCOTable.scala 102:9:@5894.6]
  assign _T_1047 = $unsigned(_T_1046); // @[NCOTable.scala 102:9:@5895.6]
  assign _T_1048 = _T_1047[9:0]; // @[NCOTable.scala 102:9:@5896.6]
  assign _T_1057 = 2'h1 == msbs; // @[Conditional.scala 37:30:@5906.6]
  assign _T_1070 = 2'h2 == msbs; // @[Conditional.scala 37:30:@5921.8]
  assign _T_1083 = 2'h3 == msbs; // @[Conditional.scala 37:30:@5936.10]
  assign _GEN_1 = _T_1083 ? addr : 10'h0; // @[Conditional.scala 39:67:@5937.10]
  assign _GEN_6 = _T_1070 ? _T_1048 : _GEN_1; // @[Conditional.scala 39:67:@5922.8]
  assign _GEN_12 = _T_1057 ? addr : _GEN_6; // @[Conditional.scala 39:67:@5907.6]
  assign cosAddr = _T_1044 ? _T_1048 : _GEN_12; // @[Conditional.scala 40:58:@5892.4]
  assign _T_1052 = cosAddr == 10'h0; // @[NCOTable.scala 123:27:@5900.6]
  assign _T_1054 = addr == 10'h0; // @[NCOTable.scala 123:43:@5901.6]
  assign _T_1055 = _T_1052 & _T_1054; // @[NCOTable.scala 123:35:@5902.6]
  assign _GEN_0 = _T_1083 ? _T_1048 : 10'h0; // @[Conditional.scala 39:67:@5937.10]
  assign _GEN_5 = _T_1070 ? addr : _GEN_0; // @[Conditional.scala 39:67:@5922.8]
  assign _GEN_11 = _T_1057 ? _T_1048 : _GEN_5; // @[Conditional.scala 39:67:@5907.6]
  assign sinAddr = _T_1044 ? addr : _GEN_11; // @[Conditional.scala 40:58:@5892.4]
  assign _T_1065 = sinAddr == 10'h0; // @[NCOTable.scala 130:27:@5915.8]
  assign _T_1068 = _T_1065 & _T_1054; // @[NCOTable.scala 130:35:@5917.8]
  assign _GEN_4 = _T_1083 ? _T_1068 : 1'h0; // @[Conditional.scala 39:67:@5937.10]
  assign _GEN_7 = _T_1070 ? 1'h1 : _T_1083; // @[Conditional.scala 39:67:@5922.8]
  assign _GEN_9 = _T_1070 ? _T_1055 : 1'h0; // @[Conditional.scala 39:67:@5922.8]
  assign _GEN_10 = _T_1070 ? 1'h0 : _GEN_4; // @[Conditional.scala 39:67:@5922.8]
  assign _GEN_13 = _T_1057 ? 1'h0 : _GEN_7; // @[Conditional.scala 39:67:@5907.6]
  assign _GEN_14 = _T_1057 ? 1'h1 : _T_1070; // @[Conditional.scala 39:67:@5907.6]
  assign _GEN_15 = _T_1057 ? _T_1068 : _GEN_10; // @[Conditional.scala 39:67:@5907.6]
  assign _GEN_16 = _T_1057 ? 1'h0 : _GEN_9; // @[Conditional.scala 39:67:@5907.6]
  assign sinNegative = _T_1044 ? 1'h0 : _GEN_13; // @[Conditional.scala 40:58:@5892.4]
  assign cosNegative = _T_1044 ? 1'h0 : _GEN_14; // @[Conditional.scala 40:58:@5892.4]
  assign _GEN_21 = _T_1044 ? _T_1055 : _GEN_16; // @[Conditional.scala 40:58:@5892.4]
  assign _GEN_22 = _T_1044 ? 1'h0 : _GEN_15; // @[Conditional.scala 40:58:@5892.4]
  assign _T_1096 = {1'h0,table0_io_data}; // @[Cat.scala 30:58:@5952.4]
  assign _T_1099 = $signed(_T_1096); // @[NCOTable.scala 153:73:@5954.4]
  assign _T_1098 = {{1{_T_1099[30]}},_T_1099}; // @[NCOTable.scala 153:73:@5953.4]
  assign sinTableOut = sinIsOne ? $signed(32'sh40000000) : $signed(_T_1098); // @[NCOTable.scala 153:24:@5956.4]
  assign _T_1102 = {1'h0,table1_io_data}; // @[Cat.scala 30:58:@5957.4]
  assign _T_1105 = $signed(_T_1102); // @[NCOTable.scala 154:73:@5959.4]
  assign _T_1104 = {{1{_T_1105[30]}},_T_1105}; // @[NCOTable.scala 154:73:@5958.4]
  assign cosTableOut = cosIsOne ? $signed(32'sh40000000) : $signed(_T_1104); // @[NCOTable.scala 154:24:@5961.4]
  assign _T_1108 = $signed(32'sh0) - $signed(sinTableOut); // @[FixedPointTypeClass.scala 40:43:@5962.4]
  assign _T_1109 = _T_1108[31:0]; // @[FixedPointTypeClass.scala 40:43:@5963.4]
  assign _T_1110 = $signed(_T_1109); // @[FixedPointTypeClass.scala 40:43:@5964.4]
  assign cosDerivs_2 = sinNegative ? $signed(_T_1110) : $signed(sinTableOut); // @[NCOTable.scala 156:19:@5965.4]
  assign _T_1113 = $signed(32'sh0) - $signed(cosTableOut); // @[FixedPointTypeClass.scala 40:43:@5966.4]
  assign _T_1114 = _T_1113[31:0]; // @[FixedPointTypeClass.scala 40:43:@5967.4]
  assign _T_1115 = $signed(_T_1114); // @[FixedPointTypeClass.scala 40:43:@5968.4]
  assign cosDerivs_3 = cosNegative ? $signed(_T_1115) : $signed(cosTableOut); // @[NCOTable.scala 157:19:@5969.4]
  assign io_sinOut = cosDerivs_2;
  assign io_cosOut = cosDerivs_3;
  assign table0_clock = clock;
  assign table0_io_addr = sinAddr;
  assign table1_clock = clock;
  assign table1_io_addr = cosAddr;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  sinIsOne = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  cosIsOne = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_1044) begin
      sinIsOne <= 1'h0;
    end else begin
      if (_T_1057) begin
        sinIsOne <= _T_1068;
      end else begin
        if (_T_1070) begin
          sinIsOne <= 1'h0;
        end else begin
          if (_T_1083) begin
            sinIsOne <= _T_1068;
          end else begin
            sinIsOne <= 1'h0;
          end
        end
      end
    end
    if (_T_1044) begin
      cosIsOne <= _T_1055;
    end else begin
      if (_T_1057) begin
        cosIsOne <= 1'h0;
      end else begin
        if (_T_1070) begin
          cosIsOne <= _T_1055;
        end else begin
          cosIsOne <= 1'h0;
        end
      end
    end
  end
endmodule
module NCO( // @[:@5985.2]
  input         clock, // @[:@5986.4]
  input         reset, // @[:@5987.4]
  input         io_en, // @[:@5988.4]
  input  [31:0] io_freq, // @[:@5988.4]
  output        io_out_valid, // @[:@5988.4]
  output [31:0] io_out_bits_real, // @[:@5988.4]
  output [31:0] io_out_bits_imag // @[:@5988.4]
);
  reg [31:0] phaseCounter; // @[NCO.scala 40:25:@5990.4]
  reg [31:0] _RAND_0;
  wire  phaseConverter_clock; // @[NCO.scala 41:30:@5991.4]
  wire [31:0] phaseConverter_io_phase; // @[NCO.scala 41:30:@5991.4]
  wire [31:0] phaseConverter_io_sinOut; // @[NCO.scala 41:30:@5991.4]
  wire [31:0] phaseConverter_io_cosOut; // @[NCO.scala 41:30:@5991.4]
  reg  _T_25; // @[NCO.scala 51:30:@6003.4]
  reg [31:0] _RAND_1;
  wire [31:0] _T_20; // @[NCO.scala 44:50:@5995.6]
  wire [32:0] _T_21; // @[NCO.scala 44:34:@5996.6]
  wire [31:0] _T_22; // @[NCO.scala 44:34:@5997.6]
  wire [31:0] _GEN_0; // @[NCO.scala 43:16:@5994.4]
  NCOTable phaseConverter ( // @[NCO.scala 41:30:@5991.4]
    .clock(phaseConverter_clock),
    .io_phase(phaseConverter_io_phase),
    .io_sinOut(phaseConverter_io_sinOut),
    .io_cosOut(phaseConverter_io_cosOut)
  );
  assign _T_20 = $unsigned(io_freq); // @[NCO.scala 44:50:@5995.6]
  assign _T_21 = phaseCounter + _T_20; // @[NCO.scala 44:34:@5996.6]
  assign _T_22 = _T_21[31:0]; // @[NCO.scala 44:34:@5997.6]
  assign _GEN_0 = io_en ? _T_22 : phaseCounter; // @[NCO.scala 43:16:@5994.4]
  assign io_out_valid = _T_25;
  assign io_out_bits_real = phaseConverter_io_cosOut;
  assign io_out_bits_imag = phaseConverter_io_sinOut;
  assign phaseConverter_clock = clock;
  assign phaseConverter_io_phase = phaseCounter;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  phaseCounter = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_25 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_en) begin
      phaseCounter <= _T_22;
    end
    if (reset) begin
      _T_25 <= 1'h0;
    end else begin
      _T_25 <= io_en;
    end
  end
endmodule
module Sync( // @[:@6007.2]
  input         clock, // @[:@6008.4]
  input         reset, // @[:@6009.4]
  input         io_in_valid, // @[:@6010.4]
  input  [11:0] io_in_bits_real, // @[:@6010.4]
  input  [11:0] io_in_bits_imag, // @[:@6010.4]
  output        io_out_valid, // @[:@6010.4]
  output [11:0] io_out_bits_real, // @[:@6010.4]
  output [11:0] io_out_bits_imag, // @[:@6010.4]
  output        io_packetDetect, // @[:@6010.4]
  input  [7:0]  io_autocorrConfig_depthApart, // @[:@6010.4]
  input  [7:0]  io_autocorrConfig_depthOverlap, // @[:@6010.4]
  input  [31:0] io_peakDetectConfig_energyFF, // @[:@6010.4]
  input  [31:0] io_peakDetectConfig_energyMult, // @[:@6010.4]
  input  [31:0] io_peakDetectConfig_accumMult, // @[:@6010.4]
  input  [31:0] io_peakDetectConfig_energyOffset, // @[:@6010.4]
  input  [6:0]  io_peakDetectConfig_idlePeriod, // @[:@6010.4]
  input  [31:0] io_autocorrFF, // @[:@6010.4]
  input  [31:0] io_freqScaleFactor // @[:@6010.4]
);
  wire  autocorr_clock; // @[Sync.scala 34:24:@6012.4]
  wire  autocorr_reset; // @[Sync.scala 34:24:@6012.4]
  wire  autocorr_io_in_valid; // @[Sync.scala 34:24:@6012.4]
  wire [11:0] autocorr_io_in_bits_real; // @[Sync.scala 34:24:@6012.4]
  wire [11:0] autocorr_io_in_bits_imag; // @[Sync.scala 34:24:@6012.4]
  wire [11:0] autocorr_io_out_bits_real; // @[Sync.scala 34:24:@6012.4]
  wire [11:0] autocorr_io_out_bits_imag; // @[Sync.scala 34:24:@6012.4]
  wire [7:0] autocorr_io_config_depthApart; // @[Sync.scala 34:24:@6012.4]
  wire [7:0] autocorr_io_config_depthOverlap; // @[Sync.scala 34:24:@6012.4]
  wire  matchedFilter_clock; // @[Sync.scala 37:29:@6017.4]
  wire  matchedFilter_io_in_valid; // @[Sync.scala 37:29:@6017.4]
  wire [11:0] matchedFilter_io_in_bits_real; // @[Sync.scala 37:29:@6017.4]
  wire [11:0] matchedFilter_io_in_bits_imag; // @[Sync.scala 37:29:@6017.4]
  wire  matchedFilter_io_out_valid; // @[Sync.scala 37:29:@6017.4]
  wire [11:0] matchedFilter_io_out_bits_real; // @[Sync.scala 37:29:@6017.4]
  wire [11:0] matchedFilter_io_out_bits_imag; // @[Sync.scala 37:29:@6017.4]
  wire  peakDetect_clock; // @[Sync.scala 39:26:@6020.4]
  wire  peakDetect_reset; // @[Sync.scala 39:26:@6020.4]
  wire  peakDetect_io_in_valid; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_in_bits_corr_real; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_in_bits_corr_imag; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_in_bits_raw_real; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_in_bits_raw_imag; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_out_bits_raw_real; // @[Sync.scala 39:26:@6020.4]
  wire [11:0] peakDetect_io_out_bits_raw_imag; // @[Sync.scala 39:26:@6020.4]
  wire  peakDetect_io_outLast; // @[Sync.scala 39:26:@6020.4]
  wire [31:0] peakDetect_io_config_energyFF; // @[Sync.scala 39:26:@6020.4]
  wire [31:0] peakDetect_io_config_energyMult; // @[Sync.scala 39:26:@6020.4]
  wire [31:0] peakDetect_io_config_accumMult; // @[Sync.scala 39:26:@6020.4]
  wire [31:0] peakDetect_io_config_energyOffset; // @[Sync.scala 39:26:@6020.4]
  wire [6:0] peakDetect_io_config_idlePeriod; // @[Sync.scala 39:26:@6020.4]
  wire  cordic_clock; // @[Sync.scala 42:22:@6028.4]
  wire  cordic_reset; // @[Sync.scala 42:22:@6028.4]
  wire  cordic_io_in_ready; // @[Sync.scala 42:22:@6028.4]
  wire  cordic_io_in_valid; // @[Sync.scala 42:22:@6028.4]
  wire [11:0] cordic_io_in_bits_x; // @[Sync.scala 42:22:@6028.4]
  wire [11:0] cordic_io_in_bits_y; // @[Sync.scala 42:22:@6028.4]
  wire  cordic_io_out_ready; // @[Sync.scala 42:22:@6028.4]
  wire  cordic_io_out_valid; // @[Sync.scala 42:22:@6028.4]
  wire [31:0] cordic_io_out_bits_z; // @[Sync.scala 42:22:@6028.4]
  reg [7:0] _T_239; // @[Sync.scala 46:62:@6035.4]
  reg [31:0] _RAND_0;
  wire  ShiftRegisterMem_clock; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire  ShiftRegisterMem_reset; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire  ShiftRegisterMem_io_depth_valid; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire [7:0] ShiftRegisterMem_io_depth_bits; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire  ShiftRegisterMem_io_in_valid; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire [11:0] ShiftRegisterMem_io_in_bits_real; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire [11:0] ShiftRegisterMem_io_in_bits_imag; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire  ShiftRegisterMem_io_out_valid; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire [11:0] ShiftRegisterMem_io_out_bits_real; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire [11:0] ShiftRegisterMem_io_out_bits_imag; // @[ShiftRegisterMem.scala 54:34:@6040.4]
  wire  delayedInShr_clock; // @[Sync.scala 52:28:@6051.4]
  wire  delayedInShr_reset; // @[Sync.scala 52:28:@6051.4]
  wire  delayedInShr_io_depth_valid; // @[Sync.scala 52:28:@6051.4]
  wire  delayedInShr_io_in_valid; // @[Sync.scala 52:28:@6051.4]
  wire [11:0] delayedInShr_io_in_bits_real; // @[Sync.scala 52:28:@6051.4]
  wire [11:0] delayedInShr_io_in_bits_imag; // @[Sync.scala 52:28:@6051.4]
  wire  delayedInShr_io_out_valid; // @[Sync.scala 52:28:@6051.4]
  wire [11:0] delayedInShr_io_out_bits_real; // @[Sync.scala 52:28:@6051.4]
  wire [11:0] delayedInShr_io_out_bits_imag; // @[Sync.scala 52:28:@6051.4]
  reg  _T_249; // @[Sync.scala 56:41:@6058.4]
  reg [31:0] _RAND_1;
  reg [31:0] peakDetectAverage_real; // @[Forgettable.scala 9:26:@6082.4]
  reg [31:0] _RAND_2;
  reg [31:0] peakDetectAverage_imag; // @[Forgettable.scala 9:26:@6082.4]
  reg [31:0] _RAND_3;
  reg  _T_398; // @[Sync.scala 89:33:@6117.4]
  reg [31:0] _RAND_4;
  reg [31:0] cordicOut; // @[Reg.scala 19:20:@6125.4]
  reg [31:0] _RAND_5;
  wire  nco_clock; // @[Sync.scala 99:19:@6129.4]
  wire  nco_reset; // @[Sync.scala 99:19:@6129.4]
  wire  nco_io_en; // @[Sync.scala 99:19:@6129.4]
  wire [31:0] nco_io_freq; // @[Sync.scala 99:19:@6129.4]
  wire  nco_io_out_valid; // @[Sync.scala 99:19:@6129.4]
  wire [31:0] nco_io_out_bits_real; // @[Sync.scala 99:19:@6129.4]
  wire [31:0] nco_io_out_bits_imag; // @[Sync.scala 99:19:@6129.4]
  wire  depthWire_valid; // @[Sync.scala 46:51:@6037.4]
  wire [32:0] _T_356; // @[FixedPointTypeClass.scala 21:58:@6084.6]
  wire [31:0] _T_357; // @[FixedPointTypeClass.scala 21:58:@6085.6]
  wire [31:0] _T_358; // @[FixedPointTypeClass.scala 21:58:@6086.6]
  wire [32:0] _T_359; // @[FixedPointTypeClass.scala 21:58:@6087.6]
  wire [31:0] _T_360; // @[FixedPointTypeClass.scala 21:58:@6088.6]
  wire [31:0] _T_361; // @[FixedPointTypeClass.scala 21:58:@6089.6]
  wire [32:0] _T_362; // @[FixedPointTypeClass.scala 31:68:@6090.6]
  wire [31:0] _T_363; // @[FixedPointTypeClass.scala 31:68:@6091.6]
  wire [31:0] _T_364; // @[FixedPointTypeClass.scala 31:68:@6092.6]
  wire [63:0] _T_365; // @[FixedPointTypeClass.scala 43:59:@6093.6]
  wire [63:0] _T_366; // @[FixedPointTypeClass.scala 43:59:@6094.6]
  wire [63:0] _T_367; // @[FixedPointTypeClass.scala 43:59:@6095.6]
  wire [64:0] _T_368; // @[FixedPointTypeClass.scala 31:68:@6096.6]
  wire [63:0] _T_369; // @[FixedPointTypeClass.scala 31:68:@6097.6]
  wire [63:0] _T_370; // @[FixedPointTypeClass.scala 31:68:@6098.6]
  wire [64:0] _T_371; // @[FixedPointTypeClass.scala 21:58:@6099.6]
  wire [63:0] _T_372; // @[FixedPointTypeClass.scala 21:58:@6100.6]
  wire [63:0] _T_373; // @[FixedPointTypeClass.scala 21:58:@6101.6]
  wire [11:0] peakDetectRawOut_bits_real; // @[Sync.scala 77:20:@6072.4]
  wire [33:0] _GEN_3; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  wire [33:0] _GEN_4; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  wire [63:0] _GEN_5; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  wire [64:0] _T_382; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  wire [63:0] _T_383; // @[FixedPointTypeClass.scala 21:58:@6106.6]
  wire [63:0] _T_384; // @[FixedPointTypeClass.scala 21:58:@6107.6]
  wire [11:0] peakDetectRawOut_bits_imag; // @[Sync.scala 77:20:@6072.4]
  wire [33:0] _GEN_6; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  wire [33:0] _GEN_7; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  wire [63:0] _GEN_8; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  wire [64:0] _T_385; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  wire [63:0] _T_386; // @[FixedPointTypeClass.scala 21:58:@6109.6]
  wire [63:0] _T_387; // @[FixedPointTypeClass.scala 21:58:@6110.6]
  wire  peakDetectRawOut_valid; // @[Sync.scala 77:20:@6072.4]
  wire [47:0] _GEN_9; // @[Forgettable.scala 11:22:@6083.4]
  wire [47:0] _GEN_10; // @[Forgettable.scala 11:22:@6083.4]
  wire [63:0] _GEN_0; // @[Forgettable.scala 11:22:@6083.4]
  wire [47:0] _GEN_11; // @[Forgettable.scala 11:22:@6083.4]
  wire [47:0] _GEN_12; // @[Forgettable.scala 11:22:@6083.4]
  wire [63:0] _GEN_1; // @[Forgettable.scala 11:22:@6083.4]
  wire  _T_402; // @[Decoupled.scala 30:37:@6124.4]
  wire [63:0] _GEN_13; // @[Reg.scala 20:19:@6126.4]
  wire [63:0] _GEN_2; // @[Reg.scala 20:19:@6126.4]
  wire [63:0] _T_404; // @[FixedPointTypeClass.scala 43:59:@6133.4]
  wire [12:0] _T_405; // @[FixedPointTypeClass.scala 21:58:@6135.4]
  wire [11:0] _T_406; // @[FixedPointTypeClass.scala 21:58:@6136.4]
  wire [11:0] _T_407; // @[FixedPointTypeClass.scala 21:58:@6137.4]
  wire [32:0] _T_408; // @[FixedPointTypeClass.scala 21:58:@6138.4]
  wire [31:0] _T_409; // @[FixedPointTypeClass.scala 21:58:@6139.4]
  wire [31:0] _T_410; // @[FixedPointTypeClass.scala 21:58:@6140.4]
  wire [32:0] _T_411; // @[FixedPointTypeClass.scala 31:68:@6141.4]
  wire [31:0] _T_412; // @[FixedPointTypeClass.scala 31:68:@6142.4]
  wire [31:0] _T_413; // @[FixedPointTypeClass.scala 31:68:@6143.4]
  wire [31:0] _GEN_14; // @[FixedPointTypeClass.scala 43:59:@6144.4]
  wire [43:0] _T_414; // @[FixedPointTypeClass.scala 43:59:@6144.4]
  wire [31:0] _GEN_15; // @[FixedPointTypeClass.scala 43:59:@6145.4]
  wire [43:0] _T_415; // @[FixedPointTypeClass.scala 43:59:@6145.4]
  wire [31:0] _GEN_16; // @[FixedPointTypeClass.scala 43:59:@6146.4]
  wire [43:0] _T_416; // @[FixedPointTypeClass.scala 43:59:@6146.4]
  wire [44:0] _T_417; // @[FixedPointTypeClass.scala 31:68:@6147.4]
  wire [43:0] _T_418; // @[FixedPointTypeClass.scala 31:68:@6148.4]
  wire [43:0] _T_419; // @[FixedPointTypeClass.scala 31:68:@6149.4]
  wire [44:0] _T_420; // @[FixedPointTypeClass.scala 21:58:@6150.4]
  wire [43:0] _T_421; // @[FixedPointTypeClass.scala 21:58:@6151.4]
  wire [43:0] _T_422; // @[FixedPointTypeClass.scala 21:58:@6152.4]
  wire  sampleAndCorr_valid; // @[Sync.scala 63:20:@6061.4]
  wire [11:0] sampleAndCorr_bits_corr_real; // @[Sync.scala 63:20:@6061.4]
  wire [11:0] sampleAndCorr_bits_corr_imag; // @[Sync.scala 63:20:@6061.4]
  wire [11:0] sampleAndCorr_bits_raw_real; // @[Sync.scala 63:20:@6061.4]
  wire [11:0] sampleAndCorr_bits_raw_imag; // @[Sync.scala 63:20:@6061.4]
  wire [13:0] _GEN_17;
  wire [11:0] _GEN_18;
  wire [13:0] _GEN_19;
  wire [11:0] _GEN_20;
  wire [25:0] _GEN_21;
  wire [11:0] _GEN_22;
  wire [25:0] _GEN_23;
  wire [11:0] _GEN_24;
  wire [47:0] _GEN_25;
  wire [31:0] _GEN_26;
  wire [47:0] _GEN_27;
  wire [31:0] _GEN_28;
  wire [31:0] _GEN_29;
  AutocorrSimple autocorr ( // @[Sync.scala 34:24:@6012.4]
    .clock(autocorr_clock),
    .reset(autocorr_reset),
    .io_in_valid(autocorr_io_in_valid),
    .io_in_bits_real(autocorr_io_in_bits_real),
    .io_in_bits_imag(autocorr_io_in_bits_imag),
    .io_out_bits_real(autocorr_io_out_bits_real),
    .io_out_bits_imag(autocorr_io_out_bits_imag),
    .io_config_depthApart(autocorr_io_config_depthApart),
    .io_config_depthOverlap(autocorr_io_config_depthOverlap)
  );
  STF64MatchedFilter matchedFilter ( // @[Sync.scala 37:29:@6017.4]
    .clock(matchedFilter_clock),
    .io_in_valid(matchedFilter_io_in_valid),
    .io_in_bits_real(matchedFilter_io_in_bits_real),
    .io_in_bits_imag(matchedFilter_io_in_bits_imag),
    .io_out_valid(matchedFilter_io_out_valid),
    .io_out_bits_real(matchedFilter_io_out_bits_real),
    .io_out_bits_imag(matchedFilter_io_out_bits_imag)
  );
  PeakDetect peakDetect ( // @[Sync.scala 39:26:@6020.4]
    .clock(peakDetect_clock),
    .reset(peakDetect_reset),
    .io_in_valid(peakDetect_io_in_valid),
    .io_in_bits_corr_real(peakDetect_io_in_bits_corr_real),
    .io_in_bits_corr_imag(peakDetect_io_in_bits_corr_imag),
    .io_in_bits_raw_real(peakDetect_io_in_bits_raw_real),
    .io_in_bits_raw_imag(peakDetect_io_in_bits_raw_imag),
    .io_out_bits_raw_real(peakDetect_io_out_bits_raw_real),
    .io_out_bits_raw_imag(peakDetect_io_out_bits_raw_imag),
    .io_outLast(peakDetect_io_outLast),
    .io_config_energyFF(peakDetect_io_config_energyFF),
    .io_config_energyMult(peakDetect_io_config_energyMult),
    .io_config_accumMult(peakDetect_io_config_accumMult),
    .io_config_energyOffset(peakDetect_io_config_energyOffset),
    .io_config_idlePeriod(peakDetect_io_config_idlePeriod)
  );
  IterativeCORDIC cordic ( // @[Sync.scala 42:22:@6028.4]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_ready(cordic_io_in_ready),
    .io_in_valid(cordic_io_in_valid),
    .io_in_bits_x(cordic_io_in_bits_x),
    .io_in_bits_y(cordic_io_in_bits_y),
    .io_out_ready(cordic_io_out_ready),
    .io_out_valid(cordic_io_out_valid),
    .io_out_bits_z(cordic_io_out_bits_z)
  );
  ShiftRegisterMem ShiftRegisterMem ( // @[ShiftRegisterMem.scala 54:34:@6040.4]
    .clock(ShiftRegisterMem_clock),
    .reset(ShiftRegisterMem_reset),
    .io_depth_valid(ShiftRegisterMem_io_depth_valid),
    .io_depth_bits(ShiftRegisterMem_io_depth_bits),
    .io_in_valid(ShiftRegisterMem_io_in_valid),
    .io_in_bits_real(ShiftRegisterMem_io_in_bits_real),
    .io_in_bits_imag(ShiftRegisterMem_io_in_bits_imag),
    .io_out_valid(ShiftRegisterMem_io_out_valid),
    .io_out_bits_real(ShiftRegisterMem_io_out_bits_real),
    .io_out_bits_imag(ShiftRegisterMem_io_out_bits_imag)
  );
  ShiftRegisterMem_2 delayedInShr ( // @[Sync.scala 52:28:@6051.4]
    .clock(delayedInShr_clock),
    .reset(delayedInShr_reset),
    .io_depth_valid(delayedInShr_io_depth_valid),
    .io_in_valid(delayedInShr_io_in_valid),
    .io_in_bits_real(delayedInShr_io_in_bits_real),
    .io_in_bits_imag(delayedInShr_io_in_bits_imag),
    .io_out_valid(delayedInShr_io_out_valid),
    .io_out_bits_real(delayedInShr_io_out_bits_real),
    .io_out_bits_imag(delayedInShr_io_out_bits_imag)
  );
  NCO nco ( // @[Sync.scala 99:19:@6129.4]
    .clock(nco_clock),
    .reset(nco_reset),
    .io_en(nco_io_en),
    .io_freq(nco_io_freq),
    .io_out_valid(nco_io_out_valid),
    .io_out_bits_real(nco_io_out_bits_real),
    .io_out_bits_imag(nco_io_out_bits_imag)
  );
  assign depthWire_valid = io_autocorrConfig_depthApart != _T_239; // @[Sync.scala 46:51:@6037.4]
  assign _T_356 = $signed(peakDetectAverage_real) + $signed(peakDetectAverage_imag); // @[FixedPointTypeClass.scala 21:58:@6084.6]
  assign _T_357 = _T_356[31:0]; // @[FixedPointTypeClass.scala 21:58:@6085.6]
  assign _T_358 = $signed(_T_357); // @[FixedPointTypeClass.scala 21:58:@6086.6]
  assign _T_359 = $signed(io_autocorrFF) + $signed(32'sh0); // @[FixedPointTypeClass.scala 21:58:@6087.6]
  assign _T_360 = _T_359[31:0]; // @[FixedPointTypeClass.scala 21:58:@6088.6]
  assign _T_361 = $signed(_T_360); // @[FixedPointTypeClass.scala 21:58:@6089.6]
  assign _T_362 = $signed(32'sh0) - $signed(io_autocorrFF); // @[FixedPointTypeClass.scala 31:68:@6090.6]
  assign _T_363 = _T_362[31:0]; // @[FixedPointTypeClass.scala 31:68:@6091.6]
  assign _T_364 = $signed(_T_363); // @[FixedPointTypeClass.scala 31:68:@6092.6]
  assign _T_365 = $signed(io_autocorrFF) * $signed(_T_358); // @[FixedPointTypeClass.scala 43:59:@6093.6]
  assign _T_366 = $signed(_T_361) * $signed(peakDetectAverage_imag); // @[FixedPointTypeClass.scala 43:59:@6094.6]
  assign _T_367 = $signed(_T_364) * $signed(peakDetectAverage_real); // @[FixedPointTypeClass.scala 43:59:@6095.6]
  assign _T_368 = $signed(_T_365) - $signed(_T_366); // @[FixedPointTypeClass.scala 31:68:@6096.6]
  assign _T_369 = _T_368[63:0]; // @[FixedPointTypeClass.scala 31:68:@6097.6]
  assign _T_370 = $signed(_T_369); // @[FixedPointTypeClass.scala 31:68:@6098.6]
  assign _T_371 = $signed(_T_365) + $signed(_T_367); // @[FixedPointTypeClass.scala 21:58:@6099.6]
  assign _T_372 = _T_371[63:0]; // @[FixedPointTypeClass.scala 21:58:@6100.6]
  assign _T_373 = $signed(_T_372); // @[FixedPointTypeClass.scala 21:58:@6101.6]
  assign peakDetectRawOut_bits_real = peakDetect_io_out_bits_raw_real; // @[Sync.scala 77:20:@6072.4]
  assign _GEN_3 = {{22{peakDetectRawOut_bits_real[11]}},peakDetectRawOut_bits_real}; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  assign _GEN_4 = $signed(_GEN_3) << 22; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  assign _GEN_5 = {{30{_GEN_4[33]}},_GEN_4}; // @[FixedPointTypeClass.scala 21:58:@6105.6]
  assign _T_382 = $signed(_GEN_5) + $signed(_T_370); // @[FixedPointTypeClass.scala 21:58:@6105.6]
  assign _T_383 = _T_382[63:0]; // @[FixedPointTypeClass.scala 21:58:@6106.6]
  assign _T_384 = $signed(_T_383); // @[FixedPointTypeClass.scala 21:58:@6107.6]
  assign peakDetectRawOut_bits_imag = peakDetect_io_out_bits_raw_imag; // @[Sync.scala 77:20:@6072.4]
  assign _GEN_6 = {{22{peakDetectRawOut_bits_imag[11]}},peakDetectRawOut_bits_imag}; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  assign _GEN_7 = $signed(_GEN_6) << 22; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  assign _GEN_8 = {{30{_GEN_7[33]}},_GEN_7}; // @[FixedPointTypeClass.scala 21:58:@6108.6]
  assign _T_385 = $signed(_GEN_8) + $signed(_T_373); // @[FixedPointTypeClass.scala 21:58:@6108.6]
  assign _T_386 = _T_385[63:0]; // @[FixedPointTypeClass.scala 21:58:@6109.6]
  assign _T_387 = $signed(_T_386); // @[FixedPointTypeClass.scala 21:58:@6110.6]
  assign peakDetectRawOut_valid = peakDetect_io_outLast; // @[Sync.scala 77:20:@6072.4]
  assign _GEN_9 = {{16{peakDetectAverage_imag[31]}},peakDetectAverage_imag}; // @[Forgettable.scala 11:22:@6083.4]
  assign _GEN_10 = $signed(_GEN_9) << 16; // @[Forgettable.scala 11:22:@6083.4]
  assign _GEN_0 = peakDetectRawOut_valid ? $signed(_T_387) : $signed({{16{_GEN_10[47]}},_GEN_10}); // @[Forgettable.scala 11:22:@6083.4]
  assign _GEN_11 = {{16{peakDetectAverage_real[31]}},peakDetectAverage_real}; // @[Forgettable.scala 11:22:@6083.4]
  assign _GEN_12 = $signed(_GEN_11) << 16; // @[Forgettable.scala 11:22:@6083.4]
  assign _GEN_1 = peakDetectRawOut_valid ? $signed(_T_384) : $signed({{16{_GEN_12[47]}},_GEN_12}); // @[Forgettable.scala 11:22:@6083.4]
  assign _T_402 = cordic_io_out_ready & cordic_io_out_valid; // @[Decoupled.scala 30:37:@6124.4]
  assign _GEN_13 = {{32{cordicOut[31]}},cordicOut}; // @[Reg.scala 20:19:@6126.4]
  assign _GEN_2 = _T_402 ? $signed({{32{cordic_io_out_bits_z[31]}},cordic_io_out_bits_z}) : $signed($signed(_GEN_13) << 32); // @[Reg.scala 20:19:@6126.4]
  assign _T_404 = $signed(cordicOut) * $signed(io_freqScaleFactor); // @[FixedPointTypeClass.scala 43:59:@6133.4]
  assign _T_405 = $signed(delayedInShr_io_out_bits_real) + $signed(delayedInShr_io_out_bits_imag); // @[FixedPointTypeClass.scala 21:58:@6135.4]
  assign _T_406 = _T_405[11:0]; // @[FixedPointTypeClass.scala 21:58:@6136.4]
  assign _T_407 = $signed(_T_406); // @[FixedPointTypeClass.scala 21:58:@6137.4]
  assign _T_408 = $signed(nco_io_out_bits_real) + $signed(nco_io_out_bits_imag); // @[FixedPointTypeClass.scala 21:58:@6138.4]
  assign _T_409 = _T_408[31:0]; // @[FixedPointTypeClass.scala 21:58:@6139.4]
  assign _T_410 = $signed(_T_409); // @[FixedPointTypeClass.scala 21:58:@6140.4]
  assign _T_411 = $signed(nco_io_out_bits_imag) - $signed(nco_io_out_bits_real); // @[FixedPointTypeClass.scala 31:68:@6141.4]
  assign _T_412 = _T_411[31:0]; // @[FixedPointTypeClass.scala 31:68:@6142.4]
  assign _T_413 = $signed(_T_412); // @[FixedPointTypeClass.scala 31:68:@6143.4]
  assign _GEN_14 = {{20{_T_407[11]}},_T_407}; // @[FixedPointTypeClass.scala 43:59:@6144.4]
  assign _T_414 = $signed(nco_io_out_bits_real) * $signed(_GEN_14); // @[FixedPointTypeClass.scala 43:59:@6144.4]
  assign _GEN_15 = {{20{delayedInShr_io_out_bits_imag[11]}},delayedInShr_io_out_bits_imag}; // @[FixedPointTypeClass.scala 43:59:@6145.4]
  assign _T_415 = $signed(_T_410) * $signed(_GEN_15); // @[FixedPointTypeClass.scala 43:59:@6145.4]
  assign _GEN_16 = {{20{delayedInShr_io_out_bits_real[11]}},delayedInShr_io_out_bits_real}; // @[FixedPointTypeClass.scala 43:59:@6146.4]
  assign _T_416 = $signed(_T_413) * $signed(_GEN_16); // @[FixedPointTypeClass.scala 43:59:@6146.4]
  assign _T_417 = $signed(_T_414) - $signed(_T_415); // @[FixedPointTypeClass.scala 31:68:@6147.4]
  assign _T_418 = _T_417[43:0]; // @[FixedPointTypeClass.scala 31:68:@6148.4]
  assign _T_419 = $signed(_T_418); // @[FixedPointTypeClass.scala 31:68:@6149.4]
  assign _T_420 = $signed(_T_414) + $signed(_T_416); // @[FixedPointTypeClass.scala 21:58:@6150.4]
  assign _T_421 = _T_420[43:0]; // @[FixedPointTypeClass.scala 21:58:@6151.4]
  assign _T_422 = $signed(_T_421); // @[FixedPointTypeClass.scala 21:58:@6152.4]
  assign sampleAndCorr_valid = matchedFilter_io_out_valid; // @[Sync.scala 63:20:@6061.4]
  assign sampleAndCorr_bits_corr_real = matchedFilter_io_out_bits_real; // @[Sync.scala 63:20:@6061.4]
  assign sampleAndCorr_bits_corr_imag = matchedFilter_io_out_bits_imag; // @[Sync.scala 63:20:@6061.4]
  assign sampleAndCorr_bits_raw_real = autocorr_io_out_bits_real; // @[Sync.scala 63:20:@6061.4]
  assign sampleAndCorr_bits_raw_imag = autocorr_io_out_bits_imag; // @[Sync.scala 63:20:@6061.4]
  assign io_out_valid = nco_io_out_valid;
  assign _GEN_17 = _T_419[43:30];
  assign _GEN_18 = _GEN_17[11:0];
  assign io_out_bits_real = $signed(_GEN_18);
  assign _GEN_19 = _T_422[43:30];
  assign _GEN_20 = _GEN_19[11:0];
  assign io_out_bits_imag = $signed(_GEN_20);
  assign io_packetDetect = cordic_io_out_valid;
  assign autocorr_clock = clock;
  assign autocorr_reset = reset;
  assign autocorr_io_in_valid = io_in_valid;
  assign autocorr_io_in_bits_real = io_in_bits_real;
  assign autocorr_io_in_bits_imag = io_in_bits_imag;
  assign autocorr_io_config_depthApart = io_autocorrConfig_depthApart;
  assign autocorr_io_config_depthOverlap = io_autocorrConfig_depthOverlap;
  assign matchedFilter_clock = clock;
  assign matchedFilter_io_in_valid = ShiftRegisterMem_io_out_valid;
  assign matchedFilter_io_in_bits_real = ShiftRegisterMem_io_out_bits_real;
  assign matchedFilter_io_in_bits_imag = ShiftRegisterMem_io_out_bits_imag;
  assign peakDetect_clock = clock;
  assign peakDetect_reset = reset;
  assign peakDetect_io_in_valid = sampleAndCorr_valid;
  assign peakDetect_io_in_bits_corr_real = sampleAndCorr_bits_corr_real;
  assign peakDetect_io_in_bits_corr_imag = sampleAndCorr_bits_corr_imag;
  assign peakDetect_io_in_bits_raw_real = sampleAndCorr_bits_raw_real;
  assign peakDetect_io_in_bits_raw_imag = sampleAndCorr_bits_raw_imag;
  assign peakDetect_io_config_energyFF = io_peakDetectConfig_energyFF;
  assign peakDetect_io_config_energyMult = io_peakDetectConfig_energyMult;
  assign peakDetect_io_config_accumMult = io_peakDetectConfig_accumMult;
  assign peakDetect_io_config_energyOffset = io_peakDetectConfig_energyOffset;
  assign peakDetect_io_config_idlePeriod = io_peakDetectConfig_idlePeriod;
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_valid = _T_398;
  assign _GEN_21 = peakDetectAverage_real[31:6];
  assign _GEN_22 = _GEN_21[11:0];
  assign cordic_io_in_bits_x = $signed(_GEN_22);
  assign _GEN_23 = peakDetectAverage_imag[31:6];
  assign _GEN_24 = _GEN_23[11:0];
  assign cordic_io_in_bits_y = $signed(_GEN_24);
  assign cordic_io_out_ready = 1'h1;
  assign ShiftRegisterMem_clock = clock;
  assign ShiftRegisterMem_reset = reset;
  assign ShiftRegisterMem_io_depth_valid = depthWire_valid;
  assign ShiftRegisterMem_io_depth_bits = io_autocorrConfig_depthApart;
  assign ShiftRegisterMem_io_in_valid = io_in_valid;
  assign ShiftRegisterMem_io_in_bits_real = io_in_bits_real;
  assign ShiftRegisterMem_io_in_bits_imag = io_in_bits_imag;
  assign delayedInShr_clock = clock;
  assign delayedInShr_reset = reset;
  assign delayedInShr_io_depth_valid = _T_249;
  assign delayedInShr_io_in_valid = io_in_valid;
  assign delayedInShr_io_in_bits_real = io_in_bits_real;
  assign delayedInShr_io_in_bits_imag = io_in_bits_imag;
  assign _GEN_25 = _GEN_1[63:16];
  assign _GEN_26 = _GEN_25[31:0];
  assign _GEN_27 = _GEN_0[63:16];
  assign _GEN_28 = _GEN_27[31:0];
  assign nco_clock = clock;
  assign nco_reset = reset;
  assign nco_io_en = delayedInShr_io_out_valid;
  assign _GEN_29 = _T_404[31:0];
  assign nco_io_freq = $signed(_GEN_29);
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_239 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_249 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  peakDetectAverage_real = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  peakDetectAverage_imag = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_398 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  cordicOut = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_239 <= io_autocorrConfig_depthApart;
    _T_249 <= reset;
    peakDetectAverage_real <= $signed(_GEN_26);
    peakDetectAverage_imag <= $signed(_GEN_28);
    if (reset) begin
      _T_398 <= 1'h0;
    end else begin
      _T_398 <= peakDetect_io_outLast;
    end
    if (reset) begin
      cordicOut <= 32'sh0;
    end else begin
      cordicOut <= _GEN_2[63:32];
    end
  end
endmodule
