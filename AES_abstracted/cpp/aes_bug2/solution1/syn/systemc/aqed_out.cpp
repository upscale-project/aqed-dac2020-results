// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "aqed_out.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic aqed_out::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic aqed_out::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> aqed_out::ap_ST_fsm_state1 = "1";
const sc_lv<4> aqed_out::ap_ST_fsm_state2 = "10";
const sc_lv<4> aqed_out::ap_ST_fsm_state3 = "100";
const sc_lv<4> aqed_out::ap_ST_fsm_state4 = "1000";
const sc_lv<32> aqed_out::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> aqed_out::ap_const_lv1_0 = "0";
const sc_lv<1> aqed_out::ap_const_lv1_1 = "1";
const sc_lv<32> aqed_out::ap_const_lv32_1 = "1";
const sc_lv<32> aqed_out::ap_const_lv32_2 = "10";
const sc_lv<32> aqed_out::ap_const_lv32_3 = "11";
const sc_lv<3> aqed_out::ap_const_lv3_1 = "1";
const sc_lv<16> aqed_out::ap_const_lv16_1 = "1";
const bool aqed_out::ap_const_boolean_1 = true;

aqed_out::aqed_out(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( o2_qed_done_V_fu_312_p2 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( state_qed_check_V );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_bmc_in_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( op2_fu_174_p1 );
    sensitive << ( op2_1_fu_244_p1 );

    SC_METHOD(thread_bmc_in_address1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_0128_sum_cast_fu_185_p1 );
    sensitive << ( p_056_sum_cast_fu_255_p1 );

    SC_METHOD(thread_bmc_in_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_bmc_in_ce1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_brmerge1_fu_227_p2);
    sensitive << ( state_qed_done_V_loa_reg_350 );
    sensitive << ( or_cond_not_fu_221_p2 );

    SC_METHOD(thread_brmerge_fu_156_p2);
    sensitive << ( state_qed_done_V );
    sensitive << ( tmp_not_fu_150_p2 );

    SC_METHOD(thread_o2_qed_done_V_fu_312_p2);
    sensitive << ( tmp_3_reg_390 );
    sensitive << ( state_qed_done_V_loc_reg_97 );

    SC_METHOD(thread_op2_1_fu_244_p1);
    sensitive << ( r_V_1_fu_236_p3 );

    SC_METHOD(thread_op2_fu_174_p1);
    sensitive << ( r_V_fu_166_p3 );

    SC_METHOD(thread_or_cond_fu_215_p2);
    sensitive << ( state_dup_issued_V );
    sensitive << ( tmp_s_fu_210_p2 );

    SC_METHOD(thread_or_cond_not_fu_221_p2);
    sensitive << ( or_cond_fu_215_p2 );

    SC_METHOD(thread_p_0128_sum_cast_fu_185_p1);
    sensitive << ( p_0128_sum_fu_179_p2 );

    SC_METHOD(thread_p_0128_sum_fu_179_p2);
    sensitive << ( r_V_fu_166_p3 );

    SC_METHOD(thread_p_056_sum_cast_fu_255_p1);
    sensitive << ( p_056_sum_fu_249_p2 );

    SC_METHOD(thread_p_056_sum_fu_249_p2);
    sensitive << ( r_V_1_fu_236_p3 );

    SC_METHOD(thread_p_state_qed_done_V_fl_fu_307_p2);
    sensitive << ( tmp_3_reg_390 );
    sensitive << ( state_qed_done_V_fla_reg_81 );

    SC_METHOD(thread_r_V_1_fu_236_p3);
    sensitive << ( state_dup_idx_V );

    SC_METHOD(thread_r_V_fu_166_p3);
    sensitive << ( state_orig_idx_V );

    SC_METHOD(thread_rev1_fu_138_p2);
    sensitive << ( ult_fu_132_p2 );

    SC_METHOD(thread_state_orig_done_V);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );
    sensitive << ( rev1_fu_138_p2 );

    SC_METHOD(thread_state_orig_done_V_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );

    SC_METHOD(thread_state_orig_issued_V_s_load_fu_110_p1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( state_orig_issued_V );

    SC_METHOD(thread_tmp_1_fu_264_p2);
    sensitive << ( bmc_in_q0 );
    sensitive << ( state_orig_out_V_0 );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );
    sensitive << ( brmerge1_reg_376 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_2_fu_274_p2);
    sensitive << ( bmc_in_q1 );
    sensitive << ( state_orig_out_V_1 );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );
    sensitive << ( brmerge1_reg_376 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_3_fu_292_p2);
    sensitive << ( state_dup_in_V );
    sensitive << ( state_out_count_V_lo_reg_343 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_4_fu_296_p2);
    sensitive << ( state_out_count_V_lo_reg_343 );

    SC_METHOD(thread_tmp_not_fu_150_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( state_out_count_V );
    sensitive << ( state_orig_in_V );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );

    SC_METHOD(thread_tmp_s_fu_210_p2);
    sensitive << ( state_dup_in_V );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );
    sensitive << ( state_out_count_V_lo_reg_343 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ult_fu_132_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( state_out_count_V );
    sensitive << ( state_orig_in_V );
    sensitive << ( state_orig_issued_V_s_load_fu_110_p1 );

    SC_METHOD(thread_val_assign_5_fu_280_p2);
    sensitive << ( tmp_1_fu_264_p2 );
    sensitive << ( tmp_2_fu_274_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "0001";
    state_out_count_V = "0000000000000000";
    state_qed_done_V = "0";
    state_orig_out_V_0 = "00000000";
    state_orig_out_V_1 = "00000000";
    state_qed_check_V = "0";
    ap_return_0_preg = "0";
    ap_return_1_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "aqed_out_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, state_orig_issued_V, "(port)state_orig_issued_V");
    sc_trace(mVcdFile, state_orig_in_V, "(port)state_orig_in_V");
    sc_trace(mVcdFile, state_orig_done_V, "(port)state_orig_done_V");
    sc_trace(mVcdFile, state_orig_done_V_ap_vld, "(port)state_orig_done_V_ap_vld");
    sc_trace(mVcdFile, state_orig_idx_V, "(port)state_orig_idx_V");
    sc_trace(mVcdFile, bmc_in_address0, "(port)bmc_in_address0");
    sc_trace(mVcdFile, bmc_in_ce0, "(port)bmc_in_ce0");
    sc_trace(mVcdFile, bmc_in_q0, "(port)bmc_in_q0");
    sc_trace(mVcdFile, bmc_in_address1, "(port)bmc_in_address1");
    sc_trace(mVcdFile, bmc_in_ce1, "(port)bmc_in_ce1");
    sc_trace(mVcdFile, bmc_in_q1, "(port)bmc_in_q1");
    sc_trace(mVcdFile, state_dup_in_V, "(port)state_dup_in_V");
    sc_trace(mVcdFile, state_dup_issued_V, "(port)state_dup_issued_V");
    sc_trace(mVcdFile, state_dup_idx_V, "(port)state_dup_idx_V");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, state_out_count_V, "state_out_count_V");
    sc_trace(mVcdFile, state_qed_done_V, "state_qed_done_V");
    sc_trace(mVcdFile, state_orig_out_V_0, "state_orig_out_V_0");
    sc_trace(mVcdFile, state_orig_out_V_1, "state_orig_out_V_1");
    sc_trace(mVcdFile, state_qed_check_V, "state_qed_check_V");
    sc_trace(mVcdFile, state_orig_issued_V_s_load_fu_110_p1, "state_orig_issued_V_s_load_fu_110_p1");
    sc_trace(mVcdFile, state_out_count_V_lo_reg_343, "state_out_count_V_lo_reg_343");
    sc_trace(mVcdFile, state_qed_done_V_loa_reg_350, "state_qed_done_V_loa_reg_350");
    sc_trace(mVcdFile, brmerge_fu_156_p2, "brmerge_fu_156_p2");
    sc_trace(mVcdFile, brmerge_reg_357, "brmerge_reg_357");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, brmerge1_fu_227_p2, "brmerge1_fu_227_p2");
    sc_trace(mVcdFile, brmerge1_reg_376, "brmerge1_reg_376");
    sc_trace(mVcdFile, tmp_3_fu_292_p2, "tmp_3_fu_292_p2");
    sc_trace(mVcdFile, tmp_3_reg_390, "tmp_3_reg_390");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, state_qed_done_V_fla_reg_81, "state_qed_done_V_fla_reg_81");
    sc_trace(mVcdFile, state_qed_done_V_loc_reg_97, "state_qed_done_V_loc_reg_97");
    sc_trace(mVcdFile, op2_fu_174_p1, "op2_fu_174_p1");
    sc_trace(mVcdFile, p_0128_sum_cast_fu_185_p1, "p_0128_sum_cast_fu_185_p1");
    sc_trace(mVcdFile, op2_1_fu_244_p1, "op2_1_fu_244_p1");
    sc_trace(mVcdFile, p_056_sum_cast_fu_255_p1, "p_056_sum_cast_fu_255_p1");
    sc_trace(mVcdFile, tmp_4_fu_296_p2, "tmp_4_fu_296_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, p_state_qed_done_V_fl_fu_307_p2, "p_state_qed_done_V_fl_fu_307_p2");
    sc_trace(mVcdFile, val_assign_5_fu_280_p2, "val_assign_5_fu_280_p2");
    sc_trace(mVcdFile, rev1_fu_138_p2, "rev1_fu_138_p2");
    sc_trace(mVcdFile, ult_fu_132_p2, "ult_fu_132_p2");
    sc_trace(mVcdFile, tmp_not_fu_150_p2, "tmp_not_fu_150_p2");
    sc_trace(mVcdFile, r_V_fu_166_p3, "r_V_fu_166_p3");
    sc_trace(mVcdFile, p_0128_sum_fu_179_p2, "p_0128_sum_fu_179_p2");
    sc_trace(mVcdFile, tmp_s_fu_210_p2, "tmp_s_fu_210_p2");
    sc_trace(mVcdFile, or_cond_fu_215_p2, "or_cond_fu_215_p2");
    sc_trace(mVcdFile, or_cond_not_fu_221_p2, "or_cond_not_fu_221_p2");
    sc_trace(mVcdFile, r_V_1_fu_236_p3, "r_V_1_fu_236_p3");
    sc_trace(mVcdFile, p_056_sum_fu_249_p2, "p_056_sum_fu_249_p2");
    sc_trace(mVcdFile, tmp_1_fu_264_p2, "tmp_1_fu_264_p2");
    sc_trace(mVcdFile, tmp_2_fu_274_p2, "tmp_2_fu_274_p2");
    sc_trace(mVcdFile, o2_qed_done_V_fu_312_p2, "o2_qed_done_V_fu_312_p2");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

aqed_out::~aqed_out() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void aqed_out::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_return_0_preg = o2_qed_done_V_fu_312_p2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv1_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_return_1_preg = state_qed_check_V.read();
        }
    }
    if (((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge1_fu_227_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, state_orig_issued_V_s_load_fu_110_p1.read())))) {
        state_qed_done_V_fla_reg_81 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge1_reg_376.read()))) {
        state_qed_done_V_fla_reg_81 = ap_const_lv1_1;
    }
    if (((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge1_fu_227_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, state_orig_issued_V_s_load_fu_110_p1.read())))) {
        state_qed_done_V_loc_reg_97 = state_qed_done_V_loa_reg_350.read();
    } else if ((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge1_reg_376.read()))) {
        state_qed_done_V_loc_reg_97 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        brmerge1_reg_376 = brmerge1_fu_227_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1))) {
        brmerge_reg_357 = brmerge_fu_156_p2.read();
    }
    if ((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge_reg_357.read()))) {
        state_orig_out_V_0 = bmc_in_q0.read();
        state_orig_out_V_1 = bmc_in_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        state_out_count_V = tmp_4_fu_296_p2.read();
        tmp_3_reg_390 = tmp_3_fu_292_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        state_out_count_V_lo_reg_343 = state_out_count_V.read();
        state_qed_done_V_loa_reg_350 = state_qed_done_V.read();
    }
    if ((esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, brmerge1_reg_376.read()))) {
        state_qed_check_V = val_assign_5_fu_280_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, p_state_qed_done_V_fl_fu_307_p2.read()))) {
        state_qed_done_V = ap_const_lv1_1;
    }
}

