#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/set_fifo_depths/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel/dataflow_stalls_kernel/solution_OCL_REGION_0/.autopilot/db/a.g.bc ${1+"$@"}
