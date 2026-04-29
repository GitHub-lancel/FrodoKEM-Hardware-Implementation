// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Apr 29 15:00:23 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [5:0]a;
  output [15:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [15:1]\^spo ;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [0:0]NLW_U0_spo_UNCONNECTED;

  assign spo[15:1] = \^spo [15:1];
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
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
        .spo({\^spo ,NLW_U0_spo_UNCONNECTED[0]}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6608)
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
