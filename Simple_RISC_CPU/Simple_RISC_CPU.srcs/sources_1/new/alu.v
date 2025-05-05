`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 05:07:23 PM
// Design Name: 
// Module Name: alu
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
// Module: ALU (Arithmetic Logic Unit)
// Function: Perform arithmetic and logical operations.
// Inputs:
// - inA: usually the value of the Accumulator (8-bit)
// - inB: reading from Memory (8-bit)
// - opcode: 3-bit (definition of command to be executed)
// Output:
// - result: 8-bit result
// - is_zero: asynchronous signal, equal to 1 if result = 0
// =============================================================
module alu (
    input [2:0] opcode,      // 3-bit opcode
    input [7:0] inA,         // 8-bit input A (e.g., Accumulator)
    input [7:0] inB,         // 8-bit input B (e.g., memory data)
    output reg [7:0] out,    // 8-bit output
    output is_zero           // 1-bit zero flag
);

    // Define opcode parameters for clarity
    parameter HLT = 3'b000;  // Halt
    parameter SKZ = 3'b001;  // Skip if zero
    parameter ADD = 3'b010;  // Addition
    parameter AND = 3'b011;  // Bitwise AND
    parameter XOR = 3'b100;  // Bitwise XOR
    parameter LDA = 3'b101;  // Load Accumulator
    parameter STO = 3'b110;  // Store
    parameter JMP = 3'b111;  // Jump

    // Compute is_zero asynchronously
    assign is_zero = (inA == 8'b0);

    // Combinational logic for ALU operations
    always @(*) begin
        case (opcode)
            HLT: out = inA;                    // Pass inA (no operation)
            SKZ: out = inA;                    // Pass inA (used with is_zero)
            ADD: out = inA + inB;              // Add inA and inB
            AND: out = inA & inB;              // Bitwise AND
            XOR: out = inA ^ inB;              // Bitwise XOR
            LDA: out = inB;                    // Load inB to Accumulator
            STO: out = inA;                    // Pass inA (for store)
            JMP: out = inA;                    // Pass inA (no ALU operation)
            default: out = inA;                // Default to passing inA
        endcase
    end

endmodule
