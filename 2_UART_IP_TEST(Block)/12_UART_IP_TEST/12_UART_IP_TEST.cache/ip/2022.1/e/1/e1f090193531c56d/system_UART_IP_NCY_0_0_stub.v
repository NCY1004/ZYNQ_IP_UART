// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jul 28 15:57:44 2023
// Host        : Chan-notebook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_UART_IP_NCY_0_0_stub.v
// Design      : system_UART_IP_NCY_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Axi_Slave,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ACLK, ARESETn, AWVALID, AWREADY, AWADDR, WVALID, 
  WREADY, WDATA, BVALID, BREADY, BRESP, ARVALID, ARREADY, ARADDR, RVALID, RREADY, RDATA, RRESP, rx, tx, irq)
/* synthesis syn_black_box black_box_pad_pin="ACLK,ARESETn,AWVALID,AWREADY,AWADDR[31:0],WVALID,WREADY,WDATA[31:0],BVALID,BREADY,BRESP,ARVALID,ARREADY,ARADDR[31:0],RVALID,RREADY,RDATA[31:0],RRESP,rx,tx,irq" */;
  input ACLK;
  input ARESETn;
  input AWVALID;
  output AWREADY;
  input [31:0]AWADDR;
  input WVALID;
  output WREADY;
  input [31:0]WDATA;
  output BVALID;
  input BREADY;
  output BRESP;
  input ARVALID;
  output ARREADY;
  input [31:0]ARADDR;
  output RVALID;
  input RREADY;
  output [31:0]RDATA;
  output RRESP;
  input rx;
  output tx;
  output irq;
endmodule
