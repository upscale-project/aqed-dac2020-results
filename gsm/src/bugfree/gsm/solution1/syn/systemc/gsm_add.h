// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _gsm_add_HH_
#define _gsm_add_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct gsm_add : public sc_module {
    // Port declarations 4
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > a;
    sc_in< sc_lv<13> > b;
    sc_out< sc_lv<16> > ap_return;


    // Module declarations
    gsm_add(sc_module_name name);
    SC_HAS_PROCESS(gsm_add);

    ~gsm_add();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<13> > b_cast_fu_34_p0;
    sc_signal< sc_lv<16> > tmp_cast_fu_38_p0;
    sc_signal< sc_lv<13> > tmp_cast_19_fu_42_p0;
    sc_signal< sc_lv<17> > tmp_cast_fu_38_p1;
    sc_signal< sc_lv<17> > tmp_cast_19_fu_42_p1;
    sc_signal< sc_lv<17> > sum_fu_46_p2;
    sc_signal< sc_lv<2> > tmp_1_fu_58_p4;
    sc_signal< sc_lv<16> > b_cast_fu_34_p1;
    sc_signal< sc_lv<16> > tmp_2_fu_74_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_52_p2;
    sc_signal< sc_lv<1> > icmp_fu_68_p2;
    sc_signal< sc_lv<1> > tmp_fu_88_p2;
    sc_signal< sc_lv<16> > phitmp_fu_80_p3;
    sc_signal< sc_lv<16> > tmp_2_fu_74_p2;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<17> ap_const_lv17_18000;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<16> ap_const_lv16_8000;
    static const sc_lv<16> ap_const_lv16_7FFF;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_cast_fu_34_p0();
    void thread_b_cast_fu_34_p1();
    void thread_icmp_fu_68_p2();
    void thread_phitmp_fu_80_p3();
    void thread_sum_fu_46_p2();
    void thread_tmp_1_fu_58_p4();
    void thread_tmp_2_fu_74_p1();
    void thread_tmp_2_fu_74_p2();
    void thread_tmp_cast_19_fu_42_p0();
    void thread_tmp_cast_19_fu_42_p1();
    void thread_tmp_cast_fu_38_p0();
    void thread_tmp_cast_fu_38_p1();
    void thread_tmp_fu_88_p2();
    void thread_tmp_s_fu_52_p2();
};

}

using namespace ap_rtl;

#endif