void aqed_out::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void aqed_out::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void aqed_out::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void aqed_out::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void aqed_out::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void aqed_out::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void aqed_out::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void aqed_out::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_return_0 = o2_qed_done_V_fu_312_p2.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void aqed_out::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_return_1 = state_qed_check_V.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void aqed_out::thread_bmc_in_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        bmc_in_address0 =  (sc_lv<4>) (op2_1_fu_244_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        bmc_in_address0 =  (sc_lv<4>) (op2_fu_174_p1.read());
    } else {
        bmc_in_address0 = "XXXX";
    }
}

void aqed_out::thread_bmc_in_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        bmc_in_address1 =  (sc_lv<4>) (p_056_sum_cast_fu_255_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        bmc_in_address1 =  (sc_lv<4>) (p_0128_sum_cast_fu_185_p1.read());
    } else {
        bmc_in_address1 = "XXXX";
    }
}

void aqed_out::thread_bmc_in_ce0() {
    if (((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        bmc_in_ce0 = ap_const_logic_1;
    } else {
        bmc_in_ce0 = ap_const_logic_0;
    }
}

void aqed_out::thread_bmc_in_ce1() {
    if (((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        bmc_in_ce1 = ap_const_logic_1;
    } else {
        bmc_in_ce1 = ap_const_logic_0;
    }
}

void aqed_out::thread_brmerge1_fu_227_p2() {
    brmerge1_fu_227_p2 = (state_qed_done_V_loa_reg_350.read() | or_cond_not_fu_221_p2.read());
}

void aqed_out::thread_brmerge_fu_156_p2() {
    brmerge_fu_156_p2 = (state_qed_done_V.read() | tmp_not_fu_150_p2.read());
}

void aqed_out::thread_o2_qed_done_V_fu_312_p2() {
    o2_qed_done_V_fu_312_p2 = (tmp_3_reg_390.read() | state_qed_done_V_loc_reg_97.read());
}

void aqed_out::thread_op2_1_fu_244_p1() {
    op2_1_fu_244_p1 = esl_zext<64,3>(r_V_1_fu_236_p3.read());
}

void aqed_out::thread_op2_fu_174_p1() {
    op2_fu_174_p1 = esl_zext<64,3>(r_V_fu_166_p3.read());
}

void aqed_out::thread_or_cond_fu_215_p2() {
    or_cond_fu_215_p2 = (state_dup_issued_V.read() & tmp_s_fu_210_p2.read());
}

void aqed_out::thread_or_cond_not_fu_221_p2() {
    or_cond_not_fu_221_p2 = (or_cond_fu_215_p2.read() ^ ap_const_lv1_1);
}

void aqed_out::thread_p_0128_sum_cast_fu_185_p1() {
    p_0128_sum_cast_fu_185_p1 = esl_zext<64,3>(p_0128_sum_fu_179_p2.read());
}

void aqed_out::thread_p_0128_sum_fu_179_p2() {
    p_0128_sum_fu_179_p2 = (r_V_fu_166_p3.read() | ap_const_lv3_1);
}

void aqed_out::thread_p_056_sum_cast_fu_255_p1() {
    p_056_sum_cast_fu_255_p1 = esl_zext<64,3>(p_056_sum_fu_249_p2.read());
}

void aqed_out::thread_p_056_sum_fu_249_p2() {
    p_056_sum_fu_249_p2 = (r_V_1_fu_236_p3.read() | ap_const_lv3_1);
}

void aqed_out::thread_p_state_qed_done_V_fl_fu_307_p2() {
    p_state_qed_done_V_fl_fu_307_p2 = (tmp_3_reg_390.read() | state_qed_done_V_fla_reg_81.read());
}

void aqed_out::thread_r_V_1_fu_236_p3() {
    r_V_1_fu_236_p3 = esl_concat<2,1>(state_dup_idx_V.read(), ap_const_lv1_0);
}

void aqed_out::thread_r_V_fu_166_p3() {
    r_V_fu_166_p3 = esl_concat<2,1>(state_orig_idx_V.read(), ap_const_lv1_0);
}

void aqed_out::thread_rev1_fu_138_p2() {
    rev1_fu_138_p2 = (ult_fu_132_p2.read() ^ ap_const_lv1_1);
}

void aqed_out::thread_state_orig_done_V() {
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        if (esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1)) {
            state_orig_done_V = rev1_fu_138_p2.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, state_orig_issued_V_s_load_fu_110_p1.read())) {
            state_orig_done_V = ap_const_lv1_0;
        } else {
            state_orig_done_V =  (sc_lv<1>) ("X");
        }
    } else {
        state_orig_done_V =  (sc_lv<1>) ("X");
    }
}

void aqed_out::thread_state_orig_done_V_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(state_orig_issued_V_s_load_fu_110_p1.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, state_orig_issued_V_s_load_fu_110_p1.read())))) {
        state_orig_done_V_ap_vld = ap_const_logic_1;
    } else {
        state_orig_done_V_ap_vld = ap_const_logic_0;
    }
}

