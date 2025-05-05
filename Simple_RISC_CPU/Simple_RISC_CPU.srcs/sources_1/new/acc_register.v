`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 05:06:01 PM
// Design Name: 
// Module Name: acc_register
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


// =============================================================
// Module: Accumulator Register
// Function: Stores intermediate math and ALU results.
// Characteristics: Register synchronizes with clk and reset signals.
// Data: 8-bit
// =============================================================
module acc_register(
    input wire clk, // input clock signal
    input wire rst, // input reset signal
    input wire load, // input load condition
    input wire [7:0] data_in, // data input
    output reg [7:0] data_out // data output
);
    // When clock and reset signal is positive, program start
    always @(posedge clk or posedge rst) begin
        // If reset signal == 1, data output = 0
        if (rst)
            data_out <= 8'b0;
        // If not reset and has load, data output = data input
        else if (load)
            data_out <= data_in;
    end
endmodule
