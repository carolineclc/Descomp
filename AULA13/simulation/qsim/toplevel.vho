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

-- DATE "12/12/2023 01:48:19"

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

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	DATA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	inspectR0 : OUT std_logic_vector(31 DOWNTO 0);
	inspectR1 : OUT std_logic_vector(31 DOWNTO 0);
	inspectR2 : OUT std_logic_vector(31 DOWNTO 0);
	inspectEndRS : OUT std_logic_vector(4 DOWNTO 0);
	inspectEndRT : OUT std_logic_vector(4 DOWNTO 0);
	inspectEndRD : OUT std_logic_vector(4 DOWNTO 0);
	inspectInstru : OUT std_logic_vector(31 DOWNTO 0)
	);
END TopLevel;

ARCHITECTURE structure OF TopLevel IS
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
SIGNAL ww_DATA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inspectR0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectR1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectR2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectEndRS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectEndRT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectEndRD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectInstru : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \DATA_OUT[16]~output_o\ : std_logic;
SIGNAL \DATA_OUT[17]~output_o\ : std_logic;
SIGNAL \DATA_OUT[18]~output_o\ : std_logic;
SIGNAL \DATA_OUT[19]~output_o\ : std_logic;
SIGNAL \DATA_OUT[20]~output_o\ : std_logic;
SIGNAL \DATA_OUT[21]~output_o\ : std_logic;
SIGNAL \DATA_OUT[22]~output_o\ : std_logic;
SIGNAL \DATA_OUT[23]~output_o\ : std_logic;
SIGNAL \DATA_OUT[24]~output_o\ : std_logic;
SIGNAL \DATA_OUT[25]~output_o\ : std_logic;
SIGNAL \DATA_OUT[26]~output_o\ : std_logic;
SIGNAL \DATA_OUT[27]~output_o\ : std_logic;
SIGNAL \DATA_OUT[28]~output_o\ : std_logic;
SIGNAL \DATA_OUT[29]~output_o\ : std_logic;
SIGNAL \DATA_OUT[30]~output_o\ : std_logic;
SIGNAL \DATA_OUT[31]~output_o\ : std_logic;
SIGNAL \inspectR0[0]~output_o\ : std_logic;
SIGNAL \inspectR0[1]~output_o\ : std_logic;
SIGNAL \inspectR0[2]~output_o\ : std_logic;
SIGNAL \inspectR0[3]~output_o\ : std_logic;
SIGNAL \inspectR0[4]~output_o\ : std_logic;
SIGNAL \inspectR0[5]~output_o\ : std_logic;
SIGNAL \inspectR0[6]~output_o\ : std_logic;
SIGNAL \inspectR0[7]~output_o\ : std_logic;
SIGNAL \inspectR0[8]~output_o\ : std_logic;
SIGNAL \inspectR0[9]~output_o\ : std_logic;
SIGNAL \inspectR0[10]~output_o\ : std_logic;
SIGNAL \inspectR0[11]~output_o\ : std_logic;
SIGNAL \inspectR0[12]~output_o\ : std_logic;
SIGNAL \inspectR0[13]~output_o\ : std_logic;
SIGNAL \inspectR0[14]~output_o\ : std_logic;
SIGNAL \inspectR0[15]~output_o\ : std_logic;
SIGNAL \inspectR0[16]~output_o\ : std_logic;
SIGNAL \inspectR0[17]~output_o\ : std_logic;
SIGNAL \inspectR0[18]~output_o\ : std_logic;
SIGNAL \inspectR0[19]~output_o\ : std_logic;
SIGNAL \inspectR0[20]~output_o\ : std_logic;
SIGNAL \inspectR0[21]~output_o\ : std_logic;
SIGNAL \inspectR0[22]~output_o\ : std_logic;
SIGNAL \inspectR0[23]~output_o\ : std_logic;
SIGNAL \inspectR0[24]~output_o\ : std_logic;
SIGNAL \inspectR0[25]~output_o\ : std_logic;
SIGNAL \inspectR0[26]~output_o\ : std_logic;
SIGNAL \inspectR0[27]~output_o\ : std_logic;
SIGNAL \inspectR0[28]~output_o\ : std_logic;
SIGNAL \inspectR0[29]~output_o\ : std_logic;
SIGNAL \inspectR0[30]~output_o\ : std_logic;
SIGNAL \inspectR0[31]~output_o\ : std_logic;
SIGNAL \inspectR1[0]~output_o\ : std_logic;
SIGNAL \inspectR1[1]~output_o\ : std_logic;
SIGNAL \inspectR1[2]~output_o\ : std_logic;
SIGNAL \inspectR1[3]~output_o\ : std_logic;
SIGNAL \inspectR1[4]~output_o\ : std_logic;
SIGNAL \inspectR1[5]~output_o\ : std_logic;
SIGNAL \inspectR1[6]~output_o\ : std_logic;
SIGNAL \inspectR1[7]~output_o\ : std_logic;
SIGNAL \inspectR1[8]~output_o\ : std_logic;
SIGNAL \inspectR1[9]~output_o\ : std_logic;
SIGNAL \inspectR1[10]~output_o\ : std_logic;
SIGNAL \inspectR1[11]~output_o\ : std_logic;
SIGNAL \inspectR1[12]~output_o\ : std_logic;
SIGNAL \inspectR1[13]~output_o\ : std_logic;
SIGNAL \inspectR1[14]~output_o\ : std_logic;
SIGNAL \inspectR1[15]~output_o\ : std_logic;
SIGNAL \inspectR1[16]~output_o\ : std_logic;
SIGNAL \inspectR1[17]~output_o\ : std_logic;
SIGNAL \inspectR1[18]~output_o\ : std_logic;
SIGNAL \inspectR1[19]~output_o\ : std_logic;
SIGNAL \inspectR1[20]~output_o\ : std_logic;
SIGNAL \inspectR1[21]~output_o\ : std_logic;
SIGNAL \inspectR1[22]~output_o\ : std_logic;
SIGNAL \inspectR1[23]~output_o\ : std_logic;
SIGNAL \inspectR1[24]~output_o\ : std_logic;
SIGNAL \inspectR1[25]~output_o\ : std_logic;
SIGNAL \inspectR1[26]~output_o\ : std_logic;
SIGNAL \inspectR1[27]~output_o\ : std_logic;
SIGNAL \inspectR1[28]~output_o\ : std_logic;
SIGNAL \inspectR1[29]~output_o\ : std_logic;
SIGNAL \inspectR1[30]~output_o\ : std_logic;
SIGNAL \inspectR1[31]~output_o\ : std_logic;
SIGNAL \inspectR2[0]~output_o\ : std_logic;
SIGNAL \inspectR2[1]~output_o\ : std_logic;
SIGNAL \inspectR2[2]~output_o\ : std_logic;
SIGNAL \inspectR2[3]~output_o\ : std_logic;
SIGNAL \inspectR2[4]~output_o\ : std_logic;
SIGNAL \inspectR2[5]~output_o\ : std_logic;
SIGNAL \inspectR2[6]~output_o\ : std_logic;
SIGNAL \inspectR2[7]~output_o\ : std_logic;
SIGNAL \inspectR2[8]~output_o\ : std_logic;
SIGNAL \inspectR2[9]~output_o\ : std_logic;
SIGNAL \inspectR2[10]~output_o\ : std_logic;
SIGNAL \inspectR2[11]~output_o\ : std_logic;
SIGNAL \inspectR2[12]~output_o\ : std_logic;
SIGNAL \inspectR2[13]~output_o\ : std_logic;
SIGNAL \inspectR2[14]~output_o\ : std_logic;
SIGNAL \inspectR2[15]~output_o\ : std_logic;
SIGNAL \inspectR2[16]~output_o\ : std_logic;
SIGNAL \inspectR2[17]~output_o\ : std_logic;
SIGNAL \inspectR2[18]~output_o\ : std_logic;
SIGNAL \inspectR2[19]~output_o\ : std_logic;
SIGNAL \inspectR2[20]~output_o\ : std_logic;
SIGNAL \inspectR2[21]~output_o\ : std_logic;
SIGNAL \inspectR2[22]~output_o\ : std_logic;
SIGNAL \inspectR2[23]~output_o\ : std_logic;
SIGNAL \inspectR2[24]~output_o\ : std_logic;
SIGNAL \inspectR2[25]~output_o\ : std_logic;
SIGNAL \inspectR2[26]~output_o\ : std_logic;
SIGNAL \inspectR2[27]~output_o\ : std_logic;
SIGNAL \inspectR2[28]~output_o\ : std_logic;
SIGNAL \inspectR2[29]~output_o\ : std_logic;
SIGNAL \inspectR2[30]~output_o\ : std_logic;
SIGNAL \inspectR2[31]~output_o\ : std_logic;
SIGNAL \inspectEndRS[0]~output_o\ : std_logic;
SIGNAL \inspectEndRS[1]~output_o\ : std_logic;
SIGNAL \inspectEndRS[2]~output_o\ : std_logic;
SIGNAL \inspectEndRS[3]~output_o\ : std_logic;
SIGNAL \inspectEndRS[4]~output_o\ : std_logic;
SIGNAL \inspectEndRT[0]~output_o\ : std_logic;
SIGNAL \inspectEndRT[1]~output_o\ : std_logic;
SIGNAL \inspectEndRT[2]~output_o\ : std_logic;
SIGNAL \inspectEndRT[3]~output_o\ : std_logic;
SIGNAL \inspectEndRT[4]~output_o\ : std_logic;
SIGNAL \inspectEndRD[0]~output_o\ : std_logic;
SIGNAL \inspectEndRD[1]~output_o\ : std_logic;
SIGNAL \inspectEndRD[2]~output_o\ : std_logic;
SIGNAL \inspectEndRD[3]~output_o\ : std_logic;
SIGNAL \inspectEndRD[4]~output_o\ : std_logic;
SIGNAL \inspectInstru[0]~output_o\ : std_logic;
SIGNAL \inspectInstru[1]~output_o\ : std_logic;
SIGNAL \inspectInstru[2]~output_o\ : std_logic;
SIGNAL \inspectInstru[3]~output_o\ : std_logic;
SIGNAL \inspectInstru[4]~output_o\ : std_logic;
SIGNAL \inspectInstru[5]~output_o\ : std_logic;
SIGNAL \inspectInstru[6]~output_o\ : std_logic;
SIGNAL \inspectInstru[7]~output_o\ : std_logic;
SIGNAL \inspectInstru[8]~output_o\ : std_logic;
SIGNAL \inspectInstru[9]~output_o\ : std_logic;
SIGNAL \inspectInstru[10]~output_o\ : std_logic;
SIGNAL \inspectInstru[11]~output_o\ : std_logic;
SIGNAL \inspectInstru[12]~output_o\ : std_logic;
SIGNAL \inspectInstru[13]~output_o\ : std_logic;
SIGNAL \inspectInstru[14]~output_o\ : std_logic;
SIGNAL \inspectInstru[15]~output_o\ : std_logic;
SIGNAL \inspectInstru[16]~output_o\ : std_logic;
SIGNAL \inspectInstru[17]~output_o\ : std_logic;
SIGNAL \inspectInstru[18]~output_o\ : std_logic;
SIGNAL \inspectInstru[19]~output_o\ : std_logic;
SIGNAL \inspectInstru[20]~output_o\ : std_logic;
SIGNAL \inspectInstru[21]~output_o\ : std_logic;
SIGNAL \inspectInstru[22]~output_o\ : std_logic;
SIGNAL \inspectInstru[23]~output_o\ : std_logic;
SIGNAL \inspectInstru[24]~output_o\ : std_logic;
SIGNAL \inspectInstru[25]~output_o\ : std_logic;
SIGNAL \inspectInstru[26]~output_o\ : std_logic;
SIGNAL \inspectInstru[27]~output_o\ : std_logic;
SIGNAL \inspectInstru[28]~output_o\ : std_logic;
SIGNAL \inspectInstru[29]~output_o\ : std_logic;
SIGNAL \inspectInstru[30]~output_o\ : std_logic;
SIGNAL \inspectInstru[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ProgramCounter|DOUT[2]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \bancoRegs|Decoder0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \bancoRegs|Decoder0~1_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[1][0]~1_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[1][0]~q\ : std_logic;
SIGNAL \bancoRegs|Decoder0~2_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[2][0]~2_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[2][0]~q\ : std_logic;
SIGNAL \bancoRegs|Decoder0~3_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[3][0]~3_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[3][0]~q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \bancoRegs|Mux31~0_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ULA|Add0~195_combout\ : std_logic;
SIGNAL \ULA|Add0~128_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ULA|Add0~131_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][0]~0_combout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][0]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][1]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][1]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][1]~q\ : std_logic;
SIGNAL \ULA|Add0~133_combout\ : std_logic;
SIGNAL \bancoRegs|Mux30~0_combout\ : std_logic;
SIGNAL \ULA|Add0~134_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][1]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][2]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][2]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][2]~q\ : std_logic;
SIGNAL \ULA|Add0~135_combout\ : std_logic;
SIGNAL \bancoRegs|Mux29~0_combout\ : std_logic;
SIGNAL \ULA|Add0~136_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][2]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][3]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][3]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][3]~q\ : std_logic;
SIGNAL \ULA|Add0~137_combout\ : std_logic;
SIGNAL \bancoRegs|Mux28~0_combout\ : std_logic;
SIGNAL \ULA|Add0~138_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][3]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][4]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][4]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][4]~q\ : std_logic;
SIGNAL \ULA|Add0~139_combout\ : std_logic;
SIGNAL \bancoRegs|Mux27~0_combout\ : std_logic;
SIGNAL \ULA|Add0~140_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][4]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][5]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][5]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][5]~q\ : std_logic;
SIGNAL \ULA|Add0~141_combout\ : std_logic;
SIGNAL \bancoRegs|Mux26~0_combout\ : std_logic;
SIGNAL \ULA|Add0~142_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][5]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][6]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][6]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][6]~q\ : std_logic;
SIGNAL \ULA|Add0~143_combout\ : std_logic;
SIGNAL \bancoRegs|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|Add0~144_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][6]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][7]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][7]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][7]~q\ : std_logic;
SIGNAL \ULA|Add0~145_combout\ : std_logic;
SIGNAL \bancoRegs|Mux24~0_combout\ : std_logic;
SIGNAL \ULA|Add0~146_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][7]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][8]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][8]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][8]~q\ : std_logic;
SIGNAL \ULA|Add0~147_combout\ : std_logic;
SIGNAL \bancoRegs|Mux23~0_combout\ : std_logic;
SIGNAL \ULA|Add0~148_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][8]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][9]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][9]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][9]~q\ : std_logic;
SIGNAL \ULA|Add0~149_combout\ : std_logic;
SIGNAL \bancoRegs|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|Add0~150_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][9]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][10]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][10]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][10]~q\ : std_logic;
SIGNAL \ULA|Add0~151_combout\ : std_logic;
SIGNAL \bancoRegs|Mux21~0_combout\ : std_logic;
SIGNAL \ULA|Add0~152_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][10]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][11]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][11]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][11]~q\ : std_logic;
SIGNAL \ULA|Add0~153_combout\ : std_logic;
SIGNAL \bancoRegs|Mux20~0_combout\ : std_logic;
SIGNAL \ULA|Add0~154_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][11]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][12]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][12]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][12]~q\ : std_logic;
SIGNAL \ULA|Add0~155_combout\ : std_logic;
SIGNAL \bancoRegs|Mux19~0_combout\ : std_logic;
SIGNAL \ULA|Add0~156_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][12]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][13]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][13]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][13]~q\ : std_logic;
SIGNAL \ULA|Add0~157_combout\ : std_logic;
SIGNAL \bancoRegs|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|Add0~158_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][13]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][14]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][14]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][14]~q\ : std_logic;
SIGNAL \ULA|Add0~159_combout\ : std_logic;
SIGNAL \bancoRegs|Mux17~0_combout\ : std_logic;
SIGNAL \ULA|Add0~160_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][14]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][15]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][15]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][15]~q\ : std_logic;
SIGNAL \ULA|Add0~161_combout\ : std_logic;
SIGNAL \bancoRegs|Mux16~0_combout\ : std_logic;
SIGNAL \ULA|Add0~162_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][15]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][16]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][16]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][16]~q\ : std_logic;
SIGNAL \ULA|Add0~163_combout\ : std_logic;
SIGNAL \bancoRegs|Mux15~0_combout\ : std_logic;
SIGNAL \ULA|Add0~164_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][16]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][17]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][17]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][17]~q\ : std_logic;
SIGNAL \ULA|Add0~165_combout\ : std_logic;
SIGNAL \bancoRegs|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|Add0~166_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][17]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][18]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][18]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][18]~q\ : std_logic;
SIGNAL \ULA|Add0~167_combout\ : std_logic;
SIGNAL \bancoRegs|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|Add0~168_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][18]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][19]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][19]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][19]~q\ : std_logic;
SIGNAL \ULA|Add0~169_combout\ : std_logic;
SIGNAL \bancoRegs|Mux12~0_combout\ : std_logic;
SIGNAL \ULA|Add0~170_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][19]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][20]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][20]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][20]~q\ : std_logic;
SIGNAL \ULA|Add0~171_combout\ : std_logic;
SIGNAL \bancoRegs|Mux11~0_combout\ : std_logic;
SIGNAL \ULA|Add0~172_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][20]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][21]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][21]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][21]~q\ : std_logic;
SIGNAL \ULA|Add0~173_combout\ : std_logic;
SIGNAL \bancoRegs|Mux10~0_combout\ : std_logic;
SIGNAL \ULA|Add0~174_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][21]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][22]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][22]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][22]~q\ : std_logic;
SIGNAL \ULA|Add0~175_combout\ : std_logic;
SIGNAL \bancoRegs|Mux9~0_combout\ : std_logic;
SIGNAL \ULA|Add0~176_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][22]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][23]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][23]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][23]~q\ : std_logic;
SIGNAL \ULA|Add0~177_combout\ : std_logic;
SIGNAL \bancoRegs|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|Add0~178_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][23]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][24]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][24]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][24]~q\ : std_logic;
SIGNAL \ULA|Add0~179_combout\ : std_logic;
SIGNAL \bancoRegs|Mux7~0_combout\ : std_logic;
SIGNAL \ULA|Add0~180_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][24]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][25]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][25]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][25]~q\ : std_logic;
SIGNAL \ULA|Add0~181_combout\ : std_logic;
SIGNAL \bancoRegs|Mux6~0_combout\ : std_logic;
SIGNAL \ULA|Add0~182_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][25]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][26]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][26]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][26]~q\ : std_logic;
SIGNAL \ULA|Add0~183_combout\ : std_logic;
SIGNAL \bancoRegs|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Add0~184_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][26]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][27]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][27]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][27]~q\ : std_logic;
SIGNAL \ULA|Add0~185_combout\ : std_logic;
SIGNAL \bancoRegs|Mux4~0_combout\ : std_logic;
SIGNAL \ULA|Add0~186_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][27]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][28]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][28]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][28]~q\ : std_logic;
SIGNAL \ULA|Add0~187_combout\ : std_logic;
SIGNAL \bancoRegs|Mux3~0_combout\ : std_logic;
SIGNAL \ULA|Add0~188_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][28]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][29]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][29]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][29]~q\ : std_logic;
SIGNAL \ULA|Add0~189_combout\ : std_logic;
SIGNAL \bancoRegs|Mux2~0_combout\ : std_logic;
SIGNAL \ULA|Add0~190_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][29]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][30]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][30]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][30]~q\ : std_logic;
SIGNAL \ULA|Add0~191_combout\ : std_logic;
SIGNAL \bancoRegs|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|Add0~192_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][30]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[1][31]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[2][31]~q\ : std_logic;
SIGNAL \bancoRegs|registradores[3][31]~q\ : std_logic;
SIGNAL \ULA|Add0~193_combout\ : std_logic;
SIGNAL \bancoRegs|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Add0~194_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \bancoRegs|registradores[0][31]~q\ : std_logic;
SIGNAL \ProgramCounter|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][31]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][30]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][29]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][28]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][27]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][26]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][25]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][24]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][23]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][22]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][21]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][20]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][19]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][18]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][17]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][16]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][15]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][14]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][13]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][12]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][11]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][10]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][9]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][8]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][7]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][6]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][5]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][4]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][3]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][2]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[2][1]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][31]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][30]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][29]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][28]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][27]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][26]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][25]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][24]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][23]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][22]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][21]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][20]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][19]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][18]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][17]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][16]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][15]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][14]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][13]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][12]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][11]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][10]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][9]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][8]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][7]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][6]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][5]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][4]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][3]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][2]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][1]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][31]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][30]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][29]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][28]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][27]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][26]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][25]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][24]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][23]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][22]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][21]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][20]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][19]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][18]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][17]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][16]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][15]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][14]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][13]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][12]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][11]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][10]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][9]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][8]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][7]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][6]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][5]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][4]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][3]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][2]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][1]~q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~135_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~134_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~133_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~128_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][0]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ProgramCounter|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 2);
SIGNAL \bancoRegs|ALT_INV_registradores[2][0]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[1][0]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[0][0]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][31]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][30]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][29]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][28]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][27]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][26]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][25]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][24]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][23]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][22]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][21]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][20]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][19]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][18]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][17]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][16]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][15]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][14]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][13]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][12]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][11]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][10]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][9]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][8]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][7]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][6]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][5]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][4]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][3]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][2]~q\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_registradores[3][1]~q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~195_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~194_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~193_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~192_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~191_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~190_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~189_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~188_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~187_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~186_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~185_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~184_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~183_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~182_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~181_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~180_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~179_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~178_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~177_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~176_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~175_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~174_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~173_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~172_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~171_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~170_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~169_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~168_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~167_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~166_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~165_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~164_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~163_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~162_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~161_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~160_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~159_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~158_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~157_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~156_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~155_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~154_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~153_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~152_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~151_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~150_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~149_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~148_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~147_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~146_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~145_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~144_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~143_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~142_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~141_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~140_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~139_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~138_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~137_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~136_combout\ : std_logic;
SIGNAL \bancoRegs|ALT_INV_Mux29~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
DATA_OUT <= ww_DATA_OUT;
ww_KEY <= KEY;
inspectR0 <= ww_inspectR0;
inspectR1 <= ww_inspectR1;
inspectR2 <= ww_inspectR2;
inspectEndRS <= ww_inspectEndRS;
inspectEndRT <= ww_inspectEndRT;
inspectEndRD <= ww_inspectEndRD;
inspectInstru <= ww_inspectInstru;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\bancoRegs|ALT_INV_registradores[2][31]~q\ <= NOT \bancoRegs|registradores[2][31]~q\;
\bancoRegs|ALT_INV_registradores[2][30]~q\ <= NOT \bancoRegs|registradores[2][30]~q\;
\bancoRegs|ALT_INV_registradores[2][29]~q\ <= NOT \bancoRegs|registradores[2][29]~q\;
\bancoRegs|ALT_INV_registradores[2][28]~q\ <= NOT \bancoRegs|registradores[2][28]~q\;
\bancoRegs|ALT_INV_registradores[2][27]~q\ <= NOT \bancoRegs|registradores[2][27]~q\;
\bancoRegs|ALT_INV_registradores[2][26]~q\ <= NOT \bancoRegs|registradores[2][26]~q\;
\bancoRegs|ALT_INV_registradores[2][25]~q\ <= NOT \bancoRegs|registradores[2][25]~q\;
\bancoRegs|ALT_INV_registradores[2][24]~q\ <= NOT \bancoRegs|registradores[2][24]~q\;
\bancoRegs|ALT_INV_registradores[2][23]~q\ <= NOT \bancoRegs|registradores[2][23]~q\;
\bancoRegs|ALT_INV_registradores[2][22]~q\ <= NOT \bancoRegs|registradores[2][22]~q\;
\bancoRegs|ALT_INV_registradores[2][21]~q\ <= NOT \bancoRegs|registradores[2][21]~q\;
\bancoRegs|ALT_INV_registradores[2][20]~q\ <= NOT \bancoRegs|registradores[2][20]~q\;
\bancoRegs|ALT_INV_registradores[2][19]~q\ <= NOT \bancoRegs|registradores[2][19]~q\;
\bancoRegs|ALT_INV_registradores[2][18]~q\ <= NOT \bancoRegs|registradores[2][18]~q\;
\bancoRegs|ALT_INV_registradores[2][17]~q\ <= NOT \bancoRegs|registradores[2][17]~q\;
\bancoRegs|ALT_INV_registradores[2][16]~q\ <= NOT \bancoRegs|registradores[2][16]~q\;
\bancoRegs|ALT_INV_registradores[2][15]~q\ <= NOT \bancoRegs|registradores[2][15]~q\;
\bancoRegs|ALT_INV_registradores[2][14]~q\ <= NOT \bancoRegs|registradores[2][14]~q\;
\bancoRegs|ALT_INV_registradores[2][13]~q\ <= NOT \bancoRegs|registradores[2][13]~q\;
\bancoRegs|ALT_INV_registradores[2][12]~q\ <= NOT \bancoRegs|registradores[2][12]~q\;
\bancoRegs|ALT_INV_registradores[2][11]~q\ <= NOT \bancoRegs|registradores[2][11]~q\;
\bancoRegs|ALT_INV_registradores[2][10]~q\ <= NOT \bancoRegs|registradores[2][10]~q\;
\bancoRegs|ALT_INV_registradores[2][9]~q\ <= NOT \bancoRegs|registradores[2][9]~q\;
\bancoRegs|ALT_INV_registradores[2][8]~q\ <= NOT \bancoRegs|registradores[2][8]~q\;
\bancoRegs|ALT_INV_registradores[2][7]~q\ <= NOT \bancoRegs|registradores[2][7]~q\;
\bancoRegs|ALT_INV_registradores[2][6]~q\ <= NOT \bancoRegs|registradores[2][6]~q\;
\bancoRegs|ALT_INV_registradores[2][5]~q\ <= NOT \bancoRegs|registradores[2][5]~q\;
\bancoRegs|ALT_INV_registradores[2][4]~q\ <= NOT \bancoRegs|registradores[2][4]~q\;
\bancoRegs|ALT_INV_registradores[2][3]~q\ <= NOT \bancoRegs|registradores[2][3]~q\;
\bancoRegs|ALT_INV_registradores[2][2]~q\ <= NOT \bancoRegs|registradores[2][2]~q\;
\bancoRegs|ALT_INV_registradores[2][1]~q\ <= NOT \bancoRegs|registradores[2][1]~q\;
\bancoRegs|ALT_INV_registradores[1][31]~q\ <= NOT \bancoRegs|registradores[1][31]~q\;
\bancoRegs|ALT_INV_registradores[1][30]~q\ <= NOT \bancoRegs|registradores[1][30]~q\;
\bancoRegs|ALT_INV_registradores[1][29]~q\ <= NOT \bancoRegs|registradores[1][29]~q\;
\bancoRegs|ALT_INV_registradores[1][28]~q\ <= NOT \bancoRegs|registradores[1][28]~q\;
\bancoRegs|ALT_INV_registradores[1][27]~q\ <= NOT \bancoRegs|registradores[1][27]~q\;
\bancoRegs|ALT_INV_registradores[1][26]~q\ <= NOT \bancoRegs|registradores[1][26]~q\;
\bancoRegs|ALT_INV_registradores[1][25]~q\ <= NOT \bancoRegs|registradores[1][25]~q\;
\bancoRegs|ALT_INV_registradores[1][24]~q\ <= NOT \bancoRegs|registradores[1][24]~q\;
\bancoRegs|ALT_INV_registradores[1][23]~q\ <= NOT \bancoRegs|registradores[1][23]~q\;
\bancoRegs|ALT_INV_registradores[1][22]~q\ <= NOT \bancoRegs|registradores[1][22]~q\;
\bancoRegs|ALT_INV_registradores[1][21]~q\ <= NOT \bancoRegs|registradores[1][21]~q\;
\bancoRegs|ALT_INV_registradores[1][20]~q\ <= NOT \bancoRegs|registradores[1][20]~q\;
\bancoRegs|ALT_INV_registradores[1][19]~q\ <= NOT \bancoRegs|registradores[1][19]~q\;
\bancoRegs|ALT_INV_registradores[1][18]~q\ <= NOT \bancoRegs|registradores[1][18]~q\;
\bancoRegs|ALT_INV_registradores[1][17]~q\ <= NOT \bancoRegs|registradores[1][17]~q\;
\bancoRegs|ALT_INV_registradores[1][16]~q\ <= NOT \bancoRegs|registradores[1][16]~q\;
\bancoRegs|ALT_INV_registradores[1][15]~q\ <= NOT \bancoRegs|registradores[1][15]~q\;
\bancoRegs|ALT_INV_registradores[1][14]~q\ <= NOT \bancoRegs|registradores[1][14]~q\;
\bancoRegs|ALT_INV_registradores[1][13]~q\ <= NOT \bancoRegs|registradores[1][13]~q\;
\bancoRegs|ALT_INV_registradores[1][12]~q\ <= NOT \bancoRegs|registradores[1][12]~q\;
\bancoRegs|ALT_INV_registradores[1][11]~q\ <= NOT \bancoRegs|registradores[1][11]~q\;
\bancoRegs|ALT_INV_registradores[1][10]~q\ <= NOT \bancoRegs|registradores[1][10]~q\;
\bancoRegs|ALT_INV_registradores[1][9]~q\ <= NOT \bancoRegs|registradores[1][9]~q\;
\bancoRegs|ALT_INV_registradores[1][8]~q\ <= NOT \bancoRegs|registradores[1][8]~q\;
\bancoRegs|ALT_INV_registradores[1][7]~q\ <= NOT \bancoRegs|registradores[1][7]~q\;
\bancoRegs|ALT_INV_registradores[1][6]~q\ <= NOT \bancoRegs|registradores[1][6]~q\;
\bancoRegs|ALT_INV_registradores[1][5]~q\ <= NOT \bancoRegs|registradores[1][5]~q\;
\bancoRegs|ALT_INV_registradores[1][4]~q\ <= NOT \bancoRegs|registradores[1][4]~q\;
\bancoRegs|ALT_INV_registradores[1][3]~q\ <= NOT \bancoRegs|registradores[1][3]~q\;
\bancoRegs|ALT_INV_registradores[1][2]~q\ <= NOT \bancoRegs|registradores[1][2]~q\;
\bancoRegs|ALT_INV_registradores[1][1]~q\ <= NOT \bancoRegs|registradores[1][1]~q\;
\bancoRegs|ALT_INV_registradores[0][31]~q\ <= NOT \bancoRegs|registradores[0][31]~q\;
\bancoRegs|ALT_INV_registradores[0][30]~q\ <= NOT \bancoRegs|registradores[0][30]~q\;
\bancoRegs|ALT_INV_registradores[0][29]~q\ <= NOT \bancoRegs|registradores[0][29]~q\;
\bancoRegs|ALT_INV_registradores[0][28]~q\ <= NOT \bancoRegs|registradores[0][28]~q\;
\bancoRegs|ALT_INV_registradores[0][27]~q\ <= NOT \bancoRegs|registradores[0][27]~q\;
\bancoRegs|ALT_INV_registradores[0][26]~q\ <= NOT \bancoRegs|registradores[0][26]~q\;
\bancoRegs|ALT_INV_registradores[0][25]~q\ <= NOT \bancoRegs|registradores[0][25]~q\;
\bancoRegs|ALT_INV_registradores[0][24]~q\ <= NOT \bancoRegs|registradores[0][24]~q\;
\bancoRegs|ALT_INV_registradores[0][23]~q\ <= NOT \bancoRegs|registradores[0][23]~q\;
\bancoRegs|ALT_INV_registradores[0][22]~q\ <= NOT \bancoRegs|registradores[0][22]~q\;
\bancoRegs|ALT_INV_registradores[0][21]~q\ <= NOT \bancoRegs|registradores[0][21]~q\;
\bancoRegs|ALT_INV_registradores[0][20]~q\ <= NOT \bancoRegs|registradores[0][20]~q\;
\bancoRegs|ALT_INV_registradores[0][19]~q\ <= NOT \bancoRegs|registradores[0][19]~q\;
\bancoRegs|ALT_INV_registradores[0][18]~q\ <= NOT \bancoRegs|registradores[0][18]~q\;
\bancoRegs|ALT_INV_registradores[0][17]~q\ <= NOT \bancoRegs|registradores[0][17]~q\;
\bancoRegs|ALT_INV_registradores[0][16]~q\ <= NOT \bancoRegs|registradores[0][16]~q\;
\bancoRegs|ALT_INV_registradores[0][15]~q\ <= NOT \bancoRegs|registradores[0][15]~q\;
\bancoRegs|ALT_INV_registradores[0][14]~q\ <= NOT \bancoRegs|registradores[0][14]~q\;
\bancoRegs|ALT_INV_registradores[0][13]~q\ <= NOT \bancoRegs|registradores[0][13]~q\;
\bancoRegs|ALT_INV_registradores[0][12]~q\ <= NOT \bancoRegs|registradores[0][12]~q\;
\bancoRegs|ALT_INV_registradores[0][11]~q\ <= NOT \bancoRegs|registradores[0][11]~q\;
\bancoRegs|ALT_INV_registradores[0][10]~q\ <= NOT \bancoRegs|registradores[0][10]~q\;
\bancoRegs|ALT_INV_registradores[0][9]~q\ <= NOT \bancoRegs|registradores[0][9]~q\;
\bancoRegs|ALT_INV_registradores[0][8]~q\ <= NOT \bancoRegs|registradores[0][8]~q\;
\bancoRegs|ALT_INV_registradores[0][7]~q\ <= NOT \bancoRegs|registradores[0][7]~q\;
\bancoRegs|ALT_INV_registradores[0][6]~q\ <= NOT \bancoRegs|registradores[0][6]~q\;
\bancoRegs|ALT_INV_registradores[0][5]~q\ <= NOT \bancoRegs|registradores[0][5]~q\;
\bancoRegs|ALT_INV_registradores[0][4]~q\ <= NOT \bancoRegs|registradores[0][4]~q\;
\bancoRegs|ALT_INV_registradores[0][3]~q\ <= NOT \bancoRegs|registradores[0][3]~q\;
\bancoRegs|ALT_INV_registradores[0][2]~q\ <= NOT \bancoRegs|registradores[0][2]~q\;
\bancoRegs|ALT_INV_registradores[0][1]~q\ <= NOT \bancoRegs|registradores[0][1]~q\;
\ULA|ALT_INV_Add0~135_combout\ <= NOT \ULA|Add0~135_combout\;
\ULA|ALT_INV_Add0~134_combout\ <= NOT \ULA|Add0~134_combout\;
\bancoRegs|ALT_INV_Mux30~0_combout\ <= NOT \bancoRegs|Mux30~0_combout\;
\ULA|ALT_INV_Add0~133_combout\ <= NOT \ULA|Add0~133_combout\;
\ULA|ALT_INV_Add0~128_combout\ <= NOT \ULA|Add0~128_combout\;
\bancoRegs|ALT_INV_Mux31~0_combout\ <= NOT \bancoRegs|Mux31~0_combout\;
\bancoRegs|ALT_INV_registradores[3][0]~q\ <= NOT \bancoRegs|registradores[3][0]~q\;
\bancoRegs|ALT_INV_Decoder0~2_combout\ <= NOT \bancoRegs|Decoder0~2_combout\;
\bancoRegs|ALT_INV_Decoder0~1_combout\ <= NOT \bancoRegs|Decoder0~1_combout\;
\bancoRegs|ALT_INV_Decoder0~0_combout\ <= NOT \bancoRegs|Decoder0~0_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\ProgramCounter|ALT_INV_DOUT\(8) <= NOT \ProgramCounter|DOUT\(8);
\ProgramCounter|ALT_INV_DOUT\(9) <= NOT \ProgramCounter|DOUT\(9);
\ProgramCounter|ALT_INV_DOUT\(6) <= NOT \ProgramCounter|DOUT\(6);
\ProgramCounter|ALT_INV_DOUT\(7) <= NOT \ProgramCounter|DOUT\(7);
\ProgramCounter|ALT_INV_DOUT\(5) <= NOT \ProgramCounter|DOUT\(5);
\ProgramCounter|ALT_INV_DOUT\(4) <= NOT \ProgramCounter|DOUT\(4);
\ProgramCounter|ALT_INV_DOUT\(3) <= NOT \ProgramCounter|DOUT\(3);
\ProgramCounter|ALT_INV_DOUT\(2) <= NOT \ProgramCounter|DOUT\(2);
\bancoRegs|ALT_INV_registradores[2][0]~q\ <= NOT \bancoRegs|registradores[2][0]~q\;
\bancoRegs|ALT_INV_registradores[1][0]~q\ <= NOT \bancoRegs|registradores[1][0]~q\;
\bancoRegs|ALT_INV_registradores[0][0]~q\ <= NOT \bancoRegs|registradores[0][0]~q\;
\bancoRegs|ALT_INV_registradores[3][31]~q\ <= NOT \bancoRegs|registradores[3][31]~q\;
\bancoRegs|ALT_INV_registradores[3][30]~q\ <= NOT \bancoRegs|registradores[3][30]~q\;
\bancoRegs|ALT_INV_registradores[3][29]~q\ <= NOT \bancoRegs|registradores[3][29]~q\;
\bancoRegs|ALT_INV_registradores[3][28]~q\ <= NOT \bancoRegs|registradores[3][28]~q\;
\bancoRegs|ALT_INV_registradores[3][27]~q\ <= NOT \bancoRegs|registradores[3][27]~q\;
\bancoRegs|ALT_INV_registradores[3][26]~q\ <= NOT \bancoRegs|registradores[3][26]~q\;
\bancoRegs|ALT_INV_registradores[3][25]~q\ <= NOT \bancoRegs|registradores[3][25]~q\;
\bancoRegs|ALT_INV_registradores[3][24]~q\ <= NOT \bancoRegs|registradores[3][24]~q\;
\bancoRegs|ALT_INV_registradores[3][23]~q\ <= NOT \bancoRegs|registradores[3][23]~q\;
\bancoRegs|ALT_INV_registradores[3][22]~q\ <= NOT \bancoRegs|registradores[3][22]~q\;
\bancoRegs|ALT_INV_registradores[3][21]~q\ <= NOT \bancoRegs|registradores[3][21]~q\;
\bancoRegs|ALT_INV_registradores[3][20]~q\ <= NOT \bancoRegs|registradores[3][20]~q\;
\bancoRegs|ALT_INV_registradores[3][19]~q\ <= NOT \bancoRegs|registradores[3][19]~q\;
\bancoRegs|ALT_INV_registradores[3][18]~q\ <= NOT \bancoRegs|registradores[3][18]~q\;
\bancoRegs|ALT_INV_registradores[3][17]~q\ <= NOT \bancoRegs|registradores[3][17]~q\;
\bancoRegs|ALT_INV_registradores[3][16]~q\ <= NOT \bancoRegs|registradores[3][16]~q\;
\bancoRegs|ALT_INV_registradores[3][15]~q\ <= NOT \bancoRegs|registradores[3][15]~q\;
\bancoRegs|ALT_INV_registradores[3][14]~q\ <= NOT \bancoRegs|registradores[3][14]~q\;
\bancoRegs|ALT_INV_registradores[3][13]~q\ <= NOT \bancoRegs|registradores[3][13]~q\;
\bancoRegs|ALT_INV_registradores[3][12]~q\ <= NOT \bancoRegs|registradores[3][12]~q\;
\bancoRegs|ALT_INV_registradores[3][11]~q\ <= NOT \bancoRegs|registradores[3][11]~q\;
\bancoRegs|ALT_INV_registradores[3][10]~q\ <= NOT \bancoRegs|registradores[3][10]~q\;
\bancoRegs|ALT_INV_registradores[3][9]~q\ <= NOT \bancoRegs|registradores[3][9]~q\;
\bancoRegs|ALT_INV_registradores[3][8]~q\ <= NOT \bancoRegs|registradores[3][8]~q\;
\bancoRegs|ALT_INV_registradores[3][7]~q\ <= NOT \bancoRegs|registradores[3][7]~q\;
\bancoRegs|ALT_INV_registradores[3][6]~q\ <= NOT \bancoRegs|registradores[3][6]~q\;
\bancoRegs|ALT_INV_registradores[3][5]~q\ <= NOT \bancoRegs|registradores[3][5]~q\;
\bancoRegs|ALT_INV_registradores[3][4]~q\ <= NOT \bancoRegs|registradores[3][4]~q\;
\bancoRegs|ALT_INV_registradores[3][3]~q\ <= NOT \bancoRegs|registradores[3][3]~q\;
\bancoRegs|ALT_INV_registradores[3][2]~q\ <= NOT \bancoRegs|registradores[3][2]~q\;
\bancoRegs|ALT_INV_registradores[3][1]~q\ <= NOT \bancoRegs|registradores[3][1]~q\;
\ULA|ALT_INV_Add0~195_combout\ <= NOT \ULA|Add0~195_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\bancoRegs|ALT_INV_Decoder0~3_combout\ <= NOT \bancoRegs|Decoder0~3_combout\;
\ULA|ALT_INV_Add0~194_combout\ <= NOT \ULA|Add0~194_combout\;
\bancoRegs|ALT_INV_Mux0~0_combout\ <= NOT \bancoRegs|Mux0~0_combout\;
\ULA|ALT_INV_Add0~193_combout\ <= NOT \ULA|Add0~193_combout\;
\ULA|ALT_INV_Add0~192_combout\ <= NOT \ULA|Add0~192_combout\;
\bancoRegs|ALT_INV_Mux1~0_combout\ <= NOT \bancoRegs|Mux1~0_combout\;
\ULA|ALT_INV_Add0~191_combout\ <= NOT \ULA|Add0~191_combout\;
\ULA|ALT_INV_Add0~190_combout\ <= NOT \ULA|Add0~190_combout\;
\bancoRegs|ALT_INV_Mux2~0_combout\ <= NOT \bancoRegs|Mux2~0_combout\;
\ULA|ALT_INV_Add0~189_combout\ <= NOT \ULA|Add0~189_combout\;
\ULA|ALT_INV_Add0~188_combout\ <= NOT \ULA|Add0~188_combout\;
\bancoRegs|ALT_INV_Mux3~0_combout\ <= NOT \bancoRegs|Mux3~0_combout\;
\ULA|ALT_INV_Add0~187_combout\ <= NOT \ULA|Add0~187_combout\;
\ULA|ALT_INV_Add0~186_combout\ <= NOT \ULA|Add0~186_combout\;
\bancoRegs|ALT_INV_Mux4~0_combout\ <= NOT \bancoRegs|Mux4~0_combout\;
\ULA|ALT_INV_Add0~185_combout\ <= NOT \ULA|Add0~185_combout\;
\ULA|ALT_INV_Add0~184_combout\ <= NOT \ULA|Add0~184_combout\;
\bancoRegs|ALT_INV_Mux5~0_combout\ <= NOT \bancoRegs|Mux5~0_combout\;
\ULA|ALT_INV_Add0~183_combout\ <= NOT \ULA|Add0~183_combout\;
\ULA|ALT_INV_Add0~182_combout\ <= NOT \ULA|Add0~182_combout\;
\bancoRegs|ALT_INV_Mux6~0_combout\ <= NOT \bancoRegs|Mux6~0_combout\;
\ULA|ALT_INV_Add0~181_combout\ <= NOT \ULA|Add0~181_combout\;
\ULA|ALT_INV_Add0~180_combout\ <= NOT \ULA|Add0~180_combout\;
\bancoRegs|ALT_INV_Mux7~0_combout\ <= NOT \bancoRegs|Mux7~0_combout\;
\ULA|ALT_INV_Add0~179_combout\ <= NOT \ULA|Add0~179_combout\;
\ULA|ALT_INV_Add0~178_combout\ <= NOT \ULA|Add0~178_combout\;
\bancoRegs|ALT_INV_Mux8~0_combout\ <= NOT \bancoRegs|Mux8~0_combout\;
\ULA|ALT_INV_Add0~177_combout\ <= NOT \ULA|Add0~177_combout\;
\ULA|ALT_INV_Add0~176_combout\ <= NOT \ULA|Add0~176_combout\;
\bancoRegs|ALT_INV_Mux9~0_combout\ <= NOT \bancoRegs|Mux9~0_combout\;
\ULA|ALT_INV_Add0~175_combout\ <= NOT \ULA|Add0~175_combout\;
\ULA|ALT_INV_Add0~174_combout\ <= NOT \ULA|Add0~174_combout\;
\bancoRegs|ALT_INV_Mux10~0_combout\ <= NOT \bancoRegs|Mux10~0_combout\;
\ULA|ALT_INV_Add0~173_combout\ <= NOT \ULA|Add0~173_combout\;
\ULA|ALT_INV_Add0~172_combout\ <= NOT \ULA|Add0~172_combout\;
\bancoRegs|ALT_INV_Mux11~0_combout\ <= NOT \bancoRegs|Mux11~0_combout\;
\ULA|ALT_INV_Add0~171_combout\ <= NOT \ULA|Add0~171_combout\;
\ULA|ALT_INV_Add0~170_combout\ <= NOT \ULA|Add0~170_combout\;
\bancoRegs|ALT_INV_Mux12~0_combout\ <= NOT \bancoRegs|Mux12~0_combout\;
\ULA|ALT_INV_Add0~169_combout\ <= NOT \ULA|Add0~169_combout\;
\ULA|ALT_INV_Add0~168_combout\ <= NOT \ULA|Add0~168_combout\;
\bancoRegs|ALT_INV_Mux13~0_combout\ <= NOT \bancoRegs|Mux13~0_combout\;
\ULA|ALT_INV_Add0~167_combout\ <= NOT \ULA|Add0~167_combout\;
\ULA|ALT_INV_Add0~166_combout\ <= NOT \ULA|Add0~166_combout\;
\bancoRegs|ALT_INV_Mux14~0_combout\ <= NOT \bancoRegs|Mux14~0_combout\;
\ULA|ALT_INV_Add0~165_combout\ <= NOT \ULA|Add0~165_combout\;
\ULA|ALT_INV_Add0~164_combout\ <= NOT \ULA|Add0~164_combout\;
\bancoRegs|ALT_INV_Mux15~0_combout\ <= NOT \bancoRegs|Mux15~0_combout\;
\ULA|ALT_INV_Add0~163_combout\ <= NOT \ULA|Add0~163_combout\;
\ULA|ALT_INV_Add0~162_combout\ <= NOT \ULA|Add0~162_combout\;
\bancoRegs|ALT_INV_Mux16~0_combout\ <= NOT \bancoRegs|Mux16~0_combout\;
\ULA|ALT_INV_Add0~161_combout\ <= NOT \ULA|Add0~161_combout\;
\ULA|ALT_INV_Add0~160_combout\ <= NOT \ULA|Add0~160_combout\;
\bancoRegs|ALT_INV_Mux17~0_combout\ <= NOT \bancoRegs|Mux17~0_combout\;
\ULA|ALT_INV_Add0~159_combout\ <= NOT \ULA|Add0~159_combout\;
\ULA|ALT_INV_Add0~158_combout\ <= NOT \ULA|Add0~158_combout\;
\bancoRegs|ALT_INV_Mux18~0_combout\ <= NOT \bancoRegs|Mux18~0_combout\;
\ULA|ALT_INV_Add0~157_combout\ <= NOT \ULA|Add0~157_combout\;
\ULA|ALT_INV_Add0~156_combout\ <= NOT \ULA|Add0~156_combout\;
\bancoRegs|ALT_INV_Mux19~0_combout\ <= NOT \bancoRegs|Mux19~0_combout\;
\ULA|ALT_INV_Add0~155_combout\ <= NOT \ULA|Add0~155_combout\;
\ULA|ALT_INV_Add0~154_combout\ <= NOT \ULA|Add0~154_combout\;
\bancoRegs|ALT_INV_Mux20~0_combout\ <= NOT \bancoRegs|Mux20~0_combout\;
\ULA|ALT_INV_Add0~153_combout\ <= NOT \ULA|Add0~153_combout\;
\ULA|ALT_INV_Add0~152_combout\ <= NOT \ULA|Add0~152_combout\;
\bancoRegs|ALT_INV_Mux21~0_combout\ <= NOT \bancoRegs|Mux21~0_combout\;
\ULA|ALT_INV_Add0~151_combout\ <= NOT \ULA|Add0~151_combout\;
\ULA|ALT_INV_Add0~150_combout\ <= NOT \ULA|Add0~150_combout\;
\bancoRegs|ALT_INV_Mux22~0_combout\ <= NOT \bancoRegs|Mux22~0_combout\;
\ULA|ALT_INV_Add0~149_combout\ <= NOT \ULA|Add0~149_combout\;
\ULA|ALT_INV_Add0~148_combout\ <= NOT \ULA|Add0~148_combout\;
\bancoRegs|ALT_INV_Mux23~0_combout\ <= NOT \bancoRegs|Mux23~0_combout\;
\ULA|ALT_INV_Add0~147_combout\ <= NOT \ULA|Add0~147_combout\;
\ULA|ALT_INV_Add0~146_combout\ <= NOT \ULA|Add0~146_combout\;
\bancoRegs|ALT_INV_Mux24~0_combout\ <= NOT \bancoRegs|Mux24~0_combout\;
\ULA|ALT_INV_Add0~145_combout\ <= NOT \ULA|Add0~145_combout\;
\ULA|ALT_INV_Add0~144_combout\ <= NOT \ULA|Add0~144_combout\;
\bancoRegs|ALT_INV_Mux25~0_combout\ <= NOT \bancoRegs|Mux25~0_combout\;
\ULA|ALT_INV_Add0~143_combout\ <= NOT \ULA|Add0~143_combout\;
\ULA|ALT_INV_Add0~142_combout\ <= NOT \ULA|Add0~142_combout\;
\bancoRegs|ALT_INV_Mux26~0_combout\ <= NOT \bancoRegs|Mux26~0_combout\;
\ULA|ALT_INV_Add0~141_combout\ <= NOT \ULA|Add0~141_combout\;
\ULA|ALT_INV_Add0~140_combout\ <= NOT \ULA|Add0~140_combout\;
\bancoRegs|ALT_INV_Mux27~0_combout\ <= NOT \bancoRegs|Mux27~0_combout\;
\ULA|ALT_INV_Add0~139_combout\ <= NOT \ULA|Add0~139_combout\;
\ULA|ALT_INV_Add0~138_combout\ <= NOT \ULA|Add0~138_combout\;
\bancoRegs|ALT_INV_Mux28~0_combout\ <= NOT \bancoRegs|Mux28~0_combout\;
\ULA|ALT_INV_Add0~137_combout\ <= NOT \ULA|Add0~137_combout\;
\ULA|ALT_INV_Add0~136_combout\ <= NOT \ULA|Add0~136_combout\;
\bancoRegs|ALT_INV_Mux29~0_combout\ <= NOT \bancoRegs|Mux29~0_combout\;

