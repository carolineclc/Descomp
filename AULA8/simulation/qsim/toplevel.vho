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

-- DATE "10/17/2023 23:19:41"

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
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~6_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR8|DOUT~q\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \FF_LEDR9|DOUT~q\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \REG_H0|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \REG_H1|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \REG_H2|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \REG_H3|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \REG_H5|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_H5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \REG_H1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_LEDR7downto0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_H2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_H4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_H1|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_H5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_H0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF_LEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF_LEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_H3|DOUT[1]~DUPLICATE_q\;
\REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REG_H2|DOUT[1]~DUPLICATE_q\;
\REG_H1|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \REG_H1|DOUT[3]~DUPLICATE_q\;
\REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \REG_H0|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_Data_IN[0]~6_combout\ <= NOT \Data_IN[0]~6_combout\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_comb~13_combout\ <= NOT \comb~13_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ALT_INV_comb~12_combout\ <= NOT \comb~12_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\REG_H5|ALT_INV_DOUT\(1) <= NOT \REG_H5|DOUT\(1);
\REG_H5|ALT_INV_DOUT\(2) <= NOT \REG_H5|DOUT\(2);
\REG_H5|ALT_INV_DOUT\(3) <= NOT \REG_H5|DOUT\(3);
\REG_H5|ALT_INV_DOUT\(0) <= NOT \REG_H5|DOUT\(0);
\REG_H4|ALT_INV_DOUT\(1) <= NOT \REG_H4|DOUT\(1);
\REG_H4|ALT_INV_DOUT\(2) <= NOT \REG_H4|DOUT\(2);
\REG_H4|ALT_INV_DOUT\(3) <= NOT \REG_H4|DOUT\(3);
\REG_H4|ALT_INV_DOUT\(0) <= NOT \REG_H4|DOUT\(0);
\REG_H3|ALT_INV_DOUT\(1) <= NOT \REG_H3|DOUT\(1);
\REG_H3|ALT_INV_DOUT\(2) <= NOT \REG_H3|DOUT\(2);
\REG_H3|ALT_INV_DOUT\(3) <= NOT \REG_H3|DOUT\(3);
\REG_H3|ALT_INV_DOUT\(0) <= NOT \REG_H3|DOUT\(0);
\REG_H2|ALT_INV_DOUT\(1) <= NOT \REG_H2|DOUT\(1);
\REG_H2|ALT_INV_DOUT\(2) <= NOT \REG_H2|DOUT\(2);
\REG_H2|ALT_INV_DOUT\(3) <= NOT \REG_H2|DOUT\(3);
\REG_H2|ALT_INV_DOUT\(0) <= NOT \REG_H2|DOUT\(0);
\REG_H1|ALT_INV_DOUT\(1) <= NOT \REG_H1|DOUT\(1);
\REG_H1|ALT_INV_DOUT\(2) <= NOT \REG_H1|DOUT\(2);
\REG_H1|ALT_INV_DOUT\(3) <= NOT \REG_H1|DOUT\(3);
\REG_H1|ALT_INV_DOUT\(0) <= NOT \REG_H1|DOUT\(0);
\REG_H0|ALT_INV_DOUT\(1) <= NOT \REG_H0|DOUT\(1);
\REG_H0|ALT_INV_DOUT\(2) <= NOT \REG_H0|DOUT\(2);
\REG_H0|ALT_INV_DOUT\(3) <= NOT \REG_H0|DOUT\(3);
\REG_H0|ALT_INV_DOUT\(0) <= NOT \REG_H0|DOUT\(0);
\FF_LEDR9|ALT_INV_DOUT~q\ <= NOT \FF_LEDR9|DOUT~q\;
\FF_LEDR8|ALT_INV_DOUT~q\ <= NOT \FF_LEDR8|DOUT~q\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_H5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X36_Y2_N37
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: FF_X36_Y2_N16
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N39
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

-- Location: MLABCELL_X37_Y2_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: MLABCELL_X37_Y2_N45
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

-- Location: LABCELL_X36_Y2_N15
\CPU|MuxProxPC|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[5]~4_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\) # ((!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[5]~4_combout\);

-- Location: FF_X36_Y2_N17
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: MLABCELL_X37_Y2_N48
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X37_Y2_N50
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: MLABCELL_X37_Y2_N51
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X37_Y2_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: MLABCELL_X37_Y2_N54
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\);

-- Location: FF_X37_Y2_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X36_Y2_N9
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X36_Y2_N39
\CPU|MuxProxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|incrementaPC|Add0~1_sumout\ & ((!\CPU|PC|DOUT[4]~DUPLICATE_q\) # ((!\ROM1|memROM~2_combout\) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~1_combout\ & ( 
-- \CPU|incrementaPC|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[0]~0_combout\);

-- Location: FF_X36_Y2_N40
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X37_Y2_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X36_Y2_N12
\CPU|MuxProxPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|incrementaPC|Add0~5_sumout\ & ((!\CPU|PC|DOUT[4]~DUPLICATE_q\) # ((!\ROM1|memROM~2_combout\) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~1_combout\ & ( 
-- \CPU|incrementaPC|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000011110000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[1]~1_combout\);

-- Location: FF_X36_Y2_N13
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: FF_X37_Y2_N41
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X37_Y2_N9
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: FF_X37_Y2_N1
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: MLABCELL_X37_Y2_N0
\CPU|MuxProxPC|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[4]~3_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\ROM1|memROM~2_combout\) # ((!\ROM1|memROM~1_combout\) # (\CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|incrementaPC|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[4]~3_combout\);

-- Location: FF_X37_Y2_N2
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N36
\CPU|MuxProxPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|incrementaPC|Add0~9_sumout\ & ((!\CPU|PC|DOUT[4]~DUPLICATE_q\) # ((!\ROM1|memROM~2_combout\) # (\CPU|PC|DOUT\(0))))) ) ) # ( !\ROM1|memROM~1_combout\ & ( 
-- \CPU|incrementaPC|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[2]~2_combout\);

