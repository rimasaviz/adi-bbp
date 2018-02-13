
upgrade_ip -vlnv analog.com:user:axi_ofdmbbp_tx:1.0 [get_ips  system_axi_ofdmbbp_tx_0] -log ip_upgrade.log

export_ip_user_files -of_objects [get_ips system_axi_ofdmbbp_tx_0] -no_script -sync -force -quiet
generate_target all [get_files  /scratch/rimas/adi-bbp/zc706/zc706.srcs/sources_1/bd/system/system.bd]
catch { config_ip_cache -export [get_ips -all system_axi_ofdmbbp_tx_0] }
catch { config_ip_cache -export [get_ips -all system_auto_pc_0] }
catch { config_ip_cache -export [get_ips -all system_auto_pc_1] }
export_ip_user_files -of_objects [get_files /scratch/rimas/adi-bbp/zc706/zc706.srcs/sources_1/bd/system/system.bd] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] /scratch/rimas/adi-bbp/zc706/zc706.srcs/sources_1/bd/system/system.bd]
launch_runs -jobs 6 system_axi_ofdmbbp_tx_0_synth_1
export_simulation -of_objects [get_files /scratch/rimas/adi-bbp/zc706/zc706.srcs/sources_1/bd/system/system.bd] -directory /scratch/rimas/adi-bbp/zc706/zc706.ip_user_files/sim_scripts -ip_user_files_dir /scratch/rimas/adi-bbp/zc706/zc706.ip_user_files -ipstatic_source_dir /scratch/rimas/adi-bbp/zc706/zc706.ip_user_files/ipstatic -lib_map_path [list {modelsim=/scratch/rimas/adi-bbp/zc706/zc706.cache/compile_simlib/modelsim} {questa=/scratch/rimas/adi-bbp/zc706/zc706.cache/compile_simlib/questa} {ies=/scratch/rimas/adi-bbp/zc706/zc706.cache/compile_simlib/ies} {vcs=/scratch/rimas/adi-bbp/zc706/zc706.cache/compile_simlib/vcs} {riviera=/scratch/rimas/adi-bbp/zc706/zc706.cache/compile_simlib/riviera}] -use_ip_compiled_libs -force -quiet
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
open_run synth_1 -name synth_1
source ../new_batch_insert_ila.tcl
batch_insert_ila 1024
close_design
set_property constrset debug_constraints.xdc [get_runs synth_1]
set_property constrset debug_constraints.xdc [get_runs impl_1]
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1

