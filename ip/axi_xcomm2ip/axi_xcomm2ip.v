// ***************************************************************************
// ***************************************************************************
// Copyright 2011(c) Analog Devices, Inc.
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//     - Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in
//       the documentation and/or other materials provided with the
//       distribution.
//     - Neither the name of Analog Devices, Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//     - The use of this software may or may not infringe the patent rights
//       of one or more patent holders.  This license does not release you
//       from the requirement that you obtain separate licenses from these
//       patent holders to use this software.
//     - Use of the software either in source or binary form, must be run
//       on or directly connected to an Analog Devices Inc. component.
//
// THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE ARE DISCLAIMED.
//
// IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY
// RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module axi_xcomm2ip #(

  parameter   XCOMM2IP_1T1R_OR_2T2R_N = 0)

  (

  // ad9361 dac interface

  input           dac_valid_i0,
  input   [15:0]  dma_data_i0,
  output  [15:0]  dac_data_i0,
  input           dac_valid_q0,
  input   [15:0]  dma_data_q0,
  output  [15:0]  dac_data_q0,
  input           dac_valid_i1,
  input   [15:0]  dma_data_i1,
  output  [15:0]  dac_data_i1,
  input           dac_valid_q1,
  input   [15:0]  dma_data_q1,
  output  [15:0]  dac_data_q1,
  input           dma_dovf,
  input           dma_dunf,
  output          dac_dovf,
  output          dac_dunf,

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

  localparam  XCOMM2IP_VERSION = 32'h00040063;
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
  reg             s_adc_req_m1 = 'd0;
  reg             s_adc_req = 'd0;
  reg             up_adc_ack_t_m1 = 'd0;
  reg             up_adc_ack_t_m2 = 'd0;
  reg             up_adc_ack_t_m3 = 'd0;
  reg             up_adc_wack = 'd0;
  reg             up_adc_preset = 'd0;
  reg             up_adc_req = 'd0;
  reg     [ 7:0]  up_adc_rdata_d2 = 'd0;
  reg     [13:0]  up_adc_raddr_d1 = 'd0;
  reg     [13:0]  up_adc_raddr_d2 = 'd0;
  reg             up_adc_rreq_d1 = 'd0;
  reg             up_adc_rreq_d2 = 'd0;
  reg             up_adc_rack = 'd0;
  reg     [31:0]  up_adc_rdata = 'd0;
  reg             dac_enable_m1 = 'd0;
  reg             dac_enable = 'd0;
  reg     [15:0]  dac_data_i0_int = 'd0;
  reg     [15:0]  dac_data_q0_int = 'd0;
  reg     [15:0]  dac_data_i1_int = 'd0;
  reg     [15:0]  dac_data_q1_int = 'd0;
  reg             dac_dovf_int = 'd0;
  reg             dac_dunf_int = 'd0;
  reg             dac_sync_m1 = 'd0;
  reg             dac_sync = 'd0;
  reg     [ 3:0]  dac_raddr = 'd0;
  reg     [15:0]  dac_rdata_i = 'd0;
  reg     [15:0]  dac_rdata_q = 'd0;
  reg     [15:0]  dac_data_i = 'd0;
  reg     [15:0]  dac_data_q = 'd0;
  reg             s_dac_sync = 'd0;
  reg     [ 7:0]  s_dac_rdata = 'd0;
  reg             s_dac_req_m1 = 1'd0;
  reg             s_dac_req = 1'd0;
  reg             up_dac_ack_t_m1 = 'd0;
  reg             up_dac_ack_t_m2 = 'd0;
  reg             up_dac_ack_t_m3 = 'd0;
  reg             up_dac_wack = 'd0;
  reg             up_dac_preset = 'd0;
  reg             up_dac_enable = 'd0;
  reg             up_dac_req = 'd0;
  reg             up_dac_wr = 'd0;
  reg     [ 4:0]  up_dac_waddr = 'd0;
  reg     [ 7:0]  up_dac_wdata = 'd0;
  reg             up_dac_rack = 'd0;
  reg     [31:0]  up_dac_rdata = 'd0;
  reg             up_com_wack = 'd0;
  reg     [31:0]  up_scratch = 'd0;
  reg             up_com_rack = 'd0;
  reg     [31:0]  up_com_rdata = 'd0;

  // internal signals

  wire    [ 3:0]  s_adc_raddr_s;
  wire    [15:0]  s_adc_rdata_i_s;
  wire    [15:0]  s_adc_rdata_q_s;
  wire            s_adc_wr_s;
  wire    [ 4:0]  s_adc_waddr_s;
  wire    [ 7:0]  s_adc_wdata_s;
  wire    [ 4:0]  up_adc_raddr_s;
  wire    [ 7:0]  up_adc_rdata_s;
  wire            up_adc_ack_t_s;
  wire            s_adc_ack_t_s;
  wire            s_adc_rst;
  wire    [ 3:0]  s_dac_waddr_s;
  wire    [15:0]  s_dac_wdata_i_s;
  wire    [15:0]  s_dac_wdata_q_s;
  wire    [15:0]  dac_rdata_i_s;
  wire    [15:0]  dac_rdata_q_s;
  wire    [ 4:0]  s_dac_raddr_s;
  wire    [ 7:0]  s_dac_rdata_s;
  wire            up_dac_ack_t_s;
  wire            s_dac_ack_t_s;
  wire            s_dac_rst;
  wire            s_clk;
  wire            s_clk_s;
  wire            up_clk;
  wire            up_rstn;
  wire            up_wreq_s;
  wire    [13:0]  up_waddr_s;
  wire    [31:0]  up_wdata_s;
  wire            up_wack_s;
  wire            up_rreq_s;
  wire    [13:0]  up_raddr_s;
  wire    [31:0]  up_rdata_s;
  wire            up_rack_s;

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

  ad_mem #(.ADDRESS_WIDTH(4), .DATA_WIDTH(32)) i_adc_mem_2 (
    .clka (clk),
    .wea (adc_wr),
    .addra (adc_waddr),
    .dina ({adc_wdata_q, adc_wdata_i}),
    .clkb (s_clk),
    .addrb (s_adc_raddr_s),
    .doutb ({s_adc_rdata_q_s, s_adc_rdata_i_s}));

  // adc- packet data transfer

  assign up_adc_raddr_s = up_raddr_s[4:0];

  ad_mem #(.ADDRESS_WIDTH(5), .DATA_WIDTH(8)) i_adc_mem_1 (
    .clka (s_clk),
    .wea (s_adc_wr_s),
    .addra (s_adc_waddr_s),
    .dina (s_adc_wdata_s),
    .clkb (up_clk),
    .addrb (up_adc_raddr_s),
    .doutb (up_adc_rdata_s));

  // adc- req & ack

  assign up_adc_ack_t_s = up_adc_ack_t_m3 ^ up_adc_ack_t_m2;

  always @(posedge s_adc_rst or posedge s_clk) begin
    if (s_adc_rst == 1'b1) begin
      s_adc_req_m1 <= 'd0;
      s_adc_req <= 'd0;
    end else begin
      s_adc_req_m1 <= up_adc_req;
      s_adc_req <= s_adc_req_m1;
    end
  end

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_adc_ack_t_m1 <= 'd0;
      up_adc_ack_t_m2 <= 'd0;
      up_adc_ack_t_m3 <= 'd0;
    end else begin
      up_adc_ack_t_m1 <= s_adc_ack_t_s;
      up_adc_ack_t_m2 <= up_adc_ack_t_m1;
      up_adc_ack_t_m3 <= up_adc_ack_t_m2;
    end
  end

  // adc- reset

  ad_rst i_s_adc_rst_reg (
    .preset (up_adc_preset),
    .clk (s_clk),
    .rst (s_adc_rst));

  // adc- register space

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_adc_wack <= 'd0;
      up_adc_preset <= 'd1;
      up_adc_req <= 'd0;
    end else begin
      if (up_waddr_s[13:8] == 6'h03) begin
        up_adc_wack <= up_wreq_s;
      end else begin
        up_adc_wack <= 1'd0;
      end
      if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h0300)) begin
        up_adc_preset <= up_wdata_s[0];
      end
      if (up_adc_ack_t_s == 1'b1) begin
        up_adc_req <= 1'b0;
      end else if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h0302)) begin
        up_adc_req <= up_adc_req | up_wdata_s[0];
      end
    end
  end

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_adc_rdata_d2 <= 'd0;
      up_adc_raddr_d1 <= 'd0;
      up_adc_raddr_d2 <= 'd0;
      up_adc_rreq_d1 <= 'd0;
      up_adc_rreq_d2 <= 'd0;
      up_adc_rack <= 'd0;
      up_adc_rdata <= 'd0;
    end else begin
      up_adc_rdata_d2 <= up_adc_rdata_s;
      up_adc_raddr_d1 <= up_raddr_s;
      up_adc_raddr_d2 <= up_adc_raddr_d1;
      up_adc_rreq_d1 <= up_rreq_s;
      up_adc_rreq_d2 <= up_adc_rreq_d1;
      if (up_adc_raddr_d2[13:8] == 6'h03) begin
        up_adc_rack <= up_adc_rreq_d2;
      end else begin
        up_adc_rack <= 1'd0;
      end
      if ((up_adc_rreq_d2 == 1'b1) && (up_adc_raddr_d2[13:8] == 6'h03)) begin
        case (up_adc_raddr_d2[7:0])
          8'h00: up_adc_rdata <= {31'd0, up_adc_preset};
          8'h02: up_adc_rdata <= {31'd0, up_adc_req};
          default: up_adc_rdata <= {24'd0, up_adc_rdata_d2};
        endcase
      end else begin
        up_adc_rdata <= 32'd0;
      end
    end
  end

  // dac- interface data mux

  assign dac_data_i0 = dac_data_i0_int;
  assign dac_data_q0 = dac_data_q0_int;
  assign dac_data_i1 = dac_data_i1_int;
  assign dac_data_q1 = dac_data_q1_int;
  assign dac_dovf = dac_dovf_int;
  assign dac_dunf = dac_dunf_int;

  always @(posedge rst or posedge clk) begin
    if (rst == 1'b1) begin
      dac_enable_m1 <= 1'd0;
      dac_enable <= 1'd0;
      dac_data_i0_int <= 'd0;
      dac_data_q0_int <= 'd0;
      dac_data_i1_int <= 'd0;
      dac_data_q1_int <= 'd0;
      dac_dovf_int <= 'd0;
      dac_dunf_int <= 'd0;
    end else begin
      dac_enable_m1 <= up_dac_enable;
      dac_enable <= dac_enable_m1;
      if (dac_enable == 1'b1) begin
        dac_data_i0_int <= dac_data_i;
        dac_data_q0_int <= dac_data_q;
        dac_data_i1_int <= 16'd0;
        dac_data_q1_int <= 16'd0;
        dac_dovf_int <= 1'd0;
        dac_dunf_int <= 1'd0;
      end else begin
        dac_data_i0_int <= dma_data_i0;
        dac_data_q0_int <= dma_data_q0;
        dac_data_i1_int <= dma_data_i1;
        dac_data_q1_int <= dma_data_q1;
        dac_dovf_int <= dma_dovf;
        dac_dunf_int <= dma_dunf;
      end
    end
  end

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

  ad_mem #(.ADDRESS_WIDTH(4), .DATA_WIDTH(32)) i_dac_mem_2 (
    .clka (s_clk),
    .wea (1'b1),
    .addra (s_dac_waddr_s),
    .dina ({s_dac_wdata_q_s, s_dac_wdata_i_s}),
    .clkb (clk),
    .addrb (dac_raddr),
    .doutb ({dac_rdata_q_s, dac_rdata_i_s}));

  // dac- packet data transfer

  always @(posedge s_dac_rst or posedge s_clk) begin
    if (s_dac_rst == 1'b1) begin
      s_dac_rdata <= 'd0;
    end else begin
      s_dac_rdata <= s_dac_rdata_s;
    end
  end

  ad_mem #(.ADDRESS_WIDTH(5), .DATA_WIDTH(8)) i_dac_mem_1 (
    .clka (up_clk),
    .wea (up_dac_wr),
    .addra (up_dac_waddr),
    .dina (up_dac_wdata),
    .clkb (s_clk),
    .addrb (s_dac_raddr_s),
    .doutb (s_dac_rdata_s));

  // dac- req & ack

  assign up_dac_ack_t_s = up_dac_ack_t_m3 ^ up_dac_ack_t_m2;

  always @(posedge s_dac_rst or posedge s_clk) begin
    if (s_dac_rst == 1'b1) begin
      s_dac_req_m1 <= 'd0;
      s_dac_req <= 'd0;
    end else begin
      s_dac_req_m1 <= up_dac_req;
      s_dac_req <= s_dac_req_m1;
    end
  end

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_dac_ack_t_m1 <= 'd0;
      up_dac_ack_t_m2 <= 'd0;
      up_dac_ack_t_m3 <= 'd0;
    end else begin
      up_dac_ack_t_m1 <= s_dac_ack_t_s;
      up_dac_ack_t_m2 <= up_dac_ack_t_m1;
      up_dac_ack_t_m3 <= up_dac_ack_t_m2;
    end
  end

  // dac- reset

  ad_rst i_s_dac_rst_reg (
    .preset (up_dac_preset),
    .clk (s_clk),
    .rst (s_dac_rst));

  // dac- register space

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_dac_wack <= 'd0;
      up_dac_preset <= 'd1;
      up_dac_enable <= 'd0;
      up_dac_req <= 'd0;
      up_dac_wr <= 'd0;
      up_dac_waddr <= 'd0;
      up_dac_wdata <= 'd0;
    end else begin
      if (up_waddr_s[13:8] == 6'h02) begin
        up_dac_wack <= up_wreq_s;
      end else begin
        up_dac_wack <= 1'd0;
      end
      if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h0200)) begin
        up_dac_preset <= up_wdata_s[0];
      end
      if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h0201)) begin
        up_dac_enable <= up_wdata_s[0];
      end
      if (up_dac_ack_t_s == 1'b1) begin
        up_dac_req <= 1'b0;
      end else if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h0202)) begin
        up_dac_req <= up_dac_req | up_wdata_s[0];
      end
      if ((up_wreq_s == 1'b1) && (up_waddr_s[13:8] == 6'h02)) begin
        up_dac_wr <= 1'b1;
      end else begin
        up_dac_wr <= 1'b0;
      end
      up_dac_waddr <= up_waddr_s[4:0];
      up_dac_wdata <= up_wdata_s[7:0];
    end
  end

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_dac_rack <= 'd0;
      up_dac_rdata <= 'd0;
    end else begin
      if (up_raddr_s[13:8] == 6'h02) begin
        up_dac_rack <= up_rreq_s;
      end else begin
        up_dac_rack <= 1'd0;
      end
      if ((up_rreq_s == 1'b1) && (up_raddr_s[13:8] == 6'h02)) begin
        case (up_raddr_s[7:0])
          8'h00: up_dac_rdata <= {31'd0, up_dac_preset};
          8'h01: up_dac_rdata <= {31'd0, up_dac_enable};
          8'h02: up_dac_rdata <= {31'd0, up_dac_req};
          default: up_dac_rdata <= 32'hDEADDEAD;
        endcase
      end else begin
        up_dac_rdata <= 32'd0;
      end
    end
  end

  // common- register space

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_com_wack <= 'd0;
      up_scratch <= 'd0;
    end else begin
      if ((up_waddr_s[13:8] == 6'h0) || (up_waddr_s[13:8] == 6'h1)) begin
        up_com_wack <= up_wreq_s;
      end else begin
        up_com_wack <= 1'd0;
      end
      if ((up_wreq_s == 1'b1) && (up_waddr_s == 14'h02)) begin
        up_scratch <= up_wdata_s;
      end
    end
  end

  always @(negedge up_rstn or posedge up_clk) begin
    if (up_rstn == 0) begin
      up_com_rack <= 'd0;
      up_com_rdata <= 'd0;
    end else begin
      if ((up_raddr_s[13:8] == 6'h0) || (up_raddr_s[13:8] == 6'h1)) begin
        up_com_rack <= up_rreq_s;
      end else begin
        up_com_rack <= 1'd0;
      end
      if (up_rreq_s == 1'b1) begin
        case (up_raddr_s)
          14'h0000: up_com_rdata <= XCOMM2IP_VERSION;
          14'h0001: up_com_rdata <= 32'd0;
          14'h0002: up_com_rdata <= up_scratch;
          default: up_com_rdata <= 0;
        endcase
      end else begin
        up_com_rdata <= 32'd0;
      end
    end
  end

  // interface-clock to sampling-clock conversion

  BUFG i_bufg (
    .I (s_clk_s),
    .O (s_clk));

  BUFR #(.BUFR_DIVIDE(XCOMM2IP_SCLK_DIVIDE)) i_bufr (
    .CLR (1'b0),
    .CE (1'b1),
    .I (clk),
    .O (s_clk_s));

  // up axi interface (common, dac and adc)

  assign up_clk = s_axi_aclk;
  assign up_rstn = s_axi_aresetn;
  assign up_wack_s = up_adc_wack | up_dac_wack | up_com_wack;
  assign up_rack_s = up_adc_rack | up_dac_rack | up_com_rack;
  assign up_rdata_s = up_adc_rdata | up_dac_rdata | up_com_rdata;

  up_axi i_up_axi (
    .up_rstn (up_rstn),
    .up_clk (up_clk),
    .up_axi_awvalid (s_axi_awvalid),
    .up_axi_awaddr (s_axi_awaddr),
    .up_axi_awready (s_axi_awready),
    .up_axi_wvalid (s_axi_wvalid),
    .up_axi_wdata (s_axi_wdata),
    .up_axi_wstrb (s_axi_wstrb),
    .up_axi_wready (s_axi_wready),
    .up_axi_bvalid (s_axi_bvalid),
    .up_axi_bresp (s_axi_bresp),
    .up_axi_bready (s_axi_bready),
    .up_axi_arvalid (s_axi_arvalid),
    .up_axi_araddr (s_axi_araddr),
    .up_axi_arready (s_axi_arready),
    .up_axi_rvalid (s_axi_rvalid),
    .up_axi_rresp (s_axi_rresp),
    .up_axi_rdata (s_axi_rdata),
    .up_axi_rready (s_axi_rready),
    .up_wreq (up_wreq_s),
    .up_waddr (up_waddr_s),
    .up_wdata (up_wdata_s),
    .up_wack (up_wack_s),
    .up_rreq (up_rreq_s),
    .up_raddr (up_raddr_s),
    .up_rdata (up_rdata_s),
    .up_rack (up_rack_s));

  // xcomm2ip core (samples <-> packet)

  axi_xcomm2ip_core i_core (
    .s_clk (s_clk),
    .s_dac_rst (s_dac_rst),
    .s_dac_req (s_dac_req),
    .s_dac_ack_t (s_dac_ack_t_s),
    .s_dac_waddr (s_dac_waddr_s),
    .s_dac_wdata_i (s_dac_wdata_i_s),
    .s_dac_wdata_q (s_dac_wdata_q_s),
    .s_dac_raddr (s_dac_raddr_s),
    .s_dac_rdata (s_dac_rdata),
    .s_adc_rst (s_adc_rst),
    .s_adc_req (s_adc_req),
    .s_adc_ack_t (s_adc_ack_t_s),
    .s_adc_raddr (s_adc_raddr_s),
    .s_adc_rdata_i (s_adc_rdata_i),
    .s_adc_rdata_q (s_adc_rdata_q),
    .s_adc_wr (s_adc_wr_s),
    .s_adc_waddr (s_adc_waddr_s),
    .s_adc_wdata (s_adc_wdata_s));

endmodule

// ***************************************************************************
// ***************************************************************************
