//// Baud_Rate 115200

module UART(
	input 					   S_AXI_ACLK    ,
	input 					   S_AXI_ARESETN ,
	
	input	       [31:0]	   S_AXI_WADDR   ,
	input                      Write_en      ,
	input          [31:0]      S_AXI_WDATA   ,
	
	input          [31:0]      S_AXI_RADDR   ,
    input					   Read_En       , 
	output reg    [31:0] 	   S_AXI_RDATA   ,
	
	input				       rx		     ,
	output  reg                tx            ,
	output                     irq
);
//// UART_TX STATE_MACHINE PARAMETER
parameter TX_idle =0, TX_start=1, TX_d0=2, TX_d1=3, TX_d2=4, TX_d3=5, TX_d4=6, TX_d5=7, TX_d6=8, TX_d7=9, TX_stop=10 ;
reg [3:0] 	TX_current_state                                ;
reg [3:0] 	TX_next_state                                   ;
wire        TX_s_stop = (TX_current_state == TX_stop)       ;
wire        TX_s_idle = (TX_current_state == TX_idle)       ;

//// UART_RX STATE_MACHINE PARAMETER
parameter RX_idle =0, RX_start=1, RX_D0=2, RX_D1=3, RX_D2=4, RX_D3=5, RX_D4=6, RX_D5=7, RX_D6=8, RX_D7=9, RX_stop=10;
reg [3:0] 	RX_current_state                             ;
reg [3:0] 	RX_next_state                                ;
wire 		RX_s_stop = (RX_current_state == RX_stop)    ;
wire 		RX_s_idle = (RX_current_state == RX_idle)    ;

//// RX_DATA
reg	[7:0]   rx_data                                      ;


//// 4Register 
reg [31:0]  reg0, reg1,  reg2, reg3  ;


//////////Register data////////////////
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN) begin
		reg0 <= 1'b0  ;       //TX_DATA
		reg1 <= 1'b0  ;       //RX_DATA
	    reg2 <= 1'b0  ;       //TX_Done_flag
		reg3 <= 1'b0  ;       //RX_Interrupt
	end
    else
	   if (Write_en) begin
		  case (S_AXI_WADDR  [3:0] / 4)
		  	   2'd0: reg0 <= S_AXI_WDATA ;		
		  	   2'd1: reg1 <= S_AXI_WDATA ;
		  	   2'd2: reg2 <= S_AXI_WDATA ;
		  	   2'd3: reg3 <= S_AXI_WDATA ;
		  endcase
	end
	   else if (Read_En) begin
	   	   case (S_AXI_RADDR [3:0] / 4)
	   		  2'd0 : S_AXI_RDATA  <= reg0  ;
	   		  2'd1 : S_AXI_RDATA  <= reg1  ;
              2'd2 : S_AXI_RDATA  <= reg2  ;
	   		  2'd3 : S_AXI_RDATA  <= reg3  ;
	       	endcase
	   end
	   
	   else if (RX_s_stop)
            reg1 <= rx_data ;  //RX_DATA
	   else if (TX_s_stop)
            reg2 <= 1'b1    ;  //tx_done flag
            
	   else begin
		  reg0 <= reg0    ;
		  reg1 <= reg1    ;
		  reg2 <= reg2    ;
		  reg3 <= reg3    ;
	end
		
end


              /* UART_TX */
////////////////////     TX_DATA write_Enable_edge_detect
reg write_1d, write_2d;
wire write_nedge_detect= ~write_1d & write_2d;
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN) begin
		write_1d <=0  ;
		write_2d <=0  ;
	end
	else begin
		write_1d <= Write_en  ;
		write_2d <= write_1d  ;
	end
end


//////////////////////////////////// TX_STATE_MACHINE_Coutner
reg [8:0] TX_cnt   ;
wire TX_cnt_clr = (TX_cnt == 434) ;
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN)
		TX_cnt <= 0   ;
		else
	       if (TX_cnt_clr)
		      TX_cnt <= 0           ;
	       else if (write_nedge_detect)
		      TX_cnt <= 0           ;
	       else 
		      TX_cnt <= TX_cnt + 1  ;
end

//////////////////////////////////// TX_STATE_MACHINE_Flow
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN)
		TX_current_state <= TX_idle ;
		else
	       if (TX_cnt_clr)
		      TX_current_state <= TX_next_state ;
	       else if (write_nedge_detect && TX_s_idle && (reg2 == 1'b0))
		      TX_current_state <= TX_start  ;
           else
		      TX_current_state <= TX_current_state  ;
end


always @ (*) begin
		case (TX_current_state)
			//idle 		: next_state = start;
			TX_start 	: TX_next_state = TX_d0    ;
			TX_d0 		: TX_next_state = TX_d1    ;
			TX_d1 		: TX_next_state = TX_d2    ;
			TX_d2 		: TX_next_state = TX_d3    ;
			TX_d3 		: TX_next_state = TX_d4    ;
			TX_d4 		: TX_next_state = TX_d5    ;
			TX_d5 		: TX_next_state = TX_d6    ;
			TX_d6 		: TX_next_state = TX_d7    ;
			TX_d7		: TX_next_state = TX_stop  ;
			TX_stop	    : TX_next_state = TX_idle  ;
			default     : TX_next_state = TX_idle  ;
		endcase
end

///////////////////////////////////tx_data transmit
always @ (*) begin
		case (TX_current_state)
			TX_idle 	: tx = 1'b1    ;
			TX_start 	: tx = 1'b0    ;
			TX_d0 		: tx = reg0[0] ;
			TX_d1 		: tx = reg0[1] ;
			TX_d2 		: tx = reg0[2] ;
			TX_d3 		: tx = reg0[3] ;
			TX_d4 		: tx = reg0[4] ;
			TX_d5 		: tx = reg0[5] ;
			TX_d6 		: tx = reg0[6] ;
			TX_d7	    : tx = reg0[7] ;
			TX_stop	    : tx = 1'b1    ;		
			default     : tx = 1'b1    ;
		endcase
end

              /* UART_RX */
///////////////////// RX_STATE_MACHINE_Coutner
reg	[9:0]	cnt_rx                      ;
wire 		cnt_rx_clr = (cnt_rx == 434);
always @ (posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin		
	if (!S_AXI_ARESETN)
		cnt_rx <= 1'b0;
	else 
	   if (cnt_rx_clr)
	       cnt_rx <= 1'b0;
	   else if (rx_negedge && RX_s_idle)
		   cnt_rx <= 1'b0;
	   else
		   cnt_rx <= cnt_rx + 1;
end			

/////////////////////RX_Negedge_Detect
reg             rx_delay1, rx_delay2                     ; 
wire            rx_negedge = (~rx_delay1 & rx_delay2)    ;
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN) begin
		rx_delay1 <= 1'b0;
		rx_delay2 <= 1'b0;
		end
	else begin
		rx_delay1 <= rx;
		rx_delay2 <= rx_delay1;
		end
end

///////////////////// RX_STATE_MACHINE_Flow
always @ (posedge S_AXI_ACLK, negedge S_AXI_ARESETN) begin
	if (!S_AXI_ARESETN)
		RX_current_state <= RX_idle               ;
	else
	   if (rx_negedge && RX_s_idle)
		  RX_current_state <= RX_start            ;
	   else if (cnt_rx_clr)
		  RX_current_state <= RX_next_state       ;
	   else
		  RX_current_state <= RX_current_state    ;
end

always @ (*) begin
		case (RX_current_state)
		    RX_idle     :	RX_next_state = RX_idle          ;
			RX_start    :	RX_next_state = RX_D0            ;	
			RX_D0		:	RX_next_state = RX_D1            ;	
			RX_D1		:	RX_next_state = RX_D2            ;				
			RX_D2		:	RX_next_state = RX_D3            ;	
			RX_D3		:	RX_next_state = RX_D4            ;	
			RX_D4		:	RX_next_state = RX_D5            ;				
			RX_D5		:	RX_next_state = RX_D6            ;	
			RX_D6		:	RX_next_state = RX_D7            ;	
			RX_D7		:	RX_next_state = RX_stop          ;
			RX_stop     :   RX_next_state = RX_idle          ;
			default     :   RX_next_state = RX_next_state    ;
	endcase
end 

/////////////// receive rx_data ///////////////

always @ (*) begin
		case (RX_current_state)
		    RX_D0	:  rx_data[0] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[0] ;
			RX_D1	:  rx_data[1] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[1] ;
			RX_D2	:  rx_data[2] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[2] ;
			RX_D3	:  rx_data[3] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[3] ;
			RX_D4	:  rx_data[4] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[4] ;
			RX_D5	:  rx_data[5] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[5] ;
			RX_D6	:  rx_data[6] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[6] ;
			RX_D7	:  rx_data[7] = (cnt_rx>=200 && cnt_rx<=400) ? rx : rx_data[7] ;
			default :  rx_data = rx_data;
		endcase
end
/*
always @ (*) begin
		case (RX_current_state)
		    RX_D0	:  rx_data[0] = rx;
			RX_D1	:  rx_data[1] = rx;
			RX_D2	:  rx_data[2] = rx;
			RX_D3	:  rx_data[3] = rx;
			RX_D4	:  rx_data[4] = rx;
			RX_D5	:  rx_data[5] = rx;
			RX_D6	:  rx_data[6] = rx;
			RX_D7	:  rx_data[7] = rx;
			default :  rx_data = rx_data;
		endcase
end
*/
//////////////// interrupt_Execute
assign irq = ((reg3==1'b1) && (RX_s_stop) && (cnt_rx>=200 && cnt_rx<=400));

endmodule
