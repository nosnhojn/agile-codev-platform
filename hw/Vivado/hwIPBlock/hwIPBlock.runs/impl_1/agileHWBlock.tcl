proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  create_project -in_memory -part xc7z020clg484-1
  set_property board em.avnet.com:zynq:zed:d [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.data/wt [current_project]
  set_property parent.project_dir /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock [current_project]
  add_files /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/agileHWBlock.dcp
  add_files /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp
  add_files /home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp
  link_design -top agileHWBlock -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force agileHWBlock_opt.dcp
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  catch { report_io -file agileHWBlock_io_placed.rpt }
  catch { report_clock_utilization -file agileHWBlock_clock_utilization_placed.rpt }
  catch { report_utilization -file agileHWBlock_utilization_placed.rpt -pb agileHWBlock_utilization_placed.pb }
  catch { report_control_sets -verbose -file agileHWBlock_control_sets_placed.rpt }
  write_checkpoint -force agileHWBlock_placed.dcp
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  catch { report_drc -file agileHWBlock_drc_routed.rpt -pb agileHWBlock_drc_routed.pb }
  catch { report_power -file agileHWBlock_power_routed.rpt -pb agileHWBlock_power_summary_routed.pb }
  catch { report_route_status -file agileHWBlock_route_status.rpt -pb agileHWBlock_route_status.pb }
  catch { report_timing_summary -file agileHWBlock_timing_summary_routed.rpt -pb agileHWBlock_timing_summary_routed.pb }
  write_checkpoint -force agileHWBlock_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