\DATA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

\DATA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

\DATA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

\DATA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

\DATA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

\DATA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

\DATA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

\DATA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

\DATA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

\DATA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

\DATA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

\DATA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

\DATA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

\DATA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

\DATA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

\DATA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

\DATA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[16]~output_o\);

\DATA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[17]~output_o\);

\DATA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[18]~output_o\);

\DATA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[19]~output_o\);

\DATA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[20]~output_o\);

\DATA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[21]~output_o\);

\DATA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[22]~output_o\);

\DATA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[23]~output_o\);

\DATA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[24]~output_o\);

\DATA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[25]~output_o\);

\DATA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[26]~output_o\);

\DATA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[27]~output_o\);

\DATA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[28]~output_o\);

\DATA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[29]~output_o\);

\DATA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[30]~output_o\);

\DATA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[31]~output_o\);

\inspectR0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][0]~q\,
	devoe => ww_devoe,
	o => \inspectR0[0]~output_o\);

\inspectR0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][1]~q\,
	devoe => ww_devoe,
	o => \inspectR0[1]~output_o\);

\inspectR0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][2]~q\,
	devoe => ww_devoe,
	o => \inspectR0[2]~output_o\);

\inspectR0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][3]~q\,
	devoe => ww_devoe,
	o => \inspectR0[3]~output_o\);

