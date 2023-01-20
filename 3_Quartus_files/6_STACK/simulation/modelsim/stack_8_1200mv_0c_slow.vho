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

-- DATE "03/15/2020 21:20:47"

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

ENTITY 	stack IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	IN_PC : IN std_logic_vector(9 DOWNTO 0);
	en : IN std_logic;
	press_en : IN std_logic;
	out_en : IN std_logic;
	OUT_PC : OUT std_logic_vector(9 DOWNTO 0)
	);
END stack;

-- Design Ports Information
-- OUT_PC[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[8]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_PC[9]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- press_en	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_en	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[8]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[9]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stack IS
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
SIGNAL ww_IN_PC : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_press_en : std_logic;
SIGNAL ww_out_en : std_logic;
SIGNAL ww_OUT_PC : std_logic_vector(9 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT_PC[0]~output_o\ : std_logic;
SIGNAL \OUT_PC[1]~output_o\ : std_logic;
SIGNAL \OUT_PC[2]~output_o\ : std_logic;
SIGNAL \OUT_PC[3]~output_o\ : std_logic;
SIGNAL \OUT_PC[4]~output_o\ : std_logic;
SIGNAL \OUT_PC[5]~output_o\ : std_logic;
SIGNAL \OUT_PC[6]~output_o\ : std_logic;
SIGNAL \OUT_PC[7]~output_o\ : std_logic;
SIGNAL \OUT_PC[8]~output_o\ : std_logic;
SIGNAL \OUT_PC[9]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_en~input_o\ : std_logic;
SIGNAL \press_en~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \OUT_PC~1_combout\ : std_logic;
SIGNAL \mem[0][0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \mem[0][0]~q\ : std_logic;
SIGNAL \IN_PC[0]~input_o\ : std_logic;
SIGNAL \mem~60_combout\ : std_logic;
SIGNAL \mem[7][0]~q\ : std_logic;
SIGNAL \mem~50_combout\ : std_logic;
SIGNAL \mem[6][0]~q\ : std_logic;
SIGNAL \mem~40_combout\ : std_logic;
SIGNAL \mem[5][0]~q\ : std_logic;
SIGNAL \mem~30_combout\ : std_logic;
SIGNAL \mem[4][0]~q\ : std_logic;
SIGNAL \mem~20_combout\ : std_logic;
SIGNAL \mem[3][0]~q\ : std_logic;
SIGNAL \mem~10_combout\ : std_logic;
SIGNAL \mem[2][0]~q\ : std_logic;
SIGNAL \mem~0_combout\ : std_logic;
SIGNAL \mem[1][0]~q\ : std_logic;
SIGNAL \OUT_PC~0_combout\ : std_logic;
SIGNAL \OUT_PC~2_combout\ : std_logic;
SIGNAL \OUT_PC[0]~reg0_q\ : std_logic;
SIGNAL \mem[0][1]~feeder_combout\ : std_logic;
SIGNAL \mem[0][1]~q\ : std_logic;
SIGNAL \IN_PC[1]~input_o\ : std_logic;
SIGNAL \mem~61_combout\ : std_logic;
SIGNAL \mem[7][1]~q\ : std_logic;
SIGNAL \mem~51_combout\ : std_logic;
SIGNAL \mem[6][1]~q\ : std_logic;
SIGNAL \mem~41_combout\ : std_logic;
SIGNAL \mem[5][1]~q\ : std_logic;
SIGNAL \mem~31_combout\ : std_logic;
SIGNAL \mem[4][1]~q\ : std_logic;
SIGNAL \mem~21_combout\ : std_logic;
SIGNAL \mem[3][1]~q\ : std_logic;
SIGNAL \mem~11_combout\ : std_logic;
SIGNAL \mem[2][1]~q\ : std_logic;
SIGNAL \mem~1_combout\ : std_logic;
SIGNAL \mem[1][1]~q\ : std_logic;
SIGNAL \OUT_PC~3_combout\ : std_logic;
SIGNAL \OUT_PC~4_combout\ : std_logic;
SIGNAL \OUT_PC[1]~reg0_q\ : std_logic;
SIGNAL \mem[0][2]~feeder_combout\ : std_logic;
SIGNAL \mem[0][2]~q\ : std_logic;
SIGNAL \IN_PC[2]~input_o\ : std_logic;
SIGNAL \mem~62_combout\ : std_logic;
SIGNAL \mem[7][2]~q\ : std_logic;
SIGNAL \mem~52_combout\ : std_logic;
SIGNAL \mem[6][2]~q\ : std_logic;
SIGNAL \mem~42_combout\ : std_logic;
SIGNAL \mem[5][2]~q\ : std_logic;
SIGNAL \mem~32_combout\ : std_logic;
SIGNAL \mem[4][2]~q\ : std_logic;
SIGNAL \mem~22_combout\ : std_logic;
SIGNAL \mem[3][2]~q\ : std_logic;
SIGNAL \mem~12_combout\ : std_logic;
SIGNAL \mem[2][2]~q\ : std_logic;
SIGNAL \mem~2_combout\ : std_logic;
SIGNAL \mem[1][2]~q\ : std_logic;
SIGNAL \OUT_PC~5_combout\ : std_logic;
SIGNAL \OUT_PC~6_combout\ : std_logic;
SIGNAL \OUT_PC[2]~reg0_q\ : std_logic;
SIGNAL \mem[0][3]~feeder_combout\ : std_logic;
SIGNAL \mem[0][3]~q\ : std_logic;
SIGNAL \IN_PC[3]~input_o\ : std_logic;
SIGNAL \mem~63_combout\ : std_logic;
SIGNAL \mem[7][3]~q\ : std_logic;
SIGNAL \mem~53_combout\ : std_logic;
SIGNAL \mem[6][3]~q\ : std_logic;
SIGNAL \mem~43_combout\ : std_logic;
SIGNAL \mem[5][3]~q\ : std_logic;
SIGNAL \mem~33_combout\ : std_logic;
SIGNAL \mem[4][3]~q\ : std_logic;
SIGNAL \mem~23_combout\ : std_logic;
SIGNAL \mem[3][3]~q\ : std_logic;
SIGNAL \mem~13_combout\ : std_logic;
SIGNAL \mem[2][3]~q\ : std_logic;
SIGNAL \mem~3_combout\ : std_logic;
SIGNAL \mem[1][3]~q\ : std_logic;
SIGNAL \OUT_PC~7_combout\ : std_logic;
SIGNAL \OUT_PC~8_combout\ : std_logic;
SIGNAL \OUT_PC[3]~reg0_q\ : std_logic;
SIGNAL \mem[0][4]~feeder_combout\ : std_logic;
SIGNAL \mem[0][4]~q\ : std_logic;
SIGNAL \IN_PC[4]~input_o\ : std_logic;
SIGNAL \mem~64_combout\ : std_logic;
SIGNAL \mem[7][4]~q\ : std_logic;
SIGNAL \mem~54_combout\ : std_logic;
SIGNAL \mem[6][4]~q\ : std_logic;
SIGNAL \mem~44_combout\ : std_logic;
SIGNAL \mem[5][4]~q\ : std_logic;
SIGNAL \mem~34_combout\ : std_logic;
SIGNAL \mem[4][4]~q\ : std_logic;
SIGNAL \mem~24_combout\ : std_logic;
SIGNAL \mem[3][4]~q\ : std_logic;
SIGNAL \mem~14_combout\ : std_logic;
SIGNAL \mem[2][4]~q\ : std_logic;
SIGNAL \mem~4_combout\ : std_logic;
SIGNAL \mem[1][4]~q\ : std_logic;
SIGNAL \OUT_PC~9_combout\ : std_logic;
SIGNAL \OUT_PC~10_combout\ : std_logic;
SIGNAL \OUT_PC[4]~reg0_q\ : std_logic;
SIGNAL \mem[0][5]~feeder_combout\ : std_logic;
SIGNAL \mem[0][5]~q\ : std_logic;
SIGNAL \IN_PC[5]~input_o\ : std_logic;
SIGNAL \mem~65_combout\ : std_logic;
SIGNAL \mem[7][5]~q\ : std_logic;
SIGNAL \mem~55_combout\ : std_logic;
SIGNAL \mem[6][5]~q\ : std_logic;
SIGNAL \mem~45_combout\ : std_logic;
SIGNAL \mem[5][5]~q\ : std_logic;
SIGNAL \mem~35_combout\ : std_logic;
SIGNAL \mem[4][5]~q\ : std_logic;
SIGNAL \mem~25_combout\ : std_logic;
SIGNAL \mem[3][5]~q\ : std_logic;
SIGNAL \mem~15_combout\ : std_logic;
SIGNAL \mem[2][5]~q\ : std_logic;
SIGNAL \mem~5_combout\ : std_logic;
SIGNAL \mem[1][5]~q\ : std_logic;
SIGNAL \OUT_PC~11_combout\ : std_logic;
SIGNAL \OUT_PC~12_combout\ : std_logic;
SIGNAL \OUT_PC[5]~reg0_q\ : std_logic;
SIGNAL \mem[0][6]~feeder_combout\ : std_logic;
SIGNAL \mem[0][6]~q\ : std_logic;
SIGNAL \IN_PC[6]~input_o\ : std_logic;
SIGNAL \mem~66_combout\ : std_logic;
SIGNAL \mem[7][6]~q\ : std_logic;
SIGNAL \mem~56_combout\ : std_logic;
SIGNAL \mem[6][6]~q\ : std_logic;
SIGNAL \mem~46_combout\ : std_logic;
SIGNAL \mem[5][6]~q\ : std_logic;
SIGNAL \mem~36_combout\ : std_logic;
SIGNAL \mem[4][6]~q\ : std_logic;
SIGNAL \mem~26_combout\ : std_logic;
SIGNAL \mem[3][6]~q\ : std_logic;
SIGNAL \mem~16_combout\ : std_logic;
SIGNAL \mem[2][6]~q\ : std_logic;
SIGNAL \mem~6_combout\ : std_logic;
SIGNAL \mem[1][6]~q\ : std_logic;
SIGNAL \OUT_PC~13_combout\ : std_logic;
SIGNAL \OUT_PC~14_combout\ : std_logic;
SIGNAL \OUT_PC[6]~reg0_q\ : std_logic;
SIGNAL \mem[0][7]~feeder_combout\ : std_logic;
SIGNAL \mem[0][7]~q\ : std_logic;
SIGNAL \IN_PC[7]~input_o\ : std_logic;
SIGNAL \mem~67_combout\ : std_logic;
SIGNAL \mem[7][7]~q\ : std_logic;
SIGNAL \mem~57_combout\ : std_logic;
SIGNAL \mem[6][7]~q\ : std_logic;
SIGNAL \mem~47_combout\ : std_logic;
SIGNAL \mem[5][7]~q\ : std_logic;
SIGNAL \mem~37_combout\ : std_logic;
SIGNAL \mem[4][7]~q\ : std_logic;
SIGNAL \mem~27_combout\ : std_logic;
SIGNAL \mem[3][7]~q\ : std_logic;
SIGNAL \mem~17_combout\ : std_logic;
SIGNAL \mem[2][7]~q\ : std_logic;
SIGNAL \mem~7_combout\ : std_logic;
SIGNAL \mem[1][7]~q\ : std_logic;
SIGNAL \OUT_PC~15_combout\ : std_logic;
SIGNAL \OUT_PC~16_combout\ : std_logic;
SIGNAL \OUT_PC[7]~reg0_q\ : std_logic;
SIGNAL \mem[0][8]~feeder_combout\ : std_logic;
SIGNAL \mem[0][8]~q\ : std_logic;
SIGNAL \IN_PC[8]~input_o\ : std_logic;
SIGNAL \mem~68_combout\ : std_logic;
SIGNAL \mem[7][8]~q\ : std_logic;
SIGNAL \mem~58_combout\ : std_logic;
SIGNAL \mem[6][8]~q\ : std_logic;
SIGNAL \mem~48_combout\ : std_logic;
SIGNAL \mem[5][8]~q\ : std_logic;
SIGNAL \mem~38_combout\ : std_logic;
SIGNAL \mem[4][8]~q\ : std_logic;
SIGNAL \mem~28_combout\ : std_logic;
SIGNAL \mem[3][8]~q\ : std_logic;
SIGNAL \mem~18_combout\ : std_logic;
SIGNAL \mem[2][8]~q\ : std_logic;
SIGNAL \mem~8_combout\ : std_logic;
SIGNAL \mem[1][8]~q\ : std_logic;
SIGNAL \OUT_PC~17_combout\ : std_logic;
SIGNAL \OUT_PC~18_combout\ : std_logic;
SIGNAL \OUT_PC[8]~reg0_q\ : std_logic;
SIGNAL \mem[0][9]~feeder_combout\ : std_logic;
SIGNAL \mem[0][9]~q\ : std_logic;
SIGNAL \IN_PC[9]~input_o\ : std_logic;
SIGNAL \mem~69_combout\ : std_logic;
SIGNAL \mem[7][9]~q\ : std_logic;
SIGNAL \mem~59_combout\ : std_logic;
SIGNAL \mem[6][9]~q\ : std_logic;
SIGNAL \mem~49_combout\ : std_logic;
SIGNAL \mem[5][9]~q\ : std_logic;
SIGNAL \mem~39_combout\ : std_logic;
SIGNAL \mem[4][9]~q\ : std_logic;
SIGNAL \mem~29_combout\ : std_logic;
SIGNAL \mem[3][9]~q\ : std_logic;
SIGNAL \mem~19_combout\ : std_logic;
SIGNAL \mem[2][9]~q\ : std_logic;
SIGNAL \mem~9_combout\ : std_logic;
SIGNAL \mem[1][9]~q\ : std_logic;
SIGNAL \OUT_PC~19_combout\ : std_logic;
SIGNAL \OUT_PC~20_combout\ : std_logic;
SIGNAL \OUT_PC[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_IN_PC <= IN_PC;
ww_en <= en;
ww_press_en <= press_en;
ww_out_en <= out_en;
OUT_PC <= ww_OUT_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y7_N2
\OUT_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[0]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\OUT_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[1]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\OUT_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[2]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\OUT_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[3]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\OUT_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[4]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\OUT_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[5]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\OUT_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[6]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\OUT_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[7]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\OUT_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[8]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\OUT_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PC[9]~reg0_q\,
	devoe => ww_devoe,
	o => \OUT_PC[9]~output_o\);

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

-- Location: IOIBUF_X23_Y0_N15
\out_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_en,
	o => \out_en~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\press_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_press_en,
	o => \press_en~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X25_Y1_N0
\OUT_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~1_combout\ = (\en~input_o\ & ((\out_en~input_o\) # (\press_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_en~input_o\,
	datac => \press_en~input_o\,
	datad => \en~input_o\,
	combout => \OUT_PC~1_combout\);

-- Location: LCCOMB_X3_Y3_N8
\mem[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][0]~feeder_combout\ = \OUT_PC~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~2_combout\,
	combout => \mem[0][0]~feeder_combout\);

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

-- Location: FF_X3_Y3_N9
\mem[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][0]~q\);

-- Location: IOIBUF_X0_Y6_N15
\IN_PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(0),
	o => \IN_PC[0]~input_o\);

-- Location: LCCOMB_X3_Y3_N18
\mem~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~60_combout\ = (\press_en~input_o\ & \mem[6][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[6][0]~q\,
	combout => \mem~60_combout\);

-- Location: FF_X3_Y3_N19
\mem[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][0]~q\);

-- Location: LCCOMB_X3_Y3_N12
\mem~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~50_combout\ = (\press_en~input_o\ & (\mem[5][0]~q\)) # (!\press_en~input_o\ & ((\mem[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[5][0]~q\,
	datad => \mem[7][0]~q\,
	combout => \mem~50_combout\);

