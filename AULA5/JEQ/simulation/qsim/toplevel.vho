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

-- DATE "09/26/2023 22:42:15"

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
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(8 DOWNTO 0);
	RegistradorA : OUT std_logic_vector(7 DOWNTO 0);
	OpULA : OUT std_logic_vector(1 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[2]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegistradorA[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpULA[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpULA[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_RegistradorA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OpULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[3]~1_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~2_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[5]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \DEC_Instrucao|Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~0_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~2_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~1_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~0_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~3_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~4_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~q\ : std_logic;
SIGNAL \LogicaDesvio1|saida~0_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_Instrucao|Equal8~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[4]~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~5_combout\ : std_logic;
SIGNAL \DEC_Instrucao|Equal2~0_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~8_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~7_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DEC_Instrucao|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
Palavra_Controle <= ww_Palavra_Controle;
RegistradorA <= ww_RegistradorA;
OpULA <= ww_OpULA;
EntradaB_ULA <= ww_EntradaB_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\FlagZero|ALT_INV_DOUT~3_combout\ <= NOT \FlagZero|DOUT~3_combout\;
\FlagZero|ALT_INV_DOUT~2_combout\ <= NOT \FlagZero|DOUT~2_combout\;
\FlagZero|ALT_INV_DOUT~1_combout\ <= NOT \FlagZero|DOUT~1_combout\;
\FlagZero|ALT_INV_DOUT~0_combout\ <= NOT \FlagZero|DOUT~0_combout\;
\ULA1|ALT_INV_saida[7]~8_combout\ <= NOT \ULA1|saida[7]~8_combout\;
\ULA1|ALT_INV_saida[6]~7_combout\ <= NOT \ULA1|saida[6]~7_combout\;
\ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \ULA1|saida[0]~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\FlagZero|ALT_INV_DOUT~q\ <= NOT \FlagZero|DOUT~q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1_ULA|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1_ULA|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1_ULA|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1_ULA|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\DEC_Instrucao|ALT_INV_saida~2_combout\ <= NOT \DEC_Instrucao|saida~2_combout\;
\DEC_Instrucao|ALT_INV_Equal8~0_combout\ <= NOT \DEC_Instrucao|Equal8~0_combout\;
\DEC_Instrucao|ALT_INV_saida[3]~1_combout\ <= NOT \DEC_Instrucao|saida[3]~1_combout\;
\DEC_Instrucao|ALT_INV_saida~0_combout\ <= NOT \DEC_Instrucao|saida~0_combout\;
\DEC_Instrucao|ALT_INV_Equal3~0_combout\ <= NOT \DEC_Instrucao|Equal3~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y21_N39
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X8_Y45_N42
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X10_Y0_N59
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X0_Y19_N5
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X10_Y45_N19
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X8_Y45_N93
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X12_Y0_N36
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X8_Y45_N59
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X54_Y20_N22
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X0_Y21_N5
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X10_Y0_N76
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X54_Y20_N5
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOOBUF_X54_Y21_N5
\RegistradorA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_RegistradorA(0));

-- Location: IOOBUF_X0_Y19_N22
\RegistradorA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_RegistradorA(1));

-- Location: IOOBUF_X0_Y20_N22
\RegistradorA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_RegistradorA(2));

-- Location: IOOBUF_X54_Y21_N39
\RegistradorA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_RegistradorA(3));

-- Location: IOOBUF_X0_Y20_N56
\RegistradorA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_RegistradorA(4));

-- Location: IOOBUF_X0_Y19_N56
\RegistradorA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_RegistradorA(5));

-- Location: IOOBUF_X0_Y19_N39
\RegistradorA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_RegistradorA(6));

-- Location: IOOBUF_X10_Y0_N42
\RegistradorA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_RegistradorA(7));

-- Location: IOOBUF_X34_Y45_N2
\OpULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OpULA(0));

-- Location: IOOBUF_X8_Y45_N76
\OpULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_OpULA(1));

-- Location: IOOBUF_X0_Y20_N5
\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(0));

-- Location: IOOBUF_X11_Y0_N2
\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(1));

-- Location: IOOBUF_X54_Y21_N22
\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(2));

-- Location: IOOBUF_X0_Y20_N39
\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(3));

-- Location: IOOBUF_X0_Y18_N45
\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(4));

-- Location: IOOBUF_X0_Y18_N62
\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(5));

