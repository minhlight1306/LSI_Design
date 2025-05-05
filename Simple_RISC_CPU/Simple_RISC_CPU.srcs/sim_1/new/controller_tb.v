`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:05:39 PM
// Design Name: 
// Module Name: tb1
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


module controller_tb;

  reg clk = 0;
  reg rst = 1;
  reg [2:0] opcode = 3'b000;
  reg is_zero = 0;
  

  wire sel, rd, ld_ir, halt, inc_pc, ld_ac, ld_pc, wr, data_e;

  // Tạo clock 10ns
  always #5 clk = ~clk;

  controller uut (
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

  initial begin
    // Reset trong 2 chu kỳ clock
    #12;
    rst = 0;

    // Giữ nguyên opcode trong suốt quá trình
    opcode = 3'b001; 
    
    //opcode == 2
    #92
    rst = 1;
    opcode = 3'b010; // ví dụ LDA
    
    #102
    rst = 0;
    
    //opcode == 3
    #192
    rst = 1;
    opcode = 3'b011; 
    
    #202
    rst = 0;
    
    //opcode == 4
    #292
    rst = 1;
    opcode = 3'b100; 
    
    #302
    rst = 0;
    
    //opcode == 5
    #392
    rst = 1;
    opcode = 3'b101; 
    
    #402
    rst = 0;
    
    //opcode == 6
    #492
    rst = 1;
    opcode = 3'b110; 
    
    #502
    rst = 0;
    
    //opcode == 7
    #592
    rst = 1;
    opcode = 3'b111; 
    
    #602
    rst = 0;


    #2000;

    $stop;
  end

endmodule
