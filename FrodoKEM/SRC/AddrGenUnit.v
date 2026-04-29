`timescale 1ns / 1ps
module AddrGenUnit (
    input                    clk             ,
    input                    rstn            ,

    //地址控制
    input                    ADDRa_add       ,
    input                    ADDRd_add       ,
    input                    ADDR_clra       ,
    input                    ADDR_clrbcd     ,

    input          [1:0]     macmode         ,
        // 00   A S E  =B
        // 01   S'A E' =B'
        // 10   B'S C  =
        // 11   S'B E''=
    input                    mac_en          ,

    //地址基
    input          [11:0]    ADDRa_base      ,//流动地址，单独循环体
    input          [11:0]    ADDRb_base      ,//矩阵S专用
    input          [11:0]    ADDRc_base_i      ,//噪声矩阵专用(读)
    input          [11:0]    ADDRd_base      ,//替代A的那个矩阵使用
    input          [11:0]    ADDRe_base_i      ,//写地址专用

    //跳转步长
    input          [8:0]     skipk           ,
    input          [8:0]     skipe           ,
    //循环节最值
    input          [11:0]    loopimax        ,
    input          [11:0]    loopkmax        ,
    input          [11:0]    loopjmax        ,//承担另一个普通地址
    input          [11:0]    loopamax        ,//普通地址

    //满状态输出
    output                   loopafull       ,
    output                   loopifull       ,
    output                   loopjfull       ,
    output                   loopkfull       ,
        //层数关系 i - j - k

    input         pingpangtrig,
    output reg [1:0]  mul_mulhelper,

    input  [3:0]  prefixc_i  ,
    input  [3:0]  prefixe_i  ,
    output [3:0]  prefixc    ,
    output [3:0]  prefixe    , 

    //输出实际地址
    
    output        [11:0]     ADDRa           ,
    output        [11:0]     ADDRb           ,
    output        [11:0]     ADDRc           ,
    output        [11:0]     ADDRd           ,
    output        [11:0]     ADDRe
);

    

    parameter LM  = 2'b01;//ASE
    parameter RM  = 2'b00;//SAE
    parameter LMA = 2'b11;//小SBE
    parameter RMA = 2'b10;//小BSC

    reg [11:0] loopi;
    reg [11:0] loopj;
    reg [11:0] loopk;
    reg [11:0] loopa;

    //assign mul_mulhelper = loopi[3:2];
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            mul_mulhelper <= 2'b0;
        else    
            mul_mulhelper <= loopi[1:0];        
    end



    // 只保留输出低 12bit，与原模块 12bit 地址口行为一致
    reg [11:0] k_skip_acc;       // loopk * skipk
    reg [11:0] k_row_acc;        // loopk * (loopjmax + 1)
    reg [11:0] i_row_acc;        // loopi * (loopjmax + 1)

   


    reg [11:0] ADDRb_part0;
    reg [11:0] ADDRc_part0;
    reg [11:0] ADDRc_part1;

    wire       addr_step_en;
    wire [11:0] row_stride;

    assign addr_step_en = mac_en || ADDRd_add;
    assign row_stride   = loopjmax + 12'd1;

    

    assign loopafull = (loopa == loopamax);
    assign loopkfull = (loopk == loopkmax);
    assign loopjfull = (loopj == loopjmax) && loopkfull;
    assign loopifull = (loopi == loopimax) && loopjfull;

    // 地址 a 的独立循环体
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            loopa <= 12'd0;
        else if (ADDR_clra)
            loopa <= 12'd0;
        else if (ADDRa_add)
            loopa <= loopa + 12'd1;
    end

    // k 循环
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            loopk <= 12'd0;
        else if (ADDR_clrbcd)
            loopk <= 12'd0;
        else if (addr_step_en) begin
            if (loopkfull)
                loopk <= 12'd0;
            else
                loopk <= loopk + 12'd1;
        end
    end

    // j 循环
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            loopj <= 12'd0;
        else if (ADDR_clrbcd)
            loopj <= 12'd0;
        else if (addr_step_en && loopkfull) begin
            if (loopjfull)
                loopj <= 12'd0;
            else
                loopj <= loopj + 12'd1;
        end
    end

    // i 循环
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            loopi <= 12'd0;
        else if (ADDR_clrbcd)
            loopi <= 12'd0;
        else if (addr_step_en && loopjfull) begin
            if (loopifull)
                loopi <= 12'd0;
            else
                loopi <= loopi + 12'd1;
        end
    end

    // 递推替代乘法：loopk * skipk
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            k_skip_acc <= 12'd0;
        else if (ADDR_clrbcd)
            k_skip_acc <= 12'd0;
        else if (addr_step_en) begin
            if (loopkfull)
                k_skip_acc <= 12'd0;
            else
                k_skip_acc <= k_skip_acc + {3'd0, skipk};
        end
    end

    // 递推替代乘法：loopk * (loopjmax + 1)
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            k_row_acc <= 12'd0;
        else if (ADDR_clrbcd)
            k_row_acc <= 12'd0;
        else if (addr_step_en) begin
            if (loopkfull)
                k_row_acc <= 12'd0;
            else
                k_row_acc <= k_row_acc + row_stride;
        end
    end

    // 递推替代乘法：loopi * (loopjmax + 1)
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            i_row_acc <= 12'd0;
        else if (ADDR_clrbcd)
            i_row_acc <= 12'd0;
        else if (addr_step_en && loopjfull) begin
            if (loopifull)
                i_row_acc <= 12'd0;
            else
                i_row_acc <= i_row_acc + row_stride;
        end
    end

    // 各模式下地址偏移选择：避免乘法，仅使用计数/移位/递推量
    always @(*) begin
        case (macmode)
            LM, LMA: begin
                ADDRb_part0 = loopj;
                ADDRc_part0 = {2'b00, loopk[11:2]};   // k/4
                ADDRc_part1 = {loopi[10:0], 1'b0};    // 2*i
            end
            RM, RMA: begin
                ADDRb_part0 = {2'b00, loopi[11:2]};   // i/4
                ADDRc_part0 = loopj;
                ADDRc_part1 = k_row_acc;              // loopk*(loopjmax+1)
            end
            default: begin
                ADDRb_part0 = 12'd0;
                ADDRc_part0 = 12'd0;
                ADDRc_part1 = 12'd0;
            end
        endcase
    end

    //乒乓读写对于类型4
    reg loopjfull_r,loopjfull_r_r,loopjfull_r_r_r;
    reg pingpong0;
    reg pingpong1;

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            loopjfull_r     <= 1'b0;
            loopjfull_r_r   <= 1'b0;
            loopjfull_r_r_r <= 1'b0;
        end
        else begin
            loopjfull_r     <= loopjfull    ;
            loopjfull_r_r   <= loopjfull_r  ;
            loopjfull_r_r_r <= loopjfull_r_r;
        end
    end
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            pingpong0 <= 1'b0;
        else if(pingpangtrig && macmode == 2'b10)   
            pingpong0 <= ~ pingpong0;
        else
            pingpong0 <=   pingpong0;    
    end
    always@(posedge clk or negedge rstn)begin
        if(!rstn)
            pingpong1 <= 1'b0;
        else if(loopjfull_r_r_r && macmode == 2'b10)   
            pingpong1 <=  ~ pingpong1;
        else
            pingpong1 <=    pingpong1;    
    end

    wire          [11:0]    ADDRc_base      ;//噪声矩阵专用(读)
    wire          [11:0]    ADDRe_base      ;//写地址专用

    assign ADDRc_base = pingpong0 ? ADDRe_base_i: ADDRc_base_i;
    assign ADDRe_base = pingpong0 ? ADDRc_base_i: ADDRe_base_i;
    assign prefixc    = pingpong0 ? 4'B1101     : prefixc_i     ;//ram64b读口2
    assign prefixe    = pingpong0 ? 4'B1010     : prefixe_i     ;//ram64a写口1

    //wire [11:0] ADDRc_part0;
    wire [11:0] ADDRc_part_0;
    assign ADDRc_part_0 = ADDRc_part0 + ADDRc_part1;
    reg [11:0] ADDRc_part_1,ADDRc_part_2,ADDRc_part_3,ADDRc_part_4,ADDRc_part_5,ADDRc_part_6;
    wire [11:0] ADDRc_real_part;
    assign ADDRc_real_part = macmode[0] ? ADDRc_part_6 : ADDRc_part_1;

    reg [11:0] ADDRe_part,ADDRe_part_r,ADDRe_part_r_r;
    
    assign ADDRa   = ADDRa_base + loopa;
    
    assign ADDRb   = ADDRb_base + k_skip_acc + ADDRb_part0;
    
    assign ADDRc   = ADDRc_base + ADDRc_real_part;
    
    assign ADDRd   = ADDRd_base + loopj + i_row_acc;
    
    assign ADDRe   = macmode[0] ? ADDRe_base + ADDRe_part_r_r : ADDRe_base + ADDRe_part_r;
   

    always@(posedge clk or negedge rstn)begin
        if(!rstn)begin
            ADDRc_part_1 <= 12'd0;
            ADDRc_part_2 <= 12'd0;
            ADDRc_part_3 <= 12'd0;
            ADDRc_part_4 <= 12'd0;
            ADDRc_part_5 <= 12'd0;
            ADDRc_part_6 <= 12'd0;  
        end
        else begin
            ADDRc_part_1 <= ADDRc_part_0;
            ADDRc_part_2 <= ADDRc_part_1;
            ADDRc_part_3 <= ADDRc_part_2;
            ADDRc_part_4 <= ADDRc_part_3;
            ADDRc_part_5 <= ADDRc_part_4;
            ADDRc_part_6 <= ADDRc_part_5;  
        end

    end

    // 写地址，延时 C 两个周期
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            ADDRe_part <= 12'd0;
            ADDRe_part_r <= 12'd0;
            ADDRe_part_r_r <= 12'd0;
        end
        else begin
            ADDRe_part <= ADDRc_real_part;
            ADDRe_part_r <= ADDRe_part;
            ADDRe_part_r_r <= ADDRe_part_r;
        end
    end

endmodule