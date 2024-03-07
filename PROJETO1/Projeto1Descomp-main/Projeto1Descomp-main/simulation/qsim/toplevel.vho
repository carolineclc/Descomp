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

-- DATE "10/25/2023 17:35:14"

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
	SAIDA_CPU : OUT std_logic_vector(7 DOWNTO 0);
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
	SW : IN std_logic_vector(9 DOWNTO 0);
	MONITORAMENTO1 : OUT std_logic_vector(8 DOWNTO 0);
	MONITORAMENTO2 : OUT std_logic_vector(8 DOWNTO 0);
	entrada : OUT std_logic;
	saida : OUT std_logic
	);
END toplevel;

-- Design Ports Information
-- SAIDA_CPU[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_CPU[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- MONITORAMENTO1[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO1[8]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MONITORAMENTO2[8]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SAIDA_CPU : std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_MONITORAMENTO1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_MONITORAMENTO2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_entrada : std_logic;
SIGNAL ww_saida : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~81_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~80_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~11_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~12_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \Data_IN[6]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|saida~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~17_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \Data_IN[6]~3_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~16_q\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~13DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~13_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~5_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~14_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~79_combout\ : std_logic;
SIGNAL \Data_IN[3]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~6_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~15_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \Data_IN[4]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~7_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~16DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \Data_IN[5]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~8_combout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~18_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~9_combout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FlagZero|DOUT~q\ : std_logic;
SIGNAL \CPU|MuxProxPC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MuxProxPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~11DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_BANK|registrador~14DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU|MUX1_ULA|ALT_INV_saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|ALT_INV_saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1_ULA|ALT_INV_saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REG_BANK|ALT_INV_registrador~13DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU|DEC_Instruction_IN|ALT_INV_saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|FlagZero|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~3_combout\ : std_logic;

BEGIN

SAIDA_CPU <= ww_SAIDA_CPU;
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
MONITORAMENTO1 <= ww_MONITORAMENTO1;
MONITORAMENTO2 <= ww_MONITORAMENTO2;
entrada <= ww_entrada;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\ALT_INV_Data_IN[5]~2_combout\ <= NOT \Data_IN[5]~2_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\ALT_INV_Data_IN[4]~1_combout\ <= NOT \Data_IN[4]~1_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\CPU|ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|ULA1|saida[4]~4_combout\;
\RAM1|ALT_INV_ram~79_combout\ <= NOT \RAM1|ram~79_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\ALT_INV_Data_IN[6]~0_combout\ <= NOT \Data_IN[6]~0_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1_ULA|saida_MUX[0]~1_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1_ULA|saida_MUX[0]~0_combout\;
\CPU|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \CPU|ULA1|Equal1~0_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|REG_RETORNO|DOUT\(8);
\CPU|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|REG_RETORNO|DOUT\(7);
\CPU|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|REG_RETORNO|DOUT\(6);
\CPU|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|REG_RETORNO|DOUT\(5);
\CPU|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|REG_RETORNO|DOUT\(4);
\CPU|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|REG_RETORNO|DOUT\(3);
\CPU|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|REG_RETORNO|DOUT\(2);
\CPU|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|REG_RETORNO|DOUT\(1);
\CPU|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|REG_RETORNO|DOUT\(0);
\CPU|REG_BANK|ALT_INV_registrador~18_q\ <= NOT \CPU|REG_BANK|registrador~18_q\;
\CPU|REG_BANK|ALT_INV_registrador~17_q\ <= NOT \CPU|REG_BANK|registrador~17_q\;
\CPU|REG_BANK|ALT_INV_registrador~16_q\ <= NOT \CPU|REG_BANK|registrador~16_q\;
\CPU|REG_BANK|ALT_INV_registrador~14_q\ <= NOT \CPU|REG_BANK|registrador~14_q\;
\CPU|REG_BANK|ALT_INV_registrador~12_q\ <= NOT \CPU|REG_BANK|registrador~12_q\;
\CPU|REG_BANK|ALT_INV_registrador~11_q\ <= NOT \CPU|REG_BANK|registrador~11_q\;
\CPU|MUX1_ULA|ALT_INV_saida_MUX[1]~10_combout\ <= NOT \CPU|MUX1_ULA|saida_MUX[1]~10_combout\;
\CPU|MUX1_ULA|ALT_INV_saida_MUX[2]~6_combout\ <= NOT \CPU|MUX1_ULA|saida_MUX[2]~6_combout\;
\CPU|MUX1_ULA|ALT_INV_saida_MUX[7]~2_combout\ <= NOT \CPU|MUX1_ULA|saida_MUX[7]~2_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|FlagZero|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \CPU|FlagZero|DOUT~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\CPU|REG_BANK|ALT_INV_registrador~15DUPLICATE_q\ <= NOT \CPU|REG_BANK|registrador~15DUPLICATE_q\;
\CPU|REG_BANK|ALT_INV_registrador~13DUPLICATE_q\ <= NOT \CPU|REG_BANK|registrador~13DUPLICATE_q\;
\CPU|ULA1|ALT_INV_Equal1~1_combout\ <= NOT \CPU|ULA1|Equal1~1_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\CPU|FlagZero|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FlagZero|DOUT~3_combout\;
\CPU|FlagZero|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FlagZero|DOUT~2_combout\;
\CPU|FlagZero|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FlagZero|DOUT~1_combout\;
\CPU|FlagZero|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FlagZero|DOUT~0_combout\;
\CPU|DEC_Instruction_IN|ALT_INV_saida~3_combout\ <= NOT \CPU|DEC_Instruction_IN|saida~3_combout\;
\ALT_INV_Data_IN[3]~4_combout\ <= NOT \Data_IN[3]~4_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\CPU|DEC_Instruction_IN|ALT_INV_saida[5]~2_combout\ <= NOT \CPU|DEC_Instruction_IN|saida[5]~2_combout\;
\CPU|MuxProxPC|ALT_INV_Equal0~0_combout\ <= NOT \CPU|MuxProxPC|Equal0~0_combout\;
\CPU|MuxProxPC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MuxProxPC|Equal1~0_combout\;
\CPU|FlagZero|ALT_INV_DOUT~q\ <= NOT \CPU|FlagZero|DOUT~q\;
\CPU|ULA1|ALT_INV_saida[7]~9_combout\ <= NOT \CPU|ULA1|saida[7]~9_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\CPU|ULA1|ALT_INV_saida[6]~8_combout\ <= NOT \CPU|ULA1|saida[6]~8_combout\;
\ALT_INV_Data_IN[6]~3_combout\ <= NOT \Data_IN[6]~3_combout\;

-- Location: IOOBUF_X14_Y45_N36
\SAIDA_CPU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~11DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(0));

-- Location: IOOBUF_X12_Y45_N19
\SAIDA_CPU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~12_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(1));

-- Location: IOOBUF_X16_Y45_N42
\SAIDA_CPU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~13DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(2));

