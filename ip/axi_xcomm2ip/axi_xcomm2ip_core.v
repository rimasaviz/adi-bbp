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

module axi_xcomm2ip_core (

  // ad9361 sampling clock

  s_clk,

  // ad9361 dac interface

  s_dac_rst,
  s_dac_req,
  s_dac_ack_t,
  s_dac_waddr,
  s_dac_wdata_i,
  s_dac_wdata_q,
  s_dac_raddr,
  s_dac_rdata,

  // ad9361 adc interface

  s_adc_rst,
  s_adc_req,
  s_adc_ack_t,
  s_adc_raddr,
  s_adc_rdata_i,
  s_adc_rdata_q,
  s_adc_wr,
  s_adc_waddr,
  s_adc_wdata);

  // ad9361 sampling clock

  input           s_clk;

  // ad9361 dac interface

  input           s_dac_rst;
  input           s_dac_req;
  output          s_dac_ack_t;
  output  [ 3:0]  s_dac_waddr;
  output  [15:0]  s_dac_wdata_i;
  output  [15:0]  s_dac_wdata_q;
  output  [ 4:0]  s_dac_raddr;
  input   [ 7:0]  s_dac_rdata;

  // ad9361 adc interface

  input           s_adc_rst;
  input           s_adc_req;
  output          s_adc_ack_t;
  output  [ 3:0]  s_adc_raddr;
  input   [15:0]  s_adc_rdata_i;
  input   [15:0]  s_adc_rdata_q;
  output          s_adc_wr;
  output  [ 4:0]  s_adc_waddr;
  output  [ 7:0]  s_adc_wdata;

  // working on crypting things out. :)

endmodule

// ***************************************************************************
// ***************************************************************************