\inspectR0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][4]~q\,
	devoe => ww_devoe,
	o => \inspectR0[4]~output_o\);

\inspectR0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][5]~q\,
	devoe => ww_devoe,
	o => \inspectR0[5]~output_o\);

\inspectR0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][6]~q\,
	devoe => ww_devoe,
	o => \inspectR0[6]~output_o\);

\inspectR0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][7]~q\,
	devoe => ww_devoe,
	o => \inspectR0[7]~output_o\);

\inspectR0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][8]~q\,
	devoe => ww_devoe,
	o => \inspectR0[8]~output_o\);

\inspectR0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][9]~q\,
	devoe => ww_devoe,
	o => \inspectR0[9]~output_o\);

\inspectR0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][10]~q\,
	devoe => ww_devoe,
	o => \inspectR0[10]~output_o\);

\inspectR0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][11]~q\,
	devoe => ww_devoe,
	o => \inspectR0[11]~output_o\);

\inspectR0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][12]~q\,
	devoe => ww_devoe,
	o => \inspectR0[12]~output_o\);

\inspectR0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][13]~q\,
	devoe => ww_devoe,
	o => \inspectR0[13]~output_o\);

\inspectR0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][14]~q\,
	devoe => ww_devoe,
	o => \inspectR0[14]~output_o\);

