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
