// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Autocorrelation_HH_
#define _Autocorrelation_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aqed_top_mac_mulacud.h"
#include "Autocorrelation_bbkb.h"

namespace ap_rtl {

struct Autocorrelation : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > s_address0;
    sc_out< sc_logic > s_ce0;
    sc_out< sc_logic > s_we0;
    sc_out< sc_lv<16> > s_d0;
    sc_in< sc_lv<16> > s_q0;
    sc_out< sc_lv<3> > s_address1;
    sc_out< sc_logic > s_ce1;
    sc_out< sc_logic > s_we1;
    sc_out< sc_lv<16> > s_d1;
    sc_in< sc_lv<16> > s_q1;
    sc_in< sc_lv<3> > s_offset;


    // Module declarations
    Autocorrelation(sc_module_name name);
    SC_HAS_PROCESS(Autocorrelation);

    ~Autocorrelation();

    sc_trace_file* mVcdFile;

    Autocorrelation_bbkb* bitoff_U;
    aqed_top_mac_mulacud<1,1,15,16,16,31>* aqed_top_mac_mulacud_U9;
    aqed_top_mac_mulacud<1,1,15,16,16,31>* aqed_top_mac_mulacud_U10;
    aqed_top_mac_mulacud<1,1,15,16,16,31>* aqed_top_mac_mulacud_U11;
    aqed_top_mac_mulacud<1,1,15,16,16,31>* aqed_top_mac_mulacud_U12;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > bitoff_address0;
    sc_signal< sc_logic > bitoff_ce0;
    sc_signal< sc_lv<4> > bitoff_q0;
    sc_signal< sc_lv<8> > bitoff_address1;
    sc_signal< sc_logic > bitoff_ce1;
    sc_signal< sc_lv<4> > bitoff_q1;
    sc_signal< sc_lv<8> > bitoff_address2;
    sc_signal< sc_logic > bitoff_ce2;
    sc_signal< sc_lv<4> > bitoff_q2;
    sc_signal< sc_lv<16> > smax_reg_231;
    sc_signal< sc_lv<3> > k_reg_243;
    sc_signal< sc_lv<16> > reg_265;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > reg_270;
    sc_signal< sc_lv<64> > s_offset_cast1_fu_275_p1;
    sc_signal< sc_lv<64> > s_offset_cast1_reg_852;
    sc_signal< sc_lv<1> > exitcond2_fu_279_p2;
    sc_signal< sc_lv<1> > exitcond2_reg_858;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > k_1_fu_285_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > temp_0_smax_fu_343_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > tmp_fu_351_p2;
    sc_signal< sc_lv<1> > tmp_reg_877;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_1_i_fu_365_p2;
    sc_signal< sc_lv<1> > tmp_1_i_reg_881;
    sc_signal< sc_lv<1> > tmp_74_fu_371_p3;
    sc_signal< sc_lv<1> > tmp_74_reg_887;
    sc_signal< sc_lv<1> > icmp_fu_429_p2;
    sc_signal< sc_lv<1> > icmp_reg_892;
    sc_signal< sc_lv<1> > icmp8_fu_445_p2;
    sc_signal< sc_lv<1> > icmp8_reg_898;
    sc_signal< sc_lv<1> > icmp9_fu_500_p2;
    sc_signal< sc_lv<1> > icmp9_reg_918;
    sc_signal< sc_lv<16> > n_cast_fu_624_p1;
    sc_signal< sc_lv<16> > n_cast_reg_923;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_66_fu_628_p2;
    sc_signal< sc_lv<1> > tmp_66_reg_931;
    sc_signal< sc_lv<1> > or_cond_79_fu_640_p2;
    sc_signal< sc_lv<1> > or_cond_79_reg_935;
    sc_signal< sc_lv<3> > tmp_79_fu_646_p1;
    sc_signal< sc_lv<3> > tmp_79_reg_939;
    sc_signal< sc_lv<3> > s_addr_1_reg_944;
    sc_signal< sc_lv<3> > s_addr_2_reg_950;
    sc_signal< sc_lv<3> > s_addr_3_reg_956;
    sc_signal< sc_lv<3> > s_addr_4_reg_961;
    sc_signal< sc_lv<16> > tmp_25_i1_reg_966;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > tmp_25_i2_reg_971;
    sc_signal< sc_lv<3> > s_addr_5_reg_976;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<3> > s_addr_6_reg_981;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<3> > s_addr_7_reg_986;
    sc_signal< sc_lv<3> > s_addr_8_reg_991;
    sc_signal< sc_lv<16> > tmp_128_2_fu_795_p2;
    sc_signal< sc_lv<16> > tmp_128_2_reg_996;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<16> > tmp_128_3_fu_800_p2;
    sc_signal< sc_lv<16> > tmp_128_3_reg_1001;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<6> > scalauto_fu_616_p3;
    sc_signal< sc_lv<6> > ap_phi_mux_n_phi_fu_258_p4;
    sc_signal< sc_lv<6> > n_reg_254;
    sc_signal< sc_lv<64> > sum_cast_fu_296_p1;
    sc_signal< sc_lv<64> > tmp_9_i_cast_cast_fu_451_p3;
    sc_signal< sc_lv<64> > tmp_15_i_cast_fu_470_p1;
    sc_signal< sc_lv<64> > tmp_19_i_cast_fu_485_p1;
    sc_signal< sc_lv<64> > sum2_1_cast_fu_655_p1;
    sc_signal< sc_lv<64> > sum2_2_cast_fu_665_p1;
    sc_signal< sc_lv<64> > sum2_3_cast_fu_675_p1;
    sc_signal< sc_lv<64> > sum4_1_cast_fu_758_p1;
    sc_signal< sc_lv<64> > sum4_2_cast_fu_768_p1;
    sc_signal< sc_lv<64> > sum4_3_cast_fu_778_p1;
    sc_signal< sc_lv<16> > tmp_71_fu_783_p2;
    sc_signal< sc_lv<16> > tmp_128_1_fu_789_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<3> > sum_fu_291_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_309_p2;
    sc_signal< sc_lv<16> > tmp_35_i_fu_315_p2;
    sc_signal< sc_lv<1> > tmp_68_fu_301_p3;
    sc_signal< sc_lv<16> > tmp_36_i_fu_321_p3;
    sc_signal< sc_lv<16> > smax_2_fu_329_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_337_p2;
    sc_signal< sc_lv<32> > a_assign_1_fu_357_p3;
    sc_signal< sc_lv<8> > tmp_75_fu_387_p1;
    sc_signal< sc_lv<32> > a_lobit_i_cast_fu_379_p3;
    sc_signal< sc_lv<24> > tmp_65_fu_399_p3;
    sc_signal< sc_lv<24> > tmp_64_fu_391_p3;
    sc_signal< sc_lv<32> > a_assign_2_fu_407_p2;
    sc_signal< sc_lv<16> > tmp_76_fu_419_p4;
    sc_signal< sc_lv<8> > tmp_77_fu_435_p4;
    sc_signal< sc_lv<24> > p_i_cast26_cast_fu_413_p2;
    sc_signal< sc_lv<8> > tmp_14_i_cast_fu_460_p4;
    sc_signal< sc_lv<8> > tmp_18_i_cast_fu_475_p4;
    sc_signal< sc_lv<24> > tmp_78_fu_490_p4;
    sc_signal< sc_lv<4> > tmp_17_i_fu_510_p2;
    sc_signal< sc_lv<4> > tmp_21_i_fu_520_p2;
    sc_signal< sc_lv<1> > sel_tmp2_i_fu_530_p2;
    sc_signal< sc_lv<1> > sel_tmp6_i_fu_535_p2;
    sc_signal< sc_lv<1> > tmp20_fu_540_p2;
    sc_signal< sc_lv<1> > tmp21_fu_551_p2;
    sc_signal< sc_lv<1> > sel_tmp20_i_fu_561_p2;
    sc_signal< sc_lv<5> > tmp_i1_cast_fu_506_p1;
    sc_signal< sc_lv<5> > newSel_v_fu_566_p3;
    sc_signal< sc_lv<5> > newSel_fu_574_p2;
    sc_signal< sc_lv<1> > sel_tmp14_i_fu_556_p2;
    sc_signal< sc_lv<1> > sel_tmp7_i_fu_546_p2;
    sc_signal< sc_lv<5> > tmp_17_i_cast_fu_516_p1;
    sc_signal< sc_lv<5> > tmp_21_i_cast_fu_526_p1;
    sc_signal< sc_lv<5> > newSel1_fu_590_p3;
    sc_signal< sc_lv<1> > or_cond_fu_584_p2;
    sc_signal< sc_lv<6> > newSel_cast_fu_580_p1;
    sc_signal< sc_lv<6> > newSel22_cast_fu_598_p1;
    sc_signal< sc_lv<6> > newSel2_fu_602_p3;
    sc_signal< sc_lv<6> > sel_tmp21_i_op_fu_610_p2;
    sc_signal< sc_lv<1> > tmp_67_fu_634_p2;
    sc_signal< sc_lv<3> > sum2_1_fu_650_p2;
    sc_signal< sc_lv<3> > sum2_2_fu_660_p2;
    sc_signal< sc_lv<3> > sum2_3_fu_670_p2;
    sc_signal< sc_lv<3> > tmp_69_fu_680_p2;
    sc_signal< sc_lv<15> > tmp_97_cast_fu_685_p1;
    sc_signal< sc_lv<15> > tmp_70_fu_689_p2;
    sc_signal< sc_lv<31> > grp_fu_805_p3;
    sc_signal< sc_lv<31> > grp_fu_814_p3;
    sc_signal< sc_lv<31> > grp_fu_823_p3;
    sc_signal< sc_lv<31> > grp_fu_832_p3;
    sc_signal< sc_lv<3> > sum4_1_fu_753_p2;
    sc_signal< sc_lv<3> > sum4_2_fu_763_p2;
    sc_signal< sc_lv<3> > sum4_3_fu_773_p2;
    sc_signal< sc_lv<16> > tmp_71_fu_783_p0;
    sc_signal< sc_lv<16> > tmp_128_1_fu_789_p0;
    sc_signal< sc_lv<15> > grp_fu_805_p0;
    sc_signal< sc_lv<31> > tmp_23_i_cast_fu_699_p1;
    sc_signal< sc_lv<16> > grp_fu_805_p2;
    sc_signal< sc_lv<15> > grp_fu_814_p0;
    sc_signal< sc_lv<16> > grp_fu_814_p2;
    sc_signal< sc_lv<15> > grp_fu_823_p0;
    sc_signal< sc_lv<16> > grp_fu_823_p2;
    sc_signal< sc_lv<15> > grp_fu_832_p0;
    sc_signal< sc_lv<16> > grp_fu_832_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<11> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<16> ap_const_lv16_8000;
    static const sc_lv<16> ap_const_lv16_7FFF;
    static const sc_lv<32> ap_const_lv32_C0000001;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<24> ap_const_lv24_FFFFFF;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<64> ap_const_lv64_FF;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<5> ap_const_lv5_17;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<6> ap_const_lv6_5;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<15> ap_const_lv15_4000;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<31> ap_const_lv31_4000;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_assign_1_fu_357_p3();
    void thread_a_assign_2_fu_407_p2();
    void thread_a_lobit_i_cast_fu_379_p3();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_n_phi_fu_258_p4();
    void thread_ap_ready();
    void thread_bitoff_address0();
    void thread_bitoff_address1();
    void thread_bitoff_address2();
    void thread_bitoff_ce0();
    void thread_bitoff_ce1();
    void thread_bitoff_ce2();
    void thread_exitcond2_fu_279_p2();
    void thread_grp_fu_805_p0();
    void thread_grp_fu_805_p2();
    void thread_grp_fu_814_p0();
    void thread_grp_fu_814_p2();
    void thread_grp_fu_823_p0();
    void thread_grp_fu_823_p2();
    void thread_grp_fu_832_p0();
    void thread_grp_fu_832_p2();
    void thread_icmp8_fu_445_p2();
    void thread_icmp9_fu_500_p2();
    void thread_icmp_fu_429_p2();
    void thread_k_1_fu_285_p2();
    void thread_n_cast_fu_624_p1();
    void thread_newSel1_fu_590_p3();
    void thread_newSel22_cast_fu_598_p1();
    void thread_newSel2_fu_602_p3();
    void thread_newSel_cast_fu_580_p1();
    void thread_newSel_fu_574_p2();
    void thread_newSel_v_fu_566_p3();
    void thread_or_cond_79_fu_640_p2();
    void thread_or_cond_fu_584_p2();
    void thread_p_i_cast26_cast_fu_413_p2();
    void thread_s_address0();
    void thread_s_address1();
    void thread_s_ce0();
    void thread_s_ce1();
    void thread_s_d0();
    void thread_s_d1();
    void thread_s_offset_cast1_fu_275_p1();
    void thread_s_we0();
    void thread_s_we1();
    void thread_scalauto_fu_616_p3();
    void thread_sel_tmp14_i_fu_556_p2();
    void thread_sel_tmp20_i_fu_561_p2();
    void thread_sel_tmp21_i_op_fu_610_p2();
    void thread_sel_tmp2_i_fu_530_p2();
    void thread_sel_tmp6_i_fu_535_p2();
    void thread_sel_tmp7_i_fu_546_p2();
    void thread_smax_2_fu_329_p3();
    void thread_sum2_1_cast_fu_655_p1();
    void thread_sum2_1_fu_650_p2();
    void thread_sum2_2_cast_fu_665_p1();
    void thread_sum2_2_fu_660_p2();
    void thread_sum2_3_cast_fu_675_p1();
    void thread_sum2_3_fu_670_p2();
    void thread_sum4_1_cast_fu_758_p1();
    void thread_sum4_1_fu_753_p2();
    void thread_sum4_2_cast_fu_768_p1();
    void thread_sum4_2_fu_763_p2();
    void thread_sum4_3_cast_fu_778_p1();
    void thread_sum4_3_fu_773_p2();
    void thread_sum_cast_fu_296_p1();
    void thread_sum_fu_291_p2();
    void thread_temp_0_smax_fu_343_p3();
    void thread_tmp20_fu_540_p2();
    void thread_tmp21_fu_551_p2();
    void thread_tmp_128_1_fu_789_p0();
    void thread_tmp_128_1_fu_789_p2();
    void thread_tmp_128_2_fu_795_p2();
    void thread_tmp_128_3_fu_800_p2();
    void thread_tmp_14_i_cast_fu_460_p4();
    void thread_tmp_15_i_cast_fu_470_p1();
    void thread_tmp_17_i_cast_fu_516_p1();
    void thread_tmp_17_i_fu_510_p2();
    void thread_tmp_18_i_cast_fu_475_p4();
    void thread_tmp_19_i_cast_fu_485_p1();
    void thread_tmp_1_i_fu_365_p2();
    void thread_tmp_21_i_cast_fu_526_p1();
    void thread_tmp_21_i_fu_520_p2();
    void thread_tmp_23_i_cast_fu_699_p1();
    void thread_tmp_35_i_fu_315_p2();
    void thread_tmp_36_i_fu_321_p3();
    void thread_tmp_64_fu_391_p3();
    void thread_tmp_65_fu_399_p3();
    void thread_tmp_66_fu_628_p2();
    void thread_tmp_67_fu_634_p2();
    void thread_tmp_68_fu_301_p3();
    void thread_tmp_69_fu_680_p2();
    void thread_tmp_70_fu_689_p2();
    void thread_tmp_71_fu_783_p0();
    void thread_tmp_71_fu_783_p2();
    void thread_tmp_74_fu_371_p3();
    void thread_tmp_75_fu_387_p1();
    void thread_tmp_76_fu_419_p4();
    void thread_tmp_77_fu_435_p4();
    void thread_tmp_78_fu_490_p4();
    void thread_tmp_79_fu_646_p1();
    void thread_tmp_97_cast_fu_685_p1();
    void thread_tmp_9_i_cast_cast_fu_451_p3();
    void thread_tmp_fu_351_p2();
    void thread_tmp_i1_cast_fu_506_p1();
    void thread_tmp_i_fu_309_p2();
    void thread_tmp_s_fu_337_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
