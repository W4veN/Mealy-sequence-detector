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
-- Generated on "01/03/2021 15:23:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          detector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY detector_vhd_vec_tst IS
END detector_vhd_vec_tst;
ARCHITECTURE detector_arch OF detector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL x : STD_LOGIC;
COMPONENT detector
	PORT (
	clock : IN STD_LOGIC;
	R : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : detector
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	R => R,
	reset => reset,
	x => x
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
	WAIT FOR 80000 ps;
	x <= '1';
	WAIT FOR 80000 ps;
	x <= '0';
	WAIT FOR 80000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 80000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 40000 ps;
	x <= '0';
	WAIT FOR 40000 ps;
	x <= '1';
	WAIT FOR 80000 ps;
	x <= '0';
	WAIT FOR 80000 ps;
	x <= '1';
WAIT;
END PROCESS t_prcs_x;
END detector_arch;
