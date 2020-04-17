
analyze -sv09 -f memory_core.flist mem_core_top_1.sv
elaborate -disable_auto_bbox -top mem_core_top
clock clk
reset -expression reset
autoprove


