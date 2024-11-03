-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/05/2023 13:13:31"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pratica04_Full_Adder IS
    PORT (
	sum : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	cout : OUT std_logic
	);
END Pratica04_Full_Adder;

-- Design Ports Information
-- sum	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pratica04_Full_Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \sum~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst7|1~0_combout\ : std_logic;

BEGIN

sum <= ww_sum;
ww_a <= a;
ww_b <= b;
ww_c <= c;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\sum~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~0_combout\,
	devoe => ww_devoe,
	o => \sum~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|1~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = \a~input_o\ $ (\c~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \c~input_o\,
	datad => \b~input_o\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X8_Y1_N2
\inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|1~0_combout\ = (\a~input_o\ & ((\c~input_o\) # (\b~input_o\))) # (!\a~input_o\ & (\c~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \c~input_o\,
	datad => \b~input_o\,
	combout => \inst7|1~0_combout\);

ww_sum <= \sum~output_o\;

ww_cout <= \cout~output_o\;
END structure;


