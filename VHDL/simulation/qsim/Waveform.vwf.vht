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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/05/2021 15:11:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ParkingIndicatorV0
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ParkingIndicatorV0_vhd_vec_tst IS
END ParkingIndicatorV0_vhd_vec_tst;
ARCHITECTURE ParkingIndicatorV0_arch OF ParkingIndicatorV0_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Green : STD_LOGIC;
SIGNAL Red : STD_LOGIC;
SIGNAL Segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Sw : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT ParkingIndicatorV0
	PORT (
	Green : BUFFER STD_LOGIC;
	Red : BUFFER STD_LOGIC;
	Segments : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Sw : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ParkingIndicatorV0
	PORT MAP (
-- list connections between master ports and signals
	Green => Green,
	Red => Red,
	Segments => Segments,
	Sw => Sw
	);
-- Sw[5]
t_prcs_Sw_5: PROCESS
BEGIN
	Sw(5) <= '0';
	WAIT FOR 20000 ps;
	Sw(5) <= '1';
	WAIT FOR 30000 ps;
	Sw(5) <= '0';
	WAIT FOR 230000 ps;
	Sw(5) <= '1';
	WAIT FOR 190000 ps;
	Sw(5) <= '0';
	WAIT FOR 120000 ps;
	Sw(5) <= '1';
	WAIT FOR 160000 ps;
	Sw(5) <= '0';
WAIT;
END PROCESS t_prcs_Sw_5;
-- Sw[4]
t_prcs_Sw_4: PROCESS
BEGIN
	Sw(4) <= '0';
	WAIT FOR 20000 ps;
	Sw(4) <= '1';
	WAIT FOR 60000 ps;
	Sw(4) <= '0';
	WAIT FOR 200000 ps;
	Sw(4) <= '1';
	WAIT FOR 190000 ps;
	Sw(4) <= '0';
	WAIT FOR 120000 ps;
	Sw(4) <= '1';
	WAIT FOR 160000 ps;
	Sw(4) <= '0';
WAIT;
END PROCESS t_prcs_Sw_4;
-- Sw[3]
t_prcs_Sw_3: PROCESS
BEGIN
	Sw(3) <= '0';
	WAIT FOR 20000 ps;
	Sw(3) <= '1';
	WAIT FOR 110000 ps;
	Sw(3) <= '0';
	WAIT FOR 150000 ps;
	Sw(3) <= '1';
	WAIT FOR 190000 ps;
	Sw(3) <= '0';
WAIT;
END PROCESS t_prcs_Sw_3;
-- Sw[2]
t_prcs_Sw_2: PROCESS
BEGIN
	Sw(2) <= '0';
	WAIT FOR 20000 ps;
	Sw(2) <= '1';
	WAIT FOR 180000 ps;
	Sw(2) <= '0';
	WAIT FOR 220000 ps;
	Sw(2) <= '1';
	WAIT FOR 250000 ps;
	Sw(2) <= '0';
WAIT;
END PROCESS t_prcs_Sw_2;
-- Sw[1]
t_prcs_Sw_1: PROCESS
BEGIN
	Sw(1) <= '0';
	WAIT FOR 20000 ps;
	Sw(1) <= '1';
	WAIT FOR 220000 ps;
	Sw(1) <= '0';
WAIT;
END PROCESS t_prcs_Sw_1;
-- Sw[0]
t_prcs_Sw_0: PROCESS
BEGIN
	Sw(0) <= '0';
	WAIT FOR 20000 ps;
	Sw(0) <= '1';
	WAIT FOR 290000 ps;
	Sw(0) <= '0';
WAIT;
END PROCESS t_prcs_Sw_0;
END ParkingIndicatorV0_arch;
