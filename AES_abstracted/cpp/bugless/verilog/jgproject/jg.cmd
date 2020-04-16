#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Wed Apr 15 15:53:08 PDT 2020
# hostname  : rsg31.stanford.edu
# pid       : 4911
# arguments : '-label' 'session_0' '-console' 'rsg31.stanford.edu:37439' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bugless/BUGLESS/solution1/syn/verilog/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bugless/BUGLESS/solution1/syn/verilog/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f aes.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
set_engine_mode {Hp Ht Bm J Q3 U L R B K AB D I AD M N AM G C AG G2 C2 Hps Hts Tri}
autoprove


source jasper.tcl
source jasper.tcl
set_engine_mode {Bm B}
prove -bg -property {<embedded>::aqed_top.assert_qed_match}
source jasper.tcl
prove -bg -property {<embedded>::aqed_top.assert_qed_match <embedded>::aqed_top.assert_qed_match:precondition1}
visualize -violation -property <embedded>::aqed_top.assert_qed_match -new_window
source jasper.tcl
prove -bg -property {<embedded>::aqed_top.assert_qed_match <embedded>::aqed_top.assert_qed_match:precondition1}
visualize -violation -property <embedded>::aqed_top.assert_qed_match -new_window
source jasper.tcl
source jasper.tcl
prove -bg -property {<embedded>::aqed_top.assert_qed_match <embedded>::aqed_top.assert_qed_match:precondition1}
prove -bg -all
visualize -property <embedded>::aqed_top.assume_stable_orig_idx:precondition1 -new_window
visualize -min_length [expr [visualize -get_length -window visualize:0] + 100] -window visualize:0; visualize -freeze [visualize -get_length -window visualize:0] -window visualize:0; visualize -replot -bg -window visualize:0
visualize -min_length [expr [visualize -get_length -window visualize:0] + 50] -window visualize:0; visualize -freeze [visualize -get_length -window visualize:0] -window visualize:0; visualize -replot -bg -window visualize:0
visualize -at_least_once {((state_dup_issued_V == 1'b1) && (state_orig_issued_V == 1'b1))} {1:$} -name viz_conf:0 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -at_least_once {((dup_V == 1'b1) && (orig_V == 1'b1))} {5:$} -name viz_conf:0 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -force {((dup_V == 1'b1) && (orig_V == 1'b1))} {4:$} -name viz_conf:0 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -force {((dup_V == 1'b1) && (orig_V == 1'b1))} {1:$} -name viz_conf:0 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -min_length [expr [visualize -get_length -window visualize:0] + 150] -window visualize:0; visualize -freeze [visualize -get_length -window visualize:0] -window visualize:0; visualize -replot -bg -window visualize:0
visualize -force {(dup_idx == 32'h00000001)} {1:$} -name viz_conf:1 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_forward -window {visualize:0}
visualize -force {(dup_idx == 32'h0000001)} {1:$} -name viz_conf:1 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -min_length [expr [visualize -get_length -window visualize:0] + 150] -window visualize:0; visualize -freeze [visualize -get_length -window visualize:0] -window visualize:0; visualize -replot -bg -window visualize:0
visualize -force {(ap_start == 1'b1)} {1:$} -name viz_conf:2 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -go_backward -window {visualize:0}
visualize -force {(ap_start == 1'b1)} {1:$} -name viz_conf:2 -window visualize:0
visualize -replot -bg -window {visualize:0}
visualize -min_length [expr [visualize -get_length -window visualize:0] + 150] -window visualize:0; visualize -freeze [visualize -get_length -window visualize:0] -window visualize:0; visualize -replot -bg -window visualize:0
