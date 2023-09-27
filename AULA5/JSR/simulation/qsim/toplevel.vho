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

-- DATE "09/27/2023 00:35:48"

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
	Palavra_Controle : OUT std_logic_vector(11 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[10]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[11]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Palavra_Controle : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[6]~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[4]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \DEC_Instrucao|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~4_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[5]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \MUX1_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~0_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~q\ : std_logic;
SIGNAL \FlagZero|DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida[3]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \FlagZero|DOUT~1_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~2_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~0_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~4_combout\ : std_logic;
SIGNAL \FlagZero|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_Instrucao|Equal4~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|saida~4_combout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DEC_Instrucao|Equal0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MuxProxPC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \DEC_Instrucao|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DEC_Instrucao|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \FlagZero|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
Palavra_Controle <= ww_Palavra_Controle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1_ULA|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\FlagZero|ALT_INV_DOUT~2_combout\ <= NOT \FlagZero|DOUT~2_combout\;
\MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1_ULA|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1_ULA|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\FlagZero|ALT_INV_DOUT~1_combout\ <= NOT \FlagZero|DOUT~1_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\FlagZero|ALT_INV_DOUT~0_combout\ <= NOT \FlagZero|DOUT~0_combout\;
\ULA1|ALT_INV_saida[6]~1_combout\ <= NOT \ULA1|saida[6]~1_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\ULA1|ALT_INV_saida[7]~0_combout\ <= NOT \ULA1|saida[7]~0_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \REG_RETORNO|DOUT\(8);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \REG_RETORNO|DOUT\(7);
\REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \REG_RETORNO|DOUT\(6);
\REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \REG_RETORNO|DOUT\(5);
\REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \REG_RETORNO|DOUT\(4);
\REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \REG_RETORNO|DOUT\(3);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \REG_RETORNO|DOUT\(2);
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \REG_RETORNO|DOUT\(1);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \REG_RETORNO|DOUT\(0);
\MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \MuxProxPC|saida_MUX[4]~0_combout\;
\FlagZero|ALT_INV_DOUT~q\ <= NOT \FlagZero|DOUT~q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\DEC_Instrucao|ALT_INV_Equal4~0_combout\ <= NOT \DEC_Instrucao|Equal4~0_combout\;
\DEC_Instrucao|ALT_INV_Equal0~0_combout\ <= NOT \DEC_Instrucao|Equal0~0_combout\;
\DEC_Instrucao|ALT_INV_saida~5_combout\ <= NOT \DEC_Instrucao|saida~5_combout\;
\DEC_Instrucao|ALT_INV_saida~4_combout\ <= NOT \DEC_Instrucao|saida~4_combout\;
\DEC_Instrucao|ALT_INV_saida[6]~3_combout\ <= NOT \DEC_Instrucao|saida[6]~3_combout\;
\DEC_Instrucao|ALT_INV_saida[4]~1_combout\ <= NOT \DEC_Instrucao|saida[4]~1_combout\;
\DEC_Instrucao|ALT_INV_saida~0_combout\ <= NOT \DEC_Instrucao|saida~0_combout\;
\DEC_Instrucao|ALT_INV_Equal5~0_combout\ <= NOT \DEC_Instrucao|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
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
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\FlagZero|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FlagZero|DOUT~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\DEC_Instrucao|ALT_INV_saida[3]~6_combout\ <= NOT \DEC_Instrucao|saida[3]~6_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\FlagZero|ALT_INV_DOUT~3_combout\ <= NOT \FlagZero|DOUT~3_combout\;
\MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1_ULA|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;

-- Location: IOOBUF_X8_Y45_N76
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X0_Y20_N5
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
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X0_Y20_N56
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N96
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X54_Y15_N56
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

-- Location: IOOBUF_X8_Y45_N42
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X8_Y45_N93
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X10_Y0_N59
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida[5]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X0_Y20_N39
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X0_Y19_N22
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X0_Y19_N5
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOOBUF_X10_Y0_N42
\Palavra_Controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(9));

-- Location: IOOBUF_X0_Y19_N56
\Palavra_Controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(10));

