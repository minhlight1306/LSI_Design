`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 04:53:24 PM
// Design Name: 
// Module Name: address_mux
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
// Module: Address Mux
// Function: Choose between address from PC (fetch command) or
// address taken from the operand field in instruction (for jump commands, LDA, STO,...)
// Control: "sel" signal from the Controller.
// If sel == 1, choose pc_addr else instruction_addr
// =============================================================

module address_mux (
    input wire sel, // input select
    input wire [4:0] pc_addr, // input address of PC
    input wire [4:0] inst_addr, // input address of instruction register
    output wire [4:0] addr_out // output address salected
);
    // If sel == 1, addr_out = pc_addr else addr_out = inst_addr
    assign addr_out = sel ? pc_addr : inst_addr;

endmodule