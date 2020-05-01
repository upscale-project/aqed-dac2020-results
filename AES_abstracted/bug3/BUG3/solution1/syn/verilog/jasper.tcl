
analyze -sv09 -f aes.flist 
elaborate -disable_auto_bbox -top aqed_top
clock ap_clk
reset -expression ap_rst 
set_engien_mode {B Bm}
prove -bg -property {<embedded>::aqed_top.assert_qed_match}
