
// ------------------------------------------------------------------
//   Design Unit:    AQED_rtl
// ------------------------------------------------------------------

module aqed (clk, clk_en, reset, flush, exec_dup, data_in, valid_out, ren_in, data_out, data_out_in, wen_in, qed_done, qed_check);

   parameter CACHESIZE = 128;
   input clk_en; 
   input clk;
   input reset;
   input flush;
   input exec_dup;
   input wen_in;
   input [15:0] data_in;
   input [15:0] data_out_in;
   input valid_out;
   input ren_in;
   output [15:0] data_out;
   output qed_done;
   output qed_check;

   reg [15:0]    orig_in;
   reg [15:0]    orig_out;
   reg [15:0]    dup_out;
   reg [31:0]     orig_val;
   reg [31:0]     dup_val;
   reg           match;
   reg [31:0]     in_count;
   reg [31:0]     out_count;
   reg           orig_issued;
   reg 		 dup_issued;
   reg           dup_done;
   //wire [15:0]   orig_data;

   wire          issue_orig;
   wire          issue_dup;

logic buffer;
   assign issue_orig = (~reset)&(exec_dup)&(wen_in)&(~orig_issued)&(~flush);
   assign issue_other = (~reset)&(~issue_orig)&(wen_in)&(~flush);
   always @(posedge clk)
      begin
         if (reset) begin
            orig_issued <= 'b0;
	    buffer <= 'b0;
         end else if (clk_en && issue_orig) begin
            orig_issued <= 1'b1;
         end  
      end 

   integer       i;
   always @(posedge clk)
     begin
	
        if (reset) begin
           orig_in <= 'b0;
           orig_val <= 32'hFFFF_FFFF;
           in_count <= 'b0;
        end else if (clk_en && issue_orig) begin
           orig_in <= data_in;
           orig_val <= in_count;
           in_count <= in_count + 1;
       end else if (clk_en && issue_other) begin
           in_count <= in_count + 1;
        end
     end

   //assign orig_data = data_in; 
   
   // Assign the outputs to the adder
   assign data_out =  data_in;

   integer cntr;
   always@(posedge clk or posedge reset) begin
	if(reset)
		cntr = 0;
	else if(clk_en) begin
		if(orig_issued &((ren_in & wen_in)))// & (mem_core_top.count_wen<mem_core_top.depth))|(ren_in & (mem_core_top.count_wen==mem_core_top.depth))))
			cntr = cntr + 1; 
	end
   end
		
   integer cntr2;
   always@(posedge clk or posedge reset) begin
	if(reset)
		cntr2 = 0;
	else if(clk_en) begin
		if(orig_issued)
			cntr2 = cntr2 + 1; 
	end
   end
	
   // Update the adder output cache
   always @(posedge clk)
     begin
        if (reset) begin
           out_count <= 'b0;
           orig_out <= 'b0;
           dup_done <= 'b0;
        end else if (clk_en && ren_in &&  valid_out && (out_count == orig_val)) begin
           orig_out <= data_out_in;
           out_count <= out_count + 1;
	   dup_done <= 1;
        end else if (clk_en && ren_in  && valid_out ) begin
           out_count <= out_count + 1; 
        end
     end 
 

   assign qed_done = dup_done; 

 //  assign match = !(orig_out ^ orig_val);
         
endmodule


