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
-- Generated on "09/26/2023 22:42:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toplevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toplevel_vhd_vec_tst IS
END toplevel_vhd_vec_tst;
ARCHITECTURE toplevel_arch OF toplevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL EntradaB_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OpULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Palavra_Controle : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL RegistradorA : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT toplevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	EntradaB_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OpULA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Palavra_Controle : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	RegistradorA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : toplevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	EntradaB_ULA => EntradaB_ULA,
	KEY => KEY,
	OpULA => OpULA,
	Palavra_Controle => Palavra_Controle,
	PC_OUT => PC_OUT,
	RegistradorA => RegistradorA
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 40000 ps;
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 11
	LOOP
		KEY(0) <= '1';
		WAIT FOR 40000 ps;
		KEY(0) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;
END toplevel_arch;