-- Location: FF_X3_Y3_N13
\mem[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][0]~q\);

-- Location: LCCOMB_X3_Y3_N22
\mem~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~40_combout\ = (\press_en~input_o\ & (\mem[4][0]~q\)) # (!\press_en~input_o\ & ((\mem[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[4][0]~q\,
	datac => \mem[6][0]~q\,
	combout => \mem~40_combout\);

-- Location: FF_X3_Y3_N23
\mem[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][0]~q\);

-- Location: LCCOMB_X3_Y3_N16
\mem~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~30_combout\ = (\press_en~input_o\ & ((\mem[3][0]~q\))) # (!\press_en~input_o\ & (\mem[5][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[5][0]~q\,
	datad => \mem[3][0]~q\,
	combout => \mem~30_combout\);

-- Location: FF_X3_Y3_N17
\mem[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][0]~q\);

-- Location: LCCOMB_X3_Y3_N0
\mem~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~20_combout\ = (\press_en~input_o\ & (\mem[2][0]~q\)) # (!\press_en~input_o\ & ((\mem[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[2][0]~q\,
	datad => \mem[4][0]~q\,
	combout => \mem~20_combout\);

-- Location: FF_X3_Y3_N1
\mem[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][0]~q\);

-- Location: LCCOMB_X3_Y3_N28
\mem~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~10_combout\ = (\press_en~input_o\ & (\mem[1][0]~q\)) # (!\press_en~input_o\ & ((\mem[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[1][0]~q\,
	datad => \mem[3][0]~q\,
	combout => \mem~10_combout\);

