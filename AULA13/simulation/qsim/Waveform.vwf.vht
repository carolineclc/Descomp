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
-- Generated on "12/12/2023 01:48:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TopLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TopLevel_vhd_vec_tst IS
END TopLevel_vhd_vec_tst;
ARCHITECTURE TopLevel_arch OF TopLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inspectEndRD : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL inspectEndRS : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL inspectEndRT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL inspectInstru : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inspectR0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inspectR1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inspectR2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT TopLevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DATA_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inspectEndRD : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	inspectEndRS : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	inspectEndRT : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	inspectInstru : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inspectR0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inspectR1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inspectR2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DATA_OUT => DATA_OUT,
	inspectEndRD => inspectEndRD,
	inspectEndRS => inspectEndRS,
	inspectEndRT => inspectEndRT,
	inspectInstru => inspectInstru,
	inspectR0 => inspectR0,
	inspectR1 => inspectR1,
	inspectR2 => inspectR2,
	KEY => KEY
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END TopLevel_arch;