\inspectR0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][15]~q\,
	devoe => ww_devoe,
	o => \inspectR0[15]~output_o\);

\inspectR0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][16]~q\,
	devoe => ww_devoe,
	o => \inspectR0[16]~output_o\);

\inspectR0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][17]~q\,
	devoe => ww_devoe,
	o => \inspectR0[17]~output_o\);

\inspectR0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][18]~q\,
	devoe => ww_devoe,
	o => \inspectR0[18]~output_o\);

\inspectR0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][19]~q\,
	devoe => ww_devoe,
	o => \inspectR0[19]~output_o\);

\inspectR0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][20]~q\,
	devoe => ww_devoe,
	o => \inspectR0[20]~output_o\);

\inspectR0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][21]~q\,
	devoe => ww_devoe,
	o => \inspectR0[21]~output_o\);

\inspectR0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][22]~q\,
	devoe => ww_devoe,
	o => \inspectR0[22]~output_o\);

\inspectR0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][23]~q\,
	devoe => ww_devoe,
	o => \inspectR0[23]~output_o\);

\inspectR0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][24]~q\,
	devoe => ww_devoe,
	o => \inspectR0[24]~output_o\);

\inspectR0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][25]~q\,
	devoe => ww_devoe,
	o => \inspectR0[25]~output_o\);

\inspectR0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][26]~q\,
	devoe => ww_devoe,
	o => \inspectR0[26]~output_o\);

\inspectR0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][27]~q\,
	devoe => ww_devoe,
	o => \inspectR0[27]~output_o\);

\inspectR0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][28]~q\,
	devoe => ww_devoe,
	o => \inspectR0[28]~output_o\);

\inspectR0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][29]~q\,
	devoe => ww_devoe,
	o => \inspectR0[29]~output_o\);

\inspectR0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][30]~q\,
	devoe => ww_devoe,
	o => \inspectR0[30]~output_o\);

\inspectR0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[0][31]~q\,
	devoe => ww_devoe,
	o => \inspectR0[31]~output_o\);

\inspectR1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][0]~q\,
	devoe => ww_devoe,
	o => \inspectR1[0]~output_o\);

\inspectR1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][1]~q\,
	devoe => ww_devoe,
	o => \inspectR1[1]~output_o\);

\inspectR1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][2]~q\,
	devoe => ww_devoe,
	o => \inspectR1[2]~output_o\);

\inspectR1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][3]~q\,
	devoe => ww_devoe,
	o => \inspectR1[3]~output_o\);

\inspectR1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][4]~q\,
	devoe => ww_devoe,
	o => \inspectR1[4]~output_o\);

\inspectR1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][5]~q\,
	devoe => ww_devoe,
	o => \inspectR1[5]~output_o\);

\inspectR1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][6]~q\,
	devoe => ww_devoe,
	o => \inspectR1[6]~output_o\);

\inspectR1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][7]~q\,
	devoe => ww_devoe,
	o => \inspectR1[7]~output_o\);

\inspectR1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][8]~q\,
	devoe => ww_devoe,
	o => \inspectR1[8]~output_o\);

\inspectR1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][9]~q\,
	devoe => ww_devoe,
	o => \inspectR1[9]~output_o\);

\inspectR1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][10]~q\,
	devoe => ww_devoe,
	o => \inspectR1[10]~output_o\);

\inspectR1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][11]~q\,
	devoe => ww_devoe,
	o => \inspectR1[11]~output_o\);

\inspectR1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][12]~q\,
	devoe => ww_devoe,
	o => \inspectR1[12]~output_o\);

\inspectR1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][13]~q\,
	devoe => ww_devoe,
	o => \inspectR1[13]~output_o\);

\inspectR1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][14]~q\,
	devoe => ww_devoe,
	o => \inspectR1[14]~output_o\);

\inspectR1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][15]~q\,
	devoe => ww_devoe,
	o => \inspectR1[15]~output_o\);

\inspectR1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][16]~q\,
	devoe => ww_devoe,
	o => \inspectR1[16]~output_o\);

\inspectR1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][17]~q\,
	devoe => ww_devoe,
	o => \inspectR1[17]~output_o\);

\inspectR1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][18]~q\,
	devoe => ww_devoe,
	o => \inspectR1[18]~output_o\);

\inspectR1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][19]~q\,
	devoe => ww_devoe,
	o => \inspectR1[19]~output_o\);

\inspectR1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][20]~q\,
	devoe => ww_devoe,
	o => \inspectR1[20]~output_o\);

\inspectR1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][21]~q\,
	devoe => ww_devoe,
	o => \inspectR1[21]~output_o\);

\inspectR1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][22]~q\,
	devoe => ww_devoe,
	o => \inspectR1[22]~output_o\);

\inspectR1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][23]~q\,
	devoe => ww_devoe,
	o => \inspectR1[23]~output_o\);

\inspectR1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][24]~q\,
	devoe => ww_devoe,
	o => \inspectR1[24]~output_o\);

\inspectR1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][25]~q\,
	devoe => ww_devoe,
	o => \inspectR1[25]~output_o\);

\inspectR1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][26]~q\,
	devoe => ww_devoe,
	o => \inspectR1[26]~output_o\);

\inspectR1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][27]~q\,
	devoe => ww_devoe,
	o => \inspectR1[27]~output_o\);

\inspectR1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][28]~q\,
	devoe => ww_devoe,
	o => \inspectR1[28]~output_o\);

\inspectR1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][29]~q\,
	devoe => ww_devoe,
	o => \inspectR1[29]~output_o\);

\inspectR1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][30]~q\,
	devoe => ww_devoe,
	o => \inspectR1[30]~output_o\);

\inspectR1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[1][31]~q\,
	devoe => ww_devoe,
	o => \inspectR1[31]~output_o\);

\inspectR2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][0]~q\,
	devoe => ww_devoe,
	o => \inspectR2[0]~output_o\);

\inspectR2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][1]~q\,
	devoe => ww_devoe,
	o => \inspectR2[1]~output_o\);

\inspectR2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][2]~q\,
	devoe => ww_devoe,
	o => \inspectR2[2]~output_o\);

\inspectR2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][3]~q\,
	devoe => ww_devoe,
	o => \inspectR2[3]~output_o\);

\inspectR2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][4]~q\,
	devoe => ww_devoe,
	o => \inspectR2[4]~output_o\);

\inspectR2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][5]~q\,
	devoe => ww_devoe,
	o => \inspectR2[5]~output_o\);

\inspectR2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][6]~q\,
	devoe => ww_devoe,
	o => \inspectR2[6]~output_o\);

\inspectR2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][7]~q\,
	devoe => ww_devoe,
	o => \inspectR2[7]~output_o\);

\inspectR2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][8]~q\,
	devoe => ww_devoe,
	o => \inspectR2[8]~output_o\);

\inspectR2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][9]~q\,
	devoe => ww_devoe,
	o => \inspectR2[9]~output_o\);

\inspectR2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][10]~q\,
	devoe => ww_devoe,
	o => \inspectR2[10]~output_o\);

\inspectR2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][11]~q\,
	devoe => ww_devoe,
	o => \inspectR2[11]~output_o\);

\inspectR2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][12]~q\,
	devoe => ww_devoe,
	o => \inspectR2[12]~output_o\);

\inspectR2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][13]~q\,
	devoe => ww_devoe,
	o => \inspectR2[13]~output_o\);

\inspectR2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][14]~q\,
	devoe => ww_devoe,
	o => \inspectR2[14]~output_o\);

\inspectR2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][15]~q\,
	devoe => ww_devoe,
	o => \inspectR2[15]~output_o\);

