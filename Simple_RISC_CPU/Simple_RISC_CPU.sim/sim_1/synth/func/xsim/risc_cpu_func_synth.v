// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 22 22:09:30 2025
// Host        : Dont-look-me running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/vivada_project/lab/Simple_RISC_CPU/Simple_RISC_CPU.sim/sim_1/synth/func/xsim/risc_cpu_func_synth.v
// Design      : risc_cpu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module acc_register
   (\data_out_reg[3]_0 ,
    Q,
    \data_out_reg[7]_0 ,
    S,
    \data_out_reg[3]_1 ,
    out0_carry__0,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output \data_out_reg[3]_0 ;
  output [7:0]Q;
  output \data_out_reg[7]_0 ;
  output [3:0]S;
  output [3:0]\data_out_reg[3]_1 ;
  input [7:0]out0_carry__0;
  input [0:0]E;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire \data_out_reg[3]_0 ;
  wire [3:0]\data_out_reg[3]_1 ;
  wire \data_out_reg[7]_0 ;
  wire [7:0]out0_carry__0;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_1
       (.I0(Q[7]),
        .I1(out0_carry__0[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_2
       (.I0(Q[6]),
        .I1(out0_carry__0[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_3
       (.I0(Q[5]),
        .I1(out0_carry__0[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_4
       (.I0(Q[4]),
        .I1(out0_carry__0[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_1
       (.I0(Q[3]),
        .I1(out0_carry__0[3]),
        .O(\data_out_reg[3]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_2
       (.I0(Q[2]),
        .I1(out0_carry__0[2]),
        .O(\data_out_reg[3]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_3
       (.I0(Q[1]),
        .I1(out0_carry__0[1]),
        .O(\data_out_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_4
       (.I0(Q[0]),
        .I1(out0_carry__0[0]),
        .O(\data_out_reg[3]_1 [0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \pc_out[4]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\data_out_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \pc_out[4]_i_6 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\data_out_reg[3]_0 ));
endmodule

module alu
   (data1,
    data_out0_in,
    \data_out_reg[3] ,
    S);
  output [7:0]data1;
  input [6:0]data_out0_in;
  input [3:0]\data_out_reg[3] ;
  input [3:0]S;

  wire [3:0]S;
  wire [7:0]data1;
  wire [6:0]data_out0_in;
  wire [3:0]\data_out_reg[3] ;
  wire out0_carry__0_n_1;
  wire out0_carry__0_n_2;
  wire out0_carry__0_n_3;
  wire out0_carry_n_0;
  wire out0_carry_n_1;
  wire out0_carry_n_2;
  wire out0_carry_n_3;
  wire [3:3]NLW_out0_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry
       (.CI(1'b0),
        .CO({out0_carry_n_0,out0_carry_n_1,out0_carry_n_2,out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(data_out0_in[3:0]),
        .O(data1[3:0]),
        .S(\data_out_reg[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__0
       (.CI(out0_carry_n_0),
        .CO({NLW_out0_carry__0_CO_UNCONNECTED[3],out0_carry__0_n_1,out0_carry__0_n_2,out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data_out0_in[6:4]}),
        .O(data1[7:4]),
        .S(S));
endmodule

module controller
   (D,
    addr_mux_out,
    E,
    \FSM_onehot_state_reg[7]_0 ,
    ld_pc,
    Q,
    \data_out_reg[7] ,
    \FSM_onehot_state_reg[7]_1 ,
    clk_IBUF_BUFG,
    AS);
  output [0:0]D;
  output [4:0]addr_mux_out;
  output [0:0]E;
  output [3:0]\FSM_onehot_state_reg[7]_0 ;
  input ld_pc;
  input [4:0]Q;
  input [6:0]\data_out_reg[7] ;
  input [1:0]\FSM_onehot_state_reg[7]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_state_reg[7]_0 ;
  wire [1:0]\FSM_onehot_state_reg[7]_1 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [4:0]Q;
  wire [4:0]addr_mux_out;
  wire clk_IBUF_BUFG;
  wire [6:0]\data_out_reg[7] ;
  wire ld_pc;

  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[7]_1 [0]),
        .PRE(AS),
        .Q(\FSM_onehot_state_reg[7]_0 [0]));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg[7]_0 [0]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg[7]_0 [1]));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg[7]_0 [1]),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg[7]_0 [2]));
  (* FSM_ENCODED_STATES = "INST_FETCH:00000010,INST_LOAD:00000100,IDLE:00001000,OP_ADDR:00010000,OP_FETCH:00100000,ALU_OP:01000000,INST_ADDR:00000001,STORE:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_onehot_state_reg[7]_1 [1]),
        .Q(\FSM_onehot_state_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6660)) 
    \data_out[7]_i_1 
       (.I0(\data_out_reg[7] [6]),
        .I1(\data_out_reg[7] [5]),
        .I2(\FSM_onehot_state_reg[7]_0 [2]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    mem_reg_0_31_0_0_i_2
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\data_out_reg[7] [0]),
        .O(addr_mux_out[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    mem_reg_0_31_0_0_i_3
       (.I0(Q[1]),
        .I1(\FSM_onehot_state_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\data_out_reg[7] [1]),
        .O(addr_mux_out[1]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    mem_reg_0_31_0_0_i_4
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\data_out_reg[7] [2]),
        .O(addr_mux_out[2]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    mem_reg_0_31_0_0_i_5
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\data_out_reg[7] [3]),
        .O(addr_mux_out[3]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    mem_reg_0_31_0_0_i_6
       (.I0(Q[4]),
        .I1(\FSM_onehot_state_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg[7]_0 [1]),
        .I5(\data_out_reg[7] [4]),
        .O(addr_mux_out[4]));
  LUT3 #(
    .INIT(8'h8B)) 
    \pc_out[0]_i_1 
       (.I0(addr_mux_out[0]),
        .I1(ld_pc),
        .I2(Q[0]),
        .O(D));
endmodule

module memory
   (data_out,
    E,
    clk_IBUF_BUFG,
    Q,
    wr,
    addr_mux_out);
  output [7:0]data_out;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [7:0]Q;
  input wr;
  input [4:0]addr_mux_out;

  wire [0:0]E;
  wire [7:0]Q;
  wire [4:0]addr_mux_out;
  wire clk_IBUF_BUFG;
  wire [7:0]data_out;
  wire [7:0]data_out0;
  wire wr;

  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(data_out0[7]),
        .Q(data_out[7]),
        .R(1'b0));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00001000)) 
    mem_reg_0_31_0_0
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[0]),
        .O(data_out0[0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00001000)) 
    mem_reg_0_31_1_1
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[1]),
        .O(data_out0[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000001)) 
    mem_reg_0_31_2_2
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[2]),
        .O(data_out0[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000001)) 
    mem_reg_0_31_3_3
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[3]),
        .O(data_out0[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_4_4
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[4]),
        .O(data_out0[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000001)) 
    mem_reg_0_31_5_5
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[5]),
        .O(data_out0[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    mem_reg_0_31_6_6
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[6]),
        .O(data_out0[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "risc_cpu/mem/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000001)) 
    mem_reg_0_31_7_7
       (.A0(addr_mux_out[0]),
        .A1(addr_mux_out[1]),
        .A2(addr_mux_out[2]),
        .A3(addr_mux_out[3]),
        .A4(addr_mux_out[4]),
        .D(Q[7]),
        .O(data_out0[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr));
endmodule

module program_counter
   (Q,
    D,
    ld_pc,
    addr_mux_out,
    E,
    clk_IBUF_BUFG,
    AR);
  output [4:0]Q;
  input [0:0]D;
  input ld_pc;
  input [3:0]addr_mux_out;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [3:0]addr_mux_out;
  wire clk_IBUF_BUFG;
  wire ld_pc;
  wire [4:1]p_0_in;
  wire \pc_out[4]_i_4_n_0 ;

  LUT4 #(
    .INIT(16'hF606)) 
    \pc_out[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ld_pc),
        .I3(addr_mux_out[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \pc_out[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ld_pc),
        .I4(addr_mux_out[1]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFF6AAA00006AAA)) 
    \pc_out[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ld_pc),
        .I5(addr_mux_out[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \pc_out[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\pc_out[4]_i_4_n_0 ),
        .I3(ld_pc),
        .I4(addr_mux_out[3]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pc_out[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\pc_out[4]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(Q[4]));
endmodule

module register
   (E,
    ld_pc,
    Q,
    D,
    \FSM_onehot_state_reg[6] ,
    wr,
    \FSM_onehot_state_reg[6]_0 ,
    \FSM_onehot_state_reg[0] ,
    \pc_out_reg[4] ,
    \pc_out_reg[4]_0 ,
    \data_out_reg[7]_0 ,
    data1,
    \data_out_reg[7]_1 ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]E;
  output ld_pc;
  output [6:0]Q;
  output [7:0]D;
  output [1:0]\FSM_onehot_state_reg[6] ;
  output wr;
  output [0:0]\FSM_onehot_state_reg[6]_0 ;
  input [3:0]\FSM_onehot_state_reg[0] ;
  input \pc_out_reg[4] ;
  input \pc_out_reg[4]_0 ;
  input [7:0]\data_out_reg[7]_0 ;
  input [7:0]data1;
  input [7:0]\data_out_reg[7]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [3:0]\FSM_onehot_state_reg[0] ;
  wire [1:0]\FSM_onehot_state_reg[6] ;
  wire [0:0]\FSM_onehot_state_reg[6]_0 ;
  wire [6:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]data1;
  wire [7:0]\data_out_reg[7]_0 ;
  wire [7:0]\data_out_reg[7]_1 ;
  wire [5:5]instruction;
  wire ld_pc;
  wire \pc_out_reg[4] ;
  wire \pc_out_reg[4]_0 ;
  wire wr;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF700)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(instruction),
        .I3(\FSM_onehot_state_reg[0] [2]),
        .I4(\FSM_onehot_state_reg[0] [3]),
        .O(\FSM_onehot_state_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg[0] [2]),
        .I1(instruction),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\FSM_onehot_state_reg[6] [1]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[0]_i_1 
       (.I0(\data_out_reg[7]_0 [0]),
        .I1(instruction),
        .I2(data1[0]),
        .I3(\data_out_reg[7]_1 [0]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[1]_i_1 
       (.I0(\data_out_reg[7]_0 [1]),
        .I1(instruction),
        .I2(data1[1]),
        .I3(\data_out_reg[7]_1 [1]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[2]_i_1 
       (.I0(\data_out_reg[7]_0 [2]),
        .I1(instruction),
        .I2(data1[2]),
        .I3(\data_out_reg[7]_1 [2]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[3]_i_1 
       (.I0(\data_out_reg[7]_0 [3]),
        .I1(instruction),
        .I2(data1[3]),
        .I3(\data_out_reg[7]_1 [3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[4]_i_1 
       (.I0(\data_out_reg[7]_0 [4]),
        .I1(instruction),
        .I2(data1[4]),
        .I3(\data_out_reg[7]_1 [4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[5]_i_1 
       (.I0(\data_out_reg[7]_0 [5]),
        .I1(instruction),
        .I2(data1[5]),
        .I3(\data_out_reg[7]_1 [5]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[6]_i_1 
       (.I0(\data_out_reg[7]_0 [6]),
        .I1(instruction),
        .I2(data1[6]),
        .I3(\data_out_reg[7]_1 [6]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h28)) 
    \data_out[7]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0] [2]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(\FSM_onehot_state_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFF0099AAB830FF00)) 
    \data_out[7]_i_2 
       (.I0(\data_out_reg[7]_0 [7]),
        .I1(instruction),
        .I2(data1[7]),
        .I3(\data_out_reg[7]_1 [7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [5]),
        .Q(instruction));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[0] [1]),
        .CLR(AR),
        .D(\data_out_reg[7]_0 [7]),
        .Q(Q[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    mem_reg_0_31_0_0_i_1
       (.I0(\FSM_onehot_state_reg[0] [3]),
        .I1(instruction),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(wr));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_out[4]_i_1 
       (.I0(ld_pc),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .O(E));
  LUT6 #(
    .INIT(64'h8008800080008000)) 
    \pc_out[4]_i_3 
       (.I0(\FSM_onehot_state_reg[0] [2]),
        .I1(instruction),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\pc_out_reg[4] ),
        .I5(\pc_out_reg[4]_0 ),
        .O(ld_pc));
endmodule

(* NotValidForBitStream *)
module risc_cpu
   (clk,
    rst,
    data_out);
  input clk;
  input rst;
  output [7:0]data_out;

  wire acc_n_0;
  wire acc_n_10;
  wire acc_n_11;
  wire acc_n_12;
  wire acc_n_13;
  wire acc_n_14;
  wire acc_n_15;
  wire acc_n_16;
  wire acc_n_17;
  wire acc_n_9;
  wire [4:0]addr_mux_out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ctrl_n_7;
  wire ctrl_n_8;
  wire [7:0]data1;
  wire [7:0]data_out;
  wire [7:0]data_out_OBUF;
  wire inc_pc;
  wire inst_n_0;
  wire inst_n_17;
  wire inst_n_18;
  wire [7:0]instruction;
  wire ld_ac;
  wire ld_ir;
  wire ld_pc;
  wire [7:0]mem_data;
  wire [7:0]out;
  wire [0:0]p_0_in;
  wire [4:0]pc_out;
  wire rd;
  wire rst;
  wire rst_IBUF;
  wire wr;

  acc_register acc
       (.AR(rst_IBUF),
        .D(out),
        .E(ld_ac),
        .Q(data_out_OBUF),
        .S({acc_n_10,acc_n_11,acc_n_12,acc_n_13}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_out_reg[3]_0 (acc_n_0),
        .\data_out_reg[3]_1 ({acc_n_14,acc_n_15,acc_n_16,acc_n_17}),
        .\data_out_reg[7]_0 (acc_n_9),
        .out0_carry__0(mem_data));
  alu alu_inst
       (.S({acc_n_10,acc_n_11,acc_n_12,acc_n_13}),
        .data1(data1),
        .data_out0_in(data_out_OBUF[6:0]),
        .\data_out_reg[3] ({acc_n_14,acc_n_15,acc_n_16,acc_n_17}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  controller ctrl
       (.AS(rst_IBUF),
        .D(p_0_in),
        .E(rd),
        .\FSM_onehot_state_reg[7]_0 ({ctrl_n_7,ctrl_n_8,ld_ir,inc_pc}),
        .\FSM_onehot_state_reg[7]_1 ({inst_n_17,inst_n_18}),
        .Q(pc_out),
        .addr_mux_out(addr_mux_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_out_reg[7] ({instruction[7:6],instruction[4:0]}),
        .ld_pc(ld_pc));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  register inst
       (.AR(rst_IBUF),
        .D(out),
        .E(inst_n_0),
        .\FSM_onehot_state_reg[0] ({ctrl_n_7,ctrl_n_8,ld_ir,inc_pc}),
        .\FSM_onehot_state_reg[6] ({inst_n_17,inst_n_18}),
        .\FSM_onehot_state_reg[6]_0 (ld_ac),
        .Q({instruction[7:6],instruction[4:0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data1(data1),
        .\data_out_reg[7]_0 (mem_data),
        .\data_out_reg[7]_1 (data_out_OBUF),
        .ld_pc(ld_pc),
        .\pc_out_reg[4] (acc_n_9),
        .\pc_out_reg[4]_0 (acc_n_0),
        .wr(wr));
  memory mem
       (.E(rd),
        .Q(data_out_OBUF),
        .addr_mux_out(addr_mux_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data_out(mem_data),
        .wr(wr));
  program_counter pc
       (.AR(rst_IBUF),
        .D(p_0_in),
        .E(inst_n_0),
        .Q(pc_out),
        .addr_mux_out(addr_mux_out[4:1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ld_pc(ld_pc));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
