# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl_reg {
din_gmem_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
dout_gmem_V { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
act_reg_i { 
	dir I
	width 992
	depth 1
	mode ap_none
	offset 256
	offset_end 383
}
act_reg_o { 
	dir O
	width 992
	depth 1
	mode ap_vld
	offset 384
	offset_end 511
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict ctrl_reg $port_ctrl_reg


