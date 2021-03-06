// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "gather.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic gather::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic gather::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> gather::ap_ST_fsm_state1 = "1";
const sc_lv<3> gather::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> gather::ap_ST_fsm_state4 = "100";
const sc_lv<32> gather::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool gather::ap_const_boolean_1 = true;
const sc_lv<32> gather::ap_const_lv32_1 = "1";
const bool gather::ap_const_boolean_0 = false;
const sc_lv<1> gather::ap_const_lv1_1 = "1";
const sc_lv<1> gather::ap_const_lv1_0 = "0";
const sc_lv<32> gather::ap_const_lv32_2 = "10";

gather::gather(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( to_V_full_n );
    sensitive << ( from0_V_empty_n );
    sensitive << ( from1_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_predicate_op22_read_state2 );
    sensitive << ( ap_predicate_op30_write_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( to_V_full_n );
    sensitive << ( from0_V_empty_n );
    sensitive << ( from1_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_predicate_op22_read_state2 );
    sensitive << ( ap_predicate_op30_write_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( to_V_full_n );
    sensitive << ( from0_V_empty_n );
    sensitive << ( from1_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_predicate_op22_read_state2 );
    sensitive << ( ap_predicate_op30_write_state3 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( data_count_empty_n );
    sensitive << ( data_count_out_full_n );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);
    sensitive << ( from0_V_empty_n );
    sensitive << ( from1_V_empty_n );
    sensitive << ( ap_predicate_op22_read_state2 );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( to_V_full_n );
    sensitive << ( ap_predicate_op30_write_state3 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( tmp_i_fu_167_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_predicate_op22_read_state2);
    sensitive << ( tmp_i_fu_167_p2 );
    sensitive << ( tmp_nbreadreq_fu_124_p3 );
    sensitive << ( tmp_1_nbreadreq_fu_132_p3 );

    SC_METHOD(thread_ap_predicate_op30_write_state3);
    sensitive << ( tmp_reg_204 );
    sensitive << ( tmp_1_reg_208 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_data_count_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_empty_n );

    SC_METHOD(thread_data_count_out_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_out_full_n );

    SC_METHOD(thread_data_count_out_din);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_dout );
    sensitive << ( data_count_empty_n );
    sensitive << ( data_count_out_full_n );

    SC_METHOD(thread_data_count_out_write);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_empty_n );
    sensitive << ( data_count_out_full_n );

    SC_METHOD(thread_data_count_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_empty_n );
    sensitive << ( data_count_out_full_n );

    SC_METHOD(thread_from0_V_blk_n);
    sensitive << ( from0_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( tmp_i_fu_167_p2 );
    sensitive << ( tmp_nbreadreq_fu_124_p3 );
    sensitive << ( tmp_1_nbreadreq_fu_132_p3 );

    SC_METHOD(thread_from0_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_predicate_op22_read_state2 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_from1_V_blk_n);
    sensitive << ( from1_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( tmp_i_fu_167_p2 );
    sensitive << ( tmp_nbreadreq_fu_124_p3 );
    sensitive << ( tmp_1_nbreadreq_fu_132_p3 );

    SC_METHOD(thread_from1_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_predicate_op22_read_state2 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_i_fu_178_p2);
    sensitive << ( i_1_fu_106 );

    SC_METHOD(thread_tmp_1_nbreadreq_fu_132_p3);
    sensitive << ( from1_V_empty_n );

    SC_METHOD(thread_tmp_4_fu_172_p2);
    sensitive << ( from0_V_dout );
    sensitive << ( from1_V_dout );

    SC_METHOD(thread_tmp_i_fu_167_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( data_count_read_reg_196 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( i_1_fu_106 );

    SC_METHOD(thread_tmp_nbreadreq_fu_124_p3);
    sensitive << ( from0_V_empty_n );

    SC_METHOD(thread_to_V_blk_n);
    sensitive << ( to_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_204 );
    sensitive << ( tmp_1_reg_208 );

    SC_METHOD(thread_to_V_din);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op30_write_state3 );
    sensitive << ( tmp_4_reg_212 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_to_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op30_write_state3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_count_empty_n );
    sensitive << ( data_count_out_full_n );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( tmp_i_fu_167_p2 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "gather_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, to_V_din, "(port)to_V_din");
    sc_trace(mVcdFile, to_V_full_n, "(port)to_V_full_n");
    sc_trace(mVcdFile, to_V_write, "(port)to_V_write");
    sc_trace(mVcdFile, from0_V_dout, "(port)from0_V_dout");
    sc_trace(mVcdFile, from0_V_empty_n, "(port)from0_V_empty_n");
    sc_trace(mVcdFile, from0_V_read, "(port)from0_V_read");
    sc_trace(mVcdFile, from1_V_dout, "(port)from1_V_dout");
    sc_trace(mVcdFile, from1_V_empty_n, "(port)from1_V_empty_n");
    sc_trace(mVcdFile, from1_V_read, "(port)from1_V_read");
    sc_trace(mVcdFile, data_count_dout, "(port)data_count_dout");
    sc_trace(mVcdFile, data_count_empty_n, "(port)data_count_empty_n");
    sc_trace(mVcdFile, data_count_read, "(port)data_count_read");
    sc_trace(mVcdFile, data_count_out_din, "(port)data_count_out_din");
    sc_trace(mVcdFile, data_count_out_full_n, "(port)data_count_out_full_n");
    sc_trace(mVcdFile, data_count_out_write, "(port)data_count_out_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, to_V_blk_n, "to_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, tmp_reg_204, "tmp_reg_204");
    sc_trace(mVcdFile, tmp_1_reg_208, "tmp_1_reg_208");
    sc_trace(mVcdFile, from0_V_blk_n, "from0_V_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_i_fu_167_p2, "tmp_i_fu_167_p2");
    sc_trace(mVcdFile, tmp_nbreadreq_fu_124_p3, "tmp_nbreadreq_fu_124_p3");
    sc_trace(mVcdFile, tmp_1_nbreadreq_fu_132_p3, "tmp_1_nbreadreq_fu_132_p3");
    sc_trace(mVcdFile, from1_V_blk_n, "from1_V_blk_n");
    sc_trace(mVcdFile, data_count_blk_n, "data_count_blk_n");
    sc_trace(mVcdFile, data_count_out_blk_n, "data_count_out_blk_n");
    sc_trace(mVcdFile, data_count_read_reg_196, "data_count_read_reg_196");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_predicate_op22_read_state2, "ap_predicate_op22_read_state2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_predicate_op30_write_state3, "ap_predicate_op30_write_state3");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, tmp_4_fu_172_p2, "tmp_4_fu_172_p2");
    sc_trace(mVcdFile, tmp_4_reg_212, "tmp_4_reg_212");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, i_1_fu_106, "i_1_fu_106");
    sc_trace(mVcdFile, i_fu_178_p2, "i_fu_178_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

gather::~gather() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void gather::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        i_1_fu_106 = i_fu_178_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
        i_1_fu_106 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
        data_count_read_reg_196 = data_count_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_i_fu_167_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_nbreadreq_fu_124_p3.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_1_reg_208 =  (sc_lv<1>) (from1_V_empty_n.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_4_reg_212 = tmp_4_fu_172_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_i_fu_167_p2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_reg_204 =  (sc_lv<1>) (from0_V_empty_n.read());
    }
}

void gather::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void gather::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void gather::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void gather::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void gather::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, from0_V_empty_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, from1_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, to_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op30_write_state3.read())));
}

void gather::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, from0_V_empty_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, from1_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, to_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op30_write_state3.read())));
}

