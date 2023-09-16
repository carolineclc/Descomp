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

-- DATE "09/15/2023 22:08:00"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(5 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DEC1|Equal6~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DEC1|Equal6~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \RAM1|ram~85_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~84_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \DEC1|Equal6~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DEC1|saida~0_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \DEC1|Equal6~0_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~86_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~87_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~81_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~88_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~82_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~89_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~83_combout\ : std_logic;
SIGNAL \RAM1|ram~90_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
Palavra_Controle <= ww_Palavra_Controle;
EntradaB_ULA <= ww_EntradaB_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA|DOUT[2]~DUPLICATE_q\;
\DEC1|ALT_INV_Equal6~3_combout\ <= NOT \DEC1|Equal6~3_combout\;
\DEC1|ALT_INV_Equal6~2_combout\ <= NOT \DEC1|Equal6~2_combout\;
\DEC1|ALT_INV_Equal6~1_combout\ <= NOT \DEC1|Equal6~1_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\RAM1|ALT_INV_ram~90_combout\ <= NOT \RAM1|ram~90_combout\;
\RAM1|ALT_INV_ram~89_combout\ <= NOT \RAM1|ram~89_combout\;
\RAM1|ALT_INV_ram~88_combout\ <= NOT \RAM1|ram~88_combout\;
\RAM1|ALT_INV_ram~87_combout\ <= NOT \RAM1|ram~87_combout\;
\RAM1|ALT_INV_ram~86_combout\ <= NOT \RAM1|ram~86_combout\;
\DEC1|ALT_INV_Equal6~0_combout\ <= NOT \DEC1|Equal6~0_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\RAM1|ALT_INV_ram~83_combout\ <= NOT \RAM1|ram~83_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~82_combout\ <= NOT \RAM1|ram~82_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~81_combout\ <= NOT \RAM1|ram~81_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);

-- Location: IOOBUF_X34_Y0_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X33_Y0_N59
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X33_Y0_N42
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X33_Y0_N76
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X38_Y0_N2
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X34_Y0_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X38_Y0_N19
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X38_Y0_N36
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X36_Y0_N53
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X23_Y0_N93
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X23_Y0_N42
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X25_Y0_N36
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X24_Y0_N53
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X24_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X34_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X33_Y0_N93
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X24_Y0_N36
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X40_Y0_N59
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X36_Y0_N36
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X34_Y0_N53
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X11_Y0_N2
\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(1));

-- Location: IOOBUF_X40_Y0_N42
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X36_Y0_N19
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X22_Y0_N53
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X36_Y0_N2
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Equal6~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X25_Y0_N19
\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(0));

-- Location: IOOBUF_X25_Y0_N2
\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(1));

-- Location: IOOBUF_X25_Y0_N53
\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(2));

-- Location: IOOBUF_X29_Y0_N53
\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(3));

-- Location: IOOBUF_X29_Y0_N36
\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(4));

-- Location: IOOBUF_X29_Y0_N19
\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(5));

-- Location: IOOBUF_X29_Y0_N2
\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(6));

-- Location: IOOBUF_X24_Y0_N2
\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(7));

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

-- Location: MLABCELL_X34_Y3_N0
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\PC|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X31_Y3_N25
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X32_Y3_N31
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X32_Y3_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X32_Y3_N32
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y3_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X32_Y3_N35
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X32_Y3_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X32_Y3_N38
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X32_Y3_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X32_Y3_N41
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X32_Y3_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X32_Y3_N44
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X32_Y3_N47
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X32_Y3_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X32_Y3_N46
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y3_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X32_Y3_N50
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X32_Y3_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\);

