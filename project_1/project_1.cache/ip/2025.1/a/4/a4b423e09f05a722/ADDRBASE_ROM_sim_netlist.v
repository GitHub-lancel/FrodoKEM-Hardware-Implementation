// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Apr 14 16:34:15 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADDRBASE_ROM_sim_netlist.v
// Design      : ADDRBASE_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADDRBASE_ROM,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [5:0]a;
  output [15:0]spo;

  wire [5:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ADDRBASE_ROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_17 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FdZ29m26W1vj+Cs/DLJCoTOUz/m7+OJG3sHOgt5s8NEPQ5FHtOFz4fRgqTgyrNzvNq21lk0VjpX9
UMVEbSXbJrC40crYnx5XneHRwr6z9uk6MXgKoH1FHcznnKhevagwuCchTCpQ6oqoMbhzWd2QHx/v
Pkor8V47KvEBnEHja7Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DgywwNcpeS8jND8bxEa71yZJ3FJdVEzcLynb64dnb2TzUo3pKSGFBfaFrgTZF3YNHGzuUJ2QQktc
gOS5J0CcVw+n+aerigILzjTclkLc9eUIulkdUapbmj6Staw/UyV8tYP4SZZ8/c285RLhOXD7yU47
aByWm7LmxxWjooRAz26ybpmdt7lpHBQaNTc1Ljp9oCyvtSqxXf5Fzr6NwE9wCWHGozsMntKGlBWq
/Ld4jJ9UVtrIM3FKdUF21rHccua0AApkyY92z4umdT7kj4mZxPKTdC7zYiKWRUq2hGAlbh1z47nC
oAaSpPvOVZY7BQppznHPyLPhJ+OgKj6/rfTVMA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TpTqgO7LVAmk2RI9B8mgZrp5H21SnS0bmTRlpg9WONkWIeKkOMiqYzKXNi+GTasTvmpRPk/h3m9P
wkWG5aX3dHNZUb1oSMhjGbyAcJpO+SX7mcsmzpt+efdEtPDukAHegpQfvEWKkx2SrrkkgD0X++Oj
CaqCq5FvcRl9RjvTxK4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sckknZF7xLyHpnPIcxIFLiAYqXW1FY2CS9FWi2Hqz5vcUlh7by0h8yYiwSXxIUNrBJPATd3AyESC
487cvtya2VioL8riKucCJWyqQBG7eDyT0O7JtdZYcpo9uNh6dkN86IV7J1BLYVlk/Z2uc+LRdLiA
I2w8Z4wc+UHp3wx4497iJfYpHaKSPNO+8A8WV/JJ1mzSLBI14cO9CDFly9KlHktwr4HKutMId1R2
VPSy/znW8qx9XUnd0EN31c/9LJnfU1yhBPG9Wx8Hd96IBwI9D/WgN7ZQyH8bSZCcHX+SYoIGPwXn
K5ZKQy1K7ELwUBUUPbGlR+ir3yvvGjob1CTeMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T6BTO2RUQcpX9TpJR2JO50hT+cXyiDyIjrO2Ps17SKTmMhVBfSGD2AUMwzKJINBU1/wI4nqsnk0R
B5YRLWXrZfCSjSapre9CmGTRvLCDEK4mm3l4Jo9Ij9iBFg2OvLFfyBLP/fZtLtzCPHtMlTmKn7C3
9Ert7v3yDGnFF+1Msw/UpTjpdSZ4dNE8UGUe5ymCwpDVeCcYuoCTBe5o7BDlcM6cbXMfHvxQkBDH
BQkO5txX5aV2qeKOYfWQucZe9q7aoq4zcNG3roo8G4OrO31xnxdwAQU8tvOCztoGHXLSPEwLy86h
lybMIS19uovvmz2FF0BKAfQmf2zT2kdhs/0E/g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFdGo2cl1WGkQBqlM3e3YM1+NstrsuheqspzsHjhiEdsfZE7cNV3QtgmcPm0sQ6Ur85Vr+VLP+qi
kfkSBZv/cp96m2VbdU3wKRoyTYzTU2jPpW7sGFFNzWS9+RUl8sTVLht5d4t2CNOGni/aTPg72L/m
EMDSFNr5zmZHrz9ZfvCDtOuBIV7kMLfZPmDdxV5IwsKMxabGnoXOJGz+hfjGo4fS3o0ORBwIVK+l
mvU1GZj8rJVgjjtXmyh6mIw/6PchaANzWFqpNusTs0IG2f3q7OE0VBOM5Am+iaDdeW6TlD3NJO83
Fu/vCJwu/i0r7tthiRGj94Azl8RnEN2KK7tBlA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g77N+3QvAPAYw+4OcZm63AqmcCkwUoxBBbPDHeq2Nfprvo7Bj7LixjYXj3xyrnR8haey/83rTRib
U8uD29Fgb15vpUc0WthyXJ59GM2fKf1KCeTQtG6TwZDLuOLNJNaeGFe+JU6iYvvLnOQZ3aPsmfcT
4GCJv1sKrMCf5d2VkK5yqBhV9Xik8ugmxG6gW1xkr0ULwrG4CYrZAEPhwUoiL+6RLajwaMyW0fhu
TihpJjKW17O8yAizfvC4zdrTR7abBHMBRX51n0fYXfSNTJZH84wlEZ/uaRGrT3tziopYXWPsmWSq
JJ5Q30ZViY8s/kqmcILk7jzkE5iBk7FfRk2AHw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
KCCTN2ufL/SeejpVpXJmjN/FwrAflQw79fl4pWJPTrncXR+h72Z53BIfG+PPQuyFWo2dT+31hFh2
sUjBKcBwHP9yjxsmRjhWVA4YtsuTiFCa3GwHalwHMC9EJN8EOmcee6T0DD8eKj13S7DJ+LDuhg0a
CAhAdS+Z3c57AAFhfKZ64/xN+dwK+7T+oXbmBDtxKw+D7VXMZLVjJ7ozXveIocAFo9MLpyq0mXPL
m47fmY77h7JdJ8BnZ0qXpublK3I9ahjB6+iTR7hAu417IqmFRnmc0ICovANVgmMBsOU54gzqFRS1
4jIQ7pPGSuMMJ5F+bWiKn1kahxg2JXS+3rf9r5Jyc2Ht4bO62YYec93HOrFxzErn9LzUFSvXe8JC
M/OAkWw+gqiiLbQsh+1Hfn4j9JSiL/n8yCkGXAr8x/vdfzkIBv4QpsSo5rGTuXS2x27KOAsuV7X7
maV86bXDbpBaMN1hZLtFkWNpTJE03j5Hq7cTDh+EySOe2NSwB0potFkw

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DB5hKjvS9FmG+/wPMbBeHe5M88req0CpR1ooQpQHlIx5dQoUMI8l84F0JQ8hAkUaWLkU1VXXMNmW
eRJoUf6rnT4CbNo5SFwNWSXohTyDSupMazp2OYDlVlTgfUyyJ+lVIViRHiC3vIbi1J7fLoZ1Bt9F
cr98l0aF9q+NPMPI9Xs8X4XYYXL9FyHNyb3bAoEI1OPmH5ywFB+fJ73hp3aEXHx9pcl2RKryf1m/
Q98GVV/ZXzQmgGNEdveABCSK3XNXC0Ro6IHFjACUVo3VTsjMMx1k2n+MWq7Zbp5l8ZcvX+F+NHY6
q/Cm8B96kJQ4bGZ0qnzIYoKDGY7YEGWVJFoWQg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5872)
`pragma protect data_block
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
qw==
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
