
analyze -sv09 -f memory_core.flist mem_core_top_1.sv
elaborate -disable_auto_bbox -top mem_core_top
clock clk
reset -expression reset
set_engine_mode {Bm B}
prove -bg -property {<embedded>::mem_core_top.assert_qed_match}