-- Location: IOOBUF_X14_Y45_N19
\SAIDA_CPU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~14DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(3));

-- Location: IOOBUF_X12_Y45_N53
\SAIDA_CPU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~15DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(4));

-- Location: IOOBUF_X12_Y45_N2
\SAIDA_CPU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~16DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(5));

-- Location: IOOBUF_X12_Y45_N36
\SAIDA_CPU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~17_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(6));

-- Location: IOOBUF_X14_Y45_N2
\SAIDA_CPU[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_BANK|registrador~18_q\,
	devoe => ww_devoe,
	o => ww_SAIDA_CPU(7));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X10_Y45_N53
\MONITORAMENTO1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(0),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(0));

-- Location: IOOBUF_X20_Y45_N2
\MONITORAMENTO1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(1),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(1));

-- Location: IOOBUF_X10_Y45_N36
\MONITORAMENTO1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(2),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(2));

-- Location: IOOBUF_X14_Y45_N53
\MONITORAMENTO1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(3),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(3));

-- Location: IOOBUF_X20_Y45_N36
\MONITORAMENTO1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(4),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(4));

-- Location: IOOBUF_X16_Y45_N59
\MONITORAMENTO1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(5),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(5));

-- Location: IOOBUF_X16_Y45_N93
\MONITORAMENTO1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(6),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(6));

-- Location: IOOBUF_X16_Y45_N76
\MONITORAMENTO1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(7),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(7));

-- Location: IOOBUF_X20_Y45_N53
\MONITORAMENTO1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REG_RETORNO|DOUT\(8),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO1(8));

-- Location: IOOBUF_X20_Y45_N19
\MONITORAMENTO2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(0));

-- Location: IOOBUF_X18_Y45_N36
\MONITORAMENTO2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(1));

-- Location: IOOBUF_X18_Y45_N53
\MONITORAMENTO2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(2));

-- Location: IOOBUF_X22_Y45_N19
\MONITORAMENTO2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(3));

-- Location: IOOBUF_X22_Y45_N53
\MONITORAMENTO2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(4));

-- Location: IOOBUF_X22_Y45_N2
\MONITORAMENTO2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(5));

-- Location: IOOBUF_X22_Y45_N36
\MONITORAMENTO2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(6));

-- Location: IOOBUF_X18_Y45_N19
\MONITORAMENTO2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(7));

-- Location: IOOBUF_X18_Y45_N2
\MONITORAMENTO2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_MONITORAMENTO2(8));

-- Location: IOOBUF_X52_Y45_N2
\entrada~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_entrada);

-- Location: IOOBUF_X54_Y16_N22
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida);

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

-- Location: CLKCTRL_G7
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

-- Location: FF_X19_Y40_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X21_Y40_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X21_Y40_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X21_Y40_N51
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X19_Y40_N5
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X19_Y40_N54
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[7]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[7]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X21_Y40_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: FF_X21_Y40_N56
\CPU|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(8));

