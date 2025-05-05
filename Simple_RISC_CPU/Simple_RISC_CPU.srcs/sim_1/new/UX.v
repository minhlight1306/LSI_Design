`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 11:17:46 PM
// Design Name: 
// Module Name: UX
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


reg clk;
reg rst;

wire [7:0] accumulator; 
wire [4:0] pc;         
wire [7:0] memory_out; 
wire halt;              

reg [7:0] test_memory [0:31];
integer i, error_count;
reg [2:0] test_opcode;
reg [4:0] test_operand;
reg [7:0] expected_result;

risc_cpu dut (
    .clk(clk),
    .rst(rst),
    .accumulator(accumulator),
    .pc(pc),
    .memory_out(memory_out),
    .halt(halt)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

initial begin
    // Initialize signals
    rst = 1;
    error_count = 0;
    $display("Starting RISC CPU Testbench...");
    $display("=================================");
    
    for (i = 0; i < 32; i = i + 1) begin
        test_memory[i] = 8'h00;
    end
    
    #20 rst = 0;
    $display("Reset completed. Beginning tests...");
    
    $display("\nTest Case 1: HLT (Opcode 000)");
    test_memory[0] = {3'b000, 5'b00000}; 
    run_test(3'b000, 5'b00000, 8'h00, "HLT");
    
    $display("\nTest Case 2: ADD (Opcode 010)");
    test_memory[0] = {3'b010, 5'b00010}; 
    test_memory[2] = 8'h05;              
    test_memory[1] = {3'b101, 5'b00001}; 
    test_memory[1] = 8'h03;              
    expected_result = 8'h08;             
    run_test(3'b010, 5'b00010, expected_result, "ADD");
    
    $display("\nTest Case 3: AND (Opcode 011)");
    test_memory[0] = {3'b011, 5'b00011}; 
    test_memory[3] = 8'h0F;              
    test_memory[1] = {3'b101, 5'b00001}; 
    test_memory[1] = 8'hAA;              
    expected_result = 8'h0A;             
    run_test(3'b011, 5'b00011, expected_result, "AND");
    
    $display("\nTest Case 4: XOR (Opcode 100)");
    test_memory[0] = {3'b100, 5'b00100}; 
    test_memory[4] = 8'h0F;              
    test_memory[1] = {3'b101, 5'b00001}; 
    test_memory[1] = 8'hAA;              
    expected_result = 8'hA5;             
    run_test(3'b100, 5'b00100, expected_result, "XOR");
    
    $display("\nTest Case 5: LDA (Opcode 101)");
    test_memory[0] = {3'b101, 5'b00101}; 
    test_memory[5] = 8'h55;              
    expected_result = 8'h55;             
    run_test(3'b101, 5'b00101, expected_result, "LDA");
    
    $display("\nTest Case 6: STO (Opcode 110)");
    test_memory[0] = {3'b101, 5'b00001}; 
    test_memory[1] = 8'hAA;              
    test_memory[2] = {3'b110, 5'b00110}; 
    expected_result = 8'hAA;             
    run_test(3'b110, 5'b00110, expected_result, "STO");
    
    $display("\nTest Case 7: JMP (Opcode 111)");
    test_memory[0] = {3'b111, 5'b01000}; 
    expected_result = 8'h08;             
    run_test(3'b111, 5'b01000, expected_result, "JMP");
    
    $display("\nTest Case 8: SKZ (Opcode 001)");
    test_memory[0] = {3'b101, 5'b00001}; 
    test_memory[1] = 8'h00;              
    test_memory[2] = {3'b001, 5'b00000}; 
    test_memory[3] = {3'b111, 5'b01000}; 
    expected_result = 8'h08;             
    run_test(3'b001, 5'b00000, expected_result, "SKZ");
    
    $display("\n=================================");
    $display("Testbench completed. Total errors: %0d", error_count);
    if (error_count == 0) begin
        $display("All tests PASSED!");
    end else begin
        $display("Some tests FAILED. Please check the error messages.");
    end
    $finish;
end

task run_test;
    input [2:0] opcode;
    input [4:0] operand;
    input [7:0] expected;
    input [7:0] test_name;
    begin
        test_opcode = opcode;
        test_operand = operand;
        repeat(8) @(posedge clk);
        
        case (opcode)
            3'b000: begin 
                if (halt !== 1) begin
                    $display("ERROR: %s - Halt signal not asserted!", test_name);
                    error_count = error_count + 1;
                end else begin
                    $display("PASS: %s - Halt signal asserted correctly.", test_name);
                end
            end
            3'b001: begin 
                if (pc !== expected) begin
                    $display("ERROR: %s - PC = %h, Expected = %h", test_name, pc, expected);
                    error_count = error_count + 1;
                end else begin
                    $display("PASS: %s - PC = %h as expected.", test_name, pc);
                end
            end
            3'b010, 3'b011, 3'b100, 3'b101: begin 
                if (accumulator !== expected) begin
                    $display("ERROR: %s - Accumulator = %h, Expected = %h", test_name, accumulator, expected);
                    error_count = error_count + 1;
                end else begin
                    $display("PASS: %s - Accumulator = %h as expected.", test_name, accumulator);
                end
            end
            3'b110: begin 
                if (test_memory[operand] !== expected) begin
                    $display("ERROR: %s - Memory[%h] = %h, Expected = %h", test_name, operand, test_memory[operand], expected);
                    error_count = error_count + 1;
                end else begin
                    $display("PASS: %s - Memory[%h] = %h as expected.", test_name, operand, test_memory[operand]);
                end
            end
            3'b111: begin 
                if (pc !== expected) begin
                    $display("ERROR: %s - PC = %h, Expected = %h", test_name, pc, expected);
                    error_count = error_count + 1;
                end else begin
                    $display("PASS: %s - PC = %h as expected.", test_name, pc);
                end
            end
        endcase
    end
endtask

always @(posedge clk) begin
    $display("Cycle: %0t | PC: %h | Accumulator: %h | Memory Out: %h | Halt: %b",
             $time, pc, accumulator, memory_out, halt);
end