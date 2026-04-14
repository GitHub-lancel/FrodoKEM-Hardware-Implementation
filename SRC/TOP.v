`timescale 1ns / 1ps
module TOP
(   
    //input wire clk_p,
    //input wire clk_n,
    input wire clk_i,
    input wire rstn,
    input wire buttle,
    input wire swtich,
    
    output valid
);

wire oneinstdone;
wire [63:0] odata;



ila_0 ila(
	.clk(clk), // input wire clk


	.probe0(valid), // input wire [0:0]  probe0  
	.probe1(odata) // input wire [63:0]  probe1
);


Frodo_top u_Frodo_top(
    .clk  ( clk  ),
    .rstn   ( rstn   ),
    .buttle ( buttle ),
    .swtich ( swtich ),
    .valid  ( valid  ),
    .odata  (odata),
    .oneinstdone  ( oneinstdone  )
);

clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk),     // output clk_out1
    // Status and control signals
    .resetn(rstn), // input resetn
    .locked(),       // output locked
   // Clock in ports
    .clk_in1(clk_i)      // input clk_in1
);


endmodule

