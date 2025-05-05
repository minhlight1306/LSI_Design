`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:57:15 AM
// Design Name: 
// Module Name: program_counter
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
// Module: Program Counter (PC)
// Function: Stores the current address of the program.
// It has the ability to reset, load new values (for jumping) and increment (increment).
// Width: 5-bit
// =============================================================
module program_counter (
    input wire clk, // clock signal
    input wire rst, // reset signal
    input wire load, // allow load new value
    input wire inc, // allow increment PC value
    input wire [4:0] data_in, // input data 5 bit
    output reg [4:0] pc_out // output PC 5 bit
);
    // When clock and reset signal is positive, program start
    always @(posedge clk or posedge rst) begin
        // If reset signal == 1, PC output = 0
        if (rst)
            pc_out <= 5'b0;
        else if (load)
        // If not reset and has load, PC output = data input
            pc_out <= data_in;
        // If not reset, load and has inc, PC output increase 1
        else if (inc)
            pc_out <= pc_out + 1;
    end

endmodule