\inspectR2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][16]~q\,
	devoe => ww_devoe,
	o => \inspectR2[16]~output_o\);

\inspectR2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][17]~q\,
	devoe => ww_devoe,
	o => \inspectR2[17]~output_o\);

\inspectR2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][18]~q\,
	devoe => ww_devoe,
	o => \inspectR2[18]~output_o\);

\inspectR2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][19]~q\,
	devoe => ww_devoe,
	o => \inspectR2[19]~output_o\);

\inspectR2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][20]~q\,
	devoe => ww_devoe,
	o => \inspectR2[20]~output_o\);

\inspectR2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][21]~q\,
	devoe => ww_devoe,
	o => \inspectR2[21]~output_o\);

\inspectR2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][22]~q\,
	devoe => ww_devoe,
	o => \inspectR2[22]~output_o\);

\inspectR2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][23]~q\,
	devoe => ww_devoe,
	o => \inspectR2[23]~output_o\);

\inspectR2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][24]~q\,
	devoe => ww_devoe,
	o => \inspectR2[24]~output_o\);

\inspectR2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][25]~q\,
	devoe => ww_devoe,
	o => \inspectR2[25]~output_o\);

\inspectR2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][26]~q\,
	devoe => ww_devoe,
	o => \inspectR2[26]~output_o\);

\inspectR2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][27]~q\,
	devoe => ww_devoe,
	o => \inspectR2[27]~output_o\);

\inspectR2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][28]~q\,
	devoe => ww_devoe,
	o => \inspectR2[28]~output_o\);

\inspectR2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][29]~q\,
	devoe => ww_devoe,
	o => \inspectR2[29]~output_o\);

\inspectR2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][30]~q\,
	devoe => ww_devoe,
	o => \inspectR2[30]~output_o\);

\inspectR2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bancoRegs|registradores[2][31]~q\,
	devoe => ww_devoe,
	o => \inspectR2[31]~output_o\);

\inspectEndRS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \inspectEndRS[0]~output_o\);

\inspectEndRS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inspectEndRS[1]~output_o\);

\inspectEndRS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[2]~output_o\);

\inspectEndRS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[3]~output_o\);

\inspectEndRS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[4]~output_o\);

\inspectEndRT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~3_combout\,
	devoe => ww_devoe,
	o => \inspectEndRT[0]~output_o\);

\inspectEndRT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \inspectEndRT[1]~output_o\);

\inspectEndRT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRT[2]~output_o\);

\inspectEndRT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRT[3]~output_o\);

\inspectEndRT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRT[4]~output_o\);

\inspectEndRD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \inspectEndRD[0]~output_o\);

\inspectEndRD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \inspectEndRD[1]~output_o\);

\inspectEndRD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[2]~output_o\);

\inspectEndRD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[3]~output_o\);

\inspectEndRD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[4]~output_o\);

\inspectInstru[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[0]~output_o\);

\inspectInstru[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[1]~output_o\);

\inspectInstru[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[2]~output_o\);

\inspectInstru[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[3]~output_o\);

\inspectInstru[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[4]~output_o\);

\inspectInstru[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[5]~output_o\);

\inspectInstru[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[6]~output_o\);

\inspectInstru[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[7]~output_o\);

\inspectInstru[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[8]~output_o\);

\inspectInstru[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[9]~output_o\);

\inspectInstru[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[10]~output_o\);

\inspectInstru[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[11]~output_o\);

\inspectInstru[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[12]~output_o\);

\inspectInstru[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[13]~output_o\);

\inspectInstru[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[14]~output_o\);

\inspectInstru[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[15]~output_o\);

\inspectInstru[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~3_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[16]~output_o\);

\inspectInstru[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[17]~output_o\);

\inspectInstru[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[18]~output_o\);

\inspectInstru[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[19]~output_o\);

\inspectInstru[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[20]~output_o\);

\inspectInstru[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[21]~output_o\);

\inspectInstru[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[22]~output_o\);

\inspectInstru[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[23]~output_o\);

\inspectInstru[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[24]~output_o\);

\inspectInstru[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[25]~output_o\);

\inspectInstru[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[26]~output_o\);

\inspectInstru[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[27]~output_o\);

\inspectInstru[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[28]~output_o\);

\inspectInstru[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[29]~output_o\);

\inspectInstru[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[30]~output_o\);

\inspectInstru[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~12_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ProgramCounter|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ProgramCounter|DOUT[2]~0_combout\ = !\ProgramCounter|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	combout => \ProgramCounter|DOUT[2]~0_combout\);

\ProgramCounter|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ProgramCounter|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(2));

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \ProgramCounter|DOUT\(2) ) + ( \ProgramCounter|DOUT\(3) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \ProgramCounter|DOUT\(2) ) + ( \ProgramCounter|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(2),
	dataf => \ProgramCounter|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\ProgramCounter|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(3));

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\ProgramCounter|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(4));

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\ProgramCounter|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(5));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\ProgramCounter|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(6));

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\ProgramCounter|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(7));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\ProgramCounter|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(8));

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \ProgramCounter|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\);

\ProgramCounter|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(9));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\ProgramCounter|DOUT\(5) & (!\ProgramCounter|DOUT\(3) $ (((\ProgramCounter|DOUT\(2) & !\ProgramCounter|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000000000100111000000000010011100000000001001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ProgramCounter|DOUT\(7) & (!\ProgramCounter|DOUT\(6) & (!\ProgramCounter|DOUT\(9) & !\ProgramCounter|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(9),
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\ProgramCounter|DOUT\(4) & (!\ProgramCounter|DOUT\(5) & ((!\ProgramCounter|DOUT\(2)) # (!\ProgramCounter|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~11_combout\ & ( (((\ProgramCounter|DOUT\(8)) # (\ProgramCounter|DOUT\(9))) # (\ProgramCounter|DOUT\(6))) # (\ProgramCounter|DOUT\(7)) ) ) # ( !\ROM|memROM~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(9),
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\ProgramCounter|DOUT\(7) & (!\ProgramCounter|DOUT\(6) & (!\ProgramCounter|DOUT\(9) & !\ProgramCounter|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(9),
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\ProgramCounter|DOUT\(3) & (!\ProgramCounter|DOUT\(5) & (!\ProgramCounter|DOUT\(2) $ (!\ProgramCounter|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\ProgramCounter|DOUT\(5) & ((!\ProgramCounter|DOUT\(2) & (\ProgramCounter|DOUT\(3) & !\ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(2) & (!\ProgramCounter|DOUT\(3) & \ProgramCounter|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000000001001000000000000100100000000000010010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\bancoRegs|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Decoder0~0_combout\ = (!\ROM|memROM~0_combout\) # ((!\ROM|memROM~5_combout\ & !\ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \bancoRegs|Decoder0~0_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\bancoRegs|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Decoder0~1_combout\ = (\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \bancoRegs|Decoder0~1_combout\);

\bancoRegs|registradores[1][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|registradores[1][0]~1_combout\ = ( \bancoRegs|Decoder0~1_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\)) # (\ROM|memROM~12_combout\ & ((\ULA|Add0~1_sumout\))) ) ) # ( !\bancoRegs|Decoder0~1_combout\ & ( 
-- \bancoRegs|registradores[1][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110000001100111101010101010101011100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][0]~q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	datae => \bancoRegs|ALT_INV_Decoder0~1_combout\,
	combout => \bancoRegs|registradores[1][0]~1_combout\);

\bancoRegs|registradores[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \bancoRegs|registradores[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][0]~q\);

\bancoRegs|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Decoder0~2_combout\ = (!\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \bancoRegs|Decoder0~2_combout\);

\bancoRegs|registradores[2][0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|registradores[2][0]~2_combout\ = ( \bancoRegs|Decoder0~2_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\)) # (\ROM|memROM~12_combout\ & ((\ULA|Add0~1_sumout\))) ) ) # ( !\bancoRegs|Decoder0~2_combout\ & ( 
-- \bancoRegs|registradores[2][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110000001100111101010101010101011100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[2][0]~q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	datae => \bancoRegs|ALT_INV_Decoder0~2_combout\,
	combout => \bancoRegs|registradores[2][0]~2_combout\);

\bancoRegs|registradores[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \bancoRegs|registradores[2][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][0]~q\);

\bancoRegs|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Decoder0~3_combout\ = (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \bancoRegs|Decoder0~3_combout\);

\bancoRegs|registradores[3][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|registradores[3][0]~3_combout\ = ( \bancoRegs|Decoder0~3_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\)) # (\ROM|memROM~12_combout\ & ((\ULA|Add0~1_sumout\))) ) ) # ( !\bancoRegs|Decoder0~3_combout\ & ( 
-- \bancoRegs|registradores[3][0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111100010001011101100001111000011111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \bancoRegs|ALT_INV_registradores[3][0]~q\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	datae => \bancoRegs|ALT_INV_Decoder0~3_combout\,
	combout => \bancoRegs|registradores[3][0]~3_combout\);

\bancoRegs|registradores[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \bancoRegs|registradores[3][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][0]~q\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ProgramCounter|DOUT\(5) & ((!\ProgramCounter|DOUT\(2) & (!\ProgramCounter|DOUT\(3) & \ProgramCounter|DOUT\(4))) # (\ProgramCounter|DOUT\(2) & (\ProgramCounter|DOUT\(3) & 
-- !\ProgramCounter|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110000000000000000000000000000001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~0_combout\ & ( (!\ProgramCounter|DOUT\(2) & (\ProgramCounter|DOUT\(3) & (\ProgramCounter|DOUT\(4) & !\ProgramCounter|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

\bancoRegs|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux31~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][0]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][0]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][0]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][0]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][0]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][0]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][0]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux31~0_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~0_combout\ & ( (\ProgramCounter|DOUT\(2) & (\ProgramCounter|DOUT\(3) & (!\ProgramCounter|DOUT\(4) & !\ProgramCounter|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\ProgramCounter|DOUT\(2) & ((\ProgramCounter|DOUT\(4)))) # (\ProgramCounter|DOUT\(2) & (\ProgramCounter|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(2),
	datab => \ProgramCounter|ALT_INV_DOUT\(3),
	datac => \ProgramCounter|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \ProgramCounter|DOUT\(5) & ( \ROM|memROM~15_combout\ ) ) # ( !\ProgramCounter|DOUT\(5) & ( \ROM|memROM~15_combout\ ) ) # ( \ProgramCounter|DOUT\(5) & ( !\ROM|memROM~15_combout\ ) ) # ( !\ProgramCounter|DOUT\(5) & ( 
-- !\ROM|memROM~15_combout\ & ( (((\ProgramCounter|DOUT\(8)) # (\ProgramCounter|DOUT\(9))) # (\ProgramCounter|DOUT\(6))) # (\ProgramCounter|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(9),
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	datae => \ProgramCounter|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~3_combout\);

\ULA|Add0~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~195_combout\ = (!\ROM|memROM~3_combout\ & (!\bancoRegs|registradores[3][0]~q\ & ((\ROM|memROM~4_combout\)))) # (\ROM|memROM~3_combout\ & (((!\bancoRegs|registradores[2][0]~q\) # (!\ROM|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101100000011111010110000001111101011000000111110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[3][0]~q\,
	datab => \bancoRegs|ALT_INV_registradores[2][0]~q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~195_combout\);

\ULA|Add0~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~128_combout\ = ( \ROM|memROM~4_combout\ & ( \ULA|Add0~195_combout\ & ( (!\ROM|memROM~10_combout\) # (!\ROM|memROM~12_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ULA|Add0~195_combout\ & ( !\bancoRegs|registradores[0][0]~q\ $ 
-- (((\ROM|memROM~10_combout\ & \ROM|memROM~12_combout\))) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ULA|Add0~195_combout\ & ( (\ROM|memROM~10_combout\ & \ROM|memROM~12_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ULA|Add0~195_combout\ & ( 
-- !\bancoRegs|registradores[1][0]~q\ $ (((\ROM|memROM~10_combout\ & \ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000111100001000100010001000111101110000100011110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \bancoRegs|ALT_INV_registradores[1][0]~q\,
	datad => \bancoRegs|ALT_INV_registradores[0][0]~q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ULA|ALT_INV_Add0~195_combout\,
	combout => \ULA|Add0~128_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ((!\ROM|memROM~11_combout\) # (\ProgramCounter|DOUT\(6))) # (\ProgramCounter|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ((!\ROM|memROM~9_combout\) # (\ProgramCounter|DOUT\(6))) # (\ProgramCounter|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~14_combout\);

\ULA|Add0~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~131_cout\ = CARRY(( (((!\ROM|memROM~13_combout\) # (\ROM|memROM~14_combout\)) # (\ProgramCounter|DOUT\(8))) # (\ProgramCounter|DOUT\(9)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(9),
	datab => \ProgramCounter|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	cin => GND,
	cout => \ULA|Add0~131_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \bancoRegs|Mux31~0_combout\ ) + ( \ULA|Add0~128_combout\ ) + ( \ULA|Add0~131_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \bancoRegs|Mux31~0_combout\ ) + ( \ULA|Add0~128_combout\ ) + ( \ULA|Add0~131_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bancoRegs|ALT_INV_Mux31~0_combout\,
	dataf => \ULA|ALT_INV_Add0~128_combout\,
	cin => \ULA|Add0~131_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\bancoRegs|registradores[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|registradores[0][0]~0_combout\ = ( \ULA|Add0~1_sumout\ & ( (!\bancoRegs|Decoder0~0_combout\ & (\bancoRegs|registradores[0][0]~q\)) # (\bancoRegs|Decoder0~0_combout\ & (((!\ROM|memROM~10_combout\) # (\ROM|memROM~12_combout\)))) ) ) # ( 
-- !\ULA|Add0~1_sumout\ & ( (!\bancoRegs|Decoder0~0_combout\ & (\bancoRegs|registradores[0][0]~q\)) # (\bancoRegs|Decoder0~0_combout\ & (((!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111000000010101011100111101010101110000000101010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][0]~q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \bancoRegs|ALT_INV_Decoder0~0_combout\,
	datae => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \bancoRegs|registradores[0][0]~0_combout\);

\bancoRegs|registradores[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \bancoRegs|registradores[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][0]~q\);

\bancoRegs|registradores[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][1]~q\);

\bancoRegs|registradores[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][1]~q\);

\bancoRegs|registradores[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][1]~q\);

\ULA|Add0~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~133_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][1]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][1]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][1]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][1]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][1]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][1]~q\ & ( (\bancoRegs|registradores[2][1]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][1]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][1]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][1]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][1]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][1]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][1]~q\,
	combout => \ULA|Add0~133_combout\);

\bancoRegs|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux30~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][1]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][1]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][1]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][1]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][1]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][1]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][1]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux30~0_combout\);

\ULA|Add0~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~134_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][1]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][1]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][1]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][1]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][1]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][1]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][1]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~134_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \bancoRegs|Mux30~0_combout\ ) + ( (!\ROM|memROM~12_combout\ & (((!\ULA|Add0~133_combout\)))) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~10_combout\ & (!\ULA|Add0~133_combout\)) # (\ROM|memROM~10_combout\ & 
-- ((\ULA|Add0~134_combout\))))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \bancoRegs|Mux30~0_combout\ ) + ( (!\ROM|memROM~12_combout\ & (((!\ULA|Add0~133_combout\)))) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~10_combout\ & (!\ULA|Add0~133_combout\)) # (\ROM|memROM~10_combout\ & 
-- ((\ULA|Add0~134_combout\))))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ULA|ALT_INV_Add0~133_combout\,
	datad => \bancoRegs|ALT_INV_Mux30~0_combout\,
	dataf => \ULA|ALT_INV_Add0~134_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\bancoRegs|registradores[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~5_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][1]~q\);

