// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon May  4 17:34:52 2026
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
+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
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