-- Location: LABCELL_X20_Y40_N3
\CPU|MuxProxPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[8]~8_combout\ = ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|MuxProxPC|Equal0~0_combout\) # (\CPU|REG_RETORNO|DOUT\(8)) ) ) ) # ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( 
-- !\CPU|incrementaPC|Add0~33_sumout\ & ( (\CPU|REG_RETORNO|DOUT\(8) & \CPU|MuxProxPC|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011110011111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG_RETORNO|ALT_INV_DOUT\(8),
	datac => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datae => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[8]~8_combout\);

-- Location: FF_X19_Y40_N14
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: FF_X19_Y40_N29
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X19_Y40_N59
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X19_Y40_N39
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X19_Y40_N0
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X20_Y40_N27
\CPU|DEC_Instruction_IN|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida~1_combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DEC_Instruction_IN|saida~1_combout\);

-- Location: FF_X21_Y40_N53
\CPU|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(7));

-- Location: FF_X19_Y40_N49
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X20_Y40_N33
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(1)) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X19_Y40_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(3) & ( \ROM1|memROM~13_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X19_Y40_N48
\CPU|MuxProxPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[7]~7_combout\ = ( \CPU|MuxProxPC|Equal1~0_combout\ & ( \ROM1|memROM~10_combout\ ) ) # ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( (!\CPU|MuxProxPC|Equal0~0_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\))) # 
-- (\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|REG_RETORNO|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|REG_RETORNO|ALT_INV_DOUT\(7),
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[7]~7_combout\);

-- Location: FF_X19_Y40_N50
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y40_N0
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X21_Y40_N32
\CPU|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(0));

-- Location: LABCELL_X19_Y40_N3
\CPU|MuxProxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[0]~0_combout\ = ( \CPU|MuxProxPC|Equal1~0_combout\ & ( \ROM1|memROM~9_combout\ ) ) # ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( (!\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|incrementaPC|Add0~1_sumout\)) # 
-- (\CPU|MuxProxPC|Equal0~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(0),
	dataf => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[0]~0_combout\);

-- Location: FF_X19_Y40_N4
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X21_Y40_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X21_Y40_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: FF_X21_Y40_N41
\CPU|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(3));

-- Location: LABCELL_X20_Y40_N54
\CPU|MuxProxPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[3]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|MuxProxPC|Equal1~0_combout\ & ((!\CPU|MuxProxPC|Equal0~0_combout\) # (\CPU|REG_RETORNO|DOUT\(3)))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( 
-- (\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|REG_RETORNO|DOUT\(3) & !\CPU|MuxProxPC|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(3),
	datad => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[3]~3_combout\);

-- Location: FF_X19_Y40_N32
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X21_Y40_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: FF_X21_Y40_N44
\CPU|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(4));

-- Location: LABCELL_X20_Y40_N15
\CPU|MuxProxPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[4]~4_combout\ = ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|MuxProxPC|Equal0~0_combout\) # (\CPU|REG_RETORNO|DOUT\(4)) ) ) ) # ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( 
-- !\CPU|incrementaPC|Add0~17_sumout\ & ( (\CPU|REG_RETORNO|DOUT\(4) & \CPU|MuxProxPC|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_RETORNO|ALT_INV_DOUT\(4),
	datac => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datae => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[4]~4_combout\);

-- Location: FF_X19_Y40_N28
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: FF_X21_Y40_N47
\CPU|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(5));

-- Location: LABCELL_X20_Y40_N9
\CPU|MuxProxPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[5]~5_combout\ = ( \CPU|REG_RETORNO|DOUT\(5) & ( (!\CPU|MuxProxPC|Equal1~0_combout\ & ((\CPU|incrementaPC|Add0~21_sumout\) # (\CPU|MuxProxPC|Equal0~0_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(5) & ( 
-- (!\CPU|MuxProxPC|Equal1~0_combout\ & (!\CPU|MuxProxPC|Equal0~0_combout\ & \CPU|incrementaPC|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|REG_RETORNO|ALT_INV_DOUT\(5),
	combout => \CPU|MuxProxPC|saida_MUX[5]~5_combout\);

-- Location: FF_X19_Y40_N11
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X21_Y40_N50
\CPU|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(6));

-- Location: LABCELL_X19_Y40_N57
\CPU|MuxProxPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[6]~6_combout\ = ( !\CPU|MuxProxPC|Equal1~0_combout\ & ( (!\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|incrementaPC|Add0~25_sumout\)) # (\CPU|MuxProxPC|Equal0~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(6),
	dataf => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[6]~6_combout\);

-- Location: FF_X19_Y40_N58
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|MuxProxPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y40_N9
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X19_Y40_N36
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0)) ) ) # ( !\CPU|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X19_Y40_N15
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X20_Y40_N42
\CPU|MuxProxPC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|Equal0~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|MuxProxPC|Equal0~0_combout\);

-- Location: FF_X21_Y40_N35
\CPU|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(1));

