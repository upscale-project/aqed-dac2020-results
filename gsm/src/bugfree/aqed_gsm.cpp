/*
+--------------------------------------------------------------------------+
| CHStone : a suite of benchmark programs for C-based High-Level Synthesis |
| ======================================================================== |
|                                                                          |
| * Collected and Modified : Y. Hara, H. Tomiyama, S. Honda,               |
|                            H. Takada and K. Ishii                        |
|                            Nagoya University, Japan                      |
|                                                                          |
| * Remark :                                                               |
|    1. This source code is modified to unify the formats of the benchmark |
|       programs in CHStone.                                               |
|    2. Test vectors are added for CHStone.                                |
|    3. If "main_result" is 0 at the end of the program, the program is    |
|       correctly executed.                                                |
|    4. Please follow the copyright of each benchmark program.             |
+--------------------------------------------------------------------------+
*/
#include <stdio.h>
#include "lpc.c"
#include "private.h"
#include <stdint.h>
/*
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     inData : input data                                                  |
|     outData, outLARc : expected output data                              |
+--------------------------------------------------------------------------+
*/
#define N 4
#define M 8
#define L 9
const word inData[N] =
  { 81, 10854, 1893, -10291/*, 7614, 29718, 20475, -29215, -18949, -29806,
  -32017, 1596, 15744, -3088, -17413, -22123, 6798, -13276, 3819, -16273,
    -1573, -12523, -27103,
  -193, -25588, 4698, -30436, 15264, -1393, 11418, 11370, 4986, 7869, -1903,
    9123, -31726,
  -25237, -14155, 17982, 32427, -12439, -15931, -21622, 7896, 1689, 28113,
    3615, 22131, -5572,
  -20110, 12387, 9177, -24544, 12480, 21546, -17842, -13645, 20277, 9987,
    17652, -11464, -17326,
  -10552, -27100, 207, 27612, 2517, 7167, -29734, -22441, 30039, -2368, 12813,
    300, -25555, 9087,
  29022, -6559, -20311, -14347, -7555, -21709, -3676, -30082, -3190, -30979,
    8580, 27126, 3414,
  -4603, -22303, -17143, 13788, -1096, -14617, 22071, -13552, 32646, 16689,
    -8473, -12733, 10503,
  20745, 6696, -26842, -31015, 3792, -19864, -20431, -30307, 32421, -13237,
    9006, 18249, 2403,
  -7996, -14827, -5860, 7122, 29817, -31894, 17955, 28836, -31297, 31821,
    -27502, 12276, -5587,
  -22105, 9192, -22549, 15675, -12265, 7212, -23749, -12856, -5857, 7521,
    17349, 13773, -3091,
  -17812, -9655, 26667, 7902, 2487, 3177, 29412, -20224, -2776, 24084, -7963,
    -10438, -11938,
  -14833, -6658, 32058, 4020, 10461, 15159*/
};

const word outData[N] =
  { 80, 10848, 1888, -10288/*, 7616, 29712, 20480, -29216, -18944, -29808,
  -32016, 1600, 15744, -3088, -17408, -22128, 6800, -13280, 3824, -16272,
    -1568, -12528, -27104,
  -192, -25584, 4704, -30432, 15264, -1392, 11424, 11376, 4992, 7872, -1904,
    9120, -31728, -25232,
  -14160, 17984, 32432, -12432, -15936, -21616, 7904, 1696, 28112, 3616,
    22128, -5568, -20112,
  12384, 9184, -24544, 12480, 21552, -17840, -13648, 20272, 9984, 17648,
    -11456, -17328, -10544,
  -27104, 208, 27616, 2512, 7168, -29728, -22448, 30032, -2368, 12816, 304,
    -25552, 9088, 29024,
  -6560, -20304, -14352, -7552, -21712, -3680, -30080, -3184, -30976, 8576,
    27120, 3408, -4608,
  -22304, -17136, 13792, -1088, -14624, 22064, -13552, 32640, 16688, -8480,
    -12736, 10496, 20752,
  6704, -26848, -31008, 3792, -19856, -20432, -30304, 32416, -13232, 9008,
    18256, 2400, -8000,
  -14832, -5856, 7120, 29824, -31888, 17952, 28832, -31296, 31824, -27504,
    12272, -5584, -22112,
  9200, -22544, 15680, -12272, 7216, -23744, -12848, -5856, 7520, 17344,
    13776, -3088, -17808,
  -9648, 26672, 7904, 2480, 3184, 29408, -20224, -2768, 24080, -7968, -10432,
    -11936, -14832,
  -6656, 32064, 4016, 10464, 15152*/
};

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
gsm ()
{
  int i;
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
	main_result += (LARc[i] != outLARc[i]);

      printf ("Result:%d\n", main_result);
      return main_result;
    }


struct st{// initialization 
word orig_val[N]={0}; word * acc_out1; word orig_out1[N]={0}; longword orig_out2[M] = {0}; word dup_out1[N]={0}; word dup_out2[M] = {0}; uint16_t orig_in=0xFFFF; word orig_out[N]={0}; bool orig_issued=0; bool dup_issued=0; uint16_t dup_in=0xFFFF; uint16_t in_count=0; uint16_t out_count=0; bool orig_done=0; bool dup_done=0; bool qed_done; bool qed_check; bool index;};

st state;

struct out1{
  uint8_t num_out;
};

struct out2{
  bool qed_done;
  bool qed_check;
  bool orig_done;
  uint8_t check1;
  uint8_t check2;

};

#define scale 2

struct out3{
  bool qed_done;
  bool qed_check;
  bool orig_issued;
  bool orig_done;
  uint8_t check1;
  uint8_t check2;
  word bmc_in[scale*N];
  word LARc_out[scale*M];

};


