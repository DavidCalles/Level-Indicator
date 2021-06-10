-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/05/2021 15:12:01"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ParkingIndicatorV0 IS
    PORT (
	Sw : IN std_logic_vector(5 DOWNTO 0);
	Red : BUFFER std_logic;
	Green : BUFFER std_logic;
	Segments : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ParkingIndicatorV0;

-- Design Ports Information
-- Red	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Green	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segments[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParkingIndicatorV0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sw : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Red : std_logic;
SIGNAL ww_Green : std_logic;
SIGNAL ww_Segments : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Sw[2]~input_o\ : std_logic;
SIGNAL \Sw[0]~input_o\ : std_logic;
SIGNAL \Sw[4]~input_o\ : std_logic;
SIGNAL \Sw[1]~input_o\ : std_logic;
SIGNAL \Sw[3]~input_o\ : std_logic;
SIGNAL \Sw[5]~input_o\ : std_logic;
SIGNAL \Red~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sw[4]~input_o\ : std_logic;
SIGNAL \SevenSegments1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Red~0_combout\ : std_logic;

BEGIN

ww_Sw <= Sw;
Red <= ww_Red;
Green <= ww_Green;
Segments <= ww_Segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Sw[3]~input_o\ <= NOT \Sw[3]~input_o\;
\ALT_INV_Sw[2]~input_o\ <= NOT \Sw[2]~input_o\;
\ALT_INV_Sw[1]~input_o\ <= NOT \Sw[1]~input_o\;
\ALT_INV_Sw[0]~input_o\ <= NOT \Sw[0]~input_o\;
\ALT_INV_Sw[5]~input_o\ <= NOT \Sw[5]~input_o\;
\ALT_INV_Sw[4]~input_o\ <= NOT \Sw[4]~input_o\;
\SevenSegments1|ALT_INV_Mux1~0_combout\ <= NOT \SevenSegments1|Mux1~0_combout\;
\SevenSegments1|ALT_INV_Mux2~0_combout\ <= NOT \SevenSegments1|Mux2~0_combout\;
\SevenSegments1|ALT_INV_Mux4~0_combout\ <= NOT \SevenSegments1|Mux4~0_combout\;
\ALT_INV_Red~0_combout\ <= NOT \Red~0_combout\;

-- Location: IOOBUF_X89_Y6_N22
\Red~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Red~0_combout\,
	devoe => ww_devoe,
	o => ww_Red);

-- Location: IOOBUF_X52_Y0_N2
\Green~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Red~0_combout\,
	devoe => ww_devoe,
	o => ww_Green);

-- Location: IOOBUF_X89_Y8_N39
\Segments[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(0));

-- Location: IOOBUF_X89_Y11_N79
\Segments[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(1));

-- Location: IOOBUF_X89_Y11_N96
\Segments[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(2));

-- Location: IOOBUF_X89_Y4_N79
\Segments[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(3));

-- Location: IOOBUF_X89_Y13_N56
\Segments[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(4));

-- Location: IOOBUF_X89_Y13_N39
\Segments[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(5));

-- Location: IOOBUF_X89_Y4_N96
\Segments[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Segments(6));

-- Location: IOIBUF_X8_Y0_N35
\Sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(2),
	o => \Sw[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\Sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(0),
	o => \Sw[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\Sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(4),
	o => \Sw[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(1),
	o => \Sw[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\Sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(3),
	o => \Sw[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\Sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sw(5),
	o => \Sw[5]~input_o\);

-- Location: LABCELL_X83_Y4_N30
\Red~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Red~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (\Sw[2]~input_o\ & (\Sw[0]~input_o\ & (\Sw[4]~input_o\ & \Sw[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \Red~0_combout\);

-- Location: LABCELL_X83_Y4_N36
\SevenSegments1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux6~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))))) # (\Sw[2]~input_o\ & 
-- ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))))) ) ) ) # ( !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # 
-- (\Sw[4]~input_o\))) # (\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))))) ) ) ) # ( 
-- \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))) # (\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # 
-- (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))))) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & 
-- ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))) # (\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011101111110011111101110100101111110111010011110100110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N12
\SevenSegments1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux5~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # 
-- (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) ) ) ) # ( !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\) # ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) ) ) ) # ( \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( 
-- (!\Sw[2]~input_o\) # ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111011111111111111101111111011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux5~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\SevenSegments1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux4~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & (!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\))) ) ) ) # ( !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & 
-- (!\Sw[4]~input_o\ $ (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & (!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\))) ) ) ) # ( \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & 
-- ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & (!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\))) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & 
-- ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (\Sw[4]~input_o\ & \Sw[1]~input_o\)) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (!\Sw[1]~input_o\))))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & 
-- (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001101000011010001000000001101000100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N54
\SevenSegments1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux2~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # (\Sw[0]~input_o\))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\)))) ) ) ) # ( 
-- !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))))) # (\Sw[2]~input_o\ & (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # 
-- (\Sw[0]~input_o\))) ) ) ) # ( \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))))) # (\Sw[2]~input_o\ & 
-- (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # (\Sw[0]~input_o\))) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & (!\Sw[0]~input_o\ $ (!\Sw[4]~input_o\ $ (\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ 
-- $ (\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # (\Sw[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010111100101110111111110010111011111110111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N0
\SevenSegments1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux1~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & 
-- (!\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\))) ) ) ) # ( !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\)))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & 
-- ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) ) ) ) # ( \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\)))) # 
-- (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\))) # (\Sw[0]~input_o\ & (!\Sw[4]~input_o\ & !\Sw[1]~input_o\)))) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & (((\Sw[1]~input_o\) # 
-- (\Sw[4]~input_o\)) # (\Sw[0]~input_o\))) # (\Sw[2]~input_o\ & ((!\Sw[0]~input_o\) # ((!\Sw[4]~input_o\) # (!\Sw[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111110111111101110100011111110111010001110100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux1~0_combout\);

-- Location: LABCELL_X83_Y4_N6
\SevenSegments1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux0~0_combout\ = ( \Sw[3]~input_o\ & ( \Sw[5]~input_o\ ) ) # ( !\Sw[3]~input_o\ & ( \Sw[5]~input_o\ & ( (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # (\Sw[0]~input_o\)) # (\Sw[2]~input_o\) ) ) ) # ( \Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( 
-- (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # (\Sw[0]~input_o\)) # (\Sw[2]~input_o\) ) ) ) # ( !\Sw[3]~input_o\ & ( !\Sw[5]~input_o\ & ( (!\Sw[2]~input_o\ & ((!\Sw[0]~input_o\ & (\Sw[4]~input_o\ & \Sw[1]~input_o\)) # (\Sw[0]~input_o\ & ((\Sw[1]~input_o\) # 
-- (\Sw[4]~input_o\))))) # (\Sw[2]~input_o\ & (((\Sw[1]~input_o\) # (\Sw[4]~input_o\)) # (\Sw[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111111011111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sw[2]~input_o\,
	datab => \ALT_INV_Sw[0]~input_o\,
	datac => \ALT_INV_Sw[4]~input_o\,
	datad => \ALT_INV_Sw[1]~input_o\,
	datae => \ALT_INV_Sw[3]~input_o\,
	dataf => \ALT_INV_Sw[5]~input_o\,
	combout => \SevenSegments1|Mux0~0_combout\);

-- Location: MLABCELL_X25_Y28_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