-- Location: IOOBUF_X0_Y19_N39
\Palavra_Controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_Instrucao|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(11));

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

-- Location: FF_X5_Y23_N56
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X5_Y23_N26
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X2_Y23_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X2_Y23_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X5_Y23_N11
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X2_Y23_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X2_Y23_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X2_Y23_N43
\REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(4));

-- Location: LABCELL_X5_Y23_N6
\MuxProxPC|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[4]~5_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # (\REG_RETORNO|DOUT\(4)))) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( (\DEC_Instrucao|Equal0~0_combout\ & 
-- (\MuxProxPC|saida_MUX[4]~0_combout\ & \REG_RETORNO|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(4),
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MuxProxPC|saida_MUX[4]~5_combout\);

-- Location: FF_X5_Y23_N7
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X2_Y23_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X2_Y23_N47
\REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(5));

-- Location: LABCELL_X5_Y23_N45
\MuxProxPC|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[5]~6_combout\ = ( \incrementaPC|Add0~21_sumout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # (\REG_RETORNO|DOUT\(5)))) ) ) # ( !\incrementaPC|Add0~21_sumout\ & ( (\DEC_Instrucao|Equal0~0_combout\ & 
-- (\MuxProxPC|saida_MUX[4]~0_combout\ & \REG_RETORNO|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(5),
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MuxProxPC|saida_MUX[5]~6_combout\);

-- Location: FF_X5_Y23_N46
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X2_Y23_N49
\REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(6));

-- Location: LABCELL_X5_Y23_N42
\MuxProxPC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[6]~7_combout\ = ( \incrementaPC|Add0~25_sumout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # (\REG_RETORNO|DOUT\(6)))) ) ) # ( !\incrementaPC|Add0~25_sumout\ & ( (\DEC_Instrucao|Equal0~0_combout\ & 
-- (\MuxProxPC|saida_MUX[4]~0_combout\ & \REG_RETORNO|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(6),
	dataf => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MuxProxPC|saida_MUX[6]~7_combout\);

-- Location: FF_X5_Y23_N43
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N51
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

-- Location: FF_X2_Y23_N52
\REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(7));

-- Location: LABCELL_X6_Y23_N9
\MuxProxPC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[7]~8_combout\ = ( \incrementaPC|Add0~29_sumout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # (\REG_RETORNO|DOUT\(7)))) ) ) # ( !\incrementaPC|Add0~29_sumout\ & ( (\DEC_Instrucao|Equal0~0_combout\ & 
-- (\REG_RETORNO|DOUT\(7) & \MuxProxPC|saida_MUX[4]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(7),
	datad => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MuxProxPC|saida_MUX[7]~8_combout\);

-- Location: FF_X5_Y23_N17
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MuxProxPC|saida_MUX[7]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X5_Y23_N47
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X2_Y23_N12
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000001000000001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: FF_X5_Y23_N28
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y23_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X2_Y23_N55
\REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(8));

-- Location: LABCELL_X5_Y23_N27
\MuxProxPC|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[8]~9_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\RAM1|process_0~0_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # ((\REG_RETORNO|DOUT\(8))))) ) 
-- ) # ( !\incrementaPC|Add0~33_sumout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\RAM1|process_0~0_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & (\DEC_Instrucao|Equal0~0_combout\ & ((\REG_RETORNO|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \REG_RETORNO|ALT_INV_DOUT\(8),
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MuxProxPC|saida_MUX[8]~9_combout\);

-- Location: FF_X5_Y23_N29
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X5_Y23_N44
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X5_Y23_N39
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X5_Y23_N48
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\PC|DOUT[3]~DUPLICATE_q\ & ((!\PC|DOUT[1]~DUPLICATE_q\) # (!\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: MLABCELL_X4_Y24_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\)) # (\PC|DOUT[0]~DUPLICATE_q\ & ((\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000010101010000011111010101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X4_Y23_N57
\DEC_Instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~5_combout\ = ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|saida~5_combout\);

-- Location: FF_X2_Y23_N40
\REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(3));

