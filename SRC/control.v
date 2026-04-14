`timescale 1ns / 1ps
//内嵌 inst rom 输出指令 控制指令的跳转
module control (
    input               clk,
    input               rstn,
    output      [1:0]   outen           ,
    input       [1:0]   sec_lvl         ,
    input       [1:0]   opermode        ,   

    input               start           ,
    output              workdone        ,
    output              oneinstdone     ,
    output  [3:0]       opcode          ,
    output              width448        ,
    output              bool            ,

    output  reg [9:0]       addr_448ram0_o    ,
    output  reg [9:0]       addr_448ram1_o    ,
    output  reg [11:0]      addr_64rama0_o    ,
    output  reg [11:0]      addr_64rama1_o    ,  
    output  reg [11:0]      addr_64ramb0_o    ,
    output  reg [11:0]      addr_64ramb1_o    ,

    output  reg             we_448ram0_o       ,
    output  reg             we_448ram1_o       , 
    output  reg             we_64rama0_o       ,
    output  reg             we_64rama1_o       ,                            
    output  reg             we_64ramb0_o       ,
    output  reg             we_64ramb1_o       ,


    //hash(64oval不接线直接延时模拟)
    //    (hash的设计实际不需要连padflag，直连111)  
          
	input               shakedone       ,//总hash做完
    input               onehash_val     ,//一次keccak做完//当输出整体延迟后，会不会导致直接shakedone呢
    //input               sqzout64_val    ,
    input               sqzout448_val   ,   
    output reg          hash_lvl_o        ,	
	output reg          msg_val_o         ,
	output reg          lastmsg_val_o     ,
	output reg  [7:0]   indexa_o          ,
	output reg          indexa_val_o      ,
	output reg  [7:0]   indexb_o          ,
	output reg          indexb_val_o      ,
	//output     [2:0]    pad             ,
    output reg [8:0]    sqznum_o          ,
	output reg          sqzout64_en_o     ,

	output              sqzout448_en_o   ,//等待特殊修改
    
    input      [8:0]    sqz_cnt          ,//用于给mac所用而添加的计数器
    output              burst            ,//     
    //fifo    
        //fifo 448-64(64oval不接线，直接用计数器模拟)
        //(full/empty不接线。直接用计数器模拟)    
    output reg          fifo_mode_o       ,
    output reg          fifo_wr_en_448_o  ,
	output reg          fifo_rd_en_64_o   ,
        //fifo 64-448
        //（fifo_448_out_val接线，无法直接用计数器模拟，在模块中修改，让其提前一周期产生）
    output reg          fifo_wr_en_64_o   ,
    output reg          last_en_64_o      ,//与最后一个wr_en64同周期
    input               fifo_448_out_val  ,


    //decode（oval不需要接线）
    output reg          decode_ival_o     ,
    output reg          decode_en_o       ,


    //pack
    output reg          pack_ival_o     ,
	input               pack_oval       ,
    

    //unpack
    output reg          unpackIn_val_o  ,
    input               unpackOut_val   ,



    //encode
    output              encode_msg_val  ,
    output              encode_en       ,
    input               encodeOut_val   ,

    //MAC控制相关信息
    output reg          mulabSet_val    ,
    input               macabSet_val    ,          
    output   [1:0]      mul_mulinasel   ,              


    output reg  [3:0]   prefixa_r       ,//用于hash输入中各种端口的判断(本身寄存器)
    output reg          hashsel448      ,//用于长吸收中控制hash输入端口(本身寄存器)

 

    output              work_done//一个算法结束
    
    );

//----------------------------------------------打拍源信号+通过寄存器模拟出的模块状态信号定义
    //decode
wire    decode_ival;
wire    decode_en;
    //pack    
reg     pack_ival;
    //fifo448-64
    wire    fifo_64_out_val;    
    wire    full448;
    wire    empty_64;
reg    fifo_wr_en_448;
reg    fifo_rd_en_64;
wire    fifo_mode;
    //unpack
wire    unpackIn_val;
    //fifo 64-448
reg fifo_wr_en_64;
reg last_en_64;   
    //hash
wire    sqzout64_val = sqzout64_en; 
wire              hash_lvl;	
reg               msg_val;
wire              lastmsg_val;
reg  [7:0]        indexa;
wire              indexa_val;
reg  [7:0]        indexb;
wire              indexb_val;
wire [8:0]        sqznum;
reg               sqzout64_en;






wire  [9:0]       addr_448ram0    ;
wire  [9:0]       addr_448ram1    ;
wire  [11:0]      addr_64rama0    ;
wire  [11:0]      addr_64rama1    ;  
wire  [11:0]      addr_64ramb0    ;
wire  [11:0]      addr_64ramb1    ;

wire               we_448ram0      ;
wire               we_448ram1      ; 
wire               we_64rama0      ;
wire               we_64rama1      ;                            
wire               we_64ramb0      ;
wire               we_64ramb1      ;




always@(posedge clk or negedge rstn)begin
    if(!rstn)begin 
        addr_448ram0_o    <= 10'd0;
        addr_448ram1_o    <= 10'd0;
        addr_64rama0_o    <= 12'd0;
        addr_64rama1_o    <= 12'd0;
        addr_64ramb0_o    <= 12'd0;
        addr_64ramb1_o    <= 12'd0;
        we_448ram0_o      <= 1'd0;
        we_448ram1_o      <= 1'd0;
        we_64rama0_o      <= 1'd0;
        we_64rama1_o      <= 1'd0;                           
        we_64ramb0_o      <= 1'd0;
        we_64ramb1_o      <= 1'd0;
    end
    else begin   
        addr_448ram0_o    <=    addr_448ram0;
        addr_448ram1_o    <=    addr_448ram1;
        addr_64rama0_o    <=    addr_64rama0;
        addr_64rama1_o    <=    addr_64rama1;
        addr_64ramb0_o    <=    addr_64ramb0;
        addr_64ramb1_o    <=    addr_64ramb1;
        we_448ram0_o       <=   we_448ram0;
        we_448ram1_o       <=   we_448ram1;
        we_64rama0_o       <=   we_64rama0;
        we_64rama1_o       <=   we_64rama1;                           
        we_64ramb0_o       <=   we_64ramb0;
        we_64ramb1_o       <=   we_64ramb1;
    end
end



//----------------------------------------------
/////FSM常量组 
    parameter WAIT   = 4'b0000;
    parameter DECODE = 4'b0001;
    parameter PACK   = 4'b0010;
    parameter UNPACK = 4'b0011;
    parameter ABS448 = 4'b0100;
    parameter ABS    = 4'b0101;
    parameter RUN    = 4'b0110;
    parameter SQZ    = 4'b0111; 
    parameter MAT64  = 4'b1000;
    parameter MAT448 = 4'b1001;
    parameter MATEpp = 4'b1010;
    parameter MAC0   = 4'b1011;      
    parameter MAC1   = 4'b1100; 
    parameter BUFF   = 4'b1101;
    parameter DIO    = 4'b1110;   
    parameter DONE   = 4'b1111;

    
    reg     [3:0]  substate,substate_nxt;
   
    assign oneinstdone = substate == DONE;

//=====================================================================放置在最前的信号定义==============================================================
    
    //解码器
    wire        en      =  start;               //第一条指令运行使能（启动使能）外部来      
    wire        ex_done = (substate == DONE);   //运算工作结束,解码器开始工作   
    wire        encode_done;                    //解码工作结束，外部状态机接管
    //wire        workdone   ;                    //一个算法块结束
    
    //配置寄存器
    wire [35:0] inst_all   ;
    //wire [3:0]  opcode     ;
    //wire        width448   ;
    wire [2:0]  addr_num   ;                    //共有几个地址
    wire [2:0]  paralell   ;                    //共有几个流动地址
    wire [2:0]  rd_num     ;                    //吸收地址有几个
    //wire [2:0]  pad        ;                    //填充指示(实际常年111)
    wire [8:0]  string0    ;                    //特殊位置处理标记
    wire [8:0]  skips_o    ;
    wire [8:0]  skipe_o    ;
    wire [11:0] loopamax   ; 
    wire [11:0] loopimax   ;
    wire [11:0] loopjmax   ;
    wire [11:0] loopkmax   ;
    wire [3:0]  prefixa    ;
    wire [3:0]  prefixb    ;
    wire [3:0]  prefixc    ;
    wire [3:0]  prefixd    ;
    wire [3:0]  prefixe    ;   
    wire [11:0] ADDRa_base ;
    wire [11:0] ADDRb_base ;
    wire [11:0] ADDRc_base ;
    wire [11:0] ADDRd_base ;
    wire [11:0] ADDRe_base ;
    //agu相关信号
    wire [11:0] ADDRa     ;
    wire [11:0] ADDRb     ;
    wire [11:0] ADDRc     ;
    wire [11:0] ADDRd     ; 
    wire [11:0] ADDRe     ; 

    wire    [1:0]     selhelper;

    wire        loopafull ;
    wire        loopifull ;
    wire        loopjfull ;
    wire        loopkfull ;
    //仲裁相关信号
    reg          wea       ;     
    reg          web       ;
    reg          wec       ;
    reg          wed       ;
    reg          wee       ; 


    wire        ADDR_clra  ;                 //所有地址a相关寄存器的清零信号
    wire        ADDR_clrbcd;         
    reg          mac_en    ;                 //矩阵计算使能
    reg  [1:0]  macmode   ;                 //矩阵运算模式(很重要，正常运算换到低位0)

    

    //核心控制信号与对应延迟信号
    reg addr_load;//组合逻辑
    reg addr_load_r;
    reg addr_load_r_r;

    reg addra_add;//组合逻辑
    reg addra_add_r;//实际作为rdata_r使用
    reg addra_add_r_r;
    reg addrd_add;//同上
    reg addrd_add_r;//同上


    reg fifo_rd_en_64_r;

    reg loopifullflag;
        

    
    reg loopafull_r;
    reg loopafull_r_r;
    
    reg loopjfull_r;
    reg loopkfull_r;  
    reg loopifull_r;
    reg last_en_64_r;
    reg mac_en_r;



    //------各种辅助计数器与辅助标志
    wire      sqzout448_en;
    assign    sqzout448_en_o = sqzout448_en && !burst;   
        //--地址计数器
    reg [2:0] addr_cnt;//流动地址a的计数器
    wire      addr_run_cnt_clr;
        //--hash部分
    reg        msg_val_flag;//为index创造脉冲条件    
    reg [4:0]  hashincnt;//hash输入数据计数器
    wire [4:0] hashincntmax;
    reg [15:0] indexacnt;//indexa输入计数器
    reg [1:0]  indexmode;//控制index的模式 00-无 01-indexa 10-indexb 5f 11-indexb- 
    reg [4:0]  hash64outcnt;
    reg [2:0]  hash448outcnt;//控制在矩阵运算模式下的自动输出
    wire[4:0]  hash64outmax;      
        //fifo448-64气泡时序辅助计数器
    reg [2:0] fifo64cnt;
    reg [5:0] fifobubble0; 
    reg [5:0] fifobubble;
        //decode计数器
    reg [3:0] decode16incnt;
    reg [1:0] decode4outcnt;
    reg [1:0] decodeflag;
    reg [1:0] decode4outcntmax;  
        //unpack计数器
    reg [3:0] unpackcnt;
        //fifo64-448辅助计数器
    reg [3:0] fifo448cnt;
        //fifo448-64辅助计数器
    reg [4:0] fifobubble1;    
        //采样矩阵填充辅助计数器
    reg [5:0] samplepadcnt;     
        //decode辅助计数器
    reg [1:0] encodeincnt;       
        //矩阵运算1辅助计数器
    reg [4:0] Matrixcnt0;

    

//=====================================================================整体用到的控制信号================================================================
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            addr_cnt <= 3'd0;
        else if(addr_load && substate != WAIT)
            addr_cnt <= addr_cnt + 1'b1;
        else if((substate == MAC0) && loopjfull_r)
            addr_cnt <=  3'd0;
        else if(substate == DONE)
            addr_cnt <= 3'd0;        
        else
            addr_cnt <= addr_cnt;
    end    

    assign addr_run_cnt_clr = ((substate == MAC0) && loopjfull_r);//用于给解码器传信号，在矩阵运算中让loopmax回归正常值

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            //地址部分
            addra_add_r <= 1'b0;
            addra_add_r_r <= 1'b0;
            addrd_add_r <= 1'b0;
            loopafull_r <= 1'b0;
            loopafull_r_r <= 1'b0;
            loopjfull_r <= 1'b0;
            loopkfull_r  <= 1'b0;
            addr_load_r_r <= 1'b0;
            //fifo参与部分
            fifo_rd_en_64_r <= 1'b0;
            //hash参与部分
            hash_lvl_o	    <=  1'b0;	        
            msg_val_o       <=  1'b0;   
            lastmsg_val_o   <=  1'b0;
            indexa_o        <=  8'b0;     
            indexa_val_o    <=  1'b0; 
            indexb_o        <=  8'b0;     
            indexb_val_o    <=  1'b0; 
            sqznum_o        <=  9'b0;     
            sqzout64_en_o   <=  1'b0;


            //其他部分
            last_en_64_r <= 1'b0;
            prefixa_r    <= 1'b0;
            addr_load_r  <= 1'b0;
  

            loopifull_r  <= 1'b0;
            mac_en_r     <= 1'b0;

            
        end
        else begin
            //地址部分
            addra_add_r <= addra_add;
            addra_add_r_r <= addra_add_r;
            addrd_add_r <= addrd_add;
            loopafull_r <= loopafull;
            loopafull_r_r <= loopafull_r;
            addr_load_r  <= addr_load;
            addr_load_r_r <= addr_load_r;
            //fifo参与部分
            fifo_rd_en_64_r <= fifo_rd_en_64;
            //hash参与部分
            hash_lvl_o	    <=  hash_lvl   ; 
            msg_val_o       <=  msg_val    ;
            lastmsg_val_o   <=  lastmsg_val;
            indexa_o        <=  indexa     ;
            indexa_val_o    <=  indexa_val ;
            indexb_o        <=  indexb     ;
            indexb_val_o    <=  indexb_val ;
            sqznum_o        <=  sqznum     ;
            sqzout64_en_o   <=  sqzout64_en;
            
            
            
            //其他部分
            
            loopjfull_r <= loopjfull;
            last_en_64_r <= last_en_64;
            prefixa_r    <= prefixa;
           
            loopkfull_r  <= loopkfull;

            loopifull_r  <= loopifull;
            mac_en_r     <= mac_en;

            
        end
    end

   
    //似乎用于矩阵控制部分
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            loopifullflag <= 1'b0;
        else if(loopifull)
            loopifullflag <= 1'b1;
        else if(substate == DONE || substate == WAIT)
            loopifullflag <= 1'b0; 
        else
            loopifullflag <= loopifullflag;    
    end

    //用于长吸收中hash的端口选择
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            hashsel448 <= 1'b0;
        else if(addr_cnt == 3'd1 && empty_64 && width448)
            hashsel448 <= 1'b1;
        else if(substate == DONE)
            hashsel448 <= 1'b0;
        else
            hashsel448 <= hashsel448;    
    end 
 

         

//=====================================================================hash的控制=======================================================================
    //wire   burst;
    assign burst = 1'B0;
    
    //reg      hash_lvl;//0-128 1-256
   
    assign hash_lvl = (sec_lvl == 2'b00) || (opcode == 4'b1000) || (opcode == 4'b1001) ? 1'b0 : 1'b1;

    assign hashincntmax = hash_lvl ? 5'd16 : 5'd20;
    
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            hashincnt <= 5'd0;
        else if(msg_val)
            hashincnt <= hashincnt + 1'b1;
        else if(substate_nxt == RUN )
            hashincnt <= 5'd0;
        else        
            hashincnt <= hashincnt;
    end

    //==================================================hash输入部分

    always@(*)begin
        case(substate)
            ABS:begin
                msg_val = addra_add_r_r || addr_load_r_r;//可以支持矩阵运算中的msg_val，其load不会拉高
            end
            ABS448:begin
                msg_val = fifo_64_out_val && !(fifo64cnt == 3'd0 && fifobubble == 3'd00 && sec_lvl[0]);
            end
            default:msg_val = 1'b0;
        endcase
    end


    assign lastmsg_val = (opcode == 4'b1000 || opcode == 4'b1001)  ?  (msg_val && loopafull)   : (addr_cnt == rd_num) && loopafull_r_r; //区分在矩阵运算下的数据
    
    
    //==============================================hash输入前缀
    always@(*)begin
        case(opcode)
            4'b0111: indexmode =2'b01;//生成S’ E'
            4'b0110: indexmode =2'b11;//生成SE
            4'b1000: indexmode =2'b01;//生成矩阵
            4'b1001: indexmode =2'b01;//生成矩阵
            default:indexmode = 2'b00;//对应正常状态
        endcase
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            indexacnt <= 16'd0;
        else if(lastmsg_val)
            indexacnt <= indexacnt + 1'b1;
        else if(substate == DONE)
            indexacnt <= 16'd0;
        else 
            indexacnt <= indexacnt;                    
    end

    always@(*)begin
        case(indexmode)
            2'b00: begin indexa =  8'd0;            indexb = 8'd0;              end//对应正常状态
            2'b01: begin indexa =  indexacnt[7:0];  indexb = indexacnt[15:8];   end//矩阵运算
            2'b10: begin indexa =  8'h5f;           indexb = 8'd0;              end//SE生成
            2'b11: begin indexa =  8'h96;           indexb = 8'd0;              end//S'E‘生成
        endcase
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            msg_val_flag <= 1'b0;
        else if(msg_val)    
            msg_val_flag <= 1'b1;
        else if(substate == RUN)
            msg_val_flag <= 1'b0;
        else
            msg_val_flag <= msg_val_flag;                           
    end

    assign indexa_val = !msg_val_flag && msg_val && indexmode;
    assign indexb_val = !msg_val_flag && msg_val && indexmode == 2'b01;
    

    //=============================================================================64out
    assign hash64outmax = sec_lvl == 2'b00 ? 5'd17:5'd21; 


    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            hash64outcnt <= 5'd0;
        else if(sqzout64_en)
            hash64outcnt <= hash64outcnt + 1'b1;
        else if(onehash_val) 
            hash64outcnt <= 5'd0;
        else if(substate == DONE)
            hash64outcnt <= 5'd0;
        else
            hash64outcnt <= hash64outcnt;        
        end


  

    always@(*)begin
        sqzout64_en = 1'b0;
        case(substate)
            SQZ:sqzout64_en = !onehash_val && hash64outcnt != hash64outmax && addr_cnt < addr_num;
            MAT64:sqzout64_en = !onehash_val && hash64outcnt != hash64outmax;
            MAT448:sqzout64_en = !onehash_val && !last_en_64_r && !addr_load && hash64outcnt != hash64outmax;
            MATEpp:sqzout64_en = !onehash_val && hash64outcnt != hash64outmax;
        endcase
    end

    //=============================================================================448out
    
    always@(posedge clk or negedge rstn)begin//让448数据自动输出
        if(!rstn)
            hash448outcnt <= 3'd0;
        else if((substate == MAC0) && !onehash_val)begin
            if(hash448outcnt == 3'd7)
                hash448outcnt <= 3'd0;
            else
                hash448outcnt <= hash448outcnt + 1'b1;        
        end
        else if((substate == ABS) || (substate == DONE))
            hash448outcnt <= 3'd0;
        else
            hash448outcnt <= hash448outcnt;                      
    end

    assign sqzout448_en = (substate == MAC0) && hash448outcnt == 3'd7; 

//=====================================================================fifo64-448的控制=================================================================
    reg fifo_448outvalflag;//配合模拟448的outval信号，由于val信号出现在cnt=0处，必须额外有个态信号指示

    wire [5:0] fifobubblemax = sec_lvl == 2'b00 ? 6'd22 : 6'd34; 
    
    

    always@(*)begin
        fifo_wr_en_64 = 1'b0;
        last_en_64 = 1'b0;        
        if(substate == UNPACK && width448)begin
            fifo_wr_en_64 = unpackOut_val;
            last_en_64 = fifobubble1 == 5'd22 && fifo448cnt == 3'd5 ; 
        end
        else if(substate == MAT448)begin
            fifo_wr_en_64 = sqzout64_val  && !last_en_64;
            last_en_64 = fifo_wr_en_64 && (fifobubble == 6'd34);          
        end
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            fifo_448outvalflag <= 1'd0;
        else if(substate == WAIT)
            fifo_448outvalflag <= 1'd0;
        else if(fifo448cnt == 3'D5)
            fifo_448outvalflag <= 1'd1;
        else
            fifo_448outvalflag <= fifo_448outvalflag;             
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            fifo448cnt <= 3'd0;
        else if(fifo_wr_en_64)begin
            if(last_en_64)
                fifo448cnt <= 3'd0;
            else if(fifo448cnt == 3'd6)
                fifo448cnt <= 3'd0;
           else
                fifo448cnt <= fifo448cnt + 1'b1;         
        end
        else
            fifo448cnt <= fifo448cnt;             
    end


    //这里放置填充计数器逻辑
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            fifobubble1 <= 5'd0;
        else if(addrd_add)begin
            if(fifobubble1 == 5'd22)
                fifobubble1 <= 5'd0;
            else
            fifobubble1 <= fifobubble1 + 1'b1;
        end
        else if(substate == DONE)
            fifobubble1 <= 5'd0;
        else
            fifobubble1 <= fifobubble1;                                
    end


    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            samplepadcnt <= 5'd0;
        else if(last_en_64)
            samplepadcnt <= 5'd0;
        else if(addrd_add)
            samplepadcnt <= samplepadcnt + 1'b1;
        else if(substate == DONE)
            samplepadcnt <= 5'd0;
        else
            samplepadcnt <= samplepadcnt;                                
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            fifo_wr_en_64_o <= 1'b0;
            last_en_64_o    <= 1'b0;
        end
        else begin
            fifo_wr_en_64_o <= fifo_wr_en_64;
            last_en_64_o    <= last_en_64;
        end
    end

 


//=====================================================================fifo448-64(用于pack和hash中使用)=================================================================
    assign fifo_mode =(substate == MAT448)||(substate == UNPACK && width448) ;//只有在64-448时需要置1，采样448矩阵，unpack448矩阵

    //用辅助计数器模拟oval
    always@(posedge clk or negedge rstn)begin//fifo 448 -64 辅助计数器
        if(!rstn)
            fifo64cnt <= 3'd0;
        else if(fifo_wr_en_448 || fifo_rd_en_64)begin
            if(fifo64cnt == 3'd7)
                fifo64cnt <= 3'd0;
            else
                fifo64cnt <= fifo64cnt + 1'b1;           
        end
        else if(substate == DONE)
            fifo64cnt <= 3'd0;
        else
            fifo64cnt <= fifo64cnt;            
    end

    assign fifo_64_out_val = fifo_rd_en_64_r;
    assign full448         = !empty_64;
    assign empty_64        = fifo64cnt == 3'd0;



    always@(*)begin
        fifo_wr_en_448 = 1'b0;
        fifo_rd_en_64 = 1'B0;
        if((substate == PACK && width448 ))begin//不论有无气泡，fifo行为正常，仅是ram是否接受气泡数据
                fifo_wr_en_448 = addra_add;     //控制ram的we和addr即可
                fifo_rd_en_64 = full448;    
        end
        else if(substate == ABS448)begin
                fifo_wr_en_448 = addra_add;
                fifo_rd_en_64  = full448 && !((hashincnt == hashincntmax) && addra_add_r);
        end
    end


    always@(posedge clk or negedge rstn)begin//用于976级别的 448 - FIFO - 64 - msgval
        if(!rstn)
            fifobubble <= 6'd0;
        else if(addra_add)begin 
            if(fifobubble == 6'd34)
                fifobubble <= 6'd0;
            else
                fifobubble <= fifobubble + 1'b1;
        end
        else if(substate == DONE)
            fifobubble <= 6'd0;
        else
            fifobubble <= fifobubble;       
    end  


    //用于640级别的 448 - FIFO - 64 - pack
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            fifobubble0 <= 6'd0;
        else if(addra_add)begin 
            if(fifobubble0 == 6'd22)//一行输出28个，当第22个时触碰到气泡
                fifobubble0 <= 6'd0;
            else
                fifobubble0 <= fifobubble0 + 1'b1;
        end
        else if(substate == DONE)
            fifobubble0 <= 6'd0;
        else
            fifobubble0 <= fifobubble0;       
    end



   always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            fifo_mode_o     <= 1'b0;    
            fifo_wr_en_448_o<= 1'b0; 
            fifo_rd_en_64_o <= 1'b0; 
        end
        else
            begin
            fifo_mode_o     <= fifo_mode     ;    
            fifo_wr_en_448_o<= fifo_wr_en_448; 
            fifo_rd_en_64_o <= fifo_rd_en_64 ; 
        end       
    end

//=====================================================================encode的控制=================================================================
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            encodeincnt <= 2'd0;
        else if(encode_msg_val)
            encodeincnt <= encodeincnt + 1'b1;
        else if(substate == DONE)
            encodeincnt <= 2'd0;
        else
            encodeincnt <= encodeincnt;                    
    end

    assign encode_msg_val = substate == MAT64 ? addrd_add : 1'b0;

    assign encode_en = substate == MAT64 ? sqzout64_val : 1'b0;




//=====================================================================decode的控制=================================================================
    assign decode_ival = (substate == DECODE) && addra_add_r_r;
    assign decode_en   = (substate == DECODE) && addrd_add;


    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            decode_ival_o   <= 1'd0;
            decode_en_o     <= 1'd0;
        end
        else begin
            decode_ival_o   <= decode_ival;
            decode_en_o     <= decode_en;
        end
    end
//=====================================================================pack的控制=================================================================
    always@(*)begin
       pack_ival = 1'b0;
       if(substate == PACK)begin
            if(width448)
                pack_ival =  fifo_rd_en_64_r && !(fifo64cnt == 3'd0 && fifobubble0 == 6'd0);     
            else
                pack_ival = addra_add_r_r;
       end
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            pack_ival_o <= 1'b0;
        end
        else begin
            pack_ival_o <= pack_ival;
        end
    end


//=====================================================================unpack的控制=================================================================
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            unpackcnt <= 4'd0;
        else if(unpackcnt == 4'd15)
            unpackcnt <= 4'd0;
        else if(unpackIn_val)begin
            unpackcnt <= unpackcnt + 1'b1;        
        end
        else
            unpackcnt <= unpackcnt;                
    end

    assign  unpackIn_val =  addra_add_r_r && substate == UNPACK;


    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            unpackIn_val_o <= 1'b0;
        end
        else begin
            unpackIn_val_o <= unpackIn_val;
        end
    end

//=====================================================================地址的控制=================================================================

    assign ADDR_clra = (opcode == 4'b1000 || opcode == 4'b1001) ? (substate == RUN)   : (addr_load || substate == DONE);//增加判断opcode，当用于矩阵运算,load无信号，单独定义在RUN中让信号拉高
    assign ADDR_clrbcd = substate == DONE;//运行过程中其他地址不需要清0

    
    always@(*)begin
            addr_load = 1'b0;
            case(substate)
                DECODE:addr_load = 1'b0;
                PACK:addr_load = 1'b0;
                ABS448:addr_load = loopafull && fifo64cnt == 3'd7;
                ABS:addr_load =  (loopafull && hashincnt != hashincntmax);//增加判断opcode，当用于矩阵运算，addrload不能拉高，否则会addr_cnt + 1,seeda的addrbase消失 
                RUN:addr_load = 1'B0;    
                DONE:addr_load = loopafull;
                WAIT:addr_load = loopafull;
                SQZ:addr_load  = loopafull;
                MAT64:addr_load  = loopafull && addra_add;
                MAT448:addr_load  = loopafull;
                MATEpp:addr_load  = loopafull;
            endcase
    end


    always@(*)begin
        addra_add = 1'b0;
        wea       = 1'b0;
        case(substate)
            DECODE:
                addra_add = !loopafull;
            PACK:begin
                if(width448)
                    addra_add =  empty_64 && !loopafull;
                else
                    addra_add = !loopafull;
            end
            ABS:begin
                if(width448)
                    addra_add = fifo_64_out_val;     
                else
                    addra_add = addr_cnt < rd_num && hashincnt != hashincntmax && !loopafull;
                end
            UNPACK:begin
                    addra_add = !loopafull &&  unpackcnt != 4'd13;        
            end
            SQZ:begin
                    addra_add = sqzout64_val && addr_cnt < addr_num;
                    wea       = addra_add;
            end 
            MAT64:begin
                    addra_add = sqzout64_val ;
                    wea       = addra_add;
            end
            MATEpp:begin
                    addra_add = sqzout64_val ; 
                    wea       = addra_add;
            end
            MAT448:begin
                    addra_add =  fifo_448_out_val; 
                    wea       = addra_add;
            end
            ABS448:begin
                    addra_add = empty_64;
                end
        endcase        
    end

    always@(*)begin
        addrd_add = 1'b0;
        wed       = 1'b0;
        case(substate)
            DECODE:begin
                addrd_add = !loopjfull && loopafull_r_r;
                wed       = addrd_add;
            end
            PACK:begin
                    addrd_add = pack_oval;
                    wed       = addrd_add;
            end
            UNPACK:begin
                if(width448)begin
                    addrd_add = fifo_448_out_val;
                    wed       = addrd_add;
                end 
                else begin
                    addrd_add = unpackOut_val;
                    wed       = addrd_add;
                end        
            end    
            MAT64:begin
                    addrd_add = encodeincnt != decode4outcntmax;
            end
        endcase        
    end


    always@(*)begin  
        web = 1'b0;
    end

    always@(*)begin 
        wec = 1'b0;
    end

    always@(*)begin
        wee = 1'b0;
        case(opcode)
            4'b1000:wee = macabSet_val;
            4'b1001:wee = mac_en_r;
            4'b1010:wee = macabSet_val;
            4'b1011:wee = mac_en_r;
        endcase
    end

//=====================================================================MAC组件的控制===============================================================

    always@(*)begin
        case(opcode)
            4'b1000:macmode = 2'b00;
            4'b1001:macmode = 2'b01;
            4'b1010:macmode = 2'b10;
            4'b1011:macmode = 2'b11;
            default:macmode = 2'b00;
        endcase
    end
    
    //mac使能需要比提前一个周期sqz448数据出现，对于绕回到ABS的情况，还需要考虑停止的位置
    //还得考虑在onehashval中的停留
    
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            Matrixcnt0 <= 5'd0;
        else if(Matrixcnt0 == 5'd24)
            Matrixcnt0 <= 5'd0;
        else if(mac_en)
            Matrixcnt0 <= Matrixcnt0 + 1'b1;
        else if(substate == DONE || substate == ABS)
            Matrixcnt0 <=5'd0;
        else
            Matrixcnt0 <= Matrixcnt0;               
    end
    
    
    always@(*)begin
        mac_en = 1'b0;
        case(opcode)
            4'B1000:mac_en = (substate_nxt == MAC0 && sqz_cnt < sqznum && Matrixcnt0 != 5'd24);
            4'B1001:mac_en = (substate_nxt == MAC0 && sqz_cnt < sqznum && Matrixcnt0 != 5'd24);
            4'B1010:mac_en = (substate == MAC1);
            4'B1011:mac_en = (substate == MAC1);
        endcase
    end


    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            mulabSet_val <= 1'b0;
        else 
            mulabSet_val <= mac_en;        
    end


    assign mul_mulinasel = selhelper;




//=====================================================================总体FSM(放置到最后)===============================================================
    always @(posedge clk or negedge rstn) begin
            if(!rstn)begin
                substate <= 0;
            end
            else begin
                substate <= substate_nxt;
            end
        end


    always@(*) begin
        substate_nxt = WAIT;  
        case(substate)
            WAIT:begin
                    if(encode_done)begin
                        case(opcode)
                            4'b0001: substate_nxt = DECODE;//decode 
                            4'b0010: substate_nxt = PACK;  //pack
                            4'b0011: substate_nxt = UNPACK;//unpack
                            4'b0100: substate_nxt = ABS;   //seeda seedse pkh 
                            4'b0101: substate_nxt = ABS448;//ss 
                            4'b0110: substate_nxt = ABS;
                            4'b0111: substate_nxt = ABS;
                            4'b1000: substate_nxt = ABS;
                            4'b1001: substate_nxt = ABS;
                            4'b1010: substate_nxt = MAC1;
                            4'b1011: substate_nxt = MAC1;
                            //4'b1110: substate_nxt = COMPARE; 
                        default:substate_nxt = WAIT;
                        endcase
                    end
                    else
                        substate_nxt = WAIT;
                    end
            DECODE:begin
                    if(loopjfull)
                        substate_nxt = DONE;
                    else
                        substate_nxt = DECODE;    
            end        
            PACK:begin
                    if(loopjfull)
                        substate_nxt = DONE;
                    else
                        substate_nxt = PACK;    
                end
            UNPACK:begin
                    if(loopjfull)
                        substate_nxt = DONE;
                    else
                        substate_nxt = UNPACK;    
            end
            ABS:begin
                    if(lastmsg_val || hashincnt == hashincntmax)
                        substate_nxt = RUN;
                    else
                        substate_nxt = ABS;     
                end
            ABS448:begin
                    if(hashincnt == hashincntmax && msg_val)
                        substate_nxt = RUN;
                    else if(addr_cnt == 3'd1 && empty_64)
                        substate_nxt = ABS;   
                    else
                        substate_nxt = ABS448;     
            end    
            RUN:begin
                    if(onehash_val)begin
                        if(addr_cnt >= rd_num)begin
                            case(opcode)
                                4'b0110: substate_nxt = MAT448;//keygen的采样
                                4'b0111: substate_nxt = MAT64;//enc的采样
                                4'b1000: substate_nxt = MAC0;
                                4'b1001: substate_nxt = MAC0;
                                default:substate_nxt = SQZ;
                            endcase
                        end
                        else if(opcode == 4'b0101)
                            substate_nxt = hashsel448 ? ABS :ABS448;
                        else
                            substate_nxt = ABS;
                    end    
                    else
                        substate_nxt = RUN;
            end
            SQZ:begin
                if(addr_cnt == addr_num)
                    substate_nxt = DONE;
                else
                    substate_nxt = SQZ;      
            end
            MAT448:begin
                if(loopafull)begin
                    if(opcode == 4'b0110)
                        substate_nxt = MATEpp;    
                    else
                        substate_nxt = MAT64;
                end
                else
                    substate_nxt = MAT448;    
            end    
            MAT64:begin
                if(loopafull)begin
                    if(opcode == 4'b0110)
                        substate_nxt = MATEpp;
                    else
                        substate_nxt = DONE; 
                end
                else
                    substate_nxt = MAT64;     
            end
            MATEpp:begin
                if(loopafull)
                    substate_nxt = DONE;
                else
                    substate_nxt = MATEpp;    
            end
            MAC0:begin
                if(loopjfull_r)
                    substate_nxt = BUFF; 
                else
                    substate_nxt = MAC0;    
            end
            BUFF:begin
                if(shakedone)begin
                    if(loopifullflag)
                        substate_nxt = DONE; 
                    else
                        substate_nxt = ABS; 
                end
                else
                    substate_nxt = BUFF; 
            end
            MAC1:begin
                if(loopifull)
                    substate_nxt = DONE;
                else
                    substate_nxt = MAC1;         
            end        
            DONE:begin
                substate_nxt = WAIT;
            end    
            default:substate_nxt = WAIT;
        endcase  
    end

    assign outen[0] = (substate == SQZ) && (addr_cnt == 3'd4);
    assign outen[1] = (substate == SQZ) && opcode == 4'b0100;

        
instDecoder u_instDecoder(
    .clk          ( clk          ),
    .rstn         ( rstn         ),
    .lvl          ( sec_lvl      ),
    .mode         ( opermode     ),
    .en           ( en           ),
    .ex_done      ( ex_done      ),

    .addr_run_cnt_clr(addr_run_cnt_clr),

    .encode_done  ( encode_done  ),
    .workdone     ( workdone     ),
    .addr_load    ( addr_load    ),
    .inst_all_o   ( inst_all     ),
    .opcode       ( opcode       ),
    .width448     ( width448     ),
    .bool         ( bool         ),
    .addr_num_o   ( addr_num   ),
    .paralell_o   ( paralell   ),
    .rd_num_o     ( rd_num     ),
    .pad_o        ( pad        ),
    .sqz_num_o    ( sqznum    ),
    .string0_o    ( string0    ),
    .skips_o      ( skips_o      ),
    .skipe_o      ( skipe_o      ),
    .loopamax_o   ( loopamax   ),
    .loopimax_o   ( loopimax   ),
    .loopjmax_o   ( loopjmax   ),
    .loopkmax_o   ( loopkmax   ),
    .prefixa      ( prefixa      ),
    .prefixb      ( prefixb      ),
    .prefixc      ( prefixc      ),
    .prefixd      ( prefixd      ),
    .prefixe      ( prefixe      ),
    .ADDRa_base   ( ADDRa_base   ),
    .ADDRb_base   ( ADDRb_base   ),
    .ADDRc_base   ( ADDRc_base   ),
    .ADDRd_base   ( ADDRd_base   ),
    .ADDRe_base   ( ADDRe_base   )
);





RAM_Arbitration u_RAM_Arbitration(
    .prefixa       ( prefixa       ),
    .prefixb       ( prefixb       ),
    .prefixc       ( prefixc       ),
    .prefixd       ( prefixd       ),
    .prefixe       ( prefixe       ),
    .ADDRa         ( ADDRa         ),
    .ADDRb         ( ADDRb         ),
    .ADDRc         ( ADDRc         ),
    .ADDRd         ( ADDRd         ),
    .ADDRe         ( ADDRe         ),
    .wea           ( wea           ),
    .web           ( web           ),
    .wec           ( wec           ),
    .wed           ( wed           ),
    .wee           ( wee           ),
    .addr_448ram0  ( addr_448ram0  ),
    .addr_448ram1  ( addr_448ram1  ),
    .addr_64rama0  ( addr_64rama0  ),
    .addr_64rama1  ( addr_64rama1  ),
    .addr_64ramb0  ( addr_64ramb0  ),
    .addr_64ramb1  ( addr_64ramb1  ),
    .we_448ram0    ( we_448ram0    ),
    .we_448ram1    ( we_448ram1    ),
    .we_64rama0    ( we_64rama0    ),
    .we_64rama1    ( we_64rama1    ),
    .we_64ramb0    ( we_64ramb0    ),
    .we_64ramb1    ( we_64ramb1    )
);






AddrGenUnit u_AddrGenUnit(
    .clk         ( clk         ),
    .rstn        ( rstn        ),
    .ADDRa_add   ( addra_add   ),
    .ADDRd_add   ( addrd_add   ),
    .ADDR_clra   ( ADDR_clra    ),
    .ADDR_clrbcd ( ADDR_clrbcd    ),
    .macmode     ( macmode     ),
    .mac_en      ( mac_en      ),
    .ADDRa_base  ( ADDRa_base  ),
    .ADDRb_base  ( ADDRb_base  ),
    .ADDRc_base  ( ADDRc_base  ),
    .ADDRd_base  ( ADDRd_base  ),
    .ADDRe_base  ( ADDRe_base  ),

    .selhelper   (selhelper),

    .skipk       ( skips_o       ),
    .skipe       ( skipe_o       ),
    .loopimax    ( loopimax    ),
    .loopkmax    ( loopkmax    ),
    .loopjmax    ( loopjmax    ),
    .loopamax    ( loopamax    ),
    .loopafull   ( loopafull   ),
    .loopifull   ( loopifull   ),
    .loopjfull   ( loopjfull   ),
    .loopkfull   ( loopkfull   ),
    .ADDRa       ( ADDRa       ),
    .ADDRb       ( ADDRb       ),
    .ADDRc       ( ADDRc       ),
    .ADDRd       ( ADDRd       ),
    .ADDRe       ( ADDRe       )
);




endmodule
