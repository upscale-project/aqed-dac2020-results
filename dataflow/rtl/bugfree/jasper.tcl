
analyze -sv09 -f dataflow.flist dataflow_stalls_kernel.v
elaborate -disable_auto_bbox -top dataflow_stalls_kernel
clock ap_clk
reset -expression ~ap_rst_n
set_engine_mode {B Bm}
autoprove


