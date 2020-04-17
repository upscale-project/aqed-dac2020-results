//
//--------------------------------------------------------------------------------
//          THIS FILE WAS AUTOMATICALLY GENERATED BY THE GENESIS2 ENGINE        
//  FOR MORE INFORMATION: OFER SHACHAM (CHIP GENESIS INC / STANFORD VLSI GROUP)
//    !! THIS VERSION OF GENESIS2 IS NOT FOR ANY COMMERCIAL USE !!
//     FOR COMMERCIAL LICENSE CONTACT SHACHAM@ALUMNI.STANFORD.EDU
//--------------------------------------------------------------------------------
//
//  
//	-----------------------------------------------
//	|            Genesis Release Info             |
//	|  $Change: 11904 $ --- $Date: 2013/08/03 $   |
//	-----------------------------------------------
//	
//
//  Source file: /home/jarvis/Documents/memory_core/genesis_new/doublebuffer_control.svp
//  Source template: doublebuffer_control
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter iterator_support 	= 8
// Parameter wwidth 	= 16
// Parameter dwidth 	= 16
// Parameter bbanks 	= 2
// Parameter ddepth 	= 512
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Command Line input (priority=4):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From XML input (priority=3):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Config File input (priority=2):
//
// ---------------- End Pre-Generation Pramameters Status Report ----------------

