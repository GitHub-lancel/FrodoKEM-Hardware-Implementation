// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Apr 29 15:00:23 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ADDRBASE_ROM -prefix
//               ADDRBASE_ROM_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ADDRBASE_ROM
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
  ADDRBASE_ROM_dist_mem_gen_v8_0_17 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6464)
`pragma protect data_block
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
6JciZ5OrvzIn+0jyw9TUDDKjsJgm3Is=
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