-- Location: LABCELL_X20_Y40_N48
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X20_Y40_N36
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~14_combout\ ) ) # ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~14_combout\ & ( (((\CPU|PC|DOUT\(8)) # (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[6]~DUPLICATE_q\)) # (\CPU|PC|DOUT[4]~DUPLICATE_q\) ) ) ) # ( 
-- \CPU|PC|DOUT\(5) & ( !\ROM1|memROM~14_combout\ ) ) # ( !\CPU|PC|DOUT\(5) & ( !\ROM1|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X20_Y40_N6
\CPU|MuxProxPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MuxProxPC|Equal1~0_combout\ & ((!\CPU|MuxProxPC|Equal0~0_combout\) # ((\CPU|REG_RETORNO|DOUT\(1))))) # (\CPU|MuxProxPC|Equal1~0_combout\ & 
-- (((!\ROM1|memROM~11_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MuxProxPC|Equal1~0_combout\ & (\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|REG_RETORNO|DOUT\(1)))) # (\CPU|MuxProxPC|Equal1~0_combout\ & (((!\ROM1|memROM~11_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001011011111100010101101111110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MuxProxPC|saida_MUX[1]~1_combout\);

-- Location: FF_X19_Y40_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y40_N21
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(7))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000011000010110000101100001011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X19_Y40_N6
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X18_Y40_N45
\CPU|ULA1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (((!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT[7]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000011101111000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ULA1|Equal1~1_combout\);

-- Location: MLABCELL_X18_Y40_N3
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X19_Y40_N18
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~0_combout\ & ( ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[7]~DUPLICATE_q\))) # (\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000111111111000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: MLABCELL_X18_Y40_N36
\CPU|DEC_Instruction_IN|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida[5]~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|DEC_Instruction_IN|saida[5]~2_combout\);

-- Location: LABCELL_X19_Y40_N42
\RAM1|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~81_combout\ = ( !\ROM1|memROM~9_combout\ & ( (\CPU|DEC_Instruction_IN|saida[5]~2_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_saida[5]~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~81_combout\);

-- Location: FF_X18_Y40_N17
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~11DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X19_Y40_N45
\RAM1|ram~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~80_combout\ = ( !\ROM1|memROM~10_combout\ & ( (\CPU|DEC_Instruction_IN|saida[5]~2_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~9_combout\ & !\ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_Instruction_IN|ALT_INV_saida[5]~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~80_combout\);

-- Location: FF_X18_Y40_N44
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~11DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X19_Y40_N51
\CPU|MUX1_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\CPU|ULA1|Equal1~0_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X18_Y40_N21
\CPU|MUX1_ULA|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~11_combout\ & ( \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & ( \ROM1|memROM~9_combout\ ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & ( \ROM1|memROM~9_combout\ ) ) ) # ( 
-- \ROM1|memROM~11_combout\ & ( !\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & ( (!\ROM1|memROM~10_combout\ & (\RAM1|ram~15_q\ & !\ROM1|memROM~9_combout\)) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & ( 
-- (!\ROM1|memROM~10_combout\ & (\RAM1|ram~31_q\ & !\ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000001000100000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \RAM1|ALT_INV_ram~15_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|MUX1_ULA|saida_MUX[0]~1_combout\);

-- Location: LABCELL_X20_Y40_N18
\CPU|DEC_Instruction_IN|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida[5]~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~2_combout\ $ (((!\ROM1|memROM~1_combout\ & !\ROM1|memROM~6_combout\))) ) ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~0_combout\ & 
-- ( (\ROM1|memROM~6_combout\) # (\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~0_combout\ & ( (\ROM1|memROM~6_combout\) # (\ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101100110101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|DEC_Instruction_IN|saida[5]~0_combout\);

-- Location: FF_X16_Y40_N38
\CPU|REG_BANK|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~11_q\);

-- Location: LABCELL_X17_Y40_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (((!\ROM1|memROM~12_combout\) # (\CPU|PC|DOUT\(8))) # (\ROM1|memROM~3_combout\)) # (\CPU|ULA1|Equal1~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X17_Y40_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ $ (((!\CPU|ULA1|Equal1~0_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~6_combout\)))) ) + ( \CPU|REG_BANK|registrador~11_q\ ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ $ (((!\CPU|ULA1|Equal1~0_combout\ & (!\ROM1|memROM~3_combout\ & \ROM1|memROM~6_combout\)))) ) + ( \CPU|REG_BANK|registrador~11_q\ ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~11_q\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X17_Y40_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ $ (((!\CPU|ULA1|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~12_combout\)))) ) + ( \CPU|REG_BANK|registrador~12_q\ ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ $ (((!\CPU|ULA1|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~12_combout\)))) ) + ( \CPU|REG_BANK|registrador~12_q\ ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[1]~10_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~12_q\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X16_Y40_N33
\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( \CPU|MUX1_ULA|saida_MUX[1]~10_combout\ ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( \CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( \CPU|ULA1|Add0~5_sumout\ & ( 
-- !\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & ( !\CPU|ULA1|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|MUX1_ULA|ALT_INV_saida_MUX[1]~10_combout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

-- Location: FF_X16_Y40_N34
\CPU|REG_BANK|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~2_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~12_q\);

-- Location: FF_X18_Y40_N50
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~12_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X19_Y40_N24
\Data_IN[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~7_combout\ & !\ROM1|memROM~2_combout\)))) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~10_combout\ & ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~7_combout\ & !\ROM1|memROM~2_combout\)))) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~10_combout\ & 
-- ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~7_combout\ & !\ROM1|memROM~2_combout\)))) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~7_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~10_combout\ & 
-- !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000111000001100000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \Data_IN[6]~0_combout\);

-- Location: FF_X18_Y40_N23
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~12_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: MLABCELL_X18_Y40_N48
\CPU|MUX1_ULA|saida_MUX[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[1]~10_combout\ = ( !\ROM1|memROM~11_combout\ & ( ((\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~32_q\)) # (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\))))) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\) ) ) # ( \ROM1|memROM~11_combout\ & ( (\Data_IN[6]~0_combout\ & (!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & ((!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~16_q\)) # (\ROM1|memROM~9_combout\ & 
-- (\ROM1|memROM~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000011001000000000001100111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~16_q\,
	datad => \ALT_INV_Data_IN[6]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datag => \RAM1|ALT_INV_ram~32_q\,
	combout => \CPU|MUX1_ULA|saida_MUX[1]~10_combout\);

-- Location: LABCELL_X16_Y40_N42
\CPU|DEC_Instruction_IN|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_Instruction_IN|saida~3_combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|DEC_Instruction_IN|saida~3_combout\);

-- Location: LABCELL_X17_Y40_N18
\CPU|FlagZero|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlagZero|DOUT~2_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (!\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & (!\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & \CPU|DEC_Instruction_IN|saida~3_combout\))) ) 
-- ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (!\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & (!\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & \CPU|DEC_Instruction_IN|saida~3_combout\))) ) ) ) # ( 
-- \CPU|ULA1|Add0~5_sumout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (!\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & (!\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & \CPU|DEC_Instruction_IN|saida~3_combout\))) ) ) ) # ( 
-- !\CPU|ULA1|Add0~5_sumout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( (\CPU|DEC_Instruction_IN|saida~3_combout\ & ((!\CPU|ULA1|saida[0]~0_combout\) # ((!\CPU|MUX1_ULA|saida_MUX[1]~10_combout\ & !\CPU|MUX1_ULA|saida_MUX[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU|MUX1_ULA|ALT_INV_saida_MUX[1]~10_combout\,
	datac => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \CPU|DEC_Instruction_IN|ALT_INV_saida~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|FlagZero|DOUT~2_combout\);

-- Location: FF_X17_Y40_N14
\CPU|FlagZero|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FlagZero|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FlagZero|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X16_Y40_N24
\CPU|FlagZero|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlagZero|DOUT~0_combout\ = ( \CPU|FlagZero|DOUT~DUPLICATE_q\ & ( !\CPU|DEC_Instruction_IN|saida~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_Instruction_IN|ALT_INV_saida~3_combout\,
	dataf => \CPU|FlagZero|ALT_INV_DOUT~DUPLICATE_q\,
	combout => \CPU|FlagZero|DOUT~0_combout\);

-- Location: MLABCELL_X18_Y40_N39
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~2_combout\))) ) ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~7_combout\ & 
-- (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X17_Y40_N29
\CPU|REG_BANK|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~8_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~17_q\);