void gather::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  ((esl_seteq<1,1,1>(ap_const_logic_0, from0_V_empty_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
    esl_seteq<1,1,1>(ap_const_logic_0, from1_V_empty_n.read())))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, to_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op30_write_state3.read())));
}

void gather::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read()));
}

void gather::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = ((esl_seteq<1,1,1>(ap_const_logic_0, from0_V_empty_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read())) || (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, from1_V_empty_n.read())));
}

void gather::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_logic_0, to_V_full_n.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op30_write_state3.read()));
}

void gather::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(tmp_i_fu_167_p2.read(), ap_const_lv1_0)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void gather::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void gather::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void gather::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void gather::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void gather::thread_ap_predicate_op22_read_state2() {
    ap_predicate_op22_read_state2 = (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_i_fu_167_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_nbreadreq_fu_124_p3.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_nbreadreq_fu_132_p3.read()));
}

void gather::thread_ap_predicate_op30_write_state3() {
    ap_predicate_op30_write_state3 = (esl_seteq<1,1,1>(tmp_reg_204.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_reg_208.read()));
}

void gather::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void gather::thread_data_count_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        data_count_blk_n = data_count_empty_n.read();
    } else {
        data_count_blk_n = ap_const_logic_1;
    }
}

void gather::thread_data_count_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        data_count_out_blk_n = data_count_out_full_n.read();
    } else {
        data_count_out_blk_n = ap_const_logic_1;
    }
}

