//
// Copyright 2003-2015 Mentor Graphics Corporation
//
// All Rights Reserved.
//
// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.
// 
//
// Copyright 2003-2015 Mentor Graphics Corporation
//
// All Rights Reserved.
//
// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.
// 

#include "defs.h"


//Two new parameters, capturing the size and number of inputs provided at the top level function call


ac_int<16,1> COUNT=1; // Number of Inputs


struct st{// initialization 
  ac_int<16,false> orig=0; ac_int<16,false> orig_in=0xFFFF; ac_int<16,false> orig_out=0; ac_int<16,false> dup_out=0; ac_int<1,false> orig_issued=0; ac_int<1,false> dup_issued=0; 
  ac_int<16,false> dup_in=0xFFFF; ac_int<16,false> in_count=0; ac_int<16,false> out_count=0; ac_int<1,false> orig_done=0; ac_int<1,false> dup_done=0; ac_int<16,false> output[128]; ac_int<1,false> qed_done; ac_int<1,false> qed_check; ac_int<1,false> orig_idx; ac_int<1,false> dup_idx;
}; 

st state;


struct out1{
  ac_int<16,false> aqed_out;
  ac_int<1,false> aqed_out_v;
  ac_int<1,false> full;
  
};

struct out2{
  ac_int<1,false> qed_done;
  ac_int<1,false> qed_check;
  ac_int<1,false> orig_done;

};


struct out3{
  ac_int<16,false> aqed_out;
  ac_int<1,false> aqed_out_v;
  ac_int<1,false> qed_done;
  ac_int<1,false> qed_check;
  ac_int<1,false> orig_issued;
  ac_int<1,false> orig_done;
  
};

// Inputs original and duplicate must be <= COUNT, i.e. binary if COUNT is 1 

out1 aqed_in (ac_int<16,false> *bmc_in, ac_int<1,false> bmc_v, ac_int<1,false> original, ac_int<1,false> duplicate, ac_int<1,false> full) { 


   if(bmc_v && !full){

      ac_int<1,false> issue_orig = (original > 0) && !state.orig_issued; // Issue duplicate if original has been issued on a previous iteration or if multiple inputs are provided and the original and duplicate inputs match
      ac_int<1,false> issue_dup = (duplicate > 0) && (!state.dup_issued) && ((state.orig_issued && (*bmc_in == state.orig)) || ((!state.orig_issued) && (original > 0) && (*(bmc_in + original-1) == *(bmc_in + duplicate-1)))); 

      // issue_other = ((duplicate == 0) || (COUNT > 1)); ---- Not used right now 

      if (issue_orig){
         // Use "original" to select the original input if multiple are provided            
         state.orig_issued =1; state.orig = *(bmc_in + (original-1));   
         state.orig_in =state.in_count; state.orig_idx = (original-1);
      }

      if (issue_dup){
         // Use "duplicate" to select the duplicate input if multiple are provided           
         state.dup_in =state.in_count; state.dup_idx = (duplicate- 1); state.dup_issued =1;
      }
       
       // Increment the input count with COUNT             
       state.in_count =state.in_count + COUNT; 
    }
       out1 o1;
       o1.aqed_out = *bmc_in; o1.aqed_out_v = bmc_v;  

   return o1; 
} 

 

out2 aqed_out (ac_int<16,false> *acc_out, ac_int<1,false> acc_out_v, ac_int<1,false> empty) { 

   if(acc_out_v && !empty){ 
      //Update the output count with COUNT
     ac_int<16,false> *output;
     output = acc_out;

  // If original and duplicate have been issued and the output count is greater than the duplicate input count, qed is done
   state.orig_done = state.orig_issued && (state.out_count>= state.orig_in);
   if (state.orig_issued && (state.out_count == state.orig_in) && !state.qed_done){
      // Check if the original and duplicate outputs match
	state.orig_out =*(output + state.orig_idx); 
       } 
   if (state.orig_issued && state.dup_issued && (state.out_count == state.dup_in) && !state.qed_done){
        state.qed_done = 1;
      // Check if the original and duplicate outputs match
	state.dup_out =*(output + state.dup_idx); 
        state.qed_check =(state.dup_out==state.orig_out);
      }
   if (state.out_count > state.dup_in){
        state.qed_done = 1;
      }
      state.out_count =state.out_count + 1;        }
   out2 o2;
   o2.qed_done = state.qed_done;
   o2.qed_check = state.qed_check;
   return o2;
}




#pragma design top
out3 aqed_top (ac_int<16,false> bmc_in, ac_int<1,false> bmc_v, ac_int<1,false> original, ac_int<1,false> duplicate, ac_int<1,false> full, ac_int<1,false> empty, ac_int<16,false> acc_out, ac_int<1,false> acc_out_v) {

out1 o1;
out2 o2;
out3 o3;

o1 = aqed_in(&bmc_in, bmc_v, original, duplicate, full);

o2 = aqed_out(&acc_out, acc_out_v, empty);

o3.aqed_out = o1.aqed_out;
o3.aqed_out_v = o1.aqed_out_v;
o3.qed_done = o2.qed_done;
o3.qed_check = o2.qed_check;
o3.orig_issued = state.orig_issued;
o3.orig_done = state.orig_done;

return o3;

}


