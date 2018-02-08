# project

set ad_hdl_dir $::env(ADI_HDL_DIR)
set ad_phdl_dir $::env(ADI_HDL_DIR)

source $ad_hdl_dir/projects/scripts/adi_board.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl

set sys_zynq 1

create_project zc706 . -part xc7z045ffg900-2 -force

set_property board_part xilinx.com:zc706:part0:1.2 [current_project]
set_property ip_repo_paths [list $ad_hdl_dir/library ../ip]  [current_fileset]

update_ip_catalog

create_bd_design "system"
source $ad_hdl_dir/projects/common/zc706/zc706_system_bd.tcl
source $ad_hdl_dir/projects/fmcomms2/common/fmcomms2_bd.tcl

delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_valid_i0]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_data_i0]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_valid_q0]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_data_q0]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_valid_i1]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_data_i1]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_valid_q1]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_data_q1]]]
delete_bd_objs [get_bd_nets -of_objects [find_bd_objs -relation connected_to [get_bd_pins axi_ad9361/dac_dunf]]]

set axi_ofdmbbp_tx [create_bd_cell -type ip -vlnv analog.com:user:axi_ofdmbbp_tx:1.0 axi_ofdmbbp_tx]
set_property -dict [list CONFIG.XCOMM2IP_1T1R_OR_2T2R_N {1}] $axi_ofdmbbp_tx

ad_cpu_interconnect 0x79040000 axi_ofdmbbp_tx

ad_connect  axi_ad9361/clk axi_ofdmbbp_tx/clk
ad_connect  axi_ad9361/rst axi_ofdmbbp_tx/rst
#ad_connect  axi_ad9361/adc_valid_i0 axi_ofdmbbp_tx/adc_valid_i0
#ad_connect  axi_ad9361/adc_data_i0 axi_ofdmbbp_tx/adc_data_i0
#ad_connect  axi_ad9361/adc_valid_q0 axi_ofdmbbp_tx/adc_valid_q0
#ad_connect  axi_ad9361/adc_data_q0 axi_ofdmbbp_tx/adc_data_q0
#ad_connect  axi_ad9361/adc_valid_i1 axi_ofdmbbp_tx/adc_valid_i1
#ad_connect  axi_ad9361/adc_data_i1 axi_ofdmbbp_tx/adc_data_i1
#ad_connect  axi_ad9361/adc_valid_q1 axi_ofdmbbp_tx/adc_valid_q1
#ad_connect  axi_ad9361/adc_data_q1 axi_ofdmbbp_tx/adc_data_q1
ad_connect  axi_ofdmbbp_tx/dac_valid_i0 axi_ad9361/dac_valid_i0
ad_connect  axi_ofdmbbp_tx/dac_data_i0 axi_ad9361/dac_data_i0
ad_connect  axi_ofdmbbp_tx/dac_valid_q0 axi_ad9361/dac_valid_q0
ad_connect  axi_ofdmbbp_tx/dac_data_q0 axi_ad9361/dac_data_q0
#ad_connect  axi_ofdmbbp_tx/dac_valid_i1 axi_ad9361/dac_valid_i1
#ad_connect  axi_ofdmbbp_tx/dac_data_i1 axi_ad9361/dac_data_i1
#ad_connect  axi_ofdmbbp_tx/dac_valid_q1 axi_ad9361/dac_valid_q1
#ad_connect  axi_ofdmbbp_tx/dac_data_q1 axi_ad9361/dac_data_q1
ad_connect  axi_ofdmbbp_tx/dac_dovf axi_ad9361/dac_dovf
ad_connect  axi_ofdmbbp_tx/dac_dunf axi_ad9361/dac_dunf

#ad_connect  util_ad9361_dac_upack/dac_data_0 axi_ofdmbbp_tx/dma_data_i0
#ad_connect  util_ad9361_dac_upack/dac_data_1 axi_ofdmbbp_tx/dma_data_q0
#ad_connect  util_ad9361_dac_upack/dac_data_2 axi_ofdmbbp_tx/dma_data_i1
#ad_connect  util_ad9361_dac_upack/dac_data_3 axi_ofdmbbp_tx/dma_data_q1
#ad_connect  axi_ad9361_dac_dma/fifo_rd_underflow axi_ofdmbbp_tx/dma_dunf
#ad_connect  axi_ofdmbbp_tx/dma_dovf GND

