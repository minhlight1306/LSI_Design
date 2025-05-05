`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 09:39:59 PM
// Design Name: 
// Module Name: acc_reg_tb
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


module acc_reg_tb;

    reg clk;
    reg rst;
    reg load;
    reg [7:0] data_in;
    wire [7:0] data_out;
    
    acc_register uut(
        .clk(clk),
        .rst(rst),
        .load(load),
        .data_in(data_in),
        .data_out(data_out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst = 1;
        load = 0;
        data_in = 8'h00;
        
        #15 rst = 0;
        
        // Try to input
        #10 data_in = 8'hA5;
        load = 1;
        #10 load = 0;
        
        
        // Add a different value
        #10 data_in = 8'h3C;
        load = 1;
        #10 load = 0;
        
        // Try not to load
        #10 data_in = 8'hFF;
        
        #10 rst = 1;
        #10 rst = 0;
        
        #20 $stop;
    end
endmodule