-- Location: FF_X18_Y40_N29
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~17_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X18_Y40_N31
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~17_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: MLABCELL_X18_Y40_N24
\Data_IN[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~3_combout\ = ( \RAM1|ram~21_q\ & ( \RAM1|ram~37_q\ & ( (\Data_IN[6]~0_combout\ & (!\ROM1|memROM~10_combout\ $ (\ROM1|memROM~9_combout\))) ) ) ) # ( !\RAM1|ram~21_q\ & ( \RAM1|ram~37_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~10_combout\ 
-- & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~9_combout\)) # (\ROM1|memROM~10_combout\ & ((\ROM1|memROM~9_combout\))))) ) ) ) # ( \RAM1|ram~21_q\ & ( !\RAM1|ram~37_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~10_combout\ & (\ROM1|memROM~11_combout\ & 
-- !\ROM1|memROM~9_combout\)) # (\ROM1|memROM~10_combout\ & ((\ROM1|memROM~9_combout\))))) ) ) ) # ( !\RAM1|ram~21_q\ & ( !\RAM1|ram~37_q\ & ( (\ROM1|memROM~10_combout\ & (\ROM1|memROM~9_combout\ & \Data_IN[6]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000100001100000000100000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_Data_IN[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~21_q\,
	dataf => \RAM1|ALT_INV_ram~37_q\,
	combout => \Data_IN[6]~3_combout\);

-- Location: FF_X17_Y40_N4
\CPU|REG_BANK|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~7_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~16_q\);

-- Location: FF_X17_Y40_N8
\CPU|REG_BANK|registrador~15DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~6_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~15DUPLICATE_q\);

-- Location: FF_X16_Y40_N1
\CPU|REG_BANK|registrador~13DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~3_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~13DUPLICATE_q\);

