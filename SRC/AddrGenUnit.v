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
    input          [11:0]    ADDRc_base      ,//噪声矩阵专用(读)
    input          [11:0]    ADDRd_base      ,//替代A的那个矩阵使用
    input          [11:0]    ADDRe_base      ,//写地址专用

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

    //输出实际地址
    output        [1:0]      selhelper       ,
    output        [11:0]     ADDRa           ,
    output        [11:0]     ADDRb           ,
    output        [11:0]     ADDRc           ,
    output        [11:0]     ADDRd           ,
    output        [11:0]     ADDRe
);

    parameter LM  = 2'b00;
    parameter RM  = 2'b01;
    parameter LMA = 2'b10;
    parameter RMA = 2'b11;

    reg [11:0] loopi;
    reg [11:0] loopj;
    reg [11:0] loopk;
    reg [11:0] loopa;

    // 只保留输出低 12bit，与原模块 12bit 地址口行为一致
    reg [11:0] k_skip_acc;       // loopk * skipk
    reg [11:0] k_row_acc;        // loopk * (loopjmax + 1)
    reg [11:0] i_row_acc;        // loopi * (loopjmax + 1)

    reg [11:0] ADDRc_part0_r;
    reg [11:0] ADDRc_part1_r;

    reg [11:0] ADDRb_part0;
    reg [11:0] ADDRc_part0;
    reg [11:0] ADDRc_part1;

    wire       addr_step_en;
    wire [11:0] row_stride;

    assign addr_step_en = mac_en || ADDRd_add;
    assign row_stride   = loopjmax + 12'd1;

    assign selhelper = loopi[1:0];

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

    assign ADDRa = ADDRa_base + loopa;
    assign ADDRb = ADDRb_base + k_skip_acc + ADDRb_part0;
    assign ADDRc = ADDRc_base + ADDRc_part0 + ADDRc_part1;
    assign ADDRd = ADDRd_base + loopj + i_row_acc;
    assign ADDRe = ADDRe_base + ADDRc_part0_r + ADDRc_part1_r;

    // 写地址，延时 C 一个周期
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            ADDRc_part0_r <= 12'd0;
            ADDRc_part1_r <= 12'd0;
        end
        else begin
            ADDRc_part0_r <= ADDRc_part0;
            ADDRc_part1_r <= ADDRc_part1;
        end
    end

endmodule