void aqed_out::thread_state_orig_issued_V_s_load_fu_110_p1() {
    state_orig_issued_V_s_load_fu_110_p1 = state_orig_issued_V.read();
}

void aqed_out::thread_tmp_1_fu_264_p2() {
    tmp_1_fu_264_p2 = (!bmc_in_q0.read().is_01() || !state_orig_out_V_0.read().is_01())? sc_lv<1>(): sc_lv<1>(bmc_in_q0.read() == state_orig_out_V_0.read());
}

void aqed_out::thread_tmp_2_fu_274_p2() {
    tmp_2_fu_274_p2 = (!bmc_in_q1.read().is_01() || !state_orig_out_V_1.read().is_01())? sc_lv<1>(): sc_lv<1>(bmc_in_q1.read() == state_orig_out_V_1.read());
}

void aqed_out::thread_tmp_3_fu_292_p2() {
    tmp_3_fu_292_p2 = (!state_out_count_V_lo_reg_343.read().is_01() || !state_dup_in_V.read().is_01())? sc_lv<1>(): (sc_biguint<16>(state_out_count_V_lo_reg_343.read()) > sc_biguint<16>(state_dup_in_V.read()));
}

void aqed_out::thread_tmp_4_fu_296_p2() {
    tmp_4_fu_296_p2 = (!state_out_count_V_lo_reg_343.read().is_01() || !ap_const_lv16_1.is_01())? sc_lv<16>(): (sc_biguint<16>(state_out_count_V_lo_reg_343.read()) + sc_biguint<16>(ap_const_lv16_1));
}

void aqed_out::thread_tmp_not_fu_150_p2() {
    tmp_not_fu_150_p2 = (!state_out_count_V.read().is_01() || !state_orig_in_V.read().is_01())? sc_lv<1>(): sc_lv<1>(state_out_count_V.read() != state_orig_in_V.read());
}

void aqed_out::thread_tmp_s_fu_210_p2() {
    tmp_s_fu_210_p2 = (!state_out_count_V_lo_reg_343.read().is_01() || !state_dup_in_V.read().is_01())? sc_lv<1>(): sc_lv<1>(state_out_count_V_lo_reg_343.read() == state_dup_in_V.read());
}

void aqed_out::thread_ult_fu_132_p2() {
    ult_fu_132_p2 = (!state_out_count_V.read().is_01() || !state_orig_in_V.read().is_01())? sc_lv<1>(): (sc_biguint<16>(state_out_count_V.read()) < sc_biguint<16>(state_orig_in_V.read()));
}

void aqed_out::thread_val_assign_5_fu_280_p2() {
    val_assign_5_fu_280_p2 = (tmp_1_fu_264_p2.read() & tmp_2_fu_274_p2.read());
}

void aqed_out::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}
