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
  reg     [ 3:0]  s_dac_waddr_s;
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
      s_dac_waddr_s <= 'd0;
    end else begin
      s_dac_waddr_s <= s_dac_waddr_s + 1'b1;
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

  // preamble generator
  preambleBUF pbuf (
    .clock(s_clk),
    .reset(s_dac_rst),
    .io_en(1'b1),
    .io_dout_i(s_dac_wdata_i_s),
    .io_dout_q(s_dac_wdata_q_s)
  );

  // xcomm2ip core (samples <-> packet)
/*
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
    */

endmodule

module preambleROM(
  input         clock,
  input  [8:0]  io_addr,
  output [15:0] io_dout_i,
  output [15:0] io_dout_q
);
  reg [8:0] _T_656;
  reg [31:0] _RAND_0;
  wire [15:0] _GEN_0;
  wire [15:0] _GEN_2;
  wire [15:0] _GEN_3;
  wire [15:0] _GEN_4;
  wire [15:0] _GEN_5;
  wire [15:0] _GEN_6;
  wire [15:0] _GEN_7;
  wire [15:0] _GEN_8;
  wire [15:0] _GEN_9;
  wire [15:0] _GEN_10;
  wire [15:0] _GEN_11;
  wire [15:0] _GEN_12;
  wire [15:0] _GEN_13;
  wire [15:0] _GEN_14;
  wire [15:0] _GEN_15;
  wire [15:0] _GEN_16;
  wire [15:0] _GEN_17;
  wire [15:0] _GEN_18;
  wire [15:0] _GEN_19;
  wire [15:0] _GEN_20;
  wire [15:0] _GEN_21;
  wire [15:0] _GEN_22;
  wire [15:0] _GEN_23;
  wire [15:0] _GEN_24;
  wire [15:0] _GEN_25;
  wire [15:0] _GEN_26;
  wire [15:0] _GEN_27;
  wire [15:0] _GEN_28;
  wire [15:0] _GEN_29;
  wire [15:0] _GEN_30;
  wire [15:0] _GEN_31;
  wire [15:0] _GEN_32;
  wire [15:0] _GEN_33;
  wire [15:0] _GEN_34;
  wire [15:0] _GEN_35;
  wire [15:0] _GEN_36;
  wire [15:0] _GEN_37;
  wire [15:0] _GEN_38;
  wire [15:0] _GEN_39;
  wire [15:0] _GEN_40;
  wire [15:0] _GEN_41;
  wire [15:0] _GEN_42;
  wire [15:0] _GEN_43;
  wire [15:0] _GEN_44;
  wire [15:0] _GEN_45;
  wire [15:0] _GEN_46;
  wire [15:0] _GEN_47;
  wire [15:0] _GEN_48;
  wire [15:0] _GEN_49;
  wire [15:0] _GEN_50;
  wire [15:0] _GEN_51;
  wire [15:0] _GEN_52;
  wire [15:0] _GEN_53;
  wire [15:0] _GEN_54;
  wire [15:0] _GEN_55;
  wire [15:0] _GEN_56;
  wire [15:0] _GEN_57;
  wire [15:0] _GEN_58;
  wire [15:0] _GEN_59;
  wire [15:0] _GEN_60;
  wire [15:0] _GEN_61;
  wire [15:0] _GEN_62;
  wire [15:0] _GEN_63;
  wire [15:0] _GEN_64;
  wire [15:0] _GEN_65;
  wire [15:0] _GEN_66;
  wire [15:0] _GEN_67;
  wire [15:0] _GEN_68;
  wire [15:0] _GEN_69;
  wire [15:0] _GEN_70;
  wire [15:0] _GEN_71;
  wire [15:0] _GEN_72;
  wire [15:0] _GEN_73;
  wire [15:0] _GEN_74;
  wire [15:0] _GEN_75;
  wire [15:0] _GEN_76;
  wire [15:0] _GEN_77;
  wire [15:0] _GEN_78;
  wire [15:0] _GEN_79;
  wire [15:0] _GEN_80;
  wire [15:0] _GEN_81;
  wire [15:0] _GEN_82;
  wire [15:0] _GEN_83;
  wire [15:0] _GEN_84;
  wire [15:0] _GEN_85;
  wire [15:0] _GEN_86;
  wire [15:0] _GEN_87;
  wire [15:0] _GEN_88;
  wire [15:0] _GEN_89;
  wire [15:0] _GEN_90;
  wire [15:0] _GEN_91;
  wire [15:0] _GEN_92;
  wire [15:0] _GEN_93;
  wire [15:0] _GEN_94;
  wire [15:0] _GEN_95;
  wire [15:0] _GEN_96;
  wire [15:0] _GEN_97;
  wire [15:0] _GEN_98;
  wire [15:0] _GEN_99;
  wire [15:0] _GEN_100;
  wire [15:0] _GEN_101;
  wire [15:0] _GEN_102;
  wire [15:0] _GEN_103;
  wire [15:0] _GEN_104;
  wire [15:0] _GEN_105;
  wire [15:0] _GEN_106;
  wire [15:0] _GEN_107;
  wire [15:0] _GEN_108;
  wire [15:0] _GEN_109;
  wire [15:0] _GEN_110;
  wire [15:0] _GEN_111;
  wire [15:0] _GEN_112;
  wire [15:0] _GEN_113;
  wire [15:0] _GEN_114;
  wire [15:0] _GEN_115;
  wire [15:0] _GEN_116;
  wire [15:0] _GEN_117;
  wire [15:0] _GEN_118;
  wire [15:0] _GEN_119;
  wire [15:0] _GEN_120;
  wire [15:0] _GEN_121;
  wire [15:0] _GEN_122;
  wire [15:0] _GEN_123;
  wire [15:0] _GEN_124;
  wire [15:0] _GEN_125;
  wire [15:0] _GEN_126;
  wire [15:0] _GEN_127;
  wire [15:0] _GEN_128;
  wire [15:0] _GEN_129;
  wire [15:0] _GEN_130;
  wire [15:0] _GEN_131;
  wire [15:0] _GEN_132;
  wire [15:0] _GEN_133;
  wire [15:0] _GEN_134;
  wire [15:0] _GEN_135;
  wire [15:0] _GEN_136;
  wire [15:0] _GEN_137;
  wire [15:0] _GEN_138;
  wire [15:0] _GEN_139;
  wire [15:0] _GEN_140;
  wire [15:0] _GEN_141;
  wire [15:0] _GEN_142;
  wire [15:0] _GEN_143;
  wire [15:0] _GEN_144;
  wire [15:0] _GEN_145;
  wire [15:0] _GEN_146;
  wire [15:0] _GEN_147;
  wire [15:0] _GEN_148;
  wire [15:0] _GEN_149;
  wire [15:0] _GEN_150;
  wire [15:0] _GEN_151;
  wire [15:0] _GEN_152;
  wire [15:0] _GEN_153;
  wire [15:0] _GEN_154;
  wire [15:0] _GEN_155;
  wire [15:0] _GEN_156;
  wire [15:0] _GEN_157;
  wire [15:0] _GEN_158;
  wire [15:0] _GEN_159;
  wire [15:0] _GEN_160;
  wire [15:0] _GEN_161;
  wire [15:0] _GEN_162;
  wire [15:0] _GEN_163;
  wire [15:0] _GEN_164;
  wire [15:0] _GEN_165;
  wire [15:0] _GEN_166;
  wire [15:0] _GEN_167;
  wire [15:0] _GEN_168;
  wire [15:0] _GEN_169;
  wire [15:0] _GEN_170;
  wire [15:0] _GEN_171;
  wire [15:0] _GEN_172;
  wire [15:0] _GEN_173;
  wire [15:0] _GEN_174;
  wire [15:0] _GEN_175;
  wire [15:0] _GEN_176;
  wire [15:0] _GEN_177;
  wire [15:0] _GEN_178;
  wire [15:0] _GEN_179;
  wire [15:0] _GEN_180;
  wire [15:0] _GEN_181;
  wire [15:0] _GEN_182;
  wire [15:0] _GEN_183;
  wire [15:0] _GEN_184;
  wire [15:0] _GEN_185;
  wire [15:0] _GEN_186;
  wire [15:0] _GEN_187;
  wire [15:0] _GEN_188;
  wire [15:0] _GEN_189;
  wire [15:0] _GEN_190;
  wire [15:0] _GEN_191;
  wire [15:0] _GEN_192;
  wire [15:0] _GEN_193;
  wire [15:0] _GEN_194;
  wire [15:0] _GEN_195;
  wire [15:0] _GEN_196;
  wire [15:0] _GEN_197;
  wire [15:0] _GEN_198;
  wire [15:0] _GEN_199;
  wire [15:0] _GEN_200;
  wire [15:0] _GEN_201;
  wire [15:0] _GEN_202;
  wire [15:0] _GEN_203;
  wire [15:0] _GEN_204;
  wire [15:0] _GEN_205;
  wire [15:0] _GEN_206;
  wire [15:0] _GEN_207;
  wire [15:0] _GEN_208;
  wire [15:0] _GEN_209;
  wire [15:0] _GEN_210;
  wire [15:0] _GEN_211;
  wire [15:0] _GEN_212;
  wire [15:0] _GEN_213;
  wire [15:0] _GEN_214;
  wire [15:0] _GEN_215;
  wire [15:0] _GEN_216;
  wire [15:0] _GEN_217;
  wire [15:0] _GEN_218;
  wire [15:0] _GEN_219;
  wire [15:0] _GEN_220;
  wire [15:0] _GEN_221;
  wire [15:0] _GEN_222;
  wire [15:0] _GEN_223;
  wire [15:0] _GEN_224;
  wire [15:0] _GEN_225;
  wire [15:0] _GEN_226;
  wire [15:0] _GEN_227;
  wire [15:0] _GEN_228;
  wire [15:0] _GEN_229;
  wire [15:0] _GEN_230;
  wire [15:0] _GEN_231;
  wire [15:0] _GEN_232;
  wire [15:0] _GEN_233;
  wire [15:0] _GEN_234;
  wire [15:0] _GEN_235;
  wire [15:0] _GEN_236;
  wire [15:0] _GEN_237;
  wire [15:0] _GEN_238;
  wire [15:0] _GEN_239;
  wire [15:0] _GEN_240;
  wire [15:0] _GEN_241;
  wire [15:0] _GEN_242;
  wire [15:0] _GEN_243;
  wire [15:0] _GEN_244;
  wire [15:0] _GEN_245;
  wire [15:0] _GEN_246;
  wire [15:0] _GEN_247;
  wire [15:0] _GEN_248;
  wire [15:0] _GEN_249;
  wire [15:0] _GEN_250;
  wire [15:0] _GEN_251;
  wire [15:0] _GEN_252;
  wire [15:0] _GEN_253;
  wire [15:0] _GEN_254;
  wire [15:0] _GEN_255;
  wire [15:0] _GEN_256;
  wire [15:0] _GEN_257;
  wire [15:0] _GEN_258;
  wire [15:0] _GEN_259;
  wire [15:0] _GEN_260;
  wire [15:0] _GEN_261;
  wire [15:0] _GEN_262;
  wire [15:0] _GEN_263;
  wire [15:0] _GEN_264;
  wire [15:0] _GEN_265;
  wire [15:0] _GEN_266;
  wire [15:0] _GEN_267;
  wire [15:0] _GEN_268;
  wire [15:0] _GEN_269;
  wire [15:0] _GEN_270;
  wire [15:0] _GEN_271;
  wire [15:0] _GEN_272;
  wire [15:0] _GEN_273;
  wire [15:0] _GEN_274;
  wire [15:0] _GEN_275;
  wire [15:0] _GEN_276;
  wire [15:0] _GEN_277;
  wire [15:0] _GEN_278;
  wire [15:0] _GEN_279;
  wire [15:0] _GEN_280;
  wire [15:0] _GEN_281;
  wire [15:0] _GEN_282;
  wire [15:0] _GEN_283;
  wire [15:0] _GEN_284;
  wire [15:0] _GEN_285;
  wire [15:0] _GEN_286;
  wire [15:0] _GEN_287;
  wire [15:0] _GEN_288;
  wire [15:0] _GEN_289;
  wire [15:0] _GEN_290;
  wire [15:0] _GEN_291;
  wire [15:0] _GEN_292;
  wire [15:0] _GEN_293;
  wire [15:0] _GEN_294;
  wire [15:0] _GEN_295;
  wire [15:0] _GEN_296;
  wire [15:0] _GEN_297;
  wire [15:0] _GEN_298;
  wire [15:0] _GEN_299;
  wire [15:0] _GEN_300;
  wire [15:0] _GEN_301;
  wire [15:0] _GEN_302;
  wire [15:0] _GEN_303;
  wire [15:0] _GEN_304;
  wire [15:0] _GEN_305;
  wire [15:0] _GEN_306;
  wire [15:0] _GEN_307;
  wire [15:0] _GEN_308;
  wire [15:0] _GEN_309;
  wire [15:0] _GEN_310;
  wire [15:0] _GEN_311;
  wire [15:0] _GEN_312;
  wire [15:0] _GEN_313;
  wire [15:0] _GEN_314;
  wire [15:0] _GEN_315;
  wire [15:0] _GEN_316;
  wire [15:0] _GEN_317;
  wire [15:0] _GEN_318;
  wire [15:0] _GEN_319;
  wire [15:0] _GEN_320;
  reg [8:0] _T_662;
  reg [31:0] _RAND_1;
  wire [15:0] _GEN_1;
  wire [15:0] _GEN_321;
  wire [15:0] _GEN_322;
  wire [15:0] _GEN_323;
  wire [15:0] _GEN_324;
  wire [15:0] _GEN_325;
  wire [15:0] _GEN_326;
  wire [15:0] _GEN_327;
  wire [15:0] _GEN_328;
  wire [15:0] _GEN_329;
  wire [15:0] _GEN_330;
  wire [15:0] _GEN_331;
  wire [15:0] _GEN_332;
  wire [15:0] _GEN_333;
  wire [15:0] _GEN_334;
  wire [15:0] _GEN_335;
  wire [15:0] _GEN_336;
  wire [15:0] _GEN_337;
  wire [15:0] _GEN_338;
  wire [15:0] _GEN_339;
  wire [15:0] _GEN_340;
  wire [15:0] _GEN_341;
  wire [15:0] _GEN_342;
  wire [15:0] _GEN_343;
  wire [15:0] _GEN_344;
  wire [15:0] _GEN_345;
  wire [15:0] _GEN_346;
  wire [15:0] _GEN_347;
  wire [15:0] _GEN_348;
  wire [15:0] _GEN_349;
  wire [15:0] _GEN_350;
  wire [15:0] _GEN_351;
  wire [15:0] _GEN_352;
  wire [15:0] _GEN_353;
  wire [15:0] _GEN_354;
  wire [15:0] _GEN_355;
  wire [15:0] _GEN_356;
  wire [15:0] _GEN_357;
  wire [15:0] _GEN_358;
  wire [15:0] _GEN_359;
  wire [15:0] _GEN_360;
  wire [15:0] _GEN_361;
  wire [15:0] _GEN_362;
  wire [15:0] _GEN_363;
  wire [15:0] _GEN_364;
  wire [15:0] _GEN_365;
  wire [15:0] _GEN_366;
  wire [15:0] _GEN_367;
  wire [15:0] _GEN_368;
  wire [15:0] _GEN_369;
  wire [15:0] _GEN_370;
  wire [15:0] _GEN_371;
  wire [15:0] _GEN_372;
  wire [15:0] _GEN_373;
  wire [15:0] _GEN_374;
  wire [15:0] _GEN_375;
  wire [15:0] _GEN_376;
  wire [15:0] _GEN_377;
  wire [15:0] _GEN_378;
  wire [15:0] _GEN_379;
  wire [15:0] _GEN_380;
  wire [15:0] _GEN_381;
  wire [15:0] _GEN_382;
  wire [15:0] _GEN_383;
  wire [15:0] _GEN_384;
  wire [15:0] _GEN_385;
  wire [15:0] _GEN_386;
  wire [15:0] _GEN_387;
  wire [15:0] _GEN_388;
  wire [15:0] _GEN_389;
  wire [15:0] _GEN_390;
  wire [15:0] _GEN_391;
  wire [15:0] _GEN_392;
  wire [15:0] _GEN_393;
  wire [15:0] _GEN_394;
  wire [15:0] _GEN_395;
  wire [15:0] _GEN_396;
  wire [15:0] _GEN_397;
  wire [15:0] _GEN_398;
  wire [15:0] _GEN_399;
  wire [15:0] _GEN_400;
  wire [15:0] _GEN_401;
  wire [15:0] _GEN_402;
  wire [15:0] _GEN_403;
  wire [15:0] _GEN_404;
  wire [15:0] _GEN_405;
  wire [15:0] _GEN_406;
  wire [15:0] _GEN_407;
  wire [15:0] _GEN_408;
  wire [15:0] _GEN_409;
  wire [15:0] _GEN_410;
  wire [15:0] _GEN_411;
  wire [15:0] _GEN_412;
  wire [15:0] _GEN_413;
  wire [15:0] _GEN_414;
  wire [15:0] _GEN_415;
  wire [15:0] _GEN_416;
  wire [15:0] _GEN_417;
  wire [15:0] _GEN_418;
  wire [15:0] _GEN_419;
  wire [15:0] _GEN_420;
  wire [15:0] _GEN_421;
  wire [15:0] _GEN_422;
  wire [15:0] _GEN_423;
  wire [15:0] _GEN_424;
  wire [15:0] _GEN_425;
  wire [15:0] _GEN_426;
  wire [15:0] _GEN_427;
  wire [15:0] _GEN_428;
  wire [15:0] _GEN_429;
  wire [15:0] _GEN_430;
  wire [15:0] _GEN_431;
  wire [15:0] _GEN_432;
  wire [15:0] _GEN_433;
  wire [15:0] _GEN_434;
  wire [15:0] _GEN_435;
  wire [15:0] _GEN_436;
  wire [15:0] _GEN_437;
  wire [15:0] _GEN_438;
  wire [15:0] _GEN_439;
  wire [15:0] _GEN_440;
  wire [15:0] _GEN_441;
  wire [15:0] _GEN_442;
  wire [15:0] _GEN_443;
  wire [15:0] _GEN_444;
  wire [15:0] _GEN_445;
  wire [15:0] _GEN_446;
  wire [15:0] _GEN_447;
  wire [15:0] _GEN_448;
  wire [15:0] _GEN_449;
  wire [15:0] _GEN_450;
  wire [15:0] _GEN_451;
  wire [15:0] _GEN_452;
  wire [15:0] _GEN_453;
  wire [15:0] _GEN_454;
  wire [15:0] _GEN_455;
  wire [15:0] _GEN_456;
  wire [15:0] _GEN_457;
  wire [15:0] _GEN_458;
  wire [15:0] _GEN_459;
  wire [15:0] _GEN_460;
  wire [15:0] _GEN_461;
  wire [15:0] _GEN_462;
  wire [15:0] _GEN_463;
  wire [15:0] _GEN_464;
  wire [15:0] _GEN_465;
  wire [15:0] _GEN_466;
  wire [15:0] _GEN_467;
  wire [15:0] _GEN_468;
  wire [15:0] _GEN_469;
  wire [15:0] _GEN_470;
  wire [15:0] _GEN_471;
  wire [15:0] _GEN_472;
  wire [15:0] _GEN_473;
  wire [15:0] _GEN_474;
  wire [15:0] _GEN_475;
  wire [15:0] _GEN_476;
  wire [15:0] _GEN_477;
  wire [15:0] _GEN_478;
  wire [15:0] _GEN_479;
  wire [15:0] _GEN_480;
  wire [15:0] _GEN_481;
  wire [15:0] _GEN_482;
  wire [15:0] _GEN_483;
  wire [15:0] _GEN_484;
  wire [15:0] _GEN_485;
  wire [15:0] _GEN_486;
  wire [15:0] _GEN_487;
  wire [15:0] _GEN_488;
  wire [15:0] _GEN_489;
  wire [15:0] _GEN_490;
  wire [15:0] _GEN_491;
  wire [15:0] _GEN_492;
  wire [15:0] _GEN_493;
  wire [15:0] _GEN_494;
  wire [15:0] _GEN_495;
  wire [15:0] _GEN_496;
  wire [15:0] _GEN_497;
  wire [15:0] _GEN_498;
  wire [15:0] _GEN_499;
  wire [15:0] _GEN_500;
  wire [15:0] _GEN_501;
  wire [15:0] _GEN_502;
  wire [15:0] _GEN_503;
  wire [15:0] _GEN_504;
  wire [15:0] _GEN_505;
  wire [15:0] _GEN_506;
  wire [15:0] _GEN_507;
  wire [15:0] _GEN_508;
  wire [15:0] _GEN_509;
  wire [15:0] _GEN_510;
  wire [15:0] _GEN_511;
  wire [15:0] _GEN_512;
  wire [15:0] _GEN_513;
  wire [15:0] _GEN_514;
  wire [15:0] _GEN_515;
  wire [15:0] _GEN_516;
  wire [15:0] _GEN_517;
  wire [15:0] _GEN_518;
  wire [15:0] _GEN_519;
  wire [15:0] _GEN_520;
  wire [15:0] _GEN_521;
  wire [15:0] _GEN_522;
  wire [15:0] _GEN_523;
  wire [15:0] _GEN_524;
  wire [15:0] _GEN_525;
  wire [15:0] _GEN_526;
  wire [15:0] _GEN_527;
  wire [15:0] _GEN_528;
  wire [15:0] _GEN_529;
  wire [15:0] _GEN_530;
  wire [15:0] _GEN_531;
  wire [15:0] _GEN_532;
  wire [15:0] _GEN_533;
  wire [15:0] _GEN_534;
  wire [15:0] _GEN_535;
  wire [15:0] _GEN_536;
  wire [15:0] _GEN_537;
  wire [15:0] _GEN_538;
  wire [15:0] _GEN_539;
  wire [15:0] _GEN_540;
  wire [15:0] _GEN_541;
  wire [15:0] _GEN_542;
  wire [15:0] _GEN_543;
  wire [15:0] _GEN_544;
  wire [15:0] _GEN_545;
  wire [15:0] _GEN_546;
  wire [15:0] _GEN_547;
  wire [15:0] _GEN_548;
  wire [15:0] _GEN_549;
  wire [15:0] _GEN_550;
  wire [15:0] _GEN_551;
  wire [15:0] _GEN_552;
  wire [15:0] _GEN_553;
  wire [15:0] _GEN_554;
  wire [15:0] _GEN_555;
  wire [15:0] _GEN_556;
  wire [15:0] _GEN_557;
  wire [15:0] _GEN_558;
  wire [15:0] _GEN_559;
  wire [15:0] _GEN_560;
  wire [15:0] _GEN_561;
  wire [15:0] _GEN_562;
  wire [15:0] _GEN_563;
  wire [15:0] _GEN_564;
  wire [15:0] _GEN_565;
  wire [15:0] _GEN_566;
  wire [15:0] _GEN_567;
  wire [15:0] _GEN_568;
  wire [15:0] _GEN_569;
  wire [15:0] _GEN_570;
  wire [15:0] _GEN_571;
  wire [15:0] _GEN_572;
  wire [15:0] _GEN_573;
  wire [15:0] _GEN_574;
  wire [15:0] _GEN_575;
  wire [15:0] _GEN_576;
  wire [15:0] _GEN_577;
  wire [15:0] _GEN_578;
  wire [15:0] _GEN_579;
  wire [15:0] _GEN_580;
  wire [15:0] _GEN_581;
  wire [15:0] _GEN_582;
  wire [15:0] _GEN_583;
  wire [15:0] _GEN_584;
  wire [15:0] _GEN_585;
  wire [15:0] _GEN_586;
  wire [15:0] _GEN_587;
  wire [15:0] _GEN_588;
  wire [15:0] _GEN_589;
  wire [15:0] _GEN_590;
  wire [15:0] _GEN_591;
  wire [15:0] _GEN_592;
  wire [15:0] _GEN_593;
  wire [15:0] _GEN_594;
  wire [15:0] _GEN_595;
  wire [15:0] _GEN_596;
  wire [15:0] _GEN_597;
  wire [15:0] _GEN_598;
  wire [15:0] _GEN_599;
  wire [15:0] _GEN_600;
  wire [15:0] _GEN_601;
  wire [15:0] _GEN_602;
  wire [15:0] _GEN_603;
  wire [15:0] _GEN_604;
  wire [15:0] _GEN_605;
  wire [15:0] _GEN_606;
  wire [15:0] _GEN_607;
  wire [15:0] _GEN_608;
  wire [15:0] _GEN_609;
  wire [15:0] _GEN_610;
  wire [15:0] _GEN_611;
  wire [15:0] _GEN_612;
  wire [15:0] _GEN_613;
  wire [15:0] _GEN_614;
  wire [15:0] _GEN_615;
  wire [15:0] _GEN_616;
  wire [15:0] _GEN_617;
  wire [15:0] _GEN_618;
  wire [15:0] _GEN_619;
  wire [15:0] _GEN_620;
  wire [15:0] _GEN_621;
  wire [15:0] _GEN_622;
  wire [15:0] _GEN_623;
  wire [15:0] _GEN_624;
  wire [15:0] _GEN_625;
  wire [15:0] _GEN_626;
  wire [15:0] _GEN_627;
  wire [15:0] _GEN_628;
  wire [15:0] _GEN_629;
  wire [15:0] _GEN_630;
  wire [15:0] _GEN_631;
  wire [15:0] _GEN_632;
  wire [15:0] _GEN_633;
  wire [15:0] _GEN_634;
  wire [15:0] _GEN_635;
  wire [15:0] _GEN_636;
  wire [15:0] _GEN_637;
  wire [15:0] _GEN_638;
  wire [15:0] _GEN_639;
  assign io_dout_i = _GEN_0;
  assign io_dout_q = _GEN_1;
  assign _GEN_0 = _GEN_320;
  assign _GEN_2 = 9'h1 == _T_656 ? $signed(-16'sh10f4) : $signed(16'sh5e3);
  assign _GEN_3 = 9'h2 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_2);
  assign _GEN_4 = 9'h3 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_3);
  assign _GEN_5 = 9'h4 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_4);
  assign _GEN_6 = 9'h5 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_5);
  assign _GEN_7 = 9'h6 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_6);
  assign _GEN_8 = 9'h7 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_7);
  assign _GEN_9 = 9'h8 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_8);
  assign _GEN_10 = 9'h9 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_9);
  assign _GEN_11 = 9'ha == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_10);
  assign _GEN_12 = 9'hb == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_11);
  assign _GEN_13 = 9'hc == _T_656 ? $signed(16'sh0) : $signed(_GEN_12);
  assign _GEN_14 = 9'hd == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_13);
  assign _GEN_15 = 9'he == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_14);
  assign _GEN_16 = 9'hf == _T_656 ? $signed(16'sh4d) : $signed(_GEN_15);
  assign _GEN_17 = 9'h10 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_16);
  assign _GEN_18 = 9'h11 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_17);
  assign _GEN_19 = 9'h12 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_18);
  assign _GEN_20 = 9'h13 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_19);
  assign _GEN_21 = 9'h14 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_20);
  assign _GEN_22 = 9'h15 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_21);
  assign _GEN_23 = 9'h16 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_22);
  assign _GEN_24 = 9'h17 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_23);
  assign _GEN_25 = 9'h18 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_24);
  assign _GEN_26 = 9'h19 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_25);
  assign _GEN_27 = 9'h1a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_26);
  assign _GEN_28 = 9'h1b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_27);
  assign _GEN_29 = 9'h1c == _T_656 ? $signed(16'sh0) : $signed(_GEN_28);
  assign _GEN_30 = 9'h1d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_29);
  assign _GEN_31 = 9'h1e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_30);
  assign _GEN_32 = 9'h1f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_31);
  assign _GEN_33 = 9'h20 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_32);
  assign _GEN_34 = 9'h21 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_33);
  assign _GEN_35 = 9'h22 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_34);
  assign _GEN_36 = 9'h23 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_35);
  assign _GEN_37 = 9'h24 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_36);
  assign _GEN_38 = 9'h25 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_37);
  assign _GEN_39 = 9'h26 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_38);
  assign _GEN_40 = 9'h27 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_39);
  assign _GEN_41 = 9'h28 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_40);
  assign _GEN_42 = 9'h29 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_41);
  assign _GEN_43 = 9'h2a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_42);
  assign _GEN_44 = 9'h2b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_43);
  assign _GEN_45 = 9'h2c == _T_656 ? $signed(16'sh0) : $signed(_GEN_44);
  assign _GEN_46 = 9'h2d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_45);
  assign _GEN_47 = 9'h2e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_46);
  assign _GEN_48 = 9'h2f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_47);
  assign _GEN_49 = 9'h30 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_48);
  assign _GEN_50 = 9'h31 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_49);
  assign _GEN_51 = 9'h32 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_50);
  assign _GEN_52 = 9'h33 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_51);
  assign _GEN_53 = 9'h34 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_52);
  assign _GEN_54 = 9'h35 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_53);
  assign _GEN_55 = 9'h36 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_54);
  assign _GEN_56 = 9'h37 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_55);
  assign _GEN_57 = 9'h38 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_56);
  assign _GEN_58 = 9'h39 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_57);
  assign _GEN_59 = 9'h3a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_58);
  assign _GEN_60 = 9'h3b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_59);
  assign _GEN_61 = 9'h3c == _T_656 ? $signed(16'sh0) : $signed(_GEN_60);
  assign _GEN_62 = 9'h3d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_61);
  assign _GEN_63 = 9'h3e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_62);
  assign _GEN_64 = 9'h3f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_63);
  assign _GEN_65 = 9'h40 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_64);
  assign _GEN_66 = 9'h41 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_65);
  assign _GEN_67 = 9'h42 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_66);
  assign _GEN_68 = 9'h43 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_67);
  assign _GEN_69 = 9'h44 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_68);
  assign _GEN_70 = 9'h45 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_69);
  assign _GEN_71 = 9'h46 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_70);
  assign _GEN_72 = 9'h47 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_71);
  assign _GEN_73 = 9'h48 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_72);
  assign _GEN_74 = 9'h49 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_73);
  assign _GEN_75 = 9'h4a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_74);
  assign _GEN_76 = 9'h4b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_75);
  assign _GEN_77 = 9'h4c == _T_656 ? $signed(16'sh0) : $signed(_GEN_76);
  assign _GEN_78 = 9'h4d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_77);
  assign _GEN_79 = 9'h4e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_78);
  assign _GEN_80 = 9'h4f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_79);
  assign _GEN_81 = 9'h50 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_80);
  assign _GEN_82 = 9'h51 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_81);
  assign _GEN_83 = 9'h52 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_82);
  assign _GEN_84 = 9'h53 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_83);
  assign _GEN_85 = 9'h54 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_84);
  assign _GEN_86 = 9'h55 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_85);
  assign _GEN_87 = 9'h56 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_86);
  assign _GEN_88 = 9'h57 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_87);
  assign _GEN_89 = 9'h58 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_88);
  assign _GEN_90 = 9'h59 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_89);
  assign _GEN_91 = 9'h5a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_90);
  assign _GEN_92 = 9'h5b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_91);
  assign _GEN_93 = 9'h5c == _T_656 ? $signed(16'sh0) : $signed(_GEN_92);
  assign _GEN_94 = 9'h5d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_93);
  assign _GEN_95 = 9'h5e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_94);
  assign _GEN_96 = 9'h5f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_95);
  assign _GEN_97 = 9'h60 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_96);
  assign _GEN_98 = 9'h61 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_97);
  assign _GEN_99 = 9'h62 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_98);
  assign _GEN_100 = 9'h63 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_99);
  assign _GEN_101 = 9'h64 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_100);
  assign _GEN_102 = 9'h65 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_101);
  assign _GEN_103 = 9'h66 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_102);
  assign _GEN_104 = 9'h67 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_103);
  assign _GEN_105 = 9'h68 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_104);
  assign _GEN_106 = 9'h69 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_105);
  assign _GEN_107 = 9'h6a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_106);
  assign _GEN_108 = 9'h6b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_107);
  assign _GEN_109 = 9'h6c == _T_656 ? $signed(16'sh0) : $signed(_GEN_108);
  assign _GEN_110 = 9'h6d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_109);
  assign _GEN_111 = 9'h6e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_110);
  assign _GEN_112 = 9'h6f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_111);
  assign _GEN_113 = 9'h70 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_112);
  assign _GEN_114 = 9'h71 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_113);
  assign _GEN_115 = 9'h72 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_114);
  assign _GEN_116 = 9'h73 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_115);
  assign _GEN_117 = 9'h74 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_116);
  assign _GEN_118 = 9'h75 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_117);
  assign _GEN_119 = 9'h76 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_118);
  assign _GEN_120 = 9'h77 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_119);
  assign _GEN_121 = 9'h78 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_120);
  assign _GEN_122 = 9'h79 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_121);
  assign _GEN_123 = 9'h7a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_122);
  assign _GEN_124 = 9'h7b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_123);
  assign _GEN_125 = 9'h7c == _T_656 ? $signed(16'sh0) : $signed(_GEN_124);
  assign _GEN_126 = 9'h7d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_125);
  assign _GEN_127 = 9'h7e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_126);
  assign _GEN_128 = 9'h7f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_127);
  assign _GEN_129 = 9'h80 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_128);
  assign _GEN_130 = 9'h81 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_129);
  assign _GEN_131 = 9'h82 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_130);
  assign _GEN_132 = 9'h83 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_131);
  assign _GEN_133 = 9'h84 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_132);
  assign _GEN_134 = 9'h85 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_133);
  assign _GEN_135 = 9'h86 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_134);
  assign _GEN_136 = 9'h87 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_135);
  assign _GEN_137 = 9'h88 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_136);
  assign _GEN_138 = 9'h89 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_137);
  assign _GEN_139 = 9'h8a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_138);
  assign _GEN_140 = 9'h8b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_139);
  assign _GEN_141 = 9'h8c == _T_656 ? $signed(16'sh0) : $signed(_GEN_140);
  assign _GEN_142 = 9'h8d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_141);
  assign _GEN_143 = 9'h8e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_142);
  assign _GEN_144 = 9'h8f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_143);
  assign _GEN_145 = 9'h90 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_144);
  assign _GEN_146 = 9'h91 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_145);
  assign _GEN_147 = 9'h92 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_146);
  assign _GEN_148 = 9'h93 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_147);
  assign _GEN_149 = 9'h94 == _T_656 ? $signed(16'shbc7) : $signed(_GEN_148);
  assign _GEN_150 = 9'h95 == _T_656 ? $signed(16'sh1246) : $signed(_GEN_149);
  assign _GEN_151 = 9'h96 == _T_656 ? $signed(-16'sh1b9) : $signed(_GEN_150);
  assign _GEN_152 = 9'h97 == _T_656 ? $signed(-16'sh10f4) : $signed(_GEN_151);
  assign _GEN_153 = 9'h98 == _T_656 ? $signed(16'sh5e3) : $signed(_GEN_152);
  assign _GEN_154 = 9'h99 == _T_656 ? $signed(16'sh4d) : $signed(_GEN_153);
  assign _GEN_155 = 9'h9a == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_154);
  assign _GEN_156 = 9'h9b == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_155);
  assign _GEN_157 = 9'h9c == _T_656 ? $signed(16'sh0) : $signed(_GEN_156);
  assign _GEN_158 = 9'h9d == _T_656 ? $signed(-16'sh19f) : $signed(_GEN_157);
  assign _GEN_159 = 9'h9e == _T_656 ? $signed(-16'sha0d) : $signed(_GEN_158);
  assign _GEN_160 = 9'h9f == _T_656 ? $signed(16'sh4d) : $signed(_GEN_159);
  assign _GEN_161 = 9'ha0 == _T_656 ? $signed(-16'sh1400) : $signed(_GEN_160);
  assign _GEN_162 = 9'ha1 == _T_656 ? $signed(16'sh193) : $signed(_GEN_161);
  assign _GEN_163 = 9'ha2 == _T_656 ? $signed(16'shbbd) : $signed(_GEN_162);
  assign _GEN_164 = 9'ha3 == _T_656 ? $signed(-16'shbc3) : $signed(_GEN_163);
  assign _GEN_165 = 9'ha4 == _T_656 ? $signed(-16'sh5c) : $signed(_GEN_164);
  assign _GEN_166 = 9'ha5 == _T_656 ? $signed(16'sh99c) : $signed(_GEN_165);
  assign _GEN_167 = 9'ha6 == _T_656 ? $signed(-16'sh104c) : $signed(_GEN_166);
  assign _GEN_168 = 9'ha7 == _T_656 ? $signed(-16'shf9a) : $signed(_GEN_167);
  assign _GEN_169 = 9'ha8 == _T_656 ? $signed(-16'sh47c) : $signed(_GEN_168);
  assign _GEN_170 = 9'ha9 == _T_656 ? $signed(-16'sh73a) : $signed(_GEN_169);
  assign _GEN_171 = 9'haa == _T_656 ? $signed(-16'sh7b8) : $signed(_GEN_170);
  assign _GEN_172 = 9'hab == _T_656 ? $signed(16'sh8e7) : $signed(_GEN_171);
  assign _GEN_173 = 9'hac == _T_656 ? $signed(16'sha86) : $signed(_GEN_172);
  assign _GEN_174 = 9'had == _T_656 ? $signed(-16'sh10cd) : $signed(_GEN_173);
  assign _GEN_175 = 9'hae == _T_656 ? $signed(-16'sh753) : $signed(_GEN_174);
  assign _GEN_176 = 9'haf == _T_656 ? $signed(16'sh4ba) : $signed(_GEN_175);
  assign _GEN_177 = 9'hb0 == _T_656 ? $signed(16'sh800) : $signed(_GEN_176);
  assign _GEN_178 = 9'hb1 == _T_656 ? $signed(16'shf43) : $signed(_GEN_177);
  assign _GEN_179 = 9'hb2 == _T_656 ? $signed(-16'sh2e1) : $signed(_GEN_178);
  assign _GEN_180 = 9'hb3 == _T_656 ? $signed(16'sh782) : $signed(_GEN_179);
  assign _GEN_181 = 9'hb4 == _T_656 ? $signed(16'sh322) : $signed(_GEN_180);
  assign _GEN_182 = 9'hb5 == _T_656 ? $signed(-16'sh1183) : $signed(_GEN_181);
  assign _GEN_183 = 9'hb6 == _T_656 ? $signed(16'sh20) : $signed(_GEN_182);
  assign _GEN_184 = 9'hb7 == _T_656 ? $signed(16'sh6d4) : $signed(_GEN_183);
  assign _GEN_185 = 9'hb8 == _T_656 ? $signed(16'shc7c) : $signed(_GEN_184);
  assign _GEN_186 = 9'hb9 == _T_656 ? $signed(-16'sh4e8) : $signed(_GEN_185);
  assign _GEN_187 = 9'hba == _T_656 ? $signed(-16'shebd) : $signed(_GEN_186);
  assign _GEN_188 = 9'hbb == _T_656 ? $signed(16'sh7a8) : $signed(_GEN_187);
  assign _GEN_189 = 9'hbc == _T_656 ? $signed(16'sh2b4) : $signed(_GEN_188);
  assign _GEN_190 = 9'hbd == _T_656 ? $signed(16'shc65) : $signed(_GEN_189);
  assign _GEN_191 = 9'hbe == _T_656 ? $signed(16'sh517) : $signed(_GEN_190);
  assign _GEN_192 = 9'hbf == _T_656 ? $signed(-16'sha8) : $signed(_GEN_191);
  assign _GEN_193 = 9'hc0 == _T_656 ? $signed(16'sh1400) : $signed(_GEN_192);
  assign _GEN_194 = 9'hc1 == _T_656 ? $signed(-16'sha8) : $signed(_GEN_193);
  assign _GEN_195 = 9'hc2 == _T_656 ? $signed(16'sh517) : $signed(_GEN_194);
  assign _GEN_196 = 9'hc3 == _T_656 ? $signed(16'shc65) : $signed(_GEN_195);
  assign _GEN_197 = 9'hc4 == _T_656 ? $signed(16'sh2b4) : $signed(_GEN_196);
  assign _GEN_198 = 9'hc5 == _T_656 ? $signed(16'sh7a8) : $signed(_GEN_197);
  assign _GEN_199 = 9'hc6 == _T_656 ? $signed(-16'shebd) : $signed(_GEN_198);
  assign _GEN_200 = 9'hc7 == _T_656 ? $signed(-16'sh4e8) : $signed(_GEN_199);
  assign _GEN_201 = 9'hc8 == _T_656 ? $signed(16'shc7c) : $signed(_GEN_200);
  assign _GEN_202 = 9'hc9 == _T_656 ? $signed(16'sh6d4) : $signed(_GEN_201);
  assign _GEN_203 = 9'hca == _T_656 ? $signed(16'sh20) : $signed(_GEN_202);
  assign _GEN_204 = 9'hcb == _T_656 ? $signed(-16'sh1183) : $signed(_GEN_203);
  assign _GEN_205 = 9'hcc == _T_656 ? $signed(16'sh322) : $signed(_GEN_204);
  assign _GEN_206 = 9'hcd == _T_656 ? $signed(16'sh782) : $signed(_GEN_205);
  assign _GEN_207 = 9'hce == _T_656 ? $signed(-16'sh2e1) : $signed(_GEN_206);
  assign _GEN_208 = 9'hcf == _T_656 ? $signed(16'shf43) : $signed(_GEN_207);
  assign _GEN_209 = 9'hd0 == _T_656 ? $signed(16'sh800) : $signed(_GEN_208);
  assign _GEN_210 = 9'hd1 == _T_656 ? $signed(16'sh4ba) : $signed(_GEN_209);
  assign _GEN_211 = 9'hd2 == _T_656 ? $signed(-16'sh753) : $signed(_GEN_210);
  assign _GEN_212 = 9'hd3 == _T_656 ? $signed(-16'sh10cd) : $signed(_GEN_211);
  assign _GEN_213 = 9'hd4 == _T_656 ? $signed(16'sha86) : $signed(_GEN_212);
  assign _GEN_214 = 9'hd5 == _T_656 ? $signed(16'sh8e7) : $signed(_GEN_213);
  assign _GEN_215 = 9'hd6 == _T_656 ? $signed(-16'sh7b8) : $signed(_GEN_214);
  assign _GEN_216 = 9'hd7 == _T_656 ? $signed(-16'sh73a) : $signed(_GEN_215);
  assign _GEN_217 = 9'hd8 == _T_656 ? $signed(-16'sh47c) : $signed(_GEN_216);
  assign _GEN_218 = 9'hd9 == _T_656 ? $signed(-16'shf9a) : $signed(_GEN_217);
  assign _GEN_219 = 9'hda == _T_656 ? $signed(-16'sh104c) : $signed(_GEN_218);
  assign _GEN_220 = 9'hdb == _T_656 ? $signed(16'sh99c) : $signed(_GEN_219);
  assign _GEN_221 = 9'hdc == _T_656 ? $signed(-16'sh5c) : $signed(_GEN_220);
  assign _GEN_222 = 9'hdd == _T_656 ? $signed(-16'shbc3) : $signed(_GEN_221);
  assign _GEN_223 = 9'hde == _T_656 ? $signed(16'shbbd) : $signed(_GEN_222);
  assign _GEN_224 = 9'hdf == _T_656 ? $signed(16'sh193) : $signed(_GEN_223);
  assign _GEN_225 = 9'he0 == _T_656 ? $signed(-16'sh1400) : $signed(_GEN_224);
  assign _GEN_226 = 9'he1 == _T_656 ? $signed(16'sh193) : $signed(_GEN_225);
  assign _GEN_227 = 9'he2 == _T_656 ? $signed(16'shbbd) : $signed(_GEN_226);
  assign _GEN_228 = 9'he3 == _T_656 ? $signed(-16'shbc3) : $signed(_GEN_227);
  assign _GEN_229 = 9'he4 == _T_656 ? $signed(-16'sh5c) : $signed(_GEN_228);
  assign _GEN_230 = 9'he5 == _T_656 ? $signed(16'sh99c) : $signed(_GEN_229);
  assign _GEN_231 = 9'he6 == _T_656 ? $signed(-16'sh104c) : $signed(_GEN_230);
  assign _GEN_232 = 9'he7 == _T_656 ? $signed(-16'shf9a) : $signed(_GEN_231);
  assign _GEN_233 = 9'he8 == _T_656 ? $signed(-16'sh47c) : $signed(_GEN_232);
  assign _GEN_234 = 9'he9 == _T_656 ? $signed(-16'sh73a) : $signed(_GEN_233);
  assign _GEN_235 = 9'hea == _T_656 ? $signed(-16'sh7b8) : $signed(_GEN_234);
  assign _GEN_236 = 9'heb == _T_656 ? $signed(16'sh8e7) : $signed(_GEN_235);
  assign _GEN_237 = 9'hec == _T_656 ? $signed(16'sha86) : $signed(_GEN_236);
  assign _GEN_238 = 9'hed == _T_656 ? $signed(-16'sh10cd) : $signed(_GEN_237);
  assign _GEN_239 = 9'hee == _T_656 ? $signed(-16'sh753) : $signed(_GEN_238);
  assign _GEN_240 = 9'hef == _T_656 ? $signed(16'sh4ba) : $signed(_GEN_239);
  assign _GEN_241 = 9'hf0 == _T_656 ? $signed(16'sh800) : $signed(_GEN_240);
  assign _GEN_242 = 9'hf1 == _T_656 ? $signed(16'shf43) : $signed(_GEN_241);
  assign _GEN_243 = 9'hf2 == _T_656 ? $signed(-16'sh2e1) : $signed(_GEN_242);
  assign _GEN_244 = 9'hf3 == _T_656 ? $signed(16'sh782) : $signed(_GEN_243);
  assign _GEN_245 = 9'hf4 == _T_656 ? $signed(16'sh322) : $signed(_GEN_244);
  assign _GEN_246 = 9'hf5 == _T_656 ? $signed(-16'sh1183) : $signed(_GEN_245);
  assign _GEN_247 = 9'hf6 == _T_656 ? $signed(16'sh20) : $signed(_GEN_246);
  assign _GEN_248 = 9'hf7 == _T_656 ? $signed(16'sh6d4) : $signed(_GEN_247);
  assign _GEN_249 = 9'hf8 == _T_656 ? $signed(16'shc7c) : $signed(_GEN_248);
  assign _GEN_250 = 9'hf9 == _T_656 ? $signed(-16'sh4e8) : $signed(_GEN_249);
  assign _GEN_251 = 9'hfa == _T_656 ? $signed(-16'shebd) : $signed(_GEN_250);
  assign _GEN_252 = 9'hfb == _T_656 ? $signed(16'sh7a8) : $signed(_GEN_251);
  assign _GEN_253 = 9'hfc == _T_656 ? $signed(16'sh2b4) : $signed(_GEN_252);
  assign _GEN_254 = 9'hfd == _T_656 ? $signed(16'shc65) : $signed(_GEN_253);
  assign _GEN_255 = 9'hfe == _T_656 ? $signed(16'sh517) : $signed(_GEN_254);
  assign _GEN_256 = 9'hff == _T_656 ? $signed(-16'sha8) : $signed(_GEN_255);
  assign _GEN_257 = 9'h100 == _T_656 ? $signed(16'sh1400) : $signed(_GEN_256);
  assign _GEN_258 = 9'h101 == _T_656 ? $signed(-16'sha8) : $signed(_GEN_257);
  assign _GEN_259 = 9'h102 == _T_656 ? $signed(16'sh517) : $signed(_GEN_258);
  assign _GEN_260 = 9'h103 == _T_656 ? $signed(16'shc65) : $signed(_GEN_259);
  assign _GEN_261 = 9'h104 == _T_656 ? $signed(16'sh2b4) : $signed(_GEN_260);
  assign _GEN_262 = 9'h105 == _T_656 ? $signed(16'sh7a8) : $signed(_GEN_261);
  assign _GEN_263 = 9'h106 == _T_656 ? $signed(-16'shebd) : $signed(_GEN_262);
  assign _GEN_264 = 9'h107 == _T_656 ? $signed(-16'sh4e8) : $signed(_GEN_263);
  assign _GEN_265 = 9'h108 == _T_656 ? $signed(16'shc7c) : $signed(_GEN_264);
  assign _GEN_266 = 9'h109 == _T_656 ? $signed(16'sh6d4) : $signed(_GEN_265);
  assign _GEN_267 = 9'h10a == _T_656 ? $signed(16'sh20) : $signed(_GEN_266);
  assign _GEN_268 = 9'h10b == _T_656 ? $signed(-16'sh1183) : $signed(_GEN_267);
  assign _GEN_269 = 9'h10c == _T_656 ? $signed(16'sh322) : $signed(_GEN_268);
  assign _GEN_270 = 9'h10d == _T_656 ? $signed(16'sh782) : $signed(_GEN_269);
  assign _GEN_271 = 9'h10e == _T_656 ? $signed(-16'sh2e1) : $signed(_GEN_270);
  assign _GEN_272 = 9'h10f == _T_656 ? $signed(16'shf43) : $signed(_GEN_271);
  assign _GEN_273 = 9'h110 == _T_656 ? $signed(16'sh800) : $signed(_GEN_272);
  assign _GEN_274 = 9'h111 == _T_656 ? $signed(16'sh4ba) : $signed(_GEN_273);
  assign _GEN_275 = 9'h112 == _T_656 ? $signed(-16'sh753) : $signed(_GEN_274);
  assign _GEN_276 = 9'h113 == _T_656 ? $signed(-16'sh10cd) : $signed(_GEN_275);
  assign _GEN_277 = 9'h114 == _T_656 ? $signed(16'sha86) : $signed(_GEN_276);
  assign _GEN_278 = 9'h115 == _T_656 ? $signed(16'sh8e7) : $signed(_GEN_277);
  assign _GEN_279 = 9'h116 == _T_656 ? $signed(-16'sh7b8) : $signed(_GEN_278);
  assign _GEN_280 = 9'h117 == _T_656 ? $signed(-16'sh73a) : $signed(_GEN_279);
  assign _GEN_281 = 9'h118 == _T_656 ? $signed(-16'sh47c) : $signed(_GEN_280);
  assign _GEN_282 = 9'h119 == _T_656 ? $signed(-16'shf9a) : $signed(_GEN_281);
  assign _GEN_283 = 9'h11a == _T_656 ? $signed(-16'sh104c) : $signed(_GEN_282);
  assign _GEN_284 = 9'h11b == _T_656 ? $signed(16'sh99c) : $signed(_GEN_283);
  assign _GEN_285 = 9'h11c == _T_656 ? $signed(-16'sh5c) : $signed(_GEN_284);
  assign _GEN_286 = 9'h11d == _T_656 ? $signed(-16'shbc3) : $signed(_GEN_285);
  assign _GEN_287 = 9'h11e == _T_656 ? $signed(16'shbbd) : $signed(_GEN_286);
  assign _GEN_288 = 9'h11f == _T_656 ? $signed(16'sh193) : $signed(_GEN_287);
  assign _GEN_289 = 9'h120 == _T_656 ? $signed(-16'sh1400) : $signed(_GEN_288);
  assign _GEN_290 = 9'h121 == _T_656 ? $signed(16'sh193) : $signed(_GEN_289);
  assign _GEN_291 = 9'h122 == _T_656 ? $signed(16'shbbd) : $signed(_GEN_290);
  assign _GEN_292 = 9'h123 == _T_656 ? $signed(-16'shbc3) : $signed(_GEN_291);
  assign _GEN_293 = 9'h124 == _T_656 ? $signed(-16'sh5c) : $signed(_GEN_292);
  assign _GEN_294 = 9'h125 == _T_656 ? $signed(16'sh99c) : $signed(_GEN_293);
  assign _GEN_295 = 9'h126 == _T_656 ? $signed(-16'sh104c) : $signed(_GEN_294);
  assign _GEN_296 = 9'h127 == _T_656 ? $signed(-16'shf9a) : $signed(_GEN_295);
  assign _GEN_297 = 9'h128 == _T_656 ? $signed(-16'sh47c) : $signed(_GEN_296);
  assign _GEN_298 = 9'h129 == _T_656 ? $signed(-16'sh73a) : $signed(_GEN_297);
  assign _GEN_299 = 9'h12a == _T_656 ? $signed(-16'sh7b8) : $signed(_GEN_298);
  assign _GEN_300 = 9'h12b == _T_656 ? $signed(16'sh8e7) : $signed(_GEN_299);
  assign _GEN_301 = 9'h12c == _T_656 ? $signed(16'sha86) : $signed(_GEN_300);
  assign _GEN_302 = 9'h12d == _T_656 ? $signed(-16'sh10cd) : $signed(_GEN_301);
  assign _GEN_303 = 9'h12e == _T_656 ? $signed(-16'sh753) : $signed(_GEN_302);
  assign _GEN_304 = 9'h12f == _T_656 ? $signed(16'sh4ba) : $signed(_GEN_303);
  assign _GEN_305 = 9'h130 == _T_656 ? $signed(16'sh800) : $signed(_GEN_304);
  assign _GEN_306 = 9'h131 == _T_656 ? $signed(16'shf43) : $signed(_GEN_305);
  assign _GEN_307 = 9'h132 == _T_656 ? $signed(-16'sh2e1) : $signed(_GEN_306);
  assign _GEN_308 = 9'h133 == _T_656 ? $signed(16'sh782) : $signed(_GEN_307);
  assign _GEN_309 = 9'h134 == _T_656 ? $signed(16'sh322) : $signed(_GEN_308);
  assign _GEN_310 = 9'h135 == _T_656 ? $signed(-16'sh1183) : $signed(_GEN_309);
  assign _GEN_311 = 9'h136 == _T_656 ? $signed(16'sh20) : $signed(_GEN_310);
  assign _GEN_312 = 9'h137 == _T_656 ? $signed(16'sh6d4) : $signed(_GEN_311);
  assign _GEN_313 = 9'h138 == _T_656 ? $signed(16'shc7c) : $signed(_GEN_312);
  assign _GEN_314 = 9'h139 == _T_656 ? $signed(-16'sh4e8) : $signed(_GEN_313);
  assign _GEN_315 = 9'h13a == _T_656 ? $signed(-16'shebd) : $signed(_GEN_314);
  assign _GEN_316 = 9'h13b == _T_656 ? $signed(16'sh7a8) : $signed(_GEN_315);
  assign _GEN_317 = 9'h13c == _T_656 ? $signed(16'sh2b4) : $signed(_GEN_316);
  assign _GEN_318 = 9'h13d == _T_656 ? $signed(16'shc65) : $signed(_GEN_317);
  assign _GEN_319 = 9'h13e == _T_656 ? $signed(16'sh517) : $signed(_GEN_318);
  assign _GEN_320 = 9'h13f == _T_656 ? $signed(-16'sha8) : $signed(_GEN_319);
  assign _GEN_1 = _GEN_639;
  assign _GEN_321 = 9'h1 == _T_662 ? $signed(16'sh4d) : $signed(16'sh5e3);
  assign _GEN_322 = 9'h2 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_321);
  assign _GEN_323 = 9'h3 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_322);
  assign _GEN_324 = 9'h4 == _T_662 ? $signed(16'sh0) : $signed(_GEN_323);
  assign _GEN_325 = 9'h5 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_324);
  assign _GEN_326 = 9'h6 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_325);
  assign _GEN_327 = 9'h7 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_326);
  assign _GEN_328 = 9'h8 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_327);
  assign _GEN_329 = 9'h9 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_328);
  assign _GEN_330 = 9'ha == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_329);
  assign _GEN_331 = 9'hb == _T_662 ? $signed(16'sh1246) : $signed(_GEN_330);
  assign _GEN_332 = 9'hc == _T_662 ? $signed(16'shbc7) : $signed(_GEN_331);
  assign _GEN_333 = 9'hd == _T_662 ? $signed(16'sh1246) : $signed(_GEN_332);
  assign _GEN_334 = 9'he == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_333);
  assign _GEN_335 = 9'hf == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_334);
  assign _GEN_336 = 9'h10 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_335);
  assign _GEN_337 = 9'h11 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_336);
  assign _GEN_338 = 9'h12 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_337);
  assign _GEN_339 = 9'h13 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_338);
  assign _GEN_340 = 9'h14 == _T_662 ? $signed(16'sh0) : $signed(_GEN_339);
  assign _GEN_341 = 9'h15 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_340);
  assign _GEN_342 = 9'h16 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_341);
  assign _GEN_343 = 9'h17 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_342);
  assign _GEN_344 = 9'h18 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_343);
  assign _GEN_345 = 9'h19 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_344);
  assign _GEN_346 = 9'h1a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_345);
  assign _GEN_347 = 9'h1b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_346);
  assign _GEN_348 = 9'h1c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_347);
  assign _GEN_349 = 9'h1d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_348);
  assign _GEN_350 = 9'h1e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_349);
  assign _GEN_351 = 9'h1f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_350);
  assign _GEN_352 = 9'h20 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_351);
  assign _GEN_353 = 9'h21 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_352);
  assign _GEN_354 = 9'h22 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_353);
  assign _GEN_355 = 9'h23 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_354);
  assign _GEN_356 = 9'h24 == _T_662 ? $signed(16'sh0) : $signed(_GEN_355);
  assign _GEN_357 = 9'h25 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_356);
  assign _GEN_358 = 9'h26 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_357);
  assign _GEN_359 = 9'h27 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_358);
  assign _GEN_360 = 9'h28 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_359);
  assign _GEN_361 = 9'h29 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_360);
  assign _GEN_362 = 9'h2a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_361);
  assign _GEN_363 = 9'h2b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_362);
  assign _GEN_364 = 9'h2c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_363);
  assign _GEN_365 = 9'h2d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_364);
  assign _GEN_366 = 9'h2e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_365);
  assign _GEN_367 = 9'h2f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_366);
  assign _GEN_368 = 9'h30 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_367);
  assign _GEN_369 = 9'h31 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_368);
  assign _GEN_370 = 9'h32 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_369);
  assign _GEN_371 = 9'h33 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_370);
  assign _GEN_372 = 9'h34 == _T_662 ? $signed(16'sh0) : $signed(_GEN_371);
  assign _GEN_373 = 9'h35 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_372);
  assign _GEN_374 = 9'h36 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_373);
  assign _GEN_375 = 9'h37 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_374);
  assign _GEN_376 = 9'h38 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_375);
  assign _GEN_377 = 9'h39 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_376);
  assign _GEN_378 = 9'h3a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_377);
  assign _GEN_379 = 9'h3b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_378);
  assign _GEN_380 = 9'h3c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_379);
  assign _GEN_381 = 9'h3d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_380);
  assign _GEN_382 = 9'h3e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_381);
  assign _GEN_383 = 9'h3f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_382);
  assign _GEN_384 = 9'h40 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_383);
  assign _GEN_385 = 9'h41 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_384);
  assign _GEN_386 = 9'h42 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_385);
  assign _GEN_387 = 9'h43 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_386);
  assign _GEN_388 = 9'h44 == _T_662 ? $signed(16'sh0) : $signed(_GEN_387);
  assign _GEN_389 = 9'h45 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_388);
  assign _GEN_390 = 9'h46 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_389);
  assign _GEN_391 = 9'h47 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_390);
  assign _GEN_392 = 9'h48 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_391);
  assign _GEN_393 = 9'h49 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_392);
  assign _GEN_394 = 9'h4a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_393);
  assign _GEN_395 = 9'h4b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_394);
  assign _GEN_396 = 9'h4c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_395);
  assign _GEN_397 = 9'h4d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_396);
  assign _GEN_398 = 9'h4e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_397);
  assign _GEN_399 = 9'h4f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_398);
  assign _GEN_400 = 9'h50 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_399);
  assign _GEN_401 = 9'h51 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_400);
  assign _GEN_402 = 9'h52 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_401);
  assign _GEN_403 = 9'h53 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_402);
  assign _GEN_404 = 9'h54 == _T_662 ? $signed(16'sh0) : $signed(_GEN_403);
  assign _GEN_405 = 9'h55 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_404);
  assign _GEN_406 = 9'h56 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_405);
  assign _GEN_407 = 9'h57 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_406);
  assign _GEN_408 = 9'h58 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_407);
  assign _GEN_409 = 9'h59 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_408);
  assign _GEN_410 = 9'h5a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_409);
  assign _GEN_411 = 9'h5b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_410);
  assign _GEN_412 = 9'h5c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_411);
  assign _GEN_413 = 9'h5d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_412);
  assign _GEN_414 = 9'h5e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_413);
  assign _GEN_415 = 9'h5f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_414);
  assign _GEN_416 = 9'h60 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_415);
  assign _GEN_417 = 9'h61 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_416);
  assign _GEN_418 = 9'h62 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_417);
  assign _GEN_419 = 9'h63 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_418);
  assign _GEN_420 = 9'h64 == _T_662 ? $signed(16'sh0) : $signed(_GEN_419);
  assign _GEN_421 = 9'h65 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_420);
  assign _GEN_422 = 9'h66 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_421);
  assign _GEN_423 = 9'h67 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_422);
  assign _GEN_424 = 9'h68 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_423);
  assign _GEN_425 = 9'h69 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_424);
  assign _GEN_426 = 9'h6a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_425);
  assign _GEN_427 = 9'h6b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_426);
  assign _GEN_428 = 9'h6c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_427);
  assign _GEN_429 = 9'h6d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_428);
  assign _GEN_430 = 9'h6e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_429);
  assign _GEN_431 = 9'h6f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_430);
  assign _GEN_432 = 9'h70 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_431);
  assign _GEN_433 = 9'h71 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_432);
  assign _GEN_434 = 9'h72 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_433);
  assign _GEN_435 = 9'h73 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_434);
  assign _GEN_436 = 9'h74 == _T_662 ? $signed(16'sh0) : $signed(_GEN_435);
  assign _GEN_437 = 9'h75 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_436);
  assign _GEN_438 = 9'h76 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_437);
  assign _GEN_439 = 9'h77 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_438);
  assign _GEN_440 = 9'h78 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_439);
  assign _GEN_441 = 9'h79 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_440);
  assign _GEN_442 = 9'h7a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_441);
  assign _GEN_443 = 9'h7b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_442);
  assign _GEN_444 = 9'h7c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_443);
  assign _GEN_445 = 9'h7d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_444);
  assign _GEN_446 = 9'h7e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_445);
  assign _GEN_447 = 9'h7f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_446);
  assign _GEN_448 = 9'h80 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_447);
  assign _GEN_449 = 9'h81 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_448);
  assign _GEN_450 = 9'h82 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_449);
  assign _GEN_451 = 9'h83 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_450);
  assign _GEN_452 = 9'h84 == _T_662 ? $signed(16'sh0) : $signed(_GEN_451);
  assign _GEN_453 = 9'h85 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_452);
  assign _GEN_454 = 9'h86 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_453);
  assign _GEN_455 = 9'h87 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_454);
  assign _GEN_456 = 9'h88 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_455);
  assign _GEN_457 = 9'h89 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_456);
  assign _GEN_458 = 9'h8a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_457);
  assign _GEN_459 = 9'h8b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_458);
  assign _GEN_460 = 9'h8c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_459);
  assign _GEN_461 = 9'h8d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_460);
  assign _GEN_462 = 9'h8e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_461);
  assign _GEN_463 = 9'h8f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_462);
  assign _GEN_464 = 9'h90 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_463);
  assign _GEN_465 = 9'h91 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_464);
  assign _GEN_466 = 9'h92 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_465);
  assign _GEN_467 = 9'h93 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_466);
  assign _GEN_468 = 9'h94 == _T_662 ? $signed(16'sh0) : $signed(_GEN_467);
  assign _GEN_469 = 9'h95 == _T_662 ? $signed(-16'sh19f) : $signed(_GEN_468);
  assign _GEN_470 = 9'h96 == _T_662 ? $signed(-16'sha0d) : $signed(_GEN_469);
  assign _GEN_471 = 9'h97 == _T_662 ? $signed(16'sh4d) : $signed(_GEN_470);
  assign _GEN_472 = 9'h98 == _T_662 ? $signed(16'sh5e3) : $signed(_GEN_471);
  assign _GEN_473 = 9'h99 == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_472);
  assign _GEN_474 = 9'h9a == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_473);
  assign _GEN_475 = 9'h9b == _T_662 ? $signed(16'sh1246) : $signed(_GEN_474);
  assign _GEN_476 = 9'h9c == _T_662 ? $signed(16'shbc7) : $signed(_GEN_475);
  assign _GEN_477 = 9'h9d == _T_662 ? $signed(16'sh1246) : $signed(_GEN_476);
  assign _GEN_478 = 9'h9e == _T_662 ? $signed(-16'sh1b9) : $signed(_GEN_477);
  assign _GEN_479 = 9'h9f == _T_662 ? $signed(-16'sh10f4) : $signed(_GEN_478);
  assign _GEN_480 = 9'ha0 == _T_662 ? $signed(16'sh0) : $signed(_GEN_479);
  assign _GEN_481 = 9'ha1 == _T_662 ? $signed(-16'shc7e) : $signed(_GEN_480);
  assign _GEN_482 = 9'ha2 == _T_662 ? $signed(-16'shd8d) : $signed(_GEN_481);
  assign _GEN_483 = 9'ha3 == _T_662 ? $signed(-16'shebd) : $signed(_GEN_482);
  assign _GEN_484 = 9'ha4 == _T_662 ? $signed(-16'sh6e2) : $signed(_GEN_483);
  assign _GEN_485 = 9'ha5 == _T_662 ? $signed(16'sh97a) : $signed(_GEN_484);
  assign _GEN_486 = 9'ha6 == _T_662 ? $signed(16'sh2a0) : $signed(_GEN_485);
  assign _GEN_487 = 9'ha7 == _T_662 ? $signed(16'sh21f) : $signed(_GEN_486);
  assign _GEN_488 = 9'ha8 == _T_662 ? $signed(16'sh1350) : $signed(_GEN_487);
  assign _GEN_489 = 9'ha9 == _T_662 ? $signed(16'sh2ca) : $signed(_GEN_488);
  assign _GEN_490 = 9'haa == _T_662 ? $signed(-16'sha68) : $signed(_GEN_489);
  assign _GEN_491 = 9'hab == _T_662 ? $signed(-16'sh1cf) : $signed(_GEN_490);
  assign _GEN_492 = 9'hac == _T_662 ? $signed(-16'shbd2) : $signed(_GEN_491);
  assign _GEN_493 = 9'had == _T_662 ? $signed(-16'sh859) : $signed(_GEN_492);
  assign _GEN_494 = 9'hae == _T_662 ? $signed(-16'sh508) : $signed(_GEN_493);
  assign _GEN_495 = 9'haf == _T_662 ? $signed(-16'shc97) : $signed(_GEN_494);
  assign _GEN_496 = 9'hb0 == _T_662 ? $signed(16'sh800) : $signed(_GEN_495);
  assign _GEN_497 = 9'hb1 == _T_662 ? $signed(16'sh86) : $signed(_GEN_496);
  assign _GEN_498 = 9'hb2 == _T_662 ? $signed(-16'sh1490) : $signed(_GEN_497);
  assign _GEN_499 = 9'hb3 == _T_662 ? $signed(16'sh1ea) : $signed(_GEN_498);
  assign _GEN_500 = 9'hb4 == _T_662 ? $signed(16'sh77e) : $signed(_GEN_499);
  assign _GEN_501 = 9'hb5 == _T_662 ? $signed(16'sh611) : $signed(_GEN_500);
  assign _GEN_502 = 9'hb6 == _T_662 ? $signed(16'sheb8) : $signed(_GEN_501);
  assign _GEN_503 = 9'hb7 == _T_662 ? $signed(-16'sh86) : $signed(_GEN_502);
  assign _GEN_504 = 9'hb8 == _T_662 ? $signed(16'sh350) : $signed(_GEN_503);
  assign _GEN_505 = 9'hb9 == _T_662 ? $signed(16'shd97) : $signed(_GEN_504);
  assign _GEN_506 = 9'hba == _T_662 ? $signed(16'sh710) : $signed(_GEN_505);
  assign _GEN_507 = 9'hbb == _T_662 ? $signed(16'shb3a) : $signed(_GEN_506);
  assign _GEN_508 = 9'hbc == _T_662 ? $signed(-16'sh392) : $signed(_GEN_507);
  assign _GEN_509 = 9'hbd == _T_662 ? $signed(-16'sha99) : $signed(_GEN_508);
  assign _GEN_510 = 9'hbe == _T_662 ? $signed(16'she3a) : $signed(_GEN_509);
  assign _GEN_511 = 9'hbf == _T_662 ? $signed(16'shf67) : $signed(_GEN_510);
  assign _GEN_512 = 9'hc0 == _T_662 ? $signed(16'sh0) : $signed(_GEN_511);
  assign _GEN_513 = 9'hc1 == _T_662 ? $signed(-16'shf67) : $signed(_GEN_512);
  assign _GEN_514 = 9'hc2 == _T_662 ? $signed(-16'she3a) : $signed(_GEN_513);
  assign _GEN_515 = 9'hc3 == _T_662 ? $signed(16'sha99) : $signed(_GEN_514);
  assign _GEN_516 = 9'hc4 == _T_662 ? $signed(16'sh392) : $signed(_GEN_515);
  assign _GEN_517 = 9'hc5 == _T_662 ? $signed(-16'shb3a) : $signed(_GEN_516);
  assign _GEN_518 = 9'hc6 == _T_662 ? $signed(-16'sh710) : $signed(_GEN_517);
  assign _GEN_519 = 9'hc7 == _T_662 ? $signed(-16'shd97) : $signed(_GEN_518);
  assign _GEN_520 = 9'hc8 == _T_662 ? $signed(-16'sh350) : $signed(_GEN_519);
  assign _GEN_521 = 9'hc9 == _T_662 ? $signed(16'sh86) : $signed(_GEN_520);
  assign _GEN_522 = 9'hca == _T_662 ? $signed(-16'sheb8) : $signed(_GEN_521);
  assign _GEN_523 = 9'hcb == _T_662 ? $signed(-16'sh611) : $signed(_GEN_522);
  assign _GEN_524 = 9'hcc == _T_662 ? $signed(-16'sh77e) : $signed(_GEN_523);
  assign _GEN_525 = 9'hcd == _T_662 ? $signed(-16'sh1ea) : $signed(_GEN_524);
  assign _GEN_526 = 9'hce == _T_662 ? $signed(16'sh1490) : $signed(_GEN_525);
  assign _GEN_527 = 9'hcf == _T_662 ? $signed(-16'sh86) : $signed(_GEN_526);
  assign _GEN_528 = 9'hd0 == _T_662 ? $signed(-16'sh800) : $signed(_GEN_527);
  assign _GEN_529 = 9'hd1 == _T_662 ? $signed(16'shc97) : $signed(_GEN_528);
  assign _GEN_530 = 9'hd2 == _T_662 ? $signed(16'sh508) : $signed(_GEN_529);
  assign _GEN_531 = 9'hd3 == _T_662 ? $signed(16'sh859) : $signed(_GEN_530);
  assign _GEN_532 = 9'hd4 == _T_662 ? $signed(16'shbd2) : $signed(_GEN_531);
  assign _GEN_533 = 9'hd5 == _T_662 ? $signed(16'sh1cf) : $signed(_GEN_532);
  assign _GEN_534 = 9'hd6 == _T_662 ? $signed(16'sha68) : $signed(_GEN_533);
  assign _GEN_535 = 9'hd7 == _T_662 ? $signed(-16'sh2ca) : $signed(_GEN_534);
  assign _GEN_536 = 9'hd8 == _T_662 ? $signed(-16'sh1350) : $signed(_GEN_535);
  assign _GEN_537 = 9'hd9 == _T_662 ? $signed(-16'sh21f) : $signed(_GEN_536);
  assign _GEN_538 = 9'hda == _T_662 ? $signed(-16'sh2a0) : $signed(_GEN_537);
  assign _GEN_539 = 9'hdb == _T_662 ? $signed(-16'sh97a) : $signed(_GEN_538);
  assign _GEN_540 = 9'hdc == _T_662 ? $signed(16'sh6e2) : $signed(_GEN_539);
  assign _GEN_541 = 9'hdd == _T_662 ? $signed(16'shebd) : $signed(_GEN_540);
  assign _GEN_542 = 9'hde == _T_662 ? $signed(16'shd8d) : $signed(_GEN_541);
  assign _GEN_543 = 9'hdf == _T_662 ? $signed(16'shc7e) : $signed(_GEN_542);
  assign _GEN_544 = 9'he0 == _T_662 ? $signed(16'sh0) : $signed(_GEN_543);
  assign _GEN_545 = 9'he1 == _T_662 ? $signed(-16'shc7e) : $signed(_GEN_544);
  assign _GEN_546 = 9'he2 == _T_662 ? $signed(-16'shd8d) : $signed(_GEN_545);
  assign _GEN_547 = 9'he3 == _T_662 ? $signed(-16'shebd) : $signed(_GEN_546);
  assign _GEN_548 = 9'he4 == _T_662 ? $signed(-16'sh6e2) : $signed(_GEN_547);
  assign _GEN_549 = 9'he5 == _T_662 ? $signed(16'sh97a) : $signed(_GEN_548);
  assign _GEN_550 = 9'he6 == _T_662 ? $signed(16'sh2a0) : $signed(_GEN_549);
  assign _GEN_551 = 9'he7 == _T_662 ? $signed(16'sh21f) : $signed(_GEN_550);
  assign _GEN_552 = 9'he8 == _T_662 ? $signed(16'sh1350) : $signed(_GEN_551);
  assign _GEN_553 = 9'he9 == _T_662 ? $signed(16'sh2ca) : $signed(_GEN_552);
  assign _GEN_554 = 9'hea == _T_662 ? $signed(-16'sha68) : $signed(_GEN_553);
  assign _GEN_555 = 9'heb == _T_662 ? $signed(-16'sh1cf) : $signed(_GEN_554);
  assign _GEN_556 = 9'hec == _T_662 ? $signed(-16'shbd2) : $signed(_GEN_555);
  assign _GEN_557 = 9'hed == _T_662 ? $signed(-16'sh859) : $signed(_GEN_556);
  assign _GEN_558 = 9'hee == _T_662 ? $signed(-16'sh508) : $signed(_GEN_557);
  assign _GEN_559 = 9'hef == _T_662 ? $signed(-16'shc97) : $signed(_GEN_558);
  assign _GEN_560 = 9'hf0 == _T_662 ? $signed(16'sh800) : $signed(_GEN_559);
  assign _GEN_561 = 9'hf1 == _T_662 ? $signed(16'sh86) : $signed(_GEN_560);
  assign _GEN_562 = 9'hf2 == _T_662 ? $signed(-16'sh1490) : $signed(_GEN_561);
  assign _GEN_563 = 9'hf3 == _T_662 ? $signed(16'sh1ea) : $signed(_GEN_562);
  assign _GEN_564 = 9'hf4 == _T_662 ? $signed(16'sh77e) : $signed(_GEN_563);
  assign _GEN_565 = 9'hf5 == _T_662 ? $signed(16'sh611) : $signed(_GEN_564);
  assign _GEN_566 = 9'hf6 == _T_662 ? $signed(16'sheb8) : $signed(_GEN_565);
  assign _GEN_567 = 9'hf7 == _T_662 ? $signed(-16'sh86) : $signed(_GEN_566);
  assign _GEN_568 = 9'hf8 == _T_662 ? $signed(16'sh350) : $signed(_GEN_567);
  assign _GEN_569 = 9'hf9 == _T_662 ? $signed(16'shd97) : $signed(_GEN_568);
  assign _GEN_570 = 9'hfa == _T_662 ? $signed(16'sh710) : $signed(_GEN_569);
  assign _GEN_571 = 9'hfb == _T_662 ? $signed(16'shb3a) : $signed(_GEN_570);
  assign _GEN_572 = 9'hfc == _T_662 ? $signed(-16'sh392) : $signed(_GEN_571);
  assign _GEN_573 = 9'hfd == _T_662 ? $signed(-16'sha99) : $signed(_GEN_572);
  assign _GEN_574 = 9'hfe == _T_662 ? $signed(16'she3a) : $signed(_GEN_573);
  assign _GEN_575 = 9'hff == _T_662 ? $signed(16'shf67) : $signed(_GEN_574);
  assign _GEN_576 = 9'h100 == _T_662 ? $signed(16'sh0) : $signed(_GEN_575);
  assign _GEN_577 = 9'h101 == _T_662 ? $signed(-16'shf67) : $signed(_GEN_576);
  assign _GEN_578 = 9'h102 == _T_662 ? $signed(-16'she3a) : $signed(_GEN_577);
  assign _GEN_579 = 9'h103 == _T_662 ? $signed(16'sha99) : $signed(_GEN_578);
  assign _GEN_580 = 9'h104 == _T_662 ? $signed(16'sh392) : $signed(_GEN_579);
  assign _GEN_581 = 9'h105 == _T_662 ? $signed(-16'shb3a) : $signed(_GEN_580);
  assign _GEN_582 = 9'h106 == _T_662 ? $signed(-16'sh710) : $signed(_GEN_581);
  assign _GEN_583 = 9'h107 == _T_662 ? $signed(-16'shd97) : $signed(_GEN_582);
  assign _GEN_584 = 9'h108 == _T_662 ? $signed(-16'sh350) : $signed(_GEN_583);
  assign _GEN_585 = 9'h109 == _T_662 ? $signed(16'sh86) : $signed(_GEN_584);
  assign _GEN_586 = 9'h10a == _T_662 ? $signed(-16'sheb8) : $signed(_GEN_585);
  assign _GEN_587 = 9'h10b == _T_662 ? $signed(-16'sh611) : $signed(_GEN_586);
  assign _GEN_588 = 9'h10c == _T_662 ? $signed(-16'sh77e) : $signed(_GEN_587);
  assign _GEN_589 = 9'h10d == _T_662 ? $signed(-16'sh1ea) : $signed(_GEN_588);
  assign _GEN_590 = 9'h10e == _T_662 ? $signed(16'sh1490) : $signed(_GEN_589);
  assign _GEN_591 = 9'h10f == _T_662 ? $signed(-16'sh86) : $signed(_GEN_590);
  assign _GEN_592 = 9'h110 == _T_662 ? $signed(-16'sh800) : $signed(_GEN_591);
  assign _GEN_593 = 9'h111 == _T_662 ? $signed(16'shc97) : $signed(_GEN_592);
  assign _GEN_594 = 9'h112 == _T_662 ? $signed(16'sh508) : $signed(_GEN_593);
  assign _GEN_595 = 9'h113 == _T_662 ? $signed(16'sh859) : $signed(_GEN_594);
  assign _GEN_596 = 9'h114 == _T_662 ? $signed(16'shbd2) : $signed(_GEN_595);
  assign _GEN_597 = 9'h115 == _T_662 ? $signed(16'sh1cf) : $signed(_GEN_596);
  assign _GEN_598 = 9'h116 == _T_662 ? $signed(16'sha68) : $signed(_GEN_597);
  assign _GEN_599 = 9'h117 == _T_662 ? $signed(-16'sh2ca) : $signed(_GEN_598);
  assign _GEN_600 = 9'h118 == _T_662 ? $signed(-16'sh1350) : $signed(_GEN_599);
  assign _GEN_601 = 9'h119 == _T_662 ? $signed(-16'sh21f) : $signed(_GEN_600);
  assign _GEN_602 = 9'h11a == _T_662 ? $signed(-16'sh2a0) : $signed(_GEN_601);
  assign _GEN_603 = 9'h11b == _T_662 ? $signed(-16'sh97a) : $signed(_GEN_602);
  assign _GEN_604 = 9'h11c == _T_662 ? $signed(16'sh6e2) : $signed(_GEN_603);
  assign _GEN_605 = 9'h11d == _T_662 ? $signed(16'shebd) : $signed(_GEN_604);
  assign _GEN_606 = 9'h11e == _T_662 ? $signed(16'shd8d) : $signed(_GEN_605);
  assign _GEN_607 = 9'h11f == _T_662 ? $signed(16'shc7e) : $signed(_GEN_606);
  assign _GEN_608 = 9'h120 == _T_662 ? $signed(16'sh0) : $signed(_GEN_607);
  assign _GEN_609 = 9'h121 == _T_662 ? $signed(-16'shc7e) : $signed(_GEN_608);
  assign _GEN_610 = 9'h122 == _T_662 ? $signed(-16'shd8d) : $signed(_GEN_609);
  assign _GEN_611 = 9'h123 == _T_662 ? $signed(-16'shebd) : $signed(_GEN_610);
  assign _GEN_612 = 9'h124 == _T_662 ? $signed(-16'sh6e2) : $signed(_GEN_611);
  assign _GEN_613 = 9'h125 == _T_662 ? $signed(16'sh97a) : $signed(_GEN_612);
  assign _GEN_614 = 9'h126 == _T_662 ? $signed(16'sh2a0) : $signed(_GEN_613);
  assign _GEN_615 = 9'h127 == _T_662 ? $signed(16'sh21f) : $signed(_GEN_614);
  assign _GEN_616 = 9'h128 == _T_662 ? $signed(16'sh1350) : $signed(_GEN_615);
  assign _GEN_617 = 9'h129 == _T_662 ? $signed(16'sh2ca) : $signed(_GEN_616);
  assign _GEN_618 = 9'h12a == _T_662 ? $signed(-16'sha68) : $signed(_GEN_617);
  assign _GEN_619 = 9'h12b == _T_662 ? $signed(-16'sh1cf) : $signed(_GEN_618);
  assign _GEN_620 = 9'h12c == _T_662 ? $signed(-16'shbd2) : $signed(_GEN_619);
  assign _GEN_621 = 9'h12d == _T_662 ? $signed(-16'sh859) : $signed(_GEN_620);
  assign _GEN_622 = 9'h12e == _T_662 ? $signed(-16'sh508) : $signed(_GEN_621);
  assign _GEN_623 = 9'h12f == _T_662 ? $signed(-16'shc97) : $signed(_GEN_622);
  assign _GEN_624 = 9'h130 == _T_662 ? $signed(16'sh800) : $signed(_GEN_623);
  assign _GEN_625 = 9'h131 == _T_662 ? $signed(16'sh86) : $signed(_GEN_624);
  assign _GEN_626 = 9'h132 == _T_662 ? $signed(-16'sh1490) : $signed(_GEN_625);
  assign _GEN_627 = 9'h133 == _T_662 ? $signed(16'sh1ea) : $signed(_GEN_626);
  assign _GEN_628 = 9'h134 == _T_662 ? $signed(16'sh77e) : $signed(_GEN_627);
  assign _GEN_629 = 9'h135 == _T_662 ? $signed(16'sh611) : $signed(_GEN_628);
  assign _GEN_630 = 9'h136 == _T_662 ? $signed(16'sheb8) : $signed(_GEN_629);
  assign _GEN_631 = 9'h137 == _T_662 ? $signed(-16'sh86) : $signed(_GEN_630);
  assign _GEN_632 = 9'h138 == _T_662 ? $signed(16'sh350) : $signed(_GEN_631);
  assign _GEN_633 = 9'h139 == _T_662 ? $signed(16'shd97) : $signed(_GEN_632);
  assign _GEN_634 = 9'h13a == _T_662 ? $signed(16'sh710) : $signed(_GEN_633);
  assign _GEN_635 = 9'h13b == _T_662 ? $signed(16'shb3a) : $signed(_GEN_634);
  assign _GEN_636 = 9'h13c == _T_662 ? $signed(-16'sh392) : $signed(_GEN_635);
  assign _GEN_637 = 9'h13d == _T_662 ? $signed(-16'sha99) : $signed(_GEN_636);
  assign _GEN_638 = 9'h13e == _T_662 ? $signed(16'she3a) : $signed(_GEN_637);
  assign _GEN_639 = 9'h13f == _T_662 ? $signed(16'shf67) : $signed(_GEN_638);
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_656 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_662 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_656 <= io_addr;
    _T_662 <= io_addr;
  end
