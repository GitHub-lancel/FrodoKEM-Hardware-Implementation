`timescale 1ns / 1ps
module Frodo_top
(   
    //input wire clk_p,
    //input wire clk_n,
    input wire clk_i,
    input wire rstn,
    //input wire buttle,
    input [1:0] sec_lvl,
    input [1:0] mode,
    input wire swtich, 
    output valid,//拉一位数据 
    output reg [63:0] dout ,
    output oneinstdone,
    output oneworkdone
);

/*
reg  [3:0] selmode;

always@(posedge clk or negedge rstn)begin
    if(!rstn)
        selmode <= 4'b0;
    else if(buttle)    
        selmode <= selmode + 1;
    else
        selmode <= selmode;    
end

wire [1:0] sec_lvl = selmode[1:0];   
wire [1:0] mode    = selmode[3:2];
*/
wire        clk;
wire        workdone;
wire        DO_valid;

//control接线
wire    start = swtich;
assign  valid = DO_valid;
assign  opermode = mode;
wire    [3:0] opcode;
wire        width448;
wire        bool    ;


//hash
wire    onehash_val_t;
wire    shakedone;
wire    onehash_val;
wire    sqzout64_val;
wire    sqzout448_val;
wire    hash_lvl;
wire    msg_val;
wire    lastmsg_val;
reg     [63:0]  hash_in;
wire    [8:0]   sqznum;
wire    sqzout64_en;
wire    sqzout448_en;
wire    [63:0]  sqzout64;
wire    [447:0] sqzout448;
wire    [7:0]   indexa;
wire         indexa_val;
wire    [7:0]   indexb;
wire         indexb_val;
  
//fifo 448-64
wire    fifo_mode;

wire    fifo_wr_en_448;
wire    fifo_rd_en_64;
wire    full448;
wire    fifo_64_out_val;
wire    [447:0] fifo_data_448_in;
wire    [63:0]  fifo_data_64_out;
wire    empty64;
//fifo 64-448
wire    fifo_wr_en_64;
wire    fifo_last_en_64;
reg     [63:0]  fifo_data_64_in;
wire    [447:0] fifo_data_448_out;
wire    fifo_data_448_out_val;


//pack 
wire [1:0] pack_lvl;
reg  [63:0] packIn;
wire packIn_val;
wire [63:0] packOut;
wire packOut_val;

//unpack
wire [1:0] unpack_lvl;
reg  [63:0] unpackIn;
wire unpackIn_val;

wire [63:0] unpackOut;
wire unpackOut_val;
wire unpack_full;

//encode
wire [1:0] encode_lvl;
wire [63:0] encode_msg;
wire encode_msg_val;
wire encode_en;
wire [63:0] encodeOut;
wire encodeOut_val;

//decode
wire [1:0]  decode_lvl;
wire [63:0] decode_msg;
wire decode_msg_val;
wire decodeen;  
wire [63:0] decodeOut;
wire decodeOut_val;

//sample
wire  [16*4-1:0] smInSet;
wire  [1:0] sm_lvl;
wire  [16*4-1:0] smOutSet;

//加法单元
reg [16*4-1:0] add_ina;
reg [16*4-1:0] add_inb;
wire [16*4-1:0] add_out;

//减法单元
wire [4*16-1:0] sub_ina;
wire [4*16-1:0] sub_inb;
wire [4*16-1:0] sub_out;

//内积单元
wire  [28*16-1:0] mac_mulina;
wire  [28*16-1:0] mac_mulinb;
wire mulabSet_val;
wire [63:0] mac_outab;
wire macabSet_val;

//外积单元（并非）
reg [16-1:0]     mul_mulina;
wire [28*16-1:0] mul_mulinb;
reg  [28*16-1:0] mul_addinc;
wire [28*16-1:0] mul_out;

//双端口ram，；定0读，1写
wire [9:0]   addr_448ram0;
wire [9:0]   addr_448ram1;
wire [11:0]  addr_64ramb0;
wire [11:0]  addr_64ramb1;
wire [11:0]  addr_64rama0;
wire [11:0]  addr_64rama1;

wire         we_448ram0;
wire         we_448ram1;
wire         we_64ramb0;
wire         we_64ramb1;
wire         we_64rama0;                            
wire         we_64rama1;

reg  [63:0]  din_ram64a0;
wire [63:0]  dout_ram64a0;
reg  [63:0]  din_ram64a1;
wire [63:0]  dout_ram64a1;
reg  [63:0]  din_ram64b0;
wire [63:0]  dout_ram64b0;
reg  [63:0]  din_ram64b1;
wire [63:0]  dout_ram64b1;
wire [447:0] din_ram4480;
wire [447:0] dout_ram4480;
wire [447:0] din_ram4481;
wire [447:0] dout_ram4481;






//--------------------------------------------------------数据通路连线
    wire [3:0]   prefixa_r;//主数据通路端口切换，仅用于ram-model多ram切换
    //--dout
    reg  [1:0]  doutsel;  //00默认全0 01ram64a口1 10ram64b口1 10fifo64出
    //--pack
    reg  [1:0]  packinsel;//01 rama的口1 10fifo64o 11ramb的口1     
    //--unpack
    reg        unpackinsel;// 0-64a0 1-64b0  
    //--encode
    assign encode_msg = dout_ram64b0;
    //--decode
    assign decode_msg = dout_ram64b1;//!!decode接的口2
    //--sample
    assign smInSet = sqzout64;
    //--fifo
    reg    fifo64sel;//0-unpack 1-sample
    assign fifo_data_448_in = dout_ram4480;
    //--hash 
    reg    [1:0] hashsel;//00-无 01-fifo64out 10-ram64a 11-ram64b
    wire         hashsel448;//448输入辅助，从control接线出来
    //--加法单元
        //数据来自encode输出/采样直接输出的E‘’/内积单元输出/ram64口1的E
    reg  [1:0]   add_insel;//in0 1-内积输出    0-encodeu     2 - 内积输出
                           //in1 1-ram64出口1  0-sampleout   2 - ram64b
    //--减法单元  a - b
        //数据只来自 ram64b的完整矩阵C/内积单元输出
    assign sub_ina = dout_ram64b1;
    assign sub_inb = dout_ram64a0;
    //--内积单元
        //数据来自 hash输出/ram448口1的S矩阵/ram448口1的B’（ENC）/ram448口2的S矩阵
    reg mac_mulinasel;//1- hash448 + ram448口1 0-ram448口2 + ram448口1
    //--外积单元
        //数据来自 hash输出/ram64b口1的矩阵S‘/ram448口1的矩阵E’ 组别1
        //        ram64a口1的矩阵B/ram64b口1的矩阵S’/ram64a口2的矩阵E‘’ 组别0
    wire  [1:0] mul_mulinasel;//其中一个口固定输入ram64b口1，这个控制输入哪部分16bit进入
    reg         mul_mulsel;//1-组别1 0-组别0
    reg   [1:0] mul_addsel;
    //--ram线
    reg [1:0]   din_ram64a0sel;//1 - unpack 0-pack
    reg [1:0]   din_ram64a1sel;    
    reg [1:0]   din_ram64b0sel;
    reg [1:0]   din_ram64b1sel;
    //--输出数据线


        //-------------------真正连线
            
        //--pack
        always@(*)begin
            case(packinsel)
                2'b01: packIn = dout_ram64a0;
                2'b10: packIn = fifo_data_64_out;
                2'b11: packIn = dout_ram64b0;
            default:packIn = 64'd0;
            endcase
        end
        //--unpack
        always@(*)begin
            case(unpackinsel)
                1'b0: unpackIn = dout_ram64a0;
                1'b1: unpackIn = dout_ram64b0;
            endcase
        end
        //--fifo64
        always@(*)begin
            case(fifo64sel)
                1'b0:fifo_data_64_in = unpackOut;
                1'b1:fifo_data_64_in = smOutSet;
            endcase    
        end
        //--hash
        always@(*)begin
            case(hashsel)
                2'b01: hash_in = fifo_data_64_out;
                2'b10: hash_in = dout_ram64a0;
                2'b11: hash_in = dout_ram64b0;
            default:hash_in = 64'd0;
            endcase    
        end
        //--加法单元
        always@(*)begin
            case(add_insel)
                2'b00:begin add_ina = smOutSet ; add_inb = encodeOut    ;end
                2'b01:begin add_ina = mac_outab; add_inb = dout_ram64a0 ;end
                2'b10:begin add_ina = mac_outab; add_inb = dout_ram64b0 ;end
                2'b11:begin add_ina = dout_ram64a0    ; add_inb = 64'd0        ;end
            endcase
        end


        //--内积单元
        assign mac_mulina = mac_mulinasel ? sqzout448 : dout_ram4481;
        assign mac_mulinb = dout_ram4480;
        //--外积单元
        reg   [1:0] mul_mulinasel_r;
        reg   [1:0] mul_mulinasel_r_r;  
        
        always@(posedge clk or negedge rstn)begin
            if(!rstn)begin
                mul_mulinasel_r <= 1'b0;
                mul_mulinasel_r_r <= 1'b0;
            end
            else
                mul_mulinasel_r <= mul_mulinasel;  
                mul_mulinasel_r_r <= mul_mulinasel_r; 
        end

        always@(*)begin
            case(mul_mulinasel_r)
                2'b00: mul_mulina = dout_ram64b0[63:48];
                2'b01: mul_mulina = dout_ram64b0[47:32];
                2'b10: mul_mulina = dout_ram64b0[31:16];
                2'b11: mul_mulina = dout_ram64b0[15:0];
            endcase
        end

        assign mul_mulinb = mul_mulsel ? sqzout448 : {dout_ram64a1,384'd0};

        //assign mul_addinc = mul_mulsel ? dout_ram4480 : {dout_ram64b0,384'd0};

        always@(*)begin
            case(mul_addsel)
                2'b00:mul_addinc = 448'b0;
                2'b01:mul_addinc = dout_ram4480;
                2'b10:mul_addinc = {dout_ram64a0,384'd0};
                2'b11:mul_addinc = {dout_ram64b1,384'd0};
            endcase    
        end
           
        //----ram数据连线(只关心入口，出口上面都处理了)
        assign din_ram4480 = fifo_data_448_out;
        assign din_ram4481 = mul_out;

        //assign  din_ram64a0 = din_ram64a0sel ? unpackOut :  packOut;
        always@(*)begin
            case(din_ram64a0sel)
                2'b00:din_ram64a0 = packOut;
                2'b01:din_ram64a0 = unpackOut;
                2'b10:din_ram64a0 = mul_out[447:384];
                2'b11:din_ram64a0 = 64'd0;
            endcase
        end

        always@(*)begin
            case(din_ram64a1sel)
                2'b00:din_ram64a1 = sqzout64;
                2'b01:din_ram64a1 = smOutSet;
                2'b10:din_ram64a1 = sub_out;
                2'b11:din_ram64a1 = add_out;
            endcase
        end

        always@(*)begin
            case(din_ram64b0sel)
                2'b00:din_ram64b0 = sub_out;
                2'b01:din_ram64b0 = unpackOut;
                2'b10:din_ram64b0 = packOut;
                2'b11:din_ram64b0 = decodeOut;
            endcase
        end

        always@(*)begin
            case(din_ram64b1sel)
                2'b00:din_ram64b1 = sqzout64;
                2'b01:din_ram64b1 = smOutSet;
                2'b10:din_ram64b1 = mul_out[447:384];
                2'b11:din_ram64b1 = add_out;
            endcase
        end

        always@(*)begin
            case(bool)
                1'b0:dout = dout_ram64a0;
                1'b1:dout = dout_ram64b0;
            endcase
        end

    wire [3:0]    prefixc_out        ;
    wire [3:0]    prefixd_out        ;
    

    //通路解码控制器
    always@(*)begin
        doutsel   = 2'b00;
        packinsel = 2'b00;
        unpackinsel = 1'b0;
        fifo64sel = 1'b0;
        hashsel = 2'b00;
        mac_mulinasel = 1'b0;
        mul_mulsel    = 1'b0;
        add_insel     = 2'b0;
        din_ram64a0sel = 2'b0;
        din_ram64a1sel = 2'b00;
        din_ram64b0sel = 2'b00;
        din_ram64b1sel = 2'b00;
        mul_addsel     = 2'b00;
        case(opcode)
            4'b0001:begin 
                //decode，的decode接线固定，ram64b口1接decode数据
                din_ram64b0sel = 2'b11;     
            end
            4'b0010:begin
                //pack，448口1-fifo-pack-ram64a
                //pack，大矩阵直接pack 64a-64b 
                //pack, 小矩阵直接pack 64b-64a bool
                if(width448)begin
                    //448FIFO输入固定
                    packinsel = 2'b10;
                    din_ram64a0sel = 2'b0;
                end
                else if(bool)begin
                    packinsel = 2'b11;
                    din_ram64a0sel = 2'b0;
                end
                else  begin   
                    packinsel = 2'b01;
                    din_ram64b0sel = 2'b10;
                end
            end
            4'b0011:begin
                //unpack,ram64a - unpack - fifo - ram448口1   
                //unpack 大矩阵直接ram64b - unpack -  ram64a bool
                //unpack 小矩阵直接ram64a - unapck -  ram64b
                if(width448)begin
                    unpackinsel = 1'b0;
                    fifo64sel = 1'b0;
                    //ram448入口1固定接线  
                end
                else if(bool)begin
                    unpackinsel = 1'b1;
                    din_ram64a0sel = 2'b1;
                end
                else begin
                    unpackinsel = 1'b0;
                    din_ram64b0sel = 2'b01;
                end
            end
            4'b0100:begin
                //输入有prefixa盯着，看输出就可以
                //seedSE rama - hash -rama
                //seeda  乱 - hash - rama
                //pkh    乱 - hash - ramb
                if(prefixa_r[2])begin
                    hashsel = 2'b11;
                    din_ram64a1sel = 2'b00;
                end
                else begin
                    hashsel = 2'b10;     
                    din_ram64b1sel = 2'b00;
                end   
                end
            4'b0101:begin
                //生成ss
                //输入有sel448和prefix管着，输出固定到ramb(默认)
                if(!hashsel448)
                    hashsel = 2'b01;    
                else if(prefixa_r[2])begin
                   hashsel = 2'b11;
                end
                else begin
                    hashsel = 2'b10;        
                end
            end
            4'b0110:begin 
                //sampleS E 刚验证肯定对
                din_ram64a1sel  = 2'b01;
                hashsel         = 2'b10;
                fifo64sel = 1'b1;
                end
            4'b0111:begin 
                //sample Ep Sp 刚验证肯定对
                hashsel        = 2'b10;
                din_ram64a1sel = 2'b11;
                din_ram64b1sel = 2'b01;
                fifo64sel = 1'b1;
            end    
            4'b1000:begin
                hashsel       = 2'b10;
                mul_mulsel    = 1'b1;
                mul_addsel    = 2'b01;
            end
            4'b1001:begin
                hashsel       = 2'b10;
                mac_mulinasel = 1'b1;
                add_insel     = 2'b01;
                din_ram64a1sel= 2'b11; 
            end
            4'b1010:begin
                mul_addsel    = 2'b10;
                din_ram64a0sel = 2'b10;
                din_ram64b1sel = 2'b10;
                mul_mulsel    = 1'b0;
                if(prefixc_out == 4'b1101)
                    mul_addsel = 2'b11;
            end
            4'b1011:begin
                din_ram64a1sel = 2'b11;
                mac_mulinasel  = 1'b0;
                add_insel      = 2'b01;
            end
            4'b1100:begin
                din_ram64b0sel = 2'b00;
            end
            4'b1111:begin
                add_insel = 2'b11;
                din_ram64b1sel = 2'b11;
            end
        endcase
    end


//========================================================输出通路控制
  



//--------------------------------------------------------数据遍历对比部分控制
/*
clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk),     // output clk_out1
    // Status and control signals
    .resetn(resetn), // input resetn
    .locked(),       // output locked
   // Clock in ports
    .clk_in1(clk_i)      // input clk_in1
);
*/
assign clk = clk_i;

 SampleMatrixSet#(
    .PARALLEL_NUM ( 4 )
)u_SampleMatrixSet(
    .smInSet ( smInSet ),
    .sec_lvl ( sec_lvl ),
    .smOutSet  ( smOutSet  )
);



bidirectional_fifo u_bidirectional_fifo(
    .clk             ( clk             ),
    .rstn            ( rstn            ),
    .mode            ( fifo_mode            ),
    .data_448_in     ( fifo_data_448_in     ),
    .wr_en_448       ( fifo_wr_en_448       ),
    .full_448        ( full448              ),
    .rd_en_64        ( fifo_rd_en_64        ),
    .data_64_out     ( fifo_data_64_out     ),
    .data_64_out_val ( fifo_64_out_val      ),
    .empty_64        ( empty64        ),
    .data_64_in      ( fifo_data_64_in      ),
    .wr_en_64        ( fifo_wr_en_64        ),
    .last_en_64      ( fifo_last_en_64      ),
    .data_448_out    ( fifo_data_448_out    ),
    .data_448_out_val( fifo_data_448_out_val  )
);




SHAKE u_SHAKE(
    .clk           ( clk           ),
    .rstn          ( rstn          ),
    .model_sel     ( hash_lvl      ),
    .msg           ( hash_in       ),
    .msg_val       ( msg_val       ),
    .lastmsg_val_i ( lastmsg_val   ),
    .indexa        ( indexa        ),
    .indexa_val    ( indexa_val    ),
    .indexb        ( indexb        ),
    .indexb_val    ( indexb_val    ),

    .sqzcnt        ( sqznum        ),
    .onehash_val   ( onehash_val   ),
    .sqzout64_en   ( sqzout64_en   ),
    .sqzout64      ( sqzout64      ),
    .sqzout64_val  ( sqzout64_val  ),
    .sqzout448_en  ( sqzout448_en  ),
    .sqzout448     ( sqzout448     ),
    .sqzout448_val ( sqzout448_val ),

    .onehash_val_t      (onehash_val_t),
    
    .done          ( shakedone     )
);




PackSet u_PackSet(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .sec_lvl    ( sec_lvl    ),
    .packIn     ( packIn     ),
    .packIn_val ( packIn_val ),
    .packOut_o    ( packOut    ),
    .packOut_val  ( packOut_val  )
);


UnpackSet u_UnpackSet(
    .clk           ( clk           ),
    .rstn          ( rstn          ),
    .sec_lvl       ( sec_lvl       ),
    .unpackIn      ( unpackIn      ),
    .unpackIn_val  ( unpackIn_val  ),
    .unpackOut_o     ( unpackOut     ),
    .unpackOut_val ( unpackOut_val ),
    .full          ( unpack_full          )
);


DecodeSet u_DecodeSet(
    .clk       ( clk       ),
    .rstn      ( rstn      ),
    .sec_lvl   ( sec_lvl   ),
    .msg       ( decode_msg       ),
    .msg_val   ( decode_msg_val   ),
    .decodeOut ( decodeOut ),
    .en        (decodeen),
    .decodeOut_val  ( decodeOut_val  )
);


EncodeSet u_EncodeSet(
    .clk       ( clk       ),
    .rstn      ( rstn      ),
    .sec_lvl   ( sec_lvl   ),
    .msg       ( encode_msg       ),
    .msg_val   ( encode_msg_val   ),
    .en        ( encode_en        ),
    .encodeOut ( encodeOut ),
    .encodeOut_val  ( encodeOut_val  )
);



//ram64a 64宽  3000深度 12地址线宽
//ram64b 64宽  2712深度 12地址线宽 
//ram448 448宽 767深    10地址线宽




/*
dram64_r#(
    .ADDR_WIDTH ( 12 ),
    .DATA_WIDTH ( 64 ),
    .MEM_DEPTH  ( 3000 ),
    .HEX_FILE   ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM64a.hex" ),
    .OUTPUT_FILE ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM64aout.hex")
)ram64a(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .dump_en    ( dump_en    ),
    .addr_a     ( addr_64rama0     ),
    .din_a      ( din_ram64a0         ),
    .wr_mask_a  ( {8{we_64rama0}}  ),
    .dout_a     ( dout_ram64a0     ),
    .addr_b     ( addr_64rama1     ),
    .din_b      ( din_ram64a1      ),
    .wr_mask_b  ( {8{we_64rama1}}  ),
    .dout_b     ( dout_ram64a1     )
);
*/



RAM64a ram64a (
  .clka(clk),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(we_64rama0),      // input wire [0 : 0] wea
  .addra(addr_64rama0),  // input wire [11 : 0] addra
  .dina(din_ram64a0),    // input wire [63 : 0] dina
  .douta(dout_ram64a0),  // output wire [63 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(1'b1),      // input wire enb
  .web(we_64rama1),      // input wire [0 : 0] web
  .addrb(addr_64rama1),  // input wire [11 : 0] addrb
  .dinb(din_ram64a1),    // input wire [63 : 0] dinb
  .doutb(dout_ram64a1)  // output wire [63 : 0] doutb
);






/*
dram64_r#(
    .ADDR_WIDTH ( 12 ),
    .DATA_WIDTH ( 64 ),
    .MEM_DEPTH  ( 3000 ),
    .HEX_FILE   ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM64b.hex" ),
    .OUTPUT_FILE ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM64bout.hex" )
)ram64b(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .dump_en    ( dump_en    ),
    .addr_a     ( addr_64ramb0     ),
    .din_a      ( din_ram64b0         ),
    .wr_mask_a  ( {8{we_64ramb0}}  ),
    .dout_a     ( dout_ram64b0     ),
    .addr_b     ( addr_64ramb1     ),
    .din_b      ( din_ram64b1      ),
    .wr_mask_b  ( {8{we_64ramb1}}  ),
    .dout_b     ( dout_ram64b1     )
);
*/

RAM64b ram64b (
  .clka(clk),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(we_64ramb0),      // input wire [0 : 0] wea
  .addra(addr_64ramb0),  // input wire [11 : 0] addra
  .dina(din_ram64b0),    // input wire [63 : 0] dina
  .douta(dout_ram64b0),  // output wire [63 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(1'b1),      // input wire enb
  .web(we_64ramb1),      // input wire [0 : 0] web
  .addrb(addr_64ramb1),  // input wire [11 : 0] addrb
  .dinb(din_ram64b1),    // input wire [63 : 0] dinb
  .doutb(dout_ram64b1)  // output wire [63 : 0] doutb
);

/*
dram448_r#(
    .ADDR_WIDTH ( 10 ),
    .DATA_WIDTH ( 448 ),
    .MEM_DEPTH  ( 800 ),
    .HEX_FILE   ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM448.hex" ),
    .OUTPUT_FILE ( "E:/Frodokem_2026_tx/FrodoKEM_sim/TB/RAM448out.hex" )
)ram448(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .dump_en    ( dump_en    ),
    .addr_a     ( addr_448ram0     ),
    .din_a      ( din_ram4480      ),
    .wr_mask_a  ( {56{we_448ram0}}   ),
    .dout_a     ( dout_ram4480     ),
    .addr_b     ( addr_448ram1     ),
    .din_b      ( din_ram4481      ),
    .wr_mask_b  ( {56{we_448ram1}}  ),
    .dout_b     ( dout_ram4481     )
);
*/

RAM448 uRAM448 (
  .clka(clk),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(we_448ram0),      // input wire [0 : 0] wea
  .addra(addr_448ram0),  // input wire [9 : 0] addra
  .dina(din_ram4480),    // input wire [447 : 0] dina
  .douta(dout_ram4480),  // output wire [447 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(1'b1),      // input wire enb
  .web(we_448ram1),      // input wire [0 : 0] web
  .addrb(addr_448ram1),  // input wire [9 : 0] addrb
  .dinb(din_ram4481),    // input wire [447 : 0] dinb
  .doutb(dout_ram4481)  // output wire [447 : 0] doutb
);





MatrixAddSet#(
    .PARALLEL_NUM ( 4 )
)u_MatrixAddSet(
    .addaSet ( add_ina ),
    .addbSet ( add_inb ),
    .addabSet  ( add_out  )
);

 MatrixMACSet#(
    .PARALLEL_NUM ( 28 )
)u_MatrixMACSet(
    .clk          ( clk          ),
    .rstn         ( rstn         ),
    .mulaSet      ( mac_mulina      ),
    .mulbSet      ( mac_mulinb      ),
    .mulabSet_val ( mulabSet_val ),
    .macabSet     ( mac_outab     ),
    .macabSet_val_t (macabSet_val_t),
    .macabSet_val  ( macabSet_val  )
);


 MatrixMulAddSet#(
    .PARALLEL_NUM ( 28 )
)u_MatrixMulAddSet(
    .clk     (clk)         , 
    .rstn    (rstn)        ,
    .mulaSet ( mul_mulina ),
    .mulbSet ( mul_mulinb ),
    .addcSet ( mul_addinc ),
    .result  ( mul_out  )
);

 MatrixSubSet#(
    .PARALLEL_NUM ( 4 )
)u_MatrixSubSet(
    .subaSet ( sub_ina ),
    .subbSet ( sub_inb ),
    .subabSet  ( sub_out )
);




control u_control(
    .clk             ( clk             ),
    .rstn            ( rstn            ),
    .sec_lvl         ( sec_lvl         ),
    .opermode        (     mode        ),
    .start           ( start           ),
    .oneinstdone     (oneinstdone)      ,   
    .width448        ( width448)        ,
    .bool            ( bool    )        ,

    .opcode          ( opcode          ),
    .addr_448ram0_o    ( addr_448ram0    ),
    .addr_448ram1_o    ( addr_448ram1    ),
    .addr_64rama0_o    ( addr_64rama0    ),
    .addr_64rama1_o    ( addr_64rama1    ),
    .addr_64ramb0_o    ( addr_64ramb0    ),
    .addr_64ramb1_o    ( addr_64ramb1    ),
    .we_448ram0_o      ( we_448ram0      ),
    .we_448ram1_o      ( we_448ram1      ),
    .we_64rama0_o      ( we_64rama0      ),
    .we_64rama1_o      ( we_64rama1      ),
    .we_64ramb0_o      ( we_64ramb0      ),
    .we_64ramb1_o      ( we_64ramb1      ),
    .shakedone       ( shakedone       ),
    .onehash_val     ( onehash_val     ),
    //.sqzout64_val    ( sqzout64_val    ),
    .sqzout448_val   ( sqzout448_val   ),
    .hash_lvl_o        ( hash_lvl        ),
    .msg_val_o         ( msg_val         ),
    .lastmsg_val_o     ( lastmsg_val     ),
    .indexa_o          ( indexa          ),
    .indexa_val_o      ( indexa_val      ),
    .indexb_o          ( indexb          ),
    .indexb_val_o      ( indexb_val      ),

    .onehash_val_t      (onehash_val_t),

    .sqznum_o          ( sqznum          ),
    .sqzout64_en_o   ( sqzout64_en     ),
    .sqzout448_en_o    ( sqzout448_en    ),
    //.sqz_cnt          (  sqz_cnt),

    .mul_mulinasel   (mul_mulinasel),
  

        //fifo 64-448
    .fifo_wr_en_64_o   (fifo_wr_en_64),
    .last_en_64_o      (fifo_last_en_64),//与最后一个wr_en64同周期
    

        //fifo 448-64
    .fifo_mode_o       (fifo_mode),
    .fifo_wr_en_448_o  (fifo_wr_en_448),
	.fifo_rd_en_64_o   (fifo_rd_en_64),



    //decode
    .decode_ival_o     (decode_msg_val),
    .decode_en_o       (decodeen),


    //pack
    .pack_ival_o       (packIn_val),
	.pack_oval         (packOut_val),

    //unpack
    .unpackIn_val_o    (unpackIn_val),
    .unpackOut_val   (unpackOut_val),


    //encode    
    .encode_msg_val_o(encode_msg_val),     
    .encode_en_o     (encode_en),
    .prefixa_out     (prefixa_r),

    .hashsel448_o    (hashsel448),

    //MAC
    .macabSet_val_t (macabSet_val_t),
    .mulabSet_val    (mulabSet_val),
    .macabSet_val    (macabSet_val),     
    .prefixc_out    (prefixc_out),    
    //.prefixe_out    (prefixe_out),

    .DO_valid       (DO_valid),

    .workdone         (workdone)  
);






endmodule

