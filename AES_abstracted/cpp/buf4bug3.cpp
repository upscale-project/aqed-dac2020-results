/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/
#include "aes.h"
#include <string.h>
#include "ap_int.h"

#define F(x)   (((x)<<1) ^ ((((x)>>7) & 1) * 0x1b))
#define FD(x)  (((x) >> 1) ^ (((x) & 1) ? 0x8d : 0))

#define BACK_TO_TABLES
#ifdef BACK_TO_TABLES

#define BUF_SIZE_OFFSET 2
#define BUF_SIZE ((1) << (BUF_SIZE_OFFSET))

#define UNROLL_FACTOR 1 

extern "C" {

const uint8_t sbox[256] = {
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
    0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
    0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc,
    0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a,
    0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0,
    0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
    0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85,
    0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5,
    0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17,
    0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88,
    0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c,
    0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9,
    0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6,
    0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e,
    0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94,
    0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68,
    0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
};

#define rj_sbox(x)     sbox[(x)]

#else /* tableless subroutines */

/* -------------------------------------------------------------------------- */
uint8_t gf_alog(uint8_t x) // calculate anti-logarithm gen 3
{
    uint8_t atb = 1, z;

    alog : while (x--) {z = atb; atb <<= 1; if (z & 0x80) atb^= 0x1b; atb ^= z;}

    return atb;
} /* gf_alog */

/* -------------------------------------------------------------------------- */
uint8_t gf_log(uint8_t x) // calculate logarithm gen 3
{
    uint8_t atb = 1, i = 0, z;

    glog : do {
        if (atb == x) break;
        z = atb; atb <<= 1; if (z & 0x80) atb^= 0x1b; atb ^= z;
    } while (++i > 0);

    return i;
} /* gf_log */


/* -------------------------------------------------------------------------- */
uint8_t gf_mulinv(uint8_t x) // calculate multiplicative inverse
{
    return (x) ? gf_alog(255 - gf_log(x)) : 0;
} /* gf_mulinv */

/* -------------------------------------------------------------------------- */
uint8_t rj_sbox(uint8_t x)
{
    uint8_t y, sb;

    sb = y = gf_mulinv(x);
    y = (y<<1)|(y>>7); sb ^= y;  y = (y<<1)|(y>>7); sb ^= y;
    y = (y<<1)|(y>>7); sb ^= y;  y = (y<<1)|(y>>7); sb ^= y;

    return (sb ^ 0x63);
} /* rj_sbox */
#endif

/* -------------------------------------------------------------------------- */
uint8_t rj_xtime(uint8_t x)
{
    return (x & 0x80) ? ((x << 1) ^ 0x1b) : (x << 1);
} /* rj_xtime */

/* -------------------------------------------------------------------------- */
void aes_subBytes(uint8_t *buf)
{
    register uint8_t i = 2;

    sub : while (i--) {
    #pragma HLS PIPELINE
      buf[i] = rj_sbox(buf[i]);
    }
} /* aes_subBytes */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey(uint8_t *buf, uint8_t *key)
{
    register uint8_t i = 2;

    addkey : while (i--) {
    #pragma HLS PIPELINE
	buf[i] ^= key[i];
    }
} /* aes_addRoundKey */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey_cpy(uint8_t *buf, uint8_t *key, uint8_t *cpk)
{
    register uint8_t i = 2;

    cpkey : while (i--)  {
    #pragma HLS PIPELINE
        buf[i] ^= (cpk[i] = key[i]), cpk[16+i] = key[16 + i];
    }
} /* aes_addRoundKey_cpy */


/* -------------------------------------------------------------------------- */
void aes_shiftRows(uint8_t *buf)
{
    register uint8_t i, j; /* to make it potentially parallelable :) */

    //i = buf[1]; buf[1] = buf[5]; buf[5] = buf[9]; buf[9] = buf[13]; buf[13] = i;
    //i = buf[10]; buf[10] = buf[2]; buf[2] = i;
    //j = buf[3]; buf[3] = buf[15]; buf[15] = buf[11]; buf[11] = buf[7]; buf[7] = j;
    //j = buf[14]; buf[14] = buf[6]; buf[6]  = j;

} /* aes_shiftRows */

/* -------------------------------------------------------------------------- */
void aes_mixColumns(uint8_t *buf)
{
    register uint8_t i, a, b, c, d, e;

    mix : for (i = 0; i < 4; i += 4)
    {
        a = buf[i]; b = buf[i + 1];// c = buf[i + 2]; d = buf[i + 3];
        e = a ^ b;// ^ c ^ d;
        buf[i] ^= e ^ rj_xtime(a^b); //  buf[i+1] ^= e ^ rj_xtime(b^c);
        //buf[i+2] ^= e ^ rj_xtime(c^d); buf[i+3] ^= e ^ rj_xtime(d^a);
    }
} /* aes_mixColumns */

/* -------------------------------------------------------------------------- */
void aes_expandEncKey(uint8_t *k, uint8_t *rc)
{
    register uint8_t i;

    k[0] ^= rj_sbox(k[29]) ^ (*rc);
    k[1] ^= rj_sbox(k[30]);
    k[2] ^= rj_sbox(k[31]);
    k[3] ^= rj_sbox(k[28]);
    *rc = F( *rc);

    exp1 : for(i = 4; i < 16; i += 4) {
    #pragma HLS PIPELINE
	k[i] ^= k[i-4],   k[i+1] ^= k[i-3],
        k[i+2] ^= k[i-2], k[i+3] ^= k[i-1];
    }
    k[16] ^= rj_sbox(k[12]);
    k[17] ^= rj_sbox(k[13]);
    k[18] ^= rj_sbox(k[14]);
    k[19] ^= rj_sbox(k[15]);

    exp2 : for(i = 20; i < 32; i += 4) {
    #pragma HLS PIPELINE
	k[i] ^= k[i-4],   k[i+1] ^= k[i-3],
        k[i+2] ^= k[i-2], k[i+3] ^= k[i-1];
    }

} /* aes_expandEncKey */

/* -------------------------------------------------------------------------- */
void aes256_encrypt_ecb(uint8_t k[32], uint8_t buf[2])
{
    aes256_context ctx_body;
    aes256_context* ctx = &ctx_body;
    //INIT
    uint8_t rcon = 1;
    uint8_t i;

    ecb1 : for (i = 0; i < 32; i++){
    #pragma HLS PIPELINE
        ctx->enckey[i] = ctx->deckey[i] = k[i];
    }
/*    ecb2 : for (i = 8;--i;){
        aes_expandEncKey(ctx->deckey, &rcon);
    }
*/
    //DEC
    aes_addRoundKey_cpy(buf, ctx->enckey, ctx->key);
/*    ecb3 : for(i = 1, rcon = 1; i < 14; ++i)
    {
        aes_subBytes(buf);
        aes_shiftRows(buf);
        aes_mixColumns(buf);
        if( i & 1 ) aes_addRoundKey( buf, &ctx->key[16]);
        else aes_expandEncKey(ctx->key, &rcon), aes_addRoundKey(buf, ctx->key);
    }*/
    aes_subBytes(buf);
 // aes_shiftRows(buf);
 // aes_expandEncKey(ctx->key, &rcon);
    aes_addRoundKey(buf, ctx->key);
} /* aes256_encrypt */

void aes_tiling(uint8_t* local_key, uint8_t* buf) {
//    for (int k=0; k<BUF_SIZE/UNROLL_FACTOR; k+=2)
    for (int k=0; k<BUF_SIZE/UNROLL_FACTOR; k+=128)
        aes256_encrypt_ecb(local_key, buf + k);
}

void workload( uint8_t* key, uint8_t* data, ap_uint<3> size ) {
/*#pragma HLS INTERFACE m_axi port=key offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=data offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=key bundle=control
#pragma HLS INTERFACE s_axilite port=data bundle=control
#pragma HLS INTERFACE s_axilite port=size bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control*/

    uint8_t local_key[UNROLL_FACTOR][32];
    #pragma HLS ARRAY_PARTITION variable=local_key complete dim=1

    int i,j,k;
    for(i=0;i<32;i++){
    #pragma HLS UNROLL
	local_key[0][i] = key[i];
    }
//    memcpy(local_key[0], key, 32);
    for (j=0; j<32; j++) {
    #pragma HLS PIPELINE
        for (i=1; i<UNROLL_FACTOR; i++) {
	#pragma HLS UNROLL
	    local_key[i][j] = local_key[0][j];
	}
    }

    int num_batches = (size + BUF_SIZE - 1) / BUF_SIZE;
    int tail_size = size % BUF_SIZE;
    if (tail_size == 0) tail_size = BUF_SIZE;

    uint8_t buf[UNROLL_FACTOR][BUF_SIZE/UNROLL_FACTOR];
    #pragma HLS ARRAY_PARTITION variable=buf complete dim=1

    major_loop: for (i=0; i<num_batches; i++) {
        reshape1: for (j=0; j<UNROLL_FACTOR; j++) {
	    for(k=0;k<BUF_SIZE/UNROLL_FACTOR;k++){
       //         #pragma HLS UNROLL
        	buf[j][k] = *(data + i*BUF_SIZE + j*BUF_SIZE/UNROLL_FACTOR + k);
	    }
//	    memcpy(buf[j], data + i*BUF_SIZE + j*BUF_SIZE/UNROLL_FACTOR, BUF_SIZE/UNROLL_FACTOR);
//          memcpy(buf[j], data + j*BUF_SIZE + i*BUF_SIZE/UNROLL_FACTOR, BUF_SIZE/UNROLL_FACTOR);
	}
        unroll_loop: for (j=0; j<UNROLL_FACTOR; j++) {
	#pragma HLS UNROLL
	    aes_tiling(local_key[j], buf[j]);
	}
        reshape2: for (j=0; j<UNROLL_FACTOR; j++) {
	    for(k=0;k<BUF_SIZE/UNROLL_FACTOR;k++){
       //         #pragma HLS UNROLL
		*(data + i*BUF_SIZE + j*BUF_SIZE/UNROLL_FACTOR + k) = buf[j][k] ;
	    }

//	    memcpy(data + i*BUF_SIZE + j*BUF_SIZE/UNROLL_FACTOR, buf[j], BUF_SIZE/UNROLL_FACTOR);
	}
    }
    return;
}

}