-- Location: IOOBUF_X0_Y18_N96
\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(6));

-- Location: IOOBUF_X10_Y0_N93
\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1_ULA|saida_MUX[7]~7_combout\,
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

-- Location: MLABCELL_X4_Y22_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: MLABCELL_X4_Y22_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: MLABCELL_X4_Y22_N27
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT\(3)))) # (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT\(0) & 
-- \PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X4_Y22_N18
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X7_Y22_N54
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X7_Y22_N21
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\) # (!\PC|DOUT\(2) $ (\PC|DOUT\(3))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (\PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X7_Y22_N6
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(3) & ( \PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT[1]~DUPLICATE_q\ & ( \PC|DOUT[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X7_Y22_N24
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))) ) ) # ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X7_Y22_N45
\DEC_Instrucao|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[3]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( 
-- !\ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_Instrucao|saida[3]~1_combout\);

-- Location: LABCELL_X7_Y22_N48
\DEC_Instrucao|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~2_combout\ = ( \ROM1|memROM~0_combout\ ) # ( !\ROM1|memROM~0_combout\ & ( (((!\ROM1|memROM~1_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~3_combout\)) # (\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC_Instrucao|saida~2_combout\);

-- Location: LABCELL_X7_Y22_N30
\DEC_Instrucao|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[5]~4_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\)) ) ) # ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~4_combout\ $ (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|saida[5]~4_combout\);

-- Location: FF_X6_Y22_N29
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~7_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: LABCELL_X5_Y22_N39
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT\(2) & (\PC|DOUT\(3) & !\PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000100000000001000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X9_Y22_N24
\DEC_Instrucao|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal3~0_combout\ = ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal3~0_combout\);

