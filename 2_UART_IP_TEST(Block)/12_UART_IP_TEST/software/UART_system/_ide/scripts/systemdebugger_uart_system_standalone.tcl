# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\12_Zynq_mini\12_UART_IP_TEST\12_UART_IP_TEST\software\UART_system\_ide\scripts\systemdebugger_uart_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\12_Zynq_mini\12_UART_IP_TEST\12_UART_IP_TEST\software\UART_system\_ide\scripts\systemdebugger_uart_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT2-210251A08870-23727093-0"}
fpga -file E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/software/UART/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/software/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/software/UART/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#1"}
dow E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/software/UART/Debug/UART.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#1"}
con