///////////////////////////////////////////////////////////////////
// CGRA memory generator
//////////////////////////////////////////////////////////////////
`define xassert(condition, message) if(condition) begin $display(message); $finish(1); end

// dwidth (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
// wwidth (_GENESIS2_INHERITANCE_PRIORITY_) = 16
//
// ddepth (_GENESIS2_INHERITANCE_PRIORITY_) = 0x200
//
// bbanks (_GENESIS2_INHERITANCE_PRIORITY_) = 2
//
// iterator_support (_GENESIS2_INHERITANCE_PRIORITY_) = 8
//

module doublebuffer_control_unq1(

  clk,
  clk_en,
  reset,
  flush,
  ren,
  wen,
  data_in,
  data_out,
  addr_in,

  doublebuffer_data_in,
  doublebuffer_cen_mem,
  doublebuffer_wen_mem,
  doublebuffer_addr_mem,
  doublebuffer_data_out,

  depth,
  valid,
  switch,

  chain_idx,

  arbitrary_addr,
  starting_addr,
  iter_cnt,
  dimensionality,
  stride,
  range,

  rate_matched,
  stencil_width
);

// =============================================
// Depth or Ping Pong In Configuration
// =============================================
input logic [3:0]  chain_idx;
input logic [15:0] stencil_width;
input logic        rate_matched;
// ==============================================
// I/O
// ==============================================
input logic        clk;
input logic        clk_en;
input logic        reset;
input logic        switch;

input logic        arbitrary_addr;
input logic [15:0] starting_addr; 
input logic [31:0] iter_cnt;
input logic [3:0]  dimensionality;

input logic [15:0] stride [7:0];
input logic [31:0] range [7:0];
logic       [15:0] current_loc [7:0];

input logic                   flush;
input logic                   wen;
input logic                   ren;
input logic  [15:0]  data_in;
output logic [15:0]  data_out;
input logic  [15:0]  addr_in;

output logic [15:0]  doublebuffer_data_in  [1:0];
output logic [1:0]  doublebuffer_cen_mem;
output logic [1:0]  doublebuffer_wen_mem;
output logic [8:0]  doublebuffer_addr_mem [1:0];
input logic  [15:0]  doublebuffer_data_out [1:0];

input logic  [15:0]           depth;
output logic                  valid;
logic valid_arb;
// ==============================================
// Internal
// ==============================================
logic                  init_state;
logic [8:0]  addr;
logic                  ping_npong;
logic [15:0]  read_addr;
logic [15:0]  write_addr;
logic [31:0]           dim_counter [7:0]; 
// ==============================================
// Configuration
// ==============================================
logic                  update [7:0];
logic  [15:0] strt_addr;
logic  [31:0]          read_cnt;
logic  [15:0] firstn [1:0];
logic                  take_the_flop;
logic                  autoswitch;
logic                  read_done;
logic                  read_done_thresh;
logic                  write_done;
logic                  write_done_thresh;

logic last_line_gate;
logic read_first;
logic next_take_the_flop;
logic write_in_range;
logic read_in_range;
logic read_in_range_d1;
logic read_mux;
// =============================================

assign read_mux = (rate_matched) ? wen : ren;
assign autoswitch = ~arbitrary_addr & (write_done | write_done_thresh) & 
                                      (read_done | read_done_thresh | ~init_state) & ~(depth == 0); 
assign strt_addr = starting_addr[15:0];
assign addr = addr_in[8:0];

assign last_line_gate = (stencil_width == 0) ? 1 : read_cnt >= (stencil_width - 1);

assign read_done = (read_cnt == (iter_cnt - 1)) & read_mux;
always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        read_done_thresh <= 0;
    end
    else if(clk_en) begin
        if(flush) begin
            read_done_thresh <= 0;
        end
        else begin
            if(autoswitch | switch) begin
                read_done_thresh <= 0;
            end
            else if(read_done) begin
                read_done_thresh <= 1;
            end
        end
    end
end

assign write_done = (write_addr == (depth - 1)) & wen;
always_ff @(posedge clk or posedge reset) begin
  if(reset) begin
    write_done_thresh <= 0;
  end
  else if(clk_en) begin
    if(flush) begin
      write_done_thresh <= 0;
    end
    else if(autoswitch | switch) begin
      write_done_thresh <= 0;
    end
    else begin
      if(write_done) begin
        write_done_thresh <= 1;
      end
    end
  end
end

assign write_in_range = write_addr[12:9] == chain_idx;
assign read_in_range = read_addr[12:9] == chain_idx;

assign valid = (arbitrary_addr) ? valid_arb : 
   last_line_gate & read_mux & (init_state | (depth == 0)) & read_in_range_d1 & ~read_done_thresh;

always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        valid_arb <= 0;
    end
    else if(clk_en) begin
        if(flush | switch) begin
            valid_arb <= 0;
        end
        else begin
            valid_arb <= read_in_range & read_mux & init_state; 
        end
    end
end

always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
       read_in_range_d1 <= 0; 
    end
    else if(clk_en) begin
        // We can prime the thing in zero-delay mode
        // if we let the delayed range follow at all times
        if(flush) begin
            read_in_range_d1 <= strt_addr[12:9] == chain_idx;
        end
        else begin
            read_in_range_d1 <= read_in_range;
        end
    end
end

assign doublebuffer_data_in[0] = data_in;
assign doublebuffer_data_in[1] = data_in;
assign doublebuffer_cen_mem[0] = (wen & (ping_npong == 0)) | flush 
					| switch | autoswitch | (read_mux & (ping_npong != 0));
assign doublebuffer_cen_mem[1] = (wen & (ping_npong == 1)) | flush 
					| switch | autoswitch | (read_mux & (ping_npong != 1));
assign doublebuffer_wen_mem[0] = (ping_npong == 0) & (wen & ~write_done_thresh) & write_in_range & ~(depth == 0);
assign doublebuffer_wen_mem[1] = (ping_npong == 1) & (wen & ~write_done_thresh) & write_in_range & ~(depth == 0);
assign doublebuffer_addr_mem[0] = (ping_npong == 0) ? write_addr[8:0] : read_addr[8:0];
assign doublebuffer_addr_mem[1] = (ping_npong == 1) ? write_addr[8:0] : read_addr[8:0];
assign data_out = (take_the_flop ? firstn[~ping_npong] : doublebuffer_data_out[~ping_npong]);

always_comb begin
  // select proper data - 
  read_addr = arbitrary_addr ? addr :  
   ((7 < dimensionality) ? (current_loc[7]) : 0) +
   ((6 < dimensionality) ? (current_loc[6]) : 0) +
   ((5 < dimensionality) ? (current_loc[5]) : 0) +
   ((4 < dimensionality) ? (current_loc[4]) : 0) +
   ((3 < dimensionality) ? (current_loc[3]) : 0) +
   ((2 < dimensionality) ? (current_loc[2]) : 0) +
   ((1 < dimensionality) ? (current_loc[1]) : 0) +
    (current_loc[0]) + strt_addr;
  update[0] = init_state | (depth == 0);
  // Update iterator when the previous one will update and flow over
  update[1] = ((dim_counter[0]) == (range[0] - 1)) & update[0];
  update[2] = ((dim_counter[1]) == (range[1] - 1)) & update[1];
  update[3] = ((dim_counter[2]) == (range[2] - 1)) & update[2];
  update[4] = ((dim_counter[3]) == (range[3] - 1)) & update[3];
  update[5] = ((dim_counter[4]) == (range[4] - 1)) & update[4];
  update[6] = ((dim_counter[5]) == (range[5] - 1)) & update[5];
  update[7] = ((dim_counter[6]) == (range[6] - 1)) & update[6];
end

always_ff @(posedge clk or posedge reset) begin
  if(reset) begin
    firstn[0] <= 0;
    firstn[1] <= 0;
  end
  else if(clk_en) begin
    if(flush) begin
      firstn[0] <= 0;
      firstn[1] <= 0;
    end
    else begin
      if ((write_addr == strt_addr) & wen) begin
        firstn[0] <= (~ping_npong) ? data_in : firstn[0];
        firstn[1] <= (ping_npong) ? data_in : firstn[1];
      end
    end
  end
end

assign next_take_the_flop = autoswitch ? 1 : 
                            (take_the_flop & ~(read_mux)) ? 1 :
                                                    0 ;

always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        read_first <= 1;
    end
    else if(clk_en) begin
        if(flush) begin
            read_first <= 1;
        end
        else if(take_the_flop & read_mux) begin
            read_first <= 0;
        end
    end
end


always_ff @(posedge clk or posedge reset) begin
  if(reset) begin
    take_the_flop <= 0;
  end
  else if(clk_en) begin
      if(flush) begin
         take_the_flop <= 0;
      end
      else begin
         take_the_flop <= next_take_the_flop; 
      end
  end
end

always_ff @(posedge clk or posedge reset) begin
	if(reset) begin
		init_state <= 0;
	end
	else if(clk_en) begin
		if(flush) begin
			init_state <= 0;
		end
		else if(autoswitch | switch) begin
			init_state <= 1;
		end
	end
end


always_ff @(posedge clk or posedge reset) begin
  if(reset) begin 
    dim_counter[0] <= 0;
    dim_counter[1] <= 0;
    dim_counter[2] <= 0;
    dim_counter[3] <= 0;
    dim_counter[4] <= 0;
    dim_counter[5] <= 0;
    dim_counter[6] <= 0;
    dim_counter[7] <= 0;
    current_loc[0] <= 0;
    current_loc[1] <= 0;
    current_loc[2] <= 0;
    current_loc[3] <= 0;
    current_loc[4] <= 0;
    current_loc[5] <= 0;
    current_loc[6] <= 0;
    current_loc[7] <= 0;
    ping_npong <= 0;
    write_addr <= 0;
    read_cnt <= 0;
  end
  else if(clk_en) begin
    if(flush) begin 
      dim_counter[1] <= 0;
      dim_counter[2] <= 0;
      dim_counter[3] <= 0;
      dim_counter[4] <= 0;
      dim_counter[5] <= 0;
      dim_counter[6] <= 0;
      dim_counter[7] <= 0;
      current_loc[1] <= 0;
      current_loc[2] <= 0;
      current_loc[3] <= 0;
      current_loc[4] <= 0;
      current_loc[5] <= 0;
      current_loc[6] <= 0;
      current_loc[7] <= 0;
      dim_counter[0] <= (depth == 0) ? (range[0] > 1) : 0;
      current_loc[0] <= (depth == 0) ? stride[0] : 0;
      ping_npong <= 0;
      write_addr <= 0;
      read_cnt <= 0;
    end
    else begin
      // When we switch for the first time (and all times), the valid becomes 1 because good data is at the output
      // Start over write and read addr, switch buffer (ping or pong)
      if(switch | autoswitch) begin // Or if configged to trigger on depth
        ping_npong <= ~ping_npong;
        read_cnt <= 0;
        write_addr <= 0;
        dim_counter[1] <= 0;
        current_loc[1] <= 0;
        dim_counter[2] <= 0;
        current_loc[2] <= 0;
        dim_counter[3] <= 0;
        current_loc[3] <= 0;
        dim_counter[4] <= 0;
        current_loc[4] <= 0;
        dim_counter[5] <= 0;
        current_loc[5] <= 0;
        dim_counter[6] <= 0;
        current_loc[6] <= 0;
        dim_counter[7] <= 0;
        current_loc[7] <= 0;
        dim_counter[0] <= range[0] > 1; 
        current_loc[0] <= stride[0];
      end
      else begin
        // ===================
        // ADDRS
        // ===================
        // Increment write_addr on wen
        if(wen & ~write_done & ~write_done_thresh) begin
          write_addr <= (write_addr + 1); 
        end
        // Once we expect data to start spilling out, we start moving the read_addr - move is based on counters
        // If serving weights (depth == 0), then take the flop will never be high, so we just "skip" ahead out of init state
        if( ((init_state | (depth == 0)) & read_mux & ~read_done & ~take_the_flop & ~read_done_thresh) | (init_state & read_mux & take_the_flop) ) begin 
          read_cnt <= read_cnt + 1;
          if(update[0]) begin
            if(dim_counter[0] == (range[0] - 1)) begin
              dim_counter[0] <= 0;
              current_loc[0] <= 0;
            end
            else begin
              dim_counter[0] <= dim_counter[0] + 1;
              current_loc[0] <= current_loc[0] + stride[0];
            end
          end
          if(update[1]) begin
            if(dim_counter[1] == (range[1] - 1)) begin
              dim_counter[1] <= 0;
              current_loc[1] <= 0;
            end
            else begin
              dim_counter[1] <= dim_counter[1] + 1;
              current_loc[1] <= current_loc[1] + stride[1];
            end
          end
          if(update[2]) begin
            if(dim_counter[2] == (range[2] - 1)) begin
              dim_counter[2] <= 0;
              current_loc[2] <= 0;
            end
            else begin
              dim_counter[2] <= dim_counter[2] + 1;
              current_loc[2] <= current_loc[2] + stride[2];
            end
          end
          if(update[3]) begin
            if(dim_counter[3] == (range[3] - 1)) begin
              dim_counter[3] <= 0;
              current_loc[3] <= 0;
            end
            else begin
              dim_counter[3] <= dim_counter[3] + 1;
              current_loc[3] <= current_loc[3] + stride[3];
            end
          end
          if(update[4]) begin
            if(dim_counter[4] == (range[4] - 1)) begin
              dim_counter[4] <= 0;
              current_loc[4] <= 0;
            end
            else begin
              dim_counter[4] <= dim_counter[4] + 1;
              current_loc[4] <= current_loc[4] + stride[4];
            end
          end
          if(update[5]) begin
            if(dim_counter[5] == (range[5] - 1)) begin
              dim_counter[5] <= 0;
              current_loc[5] <= 0;
            end
            else begin
              dim_counter[5] <= dim_counter[5] + 1;
              current_loc[5] <= current_loc[5] + stride[5];
            end
          end
          if(update[6]) begin
            if(dim_counter[6] == (range[6] - 1)) begin
              dim_counter[6] <= 0;
              current_loc[6] <= 0;
            end
            else begin
              dim_counter[6] <= dim_counter[6] + 1;
              current_loc[6] <= current_loc[6] + stride[6];
            end
          end
          if(update[7]) begin
            if(dim_counter[7] == (range[7] - 1)) begin
              dim_counter[7] <= 0;
              current_loc[7] <= 0;
            end
            else begin
              dim_counter[7] <= dim_counter[7] + 1;
              current_loc[7] <= current_loc[7] + stride[7];
            end
          end
        end
      end
    end
  end
end

endmodule