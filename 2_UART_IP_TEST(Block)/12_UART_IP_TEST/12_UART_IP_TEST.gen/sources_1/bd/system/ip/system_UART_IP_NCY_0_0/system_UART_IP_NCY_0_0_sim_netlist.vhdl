-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Jul 28 16:31:57 2023
-- Host        : Chan-notebook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/12_UART_IP_TEST.gen/sources_1/bd/system/ip/system_UART_IP_NCY_0_0/system_UART_IP_NCY_0_0_sim_netlist.vhdl
-- Design      : system_UART_IP_NCY_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_UART_IP_NCY_0_0_UART is
  port (
    ARESETn_0 : out STD_LOGIC;
    tx : out STD_LOGIC;
    irq : out STD_LOGIC;
    RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AWVALID : in STD_LOGIC;
    WVALID : in STD_LOGIC;
    \reg3_reg[0]_0\ : in STD_LOGIC;
    \reg3_reg[0]_1\ : in STD_LOGIC;
    WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ARESETn : in STD_LOGIC;
    ARVALID : in STD_LOGIC;
    \S_AXI_RDATA_reg[0]_0\ : in STD_LOGIC;
    ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_UART_IP_NCY_0_0_UART : entity is "UART";
end system_UART_IP_NCY_0_0_UART;

architecture STRUCTURE of system_UART_IP_NCY_0_0_UART is
  signal \^aresetn_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_TX_current_state[3]_i_9_n_0\ : STD_LOGIC;
  signal RX_current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \RX_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \RX_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \RX_current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal RX_next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_next_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \RX_s_stop__2\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal TX_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \TX_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \TX_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \TX_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \TX_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \TX_cnt_clr__7\ : STD_LOGIC;
  signal TX_current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cnt_rx : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cnt_rx1__4\ : STD_LOGIC;
  signal \cnt_rx[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_rx[9]_i_2_n_0\ : STD_LOGIC;
  signal irq_INST_0_i_10_n_0 : STD_LOGIC;
  signal irq_INST_0_i_11_n_0 : STD_LOGIC;
  signal irq_INST_0_i_12_n_0 : STD_LOGIC;
  signal irq_INST_0_i_13_n_0 : STD_LOGIC;
  signal irq_INST_0_i_1_n_0 : STD_LOGIC;
  signal irq_INST_0_i_2_n_0 : STD_LOGIC;
  signal irq_INST_0_i_3_n_0 : STD_LOGIC;
  signal irq_INST_0_i_4_n_0 : STD_LOGIC;
  signal irq_INST_0_i_5_n_0 : STD_LOGIC;
  signal irq_INST_0_i_6_n_0 : STD_LOGIC;
  signal irq_INST_0_i_7_n_0 : STD_LOGIC;
  signal irq_INST_0_i_8_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in_2 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal reg0 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal reg0_0 : STD_LOGIC;
  signal \reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg2[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal reg3 : STD_LOGIC;
  signal \reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_data__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_delay1 : STD_LOGIC;
  signal rx_delay2 : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  signal tx_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_INST_0_i_3_n_0 : STD_LOGIC;
  signal write_1d : STD_LOGIC;
  signal write_2d : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_TX_current_state[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_TX_current_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_TX_current_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_TX_current_state[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_TX_current_state[3]_i_8\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_TX_current_state_reg[0]\ : label is "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_TX_current_state_reg[1]\ : label is "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_TX_current_state_reg[2]\ : label is "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_TX_current_state_reg[3]\ : label is "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101";
  attribute SOFT_HLUTNM of \RX_current_state[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RX_current_state[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RX_current_state[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RX_current_state[3]_i_2\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \RX_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \RX_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \RX_next_state_reg[0]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \RX_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \RX_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \RX_next_state_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \RX_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \RX_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \RX_next_state_reg[2]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \RX_next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \RX_next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \RX_next_state_reg[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \RX_next_state_reg[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \TX_cnt[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \TX_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \TX_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TX_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TX_cnt[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \TX_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TX_cnt[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_rx[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_rx[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_rx[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_rx[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_rx[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_rx[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_rx[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_rx[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_rx[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of irq_INST_0_i_11 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of irq_INST_0_i_12 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of irq_INST_0_i_13 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of irq_INST_0_i_9 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg2[31]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[0]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[1]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[3]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[4]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[5]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[6]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \rx_data_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_data_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_data_reg[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of write_1d_i_1 : label is "soft_lutpair0";
begin
  ARESETn_0 <= \^aresetn_0\;
\FSM_sequential_TX_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555F7D"
    )
        port map (
      I0 => \TX_cnt_clr__7\,
      I1 => TX_current_state(2),
      I2 => TX_current_state(3),
      I3 => TX_current_state(1),
      I4 => TX_current_state(0),
      O => \FSM_sequential_TX_current_state[0]_i_1_n_0\
    );
\FSM_sequential_TX_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00507000"
    )
        port map (
      I0 => TX_current_state(3),
      I1 => TX_current_state(2),
      I2 => \TX_cnt_clr__7\,
      I3 => TX_current_state(0),
      I4 => TX_current_state(1),
      O => \FSM_sequential_TX_current_state[1]_i_1_n_0\
    );
\FSM_sequential_TX_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15400000"
    )
        port map (
      I0 => TX_current_state(3),
      I1 => TX_current_state(0),
      I2 => TX_current_state(1),
      I3 => TX_current_state(2),
      I4 => \TX_cnt_clr__7\,
      O => \FSM_sequential_TX_current_state[2]_i_1_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => \FSM_sequential_TX_current_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_TX_current_state[3]_i_4_n_0\,
      I2 => \FSM_sequential_TX_current_state[3]_i_5_n_0\,
      I3 => \FSM_sequential_TX_current_state[3]_i_6_n_0\,
      I4 => \FSM_sequential_TX_current_state[3]_i_7_n_0\,
      I5 => \TX_cnt_clr__7\,
      O => \FSM_sequential_TX_current_state[3]_i_1_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg2_reg_n_0_[7]\,
      I1 => \reg2_reg_n_0_[6]\,
      I2 => \reg2_reg_n_0_[5]\,
      I3 => \reg2_reg_n_0_[4]\,
      O => \FSM_sequential_TX_current_state[3]_i_10_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg2_reg_n_0_[28]\,
      I1 => \reg2_reg_n_0_[29]\,
      I2 => \reg2_reg_n_0_[31]\,
      I3 => \reg2_reg_n_0_[30]\,
      O => \FSM_sequential_TX_current_state[3]_i_11_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg2_reg_n_0_[20]\,
      I1 => \reg2_reg_n_0_[21]\,
      I2 => \reg2_reg_n_0_[22]\,
      I3 => \reg2_reg_n_0_[23]\,
      O => \FSM_sequential_TX_current_state[3]_i_12_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => TX_cnt(4),
      I1 => TX_cnt(3),
      I2 => TX_cnt(5),
      I3 => TX_cnt(6),
      I4 => TX_cnt(8),
      I5 => TX_cnt(7),
      O => \FSM_sequential_TX_current_state[3]_i_13_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20440000"
    )
        port map (
      I0 => TX_current_state(2),
      I1 => TX_current_state(3),
      I2 => TX_current_state(0),
      I3 => TX_current_state(1),
      I4 => \TX_cnt_clr__7\,
      O => \FSM_sequential_TX_current_state[3]_i_2_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \reg2_reg_n_0_[12]\,
      I1 => \reg2_reg_n_0_[13]\,
      I2 => \reg2_reg_n_0_[14]\,
      I3 => \reg2_reg_n_0_[15]\,
      I4 => \FSM_sequential_TX_current_state[3]_i_9_n_0\,
      O => \FSM_sequential_TX_current_state[3]_i_3_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \reg2_reg_n_0_[2]\,
      I1 => \reg2_reg_n_0_[3]\,
      I2 => \reg2_reg_n_0_[0]\,
      I3 => \reg2_reg_n_0_[1]\,
      I4 => \FSM_sequential_TX_current_state[3]_i_10_n_0\,
      O => \FSM_sequential_TX_current_state[3]_i_4_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg2_reg_n_0_[27]\,
      I1 => \reg2_reg_n_0_[26]\,
      I2 => \reg2_reg_n_0_[25]\,
      I3 => \reg2_reg_n_0_[24]\,
      I4 => \FSM_sequential_TX_current_state[3]_i_11_n_0\,
      O => \FSM_sequential_TX_current_state[3]_i_5_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg2_reg_n_0_[19]\,
      I1 => \reg2_reg_n_0_[18]\,
      I2 => \reg2_reg_n_0_[17]\,
      I3 => \reg2_reg_n_0_[16]\,
      I4 => \FSM_sequential_TX_current_state[3]_i_12_n_0\,
      O => \FSM_sequential_TX_current_state[3]_i_6_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => write_2d,
      I1 => write_1d,
      I2 => TX_current_state(2),
      I3 => TX_current_state(3),
      I4 => TX_current_state(0),
      I5 => TX_current_state(1),
      O => \FSM_sequential_TX_current_state[3]_i_7_n_0\
    );
\FSM_sequential_TX_current_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \FSM_sequential_TX_current_state[3]_i_13_n_0\,
      I1 => TX_cnt(0),
      I2 => TX_cnt(1),
      I3 => TX_cnt(2),
      O => \TX_cnt_clr__7\
    );
\FSM_sequential_TX_current_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg2_reg_n_0_[11]\,
      I1 => \reg2_reg_n_0_[10]\,
      I2 => \reg2_reg_n_0_[9]\,
      I3 => \reg2_reg_n_0_[8]\,
      O => \FSM_sequential_TX_current_state[3]_i_9_n_0\
    );
\FSM_sequential_TX_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \FSM_sequential_TX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \FSM_sequential_TX_current_state[0]_i_1_n_0\,
      Q => TX_current_state(0)
    );
\FSM_sequential_TX_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \FSM_sequential_TX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \FSM_sequential_TX_current_state[1]_i_1_n_0\,
      Q => TX_current_state(1)
    );
\FSM_sequential_TX_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \FSM_sequential_TX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \FSM_sequential_TX_current_state[2]_i_1_n_0\,
      Q => TX_current_state(2)
    );
\FSM_sequential_TX_current_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \FSM_sequential_TX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \FSM_sequential_TX_current_state[3]_i_2_n_0\,
      Q => TX_current_state(3)
    );
\RX_current_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_rx1__4\,
      I1 => RX_next_state(0),
      O => \RX_current_state[0]_i_1_n_0\
    );
\RX_current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RX_next_state(1),
      I1 => \cnt_rx1__4\,
      O => \RX_current_state[1]_i_1_n_0\
    );
\RX_current_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RX_next_state(2),
      I1 => \cnt_rx1__4\,
      O => \RX_current_state[2]_i_1_n_0\
    );
\RX_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \cnt_rx1__4\,
      I1 => cnt_rx(0),
      I2 => cnt_rx(1),
      I3 => cnt_rx(3),
      I4 => cnt_rx(2),
      I5 => \RX_current_state[3]_i_4_n_0\,
      O => \RX_current_state[3]_i_1_n_0\
    );
\RX_current_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RX_next_state(3),
      I1 => \cnt_rx1__4\,
      O => \RX_current_state[3]_i_2_n_0\
    );
\RX_current_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => RX_current_state(0),
      I1 => RX_current_state(1),
      I2 => rx_delay2,
      I3 => rx_delay1,
      I4 => RX_current_state(3),
      I5 => RX_current_state(2),
      O => \cnt_rx1__4\
    );
\RX_current_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => cnt_rx(4),
      I1 => cnt_rx(5),
      I2 => cnt_rx(7),
      I3 => cnt_rx(6),
      I4 => cnt_rx(9),
      I5 => cnt_rx(8),
      O => \RX_current_state[3]_i_4_n_0\
    );
\RX_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \RX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \RX_current_state[0]_i_1_n_0\,
      Q => RX_current_state(0)
    );
\RX_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \RX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \RX_current_state[1]_i_1_n_0\,
      Q => RX_current_state(1)
    );
\RX_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \RX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \RX_current_state[2]_i_1_n_0\,
      Q => RX_current_state(2)
    );
\RX_current_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \RX_current_state[3]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \RX_current_state[3]_i_2_n_0\,
      Q => RX_current_state(3)
    );
\RX_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \RX_next_state__0\(0),
      G => \RX_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => RX_next_state(0)
    );
\RX_next_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0076"
    )
        port map (
      I0 => RX_current_state(1),
      I1 => RX_current_state(3),
      I2 => RX_current_state(2),
      I3 => RX_current_state(0),
      O => \RX_next_state__0\(0)
    );
\RX_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \RX_next_state__0\(1),
      G => \RX_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => RX_next_state(1)
    );