out1 aqed_in (word *bmc_in, bool orig, bool dup) {

     int i;

      bool issue_orig = ((orig) && (!state.orig_issued)); 

      bool issue_dup = ((dup) && (!state.dup_issued) && (state.orig_issued));

      if (issue_orig){
         state.orig_issued =1; 
         state.orig_in =state.in_count; 
         state.orig_val[0] = *(bmc_in);
         state.orig_val[1] = *(bmc_in + 1);
         state.orig_val[2] = *(bmc_in + 2);
         state.orig_val[3] = *(bmc_in + 3);
/*         state.orig_val[4] = *(bmc_in + 4);
         state.orig_val[5] = *(bmc_in + 5);
         state.orig_val[6] = *(bmc_in + 6);
         state.orig_val[7] = *(bmc_in + 7);
         state.orig_val[8] = *(bmc_in + 8);
         state.orig_val[9] = *(bmc_in + 9);*/
         

      }

      if (issue_dup){
         state.dup_issued = ((state.orig_val[0] == *(bmc_in)) && (state.orig_val[1] == *(bmc_in + 1)) &&
                             (state.orig_val[2] == *(bmc_in + 2)) && (state.orig_val[3] == *(bmc_in + 3)));
         if(state.dup_issued) {
               state.dup_in =state.in_count;  
         }
      }
       state.in_count =state.in_count + 1;
       out1 o1;
       o1.num_out = 0;

   return o1;
}

out2 aqed_out (word *acc_out, word *acc_out2) {


   int check1 = 0;
   int check2 = 0;
   int i;
   state.orig_done = state.orig_issued && (state.out_count>= state.orig_in);
   if (state.orig_issued && (state.out_count == state.orig_in)){
        state.acc_out1 = acc_out;
   }
   if (state.orig_issued && state.dup_issued && (state.out_count == state.dup_in) && !state.qed_done){
        state.qed_done = 1;

         state.orig_out1[0] = *(state.acc_out1);
         state.orig_out1[1] = *(state.acc_out1 + 1);
         state.orig_out1[2] = *(state.acc_out1 + 2);
         state.orig_out1[3] = *(state.acc_out1 + 3);
/*         state.orig_out1[4] = *(state.acc_out1 + 4);
         state.orig_out1[5] = *(state.acc_out1 + 5);
         state.orig_out1[6] = *(state.acc_out1 + 6);
         state.orig_out1[7] = *(state.acc_out1 + 7);
         state.orig_out1[8] = *(state.acc_out1 + 8);
         state.orig_out1[9] = *(state.acc_out1 + 9);*/

         state.dup_out1[0] = *(acc_out);
         state.dup_out1[1] = *(acc_out + 1);
         state.dup_out1[2] = *(acc_out + 2);
         state.dup_out1[3] = *(acc_out + 3);
/*         state.dup_out1[4] = *(acc_out + 4);
         state.dup_out1[5] = *(acc_out + 5);
         state.dup_out1[6] = *(acc_out + 6);
         state.dup_out1[7] = *(acc_out + 7);
         state.dup_out1[8] = *(acc_out + 8);
         state.dup_out1[9] = *(acc_out + 9);*/
         state.qed_check = ((state.orig_out1[0] == state.dup_out1[0]) && (state.orig_out1[1] == state.dup_out1[1]) &&
                             (state.orig_out1[2] == state.dup_out1[2]) && (state.orig_out1[3] == state.dup_out1[3]) /*&&
                             (state.orig_out1[4] == state.dup_out1[4]) && (state.orig_out1[5] == state.dup_out1[5]) &&
                             (state.orig_out1[6] == state.dup_out1[6]) && (state.orig_out1[7] == state.dup_out1[7]) &&
                             (state.orig_out1[8] == state.dup_out1[8]) && (state.orig_out1[9] == state.dup_out1[9])*/);
   }
   if (state.out_count > state.dup_in){
        state.qed_done = 1;
   }
   state.out_count =state.out_count + 1;
   out2 o2;
   o2.qed_done = state.qed_done;
   o2.qed_check = state.qed_check;
   o2.check1 = check1;
   o2.check2 = check2;
   
   return o2;
}


void increment (word *a, word *b){
   int i;

       for (i = 0; i <= N; i++){
        #pragma HLS PIPELINE 
           a[i] = a[i] + i;
        }
        for (i = 0; i < M; i++){
        #pragma HLS PIPELINE
           b[i] = a[i] + a[i];
        }
}

word bmc_in[scale*N];

word LARc_out[scale*M];



uint8_t mem_num = 0;

#pragma design top
out3 aqed_top (bool orig, bool dup) {

out1 o1;
#pragma HLS data_pack variable=o1
out2 o2;
#pragma HLS data_pack variable=o2
out3 o3;
#pragma HLS data_pack variable=o3

word *inData;
word *outLARc;

word *inData_o;
word *outLARc_o;


//Iterate through the memory
inData = &bmc_in[(state.index)*N];
outLARc = &LARc_out[(state.index)*M];

inData_o = &bmc_in[0];
outLARc_o = &LARc_out[0];


o1 = aqed_in(inData, orig, dup);

Gsm_LPC_Analysis(inData, outLARc);

o2 = aqed_out(inData, outLARc);

if (state.index == 1){
    state.index = 0;}
else {
    state.index = 1;}

o3.qed_done = o2.qed_done;
o3.qed_check = o2.qed_check;
o3.orig_issued = state.orig_issued;
o3.orig_done = state.orig_done;
o3.check1 = o2.check1;
o3.check2 = o2.check2;

return o3;

}