-- Location: FF_X5_Y23_N58
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X5_Y23_N33
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (\ROM1|memROM~1_combout\ & !\PC|DOUT\(0)))) ) ) # ( !\PC|DOUT\(1) & ( (\ROM1|memROM~1_combout\ & ((!\PC|DOUT\(3) & (!\PC|DOUT\(2) & !\PC|DOUT\(0))) # (\PC|DOUT\(3) & 
-- (\PC|DOUT\(2) & \PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001000010000000000100001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X5_Y23_N57
\MuxProxPC|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[3]~4_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\) # ((!\DEC_Instrucao|Equal0~0_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\DEC_Instrucao|Equal0~0_combout\ & (\REG_RETORNO|DOUT\(3)))) ) ) # ( 
-- !\ROM1|memROM~8_combout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\DEC_Instrucao|Equal0~0_combout\ & (\REG_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(3),
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \MuxProxPC|saida_MUX[3]~4_combout\);

-- Location: FF_X5_Y23_N59
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y23_N0
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT\(1) & ((!\PC|DOUT[3]~DUPLICATE_q\))) # (\PC|DOUT\(1) & (!\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)))) # (\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT\(1) 
-- & (\PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100001001001000110000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X2_Y23_N37
\REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(2));

-- Location: LABCELL_X5_Y23_N54
\MuxProxPC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[2]~3_combout\ = ( \REG_RETORNO|DOUT\(2) & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\ROM1|memROM~7_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & (((\incrementaPC|Add0~9_sumout\)) # (\DEC_Instrucao|Equal0~0_combout\))) ) ) # ( 
-- !\REG_RETORNO|DOUT\(2) & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\ROM1|memROM~7_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & (!\DEC_Instrucao|Equal0~0_combout\ & (\incrementaPC|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \REG_RETORNO|ALT_INV_DOUT\(2),
	combout => \MuxProxPC|saida_MUX[2]~3_combout\);

-- Location: FF_X5_Y23_N55
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X4_Y24_N27
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(0) & ( !\PC|DOUT[3]~DUPLICATE_q\ $ (((!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100001010111101010000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X4_Y24_N54
\DEC_Instrucao|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[6]~3_combout\ = ( \ROM1|memROM~0_combout\ ) # ( !\ROM1|memROM~0_combout\ & ( ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~4_combout\) # (\ROM1|memROM~2_combout\))) # (\ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC_Instrucao|saida[6]~3_combout\);

-- Location: LABCELL_X6_Y24_N57
\DEC_Instrucao|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[4]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_Instrucao|saida[4]~1_combout\);

-- Location: LABCELL_X5_Y23_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(0) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X5_Y23_N15
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC|DOUT\(7) & ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X5_Y23_N51
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(1) & ((!\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT\(1) & !\PC|DOUT[2]~DUPLICATE_q\)) # 
-- (\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT\(1) & \PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X5_Y23_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT\(7) & ( \ROM1|memROM~9_combout\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(6) & (!\PC|DOUT\(8) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X4_Y23_N18
\DEC_Instrucao|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal5~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal5~0_combout\);

-- Location: MLABCELL_X4_Y23_N0
\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \RAM1|process_0~0_combout\ & ( \DEC_Instrucao|Equal5~0_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \DEC_Instrucao|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~175_combout\);

-- Location: FF_X4_Y23_N10
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X4_Y23_N9
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \RAM1|process_0~0_combout\ & ( \ROM1|memROM~6_combout\ & ( (\DEC_Instrucao|Equal5~0_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~173_combout\);

-- Location: FF_X4_Y24_N47
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: MLABCELL_X4_Y23_N48
\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( \RAM1|process_0~0_combout\ & ( \DEC_Instrucao|Equal5~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \DEC_Instrucao|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~174_combout\);

-- Location: FF_X4_Y24_N52
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: MLABCELL_X4_Y23_N24
\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \RAM1|process_0~0_combout\ & ( \DEC_Instrucao|Equal5~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \DEC_Instrucao|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|ram~176_combout\);

-- Location: FF_X4_Y24_N38
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: MLABCELL_X4_Y24_N39
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~27_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~35_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \RAM1|ALT_INV_ram~43_q\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: MLABCELL_X4_Y24_N51
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \RAM1|ram~166_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~166_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: MLABCELL_X4_Y24_N6
\MUX1_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[2]~2_combout\ = ( \RAM1|ram~167_combout\ & ( (\ROM1|memROM~7_combout\) # (\DEC_Instrucao|saida[6]~3_combout\) ) ) # ( !\RAM1|ram~167_combout\ & ( (!\DEC_Instrucao|saida[6]~3_combout\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~167_combout\,
	combout => \MUX1_ULA|saida_MUX[2]~2_combout\);

-- Location: FF_X4_Y24_N17
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: MLABCELL_X4_Y24_N24
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\RAM1|ram~42_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~42_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: FF_X4_Y24_N59
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: MLABCELL_X4_Y24_N57
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~26_q\) ) )

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
	combout => \RAM1|ram~164_combout\);

-- Location: FF_X4_Y23_N52
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X4_Y24_N21
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: FF_X4_Y24_N20
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: MLABCELL_X4_Y24_N18
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~34_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~34_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: MLABCELL_X4_Y24_N42
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~164_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~162_combout\))) ) ) ) # ( 
-- !\RAM1|ram~163_combout\ & ( \RAM1|ram~161_combout\ & ( (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & ((\RAM1|ram~164_combout\)))) # (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~162_combout\)))) ) ) ) # ( 
-- \RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~164_combout\)))) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & (\RAM1|ram~162_combout\))) ) ) ) # ( 
-- !\RAM1|ram~163_combout\ & ( !\RAM1|ram~161_combout\ & ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & ((\RAM1|ram~164_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~162_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~162_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	datae => \RAM1|ALT_INV_ram~163_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: MLABCELL_X4_Y24_N33
\MUX1_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[1]~1_combout\ = ( \RAM1|ram~165_combout\ & ( (\DEC_Instrucao|saida[6]~3_combout\) # (\ROM1|memROM~6_combout\) ) ) # ( !\RAM1|ram~165_combout\ & ( (\ROM1|memROM~6_combout\ & !\DEC_Instrucao|saida[6]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	dataf => \RAM1|ALT_INV_ram~165_combout\,
	combout => \MUX1_ULA|saida_MUX[1]~1_combout\);

-- Location: FF_X4_Y23_N5
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X5_Y23_N35
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X4_Y23_N28
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: FF_X4_Y23_N56
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: MLABCELL_X4_Y23_N33
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~25_q\ ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~33_q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~33_q\,
	datac => \RAM1|ALT_INV_ram~41_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: MLABCELL_X4_Y23_N39
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~159_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X5_Y24_N0
\MUX1_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[0]~0_combout\ = ( \RAM1|ram~160_combout\ & ( (\ROM1|memROM~5_combout\) # (\DEC_Instrucao|saida[6]~3_combout\) ) ) # ( !\RAM1|ram~160_combout\ & ( (!\DEC_Instrucao|saida[6]~3_combout\ & \ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX1_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X5_Y24_N30
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

-- Location: LABCELL_X5_Y24_N33
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1_ULA|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

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
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X6_Y24_N24
\ULA1|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~4_combout\ = ( \ULA1|Add0~17_sumout\ & ( \MUX1_ULA|saida_MUX[0]~0_combout\ ) ) # ( !\ULA1|Add0~17_sumout\ & ( \MUX1_ULA|saida_MUX[0]~0_combout\ & ( \DEC_Instrucao|saida[4]~1_combout\ ) ) ) # ( \ULA1|Add0~17_sumout\ & ( 
-- !\MUX1_ULA|saida_MUX[0]~0_combout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datae => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA1|saida[0]~4_combout\);

-- Location: LABCELL_X6_Y24_N15
\DEC_Instrucao|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[5]~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~1_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & 
-- (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~3_combout\) # (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_Instrucao|saida[5]~2_combout\);

-- Location: FF_X6_Y24_N25
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[0]~4_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X5_Y24_N36
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[1]~1_combout\ ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\MUX1_ULA|saida_MUX[1]~1_combout\ ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REGA|ALT_INV_DOUT\(1),
	datad => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X6_Y24_N6
\ULA1|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~5_combout\ = ( \ULA1|Add0~21_sumout\ & ( (!\DEC_Instrucao|saida[4]~1_combout\) # (\MUX1_ULA|saida_MUX[1]~1_combout\) ) ) # ( !\ULA1|Add0~21_sumout\ & ( (\DEC_Instrucao|saida[4]~1_combout\ & \MUX1_ULA|saida_MUX[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[1]~5_combout\);

-- Location: FF_X6_Y24_N8
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~5_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: LABCELL_X5_Y24_N39
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\MUX1_ULA|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT\(2),
	datad => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X6_Y24_N9
\ULA1|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~6_combout\ = ( \ULA1|Add0~25_sumout\ & ( (!\DEC_Instrucao|saida[4]~1_combout\) # (\MUX1_ULA|saida_MUX[2]~2_combout\) ) ) # ( !\ULA1|Add0~25_sumout\ & ( (\DEC_Instrucao|saida[4]~1_combout\ & \MUX1_ULA|saida_MUX[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[2]~6_combout\);

-- Location: FF_X6_Y24_N11
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[2]~6_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X5_Y24_N42
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\MUX1_ULA|saida_MUX[3]~3_combout\ ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( !\MUX1_ULA|saida_MUX[3]~3_combout\ ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REGA|ALT_INV_DOUT\(3),
	datad => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: LABCELL_X6_Y24_N51
\ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~7_combout\ = ( \ULA1|Add0~29_sumout\ & ( (!\DEC_Instrucao|saida[4]~1_combout\) # (\MUX1_ULA|saida_MUX[3]~3_combout\) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (\MUX1_ULA|saida_MUX[3]~3_combout\ & \DEC_Instrucao|saida[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[3]~7_combout\);

-- Location: FF_X6_Y24_N53
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~7_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X6_Y23_N49
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: LABCELL_X6_Y23_N33
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\RAM1|ram~44_q\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~44_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~169_combout\);

-- Location: FF_X6_Y23_N56
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X6_Y23_N21
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: FF_X4_Y23_N7
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X6_Y23_N12
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~170_combout\);

-- Location: FF_X6_Y23_N20
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y23_N51
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~7_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: LABCELL_X6_Y23_N0
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~171_combout\ & ( (!\ROM1|memROM~6_combout\) # (\RAM1|ram~169_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~171_combout\ & ( (!\ROM1|memROM~6_combout\ & 
-- ((\RAM1|ram~170_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~168_combout\)) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\RAM1|ram~171_combout\ & ( (\RAM1|ram~169_combout\ & \ROM1|memROM~6_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- !\RAM1|ram~171_combout\ & ( (!\ROM1|memROM~6_combout\ & ((\RAM1|ram~170_combout\))) # (\ROM1|memROM~6_combout\ & (\RAM1|ram~168_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~169_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~168_combout\,
	datad => \RAM1|ALT_INV_ram~170_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~171_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: LABCELL_X5_Y24_N3
\MUX1_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1_ULA|saida_MUX[3]~3_combout\ = ( \RAM1|ram~172_combout\ & ( (\ROM1|memROM~8_combout\) # (\DEC_Instrucao|saida[6]~3_combout\) ) ) # ( !\RAM1|ram~172_combout\ & ( (!\DEC_Instrucao|saida[6]~3_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~172_combout\,
	combout => \MUX1_ULA|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X5_Y24_N27
\FlagZero|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~3_combout\ = ( \ULA1|Add0~29_sumout\ & ( (!\MUX1_ULA|saida_MUX[3]~3_combout\ & (\DEC_Instrucao|saida[4]~1_combout\ & !\MUX1_ULA|saida_MUX[2]~2_combout\)) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\DEC_Instrucao|saida[4]~1_combout\ & 
-- (((!\ULA1|Add0~25_sumout\)))) # (\DEC_Instrucao|saida[4]~1_combout\ & (!\MUX1_ULA|saida_MUX[3]~3_combout\ & ((!\MUX1_ULA|saida_MUX[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011000000111000101100000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \MUX1_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \FlagZero|DOUT~3_combout\);

-- Location: LABCELL_X6_Y24_N39
\DEC_Instrucao|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~0_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_Instrucao|saida~0_combout\);

-- Location: FF_X5_Y24_N13
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

-- Location: LABCELL_X6_Y24_N42
\FlagZero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~0_combout\ = ( \FlagZero|DOUT~q\ & ( !\DEC_Instrucao|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida~0_combout\,
	datae => \FlagZero|ALT_INV_DOUT~q\,
	combout => \FlagZero|DOUT~0_combout\);

-- Location: LABCELL_X6_Y24_N54
\ULA1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~3_combout\ = ( \ULA1|Add0~13_sumout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[4]~3_combout\);

-- Location: FF_X6_Y24_N56
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~3_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: MLABCELL_X4_Y24_N48
\DEC_Instrucao|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida[3]~6_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_Instrucao|saida[3]~6_combout\);

-- Location: FF_X5_Y24_N11
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X4_Y23_N41
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X4_Y23_N31
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X4_Y23_N44
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: MLABCELL_X4_Y23_N42
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \RAM1|ram~29_q\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~37_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~45_q\))) ) ) ) # ( !\RAM1|ram~29_q\ & ( \ROM1|memROM~6_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & (\RAM1|ram~37_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~45_q\))) ) ) ) # ( \RAM1|ram~29_q\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~21_q\) ) ) ) # ( !\RAM1|ram~29_q\ & ( 
-- !\ROM1|memROM~6_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~37_q\,
	datab => \RAM1|ALT_INV_ram~21_q\,
	datac => \RAM1|ALT_INV_ram~45_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: MLABCELL_X4_Y23_N21
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X5_Y24_N45
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\RAM1|ram~158_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\RAM1|ram~158_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \REGA|ALT_INV_DOUT\(4),
	datac => \DEC_Instrucao|ALT_INV_saida[3]~6_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X6_Y24_N12
\ULA1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[5]~2_combout\);

-- Location: FF_X6_Y24_N14
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~2_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X4_Y24_N2
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: MLABCELL_X4_Y24_N0
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~30_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: FF_X4_Y24_N32
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: MLABCELL_X4_Y24_N30
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~46_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~46_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: FF_X6_Y23_N5
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X5_Y23_N18
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~38_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: FF_X5_Y23_N38
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X5_Y23_N36
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: MLABCELL_X4_Y24_N12
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~152_combout\ & ( \RAM1|ram~154_combout\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~152_combout\ & ( \RAM1|ram~154_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\)) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))))) ) 
-- ) ) # ( \RAM1|ram~152_combout\ & ( !\RAM1|ram~154_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\)) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\)) # (\ROM1|memROM~6_combout\ & 
-- ((\RAM1|ram~153_combout\))))) ) ) ) # ( !\RAM1|ram~152_combout\ & ( !\RAM1|ram~154_combout\ & ( (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~6_combout\ & (\RAM1|ram~155_combout\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~153_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~155_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	datae => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X5_Y24_N48
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\RAM1|ram~156_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \DEC_Instrucao|ALT_INV_saida[3]~6_combout\,
	datad => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X5_Y24_N18
