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
wire [1:0] sec_lvl;
wire [1:0] mode;

reg [3:0] cnt;

assign sec_lvl = cnt[1:0];
assign mode    = cnt[3:2];

always@(posedge clk_i or negedge rstn)begin
    if(!rstn)
        cnt <= 4'd0;
    else if(buttle)
        cnt <= cnt + 1'b1;
    else
        cnt <= cnt;    
end


assign valid = ^dout;   // 对 dout[63:0] 做 reduction XOR





Frodo_top u_Frodo_top(
    .clk_i       ( clk_i       ),
    .rstn        ( rstn        ),
    .sec_lvl     ( sec_lvl     ),
    .mode        ( mode        ),
    .swtich      ( swtich      ),
    .valid       (        ),
    .dout        ( dout        ),
    .oneinstdone ( oneinstdone ),
    .oneworkdone  ( workdone  )
);



endmodule

