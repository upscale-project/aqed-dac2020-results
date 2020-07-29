#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Thu Apr 16 20:18:47 PDT 2020
# hostname  : rsg26.stanford.edu
# pid       : 27017
# arguments : '-label' 'session_0' '-console' 'rsg26.stanford.edu:41118' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/gsm/cpp_bug4/gsm_new_2/verilog/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/gsm/cpp_bug4/gsm_new_2/verilog/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f gsm.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
#set_engine_mode {Hp Ht Bm J Q3 U L R B K AB D I AD M N AM G C AG G2 C2 Hps Hts Tri}
#autoprove
set_engine_mode {B Bm}


pwd
