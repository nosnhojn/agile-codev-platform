

# Delete the old ip
delete_bd_objs [get_bd_nets zed_hdmi_display/agilehwblock_0_otvalid] [get_bd_nets zed_hdmi_display/agilehwblock_0_otdata] [get_bd_nets zed_hdmi_display/axi_vdma_0_m_axis_mm2s_tkeep] [get_bd_nets zed_hdmi_display/axi_vdma_0_m_axis_mm2s_tuser] [get_bd_nets zed_hdmi_display/agilehwblock_0_otkeep] [get_bd_nets zed_hdmi_display/axi_vdma_0_m_axis_mm2s_tvalid] [get_bd_nets zed_hdmi_display/agilehwblock_0_otready] [get_bd_nets zed_hdmi_display/axi_vdma_0_m_axis_mm2s_tdata] [get_bd_nets zed_hdmi_display/agilehwblock_0_otlast] [get_bd_nets zed_hdmi_display/axi_vdma_0_m_axis_mm2s_tlast] [get_bd_nets zed_hdmi_display/axis_subset_converter_0_s_axis_tready] [get_bd_nets zed_hdmi_display/agilehwblock_0_otuser] [get_bd_cells zed_hdmi_display/agileHWBlock_0]

# Import the new ip
startgroup
create_bd_cell -type ip -vlnv agilesoc.com:user:agileHWBlock:1.0 zed_hdmi_display/agileHWBlock_0
endgroup

# Make the connections
connect_bd_net [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tdata] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTDATA]
connect_bd_net [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tkeep] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTKEEP]
connect_bd_net [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tvalid] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTVALID]
connect_bd_net [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tlast] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTLAST]
connect_bd_net [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tuser] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTUSER]
connect_bd_net [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTDATA] [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tdata]
connect_bd_net [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTUSER] [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tuser]
connect_bd_net [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tvalid] [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTVALID]
connect_bd_net [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tlast] [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTLAST]
connect_bd_net [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTKEEP] [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tkeep]
connect_bd_net [get_bd_pins zed_hdmi_display/axis_subset_converter_0/s_axis_tready] [get_bd_pins zed_hdmi_display/agileHWBlock_0/iTREADY]
connect_bd_net [get_bd_pins zed_hdmi_display/agileHWBlock_0/oTREADY] [get_bd_pins zed_hdmi_display/axi_vdma_0/m_axis_mm2s_tready]
connect_bd_net -net [get_bd_nets zed_hdmi_display/processing_system7_0_fclk_clk1] [get_bd_pins zed_hdmi_display/axi4s_clk] [get_bd_pins zed_hdmi_display/agileHWBlock_0/clk]
connect_bd_net -net [get_bd_nets zed_hdmi_display/vcc_const] [get_bd_pins zed_hdmi_display/agileHWBlock_0/rst] [get_bd_pins zed_hdmi_display/vcc/const]

# Validate the design
validate_bd_design
