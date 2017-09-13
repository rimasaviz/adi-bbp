# ip

set ad_hdl_dir $::env(ADI_HDL_DIR)
set ad_phdl_dir $::env(ADI_HDL_DIR)

source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create axi_xcomm2ip
adi_ip_files axi_xcomm2ip [list \
  "$ad_hdl_dir/library/common/ad_rst.v" \
  "$ad_hdl_dir/library/common/ad_mem.v" \
  "$ad_hdl_dir/library/common/up_axi.v" \
  "axi_xcomm2ip.v" ]

adi_ip_properties axi_xcomm2ip
adi_ip_constraints axi_xcomm2ip [list \
  "axi_xcomm2ip_constr.xdc" ]

ipx::remove_bus_interface rst [ipx::current_core]
ipx::remove_bus_interface clk [ipx::current_core]

ipx::add_bus_parameter ASSOCIATED_BUSIF [ipx::get_bus_interfaces s_axi_aclk \
  -of_objects [ipx::current_core]]

set_property value s_axi [ipx::get_bus_parameters ASSOCIATED_BUSIF \
  -of_objects [ipx::get_bus_interfaces s_axi_aclk \
  -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]

