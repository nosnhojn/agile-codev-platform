# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property ip_repo_paths /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock [current_fileset]

read_ip /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0.xci
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.data/wt [current_project]
set_property parent.project_dir /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock [current_project]
synth_design -top clk_wiz_0 -part xc7z020clg484-1 -mode out_of_context

rename_ref -prefix_all clk_wiz_0
write_checkpoint -noxdef clk_wiz_0.dcp
report_utilization -file clk_wiz_0_utilization_synth.rpt -pb clk_wiz_0_utilization_synth.pb
if { [catch {
  file copy -force /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0.dcp
  write_verilog -force -mode synth_stub /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0_stub.v
  write_verilog -force -mode funcsim /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0_funcsim.v
  write_vhdl -force -mode funcsim /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0_funcsim.vhdl
} _RESULT ] } { 
  puts "Critical Warning: Unable to successfully create or copy supporting IP files."
}