delete_bd_objs [get_bd_cells ila_adc]
delete_bd_objs [get_bd_nets axi_ad9361_tdd_dbg] [get_bd_cells ila_tdd]

#set ila_xc2 [create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_xc2]
#
#set_property -dict [list CONFIG.C_MONITOR_TYPE {Native}] $ila_xc2
#set_property -dict [list CONFIG.C_NUM_OF_PROBES {4}] $ila_xc2
#set_property -dict [list CONFIG.C_PROBE0_WIDTH {1}] $ila_xc2
#set_property -dict [list CONFIG.C_PROBE1_WIDTH {16}] $ila_xc2
#set_property -dict [list CONFIG.C_PROBE2_WIDTH {1}] $ila_xc2
#set_property -dict [list CONFIG.C_PROBE3_WIDTH {16}] $ila_xc2
##set_property -dict [list CONFIG.C_PROBE4_WIDTH {128}] $ila_xc2
##set_property -dict [list CONFIG.C_PROBE5_WIDTH {8}] $ila_xc2
##set_property -dict [list CONFIG.C_PROBE6_WIDTH {128}] $ila_xc2
##set_property -dict [list CONFIG.C_PROBE7_WIDTH {8}] $ila_xc2
##set_property -dict [list CONFIG.C_PROBE8_WIDTH {1}] $ila_xc2
#set_property -dict [list CONFIG.C_EN_STRG_QUAL {1}] $ila_xc2
#
#ad_connect ila_xc2/CLK axi_ad9361/clk
#ad_connect ila_xc2/PROBE0 axi_ofdmbbp_tx/dac_valid_i0
#ad_connect ila_xc2/PROBE1 axi_ofdmbbp_tx/dac_data_i0
#ad_connect ila_xc2/PROBE2 axi_ofdmbbp_tx/dac_valid_q0
#ad_connect ila_xc2/PROBE3 axi_ofdmbbp_tx/dac_data_q0

#########

#set ila_ad9671 [create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_ad9671]
#set_property -dict [list CONFIG.C_MONITOR_TYPE {Native}] $ila_ad9671
#set_property -dict [list CONFIG.C_NUM_OF_PROBES {9}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE0_WIDTH {128}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE1_WIDTH {8}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE2_WIDTH {128}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE3_WIDTH {8}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE4_WIDTH {128}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE5_WIDTH {8}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE6_WIDTH {128}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE7_WIDTH {8}] $ila_ad9671
#set_property -dict [list CONFIG.C_PROBE8_WIDTH {1}] $ila_ad9671
#set_property -dict [list CONFIG.C_EN_STRG_QUAL {1}] $ila_ad9671
#
#ad_connect axi_ad9671_core_0/adc_clk  ila_ad9671/CLK
#ad_connect axi_ad9671_core_0/adc_data   ila_ad9671/PROBE0
#ad_connect axi_ad9671_core_0/adc_valid  ila_ad9671/PROBE1
#ad_connect axi_ad9671_core_1/adc_data   ila_ad9671/PROBE2
#ad_connect axi_ad9671_core_1/adc_valid  ila_ad9671/PROBE3
#ad_connect axi_ad9671_core_2/adc_data   ila_ad9671/PROBE4
#ad_connect axi_ad9671_core_2/adc_valid  ila_ad9671/PROBE5
#ad_connect axi_ad9671_core_3/adc_data   ila_ad9671/PROBE6
#ad_connect axi_ad9671_core_3/adc_valid  ila_ad9671/PROBE7
#ad_connect usdrx1_fifo/adc_wovf         ila_ad9671/PROBE8

#########
regenerate_bd_layout
save_bd_design
validate_bd_design

generate_target {synthesis implementation} [get_files zc706.srcs/sources_1/bd/system/system.bd]
make_wrapper -files [get_files zc706.srcs/sources_1/bd/system/system.bd] -top
import_files -force -norecurse -fileset sources_1 zc706.srcs/sources_1/bd/system/hdl/system_wrapper.v

adi_project_files zc706 [list \
  "$ad_hdl_dir/library/xilinx/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_top.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_constr.xdc"\
  "$ad_hdl_dir/projects/common/zc706/zc706_system_constr.xdc" ]

#adi_project_run zc706


