# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\12_Zynq_mini\12_UART_IP_TEST\12_UART_IP_TEST\software\system_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\12_Zynq_mini\12_UART_IP_TEST\12_UART_IP_TEST\software\system_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {system_wrapper}\
-hw {E:\12_Zynq_mini\12_UART_IP_TEST\12_UART_IP_TEST\system_wrapper.xsa}\
-out {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/software}

platform write
domain create -name {standalone_ps7_cortexa9_1} -display-name {standalone_ps7_cortexa9_1} -os {standalone} -proc {ps7_cortexa9_1} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {system_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_1}
platform generate -quick
platform generate
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform active {system_wrapper}
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {E:/12_Zynq_mini/12_UART_IP_TEST/12_UART_IP_TEST/system_wrapper.xsa}
platform generate -domains 
