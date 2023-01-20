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

-- DATE "03/25/2020 20:15:06"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memory IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	IN_PC : IN std_logic_vector(9 DOWNTO 0);
	en : IN std_logic;
	OUT_DECODE : OUT std_logic_vector(13 DOWNTO 0)
	);
END memory;

-- Design Ports Information
-- OUT_DECODE[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[4]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[8]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[9]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[10]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[11]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[12]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT_DECODE[13]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[4]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[8]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_PC[9]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memory IS
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
SIGNAL ww_OUT_DECODE : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mux5_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT_DECODE[0]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[1]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[2]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[3]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[4]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[5]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[6]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[7]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[8]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[9]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[10]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[11]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[12]~output_o\ : std_logic;
SIGNAL \OUT_DECODE[13]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \OUT_DECODE[0]~0_combout\ : std_logic;
SIGNAL \IN_PC[0]~input_o\ : std_logic;
SIGNAL \IN_PC[1]~input_o\ : std_logic;
SIGNAL \IN_PC[2]~input_o\ : std_logic;
SIGNAL \IN_PC[3]~input_o\ : std_logic;
SIGNAL \IN_PC[4]~input_o\ : std_logic;
SIGNAL \IN_PC[5]~input_o\ : std_logic;
SIGNAL \IN_PC[6]~input_o\ : std_logic;
SIGNAL \IN_PC[7]~input_o\ : std_logic;
SIGNAL \IN_PC[8]~input_o\ : std_logic;
SIGNAL \IN_PC[9]~input_o\ : std_logic;
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux12_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux11_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux10_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux9_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux8_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux7_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux6_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux5_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux4_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux3_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux2_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux1_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_IN_PC <= IN_PC;
ww_en <= en;
OUT_DECODE <= ww_OUT_DECODE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux5_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IN_PC[9]~input_o\ & \IN_PC[8]~input_o\ & \IN_PC[7]~input_o\ & \IN_PC[6]~input_o\ & \IN_PC[5]~input_o\ & \IN_PC[4]~input_o\ & \IN_PC[3]~input_o\ & \IN_PC[2]~input_o\ & \IN_PC[1]~input_o\ & 
\IN_PC[0]~input_o\);

\Mux10_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Mux11_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Mux12_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Mux13_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Mux5_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Mux6_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Mux7_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Mux8_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Mux9_rtl_0|auto_generated|ram_block1a0\ <= \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IN_PC[9]~input_o\ & \IN_PC[8]~input_o\ & \IN_PC[7]~input_o\ & \IN_PC[6]~input_o\ & \IN_PC[5]~input_o\ & \IN_PC[4]~input_o\ & \IN_PC[3]~input_o\ & \IN_PC[2]~input_o\ & \IN_PC[1]~input_o\ & 
\IN_PC[0]~input_o\);

\Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Mux1_rtl_0|auto_generated|ram_block1a0\ <= \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Mux2_rtl_0|auto_generated|ram_block1a0\ <= \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Mux3_rtl_0|auto_generated|ram_block1a0\ <= \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Mux4_rtl_0|auto_generated|ram_block1a0\ <= \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X16_Y24_N9
\OUT_DECODE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\OUT_DECODE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\OUT_DECODE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\OUT_DECODE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\OUT_DECODE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\OUT_DECODE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\OUT_DECODE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\OUT_DECODE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[7]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\OUT_DECODE[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \OUT_DECODE[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\OUT_DECODE[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[9]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\OUT_DECODE[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[10]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\OUT_DECODE[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\OUT_DECODE[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1_rtl_0|auto_generated|ram_block1a0\,
	devoe => ww_devoe,
	o => \OUT_DECODE[12]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\OUT_DECODE[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \OUT_DECODE[13]~output_o\);

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

-- Location: IOIBUF_X13_Y0_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X13_Y1_N8
\OUT_DECODE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OUT_DECODE[0]~0_combout\ = (\en~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \reset~input_o\,
	combout => \OUT_DECODE[0]~0_combout\);

-- Location: IOIBUF_X28_Y24_N1
\IN_PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(0),
	o => \IN_PC[0]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\IN_PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(1),
	o => \IN_PC[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\IN_PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(2),
	o => \IN_PC[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\IN_PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(3),
	o => \IN_PC[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\IN_PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(4),
	o => \IN_PC[4]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\IN_PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(5),
	o => \IN_PC[5]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\IN_PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(6),
	o => \IN_PC[6]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\IN_PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(7),
	o => \IN_PC[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\IN_PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(8),
	o => \IN_PC[8]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\IN_PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_PC(9),
	o => \IN_PC[9]~input_o\);

-- Location: M9K_X27_Y20_N0
\Mux5_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"008B0F5F7FD8700E0F1B8FC3827165E3F9F40E40211309C072402CBDBC5FC1C82432693C0E49058F1BDDCEFA1C82432588E920B201FCBC5C0FE1C80422508E900B201F73D1C8F81C0383C5E0B1380C04B5DA8EC46331303F6A2C1D88C6626167836236167FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7C3C01094003C",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.memory6.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux5_rtl_0|altsyncram_aa01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \OUT_DECODE[0]~0_combout\,
	portaaddr => \Mux5_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux5_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y21_N0
\Mux0_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000482A150A8381004080400C04090542A150702008100801808120A8542A0E0401020100301024150A8542A0E0401000030004806150A8542A0E0401000030004806150A8542A0E040100004000100A150880028000000C22120005000000900C2A000D07C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87",
	mem_init3 => X"C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F8",
	mem_init2 => X"7C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F",
	mem_init1 => X"87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0",
	mem_init0 => X"F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C2A00028000600",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.memory1.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux0_rtl_0|altsyncram_5a01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \OUT_DECODE[0]~0_combout\,
	portaaddr => \Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_OUT_DECODE(0) <= \OUT_DECODE[0]~output_o\;

ww_OUT_DECODE(1) <= \OUT_DECODE[1]~output_o\;

ww_OUT_DECODE(2) <= \OUT_DECODE[2]~output_o\;

ww_OUT_DECODE(3) <= \OUT_DECODE[3]~output_o\;

ww_OUT_DECODE(4) <= \OUT_DECODE[4]~output_o\;

ww_OUT_DECODE(5) <= \OUT_DECODE[5]~output_o\;

ww_OUT_DECODE(6) <= \OUT_DECODE[6]~output_o\;

ww_OUT_DECODE(7) <= \OUT_DECODE[7]~output_o\;

ww_OUT_DECODE(8) <= \OUT_DECODE[8]~output_o\;

ww_OUT_DECODE(9) <= \OUT_DECODE[9]~output_o\;

ww_OUT_DECODE(10) <= \OUT_DECODE[10]~output_o\;

ww_OUT_DECODE(11) <= \OUT_DECODE[11]~output_o\;

ww_OUT_DECODE(12) <= \OUT_DECODE[12]~output_o\;

ww_OUT_DECODE(13) <= \OUT_DECODE[13]~output_o\;
END structure;