-- Location: FF_X32_Y3_N53
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X32_Y3_N12
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(4) & (!\PC|DOUT\(8) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X32_Y3_N6
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X32_Y3_N57
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (!\PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X32_Y3_N24
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X32_Y3_N21
\DEC1|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal6~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC1|Equal6~2_combout\);

-- Location: LABCELL_X32_Y3_N54
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X31_Y2_N57
\DEC1|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal6~3_combout\ = ( !\PC|DOUT\(3) & ( \ROM1|memROM~0_combout\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC1|Equal6~3_combout\);

-- Location: FF_X31_Y3_N26
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X31_Y3_N18
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X31_Y3_N6
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(7) & ( \ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X31_Y2_N3
\RAM1|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~85_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & \DEC1|Equal6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \DEC1|ALT_INV_Equal6~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~85_combout\);

-- Location: FF_X31_Y2_N13
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X31_Y2_N15
\RAM1|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~84_combout\ = ( \DEC1|Equal6~3_combout\ & ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \DEC1|ALT_INV_Equal6~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~84_combout\);

-- Location: FF_X31_Y3_N8
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X32_Y3_N27
\DEC1|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal6~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (\PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC1|Equal6~1_combout\);

-- Location: LABCELL_X31_Y3_N0
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~2_combout\ & ( ((\RAM1|ram~25_q\ & !\ROM1|memROM~3_combout\)) # (\DEC1|Equal6~1_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~17_q\ & !\DEC1|Equal6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000001000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \DEC1|ALT_INV_Equal6~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X31_Y3_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\DEC1|Equal6~2_combout\) # ((!\ROM1|memROM~5_combout\ & !\ROM1|memROM~4_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X31_Y3_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1|saida_MUX[0]~0_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1|saida_MUX[0]~0_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X31_Y2_N33
\DEC1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|saida~0_combout\ = ( !\PC|DOUT\(3) & ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT[0]~DUPLICATE_q\) # ((!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC1|saida~0_combout\);

-- Location: FF_X31_Y3_N35
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: FF_X31_Y2_N55
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X31_Y2_N31
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X31_Y3_N27
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = ( \DEC1|Equal6~1_combout\ & ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~3_combout\ & \PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\DEC1|Equal6~1_combout\ & ( \ROM1|memROM~2_combout\ & ( (\RAM1|ram~26_q\ & !\ROM1|memROM~3_combout\) 
-- ) ) ) # ( \DEC1|Equal6~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~3_combout\ & \PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\DEC1|Equal6~1_combout\ & ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000111101010000010100000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datab => \RAM1|ALT_INV_ram~18_q\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \DEC1|ALT_INV_Equal6~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X31_Y3_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[1]~1_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[1]~1_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: FF_X31_Y3_N38
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X31_Y2_N25
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: FF_X31_Y3_N41
\REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X31_Y3_N14
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X31_Y3_N12
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|ram~19_q\ & ( \ROM1|memROM~2_combout\ & ( (!\DEC1|Equal6~1_combout\ & (\RAM1|ram~27_q\ & ((!\ROM1|memROM~3_combout\)))) # (\DEC1|Equal6~1_combout\ & (((!\PC|DOUT[1]~DUPLICATE_q\ & \ROM1|memROM~3_combout\)))) ) ) ) # 
-- ( !\RAM1|ram~19_q\ & ( \ROM1|memROM~2_combout\ & ( (!\DEC1|Equal6~1_combout\ & (\RAM1|ram~27_q\ & ((!\ROM1|memROM~3_combout\)))) # (\DEC1|Equal6~1_combout\ & (((!\PC|DOUT[1]~DUPLICATE_q\ & \ROM1|memROM~3_combout\)))) ) ) ) # ( \RAM1|ram~19_q\ & ( 
-- !\ROM1|memROM~2_combout\ & ( (!\DEC1|Equal6~1_combout\ & ((!\ROM1|memROM~3_combout\))) # (\DEC1|Equal6~1_combout\ & (!\PC|DOUT[1]~DUPLICATE_q\ & \ROM1|memROM~3_combout\)) ) ) ) # ( !\RAM1|ram~19_q\ & ( !\ROM1|memROM~2_combout\ & ( 
-- (!\PC|DOUT[1]~DUPLICATE_q\ & (\DEC1|Equal6~1_combout\ & \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100111100000000110001010000000011000101000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \DEC1|ALT_INV_Equal6~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X31_Y3_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1|saida_MUX[2]~2_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1|saida_MUX[2]~2_combout\ $ (((\DEC1|Equal6~2_combout\ & ((\ROM1|memROM~4_combout\) # (\ROM1|memROM~5_combout\))))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X31_Y3_N40
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X32_Y3_N3
\DEC1|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal6~0_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~1_combout\ & ( (((!\ROM1|memROM~0_combout\) # (!\PC|DOUT\(2))) # (\PC|DOUT[1]~DUPLICATE_q\)) # (\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111011111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC1|Equal6~0_combout\);

-- Location: FF_X31_Y2_N7
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X31_Y2_N17
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X31_Y3_N21
\RAM1|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~86_combout\ = ( \RAM1|ram~28_q\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~20_q\) # (\ROM1|memROM~2_combout\))) ) ) # ( !\RAM1|ram~28_q\ & ( (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~20_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \RAM1|ALT_INV_ram~28_q\,
	combout => \RAM1|ram~86_combout\);

-- Location: LABCELL_X31_Y3_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~86_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~86_combout\)))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(3) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~86_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~86_combout\)))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~1_combout\,
	datab => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~86_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X31_Y2_N6
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = ( \RAM1|ram~20_q\ & ( !\DEC1|Equal6~1_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~2_combout\) # (\RAM1|ram~28_q\))) ) ) ) # ( !\RAM1|ram~20_q\ & ( !\DEC1|Equal6~1_combout\ & ( (\ROM1|memROM~2_combout\ & 
-- (\RAM1|ram~28_q\ & !\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000101110110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~20_q\,
	dataf => \DEC1|ALT_INV_Equal6~1_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X31_Y3_N43
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X31_Y2_N44
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X31_Y2_N49
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X31_Y2_N48
\RAM1|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~87_combout\ = ( \RAM1|ram~29_q\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~2_combout\) # (\RAM1|ram~21_q\) ) ) ) # ( !\RAM1|ram~29_q\ & ( !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~21_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~87_combout\);

-- Location: LABCELL_X31_Y3_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~87_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~87_combout\)))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~87_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~87_combout\)))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~1_combout\,
	datab => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~87_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X31_Y2_N42
\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|ram~21_q\ & ( !\DEC1|Equal6~1_combout\ & ( (!\ROM1|memROM~3_combout\ & ((!\ROM1|memROM~2_combout\) # (\RAM1|ram~29_q\))) ) ) ) # ( !\RAM1|ram~21_q\ & ( !\DEC1|Equal6~1_combout\ & ( (\RAM1|ram~29_q\ & 
-- (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM1|ALT_INV_ram~21_q\,
	dataf => \DEC1|ALT_INV_Equal6~1_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X31_Y3_N46
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X31_Y2_N46
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: FF_X31_Y2_N28
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X32_Y3_N9
\RAM1|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~81_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & ((\RAM1|ram~30_q\))) # (\ROM1|memROM~3_combout\ & (!\PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\RAM1|ram~22_q\ & !\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RAM1|ALT_INV_ram~30_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~81_combout\);

-- Location: LABCELL_X32_Y3_N0
\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = ( \ROM1|memROM~3_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (!\DEC1|Equal6~1_combout\ & \RAM1|ram~81_combout\)) ) ) # ( !\ROM1|memROM~3_combout\ & ( (!\DEC1|Equal6~1_combout\ & \RAM1|ram~81_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \DEC1|ALT_INV_Equal6~1_combout\,
	datad => \RAM1|ALT_INV_ram~81_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

-- Location: FF_X31_Y3_N49
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X31_Y3_N3
\RAM1|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~88_combout\ = ( \RAM1|ram~81_combout\ & ( (!\ROM1|memROM~3_combout\) # (\PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~81_combout\,
	combout => \RAM1|ram~88_combout\);

-- Location: LABCELL_X31_Y3_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~88_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~88_combout\)))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~88_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~88_combout\)))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~1_combout\,
	datab => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_ram~88_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X31_Y3_N50
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X31_Y2_N52
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X32_Y3_N20
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X32_Y3_N18
\RAM1|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~82_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & (\RAM1|ram~31_q\)) # (\ROM1|memROM~3_combout\ & ((!\PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\ & \RAM1|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001011100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~82_combout\);

-- Location: LABCELL_X31_Y2_N18
\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = ( !\DEC1|Equal6~1_combout\ & ( \RAM1|ram~82_combout\ & ( (!\ROM1|memROM~3_combout\) # (\PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \DEC1|ALT_INV_Equal6~1_combout\,
	dataf => \RAM1|ALT_INV_ram~82_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X31_Y3_N52
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: LABCELL_X32_Y3_N15
\RAM1|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~89_combout\ = ( \RAM1|ram~82_combout\ & ( (!\ROM1|memROM~3_combout\) # (\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_ram~82_combout\,
	combout => \RAM1|ram~89_combout\);

-- Location: LABCELL_X31_Y3_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~89_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~89_combout\)))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~89_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~89_combout\)))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~1_combout\,
	datab => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal6~2_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_ram~89_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: FF_X31_Y3_N53
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X31_Y2_N4
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X31_Y2_N41
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X31_Y2_N39
\RAM1|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~83_combout\ = ( \RAM1|ram~24_q\ & ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & \ROM1|memROM~2_combout\) ) ) ) # ( !\RAM1|ram~24_q\ & ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & \ROM1|memROM~2_combout\) ) ) ) # ( 
-- \RAM1|ram~24_q\ & ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\) # (\RAM1|ram~32_q\) ) ) ) # ( !\RAM1|ram~24_q\ & ( !\ROM1|memROM~3_combout\ & ( (\RAM1|ram~32_q\ & \ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~32_q\,
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM1|ram~83_combout\);