\RX_next_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"52"
    )
        port map (
      I0 => RX_current_state(1),
      I1 => RX_current_state(3),
      I2 => RX_current_state(0),
      O => \RX_next_state__0\(1)
    );
\RX_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \RX_next_state__0\(2),
      G => \RX_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => RX_next_state(2)
    );
\RX_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => RX_current_state(1),
      I1 => RX_current_state(2),
      I2 => RX_current_state(0),
      I3 => RX_current_state(3),
      O => \RX_next_state__0\(2)
    );
\RX_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \RX_next_state__0\(3),
      G => \RX_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => RX_next_state(3)
    );
\RX_next_state_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3830"
    )
        port map (
      I0 => RX_current_state(0),
      I1 => RX_current_state(1),
      I2 => RX_current_state(3),
      I3 => RX_current_state(2),
      O => \RX_next_state__0\(3)
    );
\RX_next_state_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3777"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(3),
      I2 => RX_current_state(0),
      I3 => RX_current_state(1),
      O => \RX_next_state_reg[3]_i_2_n_0\
    );
S_AWREADY_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETn,
      O => \^aresetn_0\
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[0]\,
      I1 => \reg3_reg_n_0_[0]\,
      I2 => \reg0_reg_n_0_[0]\,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(0),
      O => \S_AXI_RDATA[0]_i_1_n_0\
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[10]\,
      I1 => \reg3_reg_n_0_[10]\,
      I2 => reg0(10),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(10),
      O => \S_AXI_RDATA[10]_i_1_n_0\
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[11]\,
      I1 => \reg3_reg_n_0_[11]\,
      I2 => reg0(11),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(11),
      O => \S_AXI_RDATA[11]_i_1_n_0\
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[12]\,
      I1 => \reg3_reg_n_0_[12]\,
      I2 => reg0(12),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(12),
      O => \S_AXI_RDATA[12]_i_1_n_0\
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[13]\,
      I1 => \reg3_reg_n_0_[13]\,
      I2 => reg0(13),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(13),
      O => \S_AXI_RDATA[13]_i_1_n_0\
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[14]\,
      I1 => \reg3_reg_n_0_[14]\,
      I2 => reg0(14),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(14),
      O => \S_AXI_RDATA[14]_i_1_n_0\
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[15]\,
      I1 => \reg3_reg_n_0_[15]\,
      I2 => reg0(15),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(15),
      O => \S_AXI_RDATA[15]_i_1_n_0\
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[16]\,
      I1 => \reg3_reg_n_0_[16]\,
      I2 => reg0(16),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(16),
      O => \S_AXI_RDATA[16]_i_1_n_0\
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[17]\,
      I1 => \reg3_reg_n_0_[17]\,
      I2 => reg0(17),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(17),
      O => \S_AXI_RDATA[17]_i_1_n_0\
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[18]\,
      I1 => \reg3_reg_n_0_[18]\,
      I2 => reg0(18),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(18),
      O => \S_AXI_RDATA[18]_i_1_n_0\
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[19]\,
      I1 => \reg3_reg_n_0_[19]\,
      I2 => reg0(19),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(19),
      O => \S_AXI_RDATA[19]_i_1_n_0\
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[1]\,
      I1 => \reg3_reg_n_0_[1]\,
      I2 => p_6_in,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(1),
      O => \S_AXI_RDATA[1]_i_1_n_0\
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[20]\,
      I1 => \reg3_reg_n_0_[20]\,
      I2 => reg0(20),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(20),
      O => \S_AXI_RDATA[20]_i_1_n_0\
    );