-- Location: FF_X3_Y3_N29
\mem[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][0]~q\);

-- Location: LCCOMB_X3_Y3_N2
\mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~0_combout\ = (\press_en~input_o\ & (\mem[0][0]~q\)) # (!\press_en~input_o\ & ((\mem[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[0][0]~q\,
	datad => \mem[2][0]~q\,
	combout => \mem~0_combout\);

-- Location: FF_X3_Y3_N3
\mem[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][0]~q\);

-- Location: LCCOMB_X3_Y3_N24
\OUT_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~0_combout\ = (\press_en~input_o\ & (\IN_PC[0]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \IN_PC[0]~input_o\,
	datad => \mem[1][0]~q\,
	combout => \OUT_PC~0_combout\);

-- Location: LCCOMB_X3_Y3_N26
\OUT_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~2_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~0_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_PC~1_combout\,
	datab => \mem[0][0]~q\,
	datad => \OUT_PC~0_combout\,
	combout => \OUT_PC~2_combout\);

-- Location: FF_X3_Y3_N5
\OUT_PC[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[0]~reg0_q\);

-- Location: LCCOMB_X3_Y3_N30
\mem[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][1]~feeder_combout\ = \OUT_PC~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~4_combout\,
	combout => \mem[0][1]~feeder_combout\);

-- Location: FF_X3_Y3_N31
\mem[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][1]~q\);

-- Location: IOIBUF_X3_Y0_N1
\IN_PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(1),
	o => \IN_PC[1]~input_o\);

-- Location: LCCOMB_X4_Y3_N0
\mem~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~61_combout\ = (\press_en~input_o\ & \mem[6][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][1]~q\,
	combout => \mem~61_combout\);

-- Location: FF_X4_Y3_N1
\mem[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][1]~q\);

-- Location: LCCOMB_X4_Y3_N16
\mem~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~51_combout\ = (\press_en~input_o\ & (\mem[5][1]~q\)) # (!\press_en~input_o\ & ((\mem[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[5][1]~q\,
	datac => \press_en~input_o\,
	datad => \mem[7][1]~q\,
	combout => \mem~51_combout\);

-- Location: FF_X4_Y3_N17
\mem[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][1]~q\);

-- Location: LCCOMB_X4_Y3_N4
\mem~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~41_combout\ = (\press_en~input_o\ & ((\mem[4][1]~q\))) # (!\press_en~input_o\ & (\mem[6][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[6][1]~q\,
	datac => \press_en~input_o\,
	datad => \mem[4][1]~q\,
	combout => \mem~41_combout\);

-- Location: FF_X4_Y3_N5
\mem[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][1]~q\);

