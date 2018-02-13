
set_property shreg_extract no [get_cells -hier -filter {name =~ *ad_rst_sync*}]
#
set_false_path -from [get_cells -hier -filter {name =~ *s_adc_sync_reg  && IS_SEQUENTIAL}]        -to [get_cells -hier -filter {name =~ *adc_sync_m1_reg  && IS_SEQUENTIAL}]
#set_false_path -from [get_cells -hier -filter {name =~ *up_adc_req_reg  && IS_SEQUENTIAL}]        -to [get_cells -hier -filter {name =~ *s_adc_req_m1_reg  && IS_SEQUENTIAL}]
set_false_path -from [get_cells -hier -filter {name =~ *up_adc_preset_reg  && IS_SEQUENTIAL}]     -to [get_cells -hier -filter {name =~ *ad_rst_sync_m1_reg  && IS_SEQUENTIAL}]
#
set_property ram_style block [get_cells -hier  -filter {name =~ *i_adc_mem_2}]
