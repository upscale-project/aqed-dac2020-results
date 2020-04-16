
analyze -sv09 -f aes.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
#set_engine_mode {Hp Ht Bm J Q3 U L R B K AB D I AD M N AM G C AG G2 C2 Hps Hts Tri}
set_engine_mode {Bm B}
prove -bg all


