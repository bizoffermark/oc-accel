#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/bizoffermark/workspace/comp-arch/simulator/oc-accel/actions/hls_helloworld_1024/hw/hlsUpperCase_xcvu3p-ffvc1517-2-e/helloworld/.autopilot/db/a.g.bc ${1+"$@"}
