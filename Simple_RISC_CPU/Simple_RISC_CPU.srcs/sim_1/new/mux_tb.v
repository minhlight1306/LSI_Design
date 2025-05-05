`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 09:37:46 PM
// Design Name: 
// Module Name: mux_tb
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
// Check operation of MUX when sel = 1 or sel = 0
//////////////////////////////////////////////////////////////////////////////////


module mux_tb;
    // Declare testbench signals
    reg sel;
    reg [4:0] pc_addr;
    reg [4:0] inst_addr;
    wire [4:0] addr_out;
    
    // Instantiate the add_mux
    address_mux uut (
        .sel(sel),
        .pc_addr(pc_addr),
        .inst_addr(inst_addr),
        .addr_out(addr_out)
    );
    
    // Test procedure
    initial begin
        // Initialize inputs
        pc_addr = 5'b00000; // PC address
        inst_addr = 5'b00001; // Instruction add
        sel = 0;
        
        #10;
        $display("sel=%b, pc_addr=%b, inst_addr=%b => addr_out=%b",
                sel, pc_addr, inst_addr, addr_out);
                
        // Change sel to 1
        sel = 1;
        #10;
        $display("sel=%b, pc_addr=%b, inst_addr=%b => addr_out=%b",
                sel, pc_addr, inst_addr, addr_out);
        
        // Test with different values
        pc_addr = 5'b10101;
        inst_addr = 5'b01010;
        sel = 0;
        #10;
        $display("sel=%b, pc_addr=%b, inst_addr=%b => addr_out=%b",
                sel, pc_addr, inst_addr, addr_out);
        sel = 1;
        #10;
        $display("sel=%b, pc_addr=%b, inst_addr=%b => addr_out=%b",
                sel, pc_addr, inst_addr, addr_out);
        $finish;
    end
endmodule
