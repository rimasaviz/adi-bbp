`timescale 1ns/100ps

module axi_ofdmbbp_rx #(
  parameter   XCOMM2IP_1T1R_OR_2T2R_N = 1)
  (

  // ad9361 adc interface
  input           adc_valid_i0,
  input   [15:0]  adc_data_i0,
  input           adc_valid_q0,
  input   [15:0]  adc_data_q0,
  input           adc_valid_i1,
  input   [15:0]  adc_data_i1,
  input           adc_valid_q1,
  input   [15:0]  adc_data_q1,

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
  reg             adc_sync_m1 = 'd0;
  reg             adc_sync = 'd0;
  reg             adc_wr = 'd0;
  reg     [ 3:0]  adc_waddr = 'd0;
  reg     [15:0]  adc_wdata_i = 'd0;
  reg     [15:0]  adc_wdata_q = 'd0;
  reg             s_adc_sync = 'd0;
  reg     [15:0]  s_adc_rdata_i = 'd0;
  reg     [15:0]  s_adc_rdata_q = 'd0;

  reg             up_adc_preset = 'd0;

  // internal signals
  wire    [ 3:0]  s_adc_raddr_s;
  wire    [15:0]  s_adc_rdata_i_s;
  wire    [15:0]  s_adc_rdata_q_s;
  wire            s_adc_wr_s;
  wire    [ 4:0]  s_adc_waddr_s;
  wire    [ 7:0]  s_adc_wdata_s;
  wire            s_adc_rst;
  
  wire [23:0]	  up_rx_dout_bits;

  wire            s_clk;
  wire            s_clk_s;

  // adc- sample data transfer
  always @(posedge rst or posedge clk) begin
    if (rst == 1'b1) begin
      adc_sync_m1 <= 'd0;
      adc_sync <= 'd0;
      adc_wr <= 'd0;
      adc_waddr <= 'h8;
      adc_wdata_i <= 'd0;
      adc_wdata_q <= 'd0;
    end else begin
      adc_sync_m1 <= s_adc_sync;
      adc_sync <= adc_sync_m1;
      adc_wr <= adc_valid_i0;
      if (adc_sync == 1'b0) begin
        adc_waddr <= 4'h8;
      end else if (adc_wr == 1'b1) begin
        adc_waddr <= adc_waddr + 1'b1;
      end
      adc_wdata_i <= adc_data_i0;
      adc_wdata_q <= adc_data_q0;
    end
  end

  always @(posedge s_adc_rst or posedge s_clk) begin
    if (s_adc_rst == 1'b1) begin
      s_adc_sync <= 'd0;
      s_adc_rdata_i <= 'd0;
      s_adc_rdata_q <= 'd0;
    end else begin
      s_adc_sync <= 1'b1;
      s_adc_rdata_i <= s_adc_rdata_i_s;
      s_adc_rdata_q <= s_adc_rdata_q_s;
    end
  end

  // this memory used for clock domain crossing between s_clk_s (sample rate
  // clock) and clk (2x sample rate, axi_ad9361 clock)

  ad_mem #(.ADDRESS_WIDTH(4), .DATA_WIDTH(32)) i_adc_mem_2 (
    .clka (clk),
    .wea (adc_wr),
    .addra (adc_waddr),
    .dina ({adc_wdata_q, adc_wdata_i}),
    .clkb (s_clk),
    .addrb (s_adc_raddr_s),
    .doutb ({s_adc_rdata_q_s, s_adc_rdata_i_s}));

  // adc- reset
  ad_rst i_s_adc_rst_reg (
    .preset (up_adc_preset),
    .clk (s_clk),
    .rst (s_adc_rst));

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
  
  // Register Interface
  // register write
  always @(negedge s_axi_aresetn or posedge s_axi_aclk)
  begin
    if (s_axi_aresetn == 1'b0) begin
      up_scratch <= 'h00;
      up_adc_preset <= 'd1;
      up_wack <= 1'b0;
    end 
    else 
    begin
      up_wack <= up_wreq;
      if (up_wreq) begin
        case (up_waddr)
        16'h002: up_scratch <= up_wdata;
        16'h004: up_adc_preset <= up_wdata[0];
        endcase
      end
    end
  end

  // register read
  always @(negedge s_axi_aresetn or posedge s_axi_aclk)
  begin
    if (s_axi_aresetn == 1'b0) 
    begin
      up_rack <= 'd0;
      up_rdata <= 'h00;
    end else 
    begin
      up_rack <= up_rreq;
      case (up_raddr)
      16'h000: up_rdata <= 32'hCAFEBABE;
      16'h001: up_rdata <= 32'hDEADBEEF;
      16'h002: up_rdata <= up_scratch;
      16'h004: up_rdata <= {31'd0, up_adc_preset};
      16'h101: up_rdata <= {25'd0, cmdq_wrcnt};
      16'h200: up_rdata <= {8'd0,  up_rx_dout_bits};
      16'h201: up_rdata <= {22'd0, dataq_rdcnt};
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
  wire		rx_dout_valid;
  wire [23:0]	rx_dout_bits;
  wire [9:0]  	dataq_rdcnt;
  wire [9:0]  	dataq_wrcnt;
  wire		dataq_empty;
  wire		dataq_full;

  afifo_1024x24W afifo_data (
    .rst	      (s_adc_rst),
    .wr_clk	      (s_clk),
    .rd_clk	      (s_axi_aclk),
    .din	      (rx_dout_bits),
    .wr_en	      (rx_dout_valid && !dataq_empty),
    .rd_en	      (up_rreq && (up_raddr == 14'h0200)),
    .dout	      (up_rx_dout_bits),
    .full	      (dataq_full),
    .empty	      (dataq_empty),
    .rd_data_count    (dataq_rdcnt),
    .wr_data_count    (dataq_wrcnt)
  );

  wire [7:0]  	rx_cmd_length;
  wire [1:0]  	rx_cmd_mode;
  wire [21:0] 	rx_cmd_pause;
  wire		rx_cmd_ready;
  wire		rx_cmd_valid;

  wire [6:0]  	cmdq_rdcnt;
  wire [6:0]  	cmdq_wrcnt;
  wire		cmdq_empty;
  wire		cmdq_full;

  assign rx_cmd_valid = !cmdq_empty;

  afifo_128x32W afifo_cmd (
    .rst	        (s_adc_rst),
    .wr_clk	      (s_axi_aclk),
    .rd_clk	      (s_clk),
    .din	      (up_wdata),
    .wr_en	      (up_wreq && (up_waddr == 14'h0100)),
    .rd_en	      (rx_cmd_ready & !cmdq_empty),
    .dout	      ({rx_cmd_pause, rx_cmd_mode, rx_cmd_length}),
    .full	      (cmdq_full),
    .empty	      (cmdq_empty),
    .rd_data_count    (cmdq_rdcnt),
    .wr_data_count    (cmdq_wrcnt)
  );

  FpgaRxWrapper rx (
    .clock(s_clk),
    .reset(s_adc_rst),
    .io_cmd_ready(rx_cmd_ready),
    .io_cmd_valid(rx_cmd_valid),
    .io_cmd_bits_length(rx_cmd_length),
    .io_cmd_bits_mode(rx_cmd_mode),
    .io_cmd_bits_pause('d0),
    .io_start(),
    .io_din_real(s_adc_rdata_i_s),
    .io_din_imag(s_adc_rdata_q_s),
    .io_dout_valid(rx_dout_valid),
    .io_dout_bits(rx_dout_bits),
    .io_coeff_dout_valid(),
    .io_coeff_dout_bits_real(),
    .io_coeff_dout_bits_imag(),
    .io_adc_raddr(s_adc_raddr_s)
  );

endmodule 