int COUNT=8; // Number of Inputs


struct st{// initialization 
ap_uint<8> orig_val[2]={0};  ap_uint<8> dup_val[2]={0}; ap_uint<8> key[32]; ap_uint<16> orig_in=0xFFFF; ap_uint<8> orig_out[2]={0}; ap_uint<8> dup_out[2]={0}; ap_uint<1> orig_issued=0; ap_uint<1> dup_issued=0; ap_uint<16> dup_in=0xFFFF; ap_uint<16> in_count=0; ap_uint<16> out_count=0; ap_uint<1> orig_done=0; ap_uint<1> dup_done=0; ap_uint<8> output[128]; ap_uint<1> qed_done; ap_uint<1> qed_check; ap_uint<2> orig_idx; ap_uint<2> dup_idx;}; 

st state;
//#pragma HLS data_pack variable=state

struct out1{
  uint8_t aqed_out;
  uint8_t key_out;
  uint8_t num_out;
};

struct out2{
  ap_uint<1> qed_done;
  ap_uint<1> qed_check;
  ap_uint<1> orig_done;

};


struct out3{
  ap_uint<1> qed_done;
  ap_uint<1> qed_check;
  ap_uint<1> orig_issued;
  ap_uint<1> orig_done;
  ap_uint<8> dup[2];
};