-- Location: LABCELL_X17_Y40_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|MUX1_ULA|saida_MUX[2]~6_combout\ $ (((!\CPU|ULA1|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~12_combout\)))) ) + ( \CPU|REG_BANK|registrador~13DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|MUX1_ULA|saida_MUX[2]~6_combout\ $ (((!\CPU|ULA1|Equal1~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM1|memROM~12_combout\)))) ) + ( \CPU|REG_BANK|registrador~13DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~13DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X16_Y40_N0
\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \CPU|MUX1_ULA|saida_MUX[2]~6_combout\ & ( \CPU|ULA1|Add0~9_sumout\ ) ) # ( !\CPU|MUX1_ULA|saida_MUX[2]~6_combout\ & ( \CPU|ULA1|Add0~9_sumout\ & ( !\CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( 
-- \CPU|MUX1_ULA|saida_MUX[2]~6_combout\ & ( !\CPU|ULA1|Add0~9_sumout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|MUX1_ULA|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

-- Location: FF_X16_Y40_N2
\CPU|REG_BANK|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~3_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~13_q\);

-- Location: FF_X18_Y40_N26
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~13_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X17_Y40_N19
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~13DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: MLABCELL_X18_Y40_N15
\CPU|MUX1_ULA|saida_MUX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[2]~6_combout\ = ( !\ROM1|memROM~11_combout\ & ( (!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~10_combout\ & (\RAM1|ram~33_q\ & !\ROM1|memROM~9_combout\)) # (\ROM1|memROM~10_combout\ & 
-- ((\ROM1|memROM~9_combout\)))))) # (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\ROM1|memROM~10_combout\)) ) ) # ( \ROM1|memROM~11_combout\ & ( (!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~10_combout\ & (\RAM1|ram~17_q\ 
-- & !\ROM1|memROM~9_combout\)) # (\ROM1|memROM~10_combout\ & ((\ROM1|memROM~9_combout\)))))) # (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\ROM1|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000100010001000100011001001100110001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~17_q\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_Data_IN[6]~0_combout\,
	datag => \RAM1|ALT_INV_ram~33_q\,
	combout => \CPU|MUX1_ULA|saida_MUX[2]~6_combout\);

-- Location: LABCELL_X17_Y40_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[3]~4_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[3]~4_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~14_q\ ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[3]~4_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[3]~4_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~14_q\ ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_Data_IN[3]~4_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~14_q\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X16_Y40_N57
\CPU|ULA1|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~5_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( !\CPU|ULA1|saida[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	combout => \CPU|ULA1|saida[3]~5_combout\);

-- Location: FF_X16_Y40_N59
\CPU|REG_BANK|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~5_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~14_q\);

-- Location: FF_X18_Y40_N35
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~14_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: FF_X18_Y40_N2
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~14_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X18_Y40_N30
\RAM1|ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~79_combout\ = ( \ROM1|memROM~11_combout\ & ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ ) ) ) # ( !\ROM1|memROM~11_combout\ & ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ ) ) ) # ( \ROM1|memROM~11_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~9_combout\) ) ) ) # ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~34_q\ & !\ROM1|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datab => \RAM1|ALT_INV_ram~18_q\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~79_combout\);

-- Location: MLABCELL_X18_Y40_N42
\Data_IN[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~4_combout\ = ( \Data_IN[6]~0_combout\ & ( \RAM1|ram~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~79_combout\,
	dataf => \ALT_INV_Data_IN[6]~0_combout\,
	combout => \Data_IN[3]~4_combout\);

-- Location: LABCELL_X17_Y40_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[4]~1_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[4]~1_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~15DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[4]~1_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[4]~1_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~15DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_Data_IN[4]~1_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~15DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X17_Y40_N6
\CPU|ULA1|saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~6_combout\ = ( \CPU|ULA1|Add0~17_sumout\ & ( !\CPU|ULA1|saida[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[4]~6_combout\);

-- Location: FF_X17_Y40_N7
\CPU|REG_BANK|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~6_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~15_q\);

-- Location: FF_X18_Y40_N8
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~15_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X18_Y40_N20
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~15_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: MLABCELL_X18_Y40_N6
\Data_IN[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~1_combout\ = ( \RAM1|ram~19_q\ & ( \RAM1|ram~35_q\ & ( (\Data_IN[6]~0_combout\ & (!\ROM1|memROM~9_combout\ $ (\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~19_q\ & ( \RAM1|ram~35_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & 
-- (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~9_combout\ & ((\ROM1|memROM~10_combout\))))) ) ) ) # ( \RAM1|ram~19_q\ & ( !\RAM1|ram~35_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & (\ROM1|memROM~11_combout\ & 
-- !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~9_combout\ & ((\ROM1|memROM~10_combout\))))) ) ) ) # ( !\RAM1|ram~19_q\ & ( !\RAM1|ram~35_q\ & ( (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \Data_IN[6]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000010010100000000100001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ALT_INV_Data_IN[6]~0_combout\,
	datae => \RAM1|ALT_INV_ram~19_q\,
	dataf => \RAM1|ALT_INV_ram~35_q\,
	combout => \Data_IN[4]~1_combout\);

