`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 16:22:41
// Design Name: 
// Module Name: SHAKE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//pad使用,64整数就是0，8是7，16就是6
//pad似乎只在index时有用
//index必须在第一拍上


`timescale 1ns / 1ps
// Yes;
module SHAKE(
	input clk,
	input rstn,
	
	input model_sel,	// SHAKE 128 or 256;
	
	// msg;
	input [63:0] msg,	
	input msg_val,
	input lastmsg_val,
	
	// indexa;
	input [7:0] indexa,
	input indexa_val,
	
	// indexb;
	input [7:0] indexb,
	input indexb_val,
	
	// padflag;
	input [2:0] padflag,
	
	// cnt;
	input [8:0]	sqzcnt,
	
	// onehash_val,
	output onehash_val,	// one hash is over;
	
	// sqzout64;
	input sqzout64_en,
	output [63:0] sqzout64,
	output sqzout64_val,
	
	// sqzout448;
	input sqzout448_en,
	output [447:0] sqzout448,
	output sqzout448_val,

	output	[8:0] sqz_cnt_o,
	
	input	burst,

	// done;
	output    done
    );
	

	wire	out_val_ar;

	//// Intermediate;
	// FSM;
	reg	[2:0] CS;
	reg [2:0] NS;
	
	localparam PROCESS = 0;
	localparam PADDING = 1;
	localparam ABSORB  = 2;
	localparam SQUEEZ  = 3;
	localparam CLEAR   = 4;
	
	// Control Signal;
	reg [8:0] sqzcurcnt;
	reg firstmsg_val;
	
	wire [63:0] msgn;
	wire msgn_val;
	wire lastmsgn_val;
	
	reg [1343:0] S;
	reg [7:0]S_len;
	reg S_shift_en;
	
	reg [7:0] zerotoadd;
	reg [7:0] padding_cnt;
	
	wire [1343:0] keccakIn;
	reg keccakIn_val;
	
	wire [1343:0] keccakOut;
	wire keccakOut_val;
	
	// helper wires;
	wire [7:0]  rate_bytes;
	wire [7:0]  next_S_len_process;
	wire [1343:0] next_S_process;
	wire [1343:0] next_S_padding;
	
	// CS;
	always @(posedge clk or negedge rstn) begin
		if(~rstn)
			CS <= PROCESS;
		else
			CS <= NS;
	end
	
	// helper wires;
	assign rate_bytes = (model_sel == 1'b0) ? 8'd168 : 8'd136;
	assign next_S_len_process = msgn_val ? (S_len + 8'd8) : S_len;
	assign next_S_process = msgn_val ? ((S << 64) | msgn) : S;
	assign next_S_padding = ((zerotoadd - padding_cnt) > 8) ?
		(S << 64) :
		((S << 64) | 64'h0000_0000_0000_0080);
	
	// NS;
	always @(*) begin
		case(CS)
			PROCESS: begin
				if(lastmsgn_val)
					NS <= PADDING;
				else if(msgn_val && (next_S_len_process == rate_bytes))
					NS <= ABSORB;
				else
					NS <= PROCESS;
			end
			PADDING: begin
				if(padding_cnt == zerotoadd - 8)
					NS <= SQUEEZ;
				else
					NS <= PADDING;
			end
			ABSORB: begin
				if(keccakOut_val)
					NS <= PROCESS;
				else
					NS <= ABSORB;
			end
			SQUEEZ: begin
				if((sqzcurcnt == sqzcnt && S_len == 8'b0) || burst) begin
					NS <= CLEAR;
				end else begin
					NS <= SQUEEZ;
				end
			end
			CLEAR: begin
				NS <= PROCESS;
			end
		endcase
	end
	
	// S, S_len, keccakIn_val, firstmsg_val, zerotoadd, padding_cnt, sqzcurcnt, done;
	always @(posedge clk or negedge rstn) begin
		if(~rstn) begin
			S <= 1344'b0;
			S_len <= 8'b0;
			S_shift_en <= 1'b0;
			keccakIn_val <= 1'b0;
			firstmsg_val <= 1'b1;
			zerotoadd <= 8'b0;
			padding_cnt <= 8'b0;
			sqzcurcnt <= 9'b0;
			//done <= 1'b0;
		end else begin
			case(CS)
				PROCESS: begin
					if(msgn_val) begin
						S <= next_S_process;
						S_len <= next_S_len_process;
					end
					// keccakIn_val;
					keccakIn_val <= (msgn_val && !lastmsgn_val && (next_S_len_process == rate_bytes)) ? 1'b1 : 1'b0;
					// zerotoadd: based on the block length AFTER current msgn is written into S;
					zerotoadd <= rate_bytes - next_S_len_process;
					// padding_cnt;
					padding_cnt <= 8'b0;
					// done;
					//done <= 1'b0;
				end
				PADDING: begin
					// S, S_len, padding_cnt;
					if(zerotoadd - padding_cnt > 8) begin
						S <= S << 64;
						S_len <= S_len + 8;
						padding_cnt <= padding_cnt + 8;
					end else begin
						S <= (S << 64) | {56'b0, 8'h80};
						S_len <= S_len + 8;
						padding_cnt <= padding_cnt + 8;
					end
					
					// keccakIn_val;
					if(zerotoadd - padding_cnt == 8) begin
						keccakIn_val <= 1'b1;
					end else begin
						keccakIn_val <= 1'b0;
					end
				end
				ABSORB: begin
					S <= 1344'b0;
					S_len <= 8'b0;
					keccakIn_val <= 1'b0;
					firstmsg_val <= 1'b0;
				end
				SQUEEZ: begin
					// S_len;
					S_len <= 8'b0;
					// firstmsg_val;
					firstmsg_val <= 1'b0;
					// sqzcurcnt;
					if(keccakOut_val) sqzcurcnt <= sqzcurcnt + 1'b1;
					// keccakIn_val;
					if(keccakOut_val && sqzcurcnt < sqzcnt - 1)
						keccakIn_val <= 1'b1;
					else
						keccakIn_val <= 1'b0;
					// S, S_len;
					if(keccakOut_val) begin
						S <= keccakOut;
						case(model_sel)
							1'b0: S_len <= 168;
							1'b1: S_len <= 136;
						endcase
					end else begin
						if(sqzout448_en && S_shift_en) begin
							S <= (S << 448);
							S_len <= S_len - 56;
						end else if(sqzout64_en && S_shift_en) begin
							S <= (S << 64);
							S_len <= S_len - 8;
						end
					end
					// S_shift_en;
					if(keccakOut_val)
						S_shift_en <= 1'b1;
					else if(S_len == 56 && sqzout448_val && sqzout448_en)
						S_shift_en <= 1'b0;
					else if(S_len ==  8 && sqzout64_val  && sqzout64_en)
						S_shift_en <= 1'b0;
					else
						S_shift_en <= S_shift_en;
				end
				CLEAR: begin
					S <= 1344'b0;
					S_len <= 8'b0;
					S_shift_en <= 1'b0;
					keccakIn_val <= 1'b0;
					firstmsg_val <= 1'b1;
					zerotoadd <= 8'b0;
					padding_cnt <= 8'b0;
					sqzcurcnt <= 9'b0;
					//done <= 1'b1;
				end
			endcase
		end
	end

	assign done = CS == CLEAR;
	assign sqz_cnt_o = sqzcurcnt;

	// process msg;
	Msg_Processor Msg_Processor_uut(
	.clk(clk),
    .rstn(rstn),
    
    .msg(msg),
    .msg_val(msg_val),
    .lastmsg_val(lastmsg_val),
    
    // indexa
    .indexa(indexa),
    .indexa_val(indexa_val),
    
    // indexb
    .indexb(indexb),
    .indexb_val(indexb_val),
    
    // padflag
    .padflag(padflag),
    
    // msgr;
    .msgn(msgn),
    .msgn_val(msgn_val),
    .lastmsgn_val(lastmsgn_val)
    );
	
	// Keccak;
	Keccak Keccak_uut(
	.clk(clk),
	.rstn(rstn),
	
	.datr(keccakIn),
	.datr_val(keccakIn_val),
	
	.model_sel(model_sel),
	.isfirstblock(firstmsg_val),
	
	.out(keccakOut),
	.out_val(keccakOut_val),
	.out_val_ar(out_val_ar)
    );
	
	// keccakIn;
	// 顶层在某个时钟沿把 S 更新成“完整块”并同时拉高 keccakIn_val。
	// 这一时钟沿之后，CS 已经切到“下一状态”：
	//   1) PROCESS 满块后 -> ABSORB，此时应把更新后的 S 送给 Keccak；
	//   2) PADDING 最后一个字后 -> SQUEEZ，此时 sqzcurcnt 仍为 0，也应把更新后的 S 送给 Keccak；
	//   3) SQUEEZ 里为了继续生成下一个输出块而再次拉高 keccakIn_val 时，sqzcurcnt 已经 > 0，
	//      这时 Keccak 需要纯 permutation，datr 必须为 0。
	assign keccakIn = ((CS == ABSORB) && keccakIn_val) ? S :
	                  ((CS == SQUEEZ) && keccakIn_val && (sqzcurcnt == 0)) ? S :
	                  1344'b0;
	
	// onehash_val;
	assign onehash_val = out_val_ar;
	
	// sqzout448;
	//assign sqzout448 = S[1343:896];
	assign sqzout448 = {
    S[1335:1328],S[1343:1336],
    S[1319:1312],S[1327:1320],
    S[1303:1296],S[1311:1304],
    S[1287:1280],S[1295:1288],
    S[1271:1264],S[1279:1272],
    S[1255:1248],S[1263:1256],
    S[1239:1232],S[1247:1240],
    S[1223:1216],S[1231:1224],
    S[1207:1200],S[1215:1208],
    S[1191:1184],S[1199:1192],
    S[1175:1168],S[1183:1176],
    S[1159:1152],S[1167:1160],
    S[1143:1136],S[1151:1144],
    S[1127:1120],S[1135:1128],
    S[1111:1104],S[1119:1112],
    S[1095:1088],S[1103:1096],
    S[1079:1072],S[1087:1080],
    S[1063:1056],S[1071:1064],
    S[1047:1040],S[1055:1048],
    S[1031:1024],S[1039:1032],
    S[1015:1008],S[1023:1016],
    S[999:992],  S[1007:1000],
    S[983:976],  S[991:984],
    S[967:960],  S[975:968],
    S[951:944],  S[959:952],
    S[935:928],  S[943:936],
    S[919:912],  S[927:920],
    S[903:896],  S[911:904]
	};
	
	
	
	// sqzout448_val;
	assign sqzout448_val = sqzout448_en && S_shift_en;
	
	// sqzout64;
	assign sqzout64 = S[1343:1280];
	// sqzout64_val;
	assign sqzout64_val = sqzout64_en && S_shift_en;
	
endmodule
