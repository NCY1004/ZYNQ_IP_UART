// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jul 27 16:12:31 2023
// Host        : Chan-notebook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_UART_IP_NCY_0_0_sim_netlist.v
// Design      : system_UART_IP_NCY_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* RD_DONE = "1'b1" *) (* RD_IDLE = "1'b0" *) (* WR_DONE = "1'b1" *) 
(* WR_IDLE = "1'b0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Axi_Slave
   (ACLK,
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
    irq);
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

  wire \<const0> ;
  wire ACLK;
  wire [31:0]ARADDR;
  wire ARESETn;
  wire ARREADY;
  wire ARVALID;
  wire [31:0]AWADDR;
  wire AWREADY;
  wire AWVALID;
  wire BREADY;
  wire BVALID;
  wire [31:0]RDATA;
  wire RSTATE_i_1_n_0;
  wire RVALID;
  wire S_ARREADY0;
  wire S_AWREADY0;
  wire S_WREADY0;
  wire U0_UART_n_0;
  wire [31:0]WDATA;
  wire WREADY;
  wire WSTATE_i_1_n_0;
  wire WVALID;
  wire irq;
  wire rx;
  wire tx;

  assign BRESP = \<const0> ;
  assign RRESP = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    RSTATE_i_1
       (.I0(RVALID),
        .I1(ARVALID),
        .I2(ARREADY),
        .O(RSTATE_i_1_n_0));
  FDCE RSTATE_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(U0_UART_n_0),
        .D(RSTATE_i_1_n_0),
        .Q(RVALID));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    S_ARREADY_i_1
       (.I0(ARVALID),
        .I1(ARREADY),
        .O(S_ARREADY0));
  FDCE S_ARREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(U0_UART_n_0),
        .D(S_ARREADY0),
        .Q(ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    S_AWREADY_i_1
       (.I0(AWREADY),
        .I1(AWVALID),
        .I2(WVALID),
        .O(S_AWREADY0));
  FDCE S_AWREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(U0_UART_n_0),
        .D(S_AWREADY0),
        .Q(AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    S_WREADY_i_1
       (.I0(WREADY),
        .I1(AWVALID),
        .I2(WVALID),
        .O(S_WREADY0));
  FDCE S_WREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(U0_UART_n_0),
        .D(S_WREADY0),
        .Q(WREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART U0_UART
       (.ACLK(ACLK),
        .ARADDR(ARADDR[3:2]),
        .ARESETn(ARESETn),
        .ARESETn_0(U0_UART_n_0),
        .ARVALID(ARVALID),
        .AWADDR(AWADDR[3:2]),
        .AWVALID(AWVALID),
        .RDATA(RDATA),
        .\S_AXI_RDATA_reg[0]_0 (ARREADY),
        .WDATA(WDATA),
        .WVALID(WVALID),
        .irq(irq),
        .\reg0_reg[31]_0 (AWREADY),
        .\reg0_reg[31]_1 (WREADY),
        .rx(rx),
        .tx(tx));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    WSTATE_i_1
       (.I0(BREADY),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(WREADY),
        .I4(AWREADY),
        .I5(BVALID),
        .O(WSTATE_i_1_n_0));
  FDCE WSTATE_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(U0_UART_n_0),
        .D(WSTATE_i_1_n_0),
        .Q(BVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART
   (ARESETn_0,
    tx,
    irq,
    RDATA,
    rx,
    ACLK,
    AWADDR,
    WDATA,
    \reg0_reg[31]_0 ,
    \reg0_reg[31]_1 ,
    WVALID,
    AWVALID,
    \S_AXI_RDATA_reg[0]_0 ,
    ARVALID,
    ARESETn,
    ARADDR);
  output ARESETn_0;
  output tx;
  output irq;
  output [31:0]RDATA;
  input rx;
  input ACLK;
  input [1:0]AWADDR;
  input [31:0]WDATA;
  input \reg0_reg[31]_0 ;
  input \reg0_reg[31]_1 ;
  input WVALID;
  input AWVALID;
  input \S_AXI_RDATA_reg[0]_0 ;
  input ARVALID;
  input ARESETn;
  input [1:0]ARADDR;

  wire ACLK;
  wire [1:0]ARADDR;
  wire ARESETn;
  wire ARESETn_0;
  wire ARVALID;
  wire [1:0]AWADDR;
  wire AWVALID;
  wire \FSM_sequential_TX_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_TX_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_TX_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_10_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_11_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_12_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_13_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_1_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_2_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_4_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_5_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_6_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_7_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_8_n_0 ;
  wire \FSM_sequential_TX_current_state[3]_i_9_n_0 ;
  wire [31:0]RDATA;
  wire [3:0]RX_current_state;
  wire \RX_current_state[0]_i_1_n_0 ;
  wire \RX_current_state[1]_i_1_n_0 ;
  wire \RX_current_state[2]_i_1_n_0 ;
  wire \RX_current_state[3]_i_1_n_0 ;
  wire \RX_current_state[3]_i_2_n_0 ;
  wire [3:0]RX_next_state;
  wire [3:0]RX_next_state__0;
  wire \RX_next_state_reg[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[0]_i_1_n_0 ;
  wire \S_AXI_RDATA[10]_i_1_n_0 ;
  wire \S_AXI_RDATA[11]_i_1_n_0 ;
  wire \S_AXI_RDATA[12]_i_1_n_0 ;
  wire \S_AXI_RDATA[13]_i_1_n_0 ;
  wire \S_AXI_RDATA[14]_i_1_n_0 ;
  wire \S_AXI_RDATA[15]_i_1_n_0 ;
  wire \S_AXI_RDATA[16]_i_1_n_0 ;
  wire \S_AXI_RDATA[17]_i_1_n_0 ;
  wire \S_AXI_RDATA[18]_i_1_n_0 ;
  wire \S_AXI_RDATA[19]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_1_n_0 ;
  wire \S_AXI_RDATA[20]_i_1_n_0 ;
  wire \S_AXI_RDATA[21]_i_1_n_0 ;
  wire \S_AXI_RDATA[22]_i_1_n_0 ;
  wire \S_AXI_RDATA[23]_i_1_n_0 ;
  wire \S_AXI_RDATA[24]_i_1_n_0 ;
  wire \S_AXI_RDATA[25]_i_1_n_0 ;
  wire \S_AXI_RDATA[26]_i_1_n_0 ;
  wire \S_AXI_RDATA[27]_i_1_n_0 ;
  wire \S_AXI_RDATA[28]_i_1_n_0 ;
  wire \S_AXI_RDATA[29]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_1_n_0 ;
  wire \S_AXI_RDATA[30]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_1_n_0 ;
  wire \S_AXI_RDATA[31]_i_2_n_0 ;
  wire \S_AXI_RDATA[3]_i_1_n_0 ;
  wire \S_AXI_RDATA[4]_i_1_n_0 ;
  wire \S_AXI_RDATA[5]_i_1_n_0 ;
  wire \S_AXI_RDATA[6]_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_i_1_n_0 ;
  wire \S_AXI_RDATA[8]_i_1_n_0 ;
  wire \S_AXI_RDATA[9]_i_1_n_0 ;
  wire \S_AXI_RDATA_reg[0]_0 ;
  wire [8:0]TX_cnt;
  wire \TX_cnt[0]_i_1_n_0 ;
  wire \TX_cnt[1]_i_1_n_0 ;
  wire \TX_cnt[2]_i_1_n_0 ;
  wire \TX_cnt[3]_i_1_n_0 ;
  wire \TX_cnt[4]_i_1_n_0 ;
  wire \TX_cnt[4]_i_2_n_0 ;
  wire \TX_cnt[5]_i_1_n_0 ;
  wire \TX_cnt[5]_i_2_n_0 ;
  wire \TX_cnt[6]_i_1_n_0 ;
  wire \TX_cnt[7]_i_1_n_0 ;
  wire \TX_cnt[8]_i_1_n_0 ;
  wire \TX_cnt[8]_i_2_n_0 ;
  wire \TX_cnt[8]_i_3_n_0 ;
  wire [3:0]TX_current_state;
  wire [31:0]WDATA;
  wire WVALID;
  wire [9:0]cnt_rx;
  wire \cnt_rx[4]_i_1_n_0 ;
  wire \cnt_rx[5]_i_2_n_0 ;
  wire \cnt_rx[6]_i_1_n_0 ;
  wire \cnt_rx[8]_i_2_n_0 ;
  wire \cnt_rx[8]_i_3_n_0 ;
  wire \cnt_rx[9]_i_1_n_0 ;
  wire \cnt_rx[9]_i_2_n_0 ;
  wire \cnt_rx[9]_i_3_n_0 ;
  wire irq;
  wire irq_INST_0_i_10_n_0;
  wire irq_INST_0_i_11_n_0;
  wire irq_INST_0_i_12_n_0;
  wire irq_INST_0_i_1_n_0;
  wire irq_INST_0_i_2_n_0;
  wire irq_INST_0_i_3_n_0;
  wire irq_INST_0_i_4_n_0;
  wire irq_INST_0_i_5_n_0;
  wire irq_INST_0_i_6_n_0;
  wire irq_INST_0_i_7_n_0;
  wire irq_INST_0_i_8_n_0;
  wire irq_INST_0_i_9_n_0;
  wire [8:0]p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire [31:8]reg0;
  wire \reg0[31]_i_1_n_0 ;
  wire \reg0_reg[31]_0 ;
  wire \reg0_reg[31]_1 ;
  wire \reg0_reg_n_0_[0] ;
  wire \reg1[31]_i_1_n_0 ;
  wire \reg1_reg_n_0_[0] ;
  wire \reg1_reg_n_0_[10] ;
  wire \reg1_reg_n_0_[11] ;
  wire \reg1_reg_n_0_[12] ;
  wire \reg1_reg_n_0_[13] ;
  wire \reg1_reg_n_0_[14] ;
  wire \reg1_reg_n_0_[15] ;
  wire \reg1_reg_n_0_[16] ;
  wire \reg1_reg_n_0_[17] ;
  wire \reg1_reg_n_0_[18] ;
  wire \reg1_reg_n_0_[19] ;
  wire \reg1_reg_n_0_[1] ;
  wire \reg1_reg_n_0_[20] ;
  wire \reg1_reg_n_0_[21] ;
  wire \reg1_reg_n_0_[22] ;
  wire \reg1_reg_n_0_[23] ;
  wire \reg1_reg_n_0_[24] ;
  wire \reg1_reg_n_0_[25] ;
  wire \reg1_reg_n_0_[26] ;
  wire \reg1_reg_n_0_[27] ;
  wire \reg1_reg_n_0_[28] ;
  wire \reg1_reg_n_0_[29] ;
  wire \reg1_reg_n_0_[2] ;
  wire \reg1_reg_n_0_[30] ;
  wire \reg1_reg_n_0_[31] ;
  wire \reg1_reg_n_0_[3] ;
  wire \reg1_reg_n_0_[4] ;
  wire \reg1_reg_n_0_[5] ;
  wire \reg1_reg_n_0_[6] ;
  wire \reg1_reg_n_0_[7] ;
  wire \reg1_reg_n_0_[8] ;
  wire \reg1_reg_n_0_[9] ;
  wire [31:0]reg2;
  wire \reg2[0]_i_1_n_0 ;
  wire \reg2[1]_i_1_n_0 ;
  wire \reg2[2]_i_1_n_0 ;
  wire \reg2[31]_i_1_n_0 ;
  wire \reg2[3]_i_1_n_0 ;
  wire \reg2[4]_i_1_n_0 ;
  wire \reg2[5]_i_1_n_0 ;
  wire \reg2[6]_i_1_n_0 ;
  wire \reg2[7]_i_1_n_0 ;
  wire \reg3[0]_i_1_n_0 ;
  wire \reg3[10]_i_1_n_0 ;
  wire \reg3[11]_i_1_n_0 ;
  wire \reg3[12]_i_1_n_0 ;
  wire \reg3[13]_i_1_n_0 ;
  wire \reg3[14]_i_1_n_0 ;
  wire \reg3[15]_i_1_n_0 ;
  wire \reg3[16]_i_1_n_0 ;
  wire \reg3[17]_i_1_n_0 ;
  wire \reg3[18]_i_1_n_0 ;
  wire \reg3[19]_i_1_n_0 ;
  wire \reg3[1]_i_1_n_0 ;
  wire \reg3[20]_i_1_n_0 ;
  wire \reg3[21]_i_1_n_0 ;
  wire \reg3[22]_i_1_n_0 ;
  wire \reg3[23]_i_1_n_0 ;
  wire \reg3[24]_i_1_n_0 ;
  wire \reg3[25]_i_1_n_0 ;
  wire \reg3[26]_i_1_n_0 ;
  wire \reg3[27]_i_1_n_0 ;
  wire \reg3[28]_i_1_n_0 ;
  wire \reg3[29]_i_1_n_0 ;
  wire \reg3[2]_i_1_n_0 ;
  wire \reg3[30]_i_1_n_0 ;
  wire \reg3[31]_i_1_n_0 ;
  wire \reg3[31]_i_2_n_0 ;
  wire \reg3[31]_i_3_n_0 ;
  wire \reg3[3]_i_1_n_0 ;
  wire \reg3[4]_i_1_n_0 ;
  wire \reg3[5]_i_1_n_0 ;
  wire \reg3[6]_i_1_n_0 ;
  wire \reg3[7]_i_1_n_0 ;
  wire \reg3[8]_i_1_n_0 ;
  wire \reg3[9]_i_1_n_0 ;
  wire \reg3_reg_n_0_[0] ;
  wire \reg3_reg_n_0_[10] ;
  wire \reg3_reg_n_0_[11] ;
  wire \reg3_reg_n_0_[12] ;
  wire \reg3_reg_n_0_[13] ;
  wire \reg3_reg_n_0_[14] ;
  wire \reg3_reg_n_0_[15] ;
  wire \reg3_reg_n_0_[16] ;
  wire \reg3_reg_n_0_[17] ;
  wire \reg3_reg_n_0_[18] ;
  wire \reg3_reg_n_0_[19] ;
  wire \reg3_reg_n_0_[1] ;
  wire \reg3_reg_n_0_[20] ;
  wire \reg3_reg_n_0_[21] ;
  wire \reg3_reg_n_0_[22] ;
  wire \reg3_reg_n_0_[23] ;
  wire \reg3_reg_n_0_[24] ;
  wire \reg3_reg_n_0_[25] ;
  wire \reg3_reg_n_0_[26] ;
  wire \reg3_reg_n_0_[27] ;
  wire \reg3_reg_n_0_[28] ;
  wire \reg3_reg_n_0_[29] ;
  wire \reg3_reg_n_0_[2] ;
  wire \reg3_reg_n_0_[30] ;
  wire \reg3_reg_n_0_[31] ;
  wire \reg3_reg_n_0_[3] ;
  wire \reg3_reg_n_0_[4] ;
  wire \reg3_reg_n_0_[5] ;
  wire \reg3_reg_n_0_[6] ;
  wire \reg3_reg_n_0_[7] ;
  wire \reg3_reg_n_0_[8] ;
  wire \reg3_reg_n_0_[9] ;
  wire rx;
  wire [7:0]rx_data;
  wire [7:0]rx_data__0;
  wire rx_delay1;
  wire rx_delay2;
  wire slv_reg_wren;
  wire tx;
  wire tx_INST_0_i_1_n_0;
  wire tx_INST_0_i_2_n_0;
  wire tx_INST_0_i_3_n_0;
  wire write_1d;
  wire write_2d;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5555777D)) 
    \FSM_sequential_TX_current_state[0]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(TX_current_state[3]),
        .I2(TX_current_state[2]),
        .I3(TX_current_state[1]),
        .I4(TX_current_state[0]),
        .O(\FSM_sequential_TX_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00082828)) 
    \FSM_sequential_TX_current_state[1]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(TX_current_state[0]),
        .I2(TX_current_state[1]),
        .I3(TX_current_state[2]),
        .I4(TX_current_state[3]),
        .O(\FSM_sequential_TX_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00002A80)) 
    \FSM_sequential_TX_current_state[2]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(TX_current_state[1]),
        .I2(TX_current_state[0]),
        .I3(TX_current_state[2]),
        .I4(TX_current_state[3]),
        .O(\FSM_sequential_TX_current_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_sequential_TX_current_state[3]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_TX_current_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_TX_current_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_TX_current_state[3]_i_6_n_0 ),
        .I4(\FSM_sequential_TX_current_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_10 
       (.I0(\reg1_reg_n_0_[13] ),
        .I1(\reg1_reg_n_0_[0] ),
        .I2(\reg1_reg_n_0_[26] ),
        .I3(\reg1_reg_n_0_[18] ),
        .O(\FSM_sequential_TX_current_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_11 
       (.I0(\reg1_reg_n_0_[21] ),
        .I1(\reg1_reg_n_0_[1] ),
        .I2(\reg1_reg_n_0_[30] ),
        .I3(\reg1_reg_n_0_[22] ),
        .O(\FSM_sequential_TX_current_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_12 
       (.I0(\reg1_reg_n_0_[11] ),
        .I1(\reg1_reg_n_0_[10] ),
        .I2(\reg1_reg_n_0_[25] ),
        .I3(\reg1_reg_n_0_[9] ),
        .O(\FSM_sequential_TX_current_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_13 
       (.I0(TX_current_state[1]),
        .I1(TX_current_state[2]),
        .I2(TX_current_state[3]),
        .I3(\reg1_reg_n_0_[2] ),
        .I4(\reg1_reg_n_0_[23] ),
        .I5(\reg1_reg_n_0_[16] ),
        .O(\FSM_sequential_TX_current_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h000A8000)) 
    \FSM_sequential_TX_current_state[3]_i_2 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(TX_current_state[0]),
        .I2(TX_current_state[2]),
        .I3(TX_current_state[1]),
        .I4(TX_current_state[3]),
        .O(\FSM_sequential_TX_current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_TX_current_state[3]_i_3 
       (.I0(TX_cnt[3]),
        .I1(TX_cnt[7]),
        .I2(TX_cnt[4]),
        .I3(\FSM_sequential_TX_current_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_4 
       (.I0(\reg1_reg_n_0_[5] ),
        .I1(\reg1_reg_n_0_[15] ),
        .I2(\reg1_reg_n_0_[4] ),
        .I3(\reg1_reg_n_0_[6] ),
        .I4(\FSM_sequential_TX_current_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_5 
       (.I0(\reg1_reg_n_0_[12] ),
        .I1(\reg1_reg_n_0_[28] ),
        .I2(TX_current_state[0]),
        .I3(\reg1_reg_n_0_[8] ),
        .I4(\FSM_sequential_TX_current_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_TX_current_state[3]_i_6 
       (.I0(\reg1_reg_n_0_[7] ),
        .I1(\reg1_reg_n_0_[14] ),
        .I2(\reg1_reg_n_0_[3] ),
        .I3(\reg1_reg_n_0_[17] ),
        .I4(\FSM_sequential_TX_current_state[3]_i_11_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_TX_current_state[3]_i_7 
       (.I0(\FSM_sequential_TX_current_state[3]_i_12_n_0 ),
        .I1(\reg1_reg_n_0_[29] ),
        .I2(\reg1_reg_n_0_[27] ),
        .I3(\reg1_reg_n_0_[24] ),
        .I4(\reg1_reg_n_0_[19] ),
        .I5(\FSM_sequential_TX_current_state[3]_i_13_n_0 ),
        .O(\FSM_sequential_TX_current_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FSM_sequential_TX_current_state[3]_i_8 
       (.I0(TX_cnt[6]),
        .I1(TX_cnt[2]),
        .I2(TX_cnt[1]),
        .I3(TX_cnt[5]),
        .I4(TX_cnt[0]),
        .I5(TX_cnt[8]),
        .O(\FSM_sequential_TX_current_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_TX_current_state[3]_i_9 
       (.I0(write_2d),
        .I1(write_1d),
        .I2(\reg1_reg_n_0_[31] ),
        .I3(\reg1_reg_n_0_[20] ),
        .O(\FSM_sequential_TX_current_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101" *) 
  FDCE \FSM_sequential_TX_current_state_reg[0] 
       (.C(ACLK),
        .CE(\FSM_sequential_TX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\FSM_sequential_TX_current_state[0]_i_1_n_0 ),
        .Q(TX_current_state[0]));
  (* FSM_ENCODED_STATES = "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101" *) 
  FDCE \FSM_sequential_TX_current_state_reg[1] 
       (.C(ACLK),
        .CE(\FSM_sequential_TX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\FSM_sequential_TX_current_state[1]_i_1_n_0 ),
        .Q(TX_current_state[1]));
  (* FSM_ENCODED_STATES = "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101" *) 
  FDCE \FSM_sequential_TX_current_state_reg[2] 
       (.C(ACLK),
        .CE(\FSM_sequential_TX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\FSM_sequential_TX_current_state[2]_i_1_n_0 ),
        .Q(TX_current_state[2]));
  (* FSM_ENCODED_STATES = "TX_d1:0011,TX_d2:0100,TX_d0:0010,TX_stop:1010,TX_start:0001,iSTATE:0000,TX_d5:0111,TX_d7:1001,TX_d4:0110,TX_d6:1000,TX_d3:0101" *) 
  FDCE \FSM_sequential_TX_current_state_reg[3] 
       (.C(ACLK),
        .CE(\FSM_sequential_TX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\FSM_sequential_TX_current_state[3]_i_2_n_0 ),
        .Q(TX_current_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RX_current_state[0]_i_1 
       (.I0(RX_next_state[0]),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .O(\RX_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_current_state[1]_i_1 
       (.I0(RX_next_state[1]),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .O(\RX_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_current_state[2]_i_1 
       (.I0(RX_next_state[2]),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .O(\RX_current_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \RX_current_state[3]_i_1 
       (.I0(\cnt_rx[8]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .O(\RX_current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_current_state[3]_i_2 
       (.I0(RX_next_state[3]),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .O(\RX_current_state[3]_i_2_n_0 ));
  FDCE \RX_current_state_reg[0] 
       (.C(ACLK),
        .CE(\RX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\RX_current_state[0]_i_1_n_0 ),
        .Q(RX_current_state[0]));
  FDCE \RX_current_state_reg[1] 
       (.C(ACLK),
        .CE(\RX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\RX_current_state[1]_i_1_n_0 ),
        .Q(RX_current_state[1]));
  FDCE \RX_current_state_reg[2] 
       (.C(ACLK),
        .CE(\RX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\RX_current_state[2]_i_1_n_0 ),
        .Q(RX_current_state[2]));
  FDCE \RX_current_state_reg[3] 
       (.C(ACLK),
        .CE(\RX_current_state[3]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\RX_current_state[3]_i_2_n_0 ),
        .Q(RX_current_state[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RX_next_state_reg[0] 
       (.CLR(1'b0),
        .D(RX_next_state__0[0]),
        .G(\RX_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(RX_next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h003E)) 
    \RX_next_state_reg[0]_i_1 
       (.I0(RX_current_state[2]),
        .I1(RX_current_state[1]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[0]),
        .O(RX_next_state__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RX_next_state_reg[1] 
       (.CLR(1'b0),
        .D(RX_next_state__0[1]),
        .G(\RX_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(RX_next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    \RX_next_state_reg[1]_i_1 
       (.I0(RX_current_state[0]),
        .I1(RX_current_state[3]),
        .I2(RX_current_state[1]),
        .O(RX_next_state__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RX_next_state_reg[2] 
       (.CLR(1'b0),
        .D(RX_next_state__0[2]),
        .G(\RX_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(RX_next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \RX_next_state_reg[2]_i_1 
       (.I0(RX_current_state[1]),
        .I1(RX_current_state[0]),
        .I2(RX_current_state[2]),
        .I3(RX_current_state[3]),
        .O(RX_next_state__0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RX_next_state_reg[3] 
       (.CLR(1'b0),
        .D(RX_next_state__0[3]),
        .G(\RX_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(RX_next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08F0)) 
    \RX_next_state_reg[3]_i_1 
       (.I0(RX_current_state[0]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[1]),
        .O(RX_next_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \RX_next_state_reg[3]_i_2 
       (.I0(RX_current_state[0]),
        .I1(RX_current_state[1]),
        .I2(RX_current_state[2]),
        .I3(RX_current_state[3]),
        .O(\RX_next_state_reg[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    S_AWREADY_i_2
       (.I0(ARESETn),
        .O(ARESETn_0));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(\reg1_reg_n_0_[0] ),
        .I1(reg2[0]),
        .I2(\reg0_reg_n_0_[0] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[0] ),
        .O(\S_AXI_RDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\reg1_reg_n_0_[10] ),
        .I1(\reg3_reg_n_0_[10] ),
        .I2(reg0[10]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[10]),
        .O(\S_AXI_RDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(reg0[11]),
        .I1(\reg1_reg_n_0_[11] ),
        .I2(\reg3_reg_n_0_[11] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[11]),
        .O(\S_AXI_RDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\reg1_reg_n_0_[12] ),
        .I1(reg2[12]),
        .I2(reg0[12]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[12] ),
        .O(\S_AXI_RDATA[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(reg0[13]),
        .I1(\reg1_reg_n_0_[13] ),
        .I2(\reg3_reg_n_0_[13] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[13]),
        .O(\S_AXI_RDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(\reg1_reg_n_0_[14] ),
        .I1(\reg3_reg_n_0_[14] ),
        .I2(reg0[14]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[14]),
        .O(\S_AXI_RDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(reg0[15]),
        .I1(\reg1_reg_n_0_[15] ),
        .I2(\reg3_reg_n_0_[15] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[15]),
        .O(\S_AXI_RDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(\reg1_reg_n_0_[16] ),
        .I1(\reg3_reg_n_0_[16] ),
        .I2(reg0[16]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[16]),
        .O(\S_AXI_RDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(reg0[17]),
        .I1(\reg1_reg_n_0_[17] ),
        .I2(\reg3_reg_n_0_[17] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[17]),
        .O(\S_AXI_RDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(reg0[18]),
        .I1(\reg1_reg_n_0_[18] ),
        .I2(\reg3_reg_n_0_[18] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[18]),
        .O(\S_AXI_RDATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(\reg1_reg_n_0_[19] ),
        .I1(reg2[19]),
        .I2(reg0[19]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[19] ),
        .O(\S_AXI_RDATA[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(\reg1_reg_n_0_[1] ),
        .I1(\reg3_reg_n_0_[1] ),
        .I2(p_6_in),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[1]),
        .O(\S_AXI_RDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[20]_i_1 
       (.I0(\reg1_reg_n_0_[20] ),
        .I1(\reg3_reg_n_0_[20] ),
        .I2(reg0[20]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[20]),
        .O(\S_AXI_RDATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[21]_i_1 
       (.I0(reg0[21]),
        .I1(\reg1_reg_n_0_[21] ),
        .I2(\reg3_reg_n_0_[21] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[21]),
        .O(\S_AXI_RDATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \S_AXI_RDATA[22]_i_1 
       (.I0(reg0[22]),
        .I1(\reg1_reg_n_0_[22] ),
        .I2(reg2[22]),
        .I3(ARADDR[1]),
        .I4(ARADDR[0]),
        .I5(\reg3_reg_n_0_[22] ),
        .O(\S_AXI_RDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[23]_i_1 
       (.I0(\reg1_reg_n_0_[23] ),
        .I1(reg2[23]),
        .I2(reg0[23]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[23] ),
        .O(\S_AXI_RDATA[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[24]_i_1 
       (.I0(\reg1_reg_n_0_[24] ),
        .I1(\reg3_reg_n_0_[24] ),
        .I2(reg0[24]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[24]),
        .O(\S_AXI_RDATA[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[25]_i_1 
       (.I0(reg0[25]),
        .I1(\reg1_reg_n_0_[25] ),
        .I2(\reg3_reg_n_0_[25] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[25]),
        .O(\S_AXI_RDATA[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[26]_i_1 
       (.I0(\reg1_reg_n_0_[26] ),
        .I1(reg2[26]),
        .I2(reg0[26]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[26] ),
        .O(\S_AXI_RDATA[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[27]_i_1 
       (.I0(reg0[27]),
        .I1(\reg1_reg_n_0_[27] ),
        .I2(\reg3_reg_n_0_[27] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[27]),
        .O(\S_AXI_RDATA[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[28]_i_1 
       (.I0(\reg1_reg_n_0_[28] ),
        .I1(reg2[28]),
        .I2(reg0[28]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[28] ),
        .O(\S_AXI_RDATA[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[29]_i_1 
       (.I0(reg0[29]),
        .I1(\reg1_reg_n_0_[29] ),
        .I2(\reg3_reg_n_0_[29] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[29]),
        .O(\S_AXI_RDATA[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(p_5_in),
        .I1(\reg1_reg_n_0_[2] ),
        .I2(reg2[2]),
        .I3(ARADDR[1]),
        .I4(ARADDR[0]),
        .I5(\reg3_reg_n_0_[2] ),
        .O(\S_AXI_RDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[30]_i_1 
       (.I0(\reg1_reg_n_0_[30] ),
        .I1(\reg3_reg_n_0_[30] ),
        .I2(reg0[30]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[30]),
        .O(\S_AXI_RDATA[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \S_AXI_RDATA[31]_i_1 
       (.I0(\S_AXI_RDATA_reg[0]_0 ),
        .I1(ARVALID),
        .I2(ARESETn),
        .I3(slv_reg_wren),
        .O(\S_AXI_RDATA[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[31]_i_2 
       (.I0(reg0[31]),
        .I1(\reg1_reg_n_0_[31] ),
        .I2(\reg3_reg_n_0_[31] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[31]),
        .O(\S_AXI_RDATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(p_4_in),
        .I1(\reg1_reg_n_0_[3] ),
        .I2(\reg3_reg_n_0_[3] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[3]),
        .O(\S_AXI_RDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\reg1_reg_n_0_[4] ),
        .I1(\reg3_reg_n_0_[4] ),
        .I2(p_3_in),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[4]),
        .O(\S_AXI_RDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(p_2_in),
        .I1(\reg1_reg_n_0_[5] ),
        .I2(\reg3_reg_n_0_[5] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[5]),
        .O(\S_AXI_RDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(p_1_in),
        .I1(\reg1_reg_n_0_[6] ),
        .I2(reg2[6]),
        .I3(ARADDR[1]),
        .I4(ARADDR[0]),
        .I5(\reg3_reg_n_0_[6] ),
        .O(\S_AXI_RDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\reg1_reg_n_0_[7] ),
        .I1(reg2[7]),
        .I2(p_0_in_0),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(\reg3_reg_n_0_[7] ),
        .O(\S_AXI_RDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\reg1_reg_n_0_[8] ),
        .I1(\reg3_reg_n_0_[8] ),
        .I2(reg0[8]),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[8]),
        .O(\S_AXI_RDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(reg0[9]),
        .I1(\reg1_reg_n_0_[9] ),
        .I2(\reg3_reg_n_0_[9] ),
        .I3(ARADDR[0]),
        .I4(ARADDR[1]),
        .I5(reg2[9]),
        .O(\S_AXI_RDATA[9]_i_1_n_0 ));
  FDRE \S_AXI_RDATA_reg[0] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[0]_i_1_n_0 ),
        .Q(RDATA[0]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[10] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[10]_i_1_n_0 ),
        .Q(RDATA[10]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[11] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[11]_i_1_n_0 ),
        .Q(RDATA[11]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[12] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[12]_i_1_n_0 ),
        .Q(RDATA[12]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[13] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[13]_i_1_n_0 ),
        .Q(RDATA[13]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[14] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[14]_i_1_n_0 ),
        .Q(RDATA[14]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[15] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[15]_i_1_n_0 ),
        .Q(RDATA[15]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[16] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[16]_i_1_n_0 ),
        .Q(RDATA[16]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[17] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[17]_i_1_n_0 ),
        .Q(RDATA[17]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[18] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[18]_i_1_n_0 ),
        .Q(RDATA[18]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[19] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[19]_i_1_n_0 ),
        .Q(RDATA[19]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[1] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[1]_i_1_n_0 ),
        .Q(RDATA[1]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[20] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[20]_i_1_n_0 ),
        .Q(RDATA[20]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[21] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[21]_i_1_n_0 ),
        .Q(RDATA[21]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[22] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[22]_i_1_n_0 ),
        .Q(RDATA[22]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[23] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[23]_i_1_n_0 ),
        .Q(RDATA[23]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[24] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[24]_i_1_n_0 ),
        .Q(RDATA[24]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[25] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[25]_i_1_n_0 ),
        .Q(RDATA[25]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[26] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[26]_i_1_n_0 ),
        .Q(RDATA[26]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[27] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[27]_i_1_n_0 ),
        .Q(RDATA[27]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[28] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[28]_i_1_n_0 ),
        .Q(RDATA[28]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[29] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[29]_i_1_n_0 ),
        .Q(RDATA[29]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[2] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[2]_i_1_n_0 ),
        .Q(RDATA[2]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[30] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[30]_i_1_n_0 ),
        .Q(RDATA[30]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[31] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[31]_i_2_n_0 ),
        .Q(RDATA[31]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[3] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[3]_i_1_n_0 ),
        .Q(RDATA[3]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[4] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[4]_i_1_n_0 ),
        .Q(RDATA[4]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[5] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[5]_i_1_n_0 ),
        .Q(RDATA[5]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[6] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[6]_i_1_n_0 ),
        .Q(RDATA[6]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[7] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[7]_i_1_n_0 ),
        .Q(RDATA[7]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[8] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[8]_i_1_n_0 ),
        .Q(RDATA[8]),
        .R(1'b0));
  FDRE \S_AXI_RDATA_reg[9] 
       (.C(ACLK),
        .CE(\S_AXI_RDATA[31]_i_1_n_0 ),
        .D(\S_AXI_RDATA[9]_i_1_n_0 ),
        .Q(RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \TX_cnt[0]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(write_1d),
        .I2(write_2d),
        .I3(TX_cnt[0]),
        .O(\TX_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00454500)) 
    \TX_cnt[1]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(write_1d),
        .I2(write_2d),
        .I3(TX_cnt[1]),
        .I4(TX_cnt[0]),
        .O(\TX_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0DDDD000)) 
    \TX_cnt[2]_i_1 
       (.I0(write_2d),
        .I1(write_1d),
        .I2(TX_cnt[0]),
        .I3(TX_cnt[1]),
        .I4(TX_cnt[2]),
        .O(\TX_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0DDDDDDDD0000000)) 
    \TX_cnt[3]_i_1 
       (.I0(write_2d),
        .I1(write_1d),
        .I2(TX_cnt[1]),
        .I3(TX_cnt[0]),
        .I4(TX_cnt[2]),
        .I5(TX_cnt[3]),
        .O(\TX_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h45000045)) 
    \TX_cnt[4]_i_1 
       (.I0(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I1(write_1d),
        .I2(write_2d),
        .I3(\TX_cnt[4]_i_2_n_0 ),
        .I4(TX_cnt[4]),
        .O(\TX_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \TX_cnt[4]_i_2 
       (.I0(TX_cnt[2]),
        .I1(TX_cnt[0]),
        .I2(TX_cnt[1]),
        .I3(TX_cnt[3]),
        .O(\TX_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00009909)) 
    \TX_cnt[5]_i_1 
       (.I0(TX_cnt[5]),
        .I1(\TX_cnt[5]_i_2_n_0 ),
        .I2(write_2d),
        .I3(write_1d),
        .I4(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .O(\TX_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \TX_cnt[5]_i_2 
       (.I0(TX_cnt[3]),
        .I1(TX_cnt[1]),
        .I2(TX_cnt[0]),
        .I3(TX_cnt[2]),
        .I4(TX_cnt[4]),
        .O(\TX_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hD00D)) 
    \TX_cnt[6]_i_1 
       (.I0(write_2d),
        .I1(write_1d),
        .I2(\TX_cnt[8]_i_2_n_0 ),
        .I3(TX_cnt[6]),
        .O(\TX_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D000D00000D00)) 
    \TX_cnt[7]_i_1 
       (.I0(write_2d),
        .I1(write_1d),
        .I2(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .I3(TX_cnt[6]),
        .I4(\TX_cnt[8]_i_2_n_0 ),
        .I5(TX_cnt[7]),
        .O(\TX_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AA0000)) 
    \TX_cnt[8]_i_1 
       (.I0(TX_cnt[8]),
        .I1(TX_cnt[7]),
        .I2(\TX_cnt[8]_i_2_n_0 ),
        .I3(TX_cnt[6]),
        .I4(\TX_cnt[8]_i_3_n_0 ),
        .I5(\FSM_sequential_TX_current_state[3]_i_3_n_0 ),
        .O(\TX_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \TX_cnt[8]_i_2 
       (.I0(TX_cnt[4]),
        .I1(TX_cnt[2]),
        .I2(TX_cnt[0]),
        .I3(TX_cnt[1]),
        .I4(TX_cnt[3]),
        .I5(TX_cnt[5]),
        .O(\TX_cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \TX_cnt[8]_i_3 
       (.I0(write_1d),
        .I1(write_2d),
        .O(\TX_cnt[8]_i_3_n_0 ));
  FDCE \TX_cnt_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[0]_i_1_n_0 ),
        .Q(TX_cnt[0]));
  FDCE \TX_cnt_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[1]_i_1_n_0 ),
        .Q(TX_cnt[1]));
  FDCE \TX_cnt_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[2]_i_1_n_0 ),
        .Q(TX_cnt[2]));
  FDCE \TX_cnt_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[3]_i_1_n_0 ),
        .Q(TX_cnt[3]));
  FDCE \TX_cnt_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[4]_i_1_n_0 ),
        .Q(TX_cnt[4]));
  FDCE \TX_cnt_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[5]_i_1_n_0 ),
        .Q(TX_cnt[5]));
  FDCE \TX_cnt_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[6]_i_1_n_0 ),
        .Q(TX_cnt[6]));
  FDCE \TX_cnt_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[7]_i_1_n_0 ),
        .Q(TX_cnt[7]));
  FDCE \TX_cnt_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\TX_cnt[8]_i_1_n_0 ),
        .Q(TX_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_rx[0]_i_1 
       (.I0(\cnt_rx[8]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .I2(cnt_rx[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \cnt_rx[1]_i_1 
       (.I0(\cnt_rx[8]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .I2(cnt_rx[0]),
        .I3(cnt_rx[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \cnt_rx[2]_i_1 
       (.I0(\cnt_rx[8]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .I2(cnt_rx[1]),
        .I3(cnt_rx[0]),
        .I4(cnt_rx[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \cnt_rx[3]_i_1 
       (.I0(\cnt_rx[8]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_2_n_0 ),
        .I2(cnt_rx[0]),
        .I3(cnt_rx[1]),
        .I4(cnt_rx[2]),
        .I5(cnt_rx[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \cnt_rx[4]_i_1 
       (.I0(\cnt_rx[9]_i_2_n_0 ),
        .I1(cnt_rx[2]),
        .I2(cnt_rx[1]),
        .I3(cnt_rx[0]),
        .I4(cnt_rx[3]),
        .I5(cnt_rx[4]),
        .O(\cnt_rx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0009)) 
    \cnt_rx[5]_i_1 
       (.I0(cnt_rx[5]),
        .I1(\cnt_rx[5]_i_2_n_0 ),
        .I2(\cnt_rx[9]_i_2_n_0 ),
        .I3(\cnt_rx[8]_i_2_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_rx[5]_i_2 
       (.I0(cnt_rx[3]),
        .I1(cnt_rx[0]),
        .I2(cnt_rx[1]),
        .I3(cnt_rx[2]),
        .I4(cnt_rx[4]),
        .O(\cnt_rx[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_rx[6]_i_1 
       (.I0(\cnt_rx[9]_i_2_n_0 ),
        .I1(\cnt_rx[9]_i_3_n_0 ),
        .I2(cnt_rx[6]),
        .O(\cnt_rx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h11010010)) 
    \cnt_rx[7]_i_1 
       (.I0(\cnt_rx[9]_i_2_n_0 ),
        .I1(\cnt_rx[8]_i_2_n_0 ),
        .I2(cnt_rx[6]),
        .I3(\cnt_rx[9]_i_3_n_0 ),
        .I4(cnt_rx[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h000000000000A6AA)) 
    \cnt_rx[8]_i_1 
       (.I0(cnt_rx[8]),
        .I1(cnt_rx[7]),
        .I2(\cnt_rx[9]_i_3_n_0 ),
        .I3(cnt_rx[6]),
        .I4(\cnt_rx[9]_i_2_n_0 ),
        .I5(\cnt_rx[8]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \cnt_rx[8]_i_2 
       (.I0(cnt_rx[5]),
        .I1(cnt_rx[7]),
        .I2(cnt_rx[3]),
        .I3(cnt_rx[1]),
        .I4(cnt_rx[2]),
        .I5(\cnt_rx[8]_i_3_n_0 ),
        .O(\cnt_rx[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \cnt_rx[8]_i_3 
       (.I0(cnt_rx[9]),
        .I1(cnt_rx[6]),
        .I2(cnt_rx[0]),
        .I3(cnt_rx[8]),
        .I4(cnt_rx[4]),
        .O(\cnt_rx[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \cnt_rx[9]_i_1 
       (.I0(\cnt_rx[9]_i_2_n_0 ),
        .I1(cnt_rx[7]),
        .I2(\cnt_rx[9]_i_3_n_0 ),
        .I3(cnt_rx[6]),
        .I4(cnt_rx[8]),
        .I5(cnt_rx[9]),
        .O(\cnt_rx[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \cnt_rx[9]_i_2 
       (.I0(RX_current_state[2]),
        .I1(RX_current_state[3]),
        .I2(rx_delay1),
        .I3(rx_delay2),
        .I4(RX_current_state[0]),
        .I5(RX_current_state[1]),
        .O(\cnt_rx[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_rx[9]_i_3 
       (.I0(cnt_rx[4]),
        .I1(cnt_rx[2]),
        .I2(cnt_rx[1]),
        .I3(cnt_rx[0]),
        .I4(cnt_rx[3]),
        .I5(cnt_rx[5]),
        .O(\cnt_rx[9]_i_3_n_0 ));
  FDCE \cnt_rx_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[0]),
        .Q(cnt_rx[0]));
  FDCE \cnt_rx_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[1]),
        .Q(cnt_rx[1]));
  FDCE \cnt_rx_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[2]),
        .Q(cnt_rx[2]));
  FDCE \cnt_rx_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[3]),
        .Q(cnt_rx[3]));
  FDCE \cnt_rx_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\cnt_rx[4]_i_1_n_0 ),
        .Q(cnt_rx[4]));
  FDCE \cnt_rx_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[5]),
        .Q(cnt_rx[5]));
  FDCE \cnt_rx_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\cnt_rx[6]_i_1_n_0 ),
        .Q(cnt_rx[6]));
  FDCE \cnt_rx_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[7]),
        .Q(cnt_rx[7]));
  FDCE \cnt_rx_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(p_0_in[8]),
        .Q(cnt_rx[8]));
  FDCE \cnt_rx_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(\cnt_rx[9]_i_1_n_0 ),
        .Q(cnt_rx[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    irq_INST_0
       (.I0(irq_INST_0_i_1_n_0),
        .I1(irq_INST_0_i_2_n_0),
        .I2(irq_INST_0_i_3_n_0),
        .I3(irq_INST_0_i_4_n_0),
        .I4(irq_INST_0_i_5_n_0),
        .I5(irq_INST_0_i_6_n_0),
        .O(irq));
  LUT5 #(
    .INIT(32'h777777F7)) 
    irq_INST_0_i_1
       (.I0(cnt_rx[7]),
        .I1(cnt_rx[8]),
        .I2(irq_INST_0_i_7_n_0),
        .I3(cnt_rx[6]),
        .I4(cnt_rx[5]),
        .O(irq_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    irq_INST_0_i_10
       (.I0(RX_current_state[1]),
        .I1(RX_current_state[0]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[2]),
        .O(irq_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_INST_0_i_11
       (.I0(\reg3_reg_n_0_[30] ),
        .I1(\reg3_reg_n_0_[4] ),
        .I2(\reg3_reg_n_0_[16] ),
        .I3(\reg3_reg_n_0_[9] ),
        .O(irq_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    irq_INST_0_i_12
       (.I0(\reg3_reg_n_0_[17] ),
        .I1(\reg3_reg_n_0_[15] ),
        .I2(\reg3_reg_n_0_[0] ),
        .I3(\reg3_reg_n_0_[14] ),
        .O(irq_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    irq_INST_0_i_2
       (.I0(cnt_rx[3]),
        .I1(cnt_rx[4]),
        .I2(cnt_rx[5]),
        .I3(cnt_rx[6]),
        .I4(cnt_rx[7]),
        .I5(cnt_rx[8]),
        .O(irq_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    irq_INST_0_i_3
       (.I0(irq_INST_0_i_8_n_0),
        .I1(irq_INST_0_i_9_n_0),
        .I2(\reg3_reg_n_0_[18] ),
        .I3(\reg3_reg_n_0_[27] ),
        .I4(\reg3_reg_n_0_[5] ),
        .I5(irq_INST_0_i_10_n_0),
        .O(irq_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    irq_INST_0_i_4
       (.I0(\reg3_reg_n_0_[19] ),
        .I1(cnt_rx[9]),
        .I2(\reg3_reg_n_0_[6] ),
        .I3(\reg3_reg_n_0_[22] ),
        .I4(\reg3_reg_n_0_[13] ),
        .I5(\reg3_reg_n_0_[24] ),
        .O(irq_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    irq_INST_0_i_5
       (.I0(\reg3_reg_n_0_[20] ),
        .I1(\reg3_reg_n_0_[29] ),
        .I2(\reg3_reg_n_0_[8] ),
        .I3(\reg3_reg_n_0_[23] ),
        .I4(irq_INST_0_i_11_n_0),
        .O(irq_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    irq_INST_0_i_6
       (.I0(\reg3_reg_n_0_[10] ),
        .I1(\reg3_reg_n_0_[25] ),
        .I2(\reg3_reg_n_0_[31] ),
        .I3(\reg3_reg_n_0_[1] ),
        .I4(irq_INST_0_i_12_n_0),
        .O(irq_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    irq_INST_0_i_7
       (.I0(cnt_rx[1]),
        .I1(cnt_rx[0]),
        .I2(cnt_rx[3]),
        .I3(cnt_rx[2]),
        .I4(cnt_rx[4]),
        .O(irq_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_INST_0_i_8
       (.I0(\reg3_reg_n_0_[11] ),
        .I1(\reg3_reg_n_0_[3] ),
        .I2(\reg3_reg_n_0_[12] ),
        .I3(\reg3_reg_n_0_[7] ),
        .O(irq_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_INST_0_i_9
       (.I0(\reg3_reg_n_0_[21] ),
        .I1(\reg3_reg_n_0_[2] ),
        .I2(\reg3_reg_n_0_[28] ),
        .I3(\reg3_reg_n_0_[26] ),
        .O(irq_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \reg0[31]_i_1 
       (.I0(AWADDR[1]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(AWADDR[0]),
        .O(\reg0[31]_i_1_n_0 ));
  FDCE \reg0_reg[0] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[0]),
        .Q(\reg0_reg_n_0_[0] ));
  FDCE \reg0_reg[10] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[10]),
        .Q(reg0[10]));
  FDCE \reg0_reg[11] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[11]),
        .Q(reg0[11]));
  FDCE \reg0_reg[12] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[12]),
        .Q(reg0[12]));
  FDCE \reg0_reg[13] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[13]),
        .Q(reg0[13]));
  FDCE \reg0_reg[14] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[14]),
        .Q(reg0[14]));
  FDCE \reg0_reg[15] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[15]),
        .Q(reg0[15]));
  FDCE \reg0_reg[16] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[16]),
        .Q(reg0[16]));
  FDCE \reg0_reg[17] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[17]),
        .Q(reg0[17]));
  FDCE \reg0_reg[18] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[18]),
        .Q(reg0[18]));
  FDCE \reg0_reg[19] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[19]),
        .Q(reg0[19]));
  FDCE \reg0_reg[1] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[1]),
        .Q(p_6_in));
  FDCE \reg0_reg[20] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[20]),
        .Q(reg0[20]));
  FDCE \reg0_reg[21] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[21]),
        .Q(reg0[21]));
  FDCE \reg0_reg[22] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[22]),
        .Q(reg0[22]));
  FDCE \reg0_reg[23] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[23]),
        .Q(reg0[23]));
  FDCE \reg0_reg[24] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[24]),
        .Q(reg0[24]));
  FDCE \reg0_reg[25] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[25]),
        .Q(reg0[25]));
  FDCE \reg0_reg[26] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[26]),
        .Q(reg0[26]));
  FDCE \reg0_reg[27] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[27]),
        .Q(reg0[27]));
  FDCE \reg0_reg[28] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[28]),
        .Q(reg0[28]));
  FDCE \reg0_reg[29] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[29]),
        .Q(reg0[29]));
  FDCE \reg0_reg[2] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[2]),
        .Q(p_5_in));
  FDCE \reg0_reg[30] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[30]),
        .Q(reg0[30]));
  FDCE \reg0_reg[31] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[31]),
        .Q(reg0[31]));
  FDCE \reg0_reg[3] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[3]),
        .Q(p_4_in));
  FDCE \reg0_reg[4] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[4]),
        .Q(p_3_in));
  FDCE \reg0_reg[5] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[5]),
        .Q(p_2_in));
  FDCE \reg0_reg[6] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[6]),
        .Q(p_1_in));
  FDCE \reg0_reg[7] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[7]),
        .Q(p_0_in_0));
  FDCE \reg0_reg[8] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[8]),
        .Q(reg0[8]));
  FDCE \reg0_reg[9] 
       (.C(ACLK),
        .CE(\reg0[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[9]),
        .Q(reg0[9]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \reg1[31]_i_1 
       (.I0(AWADDR[1]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(AWADDR[0]),
        .O(\reg1[31]_i_1_n_0 ));
  FDCE \reg1_reg[0] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[0]),
        .Q(\reg1_reg_n_0_[0] ));
  FDCE \reg1_reg[10] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[10]),
        .Q(\reg1_reg_n_0_[10] ));
  FDCE \reg1_reg[11] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[11]),
        .Q(\reg1_reg_n_0_[11] ));
  FDCE \reg1_reg[12] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[12]),
        .Q(\reg1_reg_n_0_[12] ));
  FDCE \reg1_reg[13] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[13]),
        .Q(\reg1_reg_n_0_[13] ));
  FDCE \reg1_reg[14] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[14]),
        .Q(\reg1_reg_n_0_[14] ));
  FDCE \reg1_reg[15] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[15]),
        .Q(\reg1_reg_n_0_[15] ));
  FDCE \reg1_reg[16] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[16]),
        .Q(\reg1_reg_n_0_[16] ));
  FDCE \reg1_reg[17] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[17]),
        .Q(\reg1_reg_n_0_[17] ));
  FDCE \reg1_reg[18] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[18]),
        .Q(\reg1_reg_n_0_[18] ));
  FDCE \reg1_reg[19] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[19]),
        .Q(\reg1_reg_n_0_[19] ));
  FDCE \reg1_reg[1] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[1]),
        .Q(\reg1_reg_n_0_[1] ));
  FDCE \reg1_reg[20] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[20]),
        .Q(\reg1_reg_n_0_[20] ));
  FDCE \reg1_reg[21] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[21]),
        .Q(\reg1_reg_n_0_[21] ));
  FDCE \reg1_reg[22] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[22]),
        .Q(\reg1_reg_n_0_[22] ));
  FDCE \reg1_reg[23] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[23]),
        .Q(\reg1_reg_n_0_[23] ));
  FDCE \reg1_reg[24] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[24]),
        .Q(\reg1_reg_n_0_[24] ));
  FDCE \reg1_reg[25] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[25]),
        .Q(\reg1_reg_n_0_[25] ));
  FDCE \reg1_reg[26] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[26]),
        .Q(\reg1_reg_n_0_[26] ));
  FDCE \reg1_reg[27] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[27]),
        .Q(\reg1_reg_n_0_[27] ));
  FDCE \reg1_reg[28] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[28]),
        .Q(\reg1_reg_n_0_[28] ));
  FDCE \reg1_reg[29] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[29]),
        .Q(\reg1_reg_n_0_[29] ));
  FDCE \reg1_reg[2] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[2]),
        .Q(\reg1_reg_n_0_[2] ));
  FDCE \reg1_reg[30] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[30]),
        .Q(\reg1_reg_n_0_[30] ));
  FDCE \reg1_reg[31] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[31]),
        .Q(\reg1_reg_n_0_[31] ));
  FDCE \reg1_reg[3] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[3]),
        .Q(\reg1_reg_n_0_[3] ));
  FDCE \reg1_reg[4] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[4]),
        .Q(\reg1_reg_n_0_[4] ));
  FDCE \reg1_reg[5] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[5]),
        .Q(\reg1_reg_n_0_[5] ));
  FDCE \reg1_reg[6] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[6]),
        .Q(\reg1_reg_n_0_[6] ));
  FDCE \reg1_reg[7] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[7]),
        .Q(\reg1_reg_n_0_[7] ));
  FDCE \reg1_reg[8] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[8]),
        .Q(\reg1_reg_n_0_[8] ));
  FDCE \reg1_reg[9] 
       (.C(ACLK),
        .CE(\reg1[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(WDATA[9]),
        .Q(\reg1_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[0]_i_1 
       (.I0(WDATA[0]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[0]),
        .O(\reg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[1]_i_1 
       (.I0(WDATA[1]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[1]),
        .O(\reg2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[2]_i_1 
       (.I0(WDATA[2]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[2]),
        .O(\reg2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h20202020202F2F2F)) 
    \reg2[31]_i_1 
       (.I0(AWADDR[1]),
        .I1(AWADDR[0]),
        .I2(slv_reg_wren),
        .I3(ARVALID),
        .I4(\S_AXI_RDATA_reg[0]_0 ),
        .I5(irq_INST_0_i_10_n_0),
        .O(\reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[3]_i_1 
       (.I0(WDATA[3]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[3]),
        .O(\reg2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[4]_i_1 
       (.I0(WDATA[4]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[4]),
        .O(\reg2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[5]_i_1 
       (.I0(WDATA[5]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[5]),
        .O(\reg2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[6]_i_1 
       (.I0(WDATA[6]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[6]),
        .O(\reg2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \reg2[7]_i_1 
       (.I0(WDATA[7]),
        .I1(AWVALID),
        .I2(WVALID),
        .I3(\reg0_reg[31]_1 ),
        .I4(\reg0_reg[31]_0 ),
        .I5(rx_data[7]),
        .O(\reg2[7]_i_1_n_0 ));
  FDCE \reg2_reg[0] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[0]_i_1_n_0 ),
        .Q(reg2[0]));
  FDCE \reg2_reg[10] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[10]_i_1_n_0 ),
        .Q(reg2[10]));
  FDCE \reg2_reg[11] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[11]_i_1_n_0 ),
        .Q(reg2[11]));
  FDCE \reg2_reg[12] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[12]_i_1_n_0 ),
        .Q(reg2[12]));
  FDCE \reg2_reg[13] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[13]_i_1_n_0 ),
        .Q(reg2[13]));
  FDCE \reg2_reg[14] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[14]_i_1_n_0 ),
        .Q(reg2[14]));
  FDCE \reg2_reg[15] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[15]_i_1_n_0 ),
        .Q(reg2[15]));
  FDCE \reg2_reg[16] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[16]_i_1_n_0 ),
        .Q(reg2[16]));
  FDCE \reg2_reg[17] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[17]_i_1_n_0 ),
        .Q(reg2[17]));
  FDCE \reg2_reg[18] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[18]_i_1_n_0 ),
        .Q(reg2[18]));
  FDCE \reg2_reg[19] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[19]_i_1_n_0 ),
        .Q(reg2[19]));
  FDCE \reg2_reg[1] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[1]_i_1_n_0 ),
        .Q(reg2[1]));
  FDCE \reg2_reg[20] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[20]_i_1_n_0 ),
        .Q(reg2[20]));
  FDCE \reg2_reg[21] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[21]_i_1_n_0 ),
        .Q(reg2[21]));
  FDCE \reg2_reg[22] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[22]_i_1_n_0 ),
        .Q(reg2[22]));
  FDCE \reg2_reg[23] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[23]_i_1_n_0 ),
        .Q(reg2[23]));
  FDCE \reg2_reg[24] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[24]_i_1_n_0 ),
        .Q(reg2[24]));
  FDCE \reg2_reg[25] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[25]_i_1_n_0 ),
        .Q(reg2[25]));
  FDCE \reg2_reg[26] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[26]_i_1_n_0 ),
        .Q(reg2[26]));
  FDCE \reg2_reg[27] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[27]_i_1_n_0 ),
        .Q(reg2[27]));
  FDCE \reg2_reg[28] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[28]_i_1_n_0 ),
        .Q(reg2[28]));
  FDCE \reg2_reg[29] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[29]_i_1_n_0 ),
        .Q(reg2[29]));
  FDCE \reg2_reg[2] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[2]_i_1_n_0 ),
        .Q(reg2[2]));
  FDCE \reg2_reg[30] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[30]_i_1_n_0 ),
        .Q(reg2[30]));
  FDCE \reg2_reg[31] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[31]_i_2_n_0 ),
        .Q(reg2[31]));
  FDCE \reg2_reg[3] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[3]_i_1_n_0 ),
        .Q(reg2[3]));
  FDCE \reg2_reg[4] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[4]_i_1_n_0 ),
        .Q(reg2[4]));
  FDCE \reg2_reg[5] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[5]_i_1_n_0 ),
        .Q(reg2[5]));
  FDCE \reg2_reg[6] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[6]_i_1_n_0 ),
        .Q(reg2[6]));
  FDCE \reg2_reg[7] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg2[7]_i_1_n_0 ),
        .Q(reg2[7]));
  FDCE \reg2_reg[8] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[8]_i_1_n_0 ),
        .Q(reg2[8]));
  FDCE \reg2_reg[9] 
       (.C(ACLK),
        .CE(\reg2[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[9]_i_1_n_0 ),
        .Q(reg2[9]));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \reg3[0]_i_1 
       (.I0(WDATA[0]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[10]_i_1 
       (.I0(WDATA[10]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[11]_i_1 
       (.I0(WDATA[11]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[12]_i_1 
       (.I0(WDATA[12]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[13]_i_1 
       (.I0(WDATA[13]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[14]_i_1 
       (.I0(WDATA[14]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[15]_i_1 
       (.I0(WDATA[15]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[16]_i_1 
       (.I0(WDATA[16]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[17]_i_1 
       (.I0(WDATA[17]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[18]_i_1 
       (.I0(WDATA[18]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[19]_i_1 
       (.I0(WDATA[19]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[1]_i_1 
       (.I0(WDATA[1]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[20]_i_1 
       (.I0(WDATA[20]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[21]_i_1 
       (.I0(WDATA[21]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[22]_i_1 
       (.I0(WDATA[22]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[23]_i_1 
       (.I0(WDATA[23]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[24]_i_1 
       (.I0(WDATA[24]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[25]_i_1 
       (.I0(WDATA[25]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[26]_i_1 
       (.I0(WDATA[26]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[27]_i_1 
       (.I0(WDATA[27]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[28]_i_1 
       (.I0(WDATA[28]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[29]_i_1 
       (.I0(WDATA[29]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[2]_i_1 
       (.I0(WDATA[2]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[30]_i_1 
       (.I0(WDATA[30]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \reg3[31]_i_1 
       (.I0(AWADDR[0]),
        .I1(AWADDR[1]),
        .I2(slv_reg_wren),
        .I3(irq_INST_0_i_10_n_0),
        .I4(\reg3[31]_i_3_n_0 ),
        .O(\reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[31]_i_2 
       (.I0(WDATA[31]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \reg3[31]_i_3 
       (.I0(ARVALID),
        .I1(\S_AXI_RDATA_reg[0]_0 ),
        .I2(TX_current_state[2]),
        .I3(TX_current_state[3]),
        .I4(TX_current_state[0]),
        .I5(TX_current_state[1]),
        .O(\reg3[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[3]_i_1 
       (.I0(WDATA[3]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[4]_i_1 
       (.I0(WDATA[4]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[5]_i_1 
       (.I0(WDATA[5]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[6]_i_1 
       (.I0(WDATA[6]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[7]_i_1 
       (.I0(WDATA[7]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[8]_i_1 
       (.I0(WDATA[8]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg3[9]_i_1 
       (.I0(WDATA[9]),
        .I1(\reg0_reg[31]_0 ),
        .I2(\reg0_reg[31]_1 ),
        .I3(WVALID),
        .I4(AWVALID),
        .O(\reg3[9]_i_1_n_0 ));
  FDCE \reg3_reg[0] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[0]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[0] ));
  FDCE \reg3_reg[10] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[10]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[10] ));
  FDCE \reg3_reg[11] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[11]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[11] ));
  FDCE \reg3_reg[12] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[12]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[12] ));
  FDCE \reg3_reg[13] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[13]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[13] ));
  FDCE \reg3_reg[14] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[14]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[14] ));
  FDCE \reg3_reg[15] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[15]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[15] ));
  FDCE \reg3_reg[16] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[16]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[16] ));
  FDCE \reg3_reg[17] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[17]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[17] ));
  FDCE \reg3_reg[18] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[18]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[18] ));
  FDCE \reg3_reg[19] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[19]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[19] ));
  FDCE \reg3_reg[1] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[1]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[1] ));
  FDCE \reg3_reg[20] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[20]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[20] ));
  FDCE \reg3_reg[21] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[21]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[21] ));
  FDCE \reg3_reg[22] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[22]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[22] ));
  FDCE \reg3_reg[23] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[23]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[23] ));
  FDCE \reg3_reg[24] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[24]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[24] ));
  FDCE \reg3_reg[25] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[25]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[25] ));
  FDCE \reg3_reg[26] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[26]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[26] ));
  FDCE \reg3_reg[27] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[27]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[27] ));
  FDCE \reg3_reg[28] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[28]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[28] ));
  FDCE \reg3_reg[29] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[29]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[29] ));
  FDCE \reg3_reg[2] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[2]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[2] ));
  FDCE \reg3_reg[30] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[30]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[30] ));
  FDCE \reg3_reg[31] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[31]_i_2_n_0 ),
        .Q(\reg3_reg_n_0_[31] ));
  FDCE \reg3_reg[3] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[3]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[3] ));
  FDCE \reg3_reg[4] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[4]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[4] ));
  FDCE \reg3_reg[5] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[5]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[5] ));
  FDCE \reg3_reg[6] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[6]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[6] ));
  FDCE \reg3_reg[7] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[7]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[7] ));
  FDCE \reg3_reg[8] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[8]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[8] ));
  FDCE \reg3_reg[9] 
       (.C(ACLK),
        .CE(\reg3[31]_i_1_n_0 ),
        .CLR(ARESETn_0),
        .D(\reg3[9]_i_1_n_0 ),
        .Q(\reg3_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[0]),
        .GE(1'b1),
        .Q(rx_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \rx_data_reg[0]_i_1 
       (.I0(RX_current_state[0]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[1]),
        .O(rx_data__0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[1]),
        .GE(1'b1),
        .Q(rx_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rx_data_reg[1]_i_1 
       (.I0(RX_current_state[0]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[1]),
        .O(rx_data__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[2]),
        .GE(1'b1),
        .Q(rx_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \rx_data_reg[2]_i_1 
       (.I0(RX_current_state[3]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[1]),
        .I3(RX_current_state[0]),
        .O(rx_data__0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[3]),
        .GE(1'b1),
        .Q(rx_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \rx_data_reg[3]_i_1 
       (.I0(RX_current_state[3]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[0]),
        .I3(RX_current_state[1]),
        .O(rx_data__0[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[4]),
        .GE(1'b1),
        .Q(rx_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \rx_data_reg[4]_i_1 
       (.I0(RX_current_state[3]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[1]),
        .I3(RX_current_state[0]),
        .O(rx_data__0[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[5]),
        .GE(1'b1),
        .Q(rx_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \rx_data_reg[5]_i_1 
       (.I0(RX_current_state[2]),
        .I1(RX_current_state[0]),
        .I2(RX_current_state[1]),
        .I3(RX_current_state[3]),
        .O(rx_data__0[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[6]),
        .GE(1'b1),
        .Q(rx_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_data_reg[6]_i_1 
       (.I0(RX_current_state[1]),
        .I1(RX_current_state[0]),
        .I2(RX_current_state[3]),
        .I3(RX_current_state[2]),
        .O(rx_data__0[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.CLR(1'b0),
        .D(rx),
        .G(rx_data__0[7]),
        .GE(1'b1),
        .Q(rx_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \rx_data_reg[7]_i_1 
       (.I0(RX_current_state[3]),
        .I1(RX_current_state[2]),
        .I2(RX_current_state[0]),
        .I3(RX_current_state[1]),
        .O(rx_data__0[7]));
  FDCE rx_delay1_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(rx),
        .Q(rx_delay1));
  FDCE rx_delay2_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(rx_delay1),
        .Q(rx_delay2));
  MUXF7 tx_INST_0
       (.I0(tx_INST_0_i_1_n_0),
        .I1(tx_INST_0_i_2_n_0),
        .O(tx),
        .S(TX_current_state[3]));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    tx_INST_0_i_1
       (.I0(tx_INST_0_i_3_n_0),
        .I1(TX_current_state[2]),
        .I2(p_6_in),
        .I3(\reg0_reg_n_0_[0] ),
        .I4(TX_current_state[1]),
        .I5(TX_current_state[0]),
        .O(tx_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFCE)) 
    tx_INST_0_i_2
       (.I0(p_1_in),
        .I1(TX_current_state[2]),
        .I2(TX_current_state[0]),
        .I3(TX_current_state[1]),
        .I4(p_0_in_0),
        .O(tx_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_3
       (.I0(p_2_in),
        .I1(p_3_in),
        .I2(TX_current_state[1]),
        .I3(p_4_in),
        .I4(TX_current_state[0]),
        .I5(p_5_in),
        .O(tx_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    write_1d_i_1
       (.I0(AWVALID),
        .I1(WVALID),
        .I2(\reg0_reg[31]_1 ),
        .I3(\reg0_reg[31]_0 ),
        .O(slv_reg_wren));
  FDCE write_1d_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(slv_reg_wren),
        .Q(write_1d));
  FDCE write_2d_reg
       (.C(ACLK),
        .CE(1'b1),
        .CLR(ARESETn_0),
        .D(write_1d),
        .Q(write_2d));
endmodule

(* CHECK_LICENSE_TYPE = "system_UART_IP_NCY_0_0,Axi_Slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Axi_Slave,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ACLK,
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
    irq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF interface_aximm, ASSOCIATED_RESET ARESETn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ARESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWVALID" *) input AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWREADY" *) output AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm AWADDR" *) input [31:0]AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WVALID" *) input WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WREADY" *) output WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm WDATA" *) input [31:0]WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BVALID" *) output BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BREADY" *) input BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm BRESP" *) output BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARVALID" *) input ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARREADY" *) output ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm ARADDR" *) input [31:0]ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RVALID" *) output RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RREADY" *) input RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RDATA" *) output [31:0]RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interface_aximm RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_aximm, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output RRESP;
  input rx;
  output tx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;

  wire \<const0> ;
  wire ACLK;
  wire [31:0]ARADDR;
  wire ARESETn;
  wire ARREADY;
  wire ARVALID;
  wire [31:0]AWADDR;
  wire AWREADY;
  wire AWVALID;
  wire BREADY;
  wire BVALID;
  wire [31:0]RDATA;
  wire RVALID;
  wire [31:0]WDATA;
  wire WREADY;
  wire WVALID;
  wire irq;
  wire rx;
  wire tx;
  wire NLW_inst_BRESP_UNCONNECTED;
  wire NLW_inst_RRESP_UNCONNECTED;

  assign BRESP = \<const0> ;
  assign RRESP = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* RD_DONE = "1'b1" *) 
  (* RD_IDLE = "1'b0" *) 
  (* WR_DONE = "1'b1" *) 
  (* WR_IDLE = "1'b0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Axi_Slave inst
       (.ACLK(ACLK),
        .ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ARADDR[3:2],1'b0,1'b0}),
        .ARESETn(ARESETn),
        .ARREADY(ARREADY),
        .ARVALID(ARVALID),
        .AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,AWADDR[3:2],1'b0,1'b0}),
        .AWREADY(AWREADY),
        .AWVALID(AWVALID),
        .BREADY(BREADY),
        .BRESP(NLW_inst_BRESP_UNCONNECTED),
        .BVALID(BVALID),
        .RDATA(RDATA),
        .RREADY(1'b0),
        .RRESP(NLW_inst_RRESP_UNCONNECTED),
        .RVALID(RVALID),
        .WDATA(WDATA),
        .WREADY(WREADY),
        .WVALID(WVALID),
        .irq(irq),
        .rx(rx),
        .tx(tx));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
