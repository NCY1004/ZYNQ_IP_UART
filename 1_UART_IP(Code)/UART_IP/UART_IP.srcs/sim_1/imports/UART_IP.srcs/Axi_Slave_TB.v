`timescale 1ns / 1ps
`define    Write
`define    Read

module Axi_Slave_TB();
    reg                         ACLK      ;
    reg                         ARESETn   ;
    reg                         AWVALID   ;
    wire                        AWREADY   ;
    reg          [31:0]         AWADDR    ;
    reg                         WVALID    ;
    wire                        WREADY    ;
    reg          [31:0]         WDATA     ;
    wire                        BVALID    ;
    reg                         BREADY    ;
    wire                        BRESP     ;
    reg                         ARVALID   ;
    wire                        ARREADY   ;
    reg          [31:0]         ARADDR    ;
    wire                        RVALID    ;
    reg                         RREADY    ;
    wire         [31:0]         RDATA     ;
    wire                        RRESP     ;
    
    reg                         rx        ;
    wire                        tx        ;
    wire                        irq       ;

Axi_Slave U0_Axi_Slave (
    .ACLK     (ACLK)         ,
    .ARESETn  (ARESETn)      ,
    .AWVALID  (AWVALID)      ,
    .AWREADY  (AWREADY)      ,
    .AWADDR   (AWADDR)       ,  
    .WVALID   (WVALID)       ,
    .WREADY   (WREADY)       ,
    .WDATA    (WDATA)        ,
    .BVALID   (BVALID)       ,
    .BREADY   (BREADY)       ,
    .BRESP    (BRESP)        ,
    .ARVALID  (ARVALID)      ,
    .ARREADY  (ARREADY)      ,
    .ARADDR   (ARADDR)       ,
    .RVALID   (RVALID)       ,
    .RREADY   (RREADY)       ,
    .RDATA    (RDATA)        ,
    .RRESP    (RRESP)        ,
    
    .rx       (rx)           ,
    .tx       (tx)           ,
    .irq      (irq)          
   
);


reg [31:0] cnt;

initial begin
ACLK    = 1'b0;
ARESETn = 1'b0;
AWVALID = 1'b0;
WVALID  = 1'b0;
RREADY  = 1'b0;
# 20 ARESETn = 1; RREADY = 1; BREADY=1; rx = 1'b0;


/*
# 8720 rx = 1'b1;
# 8720 rx = 1'b0;
# 8720 rx = 1'b0;
# 8720 rx = 1'b0;
# 8720 rx = 1'b0;
# 8720 rx = 1'b0;
# 8720 rx = 1'b1;
# 8720 rx = 1'b0;
# 8720 rx = 1'b1;
*/

end


always @ (posedge ACLK, negedge ARESETn) begin
    if (!ARESETn)
        cnt <= 1'b0;
    else
        cnt <= cnt + 1;
end

 //IRQ Write
 /*
`ifdef Write
    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn) begin
            AWVALID <= 1'b0;
            WVALID <= 1'b0;
            BREADY  <= 1'b0;
        end            
        else begin
            AWVALID <= ((cnt == 10) || (cnt == 11)) ? 1'b1 : 1'b0 ;
                     
            WVALID  <= ((cnt == 9)  || (cnt == 10) || (cnt == 11))? 1'b1 : 1'b0 ;
                     
            BREADY  <= 1'b1;        
        end
    end
 
    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn)
            AWADDR <= 1'bx;
        else begin
            if (cnt == 10) begin
                AWADDR <= 4'h0x0C         ;
                WDATA  <= 32'h0x00000000 ;
            end
            else
                AWADDR <= AWADDR;
        end
    end
`endif
*/

//Address 0x00 Write

`ifdef Write
    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn) begin
            AWVALID <= 1'b0;
            WVALID <= 1'b0;
            BREADY  <= 1'b0;
        end            
        else begin
            AWVALID <= ((cnt == 10) || (cnt == 11)) ? 1'b1 : 1'b0 ;
                     
            WVALID  <= ((cnt == 9)  || (cnt == 10) || (cnt == 11))? 1'b1 : 1'b0 ;
                     
            BREADY  <= 1'b1;        
        end
    end
 
    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn)
            AWADDR <= 1'bx;
        else begin
            if (cnt == 10) begin
                AWADDR <= 4'h0x0         ;
                WDATA  <= 32'h0x00000041 ;
            end
            else
                AWADDR <= AWADDR;
        end
    end
`endif


`ifdef Read
    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn) begin
            ARVALID <= 1'b0 ;
            RREADY  <= 1'b0 ;
        end
        else begin
            ARVALID <= ((cnt == 5000) || (cnt == 5001)) ? 1'b1 : 1'b0 ;
         
        end
    end

    always @ (posedge ACLK, negedge ARESETn) begin
        if (!ARESETn)
            ARADDR <= 1'bx;
        else begin
            if (cnt == 5000)
                ARADDR <= 4'h0x0;              
            else
                ARADDR <= ARADDR;
        end
    end

`endif

always
    #10 ACLK = ~ACLK; 

endmodule
