## A-QED Verification on Bugs found in AES designs [Cong 17]

###Directory Hierarchy

Four bugs and the bugless design are looked into and can be found in the **./bug0**, **./bug1**, **./bug2**, **./bug3** and **./bugless** repsectively. Each of these folders contain  

1. __buf4*.cpp__ : The HLS synthesizable C++ file from which the RTL is generated using *Xilinx Vivado* HLS synthesis tool. It contains both the accelerator and the A-QED module. The top funcion of the accelerator is *workload* and that of the A-QED module is *aqed_top*. In the folders with buggy version, the bug in the accelerator is explained at **FIXME** comment.  
2. __aes.h__ : The C++ header file containing structures used by the accelerator.  
3. __BUG*/__ : The *Xilinx Vivado* project folder. The generated RTL files can be found in _./BUG*/solution1/syn/verilog_. **Warning: Synthesizing the RTL from C++, deletes the current */BUG*/solution1/syn/* folder**. Inside the _./BUG*/solution1/syn/verilog_ folder, besides the generated RTL,   
   1. _jasper.tcl_ : contains the tcl file that may be sourced to run BMC on the design with _Cadence Jaspergold_. 
   2. _aes.flist_ : contains the list of RTL files read by the formal tool
   3. _debug.sig_ : contains a list of waveform that were used for debugging the bug. Can be loaded into the _Cadence Jaspergold_ waveform viewer once the counter-example is found.
 
   	


### References
[Cong 17] Cong, J., et al., "Bandwidth Optimization Through On-Chip Memory Restructuring for HLS," Proc. DAC, 2017