-- Location: LABCELL_X31_Y2_N24
\RAM1|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~90_combout\ = ( \ROM1|memROM~3_combout\ & ( \RAM1|ram~83_combout\ & ( \PC|DOUT[1]~DUPLICATE_q\ ) ) ) # ( !\ROM1|memROM~3_combout\ & ( \RAM1|ram~83_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \RAM1|ALT_INV_ram~83_combout\,
	combout => \RAM1|ram~90_combout\);

-- Location: LABCELL_X31_Y3_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (!\DEC1|Equal6~0_combout\ & (!\DEC1|Equal6~2_combout\ $ (((!\DEC1|Equal6~1_combout\ & \RAM1|ram~90_combout\))))) # (\DEC1|Equal6~0_combout\ & (((!\RAM1|ram~90_combout\)))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|ALT_INV_Equal6~2_combout\,
	datab => \DEC1|ALT_INV_Equal6~0_combout\,
	datac => \DEC1|ALT_INV_Equal6~1_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_ram~90_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X31_Y2_N0
\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~83_combout\ & ( (!\DEC1|Equal6~1_combout\ & ((!\ROM1|memROM~3_combout\) # (\PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \DEC1|ALT_INV_Equal6~1_combout\,
	dataf => \RAM1|ALT_INV_ram~83_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

-- Location: FF_X31_Y3_N56
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \DEC1|Equal6~1_combout\,
	ena => \DEC1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: IOIBUF_X10_Y0_N41
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X20_Y45_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X16_Y45_N58
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X50_Y45_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y20_N4
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y20_N55
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X43_Y45_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y45_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X1_Y18_N0
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


