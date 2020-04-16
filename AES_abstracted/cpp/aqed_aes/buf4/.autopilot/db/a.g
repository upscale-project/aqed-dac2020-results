#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/esingh/aqed4saranyu/results/AES/cpp/aqed_aes/buf4/.autopilot/db/a.g.bc ${1+"$@"}
