`timescale 1ns/100ps

module axi_ofdmbbp_tx #(
  parameter   XCOMM2IP_1T1R_OR_2T2R_N = 1)
  (
  // ad9361 dac interface
  input           dac_valid_i0,
  output  [15:0]  dac_data_i0,
  input           dac_valid_q0,
  output  [15:0]  dac_data_q0,
  output          dac_dovf,
  output          dac_dunf,

  // ad9361 clock & reset
  input           clk,
  input           rst,

  // axi interface
  input           s_axi_aclk,
  input           s_axi_aresetn,
  input           s_axi_awvalid,
  input   [31:0]  s_axi_awaddr,
  input   [ 2:0]  s_axi_awprot,
  output          s_axi_awready,
  input           s_axi_wvalid,
  input   [31:0]  s_axi_wdata,
  input   [ 3:0]  s_axi_wstrb,
  output          s_axi_wready,
  output          s_axi_bvalid,
  output  [ 1:0]  s_axi_bresp,
  input           s_axi_bready,
  input           s_axi_arvalid,
  input   [31:0]  s_axi_araddr,
  input   [ 2:0]  s_axi_arprot,
  output          s_axi_arready,
  output          s_axi_rvalid,
  output  [31:0]  s_axi_rdata,
  output  [ 1:0]  s_axi_rresp,
  input           s_axi_rready);

  // parameters
  localparam  XCOMM2IP_SCLK_DIVIDE = (XCOMM2IP_1T1R_OR_2T2R_N == 1) ? "2" : "4";

  // internal registers
  reg     [15:0]  dac_data_i0_int = 'd0;
  reg     [15:0]  dac_data_q0_int = 'd0;
  reg     [ 3:0]  dac_raddr = 'd0;
  reg     [15:0]  dac_rdata_i = 'd0;
  reg     [15:0]  dac_rdata_q = 'd0;
  reg     [15:0]  dac_data_i = 'd0;
  reg     [15:0]  dac_data_q = 'd0;
  reg             s_dac_sync = 'd0;
  reg     [23:0]  s_dac_rdata = 'd0;
  reg             dac_sync_m1 = 'd0;
  reg             dac_sync = 'd0;
(* mark_debug = "true" *)  reg             up_dac_preset = 'd0;
  reg             up_dac_enable = 'd0;

  // internal signals

 (* mark_debug = "true" *) wire    [ 3:0]  s_dac_waddr_s;
 (* mark_debug = "true" *) wire    [15:0]  s_dac_wdata_i_s;
 (* mark_debug = "true" *) wire    [15:0]  s_dac_wdata_q_s;
  wire    [15:0]  dac_rdata_i_s;
  wire    [15:0]  dac_rdata_q_s;
  wire    [ 7:0]  s_dac_raddr_s;
  wire    [23:0]  s_dac_rdata_s;
 (* mark_debug = "true" *) wire            s_dac_rst;
  wire            s_clk;
  wire            s_clk_s;

  assign dac_data_i0 = dac_data_i0_int;
  assign dac_data_q0 = dac_data_q0_int;
  assign dac_dovf = 1'b0; //dac_dovf_int;
  assign dac_dunf = 1'b0; //dac_dunf_int;

  always @(posedge rst or posedge clk) begin
    if (rst == 1'b1) begin
      dac_data_i0_int <= 'd0;
      dac_data_q0_int <= 'd0;
    end 
    else 
    begin
      dac_data_i0_int <= dac_data_i;
      dac_data_q0_int <= dac_data_q;
    end
  end

  // this memory used for clock domain crossing between s_clk_s (sample rate
  // clock) and clk (2x sample rate, axi_ad9361 clock)
  ad_mem #(.ADDRESS_WIDTH(4), .DATA_WIDTH(32)) i_dac_mem_2 (
    .clka 	(s_clk),
    .wea  	(1'b1),
    .addra 	(s_dac_waddr_s),
    .dina 	({s_dac_wdata_q_s, s_dac_wdata_i_s}),
    .clkb 	(clk),
    .addrb 	(dac_raddr),
    .doutb 	({dac_rdata_q_s, dac_rdata_i_s}));

  // dac- sample data transfer
  always @(posedge rst or posedge clk) begin
    if (rst == 1'b1) begin
      dac_sync_m1 <= 1'd0;
      dac_sync <= 1'd0;
      dac_raddr <= 'd8;
      dac_rdata_i <= 'd0;
      dac_rdata_q <= 'd0;
      dac_data_i <= 'd0;
      dac_data_q <= 'd0;
    end else begin
      dac_sync_m1 <= s_dac_sync;
      dac_sync <= dac_sync_m1;
      if (dac_sync == 1'b0) begin
        dac_raddr <= 4'd8;
      end else if (dac_valid_i0 == 1'b1) begin
        dac_raddr <= dac_raddr + 1'b1;
      end
      dac_rdata_i <= dac_rdata_i_s;
      dac_rdata_q <= dac_rdata_q_s;
      if (dac_valid_i0 == 1'b1) begin
        dac_data_i <= dac_rdata_i;
        dac_data_q <= dac_rdata_q;
      end
    end
  end

  always @(posedge s_dac_rst or posedge s_clk) begin
    if (s_dac_rst == 1'b1) begin
      s_dac_sync <= 'd0;
    end else begin
      s_dac_sync <= 1'b1;
    end
  end

  // dac- reset
  ad_rst i_s_dac_rst_reg (
    .preset (up_dac_preset),
    .clk (s_clk),
    .rst (s_dac_rst));

  // interface-clock to sampling-clock conversion
  BUFG i_bufg (
    .I (s_clk_s),
    .O (s_clk));

  BUFR #(.BUFR_DIVIDE(XCOMM2IP_SCLK_DIVIDE)) i_bufr (
    .CLR (1'b0),
    .CE (1'b1),
    .I (clk),
    .O (s_clk_s));
 
  ////////////////////////////////////////
  // Register interface signals
  reg  [31:0]  up_rdata = 'd0;
  reg          up_wack = 1'b0;
  reg          up_rack = 1'b0;
  wire         up_wreq;
  wire         up_rreq;
  wire [31:0]  up_wdata;
  wire [13:0]  up_waddr;
  wire [13:0]  up_raddr;

  // Scratch register
  reg [31:0] up_scratch = 'h00;
  
  // Control bits
//  reg up_enable = 'h00;
//  reg up_pause = 'h00;

  // Register Interface
  // register write
  always @(posedge s_axi_aclk)
  begin
    if (s_axi_aresetn == 1'b0) begin
 //     up_enable <= 'h00;
 //     up_pause <= 'h00;
      up_scratch <= 'h00;
      up_wack <= 1'b0;
      up_dac_preset <= 'd1;
//      up_dac_enable <= 'd0;
    end 
    else 
    begin
      up_wack <= up_wreq;
      if (up_wreq) begin
        case (up_waddr)
        16'h002: up_scratch <= up_wdata;
//        16'h003: {up_pause, up_enable} <= up_wdata[1:0];
        16'h004: up_dac_preset <= up_wdata[0];
  //      16'h005: up_dac_enable <= up_wdata[0];
        endcase
      end
    end
  end

  // register read
  always @(posedge s_axi_aclk)
  begin
    if (s_axi_aresetn == 1'b0) 
    begin
      up_rack <= 'd0;
      up_rdata <= 'h00;
    end else 
    begin
      up_rack <= up_rreq;
      case (up_raddr)
      16'h000: up_rdata <= 32'hDEADBEEF;
      16'h001: up_rdata <= 32'hCAFEBABE;
      16'h002: up_rdata <= up_scratch;
//      16'h003: up_rdata <= {30'd0, up_pause, up_enable};
      16'h004: up_rdata <= {31'd0, up_dac_preset};
//      16'h005: up_rdata <= {31'd0, up_dac_enable};
      16'h101: up_rdata <= {25'd0, cmdq_wrcnt};
      16'h201: up_rdata <= {22'd0, dataq_wrcnt};
      default: up_rdata <= 'h00;
      endcase
    end
  end

  ////////////////////////////////////////

  up_axi i_up_ax (
    .up_rstn		(s_axi_aresetn),
    .up_clk		(s_axi_aclk),
    .up_axi_awvalid	(s_axi_awvalid),
    .up_axi_awaddr	(s_axi_awaddr),
    .up_axi_awready	(s_axi_awready),
    .up_axi_wvalid	(s_axi_wvalid),
    .up_axi_wdata	(s_axi_wdata),
    .up_axi_wstrb	(s_axi_wstrb),
    .up_axi_wready	(s_axi_wready),
    .up_axi_bvalid	(s_axi_bvalid),
    .up_axi_bresp	(s_axi_bresp),
    .up_axi_bready	(s_axi_bready),
    .up_axi_arvalid	(s_axi_arvalid),
    .up_axi_araddr	(s_axi_araddr),
    .up_axi_arready	(s_axi_arready),
    .up_axi_rvalid	(s_axi_rvalid),
    .up_axi_rresp	(s_axi_rresp),
    .up_axi_rdata	(s_axi_rdata),
    .up_axi_rready	(s_axi_rready),
    .up_wreq		(up_wreq),
    .up_waddr		(up_waddr),
    .up_wdata		(up_wdata),
    .up_wack		(up_wack),
    .up_rreq		(up_rreq),
    .up_raddr		(up_raddr),
    .up_rdata		(up_rdata),
    .up_rack		(up_rack)
  );

  // everything below here is specific to BBP
 (* mark_debug = "true" *) wire		tx_dout_valid;
 (* mark_debug = "true" *) wire		tx_din_ready;
 (* mark_debug = "true" *) wire		tx_din_valid;
  wire [23:0]	tx_din_bits;
(* mark_debug = "true" *)  wire [9:0]  	dataq_rdcnt;
  wire [9:0]  	dataq_wrcnt;
 (* mark_debug = "true" *) wire		dataq_empty;
 (* mark_debug = "true" *) wire		dataq_full;

  afifo_1024x24W afifo_data (
    .rst	        (s_dac_rst),
    .wr_clk	      (s_axi_aclk),
    .rd_clk	      (s_clk),
    .din	        (up_wdata[23:0]),
    .wr_en	      (up_wreq && (up_waddr == 14'h0200)),
    .rd_en	      (tx_din_ready & !dataq_empty),
    .dout	        (tx_din_bits),
    .full	        (dataq_full),
    .empty	      (dataq_empty),
    .rd_data_count(dataq_rdcnt),
    .wr_data_count(dataq_wrcnt)
  );

  assign tx_din_valid = !dataq_empty;
 
 (* mark_debug = "true" *) wire [7:0]  	tx_cmd_length;
 (* mark_debug = "true" *) wire [1:0]  	tx_cmd_mode;
  wire [21:0] 	tx_cmd_pause;
 (* mark_debug = "true" *) wire		tx_cmd_ready;
 (* mark_debug = "true" *) wire		tx_cmd_valid;
(* mark_debug = "true" *)  wire [6:0]  	cmdq_rdcnt;
 wire [6:0]  	cmdq_wrcnt;
 (* mark_debug = "true" *) wire		cmdq_empty;
 (* mark_debug = "true" *) wire		cmdq_full;

  assign tx_cmd_valid = !cmdq_empty;

  afifo_128x32W afifo_cmd (
    .rst	        (s_dac_rst),
    .wr_clk	      (s_axi_aclk),
    .rd_clk	      (s_clk),
    .din	        (up_wdata),
    .wr_en	      (up_wreq && (up_waddr == 14'h0100)),
    .rd_en	      (tx_cmd_ready & !cmdq_empty),
    .dout	        ({tx_cmd_pause, tx_cmd_mode, tx_cmd_length}),
    .full	        (cmdq_full),
    .empty	      (cmdq_empty),
    .rd_data_count(cmdq_rdcnt),
    .wr_data_count(cmdq_wrcnt)
  );

  FpgaTxWrapper tx (
    .clock(s_clk),
    .reset(s_dac_rst),
    .io_cmd_ready(tx_cmd_ready),
    .io_cmd_valid(tx_cmd_valid),
    .io_cmd_bits_length(tx_cmd_length),
    .io_cmd_bits_mode(tx_cmd_mode),
    .io_cmd_bits_pause(tx_cmd_pause),
    .io_din_ready(tx_din_ready),
    .io_din_valid(tx_din_valid),
    .io_din_bits(tx_din_bits),
    .io_dout_valid(tx_dout_valid),
    .io_dout_bits_real(s_dac_wdata_i_s),
    .io_dout_bits_imag(s_dac_wdata_q_s),
    .io_dac_waddr(s_dac_waddr_s)
  );

endmodule
