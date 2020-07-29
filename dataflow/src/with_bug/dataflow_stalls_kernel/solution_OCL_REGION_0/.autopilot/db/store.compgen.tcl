# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name to_r \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_to_r \
    op interface \
    ports { m_axi_to_r_AWVALID { O 1 bit } m_axi_to_r_AWREADY { I 1 bit } m_axi_to_r_AWADDR { O 64 vector } m_axi_to_r_AWID { O 1 vector } m_axi_to_r_AWLEN { O 32 vector } m_axi_to_r_AWSIZE { O 3 vector } m_axi_to_r_AWBURST { O 2 vector } m_axi_to_r_AWLOCK { O 2 vector } m_axi_to_r_AWCACHE { O 4 vector } m_axi_to_r_AWPROT { O 3 vector } m_axi_to_r_AWQOS { O 4 vector } m_axi_to_r_AWREGION { O 4 vector } m_axi_to_r_AWUSER { O 1 vector } m_axi_to_r_WVALID { O 1 bit } m_axi_to_r_WREADY { I 1 bit } m_axi_to_r_WDATA { O 64 vector } m_axi_to_r_WSTRB { O 8 vector } m_axi_to_r_WLAST { O 1 bit } m_axi_to_r_WID { O 1 vector } m_axi_to_r_WUSER { O 1 vector } m_axi_to_r_ARVALID { O 1 bit } m_axi_to_r_ARREADY { I 1 bit } m_axi_to_r_ARADDR { O 64 vector } m_axi_to_r_ARID { O 1 vector } m_axi_to_r_ARLEN { O 32 vector } m_axi_to_r_ARSIZE { O 3 vector } m_axi_to_r_ARBURST { O 2 vector } m_axi_to_r_ARLOCK { O 2 vector } m_axi_to_r_ARCACHE { O 4 vector } m_axi_to_r_ARPROT { O 3 vector } m_axi_to_r_ARQOS { O 4 vector } m_axi_to_r_ARREGION { O 4 vector } m_axi_to_r_ARUSER { O 1 vector } m_axi_to_r_RVALID { I 1 bit } m_axi_to_r_RREADY { O 1 bit } m_axi_to_r_RDATA { I 64 vector } m_axi_to_r_RLAST { I 1 bit } m_axi_to_r_RID { I 1 vector } m_axi_to_r_RUSER { I 1 vector } m_axi_to_r_RRESP { I 2 vector } m_axi_to_r_BVALID { I 1 bit } m_axi_to_r_BREADY { O 1 bit } m_axi_to_r_BRESP { I 2 vector } m_axi_to_r_BID { I 1 vector } m_axi_to_r_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name to_offset \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_to_offset \
    op interface \
    ports { to_offset_dout { I 64 vector } to_offset_empty_n { I 1 bit } to_offset_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name from_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_from_V \
    op interface \
    ports { from_V_dout { I 64 vector } from_V_empty_n { I 1 bit } from_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name data_count \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_count \
    op interface \
    ports { data_count_dout { I 32 vector } data_count_empty_n { I 1 bit } data_count_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


