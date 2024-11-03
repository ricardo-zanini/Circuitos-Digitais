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

-- DATE "11/27/2023 20:01:14"

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

ENTITY 	Pratica06_cont_gen_1bit IS
    PORT (
	r : IN std_logic;
	ck : IN std_logic;
	eand : IN std_logic;
	qant : IN std_logic;
	eor : IN std_logic;
	d : IN std_logic;
	c0 : IN std_logic;
	c1 : IN std_logic
	);
END Pratica06_cont_gen_1bit;

-- Design Ports Information
-- r	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eand	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qant	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eor	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pratica06_cont_gen_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_eand : std_logic;
SIGNAL ww_qant : std_logic;
SIGNAL ww_eor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \eand~input_o\ : std_logic;
SIGNAL \qant~input_o\ : std_logic;
SIGNAL \eor~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;

BEGIN

ww_r <= r;
ww_ck <= ck;
ww_eand <= eand;
ww_qant <= qant;
ww_eor <= eor;
ww_d <= d;
ww_c0 <= c0;
ww_c1 <= c1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X33_Y22_N8
\r~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\ck~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\eand~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_eand,
	o => \eand~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\qant~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_qant,
	o => \qant~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\eor~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_eor,
	o => \eor~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\d~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\c0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\c1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);
END structure;