\S_AXI_RDATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[21]\,
      I1 => \reg3_reg_n_0_[21]\,
      I2 => reg0(21),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(21),
      O => \S_AXI_RDATA[21]_i_1_n_0\
    );
\S_AXI_RDATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[22]\,
      I1 => \reg3_reg_n_0_[22]\,
      I2 => reg0(22),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(22),
      O => \S_AXI_RDATA[22]_i_1_n_0\
    );
\S_AXI_RDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[23]\,
      I1 => \reg3_reg_n_0_[23]\,
      I2 => reg0(23),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(23),
      O => \S_AXI_RDATA[23]_i_1_n_0\
    );
\S_AXI_RDATA[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[24]\,
      I1 => \reg3_reg_n_0_[24]\,
      I2 => reg0(24),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(24),
      O => \S_AXI_RDATA[24]_i_1_n_0\
    );
\S_AXI_RDATA[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[25]\,
      I1 => \reg3_reg_n_0_[25]\,
      I2 => reg0(25),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(25),
      O => \S_AXI_RDATA[25]_i_1_n_0\
    );
\S_AXI_RDATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[26]\,
      I1 => \reg3_reg_n_0_[26]\,
      I2 => reg0(26),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(26),
      O => \S_AXI_RDATA[26]_i_1_n_0\
    );
\S_AXI_RDATA[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[27]\,
      I1 => \reg3_reg_n_0_[27]\,
      I2 => reg0(27),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(27),
      O => \S_AXI_RDATA[27]_i_1_n_0\
    );
\S_AXI_RDATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[28]\,
      I1 => \reg3_reg_n_0_[28]\,
      I2 => reg0(28),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(28),
      O => \S_AXI_RDATA[28]_i_1_n_0\
    );
\S_AXI_RDATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[29]\,
      I1 => \reg3_reg_n_0_[29]\,
      I2 => reg0(29),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(29),
      O => \S_AXI_RDATA[29]_i_1_n_0\
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[2]\,
      I1 => \reg3_reg_n_0_[2]\,
      I2 => p_5_in,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(2),
      O => \S_AXI_RDATA[2]_i_1_n_0\
    );
\S_AXI_RDATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[30]\,
      I1 => \reg3_reg_n_0_[30]\,
      I2 => reg0(30),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(30),
      O => \S_AXI_RDATA[30]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ARESETn,
      I1 => ARVALID,
      I2 => \S_AXI_RDATA_reg[0]_0\,
      I3 => slv_reg_wren,
      O => \S_AXI_RDATA[31]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[31]\,
      I1 => \reg3_reg_n_0_[31]\,
      I2 => reg0(31),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(31),
      O => \S_AXI_RDATA[31]_i_2_n_0\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[3]\,
      I1 => \reg3_reg_n_0_[3]\,
      I2 => p_4_in,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(3),
      O => \S_AXI_RDATA[3]_i_1_n_0\
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[4]\,
      I1 => \reg3_reg_n_0_[4]\,
      I2 => p_3_in,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(4),
      O => \S_AXI_RDATA[4]_i_1_n_0\
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[5]\,
      I1 => \reg3_reg_n_0_[5]\,
      I2 => p_2_in,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(5),
      O => \S_AXI_RDATA[5]_i_1_n_0\
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[6]\,
      I1 => \reg3_reg_n_0_[6]\,
      I2 => p_1_in_2,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(6),
      O => \S_AXI_RDATA[6]_i_1_n_0\
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[7]\,
      I1 => \reg3_reg_n_0_[7]\,
      I2 => p_0_in_1,
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(7),
      O => \S_AXI_RDATA[7]_i_1_n_0\
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[8]\,
      I1 => \reg3_reg_n_0_[8]\,
      I2 => reg0(8),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(8),
      O => \S_AXI_RDATA[8]_i_1_n_0\
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \reg2_reg_n_0_[9]\,
      I1 => \reg3_reg_n_0_[9]\,
      I2 => reg0(9),
      I3 => ARADDR(1),
      I4 => ARADDR(0),
      I5 => reg1(9),
      O => \S_AXI_RDATA[9]_i_1_n_0\
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[0]_i_1_n_0\,
      Q => RDATA(0),
      R => '0'
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[10]_i_1_n_0\,
      Q => RDATA(10),
      R => '0'
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[11]_i_1_n_0\,
      Q => RDATA(11),
      R => '0'
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[12]_i_1_n_0\,
      Q => RDATA(12),
      R => '0'
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[13]_i_1_n_0\,
      Q => RDATA(13),
      R => '0'
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[14]_i_1_n_0\,
      Q => RDATA(14),
      R => '0'
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[15]_i_1_n_0\,
      Q => RDATA(15),
      R => '0'
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[16]_i_1_n_0\,
      Q => RDATA(16),
      R => '0'
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[17]_i_1_n_0\,
      Q => RDATA(17),
      R => '0'
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[18]_i_1_n_0\,
      Q => RDATA(18),
      R => '0'
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[19]_i_1_n_0\,
      Q => RDATA(19),
      R => '0'
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[1]_i_1_n_0\,
      Q => RDATA(1),
      R => '0'
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[20]_i_1_n_0\,
      Q => RDATA(20),
      R => '0'
    );
\S_AXI_RDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[21]_i_1_n_0\,
      Q => RDATA(21),
      R => '0'
    );
\S_AXI_RDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[22]_i_1_n_0\,
      Q => RDATA(22),
      R => '0'
    );
\S_AXI_RDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[23]_i_1_n_0\,
      Q => RDATA(23),
      R => '0'
    );
\S_AXI_RDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[24]_i_1_n_0\,
      Q => RDATA(24),
      R => '0'
    );
\S_AXI_RDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[25]_i_1_n_0\,
      Q => RDATA(25),
      R => '0'
    );
\S_AXI_RDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[26]_i_1_n_0\,
      Q => RDATA(26),
      R => '0'
    );
\S_AXI_RDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[27]_i_1_n_0\,
      Q => RDATA(27),
      R => '0'
    );
\S_AXI_RDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[28]_i_1_n_0\,
      Q => RDATA(28),
      R => '0'
    );
\S_AXI_RDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[29]_i_1_n_0\,
      Q => RDATA(29),
      R => '0'
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[2]_i_1_n_0\,
      Q => RDATA(2),
      R => '0'
    );
\S_AXI_RDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[30]_i_1_n_0\,
      Q => RDATA(30),
      R => '0'
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[31]_i_2_n_0\,
      Q => RDATA(31),
      R => '0'
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[3]_i_1_n_0\,
      Q => RDATA(3),
      R => '0'
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[4]_i_1_n_0\,
      Q => RDATA(4),
      R => '0'
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[5]_i_1_n_0\,
      Q => RDATA(5),
      R => '0'
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[6]_i_1_n_0\,
      Q => RDATA(6),
      R => '0'
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[7]_i_1_n_0\,
      Q => RDATA(7),
      R => '0'
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[8]_i_1_n_0\,
      Q => RDATA(8),
      R => '0'
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => \S_AXI_RDATA[9]_i_1_n_0\,
      Q => RDATA(9),
      R => '0'
    );
\TX_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \TX_cnt[8]_i_3_n_0\,
      I1 => TX_cnt(0),
      O => \TX_cnt[0]_i_1_n_0\
    );
\TX_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \TX_cnt[8]_i_3_n_0\,
      I1 => TX_cnt(0),
      I2 => TX_cnt(1),
      O => \TX_cnt[1]_i_1_n_0\
    );
