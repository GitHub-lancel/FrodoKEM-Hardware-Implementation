// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon May  4 17:35:20 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ INSTROM_sim_netlist.v
// Design      : INSTROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "INSTROM,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27328)
`pragma protect data_block
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
K7wV7ErtKkMSuq8Ia4iD17vWW64iu0nAzA==
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
