############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_aqed_bug3
set_top aqed_top
add_files buf4bug3.cpp
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 100 -name default
#source "./aes_aqed_bug3/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