\TX_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \TX_cnt[8]_i_3_n_0\,
      I1 => TX_cnt(0),
      I2 => TX_cnt(1),
      I3 => TX_cnt(2),
      O => \TX_cnt[2]_i_1_n_0\
    );
\TX_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \TX_cnt[8]_i_3_n_0\,
      I1 => TX_cnt(1),
      I2 => TX_cnt(0),
      I3 => TX_cnt(2),
      I4 => TX_cnt(3),
      O => \TX_cnt[3]_i_1_n_0\
    );
\TX_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => TX_cnt(3),
      I1 => TX_cnt(1),
      I2 => TX_cnt(0),
      I3 => TX_cnt(2),
      I4 => \TX_cnt[8]_i_3_n_0\,
      I5 => TX_cnt(4),
      O => \TX_cnt[4]_i_1_n_0\
    );
\TX_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \TX_cnt[5]_i_2_n_0\,
      I1 => \TX_cnt[8]_i_3_n_0\,
      I2 => TX_cnt(5),
      O => \TX_cnt[5]_i_1_n_0\
    );
\TX_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => TX_cnt(4),
      I1 => TX_cnt(2),
      I2 => TX_cnt(0),
      I3 => TX_cnt(1),
      I4 => TX_cnt(3),
      O => \TX_cnt[5]_i_2_n_0\
    );
\TX_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \TX_cnt[8]_i_2_n_0\,
      I1 => \TX_cnt[8]_i_3_n_0\,
      I2 => TX_cnt(6),
      O => \TX_cnt[6]_i_1_n_0\
    );
\TX_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => TX_cnt(6),
      I1 => \TX_cnt[8]_i_2_n_0\,
      I2 => \TX_cnt[8]_i_3_n_0\,
      I3 => TX_cnt(7),
      O => \TX_cnt[7]_i_1_n_0\
    );
\TX_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => TX_cnt(7),
      I1 => \TX_cnt[8]_i_2_n_0\,
      I2 => TX_cnt(6),
      I3 => \TX_cnt[8]_i_3_n_0\,
      I4 => TX_cnt(8),
      O => \TX_cnt[8]_i_1_n_0\
    );
\TX_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => TX_cnt(5),
      I1 => TX_cnt(3),
      I2 => TX_cnt(1),
      I3 => TX_cnt(0),
      I4 => TX_cnt(2),
      I5 => TX_cnt(4),
      O => \TX_cnt[8]_i_2_n_0\
    );
\TX_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF0000FBFFFBFF"
    )
        port map (
      I0 => TX_cnt(2),
      I1 => TX_cnt(1),
      I2 => TX_cnt(0),
      I3 => \FSM_sequential_TX_current_state[3]_i_13_n_0\,
      I4 => write_1d,
      I5 => write_2d,
      O => \TX_cnt[8]_i_3_n_0\
    );
\TX_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[0]_i_1_n_0\,
      Q => TX_cnt(0)
    );
\TX_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[1]_i_1_n_0\,
      Q => TX_cnt(1)
    );
\TX_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[2]_i_1_n_0\,
      Q => TX_cnt(2)
    );
\TX_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[3]_i_1_n_0\,
      Q => TX_cnt(3)
    );
\TX_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[4]_i_1_n_0\,
      Q => TX_cnt(4)
    );
\TX_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[5]_i_1_n_0\,
      Q => TX_cnt(5)
    );
\TX_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[6]_i_1_n_0\,
      Q => TX_cnt(6)
    );
\TX_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[7]_i_1_n_0\,
      Q => TX_cnt(7)
    );
\TX_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \TX_cnt[8]_i_1_n_0\,
      Q => TX_cnt(8)
    );
\cnt_rx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RX_current_state[3]_i_1_n_0\,
      I1 => cnt_rx(0),
      O => p_0_in(0)
    );
\cnt_rx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \RX_current_state[3]_i_1_n_0\,
      I1 => cnt_rx(0),
      I2 => cnt_rx(1),
      O => p_0_in(1)
    );
\cnt_rx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \RX_current_state[3]_i_1_n_0\,
      I1 => cnt_rx(0),
      I2 => cnt_rx(1),
      I3 => cnt_rx(2),
      O => p_0_in(2)
    );
\cnt_rx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => cnt_rx(2),
      I1 => cnt_rx(0),
      I2 => cnt_rx(1),
      I3 => \RX_current_state[3]_i_1_n_0\,
      I4 => cnt_rx(3),
      O => p_0_in(3)
    );
\cnt_rx[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => cnt_rx(3),
      I1 => cnt_rx(1),
      I2 => cnt_rx(0),
      I3 => cnt_rx(2),
      I4 => \RX_current_state[3]_i_1_n_0\,
      I5 => cnt_rx(4),
      O => p_0_in(4)
    );
\cnt_rx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \cnt_rx[5]_i_2_n_0\,
      I1 => \RX_current_state[3]_i_1_n_0\,
      I2 => cnt_rx(5),
      O => p_0_in(5)
    );
\cnt_rx[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_rx(4),
      I1 => cnt_rx(2),
      I2 => cnt_rx(0),
      I3 => cnt_rx(1),
      I4 => cnt_rx(3),
      O => \cnt_rx[5]_i_2_n_0\
    );
\cnt_rx[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \cnt_rx[9]_i_2_n_0\,
      I1 => \RX_current_state[3]_i_1_n_0\,
      I2 => cnt_rx(6),
      O => p_0_in(6)
    );
\cnt_rx[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => cnt_rx(6),
      I1 => \cnt_rx[9]_i_2_n_0\,
      I2 => \RX_current_state[3]_i_1_n_0\,
      I3 => cnt_rx(7),
      O => p_0_in(7)
    );
\cnt_rx[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => cnt_rx(7),
      I1 => \cnt_rx[9]_i_2_n_0\,
      I2 => cnt_rx(6),
      I3 => \RX_current_state[3]_i_1_n_0\,
      I4 => cnt_rx(8),
      O => p_0_in(8)
    );
\cnt_rx[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => cnt_rx(8),
      I1 => cnt_rx(6),
      I2 => \cnt_rx[9]_i_2_n_0\,
      I3 => cnt_rx(7),
      I4 => \RX_current_state[3]_i_1_n_0\,
      I5 => cnt_rx(9),
      O => p_0_in(9)
    );
\cnt_rx[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_rx(5),
      I1 => cnt_rx(3),
      I2 => cnt_rx(1),
      I3 => cnt_rx(0),
      I4 => cnt_rx(2),
      I5 => cnt_rx(4),
      O => \cnt_rx[9]_i_2_n_0\
    );
\cnt_rx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(0),
      Q => cnt_rx(0)
    );
\cnt_rx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(1),
      Q => cnt_rx(1)
    );
\cnt_rx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(2),
      Q => cnt_rx(2)
    );
\cnt_rx_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(3),
      Q => cnt_rx(3)
    );
\cnt_rx_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(4),
      Q => cnt_rx(4)
    );
\cnt_rx_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(5),
      Q => cnt_rx(5)
    );
\cnt_rx_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(6),
      Q => cnt_rx(6)
    );
\cnt_rx_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(7),
      Q => cnt_rx(7)
    );
\cnt_rx_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(8),
      Q => cnt_rx(8)
    );
\cnt_rx_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => p_0_in(9),
      Q => cnt_rx(9)
    );
irq_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => irq_INST_0_i_1_n_0,
      I1 => irq_INST_0_i_2_n_0,
      I2 => irq_INST_0_i_3_n_0,
      I3 => irq_INST_0_i_4_n_0,
      I4 => irq_INST_0_i_5_n_0,
      O => irq
    );
irq_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg3_reg_n_0_[19]\,
      I1 => \reg3_reg_n_0_[18]\,
      I2 => \reg3_reg_n_0_[17]\,
      I3 => \reg3_reg_n_0_[16]\,
      I4 => irq_INST_0_i_6_n_0,
      O => irq_INST_0_i_1_n_0
    );
