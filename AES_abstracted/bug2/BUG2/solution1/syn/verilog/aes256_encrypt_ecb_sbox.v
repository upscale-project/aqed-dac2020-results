// ==============================================================
// File generated on Wed Apr 15 19:05:11 PDT 2020
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

//edit
assign ram[0] =            'h63;                               
assign ram[1] =            'h7C;                 
assign ram[2] =            'h77;                 
assign ram[3] =            'h7B;                 
assign ram[4] =            'hF2;                 
assign ram[5] =            'h6B;                 
assign ram[6] =            'h6F;                 
assign ram[7] =            'hC5;                 
assign ram[8] =            'h30;                 
assign ram[9] =            'h01;                 
assign ram[10] =           'h67;
assign ram[11] =           'h2B;
assign ram[12] =           'hFE;
assign ram[13] =           'hD7;
assign ram[14] =           'hAB;
assign ram[15] =           'h76;
assign ram[16] =           'hCA;
assign ram[17] =           'h82;
assign ram[18] =           'hC9;
assign ram[19] =           'h7D;
assign ram[20] =           'hFA;
assign ram[21] =           'h59;
assign ram[22] =           'h47;
assign ram[23] =           'hF0;
assign ram[24] =           'hAD;
assign ram[25] =           'hD4;
assign ram[26] =           'hA2;
assign ram[27] =           'hAF;
assign ram[28] =           'h9C;
assign ram[29] =           'hA4;
assign ram[30] =           'h72;
assign ram[31] =           'hC0;
assign ram[32] =           'hB7;
assign ram[33] =           'hFD;
assign ram[34] =           'h93;
assign ram[35] =           'h26;
assign ram[36] =           'h36;
assign ram[37] =           'h3F;
assign ram[38] =           'hF7;
assign ram[39] =           'hCC;
assign ram[40] =           'h34;
assign ram[41] =           'hA5;
assign ram[42] =           'hE5;
assign ram[43] =           'hF1;
assign ram[44] =           'h71;
assign ram[45] =           'hD8;
assign ram[46] =           'h31;
assign ram[47] =           'h15;
assign ram[48] =           'h04;
assign ram[49] =           'hC7;
assign ram[50] =           'h23;
assign ram[51] =           'hC3;
assign ram[52] =           'h18;
assign ram[53] =           'h96;
assign ram[54] =           'h05;
assign ram[55] =           'h9A;
assign ram[56] =           'h07;
assign ram[57] =           'h12;
assign ram[58] =           'h80;
assign ram[59] =           'hE2;
assign ram[60] =           'hEB;
assign ram[61] =           'h27;
assign ram[62] =           'hB2;
assign ram[63] =           'h75;
assign ram[64] =           'h09;
assign ram[65] =           'h83;
assign ram[66] =           'h2C;
assign ram[67] =           'h1A;
assign ram[68] =           'h1B;
assign ram[69] =           'h6E;
assign ram[70] =           'h5A;
assign ram[71] =           'hA0;
assign ram[72] =           'h52;
assign ram[73] =           'h3B;
assign ram[74] =           'hD6;
assign ram[75] =           'hB3;
assign ram[76] =           'h29;
assign ram[77] =           'hE3;
assign ram[78] =           'h2F;
assign ram[79] =           'h84;
assign ram[80] =           'h53;
assign ram[81] =           'hD1;
assign ram[82] =           'h00;
assign ram[83] =           'hED;
assign ram[84] =           'h20;
assign ram[85] =           'hFC;
assign ram[86] =           'hB1;
assign ram[87] =           'h5B;
assign ram[88] =           'h6A;
assign ram[89] =           'hCB;
assign ram[90] =           'hBE;
assign ram[91] =           'h39;
assign ram[92] =           'h4A;
assign ram[93] =           'h4C;
assign ram[94] =           'h58;
assign ram[95] =           'hCF;
assign ram[96] =           'hD0;
assign ram[97] =           'hEF;
assign ram[98] =           'hAA;
assign ram[99] =           'hFB; 
assign ram[100] =          'h43; 
assign ram[101] =          'h4D; 
assign ram[102] =          'h33; 
assign ram[103] =          'h85; 
assign ram[104] =          'h45; 
assign ram[105] =          'hF9; 
assign ram[106] =          'h02; 
assign ram[107] =          'h7F; 
assign ram[108] =          'h50; 
assign ram[109] =          'h3C; 
assign ram[110] =          'h9F; 
assign ram[111] =          'hA8; 
assign ram[112] =          'h51; 
assign ram[113] =          'hA3; 
assign ram[114] =          'h40; 
assign ram[115] =          'h8F; 
assign ram[116] =          'h92; 
assign ram[117] =          'h9D; 
assign ram[118] =          'h38; 
assign ram[119] =          'hF5; 
assign ram[120] =          'hBC; 
assign ram[121] =          'hB6; 
assign ram[122] =          'hDA; 
assign ram[123] =          'h21; 
assign ram[124] =          'h10; 
assign ram[125] =          'hFF; 
assign ram[126] =          'hF3; 
assign ram[127] =          'hD2; 
assign ram[128] =          'hCD; 
assign ram[129] =          'h0C; 
assign ram[130] =          'h13; 
assign ram[131] =          'hEC; 
assign ram[132] =          'h5F; 
assign ram[133] =          'h97; 
assign ram[134] =          'h44; 
assign ram[135] =          'h17; 
assign ram[136] =          'hC4; 
assign ram[137] =          'hA7; 
assign ram[138] =          'h7E; 
assign ram[139] =          'h3D; 
assign ram[140] =          'h64; 
assign ram[141] =          'h5D; 
assign ram[142] =          'h19; 
assign ram[143] =          'h73; 
assign ram[144] =          'h60; 
assign ram[145] =          'h81; 
assign ram[146] =          'h4F; 
assign ram[147] =          'hDC; 
assign ram[148] =          'h22; 
assign ram[149] =          'h2A; 
assign ram[150] =          'h90; 
assign ram[151] =          'h88; 
assign ram[152] =          'h46; 
assign ram[153] =          'hEE; 
assign ram[154] =          'hB8; 
assign ram[155] =          'h14; 
assign ram[156] =          'hDE; 
assign ram[157] =          'h5E; 
assign ram[158] =          'h0B; 
assign ram[159] =          'hDB; 
assign ram[160] =          'hE0; 
assign ram[161] =          'h32; 
assign ram[162] =          'h3A; 
assign ram[163] =          'h0A; 
assign ram[164] =          'h49; 
assign ram[165] =          'h06; 
assign ram[166] =          'h24; 
assign ram[167] =          'h5C; 
assign ram[168] =          'hC2; 
assign ram[169] =          'hD3; 
assign ram[170] =          'hAC; 
assign ram[171] =          'h62; 
assign ram[172] =          'h91; 
assign ram[173] =          'h95; 
assign ram[174] =          'hE4; 
assign ram[175] =          'h79; 
assign ram[176] =          'hE7; 
assign ram[177] =          'hC8; 
assign ram[178] =          'h37; 
assign ram[179] =          'h6D; 
assign ram[180] =          'h8D; 
assign ram[181] =          'hD5; 
assign ram[182] =          'h4E; 
assign ram[183] =          'hA9; 
assign ram[184] =          'h6C; 
assign ram[185] =          'h56; 
assign ram[186] =          'hF4; 
assign ram[187] =          'hEA; 
assign ram[188] =          'h65; 
assign ram[189] =          'h7A; 
assign ram[190] =          'hAE; 
assign ram[191] =          'h08; 
assign ram[192] =          'hBA; 
assign ram[193] =          'h78; 
assign ram[194] =          'h25; 
assign ram[195] =          'h2E; 
assign ram[196] =          'h1C; 
assign ram[197] =          'hA6; 
assign ram[198] =          'hB4; 
assign ram[199] =          'hC6; 
assign ram[200] =          'hE8; 
assign ram[201] =          'hDD; 
assign ram[202] =          'h74; 
assign ram[203] =          'h1F; 
assign ram[204] =          'h4B; 
assign ram[205] =          'hBD; 
assign ram[206] =          'h8B; 
assign ram[207] =          'h8A; 
assign ram[208] =          'h70; 
assign ram[209] =          'h3E; 
assign ram[210] =          'hB5; 
assign ram[211] =          'h66; 
assign ram[212] =          'h48; 
assign ram[213] =          'h03; 
assign ram[214] =          'hF6; 
assign ram[215] =          'h0E; 
assign ram[216] =          'h61; 
assign ram[217] =          'h35; 
assign ram[218] =          'h57; 
assign ram[219] =          'hB9; 
assign ram[220] =          'h86; 
assign ram[221] =          'hC1; 
assign ram[222] =          'h1D; 
assign ram[223] =          'h9E; 
assign ram[224] =          'hE1; 
assign ram[225] =          'hF8; 
assign ram[226] =          'h98; 
assign ram[227] =          'h11; 
assign ram[228] =          'h69; 
assign ram[229] =          'hD9; 
assign ram[230] =          'h8E; 
assign ram[231] =          'h94; 
assign ram[232] =          'h9B; 
assign ram[233] =          'h1E; 
assign ram[234] =          'h87; 
assign ram[235] =          'hE9; 
assign ram[236] =          'hCE; 
assign ram[237] =          'h55; 
assign ram[238] =          'h28; 
assign ram[239] =          'hDF; 
assign ram[240] =          'h8C; 
assign ram[241] =          'hA1; 
assign ram[242] =          'h89; 
assign ram[243] =          'h0D; 
assign ram[244] =          'hBF; 
assign ram[245] =          'hE6; 
assign ram[246] =          'h42; 
assign ram[247] =          'h68; 
assign ram[248] =          'h41; 
assign ram[249] =          'h99; 
assign ram[250] =          'h2D; 
assign ram[251] =          'h0F; 
assign ram[252] =          'hB0; 
assign ram[253] =          'h54; 
assign ram[254] =          'hBB; 
assign ram[255] =          'h16; 




always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



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

