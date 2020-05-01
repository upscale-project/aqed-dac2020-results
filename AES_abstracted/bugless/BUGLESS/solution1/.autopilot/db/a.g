#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bugless/BUGLESS/solution1/.autopilot/db/a.g.bc ${1+"$@"}