irq_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg3_reg_n_0_[11]\,
      I1 => \reg3_reg_n_0_[10]\,
      I2 => \reg3_reg_n_0_[9]\,
      I3 => \reg3_reg_n_0_[8]\,
      O => irq_INST_0_i_10_n_0
    );
irq_INST_0_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => cnt_rx(7),
      I1 => cnt_rx(6),
      I2 => cnt_rx(4),
      I3 => cnt_rx(5),
      I4 => cnt_rx(3),
      O => irq_INST_0_i_11_n_0
    );
irq_INST_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_rx(5),
      I1 => cnt_rx(6),
      O => irq_INST_0_i_12_n_0
    );
irq_INST_0_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => cnt_rx(2),
      I1 => cnt_rx(3),
      I2 => cnt_rx(0),
      I3 => cnt_rx(1),
      I4 => cnt_rx(4),
      O => irq_INST_0_i_13_n_0
    );
irq_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg3_reg_n_0_[27]\,
      I1 => \reg3_reg_n_0_[26]\,
      I2 => \reg3_reg_n_0_[25]\,
      I3 => \reg3_reg_n_0_[24]\,
      I4 => irq_INST_0_i_7_n_0,
      O => irq_INST_0_i_2_n_0
    );
irq_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => irq_INST_0_i_8_n_0,
      I1 => \reg3_reg_n_0_[1]\,
      I2 => \reg3_reg_n_0_[0]\,
      I3 => \reg3_reg_n_0_[3]\,
      I4 => \reg3_reg_n_0_[2]\,
      I5 => \RX_s_stop__2\,
      O => irq_INST_0_i_3_n_0
    );
irq_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \reg3_reg_n_0_[12]\,
      I1 => \reg3_reg_n_0_[13]\,
      I2 => \reg3_reg_n_0_[14]\,
      I3 => \reg3_reg_n_0_[15]\,
      I4 => irq_INST_0_i_10_n_0,
      O => irq_INST_0_i_4_n_0
    );
irq_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000555544444444"
    )
        port map (
      I0 => cnt_rx(9),
      I1 => irq_INST_0_i_11_n_0,
      I2 => irq_INST_0_i_12_n_0,
      I3 => irq_INST_0_i_13_n_0,
      I4 => cnt_rx(7),
      I5 => cnt_rx(8),
      O => irq_INST_0_i_5_n_0
    );
irq_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg3_reg_n_0_[20]\,
      I1 => \reg3_reg_n_0_[21]\,
      I2 => \reg3_reg_n_0_[22]\,
      I3 => \reg3_reg_n_0_[23]\,
      O => irq_INST_0_i_6_n_0
    );
irq_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg3_reg_n_0_[28]\,
      I1 => \reg3_reg_n_0_[29]\,
      I2 => \reg3_reg_n_0_[31]\,
      I3 => \reg3_reg_n_0_[30]\,
      O => irq_INST_0_i_7_n_0
    );
irq_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \reg3_reg_n_0_[7]\,
      I1 => \reg3_reg_n_0_[6]\,
      I2 => \reg3_reg_n_0_[5]\,
      I3 => \reg3_reg_n_0_[4]\,
      O => irq_INST_0_i_8_n_0
    );
irq_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(3),
      I2 => RX_current_state(0),
      I3 => RX_current_state(1),
      O => \RX_s_stop__2\
    );
\reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => AWADDR(1),
      I1 => AWADDR(0),
      I2 => AWVALID,
      I3 => WVALID,
      I4 => \reg3_reg[0]_0\,
      I5 => \reg3_reg[0]_1\,
      O => reg0_0
    );
\reg0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(0),
      Q => \reg0_reg_n_0_[0]\
    );
\reg0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(10),
      Q => reg0(10)
    );
\reg0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(11),
      Q => reg0(11)
    );
\reg0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(12),
      Q => reg0(12)
    );
\reg0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(13),
      Q => reg0(13)
    );
\reg0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(14),
      Q => reg0(14)
    );
\reg0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(15),
      Q => reg0(15)
    );
\reg0_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(16),
      Q => reg0(16)
    );
\reg0_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(17),
      Q => reg0(17)
    );
\reg0_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(18),
      Q => reg0(18)
    );
\reg0_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(19),
      Q => reg0(19)
    );
\reg0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(1),
      Q => p_6_in
    );
\reg0_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(20),
      Q => reg0(20)
    );
\reg0_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(21),
      Q => reg0(21)
    );
\reg0_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(22),
      Q => reg0(22)
    );
\reg0_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(23),
      Q => reg0(23)
    );
\reg0_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(24),
      Q => reg0(24)
    );
\reg0_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(25),
      Q => reg0(25)
    );
\reg0_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(26),
      Q => reg0(26)
    );
\reg0_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(27),
      Q => reg0(27)
    );
\reg0_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(28),
      Q => reg0(28)
    );
\reg0_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(29),
      Q => reg0(29)
    );
\reg0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(2),
      Q => p_5_in
    );
\reg0_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(30),
      Q => reg0(30)
    );
\reg0_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(31),
      Q => reg0(31)
    );
\reg0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(3),
      Q => p_4_in
    );
\reg0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(4),
      Q => p_3_in
    );
\reg0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(5),
      Q => p_2_in
    );
\reg0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(6),
      Q => p_1_in_2
    );
\reg0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(7),
      Q => p_0_in_1
    );
\reg0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(8),
      Q => reg0(8)
    );
\reg0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg0_0,
      CLR => \^aresetn_0\,
      D => WDATA(9),
      Q => reg0(9)
    );
\reg1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(0),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(0),
      O => \reg1[0]_i_1_n_0\
    );
\reg1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(1),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(1),
      O => \reg1[1]_i_1_n_0\
    );
\reg1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(2),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(2),
      O => \reg1[2]_i_1_n_0\
    );
\reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202F202F202F20"
    )
        port map (
      I0 => AWADDR(0),
      I1 => AWADDR(1),
      I2 => slv_reg_wren,
      I3 => \RX_s_stop__2\,
      I4 => \S_AXI_RDATA_reg[0]_0\,
      I5 => ARVALID,
      O => \reg1[31]_i_1_n_0\
    );
\reg1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(3),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(3),
      O => \reg1[3]_i_1_n_0\
    );
\reg1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(4),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(4),
      O => \reg1[4]_i_1_n_0\
    );
\reg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(5),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(5),
      O => \reg1[5]_i_1_n_0\
    );
\reg1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(6),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(6),
      O => \reg1[6]_i_1_n_0\
    );
\reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => WDATA(7),
      I1 => \reg3_reg[0]_1\,
      I2 => \reg3_reg[0]_0\,
      I3 => WVALID,
      I4 => AWVALID,
      I5 => rx_data(7),
      O => \reg1[7]_i_1_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[0]_i_1_n_0\,
      Q => reg1(0)
    );
\reg1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(10),
      Q => reg1(10)
    );
\reg1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(11),
      Q => reg1(11)
    );
\reg1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(12),
      Q => reg1(12)
    );
\reg1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(13),
      Q => reg1(13)
    );
\reg1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(14),
      Q => reg1(14)
    );
\reg1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(15),
      Q => reg1(15)
    );
\reg1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(16),
      Q => reg1(16)
    );
\reg1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(17),
      Q => reg1(17)
    );
\reg1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(18),
      Q => reg1(18)
    );
\reg1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(19),
      Q => reg1(19)
    );
\reg1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[1]_i_1_n_0\,
      Q => reg1(1)
    );
\reg1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(20),
      Q => reg1(20)
    );
\reg1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(21),
      Q => reg1(21)
    );
\reg1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(22),
      Q => reg1(22)
    );
\reg1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(23),
      Q => reg1(23)
    );
\reg1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(24),
      Q => reg1(24)
    );
