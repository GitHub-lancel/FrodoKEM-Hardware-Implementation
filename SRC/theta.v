module theta(
	input	[1599:0]	in,
	output	[1599:0]	out
	);

	wire	[319:0]	sum;

	assign	sum	= in[1599:1280] ^ in[1279:960] ^ in[959:640] ^ in[639:320] ^ in[319:0];

	assign	out[63:0]	= in[63:0] 	  ^ sum[319:256] ^ {sum[126:64],sum[127]};
	assign	out[127:64]	= in[127:64]  ^ sum[63:0] 	 ^ {sum[190:128],sum[191]};
	assign	out[191:128]= in[191:128] ^ sum[127:64]  ^ {sum[254:192],sum[255]};
	assign	out[255:192]= in[255:192] ^ sum[191:128] ^ {sum[318:256],sum[319]};
	assign	out[319:256]= in[319:256] ^ sum[255:192] ^ {sum[62:0],sum[63]};

	assign	out[383:320]= in[383:320] ^ sum[319:256] ^ {sum[126:64],sum[127]};
	assign	out[447:384]= in[447:384] ^ sum[63:0] 	 ^ {sum[190:128],sum[191]};
	assign	out[511:448]= in[511:448] ^ sum[127:64]  ^ {sum[254:192],sum[255]};
	assign	out[575:512]= in[575:512] ^ sum[191:128] ^ {sum[318:256],sum[319]};
	assign	out[639:576]= in[639:576] ^ sum[255:192] ^ {sum[62:0],sum[63]};

	assign	out[703:640]= in[703:640] ^ sum[319:256] ^ {sum[126:64],sum[127]};
	assign	out[767:704]= in[767:704] ^ sum[63:0] 	 ^ {sum[190:128],sum[191]};
	assign	out[831:768]= in[831:768] ^ sum[127:64]  ^ {sum[254:192],sum[255]};
	assign	out[895:832]= in[895:832] ^ sum[191:128] ^ {sum[318:256],sum[319]};
	assign	out[959:896]= in[959:896] ^ sum[255:192] ^ {sum[62:0],sum[63]};

	assign	out[1023:960] = in[1023:960]  ^ sum[319:256] ^ {sum[126:64],sum[127]};
	assign	out[1087:1024]= in[1087:1024] ^ sum[63:0]	 ^ {sum[190:128],sum[191]};
	assign	out[1151:1088]= in[1151:1088] ^ sum[127:64]  ^ {sum[254:192],sum[255]};
	assign	out[1215:1152]= in[1215:1152] ^ sum[191:128] ^ {sum[318:256],sum[319]};
	assign	out[1279:1216]= in[1279:1216] ^ sum[255:192] ^ {sum[62:0],sum[63]};

	assign	out[1343:1280]= in[1343:1280] ^ sum[319:256] ^ {sum[126:64],sum[127]};
	assign	out[1407:1344]= in[1407:1344] ^ sum[63:0] 	 ^ {sum[190:128],sum[191]};
	assign	out[1471:1408]= in[1471:1408] ^ sum[127:64]  ^ {sum[254:192],sum[255]};
	assign	out[1535:1472]= in[1535:1472] ^ sum[191:128] ^ {sum[318:256],sum[319]};
	assign	out[1599:1536]= in[1599:1536] ^ sum[255:192] ^ {sum[62:0],sum[63]};

endmodule