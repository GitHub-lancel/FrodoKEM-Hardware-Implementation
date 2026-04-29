// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Apr 29 14:59:45 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Work_prj/Frodokem_2026_tx/FrodeKEM/Viprj/project_1/project_1.gen/sources_1/ip/INSTROM/INSTROM_sim_netlist.v
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