\reg1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(25),
      Q => reg1(25)
    );
\reg1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(26),
      Q => reg1(26)
    );
\reg1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(27),
      Q => reg1(27)
    );
\reg1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(28),
      Q => reg1(28)
    );
\reg1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(29),
      Q => reg1(29)
    );
\reg1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[2]_i_1_n_0\,
      Q => reg1(2)
    );
\reg1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(30),
      Q => reg1(30)
    );
\reg1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(31),
      Q => reg1(31)
    );
\reg1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[3]_i_1_n_0\,
      Q => reg1(3)
    );
\reg1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[4]_i_1_n_0\,
      Q => reg1(4)
    );
\reg1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[5]_i_1_n_0\,
      Q => reg1(5)
    );
\reg1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[6]_i_1_n_0\,
      Q => reg1(6)
    );
\reg1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => \reg1[7]_i_1_n_0\,
      Q => reg1(7)
    );
\reg1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(8),
      Q => reg1(8)
    );
\reg1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg1[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(9),
      Q => reg1(9)
    );
\reg2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => WDATA(0),
      I1 => AWVALID,
      I2 => WVALID,
      I3 => \reg3_reg[0]_0\,
      I4 => \reg3_reg[0]_1\,
      O => p_1_in(0)
    );
\reg2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(10),
      O => p_1_in(10)
    );
\reg2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(11),
      O => p_1_in(11)
    );
\reg2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(12),
      O => p_1_in(12)
    );
\reg2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(13),
      O => p_1_in(13)
    );
\reg2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(14),
      O => p_1_in(14)
    );
\reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(15),
      O => p_1_in(15)
    );
\reg2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(16),
      O => p_1_in(16)
    );
\reg2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(17),
      O => p_1_in(17)
    );
\reg2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(18),
      O => p_1_in(18)
    );
\reg2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(19),
      O => p_1_in(19)
    );
\reg2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(1),
      O => p_1_in(1)
    );
\reg2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(20),
      O => p_1_in(20)
    );
\reg2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(21),
      O => p_1_in(21)
    );
\reg2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(22),
      O => p_1_in(22)
    );
\reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(23),
      O => p_1_in(23)
    );
\reg2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(24),
      O => p_1_in(24)
    );
\reg2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(25),
      O => p_1_in(25)
    );
\reg2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(26),
      O => p_1_in(26)
    );
\reg2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(27),
      O => p_1_in(27)
    );
\reg2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(28),
      O => p_1_in(28)
    );
\reg2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(29),
      O => p_1_in(29)
    );
\reg2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(2),
      O => p_1_in(2)
    );
\reg2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(30),
      O => p_1_in(30)
    );
\reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"220022F0"
    )
        port map (
      I0 => AWADDR(1),
      I1 => AWADDR(0),
      I2 => \reg2[31]_i_3_n_0\,
      I3 => slv_reg_wren,
      I4 => \RX_s_stop__2\,
      O => \reg2[31]_i_1_n_0\
    );
\reg2[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(31),
      O => p_1_in(31)
    );
\reg2[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000007000000000"
    )
        port map (
      I0 => ARVALID,
      I1 => \S_AXI_RDATA_reg[0]_0\,
      I2 => TX_current_state(3),
      I3 => TX_current_state(2),
      I4 => TX_current_state(0),
      I5 => TX_current_state(1),
      O => \reg2[31]_i_3_n_0\
    );
\reg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(3),
      O => p_1_in(3)
    );
\reg2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(4),
      O => p_1_in(4)
    );
\reg2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(5),
      O => p_1_in(5)
    );
\reg2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(6),
      O => p_1_in(6)
    );
\reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(7),
      O => p_1_in(7)
    );
\reg2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(8),
      O => p_1_in(8)
    );
\reg2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => AWVALID,
      I1 => WVALID,
      I2 => \reg3_reg[0]_0\,
      I3 => \reg3_reg[0]_1\,
      I4 => WDATA(9),
      O => p_1_in(9)
    );
\reg2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(0),
      Q => \reg2_reg_n_0_[0]\
    );
\reg2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(10),
      Q => \reg2_reg_n_0_[10]\
    );
\reg2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(11),
      Q => \reg2_reg_n_0_[11]\
    );
\reg2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(12),
      Q => \reg2_reg_n_0_[12]\
    );
\reg2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(13),
      Q => \reg2_reg_n_0_[13]\
    );
\reg2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(14),
      Q => \reg2_reg_n_0_[14]\
    );
\reg2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(15),
      Q => \reg2_reg_n_0_[15]\
    );
\reg2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(16),
      Q => \reg2_reg_n_0_[16]\
    );
\reg2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(17),
      Q => \reg2_reg_n_0_[17]\
    );
\reg2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(18),
      Q => \reg2_reg_n_0_[18]\
    );
\reg2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(19),
      Q => \reg2_reg_n_0_[19]\
    );
\reg2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(1),
      Q => \reg2_reg_n_0_[1]\
    );
\reg2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(20),
      Q => \reg2_reg_n_0_[20]\
    );
\reg2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(21),
      Q => \reg2_reg_n_0_[21]\
    );
\reg2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(22),
      Q => \reg2_reg_n_0_[22]\
    );
\reg2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(23),
      Q => \reg2_reg_n_0_[23]\
    );
\reg2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(24),
      Q => \reg2_reg_n_0_[24]\
    );
\reg2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(25),
      Q => \reg2_reg_n_0_[25]\
    );
\reg2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(26),
      Q => \reg2_reg_n_0_[26]\
    );
\reg2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(27),
      Q => \reg2_reg_n_0_[27]\
    );
\reg2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(28),
      Q => \reg2_reg_n_0_[28]\
    );
\reg2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(29),
      Q => \reg2_reg_n_0_[29]\
    );
\reg2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(2),
      Q => \reg2_reg_n_0_[2]\
    );
\reg2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(30),
      Q => \reg2_reg_n_0_[30]\
    );
\reg2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(31),
      Q => \reg2_reg_n_0_[31]\
    );
\reg2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(3),
      Q => \reg2_reg_n_0_[3]\
    );
\reg2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(4),
      Q => \reg2_reg_n_0_[4]\
    );
\reg2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(5),
      Q => \reg2_reg_n_0_[5]\
    );
\reg2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(6),
      Q => \reg2_reg_n_0_[6]\
    );
\reg2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(7),
      Q => \reg2_reg_n_0_[7]\
    );
\reg2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(8),
      Q => \reg2_reg_n_0_[8]\
    );
\reg2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => \reg2[31]_i_1_n_0\,
      CLR => \^aresetn_0\,
      D => p_1_in(9),
      Q => \reg2_reg_n_0_[9]\
    );
\reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => AWADDR(1),
      I1 => AWADDR(0),
      I2 => AWVALID,
      I3 => WVALID,
      I4 => \reg3_reg[0]_0\,
      I5 => \reg3_reg[0]_1\,
      O => reg3
    );
\reg3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(0),
      Q => \reg3_reg_n_0_[0]\
    );
\reg3_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(10),
      Q => \reg3_reg_n_0_[10]\
    );
\reg3_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(11),
      Q => \reg3_reg_n_0_[11]\
    );
\reg3_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(12),
      Q => \reg3_reg_n_0_[12]\
    );
\reg3_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(13),
      Q => \reg3_reg_n_0_[13]\
    );
\reg3_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(14),
      Q => \reg3_reg_n_0_[14]\
    );
\reg3_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(15),
      Q => \reg3_reg_n_0_[15]\
    );
\reg3_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(16),
      Q => \reg3_reg_n_0_[16]\
    );
\reg3_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(17),
      Q => \reg3_reg_n_0_[17]\
    );
\reg3_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(18),
      Q => \reg3_reg_n_0_[18]\
    );
\reg3_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(19),
      Q => \reg3_reg_n_0_[19]\
    );
\reg3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(1),
      Q => \reg3_reg_n_0_[1]\
    );
