// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aqed_out_HH_
#define _aqed_out_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aqed_out : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1> > state_orig_issued_V;
    sc_in< sc_lv<16> > state_orig_in_V;
    sc_out< sc_lv<1> > state_orig_done_V;
    sc_out< sc_logic > state_orig_done_V_ap_vld;
    sc_in< sc_lv<16> > state_dup_in_V;
    sc_in< sc_lv<1> > state_dup_issued_V;
    sc_in< sc_lv<2> > state_dup_idx_V;
    sc_out< sc_lv<4> > bmc_in_address0;
    sc_out< sc_logic > bmc_in_ce0;
    sc_in< sc_lv<8> > bmc_in_q0;
    sc_out< sc_lv<4> > bmc_in_address1;
    sc_out< sc_logic > bmc_in_ce1;
    sc_in< sc_lv<8> > bmc_in_q1;
    sc_out< sc_lv<1> > ap_return_0;
    sc_out< sc_lv<1> > ap_return_1;


    // Module declarations
    aqed_out(sc_module_name name);
    SC_HAS_PROCESS(aqed_out);

    ~aqed_out();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > state_out_count_V;
    sc_signal< sc_lv<1> > state_qed_done_V;
    sc_signal< sc_lv<8> > state_orig_out_V_0;
    sc_signal< sc_lv<8> > state_orig_out_V_1;
    sc_signal< sc_lv<1> > state_qed_check_V;
    sc_signal< sc_lv<1> > state_orig_issued_V_s_load_fu_98_p1;
    sc_signal< sc_lv<16> > state_out_count_V_lo_reg_303;
    sc_signal< sc_lv<1> > state_qed_done_V_loa_reg_310;
    sc_signal< sc_lv<1> > brmerge_fu_144_p2;
    sc_signal< sc_lv<1> > brmerge_reg_317;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > brmerge1_fu_187_p2;
    sc_signal< sc_lv<1> > brmerge1_reg_326;
    sc_signal< sc_lv<1> > tmp_3_fu_252_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_340;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > state_qed_done_V_fla_reg_69;
    sc_signal< sc_lv<1> > state_qed_done_V_loc_reg_85;
    sc_signal< sc_lv<64> > op2_fu_204_p1;
    sc_signal< sc_lv<64> > p_056_sum_cast_fu_215_p1;
    sc_signal< sc_lv<16> > tmp_4_fu_256_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > p_state_qed_done_V_fl_fu_267_p2;
    sc_signal< sc_lv<1> > val_assign_5_fu_240_p2;
    sc_signal< sc_lv<1> > rev2_fu_126_p2;
    sc_signal< sc_lv<1> > ult_fu_120_p2;
    sc_signal< sc_lv<1> > tmp_not_fu_138_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_170_p2;
    sc_signal< sc_lv<1> > or_cond_fu_175_p2;
    sc_signal< sc_lv<1> > or_cond_not_fu_181_p2;
    sc_signal< sc_lv<3> > r_V_fu_196_p3;
    sc_signal< sc_lv<3> > p_056_sum_fu_209_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_224_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_234_p2;
    sc_signal< sc_lv<1> > o2_qed_done_V_fu_272_p2;
    sc_signal< sc_lv<1> > ap_return_0_preg;
    sc_signal< sc_lv<1> > ap_return_1_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_bmc_in_address0();
    void thread_bmc_in_address1();
    void thread_bmc_in_ce0();
    void thread_bmc_in_ce1();
    void thread_brmerge1_fu_187_p2();
    void thread_brmerge_fu_144_p2();
    void thread_o2_qed_done_V_fu_272_p2();
    void thread_op2_fu_204_p1();
    void thread_or_cond_fu_175_p2();
    void thread_or_cond_not_fu_181_p2();
    void thread_p_056_sum_cast_fu_215_p1();
    void thread_p_056_sum_fu_209_p2();
    void thread_p_state_qed_done_V_fl_fu_267_p2();
    void thread_r_V_fu_196_p3();
    void thread_rev2_fu_126_p2();
    void thread_state_orig_done_V();
    void thread_state_orig_done_V_ap_vld();
    void thread_state_orig_issued_V_s_load_fu_98_p1();
    void thread_tmp_1_fu_224_p2();
    void thread_tmp_2_fu_234_p2();
    void thread_tmp_3_fu_252_p2();
    void thread_tmp_4_fu_256_p2();
    void thread_tmp_not_fu_138_p2();
    void thread_tmp_s_fu_170_p2();
    void thread_ult_fu_120_p2();
    void thread_val_assign_5_fu_240_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
