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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/02/2023 10:22:06"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_wirecell_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida[6]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida[4]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \REG_LEDR7downto0|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \REG_LEDR7downto0|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \REG_LEDR7downto0|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_LEDR7downto0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~584_combout\ <= NOT \RAM1|ram~584_combout\;
\RAM1|ALT_INV_ram~580_combout\ <= NOT \RAM1|ram~580_combout\;
\RAM1|ALT_INV_ram~576_combout\ <= NOT \RAM1|ram~576_combout\;
\RAM1|ALT_INV_ram~572_combout\ <= NOT \RAM1|ram~572_combout\;
\RAM1|ALT_INV_ram~568_combout\ <= NOT \RAM1|ram~568_combout\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DEC_Instruction_IN|Equal10~1_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\ <= NOT \CPU|DEC_Instruction_IN|saida[6]~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;

-- Location: IOOBUF_X0_Y19_N5
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y20_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y21_N39
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y21_N22
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y21_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR7downto0|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X10_Y0_N76
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LEDR8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y21_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF_LEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X6_Y22_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X7_Y22_N33
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X7_Y22_N27
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2)) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X7_Y22_N51
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(3) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(3)) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111111000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X7_Y22_N30
\CPU|DEC_Instruction_IN|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|Equal10~0_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DEC_Instruction_IN|Equal10~0_combout\);

-- Location: FF_X6_Y22_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N27
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X6_Y22_N38
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y22_N12
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X6_Y22_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y22_N15
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) 
-- ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y22_N9
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X6_Y22_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N33
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT[2]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001011111101000000101111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X5_Y22_N57
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X7_Y22_N21
\ROM1|memROM~4_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_wirecell_combout\ = ( !\ROM1|memROM~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~4_wirecell_combout\);

-- Location: FF_X6_Y22_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X6_Y22_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: FF_X6_Y22_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X6_Y22_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: FF_X6_Y22_N37
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X6_Y22_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: FF_X6_Y22_N40
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X6_Y22_N42
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

-- Location: FF_X6_Y22_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X6_Y22_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X6_Y22_N6
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X6_Y22_N47
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X6_Y22_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X6_Y22_N49
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X6_Y22_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X6_Y22_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X6_Y22_N54
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\);

-- Location: LABCELL_X7_Y22_N0
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000001010000001100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X6_Y22_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \CPU|DEC_Instruction_IN|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X6_Y22_N18
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X7_Y22_N15
\CPU|DEC_Instruction_IN|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|Equal10~1_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_Instruction_IN|Equal10~1_combout\);

-- Location: LABCELL_X7_Y22_N54
\CPU|DEC_Instruction_IN|saida[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida[6]~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_Instruction_IN|saida[6]~0_combout\);

-- Location: LABCELL_X5_Y22_N48
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM1|ram~554_combout\);

-- Location: FF_X6_Y22_N5
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X5_Y22_N45
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~553_combout\);

-- Location: LABCELL_X6_Y22_N3
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \RAM1|ram~553_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM1|ram~15_q\)))) # (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \RAM1|ram~15_q\)) # (\ROM1|memROM~0_combout\ & 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( !\RAM1|ram~553_combout\ & ( (\RAM1|ram~15_q\ & ((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000001111010110000000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	dataf => \RAM1|ALT_INV_ram~553_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: LABCELL_X6_Y22_N0
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~550_combout\ & ( (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: LABCELL_X7_Y22_N39
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (\ROM1|memROM~1_combout\ & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~555_combout\);

-- Location: FF_X5_Y22_N17
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X5_Y22_N15
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \RAM1|ram~23_q\ & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\) # ((!\ROM1|memROM~1_combout\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( \RAM1|ram~23_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM1|memROM~1_combout\) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \RAM1|ALT_INV_ram~23_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X6_Y22_N24
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~556_combout\ & ( (!\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~10_combout\)) # (\ROM1|memROM~4_combout\ & ((\RAM1|ram~552_combout\))))) ) ) # ( !\RAM1|ram~556_combout\ & ( 
-- (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~9_combout\ & \RAM1|ram~552_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000010000000101100001000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \RAM1|ALT_INV_ram~552_combout\,
	dataf => \RAM1|ALT_INV_ram~556_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: LABCELL_X6_Y21_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y21_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (!\ROM1|memROM~4_combout\)))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~542_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (!\ROM1|memROM~4_combout\)))) 
-- ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001011010100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X5_Y22_N3
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~11_combout\ & !\ROM1|memROM~4_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~4_combout\ & ((\RAM1|ram~23_q\))) # (\ROM1|memROM~4_combout\ & 
-- (\RAM1|ram~15_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: LABCELL_X5_Y21_N39
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~551_combout\ & ( !\ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~551_combout\,
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X5_Y21_N18
\CPU|MUX1_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~527_combout\ & ( (!\ROM1|memROM~4_combout\ & \CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~527_combout\ & ( 
-- (!\ROM1|memROM~4_combout\) # (!\CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\RAM1|ram~527_combout\ & ( (!\ROM1|memROM~4_combout\ & \CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\RAM1|ram~527_combout\ & ( (!\ROM1|memROM~4_combout\ & \CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~527_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X7_Y22_N6
\CPU|DEC_Instruction_IN|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida[4]~1_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~6_combout\ $ (\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|DEC_Instruction_IN|saida[4]~1_combout\);

-- Location: LABCELL_X7_Y22_N57
\CPU|DEC_Instruction_IN|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida~2_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~8_combout\) ) ) # ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~6_combout\ $ (\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_Instruction_IN|saida~2_combout\);

-- Location: FF_X6_Y21_N35
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[0]~0_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X5_Y22_N54
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \comb~2_combout\);

-- Location: FF_X5_Y21_N10
\REG_LEDR7downto0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(0));

-- Location: FF_X5_Y22_N23
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X5_Y22_N21
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\ & \RAM1|ram~16_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (\RAM1|ram~16_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # ((!\RAM1|ram~553_combout\) # (!\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RAM1|ALT_INV_ram~553_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \RAM1|ALT_INV_ram~16_q\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM1|ram~528_combout\);

-- Location: FF_X5_Y22_N55
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X5_Y22_N12
\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( \RAM1|ram~24_q\ & ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\) # ((!\ROM1|memROM~1_combout\) # (\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) ) # ( \RAM1|ram~24_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- ((!\CPU|PC|DOUT[2]~DUPLICATE_q\) # ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (!\ROM1|memROM~1_combout\))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~584_combout\);

-- Location: LABCELL_X5_Y21_N6
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~4_combout\ & ( \RAM1|ram~584_combout\ & ( (\RAM1|ram~528_combout\ & !\ROM1|memROM~10_combout\) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \RAM1|ram~584_combout\ & ( !\ROM1|memROM~10_combout\ ) ) ) # ( 
-- \ROM1|memROM~4_combout\ & ( !\RAM1|ram~584_combout\ & ( (\RAM1|ram~528_combout\ & !\ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~528_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~584_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X5_Y21_N12
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~529_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: LABCELL_X6_Y21_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~543_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~2_combout\)))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGA|DOUT\(1) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~543_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (\ROM1|memROM~2_combout\)))) 
-- ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_ram~543_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X5_Y21_N57
\CPU|MUX1_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~529_combout\ & ( (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & \ROM1|memROM~2_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~529_combout\ & ( 
-- (!\CPU|DEC_Instruction_IN|saida[6]~0_combout\) # (\ROM1|memROM~2_combout\) ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\RAM1|ram~529_combout\ & ( (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & \ROM1|memROM~2_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( 
-- !\RAM1|ram~529_combout\ & ( (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & \ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[1]~1_combout\);

-- Location: FF_X6_Y21_N37
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[1]~1_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X5_Y22_N31
\REG_LEDR7downto0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(1));

-- Location: FF_X6_Y21_N8
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X6_Y21_N6
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: FF_X7_Y22_N5
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X7_Y22_N3
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X6_Y21_N9
\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( \RAM1|ram~530_combout\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~531_combout\))) ) ) # ( !\RAM1|ram~530_combout\ & ( (\RAM1|ram~531_combout\ & (!\ROM1|memROM~10_combout\ & 
-- \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~531_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~580_combout\);

-- Location: LABCELL_X6_Y21_N0
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~580_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~580_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X6_Y21_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGA|DOUT\(2) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~544_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~9_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGA|DOUT\(2) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~544_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)))) 
-- ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X7_Y21_N21
\CPU|MUX1_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[2]~2_combout\ = ( \CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \ROM1|memROM~9_combout\ ) ) # ( !\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( (\RAM1|ram~580_combout\ & !\ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~580_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X6_Y21_N41
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[2]~2_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: LABCELL_X5_Y21_N48
\REG_LEDR7downto0|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR7downto0|DOUT[2]~feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \REG_LEDR7downto0|DOUT[2]~feeder_combout\);

-- Location: FF_X5_Y21_N49
\REG_LEDR7downto0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR7downto0|DOUT[2]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(2));

