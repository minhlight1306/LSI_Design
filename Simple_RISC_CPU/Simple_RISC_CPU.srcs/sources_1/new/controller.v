`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2025 10:06:41 PM
// Design Name: 
// Module Name: controller
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
// Module: Controller
// Function: Control the entire CPU operation through an FSM.
// Inputs:
// - opcode: from the Instruction Register (3-bit)
// - is_zero: signal from ALU (for SKZ processing)
// Output: Control signals for other modules.
// - sel: for Address Mux (0: select PC; 1: select operand from IR)
// - rd: Triggers Memory reading
// - wr: Trigger Memory Write
// - ld_ir: load Instruction Register
// - inc_pc: increase PC (fetch command)
// - ld_pc: load the new value to the PC (for JMP commands)
// - ld_ac: load Accumulator (receive results from ALU)
// - halt: stops CPU when HLT command is encountered
// - data_e: data enable
// =============================================================

module controller(
    //IO CONGIGS
    input wire clk,             // input clock signal
    input wire rst,             // input reset signal (active high)
    input wire [2:0] opcode,    // 3-bit instruction opcode
    input wire is_zero,         // zero flag from ALU
    
    output reg sel,             // select address (PC or instruction address)
    output reg rd,              // memory read enable
    output reg ld_ir,           // load instruction register
    output reg halt,            // halt signal
    output reg inc_pc,          // increment program counter
    output reg ld_ac,           // load accumulator
    output reg ld_pc,           // load program counter (JMP)
    output reg wr,              // memory write enable
    output reg data_e           // data enable (for storing to memory)
    );
    
    //STATES
    parameter INST_ADDR  = 3'b000;  // fetch instruction address
    parameter INST_FETCH = 3'b001;  // read instruction from memory
    parameter INST_LOAD  = 3'b010;  // load instruction into IR
    parameter IDLE       = 3'b011;  // decode and prepare
    parameter OP_ADDR    = 3'b100;  // address operand phase
    parameter OP_FETCH   = 3'b101;  // fetch operand from memory
    parameter ALU_OP     = 3'b110;  // execute ALU or memory op
    parameter STORE      = 3'b111;  // store result if needed

    reg [2:0] state, next_state;
    
    always @(posedge clk) begin
    //If reset signal == 1, go back to first state
    if (rst)state <= INST_ADDR;
    else state <= next_state;
    end
    
    //STATE MACHINE
    always @(*) begin
    //init all value = 0
        sel = 0;
        rd = 0;
        ld_ir = 0;
        halt = 0;
        inc_pc = 0;
        ld_ac = 0;
        ld_pc = 0;
        wr = 0;
        data_e = 0;
        case (state)
            //STATE: INST_ADDR
            INST_ADDR: begin
            sel = 1;
            next_state = INST_FETCH;
           end
           //STATE: INST_FETCH
            INST_FETCH: begin
            sel = 1;
            rd = 1;
            next_state = INST_LOAD;
           end
           //STATE: INST_LOAD
            INST_LOAD: begin
            sel = 1;
            rd = 1;
            ld_ir = 1;
            next_state = IDLE;
           end   
           //STATE: IDLE
             IDLE: begin
             sel = 1;
             rd = 1;
             ld_ir = 1;
                case (opcode)       //READ OPCODE
                    3'b000: begin   // HLT
                        halt = 1;
                        next_state = INST_ADDR; 
                    end
                    3'b001: begin   // SKZ
                        if (is_zero) inc_pc = 1;
                        next_state = INST_ADDR;
                    end
                    default: next_state = OP_ADDR;
                endcase
            end
            //STATE: OP_ADDR
            OP_ADDR: begin
                sel = 0;
                inc_pc = 1;
                next_state = OP_FETCH;
            end
            
            //STATE: OP_FETCH
            OP_FETCH: begin
                if (opcode == 3'b010 || opcode == 3'b011 || opcode == 3'b100 || opcode == 3'b101)
                rd = 1;
                next_state = ALU_OP;
            end

            //STATE:  ALU_OP
            ALU_OP: begin
                case (opcode)       //READ OPCODE
                 3'b010, 3'b011, 3'b100, 3'b101: rd = 1; 
                 3'b111: ld_pc = 1; //JMP
                 3'b001: if (is_zero) inc_pc = 1; 
                 endcase
                 next_state = STORE;
               end
           //STATE:  STORE
            STORE: begin
                case (opcode)       //READ OPCODE
                3'b110: begin // STO
                wr = 1;
                data_e = 1;
                end
                3'b010, 3'b011, 3'b100, 3'b101: begin // ADD, AND, XOR, LDA
                rd = 1;
                ld_ac = 1;
                end
                3'b111: begin // JMP
                ld_pc = 1;
                end
                endcase
                next_state = INST_ADDR;     // loop back to start
                end
          endcase
      end
endmodule

