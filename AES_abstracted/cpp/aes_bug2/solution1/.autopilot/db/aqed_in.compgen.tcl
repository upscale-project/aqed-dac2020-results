# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1 \
    name bmc_in \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bmc_in \
    op interface \
    ports { bmc_in_address0 { O 4 vector } bmc_in_ce0 { O 1 bit } bmc_in_q0 { I 8 vector } bmc_in_address1 { O 4 vector } bmc_in_ce1 { O 1 bit } bmc_in_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bmc_in'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name orig_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_orig_V \
    op interface \
    ports { orig_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name dup_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dup_V \
    op interface \
    ports { dup_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name orig_idx_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_orig_idx_V \
    op interface \
    ports { orig_idx_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name dup_idx_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dup_idx_V \
    op interface \
    ports { dup_idx_V { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name state_orig_issued_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_state_orig_issued_V \
    op interface \
    ports { state_orig_issued_V_i { I 1 vector } state_orig_issued_V_o { O 1 vector } state_orig_issued_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name state_dup_issued_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_state_dup_issued_V \
    op interface \
    ports { state_dup_issued_V_i { I 1 vector } state_dup_issued_V_o { O 1 vector } state_dup_issued_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name state_orig_in_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_orig_in_V \
    op interface \
    ports { state_orig_in_V { O 16 vector } state_orig_in_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name state_orig_idx_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_orig_idx_V \
    op interface \
    ports { state_orig_idx_V { O 2 vector } state_orig_idx_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name state_dup_in_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_dup_in_V \
    op interface \
    ports { state_dup_in_V { O 16 vector } state_dup_in_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name state_dup_idx_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_dup_idx_V \
    op interface \
    ports { state_dup_idx_V { O 2 vector } state_dup_idx_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name state_dup_val_V_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_dup_val_V_0 \
    op interface \
    ports { state_dup_val_V_0 { O 8 vector } state_dup_val_V_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name state_dup_val_V_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_dup_val_V_1 \
    op interface \
    ports { state_dup_val_V_1 { O 8 vector } state_dup_val_V_1_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