-- Location: FF_X6_Y22_N11
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X7_Y22_N9
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: FF_X6_Y22_N23
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X6_Y22_N21
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X6_Y21_N18
\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \RAM1|ram~532_combout\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~533_combout\))) ) ) # ( !\RAM1|ram~532_combout\ & ( (\ROM1|memROM~4_combout\ & (\RAM1|ram~533_combout\ & 
-- !\ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~533_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|ram~576_combout\);

-- Location: LABCELL_X6_Y21_N3
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \RAM1|ram~576_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~576_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: LABCELL_X6_Y21_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGA|DOUT\(3) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~545_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGA|DOUT\(3) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~545_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X7_Y21_N9
\CPU|MUX1_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[3]~3_combout\ = ( \ROM1|memROM~9_combout\ & ( \CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \ROM1|memROM~11_combout\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \ROM1|memROM~11_combout\ 
-- ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \RAM1|ram~576_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~576_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[3]~3_combout\);

-- Location: FF_X6_Y21_N43
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[3]~3_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X5_Y21_N16
\REG_LEDR7downto0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(3));

-- Location: FF_X7_Y21_N2
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X7_Y21_N0
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \RAM1|ram~27_q\ & ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: FF_X7_Y21_N26
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X7_Y21_N24
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \RAM1|ram~19_q\ & ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X6_Y21_N12
\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = ( \RAM1|ram~535_combout\ & ( (!\ROM1|memROM~10_combout\ & ((\RAM1|ram~534_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~535_combout\ & ( (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~4_combout\ & 
-- \RAM1|ram~534_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~534_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~572_combout\);

-- Location: LABCELL_X6_Y21_N21
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( \RAM1|ram~572_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~572_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: LABCELL_X6_Y21_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGA|DOUT\(4) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~546_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~9_combout\)))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGA|DOUT\(4) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~546_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)))) 
-- ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101101001101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X6_Y21_N15
\CPU|MUX1_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[4]~4_combout\ = ( \RAM1|ram~572_combout\ & ( !\ROM1|memROM~9_combout\ $ (\CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) ) # ( !\RAM1|ram~572_combout\ & ( (\ROM1|memROM~9_combout\ & \CPU|DEC_Instruction_IN|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~572_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[4]~4_combout\);

-- Location: FF_X6_Y21_N46
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[4]~4_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X5_Y21_N43
\REG_LEDR7downto0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(4));

-- Location: FF_X5_Y21_N2
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X5_Y21_N0
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \RAM1|ram~20_q\ & ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: FF_X6_Y22_N29
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y22_N27
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: LABCELL_X5_Y21_N45
\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \RAM1|ram~537_combout\ & ( \RAM1|ram~536_combout\ & ( !\ROM1|memROM~10_combout\ ) ) ) # ( !\RAM1|ram~537_combout\ & ( \RAM1|ram~536_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~4_combout\) ) ) ) # ( 
-- \RAM1|ram~537_combout\ & ( !\RAM1|ram~536_combout\ & ( (!\ROM1|memROM~10_combout\ & \ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM1|ALT_INV_ram~537_combout\,
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~568_combout\);

-- Location: LABCELL_X6_Y21_N27
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~568_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~568_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: LABCELL_X6_Y21_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~547_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~547_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X5_Y21_N27
\CPU|MUX1_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[5]~5_combout\ = ( \RAM1|ram~568_combout\ & ( \CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \ROM1|memROM~10_combout\ ) ) ) # ( !\RAM1|ram~568_combout\ & ( \CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( \ROM1|memROM~10_combout\ ) 
-- ) ) # ( \RAM1|ram~568_combout\ & ( !\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ( !\ROM1|memROM~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~568_combout\,
	dataf => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[5]~5_combout\);

-- Location: FF_X6_Y21_N49
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[5]~5_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X5_Y21_N23
\REG_LEDR7downto0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(5));

-- Location: FF_X5_Y22_N26
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X5_Y22_N24
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~29_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X5_Y22_N53
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X5_Y22_N51
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X5_Y22_N9
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~10_combout\ & ((\ROM1|memROM~4_combout\) # (\RAM1|ram~538_combout\))) ) ) # ( !\RAM1|ram~539_combout\ & ( (\RAM1|ram~538_combout\ & (!\ROM1|memROM~4_combout\ & 
-- !\ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~538_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: LABCELL_X6_Y21_N24
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \RAM1|ram~564_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~564_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: LABCELL_X6_Y21_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGA|DOUT\(6) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~548_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~9_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGA|DOUT\(6) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~548_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (\ROM1|memROM~9_combout\)))) 
-- ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101101001110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datab => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X5_Y22_N18
\CPU|MUX1_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[6]~6_combout\ = ( \RAM1|ram~564_combout\ & ( !\CPU|DEC_Instruction_IN|saida[6]~0_combout\ $ (\ROM1|memROM~9_combout\) ) ) # ( !\RAM1|ram~564_combout\ & ( (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & \ROM1|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~564_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[6]~6_combout\);