void gather::thread_data_count_out_din() {
    data_count_out_din = data_count_dout.read();
}

void gather::thread_data_count_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
        data_count_out_write = ap_const_logic_1;
    } else {
        data_count_out_write = ap_const_logic_0;
    }
}

void gather::thread_data_count_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
        data_count_read = ap_const_logic_1;
    } else {
        data_count_read = ap_const_logic_0;
    }
}

void gather::thread_from0_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_i_fu_167_p2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_nbreadreq_fu_124_p3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_nbreadreq_fu_132_p3.read()))) {
        from0_V_blk_n = from0_V_empty_n.read();
    } else {
        from0_V_blk_n = ap_const_logic_1;
    }
}

void gather::thread_from0_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        from0_V_read = ap_const_logic_1;
    } else {
        from0_V_read = ap_const_logic_0;
    }
}

void gather::thread_from1_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_i_fu_167_p2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_nbreadreq_fu_124_p3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_nbreadreq_fu_132_p3.read()))) {
        from1_V_blk_n = from1_V_empty_n.read();
    } else {
        from1_V_blk_n = ap_const_logic_1;
    }
}

void gather::thread_from1_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op22_read_state2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        from1_V_read = ap_const_logic_1;
    } else {
        from1_V_read = ap_const_logic_0;
    }
}

void gather::thread_i_fu_178_p2() {
    i_fu_178_p2 = (!i_1_fu_106.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(i_1_fu_106.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void gather::thread_tmp_1_nbreadreq_fu_132_p3() {
    tmp_1_nbreadreq_fu_132_p3 =  (sc_lv<1>) (from1_V_empty_n.read());
}

void gather::thread_tmp_4_fu_172_p2() {
    tmp_4_fu_172_p2 = (!from0_V_dout.read().is_01() || !from1_V_dout.read().is_01())? sc_lv<64>(): (sc_biguint<64>(from0_V_dout.read()) - sc_biguint<64>(from1_V_dout.read()));
}

void gather::thread_tmp_i_fu_167_p2() {
    tmp_i_fu_167_p2 = (!i_1_fu_106.read().is_01() || !data_count_read_reg_196.read().is_01())? sc_lv<1>(): (sc_biguint<32>(i_1_fu_106.read()) < sc_biguint<32>(data_count_read_reg_196.read()));
}

void gather::thread_tmp_nbreadreq_fu_124_p3() {
    tmp_nbreadreq_fu_124_p3 =  (sc_lv<1>) (from0_V_empty_n.read());
}

void gather::thread_to_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_204.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_reg_208.read()))) {
        to_V_blk_n = to_V_full_n.read();
    } else {
        to_V_blk_n = ap_const_logic_1;
    }
}

void gather::thread_to_V_din() {
    to_V_din = tmp_4_reg_212.read();
}

void gather::thread_to_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op30_write_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        to_V_write = ap_const_logic_1;
    } else {
        to_V_write = ap_const_logic_0;
    }
}

void gather::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, data_count_out_full_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_i_fu_167_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_i_fu_167_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

