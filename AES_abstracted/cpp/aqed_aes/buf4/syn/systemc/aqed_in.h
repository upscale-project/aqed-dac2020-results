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

#include "aqed_in_state_key_V.h"

namespace ap_rtl {

struct aqed_in : public sc_module {
    // Port declarations 32
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
    sc_out< sc_lv<16> > state_dup_in_V;
    sc_out< sc_logic > state_dup_in_V_ap_vld;
    sc_out< sc_lv<2> > state_dup_idx_V;
    sc_out< sc_logic > state_dup_idx_V_ap_vld;
    sc_out< sc_lv<8> > state_dup_val_V_0;
    sc_out< sc_logic > state_dup_val_V_0_ap_vld;
    sc_out< sc_lv<8> > state_dup_val_V_1;
    sc_out< sc_logic > state_dup_val_V_1_ap_vld;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    aqed_in(sc_module_name name);
    SC_HAS_PROCESS(aqed_in);

    ~aqed_in();

    sc_trace_file* mVcdFile;

    aqed_in_state_key_V* state_key_V_U;
    sc_signal< sc_lv<19> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > state_orig_val_V_0;
    sc_signal< sc_lv<8> > state_orig_val_V_1;
    sc_signal< sc_lv<16> > state_in_count_V;
    sc_signal< sc_lv<5> > state_key_V_address0;
    sc_signal< sc_logic > state_key_V_ce0;
    sc_signal< sc_logic > state_key_V_we0;
    sc_signal< sc_lv<1> > state_key_V_q0;
    sc_signal< sc_lv<5> > state_key_V_address1;
    sc_signal< sc_logic > state_key_V_ce1;
    sc_signal< sc_logic > state_key_V_we1;
    sc_signal< sc_lv<8> > reg_248;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_s_fu_253_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_586;
    sc_signal< sc_lv<8> > bmc_in_load_5_reg_591;
    sc_signal< sc_lv<3> > r_V_fu_259_p3;
    sc_signal< sc_lv<3> > r_V_reg_597;
    sc_signal< sc_lv<3> > r_V_1_fu_272_p3;
    sc_signal< sc_lv<3> > r_V_1_reg_607;
    sc_signal< sc_lv<8> > bmc_in_load_6_reg_617;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > grp_fu_242_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_622;
    sc_signal< sc_lv<1> > issue_orig_V_fu_320_p2;
    sc_signal< sc_lv<1> > issue_orig_V_reg_637;
    sc_signal< sc_lv<1> > issue_dup_V_fu_499_p2;
    sc_signal< sc_lv<1> > issue_dup_V_reg_641;
    sc_signal< sc_lv<16> > state_in_count_V_loa_reg_645;
    sc_signal< sc_lv<64> > op2_fu_267_p1;
    sc_signal< sc_lv<64> > op2_1_fu_280_p1;
    sc_signal< sc_lv<64> > p_0265_sum_cast_fu_290_p1;
    sc_signal< sc_lv<64> > p_0234_sum_cast_fu_300_p1;
    sc_signal< sc_lv<16> > tmp_3_fu_559_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<3> > p_0265_sum_fu_285_p2;
    sc_signal< sc_lv<3> > p_0234_sum_fu_295_p2;
    sc_signal< sc_lv<1> > or_cond1_fu_305_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_314_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_326_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_355_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_360_p2;
    sc_signal< sc_lv<1> > or_cond1_not_fu_372_p2;
    sc_signal< sc_lv<1> > or_cond_fu_366_p2;
    sc_signal< sc_lv<1> > p_0467_not_fu_378_p2;
    sc_signal< sc_lv<1> > or_cond2_fu_331_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_345_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_396_p2;
    sc_signal< sc_lv<1> > tmp1_fu_408_p2;
    sc_signal< sc_lv<1> > tmp_fu_402_p2;
    sc_signal< sc_lv<1> > brmerge_fu_384_p2;
    sc_signal< sc_lv<1> > sel_tmp1_fu_414_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_420_p2;
    sc_signal< sc_lv<1> > sel_tmp3_fu_426_p2;
    sc_signal< sc_lv<1> > tmp2_fu_444_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_432_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_455_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_449_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_390_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_438_p2;
    sc_signal< sc_lv<1> > tmp4_fu_475_p2;
    sc_signal< sc_lv<1> > tmp3_fu_469_p2;
    sc_signal< sc_lv<1> > sel_tmp10_fu_481_p2;
    sc_signal< sc_lv<1> > sel_tmp11_fu_487_p2;
    sc_signal< sc_lv<1> > sel_tmp9_fu_461_p3;
    sc_signal< sc_lv<1> > not_sel_tmp_fu_493_p2;
    sc_signal< sc_lv<19> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<19> ap_ST_fsm_state1;
    static const sc_lv<19> ap_ST_fsm_state2;
    static const sc_lv<19> ap_ST_fsm_state3;
    static const sc_lv<19> ap_ST_fsm_state4;
    static const sc_lv<19> ap_ST_fsm_state5;
    static const sc_lv<19> ap_ST_fsm_state6;
    static const sc_lv<19> ap_ST_fsm_state7;
    static const sc_lv<19> ap_ST_fsm_state8;
    static const sc_lv<19> ap_ST_fsm_state9;
    static const sc_lv<19> ap_ST_fsm_state10;
    static const sc_lv<19> ap_ST_fsm_state11;
    static const sc_lv<19> ap_ST_fsm_state12;
    static const sc_lv<19> ap_ST_fsm_state13;
    static const sc_lv<19> ap_ST_fsm_state14;
    static const sc_lv<19> ap_ST_fsm_state15;
    static const sc_lv<19> ap_ST_fsm_state16;
    static const sc_lv<19> ap_ST_fsm_state17;
    static const sc_lv<19> ap_ST_fsm_state18;
    static const sc_lv<19> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<5> ap_const_lv5_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<5> ap_const_lv5_6;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<5> ap_const_lv5_B;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<5> ap_const_lv5_C;
    static const sc_lv<5> ap_const_lv5_D;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_E;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<5> ap_const_lv5_13;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<5> ap_const_lv5_15;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<5> ap_const_lv5_16;
    static const sc_lv<5> ap_const_lv5_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<5> ap_const_lv5_1A;
    static const sc_lv<5> ap_const_lv5_1B;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<5> ap_const_lv5_1D;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bmc_in_address0();
    void thread_bmc_in_address1();
    void thread_bmc_in_ce0();
    void thread_bmc_in_ce1();
    void thread_brmerge_fu_384_p2();
    void thread_grp_fu_242_p2();
    void thread_issue_dup_V_fu_499_p2();
    void thread_issue_orig_V_fu_320_p2();
    void thread_not_sel_tmp_fu_493_p2();
    void thread_op2_1_fu_280_p1();
    void thread_op2_fu_267_p1();
    void thread_or_cond1_fu_305_p2();
    void thread_or_cond1_not_fu_372_p2();
    void thread_or_cond2_fu_331_p2();
    void thread_or_cond_fu_366_p2();
    void thread_p_0234_sum_cast_fu_300_p1();
    void thread_p_0234_sum_fu_295_p2();
    void thread_p_0265_sum_cast_fu_290_p1();
    void thread_p_0265_sum_fu_285_p2();
    void thread_p_0467_not_fu_378_p2();
    void thread_r_V_1_fu_272_p3();
    void thread_r_V_fu_259_p3();
    void thread_sel_tmp10_fu_481_p2();
    void thread_sel_tmp11_fu_487_p2();
    void thread_sel_tmp1_fu_414_p2();
    void thread_sel_tmp2_fu_420_p2();
    void thread_sel_tmp3_fu_426_p2();
    void thread_sel_tmp4_fu_432_p2();
    void thread_sel_tmp5_fu_438_p2();
    void thread_sel_tmp6_fu_449_p2();
    void thread_sel_tmp7_fu_396_p2();
    void thread_sel_tmp8_fu_455_p2();
    void thread_sel_tmp9_fu_461_p3();
    void thread_sel_tmp_fu_390_p2();
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
    void thread_state_key_V_address0();
    void thread_state_key_V_address1();
    void thread_state_key_V_ce0();
    void thread_state_key_V_ce1();
    void thread_state_key_V_we0();
    void thread_state_key_V_we1();
    void thread_state_orig_in_V();
    void thread_state_orig_in_V_ap_vld();
    void thread_state_orig_issued_V_o();
    void thread_state_orig_issued_V_o_ap_vld();
    void thread_tmp1_fu_408_p2();
    void thread_tmp2_fu_444_p2();
    void thread_tmp3_fu_469_p2();
    void thread_tmp4_fu_475_p2();
    void thread_tmp_3_fu_559_p2();
    void thread_tmp_5_fu_314_p2();
    void thread_tmp_6_fu_326_p2();
    void thread_tmp_7_fu_345_p2();
    void thread_tmp_8_fu_355_p2();
    void thread_tmp_9_fu_360_p2();
    void thread_tmp_fu_402_p2();
    void thread_tmp_s_fu_253_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif