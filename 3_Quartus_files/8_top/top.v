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
// CREATED		"Thu Mar 26 11:04:10 2020"

module top(
	reset,
	clock,
	s0,
	s1,
	s2,
	s3,
	s4,
	en_goto,
	en_call,
	en_out,
	en_short_jump,
	s7,
	s6,
	s5,
	Z,
	OUT_ALU_PC,
	OUT_DECODE,
	OUT_MEMORY,
	out_opcode,
	out_operand,
	OUT_PC,
	OUT_SFR,
	OUT_STACK,
	PORTA,
	PORTB,
	sel,
	status,
	W
);


input wire	reset;
input wire	clock;
output wire	s0;
output wire	s1;
output wire	s2;
output wire	s3;
output wire	s4;
output wire	en_goto;
output wire	en_call;
output wire	en_out;
output wire	en_short_jump;
output wire	s7;
output wire	s6;
output wire	s5;
output wire	Z;
output wire	[9:0] OUT_ALU_PC;
output wire	[13:0] OUT_DECODE;
output wire	[9:0] OUT_MEMORY;
output wire	[4:0] out_opcode;
output wire	[9:0] out_operand;
output wire	[9:0] OUT_PC;
output wire	[7:0] OUT_SFR;
output wire	[9:0] OUT_STACK;
output wire	[4:0] PORTA;
output wire	[7:0] PORTB;
output wire	[1:0] sel;
output wire	[7:0] status;
output wire	[7:0] W;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_4;
wire	[9:0] SYNTHESIZED_WIRE_29;
wire	[9:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	[9:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[13:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[7:0] SYNTHESIZED_WIRE_15;
wire	[4:0] SYNTHESIZED_WIRE_30;
wire	[9:0] SYNTHESIZED_WIRE_31;
wire	[1:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	[9:0] SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;

assign	s0 = SYNTHESIZED_WIRE_7;
assign	s1 = SYNTHESIZED_WIRE_9;
assign	s2 = SYNTHESIZED_WIRE_12;
assign	s3 = SYNTHESIZED_WIRE_23;
assign	s4 = SYNTHESIZED_WIRE_13;
assign	en_goto = SYNTHESIZED_WIRE_0;
assign	en_call = SYNTHESIZED_WIRE_27;
assign	en_out = SYNTHESIZED_WIRE_28;
assign	en_short_jump = SYNTHESIZED_WIRE_4;
assign	s7 = SYNTHESIZED_WIRE_19;
assign	s6 = SYNTHESIZED_WIRE_1;
assign	s5 = SYNTHESIZED_WIRE_11;
assign	Z = SYNTHESIZED_WIRE_14;
assign	OUT_ALU_PC = SYNTHESIZED_WIRE_29;
assign	OUT_DECODE = SYNTHESIZED_WIRE_10;
assign	OUT_MEMORY = SYNTHESIZED_WIRE_8;
assign	out_opcode = SYNTHESIZED_WIRE_30;
assign	out_operand = SYNTHESIZED_WIRE_31;
assign	OUT_PC = SYNTHESIZED_WIRE_6;
assign	OUT_SFR = SYNTHESIZED_WIRE_15;
assign	OUT_STACK = SYNTHESIZED_WIRE_22;
assign	sel = SYNTHESIZED_WIRE_18;




pc	b2v_inst(
	.clock(clock),
	.reset(reset),
	.goto_en(SYNTHESIZED_WIRE_0),
	.en(SYNTHESIZED_WIRE_1),
	.call_en(SYNTHESIZED_WIRE_27),
	.out_en(SYNTHESIZED_WIRE_28),
	.short_jump_en(SYNTHESIZED_WIRE_4),
	.IN_SFR(SYNTHESIZED_WIRE_29),
	.IN_STACK(SYNTHESIZED_WIRE_6),
	.OUT_MEMORY(SYNTHESIZED_WIRE_8),
	.OUT_STACK(SYNTHESIZED_WIRE_22));


memory	b2v_inst1(
	.clock(clock),
	.reset(reset),
	.en(SYNTHESIZED_WIRE_7),
	.IN_PC(SYNTHESIZED_WIRE_8),
	.OUT_DECODE(SYNTHESIZED_WIRE_10));


decode	b2v_inst2(
	.clock(clock),
	.reset(reset),
	.en(SYNTHESIZED_WIRE_9),
	.IN_MEMORY(SYNTHESIZED_WIRE_10),
	.OUT_opcode(SYNTHESIZED_WIRE_30),
	.OUT_operand(SYNTHESIZED_WIRE_31),
	.sel(SYNTHESIZED_WIRE_18));


sfr	b2v_inst3(
	.clock(clock),
	.reset(reset),
	.Z_en(SYNTHESIZED_WIRE_11),
	.en(SYNTHESIZED_WIRE_12),
	.write_en(SYNTHESIZED_WIRE_13),
	.Z(SYNTHESIZED_WIRE_14),
	.IN_ALU(SYNTHESIZED_WIRE_15),
	.IN_opcode(SYNTHESIZED_WIRE_30),
	.IN_operand(SYNTHESIZED_WIRE_31),
	.en_goto(SYNTHESIZED_WIRE_0),
	.en_call(SYNTHESIZED_WIRE_27),
	.en_out(SYNTHESIZED_WIRE_28),
	.en_short_jump(SYNTHESIZED_WIRE_4),
	.OUT_ALU_PC(SYNTHESIZED_WIRE_29),
	.PORTA(PORTA),
	.PORTB(PORTB),
	.status(status));


control	b2v_inst4(
	.clock(clock),
	.reset(reset),
	.sel(SYNTHESIZED_WIRE_18),
	.s0(SYNTHESIZED_WIRE_7),
	.s1(SYNTHESIZED_WIRE_9),
	.s2(SYNTHESIZED_WIRE_12),
	.s3(SYNTHESIZED_WIRE_23),
	.s4(SYNTHESIZED_WIRE_13),
	.s5(SYNTHESIZED_WIRE_11),
	.s6(SYNTHESIZED_WIRE_1),
	.s7(SYNTHESIZED_WIRE_19));


stack	b2v_inst5(
	.clock(clock),
	.reset(reset),
	.en(SYNTHESIZED_WIRE_19),
	.press_en(SYNTHESIZED_WIRE_27),
	.out_en(SYNTHESIZED_WIRE_28),
	.IN_PC(SYNTHESIZED_WIRE_22),
	.OUT_PC(SYNTHESIZED_WIRE_6));


alu	b2v_inst6(
	.clock(clock),
	.reset(reset),
	.en(SYNTHESIZED_WIRE_23),
	.IN_opcode(SYNTHESIZED_WIRE_30),
	.IN_operand(SYNTHESIZED_WIRE_31),
	.IN_SFR(SYNTHESIZED_WIRE_29),
	.Z(SYNTHESIZED_WIRE_14),
	.OUT_SFR(SYNTHESIZED_WIRE_15),
	.W(W));


endmodule
