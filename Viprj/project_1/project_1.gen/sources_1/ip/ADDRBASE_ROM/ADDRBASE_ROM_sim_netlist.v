// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon May  4 17:34:52 2026
// Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Frodokem_2026_tx/FrodoKEM/Viprj/project_1/project_1.gen/sources_1/ip/ADDRBASE_ROM/ADDRBASE_ROM_sim_netlist.v
// Design      : ADDRBASE_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADDRBASE_ROM,dist_mem_gen_v8_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_17,Vivado 2025.1" *) 
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
  (* c_mem_init_file = "ADDRBASE_ROM.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6592)
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
