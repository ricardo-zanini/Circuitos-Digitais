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

-- DATE "11/27/2023 20:31:31"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pratica06_cont_gen_4_bits IS
    PORT (
	q : OUT std_logic_vector(0 TO 3);
	d : IN std_logic_vector(0 TO 3);
	c1 : IN std_logic;
	c0 : IN std_logic;
	ck : IN std_logic;
	r : IN std_logic
	);
END Pratica06_cont_gen_4_bits;

-- Design Ports Information
-- q[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pratica06_cont_gen_4_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(0 TO 3);
SIGNAL ww_d : std_logic_vector(0 TO 3);
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL \r~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \inst|inst6~feeder_combout\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \r~inputclkctrl_outclk\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \inst|inst1|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \inst2|inst6~feeder_combout\ : std_logic;
SIGNAL \inst2|inst6~q\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \inst3|inst6~feeder_combout\ : std_logic;
SIGNAL \inst3|inst6~q\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \inst6|inst1|inst12~0_combout\ : std_logic;
SIGNAL \inst6|inst6~q\ : std_logic;
SIGNAL \ALT_INV_r~inputclkctrl_outclk\ : std_logic;

BEGIN

q <= ww_q;
ww_d <= d;
ww_c1 <= c1;
ww_c0 <= c0;
ww_ck <= ck;
ww_r <= r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \r~input_o\);

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\ALT_INV_r~inputclkctrl_outclk\ <= NOT \r~inputclkctrl_outclk\;

-- Location: IOOBUF_X20_Y0_N2
\q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst6~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst6~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\ck~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G17
\ck~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N1
\d[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N28
\inst|inst6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst6~feeder_combout\ = \d[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0]~input_o\,
	combout => \inst|inst6~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\r~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: CLKCTRL_G19
\r~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \r~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \r~inputclkctrl_outclk\);

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

-- Location: IOIBUF_X29_Y0_N1
\c0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: LCCOMB_X26_Y1_N4
\inst|inst1|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst12~0_combout\ = (\c1~input_o\ & \c0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1~input_o\,
	datad => \c0~input_o\,
	combout => \inst|inst1|inst12~0_combout\);

-- Location: FF_X22_Y1_N29
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|inst6~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \inst|inst1|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: IOIBUF_X22_Y0_N8
\d[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N14
\inst2|inst6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst6~feeder_combout\ = \d[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1]~input_o\,
	combout => \inst2|inst6~feeder_combout\);

-- Location: FF_X22_Y1_N15
\inst2|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|inst6~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \inst|inst1|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6~q\);

-- Location: IOIBUF_X29_Y0_N8
\d[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
\inst3|inst6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst6~feeder_combout\ = \d[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[2]~input_o\,
	combout => \inst3|inst6~feeder_combout\);

-- Location: FF_X26_Y1_N9
\inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|inst6~feeder_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	ena => \inst|inst1|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6~q\);

-- Location: IOIBUF_X26_Y0_N1
\d[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X26_Y1_N2
\inst6|inst1|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst1|inst12~0_combout\ = (\c1~input_o\ & ((\c0~input_o\ & (\d[3]~input_o\)) # (!\c0~input_o\ & ((\inst6|inst6~q\))))) # (!\c1~input_o\ & (((\inst6|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \c1~input_o\,
	datac => \inst6|inst6~q\,
	datad => \c0~input_o\,
	combout => \inst6|inst1|inst12~0_combout\);

-- Location: FF_X26_Y1_N3
\inst6|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|inst1|inst12~0_combout\,
	clrn => \ALT_INV_r~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst6~q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;

