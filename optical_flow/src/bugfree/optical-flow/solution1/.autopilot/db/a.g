#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/esingh/aqed4saranyu/rosetta/rosetta/optical-flow/src/ocl/optical-flow/solution1/.autopilot/db/a.g.bc ${1+"$@"}
