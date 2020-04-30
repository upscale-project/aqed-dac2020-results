## A-QED Verification on AES Design [Cong 17] Bugs 

### Directory Hierarchy

Four bugs and the bugless design are looked into and can be found in the **./bug0**, **./bug1**, **./bug2**, **./bug3** and **./bugless** repsectively. Each folder contains  

1. __buf4*.cpp__ : The HLS synthesizable C++ file from which the verilog is generated using *Xilinx Vivado* HLS synthesis tool. It contains both the accelerator and the A-QED module. The top funcion of the accelerator is *workload* and that of the A-QED module is *aqed_top*. In the folders with buggy version, the bug in the accelerator is explained at **FIXME** comment.  
2. __aes.h__ : The C++ header file containing structures used by the accelerator.  
3. __BUG*/__ : The *Xilinx Vivado* project folder. The generated verilog files can be found in _./BUG*/solution1/syn/verilog_. __Warning: Synthesizing the RTL from C++, deletes the current */BUG*/solution1/syn/* folder__. The _./BUG*/solution1/syn/verilog_ folder, besides the generated verilog, contains  
   1. _jasper.tcl_ : contains the tcl file that may be sourced to run BMC on the design with _Cadence JasperGold_. 
   2. _aes.flist_ : contains the list of verilog files read by the formal tool
   3. _debug.sig_ : contains a list of waveform that were used for debugging the bug. Can be loaded into the _Cadence JasperGold_ waveform viewer once the counter-example is found.

### Assertion
   The **assert_qed_match** is the  universal *Functional Consistency* check assertion and can be found in *aqed_top.v* in _bug*/BUG*/solution1/syn/verilog_.

### Constraints 
   All constraints can be found in *aqed_top.v*. They are  
1. **assume_stable_orig/dup_idx** : This ensures the BMC tool chooses the position of original and duplicate element in a batch during reset and holds them fixed throughout its run. 
2. *Xilinx Vivado* uses *initial* blocks to initialize registers. However, *Cadence JasperGold* ignores *initial* blocks in verilog. To bridge this disparity, an additional constraint **assume_consistent_key** was placed to fix the values in the registers in the ROM modules from where the key is read otherwise the BMC tool treats them as free nets and assign different key values for the original and duplicate batches leading to spurious counter-examples. If different ROMs are accessed by each element of the batch, they need to contain the same key. All these are captured in  **assume_consistent_key**. 

### Edits and Modifications

#### Verilog Edits
   Because of the disparity between *JasperGold* and *Vivado*, we had to edit some of the verilog files. All edits are commented with *\\\edit*.  
1. **aqed_top.v, aqed_in.v, aqed_out.v** : Reset conditions inside *always* blocks were inserted for the all the _state\_*\_V_ reg variables. _state\_orig\_in\_V_ and _state\_dup\_in\_V_ in **aqed_top.v** are reset to _'hFFFF_ and all other variables are reset to 0. _idx_ct_V_, _o2_qed_check_V_reg*_ and _o2_qed_done_V_reg*_ in **aqed_top.v** also needs to be reset to 0.
2. **aes256_encrypt_ecb_sbox.v** : The sbox values were manually assigned to every register in *aes256\_encrypt\_ecb\_sbox\_rom* module from aes256\_encrypt\_ecb\_sbox\_rom.dat. 
3. **aqed_in_state_key_V.v, aes256_encrypt_ecb_ctx_body_key.v** : In *aes256_encrypt_ecb_ctx_body_key_ram* and *aqed_in_state_key_V_ram* modules, *Vivado* all updation of the same register in two different *always* blocks. *JasperGold* cannot resolve this multi-driver conflict and treats the register as a free net. To remove this multi-driver conflict, the two blocks were combined and blocking assignments were used instead of non-blocking ones.

#### C++ code Edits
   Because the full AES module proved too large for the BMC tool to handle, some functions were abstracted away and BUF_SIZE macro was reduced to 4 instead of 2^12. The pragmas for generating an axi interface were also removed. Since the standard C++ memcpy function is incompatible for synthesis without these m\_axi interface, instead a for loop updating arrays elementwise was done.

### References
[Cong 17] Cong, J., et al., "Bandwidth Optimization Through On-Chip Memory Restructuring for HLS," Proc. DAC, 2017


