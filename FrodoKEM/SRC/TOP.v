`timescale 1ns / 1ps
module TOP
(   

    input wire clk_i,
    input wire rstn,
    input wire buttle,
    input wire swtich,
    
    output valid
);

wire oneinstdone;
wire [63:0] dout;
wire workdone;


ila_0 ila(
	.clk(clk_i), // input wire clk


	.probe0(valid), // input wire [0:0]  probe0  
	.probe1(dout) // input wire [63:0]  probe1
);


Frodo_top u_Frodo_top(
    .clk_i       ( clk_i       ),
    .rstn        ( rstn        ),
    .buttle      ( buttle      ),
    .swtich      ( swtich      ),
    .valid       ( valid       ),
    .dout        ( dout        ),
    .oneinstdone ( oneinstdone ),
    .workdone    ( workdone    )
);



endmodule