// Inputs original and duplicate must be <= COUNT, i.e. binary if COUNT is 1 

#define AQED_SIZE 2 

out1 aqed_in (uint8_t *bmc_in, uint8_t *key, ap_uint<1> orig, ap_uint<1> dup, ap_uint<2> orig_idx, ap_uint<2> dup_idx, ap_uint<3> num) { 
/*#pragma HLS INTERFACE m_axi port=key offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bmc_in offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=key bundle=control
#pragma HLS INTERFACE s_axilite port=bmc_in bundle=control
#pragma HLS INTERFACE s_axilite port=num bundle=control*/
  
//      uint8_t *input;     
 
      ap_uint<1> issue_orig = (orig) && (orig_idx<=num) && !state.orig_issued; // Issue duplicate if original has been issued on a previous iteration or if multiple inputs are provided and the original and duplicate inputs match
      ap_int<8> key_sum = 0;
     for (int i = 0; i< 32; i++) {
     #pragma HLS UNROLL
         key_sum = state.key[i] - *(key+i);
     }

      ap_uint<1> issue_dup = (dup) && (dup_idx<=num)  && (!state.dup_issued) && ((state.orig_issued && (*(bmc_in + dup_idx*AQED_SIZE) == state.orig_val[0])) && (*(bmc_in + 1 + dup_idx*AQED_SIZE) == state.orig_val[1])) && (key_sum == 0) || ((issue_orig == 1) && (*(bmc_in + orig_idx*AQED_SIZE) == *(bmc_in + dup_idx*AQED_SIZE)) && (*(bmc_in + 1 + orig_idx*AQED_SIZE) == *(bmc_in + 1 + dup_idx*AQED_SIZE)));



//     if((orig > 0) || (dup > 0)){
//         input = bmc_in;
//     }


      if (issue_orig){
         // Use "original" to select the original input if multiple are provided            
         state.orig_issued =1; state.orig_val[0] = *(bmc_in + orig_idx*AQED_SIZE);
         state.orig_val[1] = *(bmc_in + 1 + orig_idx*AQED_SIZE);    
         state.orig_in =state.in_count; state.orig_idx = orig_idx;
         for (int i = 0; i<= 31; i++) {
             #pragma HLS UNROLL 
             state.key[i] = *(key+i);
         }
      }

      if (issue_dup){
         // Use "duplicate" to select the duplicate input if multiple are provided           
         state.dup_in =state.in_count; state.dup_idx = dup_idx; 
         state.dup_issued =1; state.dup_val[0] = *(bmc_in + dup_idx*AQED_SIZE);
         state.dup_val[1] = *(bmc_in + 1 + dup_idx*AQED_SIZE);
      }
       // Increment the input count with COUNT             
       state.in_count =state.in_count + 1; 
       out1 o1;
       o1.aqed_out = *bmc_in; o1.key_out = *key;  
       o1.num_out = num;

   return o1; 
} 

 

