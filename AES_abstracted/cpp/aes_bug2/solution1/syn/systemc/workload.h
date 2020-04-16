// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _workload_HH_
#define _workload_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes256_encrypt_ecb.h"
#include "workload_local_keeOg.h"
#include "workload_local_kefYi.h"

namespace ap_rtl {

struct workload : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;
    sc_in< sc_lv<8> > data_q0;


    // Module declarations
    workload(sc_module_name name);
    SC_HAS_PROCESS(workload);

    ~workload();

    sc_trace_file* mVcdFile;

    workload_local_keeOg* local_key_0_U;
    workload_local_kefYi* local_key_1_U;
    aes256_encrypt_ecb* grp_aes256_encrypt_ecb_fu_258;
    aes256_encrypt_ecb* grp_aes256_encrypt_ecb_fu_269;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > j_reg_120;
    sc_signal< sc_lv<1> > exitcond2_fu_278_p2;
    sc_signal< sc_lv<1> > exitcond2_reg_438;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > j_2_fu_284_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > tmp_7_fu_290_p1;
    sc_signal< sc_lv<64> > tmp_7_reg_447;
    sc_signal< sc_lv<2> > j_4_fu_301_p2;
    sc_signal< sc_lv<2> > j_4_reg_472;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > tmp_1_fu_307_p2;
    sc_signal< sc_lv<2> > tmp_1_reg_477;
    sc_signal< sc_lv<1> > exitcond3_fu_295_p2;
    sc_signal< sc_lv<2> > k_2_fu_327_p2;
    sc_signal< sc_lv<2> > k_2_reg_495;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > exitcond5_fu_321_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_343_p1;
    sc_signal< sc_lv<1> > tmp_5_reg_505;
    sc_signal< sc_lv<8> > buf_1_1_2_fu_347_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > buf_1_1_3_fu_354_p3;
    sc_signal< sc_lv<8> > buf_0_0_3_reg_521;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_ap_idle;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_ap_ready;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_ap_done;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_ap_idle;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_ap_ready;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_ap_done;
    sc_signal< bool > ap_block_state9_on_subcall_done;
    sc_signal< sc_lv<8> > buf_0_1_3_reg_527;
    sc_signal< sc_lv<2> > j_5_fu_393_p2;
    sc_signal< sc_lv<2> > j_5_reg_536;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<2> > tmp_4_fu_399_p2;
    sc_signal< sc_lv<2> > tmp_4_reg_541;
    sc_signal< sc_lv<1> > exitcond6_fu_387_p2;
    sc_signal< sc_lv<2> > k_3_fu_411_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<5> > local_key_0_address0;
    sc_signal< sc_logic > local_key_0_ce0;
    sc_signal< sc_lv<8> > local_key_0_q0;
    sc_signal< sc_lv<5> > local_key_1_address0;
    sc_signal< sc_logic > local_key_1_ce0;
    sc_signal< sc_logic > local_key_1_we0;
    sc_signal< sc_lv<8> > local_key_1_q0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_ap_start;
    sc_signal< sc_lv<5> > grp_aes256_encrypt_ecb_fu_258_k_address0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_k_ce0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_258_ap_return_0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_258_ap_return_1;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_ap_start;
    sc_signal< sc_lv<5> > grp_aes256_encrypt_ecb_fu_269_k_address0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_k_ce0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_269_ap_return_0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_269_ap_return_1;
    sc_signal< sc_lv<8> > buf_0_1_reg_131;
    sc_signal< sc_lv<8> > buf_0_0_reg_143;
    sc_signal< sc_lv<1> > ap_phi_mux_i_2_phi_fu_160_p4;
    sc_signal< sc_lv<1> > i_2_reg_155;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > buf_0_1_1_reg_168;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > buf_0_0_1_reg_179;
    sc_signal< sc_lv<2> > j_1_reg_190;
    sc_signal< sc_lv<8> > buf_0_1_2_reg_201;
    sc_signal< sc_lv<8> > buf_0_0_2_reg_213;
    sc_signal< sc_lv<2> > k_reg_225;
    sc_signal< sc_lv<2> > j_3_reg_236;
    sc_signal< sc_lv<1> > exitcond_fu_405_p2;
    sc_signal< sc_lv<2> > k_1_reg_247;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_258_ap_start_reg;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_269_ap_start_reg;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > sum3_cast_fu_338_p1;
    sc_signal< sc_lv<64> > sum5_cast_fu_433_p1;
    sc_signal< sc_lv<8> > buf_1_0_fu_66;
    sc_signal< sc_lv<8> > buf_1_1_fu_70;
    sc_signal< sc_lv<2> > tmp7_fu_333_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_417_p1;
    sc_signal< sc_lv<2> > tmp8_fu_428_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_pp0_stage0;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<10> ap_ST_fsm_state11;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
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
    void thread_ap_block_state9_on_subcall_done();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_2_phi_fu_160_p4();
    void thread_ap_ready();
    void thread_buf_1_1_2_fu_347_p3();
    void thread_buf_1_1_3_fu_354_p3();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_exitcond2_fu_278_p2();
    void thread_exitcond3_fu_295_p2();
    void thread_exitcond5_fu_321_p2();
    void thread_exitcond6_fu_387_p2();
    void thread_exitcond_fu_405_p2();
    void thread_grp_aes256_encrypt_ecb_fu_258_ap_start();
    void thread_grp_aes256_encrypt_ecb_fu_269_ap_start();
    void thread_j_2_fu_284_p2();
    void thread_j_4_fu_301_p2();
    void thread_j_5_fu_393_p2();
    void thread_k_2_fu_327_p2();
    void thread_k_3_fu_411_p2();
    void thread_local_key_0_address0();
    void thread_local_key_0_ce0();
    void thread_local_key_1_address0();
    void thread_local_key_1_ce0();
    void thread_local_key_1_we0();
    void thread_sum3_cast_fu_338_p1();
    void thread_sum5_cast_fu_433_p1();
    void thread_tmp7_fu_333_p2();
    void thread_tmp8_fu_428_p2();
    void thread_tmp_1_fu_307_p2();
    void thread_tmp_4_fu_399_p2();
    void thread_tmp_5_fu_343_p1();
    void thread_tmp_6_fu_417_p1();
    void thread_tmp_7_fu_290_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
