#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug2/BUG2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
