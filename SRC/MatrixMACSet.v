`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 28并行度的内积运算，四个周期一输出
// 说明：
// 1. 保持端口接口不变
// 2. 对原始“28路乘法 + 长加法链”改为多级流水加法树
// 3. 功能上仍保持对每路乘积取低16bit，再对28项求和，最终输出低16bit
// 4. 相比原版本，输出会增加若干拍流水延迟，但吞吐率仍可做到每拍接收一组输入
//////////////////////////////////////////////////////////////////////////////////

module MatrixMACSet #(
    parameter PARALLEL_NUM = 28
)(
    input clk,
    input rstn,

    input [PARALLEL_NUM*16-1:0] mulaSet,
    input [PARALLEL_NUM*16-1:0] mulbSet,

    input mulabSet_val,

    output [63:0] macabSet,
    output        macabSet_val
);

    //////////////////////////////////////////////////////////////////////////////
    // 输入拆分
    //////////////////////////////////////////////////////////////////////////////
    wire [15:0] mula [0:PARALLEL_NUM-1];
    wire [15:0] mulb [0:PARALLEL_NUM-1];

    genvar i;
    generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin : GEN_INPUT_UNPACK
            assign mula[i] = mulaSet[i*16 +: 16];
            assign mulb[i] = mulbSet[i*16 +: 16];
        end
    endgenerate

    //////////////////////////////////////////////////////////////////////////////
    // Stage 1: 28路乘法，结果仅保留低16bit（与原代码行为一致）
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s1;
    reg [15:0] prod_s1 [0:PARALLEL_NUM-1];

    integer k;
    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s1 <= 1'b0;
            for(k = 0; k < PARALLEL_NUM; k = k + 1)
                prod_s1[k] <= 16'b0;
        end
        else begin
            vld_s1 <= mulabSet_val;
            for(k = 0; k < PARALLEL_NUM; k = k + 1)
                prod_s1[k] <= mula[k] * mulb[k];
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // Stage 2: 28 -> 14
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s2;
    reg [16:0] sum_s2 [0:13];

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s2 <= 1'b0;
            for(k = 0; k < 14; k = k + 1)
                sum_s2[k] <= 17'b0;
        end
        else begin
            vld_s2 <= vld_s1;
            for(k = 0; k < 14; k = k + 1)
                sum_s2[k] <= {1'b0, prod_s1[2*k]} + {1'b0, prod_s1[2*k+1]};
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // Stage 3: 14 -> 7
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s3;
    reg [17:0] sum_s3 [0:6];

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s3 <= 1'b0;
            for(k = 0; k < 7; k = k + 1)
                sum_s3[k] <= 18'b0;
        end
        else begin
            vld_s3 <= vld_s2;
            for(k = 0; k < 7; k = k + 1)
                sum_s3[k] <= {1'b0, sum_s2[2*k]} + {1'b0, sum_s2[2*k+1]};
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // Stage 4: 7 -> 4
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s4;
    reg [18:0] sum_s4 [0:3];

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s4 <= 1'b0;
            for(k = 0; k < 4; k = k + 1)
                sum_s4[k] <= 19'b0;
        end
        else begin
            vld_s4   <= vld_s3;
            sum_s4[0] <= {1'b0, sum_s3[0]} + {1'b0, sum_s3[1]};
            sum_s4[1] <= {1'b0, sum_s3[2]} + {1'b0, sum_s3[3]};
            sum_s4[2] <= {1'b0, sum_s3[4]} + {1'b0, sum_s3[5]};
            sum_s4[3] <= {1'b0, sum_s3[6]};
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // Stage 5: 4 -> 2
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s5;
    reg [19:0] sum_s5 [0:1];

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s5 <= 1'b0;
            sum_s5[0] <= 20'b0;
            sum_s5[1] <= 20'b0;
        end
        else begin
            vld_s5   <= vld_s4;
            sum_s5[0] <= {1'b0, sum_s4[0]} + {1'b0, sum_s4[1]};
            sum_s5[1] <= {1'b0, sum_s4[2]} + {1'b0, sum_s4[3]};
        end
    end

    //////////////////////////////////////////////////////////////////////////////
    // Stage 6: 2 -> 1
    //////////////////////////////////////////////////////////////////////////////
    reg        vld_s6;
    reg [20:0] sum_s6;

    always @(posedge clk or negedge rstn) begin
        if(~rstn) begin
            vld_s6 <= 1'b0;
            sum_s6 <= 21'b0;
        end
        else begin
            vld_s6 <= vld_s5;
            sum_s6 <= {1'b0, sum_s5[0]} + {1'b0, sum_s5[1]};
        end
    end

    wire [15:0] mulab_sum;
    assign mulab_sum = sum_s6[15:0];

    //////////////////////////////////////////////////////////////////////////////
    // 4个16bit结果拼成64bit输出
    // 说明：相较原始版本，统计与拼包动作整体后移到 vld_s6 对应周期
    //////////////////////////////////////////////////////////////////////////////
    reg [63:0] macabSetr;
    reg [1:0]  cnt;

    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            cnt <= 2'b0;
        else if(vld_s6)
            cnt <= cnt + 1'b1;
    end

    always @(posedge clk or negedge rstn) begin
        if(~rstn)
            macabSetr <= 64'b0;
        else if(vld_s6)
            macabSetr <= (macabSetr << 16) | mulab_sum;
    end

    assign macabSet     = {macabSetr[47:0], mulab_sum};
    assign macabSet_val = (cnt == 2'd3) && vld_s6;

endmodule
