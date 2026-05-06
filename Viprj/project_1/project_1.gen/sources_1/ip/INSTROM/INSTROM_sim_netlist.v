// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon May  4 17:35:20 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Frodokem_2026_tx/FrodoKEM/Viprj/project_1/project_1.gen/sources_1/ip/INSTROM/INSTROM_sim_netlist.v
// Design      : INSTROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "INSTROM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module INSTROM
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [35:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [35:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [35:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [35:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6924 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "INSTROM.mem" *) 
  (* C_INIT_FILE_NAME = "INSTROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "36" *) 
  (* C_READ_WIDTH_B = "36" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "36" *) 
  (* C_WRITE_WIDTH_B = "36" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  INSTROM_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[35:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[35:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27232)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
