transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_17
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_17 riviera/dist_mem_gen_v8_0_17
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../../../../../../Xlinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"D:/Xlinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xlinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -incr -v2k5 "+incdir+../../../../../../../../../Xlinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../../Xlinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l xil_defaultlib \
"../../../../project_1.gen/sources_1/ip/ADDRBASE_ROM/sim/ADDRBASE_ROM.v" \


vlog -work xil_defaultlib \
"glbl.v"

