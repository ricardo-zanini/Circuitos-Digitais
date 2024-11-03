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

-- DATE "11/05/2023 13:35:34"

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

ENTITY 	Pratica04_Bloco_Aritmetico IS
    PORT (
	cout : OUT std_logic;
	c0 : IN std_logic;
	c1 : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END Pratica04_Bloco_Aritmetico;

-- Design Ports Information
-- cout	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pratica04_Bloco_Aritmetico IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \inst|inst5~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \inst1|inst2~combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \inst1|inst1~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \inst2|inst|inst7|1~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst7|1~0_combout\ : std_logic;
SIGNAL \inst2|inst3|inst7|1~0_combout\ : std_logic;
SIGNAL \inst2|inst4|inst7|1~0_combout\ : std_logic;
SIGNAL \inst2|inst4|inst6~combout\ : std_logic;
SIGNAL \inst2|inst3|inst6~combout\ : std_logic;
SIGNAL \inst2|inst2|inst6~combout\ : std_logic;
SIGNAL \inst2|inst|inst6~combout\ : std_logic;

BEGIN

cout <= ww_cout;
ww_c0 <= c0;
ww_c1 <= c1;
ww_a <= a;
ww_b <= b;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X22_Y0_N2
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4|inst7|1~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4|inst6~combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3|inst6~combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|inst6~combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst6~combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\c0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\c1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: LCCOMB_X26_Y1_N24
\inst|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5~combout\ = (\a[3]~input_o\ & \c1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[3]~input_o\,
	datad => \c1~input_o\,
	combout => \inst|inst5~combout\);

-- Location: IOIBUF_X33_Y16_N22
\b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N26
\inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst2~combout\ = \b[2]~input_o\ $ (\c0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datad => \c0~input_o\,
	combout => \inst1|inst2~combout\);

-- Location: IOIBUF_X24_Y0_N1
\b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N12
\inst1|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst1~combout\ = \b[1]~input_o\ $ (\c0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datad => \c0~input_o\,
	combout => \inst1|inst1~combout\);

-- Location: IOIBUF_X22_Y0_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X26_Y1_N6
\inst2|inst|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst7|1~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ & ((\c1~input_o\)))) # (!\b[0]~input_o\ & (((\c0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \c0~input_o\,
	datac => \b[0]~input_o\,
	datad => \c1~input_o\,
	combout => \inst2|inst|inst7|1~0_combout\);

-- Location: LCCOMB_X26_Y1_N0
\inst2|inst2|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst7|1~0_combout\ = (\inst1|inst1~combout\ & ((\inst2|inst|inst7|1~0_combout\) # ((\c1~input_o\ & \a[1]~input_o\)))) # (!\inst1|inst1~combout\ & (\c1~input_o\ & (\a[1]~input_o\ & \inst2|inst|inst7|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1~combout\,
	datab => \c1~input_o\,
	datac => \a[1]~input_o\,
	datad => \inst2|inst|inst7|1~0_combout\,
	combout => \inst2|inst2|inst7|1~0_combout\);

-- Location: LCCOMB_X26_Y1_N2
\inst2|inst3|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst7|1~0_combout\ = (\inst1|inst2~combout\ & ((\inst2|inst2|inst7|1~0_combout\) # ((\c1~input_o\ & \a[2]~input_o\)))) # (!\inst1|inst2~combout\ & (\c1~input_o\ & (\a[2]~input_o\ & \inst2|inst2|inst7|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~input_o\,
	datab => \a[2]~input_o\,
	datac => \inst1|inst2~combout\,
	datad => \inst2|inst2|inst7|1~0_combout\,
	combout => \inst2|inst3|inst7|1~0_combout\);

-- Location: LCCOMB_X26_Y1_N4
\inst2|inst4|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst7|1~0_combout\ = (\inst|inst5~combout\ & ((\inst2|inst3|inst7|1~0_combout\) # (\c0~input_o\ $ (\b[3]~input_o\)))) # (!\inst|inst5~combout\ & (\inst2|inst3|inst7|1~0_combout\ & (\c0~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~input_o\,
	datab => \inst|inst5~combout\,
	datac => \b[3]~input_o\,
	datad => \inst2|inst3|inst7|1~0_combout\,
	combout => \inst2|inst4|inst7|1~0_combout\);

-- Location: LCCOMB_X26_Y1_N30
\inst2|inst4|inst6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst6~combout\ = \c0~input_o\ $ (\inst|inst5~combout\ $ (\b[3]~input_o\ $ (\inst2|inst3|inst7|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~input_o\,
	datab => \inst|inst5~combout\,
	datac => \b[3]~input_o\,
	datad => \inst2|inst3|inst7|1~0_combout\,
	combout => \inst2|inst4|inst6~combout\);

-- Location: LCCOMB_X26_Y1_N8
\inst2|inst3|inst6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst6~combout\ = \inst1|inst2~combout\ $ (\inst2|inst2|inst7|1~0_combout\ $ (((\c1~input_o\ & \a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1~input_o\,
	datab => \a[2]~input_o\,
	datac => \inst1|inst2~combout\,
	datad => \inst2|inst2|inst7|1~0_combout\,
	combout => \inst2|inst3|inst6~combout\);

-- Location: LCCOMB_X26_Y1_N10
\inst2|inst2|inst6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst6~combout\ = \inst1|inst1~combout\ $ (\inst2|inst|inst7|1~0_combout\ $ (((\c1~input_o\ & \a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1~combout\,
	datab => \c1~input_o\,
	datac => \a[1]~input_o\,
	datad => \inst2|inst|inst7|1~0_combout\,
	combout => \inst2|inst2|inst6~combout\);

-- Location: LCCOMB_X26_Y1_N28
\inst2|inst|inst6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst6~combout\ = \b[0]~input_o\ $ (((\a[0]~input_o\ & \c1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => \c1~input_o\,
	combout => \inst2|inst|inst6~combout\);

ww_cout <= \cout~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;