\FlagZero|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~1_combout\ = ( \ULA1|Add0~9_sumout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) ) # ( !\ULA1|Add0~9_sumout\ & ( (!\DEC_Instrucao|saida[4]~1_combout\ & \ULA1|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \FlagZero|DOUT~1_combout\);

-- Location: LABCELL_X5_Y24_N6
\FlagZero|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~2_combout\ = ( \ULA1|Add0~21_sumout\ & ( \ULA1|Add0~17_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & (!\MUX1_ULA|saida_MUX[1]~1_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & \DEC_Instrucao|saida[4]~1_combout\))) ) ) ) # ( 
-- !\ULA1|Add0~21_sumout\ & ( \ULA1|Add0~17_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & (!\MUX1_ULA|saida_MUX[1]~1_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & \DEC_Instrucao|saida[4]~1_combout\))) ) ) ) # ( \ULA1|Add0~21_sumout\ & ( 
-- !\ULA1|Add0~17_sumout\ & ( (\DEC_Instrucao|saida~0_combout\ & (!\MUX1_ULA|saida_MUX[1]~1_combout\ & (!\MUX1_ULA|saida_MUX[0]~0_combout\ & \DEC_Instrucao|saida[4]~1_combout\))) ) ) ) # ( !\ULA1|Add0~21_sumout\ & ( !\ULA1|Add0~17_sumout\ & ( 
-- (\DEC_Instrucao|saida~0_combout\ & ((!\DEC_Instrucao|saida[4]~1_combout\) # ((!\MUX1_ULA|saida_MUX[1]~1_combout\ & !\MUX1_ULA|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida~0_combout\,
	datab => \MUX1_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	datae => \ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \FlagZero|DOUT~2_combout\);

-- Location: FF_X5_Y24_N23
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~1_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X4_Y23_N2
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: FF_X4_Y23_N25
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: FF_X6_Y23_N16
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X4_Y23_N14
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: MLABCELL_X4_Y23_N12
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~31_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\) # (\RAM1|ram~47_q\) ) ) ) # ( !\RAM1|ram~31_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~47_q\ & \ROM1|memROM~6_combout\) ) ) ) # ( \RAM1|ram~31_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~6_combout\ & ((\RAM1|ram~39_q\))) ) ) ) # ( !\RAM1|ram~31_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~6_combout\ & (\RAM1|ram~23_q\)) # 
-- (\ROM1|memROM~6_combout\ & ((\RAM1|ram~39_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~39_q\,
	datae => \RAM1|ALT_INV_ram~31_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: MLABCELL_X4_Y23_N36
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~150_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X5_Y24_N51
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\RAM1|ram~151_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\RAM1|ram~151_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \DEC_Instrucao|ALT_INV_saida[3]~6_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X5_Y24_N21
\ULA1|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~1_combout\ = ( \ULA1|Add0~5_sumout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[6]~1_combout\);

-- Location: FF_X5_Y24_N26
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[7]~0_combout\,
	ena => \DEC_Instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X6_Y23_N26
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
	ena => \RAM1|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: LABCELL_X6_Y23_N24
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~32_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~32_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X5_Y23_N5
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
	ena => \RAM1|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X5_Y23_N3
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: FF_X6_Y23_N47
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: LABCELL_X6_Y23_N45
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~48_q\ & ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM1|ALT_INV_ram~48_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: FF_X6_Y23_N59
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X6_Y23_N57
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \RAM1|ram~40_q\ & ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM1|ALT_INV_ram~40_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X6_Y23_N39
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~146_combout\ & ( \RAM1|ram~145_combout\ & ( ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~147_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~148_combout\))) # (\ROM1|memROM~6_combout\) ) ) ) # ( !\RAM1|ram~146_combout\ 
-- & ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~147_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~148_combout\)))) # (\ROM1|memROM~6_combout\ & (((!\ROM1|memROM~5_combout\)))) ) ) ) # ( 
-- \RAM1|ram~146_combout\ & ( !\RAM1|ram~145_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~147_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~148_combout\)))) # (\ROM1|memROM~6_combout\ & 
-- (((\ROM1|memROM~5_combout\)))) ) ) ) # ( !\RAM1|ram~146_combout\ & ( !\RAM1|ram~145_combout\ & ( (!\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~147_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~148_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~148_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~147_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X5_Y24_N54
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\RAM1|ram~149_combout\) # ((!\DEC_Instrucao|saida[6]~3_combout\ & !\DEC_Instrucao|saida[3]~6_combout\)) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \DEC_Instrucao|ALT_INV_saida[3]~6_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~1_sumout\);