\bancoRegs|registradores[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][2]~q\);

\bancoRegs|registradores[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][2]~q\);

\bancoRegs|registradores[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][2]~q\);

\ULA|Add0~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~135_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][2]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][2]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][2]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][2]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][2]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][2]~q\ & ( (\bancoRegs|registradores[2][2]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][2]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][2]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][2]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][2]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][2]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][2]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][2]~q\,
	combout => \ULA|Add0~135_combout\);

\bancoRegs|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux29~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][2]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][2]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][2]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][2]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][2]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][2]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][2]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux29~0_combout\);

\ULA|Add0~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~136_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][2]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][2]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][2]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][2]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][2]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][2]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][2]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~136_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \bancoRegs|Mux29~0_combout\ ) + ( (!\ROM|memROM~12_combout\ & (((!\ULA|Add0~135_combout\)))) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~10_combout\ & (!\ULA|Add0~135_combout\)) # (\ROM|memROM~10_combout\ & 
-- ((\ULA|Add0~136_combout\))))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \bancoRegs|Mux29~0_combout\ ) + ( (!\ROM|memROM~12_combout\ & (((!\ULA|Add0~135_combout\)))) # (\ROM|memROM~12_combout\ & ((!\ROM|memROM~10_combout\ & (!\ULA|Add0~135_combout\)) # (\ROM|memROM~10_combout\ & 
-- ((\ULA|Add0~136_combout\))))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ULA|ALT_INV_Add0~135_combout\,
	datad => \bancoRegs|ALT_INV_Mux29~0_combout\,
	dataf => \ULA|ALT_INV_Add0~136_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\bancoRegs|registradores[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~9_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][2]~q\);

\bancoRegs|registradores[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][3]~q\);

\bancoRegs|registradores[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][3]~q\);

\bancoRegs|registradores[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][3]~q\);

\ULA|Add0~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~137_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][3]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][3]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][3]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][3]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][3]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][3]~q\ & ( (\bancoRegs|registradores[2][3]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][3]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][3]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][3]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][3]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][3]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][3]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][3]~q\,
	combout => \ULA|Add0~137_combout\);

\bancoRegs|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux28~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][3]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][3]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][3]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][3]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][3]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][3]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][3]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux28~0_combout\);

\ULA|Add0~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~138_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][3]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][3]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][3]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][3]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][3]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][3]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][3]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~138_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \bancoRegs|Mux28~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~137_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~137_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~138_combout\))))) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \bancoRegs|Mux28~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~137_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~137_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~138_combout\))))) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~137_combout\,
	datad => \bancoRegs|ALT_INV_Mux28~0_combout\,
	dataf => \ULA|ALT_INV_Add0~138_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\bancoRegs|registradores[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~13_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][3]~q\);

\bancoRegs|registradores[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][4]~q\);

\bancoRegs|registradores[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][4]~q\);

\bancoRegs|registradores[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][4]~q\);

\ULA|Add0~139\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~139_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][4]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][4]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][4]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][4]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][4]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][4]~q\ & ( (\bancoRegs|registradores[2][4]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][4]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][4]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][4]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][4]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][4]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][4]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][4]~q\,
	combout => \ULA|Add0~139_combout\);

\bancoRegs|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux27~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][4]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][4]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][4]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][4]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][4]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][4]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][4]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux27~0_combout\);

\ULA|Add0~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~140_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][4]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][4]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][4]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][4]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][4]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][4]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][4]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~140_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \bancoRegs|Mux27~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~139_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~139_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~140_combout\))))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \bancoRegs|Mux27~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~139_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~139_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~140_combout\))))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~139_combout\,
	datad => \bancoRegs|ALT_INV_Mux27~0_combout\,
	dataf => \ULA|ALT_INV_Add0~140_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\bancoRegs|registradores[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~17_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][4]~q\);

\bancoRegs|registradores[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][5]~q\);

\bancoRegs|registradores[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][5]~q\);

\bancoRegs|registradores[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][5]~q\);

\ULA|Add0~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~141_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][5]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][5]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][5]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][5]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][5]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][5]~q\ & ( (\bancoRegs|registradores[2][5]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][5]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][5]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][5]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][5]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][5]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][5]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][5]~q\,
	combout => \ULA|Add0~141_combout\);

\bancoRegs|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux26~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][5]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][5]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][5]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][5]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][5]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][5]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][5]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux26~0_combout\);

\ULA|Add0~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~142_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][5]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][5]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][5]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][5]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][5]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][5]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][5]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~142_combout\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \bancoRegs|Mux26~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~141_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~141_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~142_combout\))))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \bancoRegs|Mux26~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~141_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~141_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~142_combout\))))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~141_combout\,
	datad => \bancoRegs|ALT_INV_Mux26~0_combout\,
	dataf => \ULA|ALT_INV_Add0~142_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\bancoRegs|registradores[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~21_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][5]~q\);

\bancoRegs|registradores[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][6]~q\);

\bancoRegs|registradores[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][6]~q\);

\bancoRegs|registradores[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][6]~q\);

\ULA|Add0~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~143_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][6]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][6]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][6]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][6]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][6]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][6]~q\ & ( (\bancoRegs|registradores[2][6]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][6]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][6]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][6]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][6]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][6]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][6]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][6]~q\,
	combout => \ULA|Add0~143_combout\);

\bancoRegs|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux25~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][6]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][6]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][6]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][6]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][6]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][6]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][6]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux25~0_combout\);

\ULA|Add0~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~144_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][6]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][6]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][6]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][6]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][6]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][6]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][6]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~144_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \bancoRegs|Mux25~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~143_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~143_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~144_combout\))))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \bancoRegs|Mux25~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~143_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~143_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~144_combout\))))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~143_combout\,
	datad => \bancoRegs|ALT_INV_Mux25~0_combout\,
	dataf => \ULA|ALT_INV_Add0~144_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\bancoRegs|registradores[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~25_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][6]~q\);

\bancoRegs|registradores[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][7]~q\);

\bancoRegs|registradores[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][7]~q\);

\bancoRegs|registradores[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][7]~q\);

\ULA|Add0~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~145_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][7]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][7]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][7]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][7]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][7]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][7]~q\ & ( (\bancoRegs|registradores[2][7]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][7]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][7]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][7]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][7]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][7]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][7]~q\,
	combout => \ULA|Add0~145_combout\);

\bancoRegs|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux24~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][7]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][7]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][7]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][7]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][7]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][7]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][7]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux24~0_combout\);

\ULA|Add0~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~146_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][7]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][7]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][7]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][7]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][7]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][7]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][7]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~146_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \bancoRegs|Mux24~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~145_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~145_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~146_combout\))))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \bancoRegs|Mux24~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~145_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~145_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~146_combout\))))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~145_combout\,
	datad => \bancoRegs|ALT_INV_Mux24~0_combout\,
	dataf => \ULA|ALT_INV_Add0~146_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\bancoRegs|registradores[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~29_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][7]~q\);

\bancoRegs|registradores[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][8]~q\);

\bancoRegs|registradores[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][8]~q\);

\bancoRegs|registradores[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][8]~q\);

\ULA|Add0~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~147_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][8]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][8]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][8]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][8]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][8]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][8]~q\ & ( (\bancoRegs|registradores[2][8]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][8]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][8]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][8]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][8]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][8]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][8]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][8]~q\,
	combout => \ULA|Add0~147_combout\);

\bancoRegs|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux23~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][8]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][8]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][8]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][8]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][8]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][8]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][8]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux23~0_combout\);

\ULA|Add0~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~148_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][8]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][8]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][8]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][8]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][8]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][8]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][8]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~148_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \bancoRegs|Mux23~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~147_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~147_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~148_combout\))))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \bancoRegs|Mux23~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~147_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~147_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~148_combout\))))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~147_combout\,
	datad => \bancoRegs|ALT_INV_Mux23~0_combout\,
	dataf => \ULA|ALT_INV_Add0~148_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\bancoRegs|registradores[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~33_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][8]~q\);

\bancoRegs|registradores[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][9]~q\);

\bancoRegs|registradores[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][9]~q\);

\bancoRegs|registradores[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][9]~q\);

\ULA|Add0~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~149_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][9]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][9]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][9]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][9]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][9]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][9]~q\ & ( (\bancoRegs|registradores[2][9]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][9]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][9]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][9]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][9]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][9]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][9]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][9]~q\,
	combout => \ULA|Add0~149_combout\);

\bancoRegs|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux22~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][9]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][9]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][9]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][9]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][9]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][9]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][9]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux22~0_combout\);

\ULA|Add0~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~150_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][9]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][9]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][9]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][9]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][9]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][9]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][9]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~150_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \bancoRegs|Mux22~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~149_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~149_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~150_combout\))))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \bancoRegs|Mux22~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~149_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~149_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~150_combout\))))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~149_combout\,
	datad => \bancoRegs|ALT_INV_Mux22~0_combout\,
	dataf => \ULA|ALT_INV_Add0~150_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\bancoRegs|registradores[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~37_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][9]~q\);

\bancoRegs|registradores[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][10]~q\);

\bancoRegs|registradores[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][10]~q\);

\bancoRegs|registradores[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][10]~q\);

\ULA|Add0~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~151_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][10]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][10]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][10]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][10]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][10]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][10]~q\ & ( (\bancoRegs|registradores[2][10]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][10]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][10]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][10]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][10]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][10]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][10]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][10]~q\,
	combout => \ULA|Add0~151_combout\);

\bancoRegs|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux21~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][10]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][10]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][10]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][10]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][10]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][10]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][10]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux21~0_combout\);

\ULA|Add0~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~152_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][10]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][10]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][10]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][10]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][10]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][10]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][10]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~152_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \bancoRegs|Mux21~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~151_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~151_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~152_combout\))))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \bancoRegs|Mux21~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~151_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~151_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~152_combout\))))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~151_combout\,
	datad => \bancoRegs|ALT_INV_Mux21~0_combout\,
	dataf => \ULA|ALT_INV_Add0~152_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\bancoRegs|registradores[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~41_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][10]~q\);

\bancoRegs|registradores[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][11]~q\);

\bancoRegs|registradores[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][11]~q\);

\bancoRegs|registradores[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][11]~q\);

\ULA|Add0~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~153_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][11]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][11]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][11]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][11]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][11]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][11]~q\ & ( (\bancoRegs|registradores[2][11]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][11]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][11]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][11]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][11]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][11]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][11]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][11]~q\,
	combout => \ULA|Add0~153_combout\);

\bancoRegs|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux20~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][11]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][11]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][11]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][11]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][11]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][11]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][11]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux20~0_combout\);

\ULA|Add0~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~154_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][11]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][11]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][11]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][11]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][11]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][11]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][11]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~154_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \bancoRegs|Mux20~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~153_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~153_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~154_combout\))))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \bancoRegs|Mux20~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~153_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~153_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~154_combout\))))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~153_combout\,
	datad => \bancoRegs|ALT_INV_Mux20~0_combout\,
	dataf => \ULA|ALT_INV_Add0~154_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\bancoRegs|registradores[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~45_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][11]~q\);

\bancoRegs|registradores[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][12]~q\);

\bancoRegs|registradores[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][12]~q\);

\bancoRegs|registradores[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][12]~q\);

\ULA|Add0~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~155_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][12]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][12]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][12]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][12]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][12]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][12]~q\ & ( (\bancoRegs|registradores[2][12]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][12]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][12]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][12]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][12]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][12]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][12]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][12]~q\,
	combout => \ULA|Add0~155_combout\);

\bancoRegs|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux19~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][12]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][12]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][12]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][12]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][12]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][12]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][12]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux19~0_combout\);

\ULA|Add0~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~156_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][12]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][12]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][12]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][12]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][12]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][12]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][12]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~156_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \bancoRegs|Mux19~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~155_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~155_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~156_combout\))))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \bancoRegs|Mux19~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~155_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~155_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~156_combout\))))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~155_combout\,
	datad => \bancoRegs|ALT_INV_Mux19~0_combout\,
	dataf => \ULA|ALT_INV_Add0~156_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\bancoRegs|registradores[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~49_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][12]~q\);

\bancoRegs|registradores[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][13]~q\);

\bancoRegs|registradores[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][13]~q\);

\bancoRegs|registradores[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][13]~q\);

\ULA|Add0~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~157_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][13]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][13]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][13]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][13]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][13]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][13]~q\ & ( (\bancoRegs|registradores[2][13]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][13]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][13]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][13]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][13]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][13]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][13]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][13]~q\,
	combout => \ULA|Add0~157_combout\);

\bancoRegs|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux18~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][13]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][13]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][13]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][13]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][13]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][13]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][13]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux18~0_combout\);

\ULA|Add0~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~158_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][13]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][13]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][13]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][13]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][13]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][13]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][13]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~158_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \bancoRegs|Mux18~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~157_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~157_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~158_combout\))))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \bancoRegs|Mux18~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~157_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~157_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~158_combout\))))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~157_combout\,
	datad => \bancoRegs|ALT_INV_Mux18~0_combout\,
	dataf => \ULA|ALT_INV_Add0~158_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\bancoRegs|registradores[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~53_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][13]~q\);

\bancoRegs|registradores[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][14]~q\);

\bancoRegs|registradores[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][14]~q\);

\bancoRegs|registradores[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][14]~q\);

\ULA|Add0~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~159_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][14]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][14]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][14]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][14]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][14]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][14]~q\ & ( (\bancoRegs|registradores[2][14]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][14]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][14]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][14]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][14]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][14]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][14]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][14]~q\,
	combout => \ULA|Add0~159_combout\);

\bancoRegs|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux17~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][14]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][14]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][14]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][14]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][14]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][14]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][14]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux17~0_combout\);

\ULA|Add0~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~160_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][14]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][14]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][14]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][14]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][14]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][14]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][14]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~160_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \bancoRegs|Mux17~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~159_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~159_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~160_combout\))))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \bancoRegs|Mux17~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~159_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~159_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~160_combout\))))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~159_combout\,
	datad => \bancoRegs|ALT_INV_Mux17~0_combout\,
	dataf => \ULA|ALT_INV_Add0~160_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\bancoRegs|registradores[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~57_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][14]~q\);

\bancoRegs|registradores[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][15]~q\);

\bancoRegs|registradores[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][15]~q\);

\bancoRegs|registradores[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][15]~q\);

\ULA|Add0~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~161_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][15]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][15]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][15]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][15]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][15]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][15]~q\ & ( (\bancoRegs|registradores[2][15]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][15]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][15]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][15]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][15]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][15]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][15]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][15]~q\,
	combout => \ULA|Add0~161_combout\);

\bancoRegs|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux16~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][15]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][15]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][15]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][15]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][15]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][15]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][15]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux16~0_combout\);

\ULA|Add0~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~162_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][15]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][15]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][15]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][15]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][15]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][15]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][15]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~162_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( \bancoRegs|Mux16~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~161_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~161_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~162_combout\))))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( \bancoRegs|Mux16~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~161_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~161_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~162_combout\))))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~161_combout\,
	datad => \bancoRegs|ALT_INV_Mux16~0_combout\,
	dataf => \ULA|ALT_INV_Add0~162_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\bancoRegs|registradores[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~61_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][15]~q\);