-- Location: LCCOMB_X4_Y3_N24
\mem~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~31_combout\ = (\press_en~input_o\ & ((\mem[3][1]~q\))) # (!\press_en~input_o\ & (\mem[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[5][1]~q\,
	datac => \press_en~input_o\,
	datad => \mem[3][1]~q\,
	combout => \mem~31_combout\);

-- Location: FF_X4_Y3_N25
\mem[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][1]~q\);

-- Location: LCCOMB_X3_Y3_N14
\mem~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~21_combout\ = (\press_en~input_o\ & (\mem[2][1]~q\)) # (!\press_en~input_o\ & ((\mem[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[2][1]~q\,
	datad => \mem[4][1]~q\,
	combout => \mem~21_combout\);

-- Location: FF_X3_Y3_N15
\mem[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][1]~q\);

-- Location: LCCOMB_X3_Y3_N6
\mem~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~11_combout\ = (\press_en~input_o\ & ((\mem[1][1]~q\))) # (!\press_en~input_o\ & (\mem[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[3][1]~q\,
	datad => \mem[1][1]~q\,
	combout => \mem~11_combout\);

-- Location: FF_X3_Y3_N7
\mem[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][1]~q\);

-- Location: LCCOMB_X3_Y3_N20
\mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~1_combout\ = (\press_en~input_o\ & (\mem[0][1]~q\)) # (!\press_en~input_o\ & ((\mem[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][1]~q\,
	datac => \mem[2][1]~q\,
	datad => \press_en~input_o\,
	combout => \mem~1_combout\);

-- Location: FF_X3_Y3_N21
\mem[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][1]~q\);

-- Location: LCCOMB_X3_Y3_N10
\OUT_PC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~3_combout\ = (\press_en~input_o\ & (\IN_PC[1]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \IN_PC[1]~input_o\,
	datad => \mem[1][1]~q\,
	combout => \OUT_PC~3_combout\);

-- Location: LCCOMB_X3_Y3_N4
\OUT_PC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~4_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~3_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][1]~q\,
	datab => \OUT_PC~1_combout\,
	datad => \OUT_PC~3_combout\,
	combout => \OUT_PC~4_combout\);

-- Location: FF_X3_Y3_N27
\OUT_PC[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[1]~reg0_q\);

-- Location: LCCOMB_X25_Y1_N30
\mem[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][2]~feeder_combout\ = \OUT_PC~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~6_combout\,
	combout => \mem[0][2]~feeder_combout\);

-- Location: FF_X25_Y1_N31
\mem[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][2]~q\);

-- Location: IOIBUF_X28_Y0_N22
\IN_PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(2),
	o => \IN_PC[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N22
\mem~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~62_combout\ = (\press_en~input_o\ & \mem[6][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][2]~q\,
	combout => \mem~62_combout\);

-- Location: FF_X24_Y1_N23
\mem[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~62_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][2]~q\);

-- Location: LCCOMB_X24_Y1_N28
\mem~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~52_combout\ = (\press_en~input_o\ & ((\mem[5][2]~q\))) # (!\press_en~input_o\ & (\mem[7][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[7][2]~q\,
	datab => \press_en~input_o\,
	datac => \mem[5][2]~q\,
	combout => \mem~52_combout\);

-- Location: FF_X24_Y1_N29
\mem[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][2]~q\);

-- Location: LCCOMB_X24_Y1_N26
\mem~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~42_combout\ = (\press_en~input_o\ & ((\mem[4][2]~q\))) # (!\press_en~input_o\ & (\mem[6][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[6][2]~q\,
	datac => \press_en~input_o\,
	datad => \mem[4][2]~q\,
	combout => \mem~42_combout\);

-- Location: FF_X24_Y1_N27
\mem[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][2]~q\);

-- Location: LCCOMB_X24_Y1_N18
\mem~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~32_combout\ = (\press_en~input_o\ & ((\mem[3][2]~q\))) # (!\press_en~input_o\ & (\mem[5][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[5][2]~q\,
	datac => \press_en~input_o\,
	datad => \mem[3][2]~q\,
	combout => \mem~32_combout\);

-- Location: FF_X24_Y1_N19
\mem[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][2]~q\);

-- Location: LCCOMB_X24_Y1_N24
\mem~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~22_combout\ = (\press_en~input_o\ & ((\mem[2][2]~q\))) # (!\press_en~input_o\ & (\mem[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[4][2]~q\,
	datac => \press_en~input_o\,
	datad => \mem[2][2]~q\,
	combout => \mem~22_combout\);

-- Location: FF_X24_Y1_N25
\mem[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][2]~q\);

-- Location: LCCOMB_X25_Y1_N6
\mem~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~12_combout\ = (\press_en~input_o\ & (\mem[1][2]~q\)) # (!\press_en~input_o\ & ((\mem[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[1][2]~q\,
	datac => \press_en~input_o\,
	datad => \mem[3][2]~q\,
	combout => \mem~12_combout\);

-- Location: FF_X25_Y1_N7
\mem[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][2]~q\);

-- Location: LCCOMB_X25_Y1_N20
\mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~2_combout\ = (\press_en~input_o\ & (\mem[0][2]~q\)) # (!\press_en~input_o\ & ((\mem[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][2]~q\,
	datab => \mem[2][2]~q\,
	datac => \press_en~input_o\,
	combout => \mem~2_combout\);

-- Location: FF_X25_Y1_N21
\mem[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][2]~q\);

-- Location: LCCOMB_X25_Y1_N10
\OUT_PC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~5_combout\ = (\press_en~input_o\ & (\IN_PC[2]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_PC[2]~input_o\,
	datac => \press_en~input_o\,
	datad => \mem[1][2]~q\,
	combout => \OUT_PC~5_combout\);

-- Location: LCCOMB_X25_Y1_N22
\OUT_PC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~6_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~5_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][2]~q\,
	datab => \OUT_PC~1_combout\,
	datad => \OUT_PC~5_combout\,
	combout => \OUT_PC~6_combout\);

-- Location: FF_X25_Y1_N5
\OUT_PC[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[2]~reg0_q\);

-- Location: LCCOMB_X25_Y1_N8
\mem[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][3]~feeder_combout\ = \OUT_PC~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~8_combout\,
	combout => \mem[0][3]~feeder_combout\);

-- Location: FF_X25_Y1_N9
\mem[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][3]~q\);

-- Location: IOIBUF_X25_Y0_N1
\IN_PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(3),
	o => \IN_PC[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N4
\mem~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~63_combout\ = (\mem[6][3]~q\ & \press_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[6][3]~q\,
	datac => \press_en~input_o\,
	combout => \mem~63_combout\);

-- Location: FF_X24_Y1_N5
\mem[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][3]~q\);

