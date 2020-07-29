#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /rsgs/pool0/Saranyu/gsm/cpp_bug4/gsm_new_2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
