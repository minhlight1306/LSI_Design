`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 05:20:38 PM
// Design Name: 
// Module Name: cpu_top
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
// Module: risc_cpu
// Function: Integrated submodules (PC, Address Mux, Memory, IR,
//                          Accumulator, ALU, and Controller) into a complete CPU.
// =============================================================
module risc_cpu (
    input wire clk,
    input wire rst,
    output wire [7:0] data_out
);

    // Internal signals
    wire [4:0] pc_out,          // Ouput of PC
               addr_mux_out;    // Address out from Address Mux for Memory
    wire [7:0] instruction,     // Commands are loaded into the Instruction Register
               mem_data,        // Data Read Out of Memory
               alu_out,         // Output of ALU
               acc_out;         // Output of Accumulator
    wire [2:0] opcode;          // Opcode taken from IR
    wire [4:0] instr_addr;      // Operand (address) is in the IR command
    
    // Control signal from Controller
    wire sel, rd, ld_ir, halt, inc_pc, ld_ac, ld_pc, wr, data_e, is_zero;

    // ---------- Divide the field of Instruction ----------
    // 8-bit command format: [opcode(3-bit) | operand(5-bit)]
    assign opcode     = instruction[7:5];
    assign instr_addr = instruction[4:0];

    // Program Counter
    program_counter pc (
        .clk(clk),
        .rst(rst),
        .load(ld_pc),
        .inc(inc_pc),
        // When performing a jump, load the operand from IR into the PC
        .data_in(addr_mux_out),
        .pc_out(pc_out)
    );

    // Address Mux: select address for Memory (PC or operand from IR)
    address_mux addr_mux (
        .sel(sel),
        .pc_addr(pc_out),
        .inst_addr(instr_addr),
        .addr_out(addr_mux_out)
    );

//     Memory: program and data storage
    memory mem (
    .clk(clk),
    .rst(rst),
    .rd(rd),
    .wr(wr),
    .addr(addr_mux_out),
    .data(data_bus)
);

//// Kết nối acc_out (ghi) và mem_data (đọc) vào data_bus
assign data_bus = (wr && !rd) ? acc_out : 8'bz;     // CPU ghi vào bus
assign mem_data = (rd && !wr) ? data_bus : 8'b0;    // CPU đọc từ bus

    // Instruction Register
    ins_register inst (
        .clk(clk),
        .rst(rst),
        .load(ld_ir),
        .data_in(mem_data),
        .data_out(instruction)
    );

    // ALU: Perform ocode-based math
    alu alu_inst (
        .opcode(opcode),
        .inA(acc_out),
        .inB(mem_data),
        .out(alu_out),
        .is_zero(is_zero)
    );

    // Accumulator
    acc_register acc (
        .clk(clk),
        .rst(rst),
        .load(ld_ac),
        // Fetch output from ALU
        .data_in(alu_out),
        .data_out(acc_out)
    );

    // Controller: control CPU via FSM
    controller ctrl (
        .clk(clk),
        .rst(rst),
        .opcode(opcode),
        .is_zero(is_zero),
        .sel(sel),
        .rd(rd),
        .ld_ir(ld_ir),
        .halt(halt),
        .inc_pc(inc_pc),
        .ld_ac(ld_ac),
        .ld_pc(ld_pc),
        .wr(wr),
        .data_e(data_e)
    );

    // Output
    assign data_out = acc_out;

endmodule