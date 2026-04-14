##========================================================
## Frodo_top 顶层约束
##========================================================

##------------------------
## 50 MHz 系统时钟
##------------------------
set_property PACKAGE_PIN W19 [get_ports clk_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]


##------------------------
## 复位按钮
##------------------------
set_property PACKAGE_PIN N15 [get_ports rstn]
set_property IOSTANDARD LVCMOS33 [get_ports rstn]

##------------------------
## 用户按键输入
##------------------------
set_property PACKAGE_PIN V17 [get_ports buttle]
set_property IOSTANDARD LVCMOS33 [get_ports buttle]

set_property PACKAGE_PIN W17 [get_ports swtich]
set_property IOSTANDARD LVCMOS33 [get_ports swtich]



##------------------------
## 状态输出 LED
##------------------------
set_property PACKAGE_PIN M21 [get_ports valid]
set_property IOSTANDARD LVCMOS33 [get_ports valid]

