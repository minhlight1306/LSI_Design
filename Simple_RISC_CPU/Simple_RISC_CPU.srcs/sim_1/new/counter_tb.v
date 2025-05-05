`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2025 11:58:35 PM
// Design Name: 
// Module Name: counter_tb
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

module counter_tb;

    // Declare signals
    reg clk;
    reg rst;
    reg load;
    reg inc;
    reg [4:0] data_in;
    wire [4:0] pc_out;

    program_counter uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .inc(inc),
        .data_in(data_in),
        .pc_out(pc_out)
    );

    // Create clock 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Procedure
    initial begin
        // Initialize input
        rst = 1; load = 0; inc = 0; data_in = 5'd0;
        #12 rst = 0; // Stop reset

        // Test load data into PC
        #10 data_in = 5'b00111; load = 1;
        #10 load = 0;

        // Test increment PC
        #10 inc = 1;
        // Test count 9 times
        repeat(9) begin
            #10;
        end
        inc = 0;

        // Test load different value
        #10 data_in = 5'b01000; load = 1;
        #10 load = 0;

        // Reset PC
        #10 rst = 1;
        #10 rst = 0;

        #20 $stop;
    end

endmodule

