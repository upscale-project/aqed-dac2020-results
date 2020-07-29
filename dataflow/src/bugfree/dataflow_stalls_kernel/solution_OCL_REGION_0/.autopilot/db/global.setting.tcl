
set TopModule "dataflow_stalls_kernel"
set ClockPeriod "5.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 1
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7vx690t:ffg1157:-2"
set SourceFiles {sc {} c /rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp}
set SourceFlags {sc {} c {{-g -DSET_FIFO_DEPTHS -DFLUSH_PIPELINE -std=c++0x}}}
set DirectiveFile {/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/set_fifo_depths/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel/dataflow_stalls_kernel/solution_OCL_REGION_0/solution_OCL_REGION_0.directive}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/virtex7/virtex7 xilinx/virtex7/virtex7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution_OCL_REGION_0.aps"
set AvePath "../.."
set HPFPO "0"
