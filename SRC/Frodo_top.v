`timescale 1ns / 1ps
module Frodo_top
(   
    //input wire clk_p,
    //input wire clk_n,
    input wire clk,
    input wire rstn,
    input wire buttle,
    input wire swtich,
    output reg [63:0] odata,
    output reg valid,//拉一位数据 
    output oneinstdone
);


reg  [3:0] selmode;




wire [1:0] sec_lvl = selmode[1:0];   
wire [1:0] mode    = selmode[3:2];


wire        workdone;

always@(posedge clk or negedge rstn)begin
    if(!rstn)
        selmode <= 4'b0;
    else if(buttle)    
        selmode <= selmode + 1;
    else
        selmode <= selmode;    
end

//control接线
wire    start = swtich;

assign  opermode = mode;
wire    [3:0] opcode;
wire        width448;
wire        bool    ;
wire        hashsel448;

//hash
wire    burst;

wire    shakedone;
wire    onehash_val;
wire    sqzout64_val;
wire    sqzout448_val;
wire    hash_lvl;
wire    msg_val;
wire    lastmsg_val;
reg     [63:0]  hash_in;
wire    [2:0]   pad;
wire    [8:0]   sqznum;
wire    sqzout64_en;
wire    sqzout448_en;
wire    [63:0]  sqzout64;
wire    [447:0] sqzout448;
wire    [7:0]   indexa;
wire         indexa_val;
wire    [7:0]   indexb;
wire         indexb_val;
wire	[8:0] sqz_cnt;    

wire [1:0]   outen;

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





//伪双端口ram，一个地址专读，一个地址专写；定0读，1写
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

wire [63:0]  din_ram64a0;
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


wire [3:0]   prefixa_r;



//--------------------------------------------------------数据通路连线
    
    //--pack
    reg  [1:0]  packinsel;//01 rama的口1 10fifo64o 11ramb的口1     


    always@(*)begin
        case(packinsel)
            2'b01: packIn = dout_ram64a0;
            2'b10: packIn = fifo_data_64_out;
            2'b11: packIn = dout_ram64b0;
        default:packIn = 2'd0;
        endcase
    end

    //--unpack
    reg        unpackinsel;// 0-64a0 1-64b0  

    always@(*)begin
        case(unpackinsel)
            1'b0: unpackIn = dout_ram64a0;
            1'b1: unpackIn = dout_ram64b0;
        endcase
    end

    //--encode

    assign encode_msg = sqzout64;
             
    //--decode

    assign decode_msg = dout_ram64b1;//!!decode接的口2

    //--sample

    assign smInSet = sqzout64;

    //--fifo
    reg    fifo64sel;//0-unpack 1-sample
    
    always@(*)begin
        case(fifo64sel)
            1'b0:fifo_data_64_in = unpackOut;
            1'b1:fifo_data_64_in = smOutSet;
        endcase    
    end
    
    assign fifo_data_448_in = dout_ram4480;

    //--hash 
    reg    [1:0] hashsel;//00-无 01-fifo64out 10-ram64a 11-ram64b

    always@(*)begin
        case(hashsel)
            2'b01: hash_in = fifo_data_64_out;
            2'b10: hash_in = dout_ram64a0;
            2'b11: hash_in = dout_ram64b0;
        default:hash_in = 64'd0;
        endcase    
    end
    
    //----矩阵附属处理+接线
        /*
            mac单元输入能接口1的都接口1
        */
        //--内积单元
    wire  [28*16-1:0] mac_mulina;
	wire  [28*16-1:0] mac_mulinb;
    wire mulabSet_val;
	wire [63:0] mac_outab;
	wire macabSet_val;

    reg mac_mulinasel;//1-hash448 0-ram448口2

    assign mac_mulina = mac_mulinasel ? sqzout448 : dout_ram4481;
    assign mac_mulinb = dout_ram4480;

        //--外积单元(并非)
    reg [16-1:0]     mul_mulina;
    wire [28*16-1:0] mul_mulinb;
	wire [28*16-1:0] mul_addinc;
    wire [28*16-1:0] mul_out;

    wire  [1:0] mul_mulinasel;
    reg   [1:0] mul_mulinasel_r;  
    reg        mul_mulsel;//mulin 1 - hash448 0-ram64a口1
                          //addin 1-  ram448  0-ram64a口2
    
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            mul_mulinasel_r <= 1'b0;
        else
            mul_mulinasel_r <= mul_mulinasel;    
    end

  
    
    always@(*)begin
        case(mul_mulinasel_r)
            2'b00: mul_mulina = dout_ram64b0[63:48];
            2'b01: mul_mulina = dout_ram64b0[47:32];
            2'b10: mul_mulina = dout_ram64b0[31:16];
            2'b11: mul_mulina = dout_ram64b0[15:0];
        endcase
    end

    assign mul_mulinb = mul_mulsel ? sqzout448 : {dout_ram64a0,384'd0};
    
    assign mul_addinc = mul_mulsel ? dout_ram4480 : {dout_ram64a1,384'd0};

        //--加法单元
    wire [16*4-1:0] add_ina;
    wire [16*4-1:0] add_inb;
    wire [16*4-1:0] add_out;

    reg  add_insel;//in0 1-ASE 0-encodeu
                   //in1 1-ram64a口1 0-encode 
    assign add_ina = add_insel ? mac_outab : smOutSet;
    assign add_inb = add_insel ? dout_ram64a0 : encodeOut;  


        //减法单元
    wire [4*16-1:0] sub_ina;
    wire [4*16-1:0] sub_inb;
    wire [4*16-1:0] sub_out;

    assign sub_ina = mac_outab;
    assign sub_inb = dout_ram64a0;
    
    //----ram数据连线(只关心入口，出口上面都处理得了)


    assign din_ram4480 = fifo_data_448_out;
    assign din_ram4481 = mul_out;

    reg         din_ram64a0sel;//1 - unpack 0-pack
    reg [1:0]   din_ram64a1sel;    
    
    assign  din_ram64a0 = din_ram64a0sel ? unpackOut :  packOut;
    
    always@(*)begin
        case(din_ram64a1sel)
            2'b00:din_ram64a1 = sqzout64;
            2'b01:din_ram64a1 = smOutSet;
            2'b10:din_ram64a1 = sub_out;
            2'b11:din_ram64a1 = add_out;
        endcase
    end

    reg [1:0]  din_ram64b0sel;
    reg [1:0]  din_ram64b1sel;

    always@(*)begin
        case(din_ram64b0sel)
            2'b00:din_ram64b0 = encodeOut;
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
            2'b11:din_ram64b1 = encodeOut;
        endcase
    end



    always@(*)begin
        odata = 64'd0;
        if(outen[0])begin
            odata = din_ram64a1;
            valid = 1'b1;
        end
        else if (outen[1])begin   
             odata = din_ram64b1;  
             valid = 1'b1;  
        end
    end

    //通路解码控制器
    always@(*)begin
        packinsel = 2'b00;
        unpackinsel = 1'b0;
        fifo64sel = 1'b0;
        hashsel = 2'b00;
        mac_mulinasel = 1'b0;
        mul_mulsel    = 1'b0;
        add_insel     = 1'b0;
        din_ram64a0sel = 1'b0;
        din_ram64a1sel = 2'b00;
        din_ram64b0sel = 2'b00;
        din_ram64b1sel = 2'b00;
        case(opcode)
            4'b0001:begin 
                din_ram64b0sel = 2'b11;//decode输出接ram64b入口1         
            end
            4'b0010:begin
                if(width448)begin
                    packinsel = 2'b10;
                    din_ram64b0sel = 2'b10;
                end
                else if(bool)
                    packinsel = 2'b11;
                else if(!bool)    
                    packinsel = 2'b01;
                    din_ram64b0sel = 2'b10;
            end
            4'b0011:begin
                if(width448)begin
                    unpackinsel = 1'b1;
                end
                else if(bool)begin
                    unpackinsel = 1'b1;
                    din_ram64a0sel = 1'b1;
                end
                else begin
                    unpackinsel = 1'b0;
                    din_ram64b0sel = 2'b01;
                end
            end
            4'b0100:begin  
                if(bool)begin
                   hashsel = 2'b10;
                end
                else begin
                    hashsel = 2'b11;        
                end   
                end
            4'b0101:begin
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
                din_ram64a1sel = 2'b11;
                fifo64sel = 1'b1;    
                din_ram64b1sel = 2'b11;
                if(prefixa_r[2])begin
                   hashsel = 2'b11;
                end
                else
                   hashsel = 2'b10;       
                end
            4'b1000:begin
                mac_mulinasel = 1'b1;
                add_insel     = 1'b1;
                hashsel       = 2'b10;
                din_ram64a1sel= 2'b11;
            end
            4'b1001:begin
                mul_mulsel    = 1'b1;
                hashsel       = 2'b10;
            end
            4'b1010:begin
                mac_mulinasel = 1'b1;
                add_insel     = 1'b1;
                hashsel       = 2'b10;
                din_ram64a1sel= 2'b11;
            end
            4'b1011:begin
                din_ram64b1sel = 2'b10;
            end
        endcase
    end


//========================================================模块回传打拍信号




//--------------------------------------------------------数据遍历对比部分控制




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
    .lastmsg_val   ( lastmsg_val   ),
    .indexa        ( indexa        ),
    .indexa_val    ( indexa_val    ),
    .indexb        ( indexb        ),
    .indexb_val    ( indexb_val    ),
    .padflag       ( 3'b111        ),
    .sqzcnt        ( sqznum        ),
    .onehash_val   ( onehash_val   ),
    .sqzout64_en   ( sqzout64_en   ),
    .sqzout64      ( sqzout64      ),
    .sqzout64_val  ( sqzout64_val  ),
    .sqzout448_en  ( sqzout448_en  ),
    .sqzout448     ( sqzout448     ),
    .sqzout448_val ( sqzout448_val ),
    .sqz_cnt_o     (sqz_cnt),
     .burst           (burst)   ,
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
    .result_r  ( mul_out  )
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
    .outen           (outen)            ,

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
    //.pad             ( pad             ),
    .sqznum_o          ( sqznum          ),
    .sqzout64_en_o   ( sqzout64_en     ),
    .sqzout448_en_o    ( sqzout448_en    ),
    .sqz_cnt          (  sqz_cnt),
    .burst           (burst)   ,
    .mul_mulinasel   (mul_mulinasel),
  

        //fifo 64-448
    .fifo_wr_en_64_o   (fifo_wr_en_64),
    .last_en_64_o      (fifo_last_en_64),//与最后一个wr_en64同周期
    .fifo_448_out_val(fifo_data_448_out_val),    

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
    .encode_msg_val  (encode_msg_val),     
    .encode_en       (encode_en),
    .encodeOut_val   (encodeOut_val), 
    .prefixa_r       (prefixa_r),

    .hashsel448      (hashsel448),

    .mulabSet_val    (mulabSet_val),
    .macabSet_val    (macabSet_val),     

    .workdone         (workdone)  
);






endmodule