-- Location: FF_X36_Y2_N38
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: FF_X36_Y2_N14
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: FF_X36_Y2_N41
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N42
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X36_Y2_N45
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: MLABCELL_X37_Y2_N24
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT[5]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X36_Y2_N48
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & 
-- !\CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100001111000000110000110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X37_Y1_N36
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~4_combout\ & ((!\KEY[0]~input_o\))) # (\ROM1|memROM~4_combout\ & (!\KEY[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X37_Y1_N42
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\KEY[3]~input_o\ & \ROM1|memROM~4_combout\)) ) ) ) # ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\ & 
-- (\ROM1|memROM~4_combout\ & \SW[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X37_Y1_N30
\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\ & ((!\KEY[1]~input_o\))) # (\ROM1|memROM~5_combout\ & (\SW[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \Data_IN[0]~2_combout\);

-- Location: LABCELL_X36_Y2_N51
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100000000111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X37_Y1_N3
\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \comb~12_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X36_Y1_N21
\Data_IN[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~6_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(4) & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Data_IN[0]~6_combout\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X36_Y1_N15
\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~0_combout\ & ( (!\FPGA_RESET_N~input_o\ & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~0_combout\ & ( (\SW[0]~input_o\ & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \Data_IN[0]~5_combout\);

-- Location: MLABCELL_X37_Y1_N48
\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( \Data_IN[0]~5_combout\ & ( (\ROM1|memROM~1_combout\ & (\Data_IN[0]~6_combout\ & !\ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \Data_IN[0]~5_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- ((!\ROM1|memROM~3_combout\ & ((\Data_IN[0]~6_combout\))) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~6_combout\)))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\Data_IN[0]~5_combout\ & ( (\ROM1|memROM~1_combout\ & (\Data_IN[0]~6_combout\ & 
-- !\ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\Data_IN[0]~5_combout\ & ( (\ROM1|memROM~1_combout\ & (\Data_IN[0]~6_combout\ & !\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010001000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ALT_INV_Data_IN[0]~6_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_Data_IN[0]~5_combout\,
	combout => \Data_IN[0]~3_combout\);

-- Location: MLABCELL_X37_Y1_N15
\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \Data_IN[0]~3_combout\ ) # ( !\Data_IN[0]~3_combout\ & ( (\comb~12_combout\ & (((\Data_IN[0]~2_combout\) # (\Data_IN[0]~0_combout\)) # (\Data_IN[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data_IN[0]~1_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ALT_INV_Data_IN[0]~2_combout\,
	datad => \ALT_INV_comb~12_combout\,
	dataf => \ALT_INV_Data_IN[0]~3_combout\,
	combout => \Data_IN[0]~4_combout\);

-- Location: MLABCELL_X37_Y1_N27
\CPU|DEC_Instruction_IN|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|DEC_Instruction_IN|saida~0_combout\);

-- Location: FF_X37_Y1_N17
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Data_IN[0]~4_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X36_Y2_N30
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & \CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X36_Y2_N27
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\ROM1|memROM~3_combout\ & (((!\ROM1|memROM~5_combout\) # (\ROM1|memROM~4_combout\)) # (\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X36_Y2_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\comb~1_combout\ & ( \comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

-- Location: FF_X36_Y2_N44
\REG_LEDR7downto0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(0));

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X37_Y1_N21
\CPU|MUX1_ULA|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[1]~0_combout\ = ( !\comb~1_combout\ & ( (\comb~12_combout\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~12_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[1]~0_combout\);

-- Location: FF_X37_Y1_N23
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[1]~0_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X36_Y2_N19
\REG_LEDR7downto0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(1));

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X37_Y1_N0
\CPU|MUX1_ULA|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[2]~1_combout\ = ( !\comb~1_combout\ & ( (\comb~12_combout\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~12_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[2]~1_combout\);

-- Location: FF_X37_Y1_N2
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[2]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: FF_X36_Y2_N46
\REG_LEDR7downto0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(2));

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X37_Y1_N9
\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = ( \comb~12_combout\ & ( !\comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_comb~12_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~13_combout\);

-- Location: MLABCELL_X37_Y1_N54
\CPU|MUX1_ULA|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[3]~2_combout\ = ( \comb~13_combout\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_comb~13_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[3]~2_combout\);

-- Location: FF_X37_Y1_N56
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[3]~2_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X36_Y2_N26
\REG_LEDR7downto0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(3));

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: MLABCELL_X37_Y1_N12
\CPU|MUX1_ULA|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[4]~3_combout\ = ( \comb~13_combout\ & ( \SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_comb~13_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[4]~3_combout\);

-- Location: FF_X37_Y1_N13
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[4]~3_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X37_Y2_N17
\REG_LEDR7downto0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(4));

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X37_Y1_N24
\CPU|MUX1_ULA|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[5]~4_combout\ = ( !\comb~1_combout\ & ( (\SW[5]~input_o\ & \comb~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_comb~12_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[5]~4_combout\);

-- Location: FF_X37_Y1_N26
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[5]~4_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X36_Y2_N22
\REG_LEDR7downto0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(5));

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: MLABCELL_X37_Y1_N18
\CPU|MUX1_ULA|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[6]~5_combout\ = ( !\comb~1_combout\ & ( (\comb~12_combout\ & \SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~12_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[6]~5_combout\);

-- Location: FF_X37_Y1_N19
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[6]~5_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X37_Y2_N13
\REG_LEDR7downto0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(6));

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X37_Y1_N57
\CPU|MUX1_ULA|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[7]~6_combout\ = ( \comb~13_combout\ & ( \SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_comb~13_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[7]~6_combout\);

-- Location: FF_X37_Y1_N59
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX1_ULA|saida_MUX[7]~6_combout\,
	ena => \CPU|DEC_Instruction_IN|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X37_Y2_N22
\REG_LEDR7downto0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR7downto0|DOUT\(7));

-- Location: LABCELL_X36_Y2_N21
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~6_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X36_Y2_N6
\FF_LEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR8|DOUT~0_combout\ = ( \comb~0_combout\ & ( (!\comb~3_combout\ & ((\FF_LEDR8|DOUT~q\))) # (\comb~3_combout\ & (\CPU|REGA|DOUT\(0))) ) ) # ( !\comb~0_combout\ & ( \FF_LEDR8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT\(0),
	datad => \FF_LEDR8|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \FF_LEDR8|DOUT~0_combout\);

-- Location: FF_X36_Y2_N8
\FF_LEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF_LEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR8|DOUT~q\);

-- Location: LABCELL_X35_Y2_N12
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X35_Y2_N39
\FF_LEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF_LEDR9|DOUT~0_combout\ = ( \comb~0_combout\ & ( (!\comb~4_combout\ & ((\FF_LEDR9|DOUT~q\))) # (\comb~4_combout\ & (\CPU|REGA|DOUT\(0))) ) ) # ( !\comb~0_combout\ & ( \FF_LEDR9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ALT_INV_comb~4_combout\,
	datad => \FF_LEDR9|ALT_INV_DOUT~q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \FF_LEDR9|DOUT~0_combout\);

-- Location: FF_X35_Y2_N40
\FF_LEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF_LEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF_LEDR9|DOUT~q\);

-- Location: LABCELL_X35_Y1_N54
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \ROM1|memROM~3_combout\ & ( \comb~0_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X35_Y1_N58
\REG_H0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H0|DOUT\(3));

-- Location: FF_X35_Y1_N56
\REG_H0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H0|DOUT\(2));

-- Location: FF_X35_Y1_N47
\REG_H0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H0|DOUT\(1));

-- Location: FF_X35_Y1_N44
\REG_H0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H0|DOUT\(0));

-- Location: LABCELL_X35_Y1_N0
\DEC_H0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[0]~0_combout\ = ( \REG_H0|DOUT\(1) & ( \REG_H0|DOUT\(0) & ( (\REG_H0|DOUT\(3) & !\REG_H0|DOUT\(2)) ) ) ) # ( !\REG_H0|DOUT\(1) & ( \REG_H0|DOUT\(0) & ( !\REG_H0|DOUT\(3) $ (\REG_H0|DOUT\(2)) ) ) ) # ( !\REG_H0|DOUT\(1) & ( 
-- !\REG_H0|DOUT\(0) & ( (!\REG_H0|DOUT\(3) & \REG_H0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000011110000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_H0|ALT_INV_DOUT\(3),
	datad => \REG_H0|ALT_INV_DOUT\(2),
	datae => \REG_H0|ALT_INV_DOUT\(1),
	dataf => \REG_H0|ALT_INV_DOUT\(0),
	combout => \DEC_H0|rascSaida7seg[0]~0_combout\);

-- Location: FF_X35_Y1_N43
\REG_H0|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H0|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y1_N39
\DEC_H0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[1]~1_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( \REG_H0|DOUT\(3) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( \REG_H0|DOUT\(2) ) ) ) # ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & 
-- ( (\REG_H0|DOUT\(2) & !\REG_H0|DOUT\(3)) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (\REG_H0|DOUT\(2) & \REG_H0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H0|ALT_INV_DOUT\(2),
	datac => \REG_H0|ALT_INV_DOUT\(3),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y1_N18
\DEC_H0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[2]~2_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( (\REG_H0|DOUT\(3) & \REG_H0|DOUT\(2)) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( !\REG_H0|DOUT\(3) $ (\REG_H0|DOUT\(2)) ) ) ) # ( 
-- !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (\REG_H0|DOUT\(3) & \REG_H0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H0|ALT_INV_DOUT\(3),
	datac => \REG_H0|ALT_INV_DOUT\(2),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y1_N15
\DEC_H0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[3]~3_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( \REG_H0|DOUT\(2) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(2) & \REG_H0|DOUT\(3)) ) ) ) # ( \REG_H0|DOUT[0]~DUPLICATE_q\ & 
-- ( !\REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(2) & !\REG_H0|DOUT\(3)) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (\REG_H0|DOUT\(2) & !\REG_H0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H0|ALT_INV_DOUT\(2),
	datac => \REG_H0|ALT_INV_DOUT\(3),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y1_N33
\DEC_H0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[4]~4_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( !\REG_H0|DOUT\(3) ) ) ) # ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(2)) # (!\REG_H0|DOUT\(3)) ) ) ) # ( 
-- !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (\REG_H0|DOUT\(2) & !\REG_H0|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111110101111101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H0|ALT_INV_DOUT\(2),
	datac => \REG_H0|ALT_INV_DOUT\(3),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y1_N24
\DEC_H0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[5]~5_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( !\REG_H0|DOUT\(3) ) ) ) # ( !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(3) & !\REG_H0|DOUT\(2)) ) ) ) # ( \REG_H0|DOUT[0]~DUPLICATE_q\ 
-- & ( !\REG_H0|DOUT\(1) & ( !\REG_H0|DOUT\(3) $ (\REG_H0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001111000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H0|ALT_INV_DOUT\(3),
	datac => \REG_H0|ALT_INV_DOUT\(2),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y1_N42
\DEC_H0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H0|rascSaida7seg[6]~6_combout\ = ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( \REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(3) & \REG_H0|DOUT\(2)) ) ) ) # ( \REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( (!\REG_H0|DOUT\(3) & !\REG_H0|DOUT\(2)) ) ) ) # ( 
-- !\REG_H0|DOUT[0]~DUPLICATE_q\ & ( !\REG_H0|DOUT\(1) & ( !\REG_H0|DOUT\(3) $ (\REG_H0|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000001100000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H0|ALT_INV_DOUT\(3),
	datac => \REG_H0|ALT_INV_DOUT\(2),
	datae => \REG_H0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \REG_H0|ALT_INV_DOUT\(1),
	combout => \DEC_H0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X35_Y2_N15
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \comb~0_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~6_combout\);

-- Location: FF_X35_Y2_N50
\REG_H1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H1|DOUT\(2));

-- Location: FF_X35_Y2_N53
\REG_H1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H1|DOUT\(1));

-- Location: FF_X35_Y2_N56
\REG_H1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H1|DOUT\(0));

-- Location: FF_X35_Y2_N58
\REG_H1|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H1|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y2_N6
\DEC_H1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[0]~0_combout\ = ( \REG_H1|DOUT[3]~DUPLICATE_q\ & ( (\REG_H1|DOUT\(0) & (!\REG_H1|DOUT\(2) $ (!\REG_H1|DOUT\(1)))) ) ) # ( !\REG_H1|DOUT[3]~DUPLICATE_q\ & ( (!\REG_H1|DOUT\(1) & (!\REG_H1|DOUT\(2) $ (!\REG_H1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H1|ALT_INV_DOUT\(2),
	datac => \REG_H1|ALT_INV_DOUT\(1),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	dataf => \REG_H1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \DEC_H1|rascSaida7seg[0]~0_combout\);

-- Location: FF_X35_Y2_N59
\REG_H1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H1|DOUT\(3));

-- Location: LABCELL_X35_Y2_N9
\DEC_H1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[1]~1_combout\ = ( \REG_H1|DOUT\(1) & ( (!\REG_H1|DOUT\(0) & (\REG_H1|DOUT\(2))) # (\REG_H1|DOUT\(0) & ((\REG_H1|DOUT\(3)))) ) ) # ( !\REG_H1|DOUT\(1) & ( (\REG_H1|DOUT\(2) & (!\REG_H1|DOUT\(3) $ (!\REG_H1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H1|ALT_INV_DOUT\(2),
	datac => \REG_H1|ALT_INV_DOUT\(3),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	dataf => \REG_H1|ALT_INV_DOUT\(1),
	combout => \DEC_H1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y2_N0
\DEC_H1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[2]~2_combout\ = ( \REG_H1|DOUT\(1) & ( (!\REG_H1|DOUT\(3) & (!\REG_H1|DOUT\(2) & !\REG_H1|DOUT\(0))) # (\REG_H1|DOUT\(3) & (\REG_H1|DOUT\(2))) ) ) # ( !\REG_H1|DOUT\(1) & ( (\REG_H1|DOUT\(3) & (\REG_H1|DOUT\(2) & !\REG_H1|DOUT\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H1|ALT_INV_DOUT\(3),
	datac => \REG_H1|ALT_INV_DOUT\(2),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	dataf => \REG_H1|ALT_INV_DOUT\(1),
	combout => \DEC_H1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y2_N33
\DEC_H1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[3]~3_combout\ = ( \REG_H1|DOUT\(1) & ( (!\REG_H1|DOUT\(2) & (\REG_H1|DOUT\(3) & !\REG_H1|DOUT\(0))) # (\REG_H1|DOUT\(2) & ((\REG_H1|DOUT\(0)))) ) ) # ( !\REG_H1|DOUT\(1) & ( (!\REG_H1|DOUT\(3) & (!\REG_H1|DOUT\(2) $ 
-- (!\REG_H1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H1|ALT_INV_DOUT\(2),
	datac => \REG_H1|ALT_INV_DOUT\(3),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	dataf => \REG_H1|ALT_INV_DOUT\(1),
	combout => \DEC_H1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y2_N36
\DEC_H1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[4]~4_combout\ = ( \REG_H1|DOUT\(2) & ( (!\REG_H1|DOUT\(3) & ((!\REG_H1|DOUT\(1)) # (\REG_H1|DOUT\(0)))) ) ) # ( !\REG_H1|DOUT\(2) & ( (\REG_H1|DOUT\(0) & ((!\REG_H1|DOUT\(1)) # (!\REG_H1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H1|ALT_INV_DOUT\(1),
	datac => \REG_H1|ALT_INV_DOUT\(0),
	datad => \REG_H1|ALT_INV_DOUT\(3),
	dataf => \REG_H1|ALT_INV_DOUT\(2),
	combout => \DEC_H1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y2_N30
\DEC_H1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[5]~5_combout\ = ( \REG_H1|DOUT[3]~DUPLICATE_q\ & ( (\REG_H1|DOUT\(2) & (!\REG_H1|DOUT\(1) & \REG_H1|DOUT\(0))) ) ) # ( !\REG_H1|DOUT[3]~DUPLICATE_q\ & ( (!\REG_H1|DOUT\(2) & ((\REG_H1|DOUT\(0)) # (\REG_H1|DOUT\(1)))) # 
-- (\REG_H1|DOUT\(2) & (\REG_H1|DOUT\(1) & \REG_H1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H1|ALT_INV_DOUT\(2),
	datac => \REG_H1|ALT_INV_DOUT\(1),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	dataf => \REG_H1|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \DEC_H1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y2_N51
\DEC_H1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H1|rascSaida7seg[6]~6_combout\ = ( \REG_H1|DOUT\(1) & ( (\REG_H1|DOUT\(2) & (!\REG_H1|DOUT\(3) & \REG_H1|DOUT\(0))) ) ) # ( !\REG_H1|DOUT\(1) & ( (!\REG_H1|DOUT\(2) & (!\REG_H1|DOUT\(3))) # (\REG_H1|DOUT\(2) & (\REG_H1|DOUT\(3) & !\REG_H1|DOUT\(0))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110001000000000000100010010011001100010000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H1|ALT_INV_DOUT\(2),
	datab => \REG_H1|ALT_INV_DOUT\(3),
	datad => \REG_H1|ALT_INV_DOUT\(0),
	datae => \REG_H1|ALT_INV_DOUT\(1),
	combout => \DEC_H1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y2_N57
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( \ROM1|memROM~4_combout\ & ( \comb~0_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X37_Y2_N32
\REG_H2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H2|DOUT\(0));

-- Location: FF_X37_Y2_N28
\REG_H2|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H2|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N8
\REG_H2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H2|DOUT\(2));

-- Location: FF_X37_Y2_N47
\REG_H2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H2|DOUT\(3));

-- Location: LABCELL_X36_Y1_N45
\DEC_H2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[0]~0_combout\ = ( \REG_H2|DOUT\(2) & ( \REG_H2|DOUT\(3) & ( (\REG_H2|DOUT\(0) & !\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(2) & ( \REG_H2|DOUT\(3) & ( (\REG_H2|DOUT\(0) & \REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- \REG_H2|DOUT\(2) & ( !\REG_H2|DOUT\(3) & ( (!\REG_H2|DOUT\(0) & !\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(2) & ( !\REG_H2|DOUT\(3) & ( (\REG_H2|DOUT\(0) & !\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000000000000000000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_H2|ALT_INV_DOUT\(0),
	datad => \REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_H2|ALT_INV_DOUT\(2),
	dataf => \REG_H2|ALT_INV_DOUT\(3),
	combout => \DEC_H2|rascSaida7seg[0]~0_combout\);

-- Location: FF_X37_Y2_N29
\REG_H2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H2|DOUT\(1));

-- Location: MLABCELL_X37_Y2_N15
\DEC_H2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[1]~1_combout\ = ( \REG_H2|DOUT\(0) & ( (!\REG_H2|DOUT\(1) & (!\REG_H2|DOUT\(3) & \REG_H2|DOUT\(2))) # (\REG_H2|DOUT\(1) & (\REG_H2|DOUT\(3))) ) ) # ( !\REG_H2|DOUT\(0) & ( (\REG_H2|DOUT\(2) & ((\REG_H2|DOUT\(3)) # 
-- (\REG_H2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H2|ALT_INV_DOUT\(1),
	datab => \REG_H2|ALT_INV_DOUT\(3),
	datac => \REG_H2|ALT_INV_DOUT\(2),
	dataf => \REG_H2|ALT_INV_DOUT\(0),
	combout => \DEC_H2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y1_N48
\DEC_H2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[2]~2_combout\ = ( \REG_H2|DOUT\(2) & ( \REG_H2|DOUT\(3) & ( (!\REG_H2|DOUT\(0)) # (\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(2) & ( !\REG_H2|DOUT\(3) & ( (\REG_H2|DOUT[1]~DUPLICATE_q\ & !\REG_H2|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \REG_H2|ALT_INV_DOUT\(0),
	datae => \REG_H2|ALT_INV_DOUT\(2),
	dataf => \REG_H2|ALT_INV_DOUT\(3),
	combout => \DEC_H2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y1_N33
\DEC_H2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[3]~3_combout\ = ( \REG_H2|DOUT\(2) & ( \REG_H2|DOUT\(3) & ( (\REG_H2|DOUT\(0) & \REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(2) & ( \REG_H2|DOUT\(3) & ( (!\REG_H2|DOUT\(0) & \REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- \REG_H2|DOUT\(2) & ( !\REG_H2|DOUT\(3) & ( !\REG_H2|DOUT\(0) $ (\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(2) & ( !\REG_H2|DOUT\(3) & ( (\REG_H2|DOUT\(0) & !\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111100000000111100000000111100000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_H2|ALT_INV_DOUT\(0),
	datad => \REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_H2|ALT_INV_DOUT\(2),
	dataf => \REG_H2|ALT_INV_DOUT\(3),
	combout => \DEC_H2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X37_Y2_N6
\DEC_H2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[4]~4_combout\ = ( \REG_H2|DOUT\(0) & ( (!\REG_H2|DOUT\(3)) # ((!\REG_H2|DOUT\(1) & !\REG_H2|DOUT\(2))) ) ) # ( !\REG_H2|DOUT\(0) & ( (!\REG_H2|DOUT\(3) & (!\REG_H2|DOUT\(1) & \REG_H2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H2|ALT_INV_DOUT\(3),
	datac => \REG_H2|ALT_INV_DOUT\(1),
	datad => \REG_H2|ALT_INV_DOUT\(2),
	dataf => \REG_H2|ALT_INV_DOUT\(0),
	combout => \DEC_H2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X37_Y2_N18
\DEC_H2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[5]~5_combout\ = ( \REG_H2|DOUT\(3) & ( \REG_H2|DOUT\(2) & ( (\REG_H2|DOUT\(0) & !\REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( !\REG_H2|DOUT\(3) & ( \REG_H2|DOUT\(2) & ( (\REG_H2|DOUT\(0) & \REG_H2|DOUT[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\REG_H2|DOUT\(3) & ( !\REG_H2|DOUT\(2) & ( (\REG_H2|DOUT[1]~DUPLICATE_q\) # (\REG_H2|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000000000000000000000001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H2|ALT_INV_DOUT\(0),
	datad => \REG_H2|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_H2|ALT_INV_DOUT\(3),
	dataf => \REG_H2|ALT_INV_DOUT\(2),
	combout => \DEC_H2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X37_Y2_N12
\DEC_H2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H2|rascSaida7seg[6]~6_combout\ = ( \REG_H2|DOUT\(2) & ( (!\REG_H2|DOUT\(1) & (\REG_H2|DOUT\(3) & !\REG_H2|DOUT\(0))) # (\REG_H2|DOUT\(1) & (!\REG_H2|DOUT\(3) & \REG_H2|DOUT\(0))) ) ) # ( !\REG_H2|DOUT\(2) & ( (!\REG_H2|DOUT\(1) & !\REG_H2|DOUT\(3)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H2|ALT_INV_DOUT\(1),
	datab => \REG_H2|ALT_INV_DOUT\(3),
	datac => \REG_H2|ALT_INV_DOUT\(0),
	dataf => \REG_H2|ALT_INV_DOUT\(2),
	combout => \DEC_H2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y2_N24
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \comb~0_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comb~8_combout\);

-- Location: FF_X36_Y2_N55
\REG_H3|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H3|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N2
\REG_H3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H3|DOUT\(2));

-- Location: FF_X36_Y2_N35
\REG_H3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H3|DOUT\(3));

-- Location: FF_X36_Y2_N59
\REG_H3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H3|DOUT\(0));

-- Location: LABCELL_X35_Y1_N48
\DEC_H3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[0]~0_combout\ = ( \REG_H3|DOUT\(3) & ( \REG_H3|DOUT\(0) & ( !\REG_H3|DOUT[1]~DUPLICATE_q\ $ (!\REG_H3|DOUT\(2)) ) ) ) # ( !\REG_H3|DOUT\(3) & ( \REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT[1]~DUPLICATE_q\ & !\REG_H3|DOUT\(2)) ) ) ) # ( 
-- !\REG_H3|DOUT\(3) & ( !\REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT[1]~DUPLICATE_q\ & \REG_H3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000000110000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_H3|ALT_INV_DOUT\(2),
	datae => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y1_N36
\DEC_H3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[1]~1_combout\ = ( \REG_H3|DOUT\(3) & ( \REG_H3|DOUT\(0) & ( \REG_H3|DOUT[1]~DUPLICATE_q\ ) ) ) # ( !\REG_H3|DOUT\(3) & ( \REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT[1]~DUPLICATE_q\ & \REG_H3|DOUT\(2)) ) ) ) # ( \REG_H3|DOUT\(3) & ( 
-- !\REG_H3|DOUT\(0) & ( \REG_H3|DOUT\(2) ) ) ) # ( !\REG_H3|DOUT\(3) & ( !\REG_H3|DOUT\(0) & ( (\REG_H3|DOUT[1]~DUPLICATE_q\ & \REG_H3|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_H3|ALT_INV_DOUT\(2),
	datae => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y1_N21
\DEC_H3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[2]~2_combout\ = ( \REG_H3|DOUT\(3) & ( \REG_H3|DOUT\(0) & ( (\REG_H3|DOUT\(2) & \REG_H3|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \REG_H3|DOUT\(3) & ( !\REG_H3|DOUT\(0) & ( \REG_H3|DOUT\(2) ) ) ) # ( !\REG_H3|DOUT\(3) & ( !\REG_H3|DOUT\(0) & ( 
-- (!\REG_H3|DOUT\(2) & \REG_H3|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H3|ALT_INV_DOUT\(2),
	datac => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y1_N15
\DEC_H3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[3]~3_combout\ = ( \REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT\(2) & (!\REG_H3|DOUT[1]~DUPLICATE_q\ & !\REG_H3|DOUT\(3))) # (\REG_H3|DOUT\(2) & (\REG_H3|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT\(2) & 
-- (\REG_H3|DOUT[1]~DUPLICATE_q\ & \REG_H3|DOUT\(3))) # (\REG_H3|DOUT\(2) & (!\REG_H3|DOUT[1]~DUPLICATE_q\ & !\REG_H3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H3|ALT_INV_DOUT\(2),
	datac => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y1_N33
\DEC_H3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[4]~4_combout\ = ( \REG_H3|DOUT\(0) & ( (!\REG_H3|DOUT\(3)) # ((!\REG_H3|DOUT\(2) & !\REG_H3|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\REG_H3|DOUT\(0) & ( (\REG_H3|DOUT\(2) & (!\REG_H3|DOUT[1]~DUPLICATE_q\ & !\REG_H3|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H3|ALT_INV_DOUT\(2),
	datac => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[4]~4_combout\);

-- Location: FF_X36_Y2_N56
\REG_H3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H3|DOUT\(1));

-- Location: LABCELL_X36_Y2_N0
\DEC_H3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[5]~5_combout\ = ( \REG_H3|DOUT\(0) & ( !\REG_H3|DOUT\(3) $ (((!\REG_H3|DOUT\(1) & \REG_H3|DOUT\(2)))) ) ) # ( !\REG_H3|DOUT\(0) & ( (\REG_H3|DOUT\(1) & (!\REG_H3|DOUT\(3) & !\REG_H3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000010110101111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H3|ALT_INV_DOUT\(1),
	datac => \REG_H3|ALT_INV_DOUT\(3),
	datad => \REG_H3|ALT_INV_DOUT\(2),
	dataf => \REG_H3|ALT_INV_DOUT\(0),
	combout => \DEC_H3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y2_N33
\DEC_H3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H3|rascSaida7seg[6]~6_combout\ = ( \REG_H3|DOUT\(2) & ( (!\REG_H3|DOUT[1]~DUPLICATE_q\ & (!\REG_H3|DOUT\(0) & \REG_H3|DOUT\(3))) # (\REG_H3|DOUT[1]~DUPLICATE_q\ & (\REG_H3|DOUT\(0) & !\REG_H3|DOUT\(3))) ) ) # ( !\REG_H3|DOUT\(2) & ( 
-- (!\REG_H3|DOUT[1]~DUPLICATE_q\ & !\REG_H3|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H3|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \REG_H3|ALT_INV_DOUT\(0),
	datad => \REG_H3|ALT_INV_DOUT\(3),
	dataf => \REG_H3|ALT_INV_DOUT\(2),
	combout => \DEC_H3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y2_N3
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\ROM1|memROM~5_combout\ & !\CPU|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \comb~9_combout\);

-- Location: LABCELL_X35_Y2_N54
\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \comb~9_combout\ & ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ALT_INV_comb~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \comb~10_combout\);

-- Location: FF_X35_Y2_N20
\REG_H4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H4|DOUT\(3));

-- Location: FF_X35_Y2_N17
\REG_H4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H4|DOUT\(0));

-- Location: FF_X35_Y2_N23
\REG_H4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H4|DOUT\(2));

-- Location: FF_X35_Y2_N26
\REG_H4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H4|DOUT\(1));

-- Location: LABCELL_X35_Y2_N27
\DEC_H4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[0]~0_combout\ = ( \REG_H4|DOUT\(1) & ( (\REG_H4|DOUT\(3) & (\REG_H4|DOUT\(0) & !\REG_H4|DOUT\(2))) ) ) # ( !\REG_H4|DOUT\(1) & ( (!\REG_H4|DOUT\(3) & (!\REG_H4|DOUT\(0) $ (!\REG_H4|DOUT\(2)))) # (\REG_H4|DOUT\(3) & (\REG_H4|DOUT\(0) 
-- & \REG_H4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(3),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datad => \REG_H4|ALT_INV_DOUT\(2),
	dataf => \REG_H4|ALT_INV_DOUT\(1),
	combout => \DEC_H4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y2_N42
\DEC_H4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[1]~1_combout\ = (!\REG_H4|DOUT\(1) & (\REG_H4|DOUT\(2) & (!\REG_H4|DOUT\(0) $ (!\REG_H4|DOUT\(3))))) # (\REG_H4|DOUT\(1) & ((!\REG_H4|DOUT\(0) & ((\REG_H4|DOUT\(2)))) # (\REG_H4|DOUT\(0) & (\REG_H4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101101000000010110110100000001011011010000000101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(1),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datac => \REG_H4|ALT_INV_DOUT\(3),
	datad => \REG_H4|ALT_INV_DOUT\(2),
	combout => \DEC_H4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y2_N45
\DEC_H4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[2]~2_combout\ = ( \REG_H4|DOUT\(3) & ( (\REG_H4|DOUT\(2) & ((!\REG_H4|DOUT\(0)) # (\REG_H4|DOUT\(1)))) ) ) # ( !\REG_H4|DOUT\(3) & ( (\REG_H4|DOUT\(1) & (!\REG_H4|DOUT\(0) & !\REG_H4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(1),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datad => \REG_H4|ALT_INV_DOUT\(2),
	dataf => \REG_H4|ALT_INV_DOUT\(3),
	combout => \DEC_H4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y2_N3
\DEC_H4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[3]~3_combout\ = ( \REG_H4|DOUT\(1) & ( (!\REG_H4|DOUT\(0) & (\REG_H4|DOUT\(3) & !\REG_H4|DOUT\(2))) # (\REG_H4|DOUT\(0) & ((\REG_H4|DOUT\(2)))) ) ) # ( !\REG_H4|DOUT\(1) & ( (!\REG_H4|DOUT\(3) & (!\REG_H4|DOUT\(0) $ 
-- (!\REG_H4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(3),
	datac => \REG_H4|ALT_INV_DOUT\(0),
	datad => \REG_H4|ALT_INV_DOUT\(2),
	dataf => \REG_H4|ALT_INV_DOUT\(1),
	combout => \DEC_H4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y2_N18
\DEC_H4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[4]~4_combout\ = (!\REG_H4|DOUT\(1) & ((!\REG_H4|DOUT\(2) & (\REG_H4|DOUT\(0))) # (\REG_H4|DOUT\(2) & ((!\REG_H4|DOUT\(3)))))) # (\REG_H4|DOUT\(1) & (\REG_H4|DOUT\(0) & ((!\REG_H4|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100100000001110110010000000111011001000000011101100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(1),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datac => \REG_H4|ALT_INV_DOUT\(2),
	datad => \REG_H4|ALT_INV_DOUT\(3),
	combout => \DEC_H4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y2_N21
\DEC_H4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[5]~5_combout\ = ( \REG_H4|DOUT\(3) & ( (!\REG_H4|DOUT\(1) & (\REG_H4|DOUT\(0) & \REG_H4|DOUT\(2))) ) ) # ( !\REG_H4|DOUT\(3) & ( (!\REG_H4|DOUT\(1) & (\REG_H4|DOUT\(0) & !\REG_H4|DOUT\(2))) # (\REG_H4|DOUT\(1) & ((!\REG_H4|DOUT\(2)) 
-- # (\REG_H4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(1),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datad => \REG_H4|ALT_INV_DOUT\(2),
	dataf => \REG_H4|ALT_INV_DOUT\(3),
	combout => \DEC_H4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y2_N24
\DEC_H4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H4|rascSaida7seg[6]~6_combout\ = (!\REG_H4|DOUT\(0) & (!\REG_H4|DOUT\(1) & (!\REG_H4|DOUT\(3) $ (\REG_H4|DOUT\(2))))) # (\REG_H4|DOUT\(0) & (!\REG_H4|DOUT\(3) & (!\REG_H4|DOUT\(2) $ (\REG_H4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010000000010101001000000001010100100000000101010010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H4|ALT_INV_DOUT\(3),
	datab => \REG_H4|ALT_INV_DOUT\(0),
	datac => \REG_H4|ALT_INV_DOUT\(2),
	datad => \REG_H4|ALT_INV_DOUT\(1),
	combout => \DEC_H4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X36_Y1_N54
\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( \ROM1|memROM~3_combout\ & ( \comb~9_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ALT_INV_comb~9_combout\,
	combout => \comb~11_combout\);

-- Location: FF_X36_Y1_N29
\REG_H5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H5|DOUT\(3));

-- Location: FF_X36_Y1_N59
\REG_H5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H5|DOUT\(0));

-- Location: LABCELL_X36_Y1_N24
\REG_H5|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_H5|DOUT[2]~feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \REG_H5|DOUT[2]~feeder_combout\);

-- Location: FF_X36_Y1_N26
\REG_H5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_H5|DOUT[2]~feeder_combout\,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H5|DOUT\(2));

-- Location: FF_X36_Y1_N56
\REG_H5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comb~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_H5|DOUT\(1));

-- Location: LABCELL_X35_Y1_N27
\DEC_H5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[0]~0_combout\ = ( \REG_H5|DOUT\(1) & ( (\REG_H5|DOUT\(3) & (\REG_H5|DOUT\(0) & !\REG_H5|DOUT\(2))) ) ) # ( !\REG_H5|DOUT\(1) & ( (!\REG_H5|DOUT\(3) & (!\REG_H5|DOUT\(0) $ (!\REG_H5|DOUT\(2)))) # (\REG_H5|DOUT\(3) & (\REG_H5|DOUT\(0) 
-- & \REG_H5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001000100000001000000101001001010010001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H5|ALT_INV_DOUT\(3),
	datab => \REG_H5|ALT_INV_DOUT\(0),
	datac => \REG_H5|ALT_INV_DOUT\(2),
	datae => \REG_H5|ALT_INV_DOUT\(1),
	combout => \DEC_H5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y1_N30
\DEC_H5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[1]~1_combout\ = ( \REG_H5|DOUT\(2) & ( (!\REG_H5|DOUT\(1) & (!\REG_H5|DOUT\(3) $ (!\REG_H5|DOUT\(0)))) # (\REG_H5|DOUT\(1) & ((!\REG_H5|DOUT\(0)) # (\REG_H5|DOUT\(3)))) ) ) # ( !\REG_H5|DOUT\(2) & ( (\REG_H5|DOUT\(1) & 
-- (\REG_H5|DOUT\(3) & \REG_H5|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H5|ALT_INV_DOUT\(1),
	datac => \REG_H5|ALT_INV_DOUT\(3),
	datad => \REG_H5|ALT_INV_DOUT\(0),
	dataf => \REG_H5|ALT_INV_DOUT\(2),
	combout => \DEC_H5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y1_N36
\DEC_H5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[2]~2_combout\ = ( \REG_H5|DOUT\(0) & ( \REG_H5|DOUT\(2) & ( (\REG_H5|DOUT\(1) & \REG_H5|DOUT\(3)) ) ) ) # ( !\REG_H5|DOUT\(0) & ( \REG_H5|DOUT\(2) & ( \REG_H5|DOUT\(3) ) ) ) # ( !\REG_H5|DOUT\(0) & ( !\REG_H5|DOUT\(2) & ( 
-- (\REG_H5|DOUT\(1) & !\REG_H5|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000001111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H5|ALT_INV_DOUT\(1),
	datac => \REG_H5|ALT_INV_DOUT\(3),
	datae => \REG_H5|ALT_INV_DOUT\(0),
	dataf => \REG_H5|ALT_INV_DOUT\(2),
	combout => \DEC_H5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y1_N9
\DEC_H5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[3]~3_combout\ = ( \REG_H5|DOUT\(1) & ( (!\REG_H5|DOUT\(2) & (!\REG_H5|DOUT\(0) & \REG_H5|DOUT\(3))) # (\REG_H5|DOUT\(2) & (\REG_H5|DOUT\(0))) ) ) # ( !\REG_H5|DOUT\(1) & ( (!\REG_H5|DOUT\(3) & (!\REG_H5|DOUT\(2) $ 
-- (!\REG_H5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H5|ALT_INV_DOUT\(2),
	datab => \REG_H5|ALT_INV_DOUT\(0),
	datad => \REG_H5|ALT_INV_DOUT\(3),
	dataf => \REG_H5|ALT_INV_DOUT\(1),
	combout => \DEC_H5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y1_N12
\DEC_H5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[4]~4_combout\ = ( \REG_H5|DOUT\(2) & ( (!\REG_H5|DOUT\(3) & ((!\REG_H5|DOUT\(1)) # (\REG_H5|DOUT\(0)))) ) ) # ( !\REG_H5|DOUT\(2) & ( (\REG_H5|DOUT\(0) & ((!\REG_H5|DOUT\(1)) # (!\REG_H5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_H5|ALT_INV_DOUT\(1),
	datac => \REG_H5|ALT_INV_DOUT\(3),
	datad => \REG_H5|ALT_INV_DOUT\(0),
	dataf => \REG_H5|ALT_INV_DOUT\(2),
	combout => \DEC_H5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y1_N9
\DEC_H5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[5]~5_combout\ = ( \REG_H5|DOUT\(1) & ( (!\REG_H5|DOUT\(3) & ((!\REG_H5|DOUT\(2)) # (\REG_H5|DOUT\(0)))) ) ) # ( !\REG_H5|DOUT\(1) & ( (\REG_H5|DOUT\(0) & (!\REG_H5|DOUT\(3) $ (\REG_H5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001101000101010001000100001001000011010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H5|ALT_INV_DOUT\(3),
	datab => \REG_H5|ALT_INV_DOUT\(0),
	datac => \REG_H5|ALT_INV_DOUT\(2),
	datae => \REG_H5|ALT_INV_DOUT\(1),
	combout => \DEC_H5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y1_N6
\DEC_H5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_H5|rascSaida7seg[6]~6_combout\ = ( \REG_H5|DOUT\(1) & ( (\REG_H5|DOUT\(2) & (\REG_H5|DOUT\(0) & !\REG_H5|DOUT\(3))) ) ) # ( !\REG_H5|DOUT\(1) & ( (!\REG_H5|DOUT\(2) & ((!\REG_H5|DOUT\(3)))) # (\REG_H5|DOUT\(2) & (!\REG_H5|DOUT\(0) & 
-- \REG_H5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_H5|ALT_INV_DOUT\(2),
	datab => \REG_H5|ALT_INV_DOUT\(0),
	datac => \REG_H5|ALT_INV_DOUT\(3),
	dataf => \REG_H5|ALT_INV_DOUT\(1),
	combout => \DEC_H5|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X37_Y40_N3
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