endmodule
module preambleBUF(
  input         clock,
  input         reset,
  input         io_en,
  output [15:0] io_dout_i,
  output [15:0] io_dout_q
);
  reg [11:0] value;
  reg [31:0] _RAND_0;
  wire  _T_8;
  wire [12:0] _T_10;
  wire [11:0] _T_11;
  wire [11:0] _GEN_0;
  wire [11:0] _GEN_1;
  wire  rom_clock;
  wire [8:0] rom_io_addr;
  wire [15:0] rom_io_dout_i;
  wire [15:0] rom_io_dout_q;
  wire [9:0] _T_13;
  wire  _T_15;
  wire [15:0] _T_17;
  wire [15:0] _T_21;
  preambleROM rom (
    .clock(rom_clock),
    .io_addr(rom_io_addr),
    .io_dout_i(rom_io_dout_i),
    .io_dout_q(rom_io_dout_q)
  );
  assign io_dout_i = _T_17;
  assign io_dout_q = _T_21;
  assign _T_8 = value == 12'hc7f;
  assign _T_10 = value + 12'h1;
  assign _T_11 = _T_10[11:0];
  assign _GEN_0 = _T_8 ? 12'h0 : _T_11;
  assign _GEN_1 = io_en ? _GEN_0 : value;
  assign rom_clock = clock;
  assign rom_io_addr = _T_13[8:0];
  assign _T_13 = value[9:0];
  assign _T_15 = value < 12'h140;
  assign _T_17 = _T_15 ? $signed(rom_io_dout_i) : $signed(16'sh0);
  assign _T_21 = _T_15 ? $signed(rom_io_dout_q) : $signed(16'sh0);
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  value = _RAND_0[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 12'h0;
    end else begin
      if (io_en) begin
        if (_T_8) begin
          value <= 12'h0;
        end else begin
          value <= _T_11;
        end
      end
    end
  end
endmodule