\reg3_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(20),
      Q => \reg3_reg_n_0_[20]\
    );
\reg3_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(21),
      Q => \reg3_reg_n_0_[21]\
    );
\reg3_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(22),
      Q => \reg3_reg_n_0_[22]\
    );
\reg3_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(23),
      Q => \reg3_reg_n_0_[23]\
    );
\reg3_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(24),
      Q => \reg3_reg_n_0_[24]\
    );
\reg3_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(25),
      Q => \reg3_reg_n_0_[25]\
    );
\reg3_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(26),
      Q => \reg3_reg_n_0_[26]\
    );
\reg3_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(27),
      Q => \reg3_reg_n_0_[27]\
    );
\reg3_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(28),
      Q => \reg3_reg_n_0_[28]\
    );
\reg3_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(29),
      Q => \reg3_reg_n_0_[29]\
    );
\reg3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(2),
      Q => \reg3_reg_n_0_[2]\
    );
\reg3_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(30),
      Q => \reg3_reg_n_0_[30]\
    );
\reg3_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(31),
      Q => \reg3_reg_n_0_[31]\
    );
\reg3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(3),
      Q => \reg3_reg_n_0_[3]\
    );
\reg3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(4),
      Q => \reg3_reg_n_0_[4]\
    );
\reg3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(5),
      Q => \reg3_reg_n_0_[5]\
    );
\reg3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(6),
      Q => \reg3_reg_n_0_[6]\
    );
\reg3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(7),
      Q => \reg3_reg_n_0_[7]\
    );
\reg3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(8),
      Q => \reg3_reg_n_0_[8]\
    );
\reg3_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => reg3,
      CLR => \^aresetn_0\,
      D => WDATA(9),
      Q => \reg3_reg_n_0_[9]\
    );
\rx_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(0),
      GE => '1',
      Q => rx_data(0)
    );
\rx_data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(1),
      I2 => RX_current_state(0),
      I3 => RX_current_state(3),
      I4 => irq_INST_0_i_5_n_0,
      O => \rx_data__0\(0)
    );
\rx_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(1),
      GE => '1',
      Q => rx_data(1)
    );
\rx_data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => RX_current_state(0),
      I1 => irq_INST_0_i_5_n_0,
      I2 => RX_current_state(3),
      I3 => RX_current_state(1),
      I4 => RX_current_state(2),
      O => \rx_data__0\(1)
    );
\rx_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(2),
      GE => '1',
      Q => rx_data(2)
    );
\rx_data_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(1),
      I2 => RX_current_state(3),
      I3 => irq_INST_0_i_5_n_0,
      I4 => RX_current_state(0),
      O => \rx_data__0\(2)
    );
\rx_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(3),
      GE => '1',
      Q => rx_data(3)
    );
\rx_data_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(1),
      I2 => RX_current_state(3),
      I3 => irq_INST_0_i_5_n_0,
      I4 => RX_current_state(0),
      O => \rx_data__0\(3)
    );
\rx_data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(4),
      GE => '1',
      Q => rx_data(4)
    );
\rx_data_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(3),
      I2 => irq_INST_0_i_5_n_0,
      I3 => RX_current_state(0),
      I4 => RX_current_state(1),
      O => \rx_data__0\(4)
    );
\rx_data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(5),
      GE => '1',
      Q => rx_data(5)
    );
\rx_data_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => RX_current_state(2),
      I1 => RX_current_state(3),
      I2 => irq_INST_0_i_5_n_0,
      I3 => RX_current_state(0),
      I4 => RX_current_state(1),
      O => \rx_data__0\(5)
    );
\rx_data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(6),
      GE => '1',
      Q => rx_data(6)
    );
\rx_data_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => RX_current_state(1),
      I1 => RX_current_state(0),
      I2 => RX_current_state(2),
      I3 => RX_current_state(3),
      I4 => irq_INST_0_i_5_n_0,
      O => \rx_data__0\(6)
    );
\rx_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx,
      G => \rx_data__0\(7),
      GE => '1',
      Q => rx_data(7)
    );
\rx_data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => RX_current_state(1),
      I1 => RX_current_state(0),
      I2 => RX_current_state(2),
      I3 => RX_current_state(3),
      I4 => irq_INST_0_i_5_n_0,
      O => \rx_data__0\(7)
    );
rx_delay1_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => rx,
      Q => rx_delay1
    );
rx_delay2_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => rx_delay1,
      Q => rx_delay2
    );
tx_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => tx_INST_0_i_1_n_0,
      I1 => TX_current_state(3),
      I2 => TX_current_state(2),
      I3 => tx_INST_0_i_2_n_0,
      I4 => tx_INST_0_i_3_n_0,
      O => tx
    );
tx_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011001110000011"
    )
        port map (
      I0 => TX_current_state(2),
      I1 => TX_current_state(3),
      I2 => p_6_in,
      I3 => TX_current_state(0),
      I4 => TX_current_state(1),
      I5 => \reg0_reg_n_0_[0]\,
      O => tx_INST_0_i_1_n_0
    );
tx_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_in,
      I1 => p_2_in,
      I2 => TX_current_state(0),
      I3 => TX_current_state(1),
      I4 => p_5_in,
      I5 => p_3_in,
      O => tx_INST_0_i_2_n_0
    );
tx_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEEE00000000"
    )
        port map (
      I0 => TX_current_state(1),
      I1 => TX_current_state(2),
      I2 => p_0_in_1,
      I3 => TX_current_state(0),
      I4 => p_1_in_2,
      I5 => TX_current_state(3),
      O => tx_INST_0_i_3_n_0
    );
write_1d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg3_reg[0]_1\,
      I1 => \reg3_reg[0]_0\,
      I2 => WVALID,
      I3 => AWVALID,
      O => slv_reg_wren
    );
write_1d_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => slv_reg_wren,
      Q => write_1d
    );
write_2d_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => \^aresetn_0\,
      D => write_1d,
      Q => write_2d
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_UART_IP_NCY_0_0_Axi_Slave is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    AWVALID : in STD_LOGIC;
    AWREADY : out STD_LOGIC;
    AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WVALID : in STD_LOGIC;
    WREADY : out STD_LOGIC;
    WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BVALID : out STD_LOGIC;
    BREADY : in STD_LOGIC;
    BRESP : out STD_LOGIC;
    ARVALID : in STD_LOGIC;
    ARREADY : out STD_LOGIC;
    ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RVALID : out STD_LOGIC;
    RREADY : in STD_LOGIC;
    RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RRESP : out STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_UART_IP_NCY_0_0_Axi_Slave : entity is "Axi_Slave";
  attribute RD_DONE : string;
  attribute RD_DONE of system_UART_IP_NCY_0_0_Axi_Slave : entity is "1'b1";
  attribute RD_IDLE : string;
  attribute RD_IDLE of system_UART_IP_NCY_0_0_Axi_Slave : entity is "1'b0";
  attribute WR_DONE : string;
  attribute WR_DONE of system_UART_IP_NCY_0_0_Axi_Slave : entity is "1'b1";
  attribute WR_IDLE : string;
  attribute WR_IDLE of system_UART_IP_NCY_0_0_Axi_Slave : entity is "1'b0";
end system_UART_IP_NCY_0_0_Axi_Slave;

architecture STRUCTURE of system_UART_IP_NCY_0_0_Axi_Slave is
  signal \<const0>\ : STD_LOGIC;
  signal \^arready\ : STD_LOGIC;
  signal \^awready\ : STD_LOGIC;
  signal \^bvalid\ : STD_LOGIC;
  signal RSTATE_i_1_n_0 : STD_LOGIC;
  signal \^rvalid\ : STD_LOGIC;
  signal S_ARREADY0 : STD_LOGIC;
  signal S_AWREADY0 : STD_LOGIC;
  signal S_WREADY0 : STD_LOGIC;
  signal U0_UART_n_0 : STD_LOGIC;
  signal \^wready\ : STD_LOGIC;
  signal WSTATE_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RSTATE_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of S_ARREADY_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of S_AWREADY_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of S_WREADY_i_1 : label is "soft_lutpair22";