-- Location: LABCELL_X17_Y40_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[5]~2_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[5]~2_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~16_q\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[5]~2_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[5]~2_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~16_q\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_Data_IN[5]~2_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~16_q\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X17_Y40_N3
\CPU|ULA1|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~7_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( !\CPU|ULA1|saida[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|saida[5]~7_combout\);

-- Location: FF_X17_Y40_N5
\CPU|REG_BANK|registrador~16DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~7_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~16DUPLICATE_q\);

-- Location: FF_X18_Y40_N11
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~16DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X17_Y40_N58
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~16DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: MLABCELL_X18_Y40_N9
\Data_IN[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~2_combout\ = ( \RAM1|ram~20_q\ & ( \RAM1|ram~36_q\ & ( (\Data_IN[6]~0_combout\ & (!\ROM1|memROM~9_combout\ $ (\ROM1|memROM~10_combout\))) ) ) ) # ( !\RAM1|ram~20_q\ & ( \RAM1|ram~36_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & 
-- (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~9_combout\ & ((\ROM1|memROM~10_combout\))))) ) ) ) # ( \RAM1|ram~20_q\ & ( !\RAM1|ram~36_q\ & ( (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & (\ROM1|memROM~11_combout\ & 
-- !\ROM1|memROM~10_combout\)) # (\ROM1|memROM~9_combout\ & ((\ROM1|memROM~10_combout\))))) ) ) ) # ( !\RAM1|ram~20_q\ & ( !\RAM1|ram~36_q\ & ( (\ROM1|memROM~9_combout\ & (\Data_IN[6]~0_combout\ & \ROM1|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000100000010100001000000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ALT_INV_Data_IN[6]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \RAM1|ALT_INV_ram~20_q\,
	dataf => \RAM1|ALT_INV_ram~36_q\,
	combout => \Data_IN[5]~2_combout\);

-- Location: LABCELL_X17_Y40_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[6]~3_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[6]~3_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~17_q\ ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|ULA1|Equal1~1_combout\ & (!\ROM1|memROM~6_combout\ $ (((!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & \Data_IN[6]~3_combout\))))) # (\CPU|ULA1|Equal1~1_combout\ & (((!\Data_IN[6]~3_combout\) # 
-- (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\)))) ) + ( \CPU|REG_BANK|registrador~17_q\ ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_Data_IN[6]~3_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~17_q\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X17_Y40_N27
\CPU|ULA1|saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~8_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( !\CPU|ULA1|saida[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~8_combout\);

-- Location: LABCELL_X17_Y40_N9
\CPU|FlagZero|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlagZero|DOUT~3_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( !\CPU|ULA1|saida[4]~4_combout\ ) ) # ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|ULA1|saida[4]~4_combout\ & \CPU|ULA1|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FlagZero|DOUT~3_combout\);

-- Location: LABCELL_X17_Y40_N0
\CPU|FlagZero|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlagZero|DOUT~1_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & (!\CPU|MUX1_ULA|saida_MUX[2]~6_combout\ & ((!\CPU|ULA1|Add0~13_sumout\) # (\CPU|ULA1|saida[4]~4_combout\)))) ) ) # ( !\CPU|ULA1|Add0~9_sumout\ & ( 
-- (!\CPU|ULA1|saida[4]~4_combout\ & (!\CPU|ULA1|Add0~13_sumout\ & ((!\CPU|ULA1|saida[0]~0_combout\) # (!\CPU|MUX1_ULA|saida_MUX[2]~6_combout\)))) # (\CPU|ULA1|saida[4]~4_combout\ & (((!\CPU|ULA1|saida[0]~0_combout\) # 
-- (!\CPU|MUX1_ULA|saida_MUX[2]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010000110111011101000000001101000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|FlagZero|DOUT~1_combout\);

-- Location: FF_X17_Y40_N26
\CPU|REG_BANK|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~9_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~18_q\);

-- Location: FF_X18_Y40_N59
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~18_q\,
	sload => VCC,
	ena => \RAM1|ram~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: FF_X19_Y40_N23
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REG_BANK|registrador~18_q\,
	sload => VCC,
	ena => \RAM1|ram~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: MLABCELL_X18_Y40_N57
\CPU|MUX1_ULA|saida_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1_ULA|saida_MUX[7]~2_combout\ = ( !\ROM1|memROM~11_combout\ & ( (!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~38_q\)) # (\ROM1|memROM~9_combout\ & 
-- (\ROM1|memROM~10_combout\))))) # (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (((\ROM1|memROM~10_combout\)))) ) ) # ( \ROM1|memROM~11_combout\ & ( (!\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (\Data_IN[6]~0_combout\ & ((!\ROM1|memROM~9_combout\ & 
-- (!\ROM1|memROM~10_combout\ & \RAM1|ram~22_q\)) # (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\))))) # (\CPU|MUX1_ULA|saida_MUX[0]~0_combout\ & (((\ROM1|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011000000000011001100011001001100110001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ALT_INV_Data_IN[6]~0_combout\,
	datag => \RAM1|ALT_INV_ram~38_q\,
	combout => \CPU|MUX1_ULA|saida_MUX[7]~2_combout\);

