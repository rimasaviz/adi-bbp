# project

set ad_hdl_dir $::env(ADI_HDL_DIR)
set ad_phdl_dir $::env(ADI_HDL_DIR)

source $ad_hdl_dir/projects/scripts/adi_board.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl

set sys_zynq 1

create_project zc706.txrx_sync . -part xc7z045ffg900-2 -force

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
set_property -dict [list CONFIG.XCOMM2IP_1T1R_OR_2T2R_N {0}] $axi_ofdmbbp_tx
ad_cpu_interconnect 0x79040000 axi_ofdmbbp_tx

set axi_ofdmbbp_rx_sync [create_bd_cell -type ip -vlnv analog.com:user:axi_ofdmbbp_rx_sync:1.0 axi_ofdmbbp_rx_sync]
set_property -dict [list CONFIG.XCOMM2IP_1T1R_OR_2T2R_N {0}] $axi_ofdmbbp_rx_sync
ad_cpu_interconnect 0x79080000 axi_ofdmbbp_rx_sync

ad_connect  axi_ad9361/clk axi_ofdmbbp_tx/clk
ad_connect  axi_ad9361/rst axi_ofdmbbp_tx/rst

ad_connect  axi_ad9361/clk axi_ofdmbbp_rx_sync/clk
ad_connect  axi_ad9361/rst axi_ofdmbbp_rx_sync/rst

ad_connect  axi_ad9361/adc_valid_i0 axi_ofdmbbp_rx_sync/adc_valid_i0
ad_connect  axi_ad9361/adc_data_i0 axi_ofdmbbp_rx_sync/adc_data_i0
ad_connect  axi_ad9361/adc_valid_q0 axi_ofdmbbp_rx_sync/adc_valid_q0
ad_connect  axi_ad9361/adc_data_q0 axi_ofdmbbp_rx_sync/adc_data_q0
ad_connect  axi_ad9361/adc_valid_i1 axi_ofdmbbp_rx_sync/adc_valid_i1
ad_connect  axi_ad9361/adc_data_i1 axi_ofdmbbp_rx_sync/adc_data_i1
ad_connect  axi_ad9361/adc_valid_q1 axi_ofdmbbp_rx_sync/adc_valid_q1
ad_connect  axi_ad9361/adc_data_q1 axi_ofdmbbp_rx_sync/adc_data_q1

ad_connect  axi_ofdmbbp_tx/dac_valid_i0 axi_ad9361/dac_valid_i0
ad_connect  axi_ofdmbbp_tx/dac_data_i0 axi_ad9361/dac_data_i0
ad_connect  axi_ofdmbbp_tx/dac_valid_q0 axi_ad9361/dac_valid_q0
ad_connect  axi_ofdmbbp_tx/dac_data_q0 axi_ad9361/dac_data_q0
ad_connect  axi_ofdmbbp_tx/dac_valid_i1 axi_ad9361/dac_valid_i1
ad_connect  axi_ofdmbbp_tx/dac_data_i1 axi_ad9361/dac_data_i1
ad_connect  axi_ofdmbbp_tx/dac_valid_q1 axi_ad9361/dac_valid_q1
ad_connect  axi_ofdmbbp_tx/dac_data_q1 axi_ad9361/dac_data_q1
ad_connect  axi_ofdmbbp_tx/dac_dovf axi_ad9361/dac_dovf
ad_connect  axi_ofdmbbp_tx/dac_dunf axi_ad9361/dac_dunf

ad_connect  util_ad9361_dac_upack/dac_data_0 axi_ofdmbbp_tx/dma_data_i0
ad_connect  util_ad9361_dac_upack/dac_data_1 axi_ofdmbbp_tx/dma_data_q0
ad_connect  util_ad9361_dac_upack/dac_data_2 axi_ofdmbbp_tx/dma_data_i1
ad_connect  util_ad9361_dac_upack/dac_data_3 axi_ofdmbbp_tx/dma_data_q1
ad_connect  axi_ad9361_dac_dma/fifo_rd_underflow axi_ofdmbbp_tx/dma_dunf
ad_connect  axi_ofdmbbp_tx/dma_dovf GND

delete_bd_objs [get_bd_cells ila_adc]
delete_bd_objs [get_bd_nets axi_ad9361_tdd_dbg] [get_bd_cells ila_tdd]

#########
regenerate_bd_layout
save_bd_design
validate_bd_design

generate_target {synthesis implementation} [get_files zc706.txrx_sync.srcs/sources_1/bd/system/system.bd]
make_wrapper -files [get_files zc706.txrx_sync.srcs/sources_1/bd/system/system.bd] -top
import_files -force -norecurse -fileset sources_1 zc706.txrx_sync.srcs/sources_1/bd/system/hdl/system_wrapper.v

adi_project_files zc706.txrx_sync [list \
  "$ad_hdl_dir/library/xilinx/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_top.v" \
  "$ad_hdl_dir/projects/fmcomms2/zc706/system_constr.xdc"\
  "$ad_hdl_dir/projects/common/zc706/zc706_system_constr.xdc" ]

#start_gui

#adi_project_run zc706

#launch_runs impl_1 -to_step write_bitstream -jobs 8
#wait_on_run impl_1


## the following snipped builds the design and
# instantiates and connects ILAs that connect to any nets
# that have the "mark_debug" property set

launch_runs synth_1 -jobs 12 
wait_on_run synth_1
open_run synth_1 -name synth_1
source ../scripts/new_batch_insert_ila.tcl
batch_insert_ila 1024
close_design
set_property constrset debug_constraints.xdc [get_runs synth_1]
set_property constrset debug_constraints.xdc [get_runs impl_1]

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1

#start_gui

# standard build

#launch_runs impl_1 -to_step write_bitstream -jobs 12
#wait_on_run impl_1
#start_gui