begin
  ARREADY <= \^arready\;
  AWREADY <= \^awready\;
  BRESP <= \<const0>\;
  BVALID <= \^bvalid\;
  RRESP <= \<const0>\;
  RVALID <= \^rvalid\;
  WREADY <= \^wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
RSTATE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^arready\,
      I1 => ARVALID,
      I2 => \^rvalid\,
      O => RSTATE_i_1_n_0
    );
RSTATE_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => U0_UART_n_0,
      D => RSTATE_i_1_n_0,
      Q => \^rvalid\
    );
S_ARREADY_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ARVALID,
      I1 => \^arready\,
      O => S_ARREADY0
    );
S_ARREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => U0_UART_n_0,
      D => S_ARREADY0,
      Q => \^arready\
    );
S_AWREADY_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => WVALID,
      I1 => AWVALID,
      I2 => \^awready\,
      O => S_AWREADY0
    );
S_AWREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => U0_UART_n_0,
      D => S_AWREADY0,
      Q => \^awready\
    );
S_WREADY_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => WVALID,
      I1 => AWVALID,
      I2 => \^wready\,
      O => S_WREADY0
    );
S_WREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => U0_UART_n_0,
      D => S_WREADY0,
      Q => \^wready\
    );
U0_UART: entity work.system_UART_IP_NCY_0_0_UART
     port map (
      ACLK => ACLK,
      ARADDR(1 downto 0) => ARADDR(3 downto 2),
      ARESETn => ARESETn,
      ARESETn_0 => U0_UART_n_0,
      ARVALID => ARVALID,
      AWADDR(1 downto 0) => AWADDR(3 downto 2),
      AWVALID => AWVALID,
      RDATA(31 downto 0) => RDATA(31 downto 0),
      \S_AXI_RDATA_reg[0]_0\ => \^arready\,
      WDATA(31 downto 0) => WDATA(31 downto 0),
      WVALID => WVALID,
      irq => irq,
      \reg3_reg[0]_0\ => \^wready\,
      \reg3_reg[0]_1\ => \^awready\,
      rx => rx,
      tx => tx
    );
WSTATE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => BREADY,
      I1 => \^bvalid\,
      I2 => \^awready\,
      I3 => \^wready\,
      I4 => WVALID,
      I5 => AWVALID,
      O => WSTATE_i_1_n_0
    );
WSTATE_reg: unisim.vcomponents.FDCE
     port map (
      C => ACLK,
      CE => '1',
      CLR => U0_UART_n_0,
      D => WSTATE_i_1_n_0,
      Q => \^bvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_UART_IP_NCY_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETn : in STD_LOGIC;
    AWVALID : in STD_LOGIC;
    AWREADY : out STD_LOGIC;
    AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WVALID : in STD_LOGIC;
    WREADY : out STD_LOGIC;
    WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BVALID : out STD_LOGIC;
    BREADY : in STD_LOGIC;
    BRESP : out STD_LOGIC;
    ARVALID : in STD_LOGIC;
    ARREADY : out STD_LOGIC;
    ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RVALID : out STD_LOGIC;
    RREADY : in STD_LOGIC;
    RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RRESP : out STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_UART_IP_NCY_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_UART_IP_NCY_0_0 : entity is "system_UART_IP_NCY_0_0,Axi_Slave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_UART_IP_NCY_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_UART_IP_NCY_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_UART_IP_NCY_0_0 : entity is "Axi_Slave,Vivado 2022.1";
end system_UART_IP_NCY_0_0;

architecture STRUCTURE of system_UART_IP_NCY_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_BRESP_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_RRESP_UNCONNECTED : STD_LOGIC;
  attribute RD_DONE : string;
  attribute RD_DONE of inst : label is "1'b1";
  attribute RD_IDLE : string;
  attribute RD_IDLE of inst : label is "1'b0";
  attribute WR_DONE : string;
  attribute WR_DONE of inst : label is "1'b1";
  attribute WR_IDLE : string;
  attribute WR_IDLE of inst : label is "1'b0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF interface_aximm, ASSOCIATED_RESET ARESETn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARESETn : signal is "xilinx.com:signal:reset:1.0 ARESETn RST";
  attribute X_INTERFACE_PARAMETER of ARESETn : signal is "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ARREADY : signal is "xilinx.com:interface:aximm:1.0 interface_aximm ARREADY";
  attribute X_INTERFACE_INFO of ARVALID : signal is "xilinx.com:interface:aximm:1.0 interface_aximm ARVALID";
  attribute X_INTERFACE_INFO of AWREADY : signal is "xilinx.com:interface:aximm:1.0 interface_aximm AWREADY";
  attribute X_INTERFACE_INFO of AWVALID : signal is "xilinx.com:interface:aximm:1.0 interface_aximm AWVALID";
  attribute X_INTERFACE_INFO of BREADY : signal is "xilinx.com:interface:aximm:1.0 interface_aximm BREADY";
  attribute X_INTERFACE_INFO of BRESP : signal is "xilinx.com:interface:aximm:1.0 interface_aximm BRESP";
  attribute X_INTERFACE_INFO of BVALID : signal is "xilinx.com:interface:aximm:1.0 interface_aximm BVALID";
  attribute X_INTERFACE_INFO of RREADY : signal is "xilinx.com:interface:aximm:1.0 interface_aximm RREADY";
  attribute X_INTERFACE_INFO of RRESP : signal is "xilinx.com:interface:aximm:1.0 interface_aximm RRESP";
  attribute X_INTERFACE_PARAMETER of RRESP : signal is "XIL_INTERFACENAME interface_aximm, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RVALID : signal is "xilinx.com:interface:aximm:1.0 interface_aximm RVALID";
  attribute X_INTERFACE_INFO of WREADY : signal is "xilinx.com:interface:aximm:1.0 interface_aximm WREADY";
  attribute X_INTERFACE_INFO of WVALID : signal is "xilinx.com:interface:aximm:1.0 interface_aximm WVALID";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of ARADDR : signal is "xilinx.com:interface:aximm:1.0 interface_aximm ARADDR";
  attribute X_INTERFACE_INFO of AWADDR : signal is "xilinx.com:interface:aximm:1.0 interface_aximm AWADDR";
  attribute X_INTERFACE_INFO of RDATA : signal is "xilinx.com:interface:aximm:1.0 interface_aximm RDATA";
  attribute X_INTERFACE_INFO of WDATA : signal is "xilinx.com:interface:aximm:1.0 interface_aximm WDATA";
begin
  BRESP <= \<const0>\;
  RRESP <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_UART_IP_NCY_0_0_Axi_Slave
     port map (
      ACLK => ACLK,
      ARADDR(31 downto 4) => B"0000000000000000000000000000",
      ARADDR(3 downto 2) => ARADDR(3 downto 2),
      ARADDR(1 downto 0) => B"00",
      ARESETn => ARESETn,
      ARREADY => ARREADY,
      ARVALID => ARVALID,
      AWADDR(31 downto 4) => B"0000000000000000000000000000",
      AWADDR(3 downto 2) => AWADDR(3 downto 2),
      AWADDR(1 downto 0) => B"00",
      AWREADY => AWREADY,
      AWVALID => AWVALID,
      BREADY => BREADY,
      BRESP => NLW_inst_BRESP_UNCONNECTED,
      BVALID => BVALID,
      RDATA(31 downto 0) => RDATA(31 downto 0),
      RREADY => '0',
      RRESP => NLW_inst_RRESP_UNCONNECTED,
      RVALID => RVALID,
      WDATA(31 downto 0) => WDATA(31 downto 0),
      WREADY => WREADY,
      WVALID => WVALID,
      irq => irq,
      rx => rx,
      tx => tx
    );
end STRUCTURE;
