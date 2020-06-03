
analyze -sv09 -f optical_flow.flist optical_flow.v
elaborate -disable_auto_bbox -top optical_flow
clock ap_clk
reset -expression ~ap_rst_n
prove -bg -property {<embedded>::optical_flow.assert_RB_check_1}
prove -bg -property {<embedded>::optical_flow.assert_RB_check_2}