out2 aqed_out (uint8_t *acc_out, ap_uint<3> num) {
/*#pragma HLS INTERFACE m_axi port=acc_out offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=acc_out bundle=control
#pragma HLS INTERFACE s_axilite port=num bundle=control*/
//#pragma HLS INTERFACE ap_none port=return

/*    for(int i = 0;i<num;i++){
    #pragma HLS UNROLL
      	*(state.output + (state.out_count)*COUNT + i) = *(acc_out + i);
    }*/

   uint8_t *output;
   output = acc_out;

   state.orig_done = state.orig_issued && (state.out_count>= state.orig_in);
   if (state.orig_issued && (state.out_count == state.orig_in) && !state.qed_done){
      // Check if the original and duplicate outputs match
	state.orig_out[0] =*(output + state.orig_idx*AQED_SIZE);
        state.orig_out[1] =*(output + 1 + state.orig_idx*AQED_SIZE); 
        } 
   if (state.orig_issued && state.dup_issued && (state.out_count == state.dup_in) && !state.qed_done){
        state.qed_done = 1;
      // Check if the original and duplicate outputs match
	state.dup_out[0] =*(output + state.dup_idx*AQED_SIZE); 
        state.dup_out[1] =*(output + 1 + state.dup_idx*AQED_SIZE);
        state.qed_check = ((state.dup_out[0]==state.orig_out[0]) && (state.dup_out[1]==state.orig_out[1]));
        }
   if (state.out_count > state.dup_in){
        state.qed_done = 1;
   }
         state.out_count =state.out_count + 1; 
   out2 o2;
   o2.qed_done = state.qed_done;
   o2.qed_check = state.qed_check;

   return o2;
}


uint8_t bmc_in[BUF_SIZE*4];
uint8_t key_in[32];

//ap_uint<2> const_orig_i;
//ap_uint<2> const_dup_i;

#pragma design top
out3 aqed_top (/*uint8_t *key, uint8_t *bmc_in,*/ ap_uint<1> orig, ap_uint<1> dup, ap_uint<2> orig_idx, ap_uint<2> dup_idx, ap_uint<3> num) {
/*#pragma HLS INTERFACE m_axi port=key offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=bmc_in offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=key bundle=control
#pragma HLS INTERFACE s_axilite port=bmc_in bundle=control
#pragma HLS INTERFACE s_axilite port=num bundle=control*/
#pragma HLS INTERFACE ap_none port=return

out1 o1;
#pragma HLS data_pack variable=o1
out2 o2;
#pragma HLS data_pack variable=o2
out3 o3;
#pragma HLS data_pack variable=o3

num = 4;
ap_uint<3> aqed_num = num/AQED_SIZE;

o1 = aqed_in(bmc_in, key_in, orig, dup, orig_idx, dup_idx, aqed_num);

workload(key_in, bmc_in, num);

o2 = aqed_out(bmc_in, aqed_num);

o3.qed_done = o2.qed_done;
o3.qed_check = o2.qed_check;
o3.orig_issued = state.orig_issued;
o3.orig_done = state.orig_done;
o3.dup[0] = state.dup_val[0];
o3.dup[1] = state.dup_val[1];

return o3;

}


