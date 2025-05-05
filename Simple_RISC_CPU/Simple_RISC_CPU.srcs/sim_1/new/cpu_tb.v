module cpu_tb;

    // Inputs
    reg clk;
    reg rst;
    // Outputs
    wire [7:0] data_out;

    // Instantiate the CPU
    risc_cpu uut (
        .clk(clk),
        .rst(rst),
        .data_out(data_out)
    );

    // Clock generation (10ns period = 100MHz)
    always #5 clk = ~clk;

    // Initialize and stimulate inputs
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Hold reset for some time
        #20;
        rst = 0;
        // Wait and observe outputs
        #500;

        // Finish simulation
        $finish;
    end

    // Optional: Monitor outputs
    initial begin
        $monitor("Time=%0t | data_out=%h", $time, data_out);
    end

endmodule