-- Location: FF_X6_Y21_N53
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[6]~6_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: LABCELL_X5_Y21_N30
\REG_LEDR7downto0|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR7downto0|DOUT[6]~feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \REG_LEDR7downto0|DOUT[6]~feeder_combout\);

-- Location: FF_X5_Y21_N31
\REG_LEDR7downto0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR7downto0|DOUT[6]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(6));

-- Location: FF_X5_Y22_N41
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X5_Y22_N39
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: FF_X5_Y22_N8
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X5_Y22_N6
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~11_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM1|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X5_Y22_N42
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \RAM1|ram~540_combout\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~541_combout\))) ) ) # ( !\RAM1|ram~540_combout\ & ( (\RAM1|ram~541_combout\ & (!\ROM1|memROM~10_combout\ & 
-- \ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~541_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: LABCELL_X5_Y22_N0
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \RAM1|ram~560_combout\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~560_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: LABCELL_X6_Y21_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGA|DOUT\(7) ) + ( !\CPU|DEC_Instruction_IN|Equal10~1_combout\ $ (((!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\RAM1|ram~549_combout\))) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & 
-- (\ROM1|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111101011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \CPU|DEC_Instruction_IN|ALT_INV_Equal10~1_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_ram~549_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X5_Y22_N36
\CPU|MUX1_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[7]~7_combout\ = ( \RAM1|ram~560_combout\ & ( (!\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & (!\ROM1|memROM~9_combout\)) # (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & ((\ROM1|memROM~10_combout\))) ) ) # ( !\RAM1|ram~560_combout\ 
-- & ( (\CPU|DEC_Instruction_IN|saida[6]~0_combout\ & \ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU|DEC_Instruction_IN|ALT_INV_saida[6]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~560_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[7]~7_combout\);

-- Location: FF_X6_Y21_N55
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|MUX1_ULA|saida_MUX[7]~7_combout\,
	sload => \CPU|DEC_Instruction_IN|saida[4]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: LABCELL_X5_Y21_N33
\REG_LEDR7downto0|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR7downto0|DOUT[7]~feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \REG_LEDR7downto0|DOUT[7]~feeder_combout\);

-- Location: FF_X5_Y21_N34
\REG_LEDR7downto0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \REG_LEDR7downto0|DOUT[7]~feeder_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(7));

-- Location: LABCELL_X7_Y22_N36
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X5_Y22_N30
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X7_Y22_N18
\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\ROM1|memROM~1_combout\ & !\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\ROM1|memROM~1_combout\ & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010010000100110001001000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|process_0~1_combout\);

-- Location: LABCELL_X7_Y22_N42
\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \FF_LEDR8|DOUT~q\ & ( \RAM1|process_0~1_combout\ & ( (!\RAM1|process_0~0_combout\) # ((!\comb~0_combout\) # ((!\ROM1|memROM~5_combout\) # (\CPU|REGA|DOUT\(0)))) ) ) ) # ( !\FF_LEDR8|DOUT~q\ & ( \RAM1|process_0~1_combout\ & ( 
-- (\RAM1|process_0~0_combout\ & (\comb~0_combout\ & (\ROM1|memROM~5_combout\ & \CPU|REGA|DOUT\(0)))) ) ) ) # ( \FF_LEDR8|DOUT~q\ & ( !\RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	datae => \FF_LEDR8|ALT_INV_DOUT~q\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

-- Location: FF_X7_Y22_N43
\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

-- Location: LABCELL_X7_Y22_N24
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (\RAM1|process_0~1_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X7_Y21_N33
\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \FF_LEDR9|DOUT~q\ & ( \comb~1_combout\ & ( (!\ROM1|memROM~2_combout\) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\FF_LEDR9|DOUT~q\ & ( \comb~1_combout\ & ( (\CPU|REGA|DOUT\(0) & \ROM1|memROM~2_combout\) ) ) ) # ( \FF_LEDR9|DOUT~q\ & ( 
-- !\comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \FF_LEDR9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

-- Location: FF_X7_Y21_N34
\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

-- Location: IOIBUF_X38_Y0_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X36_Y45_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X48_Y12_N0
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