-- Location: LABCELL_X17_Y40_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|MUX1_ULA|saida_MUX[7]~2_combout\ $ (((\ROM1|memROM~12_combout\ & (!\CPU|PC|DOUT\(8) & !\CPU|ULA1|Equal1~1_combout\)))) ) + ( \CPU|REG_BANK|registrador~18_q\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|ULA1|ALT_INV_Equal1~1_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[7]~2_combout\,
	dataf => \CPU|REG_BANK|ALT_INV_registrador~18_q\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X17_Y40_N24
\CPU|ULA1|saida[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~9_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|ULA1|saida[0]~0_combout\) # (\CPU|MUX1_ULA|saida_MUX[7]~2_combout\) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( (\CPU|ULA1|saida[0]~0_combout\ & \CPU|MUX1_ULA|saida_MUX[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|MUX1_ULA|ALT_INV_saida_MUX[7]~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~9_combout\);

-- Location: LABCELL_X17_Y40_N12
\CPU|FlagZero|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlagZero|DOUT~4_combout\ = ( \CPU|FlagZero|DOUT~1_combout\ & ( \CPU|ULA1|saida[7]~9_combout\ & ( \CPU|FlagZero|DOUT~0_combout\ ) ) ) # ( !\CPU|FlagZero|DOUT~1_combout\ & ( \CPU|ULA1|saida[7]~9_combout\ & ( \CPU|FlagZero|DOUT~0_combout\ ) ) ) # ( 
-- \CPU|FlagZero|DOUT~1_combout\ & ( !\CPU|ULA1|saida[7]~9_combout\ & ( ((\CPU|FlagZero|DOUT~2_combout\ & (!\CPU|ULA1|saida[6]~8_combout\ & !\CPU|FlagZero|DOUT~3_combout\))) # (\CPU|FlagZero|DOUT~0_combout\) ) ) ) # ( !\CPU|FlagZero|DOUT~1_combout\ & ( 
-- !\CPU|ULA1|saida[7]~9_combout\ & ( \CPU|FlagZero|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FlagZero|ALT_INV_DOUT~2_combout\,
	datab => \CPU|FlagZero|ALT_INV_DOUT~0_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[6]~8_combout\,
	datad => \CPU|FlagZero|ALT_INV_DOUT~3_combout\,
	datae => \CPU|FlagZero|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[7]~9_combout\,
	combout => \CPU|FlagZero|DOUT~4_combout\);

-- Location: FF_X17_Y40_N13
\CPU|FlagZero|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|FlagZero|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FlagZero|DOUT~q\);

-- Location: LABCELL_X19_Y40_N12
\CPU|MuxProxPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|Equal1~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~6_combout\ & ((!\ROM1|memROM~1_combout\) # (\CPU|FlagZero|DOUT~q\)))) ) ) # ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- (\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|FlagZero|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|MuxProxPC|Equal1~0_combout\);

-- Location: FF_X21_Y40_N38
\CPU|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DEC_Instruction_IN|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(2));

-- Location: LABCELL_X20_Y40_N57
\CPU|MuxProxPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MuxProxPC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( ((!\CPU|MuxProxPC|Equal0~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|REG_RETORNO|DOUT\(2)))) # (\CPU|MuxProxPC|Equal1~0_combout\) ) 
-- ) # ( !\ROM1|memROM~10_combout\ & ( (!\CPU|MuxProxPC|Equal1~0_combout\ & ((!\CPU|MuxProxPC|Equal0~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|MuxProxPC|Equal0~0_combout\ & (\CPU|REG_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MuxProxPC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|MuxProxPC|ALT_INV_Equal0~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(2),
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU|MuxProxPC|saida_MUX[2]~2_combout\);

-- Location: FF_X19_Y40_N8
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|MuxProxPC|saida_MUX[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X20_Y40_N45
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X16_Y40_N15
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~6_combout\) ) ) ) # ( !\ROM1|memROM~8_combout\ & ( !\ROM1|memROM~3_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- !\ROM1|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X16_Y40_N36
\CPU|ULA1|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~1_combout\ = ( \CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & ( \CPU|ULA1|Add0~1_sumout\ ) ) # ( !\CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( !\CPU|ULA1|saida[0]~0_combout\ ) ) ) # ( 
-- \CPU|MUX1_ULA|saida_MUX[0]~1_combout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( \CPU|ULA1|saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|MUX1_ULA|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~1_combout\);

-- Location: FF_X16_Y40_N37
\CPU|REG_BANK|registrador~11DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~1_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~11DUPLICATE_q\);

-- Location: FF_X16_Y40_N58
\CPU|REG_BANK|registrador~14DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~5_combout\,
	ena => \CPU|DEC_Instruction_IN|saida[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_BANK|registrador~14DUPLICATE_q\);

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

-- Location: LABCELL_X32_Y33_N0
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


