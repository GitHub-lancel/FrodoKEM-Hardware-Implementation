`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/02 13:22:38
// Design Name: 
// Module Name: tb
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


`timescale 1ns/1ps

module tb_Frodo_top;

    // ====== TB signals ======
    reg         clk;
    reg         rstn;
    reg  [1:0]  sec_lvl;
    reg  [1:0]  mode;
    reg         swtich;
    wire        valid;
    wire        oneinstdone;
    reg         dump_en;

    // ====== DUT instantiation ======
    Frodo_top dut (
        .clk_i     (clk),      
        .rstn    (rstn),
        .dump_en (dump_en), 
        .sec_lvl (sec_lvl),
        .mode (mode),
        .swtich  (swtich),
        .oneinstdone (oneinstdone),
        .valid   (valid)
    );

    // ====== clock generation: 10ns period ======
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    reg oneinstdone_d;

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            oneinstdone_d <= 1'b0;
            dump_en       <= 1'b0;
        end
        else begin
            oneinstdone_d <= oneinstdone;
            dump_en       <= oneinstdone & ~oneinstdone_d;
        end
    end

    // ====== stimulus ======
    initial begin
        // init
        rstn   = 1'b0;
        sec_lvl= 2'b00;
        mode   = 2'b00;
        swtich = 1'b0;

        // release reset after some cycles
        repeat (5) @(posedge clk);
        rstn = 1'b1;
        repeat (5) @(posedge clk);
        swtich = 1'b1;     
        // at the 30th clock edge, raise swtich
        repeat (1) @(posedge clk);
        swtich = 1'b0;

        // keep running a bit
        
    end


    initial begin
    @(posedge oneinstdone);
    $display("oneinstdone detected at %t", $time);
    repeat (500) @(posedge clk);
    $finish;
end

endmodule
