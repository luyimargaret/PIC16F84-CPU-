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

-- DATE "03/24/2020 18:51:38"

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

ENTITY 	decode IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	IN_MEMORY : IN std_logic_vector(13 DOWNTO 0);
	OUT_opcode : BUFFER std_logic_vector(4 DOWNTO 0);
	OUT_operand : BUFFER std_logic_vector(9 DOWNTO 0);
	sel : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END decode;

-- Design Ports Information
-- OUT_opcode[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_opcode[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_opcode[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_opcode[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_opcode[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[8]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_operand[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[9]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[11]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[12]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[13]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[8]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[10]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_MEMORY[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decode IS
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
SIGNAL ww_IN_MEMORY : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_OUT_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OUT_operand : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT_opcode[0]~output_o\ : std_logic;
SIGNAL \OUT_opcode[1]~output_o\ : std_logic;
SIGNAL \OUT_opcode[2]~output_o\ : std_logic;
SIGNAL \OUT_opcode[3]~output_o\ : std_logic;
SIGNAL \OUT_opcode[4]~output_o\ : std_logic;
SIGNAL \OUT_operand[0]~output_o\ : std_logic;
SIGNAL \OUT_operand[1]~output_o\ : std_logic;
SIGNAL \OUT_operand[2]~output_o\ : std_logic;
SIGNAL \OUT_operand[3]~output_o\ : std_logic;
SIGNAL \OUT_operand[4]~output_o\ : std_logic;
SIGNAL \OUT_operand[5]~output_o\ : std_logic;
SIGNAL \OUT_operand[6]~output_o\ : std_logic;
SIGNAL \OUT_operand[7]~output_o\ : std_logic;
SIGNAL \OUT_operand[8]~output_o\ : std_logic;
SIGNAL \OUT_operand[9]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \IN_MEMORY[10]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[5]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[8]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[7]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[6]~input_o\ : std_logic;
SIGNAL \Equal30~1_combout\ : std_logic;
SIGNAL \IN_MEMORY[12]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[11]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[13]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[9]~input_o\ : std_logic;
SIGNAL \OUT_operand[0]~0_combout\ : std_logic;
SIGNAL \IN_MEMORY[1]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[3]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[2]~input_o\ : std_logic;
SIGNAL \IN_MEMORY[4]~input_o\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \Equal30~2_combout\ : std_logic;
SIGNAL \OUT_opcode~62_combout\ : std_logic;
SIGNAL \IN_MEMORY[0]~input_o\ : std_logic;
SIGNAL \OUT_opcode~61_combout\ : std_logic;
SIGNAL \OUT_opcode~41_combout\ : std_logic;
SIGNAL \OUT_opcode~90_combout\ : std_logic;
SIGNAL \OUT_opcode~44_combout\ : std_logic;
SIGNAL \OUT_opcode~45_combout\ : std_logic;
SIGNAL \OUT_opcode~58_combout\ : std_logic;
SIGNAL \OUT_opcode~92_combout\ : std_logic;
SIGNAL \OUT_opcode~66_combout\ : std_logic;
SIGNAL \OUT_opcode~67_combout\ : std_logic;
SIGNAL \OUT_opcode~68_combout\ : std_logic;
SIGNAL \OUT_opcode~69_combout\ : std_logic;
SIGNAL \OUT_opcode~26_combout\ : std_logic;
SIGNAL \OUT_opcode~29_combout\ : std_logic;
SIGNAL \OUT_opcode~65_combout\ : std_logic;
SIGNAL \OUT_opcode~89_combout\ : std_logic;
SIGNAL \OUT_opcode~91_combout\ : std_logic;
SIGNAL \OUT_opcode~93_combout\ : std_logic;
SIGNAL \OUT_opcode~35_combout\ : std_logic;
SIGNAL \OUT_opcode~80_combout\ : std_logic;
SIGNAL \OUT_opcode~81_combout\ : std_logic;
SIGNAL \OUT_opcode~48_combout\ : std_logic;
SIGNAL \OUT_opcode~40_combout\ : std_logic;
SIGNAL \OUT_opcode~28_combout\ : std_logic;
SIGNAL \OUT_opcode~86_combout\ : std_logic;
SIGNAL \OUT_opcode~31_combout\ : std_logic;
SIGNAL \OUT_opcode~87_combout\ : std_logic;
SIGNAL \OUT_opcode~82_combout\ : std_logic;
SIGNAL \OUT_opcode~83_combout\ : std_logic;
SIGNAL \OUT_opcode~144_combout\ : std_logic;
SIGNAL \OUT_opcode~30_combout\ : std_logic;
SIGNAL \OUT_opcode~84_combout\ : std_logic;
SIGNAL \OUT_opcode~85_combout\ : std_logic;
SIGNAL \OUT_opcode~88_combout\ : std_logic;
SIGNAL \OUT_opcode~37_combout\ : std_logic;
SIGNAL \OUT_opcode~38_combout\ : std_logic;
SIGNAL \OUT_opcode~36_combout\ : std_logic;
SIGNAL \OUT_opcode~39_combout\ : std_logic;
SIGNAL \OUT_opcode~42_combout\ : std_logic;
SIGNAL \OUT_opcode~34_combout\ : std_logic;
SIGNAL \OUT_opcode~43_combout\ : std_logic;
SIGNAL \OUT_opcode~56_combout\ : std_logic;
SIGNAL \sel~0_combout\ : std_logic;
SIGNAL \OUT_opcode~52_combout\ : std_logic;
SIGNAL \OUT_opcode~51_combout\ : std_logic;
SIGNAL \OUT_opcode~53_combout\ : std_logic;
SIGNAL \OUT_opcode~54_combout\ : std_logic;
SIGNAL \OUT_opcode~46_combout\ : std_logic;
SIGNAL \OUT_opcode~47_combout\ : std_logic;
SIGNAL \OUT_opcode~49_combout\ : std_logic;
SIGNAL \OUT_opcode~50_combout\ : std_logic;
SIGNAL \OUT_opcode~55_combout\ : std_logic;
SIGNAL \OUT_opcode~143_combout\ : std_logic;
SIGNAL \OUT_opcode~32_combout\ : std_logic;
SIGNAL \OUT_opcode~27_combout\ : std_logic;
SIGNAL \OUT_opcode~33_combout\ : std_logic;
SIGNAL \OUT_opcode~57_combout\ : std_logic;
SIGNAL \OUT_opcode~75_combout\ : std_logic;
SIGNAL \OUT_opcode~76_combout\ : std_logic;
SIGNAL \OUT_opcode~59_combout\ : std_logic;
SIGNAL \OUT_opcode~77_combout\ : std_logic;
SIGNAL \OUT_opcode~78_combout\ : std_logic;
SIGNAL \OUT_opcode~73_combout\ : std_logic;
SIGNAL \OUT_opcode~72_combout\ : std_logic;
SIGNAL \OUT_opcode~74_combout\ : std_logic;
SIGNAL \OUT_opcode~63_combout\ : std_logic;
SIGNAL \OUT_opcode~60_combout\ : std_logic;
SIGNAL \OUT_opcode~64_combout\ : std_logic;
SIGNAL \OUT_opcode~70_combout\ : std_logic;
SIGNAL \OUT_opcode~71_combout\ : std_logic;
SIGNAL \OUT_opcode~79_combout\ : std_logic;
SIGNAL \OUT_opcode~94_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \OUT_opcode[0]~95_combout\ : std_logic;
SIGNAL \OUT_opcode[0]~96_combout\ : std_logic;
SIGNAL \OUT_opcode[0]~reg0_q\ : std_logic;
SIGNAL \OUT_opcode~104_combout\ : std_logic;
SIGNAL \OUT_opcode~105_combout\ : std_logic;
SIGNAL \OUT_opcode~106_combout\ : std_logic;
SIGNAL \OUT_opcode~107_combout\ : std_logic;
SIGNAL \OUT_opcode~99_combout\ : std_logic;
SIGNAL \OUT_opcode~100_combout\ : std_logic;
SIGNAL \OUT_opcode~101_combout\ : std_logic;
SIGNAL \OUT_opcode~97_combout\ : std_logic;
SIGNAL \OUT_opcode~98_combout\ : std_logic;
SIGNAL \OUT_opcode~102_combout\ : std_logic;
SIGNAL \OUT_opcode~103_combout\ : std_logic;
SIGNAL \OUT_opcode~108_combout\ : std_logic;
SIGNAL \OUT_opcode~109_combout\ : std_logic;
SIGNAL \OUT_opcode~112_combout\ : std_logic;
SIGNAL \OUT_opcode~113_combout\ : std_logic;
SIGNAL \OUT_opcode~110_combout\ : std_logic;
SIGNAL \OUT_opcode~145_combout\ : std_logic;
SIGNAL \OUT_opcode~111_combout\ : std_logic;
SIGNAL \OUT_opcode~114_combout\ : std_logic;
SIGNAL \OUT_opcode~115_combout\ : std_logic;
SIGNAL \OUT_opcode[1]~reg0_q\ : std_logic;
SIGNAL \OUT_opcode~116_combout\ : std_logic;
SIGNAL \OUT_opcode~117_combout\ : std_logic;
SIGNAL \OUT_opcode~118_combout\ : std_logic;
SIGNAL \OUT_opcode~119_combout\ : std_logic;
SIGNAL \OUT_opcode~129_combout\ : std_logic;
SIGNAL \OUT_opcode~127_combout\ : std_logic;
SIGNAL \OUT_opcode~128_combout\ : std_logic;
SIGNAL \OUT_opcode~130_combout\ : std_logic;
SIGNAL \OUT_opcode~125_combout\ : std_logic;
SIGNAL \OUT_opcode~120_combout\ : std_logic;
SIGNAL \OUT_opcode~121_combout\ : std_logic;
SIGNAL \OUT_opcode~122_combout\ : std_logic;
SIGNAL \OUT_opcode~123_combout\ : std_logic;
SIGNAL \OUT_opcode~124_combout\ : std_logic;
SIGNAL \OUT_opcode~126_combout\ : std_logic;
SIGNAL \OUT_opcode~131_combout\ : std_logic;
SIGNAL \OUT_opcode[2]~reg0_q\ : std_logic;
SIGNAL \OUT_opcode~135_combout\ : std_logic;
SIGNAL \OUT_opcode~136_combout\ : std_logic;
SIGNAL \OUT_opcode~132_combout\ : std_logic;
SIGNAL \OUT_opcode~133_combout\ : std_logic;
SIGNAL \OUT_opcode~134_combout\ : std_logic;
SIGNAL \OUT_opcode~137_combout\ : std_logic;
SIGNAL \OUT_opcode[3]~reg0_q\ : std_logic;
SIGNAL \OUT_opcode~141_combout\ : std_logic;
SIGNAL \OUT_opcode~138_combout\ : std_logic;
SIGNAL \OUT_opcode~139_combout\ : std_logic;
SIGNAL \OUT_opcode~140_combout\ : std_logic;
SIGNAL \OUT_opcode~142_combout\ : std_logic;
SIGNAL \OUT_opcode[4]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[0]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[0]~1_combout\ : std_logic;
SIGNAL \OUT_operand[7]~2_combout\ : std_logic;
SIGNAL \OUT_operand[7]~3_combout\ : std_logic;
SIGNAL \OUT_operand[0]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[1]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[1]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[2]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[2]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[3]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[3]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[4]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[4]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[5]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[5]~reg0_q\ : std_logic;
SIGNAL \OUT_operand[6]~reg0feeder_combout\ : std_logic;
SIGNAL \OUT_operand[6]~reg0_q\ : std_logic;
SIGNAL \OUT_operand~4_combout\ : std_logic;
SIGNAL \OUT_operand[7]~reg0_q\ : std_logic;
SIGNAL \OUT_operand~5_combout\ : std_logic;
SIGNAL \OUT_operand~6_combout\ : std_logic;
SIGNAL \OUT_operand[8]~reg0_q\ : std_logic;
SIGNAL \OUT_operand~7_combout\ : std_logic;
SIGNAL \OUT_operand[9]~reg0_q\ : std_logic;
SIGNAL \sel~1_combout\ : std_logic;
SIGNAL \sel[0]~reg0_q\ : std_logic;
SIGNAL \sel[1]~2_combout\ : std_logic;
SIGNAL \sel[1]~3_combout\ : std_logic;
SIGNAL \sel[1]~4_combout\ : std_logic;
SIGNAL \sel[1]~5_combout\ : std_logic;
SIGNAL \sel[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_IN_MEMORY[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_MEMORY[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_MEMORY[9]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_en <= en;
ww_IN_MEMORY <= IN_MEMORY;
OUT_opcode <= ww_OUT_opcode;
OUT_operand <= ww_OUT_operand;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_IN_MEMORY[7]~input_o\ <= NOT \IN_MEMORY[7]~input_o\;
\ALT_INV_IN_MEMORY[13]~input_o\ <= NOT \IN_MEMORY[13]~input_o\;
\ALT_INV_IN_MEMORY[9]~input_o\ <= NOT \IN_MEMORY[9]~input_o\;

-- Location: IOOBUF_X0_Y8_N16
\OUT_opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_opcode[0]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_opcode[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\OUT_opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_opcode[1]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_opcode[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\OUT_opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_opcode[2]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_opcode[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\OUT_opcode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_opcode[3]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_opcode[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\OUT_opcode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_opcode[4]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_opcode[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\OUT_operand[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[0]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\OUT_operand[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[1]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\OUT_operand[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[2]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\OUT_operand[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[3]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\OUT_operand[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[4]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\OUT_operand[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[5]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\OUT_operand[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[6]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\OUT_operand[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[7]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\OUT_operand[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[8]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\OUT_operand[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_operand[9]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_operand[9]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

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

-- Location: IOIBUF_X16_Y0_N22
\IN_MEMORY[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(10),
	o => \IN_MEMORY[10]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\IN_MEMORY[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(5),
	o => \IN_MEMORY[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\IN_MEMORY[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(8),
	o => \IN_MEMORY[8]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\IN_MEMORY[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(7),
	o => \IN_MEMORY[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\IN_MEMORY[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(6),
	o => \IN_MEMORY[6]~input_o\);

-- Location: LCCOMB_X22_Y6_N2
\Equal30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~1_combout\ = (!\IN_MEMORY[5]~input_o\ & (!\IN_MEMORY[8]~input_o\ & (!\IN_MEMORY[7]~input_o\ & !\IN_MEMORY[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[5]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \IN_MEMORY[6]~input_o\,
	combout => \Equal30~1_combout\);

-- Location: IOIBUF_X23_Y0_N8
\IN_MEMORY[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(12),
	o => \IN_MEMORY[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\IN_MEMORY[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(11),
	o => \IN_MEMORY[11]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\IN_MEMORY[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(13),
	o => \IN_MEMORY[13]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\IN_MEMORY[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(9),
	o => \IN_MEMORY[9]~input_o\);

-- Location: LCCOMB_X22_Y6_N4
\OUT_operand[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[0]~0_combout\ = (!\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[11]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[11]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[9]~input_o\,
	combout => \OUT_operand[0]~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\IN_MEMORY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(1),
	o => \IN_MEMORY[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\IN_MEMORY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(3),
	o => \IN_MEMORY[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\IN_MEMORY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(2),
	o => \IN_MEMORY[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\IN_MEMORY[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(4),
	o => \IN_MEMORY[4]~input_o\);

-- Location: LCCOMB_X22_Y4_N12
\Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (!\IN_MEMORY[1]~input_o\ & (\IN_MEMORY[3]~input_o\ & (!\IN_MEMORY[2]~input_o\ & !\IN_MEMORY[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[1]~input_o\,
	datab => \IN_MEMORY[3]~input_o\,
	datac => \IN_MEMORY[2]~input_o\,
	datad => \IN_MEMORY[4]~input_o\,
	combout => \Equal30~0_combout\);

-- Location: LCCOMB_X22_Y6_N28
\Equal30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~2_combout\ = (!\IN_MEMORY[10]~input_o\ & (\Equal30~1_combout\ & (\OUT_operand[0]~0_combout\ & \Equal30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~1_combout\,
	datac => \OUT_operand[0]~0_combout\,
	datad => \Equal30~0_combout\,
	combout => \Equal30~2_combout\);

-- Location: LCCOMB_X22_Y6_N10
\OUT_opcode~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~62_combout\ = (!\Equal30~2_combout\ & (!\IN_MEMORY[10]~input_o\ & !\IN_MEMORY[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[10]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~62_combout\);

-- Location: IOIBUF_X13_Y0_N15
\IN_MEMORY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_MEMORY(0),
	o => \IN_MEMORY[0]~input_o\);

-- Location: LCCOMB_X21_Y6_N18
\OUT_opcode~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~61_combout\ = (!\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (\IN_MEMORY[0]~input_o\ & !\IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~61_combout\);

-- Location: LCCOMB_X22_Y7_N2
\OUT_opcode~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~41_combout\ = (!\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~41_combout\);

-- Location: LCCOMB_X18_Y8_N22
\OUT_opcode~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~90_combout\ = ((!\OUT_opcode~62_combout\ & !\OUT_opcode~61_combout\)) # (!\OUT_opcode~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~62_combout\,
	datac => \OUT_opcode~61_combout\,
	datad => \OUT_opcode~41_combout\,
	combout => \OUT_opcode~90_combout\);

-- Location: LCCOMB_X21_Y6_N0
\OUT_opcode~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~44_combout\ = (!\Equal30~2_combout\ & (\IN_MEMORY[10]~input_o\ & !\IN_MEMORY[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[10]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~44_combout\);

-- Location: LCCOMB_X21_Y6_N10
\OUT_opcode~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~45_combout\ = (\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (\IN_MEMORY[0]~input_o\ & !\IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~45_combout\);

-- Location: LCCOMB_X22_Y7_N20
\OUT_opcode~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~58_combout\ = (!\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~58_combout\);

-- Location: LCCOMB_X18_Y8_N20
\OUT_opcode~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~92_combout\ = (\OUT_opcode~58_combout\ & ((\OUT_opcode~44_combout\) # (\OUT_opcode~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~44_combout\,
	datac => \OUT_opcode~45_combout\,
	datad => \OUT_opcode~58_combout\,
	combout => \OUT_opcode~92_combout\);

-- Location: LCCOMB_X22_Y7_N28
\OUT_opcode~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~66_combout\ = (\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~66_combout\);

-- Location: LCCOMB_X22_Y7_N30
\OUT_opcode~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~67_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~67_combout\);

-- Location: LCCOMB_X22_Y7_N24
\OUT_opcode~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~68_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~68_combout\);

-- Location: LCCOMB_X21_Y7_N8
\OUT_opcode~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~69_combout\ = (\OUT_opcode~66_combout\) # ((\OUT_opcode~67_combout\) # (\OUT_opcode~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~66_combout\,
	datac => \OUT_opcode~67_combout\,
	datad => \OUT_opcode~68_combout\,
	combout => \OUT_opcode~69_combout\);

-- Location: LCCOMB_X21_Y6_N4
\OUT_opcode~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~26_combout\ = (!\Equal30~2_combout\ & (\IN_MEMORY[10]~input_o\ & \IN_MEMORY[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[10]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~26_combout\);

-- Location: LCCOMB_X21_Y6_N26
\OUT_opcode~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~29_combout\ = (\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (\IN_MEMORY[0]~input_o\ & \IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~29_combout\);

-- Location: LCCOMB_X22_Y7_N22
\OUT_opcode~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~65_combout\ = (\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~65_combout\);

-- Location: LCCOMB_X19_Y7_N16
\OUT_opcode~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~89_combout\ = (\OUT_opcode~69_combout\ & (!\OUT_opcode~26_combout\ & (!\OUT_opcode~29_combout\))) # (!\OUT_opcode~69_combout\ & (((!\OUT_opcode~26_combout\ & !\OUT_opcode~29_combout\)) # (!\OUT_opcode~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~69_combout\,
	datab => \OUT_opcode~26_combout\,
	datac => \OUT_opcode~29_combout\,
	datad => \OUT_opcode~65_combout\,
	combout => \OUT_opcode~89_combout\);

-- Location: LCCOMB_X19_Y7_N26
\OUT_opcode~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~91_combout\ = (\OUT_opcode~45_combout\ & (!\OUT_opcode~65_combout\ & ((!\OUT_opcode~69_combout\)))) # (!\OUT_opcode~45_combout\ & (((!\OUT_opcode~65_combout\ & !\OUT_opcode~69_combout\)) # (!\OUT_opcode~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~45_combout\,
	datab => \OUT_opcode~65_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~69_combout\,
	combout => \OUT_opcode~91_combout\);

-- Location: LCCOMB_X18_Y8_N10
\OUT_opcode~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~93_combout\ = (\OUT_opcode~90_combout\ & (!\OUT_opcode~92_combout\ & (\OUT_opcode~89_combout\ & \OUT_opcode~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~90_combout\,
	datab => \OUT_opcode~92_combout\,
	datac => \OUT_opcode~89_combout\,
	datad => \OUT_opcode~91_combout\,
	combout => \OUT_opcode~93_combout\);

-- Location: LCCOMB_X21_Y6_N20
\OUT_opcode~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~35_combout\ = (\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (!\IN_MEMORY[0]~input_o\ & !\IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~35_combout\);

-- Location: LCCOMB_X19_Y7_N12
\OUT_opcode~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~80_combout\ = (\OUT_opcode~41_combout\ & !\IN_MEMORY[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~41_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~80_combout\);

-- Location: LCCOMB_X19_Y7_N14
\OUT_opcode~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~81_combout\ = ((!\OUT_opcode~45_combout\ & (!\OUT_opcode~35_combout\ & !\OUT_opcode~44_combout\))) # (!\OUT_opcode~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~45_combout\,
	datab => \OUT_opcode~35_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~80_combout\,
	combout => \OUT_opcode~81_combout\);

-- Location: LCCOMB_X21_Y6_N8
\OUT_opcode~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~48_combout\ = (!\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (!\IN_MEMORY[0]~input_o\ & \IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~48_combout\);

-- Location: LCCOMB_X21_Y6_N30
\OUT_opcode~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~40_combout\ = (\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (!\IN_MEMORY[0]~input_o\ & \IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~40_combout\);

-- Location: LCCOMB_X22_Y7_N18
\OUT_opcode~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~28_combout\ = (!\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~28_combout\);

-- Location: LCCOMB_X21_Y7_N20
\OUT_opcode~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~86_combout\ = ((!\OUT_opcode~48_combout\ & !\OUT_opcode~40_combout\)) # (!\OUT_opcode~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~40_combout\,
	datad => \OUT_opcode~28_combout\,
	combout => \OUT_opcode~86_combout\);

-- Location: LCCOMB_X21_Y6_N14
\OUT_opcode~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~31_combout\ = (!\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (\IN_MEMORY[0]~input_o\ & \IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~31_combout\);

-- Location: LCCOMB_X19_Y7_N20
\OUT_opcode~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~87_combout\ = (\OUT_opcode~86_combout\ & ((!\OUT_opcode~31_combout\) # (!\OUT_opcode~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~58_combout\,
	datab => \OUT_opcode~86_combout\,
	datac => \OUT_opcode~31_combout\,
	combout => \OUT_opcode~87_combout\);

-- Location: LCCOMB_X19_Y7_N28
\OUT_opcode~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~82_combout\ = (((!\OUT_opcode~44_combout\ & !\OUT_opcode~35_combout\)) # (!\IN_MEMORY[7]~input_o\)) # (!\OUT_opcode~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~44_combout\,
	datab => \OUT_opcode~41_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~35_combout\,
	combout => \OUT_opcode~82_combout\);

-- Location: LCCOMB_X19_Y7_N22
\OUT_opcode~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~83_combout\ = (\OUT_opcode~82_combout\ & (((!\OUT_opcode~45_combout\) # (!\OUT_opcode~41_combout\)) # (!\IN_MEMORY[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[7]~input_o\,
	datab => \OUT_opcode~82_combout\,
	datac => \OUT_opcode~41_combout\,
	datad => \OUT_opcode~45_combout\,
	combout => \OUT_opcode~83_combout\);

-- Location: LCCOMB_X22_Y7_N4
\OUT_opcode~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~144_combout\ = (!\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[13]~input_o\ & ((!\IN_MEMORY[8]~input_o\) # (!\IN_MEMORY[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~144_combout\);

-- Location: LCCOMB_X21_Y6_N16
\OUT_opcode~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~30_combout\ = (!\Equal30~2_combout\ & (!\IN_MEMORY[10]~input_o\ & \IN_MEMORY[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[10]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~30_combout\);

-- Location: LCCOMB_X22_Y8_N8
\OUT_opcode~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~84_combout\ = (\OUT_opcode~58_combout\ & ((\OUT_opcode~48_combout\) # (\OUT_opcode~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~30_combout\,
	datad => \OUT_opcode~58_combout\,
	combout => \OUT_opcode~84_combout\);

-- Location: LCCOMB_X21_Y7_N26
\OUT_opcode~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~85_combout\ = (!\OUT_opcode~84_combout\ & (((!\OUT_opcode~48_combout\ & !\OUT_opcode~40_combout\)) # (!\OUT_opcode~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~144_combout\,
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~40_combout\,
	datad => \OUT_opcode~84_combout\,
	combout => \OUT_opcode~85_combout\);

-- Location: LCCOMB_X19_Y7_N18
\OUT_opcode~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~88_combout\ = (\OUT_opcode~81_combout\ & (\OUT_opcode~87_combout\ & (\OUT_opcode~83_combout\ & \OUT_opcode~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~81_combout\,
	datab => \OUT_opcode~87_combout\,
	datac => \OUT_opcode~83_combout\,
	datad => \OUT_opcode~85_combout\,
	combout => \OUT_opcode~88_combout\);

-- Location: LCCOMB_X22_Y8_N30
\OUT_opcode~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~37_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[8]~input_o\ & (!\IN_MEMORY[9]~input_o\ & \IN_MEMORY[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[9]~input_o\,
	datad => \IN_MEMORY[13]~input_o\,
	combout => \OUT_opcode~37_combout\);

-- Location: LCCOMB_X22_Y8_N4
\OUT_opcode~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~38_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[8]~input_o\ & (\IN_MEMORY[9]~input_o\ & \IN_MEMORY[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[9]~input_o\,
	datad => \IN_MEMORY[13]~input_o\,
	combout => \OUT_opcode~38_combout\);

-- Location: LCCOMB_X22_Y8_N24
\OUT_opcode~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~36_combout\ = (\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[8]~input_o\ & (!\IN_MEMORY[9]~input_o\ & \IN_MEMORY[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[9]~input_o\,
	datad => \IN_MEMORY[13]~input_o\,
	combout => \OUT_opcode~36_combout\);

-- Location: LCCOMB_X22_Y8_N2
\OUT_opcode~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~39_combout\ = (\OUT_opcode~37_combout\) # ((\OUT_opcode~38_combout\) # (\OUT_opcode~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~37_combout\,
	datac => \OUT_opcode~38_combout\,
	datad => \OUT_opcode~36_combout\,
	combout => \OUT_opcode~39_combout\);

-- Location: LCCOMB_X21_Y8_N20
\OUT_opcode~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~42_combout\ = (\OUT_opcode~41_combout\ & ((\OUT_opcode~29_combout\) # ((\OUT_opcode~26_combout\) # (\OUT_opcode~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~29_combout\,
	datab => \OUT_opcode~41_combout\,
	datac => \OUT_opcode~26_combout\,
	datad => \OUT_opcode~40_combout\,
	combout => \OUT_opcode~42_combout\);

-- Location: LCCOMB_X22_Y7_N0
\OUT_opcode~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~34_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~34_combout\);

-- Location: LCCOMB_X21_Y8_N22
\OUT_opcode~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~43_combout\ = (!\OUT_opcode~42_combout\ & (((!\OUT_opcode~39_combout\ & !\OUT_opcode~34_combout\)) # (!\OUT_opcode~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~39_combout\,
	datab => \OUT_opcode~42_combout\,
	datac => \OUT_opcode~34_combout\,
	datad => \OUT_opcode~35_combout\,
	combout => \OUT_opcode~43_combout\);

-- Location: LCCOMB_X22_Y8_N14
\OUT_opcode~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~56_combout\ = (\OUT_opcode~26_combout\ & (((\OUT_opcode~38_combout\) # (\OUT_opcode~34_combout\)))) # (!\OUT_opcode~26_combout\ & (\OUT_opcode~29_combout\ & ((\OUT_opcode~38_combout\) # (\OUT_opcode~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~26_combout\,
	datab => \OUT_opcode~29_combout\,
	datac => \OUT_opcode~38_combout\,
	datad => \OUT_opcode~34_combout\,
	combout => \OUT_opcode~56_combout\);

-- Location: LCCOMB_X22_Y6_N26
\sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel~0_combout\ = (!\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[8]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \sel~0_combout\);

-- Location: LCCOMB_X22_Y6_N16
\OUT_opcode~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~52_combout\ = (\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[8]~input_o\ & (\IN_MEMORY[13]~input_o\ & \IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~52_combout\);

-- Location: LCCOMB_X22_Y6_N18
\OUT_opcode~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~51_combout\ = (!\IN_MEMORY[10]~input_o\ & (\IN_MEMORY[8]~input_o\ $ (!\IN_MEMORY[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datac => \IN_MEMORY[8]~input_o\,
	datad => \IN_MEMORY[9]~input_o\,
	combout => \OUT_opcode~51_combout\);

-- Location: LCCOMB_X22_Y6_N24
\OUT_opcode~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~53_combout\ = (\OUT_opcode~51_combout\ & ((\OUT_opcode~52_combout\) # ((\sel~0_combout\ & !\IN_MEMORY[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~0_combout\,
	datab => \OUT_opcode~52_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~51_combout\,
	combout => \OUT_opcode~53_combout\);

-- Location: LCCOMB_X21_Y6_N2
\OUT_opcode~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~54_combout\ = (\OUT_opcode~53_combout\ & ((\IN_MEMORY[0]~input_o\) # (!\Equal30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \OUT_opcode~53_combout\,
	combout => \OUT_opcode~54_combout\);

-- Location: LCCOMB_X22_Y8_N20
\OUT_opcode~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~46_combout\ = (\OUT_opcode~34_combout\) # ((\OUT_opcode~38_combout\) # (\OUT_opcode~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~34_combout\,
	datac => \OUT_opcode~38_combout\,
	datad => \OUT_opcode~36_combout\,
	combout => \OUT_opcode~46_combout\);

-- Location: LCCOMB_X21_Y8_N28
\OUT_opcode~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~47_combout\ = (\OUT_opcode~46_combout\ & (!\OUT_opcode~44_combout\ & ((!\OUT_opcode~45_combout\)))) # (!\OUT_opcode~46_combout\ & (((!\OUT_opcode~44_combout\ & !\OUT_opcode~45_combout\)) # (!\OUT_opcode~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~46_combout\,
	datab => \OUT_opcode~44_combout\,
	datac => \OUT_opcode~37_combout\,
	datad => \OUT_opcode~45_combout\,
	combout => \OUT_opcode~47_combout\);

-- Location: LCCOMB_X22_Y8_N10
\OUT_opcode~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~49_combout\ = (\OUT_opcode~37_combout\ & ((\OUT_opcode~30_combout\) # ((\OUT_opcode~48_combout\) # (\OUT_opcode~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~30_combout\,
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~37_combout\,
	datad => \OUT_opcode~31_combout\,
	combout => \OUT_opcode~49_combout\);

-- Location: LCCOMB_X22_Y8_N16
\OUT_opcode~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~50_combout\ = (!\OUT_opcode~49_combout\ & (((!\OUT_opcode~38_combout\ & !\OUT_opcode~34_combout\)) # (!\OUT_opcode~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~49_combout\,
	datab => \OUT_opcode~40_combout\,
	datac => \OUT_opcode~38_combout\,
	datad => \OUT_opcode~34_combout\,
	combout => \OUT_opcode~50_combout\);

-- Location: LCCOMB_X21_Y8_N26
\OUT_opcode~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~55_combout\ = (!\OUT_opcode~54_combout\ & (\OUT_opcode~47_combout\ & \OUT_opcode~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~54_combout\,
	datab => \OUT_opcode~47_combout\,
	datad => \OUT_opcode~50_combout\,
	combout => \OUT_opcode~55_combout\);

-- Location: LCCOMB_X22_Y7_N14
\OUT_opcode~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~143_combout\ = (!\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[13]~input_o\ & ((\IN_MEMORY[9]~input_o\) # (!\IN_MEMORY[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~143_combout\);

-- Location: LCCOMB_X22_Y8_N28
\OUT_opcode~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~32_combout\ = (\OUT_opcode~29_combout\) # ((\OUT_opcode~30_combout\) # (\OUT_opcode~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~29_combout\,
	datac => \OUT_opcode~30_combout\,
	datad => \OUT_opcode~31_combout\,
	combout => \OUT_opcode~32_combout\);

-- Location: LCCOMB_X22_Y7_N16
\OUT_opcode~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~27_combout\ = (!\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[9]~input_o\ & (\IN_MEMORY[13]~input_o\ & \IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~27_combout\);

-- Location: LCCOMB_X22_Y8_N6
\OUT_opcode~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~33_combout\ = (\OUT_opcode~143_combout\ & (!\OUT_opcode~32_combout\ & ((!\OUT_opcode~26_combout\)))) # (!\OUT_opcode~143_combout\ & (((!\OUT_opcode~32_combout\ & !\OUT_opcode~26_combout\)) # (!\OUT_opcode~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~143_combout\,
	datab => \OUT_opcode~32_combout\,
	datac => \OUT_opcode~27_combout\,
	datad => \OUT_opcode~26_combout\,
	combout => \OUT_opcode~33_combout\);

-- Location: LCCOMB_X21_Y8_N12
\OUT_opcode~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~57_combout\ = (\OUT_opcode~43_combout\ & (!\OUT_opcode~56_combout\ & (\OUT_opcode~55_combout\ & \OUT_opcode~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~43_combout\,
	datab => \OUT_opcode~56_combout\,
	datac => \OUT_opcode~55_combout\,
	datad => \OUT_opcode~33_combout\,
	combout => \OUT_opcode~57_combout\);

-- Location: LCCOMB_X22_Y7_N8
\OUT_opcode~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~75_combout\ = (!\IN_MEMORY[12]~input_o\ & (!\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~75_combout\);

-- Location: LCCOMB_X19_Y8_N18
\OUT_opcode~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~76_combout\ = (\IN_MEMORY[7]~input_o\ & \OUT_opcode~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~75_combout\,
	combout => \OUT_opcode~76_combout\);

-- Location: LCCOMB_X21_Y6_N28
\OUT_opcode~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~59_combout\ = (!\IN_MEMORY[10]~input_o\ & (\Equal30~2_combout\ & (!\IN_MEMORY[0]~input_o\ & !\IN_MEMORY[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datab => \Equal30~2_combout\,
	datac => \IN_MEMORY[0]~input_o\,
	datad => \IN_MEMORY[11]~input_o\,
	combout => \OUT_opcode~59_combout\);

-- Location: LCCOMB_X19_Y8_N8
\OUT_opcode~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~77_combout\ = (\OUT_opcode~61_combout\) # ((\OUT_opcode~62_combout\) # (\OUT_opcode~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~61_combout\,
	datac => \OUT_opcode~62_combout\,
	datad => \OUT_opcode~59_combout\,
	combout => \OUT_opcode~77_combout\);

-- Location: LCCOMB_X19_Y8_N22
\OUT_opcode~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~78_combout\ = (\OUT_opcode~58_combout\ & ((\OUT_opcode~35_combout\) # ((\OUT_opcode~76_combout\ & \OUT_opcode~77_combout\)))) # (!\OUT_opcode~58_combout\ & (\OUT_opcode~76_combout\ & (\OUT_opcode~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~58_combout\,
	datab => \OUT_opcode~76_combout\,
	datac => \OUT_opcode~77_combout\,
	datad => \OUT_opcode~35_combout\,
	combout => \OUT_opcode~78_combout\);

-- Location: LCCOMB_X21_Y7_N22
\OUT_opcode~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~73_combout\ = (\OUT_opcode~41_combout\ & ((\OUT_opcode~48_combout\) # ((\OUT_opcode~31_combout\) # (\OUT_opcode~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~41_combout\,
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~31_combout\,
	datad => \OUT_opcode~30_combout\,
	combout => \OUT_opcode~73_combout\);

-- Location: LCCOMB_X21_Y7_N28
\OUT_opcode~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~72_combout\ = (\OUT_opcode~66_combout\) # ((\OUT_opcode~65_combout\) # (\OUT_opcode~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~66_combout\,
	datac => \OUT_opcode~65_combout\,
	datad => \OUT_opcode~68_combout\,
	combout => \OUT_opcode~72_combout\);

-- Location: LCCOMB_X21_Y7_N0
\OUT_opcode~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~74_combout\ = (!\OUT_opcode~73_combout\ & (((!\OUT_opcode~72_combout\ & !\OUT_opcode~67_combout\)) # (!\OUT_opcode~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~73_combout\,
	datab => \OUT_opcode~72_combout\,
	datac => \OUT_opcode~67_combout\,
	datad => \OUT_opcode~35_combout\,
	combout => \OUT_opcode~74_combout\);

-- Location: LCCOMB_X19_Y8_N6
\OUT_opcode~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~63_combout\ = (\OUT_opcode~58_combout\ & \IN_MEMORY[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~58_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~63_combout\);

-- Location: LCCOMB_X19_Y8_N12
\OUT_opcode~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~60_combout\ = ((!\OUT_opcode~41_combout\ & ((!\IN_MEMORY[7]~input_o\) # (!\OUT_opcode~58_combout\)))) # (!\OUT_opcode~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~58_combout\,
	datab => \OUT_opcode~59_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~41_combout\,
	combout => \OUT_opcode~60_combout\);

-- Location: LCCOMB_X19_Y8_N0
\OUT_opcode~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~64_combout\ = (\OUT_opcode~60_combout\ & (((!\OUT_opcode~62_combout\ & !\OUT_opcode~61_combout\)) # (!\OUT_opcode~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~63_combout\,
	datab => \OUT_opcode~62_combout\,
	datac => \OUT_opcode~61_combout\,
	datad => \OUT_opcode~60_combout\,
	combout => \OUT_opcode~64_combout\);

-- Location: LCCOMB_X21_Y7_N18
\OUT_opcode~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~70_combout\ = (\OUT_opcode~40_combout\ & ((\OUT_opcode~69_combout\) # ((\OUT_opcode~65_combout\)))) # (!\OUT_opcode~40_combout\ & (((\OUT_opcode~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~40_combout\,
	datab => \OUT_opcode~69_combout\,
	datac => \OUT_opcode~65_combout\,
	datad => \OUT_opcode~29_combout\,
	combout => \OUT_opcode~70_combout\);

-- Location: LCCOMB_X22_Y7_N26
\OUT_opcode~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~71_combout\ = (\OUT_opcode~40_combout\ & (((!\OUT_opcode~58_combout\ & !\OUT_opcode~70_combout\)))) # (!\OUT_opcode~40_combout\ & (((!\OUT_opcode~26_combout\ & !\OUT_opcode~70_combout\)) # (!\OUT_opcode~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~26_combout\,
	datab => \OUT_opcode~40_combout\,
	datac => \OUT_opcode~58_combout\,
	datad => \OUT_opcode~70_combout\,
	combout => \OUT_opcode~71_combout\);

-- Location: LCCOMB_X21_Y8_N6
\OUT_opcode~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~79_combout\ = (!\OUT_opcode~78_combout\ & (\OUT_opcode~74_combout\ & (\OUT_opcode~64_combout\ & \OUT_opcode~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~78_combout\,
	datab => \OUT_opcode~74_combout\,
	datac => \OUT_opcode~64_combout\,
	datad => \OUT_opcode~71_combout\,
	combout => \OUT_opcode~79_combout\);

-- Location: LCCOMB_X18_Y8_N12
\OUT_opcode~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~94_combout\ = (\OUT_opcode~93_combout\ & (\OUT_opcode~88_combout\ & (\OUT_opcode~57_combout\ & \OUT_opcode~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~93_combout\,
	datab => \OUT_opcode~88_combout\,
	datac => \OUT_opcode~57_combout\,
	datad => \OUT_opcode~79_combout\,
	combout => \OUT_opcode~94_combout\);

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

-- Location: IOIBUF_X30_Y0_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X22_Y6_N0
\OUT_opcode[0]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode[0]~95_combout\ = (\en~input_o\ & ((\IN_MEMORY[7]~input_o\) # ((!\OUT_opcode~62_combout\) # (!\OUT_opcode~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \IN_MEMORY[7]~input_o\,
	datac => \OUT_opcode~75_combout\,
	datad => \OUT_opcode~62_combout\,
	combout => \OUT_opcode[0]~95_combout\);

-- Location: LCCOMB_X22_Y6_N30
\OUT_opcode[0]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode[0]~96_combout\ = (\OUT_opcode[0]~95_combout\ & ((!\OUT_opcode~38_combout\) # (!\OUT_opcode~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode[0]~95_combout\,
	datac => \OUT_opcode~30_combout\,
	datad => \OUT_opcode~38_combout\,
	combout => \OUT_opcode[0]~96_combout\);

-- Location: FF_X18_Y8_N13
\OUT_opcode[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_opcode~94_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_opcode[0]~reg0_q\);

-- Location: LCCOMB_X21_Y7_N6
\OUT_opcode~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~104_combout\ = (\OUT_opcode~48_combout\) # ((\OUT_opcode~31_combout\) # (\OUT_opcode~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~31_combout\,
	datad => \OUT_opcode~30_combout\,
	combout => \OUT_opcode~104_combout\);

-- Location: LCCOMB_X21_Y8_N8
\OUT_opcode~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~105_combout\ = (\OUT_opcode~36_combout\ & (!\OUT_opcode~104_combout\ & ((!\OUT_opcode~40_combout\)))) # (!\OUT_opcode~36_combout\ & (((!\OUT_opcode~40_combout\) # (!\OUT_opcode~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~104_combout\,
	datab => \OUT_opcode~36_combout\,
	datac => \OUT_opcode~37_combout\,
	datad => \OUT_opcode~40_combout\,
	combout => \OUT_opcode~105_combout\);

-- Location: LCCOMB_X19_Y8_N24
\OUT_opcode~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~106_combout\ = (\OUT_opcode~43_combout\ & (\OUT_opcode~105_combout\ & ((!\OUT_opcode~75_combout\) # (!\OUT_opcode~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~43_combout\,
	datab => \OUT_opcode~35_combout\,
	datac => \OUT_opcode~105_combout\,
	datad => \OUT_opcode~75_combout\,
	combout => \OUT_opcode~106_combout\);

-- Location: LCCOMB_X19_Y8_N10
\OUT_opcode~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~107_combout\ = (\OUT_opcode~106_combout\ & (((\IN_MEMORY[7]~input_o\) # (!\OUT_opcode~77_combout\)) # (!\OUT_opcode~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~58_combout\,
	datab => \OUT_opcode~106_combout\,
	datac => \OUT_opcode~77_combout\,
	datad => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~107_combout\);

-- Location: LCCOMB_X21_Y7_N10
\OUT_opcode~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~99_combout\ = (\OUT_opcode~75_combout\ & ((\OUT_opcode~26_combout\) # ((\OUT_opcode~40_combout\) # (\OUT_opcode~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~26_combout\,
	datab => \OUT_opcode~75_combout\,
	datac => \OUT_opcode~40_combout\,
	datad => \OUT_opcode~29_combout\,
	combout => \OUT_opcode~99_combout\);

-- Location: LCCOMB_X21_Y7_N4
\OUT_opcode~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~100_combout\ = (!\OUT_opcode~99_combout\ & (((!\OUT_opcode~67_combout\ & !\OUT_opcode~72_combout\)) # (!\OUT_opcode~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~99_combout\,
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~67_combout\,
	datad => \OUT_opcode~72_combout\,
	combout => \OUT_opcode~100_combout\);

-- Location: LCCOMB_X22_Y7_N10
\OUT_opcode~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~101_combout\ = (\OUT_opcode~31_combout\ & (((!\OUT_opcode~65_combout\ & !\OUT_opcode~69_combout\)))) # (!\OUT_opcode~31_combout\ & (((!\OUT_opcode~65_combout\ & !\OUT_opcode~69_combout\)) # (!\OUT_opcode~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~31_combout\,
	datab => \OUT_opcode~30_combout\,
	datac => \OUT_opcode~65_combout\,
	datad => \OUT_opcode~69_combout\,
	combout => \OUT_opcode~101_combout\);

-- Location: LCCOMB_X19_Y7_N0
\OUT_opcode~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~97_combout\ = (\OUT_opcode~45_combout\) # ((\OUT_opcode~44_combout\) # (\OUT_opcode~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~45_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~62_combout\,
	combout => \OUT_opcode~97_combout\);

-- Location: LCCOMB_X22_Y8_N22
\OUT_opcode~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~98_combout\ = (\OUT_opcode~61_combout\ & (!\OUT_opcode~27_combout\ & ((!\OUT_opcode~143_combout\)))) # (!\OUT_opcode~61_combout\ & (((!\OUT_opcode~27_combout\ & !\OUT_opcode~143_combout\)) # (!\OUT_opcode~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~61_combout\,
	datab => \OUT_opcode~27_combout\,
	datac => \OUT_opcode~97_combout\,
	datad => \OUT_opcode~143_combout\,
	combout => \OUT_opcode~98_combout\);

-- Location: LCCOMB_X21_Y8_N16
\OUT_opcode~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~102_combout\ = (\OUT_opcode~91_combout\ & (\OUT_opcode~100_combout\ & (\OUT_opcode~101_combout\ & \OUT_opcode~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~91_combout\,
	datab => \OUT_opcode~100_combout\,
	datac => \OUT_opcode~101_combout\,
	datad => \OUT_opcode~98_combout\,
	combout => \OUT_opcode~102_combout\);

-- Location: LCCOMB_X21_Y8_N2
\OUT_opcode~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~103_combout\ = (!\OUT_opcode~54_combout\ & (\OUT_opcode~74_combout\ & \OUT_opcode~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~54_combout\,
	datab => \OUT_opcode~74_combout\,
	datad => \OUT_opcode~102_combout\,
	combout => \OUT_opcode~103_combout\);

-- Location: LCCOMB_X19_Y7_N30
\OUT_opcode~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~108_combout\ = (\IN_MEMORY[7]~input_o\) # (((!\OUT_opcode~44_combout\ & !\OUT_opcode~45_combout\)) # (!\OUT_opcode~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[7]~input_o\,
	datab => \OUT_opcode~75_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~45_combout\,
	combout => \OUT_opcode~108_combout\);

-- Location: LCCOMB_X19_Y7_N24
\OUT_opcode~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~109_combout\ = (\OUT_opcode~83_combout\ & (((!\OUT_opcode~44_combout\ & !\OUT_opcode~45_combout\)) # (!\OUT_opcode~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~83_combout\,
	datab => \OUT_opcode~76_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~45_combout\,
	combout => \OUT_opcode~109_combout\);

-- Location: LCCOMB_X22_Y8_N0
\OUT_opcode~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~112_combout\ = (\OUT_opcode~26_combout\ & (((!\OUT_opcode~37_combout\ & !\OUT_opcode~36_combout\)))) # (!\OUT_opcode~26_combout\ & (((!\OUT_opcode~37_combout\ & !\OUT_opcode~36_combout\)) # (!\OUT_opcode~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~26_combout\,
	datab => \OUT_opcode~29_combout\,
	datac => \OUT_opcode~37_combout\,
	datad => \OUT_opcode~36_combout\,
	combout => \OUT_opcode~112_combout\);

-- Location: LCCOMB_X18_Y8_N28
\OUT_opcode~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~113_combout\ = (\OUT_opcode~81_combout\ & (\OUT_opcode~64_combout\ & (\OUT_opcode~90_combout\ & \OUT_opcode~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~81_combout\,
	datab => \OUT_opcode~64_combout\,
	datac => \OUT_opcode~90_combout\,
	datad => \OUT_opcode~112_combout\,
	combout => \OUT_opcode~113_combout\);

-- Location: LCCOMB_X21_Y7_N12
\OUT_opcode~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~110_combout\ = (\OUT_opcode~75_combout\ & ((\OUT_opcode~31_combout\) # ((\OUT_opcode~48_combout\) # (\OUT_opcode~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~31_combout\,
	datab => \OUT_opcode~75_combout\,
	datac => \OUT_opcode~48_combout\,
	datad => \OUT_opcode~30_combout\,
	combout => \OUT_opcode~110_combout\);

-- Location: LCCOMB_X22_Y7_N6
\OUT_opcode~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~145_combout\ = (\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[12]~input_o\,
	combout => \OUT_opcode~145_combout\);

-- Location: LCCOMB_X21_Y7_N14
\OUT_opcode~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~111_combout\ = (!\OUT_opcode~110_combout\ & (((!\OUT_opcode~35_combout\ & !\OUT_opcode~59_combout\)) # (!\OUT_opcode~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~110_combout\,
	datab => \OUT_opcode~35_combout\,
	datac => \OUT_opcode~59_combout\,
	datad => \OUT_opcode~145_combout\,
	combout => \OUT_opcode~111_combout\);

-- Location: LCCOMB_X19_Y7_N10
\OUT_opcode~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~114_combout\ = (\OUT_opcode~108_combout\ & (\OUT_opcode~109_combout\ & (\OUT_opcode~113_combout\ & \OUT_opcode~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~108_combout\,
	datab => \OUT_opcode~109_combout\,
	datac => \OUT_opcode~113_combout\,
	datad => \OUT_opcode~111_combout\,
	combout => \OUT_opcode~114_combout\);

-- Location: LCCOMB_X21_Y8_N0
\OUT_opcode~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~115_combout\ = (\OUT_opcode~107_combout\ & (\OUT_opcode~103_combout\ & (\OUT_opcode~114_combout\ & \OUT_opcode~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~107_combout\,
	datab => \OUT_opcode~103_combout\,
	datac => \OUT_opcode~114_combout\,
	datad => \OUT_opcode~47_combout\,
	combout => \OUT_opcode~115_combout\);

-- Location: FF_X21_Y8_N1
\OUT_opcode[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_opcode~115_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_opcode[1]~reg0_q\);

-- Location: LCCOMB_X22_Y7_N12
\OUT_opcode~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~116_combout\ = (!\IN_MEMORY[12]~input_o\ & (\IN_MEMORY[9]~input_o\ & (!\IN_MEMORY[13]~input_o\ & !\IN_MEMORY[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[9]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_opcode~116_combout\);

-- Location: LCCOMB_X19_Y8_N28
\OUT_opcode~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~117_combout\ = (((!\OUT_opcode~59_combout\ & !\OUT_opcode~62_combout\)) # (!\IN_MEMORY[7]~input_o\)) # (!\OUT_opcode~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~116_combout\,
	datab => \OUT_opcode~59_combout\,
	datac => \OUT_opcode~62_combout\,
	datad => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~117_combout\);

-- Location: LCCOMB_X19_Y8_N2
\OUT_opcode~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~118_combout\ = (\OUT_opcode~117_combout\ & (((!\IN_MEMORY[7]~input_o\) # (!\OUT_opcode~61_combout\)) # (!\OUT_opcode~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~116_combout\,
	datab => \OUT_opcode~117_combout\,
	datac => \OUT_opcode~61_combout\,
	datad => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~118_combout\);

-- Location: LCCOMB_X18_Y8_N18
\OUT_opcode~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~119_combout\ = (\OUT_opcode~98_combout\ & (\OUT_opcode~57_combout\ & (\OUT_opcode~118_combout\ & \OUT_opcode~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~98_combout\,
	datab => \OUT_opcode~57_combout\,
	datac => \OUT_opcode~118_combout\,
	datad => \OUT_opcode~112_combout\,
	combout => \OUT_opcode~119_combout\);

-- Location: LCCOMB_X19_Y8_N26
\OUT_opcode~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~129_combout\ = ((\IN_MEMORY[7]~input_o\) # ((!\OUT_opcode~61_combout\ & !\OUT_opcode~62_combout\))) # (!\OUT_opcode~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~116_combout\,
	datab => \OUT_opcode~61_combout\,
	datac => \OUT_opcode~62_combout\,
	datad => \IN_MEMORY[7]~input_o\,
	combout => \OUT_opcode~129_combout\);

-- Location: LCCOMB_X22_Y8_N26
\OUT_opcode~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~127_combout\ = (\OUT_opcode~34_combout\ & ((\OUT_opcode~31_combout\) # ((\OUT_opcode~48_combout\) # (\OUT_opcode~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~31_combout\,
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~30_combout\,
	datad => \OUT_opcode~34_combout\,
	combout => \OUT_opcode~127_combout\);

-- Location: LCCOMB_X19_Y8_N4
\OUT_opcode~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~128_combout\ = (!\OUT_opcode~127_combout\ & (((\IN_MEMORY[7]~input_o\) # (!\OUT_opcode~59_combout\)) # (!\OUT_opcode~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~116_combout\,
	datab => \OUT_opcode~59_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~127_combout\,
	combout => \OUT_opcode~128_combout\);

-- Location: LCCOMB_X19_Y8_N20
\OUT_opcode~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~130_combout\ = (\OUT_opcode~129_combout\ & (\OUT_opcode~128_combout\ & \OUT_opcode~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~129_combout\,
	datab => \OUT_opcode~128_combout\,
	datac => \OUT_opcode~105_combout\,
	combout => \OUT_opcode~130_combout\);

-- Location: LCCOMB_X21_Y7_N2
\OUT_opcode~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~125_combout\ = (\OUT_opcode~65_combout\) # ((\OUT_opcode~66_combout\) # ((\OUT_opcode~67_combout\) # (\OUT_opcode~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~65_combout\,
	datab => \OUT_opcode~66_combout\,
	datac => \OUT_opcode~67_combout\,
	datad => \OUT_opcode~68_combout\,
	combout => \OUT_opcode~125_combout\);

-- Location: LCCOMB_X21_Y7_N16
\OUT_opcode~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~120_combout\ = ((!\OUT_opcode~48_combout\ & !\OUT_opcode~30_combout\)) # (!\OUT_opcode~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~48_combout\,
	datac => \OUT_opcode~116_combout\,
	datad => \OUT_opcode~30_combout\,
	combout => \OUT_opcode~120_combout\);

-- Location: LCCOMB_X21_Y7_N30
\OUT_opcode~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~121_combout\ = (\OUT_opcode~120_combout\ & (((!\OUT_opcode~67_combout\ & !\OUT_opcode~66_combout\)) # (!\OUT_opcode~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~67_combout\,
	datab => \OUT_opcode~120_combout\,
	datac => \OUT_opcode~59_combout\,
	datad => \OUT_opcode~66_combout\,
	combout => \OUT_opcode~121_combout\);

-- Location: LCCOMB_X21_Y7_N24
\OUT_opcode~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~122_combout\ = ((!\OUT_opcode~65_combout\ & !\OUT_opcode~68_combout\)) # (!\OUT_opcode~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~65_combout\,
	datab => \OUT_opcode~68_combout\,
	datac => \OUT_opcode~59_combout\,
	combout => \OUT_opcode~122_combout\);

-- Location: LCCOMB_X19_Y7_N4
\OUT_opcode~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~123_combout\ = (\OUT_opcode~122_combout\ & ((!\OUT_opcode~116_combout\) # (!\OUT_opcode~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~31_combout\,
	datac => \OUT_opcode~116_combout\,
	datad => \OUT_opcode~122_combout\,
	combout => \OUT_opcode~123_combout\);

-- Location: LCCOMB_X19_Y7_N6
\OUT_opcode~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~124_combout\ = (\OUT_opcode~121_combout\ & (\OUT_opcode~88_combout\ & (\OUT_opcode~123_combout\ & \OUT_opcode~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~121_combout\,
	datab => \OUT_opcode~88_combout\,
	datac => \OUT_opcode~123_combout\,
	datad => \OUT_opcode~111_combout\,
	combout => \OUT_opcode~124_combout\);

-- Location: LCCOMB_X18_Y7_N0
\OUT_opcode~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~126_combout\ = (\OUT_opcode~124_combout\ & (((!\OUT_opcode~61_combout\ & !\OUT_opcode~62_combout\)) # (!\OUT_opcode~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~61_combout\,
	datab => \OUT_opcode~125_combout\,
	datac => \OUT_opcode~124_combout\,
	datad => \OUT_opcode~62_combout\,
	combout => \OUT_opcode~126_combout\);

-- Location: LCCOMB_X18_Y8_N14
\OUT_opcode~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~131_combout\ = (\OUT_opcode~119_combout\ & (\OUT_opcode~130_combout\ & \OUT_opcode~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~119_combout\,
	datac => \OUT_opcode~130_combout\,
	datad => \OUT_opcode~126_combout\,
	combout => \OUT_opcode~131_combout\);

-- Location: FF_X18_Y8_N15
\OUT_opcode[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_opcode~131_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_opcode[2]~reg0_q\);

-- Location: LCCOMB_X22_Y8_N12
\OUT_opcode~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~135_combout\ = (!\OUT_opcode~37_combout\ & (!\OUT_opcode~34_combout\ & (!\OUT_opcode~38_combout\ & !\OUT_opcode~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~37_combout\,
	datab => \OUT_opcode~34_combout\,
	datac => \OUT_opcode~38_combout\,
	datad => \OUT_opcode~36_combout\,
	combout => \OUT_opcode~135_combout\);

-- Location: LCCOMB_X18_Y8_N4
\OUT_opcode~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~136_combout\ = (\OUT_opcode~89_combout\ & ((\OUT_opcode~135_combout\) # ((!\OUT_opcode~62_combout\ & !\OUT_opcode~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~62_combout\,
	datab => \OUT_opcode~61_combout\,
	datac => \OUT_opcode~89_combout\,
	datad => \OUT_opcode~135_combout\,
	combout => \OUT_opcode~136_combout\);

-- Location: LCCOMB_X21_Y8_N10
\OUT_opcode~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~132_combout\ = (\OUT_opcode~116_combout\ & ((\OUT_opcode~29_combout\) # ((\OUT_opcode~26_combout\) # (\OUT_opcode~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~29_combout\,
	datab => \OUT_opcode~26_combout\,
	datac => \OUT_opcode~116_combout\,
	datad => \OUT_opcode~40_combout\,
	combout => \OUT_opcode~132_combout\);

-- Location: LCCOMB_X21_Y8_N4
\OUT_opcode~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~133_combout\ = (!\OUT_opcode~132_combout\ & (((!\OUT_opcode~34_combout\ & !\OUT_opcode~39_combout\)) # (!\OUT_opcode~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~132_combout\,
	datab => \OUT_opcode~59_combout\,
	datac => \OUT_opcode~34_combout\,
	datad => \OUT_opcode~39_combout\,
	combout => \OUT_opcode~133_combout\);

-- Location: LCCOMB_X21_Y8_N18
\OUT_opcode~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~134_combout\ = (\OUT_opcode~71_combout\ & (\OUT_opcode~103_combout\ & (\OUT_opcode~133_combout\ & \OUT_opcode~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~71_combout\,
	datab => \OUT_opcode~103_combout\,
	datac => \OUT_opcode~133_combout\,
	datad => \OUT_opcode~33_combout\,
	combout => \OUT_opcode~134_combout\);

-- Location: LCCOMB_X18_Y8_N24
\OUT_opcode~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~137_combout\ = (\OUT_opcode~126_combout\ & (\OUT_opcode~136_combout\ & \OUT_opcode~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_opcode~126_combout\,
	datac => \OUT_opcode~136_combout\,
	datad => \OUT_opcode~134_combout\,
	combout => \OUT_opcode~137_combout\);

-- Location: FF_X18_Y8_N25
\OUT_opcode[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_opcode~137_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_opcode[3]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N30
\OUT_opcode~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~141_combout\ = (((!\OUT_opcode~79_combout\) # (!\OUT_opcode~124_combout\)) # (!\OUT_opcode~100_combout\)) # (!\OUT_opcode~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~107_combout\,
	datab => \OUT_opcode~100_combout\,
	datac => \OUT_opcode~124_combout\,
	datad => \OUT_opcode~79_combout\,
	combout => \OUT_opcode~141_combout\);

-- Location: LCCOMB_X19_Y8_N14
\OUT_opcode~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~138_combout\ = (\OUT_opcode~59_combout\ & ((\IN_MEMORY[7]~input_o\ & (\OUT_opcode~116_combout\)) # (!\IN_MEMORY[7]~input_o\ & ((\OUT_opcode~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~116_combout\,
	datab => \OUT_opcode~59_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~75_combout\,
	combout => \OUT_opcode~138_combout\);

-- Location: LCCOMB_X22_Y8_N18
\OUT_opcode~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~139_combout\ = (\OUT_opcode~35_combout\ & ((\OUT_opcode~116_combout\) # ((\OUT_opcode~38_combout\ & \OUT_opcode~48_combout\)))) # (!\OUT_opcode~35_combout\ & (\OUT_opcode~38_combout\ & (\OUT_opcode~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~35_combout\,
	datab => \OUT_opcode~38_combout\,
	datac => \OUT_opcode~48_combout\,
	datad => \OUT_opcode~116_combout\,
	combout => \OUT_opcode~139_combout\);

-- Location: LCCOMB_X21_Y8_N24
\OUT_opcode~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~140_combout\ = (\OUT_opcode~138_combout\) # ((\OUT_opcode~139_combout\) # ((!\OUT_opcode~50_combout\) # (!\OUT_opcode~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~138_combout\,
	datab => \OUT_opcode~139_combout\,
	datac => \OUT_opcode~128_combout\,
	datad => \OUT_opcode~50_combout\,
	combout => \OUT_opcode~140_combout\);

-- Location: LCCOMB_X21_Y8_N14
\OUT_opcode~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_opcode~142_combout\ = (\OUT_opcode~141_combout\) # ((\OUT_opcode~140_combout\) # (!\OUT_opcode~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~141_combout\,
	datac => \OUT_opcode~133_combout\,
	datad => \OUT_opcode~140_combout\,
	combout => \OUT_opcode~142_combout\);

-- Location: FF_X21_Y8_N15
\OUT_opcode[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_opcode~142_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_opcode[4]~reg0_q\);

-- Location: LCCOMB_X21_Y6_N22
\OUT_operand[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[0]~reg0feeder_combout\ = \IN_MEMORY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_MEMORY[0]~input_o\,
	combout => \OUT_operand[0]~reg0feeder_combout\);

-- Location: LCCOMB_X22_Y6_N12
\OUT_operand[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[0]~1_combout\ = (((!\IN_MEMORY[9]~input_o\) # (!\IN_MEMORY[13]~input_o\)) # (!\IN_MEMORY[11]~input_o\)) # (!\IN_MEMORY[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[12]~input_o\,
	datab => \IN_MEMORY[11]~input_o\,
	datac => \IN_MEMORY[13]~input_o\,
	datad => \IN_MEMORY[9]~input_o\,
	combout => \OUT_operand[0]~1_combout\);

-- Location: LCCOMB_X22_Y6_N6
\OUT_operand[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[7]~2_combout\ = (\IN_MEMORY[8]~input_o\ & (\OUT_operand[0]~1_combout\)) # (!\IN_MEMORY[8]~input_o\ & (((\IN_MEMORY[7]~input_o\) # (!\OUT_operand[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_operand[0]~1_combout\,
	datab => \IN_MEMORY[7]~input_o\,
	datac => \OUT_operand[0]~0_combout\,
	datad => \IN_MEMORY[8]~input_o\,
	combout => \OUT_operand[7]~2_combout\);

-- Location: LCCOMB_X22_Y6_N8
\OUT_operand[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[7]~3_combout\ = (\en~input_o\ & ((\IN_MEMORY[10]~input_o\) # (\OUT_operand[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[10]~input_o\,
	datac => \en~input_o\,
	datad => \OUT_operand[7]~2_combout\,
	combout => \OUT_operand[7]~3_combout\);

-- Location: FF_X21_Y6_N23
\OUT_operand[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[0]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N6
\OUT_operand[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[1]~reg0feeder_combout\ = \IN_MEMORY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_MEMORY[1]~input_o\,
	combout => \OUT_operand[1]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N7
\OUT_operand[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[1]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N4
\OUT_operand[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[2]~reg0feeder_combout\ = \IN_MEMORY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_MEMORY[2]~input_o\,
	combout => \OUT_operand[2]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N5
\OUT_operand[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[2]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N22
\OUT_operand[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[3]~reg0feeder_combout\ = \IN_MEMORY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_MEMORY[3]~input_o\,
	combout => \OUT_operand[3]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N23
\OUT_operand[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[3]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N24
\OUT_operand[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[4]~reg0feeder_combout\ = \IN_MEMORY[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_MEMORY[4]~input_o\,
	combout => \OUT_operand[4]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N25
\OUT_operand[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[4]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N14
\OUT_operand[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[5]~reg0feeder_combout\ = \IN_MEMORY[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IN_MEMORY[5]~input_o\,
	combout => \OUT_operand[5]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N15
\OUT_operand[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[5]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N16
\OUT_operand[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand[6]~reg0feeder_combout\ = \IN_MEMORY[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_MEMORY[6]~input_o\,
	combout => \OUT_operand[6]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N17
\OUT_operand[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[6]~reg0_q\);

-- Location: LCCOMB_X21_Y6_N24
\OUT_operand~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand~4_combout\ = (\IN_MEMORY[10]~input_o\) # (!\OUT_operand[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IN_MEMORY[10]~input_o\,
	datad => \OUT_operand[0]~0_combout\,
	combout => \OUT_operand~4_combout\);

-- Location: FF_X21_Y6_N25
\OUT_operand[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_IN_MEMORY[7]~input_o\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[7]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N10
\OUT_operand~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand~5_combout\ = (\IN_MEMORY[11]~input_o\ & (!\IN_MEMORY[10]~input_o\ & !\IN_MEMORY[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[11]~input_o\,
	datac => \IN_MEMORY[10]~input_o\,
	datad => \IN_MEMORY[9]~input_o\,
	combout => \OUT_operand~5_combout\);

-- Location: LCCOMB_X22_Y4_N18
\OUT_operand~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand~6_combout\ = (\IN_MEMORY[8]~input_o\ & ((\IN_MEMORY[13]~input_o\ & ((!\OUT_operand~5_combout\) # (!\IN_MEMORY[12]~input_o\))) # (!\IN_MEMORY[13]~input_o\ & (\IN_MEMORY[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[13]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[12]~input_o\,
	datad => \OUT_operand~5_combout\,
	combout => \OUT_operand~6_combout\);

-- Location: FF_X22_Y4_N19
\OUT_operand[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[8]~reg0_q\);

-- Location: LCCOMB_X22_Y4_N28
\OUT_operand~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_operand~7_combout\ = (((\IN_MEMORY[8]~input_o\ & !\IN_MEMORY[10]~input_o\)) # (!\IN_MEMORY[12]~input_o\)) # (!\IN_MEMORY[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_MEMORY[11]~input_o\,
	datab => \IN_MEMORY[8]~input_o\,
	datac => \IN_MEMORY[12]~input_o\,
	datad => \IN_MEMORY[10]~input_o\,
	combout => \OUT_operand~7_combout\);

-- Location: FF_X22_Y4_N29
\OUT_operand[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_operand~7_combout\,
	asdata => \IN_MEMORY[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_IN_MEMORY[9]~input_o\,
	sload => \ALT_INV_IN_MEMORY[13]~input_o\,
	ena => \OUT_operand[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_operand[9]~reg0_q\);

-- Location: LCCOMB_X22_Y6_N20
\sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel~1_combout\ = (\sel~0_combout\ & (\IN_MEMORY[7]~input_o\ & \OUT_opcode~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~0_combout\,
	datac => \IN_MEMORY[7]~input_o\,
	datad => \OUT_opcode~51_combout\,
	combout => \sel~1_combout\);

-- Location: FF_X22_Y6_N21
\sel[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sel~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_opcode[0]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel[0]~reg0_q\);

-- Location: LCCOMB_X19_Y8_N16
\sel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel[1]~2_combout\ = (\OUT_opcode~35_combout\ & (((\OUT_opcode~76_combout\)))) # (!\OUT_opcode~35_combout\ & ((\OUT_opcode~45_combout\) # ((\OUT_opcode~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~45_combout\,
	datab => \OUT_opcode~76_combout\,
	datac => \OUT_opcode~44_combout\,
	datad => \OUT_opcode~35_combout\,
	combout => \sel[1]~2_combout\);

-- Location: LCCOMB_X19_Y8_N30
\sel[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel[1]~3_combout\ = (\sel[1]~2_combout\ & ((\OUT_opcode~63_combout\) # ((\OUT_opcode~116_combout\) # (\OUT_opcode~35_combout\)))) # (!\sel[1]~2_combout\ & (\OUT_opcode~35_combout\ & ((\OUT_opcode~63_combout\) # (\OUT_opcode~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode~63_combout\,
	datab => \sel[1]~2_combout\,
	datac => \OUT_opcode~116_combout\,
	datad => \OUT_opcode~35_combout\,
	combout => \sel[1]~3_combout\);

-- Location: LCCOMB_X19_Y7_N8
\sel[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel[1]~4_combout\ = (\en~input_o\ & (((\sel[1]~3_combout\) # (!\OUT_opcode~118_combout\)) # (!\OUT_opcode~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \OUT_opcode~109_combout\,
	datac => \sel[1]~3_combout\,
	datad => \OUT_opcode~118_combout\,
	combout => \sel[1]~4_combout\);

-- Location: LCCOMB_X22_Y6_N14
\sel[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel[1]~5_combout\ = (\OUT_opcode[0]~96_combout\ & (\IN_MEMORY[7]~input_o\ & ((\sel[1]~4_combout\)))) # (!\OUT_opcode[0]~96_combout\ & ((\sel[1]~reg0_q\) # ((\IN_MEMORY[7]~input_o\ & \sel[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_opcode[0]~96_combout\,
	datab => \IN_MEMORY[7]~input_o\,
	datac => \sel[1]~reg0_q\,
	datad => \sel[1]~4_combout\,
	combout => \sel[1]~5_combout\);

-- Location: FF_X22_Y6_N15
\sel[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sel[1]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel[1]~reg0_q\);

ww_OUT_opcode(0) <= \OUT_opcode[0]~output_o\;

ww_OUT_opcode(1) <= \OUT_opcode[1]~output_o\;

ww_OUT_opcode(2) <= \OUT_opcode[2]~output_o\;

ww_OUT_opcode(3) <= \OUT_opcode[3]~output_o\;

ww_OUT_opcode(4) <= \OUT_opcode[4]~output_o\;

ww_OUT_operand(0) <= \OUT_operand[0]~output_o\;

ww_OUT_operand(1) <= \OUT_operand[1]~output_o\;

ww_OUT_operand(2) <= \OUT_operand[2]~output_o\;

ww_OUT_operand(3) <= \OUT_operand[3]~output_o\;

ww_OUT_operand(4) <= \OUT_operand[4]~output_o\;

ww_OUT_operand(5) <= \OUT_operand[5]~output_o\;

ww_OUT_operand(6) <= \OUT_operand[6]~output_o\;

ww_OUT_operand(7) <= \OUT_operand[7]~output_o\;

ww_OUT_operand(8) <= \OUT_operand[8]~output_o\;

ww_OUT_operand(9) <= \OUT_operand[9]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;
END structure;


