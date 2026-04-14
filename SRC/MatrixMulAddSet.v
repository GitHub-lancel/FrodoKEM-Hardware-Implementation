`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/21 17:26:47
// Design Name: 
// Module Name: MatrixMulAddSet
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
//1元素x28元素分别+28元素


module MatrixMulAddSet #(
	parameter PARALLEL_NUM = 28)(
	input          clk,
    input          rstn,
    input [16-1:0] mulaSet,
    input [PARALLEL_NUM*16-1:0] mulbSet,
	input [PARALLEL_NUM*16-1:0] addcSet,
    output reg [PARALLEL_NUM*16-1:0]   result_r
    );
	
    wire [PARALLEL_NUM*16-1:0] result;
	// Intermediate;
	wire [15:0] mula [0:PARALLEL_NUM-1];
    wire [15:0] mulb [0:PARALLEL_NUM-1];
	wire [15:0] addc [0:PARALLEL_NUM-1];
	wire [15:0] amulbaddc [0:PARALLEL_NUM-1];
	
	genvar i;
	
	// mulaSet-->mula;
	generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin
            assign mula[i] = mulaSet;
        end
    endgenerate
	
	// mulbSet-->mulb;
	generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin
            assign mulb[i] = mulbSet[i*16 +: 16];
        end
    endgenerate
	
	// addcSet-->addc;
	generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin
            assign addc[i] = addcSet[i*16 +: 16];
        end
    endgenerate
	
	// a*b+c;
	generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin
            assign amulbaddc[i] = mula[i] * mulb[i] + addc[i];
        end
    endgenerate
	
	// amulbaddc-->result;
    // 修改，为了矩阵2气泡的使用
	generate
        for(i = 0; i < PARALLEL_NUM; i = i + 1) begin
            assign result[i*16 +: 16] = amulbaddc[i];
        end
    endgenerate

    
	always@(posedge clk or negedge rstn)begin
        if(!rstn)
            result_r <= 448'd0;
        else
            result_r <= result;             
    end

endmodule