-- Location: LABCELL_X5_Y24_N24
\ULA1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( !\DEC_Instrucao|saida[4]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_Instrucao|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[7]~0_combout\);

-- Location: LABCELL_X5_Y24_N12
\FlagZero|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagZero|DOUT~4_combout\ = ( \ULA1|saida[6]~1_combout\ & ( \ULA1|saida[7]~0_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) ) # ( !\ULA1|saida[6]~1_combout\ & ( \ULA1|saida[7]~0_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) ) # ( \ULA1|saida[6]~1_combout\ & ( 
-- !\ULA1|saida[7]~0_combout\ & ( \FlagZero|DOUT~0_combout\ ) ) ) # ( !\ULA1|saida[6]~1_combout\ & ( !\ULA1|saida[7]~0_combout\ & ( ((\FlagZero|DOUT~3_combout\ & (!\FlagZero|DOUT~1_combout\ & \FlagZero|DOUT~2_combout\))) # (\FlagZero|DOUT~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FlagZero|ALT_INV_DOUT~3_combout\,
	datab => \FlagZero|ALT_INV_DOUT~0_combout\,
	datac => \FlagZero|ALT_INV_DOUT~1_combout\,
	datad => \FlagZero|ALT_INV_DOUT~2_combout\,
	datae => \ULA1|ALT_INV_saida[6]~1_combout\,
	dataf => \ULA1|ALT_INV_saida[7]~0_combout\,
	combout => \FlagZero|DOUT~4_combout\);

