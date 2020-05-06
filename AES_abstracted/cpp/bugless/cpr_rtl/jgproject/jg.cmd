#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Sat Apr 11 21:40:37 PDT 2020
# hostname  : rsg20.stanford.edu
# pid       : 28067
# arguments : '-label' 'session_0' '-console' 'rsg20.stanford.edu:46051' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bugless/cpr_rtl/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bugless/cpr_rtl/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f aes.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
set_engine_mode {Hp Ht Bm J Q3 U L R B K AB D I AD M N AM G C AG G2 C2 Hps Hts Tri}
autoprove


visualize -violation -property <embedded>::aqed_top.assert_qed_match -new_window