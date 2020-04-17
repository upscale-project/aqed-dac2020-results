
analyze -sv09 -f optical_flow.flist optical_flow.v
elaborate -disable_auto_bbox -top optical_flow
clock ap_clk
reset -expression ~ap_rst_n


