module alu_tb;

    // Inputs
    reg [2:0] opcode;
    reg [7:0] inA;
    reg [7:0] inB;
    
    // Outputs
    wire [7:0] out;
    wire is_zero;
    
    // Instantiate the ALU
    alu uut (
        .opcode(opcode),
        .inA(inA),
        .inB(inB),
        .out(out),
        .is_zero(is_zero)
    );
    
    // Test procedure
    initial begin
        // Initialize inputs
        opcode = 3'b000;
        inA = 8'b0;
        inB = 8'b0;
        
        // Open VCD file for waveform viewing
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);
        
        // Display header
        $display("Time\tOpcode\tinA\tinB\tout\tis_zero");
        $monitor("%0t\t%b\t%h\t%h\t%h\t%b", $time, opcode, inA, inB, out, is_zero);
        
        // Test case 1: HLT (out = inA)
        #10 opcode = 3'b000; inA = 8'h55; inB = 8'hAA;
        
        // Test case 2: SKZ (out = inA, check is_zero)
        #10 opcode = 3'b001; inA = 8'h00; inB = 8'hFF;
        #10 opcode = 3'b001; inA = 8'h01; inB = 8'hFF;
        
        // Test case 3: ADD (out = inA + inB)
        #10 opcode = 3'b010; inA = 8'h10; inB = 8'h20;
        #10 opcode = 3'b010; inA = 8'hFF; inB = 8'h01; // Test overflow
        
        // Test case 4: AND (out = inA & inB)
        #10 opcode = 3'b011; inA = 8'hF0; inB = 8'h0F;
        
        // Test case 5: XOR (out = inA ^ inB)
        #10 opcode = 3'b100; inA = 8'hAA; inB = 8'h55;
        
        // Test case 6: LDA (out = inB)
        #10 opcode = 3'b101; inA = 8'h33; inB = 8'hCC;
        
        // Test case 7: STO (out = inA)
        #10 opcode = 3'b110; inA = 8'h77; inB = 8'h88;
        
        // Test case 8: JMP (out = inA)
        #10 opcode = 3'b111; inA = 8'h99; inB = 8'h11;
        
        // Test case 9: Default case (invalid opcode)
        #10 opcode = 3'bxxx; inA = 8'hFF; inB = 8'h00;
        
        // Test case 10: Edge case (both inputs zero)
        #10 opcode = 3'b010; inA = 8'h00; inB = 8'h00;
        
        // Finish simulation
        #10 $display("Test completed");
        $finish;
    end

endmodule
