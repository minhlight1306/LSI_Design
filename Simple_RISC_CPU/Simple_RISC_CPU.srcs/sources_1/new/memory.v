`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 04:57:33 PM
// Design Name: 
// Module Name: memory
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
// Module: Memory
// Function: Store programs (commands) and data.
// Number of memory cells: 32 (5-bit address)
// Data Per Cell: 8-bit
// There are control signals: rd (read), wr (write)
// WARNING: Reading and writing are not allowed at the same time.
// =============================================================
module memory (
    input clk,              // Clock signal
    input rst,              // Synchronous reset, active high
    input rd,               // Read enable, active high
    input wr,               // Write enable, active high
    input [4:0] addr,       // 5-bit address
    inout [7:0] data        // 8-bit bidirectional data port
);

    // Memory array: 32 locations (2^5), each 8 bits wide
    reg [7:0] mem [0:31];
    
    // Internal data output register for read operations
    reg [7:0] data_out;
    
    // Bidirectional data port control
    assign data = (rd && !wr) ? data_out : 8'bz;
    integer i;
    // Memory operations on rising edge of clk
    always @(posedge clk) begin
        if (rst) begin
            // Reset memory (optional, can be modified based on requirements)
            
            for (i = 0; i < 32; i = i + 1) begin
                mem[i] <= 8'b0;
            end
        end else begin
            // Write operation
            if (wr && !rd) begin
                mem[addr] <= data;
            end
            // Read operation
            if (rd && !wr) begin
                data_out <= mem[addr];
            end
        end
    end

endmodule

