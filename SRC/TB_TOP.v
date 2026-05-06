`timescale 1ns / 1ps

module tb_TOP;

    reg clk_i;
    reg rstn;
    reg buttle;
    reg swtich;

    wire valid;

    integer valid_cnt;

    ///////////////////////////////////////////////////
    // DUT
    ///////////////////////////////////////////////////
    TOP u_TOP (
        .clk_i  (clk_i),
        .rstn   (rstn),
        .buttle (buttle),
        .swtich (swtich),
        .valid  (valid)
    );

    ///////////////////////////////////////////////////
    // clock: 100MHz, period = 10ns
    ///////////////////////////////////////////////////
    initial begin
        clk_i = 1'b0;
        forever #5 clk_i = ~clk_i;
    end

    ///////////////////////////////////////////////////
    // stimulus
    ///////////////////////////////////////////////////
    initial begin
        rstn   = 1'b0;
        buttle = 1'b0;
        swtich = 1'b0;

        valid_cnt = 0;

        // reset
        #100;
        rstn = 1'b1;

        // 根据你的设计需要，给一个启动信号
        #50;
        swtich = 1'b1;
        #20
        swtich = 1'b0;

    end

    ///////////////////////////////////////////////////
    // count valid cycles
    ///////////////////////////////////////////////////
    always @(posedge clk_i or negedge rstn) begin
        if (!rstn) begin
            valid_cnt <= 0;
        end else begin
            if (valid) begin
                valid_cnt <= valid_cnt + 1;

                if (valid_cnt == 6) begin
                    $display("[%0t ns] valid has been high for 6 cycles, stop simulation.", $time);
                    #10;
                    $finish;
                end
            end
        end
    end

endmodule