-- Location: LABCELL_X7_Y22_N36
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(3) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(2)))) # (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(3) $ (!\PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000010010000001000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: MLABCELL_X9_Y22_N12
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~9_combout\ & ( (\DEC_Instrucao|Equal3~0_combout\ & (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal3~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X4_Y22_N14
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: MLABCELL_X9_Y22_N45
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~9_combout\ & ( (\DEC_Instrucao|Equal3~0_combout\ & (!\ROM1|memROM~7_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal3~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X4_Y22_N8
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: MLABCELL_X4_Y22_N6
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~31_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \RAM1|ALT_INV_ram~31_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X5_Y22_N57
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~160_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X5_Y22_N2
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X5_Y22_N0
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: FF_X5_Y22_N7
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X5_Y22_N24
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X5_Y22_N21
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\) # (\RAM1|ram~158_combout\))) ) ) # ( !\RAM1|ram~157_combout\ & ( (\RAM1|ram~158_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~158_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X5_Y22_N32
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X5_Y22_N14
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X5_Y22_N12
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & \RAM1|ram~27_q\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~19_q\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X5_Y22_N3
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~150_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X6_Y22_N21
\MUX1_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[2]~2_combout\ = ( \RAM1|ram~151_combout\ & ( (\DEC_Instrucao|saida~2_combout\) # (\ROM1|memROM~7_combout\) ) ) # ( !\RAM1|ram~151_combout\ & ( (\ROM1|memROM~7_combout\ & !\DEC_Instrucao|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \MUX1_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X4_Y22_N16
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X4_Y22_N26
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: MLABCELL_X4_Y22_N24
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~17_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~25_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: MLABCELL_X4_Y22_N0
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X5_Y22_N27
\MUX1_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[0]~0_combout\ = ( \RAM1|ram~146_combout\ & ( (\DEC_Instrucao|saida~2_combout\) # (\ROM1|memROM~5_combout\) ) ) # ( !\RAM1|ram~146_combout\ & ( (\ROM1|memROM~5_combout\ & !\DEC_Instrucao|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX1_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X6_Y22_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y22_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1_ULA|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGA|ALT_INV_DOUT\(0),
	datad => \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X7_Y22_N12
\ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~1_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\ULA1|saida[0]~0_combout\) # (\MUX1_ULA|saida_MUX[0]~0_combout\) ) ) # ( !\ULA1|Add0~1_sumout\ & ( (\ULA1|saida[0]~0_combout\ & \MUX1_ULA|saida_MUX[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~1_combout\);

-- Location: FF_X7_Y22_N14
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[0]~1_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X6_Y22_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REGA|DOUT\(1) ) + ( !\MUX1_ULA|saida_MUX[1]~1_combout\ ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REGA|DOUT\(1) ) + ( !\MUX1_ULA|saida_MUX[1]~1_combout\ ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X7_Y22_N15
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \ULA1|Add0~5_sumout\ & ( (!\ULA1|saida[0]~0_combout\) # (\MUX1_ULA|saida_MUX[1]~1_combout\) ) ) # ( !\ULA1|Add0~5_sumout\ & ( (\ULA1|saida[0]~0_combout\ & \MUX1_ULA|saida_MUX[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: FF_X7_Y22_N17
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~2_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X5_Y22_N53
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X5_Y22_N51
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: FF_X5_Y22_N20
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X5_Y22_N18
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X5_Y22_N54
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~6_combout\ & ((\RAM1|ram~147_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \RAM1|ram~147_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~147_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X6_Y22_N18
\MUX1_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[1]~1_combout\ = ( \RAM1|ram~149_combout\ & ( (\DEC_Instrucao|saida~2_combout\) # (\ROM1|memROM~6_combout\) ) ) # ( !\RAM1|ram~149_combout\ & ( (\ROM1|memROM~6_combout\ & !\DEC_Instrucao|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \MUX1_ULA|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X6_Y22_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1_ULA|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(2),
	datad => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X7_Y22_N27
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\ULA1|saida[0]~0_combout\) # (\MUX1_ULA|saida_MUX[2]~2_combout\) ) ) # ( !\ULA1|Add0~9_sumout\ & ( (\ULA1|saida[0]~0_combout\ & \MUX1_ULA|saida_MUX[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: FF_X7_Y22_N28
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[2]~3_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X6_Y22_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( !\MUX1_ULA|saida_MUX[3]~3_combout\ ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(3) ) + ( !\MUX1_ULA|saida_MUX[3]~3_combout\ ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X7_Y22_N57
\ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~4_combout\ = ( \ULA1|Add0~13_sumout\ & ( (!\ULA1|saida[0]~0_combout\) # (\MUX1_ULA|saida_MUX[3]~3_combout\) ) ) # ( !\ULA1|Add0~13_sumout\ & ( (\ULA1|saida[0]~0_combout\ & \MUX1_ULA|saida_MUX[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~4_combout\);

-- Location: FF_X7_Y22_N59
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~4_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X5_Y22_N44
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X5_Y22_N42
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: FF_X5_Y22_N56
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X5_Y22_N15
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X5_Y22_N9
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~6_combout\ & ((\RAM1|ram~152_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~153_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~152_combout\ & !\ROM1|memROM~6_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X5_Y22_N30
\MUX1_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[3]~3_combout\ = ( \RAM1|ram~154_combout\ & ( (\DEC_Instrucao|saida~2_combout\) # (\ROM1|memROM~8_combout\) ) ) # ( !\RAM1|ram~154_combout\ & ( (\ROM1|memROM~8_combout\ & !\DEC_Instrucao|saida~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX1_ULA|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X6_Y22_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\RAM1|ram~156_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~156_combout\,
	datab => \DEC_Instrucao|ALT_INV_saida[3]~1_combout\,
	datac => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X7_Y22_N39
\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = ( \ULA1|Add0~17_sumout\ & ( !\ULA1|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~5_combout\);

-- Location: FF_X7_Y22_N41
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~5_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X5_Y22_N23
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X5_Y22_N50
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X5_Y22_N48
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~29_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X5_Y22_N36
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X6_Y22_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\RAM1|ram~159_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\RAM1|ram~159_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	datac => \REGA|ALT_INV_DOUT\(5),
	datad => \RAM1|ALT_INV_ram~159_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X7_Y22_N18
\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = ( \ULA1|Add0~21_sumout\ & ( !\ULA1|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

-- Location: FF_X7_Y22_N19
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~6_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X6_Y22_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\RAM1|ram~161_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\RAM1|ram~161_combout\) # ((!\DEC_Instrucao|saida[3]~1_combout\ & !\DEC_Instrucao|saida~2_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	datac => \REGA|ALT_INV_DOUT\(6),
	datad => \RAM1|ALT_INV_ram~161_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X6_Y22_N27
\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = ( \ULA1|Add0~25_sumout\ & ( !\ULA1|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~7_combout\);

-- Location: LABCELL_X7_Y22_N33
\DEC_Instrucao|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|saida~0_combout\);

-- Location: LABCELL_X6_Y22_N6
\FlagZero|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~2_combout\ = ( \ULA1|Add0~5_sumout\ & ( \ULA1|Add0~1_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & (\ULA1|saida[0]~0_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & !\MUX1_ULA|saida_MUX[1]~1_combout\))) ) ) ) # ( !\ULA1|Add0~5_sumout\ & ( 
-- \ULA1|Add0~1_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & (\ULA1|saida[0]~0_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & !\MUX1_ULA|saida_MUX[1]~1_combout\))) ) ) ) # ( \ULA1|Add0~5_sumout\ & ( !\ULA1|Add0~1_sumout\ & ( 
-- (\DEC_Instrucao|saida~0_combout\ & (\ULA1|saida[0]~0_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & !\MUX1_ULA|saida_MUX[1]~1_combout\))) ) ) ) # ( !\ULA1|Add0~5_sumout\ & ( !\ULA1|Add0~1_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & 
-- ((!\ULA1|saida[0]~0_combout\) # ((!\MUX1_ULA|saida_MUX[0]~0_combout\ & !\MUX1_ULA|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida~0_combout\,
	datab => \ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \FlagZero|DOUT~2_combout\);

-- Location: LABCELL_X6_Y22_N3
\FlagZero|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~1_combout\ = ( \ULA1|Add0~21_sumout\ & ( !\ULA1|saida[0]~0_combout\ ) ) # ( !\ULA1|Add0~21_sumout\ & ( (!\ULA1|saida[0]~0_combout\ & \ULA1|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \FlagZero|DOUT~1_combout\);

-- Location: LABCELL_X7_Y22_N51
\FlagZero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~0_combout\ = ( !\DEC_Instrucao|saida~0_combout\ & ( \FlagZero|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FlagZero|ALT_INV_DOUT~q\,
	dataf => \DEC_Instrucao|ALT_INV_saida~0_combout\,
	combout => \FlagZero|DOUT~0_combout\);

-- Location: LABCELL_X6_Y22_N0
\FlagZero|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~3_combout\ = ( \ULA1|Add0~9_sumout\ & ( (\ULA1|saida[0]~0_combout\ & (!\MUX1_ULA|saida_MUX[3]~3_combout\ & !\MUX1_ULA|saida_MUX[2]~2_combout\)) ) ) # ( !\ULA1|Add0~9_sumout\ & ( (!\ULA1|saida[0]~0_combout\ & (!\ULA1|Add0~13_sumout\)) # 
-- (\ULA1|saida[0]~0_combout\ & (((!\MUX1_ULA|saida_MUX[3]~3_combout\ & !\MUX1_ULA|saida_MUX[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010001000110110001000100001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \ULA1|ALT_INV_Add0~13_sumout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \FlagZero|DOUT~3_combout\);

-- Location: FF_X6_Y22_N26
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[7]~8_combout\,
	ena => \DEC_Instrucao|saida[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X5_Y22_N26
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
	ena => \RAM1|ram~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: MLABCELL_X4_Y22_N21
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\RAM1|ram~24_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: FF_X6_Y22_N10
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
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X5_Y22_N6
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~32_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~32_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X5_Y22_N33
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \RAM1|ram~163_combout\ & ( (!\ROM1|memROM~6_combout\ & ((\RAM1|ram~162_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\RAM1|ram~163_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \RAM1|ram~162_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~162_combout\,
	dataf => \RAM1|ALT_INV_ram~163_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X6_Y22_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\RAM1|ram~164_combout\) # ((!\DEC_Instrucao|saida~2_combout\ & !\DEC_Instrucao|saida[3]~1_combout\)) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	datab => \REGA|ALT_INV_DOUT\(7),
	datac => \DEC_Instrucao|ALT_INV_saida[3]~1_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X6_Y22_N24
\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = ( \ULA1|Add0~29_sumout\ & ( !\ULA1|saida[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~8_combout\);

-- Location: LABCELL_X6_Y22_N12
\FlagZero|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~4_combout\ = ( \FlagZero|DOUT~3_combout\ & ( \ULA1|saida[7]~8_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) ) # ( !\FlagZero|DOUT~3_combout\ & ( \ULA1|saida[7]~8_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) ) # ( \FlagZero|DOUT~3_combout\ & ( 
-- !\ULA1|saida[7]~8_combout\ & ( ((!\ULA1|saida[6]~7_combout\ & (\FlagZero|DOUT~2_combout\ & !\FlagZero|DOUT~1_combout\))) # (\FlagZero|DOUT~0_combout\) ) ) ) # ( !\FlagZero|DOUT~3_combout\ & ( !\ULA1|saida[7]~8_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[6]~7_combout\,
	datab => \FlagZero|ALT_INV_DOUT~2_combout\,
	datac => \FlagZero|ALT_INV_DOUT~1_combout\,
	datad => \FlagZero|ALT_INV_DOUT~0_combout\,
	datae => \FlagZero|ALT_INV_DOUT~3_combout\,
	dataf => \ULA1|ALT_INV_saida[7]~8_combout\,
	combout => \FlagZero|DOUT~4_combout\);

-- Location: FF_X6_Y22_N13
\FlagZero|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FlagZero|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlagZero|DOUT~q\);

-- Location: LABCELL_X7_Y22_N0
\LogicaDesvio1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicaDesvio1|saida~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~3_combout\ & ( (\FlagZero|DOUT~q\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~0_combout\))) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FlagZero|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \LogicaDesvio1|saida~0_combout\);

-- Location: FF_X4_Y22_N35
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X4_Y22_N41
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y22_N3
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(0) $ (((\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000010101000001000001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X4_Y22_N38
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y22_N45
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT\(1) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: FF_X4_Y22_N34
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X4_Y22_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X4_Y22_N37
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X4_Y22_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X4_Y22_N40
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X4_Y22_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: MLABCELL_X9_Y22_N36
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X4_Y22_N44
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X4_Y22_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X4_Y22_N47
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X4_Y22_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X4_Y22_N50
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X4_Y22_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X4_Y22_N53
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X4_Y22_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X4_Y22_N56
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X4_Y22_N52
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y22_N9
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: MLABCELL_X4_Y22_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X4_Y22_N32
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X4_Y22_N31
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X4_Y22_N46
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \LogicaDesvio1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y22_N30
\DEC_Instrucao|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal8~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( \ROM1|memROM~0_combout\ & ( 
-- !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~4_combout\) # (\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal8~0_combout\);

-- Location: LABCELL_X2_Y22_N36
\DEC_Instrucao|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[4]~3_combout\ = ( \DEC_Instrucao|saida~2_combout\ & ( \DEC_Instrucao|Equal8~0_combout\ & ( \DEC_Instrucao|saida[3]~1_combout\ ) ) ) # ( !\DEC_Instrucao|saida~2_combout\ & ( \DEC_Instrucao|Equal8~0_combout\ ) ) # ( 
-- !\DEC_Instrucao|saida~2_combout\ & ( !\DEC_Instrucao|Equal8~0_combout\ & ( !\DEC_Instrucao|saida[3]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DEC_Instrucao|ALT_INV_saida[3]~1_combout\,
	datae => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \DEC_Instrucao|ALT_INV_Equal8~0_combout\,
	combout => \DEC_Instrucao|saida[4]~3_combout\);

-- Location: MLABCELL_X9_Y22_N3
\DEC_Instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~5_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|saida~5_combout\);

-- Location: MLABCELL_X9_Y22_N54
\DEC_Instrucao|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal2~0_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal2~0_combout\);

-- Location: LABCELL_X2_Y22_N54
\MUX1_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[4]~4_combout\ = ( \DEC_Instrucao|saida~2_combout\ & ( \RAM1|ram~156_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~156_combout\,
	datae => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	combout => \MUX1_ULA|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X2_Y22_N15
\MUX1_ULA|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[5]~5_combout\ = ( \DEC_Instrucao|saida~2_combout\ & ( \RAM1|ram~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \MUX1_ULA|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X2_Y22_N6
\MUX1_ULA|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[6]~6_combout\ = ( \RAM1|ram~161_combout\ & ( \DEC_Instrucao|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	datae => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX1_ULA|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X2_Y22_N24
\MUX1_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[7]~7_combout\ = ( \DEC_Instrucao|saida~2_combout\ & ( \RAM1|ram~164_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DEC_Instrucao|ALT_INV_saida~2_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \MUX1_ULA|saida_MUX[7]~7_combout\);

-- Location: IOIBUF_X38_Y0_N35
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X48_Y45_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