-- Location: LCCOMB_X24_Y1_N30
\mem~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~53_combout\ = (\press_en~input_o\ & ((\mem[5][3]~q\))) # (!\press_en~input_o\ & (\mem[7][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[7][3]~q\,
	datac => \press_en~input_o\,
	datad => \mem[5][3]~q\,
	combout => \mem~53_combout\);

-- Location: FF_X24_Y1_N31
\mem[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][3]~q\);

-- Location: LCCOMB_X24_Y1_N12
\mem~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~43_combout\ = (\press_en~input_o\ & ((\mem[4][3]~q\))) # (!\press_en~input_o\ & (\mem[6][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[6][3]~q\,
	datab => \mem[4][3]~q\,
	datac => \press_en~input_o\,
	combout => \mem~43_combout\);

-- Location: FF_X24_Y1_N13
\mem[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][3]~q\);

-- Location: LCCOMB_X25_Y1_N12
\mem~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~33_combout\ = (\press_en~input_o\ & (\mem[3][3]~q\)) # (!\press_en~input_o\ & ((\mem[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[3][3]~q\,
	datac => \press_en~input_o\,
	datad => \mem[5][3]~q\,
	combout => \mem~33_combout\);

-- Location: FF_X25_Y1_N13
\mem[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][3]~q\);

-- Location: LCCOMB_X25_Y1_N24
\mem~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~23_combout\ = (\press_en~input_o\ & (\mem[2][3]~q\)) # (!\press_en~input_o\ & ((\mem[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[2][3]~q\,
	datac => \press_en~input_o\,
	datad => \mem[4][3]~q\,
	combout => \mem~23_combout\);

-- Location: FF_X25_Y1_N25
\mem[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][3]~q\);

-- Location: LCCOMB_X25_Y1_N16
\mem~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~13_combout\ = (\press_en~input_o\ & ((\mem[1][3]~q\))) # (!\press_en~input_o\ & (\mem[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[3][3]~q\,
	datad => \mem[1][3]~q\,
	combout => \mem~13_combout\);

-- Location: FF_X25_Y1_N17
\mem[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][3]~q\);

-- Location: LCCOMB_X25_Y1_N18
\mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~3_combout\ = (\press_en~input_o\ & (\mem[0][3]~q\)) # (!\press_en~input_o\ & ((\mem[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[0][3]~q\,
	datac => \press_en~input_o\,
	datad => \mem[2][3]~q\,
	combout => \mem~3_combout\);

-- Location: FF_X25_Y1_N19
\mem[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][3]~q\);

-- Location: LCCOMB_X25_Y1_N28
\OUT_PC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~7_combout\ = (\press_en~input_o\ & (\IN_PC[3]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_PC[3]~input_o\,
	datac => \press_en~input_o\,
	datad => \mem[1][3]~q\,
	combout => \OUT_PC~7_combout\);

-- Location: LCCOMB_X25_Y1_N4
\OUT_PC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~8_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~7_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_PC~1_combout\,
	datab => \mem[0][3]~q\,
	datad => \OUT_PC~7_combout\,
	combout => \OUT_PC~8_combout\);

-- Location: FF_X25_Y1_N23
\OUT_PC[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[3]~reg0_q\);

-- Location: LCCOMB_X9_Y3_N4
\mem[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][4]~feeder_combout\ = \OUT_PC~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~10_combout\,
	combout => \mem[0][4]~feeder_combout\);

-- Location: FF_X9_Y3_N5
\mem[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][4]~q\);

-- Location: IOIBUF_X5_Y0_N15
\IN_PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(4),
	o => \IN_PC[4]~input_o\);

-- Location: LCCOMB_X10_Y3_N18
\mem~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~64_combout\ = (\press_en~input_o\ & \mem[6][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][4]~q\,
	combout => \mem~64_combout\);

-- Location: FF_X10_Y3_N19
\mem[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~64_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][4]~q\);

-- Location: LCCOMB_X10_Y3_N0
\mem~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~54_combout\ = (\press_en~input_o\ & (\mem[5][4]~q\)) # (!\press_en~input_o\ & ((\mem[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[5][4]~q\,
	datac => \press_en~input_o\,
	datad => \mem[7][4]~q\,
	combout => \mem~54_combout\);

-- Location: FF_X10_Y3_N1
\mem[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][4]~q\);

-- Location: LCCOMB_X10_Y3_N8
\mem~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~44_combout\ = (\press_en~input_o\ & ((\mem[4][4]~q\))) # (!\press_en~input_o\ & (\mem[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[6][4]~q\,
	datac => \press_en~input_o\,
	datad => \mem[4][4]~q\,
	combout => \mem~44_combout\);

-- Location: FF_X10_Y3_N9
\mem[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][4]~q\);

-- Location: LCCOMB_X10_Y3_N24
\mem~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~34_combout\ = (\press_en~input_o\ & ((\mem[3][4]~q\))) # (!\press_en~input_o\ & (\mem[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[5][4]~q\,
	datad => \mem[3][4]~q\,
	combout => \mem~34_combout\);

-- Location: FF_X10_Y3_N25
\mem[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][4]~q\);

-- Location: LCCOMB_X9_Y3_N28
\mem~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~24_combout\ = (\press_en~input_o\ & (\mem[2][4]~q\)) # (!\press_en~input_o\ & ((\mem[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[2][4]~q\,
	datad => \mem[4][4]~q\,
	combout => \mem~24_combout\);

-- Location: FF_X9_Y3_N29
\mem[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][4]~q\);

-- Location: LCCOMB_X9_Y3_N16
\mem~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~14_combout\ = (\press_en~input_o\ & (\mem[1][4]~q\)) # (!\press_en~input_o\ & ((\mem[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[1][4]~q\,
	datad => \mem[3][4]~q\,
	combout => \mem~14_combout\);

-- Location: FF_X9_Y3_N17
\mem[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][4]~q\);

-- Location: LCCOMB_X9_Y3_N18
\mem~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~4_combout\ = (\press_en~input_o\ & (\mem[0][4]~q\)) # (!\press_en~input_o\ & ((\mem[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[0][4]~q\,
	datad => \mem[2][4]~q\,
	combout => \mem~4_combout\);

-- Location: FF_X9_Y3_N19
\mem[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][4]~q\);

-- Location: LCCOMB_X9_Y3_N12
\OUT_PC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~9_combout\ = (\press_en~input_o\ & (\IN_PC[4]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \IN_PC[4]~input_o\,
	datad => \mem[1][4]~q\,
	combout => \OUT_PC~9_combout\);

-- Location: LCCOMB_X9_Y3_N26
\OUT_PC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~10_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~9_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_PC~1_combout\,
	datab => \mem[0][4]~q\,
	datad => \OUT_PC~9_combout\,
	combout => \OUT_PC~10_combout\);

-- Location: FF_X9_Y3_N9
\OUT_PC[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[4]~reg0_q\);

