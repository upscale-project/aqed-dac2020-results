// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aqed_in_HH_
#define _aqed_in_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aqed_in : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > bmc_in_address0;
    sc_out< sc_logic > bmc_in_ce0;
    sc_in< sc_lv<8> > bmc_in_q0;
    sc_out< sc_lv<4> > bmc_in_address1;
    sc_out< sc_logic > bmc_in_ce1;
    sc_in< sc_lv<8> > bmc_in_q1;
    sc_in< sc_lv<1> > orig_V;
    sc_in< sc_lv<1> > dup_V;
    sc_in< sc_lv<2> > orig_idx_V;
    sc_in< sc_lv<2> > dup_idx_V;
    sc_in< sc_lv<1> > state_orig_issued_V_i;
    sc_out< sc_lv<1> > state_orig_issued_V_o;
    sc_out< sc_logic > state_orig_issued_V_o_ap_vld;
    sc_in< sc_lv<1> > state_dup_issued_V_i;
    sc_out< sc_lv<1> > state_dup_issued_V_o;
    sc_out< sc_logic > state_dup_issued_V_o_ap_vld;
    sc_out< sc_lv<16> > state_orig_in_V;
    sc_out< sc_logic > state_orig_in_V_ap_vld;
    sc_out< sc_lv<2> > state_orig_idx_V;
    sc_out< sc_logic > state_orig_idx_V_ap_vld;
    sc_out< sc_lv<16> > state_dup_in_V;
    sc_out< sc_logic > state_dup_in_V_ap_vld;
    sc_out< sc_lv<2> > state_dup_idx_V;
    sc_out< sc_logic > state_dup_idx_V_ap_vld;
    sc_out< sc_lv<8> > state_dup_val_V_0;
    sc_out< sc_logic > state_dup_val_V_0_ap_vld;
    sc_out< sc_lv<8> > state_dup_val_V_1;
    sc_out< sc_logic > state_dup_val_V_1_ap_vld;


    // Module declarations
    aqed_in(sc_module_name name);
    SC_HAS_PROCESS(aqed_in);

    ~aqed_in();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > state_orig_val_V_0;
    sc_signal< sc_lv<8> > state_orig_val_V_1;
    sc_signal< sc_lv<16> > state_in_count_V;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > bmc_in_load_reg_485;
    sc_signal< sc_lv<8> > bmc_in_load_4_reg_492;
    sc_signal< sc_lv<64> > op2_fu_123_p1;
    sc_signal< sc_lv<64> > p_0368_sum_cast_fu_134_p1;
    sc_signal< sc_lv<64> > op2_2_fu_147_p1;
    sc_signal< sc_lv<64> > p_0265_sum_cast_fu_158_p1;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > val_assign_11_demorg_fu_184_p2;
    sc_signal< sc_lv<16> > tmp_1_fu_451_p2;
    sc_signal< sc_lv<1> > issue_dup_V_fu_385_p2;
    sc_signal< sc_lv<3> > r_V_fu_115_p3;
    sc_signal< sc_lv<3> > p_0368_sum_fu_128_p2;
    sc_signal< sc_lv<3> > r_V_2_fu_139_p3;
    sc_signal< sc_lv<3> > p_0265_sum_fu_152_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_169_p2;
    sc_signal< sc_lv<1> > orig_V_not_fu_163_p2;
    sc_signal< sc_lv<1> > tmp_fu_178_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_218_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_196_p2;
    sc_signal< sc_lv<1> > tmp39_demorgan_fu_245_p2;
    sc_signal< sc_lv<1> > tmp1_fu_239_p2;
    sc_signal< sc_lv<1> > tmp2_fu_251_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_257_p2;
    sc_signal< sc_lv<1> > issue_orig_V_fu_190_p2;
    sc_signal< sc_lv<1> > tmp_19_not_fu_269_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_209_p2;
    sc_signal< sc_lv<1> > tmp4_fu_287_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_275_p2;
    sc_signal< sc_lv<1> > tmp5_fu_293_p2;
    sc_signal< sc_lv<1> > tmp3_fu_281_p2;
    sc_signal< sc_lv<1> > brmerge_fu_223_p2;
    sc_signal< sc_lv<1> > sel_tmp1_fu_299_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_305_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_317_p2;
    sc_signal< sc_lv<1> > sel_tmp3_fu_311_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_323_p2;
    sc_signal< sc_lv<1> > tmp6_fu_329_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_263_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_229_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_234_p2;
    sc_signal< sc_lv<1> > tmp7_fu_341_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_335_p2;
    sc_signal< sc_lv<1> > sel_tmp10_fu_353_p2;
    sc_signal< sc_lv<1> > sel_tmp9_fu_347_p2;
    sc_signal< sc_lv<1> > sel_tmp12_fu_367_p2;
    sc_signal< sc_lv<1> > sel_tmp13_fu_373_p2;
    sc_signal< sc_lv<1> > sel_tmp11_fu_359_p3;
    sc_signal< sc_lv<1> > not_sel_tmp_fu_379_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<16> ap_const_lv16_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bmc_in_address0();
    void thread_bmc_in_address1();
    void thread_bmc_in_ce0();
    void thread_bmc_in_ce1();
    void thread_brmerge_fu_223_p2();
    void thread_issue_dup_V_fu_385_p2();
    void thread_issue_orig_V_fu_190_p2();
    void thread_not_sel_tmp_fu_379_p2();
    void thread_op2_2_fu_147_p1();
    void thread_op2_fu_123_p1();
    void thread_orig_V_not_fu_163_p2();
    void thread_p_0265_sum_cast_fu_158_p1();
    void thread_p_0265_sum_fu_152_p2();
    void thread_p_0368_sum_cast_fu_134_p1();
    void thread_p_0368_sum_fu_128_p2();
    void thread_r_V_2_fu_139_p3();
    void thread_r_V_fu_115_p3();
    void thread_sel_tmp10_fu_353_p2();
    void thread_sel_tmp11_fu_359_p3();
    void thread_sel_tmp12_fu_367_p2();
    void thread_sel_tmp13_fu_373_p2();
    void thread_sel_tmp1_fu_299_p2();
    void thread_sel_tmp2_fu_305_p2();
    void thread_sel_tmp3_fu_311_p2();
    void thread_sel_tmp4_fu_317_p2();
    void thread_sel_tmp5_fu_263_p2();
    void thread_sel_tmp6_fu_323_p2();
    void thread_sel_tmp7_fu_275_p2();
    void thread_sel_tmp8_fu_335_p2();
    void thread_sel_tmp9_fu_347_p2();
    void thread_sel_tmp_fu_257_p2();
    void thread_state_dup_idx_V();
    void thread_state_dup_idx_V_ap_vld();
    void thread_state_dup_in_V();
    void thread_state_dup_in_V_ap_vld();
    void thread_state_dup_issued_V_o();
    void thread_state_dup_issued_V_o_ap_vld();
    void thread_state_dup_val_V_0();
    void thread_state_dup_val_V_0_ap_vld();
    void thread_state_dup_val_V_1();
    void thread_state_dup_val_V_1_ap_vld();
    void thread_state_orig_idx_V();
    void thread_state_orig_idx_V_ap_vld();
    void thread_state_orig_in_V();
    void thread_state_orig_in_V_ap_vld();
    void thread_state_orig_issued_V_o();
    void thread_state_orig_issued_V_o_ap_vld();
    void thread_tmp1_fu_239_p2();
    void thread_tmp2_fu_251_p2();
    void thread_tmp39_demorgan_fu_245_p2();
    void thread_tmp3_fu_281_p2();
    void thread_tmp4_fu_287_p2();
    void thread_tmp5_fu_293_p2();
    void thread_tmp6_fu_329_p2();
    void thread_tmp7_fu_341_p2();
    void thread_tmp_19_not_fu_269_p2();
    void thread_tmp_1_fu_451_p2();
    void thread_tmp_5_fu_196_p2();
    void thread_tmp_6_fu_209_p2();
    void thread_tmp_7_fu_218_p2();
    void thread_tmp_8_fu_229_p2();
    void thread_tmp_9_fu_234_p2();
    void thread_tmp_fu_178_p2();
    void thread_tmp_s_fu_169_p2();
    void thread_val_assign_11_demorg_fu_184_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif