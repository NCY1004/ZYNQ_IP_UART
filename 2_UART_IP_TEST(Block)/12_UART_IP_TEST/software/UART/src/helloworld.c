/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"


#define INTC_DEVICE_ID XPAR_SCUGIC_SINGLE_DEVICE_ID



unsigned char rxdata;
static XScuGic intc;
static XScuGic_Config *intc_cfg_ptr;
volatile unsigned int iCount = 0;
volatile unsigned int tx_done = 0;
void receive_rxdata(void)
{
	rxdata = Xil_In32 (XPAR_UART_IP_NCY_0_BASEADDR + 4);
	for(iCount=0;1000000 >= iCount; iCount++);
    Xil_Out32 (XPAR_UART_IP_NCY_0_BASEADDR + 8, 0x00);
}

void interrupt_init()
{
	 Xil_Out32 (XPAR_UART_IP_NCY_0_BASEADDR + 12,     0x01);
	 intc_cfg_ptr = XScuGic_LookupConfig(INTC_DEVICE_ID);


	 XScuGic_CfgInitialize(&intc, intc_cfg_ptr, intc_cfg_ptr->CpuBaseAddress);
	 XScuGic_Connect	(&intc, XPAR_FABRIC_UART_IP_NCY_0_IRQ_INTR, (XInterruptHandler)receive_rxdata, NULL);
	 XScuGic_Enable(&intc, XPAR_FABRIC_UART_IP_NCY_0_IRQ_INTR);

	 Xil_ExceptionInit();
	 Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &intc);
	 Xil_ExceptionEnable();
}

int main()
{
	int status;
    xil_printf("Hello World\n\r");
    xil_printf("Successfully ran Hello World application\n\r");
    volatile unsigned int iCount = 0;
    interrupt_init();


    while (1){
    	tx_done = Xil_In32 (XPAR_UART_IP_NCY_0_BASEADDR + 8);
    	if(tx_done == 0) {
    		Xil_Out32 (XPAR_UART_IP_NCY_0_BASEADDR, rxdata);
    		for(iCount=0;1000000 >= iCount; iCount++);
    		xil_printf("%c",rxdata);
    	}

    }
    return 0;
}
