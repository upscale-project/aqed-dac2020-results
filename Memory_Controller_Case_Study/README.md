# Memory Controller Unit Case Study

Three configurations were explored - doublebuffer, FIFO and linebuffer from the [Memory Controller Unit](https://github.com/StanfordAHA/garnet/tree/master/memory_core), a part of the Garnet CGRA developed by Stanford AHA! Agile Hardware Center.  

### Directory Hierarchy

Each verification flow can be found in **DoubleBuffer/**, **FIFO/** and **LineBuffer/**.  
Each folder contains  
1. __aqed\_\*.cpp file__ : the C++ code for the A-QED function from which the A-QED verilog is generated using *Mentor Graphics Catapult* HLS synthesis tool.
2. __step*/__ : these folders contain the different steps taken in the verification flow. 
3. __README__ : Contains a table listing the bug found in each step, its counter-example length, runtime and its solution in the next step.

Each __step*/__ folder contains  
1. the verilog files of the Memory Controller unit.
2. __mem_core_top_1.sv__ : is the top. Acts as a wrapper around the Memory Controller and the A-QED module. Contains all the assertions and constraints and some extra hardware to ensure proper working of the accelerator in case of missing control signals.
3. __concat_rtl.v__ : the A-QED module generated from HLS.
4. __debug.sig__ : Waveforms we used to understand the bug.
5. __jasper.tcl__ : Can be sourced to load and fire the assertions in *Cadence JasperGold*.
6. __memory_core.flist__ : contains the list of verilog files parse by *Cadence JasperGold*.

### Assertions and Constraints

In the mem_core_top_1.sv,  
1. **assert_qed_match** : does the functional consistency check.
2. **assert_response_bound** : does response bound check.
3. **configure** : sets the configuration bits so that the Memory Controller functions properly in that configuraiton.
5. **cnst_depth** : Allows for symbolic initialization of some configuration bits like depth and iter_cnt, handles configuration criteria as well as takes care of FIFO full condition in FIFO versions where the buggy full signal has been removed.
6. __resource_constrain*__ : These enforce ready-valid protocol in the absence of ready-valid signals like when the accelerator is ready to take inputs in doublebuffer.

### Notes: 

1. The updation in each step is marked by the comment *\\\\updated* in the verilog code.
2. Rate-matched in doublebuffer and circular_en are two sub-configuration bits and the verification flow was performed once keeping them high and then keeping them low. More details can be found in the __README__ in each folder.
3. In doublebuffer response bound was checked only after a functional consistency check could not detect a bug in either sub-configuration produced by rate-matched. Specifically, response bound was checked in steps 12, 15-18.
4. In FIFO and linebuffer, response bound was checked whenever functional consistency could not detect a bug, specifically in steps 5,7 and 8 of FIFO and steps 1, 2, 3 and 5 of linebuffer. The bug in step 2 of linebuffer passed functional consistency check but was detected by response bound violation.



