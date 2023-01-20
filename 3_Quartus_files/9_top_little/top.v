// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Full Version"
// CREATED		"Mon Mar 23 17:04:33 2020"

module top(
	reset,
	clock,
	PORTA,
	PORTB
);


input wire	reset;
input wire	clock;
output wire	[4:0] PORTA;
output wire	[7:0] PORTB;

wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_5;
wire	[9:0] SYNTHESIZED_WIRE_37;
wire	[9:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	[9:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	[13:0] SYNTHESIZED_WIRE_13;
wire	[1:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	[9:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[4:0] SYNTHESIZED_WIRE_38;
wire	[9:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;





pc	b2v_inst(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.goto_en(SYNTHESIZED_WIRE_1),
	.en(SYNTHESIZED_WIRE_2),
	.call_en(SYNTHESIZED_WIRE_35),
	.out_en(SYNTHESIZED_WIRE_36),
	.short_jump_en(SYNTHESIZED_WIRE_5),
	.IN_SFR(SYNTHESIZED_WIRE_37),
	.IN_STACK(SYNTHESIZED_WIRE_7),
	.OUT_MEMORY(SYNTHESIZED_WIRE_10),
	.OUT_STACK(SYNTHESIZED_WIRE_20));


memory	b2v_inst1(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.en(SYNTHESIZED_WIRE_9),
	.IN_PC(SYNTHESIZED_WIRE_10),
	.OUT_DECODE(SYNTHESIZED_WIRE_13));


decode	b2v_inst3(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.en(SYNTHESIZED_WIRE_12),
	.IN_MEMORY(SYNTHESIZED_WIRE_13),
	.en_SFR(SYNTHESIZED_WIRE_23),
	.en_ALU(SYNTHESIZED_WIRE_30),
	.OUT_opcode(SYNTHESIZED_WIRE_38),
	.OUT_operand(SYNTHESIZED_WIRE_39),
	.sel(SYNTHESIZED_WIRE_15));


control	b2v_inst4(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.sel(SYNTHESIZED_WIRE_15),
	.s0(SYNTHESIZED_WIRE_9),
	.s1(SYNTHESIZED_WIRE_12),
	.s2(SYNTHESIZED_WIRE_22),
	.s3(SYNTHESIZED_WIRE_29),
	.s4(SYNTHESIZED_WIRE_24),
	.s5(SYNTHESIZED_WIRE_2),
	.s6(SYNTHESIZED_WIRE_17));


stack	b2v_inst5(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.en(SYNTHESIZED_WIRE_17),
	.press_en(SYNTHESIZED_WIRE_35),
	.out_en(SYNTHESIZED_WIRE_36),
	.IN_PC(SYNTHESIZED_WIRE_20),
	.OUT_PC(SYNTHESIZED_WIRE_7));

assign	SYNTHESIZED_WIRE_34 =  ~reset;


sfr	b2v_inst7(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.en(SYNTHESIZED_WIRE_22),
	.en_DECODE(SYNTHESIZED_WIRE_23),
	.write_en(SYNTHESIZED_WIRE_24),
	.IN_ALU(SYNTHESIZED_WIRE_25),
	.IN_opcode(SYNTHESIZED_WIRE_38),
	.IN_operand(SYNTHESIZED_WIRE_39),
	.en_goto(SYNTHESIZED_WIRE_1),
	.en_call(SYNTHESIZED_WIRE_35),
	.en_out(SYNTHESIZED_WIRE_36),
	.en_short_jump(SYNTHESIZED_WIRE_5),
	.OUT_ALU_PC(SYNTHESIZED_WIRE_37),
	.PORTA(PORTA),
	.PORTB(PORTB));


alu	b2v_inst8(
	.clock(clock),
	.reset(SYNTHESIZED_WIRE_34),
	.en(SYNTHESIZED_WIRE_29),
	.en_DECODE(SYNTHESIZED_WIRE_30),
	.IN_opcode(SYNTHESIZED_WIRE_38),
	.IN_operand(SYNTHESIZED_WIRE_39),
	.IN_SER(SYNTHESIZED_WIRE_37),
	.OUT_SFR(SYNTHESIZED_WIRE_25));


endmodule
