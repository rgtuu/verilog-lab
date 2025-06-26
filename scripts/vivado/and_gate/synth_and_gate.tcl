create_project and_gate_proj ./and_gate_proj -part xc7s50csga324-1 -force
add_files /home/hs011010/rgtuu_summer/verilog-lab/src/and_gate.v
set_property top and_gate [current_fileset]
launch_runs synth_1
wait_on_run synth_1
report_timing_summary -file timing_summary.rpt
report_utilization -file utilization.rpt
write_checkpoint -force post_synth.dcp