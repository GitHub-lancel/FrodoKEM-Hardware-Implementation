// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Apr 29 14:59:44 2026
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
NIsq+2/nIbegkuS82Ywy3mrf2vt24Qlgvw==
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
