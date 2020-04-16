#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/Saranyu/AES_1/AES_abstracted/cpp/bug1/BUG1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
