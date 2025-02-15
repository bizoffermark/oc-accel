open_project "hlsUpperCase_xcvu3p-ffvc1517-2-e"

set_top hls_action

# Can that be a list?
foreach file [ list action_uppercase.cpp  ] {
  add_files ${file} -cflags " -I/home/bizoffermark/workspace/comp-arch/simulator/oc-accel/actions/include -I/home/bizoffermark/workspace/comp-arch/simulator/oc-accel/software/include -I../../../software/examples -I../include"
  add_files -tb ${file} -cflags " -DNO_SYNTH -I/home/bizoffermark/workspace/comp-arch/simulator/oc-accel/actions/include -I/home/bizoffermark/workspace/comp-arch/simulator/oc-accel/software/include -I../../../software/examples -I../include"
}

open_solution "helloworld"
set_part xcvu3p-ffvc1517-2-e

create_clock -period 5 -name default
config_interface -m_axi_addr64=true
#config_rtl -reset all -reset_level low
config_schedule -enable_dsp_full_reg=true

csynth_design
#export_design -format ip_catalog -rtl vhdl
exit
