#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/esingh/aqed4saranyu/results/AES/AES_abstracted/cpp/aes_bug2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