-- Location: LCCOMB_X24_Y1_N2
\mem[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][5]~feeder_combout\ = \OUT_PC~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OUT_PC~12_combout\,
	combout => \mem[0][5]~feeder_combout\);

-- Location: FF_X24_Y1_N3
\mem[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][5]~q\);

-- Location: IOIBUF_X18_Y0_N22
\IN_PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(5),
	o => \IN_PC[5]~input_o\);

-- Location: LCCOMB_X24_Y1_N6
\mem~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~65_combout\ = (\press_en~input_o\ & \mem[6][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][5]~q\,
	combout => \mem~65_combout\);

-- Location: FF_X24_Y1_N7
\mem[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][5]~q\);

-- Location: LCCOMB_X24_Y1_N0
\mem~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~55_combout\ = (\press_en~input_o\ & (\mem[5][5]~q\)) # (!\press_en~input_o\ & ((\mem[7][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[5][5]~q\,
	datac => \press_en~input_o\,
	datad => \mem[7][5]~q\,
	combout => \mem~55_combout\);

-- Location: FF_X24_Y1_N1
\mem[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][5]~q\);

-- Location: LCCOMB_X24_Y1_N14
\mem~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~45_combout\ = (\press_en~input_o\ & (\mem[4][5]~q\)) # (!\press_en~input_o\ & ((\mem[6][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[4][5]~q\,
	datac => \press_en~input_o\,
	datad => \mem[6][5]~q\,
	combout => \mem~45_combout\);

-- Location: FF_X24_Y1_N15
\mem[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][5]~q\);

-- Location: LCCOMB_X24_Y1_N8
\mem~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~35_combout\ = (\press_en~input_o\ & ((\mem[3][5]~q\))) # (!\press_en~input_o\ & (\mem[5][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[5][5]~q\,
	datad => \mem[3][5]~q\,
	combout => \mem~35_combout\);

-- Location: FF_X24_Y1_N9
\mem[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][5]~q\);

-- Location: LCCOMB_X25_Y1_N2
\mem~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~25_combout\ = (\press_en~input_o\ & (\mem[2][5]~q\)) # (!\press_en~input_o\ & ((\mem[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[2][5]~q\,
	datac => \press_en~input_o\,
	datad => \mem[4][5]~q\,
	combout => \mem~25_combout\);

-- Location: FF_X25_Y1_N3
\mem[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][5]~q\);

-- Location: LCCOMB_X25_Y1_N26
\mem~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~15_combout\ = (\press_en~input_o\ & ((\mem[1][5]~q\))) # (!\press_en~input_o\ & (\mem[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[3][5]~q\,
	datac => \press_en~input_o\,
	datad => \mem[1][5]~q\,
	combout => \mem~15_combout\);

-- Location: FF_X25_Y1_N27
\mem[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][5]~q\);

-- Location: LCCOMB_X24_Y1_N20
\mem~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~5_combout\ = (\press_en~input_o\ & (\mem[0][5]~q\)) # (!\press_en~input_o\ & ((\mem[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[0][5]~q\,
	datac => \press_en~input_o\,
	datad => \mem[2][5]~q\,
	combout => \mem~5_combout\);

-- Location: FF_X24_Y1_N21
\mem[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][5]~q\);

-- Location: LCCOMB_X24_Y1_N10
\OUT_PC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~11_combout\ = (\press_en~input_o\ & (\IN_PC[5]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN_PC[5]~input_o\,
	datac => \press_en~input_o\,
	datad => \mem[1][5]~q\,
	combout => \OUT_PC~11_combout\);

-- Location: LCCOMB_X24_Y1_N16
\OUT_PC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~12_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~11_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[0][5]~q\,
	datac => \OUT_PC~1_combout\,
	datad => \OUT_PC~11_combout\,
	combout => \OUT_PC~12_combout\);

-- Location: FF_X24_Y1_N17
\OUT_PC[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_PC~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[5]~reg0_q\);

-- Location: LCCOMB_X17_Y3_N14
\mem[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][6]~feeder_combout\ = \OUT_PC~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OUT_PC~14_combout\,
	combout => \mem[0][6]~feeder_combout\);

-- Location: FF_X17_Y3_N15
\mem[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][6]~q\);

-- Location: IOIBUF_X18_Y0_N15
\IN_PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(6),
	o => \IN_PC[6]~input_o\);

-- Location: LCCOMB_X17_Y3_N22
\mem~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~66_combout\ = (\press_en~input_o\ & \mem[6][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datad => \mem[6][6]~q\,
	combout => \mem~66_combout\);

-- Location: FF_X17_Y3_N23
\mem[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~66_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][6]~q\);

-- Location: LCCOMB_X17_Y3_N12
\mem~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~56_combout\ = (\press_en~input_o\ & (\mem[5][6]~q\)) # (!\press_en~input_o\ & ((\mem[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[5][6]~q\,
	datab => \press_en~input_o\,
	datac => \mem[7][6]~q\,
	combout => \mem~56_combout\);

-- Location: FF_X17_Y3_N13
\mem[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][6]~q\);

-- Location: LCCOMB_X17_Y3_N26
\mem~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~46_combout\ = (\press_en~input_o\ & ((\mem[4][6]~q\))) # (!\press_en~input_o\ & (\mem[6][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[6][6]~q\,
	datab => \press_en~input_o\,
	datad => \mem[4][6]~q\,
	combout => \mem~46_combout\);

-- Location: FF_X17_Y3_N27
\mem[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][6]~q\);

-- Location: LCCOMB_X17_Y3_N16
\mem~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~36_combout\ = (\press_en~input_o\ & ((\mem[3][6]~q\))) # (!\press_en~input_o\ & (\mem[5][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[5][6]~q\,
	datad => \mem[3][6]~q\,
	combout => \mem~36_combout\);

-- Location: FF_X17_Y3_N17
\mem[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][6]~q\);

-- Location: LCCOMB_X17_Y3_N18
\mem~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~26_combout\ = (\press_en~input_o\ & ((\mem[2][6]~q\))) # (!\press_en~input_o\ & (\mem[4][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[4][6]~q\,
	datad => \mem[2][6]~q\,
	combout => \mem~26_combout\);

-- Location: FF_X17_Y3_N19
\mem[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][6]~q\);

-- Location: LCCOMB_X17_Y3_N28
\mem~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~16_combout\ = (\press_en~input_o\ & (\mem[1][6]~q\)) # (!\press_en~input_o\ & ((\mem[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[1][6]~q\,
	datad => \mem[3][6]~q\,
	combout => \mem~16_combout\);

-- Location: FF_X17_Y3_N29
\mem[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][6]~q\);

