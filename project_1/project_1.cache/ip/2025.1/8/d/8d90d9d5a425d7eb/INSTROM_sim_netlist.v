// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Apr 14 16:34:45 2026
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
NaNLN6sK6SNrXideRFVohgMkYbxSapBfDQ==
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
