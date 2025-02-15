-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_action is
generic (
    C_M_AXI_HOST_MEM_ADDR_WIDTH : INTEGER := 64;
    C_M_AXI_HOST_MEM_ID_WIDTH : INTEGER := 1;
    C_M_AXI_HOST_MEM_AWUSER_WIDTH : INTEGER := 1;
    C_M_AXI_HOST_MEM_DATA_WIDTH : INTEGER := 1024;
    C_M_AXI_HOST_MEM_WUSER_WIDTH : INTEGER := 1;
    C_M_AXI_HOST_MEM_ARUSER_WIDTH : INTEGER := 1;
    C_M_AXI_HOST_MEM_RUSER_WIDTH : INTEGER := 1;
    C_M_AXI_HOST_MEM_BUSER_WIDTH : INTEGER := 1;
    C_S_AXI_CTRL_REG_ADDR_WIDTH : INTEGER := 9;
    C_S_AXI_CTRL_REG_DATA_WIDTH : INTEGER := 32;
    C_M_AXI_HOST_MEM_USER_VALUE : INTEGER := 0;
    C_M_AXI_HOST_MEM_PROT_VALUE : INTEGER := 0;
    C_M_AXI_HOST_MEM_CACHE_VALUE : INTEGER := 3 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    m_axi_host_mem_AWVALID : OUT STD_LOGIC;
    m_axi_host_mem_AWREADY : IN STD_LOGIC;
    m_axi_host_mem_AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ADDR_WIDTH-1 downto 0);
    m_axi_host_mem_AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ID_WIDTH-1 downto 0);
    m_axi_host_mem_AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_host_mem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_host_mem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_host_mem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_AWUSER_WIDTH-1 downto 0);
    m_axi_host_mem_WVALID : OUT STD_LOGIC;
    m_axi_host_mem_WREADY : IN STD_LOGIC;
    m_axi_host_mem_WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_DATA_WIDTH-1 downto 0);
    m_axi_host_mem_WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_DATA_WIDTH/8-1 downto 0);
    m_axi_host_mem_WLAST : OUT STD_LOGIC;
    m_axi_host_mem_WID : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ID_WIDTH-1 downto 0);
    m_axi_host_mem_WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_WUSER_WIDTH-1 downto 0);
    m_axi_host_mem_ARVALID : OUT STD_LOGIC;
    m_axi_host_mem_ARREADY : IN STD_LOGIC;
    m_axi_host_mem_ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ADDR_WIDTH-1 downto 0);
    m_axi_host_mem_ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ID_WIDTH-1 downto 0);
    m_axi_host_mem_ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_host_mem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_host_mem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_host_mem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_host_mem_ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ARUSER_WIDTH-1 downto 0);
    m_axi_host_mem_RVALID : IN STD_LOGIC;
    m_axi_host_mem_RREADY : OUT STD_LOGIC;
    m_axi_host_mem_RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_DATA_WIDTH-1 downto 0);
    m_axi_host_mem_RLAST : IN STD_LOGIC;
    m_axi_host_mem_RID : IN STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ID_WIDTH-1 downto 0);
    m_axi_host_mem_RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_RUSER_WIDTH-1 downto 0);
    m_axi_host_mem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_BVALID : IN STD_LOGIC;
    m_axi_host_mem_BREADY : OUT STD_LOGIC;
    m_axi_host_mem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_host_mem_BID : IN STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_ID_WIDTH-1 downto 0);
    m_axi_host_mem_BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_HOST_MEM_BUSER_WIDTH-1 downto 0);
    s_axi_ctrl_reg_AWVALID : IN STD_LOGIC;
    s_axi_ctrl_reg_AWREADY : OUT STD_LOGIC;
    s_axi_ctrl_reg_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_REG_ADDR_WIDTH-1 downto 0);
    s_axi_ctrl_reg_WVALID : IN STD_LOGIC;
    s_axi_ctrl_reg_WREADY : OUT STD_LOGIC;
    s_axi_ctrl_reg_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_REG_DATA_WIDTH-1 downto 0);
    s_axi_ctrl_reg_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_REG_DATA_WIDTH/8-1 downto 0);
    s_axi_ctrl_reg_ARVALID : IN STD_LOGIC;
    s_axi_ctrl_reg_ARREADY : OUT STD_LOGIC;
    s_axi_ctrl_reg_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_REG_ADDR_WIDTH-1 downto 0);
    s_axi_ctrl_reg_RVALID : OUT STD_LOGIC;
    s_axi_ctrl_reg_RREADY : IN STD_LOGIC;
    s_axi_ctrl_reg_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CTRL_REG_DATA_WIDTH-1 downto 0);
    s_axi_ctrl_reg_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_ctrl_reg_BVALID : OUT STD_LOGIC;
    s_axi_ctrl_reg_BREADY : IN STD_LOGIC;
    s_axi_ctrl_reg_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of hls_action is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "hls_action,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcvu3p-ffvc1517-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.375000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=115,HLS_SYN_DSP=0,HLS_SYN_FF=7729,HLS_SYN_LUT=9295,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_M_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv32_DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011011111";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_13F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100111111";
    constant ap_const_lv32_102 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000010";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal din_gmem_V : STD_LOGIC_VECTOR (63 downto 0);
    signal dout_gmem_V : STD_LOGIC_VECTOR (63 downto 0);
    signal act_reg_i : STD_LOGIC_VECTOR (991 downto 0);
    signal act_reg_o : STD_LOGIC_VECTOR (991 downto 0);
    signal act_reg_o_ap_vld : STD_LOGIC;
    signal host_mem_AWVALID : STD_LOGIC;
    signal host_mem_AWREADY : STD_LOGIC;
    signal host_mem_WVALID : STD_LOGIC;
    signal host_mem_WREADY : STD_LOGIC;
    signal host_mem_ARVALID : STD_LOGIC;
    signal host_mem_ARREADY : STD_LOGIC;
    signal host_mem_RVALID : STD_LOGIC;
    signal host_mem_RREADY : STD_LOGIC;
    signal host_mem_RDATA : STD_LOGIC_VECTOR (1023 downto 0);
    signal host_mem_RLAST : STD_LOGIC;
    signal host_mem_RID : STD_LOGIC_VECTOR (0 downto 0);
    signal host_mem_RUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal host_mem_RRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal host_mem_BVALID : STD_LOGIC;
    signal host_mem_BREADY : STD_LOGIC;
    signal host_mem_BRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal host_mem_BID : STD_LOGIC_VECTOR (0 downto 0);
    signal host_mem_BUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_gmem_V3_reg_182 : STD_LOGIC_VECTOR (56 downto 0);
    signal din_gmem_V1_reg_187 : STD_LOGIC_VECTOR (56 downto 0);
    signal act_reg_Data_in_addr_reg_192 : STD_LOGIC_VECTOR (63 downto 0);
    signal act_reg_Data_in_size_reg_197 : STD_LOGIC_VECTOR (31 downto 0);
    signal act_reg_Data_out_add_reg_202 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_process_action_fu_103_ap_start : STD_LOGIC;
    signal grp_process_action_fu_103_ap_done : STD_LOGIC;
    signal grp_process_action_fu_103_ap_idle : STD_LOGIC;
    signal grp_process_action_fu_103_ap_ready : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWVALID : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WVALID : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WDATA : STD_LOGIC_VECTOR (1023 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WSTRB : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WLAST : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARVALID : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_process_action_fu_103_m_axi_din_gmem_V_RREADY : STD_LOGIC;
    signal grp_process_action_fu_103_m_axi_din_gmem_V_BREADY : STD_LOGIC;
    signal grp_process_action_fu_103_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component process_action IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        m_axi_din_gmem_V_AWVALID : OUT STD_LOGIC;
        m_axi_din_gmem_V_AWREADY : IN STD_LOGIC;
        m_axi_din_gmem_V_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_din_gmem_V_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_din_gmem_V_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_din_gmem_V_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_din_gmem_V_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_WVALID : OUT STD_LOGIC;
        m_axi_din_gmem_V_WREADY : IN STD_LOGIC;
        m_axi_din_gmem_V_WDATA : OUT STD_LOGIC_VECTOR (1023 downto 0);
        m_axi_din_gmem_V_WSTRB : OUT STD_LOGIC_VECTOR (127 downto 0);
        m_axi_din_gmem_V_WLAST : OUT STD_LOGIC;
        m_axi_din_gmem_V_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_ARVALID : OUT STD_LOGIC;
        m_axi_din_gmem_V_ARREADY : IN STD_LOGIC;
        m_axi_din_gmem_V_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_din_gmem_V_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_din_gmem_V_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_din_gmem_V_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_din_gmem_V_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_din_gmem_V_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_RVALID : IN STD_LOGIC;
        m_axi_din_gmem_V_RREADY : OUT STD_LOGIC;
        m_axi_din_gmem_V_RDATA : IN STD_LOGIC_VECTOR (1023 downto 0);
        m_axi_din_gmem_V_RLAST : IN STD_LOGIC;
        m_axi_din_gmem_V_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_BVALID : IN STD_LOGIC;
        m_axi_din_gmem_V_BREADY : OUT STD_LOGIC;
        m_axi_din_gmem_V_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_din_gmem_V_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_din_gmem_V_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        din_gmem_V_offset : IN STD_LOGIC_VECTOR (56 downto 0);
        dout_gmem_V_offset : IN STD_LOGIC_VECTOR (56 downto 0);
        act_reg_Data_in_addr : IN STD_LOGIC_VECTOR (63 downto 0);
        act_reg_Data_in_size : IN STD_LOGIC_VECTOR (31 downto 0);
        act_reg_Data_out_add : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component hls_action_ctrl_reg_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        din_gmem_V : OUT STD_LOGIC_VECTOR (63 downto 0);
        dout_gmem_V : OUT STD_LOGIC_VECTOR (63 downto 0);
        act_reg_o : IN STD_LOGIC_VECTOR (991 downto 0);
        act_reg_o_ap_vld : IN STD_LOGIC;
        act_reg_i : OUT STD_LOGIC_VECTOR (991 downto 0);
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;


    component hls_action_host_mem_m_axi IS
    generic (
        CONSERVATIVE : INTEGER;
        USER_DW : INTEGER;
        USER_AW : INTEGER;
        USER_MAXREQS : INTEGER;
        NUM_READ_OUTSTANDING : INTEGER;
        NUM_WRITE_OUTSTANDING : INTEGER;
        MAX_READ_BURST_LENGTH : INTEGER;
        MAX_WRITE_BURST_LENGTH : INTEGER;
        C_M_AXI_ID_WIDTH : INTEGER;
        C_M_AXI_ADDR_WIDTH : INTEGER;
        C_M_AXI_DATA_WIDTH : INTEGER;
        C_M_AXI_AWUSER_WIDTH : INTEGER;
        C_M_AXI_ARUSER_WIDTH : INTEGER;
        C_M_AXI_WUSER_WIDTH : INTEGER;
        C_M_AXI_RUSER_WIDTH : INTEGER;
        C_M_AXI_BUSER_WIDTH : INTEGER;
        C_USER_VALUE : INTEGER;
        C_PROT_VALUE : INTEGER;
        C_CACHE_VALUE : INTEGER );
    port (
        AWVALID : OUT STD_LOGIC;
        AWREADY : IN STD_LOGIC;
        AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_AWUSER_WIDTH-1 downto 0);
        WVALID : OUT STD_LOGIC;
        WREADY : IN STD_LOGIC;
        WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST : OUT STD_LOGIC;
        WID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_WUSER_WIDTH-1 downto 0);
        ARVALID : OUT STD_LOGIC;
        ARREADY : IN STD_LOGIC;
        ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_ARUSER_WIDTH-1 downto 0);
        RVALID : IN STD_LOGIC;
        RREADY : OUT STD_LOGIC;
        RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        RLAST : IN STD_LOGIC;
        RID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_RUSER_WIDTH-1 downto 0);
        RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BVALID : IN STD_LOGIC;
        BREADY : OUT STD_LOGIC;
        BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_BUSER_WIDTH-1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        I_ARVALID : IN STD_LOGIC;
        I_ARREADY : OUT STD_LOGIC;
        I_ARADDR : IN STD_LOGIC_VECTOR (63 downto 0);
        I_ARID : IN STD_LOGIC_VECTOR (0 downto 0);
        I_ARLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_ARSIZE : IN STD_LOGIC_VECTOR (2 downto 0);
        I_ARLOCK : IN STD_LOGIC_VECTOR (1 downto 0);
        I_ARCACHE : IN STD_LOGIC_VECTOR (3 downto 0);
        I_ARQOS : IN STD_LOGIC_VECTOR (3 downto 0);
        I_ARPROT : IN STD_LOGIC_VECTOR (2 downto 0);
        I_ARUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        I_ARBURST : IN STD_LOGIC_VECTOR (1 downto 0);
        I_ARREGION : IN STD_LOGIC_VECTOR (3 downto 0);
        I_RVALID : OUT STD_LOGIC;
        I_RREADY : IN STD_LOGIC;
        I_RDATA : OUT STD_LOGIC_VECTOR (1023 downto 0);
        I_RID : OUT STD_LOGIC_VECTOR (0 downto 0);
        I_RUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        I_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        I_RLAST : OUT STD_LOGIC;
        I_AWVALID : IN STD_LOGIC;
        I_AWREADY : OUT STD_LOGIC;
        I_AWADDR : IN STD_LOGIC_VECTOR (63 downto 0);
        I_AWID : IN STD_LOGIC_VECTOR (0 downto 0);
        I_AWLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_AWSIZE : IN STD_LOGIC_VECTOR (2 downto 0);
        I_AWLOCK : IN STD_LOGIC_VECTOR (1 downto 0);
        I_AWCACHE : IN STD_LOGIC_VECTOR (3 downto 0);
        I_AWQOS : IN STD_LOGIC_VECTOR (3 downto 0);
        I_AWPROT : IN STD_LOGIC_VECTOR (2 downto 0);
        I_AWUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        I_AWBURST : IN STD_LOGIC_VECTOR (1 downto 0);
        I_AWREGION : IN STD_LOGIC_VECTOR (3 downto 0);
        I_WVALID : IN STD_LOGIC;
        I_WREADY : OUT STD_LOGIC;
        I_WDATA : IN STD_LOGIC_VECTOR (1023 downto 0);
        I_WID : IN STD_LOGIC_VECTOR (0 downto 0);
        I_WUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        I_WLAST : IN STD_LOGIC;
        I_WSTRB : IN STD_LOGIC_VECTOR (127 downto 0);
        I_BVALID : OUT STD_LOGIC;
        I_BREADY : IN STD_LOGIC;
        I_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        I_BID : OUT STD_LOGIC_VECTOR (0 downto 0);
        I_BUSER : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    hls_action_ctrl_reg_s_axi_U : component hls_action_ctrl_reg_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CTRL_REG_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CTRL_REG_DATA_WIDTH)
    port map (
        AWVALID => s_axi_ctrl_reg_AWVALID,
        AWREADY => s_axi_ctrl_reg_AWREADY,
        AWADDR => s_axi_ctrl_reg_AWADDR,
        WVALID => s_axi_ctrl_reg_WVALID,
        WREADY => s_axi_ctrl_reg_WREADY,
        WDATA => s_axi_ctrl_reg_WDATA,
        WSTRB => s_axi_ctrl_reg_WSTRB,
        ARVALID => s_axi_ctrl_reg_ARVALID,
        ARREADY => s_axi_ctrl_reg_ARREADY,
        ARADDR => s_axi_ctrl_reg_ARADDR,
        RVALID => s_axi_ctrl_reg_RVALID,
        RREADY => s_axi_ctrl_reg_RREADY,
        RDATA => s_axi_ctrl_reg_RDATA,
        RRESP => s_axi_ctrl_reg_RRESP,
        BVALID => s_axi_ctrl_reg_BVALID,
        BREADY => s_axi_ctrl_reg_BREADY,
        BRESP => s_axi_ctrl_reg_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        din_gmem_V => din_gmem_V,
        dout_gmem_V => dout_gmem_V,
        act_reg_o => act_reg_o,
        act_reg_o_ap_vld => act_reg_o_ap_vld,
        act_reg_i => act_reg_i,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    hls_action_host_mem_m_axi_U : component hls_action_host_mem_m_axi
    generic map (
        CONSERVATIVE => 0,
        USER_DW => 1024,
        USER_AW => 64,
        USER_MAXREQS => 5,
        NUM_READ_OUTSTANDING => 16,
        NUM_WRITE_OUTSTANDING => 16,
        MAX_READ_BURST_LENGTH => 64,
        MAX_WRITE_BURST_LENGTH => 64,
        C_M_AXI_ID_WIDTH => C_M_AXI_HOST_MEM_ID_WIDTH,
        C_M_AXI_ADDR_WIDTH => C_M_AXI_HOST_MEM_ADDR_WIDTH,
        C_M_AXI_DATA_WIDTH => C_M_AXI_HOST_MEM_DATA_WIDTH,
        C_M_AXI_AWUSER_WIDTH => C_M_AXI_HOST_MEM_AWUSER_WIDTH,
        C_M_AXI_ARUSER_WIDTH => C_M_AXI_HOST_MEM_ARUSER_WIDTH,
        C_M_AXI_WUSER_WIDTH => C_M_AXI_HOST_MEM_WUSER_WIDTH,
        C_M_AXI_RUSER_WIDTH => C_M_AXI_HOST_MEM_RUSER_WIDTH,
        C_M_AXI_BUSER_WIDTH => C_M_AXI_HOST_MEM_BUSER_WIDTH,
        C_USER_VALUE => C_M_AXI_HOST_MEM_USER_VALUE,
        C_PROT_VALUE => C_M_AXI_HOST_MEM_PROT_VALUE,
        C_CACHE_VALUE => C_M_AXI_HOST_MEM_CACHE_VALUE)
    port map (
        AWVALID => m_axi_host_mem_AWVALID,
        AWREADY => m_axi_host_mem_AWREADY,
        AWADDR => m_axi_host_mem_AWADDR,
        AWID => m_axi_host_mem_AWID,
        AWLEN => m_axi_host_mem_AWLEN,
        AWSIZE => m_axi_host_mem_AWSIZE,
        AWBURST => m_axi_host_mem_AWBURST,
        AWLOCK => m_axi_host_mem_AWLOCK,
        AWCACHE => m_axi_host_mem_AWCACHE,
        AWPROT => m_axi_host_mem_AWPROT,
        AWQOS => m_axi_host_mem_AWQOS,
        AWREGION => m_axi_host_mem_AWREGION,
        AWUSER => m_axi_host_mem_AWUSER,
        WVALID => m_axi_host_mem_WVALID,
        WREADY => m_axi_host_mem_WREADY,
        WDATA => m_axi_host_mem_WDATA,
        WSTRB => m_axi_host_mem_WSTRB,
        WLAST => m_axi_host_mem_WLAST,
        WID => m_axi_host_mem_WID,
        WUSER => m_axi_host_mem_WUSER,
        ARVALID => m_axi_host_mem_ARVALID,
        ARREADY => m_axi_host_mem_ARREADY,
        ARADDR => m_axi_host_mem_ARADDR,
        ARID => m_axi_host_mem_ARID,
        ARLEN => m_axi_host_mem_ARLEN,
        ARSIZE => m_axi_host_mem_ARSIZE,
        ARBURST => m_axi_host_mem_ARBURST,
        ARLOCK => m_axi_host_mem_ARLOCK,
        ARCACHE => m_axi_host_mem_ARCACHE,
        ARPROT => m_axi_host_mem_ARPROT,
        ARQOS => m_axi_host_mem_ARQOS,
        ARREGION => m_axi_host_mem_ARREGION,
        ARUSER => m_axi_host_mem_ARUSER,
        RVALID => m_axi_host_mem_RVALID,
        RREADY => m_axi_host_mem_RREADY,
        RDATA => m_axi_host_mem_RDATA,
        RLAST => m_axi_host_mem_RLAST,
        RID => m_axi_host_mem_RID,
        RUSER => m_axi_host_mem_RUSER,
        RRESP => m_axi_host_mem_RRESP,
        BVALID => m_axi_host_mem_BVALID,
        BREADY => m_axi_host_mem_BREADY,
        BRESP => m_axi_host_mem_BRESP,
        BID => m_axi_host_mem_BID,
        BUSER => m_axi_host_mem_BUSER,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        I_ARVALID => host_mem_ARVALID,
        I_ARREADY => host_mem_ARREADY,
        I_ARADDR => grp_process_action_fu_103_m_axi_din_gmem_V_ARADDR,
        I_ARID => grp_process_action_fu_103_m_axi_din_gmem_V_ARID,
        I_ARLEN => grp_process_action_fu_103_m_axi_din_gmem_V_ARLEN,
        I_ARSIZE => grp_process_action_fu_103_m_axi_din_gmem_V_ARSIZE,
        I_ARLOCK => grp_process_action_fu_103_m_axi_din_gmem_V_ARLOCK,
        I_ARCACHE => grp_process_action_fu_103_m_axi_din_gmem_V_ARCACHE,
        I_ARQOS => grp_process_action_fu_103_m_axi_din_gmem_V_ARQOS,
        I_ARPROT => grp_process_action_fu_103_m_axi_din_gmem_V_ARPROT,
        I_ARUSER => grp_process_action_fu_103_m_axi_din_gmem_V_ARUSER,
        I_ARBURST => grp_process_action_fu_103_m_axi_din_gmem_V_ARBURST,
        I_ARREGION => grp_process_action_fu_103_m_axi_din_gmem_V_ARREGION,
        I_RVALID => host_mem_RVALID,
        I_RREADY => host_mem_RREADY,
        I_RDATA => host_mem_RDATA,
        I_RID => host_mem_RID,
        I_RUSER => host_mem_RUSER,
        I_RRESP => host_mem_RRESP,
        I_RLAST => host_mem_RLAST,
        I_AWVALID => host_mem_AWVALID,
        I_AWREADY => host_mem_AWREADY,
        I_AWADDR => grp_process_action_fu_103_m_axi_din_gmem_V_AWADDR,
        I_AWID => grp_process_action_fu_103_m_axi_din_gmem_V_AWID,
        I_AWLEN => grp_process_action_fu_103_m_axi_din_gmem_V_AWLEN,
        I_AWSIZE => grp_process_action_fu_103_m_axi_din_gmem_V_AWSIZE,
        I_AWLOCK => grp_process_action_fu_103_m_axi_din_gmem_V_AWLOCK,
        I_AWCACHE => grp_process_action_fu_103_m_axi_din_gmem_V_AWCACHE,
        I_AWQOS => grp_process_action_fu_103_m_axi_din_gmem_V_AWQOS,
        I_AWPROT => grp_process_action_fu_103_m_axi_din_gmem_V_AWPROT,
        I_AWUSER => grp_process_action_fu_103_m_axi_din_gmem_V_AWUSER,
        I_AWBURST => grp_process_action_fu_103_m_axi_din_gmem_V_AWBURST,
        I_AWREGION => grp_process_action_fu_103_m_axi_din_gmem_V_AWREGION,
        I_WVALID => host_mem_WVALID,
        I_WREADY => host_mem_WREADY,
        I_WDATA => grp_process_action_fu_103_m_axi_din_gmem_V_WDATA,
        I_WID => grp_process_action_fu_103_m_axi_din_gmem_V_WID,
        I_WUSER => grp_process_action_fu_103_m_axi_din_gmem_V_WUSER,
        I_WLAST => grp_process_action_fu_103_m_axi_din_gmem_V_WLAST,
        I_WSTRB => grp_process_action_fu_103_m_axi_din_gmem_V_WSTRB,
        I_BVALID => host_mem_BVALID,
        I_BREADY => host_mem_BREADY,
        I_BRESP => host_mem_BRESP,
        I_BID => host_mem_BID,
        I_BUSER => host_mem_BUSER);

    grp_process_action_fu_103 : component process_action
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_process_action_fu_103_ap_start,
        ap_done => grp_process_action_fu_103_ap_done,
        ap_idle => grp_process_action_fu_103_ap_idle,
        ap_ready => grp_process_action_fu_103_ap_ready,
        m_axi_din_gmem_V_AWVALID => grp_process_action_fu_103_m_axi_din_gmem_V_AWVALID,
        m_axi_din_gmem_V_AWREADY => host_mem_AWREADY,
        m_axi_din_gmem_V_AWADDR => grp_process_action_fu_103_m_axi_din_gmem_V_AWADDR,
        m_axi_din_gmem_V_AWID => grp_process_action_fu_103_m_axi_din_gmem_V_AWID,
        m_axi_din_gmem_V_AWLEN => grp_process_action_fu_103_m_axi_din_gmem_V_AWLEN,
        m_axi_din_gmem_V_AWSIZE => grp_process_action_fu_103_m_axi_din_gmem_V_AWSIZE,
        m_axi_din_gmem_V_AWBURST => grp_process_action_fu_103_m_axi_din_gmem_V_AWBURST,
        m_axi_din_gmem_V_AWLOCK => grp_process_action_fu_103_m_axi_din_gmem_V_AWLOCK,
        m_axi_din_gmem_V_AWCACHE => grp_process_action_fu_103_m_axi_din_gmem_V_AWCACHE,
        m_axi_din_gmem_V_AWPROT => grp_process_action_fu_103_m_axi_din_gmem_V_AWPROT,
        m_axi_din_gmem_V_AWQOS => grp_process_action_fu_103_m_axi_din_gmem_V_AWQOS,
        m_axi_din_gmem_V_AWREGION => grp_process_action_fu_103_m_axi_din_gmem_V_AWREGION,
        m_axi_din_gmem_V_AWUSER => grp_process_action_fu_103_m_axi_din_gmem_V_AWUSER,
        m_axi_din_gmem_V_WVALID => grp_process_action_fu_103_m_axi_din_gmem_V_WVALID,
        m_axi_din_gmem_V_WREADY => host_mem_WREADY,
        m_axi_din_gmem_V_WDATA => grp_process_action_fu_103_m_axi_din_gmem_V_WDATA,
        m_axi_din_gmem_V_WSTRB => grp_process_action_fu_103_m_axi_din_gmem_V_WSTRB,
        m_axi_din_gmem_V_WLAST => grp_process_action_fu_103_m_axi_din_gmem_V_WLAST,
        m_axi_din_gmem_V_WID => grp_process_action_fu_103_m_axi_din_gmem_V_WID,
        m_axi_din_gmem_V_WUSER => grp_process_action_fu_103_m_axi_din_gmem_V_WUSER,
        m_axi_din_gmem_V_ARVALID => grp_process_action_fu_103_m_axi_din_gmem_V_ARVALID,
        m_axi_din_gmem_V_ARREADY => host_mem_ARREADY,
        m_axi_din_gmem_V_ARADDR => grp_process_action_fu_103_m_axi_din_gmem_V_ARADDR,
        m_axi_din_gmem_V_ARID => grp_process_action_fu_103_m_axi_din_gmem_V_ARID,
        m_axi_din_gmem_V_ARLEN => grp_process_action_fu_103_m_axi_din_gmem_V_ARLEN,
        m_axi_din_gmem_V_ARSIZE => grp_process_action_fu_103_m_axi_din_gmem_V_ARSIZE,
        m_axi_din_gmem_V_ARBURST => grp_process_action_fu_103_m_axi_din_gmem_V_ARBURST,
        m_axi_din_gmem_V_ARLOCK => grp_process_action_fu_103_m_axi_din_gmem_V_ARLOCK,
        m_axi_din_gmem_V_ARCACHE => grp_process_action_fu_103_m_axi_din_gmem_V_ARCACHE,
        m_axi_din_gmem_V_ARPROT => grp_process_action_fu_103_m_axi_din_gmem_V_ARPROT,
        m_axi_din_gmem_V_ARQOS => grp_process_action_fu_103_m_axi_din_gmem_V_ARQOS,
        m_axi_din_gmem_V_ARREGION => grp_process_action_fu_103_m_axi_din_gmem_V_ARREGION,
        m_axi_din_gmem_V_ARUSER => grp_process_action_fu_103_m_axi_din_gmem_V_ARUSER,
        m_axi_din_gmem_V_RVALID => host_mem_RVALID,
        m_axi_din_gmem_V_RREADY => grp_process_action_fu_103_m_axi_din_gmem_V_RREADY,
        m_axi_din_gmem_V_RDATA => host_mem_RDATA,
        m_axi_din_gmem_V_RLAST => host_mem_RLAST,
        m_axi_din_gmem_V_RID => host_mem_RID,
        m_axi_din_gmem_V_RUSER => host_mem_RUSER,
        m_axi_din_gmem_V_RRESP => host_mem_RRESP,
        m_axi_din_gmem_V_BVALID => host_mem_BVALID,
        m_axi_din_gmem_V_BREADY => grp_process_action_fu_103_m_axi_din_gmem_V_BREADY,
        m_axi_din_gmem_V_BRESP => host_mem_BRESP,
        m_axi_din_gmem_V_BID => host_mem_BID,
        m_axi_din_gmem_V_BUSER => host_mem_BUSER,
        din_gmem_V_offset => din_gmem_V1_reg_187,
        dout_gmem_V_offset => dout_gmem_V3_reg_182,
        act_reg_Data_in_addr => act_reg_Data_in_addr_reg_192,
        act_reg_Data_in_size => act_reg_Data_in_size_reg_197,
        act_reg_Data_out_add => act_reg_Data_out_add_reg_202);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_process_action_fu_103_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_process_action_fu_103_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_process_action_fu_103_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_process_action_fu_103_ap_ready = ap_const_logic_1)) then 
                    grp_process_action_fu_103_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                act_reg_Data_in_addr_reg_192 <= act_reg_i(191 downto 128);
                act_reg_Data_in_size_reg_197 <= act_reg_i(223 downto 192);
                act_reg_Data_out_add_reg_202 <= act_reg_i(319 downto 256);
                din_gmem_V1_reg_187 <= din_gmem_V(63 downto 7);
                dout_gmem_V3_reg_182 <= dout_gmem_V(63 downto 7);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_process_action_fu_103_ap_done, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_process_action_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    act_reg_o <= (act_reg_i(991 downto 64) & ap_const_lv32_102 & act_reg_i(31 downto 0));

    act_reg_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            act_reg_o_ap_vld <= ap_const_logic_1;
        else 
            act_reg_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(grp_process_action_fu_103_ap_done, ap_CS_fsm_state2)
    begin
        if (((grp_process_action_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_process_action_fu_103_ap_done, ap_CS_fsm_state2)
    begin
        if (((grp_process_action_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    grp_process_action_fu_103_ap_start <= grp_process_action_fu_103_ap_start_reg;

    host_mem_ARVALID_assign_proc : process(ap_CS_fsm_state1, grp_process_action_fu_103_m_axi_din_gmem_V_ARVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            host_mem_ARVALID <= grp_process_action_fu_103_m_axi_din_gmem_V_ARVALID;
        else 
            host_mem_ARVALID <= ap_const_logic_0;
        end if; 
    end process;


    host_mem_AWVALID_assign_proc : process(ap_CS_fsm_state1, grp_process_action_fu_103_m_axi_din_gmem_V_AWVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            host_mem_AWVALID <= grp_process_action_fu_103_m_axi_din_gmem_V_AWVALID;
        else 
            host_mem_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    host_mem_BREADY_assign_proc : process(ap_CS_fsm_state1, grp_process_action_fu_103_m_axi_din_gmem_V_BREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            host_mem_BREADY <= grp_process_action_fu_103_m_axi_din_gmem_V_BREADY;
        else 
            host_mem_BREADY <= ap_const_logic_0;
        end if; 
    end process;


    host_mem_RREADY_assign_proc : process(ap_CS_fsm_state1, grp_process_action_fu_103_m_axi_din_gmem_V_RREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            host_mem_RREADY <= grp_process_action_fu_103_m_axi_din_gmem_V_RREADY;
        else 
            host_mem_RREADY <= ap_const_logic_0;
        end if; 
    end process;


    host_mem_WVALID_assign_proc : process(ap_CS_fsm_state1, grp_process_action_fu_103_m_axi_din_gmem_V_WVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            host_mem_WVALID <= grp_process_action_fu_103_m_axi_din_gmem_V_WVALID;
        else 
            host_mem_WVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
