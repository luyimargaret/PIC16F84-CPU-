-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "03/26/2020 10:58:08"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	IN_opcode : IN std_logic_vector(4 DOWNTO 0);
	IN_operand : IN std_logic_vector(9 DOWNTO 0);
	IN_SFR : IN std_logic_vector(9 DOWNTO 0);
	OUT_SFR : OUT std_logic_vector(7 DOWNTO 0);
	Z : OUT std_logic;
	W : OUT std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- IN_operand[8]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[9]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[8]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[9]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_SFR[7]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[6]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[7]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_opcode[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_opcode[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_opcode[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_opcode[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_opcode[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[7]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_SFR[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[4]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_operand[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_IN_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_IN_operand : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_IN_SFR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_OUT_SFR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_W : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IN_operand[8]~input_o\ : std_logic;
SIGNAL \IN_operand[9]~input_o\ : std_logic;
SIGNAL \IN_SFR[8]~input_o\ : std_logic;
SIGNAL \IN_SFR[9]~input_o\ : std_logic;
SIGNAL \OUT_SFR[0]~output_o\ : std_logic;
SIGNAL \OUT_SFR[1]~output_o\ : std_logic;
SIGNAL \OUT_SFR[2]~output_o\ : std_logic;
SIGNAL \OUT_SFR[3]~output_o\ : std_logic;
SIGNAL \OUT_SFR[4]~output_o\ : std_logic;
SIGNAL \OUT_SFR[5]~output_o\ : std_logic;
SIGNAL \OUT_SFR[6]~output_o\ : std_logic;
SIGNAL \OUT_SFR[7]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \W[0]~output_o\ : std_logic;
SIGNAL \W[1]~output_o\ : std_logic;
SIGNAL \W[2]~output_o\ : std_logic;
SIGNAL \W[3]~output_o\ : std_logic;
SIGNAL \W[4]~output_o\ : std_logic;
SIGNAL \W[5]~output_o\ : std_logic;
SIGNAL \W[6]~output_o\ : std_logic;
SIGNAL \W[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \IN_opcode[0]~input_o\ : std_logic;
SIGNAL \IN_opcode[1]~input_o\ : std_logic;
SIGNAL \IN_opcode[3]~input_o\ : std_logic;
SIGNAL \IN_opcode[2]~input_o\ : std_logic;
SIGNAL \OUT_SFR[0]~44_combout\ : std_logic;
SIGNAL \IN_operand[7]~input_o\ : std_logic;
SIGNAL \IN_opcode[4]~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \OUT_SFR~11_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \OUT_SFR[0]~12_combout\ : std_logic;
SIGNAL \IN_SFR[0]~input_o\ : std_logic;
SIGNAL \W~21_combout\ : std_logic;
SIGNAL \W~20_combout\ : std_logic;
SIGNAL \W~23_combout\ : std_logic;
SIGNAL \W~22_combout\ : std_logic;
SIGNAL \W~24_combout\ : std_logic;
SIGNAL \W~15_combout\ : std_logic;
SIGNAL \OUT_SFR~40_combout\ : std_logic;
SIGNAL \IN_operand[0]~input_o\ : std_logic;
SIGNAL \OUT_SFR~41_combout\ : std_logic;
SIGNAL \W~16_combout\ : std_logic;
SIGNAL \W~17_combout\ : std_logic;
SIGNAL \W~18_combout\ : std_logic;
SIGNAL \W~19_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \OUT_SFR~42_combout\ : std_logic;
SIGNAL \OUT_SFR~43_combout\ : std_logic;
SIGNAL \OUT_SFR~45_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \OUT_SFR~39_combout\ : std_logic;
SIGNAL \W~13_combout\ : std_logic;
SIGNAL \W~14_combout\ : std_logic;
SIGNAL \W~25_combout\ : std_logic;
SIGNAL \W[0]~26_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \W[0]~reg0_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~24_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~25_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~13_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~14_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~15_combout\ : std_logic;
SIGNAL \W[1]~0_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~16_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~17_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~21_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~18_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~19_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~20_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~22_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~23_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~26_combout\ : std_logic;
SIGNAL \OUT_SFR[0]~reg0_q\ : std_logic;
SIGNAL \IN_SFR[1]~input_o\ : std_logic;
SIGNAL \IN_operand[1]~input_o\ : std_logic;
SIGNAL \W[1]~39_combout\ : std_logic;
SIGNAL \W[1]~40_combout\ : std_logic;
SIGNAL \W[1]~38_combout\ : std_logic;
SIGNAL \W~41_combout\ : std_logic;
SIGNAL \W[1]~1_combout\ : std_logic;
SIGNAL \W~42_combout\ : std_logic;
SIGNAL \W[1]~43_combout\ : std_logic;
SIGNAL \W[1]~27_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \W[1]~30_combout\ : std_logic;
SIGNAL \W~31_combout\ : std_logic;
SIGNAL \W~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \W~32_combout\ : std_logic;
SIGNAL \W~33_combout\ : std_logic;
SIGNAL \W~34_combout\ : std_logic;
SIGNAL \W~35_combout\ : std_logic;
SIGNAL \W~36_combout\ : std_logic;
SIGNAL \W[1]~28_combout\ : std_logic;
SIGNAL \W~5_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \W~29_combout\ : std_logic;
SIGNAL \W~37_combout\ : std_logic;
SIGNAL \W~44_combout\ : std_logic;
SIGNAL \W~45_combout\ : std_logic;
SIGNAL \W~46_combout\ : std_logic;
SIGNAL \W[1]~50_combout\ : std_logic;
SIGNAL \W[1]~48_combout\ : std_logic;
SIGNAL \W[1]~47_combout\ : std_logic;
SIGNAL \W[1]~49_combout\ : std_logic;
SIGNAL \W[1]~51_combout\ : std_logic;
SIGNAL \W[1]~reg0_q\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~0_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~27_combout\ : std_logic;
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \OUT_SFR~28_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~30_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~31_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~29_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~32_combout\ : std_logic;
SIGNAL \OUT_SFR[1]~reg0_q\ : std_logic;
SIGNAL \IN_operand[2]~input_o\ : std_logic;
SIGNAL \IN_SFR[2]~input_o\ : std_logic;
SIGNAL \W~6_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \W~52_combout\ : std_logic;
SIGNAL \W~53_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \W~54_combout\ : std_logic;
SIGNAL \W~55_combout\ : std_logic;
SIGNAL \W~56_combout\ : std_logic;
SIGNAL \W~57_combout\ : std_logic;
SIGNAL \W~58_combout\ : std_logic;
SIGNAL \W~59_combout\ : std_logic;
SIGNAL \W~60_combout\ : std_logic;
SIGNAL \W[2]~reg0_q\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \OUT_SFR[2]~1_combout\ : std_logic;
SIGNAL \OUT_SFR~33_combout\ : std_logic;
SIGNAL \OUT_SFR[2]~reg0_q\ : std_logic;
SIGNAL \IN_operand[3]~input_o\ : std_logic;
SIGNAL \IN_SFR[3]~input_o\ : std_logic;
SIGNAL \W~7_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \W~61_combout\ : std_logic;
SIGNAL \W~62_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \W~11_combout\ : std_logic;
SIGNAL \W~63_combout\ : std_logic;
SIGNAL \W~64_combout\ : std_logic;
SIGNAL \W~65_combout\ : std_logic;
SIGNAL \W~66_combout\ : std_logic;
SIGNAL \W~67_combout\ : std_logic;
SIGNAL \W~68_combout\ : std_logic;
SIGNAL \W~69_combout\ : std_logic;
SIGNAL \W~70_combout\ : std_logic;
SIGNAL \W[3]~reg0_q\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \OUT_SFR[3]~2_combout\ : std_logic;
SIGNAL \OUT_SFR~34_combout\ : std_logic;
SIGNAL \OUT_SFR[3]~reg0_q\ : std_logic;
SIGNAL \IN_SFR[4]~input_o\ : std_logic;
SIGNAL \IN_operand[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \W~71_combout\ : std_logic;
SIGNAL \W~8_combout\ : std_logic;
SIGNAL \W~72_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \W~73_combout\ : std_logic;
SIGNAL \W~74_combout\ : std_logic;
SIGNAL \W~75_combout\ : std_logic;
SIGNAL \W~76_combout\ : std_logic;
SIGNAL \W~77_combout\ : std_logic;
SIGNAL \W~78_combout\ : std_logic;
SIGNAL \W~79_combout\ : std_logic;
SIGNAL \W[4]~reg0_q\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \OUT_SFR[4]~3_combout\ : std_logic;
SIGNAL \OUT_SFR~35_combout\ : std_logic;
SIGNAL \OUT_SFR[4]~reg0_q\ : std_logic;
SIGNAL \IN_SFR[5]~input_o\ : std_logic;
SIGNAL \IN_operand[5]~input_o\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \W~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \W~80_combout\ : std_logic;
SIGNAL \W~83_combout\ : std_logic;
SIGNAL \W~84_combout\ : std_logic;
SIGNAL \W~81_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \W~82_combout\ : std_logic;
SIGNAL \W~85_combout\ : std_logic;
SIGNAL \W~86_combout\ : std_logic;
SIGNAL \W~87_combout\ : std_logic;
SIGNAL \W~88_combout\ : std_logic;
SIGNAL \W[5]~reg0_q\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \OUT_SFR[5]~4_combout\ : std_logic;
SIGNAL \OUT_SFR~36_combout\ : std_logic;
SIGNAL \OUT_SFR[5]~reg0_q\ : std_logic;
SIGNAL \IN_SFR[6]~input_o\ : std_logic;
SIGNAL \IN_operand[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \W~89_combout\ : std_logic;
SIGNAL \W~10_combout\ : std_logic;
SIGNAL \W~90_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \W~91_combout\ : std_logic;
SIGNAL \W~92_combout\ : std_logic;
SIGNAL \W~93_combout\ : std_logic;
SIGNAL \W~94_combout\ : std_logic;
SIGNAL \W~95_combout\ : std_logic;
SIGNAL \W~96_combout\ : std_logic;
SIGNAL \W~97_combout\ : std_logic;
SIGNAL \W[6]~reg0_q\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \OUT_SFR[6]~5_combout\ : std_logic;
SIGNAL \OUT_SFR~37_combout\ : std_logic;
SIGNAL \OUT_SFR[6]~reg0_q\ : std_logic;
SIGNAL \IN_SFR[7]~input_o\ : std_logic;
SIGNAL \W~102_combout\ : std_logic;
SIGNAL \W~103_combout\ : std_logic;
SIGNAL \W~2_combout\ : std_logic;
SIGNAL \W~12_combout\ : std_logic;
SIGNAL \W~100_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \W~101_combout\ : std_logic;
SIGNAL \W~104_combout\ : std_logic;
SIGNAL \W~98_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \W~99_combout\ : std_logic;
SIGNAL \W~105_combout\ : std_logic;
SIGNAL \W~106_combout\ : std_logic;
SIGNAL \W~107_combout\ : std_logic;
SIGNAL \W[7]~reg0_q\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \OUT_SFR[7]~6_combout\ : std_logic;
SIGNAL \OUT_SFR~38_combout\ : std_logic;
SIGNAL \OUT_SFR[7]~reg0_q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \Z~13_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Z~14_combout\ : std_logic;
SIGNAL \Z~16_combout\ : std_logic;
SIGNAL \Z~15_combout\ : std_logic;
SIGNAL \Z~17_combout\ : std_logic;
SIGNAL \Z~18_combout\ : std_logic;
SIGNAL \Z~10_combout\ : std_logic;
SIGNAL \Z~12_combout\ : std_logic;
SIGNAL \Z~25_combout\ : std_logic;
SIGNAL \Z~22_combout\ : std_logic;
SIGNAL \Z~23_combout\ : std_logic;
SIGNAL \Z~24_combout\ : std_logic;
SIGNAL \Z~26_combout\ : std_logic;
SIGNAL \Z~27_combout\ : std_logic;
SIGNAL \Z~19_combout\ : std_logic;
SIGNAL \Z~20_combout\ : std_logic;
SIGNAL \Z~21_combout\ : std_logic;
SIGNAL \Z~28_combout\ : std_logic;
SIGNAL \Z~8_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \W~3_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \Z~5_combout\ : std_logic;
SIGNAL \Z~6_combout\ : std_logic;
SIGNAL \Z~7_combout\ : std_logic;
SIGNAL \Z~9_combout\ : std_logic;
SIGNAL \Z~11_combout\ : std_logic;
SIGNAL \Z~29_combout\ : std_logic;
SIGNAL \Z~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_en <= en;
ww_IN_opcode <= IN_opcode;
ww_IN_operand <= IN_operand;
ww_IN_SFR <= IN_SFR;
OUT_SFR <= ww_OUT_SFR;
Z <= ww_Z;
W <= ww_W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X34_Y17_N23
\OUT_SFR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[0]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\OUT_SFR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\OUT_SFR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[2]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\OUT_SFR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[3]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\OUT_SFR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[4]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\OUT_SFR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[5]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\OUT_SFR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[6]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[6]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\OUT_SFR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_SFR[7]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_SFR[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Z~reg0_q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\W[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[0]~reg0_q\,
	devoe => ww_devoe,
	o => \W[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\W[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[1]~reg0_q\,
	devoe => ww_devoe,
	o => \W[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\W[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[2]~reg0_q\,
	devoe => ww_devoe,
	o => \W[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\W[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[3]~reg0_q\,
	devoe => ww_devoe,
	o => \W[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\W[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[4]~reg0_q\,
	devoe => ww_devoe,
	o => \W[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\W[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[5]~reg0_q\,
	devoe => ww_devoe,
	o => \W[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\W[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[6]~reg0_q\,
	devoe => ww_devoe,
	o => \W[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\W[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \W[7]~reg0_q\,
	devoe => ww_devoe,
	o => \W[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y24_N15
\IN_opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_opcode(0),
	o => \IN_opcode[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\IN_opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_opcode(1),
	o => \IN_opcode[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\IN_opcode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_opcode(3),
	o => \IN_opcode[3]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\IN_opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_opcode(2),
	o => \IN_opcode[2]~input_o\);

-- Location: LCCOMB_X11_Y17_N22
\OUT_SFR[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~44_combout\ = (!\IN_opcode[0]~input_o\ & (!\IN_opcode[1]~input_o\ & (!\IN_opcode[3]~input_o\ & !\IN_opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \IN_opcode[3]~input_o\,
	datad => \IN_opcode[2]~input_o\,
	combout => \OUT_SFR[0]~44_combout\);

-- Location: IOIBUF_X7_Y24_N8
\IN_operand[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(7),
	o => \IN_operand[7]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\IN_opcode[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_opcode(4),
	o => \IN_opcode[4]~input_o\);

-- Location: LCCOMB_X11_Y19_N10
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\IN_opcode[3]~input_o\ & (!\IN_opcode[2]~input_o\ & (!\IN_opcode[1]~input_o\ & !\IN_opcode[0]~input_o\))) # (!\IN_opcode[3]~input_o\ & (\IN_opcode[2]~input_o\ & (\IN_opcode[1]~input_o\ & \IN_opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \IN_opcode[1]~input_o\,
	datad => \IN_opcode[0]~input_o\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X12_Y16_N12
\OUT_SFR~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~11_combout\ = (\IN_opcode[1]~input_o\ & (((!\IN_opcode[2]~input_o\ & !\IN_opcode[0]~input_o\)) # (!\IN_opcode[3]~input_o\))) # (!\IN_opcode[1]~input_o\ & ((\IN_opcode[2]~input_o\ & ((!\IN_opcode[3]~input_o\) # (!\IN_opcode[0]~input_o\))) # 
-- (!\IN_opcode[2]~input_o\ & ((\IN_opcode[0]~input_o\) # (\IN_opcode[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \IN_opcode[0]~input_o\,
	datad => \IN_opcode[3]~input_o\,
	combout => \OUT_SFR~11_combout\);

-- Location: IOIBUF_X0_Y23_N15
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X11_Y19_N20
\OUT_SFR[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~12_combout\ = (!\OUT_SFR~11_combout\ & (\en~input_o\ & ((\IN_opcode[4]~input_o\) # (!\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \OUT_SFR~11_combout\,
	datac => \en~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR[0]~12_combout\);

-- Location: IOIBUF_X0_Y23_N1
\IN_SFR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(0),
	o => \IN_SFR[0]~input_o\);

-- Location: LCCOMB_X11_Y16_N12
\W~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~21_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[4]~input_o\) # (!\IN_operand[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \IN_opcode[0]~input_o\,
	combout => \W~21_combout\);

-- Location: LCCOMB_X11_Y16_N14
\W~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~20_combout\ = (\IN_operand[7]~input_o\) # (\IN_opcode[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	combout => \W~20_combout\);

-- Location: LCCOMB_X11_Y16_N8
\W~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~23_combout\ = (\W~20_combout\ & (\W[0]~reg0_q\ & ((\IN_opcode[1]~input_o\) # (!\W~21_combout\)))) # (!\W~20_combout\ & (\W~21_combout\ & ((\IN_opcode[1]~input_o\) # (\W[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~21_combout\,
	datab => \W~20_combout\,
	datac => \IN_opcode[1]~input_o\,
	datad => \W[0]~reg0_q\,
	combout => \W~23_combout\);

-- Location: LCCOMB_X11_Y16_N18
\W~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~22_combout\ = (\W[0]~reg0_q\ & (\W~21_combout\ & (\W~20_combout\ $ (\IN_opcode[1]~input_o\)))) # (!\W[0]~reg0_q\ & (((\W~20_combout\) # (\IN_opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~21_combout\,
	datab => \W~20_combout\,
	datac => \IN_opcode[1]~input_o\,
	datad => \W[0]~reg0_q\,
	combout => \W~22_combout\);

-- Location: LCCOMB_X11_Y16_N30
\W~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~24_combout\ = (\W~23_combout\ & (((\Add2~0_combout\) # (!\W~22_combout\)))) # (!\W~23_combout\ & (\IN_SFR[0]~input_o\ & ((!\W~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[0]~input_o\,
	datab => \W~23_combout\,
	datac => \Add2~0_combout\,
	datad => \W~22_combout\,
	combout => \W~24_combout\);

-- Location: LCCOMB_X10_Y17_N26
\W~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~15_combout\ = (\IN_operand[7]~input_o\ & (\W[0]~reg0_q\)) # (!\IN_operand[7]~input_o\ & ((\IN_opcode[4]~input_o\ & ((\IN_SFR[0]~input_o\))) # (!\IN_opcode[4]~input_o\ & (\W[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_SFR[0]~input_o\,
	datac => \IN_operand[7]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \W~15_combout\);

-- Location: LCCOMB_X10_Y17_N6
\OUT_SFR~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~40_combout\ = (\IN_opcode[4]~input_o\ & ((\IN_operand[7]~input_o\ & (\W[0]~reg0_q\)) # (!\IN_operand[7]~input_o\ & ((\IN_SFR[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_SFR[0]~input_o\,
	datac => \IN_operand[7]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR~40_combout\);

-- Location: IOIBUF_X28_Y24_N15
\IN_operand[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(0),
	o => \IN_operand[0]~input_o\);

-- Location: LCCOMB_X10_Y17_N4
\OUT_SFR~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~41_combout\ = (\OUT_SFR~40_combout\) # ((!\IN_opcode[4]~input_o\ & \IN_operand[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR~40_combout\,
	datab => \IN_opcode[4]~input_o\,
	datad => \IN_operand[0]~input_o\,
	combout => \OUT_SFR~41_combout\);

-- Location: LCCOMB_X10_Y17_N16
\W~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~16_combout\ = (\IN_opcode[1]~input_o\ & ((\IN_opcode[0]~input_o\ & ((\OUT_SFR~41_combout\))) # (!\IN_opcode[0]~input_o\ & (\W~15_combout\)))) # (!\IN_opcode[1]~input_o\ & (\W~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~15_combout\,
	datab => \OUT_SFR~41_combout\,
	datac => \IN_opcode[1]~input_o\,
	datad => \IN_opcode[0]~input_o\,
	combout => \W~16_combout\);

-- Location: LCCOMB_X11_Y17_N24
\W~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~17_combout\ = (\IN_opcode[0]~input_o\ & (((\IN_SFR[0]~input_o\)))) # (!\IN_opcode[0]~input_o\ & ((\IN_opcode[1]~input_o\ & (\IN_SFR[0]~input_o\)) # (!\IN_opcode[1]~input_o\ & ((\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \IN_SFR[0]~input_o\,
	datad => \Add2~0_combout\,
	combout => \W~17_combout\);

-- Location: LCCOMB_X11_Y17_N6
\W~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~18_combout\ = (\IN_opcode[4]~input_o\ & ((\IN_operand[7]~input_o\ & (\W[0]~reg0_q\)) # (!\IN_operand[7]~input_o\ & ((\W~17_combout\))))) # (!\IN_opcode[4]~input_o\ & (\W[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[4]~input_o\,
	datab => \W[0]~reg0_q\,
	datac => \IN_operand[7]~input_o\,
	datad => \W~17_combout\,
	combout => \W~18_combout\);

-- Location: LCCOMB_X11_Y17_N4
\W~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~19_combout\ = (\IN_opcode[2]~input_o\ & ((\IN_opcode[3]~input_o\) # ((\W~16_combout\)))) # (!\IN_opcode[2]~input_o\ & (!\IN_opcode[3]~input_o\ & ((\W~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \IN_opcode[3]~input_o\,
	datac => \W~16_combout\,
	datad => \W~18_combout\,
	combout => \W~19_combout\);

-- Location: LCCOMB_X12_Y17_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\W[0]~reg0_q\ & (\IN_operand[0]~input_o\ $ (VCC))) # (!\W[0]~reg0_q\ & (\IN_operand[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\W[0]~reg0_q\ & \IN_operand[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_operand[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X13_Y17_N4
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\IN_SFR[0]~input_o\ & ((GND) # (!\W[0]~reg0_q\))) # (!\IN_SFR[0]~input_o\ & (\W[0]~reg0_q\ $ (GND)))
-- \Add3~1\ = CARRY((\IN_SFR[0]~input_o\) # (!\W[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[0]~input_o\,
	datab => \W[0]~reg0_q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X10_Y17_N20
\OUT_SFR~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~42_combout\ = (!\IN_opcode[4]~input_o\ & ((\IN_operand[7]~input_o\ & (\W[0]~reg0_q\)) # (!\IN_operand[7]~input_o\ & ((\Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_operand[7]~input_o\,
	datac => \Add3~0_combout\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR~42_combout\);

-- Location: LCCOMB_X10_Y17_N2
\OUT_SFR~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~43_combout\ = (\OUT_SFR~42_combout\) # ((\Add0~0_combout\ & \IN_opcode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \IN_opcode[4]~input_o\,
	datad => \OUT_SFR~42_combout\,
	combout => \OUT_SFR~43_combout\);

-- Location: LCCOMB_X10_Y17_N22
\OUT_SFR~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~45_combout\ = (\IN_opcode[4]~input_o\ & (\W[0]~reg0_q\ & (\IN_operand[0]~input_o\))) # (!\IN_opcode[4]~input_o\ & (((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_operand[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \Add0~0_combout\,
	combout => \OUT_SFR~45_combout\);

-- Location: LCCOMB_X12_Y16_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\W[0]~reg0_q\ & (\IN_operand[0]~input_o\ $ (VCC))) # (!\W[0]~reg0_q\ & ((\IN_operand[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\IN_operand[0]~input_o\) # (!\W[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_operand[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X10_Y17_N12
\OUT_SFR~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~39_combout\ = (\IN_opcode[4]~input_o\ & ((\W[0]~reg0_q\) # ((\IN_operand[0]~input_o\)))) # (!\IN_opcode[4]~input_o\ & (((\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \IN_operand[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \Add1~0_combout\,
	combout => \OUT_SFR~39_combout\);

-- Location: LCCOMB_X10_Y17_N18
\W~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~13_combout\ = (\IN_opcode[1]~input_o\ & (\IN_opcode[0]~input_o\)) # (!\IN_opcode[1]~input_o\ & ((\IN_opcode[0]~input_o\ & ((\OUT_SFR~39_combout\))) # (!\IN_opcode[0]~input_o\ & (\OUT_SFR~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \OUT_SFR~41_combout\,
	datad => \OUT_SFR~39_combout\,
	combout => \W~13_combout\);

-- Location: LCCOMB_X10_Y17_N28
\W~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~14_combout\ = (\IN_opcode[1]~input_o\ & ((\W~13_combout\ & (\OUT_SFR~43_combout\)) # (!\W~13_combout\ & ((\OUT_SFR~45_combout\))))) # (!\IN_opcode[1]~input_o\ & (((\W~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \OUT_SFR~43_combout\,
	datac => \OUT_SFR~45_combout\,
	datad => \W~13_combout\,
	combout => \W~14_combout\);

-- Location: LCCOMB_X11_Y17_N2
\W~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~25_combout\ = (\IN_opcode[3]~input_o\ & ((\W~19_combout\ & (\W~24_combout\)) # (!\W~19_combout\ & ((\W~14_combout\))))) # (!\IN_opcode[3]~input_o\ & (((\W~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~24_combout\,
	datab => \IN_opcode[3]~input_o\,
	datac => \W~19_combout\,
	datad => \W~14_combout\,
	combout => \W~25_combout\);

-- Location: LCCOMB_X11_Y17_N14
\W[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[0]~26_combout\ = (\en~input_o\ & ((\W~25_combout\))) # (!\en~input_o\ & (\W[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => \W[0]~reg0_q\,
	datad => \W~25_combout\,
	combout => \W[0]~26_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X11_Y17_N15
\W[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W[0]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[0]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\IN_SFR[0]~input_o\ & (\W[0]~reg0_q\ $ (VCC))) # (!\IN_SFR[0]~input_o\ & (\W[0]~reg0_q\ & VCC))
-- \Add2~1\ = CARRY((\IN_SFR[0]~input_o\ & \W[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[0]~input_o\,
	datab => \W[0]~reg0_q\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X11_Y17_N16
\OUT_SFR[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~24_combout\ = (\IN_opcode[4]~input_o\ & (\OUT_SFR[0]~reg0_q\ $ (((\OUT_SFR[0]~12_combout\ & \Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~reg0_q\,
	datab => \IN_opcode[4]~input_o\,
	datac => \OUT_SFR[0]~12_combout\,
	datad => \Add2~0_combout\,
	combout => \OUT_SFR[0]~24_combout\);

-- Location: LCCOMB_X11_Y17_N26
\OUT_SFR[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~25_combout\ = (\OUT_SFR[0]~44_combout\ & (\OUT_SFR[0]~reg0_q\ $ (((\IN_operand[7]~input_o\ & \OUT_SFR[0]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~44_combout\,
	datab => \OUT_SFR[0]~reg0_q\,
	datac => \IN_operand[7]~input_o\,
	datad => \OUT_SFR[0]~24_combout\,
	combout => \OUT_SFR[0]~25_combout\);

-- Location: LCCOMB_X10_Y17_N0
\OUT_SFR[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~13_combout\ = (\IN_opcode[0]~input_o\ & (\IN_opcode[1]~input_o\ & !\IN_opcode[4]~input_o\)) # (!\IN_opcode[0]~input_o\ & (!\IN_opcode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[1]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR[0]~13_combout\);

-- Location: LCCOMB_X11_Y17_N28
\OUT_SFR[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~14_combout\ = (\OUT_SFR[0]~12_combout\ & ((\OUT_SFR[0]~13_combout\) # ((\IN_opcode[2]~input_o\) # (!\IN_opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~13_combout\,
	datab => \IN_opcode[3]~input_o\,
	datac => \OUT_SFR[0]~12_combout\,
	datad => \IN_opcode[2]~input_o\,
	combout => \OUT_SFR[0]~14_combout\);

-- Location: LCCOMB_X11_Y17_N30
\OUT_SFR[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~15_combout\ = (!\IN_opcode[4]~input_o\ & (!\IN_operand[7]~input_o\ & \OUT_SFR[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[4]~input_o\,
	datac => \IN_operand[7]~input_o\,
	datad => \OUT_SFR[0]~reg0_q\,
	combout => \OUT_SFR[0]~15_combout\);

-- Location: LCCOMB_X12_Y16_N2
\W[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~0_combout\ = (\IN_opcode[1]~input_o\ & \IN_opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	combout => \W[1]~0_combout\);

-- Location: LCCOMB_X11_Y16_N4
\OUT_SFR[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~16_combout\ = (\W[0]~reg0_q\ & ((\IN_opcode[4]~input_o\) # ((\IN_SFR[0]~input_o\ & \IN_operand[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[0]~input_o\,
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \W[0]~reg0_q\,
	combout => \OUT_SFR[0]~16_combout\);

-- Location: LCCOMB_X11_Y16_N2
\OUT_SFR[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~17_combout\ = (\W[1]~0_combout\ & ((\OUT_SFR[0]~15_combout\) # ((\OUT_SFR[0]~16_combout\ & !\IN_opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~15_combout\,
	datab => \W[1]~0_combout\,
	datac => \OUT_SFR[0]~16_combout\,
	datad => \IN_opcode[0]~input_o\,
	combout => \OUT_SFR[0]~17_combout\);

-- Location: LCCOMB_X10_Y17_N14
\OUT_SFR[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~21_combout\ = (\IN_opcode[1]~input_o\ & (((\IN_opcode[4]~input_o\)) # (!\IN_operand[7]~input_o\))) # (!\IN_opcode[1]~input_o\ & (\IN_opcode[2]~input_o\ & ((\IN_opcode[4]~input_o\) # (!\IN_operand[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR[0]~21_combout\);

-- Location: LCCOMB_X11_Y16_N16
\OUT_SFR[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~18_combout\ = (\IN_opcode[1]~input_o\ & (((\Add2~0_combout\)))) # (!\IN_opcode[1]~input_o\ & ((\IN_SFR[0]~input_o\) # ((\W[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \Add2~0_combout\,
	datad => \W[0]~reg0_q\,
	combout => \OUT_SFR[0]~18_combout\);

-- Location: LCCOMB_X11_Y16_N6
\OUT_SFR[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~19_combout\ = (\IN_opcode[2]~input_o\ & (((\OUT_SFR[0]~18_combout\)))) # (!\IN_opcode[2]~input_o\ & (\IN_opcode[1]~input_o\ & (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \Add3~0_combout\,
	datad => \OUT_SFR[0]~18_combout\,
	combout => \OUT_SFR[0]~19_combout\);

-- Location: LCCOMB_X11_Y16_N0
\OUT_SFR[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~20_combout\ = (\IN_operand[7]~input_o\ & (!\IN_opcode[4]~input_o\ & \OUT_SFR[0]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \OUT_SFR[0]~19_combout\,
	combout => \OUT_SFR[0]~20_combout\);

-- Location: LCCOMB_X11_Y17_N12
\OUT_SFR[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~22_combout\ = (\IN_opcode[0]~input_o\ & ((\OUT_SFR[0]~20_combout\) # ((\OUT_SFR[0]~21_combout\ & \OUT_SFR[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~21_combout\,
	datab => \OUT_SFR[0]~reg0_q\,
	datac => \IN_opcode[0]~input_o\,
	datad => \OUT_SFR[0]~20_combout\,
	combout => \OUT_SFR[0]~22_combout\);

-- Location: LCCOMB_X11_Y17_N18
\OUT_SFR[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~23_combout\ = (\OUT_SFR[0]~14_combout\ & (\IN_opcode[3]~input_o\ & ((\OUT_SFR[0]~17_combout\) # (\OUT_SFR[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~17_combout\,
	datab => \OUT_SFR[0]~14_combout\,
	datac => \IN_opcode[3]~input_o\,
	datad => \OUT_SFR[0]~22_combout\,
	combout => \OUT_SFR[0]~23_combout\);

-- Location: LCCOMB_X11_Y17_N20
\OUT_SFR[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[0]~26_combout\ = (\OUT_SFR[0]~25_combout\) # ((\OUT_SFR[0]~23_combout\) # ((!\OUT_SFR[0]~14_combout\ & \OUT_SFR[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[0]~25_combout\,
	datab => \OUT_SFR[0]~14_combout\,
	datac => \OUT_SFR[0]~reg0_q\,
	datad => \OUT_SFR[0]~23_combout\,
	combout => \OUT_SFR[0]~26_combout\);

-- Location: FF_X11_Y17_N21
\OUT_SFR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[0]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[0]~reg0_q\);

-- Location: IOIBUF_X3_Y24_N22
\IN_SFR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(1),
	o => \IN_SFR[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\IN_operand[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(1),
	o => \IN_operand[1]~input_o\);

-- Location: LCCOMB_X13_Y19_N28
\W[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~39_combout\ = (!\IN_opcode[0]~input_o\ & (!\IN_opcode[1]~input_o\ & ((\IN_opcode[2]~input_o\) # (\IN_opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \W[1]~39_combout\);

-- Location: LCCOMB_X13_Y19_N14
\W[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~40_combout\ = (\IN_opcode[0]~input_o\ & (((\IN_opcode[4]~input_o\) # (!\IN_opcode[2]~input_o\)) # (!\IN_opcode[1]~input_o\))) # (!\IN_opcode[0]~input_o\ & ((\IN_opcode[1]~input_o\) # ((\IN_opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \W[1]~40_combout\);

-- Location: LCCOMB_X13_Y19_N18
\W[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~38_combout\ = (\IN_opcode[2]~input_o\ & (\IN_opcode[4]~input_o\ & (\IN_opcode[3]~input_o\ & !\IN_opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \IN_opcode[3]~input_o\,
	datad => \IN_opcode[1]~input_o\,
	combout => \W[1]~38_combout\);

-- Location: LCCOMB_X13_Y19_N4
\W~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~41_combout\ = (\W[1]~38_combout\) # ((\IN_opcode[3]~input_o\ & (\W[1]~39_combout\)) # (!\IN_opcode[3]~input_o\ & ((\W[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \W[1]~39_combout\,
	datac => \W[1]~40_combout\,
	datad => \W[1]~38_combout\,
	combout => \W~41_combout\);

-- Location: LCCOMB_X13_Y19_N12
\W[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~1_combout\ = (!\IN_opcode[0]~input_o\ & !\IN_opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datad => \IN_opcode[1]~input_o\,
	combout => \W[1]~1_combout\);

-- Location: LCCOMB_X13_Y19_N26
\W~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~42_combout\ = (!\W~41_combout\ & ((\IN_opcode[2]~input_o\ & (\IN_opcode[3]~input_o\)) # (!\IN_opcode[2]~input_o\ & ((!\W[1]~1_combout\) # (!\IN_opcode[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \W~41_combout\,
	datac => \IN_opcode[3]~input_o\,
	datad => \W[1]~1_combout\,
	combout => \W~42_combout\);

-- Location: LCCOMB_X13_Y19_N16
\W[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~43_combout\ = (\IN_opcode[3]~input_o\ & ((\W[1]~39_combout\))) # (!\IN_opcode[3]~input_o\ & (\W[1]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W[1]~40_combout\,
	datac => \IN_opcode[3]~input_o\,
	datad => \W[1]~39_combout\,
	combout => \W[1]~43_combout\);

-- Location: LCCOMB_X11_Y18_N30
\W[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~27_combout\ = ((\IN_opcode[2]~input_o\) # (\IN_opcode[1]~input_o\)) # (!\IN_opcode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[3]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_opcode[1]~input_o\,
	combout => \W[1]~27_combout\);

-- Location: LCCOMB_X12_Y19_N12
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\W[1]~reg0_q\ & ((\IN_SFR[1]~input_o\ & (\Add2~1\ & VCC)) # (!\IN_SFR[1]~input_o\ & (!\Add2~1\)))) # (!\W[1]~reg0_q\ & ((\IN_SFR[1]~input_o\ & (!\Add2~1\)) # (!\IN_SFR[1]~input_o\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\W[1]~reg0_q\ & (!\IN_SFR[1]~input_o\ & !\Add2~1\)) # (!\W[1]~reg0_q\ & ((!\Add2~1\) # (!\IN_SFR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~reg0_q\,
	datab => \IN_SFR[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X12_Y20_N12
\W[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~30_combout\ = (\IN_opcode[2]~input_o\ & ((\IN_opcode[0]~input_o\) # (!\IN_opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[1]~input_o\,
	combout => \W[1]~30_combout\);

-- Location: LCCOMB_X12_Y18_N14
\W~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~31_combout\ = (\W[1]~0_combout\ & (\W[1]~reg0_q\ & (\IN_SFR[1]~input_o\))) # (!\W[1]~0_combout\ & (\W[1]~reg0_q\ $ (((\IN_operand[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~reg0_q\,
	datab => \IN_SFR[1]~input_o\,
	datac => \IN_operand[1]~input_o\,
	datad => \W[1]~0_combout\,
	combout => \W~31_combout\);

-- Location: LCCOMB_X12_Y18_N6
\W~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~4_combout\ = (\IN_operand[1]~input_o\ & \W[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[1]~input_o\,
	datac => \W[1]~reg0_q\,
	combout => \W~4_combout\);

-- Location: LCCOMB_X12_Y17_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\IN_operand[1]~input_o\ & ((\W[1]~reg0_q\ & (\Add0~1\ & VCC)) # (!\W[1]~reg0_q\ & (!\Add0~1\)))) # (!\IN_operand[1]~input_o\ & ((\W[1]~reg0_q\ & (!\Add0~1\)) # (!\W[1]~reg0_q\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\IN_operand[1]~input_o\ & (!\W[1]~reg0_q\ & !\Add0~1\)) # (!\IN_operand[1]~input_o\ & ((!\Add0~1\) # (!\W[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[1]~input_o\,
	datab => \W[1]~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X13_Y17_N30
\W~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~32_combout\ = (\IN_opcode[0]~input_o\ & (\IN_opcode[4]~input_o\)) # (!\IN_opcode[0]~input_o\ & ((\IN_opcode[4]~input_o\ & (\W~4_combout\)) # (!\IN_opcode[4]~input_o\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \W~4_combout\,
	datad => \Add0~2_combout\,
	combout => \W~32_combout\);

-- Location: LCCOMB_X13_Y17_N20
\W~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~33_combout\ = (\IN_opcode[0]~input_o\ & ((\W~32_combout\ & (\W~31_combout\)) # (!\W~32_combout\ & ((\Add3~2_combout\))))) # (!\IN_opcode[0]~input_o\ & (((\W~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \W~31_combout\,
	datac => \W~32_combout\,
	datad => \Add3~2_combout\,
	combout => \W~33_combout\);

-- Location: LCCOMB_X13_Y17_N2
\W~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~34_combout\ = (\W[1]~30_combout\ & (\W[1]~0_combout\)) # (!\W[1]~30_combout\ & ((\W[1]~0_combout\ & (\W~31_combout\)) # (!\W[1]~0_combout\ & ((\W~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~30_combout\,
	datab => \W[1]~0_combout\,
	datac => \W~31_combout\,
	datad => \W~33_combout\,
	combout => \W~34_combout\);

-- Location: LCCOMB_X13_Y17_N0
\W~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~35_combout\ = (\IN_SFR[1]~input_o\ & ((\W~34_combout\) # (!\IN_operand[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[1]~input_o\,
	datab => \IN_operand[7]~input_o\,
	datad => \W~34_combout\,
	combout => \W~35_combout\);

-- Location: LCCOMB_X13_Y17_N26
\W~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~36_combout\ = (\W[1]~30_combout\ & ((\W[1]~reg0_q\ & ((!\W~35_combout\) # (!\W~34_combout\))) # (!\W[1]~reg0_q\ & ((\W~35_combout\))))) # (!\W[1]~30_combout\ & (\W~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~30_combout\,
	datab => \W~34_combout\,
	datac => \W[1]~reg0_q\,
	datad => \W~35_combout\,
	combout => \W~36_combout\);

-- Location: LCCOMB_X11_Y19_N0
\W[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~28_combout\ = (\IN_opcode[3]~input_o\ & ((\IN_opcode[2]~input_o\) # ((\IN_opcode[1]~input_o\) # (\IN_opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \IN_opcode[1]~input_o\,
	datad => \IN_opcode[4]~input_o\,
	combout => \W[1]~28_combout\);

-- Location: LCCOMB_X12_Y18_N26
\W~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~5_combout\ = (\W[1]~reg0_q\) # (\IN_operand[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~reg0_q\,
	datac => \IN_operand[1]~input_o\,
	combout => \W~5_combout\);

-- Location: LCCOMB_X12_Y16_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\W[1]~reg0_q\ & ((\IN_operand[1]~input_o\ & (!\Add1~1\)) # (!\IN_operand[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\W[1]~reg0_q\ & ((\IN_operand[1]~input_o\ & (\Add1~1\ & VCC)) # (!\IN_operand[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\W[1]~reg0_q\ & ((!\Add1~1\) # (!\IN_operand[1]~input_o\))) # (!\W[1]~reg0_q\ & (!\IN_operand[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~reg0_q\,
	datab => \IN_operand[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X13_Y18_N8
\W~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~29_combout\ = (\W[1]~28_combout\ & ((\W[1]~27_combout\) # ((\W~5_combout\)))) # (!\W[1]~28_combout\ & (!\W[1]~27_combout\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~28_combout\,
	datab => \W[1]~27_combout\,
	datac => \W~5_combout\,
	datad => \Add1~2_combout\,
	combout => \W~29_combout\);

-- Location: LCCOMB_X13_Y17_N28
\W~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~37_combout\ = (\W[1]~27_combout\ & ((\W~29_combout\ & ((\W~36_combout\))) # (!\W~29_combout\ & (\Add2~2_combout\)))) # (!\W[1]~27_combout\ & (((\W~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \Add2~2_combout\,
	datac => \W~36_combout\,
	datad => \W~29_combout\,
	combout => \W~37_combout\);

-- Location: LCCOMB_X13_Y17_N22
\W~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~44_combout\ = (\IN_SFR[1]~input_o\ & ((\W[1]~43_combout\) # ((\W~42_combout\ & \W~37_combout\)))) # (!\IN_SFR[1]~input_o\ & (\W~42_combout\ & ((\W~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[1]~input_o\,
	datab => \W~42_combout\,
	datac => \W[1]~43_combout\,
	datad => \W~37_combout\,
	combout => \W~44_combout\);

-- Location: LCCOMB_X13_Y19_N22
\W~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~45_combout\ = (!\W~41_combout\ & ((\IN_opcode[2]~input_o\ & (!\IN_opcode[3]~input_o\)) # (!\IN_opcode[2]~input_o\ & (\IN_opcode[3]~input_o\ & \W[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \W~41_combout\,
	datac => \IN_opcode[3]~input_o\,
	datad => \W[1]~1_combout\,
	combout => \W~45_combout\);

-- Location: LCCOMB_X13_Y17_N24
\W~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~46_combout\ = (\W~44_combout\) # ((\IN_operand[1]~input_o\ & \W~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[1]~input_o\,
	datac => \W~44_combout\,
	datad => \W~45_combout\,
	combout => \W~46_combout\);

-- Location: LCCOMB_X13_Y18_N22
\W[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~50_combout\ = (\IN_opcode[4]~input_o\ & (((!\IN_operand[7]~input_o\)))) # (!\IN_opcode[4]~input_o\ & (\W[1]~0_combout\ & (\IN_opcode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \IN_operand[7]~input_o\,
	combout => \W[1]~50_combout\);

-- Location: LCCOMB_X13_Y18_N14
\W[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~48_combout\ = ((\IN_opcode[1]~input_o\ & ((\IN_opcode[4]~input_o\) # (!\IN_opcode[0]~input_o\))) # (!\IN_opcode[1]~input_o\ & ((\IN_opcode[0]~input_o\) # (!\IN_opcode[4]~input_o\)))) # (!\IN_operand[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \IN_operand[7]~input_o\,
	combout => \W[1]~48_combout\);

-- Location: LCCOMB_X11_Y18_N24
\W[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~47_combout\ = (\IN_opcode[0]~input_o\ & (((!\IN_opcode[4]~input_o\ & !\IN_operand[7]~input_o\)) # (!\IN_opcode[1]~input_o\))) # (!\IN_opcode[0]~input_o\ & (!\IN_opcode[4]~input_o\ & (!\IN_operand[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \IN_operand[7]~input_o\,
	datad => \IN_opcode[1]~input_o\,
	combout => \W[1]~47_combout\);

-- Location: LCCOMB_X13_Y18_N0
\W[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~49_combout\ = (\IN_opcode[3]~input_o\ & ((\IN_opcode[2]~input_o\ & ((\W[1]~47_combout\))) # (!\IN_opcode[2]~input_o\ & (\W[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[2]~input_o\,
	datab => \IN_opcode[3]~input_o\,
	datac => \W[1]~48_combout\,
	datad => \W[1]~47_combout\,
	combout => \W[1]~49_combout\);

-- Location: LCCOMB_X13_Y18_N20
\W[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \W[1]~51_combout\ = (\en~input_o\ & ((\W[1]~49_combout\) # ((\W[1]~50_combout\ & !\IN_opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~50_combout\,
	datab => \IN_opcode[3]~input_o\,
	datac => \en~input_o\,
	datad => \W[1]~49_combout\,
	combout => \W[1]~51_combout\);

-- Location: FF_X13_Y17_N25
\W[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[1]~reg0_q\);

-- Location: LCCOMB_X13_Y17_N6
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\IN_SFR[1]~input_o\ & ((\W[1]~reg0_q\ & (!\Add3~1\)) # (!\W[1]~reg0_q\ & (\Add3~1\ & VCC)))) # (!\IN_SFR[1]~input_o\ & ((\W[1]~reg0_q\ & ((\Add3~1\) # (GND))) # (!\W[1]~reg0_q\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\IN_SFR[1]~input_o\ & (\W[1]~reg0_q\ & !\Add3~1\)) # (!\IN_SFR[1]~input_o\ & ((\W[1]~reg0_q\) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[1]~input_o\,
	datab => \W[1]~reg0_q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X12_Y19_N28
\OUT_SFR[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~0_combout\ = (\IN_opcode[3]~input_o\ & (\Add3~2_combout\)) # (!\IN_opcode[3]~input_o\ & ((\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Add3~2_combout\,
	datad => \Add2~2_combout\,
	combout => \OUT_SFR[1]~0_combout\);

-- Location: LCCOMB_X12_Y20_N14
\OUT_SFR[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~27_combout\ = (\IN_opcode[1]~input_o\ & ((\IN_opcode[0]~input_o\) # (\IN_opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR[1]~27_combout\);

-- Location: LCCOMB_X12_Y20_N8
\Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~0_combout\ = (!\IN_opcode[0]~input_o\ & \IN_opcode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[1]~input_o\,
	combout => \Z~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\OUT_SFR~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~28_combout\ = (\IN_SFR[1]~input_o\ & ((\W[1]~reg0_q\ & ((\Z~0_combout\) # (!\OUT_SFR[1]~27_combout\))) # (!\W[1]~reg0_q\ & ((!\Z~0_combout\))))) # (!\IN_SFR[1]~input_o\ & (\W[1]~reg0_q\ & ((\OUT_SFR[1]~27_combout\) # (!\Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[1]~27_combout\,
	datab => \IN_SFR[1]~input_o\,
	datac => \W[1]~reg0_q\,
	datad => \Z~0_combout\,
	combout => \OUT_SFR~28_combout\);

-- Location: LCCOMB_X11_Y16_N26
\OUT_SFR[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~30_combout\ = (\IN_opcode[3]~input_o\ & (\IN_operand[7]~input_o\ & ((\IN_opcode[1]~input_o\) # (\IN_opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_opcode[3]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_operand[7]~input_o\,
	combout => \OUT_SFR[1]~30_combout\);

-- Location: LCCOMB_X10_Y17_N30
\OUT_SFR[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~31_combout\ = (\en~input_o\ & ((\IN_opcode[4]~input_o\) # ((!\always0~0_combout\ & \OUT_SFR[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \always0~0_combout\,
	datac => \OUT_SFR[1]~30_combout\,
	datad => \IN_opcode[4]~input_o\,
	combout => \OUT_SFR[1]~31_combout\);

-- Location: LCCOMB_X10_Y17_N24
\OUT_SFR[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~29_combout\ = (\IN_opcode[1]~input_o\ & (((\IN_opcode[2]~input_o\ & \IN_opcode[3]~input_o\)))) # (!\IN_opcode[1]~input_o\ & (\IN_operand[7]~input_o\ & (!\IN_opcode[2]~input_o\ & !\IN_opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \IN_operand[7]~input_o\,
	datac => \IN_opcode[2]~input_o\,
	datad => \IN_opcode[3]~input_o\,
	combout => \OUT_SFR[1]~29_combout\);

-- Location: LCCOMB_X10_Y17_N8
\OUT_SFR[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[1]~32_combout\ = (\OUT_SFR[1]~31_combout\ & ((\IN_opcode[0]~input_o\ & (!\IN_opcode[4]~input_o\)) # (!\IN_opcode[0]~input_o\ & ((\OUT_SFR[1]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[4]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \OUT_SFR[1]~31_combout\,
	datad => \OUT_SFR[1]~29_combout\,
	combout => \OUT_SFR[1]~32_combout\);

-- Location: FF_X12_Y19_N29
\OUT_SFR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[1]~0_combout\,
	asdata => \OUT_SFR~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[1]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N1
\IN_operand[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(2),
	o => \IN_operand[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\IN_SFR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(2),
	o => \IN_SFR[2]~input_o\);

-- Location: LCCOMB_X13_Y18_N10
\W~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~6_combout\ = (\IN_operand[2]~input_o\) # (\W[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[2]~input_o\,
	datac => \W[2]~reg0_q\,
	combout => \W~6_combout\);

-- Location: LCCOMB_X12_Y19_N14
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\IN_SFR[2]~input_o\ $ (\W[2]~reg0_q\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\IN_SFR[2]~input_o\ & ((\W[2]~reg0_q\) # (!\Add2~3\))) # (!\IN_SFR[2]~input_o\ & (\W[2]~reg0_q\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[2]~input_o\,
	datab => \W[2]~reg0_q\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X12_Y16_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\IN_operand[2]~input_o\ $ (\W[2]~reg0_q\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\IN_operand[2]~input_o\ & ((!\Add1~3\) # (!\W[2]~reg0_q\))) # (!\IN_operand[2]~input_o\ & (!\W[2]~reg0_q\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[2]~input_o\,
	datab => \W[2]~reg0_q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X12_Y16_N8
\W~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~52_combout\ = (\W[1]~27_combout\ & ((\W[1]~28_combout\) # ((\Add2~4_combout\)))) # (!\W[1]~27_combout\ & (!\W[1]~28_combout\ & ((\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \W[1]~28_combout\,
	datac => \Add2~4_combout\,
	datad => \Add1~4_combout\,
	combout => \W~52_combout\);

-- Location: LCCOMB_X13_Y18_N26
\W~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~53_combout\ = (\W[2]~reg0_q\) # ((\IN_SFR[2]~input_o\ & !\IN_operand[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[2]~input_o\,
	datac => \W[2]~reg0_q\,
	datad => \IN_operand[7]~input_o\,
	combout => \W~53_combout\);

-- Location: LCCOMB_X12_Y17_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\IN_operand[2]~input_o\ $ (\W[2]~reg0_q\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\IN_operand[2]~input_o\ & ((\W[2]~reg0_q\) # (!\Add0~3\))) # (!\IN_operand[2]~input_o\ & (\W[2]~reg0_q\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[2]~input_o\,
	datab => \W[2]~reg0_q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X13_Y18_N24
\W~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~54_combout\ = (\IN_opcode[4]~input_o\ & (\IN_opcode[0]~input_o\)) # (!\IN_opcode[4]~input_o\ & ((\IN_opcode[0]~input_o\ & ((\Add3~4_combout\))) # (!\IN_opcode[0]~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[4]~input_o\,
	datab => \IN_opcode[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Add3~4_combout\,
	combout => \W~54_combout\);

-- Location: LCCOMB_X13_Y18_N2
\W~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~55_combout\ = (\W[2]~reg0_q\ & (\W~54_combout\ $ (((\IN_operand[2]~input_o\ & \IN_opcode[4]~input_o\))))) # (!\W[2]~reg0_q\ & (\W~54_combout\ & ((\IN_operand[2]~input_o\) # (!\IN_opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~reg0_q\,
	datab => \IN_operand[2]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \W~54_combout\,
	combout => \W~55_combout\);

-- Location: LCCOMB_X13_Y18_N12
\W~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~56_combout\ = (\W[1]~0_combout\ & (\W[1]~30_combout\)) # (!\W[1]~0_combout\ & ((\W[1]~30_combout\ & (\W~53_combout\)) # (!\W[1]~30_combout\ & ((\W~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \W[1]~30_combout\,
	datac => \W~53_combout\,
	datad => \W~55_combout\,
	combout => \W~56_combout\);

-- Location: LCCOMB_X13_Y18_N18
\W~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~57_combout\ = (\W[1]~0_combout\ & ((\IN_SFR[2]~input_o\ & (\W[2]~reg0_q\ $ (\W~56_combout\))) # (!\IN_SFR[2]~input_o\ & (\W[2]~reg0_q\ & \W~56_combout\)))) # (!\W[1]~0_combout\ & (((\W~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \IN_SFR[2]~input_o\,
	datac => \W[2]~reg0_q\,
	datad => \W~56_combout\,
	combout => \W~57_combout\);

-- Location: LCCOMB_X13_Y18_N16
\W~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~58_combout\ = (\W[1]~28_combout\ & ((\W~52_combout\ & ((\W~57_combout\))) # (!\W~52_combout\ & (\W~6_combout\)))) # (!\W[1]~28_combout\ & (((\W~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~6_combout\,
	datab => \W[1]~28_combout\,
	datac => \W~52_combout\,
	datad => \W~57_combout\,
	combout => \W~58_combout\);

-- Location: LCCOMB_X13_Y18_N6
\W~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~59_combout\ = (\IN_SFR[2]~input_o\ & ((\W[1]~43_combout\) # ((\W~42_combout\ & \W~58_combout\)))) # (!\IN_SFR[2]~input_o\ & (((\W~42_combout\ & \W~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[2]~input_o\,
	datab => \W[1]~43_combout\,
	datac => \W~42_combout\,
	datad => \W~58_combout\,
	combout => \W~59_combout\);

-- Location: LCCOMB_X13_Y18_N30
\W~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~60_combout\ = (\W~59_combout\) # ((\W~45_combout\ & \IN_operand[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W~45_combout\,
	datac => \IN_operand[2]~input_o\,
	datad => \W~59_combout\,
	combout => \W~60_combout\);

-- Location: FF_X13_Y18_N31
\W[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[2]~reg0_q\);

-- Location: LCCOMB_X13_Y17_N8
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\W[2]~reg0_q\ $ (\IN_SFR[2]~input_o\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\W[2]~reg0_q\ & (\IN_SFR[2]~input_o\ & !\Add3~3\)) # (!\W[2]~reg0_q\ & ((\IN_SFR[2]~input_o\) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~reg0_q\,
	datab => \IN_SFR[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X13_Y18_N28
\OUT_SFR[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[2]~1_combout\ = (\IN_opcode[3]~input_o\ & (\Add3~4_combout\)) # (!\IN_opcode[3]~input_o\ & ((\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \IN_opcode[3]~input_o\,
	datad => \Add2~4_combout\,
	combout => \OUT_SFR[2]~1_combout\);

-- Location: LCCOMB_X13_Y18_N4
\OUT_SFR~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~33_combout\ = (\W[2]~reg0_q\ & ((\Z~0_combout\ & ((\OUT_SFR[1]~27_combout\) # (\IN_SFR[2]~input_o\))) # (!\Z~0_combout\ & ((!\IN_SFR[2]~input_o\) # (!\OUT_SFR[1]~27_combout\))))) # (!\W[2]~reg0_q\ & (!\Z~0_combout\ & ((\IN_SFR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~reg0_q\,
	datab => \Z~0_combout\,
	datac => \OUT_SFR[1]~27_combout\,
	datad => \IN_SFR[2]~input_o\,
	combout => \OUT_SFR~33_combout\);

-- Location: FF_X13_Y18_N29
\OUT_SFR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[2]~1_combout\,
	asdata => \OUT_SFR~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[2]~reg0_q\);

-- Location: IOIBUF_X5_Y24_N8
\IN_operand[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(3),
	o => \IN_operand[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\IN_SFR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(3),
	o => \IN_SFR[3]~input_o\);

-- Location: LCCOMB_X12_Y18_N4
\W~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~7_combout\ = (\IN_operand[3]~input_o\) # (\W[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[3]~input_o\,
	datad => \W[3]~reg0_q\,
	combout => \W~7_combout\);

-- Location: LCCOMB_X12_Y16_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\W[3]~reg0_q\ & ((\IN_operand[3]~input_o\ & (!\Add1~5\)) # (!\IN_operand[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\W[3]~reg0_q\ & ((\IN_operand[3]~input_o\ & (\Add1~5\ & VCC)) # (!\IN_operand[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\W[3]~reg0_q\ & ((!\Add1~5\) # (!\IN_operand[3]~input_o\))) # (!\W[3]~reg0_q\ & (!\IN_operand[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~reg0_q\,
	datab => \IN_operand[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X12_Y16_N6
\W~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~61_combout\ = (\W[1]~27_combout\ & (\W[1]~28_combout\)) # (!\W[1]~27_combout\ & ((\W[1]~28_combout\ & (\W~7_combout\)) # (!\W[1]~28_combout\ & ((\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \W[1]~28_combout\,
	datac => \W~7_combout\,
	datad => \Add1~6_combout\,
	combout => \W~61_combout\);

-- Location: LCCOMB_X11_Y17_N8
\W~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~62_combout\ = (\W[3]~reg0_q\ & ((\W[1]~0_combout\ & ((\IN_SFR[3]~input_o\))) # (!\W[1]~0_combout\ & (\IN_operand[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[3]~input_o\,
	datab => \W[1]~0_combout\,
	datac => \W[3]~reg0_q\,
	datad => \IN_SFR[3]~input_o\,
	combout => \W~62_combout\);

-- Location: LCCOMB_X12_Y17_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\IN_operand[3]~input_o\ & ((\W[3]~reg0_q\ & (\Add0~5\ & VCC)) # (!\W[3]~reg0_q\ & (!\Add0~5\)))) # (!\IN_operand[3]~input_o\ & ((\W[3]~reg0_q\ & (!\Add0~5\)) # (!\W[3]~reg0_q\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\IN_operand[3]~input_o\ & (!\W[3]~reg0_q\ & !\Add0~5\)) # (!\IN_operand[3]~input_o\ & ((!\Add0~5\) # (!\W[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[3]~input_o\,
	datab => \W[3]~reg0_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X13_Y17_N10
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\IN_SFR[3]~input_o\ & ((\W[3]~reg0_q\ & (!\Add3~5\)) # (!\W[3]~reg0_q\ & (\Add3~5\ & VCC)))) # (!\IN_SFR[3]~input_o\ & ((\W[3]~reg0_q\ & ((\Add3~5\) # (GND))) # (!\W[3]~reg0_q\ & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\IN_SFR[3]~input_o\ & (\W[3]~reg0_q\ & !\Add3~5\)) # (!\IN_SFR[3]~input_o\ & ((\W[3]~reg0_q\) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[3]~input_o\,
	datab => \W[3]~reg0_q\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X12_Y18_N30
\W~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~11_combout\ = \IN_operand[3]~input_o\ $ (\W[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[3]~input_o\,
	datad => \W[3]~reg0_q\,
	combout => \W~11_combout\);

-- Location: LCCOMB_X12_Y17_N30
\W~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~63_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[4]~input_o\ & ((\W~11_combout\))) # (!\IN_opcode[4]~input_o\ & (\Add3~6_combout\)))) # (!\IN_opcode[0]~input_o\ & (\IN_opcode[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \Add3~6_combout\,
	datad => \W~11_combout\,
	combout => \W~63_combout\);

-- Location: LCCOMB_X12_Y17_N28
\W~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~64_combout\ = (\W~63_combout\ & ((\W~62_combout\) # ((\IN_opcode[0]~input_o\)))) # (!\W~63_combout\ & (((\Add0~6_combout\ & !\IN_opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~62_combout\,
	datab => \Add0~6_combout\,
	datac => \W~63_combout\,
	datad => \IN_opcode[0]~input_o\,
	combout => \W~64_combout\);

-- Location: LCCOMB_X12_Y17_N6
\W~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~65_combout\ = (\W[1]~30_combout\ & (((\W[1]~0_combout\)))) # (!\W[1]~30_combout\ & ((\W[1]~0_combout\ & (\W~62_combout\)) # (!\W[1]~0_combout\ & ((\W~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~62_combout\,
	datab => \W[1]~30_combout\,
	datac => \W[1]~0_combout\,
	datad => \W~64_combout\,
	combout => \W~65_combout\);

-- Location: LCCOMB_X12_Y17_N0
\W~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~66_combout\ = (\IN_SFR[3]~input_o\ & ((\W~65_combout\) # (!\IN_operand[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_SFR[3]~input_o\,
	datac => \IN_operand[7]~input_o\,
	datad => \W~65_combout\,
	combout => \W~66_combout\);

-- Location: LCCOMB_X12_Y17_N2
\W~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~67_combout\ = (\W[1]~30_combout\ & ((\W[3]~reg0_q\ & ((!\W~66_combout\) # (!\W~65_combout\))) # (!\W[3]~reg0_q\ & ((\W~66_combout\))))) # (!\W[1]~30_combout\ & (\W~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~65_combout\,
	datab => \W[1]~30_combout\,
	datac => \W[3]~reg0_q\,
	datad => \W~66_combout\,
	combout => \W~67_combout\);

-- Location: LCCOMB_X12_Y17_N24
\W~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~68_combout\ = (\W[1]~27_combout\ & ((\W~61_combout\ & ((\W~67_combout\))) # (!\W~61_combout\ & (\Add2~6_combout\)))) # (!\W[1]~27_combout\ & (\W~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \W~61_combout\,
	datac => \Add2~6_combout\,
	datad => \W~67_combout\,
	combout => \W~68_combout\);

-- Location: LCCOMB_X12_Y17_N26
\W~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~69_combout\ = (\W[1]~43_combout\ & ((\IN_SFR[3]~input_o\) # ((\W~42_combout\ & \W~68_combout\)))) # (!\W[1]~43_combout\ & (((\W~42_combout\ & \W~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~43_combout\,
	datab => \IN_SFR[3]~input_o\,
	datac => \W~42_combout\,
	datad => \W~68_combout\,
	combout => \W~69_combout\);

-- Location: LCCOMB_X12_Y17_N4
\W~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~70_combout\ = (\W~69_combout\) # ((\IN_operand[3]~input_o\ & \W~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[3]~input_o\,
	datab => \W~45_combout\,
	datac => \W~69_combout\,
	combout => \W~70_combout\);

-- Location: FF_X12_Y17_N5
\W[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~70_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[3]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N16
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\W[3]~reg0_q\ & ((\IN_SFR[3]~input_o\ & (\Add2~5\ & VCC)) # (!\IN_SFR[3]~input_o\ & (!\Add2~5\)))) # (!\W[3]~reg0_q\ & ((\IN_SFR[3]~input_o\ & (!\Add2~5\)) # (!\IN_SFR[3]~input_o\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\W[3]~reg0_q\ & (!\IN_SFR[3]~input_o\ & !\Add2~5\)) # (!\W[3]~reg0_q\ & ((!\Add2~5\) # (!\IN_SFR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~reg0_q\,
	datab => \IN_SFR[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X12_Y19_N6
\OUT_SFR[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[3]~2_combout\ = (\IN_opcode[3]~input_o\ & ((\Add3~6_combout\))) # (!\IN_opcode[3]~input_o\ & (\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Add2~6_combout\,
	datad => \Add3~6_combout\,
	combout => \OUT_SFR[3]~2_combout\);

-- Location: LCCOMB_X12_Y18_N10
\OUT_SFR~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~34_combout\ = (\W[3]~reg0_q\ & ((\OUT_SFR[1]~27_combout\ & ((\Z~0_combout\) # (!\IN_SFR[3]~input_o\))) # (!\OUT_SFR[1]~27_combout\ & ((\IN_SFR[3]~input_o\) # (!\Z~0_combout\))))) # (!\W[3]~reg0_q\ & (((\IN_SFR[3]~input_o\ & !\Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~reg0_q\,
	datab => \OUT_SFR[1]~27_combout\,
	datac => \IN_SFR[3]~input_o\,
	datad => \Z~0_combout\,
	combout => \OUT_SFR~34_combout\);

-- Location: FF_X12_Y19_N7
\OUT_SFR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[3]~2_combout\,
	asdata => \OUT_SFR~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[3]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N22
\IN_SFR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(4),
	o => \IN_SFR[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\IN_operand[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(4),
	o => \IN_operand[4]~input_o\);

-- Location: LCCOMB_X12_Y16_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\IN_operand[4]~input_o\ $ (\W[4]~reg0_q\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\IN_operand[4]~input_o\ & ((!\Add1~7\) # (!\W[4]~reg0_q\))) # (!\IN_operand[4]~input_o\ & (!\W[4]~reg0_q\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X14_Y17_N28
\W~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~71_combout\ = (\W[1]~27_combout\ & ((\W[1]~28_combout\) # ((\Add2~8_combout\)))) # (!\W[1]~27_combout\ & (!\W[1]~28_combout\ & ((\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \W[1]~28_combout\,
	datac => \Add2~8_combout\,
	datad => \Add1~8_combout\,
	combout => \W~71_combout\);

-- Location: LCCOMB_X14_Y17_N30
\W~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~8_combout\ = (\IN_operand[4]~input_o\) # (\W[4]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_operand[4]~input_o\,
	datad => \W[4]~reg0_q\,
	combout => \W~8_combout\);

-- Location: LCCOMB_X14_Y17_N14
\W~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~72_combout\ = (\W[4]~reg0_q\) # ((\IN_SFR[4]~input_o\ & !\IN_operand[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datac => \IN_operand[7]~input_o\,
	combout => \W~72_combout\);

-- Location: LCCOMB_X12_Y17_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\IN_operand[4]~input_o\ $ (\W[4]~reg0_q\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\IN_operand[4]~input_o\ & ((\W[4]~reg0_q\) # (!\Add0~7\))) # (!\IN_operand[4]~input_o\ & (\W[4]~reg0_q\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X13_Y17_N12
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\IN_SFR[4]~input_o\ $ (\W[4]~reg0_q\ $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\IN_SFR[4]~input_o\ & ((!\Add3~7\) # (!\W[4]~reg0_q\))) # (!\IN_SFR[4]~input_o\ & (!\W[4]~reg0_q\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X14_Y17_N20
\W~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~73_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[4]~input_o\) # ((\Add3~8_combout\)))) # (!\IN_opcode[0]~input_o\ & (!\IN_opcode[4]~input_o\ & (\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \Add0~8_combout\,
	datad => \Add3~8_combout\,
	combout => \W~73_combout\);

-- Location: LCCOMB_X14_Y17_N10
\W~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~74_combout\ = (\IN_operand[4]~input_o\ & (\W~73_combout\ $ (((\IN_opcode[4]~input_o\ & \W[4]~reg0_q\))))) # (!\IN_operand[4]~input_o\ & (\W~73_combout\ & ((\W[4]~reg0_q\) # (!\IN_opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[4]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \W[4]~reg0_q\,
	datad => \W~73_combout\,
	combout => \W~74_combout\);

-- Location: LCCOMB_X14_Y17_N24
\W~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~75_combout\ = (\W[1]~0_combout\ & (\W[1]~30_combout\)) # (!\W[1]~0_combout\ & ((\W[1]~30_combout\ & (\W~72_combout\)) # (!\W[1]~30_combout\ & ((\W~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \W[1]~30_combout\,
	datac => \W~72_combout\,
	datad => \W~74_combout\,
	combout => \W~75_combout\);

-- Location: LCCOMB_X14_Y17_N18
\W~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~76_combout\ = (\W[1]~0_combout\ & ((\W[4]~reg0_q\ & (\IN_SFR[4]~input_o\ $ (\W~75_combout\))) # (!\W[4]~reg0_q\ & (\IN_SFR[4]~input_o\ & \W~75_combout\)))) # (!\W[1]~0_combout\ & (((\W~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \W[4]~reg0_q\,
	datac => \IN_SFR[4]~input_o\,
	datad => \W~75_combout\,
	combout => \W~76_combout\);

-- Location: LCCOMB_X14_Y17_N16
\W~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~77_combout\ = (\W[1]~28_combout\ & ((\W~71_combout\ & ((\W~76_combout\))) # (!\W~71_combout\ & (\W~8_combout\)))) # (!\W[1]~28_combout\ & (\W~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~28_combout\,
	datab => \W~71_combout\,
	datac => \W~8_combout\,
	datad => \W~76_combout\,
	combout => \W~77_combout\);

-- Location: LCCOMB_X14_Y17_N6
\W~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~78_combout\ = (\IN_SFR[4]~input_o\ & ((\W[1]~43_combout\) # ((\W~42_combout\ & \W~77_combout\)))) # (!\IN_SFR[4]~input_o\ & (((\W~42_combout\ & \W~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[4]~input_o\,
	datab => \W[1]~43_combout\,
	datac => \W~42_combout\,
	datad => \W~77_combout\,
	combout => \W~78_combout\);

-- Location: LCCOMB_X14_Y17_N0
\W~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~79_combout\ = (\W~78_combout\) # ((\W~45_combout\ & \IN_operand[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~45_combout\,
	datac => \IN_operand[4]~input_o\,
	datad => \W~78_combout\,
	combout => \W~79_combout\);

-- Location: FF_X14_Y17_N1
\W[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[4]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N18
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\IN_SFR[4]~input_o\ $ (\W[4]~reg0_q\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\IN_SFR[4]~input_o\ & ((\W[4]~reg0_q\) # (!\Add2~7\))) # (!\IN_SFR[4]~input_o\ & (\W[4]~reg0_q\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X12_Y19_N4
\OUT_SFR[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[4]~3_combout\ = (\IN_opcode[3]~input_o\ & ((\Add3~8_combout\))) # (!\IN_opcode[3]~input_o\ & (\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Add2~8_combout\,
	datad => \Add3~8_combout\,
	combout => \OUT_SFR[4]~3_combout\);

-- Location: LCCOMB_X12_Y19_N30
\OUT_SFR~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~35_combout\ = (\Z~0_combout\ & (\W[4]~reg0_q\ & ((\OUT_SFR[1]~27_combout\) # (\IN_SFR[4]~input_o\)))) # (!\Z~0_combout\ & ((\IN_SFR[4]~input_o\ & ((!\W[4]~reg0_q\) # (!\OUT_SFR[1]~27_combout\))) # (!\IN_SFR[4]~input_o\ & ((\W[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_SFR[1]~27_combout\,
	datab => \Z~0_combout\,
	datac => \IN_SFR[4]~input_o\,
	datad => \W[4]~reg0_q\,
	combout => \OUT_SFR~35_combout\);

-- Location: FF_X12_Y19_N5
\OUT_SFR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[4]~3_combout\,
	asdata => \OUT_SFR~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[4]~reg0_q\);

-- Location: IOIBUF_X18_Y24_N15
\IN_SFR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(5),
	o => \IN_SFR[5]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\IN_operand[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(5),
	o => \IN_operand[5]~input_o\);

-- Location: LCCOMB_X12_Y19_N20
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\ & (\Add2~9\ & VCC)) # (!\W[5]~reg0_q\ & (!\Add2~9\)))) # (!\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\ & (!\Add2~9\)) # (!\W[5]~reg0_q\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\IN_SFR[5]~input_o\ & (!\W[5]~reg0_q\ & !\Add2~9\)) # (!\IN_SFR[5]~input_o\ & ((!\Add2~9\) # (!\W[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[5]~input_o\,
	datab => \W[5]~reg0_q\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X13_Y19_N20
\W~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~9_combout\ = (\IN_operand[5]~input_o\) # (\W[5]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_operand[5]~input_o\,
	datad => \W[5]~reg0_q\,
	combout => \W~9_combout\);

-- Location: LCCOMB_X12_Y16_N24
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\IN_operand[5]~input_o\ & ((\W[5]~reg0_q\ & (!\Add1~9\)) # (!\W[5]~reg0_q\ & (\Add1~9\ & VCC)))) # (!\IN_operand[5]~input_o\ & ((\W[5]~reg0_q\ & ((\Add1~9\) # (GND))) # (!\W[5]~reg0_q\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\IN_operand[5]~input_o\ & (\W[5]~reg0_q\ & !\Add1~9\)) # (!\IN_operand[5]~input_o\ & ((\W[5]~reg0_q\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[5]~input_o\,
	datab => \W[5]~reg0_q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X13_Y19_N8
\W~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~80_combout\ = (\W[1]~28_combout\ & ((\W~9_combout\) # ((\W[1]~27_combout\)))) # (!\W[1]~28_combout\ & (((!\W[1]~27_combout\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~28_combout\,
	datab => \W~9_combout\,
	datac => \W[1]~27_combout\,
	datad => \Add1~10_combout\,
	combout => \W~80_combout\);

-- Location: LCCOMB_X14_Y17_N22
\W~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~83_combout\ = (\W[1]~30_combout\ & (\W[5]~reg0_q\ $ (((!\IN_SFR[5]~input_o\) # (!\W[1]~0_combout\))))) # (!\W[1]~30_combout\ & (\W[1]~0_combout\ & ((!\W[5]~reg0_q\) # (!\IN_SFR[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \IN_SFR[5]~input_o\,
	datac => \W[1]~30_combout\,
	datad => \W[5]~reg0_q\,
	combout => \W~83_combout\);

-- Location: LCCOMB_X14_Y17_N8
\W~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~84_combout\ = (\IN_SFR[5]~input_o\ & (\W[1]~30_combout\ $ (((\W[1]~0_combout\ & \W[5]~reg0_q\))))) # (!\IN_SFR[5]~input_o\ & (((\W[1]~30_combout\ & \W[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \IN_SFR[5]~input_o\,
	datac => \W[1]~30_combout\,
	datad => \W[5]~reg0_q\,
	combout => \W~84_combout\);

-- Location: LCCOMB_X13_Y19_N6
\W~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~81_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_operand[5]~input_o\ $ (\W[5]~reg0_q\)) # (!\IN_opcode[4]~input_o\))) # (!\IN_opcode[0]~input_o\ & (\IN_opcode[4]~input_o\ & (\IN_operand[5]~input_o\ & \W[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \IN_operand[5]~input_o\,
	datad => \W[5]~reg0_q\,
	combout => \W~81_combout\);

-- Location: LCCOMB_X12_Y17_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\IN_operand[5]~input_o\ & ((\W[5]~reg0_q\ & (\Add0~9\ & VCC)) # (!\W[5]~reg0_q\ & (!\Add0~9\)))) # (!\IN_operand[5]~input_o\ & ((\W[5]~reg0_q\ & (!\Add0~9\)) # (!\W[5]~reg0_q\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\IN_operand[5]~input_o\ & (!\W[5]~reg0_q\ & !\Add0~9\)) # (!\IN_operand[5]~input_o\ & ((!\Add0~9\) # (!\W[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[5]~input_o\,
	datab => \W[5]~reg0_q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X14_Y17_N12
\W~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~82_combout\ = (\W~81_combout\ & ((\IN_opcode[4]~input_o\) # ((\Add3~10_combout\)))) # (!\W~81_combout\ & (!\IN_opcode[4]~input_o\ & (\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~81_combout\,
	datab => \IN_opcode[4]~input_o\,
	datac => \Add0~10_combout\,
	datad => \Add3~10_combout\,
	combout => \W~82_combout\);

-- Location: LCCOMB_X14_Y17_N2
\W~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~85_combout\ = (\W~83_combout\ & (!\IN_operand[7]~input_o\ & (\W~84_combout\))) # (!\W~83_combout\ & (((\W~84_combout\) # (\W~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~83_combout\,
	datab => \IN_operand[7]~input_o\,
	datac => \W~84_combout\,
	datad => \W~82_combout\,
	combout => \W~85_combout\);

-- Location: LCCOMB_X13_Y19_N0
\W~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~86_combout\ = (\W[1]~27_combout\ & ((\W~80_combout\ & ((\W~85_combout\))) # (!\W~80_combout\ & (\Add2~10_combout\)))) # (!\W[1]~27_combout\ & (((\W~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \Add2~10_combout\,
	datac => \W~80_combout\,
	datad => \W~85_combout\,
	combout => \W~86_combout\);

-- Location: LCCOMB_X13_Y19_N2
\W~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~87_combout\ = (\W~42_combout\ & ((\W~86_combout\) # ((\W[1]~43_combout\ & \IN_SFR[5]~input_o\)))) # (!\W~42_combout\ & (\W[1]~43_combout\ & (\IN_SFR[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~42_combout\,
	datab => \W[1]~43_combout\,
	datac => \IN_SFR[5]~input_o\,
	datad => \W~86_combout\,
	combout => \W~87_combout\);

-- Location: LCCOMB_X13_Y19_N10
\W~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~88_combout\ = (\W~87_combout\) # ((\W~45_combout\ & \IN_operand[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W~45_combout\,
	datac => \IN_operand[5]~input_o\,
	datad => \W~87_combout\,
	combout => \W~88_combout\);

-- Location: FF_X13_Y19_N11
\W[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~88_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[5]~reg0_q\);

-- Location: LCCOMB_X13_Y17_N14
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\ & (!\Add3~9\)) # (!\W[5]~reg0_q\ & (\Add3~9\ & VCC)))) # (!\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\ & ((\Add3~9\) # (GND))) # (!\W[5]~reg0_q\ & (!\Add3~9\))))
-- \Add3~11\ = CARRY((\IN_SFR[5]~input_o\ & (\W[5]~reg0_q\ & !\Add3~9\)) # (!\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\) # (!\Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[5]~input_o\,
	datab => \W[5]~reg0_q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X13_Y19_N24
\OUT_SFR[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[5]~4_combout\ = (\IN_opcode[3]~input_o\ & (\Add3~10_combout\)) # (!\IN_opcode[3]~input_o\ & ((\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Add3~10_combout\,
	datad => \Add2~10_combout\,
	combout => \OUT_SFR[5]~4_combout\);

-- Location: LCCOMB_X13_Y19_N30
\OUT_SFR~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~36_combout\ = (\Z~0_combout\ & (\W[5]~reg0_q\ & ((\OUT_SFR[1]~27_combout\) # (\IN_SFR[5]~input_o\)))) # (!\Z~0_combout\ & ((\IN_SFR[5]~input_o\ & ((!\W[5]~reg0_q\) # (!\OUT_SFR[1]~27_combout\))) # (!\IN_SFR[5]~input_o\ & ((\W[5]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~0_combout\,
	datab => \OUT_SFR[1]~27_combout\,
	datac => \IN_SFR[5]~input_o\,
	datad => \W[5]~reg0_q\,
	combout => \OUT_SFR~36_combout\);

-- Location: FF_X13_Y19_N25
\OUT_SFR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[5]~4_combout\,
	asdata => \OUT_SFR~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[5]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N22
\IN_SFR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(6),
	o => \IN_SFR[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\IN_operand[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(6),
	o => \IN_operand[6]~input_o\);

-- Location: LCCOMB_X12_Y16_N26
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\W[6]~reg0_q\ $ (\IN_operand[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\W[6]~reg0_q\ & (\IN_operand[6]~input_o\ & !\Add1~11\)) # (!\W[6]~reg0_q\ & ((\IN_operand[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[6]~reg0_q\,
	datab => \IN_operand[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X13_Y20_N28
\W~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~89_combout\ = (\W[1]~28_combout\ & (\W[1]~27_combout\)) # (!\W[1]~28_combout\ & ((\W[1]~27_combout\ & ((\Add2~12_combout\))) # (!\W[1]~27_combout\ & (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~28_combout\,
	datab => \W[1]~27_combout\,
	datac => \Add1~12_combout\,
	datad => \Add2~12_combout\,
	combout => \W~89_combout\);

-- Location: LCCOMB_X13_Y20_N4
\W~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~10_combout\ = (\W[6]~reg0_q\) # (\IN_operand[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \W[6]~reg0_q\,
	datad => \IN_operand[6]~input_o\,
	combout => \W~10_combout\);

-- Location: LCCOMB_X13_Y20_N14
\W~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~90_combout\ = (\W[6]~reg0_q\) # ((\IN_SFR[6]~input_o\ & !\IN_operand[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[6]~input_o\,
	datac => \W[6]~reg0_q\,
	datad => \IN_operand[7]~input_o\,
	combout => \W~90_combout\);

-- Location: LCCOMB_X12_Y17_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\IN_operand[6]~input_o\ $ (\W[6]~reg0_q\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\IN_operand[6]~input_o\ & ((\W[6]~reg0_q\) # (!\Add0~11\))) # (!\IN_operand[6]~input_o\ & (\W[6]~reg0_q\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[6]~input_o\,
	datab => \W[6]~reg0_q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X13_Y17_N16
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\W[6]~reg0_q\ $ (\IN_SFR[6]~input_o\ $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\W[6]~reg0_q\ & (\IN_SFR[6]~input_o\ & !\Add3~11\)) # (!\W[6]~reg0_q\ & ((\IN_SFR[6]~input_o\) # (!\Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[6]~reg0_q\,
	datab => \IN_SFR[6]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X13_Y20_N0
\W~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~91_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[4]~input_o\) # ((\Add3~12_combout\)))) # (!\IN_opcode[0]~input_o\ & (!\IN_opcode[4]~input_o\ & (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \Add0~12_combout\,
	datad => \Add3~12_combout\,
	combout => \W~91_combout\);

-- Location: LCCOMB_X13_Y20_N6
\W~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~92_combout\ = (\IN_operand[6]~input_o\ & (\W~91_combout\ $ (((\IN_opcode[4]~input_o\ & \W[6]~reg0_q\))))) # (!\IN_operand[6]~input_o\ & (\W~91_combout\ & ((\W[6]~reg0_q\) # (!\IN_opcode[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[6]~input_o\,
	datab => \IN_opcode[4]~input_o\,
	datac => \W[6]~reg0_q\,
	datad => \W~91_combout\,
	combout => \W~92_combout\);

-- Location: LCCOMB_X13_Y20_N12
\W~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~93_combout\ = (\W[1]~0_combout\ & (((\W[1]~30_combout\)))) # (!\W[1]~0_combout\ & ((\W[1]~30_combout\ & (\W~90_combout\)) # (!\W[1]~30_combout\ & ((\W~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \W~90_combout\,
	datac => \W[1]~30_combout\,
	datad => \W~92_combout\,
	combout => \W~93_combout\);

-- Location: LCCOMB_X13_Y20_N10
\W~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~94_combout\ = (\W[1]~0_combout\ & ((\IN_SFR[6]~input_o\ & (\W[6]~reg0_q\ $ (\W~93_combout\))) # (!\IN_SFR[6]~input_o\ & (\W[6]~reg0_q\ & \W~93_combout\)))) # (!\W[1]~0_combout\ & (((\W~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~0_combout\,
	datab => \IN_SFR[6]~input_o\,
	datac => \W[6]~reg0_q\,
	datad => \W~93_combout\,
	combout => \W~94_combout\);

-- Location: LCCOMB_X13_Y20_N16
\W~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~95_combout\ = (\W[1]~28_combout\ & ((\W~89_combout\ & ((\W~94_combout\))) # (!\W~89_combout\ & (\W~10_combout\)))) # (!\W[1]~28_combout\ & (\W~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~28_combout\,
	datab => \W~89_combout\,
	datac => \W~10_combout\,
	datad => \W~94_combout\,
	combout => \W~95_combout\);

-- Location: LCCOMB_X13_Y20_N2
\W~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~96_combout\ = (\IN_SFR[6]~input_o\ & ((\W[1]~43_combout\) # ((\W~42_combout\ & \W~95_combout\)))) # (!\IN_SFR[6]~input_o\ & (\W~42_combout\ & ((\W~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[6]~input_o\,
	datab => \W~42_combout\,
	datac => \W[1]~43_combout\,
	datad => \W~95_combout\,
	combout => \W~96_combout\);

-- Location: LCCOMB_X13_Y20_N22
\W~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~97_combout\ = (\W~96_combout\) # ((\IN_operand[6]~input_o\ & \W~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[6]~input_o\,
	datab => \W~45_combout\,
	datad => \W~96_combout\,
	combout => \W~97_combout\);

-- Location: FF_X13_Y20_N23
\W[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[6]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N22
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\IN_SFR[6]~input_o\ $ (\W[6]~reg0_q\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\IN_SFR[6]~input_o\ & ((\W[6]~reg0_q\) # (!\Add2~11\))) # (!\IN_SFR[6]~input_o\ & (\W[6]~reg0_q\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[6]~input_o\,
	datab => \W[6]~reg0_q\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X13_Y20_N20
\OUT_SFR[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[6]~5_combout\ = (\IN_opcode[3]~input_o\ & ((\Add3~12_combout\))) # (!\IN_opcode[3]~input_o\ & (\Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \IN_opcode[3]~input_o\,
	datad => \Add3~12_combout\,
	combout => \OUT_SFR[6]~5_combout\);

-- Location: LCCOMB_X13_Y20_N8
\OUT_SFR~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~37_combout\ = (\W[6]~reg0_q\ & ((\Z~0_combout\ & ((\IN_SFR[6]~input_o\) # (\OUT_SFR[1]~27_combout\))) # (!\Z~0_combout\ & ((!\OUT_SFR[1]~27_combout\) # (!\IN_SFR[6]~input_o\))))) # (!\W[6]~reg0_q\ & (!\Z~0_combout\ & (\IN_SFR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[6]~reg0_q\,
	datab => \Z~0_combout\,
	datac => \IN_SFR[6]~input_o\,
	datad => \OUT_SFR[1]~27_combout\,
	combout => \OUT_SFR~37_combout\);

-- Location: FF_X13_Y20_N21
\OUT_SFR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[6]~5_combout\,
	asdata => \OUT_SFR~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[6]~reg0_q\);

-- Location: IOIBUF_X23_Y24_N1
\IN_SFR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(7),
	o => \IN_SFR[7]~input_o\);

-- Location: LCCOMB_X12_Y20_N10
\W~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~102_combout\ = (\W[1]~30_combout\ & (\W[7]~reg0_q\ $ (((!\IN_SFR[7]~input_o\) # (!\W[1]~0_combout\))))) # (!\W[1]~30_combout\ & (\W[1]~0_combout\ & ((!\W[7]~reg0_q\) # (!\IN_SFR[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~30_combout\,
	datab => \W[1]~0_combout\,
	datac => \IN_SFR[7]~input_o\,
	datad => \W[7]~reg0_q\,
	combout => \W~102_combout\);

-- Location: LCCOMB_X12_Y20_N0
\W~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~103_combout\ = (\IN_SFR[7]~input_o\ & (\W[1]~30_combout\ $ (((\W[1]~0_combout\ & \W[7]~reg0_q\))))) # (!\IN_SFR[7]~input_o\ & (\W[1]~30_combout\ & ((\W[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~30_combout\,
	datab => \W[1]~0_combout\,
	datac => \IN_SFR[7]~input_o\,
	datad => \W[7]~reg0_q\,
	combout => \W~103_combout\);

-- Location: LCCOMB_X13_Y20_N24
\W~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~2_combout\ = (\IN_operand[7]~input_o\ & \W[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datad => \W[7]~reg0_q\,
	combout => \W~2_combout\);

-- Location: LCCOMB_X12_Y20_N2
\W~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~12_combout\ = \IN_operand[7]~input_o\ $ (\W[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datac => \W[7]~reg0_q\,
	combout => \W~12_combout\);

-- Location: LCCOMB_X12_Y20_N6
\W~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~100_combout\ = (\IN_opcode[0]~input_o\ & (((\W~12_combout\) # (!\IN_opcode[4]~input_o\)))) # (!\IN_opcode[0]~input_o\ & (\W~2_combout\ & (\IN_opcode[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~2_combout\,
	datab => \IN_opcode[0]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \W~12_combout\,
	combout => \W~100_combout\);

-- Location: LCCOMB_X12_Y17_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \IN_operand[7]~input_o\ $ (\Add0~13\ $ (\W[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datad => \W[7]~reg0_q\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X13_Y17_N18
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \IN_SFR[7]~input_o\ $ (\Add3~13\ $ (!\W[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[7]~input_o\,
	datad => \W[7]~reg0_q\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X12_Y20_N28
\W~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~101_combout\ = (\W~100_combout\ & ((\IN_opcode[4]~input_o\) # ((\Add3~14_combout\)))) # (!\W~100_combout\ & (!\IN_opcode[4]~input_o\ & (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~100_combout\,
	datab => \IN_opcode[4]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add3~14_combout\,
	combout => \W~101_combout\);

-- Location: LCCOMB_X12_Y20_N22
\W~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~104_combout\ = (\W~102_combout\ & (!\IN_operand[7]~input_o\ & (\W~103_combout\))) # (!\W~102_combout\ & (((\W~103_combout\) # (\W~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~102_combout\,
	datab => \IN_operand[7]~input_o\,
	datac => \W~103_combout\,
	datad => \W~101_combout\,
	combout => \W~104_combout\);

-- Location: LCCOMB_X12_Y20_N26
\W~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~98_combout\ = (\W[7]~reg0_q\) # (\IN_operand[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \W[7]~reg0_q\,
	datad => \IN_operand[7]~input_o\,
	combout => \W~98_combout\);

-- Location: LCCOMB_X12_Y16_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \IN_operand[7]~input_o\ $ (\Add1~13\ $ (!\W[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datad => \W[7]~reg0_q\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X12_Y20_N20
\W~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~99_combout\ = (\W[1]~28_combout\ & ((\W~98_combout\) # ((\W[1]~27_combout\)))) # (!\W[1]~28_combout\ & (((\Add1~14_combout\ & !\W[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~98_combout\,
	datab => \W[1]~28_combout\,
	datac => \Add1~14_combout\,
	datad => \W[1]~27_combout\,
	combout => \W~99_combout\);

-- Location: LCCOMB_X12_Y20_N16
\W~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~105_combout\ = (\W[1]~27_combout\ & ((\W~99_combout\ & ((\W~104_combout\))) # (!\W~99_combout\ & (\Add2~14_combout\)))) # (!\W[1]~27_combout\ & (((\W~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~27_combout\,
	datab => \Add2~14_combout\,
	datac => \W~104_combout\,
	datad => \W~99_combout\,
	combout => \W~105_combout\);

-- Location: LCCOMB_X12_Y20_N18
\W~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~106_combout\ = (\IN_SFR[7]~input_o\ & ((\W[1]~43_combout\) # ((\W~42_combout\ & \W~105_combout\)))) # (!\IN_SFR[7]~input_o\ & (\W~42_combout\ & ((\W~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[7]~input_o\,
	datab => \W~42_combout\,
	datac => \W[1]~43_combout\,
	datad => \W~105_combout\,
	combout => \W~106_combout\);

-- Location: LCCOMB_X12_Y20_N30
\W~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~107_combout\ = (\W~106_combout\) # ((\IN_operand[7]~input_o\ & \W~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_operand[7]~input_o\,
	datac => \W~45_combout\,
	datad => \W~106_combout\,
	combout => \W~107_combout\);

-- Location: FF_X12_Y20_N31
\W[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \W~107_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \W[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \W[7]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N24
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\W[7]~reg0_q\ & ((\IN_SFR[7]~input_o\ & (\Add2~13\ & VCC)) # (!\IN_SFR[7]~input_o\ & (!\Add2~13\)))) # (!\W[7]~reg0_q\ & ((\IN_SFR[7]~input_o\ & (!\Add2~13\)) # (!\IN_SFR[7]~input_o\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\W[7]~reg0_q\ & (!\IN_SFR[7]~input_o\ & !\Add2~13\)) # (!\W[7]~reg0_q\ & ((!\Add2~13\) # (!\IN_SFR[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \W[7]~reg0_q\,
	datab => \IN_SFR[7]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X12_Y20_N24
\OUT_SFR[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR[7]~6_combout\ = (\IN_opcode[3]~input_o\ & ((\Add3~14_combout\))) # (!\IN_opcode[3]~input_o\ & (\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Add2~14_combout\,
	datad => \Add3~14_combout\,
	combout => \OUT_SFR[7]~6_combout\);

-- Location: LCCOMB_X12_Y20_N4
\OUT_SFR~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_SFR~38_combout\ = (\Z~0_combout\ & (\W[7]~reg0_q\ & ((\OUT_SFR[1]~27_combout\) # (\IN_SFR[7]~input_o\)))) # (!\Z~0_combout\ & ((\IN_SFR[7]~input_o\ & ((!\W[7]~reg0_q\) # (!\OUT_SFR[1]~27_combout\))) # (!\IN_SFR[7]~input_o\ & ((\W[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~0_combout\,
	datab => \OUT_SFR[1]~27_combout\,
	datac => \IN_SFR[7]~input_o\,
	datad => \W[7]~reg0_q\,
	combout => \OUT_SFR~38_combout\);

-- Location: FF_X12_Y20_N25
\OUT_SFR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_SFR[7]~6_combout\,
	asdata => \OUT_SFR~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \IN_opcode[2]~input_o\,
	ena => \OUT_SFR[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_SFR[7]~reg0_q\);

-- Location: LCCOMB_X14_Y16_N0
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\IN_SFR[4]~input_o\ & (!\IN_SFR[1]~input_o\ & (!\IN_SFR[2]~input_o\ & !\IN_SFR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[4]~input_o\,
	datab => \IN_SFR[1]~input_o\,
	datac => \IN_SFR[2]~input_o\,
	datad => \IN_SFR[3]~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\IN_SFR[6]~input_o\ & (!\IN_SFR[5]~input_o\ & (!\IN_SFR[7]~input_o\ & \WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_SFR[6]~input_o\,
	datab => \IN_SFR[5]~input_o\,
	datac => \IN_SFR[7]~input_o\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X11_Y16_N24
\Z~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~13_combout\ = (\W[6]~reg0_q\) # ((\W[5]~reg0_q\) # (\W[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[6]~reg0_q\,
	datac => \W[5]~reg0_q\,
	datad => \W[7]~reg0_q\,
	combout => \Z~13_combout\);

-- Location: LCCOMB_X12_Y16_N4
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (!\W[0]~reg0_q\ & (!\W[2]~reg0_q\ & (!\W[3]~reg0_q\ & !\W[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[0]~reg0_q\,
	datab => \W[2]~reg0_q\,
	datac => \W[3]~reg0_q\,
	datad => \W[1]~reg0_q\,
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X11_Y16_N10
\Z~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~14_combout\ = (!\Z~13_combout\ & (!\W[4]~reg0_q\ & \Equal19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Z~13_combout\,
	datac => \W[4]~reg0_q\,
	datad => \Equal19~0_combout\,
	combout => \Z~14_combout\);

-- Location: LCCOMB_X11_Y16_N22
\Z~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~16_combout\ = (\IN_opcode[1]~input_o\ & (((\IN_SFR[0]~input_o\ & \Z~14_combout\)))) # (!\IN_opcode[1]~input_o\ & (\Z~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \Z~reg0_q\,
	datac => \IN_SFR[0]~input_o\,
	datad => \Z~14_combout\,
	combout => \Z~16_combout\);

-- Location: LCCOMB_X11_Y16_N28
\Z~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~15_combout\ = (\IN_SFR[0]~input_o\ & ((!\Z~14_combout\) # (!\IN_opcode[1]~input_o\))) # (!\IN_SFR[0]~input_o\ & ((\Z~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datac => \IN_SFR[0]~input_o\,
	datad => \Z~14_combout\,
	combout => \Z~15_combout\);

-- Location: LCCOMB_X11_Y16_N20
\Z~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~17_combout\ = (\IN_opcode[0]~input_o\ & (((\Z~15_combout\)) # (!\WideOr0~1_combout\))) # (!\IN_opcode[0]~input_o\ & (((\Z~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~1_combout\,
	datab => \IN_opcode[0]~input_o\,
	datac => \Z~16_combout\,
	datad => \Z~15_combout\,
	combout => \Z~17_combout\);

-- Location: LCCOMB_X11_Y19_N22
\Z~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~18_combout\ = (\IN_opcode[2]~input_o\ & \Z~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[2]~input_o\,
	datad => \Z~17_combout\,
	combout => \Z~18_combout\);

-- Location: LCCOMB_X11_Y19_N26
\Z~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~10_combout\ = (\en~input_o\ & (!\reset~input_o\ & ((\IN_opcode[4]~input_o\) # (!\always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[4]~input_o\,
	datab => \en~input_o\,
	datac => \reset~input_o\,
	datad => \always0~0_combout\,
	combout => \Z~10_combout\);

-- Location: LCCOMB_X10_Y19_N24
\Z~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~12_combout\ = (\IN_opcode[3]~input_o\ & (!\IN_opcode[4]~input_o\ & \Z~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_opcode[3]~input_o\,
	datac => \IN_opcode[4]~input_o\,
	datad => \Z~10_combout\,
	combout => \Z~12_combout\);

-- Location: LCCOMB_X10_Y17_N10
\Z~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~25_combout\ = (\IN_opcode[1]~input_o\ & (!\Add3~0_combout\ & (!\Add3~4_combout\ & !\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \Add3~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~2_combout\,
	combout => \Z~25_combout\);

-- Location: LCCOMB_X12_Y16_N30
\Z~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~22_combout\ = (!\IN_opcode[1]~input_o\ & (!\Add1~2_combout\ & (!\Add1~0_combout\ & !\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[1]~input_o\,
	datab => \Add1~2_combout\,
	datac => \Add1~0_combout\,
	datad => \Add1~4_combout\,
	combout => \Z~22_combout\);

-- Location: LCCOMB_X12_Y16_N0
\Z~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~23_combout\ = (!\Add1~8_combout\ & (!\Add1~6_combout\ & (!\Add1~12_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~6_combout\,
	datac => \Add1~12_combout\,
	datad => \Add1~10_combout\,
	combout => \Z~23_combout\);

-- Location: LCCOMB_X12_Y16_N10
\Z~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~24_combout\ = (!\Add1~14_combout\ & (\Z~22_combout\ & \Z~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \Z~22_combout\,
	datad => \Z~23_combout\,
	combout => \Z~24_combout\);

-- Location: LCCOMB_X14_Y17_N26
\Z~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~26_combout\ = (!\Add3~8_combout\ & (!\Add3~6_combout\ & (!\Add3~12_combout\ & !\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~6_combout\,
	datac => \Add3~12_combout\,
	datad => \Add3~10_combout\,
	combout => \Z~26_combout\);

-- Location: LCCOMB_X11_Y19_N4
\Z~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~27_combout\ = (\Z~24_combout\) # ((\Z~25_combout\ & (!\Add3~14_combout\ & \Z~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~25_combout\,
	datab => \Add3~14_combout\,
	datac => \Z~24_combout\,
	datad => \Z~26_combout\,
	combout => \Z~27_combout\);

-- Location: LCCOMB_X11_Y17_N10
\Z~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~19_combout\ = (!\IN_opcode[0]~input_o\ & (!\Add0~0_combout\ & (!\Add0~2_combout\ & \IN_opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \IN_opcode[1]~input_o\,
	combout => \Z~19_combout\);

-- Location: LCCOMB_X11_Y19_N12
\Z~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~20_combout\ = (!\Add0~6_combout\ & (!\Add0~8_combout\ & (!\Add0~4_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~10_combout\,
	combout => \Z~20_combout\);

-- Location: LCCOMB_X11_Y19_N6
\Z~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~21_combout\ = (\Z~19_combout\ & (!\Add0~14_combout\ & (!\Add0~12_combout\ & \Z~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~19_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~12_combout\,
	datad => \Z~20_combout\,
	combout => \Z~21_combout\);

-- Location: LCCOMB_X11_Y19_N30
\Z~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~28_combout\ = (!\IN_opcode[2]~input_o\ & ((\Z~21_combout\) # ((\IN_opcode[0]~input_o\ & \Z~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \Z~27_combout\,
	datad => \Z~21_combout\,
	combout => \Z~28_combout\);

-- Location: LCCOMB_X11_Y19_N14
\Z~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~8_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[1]~input_o\))) # (!\IN_opcode[0]~input_o\ & ((!\IN_opcode[1]~input_o\) # (!\Z~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \Z~reg0_q\,
	datac => \IN_opcode[1]~input_o\,
	combout => \Z~8_combout\);

-- Location: LCCOMB_X12_Y18_N28
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\IN_operand[2]~input_o\ & (\W[2]~reg0_q\ & (\IN_operand[1]~input_o\ $ (!\W[1]~reg0_q\)))) # (!\IN_operand[2]~input_o\ & (!\W[2]~reg0_q\ & (\IN_operand[1]~input_o\ $ (!\W[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[2]~input_o\,
	datab => \IN_operand[1]~input_o\,
	datac => \W[1]~reg0_q\,
	datad => \W[2]~reg0_q\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X12_Y18_N20
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (!\W~11_combout\ & (\Equal11~0_combout\ & (\IN_operand[4]~input_o\ $ (!\W[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[4]~input_o\,
	datab => \W[4]~reg0_q\,
	datac => \W~11_combout\,
	datad => \Equal11~0_combout\,
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X13_Y20_N18
\Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (\IN_operand[6]~input_o\ & (\W[6]~reg0_q\ & (\IN_operand[5]~input_o\ $ (!\W[5]~reg0_q\)))) # (!\IN_operand[6]~input_o\ & (!\W[6]~reg0_q\ & (\IN_operand[5]~input_o\ $ (!\W[5]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[6]~input_o\,
	datab => \IN_operand[5]~input_o\,
	datac => \W[6]~reg0_q\,
	datad => \W[5]~reg0_q\,
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X12_Y18_N22
\Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (!\Add0~0_combout\ & (\Equal11~1_combout\ & (!\W~12_combout\ & \Equal11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal11~1_combout\,
	datac => \W~12_combout\,
	datad => \Equal11~2_combout\,
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X12_Y18_N12
\W~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \W~3_combout\ = (\IN_operand[0]~input_o\ & \W[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[0]~input_o\,
	datad => \W[0]~reg0_q\,
	combout => \W~3_combout\);

-- Location: LCCOMB_X13_Y20_N30
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\IN_operand[5]~input_o\ & (!\W[5]~reg0_q\ & ((!\W[4]~reg0_q\) # (!\IN_operand[4]~input_o\)))) # (!\IN_operand[5]~input_o\ & (((!\W[4]~reg0_q\)) # (!\IN_operand[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[5]~input_o\,
	datab => \IN_operand[4]~input_o\,
	datac => \W[4]~reg0_q\,
	datad => \W[5]~reg0_q\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X13_Y20_N26
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Equal7~1_combout\ & (!\W~2_combout\ & ((!\IN_operand[6]~input_o\) # (!\W[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[6]~reg0_q\,
	datab => \IN_operand[6]~input_o\,
	datac => \Equal7~1_combout\,
	datad => \W~2_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X11_Y18_N12
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\W[3]~reg0_q\ & (!\IN_operand[3]~input_o\ & ((!\W[2]~reg0_q\) # (!\IN_operand[2]~input_o\)))) # (!\W[3]~reg0_q\ & (((!\W[2]~reg0_q\)) # (!\IN_operand[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~reg0_q\,
	datab => \IN_operand[2]~input_o\,
	datac => \IN_operand[3]~input_o\,
	datad => \W[2]~reg0_q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X12_Y18_N8
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (!\W~3_combout\ & (!\W~4_combout\ & (\Equal7~2_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~3_combout\,
	datab => \W~4_combout\,
	datac => \Equal7~2_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X11_Y17_N0
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!\IN_operand[0]~input_o\ & (!\W[0]~reg0_q\ & (!\IN_operand[7]~input_o\ & !\W[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_operand[0]~input_o\,
	datab => \W[0]~reg0_q\,
	datac => \IN_operand[7]~input_o\,
	datad => \W[7]~reg0_q\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X12_Y18_N2
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\W~5_combout\ & (!\W~7_combout\ & (!\W~6_combout\ & !\W~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~5_combout\,
	datab => \W~7_combout\,
	datac => \W~6_combout\,
	datad => \W~8_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X12_Y18_N24
\Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Equal9~1_combout\ & (!\W~10_combout\ & (!\W~9_combout\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datab => \W~10_combout\,
	datac => \W~9_combout\,
	datad => \Equal9~0_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X12_Y18_N18
\Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~1_combout\ = (\IN_opcode[0]~input_o\ & ((\IN_opcode[1]~input_o\) # ((\Equal9~2_combout\)))) # (!\IN_opcode[0]~input_o\ & (!\IN_opcode[1]~input_o\ & (\Z~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \IN_opcode[1]~input_o\,
	datac => \Z~reg0_q\,
	datad => \Equal9~2_combout\,
	combout => \Z~1_combout\);

-- Location: LCCOMB_X12_Y18_N0
\Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~2_combout\ = (\IN_opcode[1]~input_o\ & ((\Z~1_combout\ & (\Equal11~3_combout\)) # (!\Z~1_combout\ & ((\Equal7~3_combout\))))) # (!\IN_opcode[1]~input_o\ & (((\Z~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~3_combout\,
	datab => \IN_opcode[1]~input_o\,
	datac => \Equal7~3_combout\,
	datad => \Z~1_combout\,
	combout => \Z~2_combout\);

-- Location: LCCOMB_X12_Y19_N8
\Z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~3_combout\ = (!\Add2~6_combout\ & (!\Add2~8_combout\ & (!\Add2~4_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~4_combout\,
	datad => \Add2~10_combout\,
	combout => \Z~3_combout\);

-- Location: LCCOMB_X12_Y19_N26
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = !\Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X12_Y19_N0
\Z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~4_combout\ = (!\Add2~0_combout\ & (\Add2~16_combout\ & !\Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Add2~16_combout\,
	datad => \Add2~14_combout\,
	combout => \Z~4_combout\);

-- Location: LCCOMB_X12_Y19_N2
\Z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~5_combout\ = (!\Add2~2_combout\ & (!\Add2~12_combout\ & (\Z~3_combout\ & \Z~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~12_combout\,
	datac => \Z~3_combout\,
	datad => \Z~4_combout\,
	combout => \Z~5_combout\);

-- Location: LCCOMB_X11_Y19_N18
\Z~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~6_combout\ = (\IN_opcode[0]~input_o\ & (\Z~reg0_q\)) # (!\IN_opcode[0]~input_o\ & ((\IN_opcode[1]~input_o\ & (\Z~reg0_q\)) # (!\IN_opcode[1]~input_o\ & ((\Z~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[0]~input_o\,
	datab => \Z~reg0_q\,
	datac => \IN_opcode[1]~input_o\,
	datad => \Z~5_combout\,
	combout => \Z~6_combout\);

-- Location: LCCOMB_X11_Y19_N24
\Z~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~7_combout\ = (\IN_opcode[3]~input_o\ & (\IN_opcode[2]~input_o\)) # (!\IN_opcode[3]~input_o\ & ((\IN_opcode[2]~input_o\ & (\Z~reg0_q\)) # (!\IN_opcode[2]~input_o\ & ((\Z~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \IN_opcode[2]~input_o\,
	datac => \Z~reg0_q\,
	datad => \Z~6_combout\,
	combout => \Z~7_combout\);

-- Location: LCCOMB_X11_Y19_N28
\Z~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~9_combout\ = (\IN_opcode[3]~input_o\ & ((\Z~7_combout\ & (!\Z~8_combout\)) # (!\Z~7_combout\ & ((\Z~2_combout\))))) # (!\IN_opcode[3]~input_o\ & (((\Z~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[3]~input_o\,
	datab => \Z~8_combout\,
	datac => \Z~2_combout\,
	datad => \Z~7_combout\,
	combout => \Z~9_combout\);

-- Location: LCCOMB_X11_Y19_N16
\Z~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~11_combout\ = (\Z~10_combout\ & (\IN_opcode[4]~input_o\ & ((\Z~9_combout\)))) # (!\Z~10_combout\ & (((\Z~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_opcode[4]~input_o\,
	datab => \Z~reg0_q\,
	datac => \Z~10_combout\,
	datad => \Z~9_combout\,
	combout => \Z~11_combout\);

-- Location: LCCOMB_X11_Y19_N8
\Z~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z~29_combout\ = (\Z~11_combout\) # ((\Z~12_combout\ & ((\Z~18_combout\) # (\Z~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~18_combout\,
	datab => \Z~12_combout\,
	datac => \Z~28_combout\,
	datad => \Z~11_combout\,
	combout => \Z~29_combout\);

-- Location: FF_X11_Y19_N9
\Z~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Z~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Z~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\IN_operand[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(8),
	o => \IN_operand[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\IN_operand[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_operand(9),
	o => \IN_operand[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\IN_SFR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(8),
	o => \IN_SFR[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\IN_SFR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_SFR(9),
	o => \IN_SFR[9]~input_o\);

ww_OUT_SFR(0) <= \OUT_SFR[0]~output_o\;

ww_OUT_SFR(1) <= \OUT_SFR[1]~output_o\;

ww_OUT_SFR(2) <= \OUT_SFR[2]~output_o\;

ww_OUT_SFR(3) <= \OUT_SFR[3]~output_o\;

ww_OUT_SFR(4) <= \OUT_SFR[4]~output_o\;

ww_OUT_SFR(5) <= \OUT_SFR[5]~output_o\;

ww_OUT_SFR(6) <= \OUT_SFR[6]~output_o\;

ww_OUT_SFR(7) <= \OUT_SFR[7]~output_o\;

ww_Z <= \Z~output_o\;

ww_W(0) <= \W[0]~output_o\;

ww_W(1) <= \W[1]~output_o\;

ww_W(2) <= \W[2]~output_o\;

ww_W(3) <= \W[3]~output_o\;

ww_W(4) <= \W[4]~output_o\;

ww_W(5) <= \W[5]~output_o\;

ww_W(6) <= \W[6]~output_o\;

ww_W(7) <= \W[7]~output_o\;
END structure;