-- Location: FF_X5_Y24_N14
\FlagZero|DOUT~DUPLICATE\ : dffeas
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
	q => \FlagZero|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X5_Y23_N21
\DEC_Instrucao|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal4~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal4~0_combout\);

-- Location: LABCELL_X6_Y23_N27
\DEC_Instrucao|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|saida~4_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|saida~4_combout\);

-- Location: LABCELL_X6_Y23_N6
\MuxProxPC|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[4]~0_combout\ = ( !\DEC_Instrucao|saida~5_combout\ & ( (!\DEC_Instrucao|Equal4~0_combout\ & ((!\FlagZero|DOUT~DUPLICATE_q\) # (!\DEC_Instrucao|saida~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FlagZero|ALT_INV_DOUT~DUPLICATE_q\,
	datac => \DEC_Instrucao|ALT_INV_Equal4~0_combout\,
	datad => \DEC_Instrucao|ALT_INV_saida~4_combout\,
	dataf => \DEC_Instrucao|ALT_INV_saida~5_combout\,
	combout => \MuxProxPC|saida_MUX[4]~0_combout\);

-- Location: FF_X2_Y23_N34
\REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(1));

-- Location: LABCELL_X5_Y23_N9
\MuxProxPC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[1]~2_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\ROM1|memROM~6_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\) # ((\REG_RETORNO|DOUT\(1))))) ) ) # 
-- ( !\incrementaPC|Add0~5_sumout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\ & (((\ROM1|memROM~6_combout\)))) # (\MuxProxPC|saida_MUX[4]~0_combout\ & (\DEC_Instrucao|Equal0~0_combout\ & ((\REG_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \REG_RETORNO|ALT_INV_DOUT\(1),
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MuxProxPC|saida_MUX[1]~2_combout\);