\bancoRegs|registradores[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][16]~q\);

\bancoRegs|registradores[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][16]~q\);

\bancoRegs|registradores[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][16]~q\);

\ULA|Add0~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~163_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][16]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][16]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][16]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][16]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][16]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][16]~q\ & ( (\bancoRegs|registradores[2][16]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][16]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][16]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][16]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][16]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][16]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][16]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][16]~q\,
	combout => \ULA|Add0~163_combout\);

\bancoRegs|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux15~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][16]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][16]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][16]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][16]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][16]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][16]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][16]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][16]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux15~0_combout\);

\ULA|Add0~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~164_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][16]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][16]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][16]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][16]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][16]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][16]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][16]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][16]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~164_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \bancoRegs|Mux15~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~163_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~163_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~164_combout\))))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \bancoRegs|Mux15~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~163_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~163_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~164_combout\))))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~163_combout\,
	datad => \bancoRegs|ALT_INV_Mux15~0_combout\,
	dataf => \ULA|ALT_INV_Add0~164_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\bancoRegs|registradores[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~65_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][16]~q\);

\bancoRegs|registradores[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][17]~q\);

\bancoRegs|registradores[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][17]~q\);

\bancoRegs|registradores[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][17]~q\);

\ULA|Add0~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~165_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][17]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][17]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][17]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][17]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][17]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][17]~q\ & ( (\bancoRegs|registradores[2][17]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][17]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][17]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][17]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][17]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][17]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][17]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][17]~q\,
	combout => \ULA|Add0~165_combout\);

\bancoRegs|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux14~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][17]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][17]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][17]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][17]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][17]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][17]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][17]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][17]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux14~0_combout\);

\ULA|Add0~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~166_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][17]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][17]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][17]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][17]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][17]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][17]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][17]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][17]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~166_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \bancoRegs|Mux14~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~165_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~165_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~166_combout\))))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \bancoRegs|Mux14~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~165_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~165_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~166_combout\))))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~165_combout\,
	datad => \bancoRegs|ALT_INV_Mux14~0_combout\,
	dataf => \ULA|ALT_INV_Add0~166_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\bancoRegs|registradores[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~69_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][17]~q\);

\bancoRegs|registradores[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][18]~q\);

\bancoRegs|registradores[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][18]~q\);

\bancoRegs|registradores[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][18]~q\);

\ULA|Add0~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~167_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][18]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][18]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][18]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][18]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][18]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][18]~q\ & ( (\bancoRegs|registradores[2][18]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][18]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][18]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][18]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][18]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][18]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][18]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][18]~q\,
	combout => \ULA|Add0~167_combout\);

\bancoRegs|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux13~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][18]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][18]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][18]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][18]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][18]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][18]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][18]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][18]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux13~0_combout\);

\ULA|Add0~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~168_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][18]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][18]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][18]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][18]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][18]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][18]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][18]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][18]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~168_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \bancoRegs|Mux13~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~167_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~167_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~168_combout\))))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \bancoRegs|Mux13~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~167_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~167_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~168_combout\))))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~167_combout\,
	datad => \bancoRegs|ALT_INV_Mux13~0_combout\,
	dataf => \ULA|ALT_INV_Add0~168_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\bancoRegs|registradores[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~73_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][18]~q\);

\bancoRegs|registradores[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][19]~q\);

\bancoRegs|registradores[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][19]~q\);

\bancoRegs|registradores[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][19]~q\);

\ULA|Add0~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~169_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][19]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][19]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][19]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][19]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][19]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][19]~q\ & ( (\bancoRegs|registradores[2][19]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][19]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][19]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][19]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][19]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][19]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][19]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][19]~q\,
	combout => \ULA|Add0~169_combout\);

\bancoRegs|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux12~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][19]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][19]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][19]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][19]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][19]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][19]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][19]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][19]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux12~0_combout\);

\ULA|Add0~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~170_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][19]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][19]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][19]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][19]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][19]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][19]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][19]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][19]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~170_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \bancoRegs|Mux12~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~169_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~169_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~170_combout\))))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \bancoRegs|Mux12~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~169_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~169_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~170_combout\))))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~169_combout\,
	datad => \bancoRegs|ALT_INV_Mux12~0_combout\,
	dataf => \ULA|ALT_INV_Add0~170_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\bancoRegs|registradores[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~77_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][19]~q\);

\bancoRegs|registradores[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][20]~q\);

\bancoRegs|registradores[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][20]~q\);

\bancoRegs|registradores[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][20]~q\);

\ULA|Add0~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~171_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][20]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][20]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][20]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][20]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][20]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][20]~q\ & ( (\bancoRegs|registradores[2][20]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][20]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][20]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][20]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][20]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][20]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][20]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][20]~q\,
	combout => \ULA|Add0~171_combout\);

\bancoRegs|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux11~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][20]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][20]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][20]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][20]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][20]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][20]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][20]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][20]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux11~0_combout\);

\ULA|Add0~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~172_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][20]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][20]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][20]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][20]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][20]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][20]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][20]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][20]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~172_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \bancoRegs|Mux11~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~171_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~171_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~172_combout\))))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \bancoRegs|Mux11~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~171_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~171_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~172_combout\))))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~171_combout\,
	datad => \bancoRegs|ALT_INV_Mux11~0_combout\,
	dataf => \ULA|ALT_INV_Add0~172_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\bancoRegs|registradores[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~81_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][20]~q\);

\bancoRegs|registradores[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][21]~q\);

\bancoRegs|registradores[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][21]~q\);

\bancoRegs|registradores[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][21]~q\);

\ULA|Add0~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~173_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][21]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][21]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][21]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][21]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][21]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][21]~q\ & ( (\bancoRegs|registradores[2][21]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][21]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][21]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][21]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][21]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][21]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][21]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][21]~q\,
	combout => \ULA|Add0~173_combout\);

\bancoRegs|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux10~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][21]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][21]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][21]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][21]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][21]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][21]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][21]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][21]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux10~0_combout\);

\ULA|Add0~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~174_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][21]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][21]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][21]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][21]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][21]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][21]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][21]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][21]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~174_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \bancoRegs|Mux10~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~173_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~173_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~174_combout\))))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \bancoRegs|Mux10~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~173_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~173_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~174_combout\))))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~173_combout\,
	datad => \bancoRegs|ALT_INV_Mux10~0_combout\,
	dataf => \ULA|ALT_INV_Add0~174_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\bancoRegs|registradores[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~85_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][21]~q\);

\bancoRegs|registradores[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][22]~q\);

\bancoRegs|registradores[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][22]~q\);

\bancoRegs|registradores[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][22]~q\);

\ULA|Add0~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~175_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][22]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][22]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][22]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][22]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][22]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][22]~q\ & ( (\bancoRegs|registradores[2][22]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][22]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][22]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][22]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][22]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][22]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][22]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][22]~q\,
	combout => \ULA|Add0~175_combout\);

\bancoRegs|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux9~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][22]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][22]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][22]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][22]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][22]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][22]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][22]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][22]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux9~0_combout\);

\ULA|Add0~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~176_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][22]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][22]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][22]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][22]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][22]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][22]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][22]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][22]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~176_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \bancoRegs|Mux9~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~175_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~175_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~176_combout\))))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \bancoRegs|Mux9~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~175_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~175_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~176_combout\))))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~175_combout\,
	datad => \bancoRegs|ALT_INV_Mux9~0_combout\,
	dataf => \ULA|ALT_INV_Add0~176_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\bancoRegs|registradores[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~89_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][22]~q\);

\bancoRegs|registradores[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][23]~q\);

\bancoRegs|registradores[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][23]~q\);

\bancoRegs|registradores[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][23]~q\);

\ULA|Add0~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~177_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][23]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][23]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][23]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][23]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][23]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][23]~q\ & ( (\bancoRegs|registradores[2][23]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][23]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][23]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][23]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][23]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][23]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][23]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][23]~q\,
	combout => \ULA|Add0~177_combout\);

\bancoRegs|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux8~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][23]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][23]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][23]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][23]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][23]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][23]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][23]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][23]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux8~0_combout\);

\ULA|Add0~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~178_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][23]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][23]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][23]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][23]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][23]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][23]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][23]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][23]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~178_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \bancoRegs|Mux8~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~177_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~177_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~178_combout\))))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \bancoRegs|Mux8~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~177_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~177_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~178_combout\))))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~177_combout\,
	datad => \bancoRegs|ALT_INV_Mux8~0_combout\,
	dataf => \ULA|ALT_INV_Add0~178_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\bancoRegs|registradores[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~93_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][23]~q\);

\bancoRegs|registradores[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][24]~q\);

\bancoRegs|registradores[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][24]~q\);

\bancoRegs|registradores[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][24]~q\);

\ULA|Add0~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~179_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][24]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][24]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][24]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][24]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][24]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][24]~q\ & ( (\bancoRegs|registradores[2][24]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][24]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][24]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][24]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][24]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][24]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][24]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][24]~q\,
	combout => \ULA|Add0~179_combout\);

\bancoRegs|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux7~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][24]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][24]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][24]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][24]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][24]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][24]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][24]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][24]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux7~0_combout\);

\ULA|Add0~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~180_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][24]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][24]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][24]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][24]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][24]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][24]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][24]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][24]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~180_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \bancoRegs|Mux7~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~179_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~179_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~180_combout\))))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \bancoRegs|Mux7~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~179_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~179_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~180_combout\))))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~179_combout\,
	datad => \bancoRegs|ALT_INV_Mux7~0_combout\,
	dataf => \ULA|ALT_INV_Add0~180_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\bancoRegs|registradores[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~97_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][24]~q\);

\bancoRegs|registradores[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][25]~q\);

\bancoRegs|registradores[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][25]~q\);

\bancoRegs|registradores[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][25]~q\);

\ULA|Add0~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~181_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][25]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][25]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][25]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][25]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][25]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][25]~q\ & ( (\bancoRegs|registradores[2][25]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][25]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][25]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][25]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][25]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][25]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][25]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][25]~q\,
	combout => \ULA|Add0~181_combout\);

\bancoRegs|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux6~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][25]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][25]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][25]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][25]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][25]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][25]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][25]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux6~0_combout\);

\ULA|Add0~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~182_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][25]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][25]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][25]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][25]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][25]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][25]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][25]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~182_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \bancoRegs|Mux6~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~181_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~181_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~182_combout\))))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \bancoRegs|Mux6~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~181_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~181_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~182_combout\))))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~181_combout\,
	datad => \bancoRegs|ALT_INV_Mux6~0_combout\,
	dataf => \ULA|ALT_INV_Add0~182_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\bancoRegs|registradores[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~101_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][25]~q\);

\bancoRegs|registradores[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][26]~q\);

\bancoRegs|registradores[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][26]~q\);

\bancoRegs|registradores[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][26]~q\);

\ULA|Add0~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~183_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][26]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][26]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][26]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][26]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][26]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][26]~q\ & ( (\bancoRegs|registradores[2][26]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][26]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][26]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][26]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][26]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][26]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][26]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][26]~q\,
	combout => \ULA|Add0~183_combout\);

\bancoRegs|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux5~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][26]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][26]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][26]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][26]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][26]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][26]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][26]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][26]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux5~0_combout\);

\ULA|Add0~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~184_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][26]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][26]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][26]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][26]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][26]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][26]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][26]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][26]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~184_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \bancoRegs|Mux5~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~183_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~183_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~184_combout\))))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \bancoRegs|Mux5~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~183_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~183_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~184_combout\))))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~183_combout\,
	datad => \bancoRegs|ALT_INV_Mux5~0_combout\,
	dataf => \ULA|ALT_INV_Add0~184_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\bancoRegs|registradores[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~105_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][26]~q\);

\bancoRegs|registradores[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][27]~q\);

\bancoRegs|registradores[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][27]~q\);

\bancoRegs|registradores[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][27]~q\);

\ULA|Add0~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~185_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][27]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][27]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][27]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][27]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][27]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][27]~q\ & ( (\bancoRegs|registradores[2][27]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][27]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][27]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][27]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][27]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][27]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][27]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][27]~q\,
	combout => \ULA|Add0~185_combout\);

\bancoRegs|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux4~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][27]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][27]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][27]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][27]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][27]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][27]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][27]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][27]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux4~0_combout\);

\ULA|Add0~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~186_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][27]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][27]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][27]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][27]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][27]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][27]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][27]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][27]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~186_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \bancoRegs|Mux4~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~185_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~185_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~186_combout\))))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \bancoRegs|Mux4~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~185_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~185_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~186_combout\))))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~185_combout\,
	datad => \bancoRegs|ALT_INV_Mux4~0_combout\,
	dataf => \ULA|ALT_INV_Add0~186_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\bancoRegs|registradores[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~109_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][27]~q\);

\bancoRegs|registradores[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][28]~q\);

\bancoRegs|registradores[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][28]~q\);

\bancoRegs|registradores[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][28]~q\);

\ULA|Add0~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~187_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][28]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][28]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][28]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][28]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][28]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][28]~q\ & ( (\bancoRegs|registradores[2][28]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][28]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][28]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][28]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][28]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][28]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][28]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][28]~q\,
	combout => \ULA|Add0~187_combout\);

\bancoRegs|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux3~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][28]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][28]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][28]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][28]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][28]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][28]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][28]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][28]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux3~0_combout\);

\ULA|Add0~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~188_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][28]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][28]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][28]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][28]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][28]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][28]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][28]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][28]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~188_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( \bancoRegs|Mux3~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~187_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~187_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~188_combout\))))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( \bancoRegs|Mux3~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~187_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~187_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~188_combout\))))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~187_combout\,
	datad => \bancoRegs|ALT_INV_Mux3~0_combout\,
	dataf => \ULA|ALT_INV_Add0~188_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\bancoRegs|registradores[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~113_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][28]~q\);

\bancoRegs|registradores[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][29]~q\);

\bancoRegs|registradores[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][29]~q\);

\bancoRegs|registradores[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][29]~q\);

\ULA|Add0~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~189_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][29]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][29]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][29]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][29]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][29]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][29]~q\ & ( (\bancoRegs|registradores[2][29]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][29]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][29]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][29]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][29]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][29]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][29]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][29]~q\,
	combout => \ULA|Add0~189_combout\);

\bancoRegs|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux2~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][29]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][29]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][29]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][29]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][29]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][29]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][29]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][29]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux2~0_combout\);

\ULA|Add0~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~190_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][29]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][29]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][29]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][29]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][29]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][29]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][29]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][29]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~190_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \bancoRegs|Mux2~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~189_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~189_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~190_combout\))))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \bancoRegs|Mux2~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~189_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~189_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~190_combout\))))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~189_combout\,
	datad => \bancoRegs|ALT_INV_Mux2~0_combout\,
	dataf => \ULA|ALT_INV_Add0~190_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\bancoRegs|registradores[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~117_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][29]~q\);

\bancoRegs|registradores[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][30]~q\);

\bancoRegs|registradores[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][30]~q\);

\bancoRegs|registradores[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][30]~q\);

