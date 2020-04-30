#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2016.09
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2016.09p002 64 bits
# build date: 2016.11.28 18:08:41 PST
#----------------------------------------
# started Wed Apr 08 16:44:53 PDT 2020
# hostname  : rsg20.stanford.edu
# pid       : 4088
# arguments : '-label' 'session_0' '-console' 'rsg20.stanford.edu:34876' '-style' 'windows' '-use_native_tcl' '-proj' '/rsgs/pool0/Saranyu/aqed/memory_core_clean3/genesis_verif_step11/jgproject/sessionLogs/session_0' '-init' '-hidden' '/rsgs/pool0/Saranyu/aqed/memory_core_clean3/genesis_verif_step11/jgproject/.tmp/.initCmds.tcl' 'jasper.tcl'

analyze -sv09 -f memory_core.flist mem_core_top_1.sv
elaborate -disable_auto_bbox -top mem_core_top
clock clk
reset -expression reset
set_engine_mode {Bm B}
prove -bg -property {<embedded>::mem_core_top.assert_qed_match}

