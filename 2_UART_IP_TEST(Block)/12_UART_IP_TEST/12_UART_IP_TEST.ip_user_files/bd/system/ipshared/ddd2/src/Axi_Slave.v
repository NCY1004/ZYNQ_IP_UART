module Axi_Slave
(   input                         ACLK      ,
    input                         ARESETn   ,
    input                         AWVALID   ,
    output  wire                  AWREADY   ,
    input          [31:0]         AWADDR    ,
    input                         WVALID    ,
    output  wire                  WREADY    ,
    input          [31:0]         WDATA     ,
    output  wire                  BVALID    ,
    input                         BREADY    ,
    output  wire                  BRESP     ,
    input                         ARVALID   ,
    output  wire                  ARREADY   ,
    input          [31:0]         ARADDR    ,
    output  wire                  RVALID    ,
    input                         RREADY    ,
    output  wire    [31:0]        RDATA     ,
    output  wire                  RRESP     ,
    
    input                         rx        ,
    output                        tx        ,
    output  wire                  irq       
    
    );

parameter      WR_IDLE = 1'b0, WR_DONE = 1'b1;
parameter      RD_IDLE = 1'b0, RD_DONE = 1'b1;
reg            WSTATE; 
reg            RSTATE;

reg [31:0] reg0, reg1, reg2, reg3;

reg        S_AWREADY;
reg        S_WREADY;
reg        S_BVALID;

reg        S_ARREADY;
reg [31:0] S_ARADDR;
reg        S_RVALID;



wire S_WR_IDLE = (WSTATE == WR_IDLE) ;
wire S_WR_DONE = (WSTATE == WR_DONE) ;
wire S_RD_IDLE = (RSTATE == RD_IDLE) ;
wire S_RD_DONE = (RSTATE == RD_DONE) ;

wire slv_reg_ren = (ARVALID && ARREADY) ;
wire slv_reg_wren = (AWVALID && AWREADY && WVALID && WREADY);



// Write Valid Signal
assign AWREADY = S_AWREADY   ;
assign WREADY  = S_WREADY    ;
assign BVALID  = (S_WR_DONE) ;                          
assign BRESP   = 2'b00       ;

// Read Valid Signal
assign ARREADY = S_ARREADY   ;
assign RVALID  = (S_RD_DONE) ;                      
assign RRESP   = 2'b00;




////////////// AXI_LITE State_Machine sequence

always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        WSTATE <= 1'b0;
    else
        case (WSTATE)
            WR_IDLE : WSTATE <= (slv_reg_wren)     ? WR_DONE : WR_IDLE ;
            WR_DONE : WSTATE <= (BREADY && BVALID) ? WR_IDLE : WR_DONE ;                         
            default : WSTATE <= WSTATE                                 ;
    endcase
end  


always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        RSTATE <= 1'b0;
    else
        case (RSTATE)
            RD_IDLE : RSTATE <= (slv_reg_ren)  ? RD_DONE : RD_IDLE ;
            RD_DONE : RSTATE <= (RVALID)       ? RD_IDLE : RD_DONE ;                         
            default : RSTATE <= RSTATE                             ;
    endcase
end  



always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        S_AWREADY <= 1'b0;
    else
        if (AWVALID && WVALID && !S_AWREADY)
            S_AWREADY <= 1'b1;
        else
            S_AWREADY <= 1'b0;
end


always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        S_WREADY  <= 1'b0;
    else
        if (AWVALID && WVALID && !S_WREADY)
            S_WREADY  <= 1'b1;
        else
            S_WREADY <= 1'b0;
end


///////// Write Reg
/*

always @ (posedge  ACLK, negedge ARESETn) begin
     if (!ARESETn) begin
        reg0 <=1'b0 ;
        reg1 <=1'b0 ;
        reg2 <=1'b0 ;
        reg3 <=1'b0 ;
     end
     else begin
        if (slv_reg_wren) begin
            case (AWADDR[3:0] / 4)
                4'h0x0  : reg0 <= WDATA ;
                4'h0x4  : reg1 <= WDATA ;
                4'h0x8  : reg2 <= WDATA ;
                4'h0xC  : reg3 <= WDATA ;
                default : begin
                          reg0 <= reg0  ;
                          reg1 <= reg1  ;
                          reg2 <= reg2  ;
                          reg3 <= reg3  ;
                          end
        endcase
        end
     end
end
*/
/////////////// AXI-LITE READ SEQUENCE




always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        S_ARREADY <= 1'b0;
    else
        if (ARVALID && !S_ARREADY)
            S_ARREADY <= 1'b1;
        else
            S_ARREADY <= 1'b0;
end



//////// Read Reg
/*
always @ * begin
    case (ARADDR [3:0] / 4)
        4'h0x0  : RDATA = reg0 ;
        4'h0x4  : RDATA = reg1 ;
        4'h0x8  : RDATA = reg2 ;
        4'h0xC  : RDATA = reg3 ;
        default : RDATA = 1'b0 ;
    endcase
end

always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        READ_DATA <=1'b0;
    else
        if(slv_reg_ren)
             S_READ_DATA <= READ_DATA;
end
*/


///UART_TX Instance
UART U0_UART (
.S_AXI_ACLK     (ACLK)          ,             
.S_AXI_ARESETN  (ARESETn)       ,                                         
.S_AXI_WADDR    (AWADDR)        ,   
.Write_en       (slv_reg_wren)  ,
.S_AXI_WDATA    (WDATA)         ,            
.S_AXI_RADDR    (ARADDR)        ,
.Read_En        (slv_reg_ren)   ,           
.S_AXI_RDATA    (RDATA)         ,   

.rx             (rx)            ,
.irq            (irq)           ,                       
.tx             (tx)            
);

endmodule


