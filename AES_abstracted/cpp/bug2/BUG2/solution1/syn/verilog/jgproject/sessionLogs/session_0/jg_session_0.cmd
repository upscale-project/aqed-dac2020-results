#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Wed Apr 15 22:25:19 PDT 2020
# hostname  : rsg31.stanford.edu
# pid       : 7329
# arguments : '-label' 'session_0' '-console' 'rsg31.stanford.edu:34573' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug2/BUG2/solution1/syn/verilog/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug2/BUG2/solution1/syn/verilog/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f aes.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
set_engine_mode {Bm B}
#autoprove


prove -bg -property {<embedded>::aqed_top.assert_qed_match <embedded>::aqed_top.assert_qed_match:precondition1}
