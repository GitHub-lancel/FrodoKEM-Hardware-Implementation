// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Apr 29 15:00:24 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Work_prj/Frodokem_2026_tx/FrodeKEM/Viprj/project_1/project_1.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
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
  dist_mem_gen_0_dist_mem_gen_v8_0_17 U0
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
