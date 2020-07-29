############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gsm_new_2
set_top aqed_top
add_files ../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp
add_files ../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 100 -name default
#source "./gsm_new_2/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
