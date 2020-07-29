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
    id 19 \
    name frame1_a_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame1_a_V \
    op interface \
    ports { frame1_a_V_dout { I 8 vector } frame1_a_V_empty_n { I 1 bit } frame1_a_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name frame2_a_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame2_a_V \
    op interface \
    ports { frame2_a_V_dout { I 8 vector } frame2_a_V_empty_n { I 1 bit } frame2_a_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name frame3_b_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame3_b_V \
    op interface \
    ports { frame3_b_V_dout { I 8 vector } frame3_b_V_empty_n { I 1 bit } frame3_b_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name frame4_a_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame4_a_V \
    op interface \
    ports { frame4_a_V_dout { I 8 vector } frame4_a_V_empty_n { I 1 bit } frame4_a_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name frame5_a_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame5_a_V \
    op interface \
    ports { frame5_a_V_dout { I 8 vector } frame5_a_V_empty_n { I 1 bit } frame5_a_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name gradient_z_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gradient_z_V \
    op interface \
    ports { gradient_z_V_din { O 32 vector } gradient_z_V_full_n { I 1 bit } gradient_z_V_write { O 1 bit } } \
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


