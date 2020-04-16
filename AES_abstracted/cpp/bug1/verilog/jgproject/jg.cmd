#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Sun Apr 12 17:27:50 PDT 2020
# hostname  : rsg27.stanford.edu
# pid       : 18532
# arguments : '-label' 'session_0' '-console' 'rsg27.stanford.edu:45984' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug1/BUG1/solution1/syn/verilog/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug1/BUG1/solution1/syn/verilog/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f aes.flist 
source jasper.tcl
source jasper.tcl
source jasper.tcl
source jasper.tcl
visualize -violation -property <embedded>::aqed_top.assert_qed_match -new_window
source jasper.tcl
source jasper.tcl
visualize -violation -property <embedded>::aqed_top.assert_qed_match -new_window
source jasper.tcl
prove -bg -property {<embedded>::aqed_top.assert_qed_match}
