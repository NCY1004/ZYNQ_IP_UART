-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Jul 28 16:31:57 2023
-- Host        : Chan-notebook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/12_UART_IP_TEST.gen/sources_1/bd/system/ip/system_UART_IP_NCY_0_0/system_UART_IP_NCY_0_0_stub.vhdl
-- Design      : system_UART_IP_NCY_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_UART_IP_NCY_0_0 is
  Port ( 
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

end system_UART_IP_NCY_0_0;

architecture stub of system_UART_IP_NCY_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ACLK,ARESETn,AWVALID,AWREADY,AWADDR[31:0],WVALID,WREADY,WDATA[31:0],BVALID,BREADY,BRESP,ARVALID,ARREADY,ARADDR[31:0],RVALID,RREADY,RDATA[31:0],RRESP,rx,tx,irq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Axi_Slave,Vivado 2022.1";
begin
end;
