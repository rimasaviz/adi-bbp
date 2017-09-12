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

set axi_xcomm2ip [create_bd_cell -type ip -vlnv analog.com:user:axi_xcomm2ip:1.0 axi_xcomm2ip]
set_property -dict [list CONFIG.XCOMM2IP_1T1R_OR_2T2R_N {0}] $axi_xcomm2ip

ad_cpu_interconnect 0x79040000 axi_xcomm2ip

ad_connect  axi_ad9361/clk axi_xcomm2ip/clk
ad_connect  axi_ad9361/rst axi_xcomm2ip/rst
ad_connect  axi_ad9361/adc_valid_i0 axi_xcomm2ip/adc_valid_i0
ad_connect  axi_ad9361/adc_data_i0 axi_xcomm2ip/adc_data_i0
ad_connect  axi_ad9361/adc_valid_q0 axi_xcomm2ip/adc_valid_q0
ad_connect  axi_ad9361/adc_data_q0 axi_xcomm2ip/adc_data_q0
ad_connect  axi_ad9361/adc_valid_i1 axi_xcomm2ip/adc_valid_i1
ad_connect  axi_ad9361/adc_data_i1 axi_xcomm2ip/adc_data_i1
ad_connect  axi_ad9361/adc_valid_q1 axi_xcomm2ip/adc_valid_q1
ad_connect  axi_ad9361/adc_data_q1 axi_xcomm2ip/adc_data_q1
ad_connect  axi_xcomm2ip/dac_valid_i0 axi_ad9361/dac_valid_i0
ad_connect  axi_xcomm2ip/dac_data_i0 axi_ad9361/dac_data_i0
ad_connect  axi_xcomm2ip/dac_valid_q0 axi_ad9361/dac_valid_q0
ad_connect  axi_xcomm2ip/dac_data_q0 axi_ad9361/dac_data_q0
ad_connect  axi_xcomm2ip/dac_valid_i1 axi_ad9361/dac_valid_i1
ad_connect  axi_xcomm2ip/dac_data_i1 axi_ad9361/dac_data_i1
ad_connect  axi_xcomm2ip/dac_valid_q1 axi_ad9361/dac_valid_q1
ad_connect  axi_xcomm2ip/dac_data_q1 axi_ad9361/dac_data_q1
ad_connect  axi_xcomm2ip/dac_dovf axi_ad9361/dac_dovf
ad_connect  axi_xcomm2ip/dac_dunf axi_ad9361/dac_dunf

ad_connect  util_ad9361_dac_upack/dac_data_0 axi_xcomm2ip/dma_data_i0
ad_connect  util_ad9361_dac_upack/dac_data_1 axi_xcomm2ip/dma_data_q0
ad_connect  util_ad9361_dac_upack/dac_data_2 axi_xcomm2ip/dma_data_i1
ad_connect  util_ad9361_dac_upack/dac_data_3 axi_xcomm2ip/dma_data_q1
ad_connect  axi_ad9361_dac_dma/fifo_rd_underflow axi_xcomm2ip/dma_dunf
ad_connect  axi_xcomm2ip/dma_dovf GND

delete_bd_objs [get_bd_cells ila_adc]
delete_bd_objs [get_bd_nets axi_ad9361_tdd_dbg] [get_bd_cells ila_tdd]

regenerate_bd_layout
save_bd_design
validate_bd_design

generate_target {synthesis implementation} [get_files zc706.srcs/sources_1/bd/system/system.bd]
make_wrapper -files [get_files zc706.srcs/sources_1/bd/system/system.bd] -top
import_files -force -norecurse -fileset sources_1 zc706.srcs/sources_1/bd/system/hdl/system_wrapper.v

adi_project_files zc706 [list \
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_top.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_constr.xdc"\
  "$ad_hdl_dir/projects/common/zc706/zc706_system_constr.xdc" ]

adi_project_run zc706


