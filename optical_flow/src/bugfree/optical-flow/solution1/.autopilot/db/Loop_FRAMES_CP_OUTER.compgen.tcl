# This script segment is generated automatically by AutoPilot

set id 5
set name optical_flow_urembkb
set corename simcore_urem
set op urem
set stage_num 10
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 6
set in0_signed 0
set in1_width 5
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 6
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name frames_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frames_V \
    op interface \
    ports { m_axi_frames_V_AWVALID { O 1 bit } m_axi_frames_V_AWREADY { I 1 bit } m_axi_frames_V_AWADDR { O 32 vector } m_axi_frames_V_AWID { O 1 vector } m_axi_frames_V_AWLEN { O 32 vector } m_axi_frames_V_AWSIZE { O 3 vector } m_axi_frames_V_AWBURST { O 2 vector } m_axi_frames_V_AWLOCK { O 2 vector } m_axi_frames_V_AWCACHE { O 4 vector } m_axi_frames_V_AWPROT { O 3 vector } m_axi_frames_V_AWQOS { O 4 vector } m_axi_frames_V_AWREGION { O 4 vector } m_axi_frames_V_AWUSER { O 1 vector } m_axi_frames_V_WVALID { O 1 bit } m_axi_frames_V_WREADY { I 1 bit } m_axi_frames_V_WDATA { O 64 vector } m_axi_frames_V_WSTRB { O 8 vector } m_axi_frames_V_WLAST { O 1 bit } m_axi_frames_V_WID { O 1 vector } m_axi_frames_V_WUSER { O 1 vector } m_axi_frames_V_ARVALID { O 1 bit } m_axi_frames_V_ARREADY { I 1 bit } m_axi_frames_V_ARADDR { O 32 vector } m_axi_frames_V_ARID { O 1 vector } m_axi_frames_V_ARLEN { O 32 vector } m_axi_frames_V_ARSIZE { O 3 vector } m_axi_frames_V_ARBURST { O 2 vector } m_axi_frames_V_ARLOCK { O 2 vector } m_axi_frames_V_ARCACHE { O 4 vector } m_axi_frames_V_ARPROT { O 3 vector } m_axi_frames_V_ARQOS { O 4 vector } m_axi_frames_V_ARREGION { O 4 vector } m_axi_frames_V_ARUSER { O 1 vector } m_axi_frames_V_RVALID { I 1 bit } m_axi_frames_V_RREADY { O 1 bit } m_axi_frames_V_RDATA { I 64 vector } m_axi_frames_V_RLAST { I 1 bit } m_axi_frames_V_RID { I 1 vector } m_axi_frames_V_RUSER { I 1 vector } m_axi_frames_V_RRESP { I 2 vector } m_axi_frames_V_BVALID { I 1 bit } m_axi_frames_V_BREADY { O 1 bit } m_axi_frames_V_BRESP { I 2 vector } m_axi_frames_V_BID { I 1 vector } m_axi_frames_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name frames_V_offset \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frames_V_offset \
    op interface \
    ports { frames_V_offset_dout { I 32 vector } frames_V_offset_empty_n { I 1 bit } frames_V_offset_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name frame1_a_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame1_a_V \
    op interface \
    ports { frame1_a_V_din { O 8 vector } frame1_a_V_full_n { I 1 bit } frame1_a_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name frame2_a_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame2_a_V \
    op interface \
    ports { frame2_a_V_din { O 8 vector } frame2_a_V_full_n { I 1 bit } frame2_a_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name frame3_a_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame3_a_V \
    op interface \
    ports { frame3_a_V_din { O 8 vector } frame3_a_V_full_n { I 1 bit } frame3_a_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name frame3_b_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame3_b_V \
    op interface \
    ports { frame3_b_V_din { O 8 vector } frame3_b_V_full_n { I 1 bit } frame3_b_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name frame4_a_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame4_a_V \
    op interface \
    ports { frame4_a_V_din { O 8 vector } frame4_a_V_full_n { I 1 bit } frame4_a_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name frame5_a_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_frame5_a_V \
    op interface \
    ports { frame5_a_V_din { O 8 vector } frame5_a_V_full_n { I 1 bit } frame5_a_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


