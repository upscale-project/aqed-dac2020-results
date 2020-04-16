// ==============================================================
// File generated on Sun Apr 12 17:13:15 PDT 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module aes256_encrypt_ecb_sbox_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 8;
parameter AWIDTH = 8;
parameter MEM_SIZE = 256;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./aes256_encrypt_ecb_sbox_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end

generate
  for (genvar i=0; i < 256; i++) begin
  assume_consistent_sbox : assume property
    (@(posedge clk) (
     $stable(ram[i])));
   end
endgenerate



endmodule

`timescale 1 ns / 1 ps
module aes256_encrypt_ecb_sbox(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd8;
parameter AddressRange = 32'd256;
parameter AddressWidth = 32'd8;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



aes256_encrypt_ecb_sbox_rom aes256_encrypt_ecb_sbox_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

