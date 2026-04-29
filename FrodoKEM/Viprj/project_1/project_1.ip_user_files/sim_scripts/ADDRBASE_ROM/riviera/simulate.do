transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ADDRBASE_ROM  -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_17 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ADDRBASE_ROM xil_defaultlib.glbl

do {ADDRBASE_ROM.udo}

run 1000ns

endsim

quit -force
