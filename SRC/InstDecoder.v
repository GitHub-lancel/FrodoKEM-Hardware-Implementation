//功能:取指令+解码指令信息
//后面需要补充对于verification指令的处理，根据地址来的数据通路的接线逻辑
`timescale 1ns / 1ps
module instDecoder (
    input                   clk,
    input                   rstn,

    input       [1:0]       lvl             ,
    input       [1:0]       mode            ,    

    input                   addr_run_cnt_clr,

    input                   en              ,//一个算法的第一条指令运行
    input                   ex_done         ,//外部工作结束
    output                  encode_done     ,//一次解码工作结束,外部可以进行工作
    output  reg             workdone        ,//一个算法结束

    input                   addr_load       ,//切换地址    
    output  reg [35:0]      inst_all_o       ,    


    //解码得到的参数
    output reg [3:0]       opcode               , 
    output reg             width448             ,
    output reg             bool                 ,

    output      [2:0]       addr_num_o           ,
    output      [2:0]       paralell_o           , 
    output      [2:0]       rd_num_o             ,

    output      [2:0]       pad_o                 ,
    output      [8:0]       sqz_num_o             ,
    output      [8:0]       string0_o             ,

    output      [8:0]       skips_o               ,
    output      [8:0]       skipe_o               ,
    

    output reg  [11:0]    loopamax_o         , 
    output      [11:0]    loopimax_o         ,
    output      [11:0]    loopjmax_o         ,
    output      [11:0]    loopkmax_o         ,

    output reg  [3:0]       prefixa         ,
    output      [3:0]       prefixb         ,
    output      [3:0]       prefixc         ,
    output      [3:0]       prefixd         ,
    output      [3:0]       prefixe         ,
            
    output reg  [11:0]    ADDRa_base         ,
    output      [11:0]    ADDRb_base         ,
    output      [11:0]    ADDRc_base         ,
    output      [11:0]    ADDRd_base         ,
    output      [11:0]    ADDRe_base          


);



//--------------------------------------------------定义信号
    parameter   F640kg0  = 10'd0;
    parameter   F640kg1  = 10'd31;

    parameter   F640ec0  = 10'd32;
    parameter   F640ec1  = 10'd93;

    parameter   F640dc0  = 10'd94;
    parameter   F640dc1  = 10'd168;

    parameter   F976kg0  = 10'd169;
    parameter   F976kg1  = 10'd196;

    parameter   F976ec0  = 10'd197;
    parameter   F976ec1  = 10'd246;

    parameter   F976dc0  = 10'd247;
    parameter   F976dc1  = 10'd305;

    parameter   F1344kg0 = 10'd306;
    parameter   F1344kg1 = 10'd333;

    parameter   F1344ec0 = 10'd334;
    parameter   F1344ec1 = 10'd383;

    parameter   F1344dc0 = 10'd384;
    parameter   F1344dc1 = 10'd442;


    
    
    
    parameter   IDLE    =   3'd0;//指令地址保持0
    parameter   START   =   3'd1;//提供指令起始地址
    parameter   LOAD    =   3'd2;//地址+1ing，从中取寄存器值
    parameter   BUFF0   =   3'd3;
    parameter   ADDR    =   3'd4;//初始化地址寄存器堆 地址不增
    parameter   BUFF    =   3'd5;
    parameter   RUN     =   3'd6;//外部的执行，在其中从寄存器堆取运行地址 地址不增
    parameter   DONE    =   3'd7;//指令完成一次，判定   

    wire    [35:0] inst_all;

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            inst_all_o <= 36'd0;
        else
            inst_all_o <= inst_all;           
    end

    // Lock the current run instruction fields after the run word is stable in ADDR.
    // This breaks the long ROM -> high-fanout control path while keeping the visible
    // instruction timing aligned with the existing ADDR/BUFF/RUN sequencing.
    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            opcode   <= 4'd0;
            width448 <= 1'b0;
            bool     <= 1'b0;
        end
        else if(CS == ADDR)begin
            opcode   <= inst_all[35:32];
            width448 <= inst_all[1];
            bool     <= inst_all[0];
        end
        else begin
            opcode   <= opcode;
            width448 <= width448;
            bool     <= bool;
        end
    end

    //FSM相关判断信号
    reg [2:0]   CS,NS;
    wire        load_done;
    wire        addr_done;
    assign      encode_done = CS == RUN;
    //ROM相关信号
    reg [9:0] idle_addr;
    reg [9:0] inst_addr;
    //流水相关信号
    reg        init_val;//初始化数据有效 
    wire       init_clr;//清零所有全局寄存器
    reg        index_val;//数据索引指令数据有效 



//--------------------------------------------------1.取指令状态机

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            CS <= 0;
        else
            CS <= NS;    
    end


    always@(*)begin
        NS = IDLE;
        case(CS)
            IDLE:begin//0
                if(en)
                    NS = START;
                else
                    NS = IDLE;    
            end
            START:begin//加载初始的指令地址 //1
                NS = LOAD;
            end
            LOAD:begin//通过在最后一个init指令添加done，补足一个时钟差距 //2
                if(load_done)
                    NS =   BUFF0;
                else
                    NS =   LOAD;    
            end
            BUFF0:begin
                NS = ADDR;        
            end
            ADDR:begin//我们希望所有数据准备好之后进入运算 //3
                if(addr_done)
                    NS = BUFF;
                else
                    NS = ADDR;    
            end
            BUFF:begin //4
                NS = RUN;
            end
            RUN:begin
                if(ex_done)//等待外部给出运行结束信号
                    NS =   DONE;
                else
                    NS =   RUN;    
            end
            DONE:begin
                if(workdone)//我们希望在进入DONE时所有数据已经运算存储完毕
                    NS =   IDLE;
                else
                    NS =   LOAD;        
            end
        endcase
    end



//--------------------------------------------------2.指令地址控制
   
    assign  load_done = inst_all[0];

    always@(*)begin
        case({lvl,mode})
            4'b0000:idle_addr = F640kg0;
            4'b0001:idle_addr = F640ec0;
            4'b0010:idle_addr = F640dc0;
            4'b0100:idle_addr = F976kg0;
            4'b0101:idle_addr = F976ec0;
            4'b0110:idle_addr = F976dc0;
            4'b1000:idle_addr = F1344kg0;
            4'b1001:idle_addr = F1344ec0;
            4'b1010:idle_addr = F1344dc0;
            default:idle_addr = F640kg0;
        endcase
    end    
    
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            inst_addr <= 0;
        else    if(NS == IDLE)
            inst_addr <= 0;
        else    if(NS == START)
            inst_addr <= idle_addr;
        else    if(NS == LOAD)
            inst_addr <= inst_addr + 1'b1;
        else    if(NS == BUFF0)
            inst_addr <= inst_addr + 1'b1;    
        else    if(NS == ADDR)
            inst_addr <= inst_addr; 
        else    if(ex_done)
            inst_addr <= inst_addr + 1'B1;    
        else    if(NS === RUN)
            inst_addr <= inst_addr;            
        else
            inst_addr <= inst_addr;                
    end    

    always@(*)begin  
            workdone = 0;
            if(CS == DONE)begin
                case({lvl,mode})
                4'b0101:workdone = inst_addr == F640kg1;
                4'b0110:workdone = inst_addr == F640ec1;
                4'b0111:workdone = inst_addr == F640dc1;
                4'b1001:workdone = inst_addr == F976kg1;
                4'b1010:workdone = inst_addr == F976ec1;
                4'b1011:workdone = inst_addr == F976dc1;
                4'b1101:workdone = inst_addr == F1344kg1;
                4'b1110:workdone = inst_addr == F1344ec1;
                4'b1111:workdone = inst_addr == F1344dc1;
                default:workdone = 0;
            endcase
            end
    end


//--------------------------------------------------3.各种init指令装填
    //--------------------------------------------------3.0 流水信号
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            init_val <= 1'b0;
        else 
            init_val <= (CS == START) || (CS == LOAD) || (NS == LOAD);    
    end

    assign init_clr = CS == DONE;
    
    //--------------------------------------------------3.1run指令装填
    wire                    run_init    = inst_all[35];
    wire                    run_init_en = run_init && (init_val);

    reg             [2:0]   addr_num;//地址总数（从1开始）
    reg             [2:0]   paralell;//需要塞到addra中（从1开始）
    reg             [2:0]   rd_num  ;//挤压地址数量   
    //addra=固定地址数 + 其他bcd地址数 = 总地址数



    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            addr_num <= 3'd0;
            paralell <= 3'd0;
            rd_num   <= 3'd0;
        end
        else if(run_init_en)begin
            addr_num <= inst_all[21:19];
            paralell <= inst_all[18:16];
            rd_num   <= inst_all[15:13];
        end    
        else if(init_clr)begin
            addr_num <= 3'd0;
            paralell <= 3'd0;
            rd_num   <= 3'd0;
        end 
        else begin
            addr_num <= addr_num;
            paralell <= paralell;
            rd_num   <= rd_num  ;
        end
    end
    //--------------------------------------------------3.2hash指令装填
    wire                    hash_init    = inst_all[34];
    wire                    hash_init_en = hash_init && (init_val);

    reg [2:0]   pad;
    reg [8:0]   sqz_num;
    reg [8:0]   string0;

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            pad      <= 3'd0;
            sqz_num  <= 9'd0;
            string0  <= 9'd0;
        end
        else if(hash_init_en)begin
            pad      <= inst_all[21:19];
            sqz_num  <= inst_all[18:10];
            string0  <= inst_all[9:1];
        end    
        else if(init_clr)begin
            pad      <= 3'd0;
            sqz_num  <= 9'd0;
            string0  <= 9'd0;
        end 
        else begin
            pad      <= pad    ;
            sqz_num  <= sqz_num;
            string0  <= string0;
        end   
    end
    //--------------------------------------------------3.3skip指令装填
    wire                    sskip_init    = inst_all[33];
    wire                    eskip_init    = inst_all[32];
   

    reg [8:0]   skips,skipe;     
    
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            skips <= 9'b0;
        else if(sskip_init && init_val )    
            skips <= inst_all[21:13];
        else if(init_clr)
            skips <= 9'b0;
        else
            skips <= skips;         
    end

    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            skipe <= 9'b0;
        else if(eskip_init && init_val )    
            skipe <= inst_all[12:4];
        else if(init_clr)
            skipe <= 9'b0;
        else
            skipe <= skipe;         
    end

    
    //--------------------------------------------------3.4loop指令装填
        //addra五个缓存 其他均一个缓存
        wire loop_init      = CS == LOAD || CS == BUFF0;
        wire aloop_init     = inst_all[29] && loop_init && init_val;
        wire iloop_init     = inst_all[28] && loop_init && init_val;   
        wire jloop_init     = inst_all[27] && loop_init && init_val;
        wire kloop_init     = inst_all[26] && loop_init && init_val;
        

        reg [59:0] aloop_pile;//右移位寄存器，最后使用的地址loop先移入reg 12x5
        reg [11:0] iloop;
        reg [11:0] kloop;
        reg [11:0] jloop;

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                aloop_pile <= 60'd0;
            else if(aloop_init)
                aloop_pile <= {inst_all[25:14],aloop_pile[59:12]};
            else if(init_clr)
                aloop_pile <= 60'd0;
            else
                aloop_pile <= aloop_pile;             
        end

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                iloop = 12'd0;
            else if(iloop_init)
                iloop = inst_all[25:14]; 
            else if(init_clr)
                iloop <= 12'd0;
            else
                iloop <= iloop;                    
        end

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                jloop = 12'd0;
            else if(jloop_init)
                jloop = inst_all[13:2]; 
            else if(init_clr)
                jloop <= 12'd0;
            else
                jloop <= jloop;                    
        end

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                kloop = 12'd0;
            else if(kloop_init)
                kloop = inst_all[13:2]; 
            else if(init_clr)
                kloop <= 12'd0;
            else
                kloop <= kloop;                    
        end


    //--------------------------------------------------3.5各类run指令 indexrom用分布式rom
        // 00 00 四位索引 + 4096(12)位 = 16位
        //仍旧最先用的最后进入
        reg   [5:0]  index;
        wire  [15:0] addr;  
        reg   [2:0]  addr_cnt;//当前装填了几个cnt
        reg   [79:0] addra;
        reg   [63:0] addrbcd;//bcde按b-c-d-e的顺序装 



        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                index_val <= 1'b0;
            else 
                index_val <= (NS == ADDR);    
        end

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                addr_cnt <= 3'd0;    
            else if(NS == BUFF)
                addr_cnt <= 3'd0;    
            else if(index_val)
                addr_cnt <= addr_cnt + 1'b1 ;     
            else
                addr_cnt <= addr_cnt;   
        end

        assign addr_done = (addr_cnt == addr_num - 1'B1);


        always@(*)begin
            index =6'b0;     
            case(addr_cnt)//拆分了指令，最大是
                3'd0:index = inst_all[31:26];
                3'd1:index = inst_all[25:20];
                3'd2:index = inst_all[19:14];
                3'd3:index = inst_all[13:8];
                3'd4:index = inst_all[7:2];
            endcase
        end
        
        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                addra     <=  80'd0;
            else    if(init_clr)
                addra     <=  80'd0;
            else    if(index_val && addr_cnt < paralell)
                addra     <=  {addr,addra[79:16]};
            else
                addra     <=  addra;     
        end

        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                addrbcd <= 64'd0;
            else if(init_clr)
                addrbcd <= 64'd0;    
            else if(index_val && addr_cnt >= paralell)        
                addrbcd <= {addr,addrbcd[63:16]};
            else
                addrbcd <= addrbcd;    
        end        
    
    
    //--------------------------------------------------4.运行过程中的变化/数据的传出/其他解码
        reg [2:0] addr_run_cnt;


        always@(posedge clk or negedge rstn)begin
            if(!rstn)
                addr_run_cnt <= 3'd0;
            else if(addr_load) begin
                if(addr_run_cnt == addr_num)
                    addr_run_cnt <= 3'd0;
                else
                    addr_run_cnt <= addr_run_cnt + 1'b1;         
            end
            else if(addr_run_cnt_clr)
                addr_run_cnt <= 3'd0;
            else
                addr_run_cnt <= addr_run_cnt;     
        end

                    /*  
                        79:64
                        63:48
                        47:32
                        31:16
                        15:0
                    */

        always@(*)begin
            prefixa = 4'd0;
            ADDRa_base = 12'd0;
            loopamax_o = 12'd0;
            case(addr_run_cnt)
                3'd0:begin
                    prefixa    = addra[79:76];
                    ADDRa_base = addra[75:64];                  
                    loopamax_o   = aloop_pile[59:48];
                end                
                3'd1:begin
                    prefixa    = addra[63:60];
                    ADDRa_base = addra[59:48];    
                    loopamax_o   = aloop_pile[47:36];        
                end
                3'd2:begin
                    prefixa    = addra[47:44];
                    ADDRa_base = addra[43:32];     
                    loopamax_o   = aloop_pile[35:24];     
                end
                3'd3:begin
                    prefixa    = addra[31:28];
                    ADDRa_base = addra[27:16];   
                    loopamax_o   = aloop_pile[23:12];
                end
                3'd4:begin
                    prefixa    = addra[15:12];
                    ADDRa_base = addra[11:0];
                    loopamax_o    = aloop_pile[11:0]; 
                end
            endcase
        end

        assign addr_num_o   = addr_num;
        assign paralell_o   = paralell; 
        assign rd_num_o     = rd_num;
        assign pad_o        = pad;
        assign sqz_num_o    = sqz_num; 
        assign string0_o    = string0;
        
        assign skips_o      = skips;    
        assign skipe_o      = skipe;   

        
        assign loopimax_o   = iloop;
        assign loopjmax_o   = jloop;
        assign loopkmax_o   = kloop;

        assign  prefixd     = addrbcd[63:60];
        assign  prefixb     = addrbcd[47:44];
        assign  prefixc     = addrbcd[31:28];
        assign  prefixe     = addrbcd[15:12];
        assign  ADDRd_base  = addrbcd[59:48];
        assign  ADDRb_base  = addrbcd[43:32];
        assign  ADDRc_base  = addrbcd[27:16];
        assign  ADDRe_base  = addrbcd[11:0];
        


    //地址rom(异步读rom) 单口16宽32深
/*
dual_ram_asyn#(
    .ADDR_WIDTH ( 6 ),
    .DATA_WIDTH ( 16 ),
    .MEM_DEPTH  ( 64 ),
    .HEX_FILE   ( "E:/Frodokem_2026_tx/FrodoKEM_sim/ADDR.hex" ),
    .OUTPUT_FILE (  )
)addrom(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .addr_a     ( index     ),
    .din_a      ( 16'd0      ),
    .wr_mask_a  ( 8'b0000_0000  ),
    .dout_a     ( addr       ),
    .addr_b     (           ),
    .din_b      (               ),
    .wr_mask_b  ( 8'b0000_0000  ),
    .dout_b     (               )
);



    //指令rom(同步读rom) 单口36宽1024深
dual_ram#(
    .ADDR_WIDTH ( 10 ),
    .DATA_WIDTH ( 36 ),
    .MEM_DEPTH  ( 1024 ),
    .HEX_FILE   ( "E:/Frodokem_2026_tx/FrodoKEM_sim/inst.hex" ),
    .OUTPUT_FILE (  )
)u_dual_ram(
    .clk        ( clk        ),
    .rstn       ( rstn       ),
    .addr_a     ( inst_addr     ),
    .din_a      (          ),
    .wr_mask_a  ( 8'b0000_0000  ),
    .dout_a     ( inst_all     ),
    .addr_b     (      ),
    .din_b      (       ),
    .wr_mask_b  ( 8'b0000_0000  ),
    .dout_b     (      )
);
*/

ADDRBASE_ROM addrom (
  .a(index),      // input wire [5 : 0] a
  .spo(addr)  // output wire [15 : 0] spo
);

INSTROM your_instance_name (
  .clka(clk),    // input wire clka
  .ena(1'b1),      // input wire ena
  .addra(inst_addr),  // input wire [9 : 0] addra
  .douta(inst_all)  // output wire [35 : 0] douta
);



endmodule
