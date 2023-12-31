// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:UART_IP_NCY:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_UART_IP_NCY_0_0 (
  ACLK,
  ARESETn,
  AWVALID,
  AWREADY,
  AWADDR,
  WVALID,
  WREADY,
  WDATA,
  BVALID,
  BREADY,
  BRESP,
  ARVALID,
  ARREADY,
  ARADDR,
  RVALID,
  RREADY,
  RDATA,
  RRESP,
  rx,
  tx,
  irq
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF interface_aximm, ASSOCIATED_RESET ARESETn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *)
input wire ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETn RST" *)
input wire ARESETn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWVALID" *)
input wire AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWREADY" *)
output wire AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWADDR" *)
input wire [31 : 0] AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WVALID" *)
input wire WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WREADY" *)
output wire WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WDATA" *)
input wire [31 : 0] WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BVALID" *)
output wire BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BREADY" *)
input wire BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BRESP" *)
output wire BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARVALID" *)
input wire ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARREADY" *)
output wire ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARADDR" *)
input wire [31 : 0] ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RVALID" *)
output wire RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RREADY" *)
input wire RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RDATA" *)
output wire [31 : 0] RDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_aximm, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_T\
HREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RRESP" *)
output wire RRESP;
input wire rx;
output wire tx;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *)
output wire irq;

  Axi_Slave #(
    .WR_IDLE(1'B0),
    .WR_DONE(1'B1),
    .RD_IDLE(1'B0),
    .RD_DONE(1'B1)
  ) inst (
    .ACLK(ACLK),
    .ARESETn(ARESETn),
    .AWVALID(AWVALID),
    .AWREADY(AWREADY),
    .AWADDR(AWADDR),
    .WVALID(WVALID),
    .WREADY(WREADY),
    .WDATA(WDATA),
    .BVALID(BVALID),
    .BREADY(BREADY),
    .BRESP(BRESP),
    .ARVALID(ARVALID),
    .ARREADY(ARREADY),
    .ARADDR(ARADDR),
    .RVALID(RVALID),
    .RREADY(RREADY),
    .RDATA(RDATA),
    .RRESP(RRESP),
    .rx(rx),
    .tx(tx),
    .irq(irq)
  );
endmodule
