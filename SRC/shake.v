`timescale 1ns / 1ps
// Yes;

//onehashval提早一个周期，24轮的时间

module SHAKE(
	input clk,
	input rstn,
	
	input model_sel,	// SHAKE 128 or 256;
	
	// msg;
	input [63:0] msg,	
	input msg_val,
	input lastmsg_val_i,
	
	// indexa;
	input [7:0] indexa,
	input indexa_val,
	
	// indexb;
	input [7:0] indexb,
	input indexb_val,
	
	// padflag;
	//input [2:0] padflag,
	
	// cnt;
	input [8:0]	sqzcnt,
	
	// onehash_val,
	output onehash_val,	// one hash is over;
    output onehash_val_t,

	// sqzout64;
	input sqzout64_en, //EN - VAL ONE CYCLE 
	output reg [63:0] sqzout64,
	output sqzout64_val,
	
	// sqzout448;
	input sqzout448_en,
	output reg [447:0] sqzout448,
	output   sqzout448_val,
	
	// done;
	output   done
    );

    parameter   DIN     =   3'd0;
    parameter   PAD     =   3'd1;
    parameter   KECCAK0 =   3'D2;//abs-abs
    parameter   DOUT    =   3'D3;//abs/sqz-sqz
    parameter   BUFF    =   3'D4;
    parameter   DONE    =   3'D7;



    reg lasgmsgflag;
    wire lastmsg_val;

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            lasgmsgflag <= 1'b0;
        else if(CS == DONE) 
            lasgmsgflag <= 1'b0;
        else if(lastmsg_val_i)         
            lasgmsgflag <= 1'b1; 
        else
            lasgmsgflag <= lasgmsgflag;      
    end

    assign lastmsg_val = !lasgmsgflag && lastmsg_val_i;

    reg [2:0]   CS,NS;
    reg [79:0]  in_buffer;
    reg         indexa_val_f,indexb_val_f;
    reg [1599:0]keccak_buf;
    reg [1343:0]o_buf;
    reg [4:0]   din_cnt,kec_cnt;
    reg [8:0]   sqz_cnt;
    reg         msg_val_r,lastmsg_val_r,lastmsg_val_r_r;
    wire [4:0]  dincntmax;
    wire [63:0] data_in;
    (* keep = "true", max_fanout = 64 *) wire        absorb_val;
    (* keep = "true", max_fanout = 64 *) wire [20:0] absorb_we_lane;
    (* keep = "true", max_fanout = 64, equivalent_register_removal = "no" *) reg         doutflag;
    (* keep = "true", max_fanout = 64, equivalent_register_removal = "no" *) reg         doutflag_obuf;
    (* keep = "true", max_fanout = 64, equivalent_register_removal = "no" *) reg         doutflag_rdptr;
    (* keep = "true", max_fanout = 64, equivalent_register_removal = "no" *) reg         doutflag_sqz64;
    (* keep = "true", max_fanout = 64, equivalent_register_removal = "no" *) reg [6:0]   doutflag_sqz448_grp;

    assign done = CS == DONE;

//===============byte reverse func===============
function [63:0] bswap64;
        input [63:0] d;
        begin
            bswap64 = {
                d[7:0], d[15:8], d[23:16], d[31:24],
                d[39:32], d[47:40], d[55:48], d[63:56]
            };
        end
    endfunction 

function [63:0] bswap64_then_swap8_in_16;
    input [63:0] d;
    reg   [63:0] t;
    begin
        // 第一步：原来�?4bit字节反序
        t = { 
            d[7:0],   d[15:8],  d[23:16], d[31:24],
            d[39:32], d[47:40], d[55:48], d[63:56]
        };

        // 第二步：在bswap64结果基础上，�?6bit内部交换两个8bit
        bswap64_then_swap8_in_16 = {
            t[55:48], t[63:56],
            t[39:32], t[47:40],
            t[23:16], t[31:24],
            t[7:0],   t[15:8]
        };
    end
endfunction    


//===============流水信号延时======================
always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            msg_val_r       <= 1'b0;
            lastmsg_val_r   <= 1'b0;
            lastmsg_val_r_r <= 1'b0;
        end
        else begin
            msg_val_r       <= msg_val;
            lastmsg_val_r   <= lastmsg_val;
            lastmsg_val_r_r <= lastmsg_val_r;
        end
    end

always@(posedge clk or negedge rstn)begin
        if(!rstn)
            indexa_val_f <= 1'd0;
        else    if(indexa_val)
            indexa_val_f <= 1'd1;
        else    if(done)
            indexa_val_f <= 1'd0;
        else
            indexa_val_f <= indexa_val_f;    
    end    




always@(posedge clk or negedge rstn)begin
        if(!rstn)
            indexb_val_f <= 1'd0;
        else    if(indexb_val)
            indexb_val_f <= 1'd1;
        else    if(done)
            indexb_val_f <= 1'd0;
        else
            indexb_val_f <= indexb_val_f;    
    end    

always@(posedge clk or negedge rstn)begin
        if(!rstn)
            doutflag <= 1'd0;
        else    if(kec_cnt == 5'd23)
            doutflag <= 1'd1;
        else    
            doutflag <= 1'd0;
    end

always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            doutflag_obuf       <= 1'd0;
            doutflag_rdptr      <= 1'd0;
            doutflag_sqz64      <= 1'd0;
            doutflag_sqz448_grp <= 7'd0;
        end
        else if(kec_cnt == 5'd23)begin
            doutflag_obuf       <= 1'd1;
            doutflag_rdptr      <= 1'd1;
            doutflag_sqz64      <= 1'd1;
            doutflag_sqz448_grp <= 7'h7f;
        end
        else begin
            doutflag_obuf       <= 1'd0;
            doutflag_rdptr      <= 1'd0;
            doutflag_sqz64      <= 1'd0;
            doutflag_sqz448_grp <= 7'd0;
        end
    end


//===============输入buffer维护======================
wire [63:0] msg_i;
assign msg_i = bswap64(msg);

always@(posedge clk or negedge rstn)begin
        if(!rstn)
            in_buffer <= 80'd0;
        else    if(msg_val)begin
            if(indexa_val && indexb_val)
                in_buffer <= {msg_i,indexb,indexa};
            else    if(indexa_val)
                in_buffer <= {8'd0,msg_i,indexa};
            else    if(indexa_val_f && indexb_val_f)
                in_buffer <= {msg_i,in_buffer[79:64]};
            else    if(indexa_val_f)
                in_buffer <= {8'b0,msg_i,in_buffer[71:64]};
            else
                in_buffer <= {16'b0,msg_i};         
        end
        else    if(lastmsg_val_r)begin
            if(indexa_val_f && indexb_val_f)
                in_buffer <= {16'd0,40'd0,8'H1f,in_buffer[79:64]}; 
            else if(indexa_val_f)
                in_buffer <= {16'd0,48'd0,8'H1F,in_buffer[71:64]};
            else
                in_buffer <= {72'd0,8'H1F};
        end
        else    if(done)
            in_buffer <= 80'd0;
        else
            in_buffer <= in_buffer;    
    end

    assign data_in = in_buffer[63:0];

//===============各种计数器维�?==================
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            din_cnt <= 5'd0;
        else if(msg_val_r || lastmsg_val_r_r)
            din_cnt <= din_cnt + 1'b1;
        else if(CS == KECCAK0 || done)
            din_cnt <= 5'D0;
        else
            din_cnt <= din_cnt;        
    end

    assign dincntmax = model_sel ? 5'd17 : 5'd21;

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            kec_cnt <= 5'd0;
        else if(CS == KECCAK0 || CS == DOUT)begin
            if(kec_cnt == 5'd23)
                kec_cnt <= 5'd0;    
            else
                kec_cnt <= kec_cnt + 1'b1;
        end
        else if(done)
            kec_cnt <= 5'd0;
        else
            kec_cnt <= kec_cnt;    
    end


    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            sqz_cnt <= 9'd0;
        else if(done)
            sqz_cnt <= 9'd0;
        else if(kec_cnt == 5'd23 && CS == DOUT)begin
            if(sqz_cnt == sqzcnt)
                sqz_cnt <= 9'd0;
            else
                sqz_cnt <= sqz_cnt + 1'b1;        
        end
        else
            sqz_cnt <= sqz_cnt;    
    end



//===============核心寄存器维�?===================
    wire [1599:0] keccak_buf_a;
    wire [1599:0] keccak_buf_o;

    assign absorb_val = msg_val_r || lastmsg_val_r_r;

    genvar absorb_g;
    generate
        for(absorb_g = 0; absorb_g < 21; absorb_g = absorb_g + 1) begin : g_absorb_we
            (* keep = "true", max_fanout = 64 *) wire absorb_we_local;
            assign absorb_we_local = absorb_val && (din_cnt == absorb_g[4:0]);
            assign absorb_we_lane[absorb_g] = absorb_we_local;
        end
    endgenerate


    genvar keccak_lane_g;
    generate
        for(keccak_lane_g = 0; keccak_lane_g < 25; keccak_lane_g = keccak_lane_g + 1) begin : g_keccak_buf_lane
            (* keep = "true", max_fanout = 64 *) wire keccak_absorb_we;

            if(keccak_lane_g < 21) begin : g_has_absorb
                assign keccak_absorb_we = absorb_we_lane[keccak_lane_g];
            end
            else begin : g_no_absorb
                assign keccak_absorb_we = 1'b0;
            end

            if(keccak_lane_g == 16) begin : g_pad_sha256
                always@(posedge clk or negedge rstn)begin
                    if(!rstn)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(done)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(keccak_absorb_we)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf[64*keccak_lane_g +: 64] ^ data_in;
                    else if(CS == PAD && model_sel)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf[64*keccak_lane_g +: 64] ^ {8'H80, 56'd0};
                    else if(CS == KECCAK0 || CS == DOUT)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf_o[64*keccak_lane_g +: 64];
                end
            end
            else if(keccak_lane_g == 20) begin : g_pad_sha128
                always@(posedge clk or negedge rstn)begin
                    if(!rstn)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(done)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(keccak_absorb_we)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf[64*keccak_lane_g +: 64] ^ data_in;
                    else if(CS == PAD && !model_sel)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf[64*keccak_lane_g +: 64] ^ {8'H80, 56'd0};
                    else if(CS == KECCAK0 || CS == DOUT)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf_o[64*keccak_lane_g +: 64];
                end
            end
            else begin : g_no_pad
                always@(posedge clk or negedge rstn)begin
                    if(!rstn)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(done)
                        keccak_buf[64*keccak_lane_g +: 64] <= 64'b0;
                    else if(keccak_absorb_we)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf[64*keccak_lane_g +: 64] ^ data_in;
                    else if(CS == KECCAK0 || CS == DOUT)
                        keccak_buf[64*keccak_lane_g +: 64] <= keccak_buf_o[64*keccak_lane_g +: 64];
                end
            end
        end
    endgenerate

    reg [7:0]c1;

    always@(*)
		begin
			case(kec_cnt)
				5'd0:	begin	c1 <= 7'b0000_001;	end
				5'd1:	begin	c1 <= 7'b0011_010;	end
				5'd2:	begin	c1 <= 7'b1011_110;	end
				5'd3:	begin	c1 <= 7'b1110_000;	end
				5'd4:	begin	c1 <= 7'b0011_111;	end
				5'd5:	begin	c1 <= 7'b0100_001;	end
				5'd6:	begin	c1 <= 7'b1111_001;	end
				5'd7:	begin	c1 <= 7'b1010_101;	end
				5'd8:	begin	c1 <= 7'b0001_110;	end
				5'd9:	begin	c1 <= 7'b0001_100;	end
				5'd10:	begin	c1 <= 7'b0110_101;	end
				5'd11:	begin	c1 <= 7'b0100_110;	end
				5'd12:	begin	c1 <= 7'b0111_111;  end  
                5'd13:	begin	c1 <= 7'b1001_111;  end
                5'd14:	begin	c1 <= 7'b1011_101;  end
                5'd15:	begin	c1 <= 7'b1010_011;  end
                5'd16:	begin	c1 <= 7'b1010_010;  end
                5'd17:	begin	c1 <= 7'b1001_000;  end
                5'd18:	begin	c1 <= 7'b0010_110;  end
                5'd19:	begin	c1 <= 7'b1100_110;  end
                5'd20:	begin	c1 <= 7'b1111_001;  end
                5'd21:	begin	c1 <= 7'b1011_000;  end
                5'd22:	begin	c1 <= 7'b0100_001;  end
                5'd23:	begin	c1 <= 7'b1110_100;  end
                default:c1 <= 7'b0000_001;
			endcase 
		end    


    theta u_theta(
        .in ( keccak_buf ),
        .out  ( keccak_buf_a  )
    );


    thopichiiota u_thopichiiota(
        .in  ( keccak_buf_a  ),
        .out ( keccak_buf_o ),
        .c   ({c1[6],31'b0,c1[5],15'b0,c1[4],7'b0,c1[3],3'b0,c1[2],1'b0,c1[1:0]})
    );


//===============输出寄存器维�?===================
    assign onehash_val = (kec_cnt == 5'd23);
    assign onehash_val_t = (kec_cnt == 5'd21);

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            o_buf <= 1344'd0;
        else if(doutflag_obuf)
            o_buf <= keccak_buf[1343:0];
//        else if(sqzout64_en)
//            o_buf <= {64'd0,o_buf[1343:64]};
//        else if(sqzout448_en)
//            o_buf <= {448'd0,o_buf[1343:448]};
        else 
            o_buf <= o_buf;    
    end


    reg [4:0] o_buf_rd_ptr;

    always @(posedge clk or negedge rstn) begin
        if(!rstn)
            o_buf_rd_ptr <= 5'd0;
        else if(doutflag_rdptr)
            o_buf_rd_ptr <= 5'd0;
        else if(sqzout64_en)
            o_buf_rd_ptr <= o_buf_rd_ptr + 5'd1;
        else if(sqzout448_en)
            o_buf_rd_ptr <= o_buf_rd_ptr + 5'd7;
        else
            o_buf_rd_ptr <= o_buf_rd_ptr;
    end

    wire [4:0] o_buf_rd_ptr64p  = o_buf_rd_ptr + 5'd1;
    wire [4:0] o_buf_rd_ptr448p = o_buf_rd_ptr + 5'd7;
    wire [63:0]  sqzout64_first_t;
    wire [63:0]  sqzout64_t;
    wire [447:0] sqzout448_first_t;
    wire [447:0] sqzout448_t;


    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            sqzout64 <= 64'd0;
        else if(doutflag_sqz64)
            sqzout64 <= sqzout64_first_t;
        else if(sqzout64_en)
            sqzout64 <= sqzout64_t;
        else
            sqzout64 <= sqzout64;
    end

    genvar sqz448_g;
    generate
        for(sqz448_g = 0; sqz448_g < 7; sqz448_g = sqz448_g + 1) begin : g_sqzout448
            (* keep = "true", max_fanout = 64 *) wire sqzout448_ce;
            assign sqzout448_ce = doutflag_sqz448_grp[sqz448_g] | sqzout448_en;

            always@(posedge clk or negedge rstn)begin
                if(!rstn)
                    sqzout448[sqz448_g*64 +: 64] <= 64'd0;
                else if(sqzout448_ce)
                    sqzout448[sqz448_g*64 +: 64] <= doutflag_sqz448_grp[sqz448_g] ?
                                                      sqzout448_first_t[sqz448_g*64 +: 64] :
                                                      sqzout448_t[sqz448_g*64 +: 64];
            end
        end
    endgenerate


    assign sqzout64_first_t = bswap64(keccak_buf[63:0]);
    assign sqzout64_t       = bswap64(o_buf[o_buf_rd_ptr64p*64 +: 64]);
    assign sqzout448_first_t = {
                        bswap64_then_swap8_in_16(keccak_buf[(5'd0)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd1)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd2)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd3)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd4)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd5)*64 +: 64]),
                        bswap64_then_swap8_in_16(keccak_buf[(5'd6)*64 +: 64])
                    };
    assign sqzout448_t = {
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd0)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd1)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd2)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd3)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd4)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd5)*64 +: 64]),
                        bswap64_then_swap8_in_16(o_buf[(o_buf_rd_ptr448p+5'd6)*64 +: 64])
                    };
    assign sqzout64_val  =  sqzout64_en;
    assign sqzout448_val =  sqzout448_en;

//===============状态机============================

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            CS <= 3'd0;
        else
            CS <= NS;
    end


    always@(*)begin
        case(CS)
            DIN:begin
                if(lastmsg_val_r_r)
                    NS = PAD; 
                else if(din_cnt == dincntmax)
                    NS =  KECCAK0;
                else
                    NS = DIN;      
            end
            PAD:begin
                NS = DOUT;
            end
            KECCAK0:begin
                if(kec_cnt == 5'd23)
                   NS = DIN;
                else
                    NS = KECCAK0;
            end
            DOUT:begin
                if(kec_cnt == 5'd23)
                    NS = BUFF;
                else
                    NS = DOUT;
            end
            BUFF:begin
                if((sqz_cnt == sqzcnt))
                    NS = DONE;
                else
                    NS = DOUT;     
            end
            DONE:begin
                NS = DIN;
            end
            default:NS = DIN;
        endcase
    end




    endmodule
