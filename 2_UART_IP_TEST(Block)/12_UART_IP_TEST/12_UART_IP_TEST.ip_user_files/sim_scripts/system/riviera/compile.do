vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/processing_system7_vip_v1_0_14
vlib riviera/gigantic_mux
vlib riviera/xlconcat_v2_1_4
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/axi_protocol_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 riviera/processing_system7_vip_v1_0_14
vmap gigantic_mux riviera/gigantic_mux
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_1/sim/system_processing_system7_0_1.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/sim/bd_1579.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_0/sim/bd_1579_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_1/bd_1579_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_1/sim/bd_1579_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_2/sim/bd_1579_slot_0_aw_0.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_3/sim/bd_1579_slot_0_w_0.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_4/sim/bd_1579_slot_0_b_0.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_5/sim/bd_1579_slot_0_ar_0.v" \
"../../../bd/system/ip/system_system_ila_0_1/bd_0/ip/ip_6/sim/bd_1579_slot_0_r_0.v" \
"../../../bd/system/ip/system_system_ila_0_1/sim/system_system_ila_0_1.v" \
"../../../bd/system/ipshared/ddd2/src/UART.v" \
"../../../bd/system/ipshared/ddd2/src/Axi_Slave.v" \
"../../../bd/system/ip/system_UART_IP_NCY_0_0/sim/system_UART_IP_NCY_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../12_UART_IP_TEST.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

