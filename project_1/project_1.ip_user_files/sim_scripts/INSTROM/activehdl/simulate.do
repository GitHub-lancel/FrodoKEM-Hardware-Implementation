transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+INSTROM  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_11 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.INSTROM xil_defaultlib.glbl

do {INSTROM.udo}

run 1000ns

endsim

quit -force