-- Location: LCCOMB_X17_Y3_N20
\mem~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~6_combout\ = (\press_en~input_o\ & (\mem[0][6]~q\)) # (!\press_en~input_o\ & ((\mem[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[0][6]~q\,
	datad => \mem[2][6]~q\,
	combout => \mem~6_combout\);

-- Location: FF_X17_Y3_N21
\mem[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][6]~q\);

-- Location: LCCOMB_X17_Y3_N10
\OUT_PC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~13_combout\ = (\press_en~input_o\ & (\IN_PC[6]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \IN_PC[6]~input_o\,
	datad => \mem[1][6]~q\,
	combout => \OUT_PC~13_combout\);

-- Location: LCCOMB_X17_Y3_N24
\OUT_PC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~14_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~13_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_PC~1_combout\,
	datac => \mem[0][6]~q\,
	datad => \OUT_PC~13_combout\,
	combout => \OUT_PC~14_combout\);

-- Location: FF_X17_Y3_N25
\OUT_PC[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_PC~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[6]~reg0_q\);

-- Location: LCCOMB_X9_Y3_N22
\mem[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][7]~feeder_combout\ = \OUT_PC~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUT_PC~16_combout\,
	combout => \mem[0][7]~feeder_combout\);

-- Location: FF_X9_Y3_N23
\mem[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][7]~q\);

-- Location: IOIBUF_X16_Y0_N8
\IN_PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(7),
	o => \IN_PC[7]~input_o\);

-- Location: LCCOMB_X10_Y3_N12
\mem~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~67_combout\ = (\press_en~input_o\ & \mem[6][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][7]~q\,
	combout => \mem~67_combout\);

-- Location: FF_X10_Y3_N13
\mem[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][7]~q\);

-- Location: LCCOMB_X10_Y3_N6
\mem~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~57_combout\ = (\press_en~input_o\ & (\mem[5][7]~q\)) # (!\press_en~input_o\ & ((\mem[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[5][7]~q\,
	datad => \mem[7][7]~q\,
	combout => \mem~57_combout\);

-- Location: FF_X10_Y3_N7
\mem[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][7]~q\);

-- Location: LCCOMB_X9_Y3_N6
\mem~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~47_combout\ = (\press_en~input_o\ & (\mem[4][7]~q\)) # (!\press_en~input_o\ & ((\mem[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[4][7]~q\,
	datad => \mem[6][7]~q\,
	combout => \mem~47_combout\);

-- Location: FF_X9_Y3_N7
\mem[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][7]~q\);

-- Location: LCCOMB_X9_Y3_N0
\mem~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~37_combout\ = (\press_en~input_o\ & (\mem[3][7]~q\)) # (!\press_en~input_o\ & ((\mem[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[3][7]~q\,
	datad => \mem[5][7]~q\,
	combout => \mem~37_combout\);

-- Location: FF_X9_Y3_N1
\mem[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][7]~q\);

-- Location: LCCOMB_X9_Y3_N14
\mem~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~27_combout\ = (\press_en~input_o\ & (\mem[2][7]~q\)) # (!\press_en~input_o\ & ((\mem[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \mem[2][7]~q\,
	datad => \mem[4][7]~q\,
	combout => \mem~27_combout\);

-- Location: FF_X9_Y3_N15
\mem[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][7]~q\);

-- Location: LCCOMB_X9_Y3_N30
\mem~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~17_combout\ = (\press_en~input_o\ & ((\mem[1][7]~q\))) # (!\press_en~input_o\ & (\mem[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datab => \mem[3][7]~q\,
	datac => \mem[1][7]~q\,
	combout => \mem~17_combout\);

-- Location: FF_X9_Y3_N31
\mem[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][7]~q\);

-- Location: LCCOMB_X9_Y3_N24
\mem~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~7_combout\ = (\press_en~input_o\ & (\mem[0][7]~q\)) # (!\press_en~input_o\ & ((\mem[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][7]~q\,
	datac => \mem[2][7]~q\,
	datad => \press_en~input_o\,
	combout => \mem~7_combout\);

-- Location: FF_X9_Y3_N25
\mem[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][7]~q\);

-- Location: LCCOMB_X9_Y3_N10
\OUT_PC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~15_combout\ = (\press_en~input_o\ & (\IN_PC[7]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datac => \IN_PC[7]~input_o\,
	datad => \mem[1][7]~q\,
	combout => \OUT_PC~15_combout\);

-- Location: LCCOMB_X9_Y3_N8
\OUT_PC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~16_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~15_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][7]~q\,
	datab => \OUT_PC~1_combout\,
	datad => \OUT_PC~15_combout\,
	combout => \OUT_PC~16_combout\);

-- Location: FF_X9_Y3_N27
\OUT_PC[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \OUT_PC~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[7]~reg0_q\);

-- Location: LCCOMB_X10_Y3_N2
\mem[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][8]~feeder_combout\ = \OUT_PC~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OUT_PC~18_combout\,
	combout => \mem[0][8]~feeder_combout\);

-- Location: FF_X10_Y3_N3
\mem[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][8]~q\);

-- Location: IOIBUF_X13_Y0_N1
\IN_PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(8),
	o => \IN_PC[8]~input_o\);

-- Location: LCCOMB_X9_Y3_N20
\mem~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~68_combout\ = (\press_en~input_o\ & \mem[6][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \press_en~input_o\,
	datad => \mem[6][8]~q\,
	combout => \mem~68_combout\);

-- Location: FF_X9_Y3_N21
\mem[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~68_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][8]~q\);

-- Location: LCCOMB_X10_Y3_N4
\mem~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~58_combout\ = (\press_en~input_o\ & (\mem[5][8]~q\)) # (!\press_en~input_o\ & ((\mem[7][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[5][8]~q\,
	datac => \press_en~input_o\,
	datad => \mem[7][8]~q\,
	combout => \mem~58_combout\);

-- Location: FF_X10_Y3_N5
\mem[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][8]~q\);

-- Location: LCCOMB_X10_Y3_N14
\mem~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~48_combout\ = (\press_en~input_o\ & (\mem[4][8]~q\)) # (!\press_en~input_o\ & ((\mem[6][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[4][8]~q\,
	datab => \press_en~input_o\,
	datac => \mem[6][8]~q\,
	combout => \mem~48_combout\);

-- Location: FF_X10_Y3_N15
\mem[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][8]~q\);

-- Location: LCCOMB_X10_Y3_N22
\mem~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~38_combout\ = (\press_en~input_o\ & (\mem[3][8]~q\)) # (!\press_en~input_o\ & ((\mem[5][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[3][8]~q\,
	datab => \press_en~input_o\,
	datac => \mem[5][8]~q\,
	combout => \mem~38_combout\);

-- Location: FF_X10_Y3_N23
\mem[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][8]~q\);

