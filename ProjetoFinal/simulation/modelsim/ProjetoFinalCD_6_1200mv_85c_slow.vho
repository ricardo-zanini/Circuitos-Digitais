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

-- DATE "01/26/2024 16:27:14"

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

ENTITY 	ProjetoFinalCD IS
    PORT (
	hb : OUT std_logic_vector(6 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0);
	v : IN std_logic_vector(2 DOWNTO 0);
	w : IN std_logic_vector(1 DOWNTO 0);
	ck : IN std_logic;
	rst : IN std_logic;
	sel_mux : IN std_logic;
	ck_man : IN std_logic;
	d : IN std_logic_vector(3 DOWNTO 0)
	);
END ProjetoFinalCD;

-- Design Ports Information
-- hb[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck_man	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProjetoFinalCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hb : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_v : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_w : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ck : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_sel_mux : std_logic;
SIGNAL ww_ck_man : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst4~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hb[6]~output_o\ : std_logic;
SIGNAL \hb[5]~output_o\ : std_logic;
SIGNAL \hb[4]~output_o\ : std_logic;
SIGNAL \hb[3]~output_o\ : std_logic;
SIGNAL \hb[2]~output_o\ : std_logic;
SIGNAL \hb[1]~output_o\ : std_logic;
SIGNAL \hb[0]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \v[1]~input_o\ : std_logic;
SIGNAL \v[0]~input_o\ : std_logic;
SIGNAL \inst5|inst2|inst13|inst~2_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \sel_mux~input_o\ : std_logic;
SIGNAL \ck_man~input_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \inst|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|inst2~q\ : std_logic;
SIGNAL \inst|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst1|inst2~q\ : std_logic;
SIGNAL \inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|inst2~q\ : std_logic;
SIGNAL \inst|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|inst2~q\ : std_logic;
SIGNAL \inst|inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst4|inst2~q\ : std_logic;
SIGNAL \inst2|inst4~combout\ : std_logic;
SIGNAL \inst2|inst4~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst2|inst6~feeder_combout\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \inst3|inst2|inst9|inst12~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst6~q\ : std_logic;
SIGNAL \inst5|inst2|inst13|inst~3_combout\ : std_logic;
SIGNAL \v[2]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \inst3|inst1|inst6~feeder_combout\ : std_logic;
SIGNAL \inst3|inst1|inst6~q\ : std_logic;
SIGNAL \inst5|inst2|inst13|inst~4_combout\ : std_logic;
SIGNAL \inst5|inst2|inst9~combout\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \inst3|inst3|inst6~q\ : std_logic;
SIGNAL \inst5|inst1|inst8~combout\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \inst3|inst6|inst9|inst12~0_combout\ : std_logic;
SIGNAL \inst3|inst6|inst6~q\ : std_logic;
SIGNAL \inst5|inst|inst12|inst7|1~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst12|inst7|1~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst13|inst~6_combout\ : std_logic;
SIGNAL \inst5|inst2|inst13|inst~5_combout\ : std_logic;
SIGNAL \inst5|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst5|inst2|inst12|inst5~combout\ : std_logic;
SIGNAL \inst5|inst5|inst12|inst6~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst12|inst6~1_combout\ : std_logic;
SIGNAL \inst5|inst5|inst13|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst13|inst~1_combout\ : std_logic;
SIGNAL \inst5|inst|inst13|inst~3_combout\ : std_logic;
SIGNAL \inst5|inst|inst13|inst~2_combout\ : std_logic;
SIGNAL \inst5|inst|inst13|inst~5_combout\ : std_logic;
SIGNAL \inst5|inst|inst13|inst~4_combout\ : std_logic;
SIGNAL \inst5|inst1|inst13|inst~5_combout\ : std_logic;
SIGNAL \inst5|inst1|inst13|inst~2_combout\ : std_logic;
SIGNAL \inst5|inst1|inst13|inst~3_combout\ : std_logic;
SIGNAL \inst5|inst1|inst13|inst~4_combout\ : std_logic;
SIGNAL \inst6|inst59~0_combout\ : std_logic;
SIGNAL \inst6|inst7~0_combout\ : std_logic;
SIGNAL \inst6|inst52~0_combout\ : std_logic;
SIGNAL \inst6|inst52~1_combout\ : std_logic;
SIGNAL \inst6|inst39~0_combout\ : std_logic;
SIGNAL \inst6|inst44~2_combout\ : std_logic;
SIGNAL \inst6|inst36~0_combout\ : std_logic;
SIGNAL \inst6|inst36~1_combout\ : std_logic;
SIGNAL \inst6|inst30~0_combout\ : std_logic;
SIGNAL \inst6|inst7~1_combout\ : std_logic;
SIGNAL \inst6|inst30~1_combout\ : std_logic;
SIGNAL \inst6|inst23~0_combout\ : std_logic;
SIGNAL \inst6|inst23~1_combout\ : std_logic;
SIGNAL \inst6|inst21~0_combout\ : std_logic;
SIGNAL \inst6|inst21~1_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|ALT_INV_inst21~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst23~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst30~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst36~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst39~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst52~1_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst59~0_combout\ : std_logic;

BEGIN

hb <= ww_hb;
s <= ww_s;
ww_v <= v;
ww_w <= w;
ww_ck <= ck;
ww_rst <= rst;
ww_sel_mux <= sel_mux;
ww_ck_man <= ck_man;
ww_d <= d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\inst2|inst4~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|inst4~combout\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\inst6|ALT_INV_inst21~1_combout\ <= NOT \inst6|inst21~1_combout\;
\inst6|ALT_INV_inst23~1_combout\ <= NOT \inst6|inst23~1_combout\;
\inst6|ALT_INV_inst30~1_combout\ <= NOT \inst6|inst30~1_combout\;
\inst6|ALT_INV_inst36~1_combout\ <= NOT \inst6|inst36~1_combout\;
\inst6|ALT_INV_inst39~0_combout\ <= NOT \inst6|inst39~0_combout\;
\inst6|ALT_INV_inst52~1_combout\ <= NOT \inst6|inst52~1_combout\;
\inst6|ALT_INV_inst59~0_combout\ <= NOT \inst6|inst59~0_combout\;

-- Location: IOOBUF_X33_Y10_N9
\hb[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst59~0_combout\,
	devoe => ww_devoe,
	o => \hb[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\hb[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst52~1_combout\,
	devoe => ww_devoe,
	o => \hb[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\hb[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst39~0_combout\,
	devoe => ww_devoe,
	o => \hb[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\hb[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst36~1_combout\,
	devoe => ww_devoe,
	o => \hb[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\hb[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst30~1_combout\,
	devoe => ww_devoe,
	o => \hb[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\hb[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst23~1_combout\,
	devoe => ww_devoe,
	o => \hb[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\hb[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst21~1_combout\,
	devoe => ww_devoe,
	o => \hb[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\s[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst5|inst13|inst~1_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\s[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst2|inst13|inst~5_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\s[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst13|inst~4_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\s[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst|inst13|inst~4_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\v[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(1),
	o => \v[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\v[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(0),
	o => \v[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\inst5|inst2|inst13|inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst13|inst~2_combout\ = (\v[1]~input_o\ & \v[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v[1]~input_o\,
	datad => \v[0]~input_o\,
	combout => \inst5|inst2|inst13|inst~2_combout\);

-- Location: IOIBUF_X12_Y0_N8
\d[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\sel_mux~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_mux,
	o => \sel_mux~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\ck_man~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck_man,
	o => \ck_man~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\ck~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: LCCOMB_X32_Y12_N16
\inst|inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~0_combout\ = !\inst|inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2~q\,
	combout => \inst|inst|inst2~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst|inst|inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~feeder_combout\ = \inst|inst|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|inst2~0_combout\,
	combout => \inst|inst|inst2~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N15
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G17
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y12_N23
\inst|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \inst|inst|inst2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst2~q\);

-- Location: LCCOMB_X31_Y15_N24
\inst|inst1|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2~0_combout\ = !\inst|inst1|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst2~q\,
	combout => \inst|inst1|inst2~0_combout\);

-- Location: LCCOMB_X31_Y15_N20
\inst|inst1|inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2~feeder_combout\ = \inst|inst1|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst2~0_combout\,
	combout => \inst|inst1|inst2~feeder_combout\);

-- Location: FF_X31_Y15_N21
\inst|inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst|inst2~q\,
	d => \inst|inst1|inst2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|inst2~q\);

-- Location: LCCOMB_X31_Y15_N30
\inst|inst2|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~0_combout\ = !\inst|inst2|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|inst2~q\,
	combout => \inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst|inst2|inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~feeder_combout\ = \inst|inst2|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst|inst2|inst2~feeder_combout\);

-- Location: FF_X31_Y15_N15
\inst|inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1|inst2~q\,
	d => \inst|inst2|inst2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|inst2~q\);

-- Location: LCCOMB_X32_Y15_N30
\inst|inst3|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2~0_combout\ = !\inst|inst3|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|inst2~q\,
	combout => \inst|inst3|inst2~0_combout\);

-- Location: LCCOMB_X32_Y15_N20
\inst|inst3|inst2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2~feeder_combout\ = \inst|inst3|inst2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst2~0_combout\,
	combout => \inst|inst3|inst2~feeder_combout\);

-- Location: FF_X32_Y15_N21
\inst|inst3|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst2|inst2~q\,
	d => \inst|inst3|inst2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|inst2~q\);

-- Location: LCCOMB_X32_Y15_N24
\inst|inst4|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst4|inst2~0_combout\ = !\inst|inst4|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|inst2~q\,
	combout => \inst|inst4|inst2~0_combout\);

-- Location: FF_X32_Y15_N25
\inst|inst4|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst3|inst2~q\,
	d => \inst|inst4|inst2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|inst2~q\);

-- Location: LCCOMB_X32_Y15_N28
\inst2|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4~combout\ = LCELL((\sel_mux~input_o\ & (\ck_man~input_o\)) # (!\sel_mux~input_o\ & ((\inst|inst4|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux~input_o\,
	datac => \ck_man~input_o\,
	datad => \inst|inst4|inst2~q\,
	combout => \inst2|inst4~combout\);

-- Location: CLKCTRL_G6
\inst2|inst4~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|inst4~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|inst4~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y1_N24
\inst3|inst2|inst6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst6~feeder_combout\ = \d[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[2]~input_o\,
	combout => \inst3|inst2|inst6~feeder_combout\);

-- Location: IOIBUF_X14_Y0_N8
\w[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\w[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N16
\inst3|inst2|inst9|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst9|inst12~0_combout\ = (\w[1]~input_o\ & \w[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \inst3|inst2|inst9|inst12~0_combout\);

-- Location: FF_X22_Y1_N25
\inst3|inst2|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4~clkctrl_outclk\,
	d => \inst3|inst2|inst6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|inst2|inst9|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst2|inst6~q\);

-- Location: LCCOMB_X22_Y1_N28
\inst5|inst2|inst13|inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst13|inst~3_combout\ = (\inst3|inst2|inst6~q\ & (((\d[2]~input_o\ & !\v[1]~input_o\)) # (!\v[0]~input_o\))) # (!\inst3|inst2|inst6~q\ & (\v[1]~input_o\ & ((\d[2]~input_o\) # (\v[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \v[0]~input_o\,
	datac => \v[1]~input_o\,
	datad => \inst3|inst2|inst6~q\,
	combout => \inst5|inst2|inst13|inst~3_combout\);

-- Location: IOIBUF_X22_Y0_N1
\v[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v(2),
	o => \v[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\d[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N20
\inst3|inst1|inst6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst6~feeder_combout\ = \d[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[3]~input_o\,
	combout => \inst3|inst1|inst6~feeder_combout\);

-- Location: FF_X22_Y1_N21
\inst3|inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4~clkctrl_outclk\,
	d => \inst3|inst1|inst6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst3|inst2|inst9|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1|inst6~q\);

-- Location: LCCOMB_X22_Y1_N6
\inst5|inst2|inst13|inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst13|inst~4_combout\ = (\v[2]~input_o\ & (\inst5|inst2|inst13|inst~2_combout\ & ((\inst3|inst1|inst6~q\)))) # (!\v[2]~input_o\ & (((\inst5|inst2|inst13|inst~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~2_combout\,
	datab => \inst5|inst2|inst13|inst~3_combout\,
	datac => \v[2]~input_o\,
	datad => \inst3|inst1|inst6~q\,
	combout => \inst5|inst2|inst13|inst~4_combout\);

-- Location: LCCOMB_X22_Y1_N2
\inst5|inst2|inst9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst9~combout\ = (\v[2]~input_o\ & (\d[2]~input_o\ $ (\v[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \v[0]~input_o\,
	datac => \v[2]~input_o\,
	combout => \inst5|inst2|inst9~combout\);

-- Location: IOIBUF_X24_Y0_N1
\d[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: FF_X23_Y1_N11
\inst3|inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4~clkctrl_outclk\,
	asdata => \d[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst3|inst2|inst9|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3|inst6~q\);

-- Location: LCCOMB_X23_Y1_N0
\inst5|inst1|inst8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst8~combout\ = \v[0]~input_o\ $ (\d[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[0]~input_o\,
	datac => \d[1]~input_o\,
	combout => \inst5|inst1|inst8~combout\);

-- Location: IOIBUF_X14_Y0_N1
\d[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\inst3|inst6|inst9|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst6|inst9|inst12~0_combout\ = (\w[1]~input_o\ & ((\w[0]~input_o\ & (\d[0]~input_o\)) # (!\w[0]~input_o\ & ((\inst3|inst6|inst6~q\))))) # (!\w[1]~input_o\ & (((\inst3|inst6|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \w[1]~input_o\,
	datac => \inst3|inst6|inst6~q\,
	datad => \w[0]~input_o\,
	combout => \inst3|inst6|inst9|inst12~0_combout\);

-- Location: FF_X22_Y1_N1
\inst3|inst6|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst4~clkctrl_outclk\,
	d => \inst3|inst6|inst9|inst12~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6|inst6~q\);

-- Location: LCCOMB_X22_Y1_N18
\inst5|inst|inst12|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst12|inst7|1~0_combout\ = (\v[2]~input_o\ & ((\d[0]~input_o\ & ((!\inst3|inst6|inst6~q\))) # (!\d[0]~input_o\ & (!\v[0]~input_o\)))) # (!\v[2]~input_o\ & (((\inst3|inst6|inst6~q\) # (!\v[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \v[0]~input_o\,
	datac => \v[2]~input_o\,
	datad => \inst3|inst6|inst6~q\,
	combout => \inst5|inst|inst12|inst7|1~0_combout\);

-- Location: LCCOMB_X23_Y1_N24
\inst5|inst1|inst12|inst7|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst12|inst7|1~0_combout\ = (\inst3|inst3|inst6~q\ & (\v[2]~input_o\ & ((\inst5|inst1|inst8~combout\) # (!\inst5|inst|inst12|inst7|1~0_combout\)))) # (!\inst3|inst3|inst6~q\ & (!\inst5|inst|inst12|inst7|1~0_combout\ & 
-- ((\inst5|inst1|inst8~combout\) # (!\v[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3|inst6~q\,
	datab => \inst5|inst1|inst8~combout\,
	datac => \v[2]~input_o\,
	datad => \inst5|inst|inst12|inst7|1~0_combout\,
	combout => \inst5|inst1|inst12|inst7|1~0_combout\);

-- Location: LCCOMB_X23_Y1_N20
\inst5|inst2|inst13|inst~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst13|inst~6_combout\ = \inst5|inst2|inst9~combout\ $ (\inst3|inst2|inst6~q\ $ (\v[2]~input_o\ $ (\inst5|inst1|inst12|inst7|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst9~combout\,
	datab => \inst3|inst2|inst6~q\,
	datac => \v[2]~input_o\,
	datad => \inst5|inst1|inst12|inst7|1~0_combout\,
	combout => \inst5|inst2|inst13|inst~6_combout\);

-- Location: LCCOMB_X23_Y1_N22
\inst5|inst2|inst13|inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst13|inst~5_combout\ = (\inst5|inst2|inst13|inst~4_combout\) # ((!\inst5|inst2|inst13|inst~2_combout\ & (\v[2]~input_o\ & !\inst5|inst2|inst13|inst~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~2_combout\,
	datab => \inst5|inst2|inst13|inst~4_combout\,
	datac => \v[2]~input_o\,
	datad => \inst5|inst2|inst13|inst~6_combout\,
	combout => \inst5|inst2|inst13|inst~5_combout\);

-- Location: LCCOMB_X23_Y1_N30
\inst5|inst2|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst7~0_combout\ = \v[2]~input_o\ $ (\inst3|inst2|inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v[2]~input_o\,
	datad => \inst3|inst2|inst6~q\,
	combout => \inst5|inst2|inst7~0_combout\);

-- Location: LCCOMB_X22_Y1_N4
\inst5|inst2|inst12|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst12|inst5~combout\ = (\d[2]~input_o\ & ((\v[0]~input_o\) # (\v[2]~input_o\ $ (\inst3|inst2|inst6~q\)))) # (!\d[2]~input_o\ & ((\v[2]~input_o\ $ (\inst3|inst2|inst6~q\)) # (!\v[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \v[0]~input_o\,
	datac => \v[2]~input_o\,
	datad => \inst3|inst2|inst6~q\,
	combout => \inst5|inst2|inst12|inst5~combout\);

-- Location: LCCOMB_X22_Y1_N10
\inst5|inst5|inst12|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst12|inst6~0_combout\ = \d[3]~input_o\ $ (\v[0]~input_o\ $ (\inst5|inst2|inst12|inst5~combout\ $ (\inst3|inst1|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \v[0]~input_o\,
	datac => \inst5|inst2|inst12|inst5~combout\,
	datad => \inst3|inst1|inst6~q\,
	combout => \inst5|inst5|inst12|inst6~0_combout\);

-- Location: LCCOMB_X23_Y1_N16
\inst5|inst5|inst12|inst6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst12|inst6~1_combout\ = \inst5|inst5|inst12|inst6~0_combout\ $ (((\inst5|inst2|inst9~combout\ $ (\inst5|inst2|inst7~0_combout\)) # (!\inst5|inst1|inst12|inst7|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst9~combout\,
	datab => \inst5|inst1|inst12|inst7|1~0_combout\,
	datac => \inst5|inst2|inst7~0_combout\,
	datad => \inst5|inst5|inst12|inst6~0_combout\,
	combout => \inst5|inst5|inst12|inst6~1_combout\);

-- Location: LCCOMB_X22_Y1_N14
\inst5|inst5|inst13|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst13|inst~0_combout\ = (\inst3|inst1|inst6~q\ & (((\d[3]~input_o\ & !\v[1]~input_o\)) # (!\v[0]~input_o\))) # (!\inst3|inst1|inst6~q\ & (\v[1]~input_o\ & ((\d[3]~input_o\) # (\v[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \v[0]~input_o\,
	datac => \v[1]~input_o\,
	datad => \inst3|inst1|inst6~q\,
	combout => \inst5|inst5|inst13|inst~0_combout\);

-- Location: LCCOMB_X23_Y1_N6
\inst5|inst5|inst13|inst~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst13|inst~1_combout\ = (\v[2]~input_o\ & (!\inst5|inst2|inst13|inst~2_combout\ & (\inst5|inst5|inst12|inst6~1_combout\))) # (!\v[2]~input_o\ & (((\inst5|inst5|inst13|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~2_combout\,
	datab => \inst5|inst5|inst12|inst6~1_combout\,
	datac => \v[2]~input_o\,
	datad => \inst5|inst5|inst13|inst~0_combout\,
	combout => \inst5|inst5|inst13|inst~1_combout\);

-- Location: LCCOMB_X22_Y1_N12
\inst5|inst|inst13|inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst13|inst~3_combout\ = (\v[2]~input_o\ & ((\d[0]~input_o\ $ (\inst3|inst6|inst6~q\)))) # (!\v[2]~input_o\ & (\d[0]~input_o\ & (\v[1]~input_o\ $ (\inst3|inst6|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[1]~input_o\,
	datab => \v[2]~input_o\,
	datac => \d[0]~input_o\,
	datad => \inst3|inst6|inst6~q\,
	combout => \inst5|inst|inst13|inst~3_combout\);

-- Location: LCCOMB_X22_Y1_N22
\inst5|inst|inst13|inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst13|inst~2_combout\ = (\v[2]~input_o\ & (\v[1]~input_o\ & (\d[0]~input_o\ $ (\inst3|inst6|inst6~q\)))) # (!\v[2]~input_o\ & ((\d[0]~input_o\ & (\v[1]~input_o\)) # (!\d[0]~input_o\ & ((\inst3|inst6|inst6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[1]~input_o\,
	datab => \v[2]~input_o\,
	datac => \d[0]~input_o\,
	datad => \inst3|inst6|inst6~q\,
	combout => \inst5|inst|inst13|inst~2_combout\);

-- Location: LCCOMB_X23_Y1_N18
\inst5|inst|inst13|inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst13|inst~5_combout\ = (\v[0]~input_o\ & (\v[1]~input_o\ & ((\inst3|inst3|inst6~q\) # (!\v[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[0]~input_o\,
	datab => \v[2]~input_o\,
	datac => \v[1]~input_o\,
	datad => \inst3|inst3|inst6~q\,
	combout => \inst5|inst|inst13|inst~5_combout\);

-- Location: LCCOMB_X22_Y1_N30
\inst5|inst|inst13|inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst|inst13|inst~4_combout\ = (\inst5|inst|inst13|inst~2_combout\ & (((\inst5|inst|inst13|inst~3_combout\ & \inst5|inst|inst13|inst~5_combout\)) # (!\v[0]~input_o\))) # (!\inst5|inst|inst13|inst~2_combout\ & ((\inst5|inst|inst13|inst~3_combout\) # 
-- ((\inst5|inst|inst13|inst~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst13|inst~3_combout\,
	datab => \v[0]~input_o\,
	datac => \inst5|inst|inst13|inst~2_combout\,
	datad => \inst5|inst|inst13|inst~5_combout\,
	combout => \inst5|inst|inst13|inst~4_combout\);

-- Location: LCCOMB_X23_Y1_N28
\inst5|inst1|inst13|inst~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst13|inst~5_combout\ = \v[0]~input_o\ $ (\inst5|inst|inst12|inst7|1~0_combout\ $ (\d[1]~input_o\ $ (!\inst3|inst3|inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[0]~input_o\,
	datab => \inst5|inst|inst12|inst7|1~0_combout\,
	datac => \d[1]~input_o\,
	datad => \inst3|inst3|inst6~q\,
	combout => \inst5|inst1|inst13|inst~5_combout\);

-- Location: LCCOMB_X23_Y1_N12
\inst5|inst1|inst13|inst~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst13|inst~2_combout\ = (\v[2]~input_o\ & ((\inst5|inst2|inst13|inst~2_combout\ & (\inst3|inst2|inst6~q\)) # (!\inst5|inst2|inst13|inst~2_combout\ & ((\inst5|inst1|inst13|inst~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~2_combout\,
	datab => \inst3|inst2|inst6~q\,
	datac => \v[2]~input_o\,
	datad => \inst5|inst1|inst13|inst~5_combout\,
	combout => \inst5|inst1|inst13|inst~2_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst5|inst1|inst13|inst~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst13|inst~3_combout\ = (\inst3|inst3|inst6~q\ & (((!\v[1]~input_o\ & \d[1]~input_o\)) # (!\v[0]~input_o\))) # (!\inst3|inst3|inst6~q\ & (\v[1]~input_o\ & ((\d[1]~input_o\) # (\v[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v[1]~input_o\,
	datab => \d[1]~input_o\,
	datac => \v[0]~input_o\,
	datad => \inst3|inst3|inst6~q\,
	combout => \inst5|inst1|inst13|inst~3_combout\);

-- Location: LCCOMB_X23_Y1_N4
\inst5|inst1|inst13|inst~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst13|inst~4_combout\ = (\inst5|inst1|inst13|inst~2_combout\) # ((!\v[2]~input_o\ & \inst5|inst1|inst13|inst~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst13|inst~2_combout\,
	datab => \v[2]~input_o\,
	datac => \inst5|inst1|inst13|inst~3_combout\,
	combout => \inst5|inst1|inst13|inst~4_combout\);

-- Location: LCCOMB_X29_Y1_N0
\inst6|inst59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst59~0_combout\ = (\inst5|inst|inst13|inst~4_combout\ & ((\inst5|inst5|inst13|inst~1_combout\) # (\inst5|inst2|inst13|inst~5_combout\ $ (\inst5|inst1|inst13|inst~4_combout\)))) # (!\inst5|inst|inst13|inst~4_combout\ & 
-- ((\inst5|inst1|inst13|inst~4_combout\) # (\inst5|inst2|inst13|inst~5_combout\ $ (\inst5|inst5|inst13|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst59~0_combout\);

-- Location: LCCOMB_X29_Y1_N14
\inst6|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst7~0_combout\ = (!\inst5|inst2|inst13|inst~5_combout\ & (!\inst5|inst5|inst13|inst~1_combout\ & (!\inst5|inst|inst13|inst~4_combout\ & !\inst5|inst1|inst13|inst~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst7~0_combout\);

-- Location: LCCOMB_X29_Y1_N28
\inst6|inst52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst52~0_combout\ = \inst5|inst5|inst13|inst~1_combout\ $ (((\inst5|inst2|inst13|inst~5_combout\ & \inst5|inst1|inst13|inst~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datac => \inst5|inst5|inst13|inst~1_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst52~0_combout\);

-- Location: LCCOMB_X29_Y1_N18
\inst6|inst52~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst52~1_combout\ = (\inst6|inst7~0_combout\) # ((\inst5|inst2|inst13|inst~5_combout\ & ((!\inst6|inst52~0_combout\) # (!\inst5|inst|inst13|inst~4_combout\))) # (!\inst5|inst2|inst13|inst~5_combout\ & ((\inst6|inst52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst6|inst7~0_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst6|inst52~0_combout\,
	combout => \inst6|inst52~1_combout\);

-- Location: LCCOMB_X29_Y1_N8
\inst6|inst39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst39~0_combout\ = (\inst5|inst1|inst13|inst~4_combout\ & (((\inst5|inst5|inst13|inst~1_combout\) # (!\inst5|inst|inst13|inst~4_combout\)))) # (!\inst5|inst1|inst13|inst~4_combout\ & ((\inst5|inst2|inst13|inst~5_combout\ & 
-- (\inst5|inst5|inst13|inst~1_combout\)) # (!\inst5|inst2|inst13|inst~5_combout\ & ((!\inst5|inst|inst13|inst~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst39~0_combout\);

-- Location: LCCOMB_X23_Y1_N2
\inst6|inst44~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst44~2_combout\ = (!\inst5|inst5|inst13|inst~1_combout\ & ((\inst5|inst1|inst13|inst~2_combout\) # ((!\v[2]~input_o\ & \inst5|inst1|inst13|inst~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst13|inst~2_combout\,
	datab => \v[2]~input_o\,
	datac => \inst5|inst1|inst13|inst~3_combout\,
	datad => \inst5|inst5|inst13|inst~1_combout\,
	combout => \inst6|inst44~2_combout\);

-- Location: LCCOMB_X29_Y1_N10
\inst6|inst36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst36~0_combout\ = (\inst5|inst2|inst13|inst~5_combout\ & ((\inst5|inst|inst13|inst~4_combout\ & ((!\inst5|inst1|inst13|inst~4_combout\))) # (!\inst5|inst|inst13|inst~4_combout\ & (\inst5|inst5|inst13|inst~1_combout\)))) # 
-- (!\inst5|inst2|inst13|inst~5_combout\ & ((\inst5|inst1|inst13|inst~4_combout\ & ((\inst5|inst|inst13|inst~4_combout\))) # (!\inst5|inst1|inst13|inst~4_combout\ & (\inst5|inst5|inst13|inst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst36~0_combout\);

-- Location: LCCOMB_X29_Y1_N12
\inst6|inst36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst36~1_combout\ = (\inst6|inst7~0_combout\) # ((\inst6|inst36~0_combout\) # ((!\inst5|inst|inst13|inst~4_combout\ & \inst6|inst44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst13|inst~4_combout\,
	datab => \inst6|inst44~2_combout\,
	datac => \inst6|inst7~0_combout\,
	datad => \inst6|inst36~0_combout\,
	combout => \inst6|inst36~1_combout\);

-- Location: LCCOMB_X29_Y1_N16
\inst6|inst30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst30~0_combout\ = (\inst5|inst5|inst13|inst~1_combout\) # ((!\inst5|inst2|inst13|inst~5_combout\ & \inst5|inst|inst13|inst~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	combout => \inst6|inst30~0_combout\);

-- Location: LCCOMB_X29_Y1_N2
\inst6|inst7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst7~1_combout\ = (\inst5|inst2|inst13|inst~5_combout\ & (\inst5|inst5|inst13|inst~1_combout\ & (\inst5|inst|inst13|inst~4_combout\ & !\inst5|inst1|inst13|inst~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst7~1_combout\);

-- Location: LCCOMB_X29_Y1_N22
\inst6|inst30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst30~1_combout\ = (\inst6|inst7~1_combout\) # ((\inst6|inst30~0_combout\ & ((!\inst5|inst2|inst13|inst~5_combout\))) # (!\inst6|inst30~0_combout\ & ((\inst5|inst2|inst13|inst~5_combout\) # (!\inst5|inst1|inst13|inst~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst13|inst~4_combout\,
	datab => \inst6|inst30~0_combout\,
	datac => \inst5|inst2|inst13|inst~5_combout\,
	datad => \inst6|inst7~1_combout\,
	combout => \inst6|inst30~1_combout\);

-- Location: LCCOMB_X29_Y1_N20
\inst6|inst23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst23~0_combout\ = (\inst5|inst5|inst13|inst~1_combout\ & (\inst5|inst|inst13|inst~4_combout\ & \inst5|inst1|inst13|inst~4_combout\)) # (!\inst5|inst5|inst13|inst~1_combout\ & (\inst5|inst|inst13|inst~4_combout\ $ 
-- (\inst5|inst1|inst13|inst~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst23~0_combout\);

-- Location: LCCOMB_X29_Y1_N26
\inst6|inst23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst23~1_combout\ = (\inst6|inst7~1_combout\) # ((\inst5|inst2|inst13|inst~5_combout\ & (!\inst6|inst23~0_combout\ & !\inst5|inst5|inst13|inst~1_combout\)) # (!\inst5|inst2|inst13|inst~5_combout\ & ((!\inst5|inst5|inst13|inst~1_combout\) # 
-- (!\inst6|inst23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst6|inst23~0_combout\,
	datac => \inst5|inst5|inst13|inst~1_combout\,
	datad => \inst6|inst7~1_combout\,
	combout => \inst6|inst23~1_combout\);

-- Location: LCCOMB_X29_Y1_N24
\inst6|inst21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst21~0_combout\ = (\inst5|inst2|inst13|inst~5_combout\ & (\inst5|inst5|inst13|inst~1_combout\ $ (((\inst5|inst|inst13|inst~4_combout\ & !\inst5|inst1|inst13|inst~4_combout\))))) # (!\inst5|inst2|inst13|inst~5_combout\ & 
-- (\inst5|inst5|inst13|inst~1_combout\ & ((!\inst5|inst1|inst13|inst~4_combout\) # (!\inst5|inst|inst13|inst~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst13|inst~5_combout\,
	datab => \inst5|inst5|inst13|inst~1_combout\,
	datac => \inst5|inst|inst13|inst~4_combout\,
	datad => \inst5|inst1|inst13|inst~4_combout\,
	combout => \inst6|inst21~0_combout\);

-- Location: LCCOMB_X29_Y1_N30
\inst6|inst21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst21~1_combout\ = (\inst6|inst7~0_combout\) # ((\inst6|inst44~2_combout\) # (\inst6|inst21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst7~0_combout\,
	datac => \inst6|inst44~2_combout\,
	datad => \inst6|inst21~0_combout\,
	combout => \inst6|inst21~1_combout\);

ww_hb(6) <= \hb[6]~output_o\;

ww_hb(5) <= \hb[5]~output_o\;

ww_hb(4) <= \hb[4]~output_o\;

ww_hb(3) <= \hb[3]~output_o\;

ww_hb(2) <= \hb[2]~output_o\;

ww_hb(1) <= \hb[1]~output_o\;

ww_hb(0) <= \hb[0]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(0) <= \s[0]~output_o\;
END structure;