\ULA|Add0~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~191_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][30]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][30]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][30]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][30]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][30]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][30]~q\ & ( (\bancoRegs|registradores[2][30]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][30]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][30]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][30]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][30]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][30]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][30]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][30]~q\,
	combout => \ULA|Add0~191_combout\);

\bancoRegs|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux1~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][30]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][30]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][30]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][30]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][30]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][30]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][30]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][30]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux1~0_combout\);

\ULA|Add0~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~192_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][30]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][30]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][30]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][30]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][30]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][30]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][30]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][30]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~192_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \bancoRegs|Mux1~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~191_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~191_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~192_combout\))))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \bancoRegs|Mux1~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~191_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~191_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~192_combout\))))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~191_combout\,
	datad => \bancoRegs|ALT_INV_Mux1~0_combout\,
	dataf => \ULA|ALT_INV_Add0~192_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\bancoRegs|registradores[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~121_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][30]~q\);

\bancoRegs|registradores[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[1][31]~q\);

\bancoRegs|registradores[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[2][31]~q\);

\bancoRegs|registradores[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[3][31]~q\);

\ULA|Add0~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~193_combout\ = ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][31]~q\ & ( (!\ROM|memROM~3_combout\) # (\bancoRegs|registradores[2][31]~q\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][31]~q\ & ( 
-- (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][31]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][31]~q\)) ) ) ) # ( \ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][31]~q\ & ( (\bancoRegs|registradores[2][31]~q\ & 
-- \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\bancoRegs|registradores[3][31]~q\ & ( (!\ROM|memROM~3_combout\ & ((\bancoRegs|registradores[1][31]~q\))) # (\ROM|memROM~3_combout\ & (\bancoRegs|registradores[0][31]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][31]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][31]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][31]~q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \bancoRegs|ALT_INV_registradores[3][31]~q\,
	combout => \ULA|Add0~193_combout\);

\bancoRegs|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegs|Mux0~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[3][31]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \bancoRegs|registradores[2][31]~q\ ) ) ) # ( \ROM|memROM~1_combout\ & 
-- ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[1][31]~q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \bancoRegs|registradores[0][31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[0][31]~q\,
	datab => \bancoRegs|ALT_INV_registradores[1][31]~q\,
	datac => \bancoRegs|ALT_INV_registradores[2][31]~q\,
	datad => \bancoRegs|ALT_INV_registradores[3][31]~q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \bancoRegs|Mux0~0_combout\);

\ULA|Add0~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~194_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[2][31]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~4_combout\ & ( \bancoRegs|registradores[3][31]~q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[0][31]~q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~4_combout\ & ( \bancoRegs|registradores[1][31]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegs|ALT_INV_registradores[1][31]~q\,
	datab => \bancoRegs|ALT_INV_registradores[0][31]~q\,
	datac => \bancoRegs|ALT_INV_registradores[3][31]~q\,
	datad => \bancoRegs|ALT_INV_registradores[2][31]~q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ULA|Add0~194_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \bancoRegs|Mux0~0_combout\ ) + ( (!\ROM|memROM~10_combout\ & (((!\ULA|Add0~193_combout\)))) # (\ROM|memROM~10_combout\ & ((!\ROM|memROM~12_combout\ & (!\ULA|Add0~193_combout\)) # (\ROM|memROM~12_combout\ & 
-- ((\ULA|Add0~194_combout\))))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ULA|ALT_INV_Add0~193_combout\,
	datad => \bancoRegs|ALT_INV_Mux0~0_combout\,
	dataf => \ULA|ALT_INV_Add0~194_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\bancoRegs|registradores[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA|Add0~125_sumout\,
	sclr => \ROM|ALT_INV_memROM~12_combout\,
	ena => \bancoRegs|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegs|registradores[0][31]~q\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;

ww_DATA_OUT(16) <= \DATA_OUT[16]~output_o\;

ww_DATA_OUT(17) <= \DATA_OUT[17]~output_o\;

ww_DATA_OUT(18) <= \DATA_OUT[18]~output_o\;

ww_DATA_OUT(19) <= \DATA_OUT[19]~output_o\;

ww_DATA_OUT(20) <= \DATA_OUT[20]~output_o\;

ww_DATA_OUT(21) <= \DATA_OUT[21]~output_o\;

ww_DATA_OUT(22) <= \DATA_OUT[22]~output_o\;

ww_DATA_OUT(23) <= \DATA_OUT[23]~output_o\;

ww_DATA_OUT(24) <= \DATA_OUT[24]~output_o\;

ww_DATA_OUT(25) <= \DATA_OUT[25]~output_o\;

ww_DATA_OUT(26) <= \DATA_OUT[26]~output_o\;

ww_DATA_OUT(27) <= \DATA_OUT[27]~output_o\;

ww_DATA_OUT(28) <= \DATA_OUT[28]~output_o\;

ww_DATA_OUT(29) <= \DATA_OUT[29]~output_o\;

ww_DATA_OUT(30) <= \DATA_OUT[30]~output_o\;

ww_DATA_OUT(31) <= \DATA_OUT[31]~output_o\;

ww_inspectR0(0) <= \inspectR0[0]~output_o\;

ww_inspectR0(1) <= \inspectR0[1]~output_o\;

ww_inspectR0(2) <= \inspectR0[2]~output_o\;

ww_inspectR0(3) <= \inspectR0[3]~output_o\;

ww_inspectR0(4) <= \inspectR0[4]~output_o\;

ww_inspectR0(5) <= \inspectR0[5]~output_o\;

ww_inspectR0(6) <= \inspectR0[6]~output_o\;

ww_inspectR0(7) <= \inspectR0[7]~output_o\;

ww_inspectR0(8) <= \inspectR0[8]~output_o\;

ww_inspectR0(9) <= \inspectR0[9]~output_o\;

ww_inspectR0(10) <= \inspectR0[10]~output_o\;

ww_inspectR0(11) <= \inspectR0[11]~output_o\;

ww_inspectR0(12) <= \inspectR0[12]~output_o\;

ww_inspectR0(13) <= \inspectR0[13]~output_o\;

ww_inspectR0(14) <= \inspectR0[14]~output_o\;

ww_inspectR0(15) <= \inspectR0[15]~output_o\;

ww_inspectR0(16) <= \inspectR0[16]~output_o\;

ww_inspectR0(17) <= \inspectR0[17]~output_o\;

ww_inspectR0(18) <= \inspectR0[18]~output_o\;

ww_inspectR0(19) <= \inspectR0[19]~output_o\;

ww_inspectR0(20) <= \inspectR0[20]~output_o\;

ww_inspectR0(21) <= \inspectR0[21]~output_o\;

ww_inspectR0(22) <= \inspectR0[22]~output_o\;

ww_inspectR0(23) <= \inspectR0[23]~output_o\;

ww_inspectR0(24) <= \inspectR0[24]~output_o\;

ww_inspectR0(25) <= \inspectR0[25]~output_o\;

ww_inspectR0(26) <= \inspectR0[26]~output_o\;

ww_inspectR0(27) <= \inspectR0[27]~output_o\;

ww_inspectR0(28) <= \inspectR0[28]~output_o\;

ww_inspectR0(29) <= \inspectR0[29]~output_o\;

ww_inspectR0(30) <= \inspectR0[30]~output_o\;

ww_inspectR0(31) <= \inspectR0[31]~output_o\;

ww_inspectR1(0) <= \inspectR1[0]~output_o\;

ww_inspectR1(1) <= \inspectR1[1]~output_o\;

ww_inspectR1(2) <= \inspectR1[2]~output_o\;

ww_inspectR1(3) <= \inspectR1[3]~output_o\;

ww_inspectR1(4) <= \inspectR1[4]~output_o\;

ww_inspectR1(5) <= \inspectR1[5]~output_o\;

ww_inspectR1(6) <= \inspectR1[6]~output_o\;

ww_inspectR1(7) <= \inspectR1[7]~output_o\;

ww_inspectR1(8) <= \inspectR1[8]~output_o\;

ww_inspectR1(9) <= \inspectR1[9]~output_o\;

ww_inspectR1(10) <= \inspectR1[10]~output_o\;

ww_inspectR1(11) <= \inspectR1[11]~output_o\;

ww_inspectR1(12) <= \inspectR1[12]~output_o\;

ww_inspectR1(13) <= \inspectR1[13]~output_o\;

ww_inspectR1(14) <= \inspectR1[14]~output_o\;

ww_inspectR1(15) <= \inspectR1[15]~output_o\;

ww_inspectR1(16) <= \inspectR1[16]~output_o\;

ww_inspectR1(17) <= \inspectR1[17]~output_o\;

ww_inspectR1(18) <= \inspectR1[18]~output_o\;

ww_inspectR1(19) <= \inspectR1[19]~output_o\;

ww_inspectR1(20) <= \inspectR1[20]~output_o\;

ww_inspectR1(21) <= \inspectR1[21]~output_o\;

ww_inspectR1(22) <= \inspectR1[22]~output_o\;

ww_inspectR1(23) <= \inspectR1[23]~output_o\;

ww_inspectR1(24) <= \inspectR1[24]~output_o\;

ww_inspectR1(25) <= \inspectR1[25]~output_o\;

ww_inspectR1(26) <= \inspectR1[26]~output_o\;

ww_inspectR1(27) <= \inspectR1[27]~output_o\;

ww_inspectR1(28) <= \inspectR1[28]~output_o\;

ww_inspectR1(29) <= \inspectR1[29]~output_o\;

ww_inspectR1(30) <= \inspectR1[30]~output_o\;

ww_inspectR1(31) <= \inspectR1[31]~output_o\;

ww_inspectR2(0) <= \inspectR2[0]~output_o\;

ww_inspectR2(1) <= \inspectR2[1]~output_o\;

ww_inspectR2(2) <= \inspectR2[2]~output_o\;

ww_inspectR2(3) <= \inspectR2[3]~output_o\;

ww_inspectR2(4) <= \inspectR2[4]~output_o\;

ww_inspectR2(5) <= \inspectR2[5]~output_o\;

ww_inspectR2(6) <= \inspectR2[6]~output_o\;

ww_inspectR2(7) <= \inspectR2[7]~output_o\;

ww_inspectR2(8) <= \inspectR2[8]~output_o\;

ww_inspectR2(9) <= \inspectR2[9]~output_o\;

ww_inspectR2(10) <= \inspectR2[10]~output_o\;

ww_inspectR2(11) <= \inspectR2[11]~output_o\;

ww_inspectR2(12) <= \inspectR2[12]~output_o\;

ww_inspectR2(13) <= \inspectR2[13]~output_o\;

ww_inspectR2(14) <= \inspectR2[14]~output_o\;

ww_inspectR2(15) <= \inspectR2[15]~output_o\;

ww_inspectR2(16) <= \inspectR2[16]~output_o\;

ww_inspectR2(17) <= \inspectR2[17]~output_o\;

ww_inspectR2(18) <= \inspectR2[18]~output_o\;

ww_inspectR2(19) <= \inspectR2[19]~output_o\;

ww_inspectR2(20) <= \inspectR2[20]~output_o\;

ww_inspectR2(21) <= \inspectR2[21]~output_o\;

ww_inspectR2(22) <= \inspectR2[22]~output_o\;

ww_inspectR2(23) <= \inspectR2[23]~output_o\;

ww_inspectR2(24) <= \inspectR2[24]~output_o\;

ww_inspectR2(25) <= \inspectR2[25]~output_o\;

ww_inspectR2(26) <= \inspectR2[26]~output_o\;

ww_inspectR2(27) <= \inspectR2[27]~output_o\;

ww_inspectR2(28) <= \inspectR2[28]~output_o\;

ww_inspectR2(29) <= \inspectR2[29]~output_o\;

ww_inspectR2(30) <= \inspectR2[30]~output_o\;

ww_inspectR2(31) <= \inspectR2[31]~output_o\;

ww_inspectEndRS(0) <= \inspectEndRS[0]~output_o\;

ww_inspectEndRS(1) <= \inspectEndRS[1]~output_o\;

ww_inspectEndRS(2) <= \inspectEndRS[2]~output_o\;

ww_inspectEndRS(3) <= \inspectEndRS[3]~output_o\;

ww_inspectEndRS(4) <= \inspectEndRS[4]~output_o\;

ww_inspectEndRT(0) <= \inspectEndRT[0]~output_o\;

ww_inspectEndRT(1) <= \inspectEndRT[1]~output_o\;

ww_inspectEndRT(2) <= \inspectEndRT[2]~output_o\;

ww_inspectEndRT(3) <= \inspectEndRT[3]~output_o\;

ww_inspectEndRT(4) <= \inspectEndRT[4]~output_o\;

ww_inspectEndRD(0) <= \inspectEndRD[0]~output_o\;

ww_inspectEndRD(1) <= \inspectEndRD[1]~output_o\;

ww_inspectEndRD(2) <= \inspectEndRD[2]~output_o\;

ww_inspectEndRD(3) <= \inspectEndRD[3]~output_o\;

ww_inspectEndRD(4) <= \inspectEndRD[4]~output_o\;

ww_inspectInstru(0) <= \inspectInstru[0]~output_o\;

ww_inspectInstru(1) <= \inspectInstru[1]~output_o\;

ww_inspectInstru(2) <= \inspectInstru[2]~output_o\;

ww_inspectInstru(3) <= \inspectInstru[3]~output_o\;

ww_inspectInstru(4) <= \inspectInstru[4]~output_o\;

ww_inspectInstru(5) <= \inspectInstru[5]~output_o\;

ww_inspectInstru(6) <= \inspectInstru[6]~output_o\;

ww_inspectInstru(7) <= \inspectInstru[7]~output_o\;

ww_inspectInstru(8) <= \inspectInstru[8]~output_o\;

ww_inspectInstru(9) <= \inspectInstru[9]~output_o\;

ww_inspectInstru(10) <= \inspectInstru[10]~output_o\;

ww_inspectInstru(11) <= \inspectInstru[11]~output_o\;

ww_inspectInstru(12) <= \inspectInstru[12]~output_o\;

ww_inspectInstru(13) <= \inspectInstru[13]~output_o\;

ww_inspectInstru(14) <= \inspectInstru[14]~output_o\;

ww_inspectInstru(15) <= \inspectInstru[15]~output_o\;

ww_inspectInstru(16) <= \inspectInstru[16]~output_o\;

ww_inspectInstru(17) <= \inspectInstru[17]~output_o\;

ww_inspectInstru(18) <= \inspectInstru[18]~output_o\;

ww_inspectInstru(19) <= \inspectInstru[19]~output_o\;

ww_inspectInstru(20) <= \inspectInstru[20]~output_o\;

ww_inspectInstru(21) <= \inspectInstru[21]~output_o\;

ww_inspectInstru(22) <= \inspectInstru[22]~output_o\;

ww_inspectInstru(23) <= \inspectInstru[23]~output_o\;

ww_inspectInstru(24) <= \inspectInstru[24]~output_o\;

ww_inspectInstru(25) <= \inspectInstru[25]~output_o\;

ww_inspectInstru(26) <= \inspectInstru[26]~output_o\;

ww_inspectInstru(27) <= \inspectInstru[27]~output_o\;

ww_inspectInstru(28) <= \inspectInstru[28]~output_o\;

ww_inspectInstru(29) <= \inspectInstru[29]~output_o\;

ww_inspectInstru(30) <= \inspectInstru[30]~output_o\;

ww_inspectInstru(31) <= \inspectInstru[31]~output_o\;
END structure;


