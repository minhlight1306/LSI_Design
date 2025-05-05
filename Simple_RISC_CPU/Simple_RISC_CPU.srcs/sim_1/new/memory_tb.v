module memory_tb;

    // Inputs
    reg clk;
    reg rst;
    reg rd;
    reg wr;
    reg [4:0] addr;
    reg [7:0] data_in;
    
    // Bidirectional data port
    wire [7:0] data;
    
    // Drive bidirectional data port
    assign data = (wr && !rd) ? data_in : 8'bz;
    
    // Instantiate the Memory module
    memory uut (
        .clk(clk),
        .rst(rst),
        .rd(rd),
        .wr(wr),
        .addr(addr),
        .data(data)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    
    // Test procedure
    initial begin
        // Initialize inputs
        rst = 0;
        rd = 0;
        wr = 0;
        addr = 5'b0;
        data_in = 8'b0;
        
        // Open VCD file for waveform viewing
        $dumpfile("memory_tb.vcd");
        $dumpvars(0, memory_tb);
        
        // Display header
        $display("Time\tRST\tRD\tWR\tAddr\tData_In\tData_Out");
        $monitor("%0t\t%b\t%b\t%b\t%h\t%h\t%h", $time, rst, rd, wr, addr, data_in, data);
        
        // Test case 1: Reset memory
        #10 rst = 1;
        #10 rst = 0;
        
        // Test case 2: Write to address 0x00
        #10 wr = 1; rd = 0; addr = 5'h00; data_in = 8'hA5;
        #10 wr = 0;
        
        // Test case 3: Read from address 0x00
        #10 rd = 1; wr = 0; addr = 5'h00;
        #10 rd = 0;
        
        // Test case 4: Write to address 0x1F (max address)
        #10 wr = 1; rd = 0; addr = 5'h1F; data_in = 8'hFF;
        #10 wr = 0;
        
        // Test case 5: Read from address 0x1F
        #10 rd = 1; wr = 0; addr = 5'h1F;
        #10 rd = 0;
        
        // Test case 6: Attempt simultaneous read and write (invalid)
        #10 rd = 1; wr = 1; addr = 5'h10; data_in = 8'h55;
        #10 rd = 0; wr = 0;
        
        // Test case 7: Write and read from middle address 0x10
        #10 wr = 1; rd = 0; addr = 5'h10; data_in = 8'h3C;
        #10 wr = 0;
        #10 rd = 1; wr = 0; addr = 5'h10;
        #10 rd = 0;
        
        // Test case 8: Reset and read from address 0x00
        #10 rst = 1;
        #10 rst = 0;
        #10 rd = 1; wr = 0; addr = 5'h00;
        #10 rd = 0;
        
        // Finish simulation
        #10 $display("Test completed");
        $finish;
    end

endmodule
