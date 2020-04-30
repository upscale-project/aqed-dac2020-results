

// ------------------------------------------------------------------
//  Design Unit:    AQED_Adder_top
// ------------------------------------------------------------------

module mem_core_top (
    clk, reset, data_in, exec_dup, wen_in_1
);
logic [15:0] stencil_width;
logic        arbitrary_addr;
logic [15:0] starting_addr;
logic [31:0] iter_cnt;
logic [3:0]  dimensionality;
logic        rate_matched;   
logic [15:0] stride_0;
logic [15:0] stride_1;
logic [15:0] stride_2;
logic [15:0] stride_3;
logic [15:0] stride_4;
logic [15:0] stride_5;
logic [31:0] range_0;
logic [31:0] range_1;
logic [31:0] range_2;
logic [31:0] range_3;
logic [31:0] range_4;
logic [31:0] range_5;
logic circular_en;
logic  [3:0]      almost_count;
logic             enable_chain;
logic  [1:0]      mode;
logic             tile_en;
logic  [3:0]      chain_idx;
logic  [15:0]     depth;


  input logic clk;
  input logic reset;
  input logic exec_dup;
  input logic wen_in_1;
  input logic [15:0] data_in;

logic clk_en;
logic flush;
// Normal Ports
logic [15:0] addr_in;
logic ren_in;
logic [15:0] data_out;
logic [15:0] data_out_in;
logic valid_out;
// Chaining
logic [15:0] chain_in;
logic [15:0] chain_out;
logic chain_valid_out;
logic chain_wen_in;
// db switch
logic switch_db;
// Status
logic almost_full;
logic almost_empty;
logic full;
logic empty;
// Config port for SRAM features (1-4)
logic [31:0] config_addr;
logic [31:0] config_data;
logic config_read;
logic config_write;
logic [3:0] config_en_sram;
logic [31:0] read_config_data;
//
logic [31:0] read_data_sram_0;
logic [31:0] read_data_sram_1;
logic [31:0] read_data_sram_2;
logic [31:0] read_data_sram_3;

//assign full = 'b0;
//assign empty = 'b0; 
memory_core DUT(
   .clk(clk), 
   .clk_en(clk_en), 
   .reset(reset), 
   .flush(flush), 

   .addr_in(addr_in),
   .data_in(data_out), 
   .data_out(data_out_in), 
   .wen_in(wen_in), 
   .ren_in(ren_in), 
   .valid_out(valid_out), 

   .chain_in(chain_in),
   .chain_out(chain_out),
   .chain_wen_in(chain_wen_in),
   .chain_valid_out(chain_valid_out),

   .full(full),
   .empty(empty),
   .almost_full(almost_full), 
   .almost_empty(almost_empty), 

   .switch_db(switch_db),
 //.rate_matched(rate_matched),

   .config_addr(config_addr), 
   .config_data(config_data), 
   .config_read(config_read), 
   .config_write(config_write), 
   .config_en_sram(config_en_sram), 
   .read_data_sram_0(read_data_sram_0),
   .read_data_sram_1(read_data_sram_1),
   .read_data_sram_2(read_data_sram_2),
   .read_data_sram_3(read_data_sram_3),
   .read_config_data(read_config_data),
   .stencil_width(stencil_width),
   .arbitrary_addr(arbitrary_addr),
   .starting_addr(starting_addr),
   .iter_cnt(iter_cnt),
   .dimensionality(dimensionality),
   .stride_0(stride_0),
   .stride_1(stride_1),
   .stride_2(stride_2),
   .stride_3(stride_3),
   .stride_4(stride_4),
   .stride_5(stride_5),
  .range_0(range_0),
  .range_1(range_1),
  .range_2(range_2),
  .range_3(range_3),
  .range_4(range_4),
  .range_5(range_5),
  .circular_en(circular_en),
  .almost_count(almost_count),
  .enable_chain(enable_chain),
  .mode(mode),
  .tile_en(tile_en),
  .depth(depth),
  .chain_idx(chain_idx)
);

aqed_top aqed(.clk(clk), .clk_en(clk_en), .reset(reset), .bmc_in_rsc_dat(data_in), .bmc_v_rsc_dat(wen_in_1), .full_rsc_dat(full), .empty_rsc_dat(empty), .acc_out_rsc_dat(data_out_in), .acc_out_v_rsc_dat(valid_out), .acc_out_rdy_rsc_dat(ren_in), .return_aqed_out_rsc_dat(data_out), .return_aqed_out_v_rsc_dat(wen_in), .return_qed_done_rsc_dat(qed_done), .return_qed_check_rsc_dat(qed_check));


   assert_qed_match : assert property (
       @(posedge clk)
          (qed_done) |-> (qed_check)  );
       

   configure : assume property ( @(posedge clk)
   ( ((flush==1'b0) && (clk_en==1'b1) && (config_en_sram==4'b0) && (config_addr==32'h0) && (enable_chain==1'b0) &&  (circular_en == 1'b0) && (almost_count == 4'h0) && (mode == 2'h1) && (tile_en == 1'b1) && (starting_addr==15'h0))));
	reg [15:0] const_depth;
	
	always @(posedge clk) begin	
		const_depth <= depth;
	end
cnst_depth: assume property ( @(posedge clk) (const_depth==depth ));

endmodule