-- Location: FF_X5_Y23_N10
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X4_Y24_N3
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT[0]~DUPLICATE_q\) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(2) & !\PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT[1]~DUPLICATE_q\ & 
-- (\PC|DOUT\(2) & \PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X6_Y23_N30
\DEC_Instrucao|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Instrucao|Equal0~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_Instrucao|Equal0~0_combout\);

-- Location: FF_X2_Y23_N31
\REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DEC_Instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(0));

-- Location: LABCELL_X5_Y23_N24
\MuxProxPC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MuxProxPC|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\MuxProxPC|saida_MUX[4]~0_combout\) # ((!\DEC_Instrucao|Equal0~0_combout\ & (\incrementaPC|Add0~1_sumout\)) # (\DEC_Instrucao|Equal0~0_combout\ & ((\REG_RETORNO|DOUT\(0))))) ) ) # ( 
-- !\ROM1|memROM~5_combout\ & ( (\MuxProxPC|saida_MUX[4]~0_combout\ & ((!\DEC_Instrucao|Equal0~0_combout\ & (\incrementaPC|Add0~1_sumout\)) # (\DEC_Instrucao|Equal0~0_combout\ & ((\REG_RETORNO|DOUT\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MuxProxPC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \REG_RETORNO|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \MuxProxPC|saida_MUX[0]~1_combout\);

-- Location: FF_X5_Y23_N25
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MuxProxPC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: IOIBUF_X16_Y0_N58
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X43_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y45_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X18_Y23_N3
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


