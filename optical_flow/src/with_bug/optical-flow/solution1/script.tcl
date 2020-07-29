############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project optical-flow
set_top optical_flow
add_files optical_flow.cpp
open_solution "solution1"
set_part {xc7v2000tfhg1761-1} -tool vivado
create_clock -period 10 -name default
#source "./optical-flow/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
