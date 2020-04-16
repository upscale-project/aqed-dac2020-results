############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aqed_aes
set_top aqed_top
add_files buf4.cpp
add_files buf4bug3.cpp
open_solution "buf4"
set_part {xa7a12tcsg325-1q}
create_clock -period 50 -name default
#source "./aqed_aes/buf4/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