-- Location: LCCOMB_X10_Y3_N30
\mem~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~28_combout\ = (\press_en~input_o\ & ((\mem[2][8]~q\))) # (!\press_en~input_o\ & (\mem[4][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[4][8]~q\,
	datad => \mem[2][8]~q\,
	combout => \mem~28_combout\);

-- Location: FF_X10_Y3_N31
\mem[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][8]~q\);

-- Location: LCCOMB_X10_Y3_N28
\mem~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~18_combout\ = (\press_en~input_o\ & (\mem[1][8]~q\)) # (!\press_en~input_o\ & ((\mem[3][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[1][8]~q\,
	datab => \press_en~input_o\,
	datac => \mem[3][8]~q\,
	combout => \mem~18_combout\);

-- Location: FF_X10_Y3_N29
\mem[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][8]~q\);

-- Location: LCCOMB_X10_Y3_N16
\mem~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~8_combout\ = (\press_en~input_o\ & (\mem[0][8]~q\)) # (!\press_en~input_o\ & ((\mem[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem[0][8]~q\,
	datac => \press_en~input_o\,
	datad => \mem[2][8]~q\,
	combout => \mem~8_combout\);

-- Location: FF_X10_Y3_N17
\mem[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][8]~q\);

-- Location: LCCOMB_X10_Y3_N10
\OUT_PC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~17_combout\ = (\press_en~input_o\ & (\IN_PC[8]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \IN_PC[8]~input_o\,
	datad => \mem[1][8]~q\,
	combout => \OUT_PC~17_combout\);

-- Location: LCCOMB_X10_Y3_N20
\OUT_PC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~18_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~17_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT_PC~1_combout\,
	datab => \mem[0][8]~q\,
	datad => \OUT_PC~17_combout\,
	combout => \OUT_PC~18_combout\);

-- Location: FF_X10_Y3_N21
\OUT_PC[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_PC~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[8]~reg0_q\);

-- Location: LCCOMB_X4_Y3_N30
\mem[0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0][9]~feeder_combout\ = \OUT_PC~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OUT_PC~20_combout\,
	combout => \mem[0][9]~feeder_combout\);

-- Location: FF_X4_Y3_N31
\mem[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem[0][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][9]~q\);

-- Location: IOIBUF_X1_Y0_N15
\IN_PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(9),
	o => \IN_PC[9]~input_o\);

-- Location: LCCOMB_X4_Y3_N26
\mem~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~69_combout\ = (\press_en~input_o\ & \mem[6][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \press_en~input_o\,
	datad => \mem[6][9]~q\,
	combout => \mem~69_combout\);

-- Location: FF_X4_Y3_N27
\mem[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[7][9]~q\);

-- Location: LCCOMB_X4_Y3_N10
\mem~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~59_combout\ = (\press_en~input_o\ & ((\mem[5][9]~q\))) # (!\press_en~input_o\ & (\mem[7][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[7][9]~q\,
	datad => \mem[5][9]~q\,
	combout => \mem~59_combout\);

-- Location: FF_X4_Y3_N11
\mem[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[6][9]~q\);

-- Location: LCCOMB_X4_Y3_N18
\mem~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~49_combout\ = (\press_en~input_o\ & ((\mem[4][9]~q\))) # (!\press_en~input_o\ & (\mem[6][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[6][9]~q\,
	datab => \press_en~input_o\,
	datad => \mem[4][9]~q\,
	combout => \mem~49_combout\);

-- Location: FF_X4_Y3_N19
\mem[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[5][9]~q\);

-- Location: LCCOMB_X4_Y3_N2
\mem~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~39_combout\ = (\press_en~input_o\ & (\mem[3][9]~q\)) # (!\press_en~input_o\ & ((\mem[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[3][9]~q\,
	datad => \mem[5][9]~q\,
	combout => \mem~39_combout\);

-- Location: FF_X4_Y3_N3
\mem[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][9]~q\);

-- Location: LCCOMB_X4_Y3_N22
\mem~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~29_combout\ = (\press_en~input_o\ & (\mem[2][9]~q\)) # (!\press_en~input_o\ & ((\mem[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[2][9]~q\,
	datad => \mem[4][9]~q\,
	combout => \mem~29_combout\);

-- Location: FF_X4_Y3_N23
\mem[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][9]~q\);

-- Location: LCCOMB_X4_Y3_N8
\mem~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~19_combout\ = (\press_en~input_o\ & ((\mem[1][9]~q\))) # (!\press_en~input_o\ & (\mem[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \press_en~input_o\,
	datac => \mem[3][9]~q\,
	datad => \mem[1][9]~q\,
	combout => \mem~19_combout\);

-- Location: FF_X4_Y3_N9
\mem[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][9]~q\);

-- Location: LCCOMB_X4_Y3_N12
\mem~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~9_combout\ = (\press_en~input_o\ & (\mem[0][9]~q\)) # (!\press_en~input_o\ & ((\mem[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[0][9]~q\,
	datab => \mem[2][9]~q\,
	datac => \press_en~input_o\,
	combout => \mem~9_combout\);

-- Location: FF_X4_Y3_N13
\mem[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \OUT_PC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][9]~q\);

-- Location: LCCOMB_X4_Y3_N6
\OUT_PC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~19_combout\ = (\press_en~input_o\ & (\IN_PC[9]~input_o\)) # (!\press_en~input_o\ & ((\mem[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN_PC[9]~input_o\,
	datac => \press_en~input_o\,
	datad => \mem[1][9]~q\,
	combout => \OUT_PC~19_combout\);

-- Location: LCCOMB_X4_Y3_N28
\OUT_PC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_PC~20_combout\ = (\OUT_PC~1_combout\ & ((\OUT_PC~19_combout\))) # (!\OUT_PC~1_combout\ & (\mem[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUT_PC~1_combout\,
	datac => \mem[0][9]~q\,
	datad => \OUT_PC~19_combout\,
	combout => \OUT_PC~20_combout\);

-- Location: FF_X4_Y3_N29
\OUT_PC[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \OUT_PC~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT_PC[9]~reg0_q\);

ww_OUT_PC(0) <= \OUT_PC[0]~output_o\;

ww_OUT_PC(1) <= \OUT_PC[1]~output_o\;

ww_OUT_PC(2) <= \OUT_PC[2]~output_o\;

ww_OUT_PC(3) <= \OUT_PC[3]~output_o\;

ww_OUT_PC(4) <= \OUT_PC[4]~output_o\;

ww_OUT_PC(5) <= \OUT_PC[5]~output_o\;

ww_OUT_PC(6) <= \OUT_PC[6]~output_o\;

ww_OUT_PC(7) <= \OUT_PC[7]~output_o\;

ww_OUT_PC(8) <= \OUT_PC[8]~output_o\;

ww_OUT_PC(9) <= \OUT_PC[9]~output_o\;
END structure;


