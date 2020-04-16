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
#include "aqed_top_mux_42_8fYi.h"
#include "workload_local_keeOg.h"

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
    aes256_encrypt_ecb* grp_aes256_encrypt_ecb_fu_196;
    aqed_top_mux_42_8fYi<1,1,8,8,8,8,2,8>* aqed_top_mux_42_8fYi_U21;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > local_key_0_q0;
    sc_signal< sc_lv<3> > k_2_fu_214_p2;
    sc_signal< sc_lv<3> > k_2_reg_302;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<2> > tmp_1_fu_220_p1;
    sc_signal< sc_lv<2> > tmp_1_reg_307;
    sc_signal< sc_lv<1> > exitcond5_fu_208_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > buf_0_0_2_reg_322;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_ap_idle;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_ap_ready;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_ap_done;
    sc_signal< sc_lv<8> > buf_0_1_2_reg_328;
    sc_signal< sc_lv<3> > k_3_fu_253_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_ap_start;
    sc_signal< sc_lv<5> > grp_aes256_encrypt_ecb_fu_196_k_address0;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_k_ce0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_196_ap_return_0;
    sc_signal< sc_lv<8> > grp_aes256_encrypt_ecb_fu_196_ap_return_1;
    sc_signal< sc_lv<8> > buf_0_1_reg_79;
    sc_signal< sc_lv<1> > exitcond1_fu_247_p2;
    sc_signal< sc_lv<8> > buf_0_0_reg_91;
    sc_signal< sc_lv<1> > ap_phi_mux_i_2_phi_fu_108_p4;
    sc_signal< sc_lv<1> > i_2_reg_103;
    sc_signal< sc_lv<8> > buf_0_1_1_reg_116;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > buf_0_0_1_reg_127;
    sc_signal< sc_lv<3> > k_reg_138;
    sc_signal< sc_lv<8> > buf_0_1_1_be_reg_149;
    sc_signal< sc_lv<8> > buf_0_0_1_be_reg_167;
    sc_signal< sc_lv<3> > k_1_reg_185;
    sc_signal< sc_logic > grp_aes256_encrypt_ecb_fu_196_ap_start_reg;
    sc_signal< sc_lv<64> > sum_cast_fu_224_p1;
    sc_signal< sc_lv<64> > sum2_cast_fu_282_p1;
    sc_signal< sc_lv<8> > buf_0_3_fu_50;
    sc_signal< sc_lv<8> > buf_0_3_1_fu_54;
    sc_signal< sc_lv<8> > tmp_fu_269_p6;
    sc_signal< sc_lv<2> > tmp_4_fu_265_p1;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_i_2_phi_fu_108_p4();
    void thread_ap_ready();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_exitcond1_fu_247_p2();
    void thread_exitcond5_fu_208_p2();
    void thread_grp_aes256_encrypt_ecb_fu_196_ap_start();
    void thread_k_2_fu_214_p2();
    void thread_k_3_fu_253_p2();
    void thread_sum2_cast_fu_282_p1();
    void thread_sum_cast_fu_224_p1();
    void thread_tmp_1_fu_220_p1();
    void thread_tmp_4_fu_265_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif