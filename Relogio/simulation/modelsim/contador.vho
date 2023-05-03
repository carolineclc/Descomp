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

-- DATE "04/21/2023 16:44:46"

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

ENTITY 	contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \CPU1|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~82_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~81_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida~4_combout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~37_combout\ : std_logic;
SIGNAL \ROM1|memROM~40_combout\ : std_logic;
SIGNAL \ROM1|memROM~39_combout\ : std_logic;
SIGNAL \ROM1|memROM~38_combout\ : std_logic;
SIGNAL \ROM1|memROM~41_combout\ : std_logic;
SIGNAL \ROM1|memROM~42_combout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~53_combout\ : std_logic;
SIGNAL \ROM1|memROM~54_combout\ : std_logic;
SIGNAL \ROM1|memROM~55_combout\ : std_logic;
SIGNAL \ROM1|memROM~52_combout\ : std_logic;
SIGNAL \ROM1|memROM~62_combout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \ROM1|memROM~76_combout\ : std_logic;
SIGNAL \ROM1|memROM~77_combout\ : std_logic;
SIGNAL \ROM1|memROM~78_combout\ : std_logic;
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~45_combout\ : std_logic;
SIGNAL \ROM1|memROM~49_combout\ : std_logic;
SIGNAL \ROM1|memROM~47_combout\ : std_logic;
SIGNAL \ROM1|memROM~48_combout\ : std_logic;
SIGNAL \ROM1|memROM~46_combout\ : std_logic;
SIGNAL \ROM1|memROM~66_combout\ : std_logic;
SIGNAL \ROM1|memROM~43_combout\ : std_logic;
SIGNAL \ROM1|memROM~44_combout\ : std_logic;
SIGNAL \ROM1|memROM~50_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~80_combout\ : std_logic;
SIGNAL \ROM1|memROM~79_combout\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \CPU1|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Equal1~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida[5]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~59_combout\ : std_logic;
SIGNAL \ROM1|memROM~61_combout\ : std_logic;
SIGNAL \ROM1|memROM~58_combout\ : std_logic;
SIGNAL \ROM1|memROM~60_combout\ : std_logic;
SIGNAL \ROM1|memROM~51_combout\ : std_logic;
SIGNAL \RAM1|ram~791_combout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \ROM1|memROM~33_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \ROM1|memROM~75_combout\ : std_logic;
SIGNAL \ROM1|memROM~34_combout\ : std_logic;
SIGNAL \ROM1|memROM~35_combout\ : std_logic;
SIGNAL \ROM1|memROM~36_combout\ : std_logic;
SIGNAL \ROM1|memROM~74_combout\ : std_logic;
SIGNAL \ROM1|memROM~70_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ram~792_combout\ : std_logic;
SIGNAL \RAM1|ram~291_q\ : std_logic;
SIGNAL \RAM1|ram~35feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~727_combout\ : std_logic;
SIGNAL \RAM1|ram~728_combout\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~759_combout\ : std_logic;
SIGNAL \RAM1|ram~760_combout\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~695_combout\ : std_logic;
SIGNAL \RAM1|ram~696_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~611_combout\ : std_logic;
SIGNAL \RAM1|ram~83feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~697_combout\ : std_logic;
SIGNAL \RAM1|ram~698_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~735_combout\ : std_logic;
SIGNAL \RAM1|ram~736_combout\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~355feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~799_combout\ : std_logic;
SIGNAL \RAM1|ram~800_combout\ : std_logic;
SIGNAL \RAM1|ram~355_q\ : std_logic;
SIGNAL \RAM1|ram~761_combout\ : std_logic;
SIGNAL \RAM1|ram~762_combout\ : std_logic;
SIGNAL \RAM1|ram~339_q\ : std_logic;
SIGNAL \RAM1|ram~612_combout\ : std_logic;
SIGNAL \RAM1|ram~227feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~751_combout\ : std_logic;
SIGNAL \RAM1|ram~752_combout\ : std_logic;
SIGNAL \RAM1|ram~227_q\ : std_logic;
SIGNAL \RAM1|ram~467feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~765_combout\ : std_logic;
SIGNAL \RAM1|ram~766_combout\ : std_logic;
SIGNAL \RAM1|ram~467_q\ : std_logic;
SIGNAL \RAM1|ram~701_combout\ : std_logic;
SIGNAL \RAM1|ram~702_combout\ : std_logic;
SIGNAL \RAM1|ram~211_q\ : std_logic;
SIGNAL \RAM1|ram~815_combout\ : std_logic;
SIGNAL \RAM1|ram~816_combout\ : std_logic;
SIGNAL \RAM1|ram~483_q\ : std_logic;
SIGNAL \RAM1|ram~614_combout\ : std_logic;
SIGNAL \RAM1|ram~403feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~763_combout\ : std_logic;
SIGNAL \RAM1|ram~764_combout\ : std_logic;
SIGNAL \RAM1|ram~403_q\ : std_logic;
SIGNAL \RAM1|ram~743_combout\ : std_logic;
SIGNAL \RAM1|ram~744_combout\ : std_logic;
SIGNAL \RAM1|ram~163_q\ : std_logic;
SIGNAL \RAM1|ram~807_combout\ : std_logic;
SIGNAL \RAM1|ram~808_combout\ : std_logic;
SIGNAL \RAM1|ram~419_q\ : std_logic;
SIGNAL \RAM1|ram~147feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~699_combout\ : std_logic;
SIGNAL \RAM1|ram~700_combout\ : std_logic;
SIGNAL \RAM1|ram~147_q\ : std_logic;
SIGNAL \RAM1|ram~613_combout\ : std_logic;
SIGNAL \RAM1|ram~615_combout\ : std_logic;
SIGNAL \RAM1|ram~777_combout\ : std_logic;
SIGNAL \RAM1|ram~778_combout\ : std_logic;
SIGNAL \RAM1|ram~347_q\ : std_logic;
SIGNAL \RAM1|ram~107feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~739_combout\ : std_logic;
SIGNAL \RAM1|ram~740_combout\ : std_logic;
SIGNAL \RAM1|ram~107_q\ : std_logic;
SIGNAL \RAM1|ram~713_combout\ : std_logic;
SIGNAL \RAM1|ram~714_combout\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~803_combout\ : std_logic;
SIGNAL \RAM1|ram~804_combout\ : std_logic;
SIGNAL \RAM1|ram~363_q\ : std_logic;
SIGNAL \RAM1|ram~622_combout\ : std_logic;
SIGNAL \RAM1|ram~235feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~755_combout\ : std_logic;
SIGNAL \RAM1|ram~756_combout\ : std_logic;
SIGNAL \RAM1|ram~235_q\ : std_logic;
SIGNAL \RAM1|ram~717_combout\ : std_logic;
SIGNAL \RAM1|ram~718_combout\ : std_logic;
SIGNAL \RAM1|ram~219_q\ : std_logic;
SIGNAL \RAM1|ram~475feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~781_combout\ : std_logic;
SIGNAL \RAM1|ram~782_combout\ : std_logic;
SIGNAL \RAM1|ram~475_q\ : std_logic;
SIGNAL \RAM1|ram~819_combout\ : std_logic;
SIGNAL \RAM1|ram~820_combout\ : std_logic;
SIGNAL \RAM1|ram~491_q\ : std_logic;
SIGNAL \RAM1|ram~624_combout\ : std_logic;
SIGNAL \RAM1|ram~711_combout\ : std_logic;
SIGNAL \RAM1|ram~712_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~775_combout\ : std_logic;
SIGNAL \RAM1|ram~776_combout\ : std_logic;
SIGNAL \RAM1|ram~283_q\ : std_logic;
SIGNAL \RAM1|ram~795_combout\ : std_logic;
SIGNAL \RAM1|ram~796_combout\ : std_logic;
SIGNAL \RAM1|ram~299_q\ : std_logic;
SIGNAL \RAM1|ram~731_combout\ : std_logic;
SIGNAL \RAM1|ram~732_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~621_combout\ : std_logic;
SIGNAL \RAM1|ram~715_combout\ : std_logic;
SIGNAL \RAM1|ram~716_combout\ : std_logic;
SIGNAL \RAM1|ram~155_q\ : std_logic;
SIGNAL \RAM1|ram~747_combout\ : std_logic;
SIGNAL \RAM1|ram~748_combout\ : std_logic;
SIGNAL \RAM1|ram~171_q\ : std_logic;
SIGNAL \RAM1|ram~779_combout\ : std_logic;
SIGNAL \RAM1|ram~780_combout\ : std_logic;
SIGNAL \RAM1|ram~411_q\ : std_logic;
SIGNAL \RAM1|ram~811_combout\ : std_logic;
SIGNAL \RAM1|ram~812_combout\ : std_logic;
SIGNAL \RAM1|ram~427_q\ : std_logic;
SIGNAL \RAM1|ram~623_combout\ : std_logic;
SIGNAL \RAM1|ram~625_combout\ : std_logic;
SIGNAL \RAM1|ram~797_combout\ : std_logic;
SIGNAL \RAM1|ram~798_combout\ : std_logic;
SIGNAL \RAM1|ram~331_q\ : std_logic;
SIGNAL \RAM1|ram~749_combout\ : std_logic;
SIGNAL \RAM1|ram~750_combout\ : std_logic;
SIGNAL \RAM1|ram~203_q\ : std_logic;
SIGNAL \RAM1|ram~733_combout\ : std_logic;
SIGNAL \RAM1|ram~734_combout\ : std_logic;
SIGNAL \RAM1|ram~75_q\ : std_logic;
SIGNAL \RAM1|ram~813_combout\ : std_logic;
SIGNAL \RAM1|ram~814_combout\ : std_logic;
SIGNAL \RAM1|ram~459_q\ : std_logic;
SIGNAL \RAM1|ram~628_combout\ : std_logic;
SIGNAL \RAM1|ram~783_combout\ : std_logic;
SIGNAL \RAM1|ram~784_combout\ : std_logic;
SIGNAL \RAM1|ram~315_q\ : std_logic;
SIGNAL \RAM1|ram~719_combout\ : std_logic;
SIGNAL \RAM1|ram~720_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~787_combout\ : std_logic;
SIGNAL \RAM1|ram~788_combout\ : std_logic;
SIGNAL \RAM1|ram~443_q\ : std_logic;
SIGNAL \RAM1|ram~723_combout\ : std_logic;
SIGNAL \RAM1|ram~724_combout\ : std_logic;
SIGNAL \RAM1|ram~187_q\ : std_logic;
SIGNAL \RAM1|ram~626_combout\ : std_logic;
SIGNAL \RAM1|ram~805_combout\ : std_logic;
SIGNAL \RAM1|ram~806_combout\ : std_logic;
SIGNAL \RAM1|ram~395_q\ : std_logic;
SIGNAL \RAM1|ram~757_combout\ : std_logic;
SIGNAL \RAM1|ram~758_combout\ : std_logic;
SIGNAL \RAM1|ram~267_q\ : std_logic;
SIGNAL \RAM1|ram~821_combout\ : std_logic;
SIGNAL \RAM1|ram~822_combout\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~741_combout\ : std_logic;
SIGNAL \RAM1|ram~742_combout\ : std_logic;
SIGNAL \RAM1|ram~139_q\ : std_logic;
SIGNAL \RAM1|ram~629_combout\ : std_logic;
SIGNAL \RAM1|ram~725_combout\ : std_logic;
SIGNAL \RAM1|ram~726_combout\ : std_logic;
SIGNAL \RAM1|ram~251_q\ : std_logic;
SIGNAL \RAM1|ram~785_combout\ : std_logic;
SIGNAL \RAM1|ram~786_combout\ : std_logic;
SIGNAL \RAM1|ram~379_q\ : std_logic;
SIGNAL \RAM1|ram~789_combout\ : std_logic;
SIGNAL \RAM1|ram~790_combout\ : std_logic;
SIGNAL \RAM1|ram~507_q\ : std_logic;
SIGNAL \RAM1|ram~123feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~721_combout\ : std_logic;
SIGNAL \RAM1|ram~722_combout\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~627_combout\ : std_logic;
SIGNAL \RAM1|ram~630_combout\ : std_logic;
SIGNAL \RAM1|ram~67feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~729_combout\ : std_logic;
SIGNAL \RAM1|ram~730_combout\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~703_combout\ : std_logic;
SIGNAL \RAM1|ram~704_combout\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~793_combout\ : std_logic;
SIGNAL \RAM1|ram~794_combout\ : std_logic;
SIGNAL \RAM1|ram~323_q\ : std_logic;
SIGNAL \RAM1|ram~767_combout\ : std_logic;
SIGNAL \RAM1|ram~768_combout\ : std_logic;
SIGNAL \RAM1|ram~307_q\ : std_logic;
SIGNAL \RAM1|ram~616_combout\ : std_logic;
SIGNAL \RAM1|ram~707_combout\ : std_logic;
SIGNAL \RAM1|ram~708_combout\ : std_logic;
SIGNAL \RAM1|ram~179_q\ : std_logic;
SIGNAL \RAM1|ram~771_combout\ : std_logic;
SIGNAL \RAM1|ram~772_combout\ : std_logic;
SIGNAL \RAM1|ram~435_q\ : std_logic;
SIGNAL \RAM1|ram~809_combout\ : std_logic;
SIGNAL \RAM1|ram~810_combout\ : std_logic;
SIGNAL \RAM1|ram~451_q\ : std_logic;
SIGNAL \RAM1|ram~745_combout\ : std_logic;
SIGNAL \RAM1|ram~746_combout\ : std_logic;
SIGNAL \RAM1|ram~195_q\ : std_logic;
SIGNAL \RAM1|ram~618_combout\ : std_logic;
SIGNAL \RAM1|ram~387feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~801_combout\ : std_logic;
SIGNAL \RAM1|ram~802_combout\ : std_logic;
SIGNAL \RAM1|ram~387_q\ : std_logic;
SIGNAL \RAM1|ram~705_combout\ : std_logic;
SIGNAL \RAM1|ram~706_combout\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~769_combout\ : std_logic;
SIGNAL \RAM1|ram~770_combout\ : std_logic;
SIGNAL \RAM1|ram~371_q\ : std_logic;
SIGNAL \RAM1|ram~131feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~737_combout\ : std_logic;
SIGNAL \RAM1|ram~738_combout\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~617_combout\ : std_logic;
SIGNAL \RAM1|ram~773_combout\ : std_logic;
SIGNAL \RAM1|ram~774_combout\ : std_logic;
SIGNAL \RAM1|ram~499_q\ : std_logic;
SIGNAL \RAM1|ram~753_combout\ : std_logic;
SIGNAL \RAM1|ram~754_combout\ : std_logic;
SIGNAL \RAM1|ram~259_q\ : std_logic;
SIGNAL \RAM1|ram~817_combout\ : std_logic;
SIGNAL \RAM1|ram~818_combout\ : std_logic;
SIGNAL \RAM1|ram~515_q\ : std_logic;
SIGNAL \RAM1|ram~243feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~709_combout\ : std_logic;
SIGNAL \RAM1|ram~710_combout\ : std_logic;
SIGNAL \RAM1|ram~243_q\ : std_logic;
SIGNAL \RAM1|ram~619_combout\ : std_logic;
SIGNAL \RAM1|ram~620_combout\ : std_logic;
SIGNAL \RAM1|ram~631_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida[5]~1_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida[1]~0_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~5_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~57_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~439_q\ : std_logic;
SIGNAL \RAM1|ram~375_q\ : std_logic;
SIGNAL \RAM1|ram~503_q\ : std_logic;
SIGNAL \RAM1|ram~311_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~303_q\ : std_logic;
SIGNAL \RAM1|ram~431_q\ : std_logic;
SIGNAL \RAM1|ram~367_q\ : std_logic;
SIGNAL \RAM1|ram~495_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~279_q\ : std_logic;
SIGNAL \RAM1|ram~407feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~407_q\ : std_logic;
SIGNAL \RAM1|ram~343_q\ : std_logic;
SIGNAL \RAM1|ram~471_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~399feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~399_q\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \RAM1|ram~335_q\ : std_logic;
SIGNAL \RAM1|ram~463feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~463_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~207_q\ : std_logic;
SIGNAL \RAM1|ram~143_q\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~175_q\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~239_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~215feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~215_q\ : std_logic;
SIGNAL \RAM1|ram~151feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~151_q\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~183_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~247_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~199_q\ : std_logic;
SIGNAL \RAM1|ram~167_q\ : std_logic;
SIGNAL \RAM1|ram~159_q\ : std_logic;
SIGNAL \RAM1|ram~191_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~31feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~103feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~127_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~263_q\ : std_logic;
SIGNAL \RAM1|ram~223_q\ : std_logic;
SIGNAL \RAM1|ram~255_q\ : std_logic;
SIGNAL \RAM1|ram~231_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~351_q\ : std_logic;
SIGNAL \RAM1|ram~391_q\ : std_logic;
SIGNAL \RAM1|ram~383_q\ : std_logic;
SIGNAL \RAM1|ram~359_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~487feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~487_q\ : std_logic;
SIGNAL \RAM1|ram~511_q\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~479_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~327_q\ : std_logic;
SIGNAL \RAM1|ram~287feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~287_q\ : std_logic;
SIGNAL \RAM1|ram~319_q\ : std_logic;
SIGNAL \RAM1|ram~295_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~447_q\ : std_logic;
SIGNAL \RAM1|ram~423_q\ : std_logic;
SIGNAL \RAM1|ram~455_q\ : std_logic;
SIGNAL \RAM1|ram~415_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \ED1|saidaQ~0_combout\ : std_logic;
SIGNAL \ED1|saidaQ~feeder_combout\ : std_logic;
SIGNAL \ED1|saidaQ~q\ : std_logic;
SIGNAL \ED1|saida~combout\ : std_logic;
SIGNAL \FFK1|DOUT~feeder_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \FFK1|DOUT~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ED0|saidaQ~0_combout\ : std_logic;
SIGNAL \ED0|saidaQ~q\ : std_logic;
SIGNAL \ED0|saida~combout\ : std_logic;
SIGNAL \FFK0|DOUT~feeder_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \FFK0|DOUT~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~304_q\ : std_logic;
SIGNAL \RAM1|ram~320feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~320_q\ : std_logic;
SIGNAL \RAM1|ram~448_q\ : std_logic;
SIGNAL \RAM1|ram~432_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~384feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~384_q\ : std_logic;
SIGNAL \RAM1|ram~368_q\ : std_logic;
SIGNAL \RAM1|ram~496feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~496_q\ : std_logic;
SIGNAL \RAM1|ram~512_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~392_q\ : std_logic;
SIGNAL \RAM1|ram~504_q\ : std_logic;
SIGNAL \RAM1|ram~376_q\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~312_q\ : std_logic;
SIGNAL \RAM1|ram~440_q\ : std_logic;
SIGNAL \RAM1|ram~456_q\ : std_logic;
SIGNAL \RAM1|ram~328_q\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~400feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~400_q\ : std_logic;
SIGNAL \RAM1|ram~408feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~408_q\ : std_logic;
SIGNAL \RAM1|ram~424_q\ : std_logic;
SIGNAL \RAM1|ram~416feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~416_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~336_q\ : std_logic;
SIGNAL \RAM1|ram~360feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~360_q\ : std_logic;
SIGNAL \RAM1|ram~352_q\ : std_logic;
SIGNAL \RAM1|ram~344feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~344_q\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~280feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~280_q\ : std_logic;
SIGNAL \RAM1|ram~296feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~296_q\ : std_logic;
SIGNAL \RAM1|ram~288_q\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~472_q\ : std_logic;
SIGNAL \RAM1|ram~480_q\ : std_logic;
SIGNAL \RAM1|ram~488_q\ : std_logic;
SIGNAL \RAM1|ram~464_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~240feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~240_q\ : std_logic;
SIGNAL \RAM1|ram~176_q\ : std_logic;
SIGNAL \RAM1|ram~192_q\ : std_logic;
SIGNAL \RAM1|ram~256_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~128_q\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~200feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~200_q\ : std_logic;
SIGNAL \RAM1|ram~248_q\ : std_logic;
SIGNAL \RAM1|ram~264_q\ : std_logic;
SIGNAL \RAM1|ram~184_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~168feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~168_q\ : std_logic;
SIGNAL \RAM1|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~152_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~96feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~224feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~224_q\ : std_logic;
SIGNAL \RAM1|ram~208_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~232_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~216_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~160_q\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~144_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~497_q\ : std_logic;
SIGNAL \RAM1|ram~481_q\ : std_logic;
SIGNAL \RAM1|ram~513_q\ : std_logic;
SIGNAL \RAM1|ram~465feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~465_q\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~433_q\ : std_logic;
SIGNAL \RAM1|ram~417feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~417_q\ : std_logic;
SIGNAL \RAM1|ram~449_q\ : std_logic;
SIGNAL \RAM1|ram~401feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~401_q\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~289_q\ : std_logic;
SIGNAL \RAM1|ram~321_q\ : std_logic;
SIGNAL \RAM1|ram~305_q\ : std_logic;
SIGNAL \RAM1|ram~574_combout\ : std_logic;
SIGNAL \RAM1|ram~385_q\ : std_logic;
SIGNAL \RAM1|ram~353_q\ : std_logic;
SIGNAL \RAM1|ram~369_q\ : std_logic;
SIGNAL \RAM1|ram~337_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~578_combout\ : std_logic;
SIGNAL \RAM1|ram~217_q\ : std_logic;
SIGNAL \RAM1|ram~153_q\ : std_logic;
SIGNAL \RAM1|ram~185_q\ : std_logic;
SIGNAL \RAM1|ram~249_q\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~201feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~201_q\ : std_logic;
SIGNAL \RAM1|ram~169feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~169_q\ : std_logic;
SIGNAL \RAM1|ram~265_q\ : std_logic;
SIGNAL \RAM1|ram~233_q\ : std_logic;
SIGNAL \RAM1|ram~582_combout\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~105feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~105_q\ : std_logic;
SIGNAL \RAM1|ram~137_q\ : std_logic;
SIGNAL \RAM1|ram~41feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~581_combout\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~25feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~583_combout\ : std_logic;
SIGNAL \RAM1|ram~345_q\ : std_logic;
SIGNAL \RAM1|ram~377feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~377_q\ : std_logic;
SIGNAL \RAM1|ram~505_q\ : std_logic;
SIGNAL \RAM1|ram~473feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~473_q\ : std_logic;
SIGNAL \RAM1|ram~585_combout\ : std_logic;
SIGNAL \RAM1|ram~297_q\ : std_logic;
SIGNAL \RAM1|ram~425feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~425_q\ : std_logic;
SIGNAL \RAM1|ram~329feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~329_q\ : std_logic;
SIGNAL \RAM1|ram~457_q\ : std_logic;
SIGNAL \RAM1|ram~586_combout\ : std_logic;
SIGNAL \RAM1|ram~281_q\ : std_logic;
SIGNAL \RAM1|ram~313_q\ : std_logic;
SIGNAL \RAM1|ram~409_q\ : std_logic;
SIGNAL \RAM1|ram~441_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~489feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~489_q\ : std_logic;
SIGNAL \RAM1|ram~393_q\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~361feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~361_q\ : std_logic;
SIGNAL \RAM1|ram~587_combout\ : std_logic;
SIGNAL \RAM1|ram~588_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~65feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~129feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~97feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~570_combout\ : std_logic;
SIGNAL \RAM1|ram~177_q\ : std_logic;
SIGNAL \RAM1|ram~145_q\ : std_logic;
SIGNAL \RAM1|ram~161feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~161_q\ : std_logic;
SIGNAL \RAM1|ram~193_q\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~241_q\ : std_logic;
SIGNAL \RAM1|ram~209feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~209_q\ : std_logic;
SIGNAL \RAM1|ram~225_q\ : std_logic;
SIGNAL \RAM1|ram~257_q\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~589_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~42feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~600_combout\ : std_logic;
SIGNAL \RAM1|ram~258_q\ : std_logic;
SIGNAL \RAM1|ram~226_q\ : std_logic;
SIGNAL \RAM1|ram~266_q\ : std_logic;
SIGNAL \RAM1|ram~234feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~234_q\ : std_logic;
SIGNAL \RAM1|ram~603_combout\ : std_logic;
SIGNAL \RAM1|ram~162feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~162_q\ : std_logic;
SIGNAL \RAM1|ram~170_q\ : std_logic;
SIGNAL \RAM1|ram~194_q\ : std_logic;
SIGNAL \RAM1|ram~202_q\ : std_logic;
SIGNAL \RAM1|ram~602_combout\ : std_logic;
SIGNAL \RAM1|ram~106_q\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~138_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~601_combout\ : std_logic;
SIGNAL \RAM1|ram~604_combout\ : std_logic;
SIGNAL \RAM1|ram~186_q\ : std_logic;
SIGNAL \RAM1|ram~178_q\ : std_logic;
SIGNAL \RAM1|ram~250_q\ : std_logic;
SIGNAL \RAM1|ram~242feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~242_q\ : std_logic;
SIGNAL \RAM1|ram~593_combout\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~590_combout\ : std_logic;
SIGNAL \RAM1|ram~58feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~591_combout\ : std_logic;
SIGNAL \RAM1|ram~210_q\ : std_logic;
SIGNAL \RAM1|ram~154_q\ : std_logic;
SIGNAL \RAM1|ram~146_q\ : std_logic;
SIGNAL \RAM1|ram~218_q\ : std_logic;
SIGNAL \RAM1|ram~592_combout\ : std_logic;
SIGNAL \RAM1|ram~594_combout\ : std_logic;
SIGNAL \RAM1|ram~314_q\ : std_logic;
SIGNAL \RAM1|ram~306_q\ : std_logic;
SIGNAL \RAM1|ram~442_q\ : std_logic;
SIGNAL \RAM1|ram~434feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~434_q\ : std_logic;
SIGNAL \RAM1|ram~597_combout\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~402_q\ : std_logic;
SIGNAL \RAM1|ram~410_q\ : std_logic;
SIGNAL \RAM1|ram~282_q\ : std_logic;
SIGNAL \RAM1|ram~595_combout\ : std_logic;
SIGNAL \RAM1|ram~346feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~346_q\ : std_logic;
SIGNAL \RAM1|ram~338feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~338_q\ : std_logic;
SIGNAL \RAM1|ram~474_q\ : std_logic;
SIGNAL \RAM1|ram~466_q\ : std_logic;
SIGNAL \RAM1|ram~596_combout\ : std_logic;
SIGNAL \RAM1|ram~498feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~498_q\ : std_logic;
SIGNAL \RAM1|ram~370_q\ : std_logic;
SIGNAL \RAM1|ram~506_q\ : std_logic;
SIGNAL \RAM1|ram~378_q\ : std_logic;
SIGNAL \RAM1|ram~598_combout\ : std_logic;
SIGNAL \RAM1|ram~599_combout\ : std_logic;
SIGNAL \RAM1|ram~322feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~322_q\ : std_logic;
SIGNAL \RAM1|ram~330_q\ : std_logic;
SIGNAL \RAM1|ram~394_q\ : std_logic;
SIGNAL \RAM1|ram~386_q\ : std_logic;
SIGNAL \RAM1|ram~606_combout\ : std_logic;
SIGNAL \RAM1|ram~418_q\ : std_logic;
SIGNAL \RAM1|ram~426_q\ : std_logic;
SIGNAL \RAM1|ram~482_q\ : std_logic;
SIGNAL \RAM1|ram~490_q\ : std_logic;
SIGNAL \RAM1|ram~607_combout\ : std_logic;
SIGNAL \RAM1|ram~458_q\ : std_logic;
SIGNAL \RAM1|ram~450_q\ : std_logic;
SIGNAL \RAM1|ram~514_q\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~608_combout\ : std_logic;
SIGNAL \RAM1|ram~298_q\ : std_logic;
SIGNAL \RAM1|ram~290_q\ : std_logic;
SIGNAL \RAM1|ram~362_q\ : std_logic;
SIGNAL \RAM1|ram~354_q\ : std_logic;
SIGNAL \RAM1|ram~605_combout\ : std_logic;
SIGNAL \RAM1|ram~609_combout\ : std_logic;
SIGNAL \RAM1|ram~610_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM1|ram~28feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~632_combout\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~84feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~633_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~76_q\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~634_combout\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~108_q\ : std_logic;
SIGNAL \RAM1|ram~140_q\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~635_combout\ : std_logic;
SIGNAL \RAM1|ram~636_combout\ : std_logic;
SIGNAL \RAM1|ram~412_q\ : std_logic;
SIGNAL \RAM1|ram~436feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~436_q\ : std_logic;
SIGNAL \RAM1|ram~444_q\ : std_logic;
SIGNAL \RAM1|ram~404_q\ : std_logic;
SIGNAL \RAM1|ram~647_combout\ : std_logic;
SIGNAL \RAM1|ram~428_q\ : std_logic;
SIGNAL \RAM1|ram~452feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~452_q\ : std_logic;
SIGNAL \RAM1|ram~460_q\ : std_logic;
SIGNAL \RAM1|ram~420feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~420_q\ : std_logic;
SIGNAL \RAM1|ram~649_combout\ : std_logic;
SIGNAL \RAM1|ram~468_q\ : std_logic;
SIGNAL \RAM1|ram~476_q\ : std_logic;
SIGNAL \RAM1|ram~508_q\ : std_logic;
SIGNAL \RAM1|ram~500feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~500_q\ : std_logic;
SIGNAL \RAM1|ram~648_combout\ : std_logic;
SIGNAL \RAM1|ram~492_q\ : std_logic;
SIGNAL \RAM1|ram~516_q\ : std_logic;
SIGNAL \RAM1|ram~484_q\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~650_combout\ : std_logic;
SIGNAL \RAM1|ram~651_combout\ : std_logic;
SIGNAL \RAM1|ram~156_q\ : std_logic;
SIGNAL \RAM1|ram~180_q\ : std_logic;
SIGNAL \RAM1|ram~188_q\ : std_logic;
SIGNAL \RAM1|ram~148_q\ : std_logic;
SIGNAL \RAM1|ram~642_combout\ : std_logic;
SIGNAL \RAM1|ram~212_q\ : std_logic;
SIGNAL \RAM1|ram~220_q\ : std_logic;
SIGNAL \RAM1|ram~252_q\ : std_logic;
SIGNAL \RAM1|ram~244feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~244_q\ : std_logic;
SIGNAL \RAM1|ram~643_combout\ : std_logic;
SIGNAL \RAM1|ram~172feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~172_q\ : std_logic;
SIGNAL \RAM1|ram~164_q\ : std_logic;
SIGNAL \RAM1|ram~196_q\ : std_logic;
SIGNAL \RAM1|ram~204_q\ : std_logic;
SIGNAL \RAM1|ram~644_combout\ : std_logic;
SIGNAL \RAM1|ram~260_q\ : std_logic;
SIGNAL \RAM1|ram~236_q\ : std_logic;
SIGNAL \RAM1|ram~268_q\ : std_logic;
SIGNAL \RAM1|ram~228feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~228_q\ : std_logic;
SIGNAL \RAM1|ram~645_combout\ : std_logic;
SIGNAL \RAM1|ram~646_combout\ : std_logic;
SIGNAL \RAM1|ram~300_q\ : std_logic;
SIGNAL \RAM1|ram~284_q\ : std_logic;
SIGNAL \RAM1|ram~348_q\ : std_logic;
SIGNAL \RAM1|ram~364_q\ : std_logic;
SIGNAL \RAM1|ram~639_combout\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~292feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~292_q\ : std_logic;
SIGNAL \RAM1|ram~356_q\ : std_logic;
SIGNAL \RAM1|ram~340_q\ : std_logic;
SIGNAL \RAM1|ram~637_combout\ : std_logic;
SIGNAL \RAM1|ram~316_q\ : std_logic;
SIGNAL \RAM1|ram~380_q\ : std_logic;
SIGNAL \RAM1|ram~332_q\ : std_logic;
SIGNAL \RAM1|ram~396_q\ : std_logic;
SIGNAL \RAM1|ram~640_combout\ : std_logic;
SIGNAL \RAM1|ram~324feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~324_q\ : std_logic;
SIGNAL \RAM1|ram~308_q\ : std_logic;
SIGNAL \RAM1|ram~388_q\ : std_logic;
SIGNAL \RAM1|ram~372_q\ : std_logic;
SIGNAL \RAM1|ram~638_combout\ : std_logic;
SIGNAL \RAM1|ram~641_combout\ : std_logic;
SIGNAL \RAM1|ram~652_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~11_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~7_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~14_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~56_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~18_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~317_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~445_q\ : std_logic;
SIGNAL \RAM1|ram~189_q\ : std_logic;
SIGNAL \RAM1|ram~660_combout\ : std_logic;
SIGNAL \RAM1|ram~381_q\ : std_logic;
SIGNAL \RAM1|ram~125feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~509_q\ : std_logic;
SIGNAL \RAM1|ram~253feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~253_q\ : std_logic;
SIGNAL \RAM1|ram~661_combout\ : std_logic;
SIGNAL \RAM1|ram~413_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~285_q\ : std_logic;
SIGNAL \RAM1|ram~157feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~157_q\ : std_logic;
SIGNAL \RAM1|ram~658_combout\ : std_logic;
SIGNAL \RAM1|ram~221_q\ : std_logic;
SIGNAL \RAM1|ram~477_q\ : std_logic;
SIGNAL \RAM1|ram~349_q\ : std_logic;
SIGNAL \RAM1|ram~93feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~659_combout\ : std_logic;
SIGNAL \RAM1|ram~662_combout\ : std_logic;
SIGNAL \RAM1|ram~429_q\ : std_logic;
SIGNAL \RAM1|ram~205_q\ : std_logic;
SIGNAL \RAM1|ram~461_q\ : std_logic;
SIGNAL \RAM1|ram~173_q\ : std_logic;
SIGNAL \RAM1|ram~670_combout\ : std_logic;
SIGNAL \RAM1|ram~237feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~237_q\ : std_logic;
SIGNAL \RAM1|ram~493feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~493_q\ : std_logic;
SIGNAL \RAM1|ram~269_q\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~671_combout\ : std_logic;
SIGNAL \RAM1|ram~365_q\ : std_logic;
SIGNAL \RAM1|ram~109_q\ : std_logic;
SIGNAL \RAM1|ram~397_q\ : std_logic;
SIGNAL \RAM1|ram~141_q\ : std_logic;
SIGNAL \RAM1|ram~669_combout\ : std_logic;
SIGNAL \RAM1|ram~77_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~333_q\ : std_logic;
SIGNAL \RAM1|ram~301_q\ : std_logic;
SIGNAL \RAM1|ram~668_combout\ : std_logic;
SIGNAL \RAM1|ram~672_combout\ : std_logic;
SIGNAL \RAM1|ram~197_q\ : std_logic;
SIGNAL \RAM1|ram~453_q\ : std_logic;
SIGNAL \RAM1|ram~517_q\ : std_logic;
SIGNAL \RAM1|ram~261_q\ : std_logic;
SIGNAL \RAM1|ram~666_combout\ : std_logic;
SIGNAL \RAM1|ram~133feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~389_q\ : std_logic;
SIGNAL \RAM1|ram~325_q\ : std_logic;
SIGNAL \RAM1|ram~664_combout\ : std_logic;
SIGNAL \RAM1|ram~229_q\ : std_logic;
SIGNAL \RAM1|ram~421_q\ : std_logic;
SIGNAL \RAM1|ram~485_q\ : std_logic;
SIGNAL \RAM1|ram~165_q\ : std_logic;
SIGNAL \RAM1|ram~665_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~357_q\ : std_logic;
SIGNAL \RAM1|ram~293_q\ : std_logic;
SIGNAL \RAM1|ram~663_combout\ : std_logic;
SIGNAL \RAM1|ram~667_combout\ : std_logic;
SIGNAL \RAM1|ram~373feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~373_q\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~245_q\ : std_logic;
SIGNAL \RAM1|ram~501_q\ : std_logic;
SIGNAL \RAM1|ram~656_combout\ : std_logic;
SIGNAL \RAM1|ram~181_q\ : std_logic;
SIGNAL \RAM1|ram~309feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~309_q\ : std_logic;
SIGNAL \RAM1|ram~437_q\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~655_combout\ : std_logic;
SIGNAL \RAM1|ram~149_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~405feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~405_q\ : std_logic;
SIGNAL \RAM1|ram~653_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~213feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~213_q\ : std_logic;
SIGNAL \RAM1|ram~341_q\ : std_logic;
SIGNAL \RAM1|ram~469_q\ : std_logic;
SIGNAL \RAM1|ram~654_combout\ : std_logic;
SIGNAL \RAM1|ram~657_combout\ : std_logic;
SIGNAL \RAM1|ram~673_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \RAM1|ram~86feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~358feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~358_q\ : std_logic;
SIGNAL \RAM1|ram~342_q\ : std_logic;
SIGNAL \RAM1|ram~679_combout\ : std_logic;
SIGNAL \RAM1|ram~230_q\ : std_logic;
SIGNAL \RAM1|ram~214_q\ : std_logic;
SIGNAL \RAM1|ram~486feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~486_q\ : std_logic;
SIGNAL \RAM1|ram~470_q\ : std_logic;
SIGNAL \RAM1|ram~680_combout\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~110_q\ : std_logic;
SIGNAL \RAM1|ram~350_q\ : std_logic;
SIGNAL \RAM1|ram~366_q\ : std_logic;
SIGNAL \RAM1|ram~681_combout\ : std_logic;
SIGNAL \RAM1|ram~222_q\ : std_logic;
SIGNAL \RAM1|ram~478_q\ : std_logic;
SIGNAL \RAM1|ram~238feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~238_q\ : std_logic;
SIGNAL \RAM1|ram~494_q\ : std_logic;
SIGNAL \RAM1|ram~682_combout\ : std_logic;
SIGNAL \RAM1|ram~683_combout\ : std_logic;
SIGNAL \RAM1|ram~310_q\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~318_q\ : std_logic;
SIGNAL \RAM1|ram~684_combout\ : std_logic;
SIGNAL \RAM1|ram~454_q\ : std_logic;
SIGNAL \RAM1|ram~206_q\ : std_logic;
SIGNAL \RAM1|ram~462_q\ : std_logic;
SIGNAL \RAM1|ram~198feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~198_q\ : std_logic;
SIGNAL \RAM1|ram~687_combout\ : std_logic;
SIGNAL \RAM1|ram~182_q\ : std_logic;
SIGNAL \RAM1|ram~438feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~438_q\ : std_logic;
SIGNAL \RAM1|ram~446_q\ : std_logic;
SIGNAL \RAM1|ram~190_q\ : std_logic;
SIGNAL \RAM1|ram~685_combout\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~78_q\ : std_logic;
SIGNAL \RAM1|ram~326_q\ : std_logic;
SIGNAL \RAM1|ram~334_q\ : std_logic;
SIGNAL \RAM1|ram~686_combout\ : std_logic;
SIGNAL \RAM1|ram~688_combout\ : std_logic;
SIGNAL \RAM1|ram~518_q\ : std_logic;
SIGNAL \RAM1|ram~262_q\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~270_q\ : std_logic;
SIGNAL \RAM1|ram~692_combout\ : std_logic;
SIGNAL \RAM1|ram~246_q\ : std_logic;
SIGNAL \RAM1|ram~254_q\ : std_logic;
SIGNAL \RAM1|ram~510_q\ : std_logic;
SIGNAL \RAM1|ram~502_q\ : std_logic;
SIGNAL \RAM1|ram~690_combout\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~382_q\ : std_logic;
SIGNAL \RAM1|ram~374_q\ : std_logic;
SIGNAL \RAM1|ram~689_combout\ : std_logic;
SIGNAL \RAM1|ram~390feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~390_q\ : std_logic;
SIGNAL \RAM1|ram~142_q\ : std_logic;
SIGNAL \RAM1|ram~398_q\ : std_logic;
SIGNAL \RAM1|ram~134feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~691_combout\ : std_logic;
SIGNAL \RAM1|ram~693_combout\ : std_logic;
SIGNAL \RAM1|ram~158_q\ : std_logic;
SIGNAL \RAM1|ram~414_q\ : std_logic;
SIGNAL \RAM1|ram~174_q\ : std_logic;
SIGNAL \RAM1|ram~430_q\ : std_logic;
SIGNAL \RAM1|ram~677_combout\ : std_logic;
SIGNAL \RAM1|ram~422_q\ : std_logic;
SIGNAL \RAM1|ram~166feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~166_q\ : std_logic;
SIGNAL \RAM1|ram~150feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~150_q\ : std_logic;
SIGNAL \RAM1|ram~406_q\ : std_logic;
SIGNAL \RAM1|ram~675_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~294feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~294_q\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~674_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~286_q\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~302_q\ : std_logic;
SIGNAL \RAM1|ram~676_combout\ : std_logic;
SIGNAL \RAM1|ram~678_combout\ : std_logic;
SIGNAL \RAM1|ram~694_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~20_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~19_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~16_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~17_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~8_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|DOUT~q\ : std_logic;
SIGNAL \CPU1|MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \CPU1|LogicaDesvio1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|MUX2|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU1|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DEC1|Equal7~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \FF2|DOUT~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \RH0|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DHEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU1|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RH2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RH1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU1|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RH3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FF2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~82_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~62_combout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~51_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RH5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RH4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU1|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~56_combout\ : std_logic;
SIGNAL \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \FFK0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \FFK1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ED1|ALT_INV_saidaQ~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~81_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~80_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~79_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~78_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~77_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~76_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~75_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~61_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \ED0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ED1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU1|ULA1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~7_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~6_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~5_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~20_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~19_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[7]~18_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~17_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~16_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~14_combout\ : std_logic;
SIGNAL \CPU1|FlagZero1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RH0|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~759_combout\ <= NOT \RAM1|ram~759_combout\;
\RAM1|ALT_INV_ram~757_combout\ <= NOT \RAM1|ram~757_combout\;
\RAM1|ALT_INV_ram~755_combout\ <= NOT \RAM1|ram~755_combout\;
\RAM1|ALT_INV_ram~753_combout\ <= NOT \RAM1|ram~753_combout\;
\RAM1|ALT_INV_ram~751_combout\ <= NOT \RAM1|ram~751_combout\;
\RAM1|ALT_INV_ram~749_combout\ <= NOT \RAM1|ram~749_combout\;
\RAM1|ALT_INV_ram~747_combout\ <= NOT \RAM1|ram~747_combout\;
\RAM1|ALT_INV_ram~745_combout\ <= NOT \RAM1|ram~745_combout\;
\RAM1|ALT_INV_ram~743_combout\ <= NOT \RAM1|ram~743_combout\;
\RAM1|ALT_INV_ram~741_combout\ <= NOT \RAM1|ram~741_combout\;
\RAM1|ALT_INV_ram~739_combout\ <= NOT \RAM1|ram~739_combout\;
\RAM1|ALT_INV_ram~737_combout\ <= NOT \RAM1|ram~737_combout\;
\RAM1|ALT_INV_ram~735_combout\ <= NOT \RAM1|ram~735_combout\;
\RAM1|ALT_INV_ram~733_combout\ <= NOT \RAM1|ram~733_combout\;
\RAM1|ALT_INV_ram~731_combout\ <= NOT \RAM1|ram~731_combout\;
\RAM1|ALT_INV_ram~729_combout\ <= NOT \RAM1|ram~729_combout\;
\RAM1|ALT_INV_ram~727_combout\ <= NOT \RAM1|ram~727_combout\;
\RAM1|ALT_INV_ram~725_combout\ <= NOT \RAM1|ram~725_combout\;
\RAM1|ALT_INV_ram~723_combout\ <= NOT \RAM1|ram~723_combout\;
\RAM1|ALT_INV_ram~721_combout\ <= NOT \RAM1|ram~721_combout\;
\RAM1|ALT_INV_ram~719_combout\ <= NOT \RAM1|ram~719_combout\;
\RAM1|ALT_INV_ram~717_combout\ <= NOT \RAM1|ram~717_combout\;
\RAM1|ALT_INV_ram~715_combout\ <= NOT \RAM1|ram~715_combout\;
\RAM1|ALT_INV_ram~713_combout\ <= NOT \RAM1|ram~713_combout\;
\RAM1|ALT_INV_ram~711_combout\ <= NOT \RAM1|ram~711_combout\;
\RAM1|ALT_INV_ram~709_combout\ <= NOT \RAM1|ram~709_combout\;
\RAM1|ALT_INV_ram~707_combout\ <= NOT \RAM1|ram~707_combout\;
\RAM1|ALT_INV_ram~705_combout\ <= NOT \RAM1|ram~705_combout\;
\RAM1|ALT_INV_ram~703_combout\ <= NOT \RAM1|ram~703_combout\;
\RAM1|ALT_INV_ram~701_combout\ <= NOT \RAM1|ram~701_combout\;
\RAM1|ALT_INV_ram~699_combout\ <= NOT \RAM1|ram~699_combout\;
\RAM1|ALT_INV_ram~697_combout\ <= NOT \RAM1|ram~697_combout\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~695_combout\ <= NOT \RAM1|ram~695_combout\;
\ROM1|ALT_INV_memROM~57_combout\ <= NOT \ROM1|memROM~57_combout\;
\CPU1|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \CPU1|ULA1|Equal1~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[7]~13_combout\ <= NOT \CPU1|MUX1|saida_MUX[7]~13_combout\;
\RAM1|ALT_INV_ram~694_combout\ <= NOT \RAM1|ram~694_combout\;
\RAM1|ALT_INV_ram~693_combout\ <= NOT \RAM1|ram~693_combout\;
\RAM1|ALT_INV_ram~692_combout\ <= NOT \RAM1|ram~692_combout\;
\RAM1|ALT_INV_ram~526_q\ <= NOT \RAM1|ram~526_q\;
\RAM1|ALT_INV_ram~270_q\ <= NOT \RAM1|ram~270_q\;
\RAM1|ALT_INV_ram~518_q\ <= NOT \RAM1|ram~518_q\;
\RAM1|ALT_INV_ram~262_q\ <= NOT \RAM1|ram~262_q\;
\RAM1|ALT_INV_ram~691_combout\ <= NOT \RAM1|ram~691_combout\;
\RAM1|ALT_INV_ram~398_q\ <= NOT \RAM1|ram~398_q\;
\RAM1|ALT_INV_ram~142_q\ <= NOT \RAM1|ram~142_q\;
\RAM1|ALT_INV_ram~390_q\ <= NOT \RAM1|ram~390_q\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~690_combout\ <= NOT \RAM1|ram~690_combout\;
\RAM1|ALT_INV_ram~510_q\ <= NOT \RAM1|ram~510_q\;
\RAM1|ALT_INV_ram~254_q\ <= NOT \RAM1|ram~254_q\;
\RAM1|ALT_INV_ram~502_q\ <= NOT \RAM1|ram~502_q\;
\RAM1|ALT_INV_ram~246_q\ <= NOT \RAM1|ram~246_q\;
\RAM1|ALT_INV_ram~689_combout\ <= NOT \RAM1|ram~689_combout\;
\RAM1|ALT_INV_ram~382_q\ <= NOT \RAM1|ram~382_q\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~374_q\ <= NOT \RAM1|ram~374_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~688_combout\ <= NOT \RAM1|ram~688_combout\;
\RAM1|ALT_INV_ram~687_combout\ <= NOT \RAM1|ram~687_combout\;
\RAM1|ALT_INV_ram~462_q\ <= NOT \RAM1|ram~462_q\;
\RAM1|ALT_INV_ram~206_q\ <= NOT \RAM1|ram~206_q\;
\RAM1|ALT_INV_ram~454_q\ <= NOT \RAM1|ram~454_q\;
\RAM1|ALT_INV_ram~198_q\ <= NOT \RAM1|ram~198_q\;
\RAM1|ALT_INV_ram~686_combout\ <= NOT \RAM1|ram~686_combout\;
\RAM1|ALT_INV_ram~334_q\ <= NOT \RAM1|ram~334_q\;
\RAM1|ALT_INV_ram~78_q\ <= NOT \RAM1|ram~78_q\;
\RAM1|ALT_INV_ram~326_q\ <= NOT \RAM1|ram~326_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~685_combout\ <= NOT \RAM1|ram~685_combout\;
\RAM1|ALT_INV_ram~446_q\ <= NOT \RAM1|ram~446_q\;
\RAM1|ALT_INV_ram~190_q\ <= NOT \RAM1|ram~190_q\;
\RAM1|ALT_INV_ram~438_q\ <= NOT \RAM1|ram~438_q\;
\RAM1|ALT_INV_ram~182_q\ <= NOT \RAM1|ram~182_q\;
\RAM1|ALT_INV_ram~684_combout\ <= NOT \RAM1|ram~684_combout\;
\RAM1|ALT_INV_ram~318_q\ <= NOT \RAM1|ram~318_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~310_q\ <= NOT \RAM1|ram~310_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~683_combout\ <= NOT \RAM1|ram~683_combout\;
\RAM1|ALT_INV_ram~682_combout\ <= NOT \RAM1|ram~682_combout\;
\RAM1|ALT_INV_ram~494_q\ <= NOT \RAM1|ram~494_q\;
\RAM1|ALT_INV_ram~238_q\ <= NOT \RAM1|ram~238_q\;
\RAM1|ALT_INV_ram~478_q\ <= NOT \RAM1|ram~478_q\;
\RAM1|ALT_INV_ram~222_q\ <= NOT \RAM1|ram~222_q\;
\RAM1|ALT_INV_ram~681_combout\ <= NOT \RAM1|ram~681_combout\;
\RAM1|ALT_INV_ram~366_q\ <= NOT \RAM1|ram~366_q\;
\RAM1|ALT_INV_ram~110_q\ <= NOT \RAM1|ram~110_q\;
\RAM1|ALT_INV_ram~350_q\ <= NOT \RAM1|ram~350_q\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~680_combout\ <= NOT \RAM1|ram~680_combout\;
\RAM1|ALT_INV_ram~486_q\ <= NOT \RAM1|ram~486_q\;
\RAM1|ALT_INV_ram~230_q\ <= NOT \RAM1|ram~230_q\;
\RH3|ALT_INV_DOUT\(2) <= NOT \RH3|DOUT\(2);
\RH3|ALT_INV_DOUT\(1) <= NOT \RH3|DOUT\(1);
\RH3|ALT_INV_DOUT\(3) <= NOT \RH3|DOUT\(3);
\RH3|ALT_INV_DOUT\(0) <= NOT \RH3|DOUT\(0);
\RH2|ALT_INV_DOUT\(2) <= NOT \RH2|DOUT\(2);
\RH2|ALT_INV_DOUT\(1) <= NOT \RH2|DOUT\(1);
\RH2|ALT_INV_DOUT\(3) <= NOT \RH2|DOUT\(3);
\RH2|ALT_INV_DOUT\(0) <= NOT \RH2|DOUT\(0);
\RH1|ALT_INV_DOUT\(2) <= NOT \RH1|DOUT\(2);
\RH1|ALT_INV_DOUT\(1) <= NOT \RH1|DOUT\(1);
\RH1|ALT_INV_DOUT\(3) <= NOT \RH1|DOUT\(3);
\RH1|ALT_INV_DOUT\(0) <= NOT \RH1|DOUT\(0);
\RH0|ALT_INV_DOUT\(2) <= NOT \RH0|DOUT\(2);
\RH0|ALT_INV_DOUT\(1) <= NOT \RH0|DOUT\(1);
\RH0|ALT_INV_DOUT\(3) <= NOT \RH0|DOUT\(3);
\RH0|ALT_INV_DOUT\(0) <= NOT \RH0|DOUT\(0);
\FF2|ALT_INV_DOUT~q\ <= NOT \FF2|DOUT~q\;
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;
\ROM1|ALT_INV_memROM~82_combout\ <= NOT \ROM1|memROM~82_combout\;
\ROM1|ALT_INV_memROM~70_combout\ <= NOT \ROM1|memROM~70_combout\;
\ROM1|ALT_INV_memROM~66_combout\ <= NOT \ROM1|memROM~66_combout\;
\ROM1|ALT_INV_memROM~62_combout\ <= NOT \ROM1|memROM~62_combout\;
\CPU1|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|ULA1|Add0~29_sumout\;
\CPU1|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|ULA1|Add0~25_sumout\;
\CPU1|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|ULA1|Add0~21_sumout\;
\CPU1|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|ULA1|Add0~17_sumout\;
\CPU1|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|ULA1|Add0~13_sumout\;
\CPU1|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|ULA1|Add0~9_sumout\;
\CPU1|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|ULA1|Add0~5_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU1|incrementaPC|Add0~33_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU1|incrementaPC|Add0~29_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU1|incrementaPC|Add0~25_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU1|incrementaPC|Add0~21_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU1|incrementaPC|Add0~17_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU1|incrementaPC|Add0~13_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU1|incrementaPC|Add0~9_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU1|incrementaPC|Add0~5_sumout\;
\CPU1|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|incrementaPC|Add0~1_sumout\;
\CPU1|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU1|ULA1|Add0~1_sumout\;
\CPU1|REGA|ALT_INV_DOUT\(7) <= NOT \CPU1|REGA|DOUT\(7);
\CPU1|REGA|ALT_INV_DOUT\(6) <= NOT \CPU1|REGA|DOUT\(6);
\CPU1|REGA|ALT_INV_DOUT\(5) <= NOT \CPU1|REGA|DOUT\(5);
\CPU1|REGA|ALT_INV_DOUT\(4) <= NOT \CPU1|REGA|DOUT\(4);
\CPU1|REGA|ALT_INV_DOUT\(3) <= NOT \CPU1|REGA|DOUT\(3);
\CPU1|REGA|ALT_INV_DOUT\(2) <= NOT \CPU1|REGA|DOUT\(2);
\CPU1|REGA|ALT_INV_DOUT\(1) <= NOT \CPU1|REGA|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|REGA|ALT_INV_DOUT\(0) <= NOT \CPU1|REGA|DOUT\(0);
\RAM1|ALT_INV_ram~167_q\ <= NOT \RAM1|ram~167_q\;
\RAM1|ALT_INV_ram~191_q\ <= NOT \RAM1|ram~191_q\;
\RAM1|ALT_INV_ram~159_q\ <= NOT \RAM1|ram~159_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~127_q\ <= NOT \RAM1|ram~127_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~247_q\ <= NOT \RAM1|ram~247_q\;
\RAM1|ALT_INV_ram~183_q\ <= NOT \RAM1|ram~183_q\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~215_q\ <= NOT \RAM1|ram~215_q\;
\RAM1|ALT_INV_ram~151_q\ <= NOT \RAM1|ram~151_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~239_q\ <= NOT \RAM1|ram~239_q\;
\RAM1|ALT_INV_ram~175_q\ <= NOT \RAM1|ram~175_q\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\ROM1|ALT_INV_memROM~55_combout\ <= NOT \ROM1|memROM~55_combout\;
\ROM1|ALT_INV_memROM~54_combout\ <= NOT \ROM1|memROM~54_combout\;
\ROM1|ALT_INV_memROM~53_combout\ <= NOT \ROM1|memROM~53_combout\;
\ROM1|ALT_INV_memROM~52_combout\ <= NOT \ROM1|memROM~52_combout\;
\ROM1|ALT_INV_memROM~51_combout\ <= NOT \ROM1|memROM~51_combout\;
\RAM1|ALT_INV_ram~207_q\ <= NOT \RAM1|ram~207_q\;
\RAM1|ALT_INV_ram~143_q\ <= NOT \RAM1|ram~143_q\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ROM1|ALT_INV_memROM~50_combout\ <= NOT \ROM1|memROM~50_combout\;
\ROM1|ALT_INV_memROM~49_combout\ <= NOT \ROM1|memROM~49_combout\;
\ROM1|ALT_INV_memROM~48_combout\ <= NOT \ROM1|memROM~48_combout\;
\ROM1|ALT_INV_memROM~47_combout\ <= NOT \ROM1|memROM~47_combout\;
\ROM1|ALT_INV_memROM~46_combout\ <= NOT \ROM1|memROM~46_combout\;
\ROM1|ALT_INV_memROM~45_combout\ <= NOT \ROM1|memROM~45_combout\;
\ROM1|ALT_INV_memROM~44_combout\ <= NOT \ROM1|memROM~44_combout\;
\ROM1|ALT_INV_memROM~43_combout\ <= NOT \ROM1|memROM~43_combout\;
\ROM1|ALT_INV_memROM~42_combout\ <= NOT \ROM1|memROM~42_combout\;
\ROM1|ALT_INV_memROM~41_combout\ <= NOT \ROM1|memROM~41_combout\;
\ROM1|ALT_INV_memROM~40_combout\ <= NOT \ROM1|memROM~40_combout\;
\ROM1|ALT_INV_memROM~39_combout\ <= NOT \ROM1|memROM~39_combout\;
\ROM1|ALT_INV_memROM~38_combout\ <= NOT \ROM1|memROM~38_combout\;
\ROM1|ALT_INV_memROM~37_combout\ <= NOT \ROM1|memROM~37_combout\;
\DEC1|ALT_INV_Equal7~0_combout\ <= NOT \DEC1|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~36_combout\ <= NOT \ROM1|memROM~36_combout\;
\ROM1|ALT_INV_memROM~35_combout\ <= NOT \ROM1|memROM~35_combout\;
\ROM1|ALT_INV_memROM~34_combout\ <= NOT \ROM1|memROM~34_combout\;
\ROM1|ALT_INV_memROM~33_combout\ <= NOT \ROM1|memROM~33_combout\;
\ROM1|ALT_INV_memROM~32_combout\ <= NOT \ROM1|memROM~32_combout\;
\ROM1|ALT_INV_memROM~31_combout\ <= NOT \ROM1|memROM~31_combout\;
\ROM1|ALT_INV_memROM~30_combout\ <= NOT \ROM1|memROM~30_combout\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\CPU1|DECODER1|ALT_INV_Equal5~0_combout\ <= NOT \CPU1|DECODER1|Equal5~0_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\RH5|ALT_INV_DOUT\(2) <= NOT \RH5|DOUT\(2);
\RH5|ALT_INV_DOUT\(1) <= NOT \RH5|DOUT\(1);
\RH5|ALT_INV_DOUT\(3) <= NOT \RH5|DOUT\(3);
\RH5|ALT_INV_DOUT\(0) <= NOT \RH5|DOUT\(0);
\RH4|ALT_INV_DOUT\(2) <= NOT \RH4|DOUT\(2);
\RH4|ALT_INV_DOUT\(1) <= NOT \RH4|DOUT\(1);
\RH4|ALT_INV_DOUT\(3) <= NOT \RH4|DOUT\(3);
\RH4|ALT_INV_DOUT\(0) <= NOT \RH4|DOUT\(0);
\RAM1|ALT_INV_ram~480_q\ <= NOT \RAM1|ram~480_q\;
\RAM1|ALT_INV_ram~464_q\ <= NOT \RAM1|ram~464_q\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~424_q\ <= NOT \RAM1|ram~424_q\;
\RAM1|ALT_INV_ram~408_q\ <= NOT \RAM1|ram~408_q\;
\RAM1|ALT_INV_ram~416_q\ <= NOT \RAM1|ram~416_q\;
\RAM1|ALT_INV_ram~400_q\ <= NOT \RAM1|ram~400_q\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~360_q\ <= NOT \RAM1|ram~360_q\;
\RAM1|ALT_INV_ram~344_q\ <= NOT \RAM1|ram~344_q\;
\RAM1|ALT_INV_ram~352_q\ <= NOT \RAM1|ram~352_q\;
\RAM1|ALT_INV_ram~336_q\ <= NOT \RAM1|ram~336_q\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~296_q\ <= NOT \RAM1|ram~296_q\;
\RAM1|ALT_INV_ram~280_q\ <= NOT \RAM1|ram~280_q\;
\RAM1|ALT_INV_ram~288_q\ <= NOT \RAM1|ram~288_q\;
\RAM1|ALT_INV_ram~272_q\ <= NOT \RAM1|ram~272_q\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~232_q\ <= NOT \RAM1|ram~232_q\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~216_q\ <= NOT \RAM1|ram~216_q\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~168_q\ <= NOT \RAM1|ram~168_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~152_q\ <= NOT \RAM1|ram~152_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~224_q\ <= NOT \RAM1|ram~224_q\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~208_q\ <= NOT \RAM1|ram~208_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~160_q\ <= NOT \RAM1|ram~160_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~144_q\ <= NOT \RAM1|ram~144_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\CPU1|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU1|REG_RETORNO|DOUT\(6);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU1|REG_RETORNO|DOUT\(7);
\ROM1|ALT_INV_memROM~56_combout\ <= NOT \ROM1|memROM~56_combout\;
\CPU1|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU1|REG_RETORNO|DOUT\(5);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU1|REG_RETORNO|DOUT\(4);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU1|REG_RETORNO|DOUT\(3);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU1|REG_RETORNO|DOUT\(2);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU1|REG_RETORNO|DOUT\(1);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU1|REG_RETORNO|DOUT\(0);
\CPU1|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU1|REG_RETORNO|DOUT\(8);
\CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU1|LogicaDesvio1|saida[0]~0_combout\;
\CPU1|MUX2|ALT_INV_Equal2~0_combout\ <= NOT \CPU1|MUX2|Equal2~0_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~q\ <= NOT \CPU1|FlagZero1|DOUT~q\;
\CPU1|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU1|ULA1|saida[0]~0_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~4_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~3_combout\;
\ALT_INV_comb~10_combout\ <= NOT \comb~10_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~2_combout\;
\FFK0|ALT_INV_DOUT~q\ <= NOT \FFK0|DOUT~q\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~1_combout\;
\FFK1|ALT_INV_DOUT~q\ <= NOT \FFK1|DOUT~q\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~0_combout\;
\CPU1|DECODER1|ALT_INV_saida[5]~1_combout\ <= NOT \CPU1|DECODER1|saida[5]~1_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\CPU1|DECODER1|ALT_INV_saida[1]~0_combout\ <= NOT \CPU1|DECODER1|saida[1]~0_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~519_q\ <= NOT \RAM1|ram~519_q\;
\RAM1|ALT_INV_ram~487_q\ <= NOT \RAM1|ram~487_q\;
\RAM1|ALT_INV_ram~511_q\ <= NOT \RAM1|ram~511_q\;
\RAM1|ALT_INV_ram~479_q\ <= NOT \RAM1|ram~479_q\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~455_q\ <= NOT \RAM1|ram~455_q\;
\RAM1|ALT_INV_ram~423_q\ <= NOT \RAM1|ram~423_q\;
\RAM1|ALT_INV_ram~447_q\ <= NOT \RAM1|ram~447_q\;
\RAM1|ALT_INV_ram~415_q\ <= NOT \RAM1|ram~415_q\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~391_q\ <= NOT \RAM1|ram~391_q\;
\RAM1|ALT_INV_ram~359_q\ <= NOT \RAM1|ram~359_q\;
\RAM1|ALT_INV_ram~383_q\ <= NOT \RAM1|ram~383_q\;
\RAM1|ALT_INV_ram~351_q\ <= NOT \RAM1|ram~351_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~327_q\ <= NOT \RAM1|ram~327_q\;
\RAM1|ALT_INV_ram~295_q\ <= NOT \RAM1|ram~295_q\;
\RAM1|ALT_INV_ram~319_q\ <= NOT \RAM1|ram~319_q\;
\RAM1|ALT_INV_ram~287_q\ <= NOT \RAM1|ram~287_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~503_q\ <= NOT \RAM1|ram~503_q\;
\RAM1|ALT_INV_ram~439_q\ <= NOT \RAM1|ram~439_q\;
\RAM1|ALT_INV_ram~375_q\ <= NOT \RAM1|ram~375_q\;
\RAM1|ALT_INV_ram~311_q\ <= NOT \RAM1|ram~311_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~471_q\ <= NOT \RAM1|ram~471_q\;
\RAM1|ALT_INV_ram~407_q\ <= NOT \RAM1|ram~407_q\;
\RAM1|ALT_INV_ram~343_q\ <= NOT \RAM1|ram~343_q\;
\RAM1|ALT_INV_ram~279_q\ <= NOT \RAM1|ram~279_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~495_q\ <= NOT \RAM1|ram~495_q\;
\RAM1|ALT_INV_ram~431_q\ <= NOT \RAM1|ram~431_q\;
\RAM1|ALT_INV_ram~367_q\ <= NOT \RAM1|ram~367_q\;
\RAM1|ALT_INV_ram~303_q\ <= NOT \RAM1|ram~303_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~463_q\ <= NOT \RAM1|ram~463_q\;
\RAM1|ALT_INV_ram~399_q\ <= NOT \RAM1|ram~399_q\;
\RAM1|ALT_INV_ram~335_q\ <= NOT \RAM1|ram~335_q\;
\RAM1|ALT_INV_ram~271_q\ <= NOT \RAM1|ram~271_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~263_q\ <= NOT \RAM1|ram~263_q\;
\RAM1|ALT_INV_ram~231_q\ <= NOT \RAM1|ram~231_q\;
\RAM1|ALT_INV_ram~255_q\ <= NOT \RAM1|ram~255_q\;
\RAM1|ALT_INV_ram~223_q\ <= NOT \RAM1|ram~223_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~199_q\ <= NOT \RAM1|ram~199_q\;
\RAM1|ALT_INV_ram~457_q\ <= NOT \RAM1|ram~457_q\;
\RAM1|ALT_INV_ram~425_q\ <= NOT \RAM1|ram~425_q\;
\RAM1|ALT_INV_ram~329_q\ <= NOT \RAM1|ram~329_q\;
\RAM1|ALT_INV_ram~297_q\ <= NOT \RAM1|ram~297_q\;
\RAM1|ALT_INV_ram~585_combout\ <= NOT \RAM1|ram~585_combout\;
\RAM1|ALT_INV_ram~505_q\ <= NOT \RAM1|ram~505_q\;
\RAM1|ALT_INV_ram~473_q\ <= NOT \RAM1|ram~473_q\;
\RAM1|ALT_INV_ram~377_q\ <= NOT \RAM1|ram~377_q\;
\RAM1|ALT_INV_ram~345_q\ <= NOT \RAM1|ram~345_q\;
\RAM1|ALT_INV_ram~584_combout\ <= NOT \RAM1|ram~584_combout\;
\RAM1|ALT_INV_ram~441_q\ <= NOT \RAM1|ram~441_q\;
\RAM1|ALT_INV_ram~409_q\ <= NOT \RAM1|ram~409_q\;
\RAM1|ALT_INV_ram~313_q\ <= NOT \RAM1|ram~313_q\;
\RAM1|ALT_INV_ram~281_q\ <= NOT \RAM1|ram~281_q\;
\RAM1|ALT_INV_ram~583_combout\ <= NOT \RAM1|ram~583_combout\;
\RAM1|ALT_INV_ram~582_combout\ <= NOT \RAM1|ram~582_combout\;
\RAM1|ALT_INV_ram~265_q\ <= NOT \RAM1|ram~265_q\;
\RAM1|ALT_INV_ram~201_q\ <= NOT \RAM1|ram~201_q\;
\RAM1|ALT_INV_ram~233_q\ <= NOT \RAM1|ram~233_q\;
\RAM1|ALT_INV_ram~169_q\ <= NOT \RAM1|ram~169_q\;
\RAM1|ALT_INV_ram~581_combout\ <= NOT \RAM1|ram~581_combout\;
\RAM1|ALT_INV_ram~137_q\ <= NOT \RAM1|ram~137_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~105_q\ <= NOT \RAM1|ram~105_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~580_combout\ <= NOT \RAM1|ram~580_combout\;
\RAM1|ALT_INV_ram~249_q\ <= NOT \RAM1|ram~249_q\;
\RAM1|ALT_INV_ram~185_q\ <= NOT \RAM1|ram~185_q\;
\RAM1|ALT_INV_ram~217_q\ <= NOT \RAM1|ram~217_q\;
\RAM1|ALT_INV_ram~153_q\ <= NOT \RAM1|ram~153_q\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~578_combout\ <= NOT \RAM1|ram~578_combout\;
\RAM1|ALT_INV_ram~577_combout\ <= NOT \RAM1|ram~577_combout\;
\RAM1|ALT_INV_ram~513_q\ <= NOT \RAM1|ram~513_q\;
\RAM1|ALT_INV_ram~481_q\ <= NOT \RAM1|ram~481_q\;
\RAM1|ALT_INV_ram~497_q\ <= NOT \RAM1|ram~497_q\;
\RAM1|ALT_INV_ram~465_q\ <= NOT \RAM1|ram~465_q\;
\RAM1|ALT_INV_ram~576_combout\ <= NOT \RAM1|ram~576_combout\;
\RAM1|ALT_INV_ram~449_q\ <= NOT \RAM1|ram~449_q\;
\RAM1|ALT_INV_ram~417_q\ <= NOT \RAM1|ram~417_q\;
\RAM1|ALT_INV_ram~433_q\ <= NOT \RAM1|ram~433_q\;
\RAM1|ALT_INV_ram~401_q\ <= NOT \RAM1|ram~401_q\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\RAM1|ALT_INV_ram~385_q\ <= NOT \RAM1|ram~385_q\;
\RAM1|ALT_INV_ram~353_q\ <= NOT \RAM1|ram~353_q\;
\RAM1|ALT_INV_ram~369_q\ <= NOT \RAM1|ram~369_q\;
\RAM1|ALT_INV_ram~337_q\ <= NOT \RAM1|ram~337_q\;
\RAM1|ALT_INV_ram~574_combout\ <= NOT \RAM1|ram~574_combout\;
\RAM1|ALT_INV_ram~321_q\ <= NOT \RAM1|ram~321_q\;
\RAM1|ALT_INV_ram~289_q\ <= NOT \RAM1|ram~289_q\;
\RAM1|ALT_INV_ram~305_q\ <= NOT \RAM1|ram~305_q\;
\RAM1|ALT_INV_ram~273_q\ <= NOT \RAM1|ram~273_q\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~572_combout\ <= NOT \RAM1|ram~572_combout\;
\RAM1|ALT_INV_ram~257_q\ <= NOT \RAM1|ram~257_q\;
\RAM1|ALT_INV_ram~225_q\ <= NOT \RAM1|ram~225_q\;
\RAM1|ALT_INV_ram~241_q\ <= NOT \RAM1|ram~241_q\;
\RAM1|ALT_INV_ram~209_q\ <= NOT \RAM1|ram~209_q\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~193_q\ <= NOT \RAM1|ram~193_q\;
\RAM1|ALT_INV_ram~161_q\ <= NOT \RAM1|ram~161_q\;
\RAM1|ALT_INV_ram~177_q\ <= NOT \RAM1|ram~177_q\;
\RAM1|ALT_INV_ram~145_q\ <= NOT \RAM1|ram~145_q\;
\RAM1|ALT_INV_ram~570_combout\ <= NOT \RAM1|ram~570_combout\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~7_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~7_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~6_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~5_combout\;
\RAM1|ALT_INV_ram~568_combout\ <= NOT \RAM1|ram~568_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\RAM1|ALT_INV_ram~566_combout\ <= NOT \RAM1|ram~566_combout\;
\RAM1|ALT_INV_ram~520_q\ <= NOT \RAM1|ram~520_q\;
\RAM1|ALT_INV_ram~392_q\ <= NOT \RAM1|ram~392_q\;
\RAM1|ALT_INV_ram~504_q\ <= NOT \RAM1|ram~504_q\;
\RAM1|ALT_INV_ram~376_q\ <= NOT \RAM1|ram~376_q\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~456_q\ <= NOT \RAM1|ram~456_q\;
\RAM1|ALT_INV_ram~328_q\ <= NOT \RAM1|ram~328_q\;
\RAM1|ALT_INV_ram~440_q\ <= NOT \RAM1|ram~440_q\;
\RAM1|ALT_INV_ram~312_q\ <= NOT \RAM1|ram~312_q\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~512_q\ <= NOT \RAM1|ram~512_q\;
\RAM1|ALT_INV_ram~384_q\ <= NOT \RAM1|ram~384_q\;
\RAM1|ALT_INV_ram~496_q\ <= NOT \RAM1|ram~496_q\;
\RAM1|ALT_INV_ram~368_q\ <= NOT \RAM1|ram~368_q\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~448_q\ <= NOT \RAM1|ram~448_q\;
\RAM1|ALT_INV_ram~320_q\ <= NOT \RAM1|ram~320_q\;
\RAM1|ALT_INV_ram~432_q\ <= NOT \RAM1|ram~432_q\;
\RAM1|ALT_INV_ram~304_q\ <= NOT \RAM1|ram~304_q\;
\RAM1|ALT_INV_ram~562_combout\ <= NOT \RAM1|ram~562_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~264_q\ <= NOT \RAM1|ram~264_q\;
\RAM1|ALT_INV_ram~200_q\ <= NOT \RAM1|ram~200_q\;
\RAM1|ALT_INV_ram~248_q\ <= NOT \RAM1|ram~248_q\;
\RAM1|ALT_INV_ram~184_q\ <= NOT \RAM1|ram~184_q\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\RAM1|ALT_INV_ram~256_q\ <= NOT \RAM1|ram~256_q\;
\RAM1|ALT_INV_ram~192_q\ <= NOT \RAM1|ram~192_q\;
\RAM1|ALT_INV_ram~240_q\ <= NOT \RAM1|ram~240_q\;
\RAM1|ALT_INV_ram~176_q\ <= NOT \RAM1|ram~176_q\;
\RAM1|ALT_INV_ram~558_combout\ <= NOT \RAM1|ram~558_combout\;
\RAM1|ALT_INV_ram~128_q\ <= NOT \RAM1|ram~128_q\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~488_q\ <= NOT \RAM1|ram~488_q\;
\RAM1|ALT_INV_ram~472_q\ <= NOT \RAM1|ram~472_q\;
\RAM1|ALT_INV_ram~179_q\ <= NOT \RAM1|ram~179_q\;
\RAM1|ALT_INV_ram~617_combout\ <= NOT \RAM1|ram~617_combout\;
\RAM1|ALT_INV_ram~387_q\ <= NOT \RAM1|ram~387_q\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~371_q\ <= NOT \RAM1|ram~371_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~616_combout\ <= NOT \RAM1|ram~616_combout\;
\RAM1|ALT_INV_ram~323_q\ <= NOT \RAM1|ram~323_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~307_q\ <= NOT \RAM1|ram~307_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~615_combout\ <= NOT \RAM1|ram~615_combout\;
\RAM1|ALT_INV_ram~614_combout\ <= NOT \RAM1|ram~614_combout\;
\RAM1|ALT_INV_ram~483_q\ <= NOT \RAM1|ram~483_q\;
\RAM1|ALT_INV_ram~227_q\ <= NOT \RAM1|ram~227_q\;
\RAM1|ALT_INV_ram~467_q\ <= NOT \RAM1|ram~467_q\;
\RAM1|ALT_INV_ram~211_q\ <= NOT \RAM1|ram~211_q\;
\RAM1|ALT_INV_ram~613_combout\ <= NOT \RAM1|ram~613_combout\;
\RAM1|ALT_INV_ram~419_q\ <= NOT \RAM1|ram~419_q\;
\RAM1|ALT_INV_ram~163_q\ <= NOT \RAM1|ram~163_q\;
\RAM1|ALT_INV_ram~403_q\ <= NOT \RAM1|ram~403_q\;
\RAM1|ALT_INV_ram~147_q\ <= NOT \RAM1|ram~147_q\;
\RAM1|ALT_INV_ram~612_combout\ <= NOT \RAM1|ram~612_combout\;
\RAM1|ALT_INV_ram~355_q\ <= NOT \RAM1|ram~355_q\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~339_q\ <= NOT \RAM1|ram~339_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~611_combout\ <= NOT \RAM1|ram~611_combout\;
\RAM1|ALT_INV_ram~291_q\ <= NOT \RAM1|ram~291_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~275_q\ <= NOT \RAM1|ram~275_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~9_combout\;
\RAM1|ALT_INV_ram~610_combout\ <= NOT \RAM1|ram~610_combout\;
\RAM1|ALT_INV_ram~609_combout\ <= NOT \RAM1|ram~609_combout\;
\RAM1|ALT_INV_ram~608_combout\ <= NOT \RAM1|ram~608_combout\;
\RAM1|ALT_INV_ram~522_q\ <= NOT \RAM1|ram~522_q\;
\RAM1|ALT_INV_ram~458_q\ <= NOT \RAM1|ram~458_q\;
\RAM1|ALT_INV_ram~514_q\ <= NOT \RAM1|ram~514_q\;
\RAM1|ALT_INV_ram~450_q\ <= NOT \RAM1|ram~450_q\;
\RAM1|ALT_INV_ram~607_combout\ <= NOT \RAM1|ram~607_combout\;
\RAM1|ALT_INV_ram~490_q\ <= NOT \RAM1|ram~490_q\;
\RAM1|ALT_INV_ram~426_q\ <= NOT \RAM1|ram~426_q\;
\RAM1|ALT_INV_ram~482_q\ <= NOT \RAM1|ram~482_q\;
\RAM1|ALT_INV_ram~418_q\ <= NOT \RAM1|ram~418_q\;
\RAM1|ALT_INV_ram~606_combout\ <= NOT \RAM1|ram~606_combout\;
\RAM1|ALT_INV_ram~394_q\ <= NOT \RAM1|ram~394_q\;
\RAM1|ALT_INV_ram~330_q\ <= NOT \RAM1|ram~330_q\;
\RAM1|ALT_INV_ram~386_q\ <= NOT \RAM1|ram~386_q\;
\RAM1|ALT_INV_ram~322_q\ <= NOT \RAM1|ram~322_q\;
\RAM1|ALT_INV_ram~605_combout\ <= NOT \RAM1|ram~605_combout\;
\RAM1|ALT_INV_ram~362_q\ <= NOT \RAM1|ram~362_q\;
\RAM1|ALT_INV_ram~298_q\ <= NOT \RAM1|ram~298_q\;
\RAM1|ALT_INV_ram~354_q\ <= NOT \RAM1|ram~354_q\;
\RAM1|ALT_INV_ram~290_q\ <= NOT \RAM1|ram~290_q\;
\RAM1|ALT_INV_ram~604_combout\ <= NOT \RAM1|ram~604_combout\;
\RAM1|ALT_INV_ram~603_combout\ <= NOT \RAM1|ram~603_combout\;
\RAM1|ALT_INV_ram~266_q\ <= NOT \RAM1|ram~266_q\;
\RAM1|ALT_INV_ram~234_q\ <= NOT \RAM1|ram~234_q\;
\RAM1|ALT_INV_ram~258_q\ <= NOT \RAM1|ram~258_q\;
\RAM1|ALT_INV_ram~226_q\ <= NOT \RAM1|ram~226_q\;
\RAM1|ALT_INV_ram~602_combout\ <= NOT \RAM1|ram~602_combout\;
\RAM1|ALT_INV_ram~202_q\ <= NOT \RAM1|ram~202_q\;
\RAM1|ALT_INV_ram~170_q\ <= NOT \RAM1|ram~170_q\;
\RAM1|ALT_INV_ram~194_q\ <= NOT \RAM1|ram~194_q\;
\RAM1|ALT_INV_ram~162_q\ <= NOT \RAM1|ram~162_q\;
\RAM1|ALT_INV_ram~601_combout\ <= NOT \RAM1|ram~601_combout\;
\RAM1|ALT_INV_ram~138_q\ <= NOT \RAM1|ram~138_q\;
\RAM1|ALT_INV_ram~106_q\ <= NOT \RAM1|ram~106_q\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~600_combout\ <= NOT \RAM1|ram~600_combout\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~599_combout\ <= NOT \RAM1|ram~599_combout\;
\RAM1|ALT_INV_ram~598_combout\ <= NOT \RAM1|ram~598_combout\;
\RAM1|ALT_INV_ram~506_q\ <= NOT \RAM1|ram~506_q\;
\RAM1|ALT_INV_ram~378_q\ <= NOT \RAM1|ram~378_q\;
\RAM1|ALT_INV_ram~498_q\ <= NOT \RAM1|ram~498_q\;
\RAM1|ALT_INV_ram~370_q\ <= NOT \RAM1|ram~370_q\;
\RAM1|ALT_INV_ram~597_combout\ <= NOT \RAM1|ram~597_combout\;
\RAM1|ALT_INV_ram~442_q\ <= NOT \RAM1|ram~442_q\;
\RAM1|ALT_INV_ram~314_q\ <= NOT \RAM1|ram~314_q\;
\RAM1|ALT_INV_ram~434_q\ <= NOT \RAM1|ram~434_q\;
\RAM1|ALT_INV_ram~306_q\ <= NOT \RAM1|ram~306_q\;
\RAM1|ALT_INV_ram~596_combout\ <= NOT \RAM1|ram~596_combout\;
\RAM1|ALT_INV_ram~474_q\ <= NOT \RAM1|ram~474_q\;
\RAM1|ALT_INV_ram~346_q\ <= NOT \RAM1|ram~346_q\;
\RAM1|ALT_INV_ram~466_q\ <= NOT \RAM1|ram~466_q\;
\RAM1|ALT_INV_ram~338_q\ <= NOT \RAM1|ram~338_q\;
\RAM1|ALT_INV_ram~595_combout\ <= NOT \RAM1|ram~595_combout\;
\RAM1|ALT_INV_ram~410_q\ <= NOT \RAM1|ram~410_q\;
\RAM1|ALT_INV_ram~282_q\ <= NOT \RAM1|ram~282_q\;
\RAM1|ALT_INV_ram~402_q\ <= NOT \RAM1|ram~402_q\;
\RAM1|ALT_INV_ram~274_q\ <= NOT \RAM1|ram~274_q\;
\RAM1|ALT_INV_ram~594_combout\ <= NOT \RAM1|ram~594_combout\;
\RAM1|ALT_INV_ram~593_combout\ <= NOT \RAM1|ram~593_combout\;
\RAM1|ALT_INV_ram~250_q\ <= NOT \RAM1|ram~250_q\;
\RAM1|ALT_INV_ram~186_q\ <= NOT \RAM1|ram~186_q\;
\RAM1|ALT_INV_ram~242_q\ <= NOT \RAM1|ram~242_q\;
\RAM1|ALT_INV_ram~178_q\ <= NOT \RAM1|ram~178_q\;
\RAM1|ALT_INV_ram~592_combout\ <= NOT \RAM1|ram~592_combout\;
\RAM1|ALT_INV_ram~218_q\ <= NOT \RAM1|ram~218_q\;
\RAM1|ALT_INV_ram~154_q\ <= NOT \RAM1|ram~154_q\;
\RAM1|ALT_INV_ram~210_q\ <= NOT \RAM1|ram~210_q\;
\RAM1|ALT_INV_ram~146_q\ <= NOT \RAM1|ram~146_q\;
\RAM1|ALT_INV_ram~591_combout\ <= NOT \RAM1|ram~591_combout\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~590_combout\ <= NOT \RAM1|ram~590_combout\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~8_combout\;
\RAM1|ALT_INV_ram~589_combout\ <= NOT \RAM1|ram~589_combout\;
\RAM1|ALT_INV_ram~588_combout\ <= NOT \RAM1|ram~588_combout\;
\RAM1|ALT_INV_ram~587_combout\ <= NOT \RAM1|ram~587_combout\;
\RAM1|ALT_INV_ram~521_q\ <= NOT \RAM1|ram~521_q\;
\RAM1|ALT_INV_ram~489_q\ <= NOT \RAM1|ram~489_q\;
\RAM1|ALT_INV_ram~393_q\ <= NOT \RAM1|ram~393_q\;
\RAM1|ALT_INV_ram~361_q\ <= NOT \RAM1|ram~361_q\;
\RAM1|ALT_INV_ram~586_combout\ <= NOT \RAM1|ram~586_combout\;
\RAM1|ALT_INV_ram~648_combout\ <= NOT \RAM1|ram~648_combout\;
\RAM1|ALT_INV_ram~508_q\ <= NOT \RAM1|ram~508_q\;
\RAM1|ALT_INV_ram~476_q\ <= NOT \RAM1|ram~476_q\;
\RAM1|ALT_INV_ram~500_q\ <= NOT \RAM1|ram~500_q\;
\RAM1|ALT_INV_ram~468_q\ <= NOT \RAM1|ram~468_q\;
\RAM1|ALT_INV_ram~647_combout\ <= NOT \RAM1|ram~647_combout\;
\RAM1|ALT_INV_ram~444_q\ <= NOT \RAM1|ram~444_q\;
\RAM1|ALT_INV_ram~412_q\ <= NOT \RAM1|ram~412_q\;
\RAM1|ALT_INV_ram~436_q\ <= NOT \RAM1|ram~436_q\;
\RAM1|ALT_INV_ram~404_q\ <= NOT \RAM1|ram~404_q\;
\RAM1|ALT_INV_ram~646_combout\ <= NOT \RAM1|ram~646_combout\;
\RAM1|ALT_INV_ram~645_combout\ <= NOT \RAM1|ram~645_combout\;
\RAM1|ALT_INV_ram~268_q\ <= NOT \RAM1|ram~268_q\;
\RAM1|ALT_INV_ram~236_q\ <= NOT \RAM1|ram~236_q\;
\RAM1|ALT_INV_ram~260_q\ <= NOT \RAM1|ram~260_q\;
\RAM1|ALT_INV_ram~228_q\ <= NOT \RAM1|ram~228_q\;
\RAM1|ALT_INV_ram~644_combout\ <= NOT \RAM1|ram~644_combout\;
\RAM1|ALT_INV_ram~204_q\ <= NOT \RAM1|ram~204_q\;
\RAM1|ALT_INV_ram~172_q\ <= NOT \RAM1|ram~172_q\;
\RAM1|ALT_INV_ram~196_q\ <= NOT \RAM1|ram~196_q\;
\RAM1|ALT_INV_ram~164_q\ <= NOT \RAM1|ram~164_q\;
\RAM1|ALT_INV_ram~643_combout\ <= NOT \RAM1|ram~643_combout\;
\RAM1|ALT_INV_ram~252_q\ <= NOT \RAM1|ram~252_q\;
\RAM1|ALT_INV_ram~220_q\ <= NOT \RAM1|ram~220_q\;
\RAM1|ALT_INV_ram~244_q\ <= NOT \RAM1|ram~244_q\;
\RAM1|ALT_INV_ram~212_q\ <= NOT \RAM1|ram~212_q\;
\RAM1|ALT_INV_ram~642_combout\ <= NOT \RAM1|ram~642_combout\;
\RAM1|ALT_INV_ram~188_q\ <= NOT \RAM1|ram~188_q\;
\RAM1|ALT_INV_ram~156_q\ <= NOT \RAM1|ram~156_q\;
\RAM1|ALT_INV_ram~180_q\ <= NOT \RAM1|ram~180_q\;
\RAM1|ALT_INV_ram~148_q\ <= NOT \RAM1|ram~148_q\;
\RAM1|ALT_INV_ram~641_combout\ <= NOT \RAM1|ram~641_combout\;
\RAM1|ALT_INV_ram~640_combout\ <= NOT \RAM1|ram~640_combout\;
\RAM1|ALT_INV_ram~396_q\ <= NOT \RAM1|ram~396_q\;
\RAM1|ALT_INV_ram~332_q\ <= NOT \RAM1|ram~332_q\;
\RAM1|ALT_INV_ram~380_q\ <= NOT \RAM1|ram~380_q\;
\RAM1|ALT_INV_ram~316_q\ <= NOT \RAM1|ram~316_q\;
\RAM1|ALT_INV_ram~639_combout\ <= NOT \RAM1|ram~639_combout\;
\RAM1|ALT_INV_ram~364_q\ <= NOT \RAM1|ram~364_q\;
\RAM1|ALT_INV_ram~300_q\ <= NOT \RAM1|ram~300_q\;
\RAM1|ALT_INV_ram~348_q\ <= NOT \RAM1|ram~348_q\;
\RAM1|ALT_INV_ram~284_q\ <= NOT \RAM1|ram~284_q\;
\RAM1|ALT_INV_ram~638_combout\ <= NOT \RAM1|ram~638_combout\;
\RAM1|ALT_INV_ram~388_q\ <= NOT \RAM1|ram~388_q\;
\RAM1|ALT_INV_ram~324_q\ <= NOT \RAM1|ram~324_q\;
\RAM1|ALT_INV_ram~372_q\ <= NOT \RAM1|ram~372_q\;
\RAM1|ALT_INV_ram~308_q\ <= NOT \RAM1|ram~308_q\;
\RAM1|ALT_INV_ram~637_combout\ <= NOT \RAM1|ram~637_combout\;
\RAM1|ALT_INV_ram~356_q\ <= NOT \RAM1|ram~356_q\;
\RAM1|ALT_INV_ram~292_q\ <= NOT \RAM1|ram~292_q\;
\RAM1|ALT_INV_ram~340_q\ <= NOT \RAM1|ram~340_q\;
\RAM1|ALT_INV_ram~276_q\ <= NOT \RAM1|ram~276_q\;
\RAM1|ALT_INV_ram~636_combout\ <= NOT \RAM1|ram~636_combout\;
\RAM1|ALT_INV_ram~635_combout\ <= NOT \RAM1|ram~635_combout\;
\RAM1|ALT_INV_ram~140_q\ <= NOT \RAM1|ram~140_q\;
\RAM1|ALT_INV_ram~108_q\ <= NOT \RAM1|ram~108_q\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~634_combout\ <= NOT \RAM1|ram~634_combout\;
\RAM1|ALT_INV_ram~76_q\ <= NOT \RAM1|ram~76_q\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~633_combout\ <= NOT \RAM1|ram~633_combout\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~632_combout\ <= NOT \RAM1|ram~632_combout\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~10_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~10_combout\;
\RAM1|ALT_INV_ram~631_combout\ <= NOT \RAM1|ram~631_combout\;
\RAM1|ALT_INV_ram~630_combout\ <= NOT \RAM1|ram~630_combout\;
\RAM1|ALT_INV_ram~629_combout\ <= NOT \RAM1|ram~629_combout\;
\RAM1|ALT_INV_ram~523_q\ <= NOT \RAM1|ram~523_q\;
\RAM1|ALT_INV_ram~267_q\ <= NOT \RAM1|ram~267_q\;
\RAM1|ALT_INV_ram~395_q\ <= NOT \RAM1|ram~395_q\;
\RAM1|ALT_INV_ram~139_q\ <= NOT \RAM1|ram~139_q\;
\RAM1|ALT_INV_ram~628_combout\ <= NOT \RAM1|ram~628_combout\;
\RAM1|ALT_INV_ram~459_q\ <= NOT \RAM1|ram~459_q\;
\RAM1|ALT_INV_ram~203_q\ <= NOT \RAM1|ram~203_q\;
\RAM1|ALT_INV_ram~331_q\ <= NOT \RAM1|ram~331_q\;
\RAM1|ALT_INV_ram~75_q\ <= NOT \RAM1|ram~75_q\;
\RAM1|ALT_INV_ram~627_combout\ <= NOT \RAM1|ram~627_combout\;
\RAM1|ALT_INV_ram~507_q\ <= NOT \RAM1|ram~507_q\;
\RAM1|ALT_INV_ram~251_q\ <= NOT \RAM1|ram~251_q\;
\RAM1|ALT_INV_ram~379_q\ <= NOT \RAM1|ram~379_q\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~626_combout\ <= NOT \RAM1|ram~626_combout\;
\RAM1|ALT_INV_ram~443_q\ <= NOT \RAM1|ram~443_q\;
\RAM1|ALT_INV_ram~187_q\ <= NOT \RAM1|ram~187_q\;
\RAM1|ALT_INV_ram~315_q\ <= NOT \RAM1|ram~315_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~625_combout\ <= NOT \RAM1|ram~625_combout\;
\RAM1|ALT_INV_ram~624_combout\ <= NOT \RAM1|ram~624_combout\;
\RAM1|ALT_INV_ram~491_q\ <= NOT \RAM1|ram~491_q\;
\RAM1|ALT_INV_ram~235_q\ <= NOT \RAM1|ram~235_q\;
\RAM1|ALT_INV_ram~475_q\ <= NOT \RAM1|ram~475_q\;
\RAM1|ALT_INV_ram~219_q\ <= NOT \RAM1|ram~219_q\;
\RAM1|ALT_INV_ram~623_combout\ <= NOT \RAM1|ram~623_combout\;
\RAM1|ALT_INV_ram~427_q\ <= NOT \RAM1|ram~427_q\;
\RAM1|ALT_INV_ram~171_q\ <= NOT \RAM1|ram~171_q\;
\RAM1|ALT_INV_ram~411_q\ <= NOT \RAM1|ram~411_q\;
\RAM1|ALT_INV_ram~155_q\ <= NOT \RAM1|ram~155_q\;
\RAM1|ALT_INV_ram~622_combout\ <= NOT \RAM1|ram~622_combout\;
\RAM1|ALT_INV_ram~363_q\ <= NOT \RAM1|ram~363_q\;
\RAM1|ALT_INV_ram~107_q\ <= NOT \RAM1|ram~107_q\;
\RAM1|ALT_INV_ram~347_q\ <= NOT \RAM1|ram~347_q\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~621_combout\ <= NOT \RAM1|ram~621_combout\;
\RAM1|ALT_INV_ram~299_q\ <= NOT \RAM1|ram~299_q\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~283_q\ <= NOT \RAM1|ram~283_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~620_combout\ <= NOT \RAM1|ram~620_combout\;
\RAM1|ALT_INV_ram~619_combout\ <= NOT \RAM1|ram~619_combout\;
\RAM1|ALT_INV_ram~515_q\ <= NOT \RAM1|ram~515_q\;
\RAM1|ALT_INV_ram~259_q\ <= NOT \RAM1|ram~259_q\;
\RAM1|ALT_INV_ram~499_q\ <= NOT \RAM1|ram~499_q\;
\RAM1|ALT_INV_ram~243_q\ <= NOT \RAM1|ram~243_q\;
\RAM1|ALT_INV_ram~618_combout\ <= NOT \RAM1|ram~618_combout\;
\RAM1|ALT_INV_ram~451_q\ <= NOT \RAM1|ram~451_q\;
\RAM1|ALT_INV_ram~195_q\ <= NOT \RAM1|ram~195_q\;
\RAM1|ALT_INV_ram~435_q\ <= NOT \RAM1|ram~435_q\;
\RAM1|ALT_INV_ram~470_q\ <= NOT \RAM1|ram~470_q\;
\RAM1|ALT_INV_ram~214_q\ <= NOT \RAM1|ram~214_q\;
\RAM1|ALT_INV_ram~679_combout\ <= NOT \RAM1|ram~679_combout\;
\RAM1|ALT_INV_ram~358_q\ <= NOT \RAM1|ram~358_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~342_q\ <= NOT \RAM1|ram~342_q\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~678_combout\ <= NOT \RAM1|ram~678_combout\;
\RAM1|ALT_INV_ram~677_combout\ <= NOT \RAM1|ram~677_combout\;
\RAM1|ALT_INV_ram~430_q\ <= NOT \RAM1|ram~430_q\;
\RAM1|ALT_INV_ram~174_q\ <= NOT \RAM1|ram~174_q\;
\RAM1|ALT_INV_ram~414_q\ <= NOT \RAM1|ram~414_q\;
\RAM1|ALT_INV_ram~158_q\ <= NOT \RAM1|ram~158_q\;
\RAM1|ALT_INV_ram~676_combout\ <= NOT \RAM1|ram~676_combout\;
\RAM1|ALT_INV_ram~302_q\ <= NOT \RAM1|ram~302_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~286_q\ <= NOT \RAM1|ram~286_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~675_combout\ <= NOT \RAM1|ram~675_combout\;
\RAM1|ALT_INV_ram~422_q\ <= NOT \RAM1|ram~422_q\;
\RAM1|ALT_INV_ram~166_q\ <= NOT \RAM1|ram~166_q\;
\RAM1|ALT_INV_ram~406_q\ <= NOT \RAM1|ram~406_q\;
\RAM1|ALT_INV_ram~150_q\ <= NOT \RAM1|ram~150_q\;
\RAM1|ALT_INV_ram~674_combout\ <= NOT \RAM1|ram~674_combout\;
\RAM1|ALT_INV_ram~294_q\ <= NOT \RAM1|ram~294_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~278_q\ <= NOT \RAM1|ram~278_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~12_combout\;
\RAM1|ALT_INV_ram~673_combout\ <= NOT \RAM1|ram~673_combout\;
\RAM1|ALT_INV_ram~672_combout\ <= NOT \RAM1|ram~672_combout\;
\RAM1|ALT_INV_ram~671_combout\ <= NOT \RAM1|ram~671_combout\;
\RAM1|ALT_INV_ram~525_q\ <= NOT \RAM1|ram~525_q\;
\RAM1|ALT_INV_ram~269_q\ <= NOT \RAM1|ram~269_q\;
\RAM1|ALT_INV_ram~493_q\ <= NOT \RAM1|ram~493_q\;
\RAM1|ALT_INV_ram~237_q\ <= NOT \RAM1|ram~237_q\;
\RAM1|ALT_INV_ram~670_combout\ <= NOT \RAM1|ram~670_combout\;
\RAM1|ALT_INV_ram~461_q\ <= NOT \RAM1|ram~461_q\;
\RAM1|ALT_INV_ram~205_q\ <= NOT \RAM1|ram~205_q\;
\RAM1|ALT_INV_ram~429_q\ <= NOT \RAM1|ram~429_q\;
\RAM1|ALT_INV_ram~173_q\ <= NOT \RAM1|ram~173_q\;
\RAM1|ALT_INV_ram~669_combout\ <= NOT \RAM1|ram~669_combout\;
\RAM1|ALT_INV_ram~397_q\ <= NOT \RAM1|ram~397_q\;
\RAM1|ALT_INV_ram~141_q\ <= NOT \RAM1|ram~141_q\;
\RAM1|ALT_INV_ram~365_q\ <= NOT \RAM1|ram~365_q\;
\RAM1|ALT_INV_ram~109_q\ <= NOT \RAM1|ram~109_q\;
\RAM1|ALT_INV_ram~668_combout\ <= NOT \RAM1|ram~668_combout\;
\RAM1|ALT_INV_ram~333_q\ <= NOT \RAM1|ram~333_q\;
\RAM1|ALT_INV_ram~77_q\ <= NOT \RAM1|ram~77_q\;
\RAM1|ALT_INV_ram~301_q\ <= NOT \RAM1|ram~301_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~667_combout\ <= NOT \RAM1|ram~667_combout\;
\RAM1|ALT_INV_ram~666_combout\ <= NOT \RAM1|ram~666_combout\;
\RAM1|ALT_INV_ram~517_q\ <= NOT \RAM1|ram~517_q\;
\RAM1|ALT_INV_ram~261_q\ <= NOT \RAM1|ram~261_q\;
\RAM1|ALT_INV_ram~453_q\ <= NOT \RAM1|ram~453_q\;
\RAM1|ALT_INV_ram~197_q\ <= NOT \RAM1|ram~197_q\;
\RAM1|ALT_INV_ram~665_combout\ <= NOT \RAM1|ram~665_combout\;
\RAM1|ALT_INV_ram~485_q\ <= NOT \RAM1|ram~485_q\;
\RAM1|ALT_INV_ram~229_q\ <= NOT \RAM1|ram~229_q\;
\RAM1|ALT_INV_ram~421_q\ <= NOT \RAM1|ram~421_q\;
\RAM1|ALT_INV_ram~165_q\ <= NOT \RAM1|ram~165_q\;
\RAM1|ALT_INV_ram~664_combout\ <= NOT \RAM1|ram~664_combout\;
\RAM1|ALT_INV_ram~389_q\ <= NOT \RAM1|ram~389_q\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~325_q\ <= NOT \RAM1|ram~325_q\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~663_combout\ <= NOT \RAM1|ram~663_combout\;
\RAM1|ALT_INV_ram~357_q\ <= NOT \RAM1|ram~357_q\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~293_q\ <= NOT \RAM1|ram~293_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~662_combout\ <= NOT \RAM1|ram~662_combout\;
\RAM1|ALT_INV_ram~661_combout\ <= NOT \RAM1|ram~661_combout\;
\RAM1|ALT_INV_ram~509_q\ <= NOT \RAM1|ram~509_q\;
\RAM1|ALT_INV_ram~253_q\ <= NOT \RAM1|ram~253_q\;
\RAM1|ALT_INV_ram~381_q\ <= NOT \RAM1|ram~381_q\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~660_combout\ <= NOT \RAM1|ram~660_combout\;
\RAM1|ALT_INV_ram~445_q\ <= NOT \RAM1|ram~445_q\;
\RAM1|ALT_INV_ram~189_q\ <= NOT \RAM1|ram~189_q\;
\RAM1|ALT_INV_ram~317_q\ <= NOT \RAM1|ram~317_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~659_combout\ <= NOT \RAM1|ram~659_combout\;
\RAM1|ALT_INV_ram~477_q\ <= NOT \RAM1|ram~477_q\;
\RAM1|ALT_INV_ram~221_q\ <= NOT \RAM1|ram~221_q\;
\RAM1|ALT_INV_ram~349_q\ <= NOT \RAM1|ram~349_q\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~658_combout\ <= NOT \RAM1|ram~658_combout\;
\RAM1|ALT_INV_ram~413_q\ <= NOT \RAM1|ram~413_q\;
\RAM1|ALT_INV_ram~157_q\ <= NOT \RAM1|ram~157_q\;
\RAM1|ALT_INV_ram~285_q\ <= NOT \RAM1|ram~285_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~657_combout\ <= NOT \RAM1|ram~657_combout\;
\RAM1|ALT_INV_ram~656_combout\ <= NOT \RAM1|ram~656_combout\;
\RAM1|ALT_INV_ram~501_q\ <= NOT \RAM1|ram~501_q\;
\RAM1|ALT_INV_ram~245_q\ <= NOT \RAM1|ram~245_q\;
\RAM1|ALT_INV_ram~373_q\ <= NOT \RAM1|ram~373_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~655_combout\ <= NOT \RAM1|ram~655_combout\;
\RAM1|ALT_INV_ram~437_q\ <= NOT \RAM1|ram~437_q\;
\RAM1|ALT_INV_ram~181_q\ <= NOT \RAM1|ram~181_q\;
\RAM1|ALT_INV_ram~309_q\ <= NOT \RAM1|ram~309_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~654_combout\ <= NOT \RAM1|ram~654_combout\;
\RAM1|ALT_INV_ram~469_q\ <= NOT \RAM1|ram~469_q\;
\RAM1|ALT_INV_ram~213_q\ <= NOT \RAM1|ram~213_q\;
\RAM1|ALT_INV_ram~341_q\ <= NOT \RAM1|ram~341_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~653_combout\ <= NOT \RAM1|ram~653_combout\;
\RAM1|ALT_INV_ram~405_q\ <= NOT \RAM1|ram~405_q\;
\RAM1|ALT_INV_ram~149_q\ <= NOT \RAM1|ram~149_q\;
\RAM1|ALT_INV_ram~277_q\ <= NOT \RAM1|ram~277_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~11_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~11_combout\;
\RAM1|ALT_INV_ram~652_combout\ <= NOT \RAM1|ram~652_combout\;
\RAM1|ALT_INV_ram~651_combout\ <= NOT \RAM1|ram~651_combout\;
\RAM1|ALT_INV_ram~650_combout\ <= NOT \RAM1|ram~650_combout\;
\RAM1|ALT_INV_ram~524_q\ <= NOT \RAM1|ram~524_q\;
\RAM1|ALT_INV_ram~492_q\ <= NOT \RAM1|ram~492_q\;
\RAM1|ALT_INV_ram~516_q\ <= NOT \RAM1|ram~516_q\;
\RAM1|ALT_INV_ram~484_q\ <= NOT \RAM1|ram~484_q\;
\RAM1|ALT_INV_ram~649_combout\ <= NOT \RAM1|ram~649_combout\;
\RAM1|ALT_INV_ram~460_q\ <= NOT \RAM1|ram~460_q\;
\RAM1|ALT_INV_ram~428_q\ <= NOT \RAM1|ram~428_q\;
\RAM1|ALT_INV_ram~452_q\ <= NOT \RAM1|ram~452_q\;
\RAM1|ALT_INV_ram~420_q\ <= NOT \RAM1|ram~420_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ED1|ALT_INV_saidaQ~0_combout\ <= NOT \ED1|saidaQ~0_combout\;
\ROM1|ALT_INV_memROM~81_combout\ <= NOT \ROM1|memROM~81_combout\;
\ROM1|ALT_INV_memROM~80_combout\ <= NOT \ROM1|memROM~80_combout\;
\ROM1|ALT_INV_memROM~79_combout\ <= NOT \ROM1|memROM~79_combout\;
\ROM1|ALT_INV_memROM~78_combout\ <= NOT \ROM1|memROM~78_combout\;
\ROM1|ALT_INV_memROM~77_combout\ <= NOT \ROM1|memROM~77_combout\;
\ROM1|ALT_INV_memROM~76_combout\ <= NOT \ROM1|memROM~76_combout\;
\ROM1|ALT_INV_memROM~75_combout\ <= NOT \ROM1|memROM~75_combout\;
\ROM1|ALT_INV_memROM~74_combout\ <= NOT \ROM1|memROM~74_combout\;
\ROM1|ALT_INV_memROM~61_combout\ <= NOT \ROM1|memROM~61_combout\;
\ROM1|ALT_INV_memROM~60_combout\ <= NOT \ROM1|memROM~60_combout\;
\ROM1|ALT_INV_memROM~59_combout\ <= NOT \ROM1|memROM~59_combout\;
\ROM1|ALT_INV_memROM~58_combout\ <= NOT \ROM1|memROM~58_combout\;
\ED0|ALT_INV_saidaQ~q\ <= NOT \ED0|saidaQ~q\;
\ED1|ALT_INV_saidaQ~q\ <= NOT \ED1|saidaQ~q\;
\CPU1|ULA1|ALT_INV_Equal1~1_combout\ <= NOT \CPU1|ULA1|Equal1~1_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~7_combout\ <= NOT \CPU1|FlagZero1|DOUT~7_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~6_combout\ <= NOT \CPU1|FlagZero1|DOUT~6_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~5_combout\ <= NOT \CPU1|FlagZero1|DOUT~5_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~4_combout\ <= NOT \CPU1|FlagZero1|DOUT~4_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~20_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~20_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~19_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~19_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~3_combout\ <= NOT \CPU1|FlagZero1|DOUT~3_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[7]~18_combout\ <= NOT \CPU1|MUX1|saida_MUX[7]~18_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~2_combout\ <= NOT \CPU1|FlagZero1|DOUT~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~17_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~17_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~16_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~16_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~1_combout\ <= NOT \CPU1|FlagZero1|DOUT~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~15_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~15_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~14_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~14_combout\;
\CPU1|FlagZero1|ALT_INV_DOUT~0_combout\ <= NOT \CPU1|FlagZero1|DOUT~0_combout\;
\CPU1|DECODER1|ALT_INV_saida~3_combout\ <= NOT \CPU1|DECODER1|saida~3_combout\;
\ALT_INV_comb~13_combout\ <= NOT \comb~13_combout\;
\ALT_INV_comb~12_combout\ <= NOT \comb~12_combout\;
\ALT_INV_comb~11_combout\ <= NOT \comb~11_combout\;
\RAM1|ALT_INV_ram~821_combout\ <= NOT \RAM1|ram~821_combout\;
\RAM1|ALT_INV_ram~819_combout\ <= NOT \RAM1|ram~819_combout\;
\RAM1|ALT_INV_ram~817_combout\ <= NOT \RAM1|ram~817_combout\;
\RAM1|ALT_INV_ram~815_combout\ <= NOT \RAM1|ram~815_combout\;
\RAM1|ALT_INV_ram~813_combout\ <= NOT \RAM1|ram~813_combout\;
\RAM1|ALT_INV_ram~811_combout\ <= NOT \RAM1|ram~811_combout\;
\RAM1|ALT_INV_ram~809_combout\ <= NOT \RAM1|ram~809_combout\;
\RAM1|ALT_INV_ram~807_combout\ <= NOT \RAM1|ram~807_combout\;
\RAM1|ALT_INV_ram~805_combout\ <= NOT \RAM1|ram~805_combout\;
\RAM1|ALT_INV_ram~803_combout\ <= NOT \RAM1|ram~803_combout\;
\RAM1|ALT_INV_ram~801_combout\ <= NOT \RAM1|ram~801_combout\;
\RAM1|ALT_INV_ram~799_combout\ <= NOT \RAM1|ram~799_combout\;
\RAM1|ALT_INV_ram~797_combout\ <= NOT \RAM1|ram~797_combout\;
\RAM1|ALT_INV_ram~795_combout\ <= NOT \RAM1|ram~795_combout\;
\RAM1|ALT_INV_ram~793_combout\ <= NOT \RAM1|ram~793_combout\;
\RAM1|ALT_INV_ram~791_combout\ <= NOT \RAM1|ram~791_combout\;
\RAM1|ALT_INV_ram~789_combout\ <= NOT \RAM1|ram~789_combout\;
\RAM1|ALT_INV_ram~787_combout\ <= NOT \RAM1|ram~787_combout\;
\RAM1|ALT_INV_ram~785_combout\ <= NOT \RAM1|ram~785_combout\;
\RAM1|ALT_INV_ram~783_combout\ <= NOT \RAM1|ram~783_combout\;
\RAM1|ALT_INV_ram~781_combout\ <= NOT \RAM1|ram~781_combout\;
\RAM1|ALT_INV_ram~779_combout\ <= NOT \RAM1|ram~779_combout\;
\RAM1|ALT_INV_ram~777_combout\ <= NOT \RAM1|ram~777_combout\;
\RAM1|ALT_INV_ram~775_combout\ <= NOT \RAM1|ram~775_combout\;
\RAM1|ALT_INV_ram~773_combout\ <= NOT \RAM1|ram~773_combout\;
\RAM1|ALT_INV_ram~771_combout\ <= NOT \RAM1|ram~771_combout\;
\RAM1|ALT_INV_ram~769_combout\ <= NOT \RAM1|ram~769_combout\;
\RAM1|ALT_INV_ram~767_combout\ <= NOT \RAM1|ram~767_combout\;
\RAM1|ALT_INV_ram~765_combout\ <= NOT \RAM1|ram~765_combout\;
\RAM1|ALT_INV_ram~763_combout\ <= NOT \RAM1|ram~763_combout\;
\RAM1|ALT_INV_ram~761_combout\ <= NOT \RAM1|ram~761_combout\;
\RH0|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \RH0|DOUT[3]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[6]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[7]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[4]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[2]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[1]~DUPLICATE_q\;
\CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU1|PC|DOUT[8]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
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
	i => \REG1|DOUT\(1),
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
	i => \REG1|DOUT\(2),
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
	i => \REG1|DOUT\(3),
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
	i => \REG1|DOUT\(4),
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
	i => \REG1|DOUT\(5),
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
	i => \REG1|DOUT\(6),
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
	i => \REG1|DOUT\(7),
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
	i => \FF1|DOUT~q\,
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
	i => \FF2|DOUT~q\,
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
	i => \DHEX0|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX0|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX0|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX0|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX0|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX0|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX0|rascSaida7seg[6]~6_combout\,
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
	i => \DHEX1|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX1|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX1|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX1|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX1|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX1|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX1|rascSaida7seg[6]~6_combout\,
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
	i => \DHEX2|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX2|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX2|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX2|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX2|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX2|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX2|rascSaida7seg[6]~6_combout\,
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
	i => \DHEX3|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX3|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX3|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX3|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX3|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX3|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX3|rascSaida7seg[6]~6_combout\,
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
	i => \DHEX4|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX4|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX4|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX4|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX4|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX4|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX4|rascSaida7seg[6]~6_combout\,
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
	i => \DHEX5|rascSaida7seg[0]~0_combout\,
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
	i => \DHEX5|rascSaida7seg[1]~1_combout\,
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
	i => \DHEX5|rascSaida7seg[2]~2_combout\,
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
	i => \DHEX5|rascSaida7seg[3]~3_combout\,
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
	i => \DHEX5|rascSaida7seg[4]~4_combout\,
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
	i => \DHEX5|rascSaida7seg[5]~5_combout\,
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
	i => \DHEX5|rascSaida7seg[6]~6_combout\,
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

-- Location: FF_X29_Y3_N35
\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[8]~0_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

-- Location: FF_X29_Y3_N7
\CPU1|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[6]~8_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y3_N42
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0)) # (\CPU1|PC|DOUT\(5))))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( 
-- !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT[7]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000000011000000011010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: FF_X31_Y3_N34
\CPU1|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[2]~3_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y3_N18
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(3))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ (\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(0) & 
-- ((!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(3) & ((\CPU1|PC|DOUT\(5)))))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ $ (\CPU1|PC|DOUT\(3))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU1|PC|DOUT\(5))))) # 
-- (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT[2]~DUPLICATE_q\) # (!\CPU1|PC|DOUT\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100101010100010000000001000010010001000011010010000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X32_Y3_N12
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((\CPU1|PC|DOUT\(3)))))) 
-- ) ) ) # ( !\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0))))) ) ) ) # ( \CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(5) & ( 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((\CPU1|PC|DOUT\(3)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((\CPU1|PC|DOUT\(3))))) ) ) ) # ( 
-- !\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ((!\CPU1|PC|DOUT\(0)) # (!\CPU1|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001001100000100000001110011000000000100011000000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X32_Y3_N36
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5))) # (\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ $ (((\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- \CPU1|PC|DOUT\(5)))))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- ((\CPU1|PC|DOUT\(3)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(5)))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(3))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5))) # 
-- (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010110000100010011010010011000000000110010011001010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X32_Y3_N30
\ROM1|memROM~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~82_combout\ = ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( ((!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~6_combout\)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~7_combout\)))))) ) ) # ( 
-- \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( ((!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~8_combout\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datag => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~82_combout\);

-- Location: MLABCELL_X28_Y6_N0
\CPU1|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~5_sumout\ = SUM(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU1|incrementaPC|Add0~6\ = CARRY(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU1|incrementaPC|Add0~5_sumout\,
	cout => \CPU1|incrementaPC|Add0~6\);

-- Location: MLABCELL_X28_Y3_N42
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000101010100000000010101010000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~17_combout\);

-- Location: MLABCELL_X28_Y3_N18
\ROM1|memROM~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~81_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(5))) # (\CPU1|PC|DOUT\(2) & 
-- ((\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) $ 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3) $ (((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(2)))))) # (\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(2)))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000100100100110011101000101000101000001110011010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~81_combout\);

-- Location: MLABCELL_X28_Y3_N0
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(5) & (((!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & 
-- !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(2) & ( (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(5) & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\ 
-- & ((!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # 
-- (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(5) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000010010100000001100100000100000010100000010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~15_combout\);

-- Location: MLABCELL_X28_Y3_N36
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- ((\CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ((!\CPU1|PC|DOUT\(5)) # (!\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((\CPU1|PC|DOUT\(0)) # (\CPU1|PC|DOUT\(5))))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(2) & ( 
-- (!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011000001000110011100110000010011110010001000001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X28_Y3_N48
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~16_combout\ & ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\ROM1|memROM~81_combout\))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~17_combout\)) ) ) ) # ( !\ROM1|memROM~16_combout\ 
-- & ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\ROM1|memROM~81_combout\))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~17_combout\)) ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( 
-- (!\ROM1|memROM~15_combout\) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\ROM1|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000111111110101010110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~81_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X35_Y5_N54
\CPU1|DECODER1|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida~4_combout\ = ( !\ROM1|memROM~24_combout\ & ( (\ROM1|memROM~27_combout\ & (!\ROM1|memROM~14_combout\ & (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~27_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU1|DECODER1|saida~4_combout\);

-- Location: FF_X28_Y6_N2
\CPU1|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(0));

-- Location: LABCELL_X29_Y6_N33
\CPU1|MUX2|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[0]~1_combout\ = ( \CPU1|REG_RETORNO|DOUT\(0) & ( \CPU1|MUX2|Equal2~0_combout\ & ( (!\CPU1|LogicaDesvio1|saida[0]~0_combout\) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\CPU1|REG_RETORNO|DOUT\(0) & ( \CPU1|MUX2|Equal2~0_combout\ & ( 
-- (\CPU1|LogicaDesvio1|saida[0]~0_combout\ & \ROM1|memROM~82_combout\) ) ) ) # ( \CPU1|REG_RETORNO|DOUT\(0) & ( !\CPU1|MUX2|Equal2~0_combout\ & ( \CPU1|incrementaPC|Add0~5_sumout\ ) ) ) # ( !\CPU1|REG_RETORNO|DOUT\(0) & ( !\CPU1|MUX2|Equal2~0_combout\ & ( 
-- \CPU1|incrementaPC|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \CPU1|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \CPU1|REG_RETORNO|ALT_INV_DOUT\(0),
	dataf => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	combout => \CPU1|MUX2|saida_MUX[0]~1_combout\);

-- Location: FF_X29_Y6_N35
\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[0]~1_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

-- Location: MLABCELL_X28_Y6_N3
\CPU1|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~9_sumout\ = SUM(( \CPU1|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))
-- \CPU1|incrementaPC|Add0~10\ = CARRY(( \CPU1|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU1|incrementaPC|Add0~6\,
	sumout => \CPU1|incrementaPC|Add0~9_sumout\,
	cout => \CPU1|incrementaPC|Add0~10\);

-- Location: FF_X28_Y6_N4
\CPU1|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(1));

-- Location: LABCELL_X31_Y4_N36
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(0))))) ) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(0)))) ) ) ) # ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & 
-- \CPU1|PC|DOUT\(0)))) ) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000000000000010000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X29_Y4_N6
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU1|PC|DOUT\(5) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) $ (((\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & 
-- ((\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(5) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & 
-- (!\CPU1|PC|DOUT\(3) & \CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(5) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(2) & 
-- (!\CPU1|PC|DOUT\(3) $ (((\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(5) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(0) & 
-- ((\CPU1|PC|DOUT\(3)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011110110001011000010101000000100000010000101001000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X31_Y4_N0
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(5))) # (\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(0))))) ) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(0)))) ) ) ) # ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (((\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT\(0)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(0))))) ) ) ) # ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT\(5)) # (\CPU1|PC|DOUT\(0)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & 
-- !\CPU1|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000100010100011001000011100000001000000000011100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~1_combout\);

-- Location: FF_X31_Y4_N8
\CPU1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[7]~7_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(7));

-- Location: LABCELL_X31_Y3_N6
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\)) ) ) ) # ( 
-- !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(2)))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(2) & 
-- \CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(5) & 
-- ((\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ 
-- (!\CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011110100000000100101001001100100000100110010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X31_Y4_N12
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~2_combout\ & ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(7)) # (\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (\ROM1|memROM~3_combout\ & 
-- \CPU1|PC|DOUT\(7)) ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(7) & (\ROM1|memROM~0_combout\)) # (\CPU1|PC|DOUT\(7) & ((\ROM1|memROM~1_combout\))) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( 
-- !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(7) & (\ROM1|memROM~0_combout\)) # (\CPU1|PC|DOUT\(7) & ((\ROM1|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X31_Y4_N51
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X31_Y4_N30
\CPU1|MUX2|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[1]~2_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~9_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|REG_RETORNO|DOUT\(1))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\))) ) 
-- ) # ( !\ROM1|memROM~5_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~9_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & (\CPU1|REG_RETORNO|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU1|REG_RETORNO|ALT_INV_DOUT\(1),
	datad => \CPU1|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU1|MUX2|saida_MUX[1]~2_combout\);

-- Location: FF_X31_Y4_N31
\CPU1|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[1]~2_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y6_N6
\CPU1|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~13_sumout\ = SUM(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))
-- \CPU1|incrementaPC|Add0~14\ = CARRY(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	cin => \CPU1|incrementaPC|Add0~10\,
	sumout => \CPU1|incrementaPC|Add0~13_sumout\,
	cout => \CPU1|incrementaPC|Add0~14\);

-- Location: FF_X28_Y6_N7
\CPU1|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~13_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(2));

-- Location: LABCELL_X31_Y3_N48
\ROM1|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~37_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(5) $ (!\CPU1|PC|DOUT\(2) $ (\CPU1|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(5) & (((\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & 
-- (\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100001000000101010111001000001000100011010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~37_combout\);

-- Location: LABCELL_X31_Y3_N36
\ROM1|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~40_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~40_combout\);

-- Location: LABCELL_X31_Y3_N0
\ROM1|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~39_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(5) & 
-- (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & !\CPU1|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # ((!\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & ((\CPU1|PC|DOUT\(2)))))) ) ) ) # ( 
-- \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & 
-- \CPU1|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(0) & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # 
-- (\CPU1|PC|DOUT\(5))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110101000100100100100001010011001110101001110111100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~39_combout\);

-- Location: LABCELL_X31_Y3_N24
\ROM1|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~38_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(0)) # 
-- (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT\(5) & (((!\CPU1|PC|DOUT\(2) & 
-- \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(5) & (((!\CPU1|PC|DOUT\(2)) # 
-- (\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(2)) # ((!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010100010100100101010100000010010110100100100001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~38_combout\);

-- Location: LABCELL_X31_Y3_N12
\ROM1|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~41_combout\ = ( \ROM1|memROM~39_combout\ & ( \ROM1|memROM~38_combout\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU1|PC|DOUT[7]~DUPLICATE_q\)) # (\ROM1|memROM~37_combout\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- (((!\CPU1|PC|DOUT[7]~DUPLICATE_q\) # (\ROM1|memROM~40_combout\)))) ) ) ) # ( !\ROM1|memROM~39_combout\ & ( \ROM1|memROM~38_combout\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU1|PC|DOUT[7]~DUPLICATE_q\)) # (\ROM1|memROM~37_combout\))) # 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\ROM1|memROM~40_combout\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \ROM1|memROM~39_combout\ & ( !\ROM1|memROM~38_combout\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~37_combout\ & 
-- ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT[7]~DUPLICATE_q\) # (\ROM1|memROM~40_combout\)))) ) ) ) # ( !\ROM1|memROM~39_combout\ & ( !\ROM1|memROM~38_combout\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- (\ROM1|memROM~37_combout\ & ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\ROM1|memROM~40_combout\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~37_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~40_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~39_combout\,
	dataf => \ROM1|ALT_INV_memROM~38_combout\,
	combout => \ROM1|memROM~41_combout\);

-- Location: LABCELL_X31_Y3_N18
\ROM1|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~42_combout\ = ( \ROM1|memROM~41_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~41_combout\,
	combout => \ROM1|memROM~42_combout\);

-- Location: LABCELL_X31_Y3_N33
\CPU1|MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[2]~3_combout\ = ( \ROM1|memROM~42_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~13_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|REG_RETORNO|DOUT\(2))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\))) 
-- ) ) # ( !\ROM1|memROM~42_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~13_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & (\CPU1|REG_RETORNO|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU1|REG_RETORNO|ALT_INV_DOUT\(2),
	datad => \CPU1|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \CPU1|MUX2|saida_MUX[2]~3_combout\);

-- Location: FF_X31_Y3_N35
\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[2]~3_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

-- Location: MLABCELL_X28_Y6_N9
\CPU1|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~17_sumout\ = SUM(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))
-- \CPU1|incrementaPC|Add0~18\ = CARRY(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	cin => \CPU1|incrementaPC|Add0~14\,
	sumout => \CPU1|incrementaPC|Add0~17_sumout\,
	cout => \CPU1|incrementaPC|Add0~18\);

-- Location: MLABCELL_X28_Y6_N12
\CPU1|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~21_sumout\ = SUM(( \CPU1|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))
-- \CPU1|incrementaPC|Add0~22\ = CARRY(( \CPU1|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU1|incrementaPC|Add0~18\,
	sumout => \CPU1|incrementaPC|Add0~21_sumout\,
	cout => \CPU1|incrementaPC|Add0~22\);

-- Location: FF_X28_Y6_N13
\CPU1|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~21_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(4));

-- Location: LABCELL_X29_Y4_N30
\ROM1|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~53_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(3))))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(3))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & 
-- (((\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000010100010010000000100000000100000010100000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~53_combout\);

-- Location: LABCELL_X29_Y4_N36
\ROM1|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~54_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(3)))) ) ) 
-- ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(0))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(3))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010000100110000000100001000010000000100000000010001000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~54_combout\);

-- Location: LABCELL_X29_Y4_N12
\ROM1|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~55_combout\ = ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(3) & \CPU1|PC|DOUT\(0))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT\(0))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000010000100000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~55_combout\);

-- Location: LABCELL_X29_Y4_N54
\ROM1|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~52_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(3)))) # 
-- (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) $ (((\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT\(0)))))) ) ) ) # ( 
-- \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(3)))))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & 
-- !\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) $ (\CPU1|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001110010000010100000100001000100011101000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~52_combout\);

-- Location: LABCELL_X29_Y4_N0
\ROM1|memROM~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~62_combout\ = ( !\CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~52_combout\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~53_combout\))))) ) ) # ( \CPU1|PC|DOUT\(5) & ( 
-- (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~54_combout\)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~55_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101000100010001000100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~53_combout\,
	datac => \ROM1|ALT_INV_memROM~54_combout\,
	datad => \ROM1|ALT_INV_memROM~55_combout\,
	datae => \CPU1|PC|ALT_INV_DOUT\(5),
	dataf => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datag => \ROM1|ALT_INV_memROM~52_combout\,
	combout => \ROM1|memROM~62_combout\);

-- Location: LABCELL_X31_Y4_N33
\CPU1|MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[4]~5_combout\ = ( \ROM1|memROM~62_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~21_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|REG_RETORNO|DOUT\(4))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\))) 
-- ) ) # ( !\ROM1|memROM~62_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~21_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ((\CPU1|REG_RETORNO|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU1|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \CPU1|REG_RETORNO|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \CPU1|MUX2|saida_MUX[4]~5_combout\);

-- Location: FF_X31_Y4_N35
\CPU1|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[4]~5_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y4_N42
\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~28_combout\);

-- Location: LABCELL_X29_Y4_N45
\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(3))) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & 
-- !\CPU1|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ROM1|memROM~29_combout\);

-- Location: LABCELL_X32_Y3_N54
\ROM1|memROM~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~76_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(5) & ( 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & !\CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(5) & ( 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101010100000101010100000100000001000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~76_combout\);

-- Location: FF_X31_Y4_N34
\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[4]~5_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

-- Location: LABCELL_X32_Y4_N54
\ROM1|memROM~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~77_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT\(5)) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & 
-- (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT\(0) 
-- & ( !\CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(5)) # (\CPU1|PC|DOUT\(2))))) 
-- ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(4) & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(5)))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ (((\CPU1|PC|DOUT[1]~DUPLICATE_q\ 
-- & !\CPU1|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100011000001100011000000110110000000000000001010000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~77_combout\);

-- Location: LABCELL_X32_Y4_N45
\ROM1|memROM~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~78_combout\ = (!\CPU1|PC|DOUT\(3) & (\ROM1|memROM~76_combout\)) # (\CPU1|PC|DOUT\(3) & ((\ROM1|memROM~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~76_combout\,
	datad => \ROM1|ALT_INV_memROM~77_combout\,
	combout => \ROM1|memROM~78_combout\);

-- Location: LABCELL_X29_Y4_N18
\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = ( \ROM1|memROM~29_combout\ & ( \ROM1|memROM~78_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\) # (\ROM1|memROM~28_combout\))) ) ) ) # ( !\ROM1|memROM~29_combout\ & ( \ROM1|memROM~78_combout\ & ( 
-- (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & !\CPU1|PC|DOUT[7]~DUPLICATE_q\) ) ) ) # ( \ROM1|memROM~29_combout\ & ( !\ROM1|memROM~78_combout\ & ( (\ROM1|memROM~28_combout\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011110000000000001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~28_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~29_combout\,
	dataf => \ROM1|ALT_INV_memROM~78_combout\,
	combout => \ROM1|memROM~30_combout\);

-- Location: MLABCELL_X28_Y6_N15
\CPU1|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~25_sumout\ = SUM(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))
-- \CPU1|incrementaPC|Add0~26\ = CARRY(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	cin => \CPU1|incrementaPC|Add0~22\,
	sumout => \CPU1|incrementaPC|Add0~25_sumout\,
	cout => \CPU1|incrementaPC|Add0~26\);

-- Location: MLABCELL_X28_Y6_N18
\CPU1|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~33_sumout\ = SUM(( \CPU1|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))
-- \CPU1|incrementaPC|Add0~34\ = CARRY(( \CPU1|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU1|incrementaPC|Add0~26\,
	sumout => \CPU1|incrementaPC|Add0~33_sumout\,
	cout => \CPU1|incrementaPC|Add0~34\);

-- Location: FF_X28_Y6_N19
\CPU1|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~33_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(6));

-- Location: LABCELL_X29_Y3_N6
\CPU1|MUX2|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[6]~8_combout\ = ( \CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( \CPU1|incrementaPC|Add0~33_sumout\ & ( (!\CPU1|MUX2|Equal2~0_combout\) # (\ROM1|memROM~30_combout\) ) ) ) # ( !\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( 
-- \CPU1|incrementaPC|Add0~33_sumout\ & ( (!\CPU1|MUX2|Equal2~0_combout\) # (\CPU1|REG_RETORNO|DOUT\(6)) ) ) ) # ( \CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( !\CPU1|incrementaPC|Add0~33_sumout\ & ( (\ROM1|memROM~30_combout\ & \CPU1|MUX2|Equal2~0_combout\) ) 
-- ) ) # ( !\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( !\CPU1|incrementaPC|Add0~33_sumout\ & ( (\CPU1|REG_RETORNO|DOUT\(6) & \CPU1|MUX2|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001010000010111110011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~30_combout\,
	datab => \CPU1|REG_RETORNO|ALT_INV_DOUT\(6),
	datac => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datae => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	dataf => \CPU1|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU1|MUX2|saida_MUX[6]~8_combout\);

-- Location: FF_X29_Y3_N8
\CPU1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[6]~8_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(6));

-- Location: LABCELL_X29_Y3_N3
\ROM1|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~45_combout\ = ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(8) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~45_combout\);

-- Location: LABCELL_X29_Y3_N0
\ROM1|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~49_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(8) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(8),
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~49_combout\);

-- Location: LABCELL_X29_Y3_N12
\ROM1|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~47_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT[4]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT\(2) $ (\CPU1|PC|DOUT\(5))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(3) & 
-- (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(5)))))) # 
-- (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(5) & 
-- !\CPU1|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000001000010001010101000010000100100100000000100000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~47_combout\);

-- Location: LABCELL_X32_Y4_N42
\ROM1|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~48_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(0))) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~48_combout\);

-- Location: LABCELL_X29_Y3_N36
\ROM1|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~46_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) $ (((\CPU1|PC|DOUT[4]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(2)))))) # (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & 
-- ((\CPU1|PC|DOUT\(5)))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(2)))))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ (((!\CPU1|PC|DOUT\(3)) # 
-- (!\CPU1|PC|DOUT\(2)))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[4]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & 
-- \CPU1|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000000101011000001111010101010000000001000011100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~46_combout\);

-- Location: LABCELL_X29_Y3_N42
\ROM1|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~66_combout\ = ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\ROM1|memROM~49_combout\ & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~46_combout\ & (!\CPU1|PC|DOUT[8]~DUPLICATE_q\)))) # (\ROM1|memROM~49_combout\ & (((!\CPU1|PC|DOUT[7]~DUPLICATE_q\ 
-- & (\ROM1|memROM~46_combout\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\))) # (\ROM1|memROM~48_combout\))) ) ) # ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\ROM1|memROM~49_combout\ & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~47_combout\ & 
-- (!\CPU1|PC|DOUT[8]~DUPLICATE_q\)))) # (\ROM1|memROM~49_combout\ & (((!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~47_combout\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\))) # (\ROM1|memROM~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000000000000011000000000001011101010101010101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~49_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~47_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~48_combout\,
	datag => \ROM1|ALT_INV_memROM~46_combout\,
	combout => \ROM1|memROM~66_combout\);

-- Location: LABCELL_X29_Y3_N24
\ROM1|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~43_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(2))) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~43_combout\);

-- Location: LABCELL_X31_Y3_N21
\ROM1|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~44_combout\ = ( !\CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~44_combout\);

-- Location: LABCELL_X29_Y3_N18
\ROM1|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~50_combout\ = ( \ROM1|memROM~44_combout\ & ( \CPU1|PC|DOUT\(5) & ( (!\ROM1|memROM~45_combout\ & !\ROM1|memROM~66_combout\) ) ) ) # ( !\ROM1|memROM~44_combout\ & ( \CPU1|PC|DOUT\(5) & ( (!\ROM1|memROM~66_combout\ & ((!\ROM1|memROM~45_combout\) 
-- # (!\ROM1|memROM~43_combout\))) ) ) ) # ( \ROM1|memROM~44_combout\ & ( !\CPU1|PC|DOUT\(5) & ( (!\ROM1|memROM~45_combout\ & !\ROM1|memROM~66_combout\) ) ) ) # ( !\ROM1|memROM~44_combout\ & ( !\CPU1|PC|DOUT\(5) & ( !\ROM1|memROM~66_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100100010001000100011001000110010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~45_combout\,
	datab => \ROM1|ALT_INV_memROM~66_combout\,
	datac => \ROM1|ALT_INV_memROM~43_combout\,
	datae => \ROM1|ALT_INV_memROM~44_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~50_combout\);

-- Location: FF_X28_Y6_N16
\CPU1|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~25_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(5));

-- Location: LABCELL_X31_Y3_N30
\CPU1|MUX2|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[5]~6_combout\ = ( \CPU1|incrementaPC|Add0~25_sumout\ & ( (!\CPU1|MUX2|Equal2~0_combout\) # ((!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ((\CPU1|REG_RETORNO|DOUT\(5)))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\ & 
-- (!\ROM1|memROM~50_combout\))) ) ) # ( !\CPU1|incrementaPC|Add0~25_sumout\ & ( (\CPU1|MUX2|Equal2~0_combout\ & ((!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ((\CPU1|REG_RETORNO|DOUT\(5)))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\ & 
-- (!\ROM1|memROM~50_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100000100000101010010111010111111101011101011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datab => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \CPU1|REG_RETORNO|ALT_INV_DOUT\(5),
	dataf => \CPU1|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU1|MUX2|saida_MUX[5]~6_combout\);

-- Location: FF_X31_Y3_N31
\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[5]~6_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

-- Location: MLABCELL_X28_Y3_N24
\ROM1|memROM~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~80_combout\ = ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & 
-- !\CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101000010000000000000000001000000000110000000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~80_combout\);

-- Location: MLABCELL_X28_Y3_N12
\ROM1|memROM~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~79_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ $ (\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU1|PC|DOUT\(2))))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ 
-- (!\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000001010100100100000000000010000001000010000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~79_combout\);

-- Location: MLABCELL_X28_Y3_N54
\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(2)))) ) ) 
-- ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & \CPU1|PC|DOUT\(2))))) ) ) ) # ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & !\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) 
-- & !\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(2)))))) ) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & ((!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ 
-- (\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010100011000010001100001010000000001000010010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~25_combout\);

-- Location: MLABCELL_X28_Y3_N30
\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(5) & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \CPU1|PC|DOUT\(5) & ( 
-- (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & \CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( !\CPU1|PC|DOUT\(5) & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & \CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000000000000000000000010000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \CPU1|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~26_combout\);

-- Location: MLABCELL_X28_Y3_N6
\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( \ROM1|memROM~26_combout\ & ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\) # (\ROM1|memROM~79_combout\) ) ) ) # ( !\ROM1|memROM~26_combout\ & ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (\ROM1|memROM~79_combout\ & 
-- !\CPU1|PC|DOUT[6]~DUPLICATE_q\) ) ) ) # ( \ROM1|memROM~26_combout\ & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~25_combout\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~80_combout\)) ) ) ) # ( 
-- !\ROM1|memROM~26_combout\ & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\ROM1|memROM~25_combout\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\ROM1|memROM~80_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~80_combout\,
	datab => \ROM1|ALT_INV_memROM~79_combout\,
	datac => \ROM1|ALT_INV_memROM~25_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~26_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~27_combout\);

-- Location: MLABCELL_X28_Y6_N54
\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(0) & 
-- (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & 
-- (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( 
-- (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU1|PC|DOUT[6]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110100000001001100010000001000001100000000000001110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~22_combout\);

-- Location: MLABCELL_X28_Y6_N48
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2)))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(2))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(2))))) # 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & 
-- (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(0) & (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001010000000000001000000000000010100100011000100010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~21_combout\);

-- Location: MLABCELL_X28_Y6_N42
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT[7]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- ((!\CPU1|PC|DOUT[7]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\)) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- \CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(0) & 
-- (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001010000000010000101000000100110000000000000110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~20_combout\);

-- Location: MLABCELL_X28_Y6_N30
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT[7]~DUPLICATE_q\)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & 
-- (\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT[7]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000100100000000001000000001000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~19_combout\);

-- Location: MLABCELL_X28_Y6_N36
\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \CPU1|PC|DOUT\(3) & ( \ROM1|memROM~19_combout\ & ( (!\CPU1|PC|DOUT\(5) & ((\ROM1|memROM~21_combout\))) # (\CPU1|PC|DOUT\(5) & (\ROM1|memROM~22_combout\)) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( \ROM1|memROM~19_combout\ & ( 
-- (!\CPU1|PC|DOUT\(5)) # (\ROM1|memROM~20_combout\) ) ) ) # ( \CPU1|PC|DOUT\(3) & ( !\ROM1|memROM~19_combout\ & ( (!\CPU1|PC|DOUT\(5) & ((\ROM1|memROM~21_combout\))) # (\CPU1|PC|DOUT\(5) & (\ROM1|memROM~22_combout\)) ) ) ) # ( !\CPU1|PC|DOUT\(3) & ( 
-- !\ROM1|memROM~19_combout\ & ( (\CPU1|PC|DOUT\(5) & \ROM1|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~22_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	datae => \CPU1|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	combout => \ROM1|memROM~23_combout\);

-- Location: LABCELL_X35_Y5_N18
\CPU1|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|saida[0]~0_combout\ = ( !\ROM1|memROM~27_combout\ & ( (!\ROM1|memROM~24_combout\ & (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~14_combout\ $ (!\ROM1|memROM~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000010000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \CPU1|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y5_N48
\CPU1|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Equal1~0_combout\ = ( \ROM1|memROM~27_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) ) # ( !\ROM1|memROM~27_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \CPU1|ULA1|Equal1~0_combout\);

-- Location: LABCELL_X36_Y5_N6
\CPU1|ULA1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Equal1~1_combout\ = ( \ROM1|memROM~24_combout\ & ( \CPU1|ULA1|Equal1~0_combout\ ) ) # ( !\ROM1|memROM~24_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|ULA1|ALT_INV_Equal1~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU1|ULA1|Equal1~1_combout\);

-- Location: LABCELL_X36_Y5_N9
\CPU1|DECODER1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida[5]~2_combout\ = ( \ROM1|memROM~18_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (((!\ROM1|memROM~27_combout\ & !\ROM1|memROM~14_combout\)))) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~24_combout\)) ) ) # ( 
-- !\ROM1|memROM~18_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~27_combout\ & (!\ROM1|memROM~24_combout\ $ (!\ROM1|memROM~14_combout\)))) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110010001010100011001000111010001000100011101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \CPU1|DECODER1|saida[5]~2_combout\);

-- Location: FF_X36_Y5_N47
\CPU1|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~10_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(4));

-- Location: LABCELL_X31_Y4_N54
\ROM1|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~59_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) $ (((!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(0)))))) ) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU1|PC|DOUT\(2) & ( 
-- (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) & \CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT[4]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(5) & !\CPU1|PC|DOUT\(0)))) ) ) ) # ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT\(2) & ( (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ (((!\CPU1|PC|DOUT\(3) & \CPU1|PC|DOUT\(0)))))) ) ) ) # ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[4]~DUPLICATE_q\ $ 
-- (((!\CPU1|PC|DOUT\(3)) # (!\CPU1|PC|DOUT\(0)))))) # (\CPU1|PC|DOUT\(5) & (((!\CPU1|PC|DOUT\(3) & \CPU1|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001101100000010100000011000000001100000000100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~59_combout\);

-- Location: LABCELL_X31_Y4_N48
\ROM1|memROM~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~61_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\ROM1|memROM~59_combout\) # (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111010110101111111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~59_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~61_combout\);

-- Location: FF_X31_Y4_N32
\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[1]~2_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

-- Location: LABCELL_X31_Y4_N24
\ROM1|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~58_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(5) $ (\CPU1|PC|DOUT\(1))))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(5) & 
-- !\CPU1|PC|DOUT\(1))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(5))))) # (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & 
-- ((!\CPU1|PC|DOUT\(5))))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ $ (!\CPU1|PC|DOUT\(5))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000010100000010010101000000100001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(2),
	datab => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(5),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM1|memROM~58_combout\);

-- Location: LABCELL_X31_Y4_N18
\ROM1|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~60_combout\ = ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & ((!\ROM1|memROM~58_combout\) # (\CPU1|PC|DOUT\(1)))) # (\CPU1|PC|DOUT\(3) & (\ROM1|memROM~58_combout\)) ) ) ) # ( 
-- \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(1))))) # (\CPU1|PC|DOUT\(3) & (((!\ROM1|memROM~58_combout\)))) ) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & ((!\ROM1|memROM~58_combout\ & (!\CPU1|PC|DOUT\(0) & \CPU1|PC|DOUT\(1))) # (\ROM1|memROM~58_combout\ & ((!\CPU1|PC|DOUT\(1)))))) # (\CPU1|PC|DOUT\(3) & (((\ROM1|memROM~58_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110000011001100000111010011000011110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \ROM1|ALT_INV_memROM~58_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM1|memROM~60_combout\);

-- Location: LABCELL_X31_Y4_N42
\ROM1|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~51_combout\ = ( \ROM1|memROM~59_combout\ & ( \ROM1|memROM~60_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM1|memROM~61_combout\) # (\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\ROM1|memROM~59_combout\ & ( \ROM1|memROM~60_combout\ & ( 
-- (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~58_combout\ & ((!\ROM1|memROM~61_combout\) # (\CPU1|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~61_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~58_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~59_combout\,
	dataf => \ROM1|ALT_INV_memROM~60_combout\,
	combout => \ROM1|memROM~51_combout\);

-- Location: LABCELL_X29_Y2_N27
\RAM1|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~791_combout\ = ( !\ROM1|memROM~51_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~62_combout\ & !\ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~791_combout\);

-- Location: LABCELL_X32_Y3_N24
\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT\(3))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(3)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000001000000000000000001000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~31_combout\);

-- Location: LABCELL_X32_Y3_N6
\ROM1|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~33_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(5) & (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & !\CPU1|PC|DOUT[6]~DUPLICATE_q\)) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(5) $ (!\CPU1|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000000000000000000000100000001000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~33_combout\);

-- Location: LABCELL_X32_Y3_N0
\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT\(3)))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) $ (\CPU1|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001001000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~32_combout\);

-- Location: LABCELL_X32_Y3_N48
\ROM1|memROM~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~75_combout\ = ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & \CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(5) & 
-- (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & !\CPU1|PC|DOUT\(3))) # (\CPU1|PC|DOUT\(5) & ((\CPU1|PC|DOUT\(3)))))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[2]~DUPLICATE_q\ & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & 
-- \CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) $ (\CPU1|PC|DOUT[2]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(5) $ (!\CPU1|PC|DOUT[2]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000010010000000000000000000011000000001011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(5),
	datab => \CPU1|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \CPU1|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~75_combout\);

-- Location: LABCELL_X32_Y3_N42
\ROM1|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~34_combout\ = ( \ROM1|memROM~32_combout\ & ( \ROM1|memROM~75_combout\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(0))) # (\ROM1|memROM~31_combout\))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT\(0)) # 
-- (\ROM1|memROM~33_combout\)))) ) ) ) # ( !\ROM1|memROM~32_combout\ & ( \ROM1|memROM~75_combout\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(0))) # (\ROM1|memROM~31_combout\))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(0) & 
-- \ROM1|memROM~33_combout\)))) ) ) ) # ( \ROM1|memROM~32_combout\ & ( !\ROM1|memROM~75_combout\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~31_combout\ & (!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT\(0)) # 
-- (\ROM1|memROM~33_combout\)))) ) ) ) # ( !\ROM1|memROM~32_combout\ & ( !\ROM1|memROM~75_combout\ & ( (!\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (\ROM1|memROM~31_combout\ & (!\CPU1|PC|DOUT\(0)))) # (\CPU1|PC|DOUT[7]~DUPLICATE_q\ & (((\CPU1|PC|DOUT\(0) & 
-- \ROM1|memROM~33_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~31_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \ROM1|ALT_INV_memROM~32_combout\,
	dataf => \ROM1|ALT_INV_memROM~75_combout\,
	combout => \ROM1|memROM~34_combout\);

-- Location: LABCELL_X32_Y4_N36
\ROM1|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~35_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(4)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ 
-- (!\CPU1|PC|DOUT\(4) $ (!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT[6]~DUPLICATE_q\))))) ) ) ) # ( \CPU1|PC|DOUT\(0) 
-- & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) $ (((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & \CPU1|PC|DOUT[6]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(4))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ 
-- & ((\CPU1|PC|DOUT[6]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\) # (\CPU1|PC|DOUT\(4)))))) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\ & 
-- (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) $ (\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100010010010110010000110110110001000010010001000100110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~35_combout\);

-- Location: LABCELL_X29_Y3_N27
\ROM1|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~36_combout\ = ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(6) & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(6)))) ) ) # ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(6) & \CPU1|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100101000001001000010100000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(0),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~36_combout\);

-- Location: LABCELL_X32_Y4_N48
\ROM1|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~74_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(4))) # (\CPU1|PC|DOUT\(3) & ((\CPU1|PC|DOUT\(2)))))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(4) & (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(4) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000011100111000000000000000000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~74_combout\);

-- Location: LABCELL_X32_Y4_N0
\ROM1|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~70_combout\ = ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(5) & (\ROM1|memROM~35_combout\)) # (\CPU1|PC|DOUT\(5) & (((\ROM1|memROM~74_combout\)))))) ) ) # ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (((!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & \ROM1|memROM~36_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000001010000000000000000000100010000010101010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~35_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(4),
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~36_combout\,
	datag => \ROM1|ALT_INV_memROM~74_combout\,
	combout => \ROM1|memROM~70_combout\);

-- Location: MLABCELL_X34_Y1_N39
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\ROM1|memROM~70_combout\ & ( (!\ROM1|memROM~30_combout\ & ((!\ROM1|memROM~34_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~30_combout\,
	datad => \ROM1|ALT_INV_memROM~34_combout\,
	dataf => \ROM1|ALT_INV_memROM~70_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X35_Y5_N9
\CPU1|DECODER1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|Equal5~0_combout\ = ( \ROM1|memROM~18_combout\ & ( !\ROM1|memROM~24_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU1|DECODER1|Equal5~0_combout\);

-- Location: MLABCELL_X34_Y1_N30
\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \CPU1|DECODER1|Equal5~0_combout\ & ( \RAM1|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \RAM1|process_0~1_combout\);

-- Location: LABCELL_X31_Y2_N18
\RAM1|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~792_combout\ = (\RAM1|ram~791_combout\ & \RAM1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~791_combout\,
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~792_combout\);

-- Location: FF_X32_Y6_N31
\RAM1|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~291_q\);

-- Location: LABCELL_X31_Y6_N0
\RAM1|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~35feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~35feeder_combout\);

-- Location: LABCELL_X35_Y6_N45
\RAM1|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~727_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~62_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~727_combout\);

-- Location: LABCELL_X35_Y6_N30
\RAM1|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~728_combout\ = (\RAM1|ram~727_combout\ & \RAM1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~727_combout\,
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~728_combout\);

-- Location: FF_X31_Y6_N1
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~35feeder_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X29_Y2_N36
\RAM1|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~759_combout\ = ( !\ROM1|memROM~51_combout\ & ( !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~759_combout\);

-- Location: MLABCELL_X34_Y5_N51
\RAM1|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~760_combout\ = ( \RAM1|ram~759_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~759_combout\,
	combout => \RAM1|ram~760_combout\);

-- Location: FF_X34_Y5_N2
\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

-- Location: MLABCELL_X34_Y5_N42
\RAM1|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~695_combout\ = ( !\ROM1|memROM~82_combout\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~695_combout\);

-- Location: MLABCELL_X34_Y5_N57
\RAM1|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~696_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~695_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~695_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~696_combout\);

-- Location: FF_X34_Y5_N44
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X34_Y5_N0
\RAM1|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~611_combout\ = ( \RAM1|ram~275_q\ & ( \RAM1|ram~19_q\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~291_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~35_q\)))) ) ) ) # ( !\RAM1|ram~275_q\ & ( \RAM1|ram~19_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & (((\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~291_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~35_q\))))) ) ) ) # ( \RAM1|ram~275_q\ & ( !\RAM1|ram~19_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~291_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~35_q\))))) ) ) ) # ( !\RAM1|ram~275_q\ & ( !\RAM1|ram~19_q\ & ( 
-- (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~291_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~35_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~291_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~275_q\,
	dataf => \RAM1|ALT_INV_ram~19_q\,
	combout => \RAM1|ram~611_combout\);

-- Location: LABCELL_X35_Y6_N15
\RAM1|ram~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~83feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~83feeder_combout\);

-- Location: LABCELL_X35_Y6_N36
\RAM1|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~697_combout\ = ( \ROM1|memROM~51_combout\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~50_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~697_combout\);

-- Location: MLABCELL_X37_Y4_N54
\RAM1|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~698_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~697_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~697_combout\,
	combout => \RAM1|ram~698_combout\);

-- Location: FF_X35_Y6_N16
\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~83feeder_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

-- Location: LABCELL_X40_Y4_N39
\RAM1|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~735_combout\ = ( !\ROM1|memROM~42_combout\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~735_combout\);

-- Location: LABCELL_X40_Y4_N3
\RAM1|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~736_combout\ = ( \RAM1|ram~735_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~735_combout\,
	combout => \RAM1|ram~736_combout\);

-- Location: FF_X39_Y6_N40
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: MLABCELL_X34_Y6_N45
\RAM1|ram~355feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~355feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~355feeder_combout\);

-- Location: LABCELL_X40_Y1_N57
\RAM1|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~799_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~42_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~799_combout\);

-- Location: LABCELL_X41_Y1_N33
\RAM1|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~800_combout\ = ( \RAM1|ram~799_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~799_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~800_combout\);

-- Location: FF_X34_Y6_N46
\RAM1|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~355feeder_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~355_q\);

-- Location: LABCELL_X40_Y2_N42
\RAM1|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~761_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~62_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~761_combout\);

-- Location: LABCELL_X40_Y2_N21
\RAM1|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~762_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~761_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~761_combout\,
	combout => \RAM1|ram~762_combout\);

-- Location: FF_X34_Y5_N20
\RAM1|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~339_q\);

-- Location: MLABCELL_X34_Y5_N18
\RAM1|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~612_combout\ = ( \RAM1|ram~339_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~355_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~99_q\)) ) ) ) # ( !\RAM1|ram~339_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~355_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~99_q\)) ) ) ) # ( \RAM1|ram~339_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~83_q\) ) ) ) # ( !\RAM1|ram~339_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~83_q\ & \ROM1|memROM~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~83_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~99_q\,
	datad => \RAM1|ALT_INV_ram~355_q\,
	datae => \RAM1|ALT_INV_ram~339_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~612_combout\);

-- Location: LABCELL_X29_Y1_N12
\RAM1|ram~227feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~227feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~227feeder_combout\);

-- Location: LABCELL_X39_Y5_N9
\RAM1|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~751_combout\ = ( \ROM1|memROM~51_combout\ & ( !\ROM1|memROM~42_combout\ & ( (\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~751_combout\);

-- Location: LABCELL_X39_Y5_N57
\RAM1|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~752_combout\ = ( \RAM1|ram~751_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~751_combout\,
	combout => \RAM1|ram~752_combout\);

-- Location: FF_X29_Y1_N14
\RAM1|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~227feeder_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~227_q\);

-- Location: LABCELL_X40_Y3_N30
\RAM1|ram~467feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~467feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~467feeder_combout\);

-- Location: LABCELL_X32_Y1_N42
\RAM1|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~765_combout\ = ( !\ROM1|memROM~82_combout\ & ( !\ROM1|memROM~50_combout\ & ( (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~51_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~765_combout\);

-- Location: LABCELL_X32_Y1_N48
\RAM1|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~766_combout\ = ( \RAM1|ram~765_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~765_combout\,
	combout => \RAM1|ram~766_combout\);

-- Location: FF_X40_Y3_N31
\RAM1|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~467feeder_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~467_q\);

-- Location: LABCELL_X31_Y5_N54
\RAM1|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~701_combout\ = ( !\ROM1|memROM~42_combout\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~51_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~701_combout\);

-- Location: LABCELL_X36_Y3_N0
\RAM1|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~702_combout\ = ( \RAM1|ram~701_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~701_combout\,
	combout => \RAM1|ram~702_combout\);

-- Location: FF_X36_Y3_N10
\RAM1|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~211_q\);

-- Location: LABCELL_X29_Y1_N30
\RAM1|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~815_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~50_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~815_combout\);

-- Location: LABCELL_X29_Y1_N3
\RAM1|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~816_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~815_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~815_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~816_combout\);

-- Location: FF_X29_Y1_N20
\RAM1|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~483_q\);

-- Location: LABCELL_X29_Y1_N18
\RAM1|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~614_combout\ = ( \RAM1|ram~483_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~227_q\) ) ) ) # ( !\RAM1|ram~483_q\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~227_q\) ) ) ) # ( 
-- \RAM1|ram~483_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~467_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~211_q\))) ) ) ) # ( !\RAM1|ram~483_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~467_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~211_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~227_q\,
	datac => \RAM1|ALT_INV_ram~467_q\,
	datad => \RAM1|ALT_INV_ram~211_q\,
	datae => \RAM1|ALT_INV_ram~483_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~614_combout\);

-- Location: LABCELL_X32_Y5_N30
\RAM1|ram~403feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~403feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~403feeder_combout\);

-- Location: LABCELL_X35_Y4_N48
\RAM1|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~763_combout\ = ( !\ROM1|memROM~82_combout\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~763_combout\);

-- Location: LABCELL_X32_Y5_N36
\RAM1|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~764_combout\ = ( \RAM1|ram~763_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~763_combout\,
	combout => \RAM1|ram~764_combout\);

-- Location: FF_X32_Y5_N31
\RAM1|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~403feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~403_q\);

-- Location: LABCELL_X35_Y6_N27
\RAM1|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~743_combout\ = ( \ROM1|memROM~62_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~42_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~743_combout\);

-- Location: LABCELL_X35_Y2_N27
\RAM1|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~744_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~743_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~743_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~744_combout\);

-- Location: FF_X35_Y2_N31
\RAM1|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~163_q\);

-- Location: LABCELL_X40_Y1_N54
\RAM1|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~807_combout\ = ( !\ROM1|memROM~51_combout\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~82_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~807_combout\);

-- Location: MLABCELL_X34_Y2_N3
\RAM1|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~808_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~807_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~807_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~808_combout\);

-- Location: FF_X34_Y2_N14
\RAM1|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~419_q\);

-- Location: MLABCELL_X37_Y5_N0
\RAM1|ram~147feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~147feeder_combout\);

-- Location: LABCELL_X31_Y5_N21
\RAM1|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~699_combout\ = ( !\ROM1|memROM~51_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~699_combout\);

-- Location: MLABCELL_X37_Y5_N12
\RAM1|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~700_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~699_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~699_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~700_combout\);

-- Location: FF_X37_Y5_N1
\RAM1|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~147feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~147_q\);

-- Location: MLABCELL_X34_Y2_N12
\RAM1|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~613_combout\ = ( \RAM1|ram~419_q\ & ( \RAM1|ram~147_q\ & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~403_q\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~163_q\)))) ) ) ) # ( 
-- !\RAM1|ram~419_q\ & ( \RAM1|ram~147_q\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~403_q\ & (!\ROM1|memROM~5_combout\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~163_q\)))) ) ) ) # ( \RAM1|ram~419_q\ & ( !\RAM1|ram~147_q\ & 
-- ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~403_q\))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\ & \RAM1|ram~163_q\)))) ) ) ) # ( !\RAM1|ram~419_q\ & ( !\RAM1|ram~147_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~403_q\ & (!\ROM1|memROM~5_combout\))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\ & \RAM1|ram~163_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~403_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~163_q\,
	datae => \RAM1|ALT_INV_ram~419_q\,
	dataf => \RAM1|ALT_INV_ram~147_q\,
	combout => \RAM1|ram~613_combout\);

-- Location: LABCELL_X35_Y3_N30
\RAM1|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~615_combout\ = ( \ROM1|memROM~51_combout\ & ( \RAM1|ram~613_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~612_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~614_combout\))) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( 
-- \RAM1|ram~613_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~611_combout\) ) ) ) # ( \ROM1|memROM~51_combout\ & ( !\RAM1|ram~613_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~612_combout\)) # (\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~614_combout\))) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( !\RAM1|ram~613_combout\ & ( (\RAM1|ram~611_combout\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~611_combout\,
	datab => \RAM1|ALT_INV_ram~612_combout\,
	datac => \RAM1|ALT_INV_ram~614_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \RAM1|ALT_INV_ram~613_combout\,
	combout => \RAM1|ram~615_combout\);

-- Location: MLABCELL_X42_Y4_N48
\RAM1|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~777_combout\ = ( \ROM1|memROM~51_combout\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~82_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~777_combout\);

-- Location: MLABCELL_X42_Y4_N12
\RAM1|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~778_combout\ = ( \RAM1|ram~777_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~777_combout\,
	combout => \RAM1|ram~778_combout\);

-- Location: FF_X34_Y1_N47
\RAM1|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~347_q\);

-- Location: LABCELL_X32_Y1_N33
\RAM1|ram~107feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~107feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~107feeder_combout\);

-- Location: LABCELL_X31_Y2_N36
\RAM1|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~739_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~82_combout\ & (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~739_combout\);

-- Location: LABCELL_X32_Y2_N39
\RAM1|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~740_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datac => \RAM1|ALT_INV_ram~739_combout\,
	combout => \RAM1|ram~740_combout\);

-- Location: FF_X32_Y1_N35
\RAM1|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~107feeder_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~107_q\);

-- Location: MLABCELL_X37_Y3_N18
\RAM1|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~713_combout\ = ( \ROM1|memROM~51_combout\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~50_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~713_combout\);

-- Location: MLABCELL_X42_Y4_N15
\RAM1|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~714_combout\ = ( \RAM1|ram~713_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~713_combout\,
	combout => \RAM1|ram~714_combout\);

-- Location: FF_X34_Y1_N10
\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

-- Location: MLABCELL_X37_Y6_N6
\RAM1|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~803_combout\ = ( \ROM1|memROM~82_combout\ & ( !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~62_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~803_combout\);

-- Location: LABCELL_X36_Y6_N54
\RAM1|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~804_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~803_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~803_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~804_combout\);

-- Location: FF_X32_Y1_N38
\RAM1|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~363_q\);

-- Location: LABCELL_X32_Y1_N36
\RAM1|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~622_combout\ = ( \RAM1|ram~363_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~107_q\) ) ) ) # ( !\RAM1|ram~363_q\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~107_q\) ) ) ) # ( 
-- \RAM1|ram~363_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~347_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~91_q\))) ) ) ) # ( !\RAM1|ram~363_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~347_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~91_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~347_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~107_q\,
	datad => \RAM1|ALT_INV_ram~91_q\,
	datae => \RAM1|ALT_INV_ram~363_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~622_combout\);

-- Location: MLABCELL_X42_Y3_N48
\RAM1|ram~235feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~235feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~235feeder_combout\);

-- Location: LABCELL_X31_Y2_N48
\RAM1|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~755_combout\ = ( !\ROM1|memROM~42_combout\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~51_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~755_combout\);

-- Location: LABCELL_X31_Y2_N27
\RAM1|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~756_combout\ = ( \RAM1|ram~755_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~755_combout\,
	combout => \RAM1|ram~756_combout\);

-- Location: FF_X42_Y3_N50
\RAM1|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~235feeder_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~235_q\);

-- Location: MLABCELL_X37_Y3_N57
\RAM1|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~717_combout\ = ( \ROM1|memROM~51_combout\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~50_combout\ & (\ROM1|memROM~82_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~717_combout\);

-- Location: MLABCELL_X37_Y3_N45
\RAM1|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~718_combout\ = ( \RAM1|ram~717_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~717_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~718_combout\);

-- Location: FF_X41_Y5_N17
\RAM1|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~219_q\);

-- Location: LABCELL_X40_Y3_N6
\RAM1|ram~475feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~475feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~475feeder_combout\);

-- Location: LABCELL_X29_Y2_N3
\RAM1|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~781_combout\ = ( \ROM1|memROM~51_combout\ & ( \ROM1|memROM~82_combout\ & ( (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~42_combout\ & !\ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~781_combout\);

-- Location: MLABCELL_X28_Y2_N39
\RAM1|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~782_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~781_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~781_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~782_combout\);

-- Location: FF_X40_Y3_N7
\RAM1|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~475feeder_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~475_q\);

-- Location: MLABCELL_X28_Y2_N27
\RAM1|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~819_combout\ = ( !\ROM1|memROM~50_combout\ & ( \ROM1|memROM~82_combout\ & ( (\ROM1|memROM~62_combout\ & (\ROM1|memROM~51_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~819_combout\);

-- Location: MLABCELL_X28_Y2_N30
\RAM1|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~820_combout\ = ( \RAM1|ram~819_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~819_combout\,
	combout => \RAM1|ram~820_combout\);

-- Location: FF_X41_Y5_N50
\RAM1|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~491_q\);

-- Location: LABCELL_X41_Y5_N48
\RAM1|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~624_combout\ = ( \RAM1|ram~491_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~235_q\) ) ) ) # ( !\RAM1|ram~491_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~235_q\ & \ROM1|memROM~50_combout\) ) ) ) # ( 
-- \RAM1|ram~491_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~475_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~219_q\)) ) ) ) # ( !\RAM1|ram~491_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~475_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~219_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~235_q\,
	datab => \RAM1|ALT_INV_ram~219_q\,
	datac => \RAM1|ALT_INV_ram~475_q\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~491_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~624_combout\);

-- Location: LABCELL_X35_Y6_N42
\RAM1|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~711_combout\ = ( \ROM1|memROM~82_combout\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~51_combout\ & !\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~711_combout\);

-- Location: LABCELL_X35_Y6_N18
\RAM1|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~712_combout\ = ( \RAM1|ram~711_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~711_combout\,
	combout => \RAM1|ram~712_combout\);

-- Location: FF_X31_Y3_N41
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: MLABCELL_X37_Y2_N48
\RAM1|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~775_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~62_combout\ & ( (\ROM1|memROM~82_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~51_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~775_combout\);

-- Location: LABCELL_X40_Y2_N57
\RAM1|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~776_combout\ = ( \RAM1|ram~775_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~775_combout\,
	combout => \RAM1|ram~776_combout\);

-- Location: FF_X32_Y4_N17
\RAM1|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~283_q\);

-- Location: LABCELL_X29_Y1_N45
\RAM1|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~795_combout\ = ( !\ROM1|memROM~42_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~51_combout\ & (!\ROM1|memROM~62_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~795_combout\);

-- Location: LABCELL_X29_Y1_N39
\RAM1|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~796_combout\ = ( \RAM1|ram~795_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~795_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~796_combout\);

-- Location: FF_X29_Y1_N26
\RAM1|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~299_q\);

-- Location: LABCELL_X35_Y6_N24
\RAM1|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~731_combout\ = ( \ROM1|memROM~82_combout\ & ( !\ROM1|memROM~62_combout\ & ( (\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~51_combout\ & !\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~731_combout\);

-- Location: MLABCELL_X28_Y2_N0
\RAM1|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~732_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~731_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~731_combout\,
	combout => \RAM1|ram~732_combout\);

-- Location: FF_X32_Y4_N10
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: LABCELL_X29_Y1_N24
\RAM1|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~621_combout\ = ( \RAM1|ram~299_q\ & ( \RAM1|ram~43_q\ & ( ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~283_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~27_q\))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~299_q\ & ( \RAM1|ram~43_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~283_q\ & !\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~27_q\))) ) ) ) # ( \RAM1|ram~299_q\ & ( !\RAM1|ram~43_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~5_combout\) # (\RAM1|ram~283_q\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~27_q\ & ((!\ROM1|memROM~5_combout\)))) ) ) ) # ( !\RAM1|ram~299_q\ & ( !\RAM1|ram~43_q\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~283_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~27_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~283_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~299_q\,
	dataf => \RAM1|ALT_INV_ram~43_q\,
	combout => \RAM1|ram~621_combout\);

-- Location: MLABCELL_X37_Y3_N21
\RAM1|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~715_combout\ = ( \ROM1|memROM~62_combout\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~82_combout\ & \ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~715_combout\);

-- Location: LABCELL_X36_Y3_N27
\RAM1|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~716_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~715_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~715_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~716_combout\);

-- Location: FF_X36_Y3_N17
\RAM1|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~155_q\);

-- Location: LABCELL_X36_Y4_N0
\RAM1|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~747_combout\ = ( \ROM1|memROM~82_combout\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~747_combout\);

-- Location: LABCELL_X36_Y2_N30
\RAM1|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~748_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~747_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~747_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~748_combout\);

-- Location: FF_X36_Y2_N16
\RAM1|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~171_q\);

-- Location: MLABCELL_X42_Y4_N51
\RAM1|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~779_combout\ = ( \ROM1|memROM~62_combout\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~779_combout\);

-- Location: MLABCELL_X42_Y4_N54
\RAM1|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~780_combout\ = ( \RAM1|ram~779_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~779_combout\,
	combout => \RAM1|ram~780_combout\);

-- Location: FF_X32_Y5_N41
\RAM1|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~411_q\);

-- Location: LABCELL_X40_Y1_N33
\RAM1|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~811_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~62_combout\ & !\ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~811_combout\);

-- Location: LABCELL_X32_Y1_N0
\RAM1|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~812_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~811_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~811_combout\,
	combout => \RAM1|ram~812_combout\);

-- Location: FF_X32_Y5_N44
\RAM1|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~427_q\);

-- Location: LABCELL_X32_Y5_N42
\RAM1|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~623_combout\ = ( \RAM1|ram~427_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~171_q\) ) ) ) # ( !\RAM1|ram~427_q\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~171_q\) ) ) ) # ( 
-- \RAM1|ram~427_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~411_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~155_q\)) ) ) ) # ( !\RAM1|ram~427_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~411_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~155_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~171_q\,
	datad => \RAM1|ALT_INV_ram~411_q\,
	datae => \RAM1|ALT_INV_ram~427_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~623_combout\);

-- Location: LABCELL_X35_Y3_N24
\RAM1|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~625_combout\ = ( \RAM1|ram~621_combout\ & ( \RAM1|ram~623_combout\ & ( (!\ROM1|memROM~51_combout\) # ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~622_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~624_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~621_combout\ & ( \RAM1|ram~623_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~622_combout\)) # (\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~624_combout\))))) ) ) ) # ( \RAM1|ram~621_combout\ & ( !\RAM1|ram~623_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~622_combout\)) # 
-- (\ROM1|memROM~62_combout\ & ((\RAM1|ram~624_combout\))))) ) ) ) # ( !\RAM1|ram~621_combout\ & ( !\RAM1|ram~623_combout\ & ( (\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~622_combout\)) # (\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~624_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~622_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~624_combout\,
	datae => \RAM1|ALT_INV_ram~621_combout\,
	dataf => \RAM1|ALT_INV_ram~623_combout\,
	combout => \RAM1|ram~625_combout\);

-- Location: LABCELL_X39_Y4_N21
\RAM1|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~797_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~51_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~82_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~797_combout\);

-- Location: MLABCELL_X34_Y4_N18
\RAM1|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~798_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~797_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~797_combout\,
	combout => \RAM1|ram~798_combout\);

-- Location: FF_X28_Y3_N16
\RAM1|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~331_q\);

-- Location: LABCELL_X39_Y5_N51
\RAM1|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~749_combout\ = ( !\ROM1|memROM~51_combout\ & ( \ROM1|memROM~82_combout\ & ( (\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~749_combout\);

-- Location: LABCELL_X39_Y5_N54
\RAM1|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~750_combout\ = ( \RAM1|ram~749_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~749_combout\,
	combout => \RAM1|ram~750_combout\);

-- Location: FF_X28_Y3_N4
\RAM1|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~203_q\);

-- Location: LABCELL_X41_Y4_N48
\RAM1|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~733_combout\ = ( \ROM1|memROM~82_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~733_combout\);

-- Location: LABCELL_X41_Y4_N54
\RAM1|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~734_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~733_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~733_combout\,
	combout => \RAM1|ram~734_combout\);

-- Location: FF_X28_Y3_N40
\RAM1|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~75_q\);

-- Location: LABCELL_X40_Y1_N36
\RAM1|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~813_combout\ = ( !\ROM1|memROM~50_combout\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~62_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~813_combout\);

-- Location: LABCELL_X40_Y1_N45
\RAM1|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~814_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datad => \RAM1|ALT_INV_ram~813_combout\,
	combout => \RAM1|ram~814_combout\);

-- Location: FF_X34_Y3_N32
\RAM1|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~459_q\);

-- Location: MLABCELL_X34_Y3_N30
\RAM1|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~628_combout\ = ( \RAM1|ram~459_q\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~75_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~203_q\)) ) ) ) # ( !\RAM1|ram~459_q\ & ( \ROM1|memROM~50_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~75_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~203_q\)) ) ) ) # ( \RAM1|ram~459_q\ & ( !\ROM1|memROM~50_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~331_q\) ) ) ) # ( !\RAM1|ram~459_q\ & ( 
-- !\ROM1|memROM~50_combout\ & ( (\RAM1|ram~331_q\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~331_q\,
	datab => \RAM1|ALT_INV_ram~203_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~75_q\,
	datae => \RAM1|ALT_INV_ram~459_q\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~628_combout\);

-- Location: LABCELL_X29_Y1_N42
\RAM1|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~783_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~82_combout\ & !\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~783_combout\);

-- Location: LABCELL_X29_Y1_N48
\RAM1|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~784_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~783_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~783_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~784_combout\);

-- Location: FF_X32_Y3_N52
\RAM1|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~315_q\);

-- Location: LABCELL_X41_Y4_N9
\RAM1|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~719_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~50_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~719_combout\);

-- Location: LABCELL_X41_Y4_N45
\RAM1|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~720_combout\ = ( \RAM1|ram~719_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~719_combout\,
	combout => \RAM1|ram~720_combout\);

-- Location: FF_X32_Y3_N10
\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

-- Location: LABCELL_X29_Y2_N9
\RAM1|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~787_combout\ = ( \ROM1|memROM~62_combout\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~787_combout\);

-- Location: LABCELL_X32_Y2_N24
\RAM1|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~788_combout\ = ( \RAM1|ram~787_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~787_combout\,
	combout => \RAM1|ram~788_combout\);

-- Location: FF_X32_Y2_N56
\RAM1|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~443_q\);

-- Location: LABCELL_X40_Y4_N6
\RAM1|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~723_combout\ = ( \ROM1|memROM~62_combout\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~723_combout\);

-- Location: LABCELL_X39_Y3_N6
\RAM1|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~724_combout\ = ( \RAM1|ram~723_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_ram~723_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~724_combout\);

-- Location: FF_X37_Y2_N59
\RAM1|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~187_q\);

-- Location: LABCELL_X32_Y2_N54
\RAM1|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~626_combout\ = ( \RAM1|ram~443_q\ & ( \RAM1|ram~187_q\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~315_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~59_q\)))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~443_q\ & ( \RAM1|ram~187_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~315_q\ & ((!\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~59_q\)))) ) ) ) # ( \RAM1|ram~443_q\ & ( !\RAM1|ram~187_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~62_combout\)) # (\RAM1|ram~315_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~59_q\ & !\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~443_q\ & ( !\RAM1|ram~187_q\ & ( (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~315_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~59_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~315_q\,
	datac => \RAM1|ALT_INV_ram~59_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~443_q\,
	dataf => \RAM1|ALT_INV_ram~187_q\,
	combout => \RAM1|ram~626_combout\);

-- Location: LABCELL_X29_Y2_N45
\RAM1|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~805_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~51_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~805_combout\);

-- Location: LABCELL_X32_Y1_N51
\RAM1|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~806_combout\ = ( \RAM1|ram~805_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~805_combout\,
	combout => \RAM1|ram~806_combout\);

-- Location: FF_X36_Y6_N52
\RAM1|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~395_q\);

-- Location: LABCELL_X31_Y2_N6
\RAM1|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~757_combout\ = ( \ROM1|memROM~42_combout\ & ( \ROM1|memROM~50_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~62_combout\ & (\ROM1|memROM~51_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~757_combout\);

-- Location: LABCELL_X31_Y2_N24
\RAM1|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~758_combout\ = ( \RAM1|ram~757_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~757_combout\,
	combout => \RAM1|ram~758_combout\);

-- Location: FF_X37_Y3_N52
\RAM1|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~267_q\);

-- Location: LABCELL_X40_Y1_N48
\RAM1|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~821_combout\ = ( !\ROM1|memROM~50_combout\ & ( \ROM1|memROM~82_combout\ & ( (\ROM1|memROM~51_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~62_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~821_combout\);

-- Location: LABCELL_X40_Y1_N42
\RAM1|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~822_combout\ = ( \RAM1|ram~821_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~821_combout\,
	combout => \RAM1|ram~822_combout\);

-- Location: FF_X41_Y3_N11
\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

-- Location: LABCELL_X40_Y4_N15
\RAM1|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~741_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~51_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~741_combout\);

-- Location: LABCELL_X41_Y4_N42
\RAM1|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~742_combout\ = ( \RAM1|ram~741_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~741_combout\,
	combout => \RAM1|ram~742_combout\);

-- Location: FF_X41_Y3_N35
\RAM1|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~139_q\);

-- Location: LABCELL_X41_Y3_N9
\RAM1|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~629_combout\ = ( \RAM1|ram~523_q\ & ( \RAM1|ram~139_q\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\)) # (\RAM1|ram~395_q\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\) # (\RAM1|ram~267_q\)))) ) ) ) # ( 
-- !\RAM1|ram~523_q\ & ( \RAM1|ram~139_q\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\)) # (\RAM1|ram~395_q\))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\ & \RAM1|ram~267_q\)))) ) ) ) # ( \RAM1|ram~523_q\ & ( !\RAM1|ram~139_q\ 
-- & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~395_q\ & (!\ROM1|memROM~50_combout\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\) # (\RAM1|ram~267_q\)))) ) ) ) # ( !\RAM1|ram~523_q\ & ( !\RAM1|ram~139_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~395_q\ & (!\ROM1|memROM~50_combout\))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\ & \RAM1|ram~267_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \RAM1|ALT_INV_ram~395_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~267_q\,
	datae => \RAM1|ALT_INV_ram~523_q\,
	dataf => \RAM1|ALT_INV_ram~139_q\,
	combout => \RAM1|ram~629_combout\);

-- Location: LABCELL_X40_Y4_N12
\RAM1|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~725_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~51_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~82_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~725_combout\);

-- Location: LABCELL_X40_Y4_N18
\RAM1|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~726_combout\ = ( \RAM1|ram~725_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~725_combout\,
	combout => \RAM1|ram~726_combout\);

-- Location: FF_X37_Y3_N7
\RAM1|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~251_q\);

-- Location: LABCELL_X29_Y2_N6
\RAM1|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~785_combout\ = ( \ROM1|memROM~51_combout\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~82_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~785_combout\);

-- Location: LABCELL_X29_Y2_N57
\RAM1|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~786_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datac => \RAM1|ALT_INV_ram~785_combout\,
	combout => \RAM1|ram~786_combout\);

-- Location: FF_X31_Y4_N40
\RAM1|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~379_q\);

-- Location: LABCELL_X29_Y2_N42
\RAM1|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~789_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~82_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~789_combout\);

-- Location: LABCELL_X29_Y2_N18
\RAM1|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~790_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~789_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~789_combout\,
	combout => \RAM1|ram~790_combout\);

-- Location: FF_X40_Y3_N56
\RAM1|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~507_q\);

-- Location: MLABCELL_X37_Y5_N6
\RAM1|ram~123feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~123feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~123feeder_combout\);

-- Location: LABCELL_X40_Y4_N24
\RAM1|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~721_combout\ = ( \ROM1|memROM~82_combout\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~51_combout\ & (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~62_combout\ & \ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~721_combout\);

-- Location: LABCELL_X40_Y4_N0
\RAM1|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~722_combout\ = ( \RAM1|ram~721_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~721_combout\,
	combout => \RAM1|ram~722_combout\);

-- Location: FF_X37_Y5_N7
\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~123feeder_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

-- Location: LABCELL_X40_Y3_N54
\RAM1|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~627_combout\ = ( \RAM1|ram~507_q\ & ( \RAM1|ram~123_q\ & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~379_q\)))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~62_combout\)) # (\RAM1|ram~251_q\))) ) ) ) # ( 
-- !\RAM1|ram~507_q\ & ( \RAM1|ram~123_q\ & ( (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~379_q\ & !\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~62_combout\)) # (\RAM1|ram~251_q\))) ) ) ) # ( \RAM1|ram~507_q\ & ( 
-- !\RAM1|ram~123_q\ & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~379_q\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~251_q\ & ((\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~507_q\ & ( !\RAM1|ram~123_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~379_q\ & !\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~251_q\ & ((\ROM1|memROM~62_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~251_q\,
	datac => \RAM1|ALT_INV_ram~379_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~507_q\,
	dataf => \RAM1|ALT_INV_ram~123_q\,
	combout => \RAM1|ram~627_combout\);

-- Location: LABCELL_X35_Y3_N0
\RAM1|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~630_combout\ = ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~627_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~628_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~629_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~627_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~626_combout\) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\RAM1|ram~627_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~628_combout\)) # (\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~629_combout\))) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\RAM1|ram~627_combout\ & ( (\RAM1|ram~626_combout\ & !\ROM1|memROM~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~628_combout\,
	datab => \RAM1|ALT_INV_ram~626_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~629_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~627_combout\,
	combout => \RAM1|ram~630_combout\);

-- Location: LABCELL_X31_Y6_N45
\RAM1|ram~67feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~67feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~67feeder_combout\);

-- Location: MLABCELL_X37_Y4_N6
\RAM1|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~729_combout\ = ( !\ROM1|memROM~82_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~729_combout\);

-- Location: LABCELL_X40_Y4_N21
\RAM1|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~730_combout\ = ( \RAM1|ram~729_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~729_combout\,
	combout => \RAM1|ram~730_combout\);

-- Location: FF_X31_Y6_N47
\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~67feeder_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

-- Location: MLABCELL_X37_Y4_N42
\RAM1|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~703_combout\ = ( \ROM1|memROM~50_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~62_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~703_combout\);

-- Location: LABCELL_X36_Y3_N6
\RAM1|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~704_combout\ = ( \RAM1|ram~703_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~703_combout\,
	combout => \RAM1|ram~704_combout\);

-- Location: FF_X31_Y6_N37
\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

-- Location: LABCELL_X40_Y4_N57
\RAM1|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~793_combout\ = ( !\ROM1|memROM~51_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~793_combout\);

-- Location: LABCELL_X40_Y4_N48
\RAM1|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~794_combout\ = ( \RAM1|ram~793_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datae => \RAM1|ALT_INV_ram~793_combout\,
	combout => \RAM1|ram~794_combout\);

-- Location: FF_X32_Y6_N17
\RAM1|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~323_q\);

-- Location: LABCELL_X29_Y2_N48
\RAM1|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~767_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~767_combout\);

-- Location: LABCELL_X29_Y2_N54
\RAM1|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~768_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datac => \RAM1|ALT_INV_ram~767_combout\,
	combout => \RAM1|ram~768_combout\);

-- Location: FF_X32_Y6_N8
\RAM1|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~307_q\);

-- Location: LABCELL_X32_Y6_N6
\RAM1|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~616_combout\ = ( \RAM1|ram~307_q\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~51_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~67_q\)) ) ) ) # ( !\RAM1|ram~307_q\ & ( \ROM1|memROM~50_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~51_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~67_q\)) ) ) ) # ( \RAM1|ram~307_q\ & ( !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\) # (\RAM1|ram~323_q\) ) ) ) # ( !\RAM1|ram~307_q\ & ( 
-- !\ROM1|memROM~50_combout\ & ( (\ROM1|memROM~5_combout\ & \RAM1|ram~323_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~67_q\,
	datac => \RAM1|ALT_INV_ram~51_q\,
	datad => \RAM1|ALT_INV_ram~323_q\,
	datae => \RAM1|ALT_INV_ram~307_q\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~616_combout\);

-- Location: LABCELL_X41_Y4_N6
\RAM1|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~707_combout\ = ( !\ROM1|memROM~82_combout\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~51_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~42_combout\ & \ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~707_combout\);

-- Location: LABCELL_X41_Y4_N0
\RAM1|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~708_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~707_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~707_combout\,
	combout => \RAM1|ram~708_combout\);

-- Location: FF_X35_Y2_N7
\RAM1|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~179_q\);

-- Location: MLABCELL_X34_Y4_N42
\RAM1|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~771_combout\ = ( \ROM1|memROM~42_combout\ & ( !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~82_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~771_combout\);

-- Location: MLABCELL_X34_Y4_N39
\RAM1|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~772_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~771_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~771_combout\,
	combout => \RAM1|ram~772_combout\);

-- Location: FF_X34_Y4_N4
\RAM1|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~435_q\);

-- Location: MLABCELL_X34_Y4_N15
\RAM1|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~809_combout\ = ( !\ROM1|memROM~51_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~82_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~809_combout\);

-- Location: MLABCELL_X34_Y4_N27
\RAM1|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~810_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~809_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~809_combout\,
	combout => \RAM1|ram~810_combout\);

-- Location: FF_X34_Y2_N53
\RAM1|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~451_q\);

-- Location: LABCELL_X39_Y5_N6
\RAM1|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~745_combout\ = ( \ROM1|memROM~42_combout\ & ( !\ROM1|memROM~51_combout\ & ( (\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~82_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~745_combout\);

-- Location: LABCELL_X39_Y5_N15
\RAM1|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~746_combout\ = ( \RAM1|ram~745_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~745_combout\,
	combout => \RAM1|ram~746_combout\);

-- Location: FF_X35_Y2_N47
\RAM1|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~195_q\);

-- Location: MLABCELL_X34_Y2_N51
\RAM1|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~618_combout\ = ( \RAM1|ram~451_q\ & ( \RAM1|ram~195_q\ & ( ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~435_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~179_q\))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~451_q\ & ( \RAM1|ram~195_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~435_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~179_q\)))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~50_combout\)))) ) ) ) # ( \RAM1|ram~451_q\ & ( !\RAM1|ram~195_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~435_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~179_q\)))) # (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~50_combout\)))) ) ) ) # ( !\RAM1|ram~451_q\ & ( !\RAM1|ram~195_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~435_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~179_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~179_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~435_q\,
	datae => \RAM1|ALT_INV_ram~451_q\,
	dataf => \RAM1|ALT_INV_ram~195_q\,
	combout => \RAM1|ram~618_combout\);

-- Location: MLABCELL_X34_Y6_N3
\RAM1|ram~387feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~387feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~387feeder_combout\);

-- Location: LABCELL_X40_Y2_N51
\RAM1|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~801_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~62_combout\ & (\ROM1|memROM~51_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~801_combout\);

-- Location: LABCELL_X40_Y2_N54
\RAM1|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~802_combout\ = ( \RAM1|ram~801_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~801_combout\,
	combout => \RAM1|ram~802_combout\);

-- Location: FF_X34_Y6_N4
\RAM1|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~387feeder_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~387_q\);

-- Location: LABCELL_X31_Y5_N57
\RAM1|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~705_combout\ = ( !\ROM1|memROM~62_combout\ & ( \ROM1|memROM~42_combout\ & ( (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~82_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~705_combout\);

-- Location: LABCELL_X35_Y6_N6
\RAM1|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~706_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~705_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~705_combout\,
	combout => \RAM1|ram~706_combout\);

-- Location: FF_X35_Y6_N52
\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

-- Location: LABCELL_X40_Y4_N54
\RAM1|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~769_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~82_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~769_combout\);

-- Location: LABCELL_X35_Y6_N21
\RAM1|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~770_combout\ = ( \RAM1|ram~769_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~769_combout\,
	combout => \RAM1|ram~770_combout\);

-- Location: FF_X34_Y6_N8
\RAM1|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~371_q\);

-- Location: LABCELL_X39_Y6_N42
\RAM1|ram~131feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~131feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~131feeder_combout\);

-- Location: LABCELL_X40_Y4_N27
\RAM1|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~737_combout\ = ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~51_combout\ & (\ROM1|memROM~42_combout\ & (\ROM1|memROM~50_combout\ & !\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~737_combout\);

-- Location: LABCELL_X39_Y6_N24
\RAM1|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~738_combout\ = ( \RAM1|ram~737_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~737_combout\,
	combout => \RAM1|ram~738_combout\);

-- Location: FF_X39_Y6_N43
\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~131feeder_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

-- Location: MLABCELL_X34_Y6_N6
\RAM1|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~617_combout\ = ( \RAM1|ram~371_q\ & ( \RAM1|ram~131_q\ & ( (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\)) # (\RAM1|ram~387_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~115_q\) # (\ROM1|memROM~5_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~371_q\ & ( \RAM1|ram~131_q\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~387_q\ & (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~115_q\) # (\ROM1|memROM~5_combout\)))) ) ) ) # ( \RAM1|ram~371_q\ & ( !\RAM1|ram~131_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\)) # (\RAM1|ram~387_q\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\ & \RAM1|ram~115_q\)))) ) ) ) # ( !\RAM1|ram~371_q\ & ( !\RAM1|ram~131_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~387_q\ & (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\ & \RAM1|ram~115_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~387_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~115_q\,
	datae => \RAM1|ALT_INV_ram~371_q\,
	dataf => \RAM1|ALT_INV_ram~131_q\,
	combout => \RAM1|ram~617_combout\);

-- Location: MLABCELL_X34_Y4_N12
\RAM1|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~773_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~773_combout\);

-- Location: MLABCELL_X34_Y4_N0
\RAM1|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~774_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~773_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~773_combout\,
	combout => \RAM1|ram~774_combout\);

-- Location: FF_X35_Y4_N2
\RAM1|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~499_q\);

-- Location: LABCELL_X39_Y5_N48
\RAM1|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~753_combout\ = ( !\ROM1|memROM~82_combout\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~62_combout\ & (\ROM1|memROM~50_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~753_combout\);

-- Location: LABCELL_X39_Y5_N12
\RAM1|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~754_combout\ = ( \RAM1|ram~753_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~753_combout\,
	combout => \RAM1|ram~754_combout\);

-- Location: FF_X39_Y5_N28
\RAM1|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~259_q\);

-- Location: MLABCELL_X28_Y2_N42
\RAM1|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~817_combout\ = ( !\ROM1|memROM~50_combout\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~42_combout\ & (\ROM1|memROM~5_combout\ & (\ROM1|memROM~62_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~817_combout\);

-- Location: MLABCELL_X28_Y2_N51
\RAM1|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~818_combout\ = ( \RAM1|process_0~1_combout\ & ( \RAM1|ram~817_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~817_combout\,
	datae => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~818_combout\);

-- Location: FF_X35_Y4_N8
\RAM1|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~515_q\);

-- Location: MLABCELL_X42_Y5_N45
\RAM1|ram~243feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~243feeder_combout\ = ( \CPU1|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	combout => \RAM1|ram~243feeder_combout\);

-- Location: LABCELL_X39_Y6_N30
\RAM1|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~709_combout\ = ( \ROM1|memROM~50_combout\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~42_combout\ & (\ROM1|memROM~51_combout\ & (!\ROM1|memROM~82_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~709_combout\);

-- Location: LABCELL_X39_Y6_N27
\RAM1|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~710_combout\ = ( \RAM1|ram~709_combout\ & ( \RAM1|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	dataf => \RAM1|ALT_INV_ram~709_combout\,
	combout => \RAM1|ram~710_combout\);

-- Location: FF_X42_Y5_N46
\RAM1|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~243feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~243_q\);

-- Location: LABCELL_X35_Y4_N6
\RAM1|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~619_combout\ = ( \RAM1|ram~515_q\ & ( \RAM1|ram~243_q\ & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~499_q\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~259_q\)))) ) ) ) # ( 
-- !\RAM1|ram~515_q\ & ( \RAM1|ram~243_q\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~499_q\ & ((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~259_q\)))) ) ) ) # ( \RAM1|ram~515_q\ & ( !\RAM1|ram~243_q\ 
-- & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~499_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~259_q\ & \ROM1|memROM~5_combout\)))) ) ) ) # ( !\RAM1|ram~515_q\ & ( !\RAM1|ram~243_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~499_q\ & ((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~259_q\ & \ROM1|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~499_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~259_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~515_q\,
	dataf => \RAM1|ALT_INV_ram~243_q\,
	combout => \RAM1|ram~619_combout\);

-- Location: LABCELL_X35_Y3_N48
\RAM1|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~620_combout\ = ( \RAM1|ram~617_combout\ & ( \RAM1|ram~619_combout\ & ( ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~616_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~618_combout\)))) # (\ROM1|memROM~51_combout\) ) ) ) # ( 
-- !\RAM1|ram~617_combout\ & ( \RAM1|ram~619_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~616_combout\ & (!\ROM1|memROM~51_combout\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~618_combout\) # (\ROM1|memROM~51_combout\)))) ) ) ) # ( 
-- \RAM1|ram~617_combout\ & ( !\RAM1|ram~619_combout\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~616_combout\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\ & \RAM1|ram~618_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~617_combout\ & ( !\RAM1|ram~619_combout\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~616_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~618_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \RAM1|ALT_INV_ram~616_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~618_combout\,
	datae => \RAM1|ALT_INV_ram~617_combout\,
	dataf => \RAM1|ALT_INV_ram~619_combout\,
	combout => \RAM1|ram~620_combout\);

-- Location: LABCELL_X35_Y3_N36
\RAM1|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~631_combout\ = ( \RAM1|ram~630_combout\ & ( \RAM1|ram~620_combout\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~615_combout\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~625_combout\)))) # (\ROM1|memROM~42_combout\) ) ) ) # ( 
-- !\RAM1|ram~630_combout\ & ( \RAM1|ram~620_combout\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~615_combout\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~625_combout\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( 
-- \RAM1|ram~630_combout\ & ( !\RAM1|ram~620_combout\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~615_combout\ & ((!\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~625_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~630_combout\ & ( !\RAM1|ram~620_combout\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~615_combout\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~625_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~615_combout\,
	datac => \RAM1|ALT_INV_ram~625_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~630_combout\,
	dataf => \RAM1|ALT_INV_ram~620_combout\,
	combout => \RAM1|ram~631_combout\);

-- Location: LABCELL_X35_Y5_N15
\CPU1|DECODER1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida[5]~1_combout\ = ( !\ROM1|memROM~24_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & !\ROM1|memROM~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU1|DECODER1|saida[5]~1_combout\);

-- Location: MLABCELL_X34_Y1_N12
\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( \ROM1|memROM~70_combout\ & ( (\ROM1|memROM~30_combout\ & (((!\ROM1|memROM~41_combout\ & !\ROM1|memROM~34_combout\)) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100011000000110010001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~41_combout\,
	datab => \ROM1|ALT_INV_memROM~30_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~34_combout\,
	dataf => \ROM1|ALT_INV_memROM~70_combout\,
	combout => \comb~8_combout\);

-- Location: LABCELL_X35_Y5_N33
\CPU1|DECODER1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida[1]~0_combout\ = ( \ROM1|memROM~24_combout\ & ( ((!\ROM1|memROM~14_combout\ & !\ROM1|memROM~27_combout\)) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~24_combout\ & ( (!\CPU1|PC|DOUT[8]~DUPLICATE_q\ & 
-- (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ $ (!\ROM1|memROM~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000011010101110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~27_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~24_combout\,
	combout => \CPU1|DECODER1|saida[1]~0_combout\);

-- Location: LABCELL_X39_Y4_N36
\comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = ( \ROM1|memROM~50_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~82_combout\ & \CPU1|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( \ROM1|memROM~50_combout\ & ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~82_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \comb~10_combout\);

-- Location: LABCELL_X35_Y3_N12
\CPU1|MUX1|saida_MUX[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~6_combout\ = ( \comb~10_combout\ & ( (\comb~8_combout\ & (\CPU1|DECODER1|saida[1]~0_combout\ & !\CPU1|DECODER1|saida[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \ALT_INV_comb~10_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~6_combout\);

-- Location: MLABCELL_X34_Y1_N15
\CPU1|MUX1|saida_MUX[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~5_combout\ = ( \CPU1|DECODER1|saida[1]~0_combout\ & ( (\RAM1|process_0~0_combout\ & !\CPU1|DECODER1|saida[5]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~5_combout\);

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

-- Location: LABCELL_X35_Y3_N18
\CPU1|MUX1|saida_MUX[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~10_combout\ = ( \CPU1|MUX1|saida_MUX[1]~5_combout\ & ( \SW[4]~input_o\ & ( (((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~62_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\)) # (\RAM1|ram~631_combout\) ) ) ) # ( 
-- !\CPU1|MUX1|saida_MUX[1]~5_combout\ & ( \SW[4]~input_o\ & ( ((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~62_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\) ) ) ) # ( \CPU1|MUX1|saida_MUX[1]~5_combout\ & ( !\SW[4]~input_o\ & ( 
-- ((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~62_combout\)) # (\RAM1|ram~631_combout\) ) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~5_combout\ & ( !\SW[4]~input_o\ & ( (\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110101011100000011111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~631_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[4]~10_combout\);

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

-- Location: LABCELL_X36_Y5_N27
\ROM1|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~57_combout\ = ( \ROM1|memROM~18_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~57_combout\);

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

-- Location: MLABCELL_X34_Y1_N48
\CPU1|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~3_combout\ = ( \ROM1|memROM~82_combout\ & ( \comb~10_combout\ & ( ((\comb~8_combout\ & (\CPU1|DECODER1|saida[1]~0_combout\ & \SW[0]~input_o\))) # (\CPU1|DECODER1|saida[5]~1_combout\) ) ) ) # ( !\ROM1|memROM~82_combout\ & ( 
-- \comb~10_combout\ & ( (!\CPU1|DECODER1|saida[5]~1_combout\ & (\comb~8_combout\ & (\CPU1|DECODER1|saida[1]~0_combout\ & \SW[0]~input_o\))) ) ) ) # ( \ROM1|memROM~82_combout\ & ( !\comb~10_combout\ & ( \CPU1|DECODER1|saida[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000100101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \ALT_INV_comb~10_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~3_combout\);

-- Location: FF_X32_Y2_N40
\RAM1|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~439_q\);

-- Location: FF_X31_Y4_N16
\RAM1|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~375_q\);

-- Location: FF_X29_Y2_N32
\RAM1|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~503_q\);

-- Location: FF_X35_Y3_N5
\RAM1|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~311_q\);

-- Location: LABCELL_X29_Y2_N30
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \RAM1|ram~503_q\ & ( \RAM1|ram~311_q\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\) # (\RAM1|ram~375_q\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~439_q\))) ) ) ) # ( 
-- !\RAM1|ram~503_q\ & ( \RAM1|ram~311_q\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\) # (\RAM1|ram~375_q\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~439_q\ & ((!\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~503_q\ & ( 
-- !\RAM1|ram~311_q\ & ( (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~375_q\ & \ROM1|memROM~51_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~439_q\))) ) ) ) # ( !\RAM1|ram~503_q\ & ( !\RAM1|ram~311_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~375_q\ & \ROM1|memROM~51_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~439_q\ & ((!\ROM1|memROM~51_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~439_q\,
	datab => \RAM1|ALT_INV_ram~375_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \RAM1|ALT_INV_ram~503_q\,
	dataf => \RAM1|ALT_INV_ram~311_q\,
	combout => \RAM1|ram~540_combout\);

-- Location: FF_X32_Y6_N4
\RAM1|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~303_q\);

-- Location: FF_X34_Y2_N35
\RAM1|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~431_q\);

-- Location: FF_X31_Y5_N44
\RAM1|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~367_q\);

-- Location: FF_X35_Y4_N34
\RAM1|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~495_q\);

-- Location: LABCELL_X31_Y5_N42
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \RAM1|ram~367_q\ & ( \RAM1|ram~495_q\ & ( ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~303_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~431_q\)))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~367_q\ & ( \RAM1|ram~495_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~303_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~431_q\))))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~62_combout\)))) ) ) ) # ( \RAM1|ram~367_q\ & ( !\RAM1|ram~495_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~303_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~431_q\))))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~367_q\ & ( !\RAM1|ram~495_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~303_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~431_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~303_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~431_q\,
	datae => \RAM1|ALT_INV_ram~367_q\,
	dataf => \RAM1|ALT_INV_ram~495_q\,
	combout => \RAM1|ram~538_combout\);

-- Location: FF_X32_Y4_N41
\RAM1|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~279_q\);

-- Location: LABCELL_X32_Y5_N9
\RAM1|ram~407feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~407feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~407feeder_combout\);

-- Location: FF_X32_Y5_N10
\RAM1|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~407feeder_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~407_q\);

-- Location: FF_X32_Y4_N52
\RAM1|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~343_q\);

-- Location: FF_X31_Y5_N50
\RAM1|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~471_q\);

-- Location: LABCELL_X31_Y5_N48
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \RAM1|ram~471_q\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~407_q\) ) ) ) # ( !\RAM1|ram~471_q\ & ( \ROM1|memROM~62_combout\ & ( (\RAM1|ram~407_q\ & !\ROM1|memROM~51_combout\) ) ) ) # ( 
-- \RAM1|ram~471_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~279_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~343_q\))) ) ) ) # ( !\RAM1|ram~471_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~279_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~343_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~279_q\,
	datab => \RAM1|ALT_INV_ram~407_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~343_q\,
	datae => \RAM1|ALT_INV_ram~471_q\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: LABCELL_X32_Y5_N0
\RAM1|ram~399feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~399feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~399feeder_combout\);

-- Location: FF_X32_Y5_N1
\RAM1|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~399feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~399_q\);

-- Location: FF_X34_Y5_N5
\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

-- Location: FF_X31_Y5_N8
\RAM1|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~335_q\);

-- Location: LABCELL_X40_Y3_N33
\RAM1|ram~463feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~463feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~463feeder_combout\);

-- Location: FF_X40_Y3_N34
\RAM1|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~463feeder_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~463_q\);

-- Location: LABCELL_X31_Y5_N6
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \RAM1|ram~335_q\ & ( \RAM1|ram~463_q\ & ( ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~271_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~399_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~335_q\ & ( \RAM1|ram~463_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\ & \RAM1|ram~271_q\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~399_q\))) ) ) ) # ( \RAM1|ram~335_q\ & ( !\RAM1|ram~463_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (((\RAM1|ram~271_q\) # (\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~399_q\ & (!\ROM1|memROM~51_combout\))) ) ) ) # ( !\RAM1|ram~335_q\ & ( !\RAM1|ram~463_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~271_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~399_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~399_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~271_q\,
	datae => \RAM1|ALT_INV_ram~335_q\,
	dataf => \RAM1|ALT_INV_ram~463_q\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X31_Y5_N24
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \ROM1|memROM~42_combout\ & ( \ROM1|memROM~82_combout\ & ( \RAM1|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~42_combout\ & ( \ROM1|memROM~82_combout\ & ( \RAM1|ram~539_combout\ ) ) ) # ( \ROM1|memROM~42_combout\ & ( 
-- !\ROM1|memROM~82_combout\ & ( \RAM1|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~42_combout\ & ( !\ROM1|memROM~82_combout\ & ( \RAM1|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~540_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datad => \RAM1|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: FF_X36_Y3_N41
\RAM1|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~207_q\);

-- Location: FF_X37_Y4_N38
\RAM1|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~143_q\);

-- Location: FF_X36_Y3_N32
\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

-- Location: FF_X37_Y4_N1
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X36_Y3_N30
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \RAM1|ram~79_q\ & ( \RAM1|ram~15_q\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~143_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~207_q\))) ) ) ) # ( !\RAM1|ram~79_q\ & ( \RAM1|ram~15_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~143_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~207_q\)))) ) ) ) # ( \RAM1|ram~79_q\ & ( !\RAM1|ram~15_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~143_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~207_q\)))) ) ) ) # ( !\RAM1|ram~79_q\ & ( !\RAM1|ram~15_q\ & ( 
-- (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~143_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~207_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \RAM1|ALT_INV_ram~207_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~143_q\,
	datae => \RAM1|ALT_INV_ram~79_q\,
	dataf => \RAM1|ALT_INV_ram~15_q\,
	combout => \RAM1|ram~527_combout\);

-- Location: FF_X36_Y4_N2
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: FF_X36_Y4_N44
\RAM1|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~175_q\);

-- Location: FF_X36_Y4_N8
\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

-- Location: FF_X42_Y5_N31
\RAM1|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~239_q\);

-- Location: LABCELL_X36_Y4_N6
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \RAM1|ram~111_q\ & ( \RAM1|ram~239_q\ & ( ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~47_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~175_q\)))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~111_q\ & ( \RAM1|ram~239_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (\RAM1|ram~47_q\ & (!\ROM1|memROM~51_combout\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~175_q\) # (\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~111_q\ & ( !\RAM1|ram~239_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~47_q\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\ & \RAM1|ram~175_q\)))) ) ) ) # ( !\RAM1|ram~111_q\ & ( !\RAM1|ram~239_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~47_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~175_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~47_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~175_q\,
	datae => \RAM1|ALT_INV_ram~111_q\,
	dataf => \RAM1|ALT_INV_ram~239_q\,
	combout => \RAM1|ram~528_combout\);

-- Location: FF_X36_Y2_N34
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X40_Y2_N3
\RAM1|ram~215feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~215feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~215feeder_combout\);

-- Location: FF_X40_Y2_N4
\RAM1|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~215feeder_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~215_q\);

-- Location: LABCELL_X36_Y3_N42
\RAM1|ram~151feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~151feeder_combout\);

-- Location: FF_X36_Y3_N43
\RAM1|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~151feeder_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~151_q\);

-- Location: FF_X31_Y2_N35
\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

-- Location: LABCELL_X31_Y2_N33
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \RAM1|ram~87_q\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~62_combout\) # (\RAM1|ram~215_q\) ) ) ) # ( !\RAM1|ram~87_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~62_combout\ & \RAM1|ram~215_q\) ) ) ) # ( 
-- \RAM1|ram~87_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~23_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~151_q\))) ) ) ) # ( !\RAM1|ram~87_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~23_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~151_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~215_q\,
	datad => \RAM1|ALT_INV_ram~151_q\,
	datae => \RAM1|ALT_INV_ram~87_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: FF_X37_Y2_N1
\RAM1|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~183_q\);

-- Location: FF_X31_Y2_N41
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: FF_X31_Y2_N44
\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

-- Location: FF_X37_Y3_N4
\RAM1|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~247_q\);

-- Location: LABCELL_X31_Y2_N42
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \RAM1|ram~119_q\ & ( \RAM1|ram~247_q\ & ( ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~55_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~183_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~119_q\ & ( \RAM1|ram~247_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~55_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~183_q\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~62_combout\)))) ) ) ) # ( \RAM1|ram~119_q\ & ( !\RAM1|ram~247_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~55_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~183_q\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~119_q\ & ( !\RAM1|ram~247_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~55_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~183_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~183_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~119_q\,
	dataf => \RAM1|ALT_INV_ram~247_q\,
	combout => \RAM1|ram~530_combout\);

-- Location: LABCELL_X31_Y3_N54
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \RAM1|ram~529_combout\ & ( \RAM1|ram~530_combout\ & ( ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~527_combout\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~528_combout\)))) # (\ROM1|memROM~82_combout\) ) ) ) # ( 
-- !\RAM1|ram~529_combout\ & ( \RAM1|ram~530_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~527_combout\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~528_combout\))))) # (\ROM1|memROM~82_combout\ & 
-- (((\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~529_combout\ & ( !\RAM1|ram~530_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~527_combout\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~528_combout\))))) # 
-- (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~529_combout\ & ( !\RAM1|ram~530_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~527_combout\)) # (\ROM1|memROM~42_combout\ & 
-- ((\RAM1|ram~528_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~529_combout\,
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~531_combout\);

-- Location: FF_X36_Y2_N47
\RAM1|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~199_q\);

-- Location: FF_X36_Y2_N10
\RAM1|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~167_q\);

-- Location: FF_X35_Y2_N5
\RAM1|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~159_q\);

-- Location: FF_X35_Y2_N38
\RAM1|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~191_q\);

-- Location: LABCELL_X35_Y2_N36
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \RAM1|ram~191_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\) # (\RAM1|ram~199_q\) ) ) ) # ( !\RAM1|ram~191_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~199_q\ & \ROM1|memROM~82_combout\) ) ) ) # ( 
-- \RAM1|ram~191_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~159_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~167_q\)) ) ) ) # ( !\RAM1|ram~191_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~159_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~167_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~199_q\,
	datab => \RAM1|ALT_INV_ram~167_q\,
	datac => \RAM1|ALT_INV_ram~159_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~191_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~534_combout\);

-- Location: FF_X41_Y4_N4
\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

-- Location: LABCELL_X31_Y6_N30
\RAM1|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~31feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~31feeder_combout\);

-- Location: FF_X31_Y6_N31
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~31feeder_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: FF_X31_Y6_N8
\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

-- Location: FF_X42_Y3_N34
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: LABCELL_X31_Y6_N6
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \RAM1|ram~63_q\ & ( \RAM1|ram~39_q\ & ( (!\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~31_q\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~71_q\))) ) ) ) # ( 
-- !\RAM1|ram~63_q\ & ( \RAM1|ram~39_q\ & ( (!\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~31_q\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~71_q\ & ((\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~63_q\ & ( !\RAM1|ram~39_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~31_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~71_q\))) ) ) ) # ( !\RAM1|ram~63_q\ & ( !\RAM1|ram~39_q\ & ( (!\ROM1|memROM~42_combout\ & 
-- (((\RAM1|ram~31_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~71_q\ & ((\ROM1|memROM~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~71_q\,
	datac => \RAM1|ALT_INV_ram~31_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~63_q\,
	dataf => \RAM1|ALT_INV_ram~39_q\,
	combout => \RAM1|ram~532_combout\);

-- Location: FF_X39_Y6_N31
\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

-- Location: FF_X37_Y3_N40
\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

-- Location: LABCELL_X40_Y2_N6
\RAM1|ram~103feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~103feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~103feeder_combout\);

-- Location: FF_X40_Y2_N7
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~103feeder_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: FF_X39_Y6_N8
\RAM1|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~127_q\);

-- Location: LABCELL_X39_Y6_N6
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \RAM1|ram~127_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\) # (\RAM1|ram~135_q\) ) ) ) # ( !\RAM1|ram~127_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~135_q\ & \ROM1|memROM~82_combout\) ) ) ) # ( 
-- \RAM1|ram~127_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~95_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~103_q\))) ) ) ) # ( !\RAM1|ram~127_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~95_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~103_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~95_q\,
	datab => \RAM1|ALT_INV_ram~135_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~103_q\,
	datae => \RAM1|ALT_INV_ram~127_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~533_combout\);

-- Location: FF_X37_Y3_N16
\RAM1|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~263_q\);

-- Location: FF_X39_Y5_N35
\RAM1|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~223_q\);

-- Location: FF_X39_Y5_N38
\RAM1|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~255_q\);

-- Location: FF_X42_Y3_N40
\RAM1|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~231_q\);

-- Location: LABCELL_X39_Y5_N36
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \RAM1|ram~255_q\ & ( \RAM1|ram~231_q\ & ( (!\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~223_q\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~263_q\))) ) ) ) # ( 
-- !\RAM1|ram~255_q\ & ( \RAM1|ram~231_q\ & ( (!\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~223_q\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~263_q\ & ((\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~255_q\ & ( !\RAM1|ram~231_q\ 
-- & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~223_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~263_q\))) ) ) ) # ( !\RAM1|ram~255_q\ & ( !\RAM1|ram~231_q\ & ( (!\ROM1|memROM~42_combout\ & 
-- (((\RAM1|ram~223_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~263_q\ & ((\ROM1|memROM~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~263_q\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~223_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~255_q\,
	dataf => \RAM1|ALT_INV_ram~231_q\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X31_Y5_N0
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~51_combout\ & ( \RAM1|ram~535_combout\ & ( (\RAM1|ram~533_combout\) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( \RAM1|ram~535_combout\ & ( (!\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~534_combout\)) ) ) ) # ( \ROM1|memROM~51_combout\ & ( !\RAM1|ram~535_combout\ & ( (!\ROM1|memROM~62_combout\ & \RAM1|ram~533_combout\) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( 
-- !\RAM1|ram~535_combout\ & ( (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~532_combout\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~534_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~534_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~532_combout\,
	datad => \RAM1|ALT_INV_ram~533_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: FF_X34_Y6_N35
\RAM1|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~351_q\);

-- Location: FF_X36_Y6_N37
\RAM1|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~391_q\);

-- Location: FF_X34_Y6_N38
\RAM1|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~383_q\);

-- Location: FF_X36_Y6_N34
\RAM1|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~359_q\);

-- Location: MLABCELL_X34_Y6_N36
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \RAM1|ram~383_q\ & ( \RAM1|ram~359_q\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~351_q\))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~391_q\)))) ) ) ) # ( 
-- !\RAM1|ram~383_q\ & ( \RAM1|ram~359_q\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~351_q\ & ((!\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~391_q\)))) ) ) ) # ( \RAM1|ram~383_q\ & ( 
-- !\RAM1|ram~359_q\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~351_q\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~391_q\ & \ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~383_q\ & ( !\RAM1|ram~359_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (\RAM1|ram~351_q\ & ((!\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~391_q\ & \ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~351_q\,
	datab => \RAM1|ALT_INV_ram~391_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~383_q\,
	dataf => \RAM1|ALT_INV_ram~359_q\,
	combout => \RAM1|ram~543_combout\);

-- Location: LABCELL_X35_Y1_N6
\RAM1|ram~487feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~487feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~487feeder_combout\);

-- Location: FF_X35_Y1_N8
\RAM1|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~487feeder_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~487_q\);

-- Location: FF_X35_Y4_N17
\RAM1|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~511_q\);

-- Location: FF_X35_Y1_N14
\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

-- Location: FF_X35_Y4_N41
\RAM1|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~479_q\);

-- Location: LABCELL_X35_Y1_N12
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \RAM1|ram~519_q\ & ( \RAM1|ram~479_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~511_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~487_q\))) ) ) ) # ( 
-- !\RAM1|ram~519_q\ & ( \RAM1|ram~479_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~511_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~487_q\ & (!\ROM1|memROM~42_combout\))) ) ) ) # ( \RAM1|ram~519_q\ & ( !\RAM1|ram~479_q\ 
-- & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\ & \RAM1|ram~511_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~487_q\))) ) ) ) # ( !\RAM1|ram~519_q\ & ( !\RAM1|ram~479_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\ROM1|memROM~42_combout\ & \RAM1|ram~511_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~487_q\ & (!\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~487_q\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~511_q\,
	datae => \RAM1|ALT_INV_ram~519_q\,
	dataf => \RAM1|ALT_INV_ram~479_q\,
	combout => \RAM1|ram~545_combout\);

-- Location: FF_X35_Y3_N40
\RAM1|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~327_q\);

-- Location: LABCELL_X32_Y6_N39
\RAM1|ram~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~287feeder_combout\ = ( \CPU1|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~287feeder_combout\);

-- Location: FF_X32_Y6_N41
\RAM1|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~287feeder_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~287_q\);

-- Location: FF_X32_Y6_N47
\RAM1|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~319_q\);

-- Location: FF_X29_Y1_N34
\RAM1|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~295_q\);

-- Location: LABCELL_X32_Y6_N45
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \RAM1|ram~319_q\ & ( \RAM1|ram~295_q\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~287_q\)))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~327_q\))) ) ) ) # ( 
-- !\RAM1|ram~319_q\ & ( \RAM1|ram~295_q\ & ( (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~287_q\ & !\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~327_q\))) ) ) ) # ( \RAM1|ram~319_q\ & ( 
-- !\RAM1|ram~295_q\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~287_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~327_q\ & ((\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~319_q\ & ( !\RAM1|ram~295_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~287_q\ & !\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~327_q\ & ((\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~327_q\,
	datab => \RAM1|ALT_INV_ram~287_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~319_q\,
	dataf => \RAM1|ALT_INV_ram~295_q\,
	combout => \RAM1|ram~542_combout\);

-- Location: FF_X34_Y2_N46
\RAM1|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~447_q\);

-- Location: FF_X31_Y3_N16
\RAM1|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~423_q\);

-- Location: FF_X35_Y1_N35
\RAM1|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~455_q\);

-- Location: FF_X34_Y2_N10
\RAM1|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~415_q\);

-- Location: LABCELL_X35_Y1_N33
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~455_q\ & ( \RAM1|ram~415_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~447_q\))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~423_q\)))) ) ) ) # ( 
-- !\RAM1|ram~455_q\ & ( \RAM1|ram~415_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~447_q\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~423_q\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~455_q\ & ( 
-- !\RAM1|ram~415_q\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~447_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~423_q\)))) ) ) ) # ( !\RAM1|ram~455_q\ & ( !\RAM1|ram~415_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (\RAM1|ram~447_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~423_q\ & !\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~447_q\,
	datac => \RAM1|ALT_INV_ram~423_q\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~455_q\,
	dataf => \RAM1|ALT_INV_ram~415_q\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X31_Y5_N30
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( \RAM1|ram~542_combout\ & ( \RAM1|ram~544_combout\ & ( (!\ROM1|memROM~51_combout\) # ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~543_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~545_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~542_combout\ & ( \RAM1|ram~544_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~543_combout\ & (\ROM1|memROM~51_combout\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\) # (\RAM1|ram~545_combout\)))) ) ) ) # ( 
-- \RAM1|ram~542_combout\ & ( !\RAM1|ram~544_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\)) # (\RAM1|ram~543_combout\))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\ & \RAM1|ram~545_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~542_combout\ & ( !\RAM1|ram~544_combout\ & ( (\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~543_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~545_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~543_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	datae => \RAM1|ALT_INV_ram~542_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: LABCELL_X31_Y5_N36
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~536_combout\ & ( \RAM1|ram~546_combout\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~541_combout\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~531_combout\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( 
-- !\RAM1|ram~536_combout\ & ( \RAM1|ram~546_combout\ & ( (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~541_combout\)) # (\ROM1|memROM~5_combout\))) # (\ROM1|memROM~50_combout\ & (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~531_combout\)))) ) ) ) # ( 
-- \RAM1|ram~536_combout\ & ( !\RAM1|ram~546_combout\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~5_combout\ & (\RAM1|ram~541_combout\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~531_combout\)) # (\ROM1|memROM~5_combout\))) ) ) ) # ( 
-- !\RAM1|ram~536_combout\ & ( !\RAM1|ram~546_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~541_combout\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~531_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~541_combout\,
	datad => \RAM1|ALT_INV_ram~531_combout\,
	datae => \RAM1|ALT_INV_ram~536_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: LABCELL_X35_Y3_N15
\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \CPU1|DECODER1|saida[1]~0_combout\ & ( \comb~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	combout => \comb~9_combout\);

-- Location: MLABCELL_X34_Y1_N36
\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = ( \CPU1|DECODER1|saida[1]~0_combout\ & ( (\RAM1|process_0~0_combout\ & !\CPU1|DECODER1|saida[5]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

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

-- Location: LABCELL_X29_Y5_N45
\ED1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ED1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	combout => \ED1|saidaQ~0_combout\);

-- Location: MLABCELL_X28_Y5_N6
\ED1|saidaQ~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ED1|saidaQ~feeder_combout\ = ( \ED1|saidaQ~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ED1|ALT_INV_saidaQ~0_combout\,
	combout => \ED1|saidaQ~feeder_combout\);

-- Location: FF_X28_Y5_N8
\ED1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ED1|saidaQ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ED1|saidaQ~q\);

-- Location: MLABCELL_X28_Y5_N15
\ED1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ED1|saida~combout\ = LCELL(( \ED1|saidaQ~q\ & ( \KEY[1]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \ED1|ALT_INV_saidaQ~q\,
	combout => \ED1|saida~combout\);

-- Location: MLABCELL_X28_Y5_N24
\FFK1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFK1|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FFK1|DOUT~feeder_combout\);

-- Location: MLABCELL_X34_Y1_N24
\comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = ( \ROM1|memROM~34_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM1|memROM~70_combout\ & (\ROM1|memROM~30_combout\ & (\ROM1|memROM~4_combout\ & \ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~70_combout\,
	datab => \ROM1|ALT_INV_memROM~30_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \ROM1|ALT_INV_memROM~34_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \comb~11_combout\);

-- Location: MLABCELL_X34_Y1_N6
\comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = ( !\ROM1|memROM~50_combout\ & ( \CPU1|DECODER1|Equal5~0_combout\ & ( (\comb~11_combout\ & (\ROM1|memROM~62_combout\ & (\ROM1|memROM~42_combout\ & !\ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~11_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \comb~12_combout\);

-- Location: FF_X28_Y5_N25
\FFK1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ED1|saida~combout\,
	d => \FFK1|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFK1|DOUT~q\);

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

-- Location: LABCELL_X39_Y4_N30
\CPU1|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~1_combout\ = ( \SW[8]~input_o\ & ( \CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM1|memROM~82_combout\ & ((\FFK1|DOUT~q\) # (\ROM1|memROM~50_combout\))) ) ) ) # ( !\SW[8]~input_o\ & ( \CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\FFK1|DOUT~q\ & \ROM1|memROM~82_combout\)) ) ) ) # ( \SW[8]~input_o\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~82_combout\ & ((\FFK1|DOUT~q\) # (\ROM1|memROM~50_combout\)))) ) ) ) # ( 
-- !\SW[8]~input_o\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~4_combout\ & (\FFK1|DOUT~q\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000100110000000000000010100000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \FFK1|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \CPU1|MUX1|saida_MUX[0]~1_combout\);

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

-- Location: LABCELL_X29_Y5_N42
\ED0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ED0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \ED0|saidaQ~0_combout\);

-- Location: FF_X29_Y5_N44
\ED0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ED0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ED0|saidaQ~q\);

-- Location: LABCELL_X29_Y5_N57
\ED0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ED0|saida~combout\ = LCELL(( \ED0|saidaQ~q\ & ( \KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \ED0|ALT_INV_saidaQ~q\,
	combout => \ED0|saida~combout\);

-- Location: LABCELL_X29_Y5_N39
\FFK0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFK0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FFK0|DOUT~feeder_combout\);

-- Location: MLABCELL_X34_Y1_N42
\comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = ( !\ROM1|memROM~50_combout\ & ( \CPU1|DECODER1|Equal5~0_combout\ & ( (\comb~11_combout\ & (\ROM1|memROM~62_combout\ & (\ROM1|memROM~42_combout\ & \ROM1|memROM~82_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~11_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \comb~13_combout\);

-- Location: FF_X29_Y5_N41
\FFK0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ED0|saida~combout\,
	d => \FFK0|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFK0|DOUT~q\);

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

-- Location: LABCELL_X29_Y5_N15
\CPU1|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~2_combout\ = ( \ROM1|memROM~50_combout\ & ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~82_combout\ & \SW[9]~input_o\)) ) ) ) # ( !\ROM1|memROM~50_combout\ & ( 
-- !\CPU1|DECODER1|saida[5]~1_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~82_combout\ & \FFK0|DOUT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \FFK0|ALT_INV_DOUT~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~2_combout\);

-- Location: LABCELL_X36_Y5_N0
\CPU1|MUX1|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~4_combout\ = ( \CPU1|MUX1|saida_MUX[0]~1_combout\ & ( \CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (((\RAM1|ram~547_combout\ & \CPU1|MUX1|saida_MUX[0]~0_combout\)) # (\comb~9_combout\)) # (\CPU1|MUX1|saida_MUX[0]~3_combout\) ) ) ) # ( 
-- !\CPU1|MUX1|saida_MUX[0]~1_combout\ & ( \CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (((\RAM1|ram~547_combout\ & \CPU1|MUX1|saida_MUX[0]~0_combout\)) # (\comb~9_combout\)) # (\CPU1|MUX1|saida_MUX[0]~3_combout\) ) ) ) # ( \CPU1|MUX1|saida_MUX[0]~1_combout\ & ( 
-- !\CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (((\RAM1|ram~547_combout\ & \CPU1|MUX1|saida_MUX[0]~0_combout\)) # (\comb~9_combout\)) # (\CPU1|MUX1|saida_MUX[0]~3_combout\) ) ) ) # ( !\CPU1|MUX1|saida_MUX[0]~1_combout\ & ( !\CPU1|MUX1|saida_MUX[0]~2_combout\ & ( 
-- ((\RAM1|ram~547_combout\ & \CPU1|MUX1|saida_MUX[0]~0_combout\)) # (\CPU1|MUX1|saida_MUX[0]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010111110111111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	datab => \RAM1|ALT_INV_ram~547_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~4_combout\);

-- Location: LABCELL_X36_Y5_N30
\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (!\ROM1|memROM~24_combout\) # (((\ROM1|memROM~18_combout\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\)) # (\CPU1|ULA1|Equal1~0_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

-- Location: LABCELL_X36_Y5_N33
\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[0]~4_combout\ $ (((\ROM1|memROM~24_combout\ & (!\CPU1|ULA1|Equal1~0_combout\ & !\ROM1|memROM~57_combout\)))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( !\CPU1|MUX1|saida_MUX[0]~4_combout\ $ (((\ROM1|memROM~24_combout\ & (!\CPU1|ULA1|Equal1~0_combout\ & !\ROM1|memROM~57_combout\)))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~24_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~57_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

-- Location: LABCELL_X36_Y5_N36
\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[1]~7_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( !\CPU1|MUX1|saida_MUX[1]~7_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~7_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

-- Location: FF_X36_Y5_N38
\CPU1|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~7_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(1));

-- Location: FF_X34_Y4_N35
\RAM1|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~304_q\);

-- Location: LABCELL_X32_Y6_N54
\RAM1|ram~320feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~320feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~320feeder_combout\);

-- Location: FF_X32_Y6_N55
\RAM1|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~320feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~320_q\);

-- Location: FF_X34_Y2_N28
\RAM1|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~448_q\);

-- Location: FF_X34_Y4_N8
\RAM1|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~432_q\);

-- Location: MLABCELL_X34_Y4_N6
\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \RAM1|ram~432_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~320_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~448_q\))) ) ) ) # ( !\RAM1|ram~432_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & (\RAM1|ram~320_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~448_q\))) ) ) ) # ( \RAM1|ram~432_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~304_q\) ) ) ) # ( !\RAM1|ram~432_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~304_q\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~304_q\,
	datab => \RAM1|ALT_INV_ram~320_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~448_q\,
	datae => \RAM1|ALT_INV_ram~432_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~563_combout\);

-- Location: MLABCELL_X34_Y6_N18
\RAM1|ram~384feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~384feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~384feeder_combout\);

-- Location: FF_X34_Y6_N19
\RAM1|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~384feeder_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~384_q\);

-- Location: FF_X31_Y5_N4
\RAM1|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~368_q\);

-- Location: LABCELL_X35_Y4_N33
\RAM1|ram~496feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~496feeder_combout\ = \CPU1|REGA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~496feeder_combout\);

-- Location: FF_X35_Y4_N35
\RAM1|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~496feeder_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~496_q\);

-- Location: FF_X35_Y4_N59
\RAM1|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~512_q\);

-- Location: LABCELL_X35_Y4_N57
\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \RAM1|ram~512_q\ & ( \ROM1|memROM~62_combout\ & ( (\RAM1|ram~496_q\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~512_q\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~496_q\) ) ) ) # ( 
-- \RAM1|ram~512_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~368_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~384_q\)) ) ) ) # ( !\RAM1|ram~512_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- ((\RAM1|ram~368_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~384_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~384_q\,
	datac => \RAM1|ALT_INV_ram~368_q\,
	datad => \RAM1|ALT_INV_ram~496_q\,
	datae => \RAM1|ALT_INV_ram~512_q\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~564_combout\);

-- Location: FF_X29_Y2_N41
\RAM1|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~392_q\);

-- Location: FF_X29_Y2_N35
\RAM1|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~504_q\);

-- Location: FF_X31_Y4_N4
\RAM1|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~376_q\);

-- Location: FF_X29_Y2_N14
\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

-- Location: LABCELL_X29_Y2_N12
\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = ( \RAM1|ram~520_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~392_q\) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~520_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & \RAM1|ram~392_q\) ) ) ) # ( 
-- \RAM1|ram~520_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~376_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~504_q\)) ) ) ) # ( !\RAM1|ram~520_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~376_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~504_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \RAM1|ALT_INV_ram~392_q\,
	datac => \RAM1|ALT_INV_ram~504_q\,
	datad => \RAM1|ALT_INV_ram~376_q\,
	datae => \RAM1|ALT_INV_ram~520_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~566_combout\);

-- Location: FF_X35_Y3_N22
\RAM1|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~312_q\);

-- Location: FF_X32_Y2_N13
\RAM1|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~440_q\);

-- Location: FF_X28_Y4_N5
\RAM1|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~456_q\);

-- Location: FF_X35_Y3_N28
\RAM1|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~328_q\);

-- Location: MLABCELL_X28_Y4_N3
\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( \RAM1|ram~456_q\ & ( \RAM1|ram~328_q\ & ( ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~312_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~440_q\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~456_q\ & ( \RAM1|ram~328_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~312_q\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~440_q\ & !\ROM1|memROM~5_combout\)))) ) ) ) # ( \RAM1|ram~456_q\ & ( !\RAM1|ram~328_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~312_q\ & ((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~5_combout\) # (\RAM1|ram~440_q\)))) ) ) ) # ( !\RAM1|ram~456_q\ & ( !\RAM1|ram~328_q\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~312_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~440_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~312_q\,
	datab => \RAM1|ALT_INV_ram~440_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~456_q\,
	dataf => \RAM1|ALT_INV_ram~328_q\,
	combout => \RAM1|ram~565_combout\);

-- Location: MLABCELL_X34_Y4_N30
\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( \RAM1|ram~566_combout\ & ( \RAM1|ram~565_combout\ & ( ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~563_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~564_combout\)))) # (\ROM1|memROM~82_combout\) ) ) ) # ( 
-- !\RAM1|ram~566_combout\ & ( \RAM1|ram~565_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~563_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~564_combout\))))) # (\ROM1|memROM~82_combout\ & 
-- (((!\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~566_combout\ & ( !\RAM1|ram~565_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~563_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~564_combout\))))) # 
-- (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~51_combout\)))) ) ) ) # ( !\RAM1|ram~566_combout\ & ( !\RAM1|ram~565_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~563_combout\)) # (\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~564_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~563_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~564_combout\,
	datae => \RAM1|ALT_INV_ram~566_combout\,
	dataf => \RAM1|ALT_INV_ram~565_combout\,
	combout => \RAM1|ram~567_combout\);

-- Location: LABCELL_X32_Y5_N12
\RAM1|ram~400feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~400feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~400feeder_combout\);

-- Location: FF_X32_Y5_N14
\RAM1|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~400feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~400_q\);

-- Location: LABCELL_X32_Y5_N6
\RAM1|ram~408feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~408feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~408feeder_combout\);

-- Location: FF_X32_Y5_N7
\RAM1|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~408feeder_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~408_q\);

-- Location: FF_X32_Y5_N50
\RAM1|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~424_q\);

-- Location: MLABCELL_X34_Y2_N18
\RAM1|ram~416feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~416feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~416feeder_combout\);

-- Location: FF_X34_Y2_N19
\RAM1|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~416feeder_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~416_q\);

-- Location: LABCELL_X32_Y5_N48
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \RAM1|ram~424_q\ & ( \RAM1|ram~416_q\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~400_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~408_q\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~424_q\ & ( \RAM1|ram~416_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~400_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~408_q\))))) # (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~424_q\ & ( !\RAM1|ram~416_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~400_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~408_q\))))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~424_q\ & ( !\RAM1|ram~416_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~400_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~408_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~400_q\,
	datac => \RAM1|ALT_INV_ram~408_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~424_q\,
	dataf => \RAM1|ALT_INV_ram~416_q\,
	combout => \RAM1|ram~555_combout\);

-- Location: FF_X31_Y5_N40
\RAM1|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~336_q\);

-- Location: LABCELL_X36_Y6_N12
\RAM1|ram~360feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~360feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~360feeder_combout\);

-- Location: FF_X36_Y6_N13
\RAM1|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~360feeder_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~360_q\);

-- Location: FF_X34_Y6_N14
\RAM1|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~352_q\);

-- Location: MLABCELL_X42_Y4_N6
\RAM1|ram~344feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~344feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~344feeder_combout\);

-- Location: FF_X42_Y4_N7
\RAM1|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~344feeder_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~344_q\);

-- Location: MLABCELL_X34_Y6_N12
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~352_q\ & ( \RAM1|ram~344_q\ & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~336_q\))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~360_q\)))) ) ) ) # ( 
-- !\RAM1|ram~352_q\ & ( \RAM1|ram~344_q\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~336_q\ & (!\ROM1|memROM~5_combout\))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~360_q\)))) ) ) ) # ( \RAM1|ram~352_q\ & ( !\RAM1|ram~344_q\ & 
-- ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~336_q\))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\ & \RAM1|ram~360_q\)))) ) ) ) # ( !\RAM1|ram~352_q\ & ( !\RAM1|ram~344_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~336_q\ & (!\ROM1|memROM~5_combout\))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\ & \RAM1|ram~360_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~336_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~360_q\,
	datae => \RAM1|ALT_INV_ram~352_q\,
	dataf => \RAM1|ALT_INV_ram~344_q\,
	combout => \RAM1|ram~554_combout\);

-- Location: MLABCELL_X42_Y4_N3
\RAM1|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~280feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~280feeder_combout\);

-- Location: FF_X42_Y4_N4
\RAM1|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~280feeder_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~280_q\);

-- Location: LABCELL_X26_Y6_N30
\RAM1|ram~296feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~296feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~296feeder_combout\);

-- Location: FF_X26_Y6_N31
\RAM1|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~296feeder_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~296_q\);

-- Location: FF_X32_Y6_N20
\RAM1|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~288_q\);

-- Location: FF_X34_Y5_N40
\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

-- Location: LABCELL_X32_Y6_N18
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \RAM1|ram~288_q\ & ( \RAM1|ram~272_q\ & ( (!\ROM1|memROM~82_combout\) # ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~280_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~296_q\)))) ) ) ) # ( !\RAM1|ram~288_q\ & ( \RAM1|ram~272_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~280_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~296_q\))))) ) ) ) # ( \RAM1|ram~288_q\ & ( !\RAM1|ram~272_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~280_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~296_q\))))) ) ) ) # ( !\RAM1|ram~288_q\ & ( !\RAM1|ram~272_q\ & ( 
-- (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~280_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~296_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~280_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~296_q\,
	datae => \RAM1|ALT_INV_ram~288_q\,
	dataf => \RAM1|ALT_INV_ram~272_q\,
	combout => \RAM1|ram~553_combout\);

-- Location: FF_X31_Y5_N52
\RAM1|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~472_q\);

-- Location: FF_X35_Y4_N52
\RAM1|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~480_q\);

-- Location: FF_X36_Y6_N20
\RAM1|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~488_q\);

-- Location: FF_X42_Y3_N19
\RAM1|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~464_q\);

-- Location: LABCELL_X36_Y6_N18
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \RAM1|ram~488_q\ & ( \RAM1|ram~464_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~480_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~472_q\))) ) ) ) # ( 
-- !\RAM1|ram~488_q\ & ( \RAM1|ram~464_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~480_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~472_q\ & ((!\ROM1|memROM~5_combout\)))) ) ) ) # ( \RAM1|ram~488_q\ & ( !\RAM1|ram~464_q\ 
-- & ( (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~480_q\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~472_q\))) ) ) ) # ( !\RAM1|ram~488_q\ & ( !\RAM1|ram~464_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\RAM1|ram~480_q\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~472_q\ & ((!\ROM1|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~472_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~480_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~488_q\,
	dataf => \RAM1|ALT_INV_ram~464_q\,
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X36_Y4_N54
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \RAM1|ram~553_combout\ & ( \RAM1|ram~556_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\) # (\RAM1|ram~554_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # 
-- (\RAM1|ram~555_combout\))) ) ) ) # ( !\RAM1|ram~553_combout\ & ( \RAM1|ram~556_combout\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\ & \RAM1|ram~554_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\)) # 
-- (\RAM1|ram~555_combout\))) ) ) ) # ( \RAM1|ram~553_combout\ & ( !\RAM1|ram~556_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~51_combout\) # (\RAM1|ram~554_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~555_combout\ & 
-- (!\ROM1|memROM~51_combout\))) ) ) ) # ( !\RAM1|ram~553_combout\ & ( !\RAM1|ram~556_combout\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~51_combout\ & \RAM1|ram~554_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~555_combout\ & 
-- (!\ROM1|memROM~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~555_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~554_combout\,
	datae => \RAM1|ALT_INV_ram~553_combout\,
	dataf => \RAM1|ALT_INV_ram~556_combout\,
	combout => \RAM1|ram~557_combout\);

-- Location: LABCELL_X39_Y5_N21
\RAM1|ram~240feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~240feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~240feeder_combout\);

-- Location: FF_X39_Y5_N23
\RAM1|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~240feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~240_q\);

-- Location: FF_X36_Y4_N40
\RAM1|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~176_q\);

-- Location: FF_X35_Y2_N52
\RAM1|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~192_q\);

-- Location: FF_X39_Y5_N26
\RAM1|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~256_q\);

-- Location: LABCELL_X39_Y5_N24
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \RAM1|ram~256_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~192_q\) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~256_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & \RAM1|ram~192_q\) ) ) ) # ( 
-- \RAM1|ram~256_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & ((\RAM1|ram~176_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~240_q\)) ) ) ) # ( !\RAM1|ram~256_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~176_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~240_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~240_q\,
	datab => \RAM1|ALT_INV_ram~176_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~192_q\,
	datae => \RAM1|ALT_INV_ram~256_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~559_combout\);

-- Location: FF_X31_Y6_N10
\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

-- Location: FF_X36_Y4_N52
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: FF_X39_Y6_N10
\RAM1|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~128_q\);

-- Location: FF_X36_Y4_N32
\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

-- Location: LABCELL_X36_Y4_N30
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \RAM1|ram~112_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~64_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~128_q\))) ) ) ) # ( !\RAM1|ram~112_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~51_combout\ & (\RAM1|ram~64_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~128_q\))) ) ) ) # ( \RAM1|ram~112_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~48_q\) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~112_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & \RAM1|ram~48_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~64_q\,
	datac => \RAM1|ALT_INV_ram~48_q\,
	datad => \RAM1|ALT_INV_ram~128_q\,
	datae => \RAM1|ALT_INV_ram~112_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: FF_X41_Y4_N38
\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

-- Location: FF_X31_Y2_N55
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: FF_X31_Y2_N4
\RAM1|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~120_q\);

-- Location: FF_X41_Y4_N14
\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

-- Location: LABCELL_X41_Y4_N12
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \RAM1|ram~136_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~120_q\) ) ) ) # ( !\RAM1|ram~136_q\ & ( \ROM1|memROM~51_combout\ & ( (\RAM1|ram~120_q\ & !\ROM1|memROM~5_combout\) ) ) ) # ( 
-- \RAM1|ram~136_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~56_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~72_q\)) ) ) ) # ( !\RAM1|ram~136_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- ((\RAM1|ram~56_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~72_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~72_q\,
	datab => \RAM1|ALT_INV_ram~56_q\,
	datac => \RAM1|ALT_INV_ram~120_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~136_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~560_combout\);

-- Location: LABCELL_X36_Y2_N0
\RAM1|ram~200feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~200feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~200feeder_combout\);

-- Location: FF_X36_Y2_N1
\RAM1|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~200feeder_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~200_q\);

-- Location: FF_X37_Y2_N16
\RAM1|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~248_q\);

-- Location: FF_X41_Y4_N20
\RAM1|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~264_q\);

-- Location: FF_X37_Y2_N11
\RAM1|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~184_q\);

-- Location: LABCELL_X41_Y4_N18
\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \RAM1|ram~264_q\ & ( \RAM1|ram~184_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~200_q\)))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~248_q\)) # (\ROM1|memROM~5_combout\))) ) ) ) # ( 
-- !\RAM1|ram~264_q\ & ( \RAM1|ram~184_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~5_combout\) # ((\RAM1|ram~200_q\)))) # (\ROM1|memROM~51_combout\ & (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~248_q\)))) ) ) ) # ( \RAM1|ram~264_q\ & ( !\RAM1|ram~184_q\ 
-- & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~5_combout\ & (\RAM1|ram~200_q\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~248_q\)) # (\ROM1|memROM~5_combout\))) ) ) ) # ( !\RAM1|ram~264_q\ & ( !\RAM1|ram~184_q\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\ROM1|memROM~5_combout\ & (\RAM1|ram~200_q\))) # (\ROM1|memROM~51_combout\ & (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~248_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~200_q\,
	datad => \RAM1|ALT_INV_ram~248_q\,
	datae => \RAM1|ALT_INV_ram~264_q\,
	dataf => \RAM1|ALT_INV_ram~184_q\,
	combout => \RAM1|ram~561_combout\);

-- Location: LABCELL_X39_Y4_N12
\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \RAM1|ram~560_combout\ & ( \RAM1|ram~561_combout\ & ( ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~558_combout\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~559_combout\))) # (\ROM1|memROM~82_combout\) ) ) ) # ( 
-- !\RAM1|ram~560_combout\ & ( \RAM1|ram~561_combout\ & ( (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~558_combout\)))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~559_combout\)) # (\ROM1|memROM~82_combout\))) ) ) ) # ( 
-- \RAM1|ram~560_combout\ & ( !\RAM1|ram~561_combout\ & ( (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~558_combout\)) # (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~82_combout\ & (\RAM1|ram~559_combout\))) ) ) ) # ( 
-- !\RAM1|ram~560_combout\ & ( !\RAM1|ram~561_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~558_combout\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~559_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~559_combout\,
	datad => \RAM1|ALT_INV_ram~558_combout\,
	datae => \RAM1|ALT_INV_ram~560_combout\,
	dataf => \RAM1|ALT_INV_ram~561_combout\,
	combout => \RAM1|ram~562_combout\);

-- Location: FF_X42_Y3_N14
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X36_Y2_N27
\RAM1|ram~168feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~168feeder_combout\);

-- Location: FF_X36_Y2_N28
\RAM1|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~168feeder_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~168_q\);

-- Location: LABCELL_X36_Y2_N48
\RAM1|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~24feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~24feeder_combout\);

-- Location: FF_X36_Y2_N50
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~24feeder_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X36_Y3_N20
\RAM1|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~152_q\);

-- Location: LABCELL_X36_Y3_N18
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \RAM1|ram~152_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~40_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~168_q\))) ) ) ) # ( !\RAM1|ram~152_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & (\RAM1|ram~40_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~168_q\))) ) ) ) # ( \RAM1|ram~152_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~24_q\) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~152_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & \RAM1|ram~24_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~40_q\,
	datab => \RAM1|ALT_INV_ram~168_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	datae => \RAM1|ALT_INV_ram~152_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: FF_X36_Y3_N35
\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

-- Location: LABCELL_X39_Y6_N15
\RAM1|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~96feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~96feeder_combout\);

-- Location: FF_X39_Y6_N17
\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~96feeder_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

-- Location: LABCELL_X39_Y5_N45
\RAM1|ram~224feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~224feeder_combout\ = ( \CPU1|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~224feeder_combout\);

-- Location: FF_X39_Y5_N46
\RAM1|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~224feeder_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~224_q\);

-- Location: FF_X36_Y3_N38
\RAM1|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~208_q\);

-- Location: LABCELL_X36_Y3_N36
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \RAM1|ram~208_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~96_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~224_q\))) ) ) ) # ( !\RAM1|ram~208_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & (\RAM1|ram~96_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~224_q\))) ) ) ) # ( \RAM1|ram~208_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~80_q\) ) ) ) # ( !\RAM1|ram~208_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~80_q\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~80_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~96_q\,
	datad => \RAM1|ALT_INV_ram~224_q\,
	datae => \RAM1|ALT_INV_ram~208_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: FF_X31_Y2_N52
\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

-- Location: FF_X40_Y2_N25
\RAM1|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~232_q\);

-- Location: FF_X40_Y2_N50
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: FF_X40_Y2_N14
\RAM1|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~216_q\);

-- Location: LABCELL_X40_Y2_N12
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \RAM1|ram~216_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~104_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~232_q\)) ) ) ) # ( !\RAM1|ram~216_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~104_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~232_q\)) ) ) ) # ( \RAM1|ram~216_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~88_q\) ) ) ) # ( !\RAM1|ram~216_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~88_q\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~88_q\,
	datab => \RAM1|ALT_INV_ram~232_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~104_q\,
	datae => \RAM1|ALT_INV_ram~216_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: FF_X35_Y2_N16
\RAM1|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~160_q\);

-- Location: FF_X37_Y4_N47
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: FF_X31_Y6_N34
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X37_Y4_N20
\RAM1|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~144_q\);

-- Location: MLABCELL_X37_Y4_N18
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \RAM1|ram~144_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~32_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~160_q\)) ) ) ) # ( !\RAM1|ram~144_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((\RAM1|ram~32_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~160_q\)) ) ) ) # ( \RAM1|ram~144_q\ & ( !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~16_q\) ) ) ) # ( !\RAM1|ram~144_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~160_q\,
	datab => \RAM1|ALT_INV_ram~16_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~32_q\,
	datae => \RAM1|ALT_INV_ram~144_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: LABCELL_X36_Y4_N48
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~551_combout\ & ( \RAM1|ram~548_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~550_combout\))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~82_combout\) # 
-- (\RAM1|ram~549_combout\)))) ) ) ) # ( !\RAM1|ram~551_combout\ & ( \RAM1|ram~548_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~550_combout\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~549_combout\ & 
-- !\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~551_combout\ & ( !\RAM1|ram~548_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~550_combout\ & ((\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~82_combout\) # 
-- (\RAM1|ram~549_combout\)))) ) ) ) # ( !\RAM1|ram~551_combout\ & ( !\RAM1|ram~548_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~550_combout\ & ((\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~549_combout\ & 
-- !\ROM1|memROM~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~550_combout\,
	datab => \RAM1|ALT_INV_ram~549_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~551_combout\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: LABCELL_X36_Y4_N15
\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \RAM1|ram~562_combout\ & ( \RAM1|ram~552_combout\ & ( ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~557_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~567_combout\))) # (\ROM1|memROM~50_combout\) ) ) ) # ( 
-- !\RAM1|ram~562_combout\ & ( \RAM1|ram~552_combout\ & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~557_combout\) # (\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~567_combout\ & (!\ROM1|memROM~50_combout\))) ) ) ) # ( 
-- \RAM1|ram~562_combout\ & ( !\RAM1|ram~552_combout\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~50_combout\ & \RAM1|ram~557_combout\)))) # (\ROM1|memROM~42_combout\ & (((\ROM1|memROM~50_combout\)) # (\RAM1|ram~567_combout\))) ) ) ) # ( 
-- !\RAM1|ram~562_combout\ & ( !\RAM1|ram~552_combout\ & ( (!\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~557_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~567_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~567_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~557_combout\,
	datae => \RAM1|ALT_INV_ram~562_combout\,
	dataf => \RAM1|ALT_INV_ram~552_combout\,
	combout => \RAM1|ram~568_combout\);

-- Location: LABCELL_X36_Y4_N36
\CPU1|MUX1|saida_MUX[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~7_combout\ = ( \CPU1|DECODER1|saida[5]~1_combout\ & ( \RAM1|ram~568_combout\ & ( (((\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~6_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\)) # (\ROM1|memROM~5_combout\) ) ) ) # ( 
-- !\CPU1|DECODER1|saida[5]~1_combout\ & ( \RAM1|ram~568_combout\ & ( ((\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~6_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) ) # ( \CPU1|DECODER1|saida[5]~1_combout\ & ( !\RAM1|ram~568_combout\ & ( 
-- ((\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~6_combout\)) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( !\RAM1|ram~568_combout\ & ( (\SW[1]~input_o\ & \CPU1|MUX1|saida_MUX[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100110011001111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datae => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~568_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~7_combout\);

-- Location: LABCELL_X36_Y5_N39
\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

-- Location: FF_X36_Y5_N41
\CPU1|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~8_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(2));

-- Location: FF_X35_Y4_N32
\RAM1|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~497_q\);

-- Location: FF_X35_Y4_N38
\RAM1|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~481_q\);

-- Location: FF_X35_Y4_N14
\RAM1|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~513_q\);

-- Location: MLABCELL_X42_Y3_N57
\RAM1|ram~465feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~465feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~465feeder_combout\);

-- Location: FF_X42_Y3_N58
\RAM1|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~465feeder_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~465_q\);

-- Location: LABCELL_X35_Y4_N12
\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( \RAM1|ram~513_q\ & ( \RAM1|ram~465_q\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~497_q\))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~481_q\)))) ) ) ) # ( 
-- !\RAM1|ram~513_q\ & ( \RAM1|ram~465_q\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~497_q\))) # (\ROM1|memROM~5_combout\ & (((\RAM1|ram~481_q\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~513_q\ & ( !\RAM1|ram~465_q\ 
-- & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~497_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~481_q\)))) ) ) ) # ( !\RAM1|ram~513_q\ & ( !\RAM1|ram~465_q\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~497_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (((\RAM1|ram~481_q\ & !\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~497_q\,
	datac => \RAM1|ALT_INV_ram~481_q\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~513_q\,
	dataf => \RAM1|ALT_INV_ram~465_q\,
	combout => \RAM1|ram~577_combout\);

-- Location: FF_X34_Y2_N2
\RAM1|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~433_q\);

-- Location: MLABCELL_X34_Y2_N6
\RAM1|ram~417feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~417feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~417feeder_combout\);

-- Location: FF_X34_Y2_N8
\RAM1|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~417feeder_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~417_q\);

-- Location: FF_X34_Y2_N26
\RAM1|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~449_q\);

-- Location: LABCELL_X32_Y5_N3
\RAM1|ram~401feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~401feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~401feeder_combout\);

-- Location: FF_X32_Y5_N4
\RAM1|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~401feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~401_q\);

-- Location: MLABCELL_X34_Y2_N24
\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \RAM1|ram~449_q\ & ( \RAM1|ram~401_q\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~433_q\))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~417_q\)))) ) ) ) # ( 
-- !\RAM1|ram~449_q\ & ( \RAM1|ram~401_q\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~433_q\))) # (\ROM1|memROM~5_combout\ & (((\RAM1|ram~417_q\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~449_q\ & ( !\RAM1|ram~401_q\ 
-- & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~433_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~417_q\)))) ) ) ) # ( !\RAM1|ram~449_q\ & ( !\RAM1|ram~401_q\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~433_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (((\RAM1|ram~417_q\ & !\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~433_q\,
	datab => \RAM1|ALT_INV_ram~417_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~449_q\,
	dataf => \RAM1|ALT_INV_ram~401_q\,
	combout => \RAM1|ram~576_combout\);

-- Location: FF_X36_Y5_N22
\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

-- Location: FF_X32_Y6_N38
\RAM1|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~289_q\);

-- Location: FF_X32_Y6_N44
\RAM1|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~321_q\);

-- Location: FF_X32_Y6_N2
\RAM1|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~305_q\);

-- Location: LABCELL_X32_Y6_N0
\RAM1|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~574_combout\ = ( \RAM1|ram~305_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~289_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~321_q\))) ) ) ) # ( !\RAM1|ram~305_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~42_combout\ & (\RAM1|ram~289_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~321_q\))) ) ) ) # ( \RAM1|ram~305_q\ & ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~273_q\) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~305_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~42_combout\ & \RAM1|ram~273_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~273_q\,
	datac => \RAM1|ALT_INV_ram~289_q\,
	datad => \RAM1|ALT_INV_ram~321_q\,
	datae => \RAM1|ALT_INV_ram~305_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~574_combout\);

-- Location: FF_X34_Y6_N2
\RAM1|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~385_q\);

-- Location: FF_X34_Y6_N32
\RAM1|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~353_q\);

-- Location: FF_X34_Y6_N56
\RAM1|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~369_q\);

-- Location: FF_X31_Y5_N28
\RAM1|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~337_q\);

-- Location: MLABCELL_X34_Y6_N54
\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \RAM1|ram~369_q\ & ( \RAM1|ram~337_q\ & ( (!\ROM1|memROM~5_combout\) # ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~353_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~385_q\))) ) ) ) # ( !\RAM1|ram~369_q\ & ( \RAM1|ram~337_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~42_combout\)) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~353_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~385_q\)))) ) ) ) # ( \RAM1|ram~369_q\ & ( !\RAM1|ram~337_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~42_combout\)) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~353_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~385_q\)))) ) ) ) # ( !\RAM1|ram~369_q\ & ( !\RAM1|ram~337_q\ & ( 
-- (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~353_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~385_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~385_q\,
	datad => \RAM1|ALT_INV_ram~353_q\,
	datae => \RAM1|ALT_INV_ram~369_q\,
	dataf => \RAM1|ALT_INV_ram~337_q\,
	combout => \RAM1|ram~575_combout\);

-- Location: MLABCELL_X37_Y3_N48
\RAM1|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~578_combout\ = ( \RAM1|ram~574_combout\ & ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~576_combout\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~577_combout\))) ) ) ) # ( 
-- !\RAM1|ram~574_combout\ & ( \RAM1|ram~575_combout\ & ( (!\ROM1|memROM~62_combout\ & (\ROM1|memROM~51_combout\)) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~576_combout\))) # (\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~577_combout\)))) ) ) ) # ( \RAM1|ram~574_combout\ & ( !\RAM1|ram~575_combout\ & ( (!\ROM1|memROM~62_combout\ & (!\ROM1|memROM~51_combout\)) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~576_combout\))) # 
-- (\ROM1|memROM~51_combout\ & (\RAM1|ram~577_combout\)))) ) ) ) # ( !\RAM1|ram~574_combout\ & ( !\RAM1|ram~575_combout\ & ( (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~576_combout\))) # (\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~577_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \RAM1|ALT_INV_ram~577_combout\,
	datad => \RAM1|ALT_INV_ram~576_combout\,
	datae => \RAM1|ALT_INV_ram~574_combout\,
	dataf => \RAM1|ALT_INV_ram~575_combout\,
	combout => \RAM1|ram~578_combout\);

-- Location: FF_X40_Y2_N31
\RAM1|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~217_q\);

-- Location: FF_X36_Y3_N4
\RAM1|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~153_q\);

-- Location: FF_X37_Y2_N4
\RAM1|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~185_q\);

-- Location: FF_X37_Y3_N26
\RAM1|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~249_q\);

-- Location: MLABCELL_X37_Y3_N24
\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( \RAM1|ram~249_q\ & ( \ROM1|memROM~42_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~185_q\) ) ) ) # ( !\RAM1|ram~249_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~185_q\ & !\ROM1|memROM~51_combout\) ) ) ) # ( 
-- \RAM1|ram~249_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~51_combout\ & ((\RAM1|ram~153_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~217_q\)) ) ) ) # ( !\RAM1|ram~249_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~153_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~217_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~217_q\,
	datab => \RAM1|ALT_INV_ram~153_q\,
	datac => \RAM1|ALT_INV_ram~185_q\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \RAM1|ALT_INV_ram~249_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~580_combout\);

-- Location: LABCELL_X36_Y2_N3
\RAM1|ram~201feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~201feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~201feeder_combout\);

-- Location: FF_X36_Y2_N5
\RAM1|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~201feeder_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~201_q\);

-- Location: LABCELL_X36_Y2_N24
\RAM1|ram~169feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~169feeder_combout\);

-- Location: FF_X36_Y2_N25
\RAM1|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~169feeder_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~169_q\);

-- Location: FF_X37_Y3_N14
\RAM1|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~265_q\);

-- Location: FF_X40_Y2_N46
\RAM1|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~233_q\);

-- Location: MLABCELL_X37_Y3_N12
\RAM1|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~582_combout\ = ( \RAM1|ram~265_q\ & ( \RAM1|ram~233_q\ & ( ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~169_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~201_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~265_q\ & ( \RAM1|ram~233_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~169_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~201_q\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~265_q\ & ( !\RAM1|ram~233_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~169_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~201_q\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~265_q\ & ( !\RAM1|ram~233_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~169_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~201_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~201_q\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~169_q\,
	datae => \RAM1|ALT_INV_ram~265_q\,
	dataf => \RAM1|ALT_INV_ram~233_q\,
	combout => \RAM1|ram~582_combout\);

-- Location: FF_X35_Y6_N31
\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

-- Location: LABCELL_X40_Y2_N39
\RAM1|ram~105feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~105feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~105feeder_combout\);

-- Location: FF_X40_Y2_N40
\RAM1|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~105feeder_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~105_q\);

-- Location: FF_X37_Y3_N38
\RAM1|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~137_q\);

-- Location: MLABCELL_X42_Y3_N3
\RAM1|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~41feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~41feeder_combout\);

-- Location: FF_X42_Y3_N4
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~41feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: MLABCELL_X37_Y3_N36
\RAM1|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~581_combout\ = ( \RAM1|ram~137_q\ & ( \RAM1|ram~41_q\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~73_q\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~105_q\) # (\ROM1|memROM~42_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~137_q\ & ( \RAM1|ram~41_q\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~73_q\))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\ & \RAM1|ram~105_q\)))) ) ) ) # ( \RAM1|ram~137_q\ & ( !\RAM1|ram~41_q\ & 
-- ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~73_q\ & (\ROM1|memROM~42_combout\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~105_q\) # (\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~137_q\ & ( !\RAM1|ram~41_q\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~73_q\ & (\ROM1|memROM~42_combout\))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\ & \RAM1|ram~105_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~73_q\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~105_q\,
	datae => \RAM1|ALT_INV_ram~137_q\,
	dataf => \RAM1|ALT_INV_ram~41_q\,
	combout => \RAM1|ram~581_combout\);

-- Location: FF_X31_Y2_N32
\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

-- Location: FF_X31_Y2_N38
\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

-- Location: LABCELL_X36_Y2_N36
\RAM1|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~25feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~25feeder_combout\);

-- Location: FF_X36_Y2_N37
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~25feeder_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: FF_X31_Y2_N2
\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

-- Location: LABCELL_X31_Y2_N0
\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = ( \RAM1|ram~121_q\ & ( \ROM1|memROM~51_combout\ & ( (\RAM1|ram~89_q\) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~121_q\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~42_combout\ & \RAM1|ram~89_q\) ) ) ) # ( 
-- \RAM1|ram~121_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~42_combout\ & ((\RAM1|ram~25_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~57_q\)) ) ) ) # ( !\RAM1|ram~121_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~42_combout\ & 
-- ((\RAM1|ram~25_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~57_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~89_q\,
	datac => \RAM1|ALT_INV_ram~57_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	datae => \RAM1|ALT_INV_ram~121_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~579_combout\);

-- Location: MLABCELL_X37_Y3_N30
\RAM1|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~583_combout\ = ( \RAM1|ram~581_combout\ & ( \RAM1|ram~579_combout\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~580_combout\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~582_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~581_combout\ & ( \RAM1|ram~579_combout\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~62_combout\)) # (\RAM1|ram~580_combout\))) # (\ROM1|memROM~5_combout\ & (((\ROM1|memROM~62_combout\ & \RAM1|ram~582_combout\)))) ) ) ) # ( 
-- \RAM1|ram~581_combout\ & ( !\RAM1|ram~579_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~580_combout\ & (\ROM1|memROM~62_combout\))) # (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~62_combout\) # (\RAM1|ram~582_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~581_combout\ & ( !\RAM1|ram~579_combout\ & ( (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~580_combout\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~582_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~580_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~582_combout\,
	datae => \RAM1|ALT_INV_ram~581_combout\,
	dataf => \RAM1|ALT_INV_ram~579_combout\,
	combout => \RAM1|ram~583_combout\);

-- Location: FF_X34_Y1_N28
\RAM1|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~345_q\);

-- Location: LABCELL_X39_Y4_N51
\RAM1|ram~377feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~377feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~377feeder_combout\);

-- Location: FF_X39_Y4_N52
\RAM1|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~377feeder_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~377_q\);

-- Location: FF_X40_Y1_N2
\RAM1|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~505_q\);

-- Location: LABCELL_X40_Y3_N9
\RAM1|ram~473feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~473feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~473feeder_combout\);

-- Location: FF_X40_Y3_N10
\RAM1|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~473feeder_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~473_q\);

-- Location: LABCELL_X40_Y1_N0
\RAM1|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~585_combout\ = ( \RAM1|ram~505_q\ & ( \RAM1|ram~473_q\ & ( ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~345_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~377_q\)))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~505_q\ & ( \RAM1|ram~473_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~345_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~377_q\))))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~505_q\ & ( !\RAM1|ram~473_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~345_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~377_q\))))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~505_q\ & ( !\RAM1|ram~473_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~345_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~377_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~345_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~377_q\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~505_q\,
	dataf => \RAM1|ALT_INV_ram~473_q\,
	combout => \RAM1|ram~585_combout\);

-- Location: FF_X34_Y1_N4
\RAM1|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~297_q\);

-- Location: LABCELL_X31_Y1_N0
\RAM1|ram~425feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~425feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~425feeder_combout\);

-- Location: FF_X31_Y1_N1
\RAM1|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~425feeder_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~425_q\);

-- Location: LABCELL_X35_Y3_N9
\RAM1|ram~329feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~329feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~329feeder_combout\);

-- Location: FF_X35_Y3_N10
\RAM1|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~329feeder_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~329_q\);

-- Location: FF_X40_Y1_N8
\RAM1|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~457_q\);

-- Location: LABCELL_X40_Y1_N6
\RAM1|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~586_combout\ = ( \RAM1|ram~457_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~329_q\) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~457_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~62_combout\ & \RAM1|ram~329_q\) ) ) ) # ( 
-- \RAM1|ram~457_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~297_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~425_q\))) ) ) ) # ( !\RAM1|ram~457_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~297_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~425_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~297_q\,
	datab => \RAM1|ALT_INV_ram~425_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~329_q\,
	datae => \RAM1|ALT_INV_ram~457_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~586_combout\);

-- Location: FF_X29_Y4_N34
\RAM1|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~281_q\);

-- Location: FF_X35_Y3_N35
\RAM1|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~313_q\);

-- Location: FF_X29_Y4_N41
\RAM1|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~409_q\);

-- Location: FF_X32_Y2_N20
\RAM1|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~441_q\);

-- Location: LABCELL_X32_Y2_N18
\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( \RAM1|ram~441_q\ & ( \ROM1|memROM~42_combout\ & ( (\ROM1|memROM~62_combout\) # (\RAM1|ram~313_q\) ) ) ) # ( !\RAM1|ram~441_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~313_q\ & !\ROM1|memROM~62_combout\) ) ) ) # ( 
-- \RAM1|ram~441_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~281_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~409_q\))) ) ) ) # ( !\RAM1|ram~441_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~281_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~409_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~281_q\,
	datab => \RAM1|ALT_INV_ram~313_q\,
	datac => \RAM1|ALT_INV_ram~409_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~441_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~584_combout\);

-- Location: LABCELL_X41_Y5_N39
\RAM1|ram~489feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~489feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~489feeder_combout\);

-- Location: FF_X41_Y5_N40
\RAM1|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~489feeder_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~489_q\);

-- Location: FF_X36_Y6_N25
\RAM1|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~393_q\);

-- Location: FF_X40_Y1_N14
\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

-- Location: LABCELL_X41_Y5_N3
\RAM1|ram~361feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~361feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~361feeder_combout\);

-- Location: FF_X41_Y5_N4
\RAM1|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~361feeder_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~361_q\);

-- Location: LABCELL_X40_Y1_N12
\RAM1|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~587_combout\ = ( \RAM1|ram~521_q\ & ( \RAM1|ram~361_q\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~393_q\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~489_q\))) ) ) ) # ( 
-- !\RAM1|ram~521_q\ & ( \RAM1|ram~361_q\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~393_q\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~489_q\ & ((!\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~521_q\ & ( 
-- !\RAM1|ram~361_q\ & ( (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~393_q\ & \ROM1|memROM~42_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~489_q\))) ) ) ) # ( !\RAM1|ram~521_q\ & ( !\RAM1|ram~361_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~393_q\ & \ROM1|memROM~42_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~489_q\ & ((!\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~489_q\,
	datab => \RAM1|ALT_INV_ram~393_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~521_q\,
	dataf => \RAM1|ALT_INV_ram~361_q\,
	combout => \RAM1|ram~587_combout\);

-- Location: LABCELL_X40_Y1_N18
\RAM1|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~588_combout\ = ( \RAM1|ram~584_combout\ & ( \RAM1|ram~587_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~586_combout\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~5_combout\)) # 
-- (\RAM1|ram~585_combout\))) ) ) ) # ( !\RAM1|ram~584_combout\ & ( \RAM1|ram~587_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\RAM1|ram~586_combout\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~5_combout\)) # 
-- (\RAM1|ram~585_combout\))) ) ) ) # ( \RAM1|ram~584_combout\ & ( !\RAM1|ram~587_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~586_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~585_combout\ & 
-- ((!\ROM1|memROM~5_combout\)))) ) ) ) # ( !\RAM1|ram~584_combout\ & ( !\RAM1|ram~587_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\RAM1|ram~586_combout\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~585_combout\ & 
-- ((!\ROM1|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~585_combout\,
	datab => \RAM1|ALT_INV_ram~586_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~584_combout\,
	dataf => \RAM1|ALT_INV_ram~587_combout\,
	combout => \RAM1|ram~588_combout\);

-- Location: FF_X31_Y6_N20
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X31_Y6_N54
\RAM1|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~65feeder_combout\ = \CPU1|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~65feeder_combout\);

-- Location: FF_X31_Y6_N55
\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~65feeder_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

-- Location: FF_X37_Y4_N28
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: FF_X31_Y6_N14
\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

-- Location: LABCELL_X31_Y6_N12
\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( \RAM1|ram~49_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\) # (\RAM1|ram~65_q\) ) ) ) # ( !\RAM1|ram~49_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~65_q\ & \ROM1|memROM~5_combout\) ) ) ) # ( \RAM1|ram~49_q\ & 
-- ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~17_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~33_q\)) ) ) ) # ( !\RAM1|ram~49_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~17_q\))) # 
-- (\ROM1|memROM~5_combout\ & (\RAM1|ram~33_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~33_q\,
	datab => \RAM1|ALT_INV_ram~65_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	datae => \RAM1|ALT_INV_ram~49_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~569_combout\);

-- Location: LABCELL_X39_Y6_N0
\RAM1|ram~129feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~129feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~129feeder_combout\);

-- Location: FF_X39_Y6_N2
\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~129feeder_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

-- Location: FF_X37_Y4_N31
\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

-- Location: FF_X39_Y6_N20
\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

-- Location: LABCELL_X39_Y6_N54
\RAM1|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~97feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~97feeder_combout\);

-- Location: FF_X39_Y6_N56
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~97feeder_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: LABCELL_X39_Y6_N18
\RAM1|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~570_combout\ = ( \RAM1|ram~113_q\ & ( \RAM1|ram~97_q\ & ( (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~81_q\) # (\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~129_q\))) ) ) ) # ( 
-- !\RAM1|ram~113_q\ & ( \RAM1|ram~97_q\ & ( (!\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\ & \RAM1|ram~81_q\)))) # (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~129_q\))) ) ) ) # ( \RAM1|ram~113_q\ & ( !\RAM1|ram~97_q\ & ( 
-- (!\ROM1|memROM~5_combout\ & (((\RAM1|ram~81_q\) # (\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~129_q\ & (\ROM1|memROM~42_combout\))) ) ) ) # ( !\RAM1|ram~113_q\ & ( !\RAM1|ram~97_q\ & ( (!\ROM1|memROM~5_combout\ & 
-- (((!\ROM1|memROM~42_combout\ & \RAM1|ram~81_q\)))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~129_q\ & (\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~129_q\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~81_q\,
	datae => \RAM1|ALT_INV_ram~113_q\,
	dataf => \RAM1|ALT_INV_ram~97_q\,
	combout => \RAM1|ram~570_combout\);

-- Location: FF_X35_Y2_N26
\RAM1|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~177_q\);

-- Location: FF_X37_Y4_N10
\RAM1|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~145_q\);

-- Location: LABCELL_X35_Y2_N0
\RAM1|ram~161feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~161feeder_combout\);

-- Location: FF_X35_Y2_N2
\RAM1|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~161feeder_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~161_q\);

-- Location: FF_X35_Y2_N50
\RAM1|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~193_q\);

-- Location: LABCELL_X35_Y2_N48
\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \RAM1|ram~193_q\ & ( \ROM1|memROM~42_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~177_q\) ) ) ) # ( !\RAM1|ram~193_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~177_q\ & !\ROM1|memROM~5_combout\) ) ) ) # ( 
-- \RAM1|ram~193_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~145_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~161_q\))) ) ) ) # ( !\RAM1|ram~193_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~145_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~161_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~177_q\,
	datab => \RAM1|ALT_INV_ram~145_q\,
	datac => \RAM1|ALT_INV_ram~161_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~193_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~571_combout\);

-- Location: FF_X39_Y5_N20
\RAM1|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~241_q\);

-- Location: LABCELL_X36_Y3_N54
\RAM1|ram~209feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~209feeder_combout\ = ( \CPU1|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~209feeder_combout\);

-- Location: FF_X36_Y3_N55
\RAM1|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~209feeder_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~209_q\);

-- Location: FF_X39_Y5_N32
\RAM1|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~225_q\);

-- Location: FF_X39_Y5_N2
\RAM1|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~257_q\);

-- Location: LABCELL_X39_Y5_N0
\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = ( \RAM1|ram~257_q\ & ( \ROM1|memROM~42_combout\ & ( (\ROM1|memROM~5_combout\) # (\RAM1|ram~241_q\) ) ) ) # ( !\RAM1|ram~257_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~241_q\ & !\ROM1|memROM~5_combout\) ) ) ) # ( 
-- \RAM1|ram~257_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~209_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~225_q\))) ) ) ) # ( !\RAM1|ram~257_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~209_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~225_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~241_q\,
	datab => \RAM1|ALT_INV_ram~209_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~225_q\,
	datae => \RAM1|ALT_INV_ram~257_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~572_combout\);

-- Location: LABCELL_X39_Y6_N39
\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( \RAM1|ram~571_combout\ & ( \RAM1|ram~572_combout\ & ( ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~569_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~570_combout\)))) # (\ROM1|memROM~62_combout\) ) ) ) # ( 
-- !\RAM1|ram~571_combout\ & ( \RAM1|ram~572_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~569_combout\ & (!\ROM1|memROM~62_combout\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~570_combout\) # (\ROM1|memROM~62_combout\)))) ) ) ) # ( 
-- \RAM1|ram~571_combout\ & ( !\RAM1|ram~572_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\ROM1|memROM~62_combout\)) # (\RAM1|ram~569_combout\))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~62_combout\ & \RAM1|ram~570_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~571_combout\ & ( !\RAM1|ram~572_combout\ & ( (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~569_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~570_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~569_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~570_combout\,
	datae => \RAM1|ALT_INV_ram~571_combout\,
	dataf => \RAM1|ALT_INV_ram~572_combout\,
	combout => \RAM1|ram~573_combout\);

-- Location: MLABCELL_X37_Y3_N6
\RAM1|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~589_combout\ = ( \RAM1|ram~588_combout\ & ( \RAM1|ram~573_combout\ & ( (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~578_combout\)) # (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\) # 
-- ((\RAM1|ram~583_combout\)))) ) ) ) # ( !\RAM1|ram~588_combout\ & ( \RAM1|ram~573_combout\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~82_combout\ & (\RAM1|ram~578_combout\))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\) # 
-- ((\RAM1|ram~583_combout\)))) ) ) ) # ( \RAM1|ram~588_combout\ & ( !\RAM1|ram~573_combout\ & ( (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~578_combout\)) # (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~50_combout\ & (\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~583_combout\)))) ) ) ) # ( !\RAM1|ram~588_combout\ & ( !\RAM1|ram~573_combout\ & ( (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~82_combout\ & (\RAM1|ram~578_combout\))) # (\ROM1|memROM~50_combout\ & (\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~583_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~578_combout\,
	datad => \RAM1|ALT_INV_ram~583_combout\,
	datae => \RAM1|ALT_INV_ram~588_combout\,
	dataf => \RAM1|ALT_INV_ram~573_combout\,
	combout => \RAM1|ram~589_combout\);

-- Location: LABCELL_X35_Y3_N42
\CPU1|MUX1|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~8_combout\ = ( \CPU1|MUX1|saida_MUX[1]~5_combout\ & ( \RAM1|ram~589_combout\ ) ) # ( !\CPU1|MUX1|saida_MUX[1]~5_combout\ & ( \RAM1|ram~589_combout\ & ( (!\SW[2]~input_o\ & (\CPU1|DECODER1|saida[5]~1_combout\ & 
-- (\ROM1|memROM~42_combout\))) # (\SW[2]~input_o\ & (((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~42_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\))) ) ) ) # ( \CPU1|MUX1|saida_MUX[1]~5_combout\ & ( !\RAM1|ram~589_combout\ & ( (!\SW[2]~input_o\ & 
-- (\CPU1|DECODER1|saida[5]~1_combout\ & (\ROM1|memROM~42_combout\))) # (\SW[2]~input_o\ & (((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~42_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\))) ) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~5_combout\ & ( 
-- !\RAM1|ram~589_combout\ & ( (!\SW[2]~input_o\ & (\CPU1|DECODER1|saida[5]~1_combout\ & (\ROM1|memROM~42_combout\))) # (\SW[2]~input_o\ & (((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~42_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	dataf => \RAM1|ALT_INV_ram~589_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~8_combout\);

-- Location: LABCELL_X36_Y5_N42
\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[3]~9_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( !\CPU1|MUX1|saida_MUX[3]~9_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

-- Location: FF_X36_Y5_N44
\CPU1|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~9_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(3));

-- Location: FF_X31_Y6_N58
\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

-- Location: MLABCELL_X42_Y3_N6
\RAM1|ram~42feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~42feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~42feeder_combout\);

-- Location: FF_X42_Y3_N8
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~42feeder_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: FF_X41_Y4_N41
\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

-- Location: FF_X31_Y6_N22
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X41_Y4_N39
\RAM1|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~600_combout\ = ( \RAM1|ram~74_q\ & ( \RAM1|ram~34_q\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\) # ((\RAM1|ram~42_q\)))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~66_q\)) # (\ROM1|memROM~82_combout\))) ) ) ) # ( 
-- !\RAM1|ram~74_q\ & ( \RAM1|ram~34_q\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\) # ((\RAM1|ram~42_q\)))) # (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~82_combout\ & (\RAM1|ram~66_q\))) ) ) ) # ( \RAM1|ram~74_q\ & ( !\RAM1|ram~34_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & (\ROM1|memROM~82_combout\ & ((\RAM1|ram~42_q\)))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~66_q\)) # (\ROM1|memROM~82_combout\))) ) ) ) # ( !\RAM1|ram~74_q\ & ( !\RAM1|ram~34_q\ & ( (!\ROM1|memROM~42_combout\ & 
-- (\ROM1|memROM~82_combout\ & ((\RAM1|ram~42_q\)))) # (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~82_combout\ & (\RAM1|ram~66_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~66_q\,
	datad => \RAM1|ALT_INV_ram~42_q\,
	datae => \RAM1|ALT_INV_ram~74_q\,
	dataf => \RAM1|ALT_INV_ram~34_q\,
	combout => \RAM1|ram~600_combout\);

-- Location: FF_X39_Y5_N4
\RAM1|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~258_q\);

-- Location: FF_X39_Y5_N44
\RAM1|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~226_q\);

-- Location: FF_X41_Y4_N32
\RAM1|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~266_q\);

-- Location: MLABCELL_X42_Y3_N42
\RAM1|ram~234feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~234feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~234feeder_combout\);

-- Location: FF_X42_Y3_N44
\RAM1|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~234feeder_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~234_q\);

-- Location: LABCELL_X41_Y4_N30
\RAM1|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~603_combout\ = ( \RAM1|ram~266_q\ & ( \RAM1|ram~234_q\ & ( ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~226_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~258_q\))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~266_q\ & ( \RAM1|ram~234_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~226_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~258_q\)))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~266_q\ & ( !\RAM1|ram~234_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~226_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~258_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~266_q\ & ( !\RAM1|ram~234_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~226_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~258_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~258_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~226_q\,
	datae => \RAM1|ALT_INV_ram~266_q\,
	dataf => \RAM1|ALT_INV_ram~234_q\,
	combout => \RAM1|ram~603_combout\);

-- Location: LABCELL_X35_Y2_N12
\RAM1|ram~162feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~162feeder_combout\);

-- Location: FF_X35_Y2_N13
\RAM1|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~162feeder_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~162_q\);

-- Location: FF_X36_Y2_N8
\RAM1|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~170_q\);

-- Location: FF_X35_Y2_N41
\RAM1|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~194_q\);

-- Location: FF_X36_Y2_N44
\RAM1|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~202_q\);

-- Location: LABCELL_X36_Y2_N42
\RAM1|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~602_combout\ = ( \RAM1|ram~202_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~194_q\) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~202_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & \RAM1|ram~194_q\) ) ) ) # ( 
-- \RAM1|ram~202_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~162_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~170_q\))) ) ) ) # ( !\RAM1|ram~202_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~162_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~170_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~162_q\,
	datab => \RAM1|ALT_INV_ram~170_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~194_q\,
	datae => \RAM1|ALT_INV_ram~202_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~602_combout\);

-- Location: FF_X40_Y2_N19
\RAM1|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~106_q\);

-- Location: FF_X39_Y6_N4
\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

-- Location: FF_X41_Y4_N26
\RAM1|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~138_q\);

-- Location: FF_X39_Y6_N58
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: LABCELL_X41_Y4_N24
\RAM1|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~601_combout\ = ( \RAM1|ram~138_q\ & ( \RAM1|ram~98_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~130_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~106_q\))) ) ) ) # ( 
-- !\RAM1|ram~138_q\ & ( \RAM1|ram~98_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~130_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~106_q\ & (!\ROM1|memROM~42_combout\))) ) ) ) # ( \RAM1|ram~138_q\ & ( !\RAM1|ram~98_q\ & 
-- ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\ & \RAM1|ram~130_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~106_q\))) ) ) ) # ( !\RAM1|ram~138_q\ & ( !\RAM1|ram~98_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\ROM1|memROM~42_combout\ & \RAM1|ram~130_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~106_q\ & (!\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~106_q\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~130_q\,
	datae => \RAM1|ALT_INV_ram~138_q\,
	dataf => \RAM1|ALT_INV_ram~98_q\,
	combout => \RAM1|ram~601_combout\);

-- Location: LABCELL_X40_Y4_N30
\RAM1|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~604_combout\ = ( \ROM1|memROM~62_combout\ & ( \RAM1|ram~601_combout\ & ( (!\ROM1|memROM~51_combout\ & ((\RAM1|ram~602_combout\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~603_combout\)) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( 
-- \RAM1|ram~601_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~600_combout\) ) ) ) # ( \ROM1|memROM~62_combout\ & ( !\RAM1|ram~601_combout\ & ( (!\ROM1|memROM~51_combout\ & ((\RAM1|ram~602_combout\))) # (\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~603_combout\)) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( !\RAM1|ram~601_combout\ & ( (\RAM1|ram~600_combout\ & !\ROM1|memROM~51_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~600_combout\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \RAM1|ALT_INV_ram~603_combout\,
	datad => \RAM1|ALT_INV_ram~602_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \RAM1|ALT_INV_ram~601_combout\,
	combout => \RAM1|ram~604_combout\);

-- Location: FF_X37_Y2_N8
\RAM1|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~186_q\);

-- Location: FF_X37_Y2_N19
\RAM1|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~178_q\);

-- Location: FF_X37_Y2_N14
\RAM1|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~250_q\);

-- Location: MLABCELL_X42_Y5_N39
\RAM1|ram~242feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~242feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~242feeder_combout\);

-- Location: FF_X42_Y5_N40
\RAM1|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~242feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~242_q\);

-- Location: MLABCELL_X37_Y2_N12
\RAM1|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~593_combout\ = ( \RAM1|ram~250_q\ & ( \RAM1|ram~242_q\ & ( ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~178_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~186_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~250_q\ & ( \RAM1|ram~242_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~178_q\) # (\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~186_q\ & (!\ROM1|memROM~51_combout\))) ) ) ) # ( \RAM1|ram~250_q\ & ( !\RAM1|ram~242_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((!\ROM1|memROM~51_combout\ & \RAM1|ram~178_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~186_q\))) ) ) ) # ( !\RAM1|ram~250_q\ & ( !\RAM1|ram~242_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~178_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~186_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~186_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~178_q\,
	datae => \RAM1|ALT_INV_ram~250_q\,
	dataf => \RAM1|ALT_INV_ram~242_q\,
	combout => \RAM1|ram~593_combout\);

-- Location: FF_X31_Y2_N10
\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

-- Location: FF_X36_Y2_N52
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X37_Y4_N35
\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

-- Location: FF_X37_Y4_N16
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X37_Y4_N33
\RAM1|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~590_combout\ = ( \RAM1|ram~82_q\ & ( \RAM1|ram~18_q\ & ( (!\ROM1|memROM~82_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~26_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~90_q\))) ) ) ) # ( !\RAM1|ram~82_q\ & ( \RAM1|ram~18_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~26_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~90_q\)))) ) ) ) # ( \RAM1|ram~82_q\ & ( !\RAM1|ram~18_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~26_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~90_q\)))) ) ) ) # ( !\RAM1|ram~82_q\ & ( !\RAM1|ram~18_q\ & ( 
-- (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~26_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~90_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~90_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~26_q\,
	datae => \RAM1|ALT_INV_ram~82_q\,
	dataf => \RAM1|ALT_INV_ram~18_q\,
	combout => \RAM1|ram~590_combout\);

-- Location: LABCELL_X31_Y2_N57
\RAM1|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~58feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~58feeder_combout\);

-- Location: FF_X31_Y2_N58
\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~58feeder_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

-- Location: FF_X31_Y6_N17
\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

-- Location: FF_X31_Y2_N14
\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

-- Location: FF_X35_Y6_N37
\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

-- Location: LABCELL_X31_Y2_N12
\RAM1|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~591_combout\ = ( \RAM1|ram~122_q\ & ( \RAM1|ram~114_q\ & ( ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~50_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~58_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~122_q\ & ( \RAM1|ram~114_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~50_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~58_q\)))) # (\ROM1|memROM~51_combout\ & (!\ROM1|memROM~82_combout\)) ) ) ) # ( \RAM1|ram~122_q\ & ( !\RAM1|ram~114_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~50_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~58_q\)))) # (\ROM1|memROM~51_combout\ & (\ROM1|memROM~82_combout\)) ) ) ) # ( !\RAM1|ram~122_q\ & ( !\RAM1|ram~114_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~50_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~58_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~58_q\,
	datad => \RAM1|ALT_INV_ram~50_q\,
	datae => \RAM1|ALT_INV_ram~122_q\,
	dataf => \RAM1|ALT_INV_ram~114_q\,
	combout => \RAM1|ram~591_combout\);

-- Location: FF_X36_Y3_N58
\RAM1|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~210_q\);

-- Location: FF_X36_Y3_N22
\RAM1|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~154_q\);

-- Location: FF_X37_Y4_N52
\RAM1|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~146_q\);

-- Location: FF_X40_Y2_N35
\RAM1|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~218_q\);

-- Location: LABCELL_X40_Y2_N33
\RAM1|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~592_combout\ = ( \RAM1|ram~218_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~82_combout\) # (\RAM1|ram~210_q\) ) ) ) # ( !\RAM1|ram~218_q\ & ( \ROM1|memROM~51_combout\ & ( (\RAM1|ram~210_q\ & !\ROM1|memROM~82_combout\) ) ) ) # ( 
-- \RAM1|ram~218_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~146_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~154_q\)) ) ) ) # ( !\RAM1|ram~218_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~146_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~154_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~210_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~154_q\,
	datad => \RAM1|ALT_INV_ram~146_q\,
	datae => \RAM1|ALT_INV_ram~218_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~592_combout\);

-- Location: MLABCELL_X37_Y4_N39
\RAM1|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~594_combout\ = ( \RAM1|ram~591_combout\ & ( \RAM1|ram~592_combout\ & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~590_combout\) # (\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~62_combout\)) # 
-- (\RAM1|ram~593_combout\))) ) ) ) # ( !\RAM1|ram~591_combout\ & ( \RAM1|ram~592_combout\ & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~590_combout\) # (\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~593_combout\ & 
-- (\ROM1|memROM~62_combout\))) ) ) ) # ( \RAM1|ram~591_combout\ & ( !\RAM1|ram~592_combout\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~62_combout\ & \RAM1|ram~590_combout\)))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~62_combout\)) # 
-- (\RAM1|ram~593_combout\))) ) ) ) # ( !\RAM1|ram~591_combout\ & ( !\RAM1|ram~592_combout\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~62_combout\ & \RAM1|ram~590_combout\)))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~593_combout\ & 
-- (\ROM1|memROM~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~593_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~590_combout\,
	datae => \RAM1|ALT_INV_ram~591_combout\,
	dataf => \RAM1|ALT_INV_ram~592_combout\,
	combout => \RAM1|ram~594_combout\);

-- Location: FF_X32_Y3_N4
\RAM1|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~314_q\);

-- Location: FF_X34_Y4_N47
\RAM1|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~306_q\);

-- Location: FF_X34_Y4_N56
\RAM1|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~442_q\);

-- Location: MLABCELL_X34_Y4_N51
\RAM1|ram~434feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~434feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~434feeder_combout\);

-- Location: FF_X34_Y4_N53
\RAM1|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~434feeder_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~434_q\);

-- Location: MLABCELL_X34_Y4_N54
\RAM1|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~597_combout\ = ( \RAM1|ram~442_q\ & ( \RAM1|ram~434_q\ & ( ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~306_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~314_q\))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~442_q\ & ( \RAM1|ram~434_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~306_q\) # (\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~314_q\ & (!\ROM1|memROM~62_combout\))) ) ) ) # ( \RAM1|ram~442_q\ & ( !\RAM1|ram~434_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((!\ROM1|memROM~62_combout\ & \RAM1|ram~306_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~62_combout\)) # (\RAM1|ram~314_q\))) ) ) ) # ( !\RAM1|ram~442_q\ & ( !\RAM1|ram~434_q\ & ( (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~306_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~314_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~314_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~306_q\,
	datae => \RAM1|ALT_INV_ram~442_q\,
	dataf => \RAM1|ALT_INV_ram~434_q\,
	combout => \RAM1|ram~597_combout\);

-- Location: FF_X36_Y5_N4
\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

-- Location: FF_X32_Y5_N17
\RAM1|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~402_q\);

-- Location: FF_X32_Y5_N56
\RAM1|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~410_q\);

-- Location: FF_X29_Y4_N22
\RAM1|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~282_q\);

-- Location: LABCELL_X32_Y5_N54
\RAM1|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~595_combout\ = ( \RAM1|ram~410_q\ & ( \RAM1|ram~282_q\ & ( ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~274_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~402_q\)))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~410_q\ & ( \RAM1|ram~282_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~274_q\)) # (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~62_combout\ & (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~402_q\)))) ) ) ) # ( \RAM1|ram~410_q\ & ( !\RAM1|ram~282_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (!\ROM1|memROM~82_combout\ & (\RAM1|ram~274_q\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~402_q\)) # (\ROM1|memROM~82_combout\))) ) ) ) # ( !\RAM1|ram~410_q\ & ( !\RAM1|ram~282_q\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- (\RAM1|ram~274_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~402_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~62_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~274_q\,
	datad => \RAM1|ALT_INV_ram~402_q\,
	datae => \RAM1|ALT_INV_ram~410_q\,
	dataf => \RAM1|ALT_INV_ram~282_q\,
	combout => \RAM1|ram~595_combout\);

-- Location: MLABCELL_X42_Y4_N45
\RAM1|ram~346feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~346feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~346feeder_combout\);

-- Location: FF_X42_Y4_N46
\RAM1|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~346feeder_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~346_q\);

-- Location: LABCELL_X31_Y5_N15
\RAM1|ram~338feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~338feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~338feeder_combout\);

-- Location: FF_X31_Y5_N16
\RAM1|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~338feeder_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~338_q\);

-- Location: FF_X40_Y3_N14
\RAM1|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~474_q\);

-- Location: FF_X40_Y3_N32
\RAM1|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~466_q\);

-- Location: LABCELL_X40_Y3_N12
\RAM1|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~596_combout\ = ( \RAM1|ram~474_q\ & ( \RAM1|ram~466_q\ & ( ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~338_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~346_q\))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~474_q\ & ( \RAM1|ram~466_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~338_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~346_q\)))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~474_q\ & ( !\RAM1|ram~466_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~338_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~346_q\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~474_q\ & ( !\RAM1|ram~466_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~338_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~346_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~346_q\,
	datab => \RAM1|ALT_INV_ram~338_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~474_q\,
	dataf => \RAM1|ALT_INV_ram~466_q\,
	combout => \RAM1|ram~596_combout\);

-- Location: LABCELL_X35_Y4_N30
\RAM1|ram~498feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~498feeder_combout\ = \CPU1|REGA|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~498feeder_combout\);

-- Location: FF_X35_Y4_N31
\RAM1|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~498feeder_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~498_q\);

-- Location: FF_X34_Y6_N10
\RAM1|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~370_q\);

-- Location: FF_X40_Y3_N50
\RAM1|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~506_q\);

-- Location: FF_X39_Y3_N4
\RAM1|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~378_q\);

-- Location: LABCELL_X40_Y3_N48
\RAM1|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~598_combout\ = ( \RAM1|ram~506_q\ & ( \RAM1|ram~378_q\ & ( ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~370_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~498_q\))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~506_q\ & ( \RAM1|ram~378_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~370_q\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~498_q\ & ((!\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~506_q\ & ( !\RAM1|ram~378_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (((\RAM1|ram~370_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~62_combout\ & (((\ROM1|memROM~82_combout\)) # (\RAM1|ram~498_q\))) ) ) ) # ( !\RAM1|ram~506_q\ & ( !\RAM1|ram~378_q\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~370_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~498_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~498_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~370_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~506_q\,
	dataf => \RAM1|ALT_INV_ram~378_q\,
	combout => \RAM1|ram~598_combout\);

-- Location: MLABCELL_X37_Y4_N24
\RAM1|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~599_combout\ = ( \ROM1|memROM~51_combout\ & ( \RAM1|ram~598_combout\ & ( (\RAM1|ram~596_combout\) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( \RAM1|ram~598_combout\ & ( (!\ROM1|memROM~42_combout\ & 
-- ((\RAM1|ram~595_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~597_combout\)) ) ) ) # ( \ROM1|memROM~51_combout\ & ( !\RAM1|ram~598_combout\ & ( (!\ROM1|memROM~42_combout\ & \RAM1|ram~596_combout\) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( 
-- !\RAM1|ram~598_combout\ & ( (!\ROM1|memROM~42_combout\ & ((\RAM1|ram~595_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~597_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~597_combout\,
	datab => \RAM1|ALT_INV_ram~595_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~596_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \RAM1|ALT_INV_ram~598_combout\,
	combout => \RAM1|ram~599_combout\);

-- Location: LABCELL_X32_Y6_N57
\RAM1|ram~322feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~322feeder_combout\ = ( \CPU1|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~322feeder_combout\);

-- Location: FF_X32_Y6_N58
\RAM1|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~322feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~322_q\);

-- Location: FF_X28_Y3_N34
\RAM1|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~330_q\);

-- Location: FF_X36_Y6_N8
\RAM1|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~394_q\);

-- Location: FF_X34_Y6_N22
\RAM1|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~386_q\);

-- Location: LABCELL_X36_Y6_N6
\RAM1|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~606_combout\ = ( \RAM1|ram~394_q\ & ( \RAM1|ram~386_q\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~322_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~330_q\)))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~394_q\ & ( \RAM1|ram~386_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~322_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~330_q\))))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~394_q\ & ( !\RAM1|ram~386_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~322_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~330_q\))))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~394_q\ & ( !\RAM1|ram~386_q\ & ( 
-- (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~322_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~330_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~322_q\,
	datab => \RAM1|ALT_INV_ram~330_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~394_q\,
	dataf => \RAM1|ALT_INV_ram~386_q\,
	combout => \RAM1|ram~606_combout\);

-- Location: FF_X34_Y2_N41
\RAM1|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~418_q\);

-- Location: FF_X31_Y3_N52
\RAM1|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~426_q\);

-- Location: FF_X35_Y4_N50
\RAM1|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~482_q\);

-- Location: FF_X36_Y6_N44
\RAM1|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~490_q\);

-- Location: LABCELL_X36_Y6_N42
\RAM1|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~607_combout\ = ( \RAM1|ram~490_q\ & ( \ROM1|memROM~82_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~426_q\) ) ) ) # ( !\RAM1|ram~490_q\ & ( \ROM1|memROM~82_combout\ & ( (\RAM1|ram~426_q\ & !\ROM1|memROM~51_combout\) ) ) ) # ( 
-- \RAM1|ram~490_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~418_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~482_q\))) ) ) ) # ( !\RAM1|ram~490_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~418_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~482_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~418_q\,
	datab => \RAM1|ALT_INV_ram~426_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~482_q\,
	datae => \RAM1|ALT_INV_ram~490_q\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~607_combout\);

-- Location: FF_X40_Y1_N22
\RAM1|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~458_q\);

-- Location: FF_X34_Y2_N43
\RAM1|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~450_q\);

-- Location: FF_X35_Y4_N55
\RAM1|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~514_q\);

-- Location: FF_X39_Y4_N26
\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

-- Location: LABCELL_X39_Y4_N24
\RAM1|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~608_combout\ = ( \RAM1|ram~522_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~82_combout\) # (\RAM1|ram~514_q\) ) ) ) # ( !\RAM1|ram~522_q\ & ( \ROM1|memROM~51_combout\ & ( (\RAM1|ram~514_q\ & !\ROM1|memROM~82_combout\) ) ) ) # ( 
-- \RAM1|ram~522_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~450_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~458_q\)) ) ) ) # ( !\RAM1|ram~522_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~450_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~458_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~458_q\,
	datab => \RAM1|ALT_INV_ram~450_q\,
	datac => \RAM1|ALT_INV_ram~514_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~522_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~608_combout\);

-- Location: FF_X29_Y1_N37
\RAM1|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~298_q\);

-- Location: FF_X32_Y6_N22
\RAM1|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~290_q\);

-- Location: FF_X36_Y6_N5
\RAM1|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~362_q\);

-- Location: FF_X34_Y6_N43
\RAM1|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~354_q\);

-- Location: LABCELL_X36_Y6_N3
\RAM1|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~605_combout\ = ( \RAM1|ram~362_q\ & ( \RAM1|ram~354_q\ & ( ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~290_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~298_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~362_q\ & ( \RAM1|ram~354_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~51_combout\) # (\RAM1|ram~290_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~298_q\ & ((!\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~362_q\ & ( !\RAM1|ram~354_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\RAM1|ram~290_q\ & !\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~298_q\))) ) ) ) # ( !\RAM1|ram~362_q\ & ( !\RAM1|ram~354_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~290_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~298_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~298_q\,
	datab => \RAM1|ALT_INV_ram~290_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \RAM1|ALT_INV_ram~362_q\,
	dataf => \RAM1|ALT_INV_ram~354_q\,
	combout => \RAM1|ram~605_combout\);

-- Location: MLABCELL_X37_Y4_N12
\RAM1|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~609_combout\ = ( \RAM1|ram~608_combout\ & ( \RAM1|ram~605_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~606_combout\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~607_combout\) # 
-- (\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~608_combout\ & ( \RAM1|ram~605_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~606_combout\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\ & 
-- \RAM1|ram~607_combout\)))) ) ) ) # ( \RAM1|ram~608_combout\ & ( !\RAM1|ram~605_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~606_combout\ & (\ROM1|memROM~42_combout\))) # (\ROM1|memROM~62_combout\ & (((\RAM1|ram~607_combout\) # 
-- (\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~608_combout\ & ( !\RAM1|ram~605_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~606_combout\ & (\ROM1|memROM~42_combout\))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~42_combout\ & 
-- \RAM1|ram~607_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~606_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~607_combout\,
	datae => \RAM1|ALT_INV_ram~608_combout\,
	dataf => \RAM1|ALT_INV_ram~605_combout\,
	combout => \RAM1|ram~609_combout\);

-- Location: MLABCELL_X37_Y4_N3
\RAM1|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~610_combout\ = ( \ROM1|memROM~50_combout\ & ( \RAM1|ram~609_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~594_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~604_combout\)) ) ) ) # ( !\ROM1|memROM~50_combout\ & ( 
-- \RAM1|ram~609_combout\ & ( (\RAM1|ram~599_combout\) # (\ROM1|memROM~5_combout\) ) ) ) # ( \ROM1|memROM~50_combout\ & ( !\RAM1|ram~609_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~594_combout\))) # (\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~604_combout\)) ) ) ) # ( !\ROM1|memROM~50_combout\ & ( !\RAM1|ram~609_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~599_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~604_combout\,
	datab => \RAM1|ALT_INV_ram~594_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~599_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \RAM1|ALT_INV_ram~609_combout\,
	combout => \RAM1|ram~610_combout\);

-- Location: LABCELL_X40_Y5_N30
\CPU1|MUX1|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~9_combout\ = ( \SW[3]~input_o\ & ( \RAM1|ram~610_combout\ & ( (((\ROM1|memROM~51_combout\ & \CPU1|DECODER1|saida[5]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\) ) ) ) # ( 
-- !\SW[3]~input_o\ & ( \RAM1|ram~610_combout\ & ( ((\ROM1|memROM~51_combout\ & \CPU1|DECODER1|saida[5]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) ) # ( \SW[3]~input_o\ & ( !\RAM1|ram~610_combout\ & ( ((\ROM1|memROM~51_combout\ & 
-- \CPU1|DECODER1|saida[5]~1_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\) ) ) ) # ( !\SW[3]~input_o\ & ( !\RAM1|ram~610_combout\ & ( (\ROM1|memROM~51_combout\ & \CPU1|DECODER1|saida[5]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110011011100000101111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \RAM1|ALT_INV_ram~610_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~9_combout\);

-- Location: LABCELL_X36_Y5_N45
\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[4]~10_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( !\CPU1|MUX1|saida_MUX[4]~10_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[4]~10_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

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

-- Location: FF_X36_Y5_N50
\CPU1|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~11_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(5));

-- Location: MLABCELL_X37_Y6_N3
\RAM1|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~28feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~28feeder_combout\);

-- Location: FF_X37_Y6_N4
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~28feeder_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: FF_X32_Y3_N28
\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

-- Location: FF_X34_Y5_N56
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: FF_X31_Y6_N41
\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

-- Location: LABCELL_X31_Y6_N39
\RAM1|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~632_combout\ = ( \RAM1|ram~52_q\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~28_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~60_q\))) ) ) ) # ( !\RAM1|ram~52_q\ & ( \ROM1|memROM~82_combout\ & ( 
-- (!\ROM1|memROM~42_combout\ & (\RAM1|ram~28_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~60_q\))) ) ) ) # ( \RAM1|ram~52_q\ & ( !\ROM1|memROM~82_combout\ & ( (\ROM1|memROM~42_combout\) # (\RAM1|ram~20_q\) ) ) ) # ( !\RAM1|ram~52_q\ & ( 
-- !\ROM1|memROM~82_combout\ & ( (\RAM1|ram~20_q\ & !\ROM1|memROM~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datab => \RAM1|ALT_INV_ram~60_q\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~52_q\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~632_combout\);

-- Location: FF_X31_Y2_N22
\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

-- Location: LABCELL_X35_Y6_N12
\RAM1|ram~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~84feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~84feeder_combout\);

-- Location: FF_X35_Y6_N14
\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~84feeder_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

-- Location: FF_X31_Y2_N46
\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

-- Location: FF_X35_Y6_N50
\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

-- Location: LABCELL_X35_Y6_N48
\RAM1|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~633_combout\ = ( \RAM1|ram~116_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\) # (\RAM1|ram~124_q\) ) ) ) # ( !\RAM1|ram~116_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~124_q\ & \ROM1|memROM~82_combout\) ) ) ) # ( 
-- \RAM1|ram~116_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~84_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~92_q\)) ) ) ) # ( !\RAM1|ram~116_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~84_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~92_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~92_q\,
	datab => \RAM1|ALT_INV_ram~84_q\,
	datac => \RAM1|ALT_INV_ram~124_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~116_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~633_combout\);

-- Location: FF_X31_Y6_N50
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X31_Y6_N25
\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

-- Location: FF_X35_Y6_N56
\RAM1|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~76_q\);

-- Location: FF_X32_Y4_N28
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: LABCELL_X35_Y6_N54
\RAM1|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~634_combout\ = ( \RAM1|ram~76_q\ & ( \RAM1|ram~44_q\ & ( ((!\ROM1|memROM~42_combout\ & (\RAM1|ram~36_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~68_q\)))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~76_q\ & ( \RAM1|ram~44_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\)) # (\RAM1|ram~36_q\))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~68_q\ & !\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~76_q\ & ( !\RAM1|ram~44_q\ & ( (!\ROM1|memROM~42_combout\ & 
-- (\RAM1|ram~36_q\ & ((!\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~68_q\)))) ) ) ) # ( !\RAM1|ram~76_q\ & ( !\RAM1|ram~44_q\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~42_combout\ & 
-- (\RAM1|ram~36_q\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~68_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~36_q\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~68_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~76_q\,
	dataf => \RAM1|ALT_INV_ram~44_q\,
	combout => \RAM1|ram~634_combout\);

-- Location: FF_X39_Y6_N37
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: FF_X32_Y1_N16
\RAM1|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~108_q\);

-- Location: FF_X41_Y6_N8
\RAM1|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~140_q\);

-- Location: FF_X41_Y6_N35
\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

-- Location: LABCELL_X41_Y6_N6
\RAM1|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~635_combout\ = ( \RAM1|ram~140_q\ & ( \RAM1|ram~132_q\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~100_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~108_q\)))) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~140_q\ & ( \RAM1|ram~132_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~100_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~108_q\))))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~140_q\ & ( !\RAM1|ram~132_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~100_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~108_q\))))) # (\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~140_q\ & ( !\RAM1|ram~132_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~100_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~108_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~100_q\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~108_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~140_q\,
	dataf => \RAM1|ALT_INV_ram~132_q\,
	combout => \RAM1|ram~635_combout\);

-- Location: LABCELL_X41_Y6_N42
\RAM1|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~636_combout\ = ( \RAM1|ram~634_combout\ & ( \RAM1|ram~635_combout\ & ( ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~632_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~633_combout\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( 
-- !\RAM1|ram~634_combout\ & ( \RAM1|ram~635_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~632_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~633_combout\))))) # (\ROM1|memROM~5_combout\ & 
-- (((\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~634_combout\ & ( !\RAM1|ram~635_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~632_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~633_combout\))))) # 
-- (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~51_combout\)))) ) ) ) # ( !\RAM1|ram~634_combout\ & ( !\RAM1|ram~635_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~632_combout\)) # (\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~633_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~632_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~633_combout\,
	datae => \RAM1|ALT_INV_ram~634_combout\,
	dataf => \RAM1|ALT_INV_ram~635_combout\,
	combout => \RAM1|ram~636_combout\);

-- Location: FF_X32_Y5_N58
\RAM1|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~412_q\);

-- Location: LABCELL_X32_Y2_N3
\RAM1|ram~436feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~436feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~436feeder_combout\);

-- Location: FF_X32_Y2_N5
\RAM1|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~436feeder_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~436_q\);

-- Location: FF_X32_Y2_N8
\RAM1|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~444_q\);

-- Location: FF_X32_Y5_N19
\RAM1|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~404_q\);

-- Location: LABCELL_X32_Y2_N6
\RAM1|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~647_combout\ = ( \RAM1|ram~444_q\ & ( \RAM1|ram~404_q\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~412_q\))) # (\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~436_q\)))) ) ) ) # ( 
-- !\RAM1|ram~444_q\ & ( \RAM1|ram~404_q\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~412_q\))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~436_q\ & !\ROM1|memROM~82_combout\)))) ) ) ) # ( \RAM1|ram~444_q\ & ( 
-- !\RAM1|ram~404_q\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~412_q\ & ((\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (((\ROM1|memROM~82_combout\) # (\RAM1|ram~436_q\)))) ) ) ) # ( !\RAM1|ram~444_q\ & ( !\RAM1|ram~404_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & (\RAM1|ram~412_q\ & ((\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~436_q\ & !\ROM1|memROM~82_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~412_q\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~436_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~444_q\,
	dataf => \RAM1|ALT_INV_ram~404_q\,
	combout => \RAM1|ram~647_combout\);

-- Location: FF_X31_Y3_N4
\RAM1|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~428_q\);

-- Location: MLABCELL_X34_Y2_N57
\RAM1|ram~452feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~452feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~452feeder_combout\);

-- Location: FF_X34_Y2_N59
\RAM1|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~452feeder_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~452_q\);

-- Location: FF_X34_Y3_N8
\RAM1|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~460_q\);

-- Location: MLABCELL_X34_Y2_N36
\RAM1|ram~420feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~420feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~420feeder_combout\);

-- Location: FF_X34_Y2_N37
\RAM1|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~420feeder_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~420_q\);

-- Location: MLABCELL_X34_Y3_N6
\RAM1|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~649_combout\ = ( \RAM1|ram~460_q\ & ( \RAM1|ram~420_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~452_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~428_q\))) ) ) ) # ( 
-- !\RAM1|ram~460_q\ & ( \RAM1|ram~420_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~452_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~428_q\ & (!\ROM1|memROM~42_combout\))) ) ) ) # ( \RAM1|ram~460_q\ & ( !\RAM1|ram~420_q\ 
-- & ( (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\ & \RAM1|ram~452_q\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~428_q\))) ) ) ) # ( !\RAM1|ram~460_q\ & ( !\RAM1|ram~420_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\ROM1|memROM~42_combout\ & \RAM1|ram~452_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~428_q\ & (!\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~428_q\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~452_q\,
	datae => \RAM1|ALT_INV_ram~460_q\,
	dataf => \RAM1|ALT_INV_ram~420_q\,
	combout => \RAM1|ram~649_combout\);

-- Location: FF_X40_Y3_N35
\RAM1|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~468_q\);

-- Location: FF_X40_Y3_N17
\RAM1|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~476_q\);

-- Location: FF_X40_Y3_N2
\RAM1|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~508_q\);

-- Location: MLABCELL_X42_Y5_N24
\RAM1|ram~500feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~500feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~500feeder_combout\);

-- Location: FF_X42_Y5_N25
\RAM1|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~500feeder_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~500_q\);

-- Location: LABCELL_X40_Y3_N0
\RAM1|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~648_combout\ = ( \RAM1|ram~508_q\ & ( \RAM1|ram~500_q\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~468_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~476_q\)))) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~508_q\ & ( \RAM1|ram~500_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~468_q\))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\ & \RAM1|ram~476_q\)))) ) ) ) # ( \RAM1|ram~508_q\ & ( !\RAM1|ram~500_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~468_q\ & (!\ROM1|memROM~42_combout\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~476_q\) # (\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~508_q\ & ( !\RAM1|ram~500_q\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~468_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~476_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~468_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~476_q\,
	datae => \RAM1|ALT_INV_ram~508_q\,
	dataf => \RAM1|ALT_INV_ram~500_q\,
	combout => \RAM1|ram~648_combout\);

-- Location: FF_X34_Y3_N47
\RAM1|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~492_q\);

-- Location: FF_X35_Y4_N10
\RAM1|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~516_q\);

-- Location: FF_X35_Y4_N46
\RAM1|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~484_q\);

-- Location: FF_X34_Y3_N20
\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

-- Location: MLABCELL_X34_Y3_N18
\RAM1|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~650_combout\ = ( \RAM1|ram~524_q\ & ( \ROM1|memROM~82_combout\ & ( (\RAM1|ram~492_q\) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~524_q\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~42_combout\ & \RAM1|ram~492_q\) ) ) ) # ( 
-- \RAM1|ram~524_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~42_combout\ & ((\RAM1|ram~484_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~516_q\)) ) ) ) # ( !\RAM1|ram~524_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~42_combout\ & 
-- ((\RAM1|ram~484_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~516_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \RAM1|ALT_INV_ram~492_q\,
	datac => \RAM1|ALT_INV_ram~516_q\,
	datad => \RAM1|ALT_INV_ram~484_q\,
	datae => \RAM1|ALT_INV_ram~524_q\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~650_combout\);

-- Location: MLABCELL_X34_Y3_N42
\RAM1|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~651_combout\ = ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~650_combout\ & ( (\ROM1|memROM~51_combout\) # (\RAM1|ram~649_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~650_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~647_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~648_combout\))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\RAM1|ram~650_combout\ & ( (\RAM1|ram~649_combout\ & !\ROM1|memROM~51_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- !\RAM1|ram~650_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~647_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~648_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~647_combout\,
	datab => \RAM1|ALT_INV_ram~649_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~648_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \RAM1|ALT_INV_ram~650_combout\,
	combout => \RAM1|ram~651_combout\);

-- Location: FF_X36_Y3_N46
\RAM1|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~156_q\);

-- Location: FF_X37_Y2_N22
\RAM1|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~180_q\);

-- Location: FF_X37_Y2_N56
\RAM1|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~188_q\);

-- Location: FF_X37_Y4_N22
\RAM1|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~148_q\);

-- Location: MLABCELL_X37_Y2_N54
\RAM1|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~642_combout\ = ( \RAM1|ram~188_q\ & ( \RAM1|ram~148_q\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~156_q\))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~180_q\) # (\ROM1|memROM~82_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~188_q\ & ( \RAM1|ram~148_q\ & ( (!\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\)) # (\RAM1|ram~156_q\))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\ & \RAM1|ram~180_q\)))) ) ) ) # ( \RAM1|ram~188_q\ & ( 
-- !\RAM1|ram~148_q\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~156_q\ & (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~42_combout\ & (((\RAM1|ram~180_q\) # (\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~188_q\ & ( !\RAM1|ram~148_q\ & ( 
-- (!\ROM1|memROM~42_combout\ & (\RAM1|ram~156_q\ & (\ROM1|memROM~82_combout\))) # (\ROM1|memROM~42_combout\ & (((!\ROM1|memROM~82_combout\ & \RAM1|ram~180_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~156_q\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~180_q\,
	datae => \RAM1|ALT_INV_ram~188_q\,
	dataf => \RAM1|ALT_INV_ram~148_q\,
	combout => \RAM1|ram~642_combout\);

-- Location: FF_X36_Y3_N7
\RAM1|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~212_q\);

-- Location: FF_X39_Y3_N8
\RAM1|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~220_q\);

-- Location: FF_X39_Y3_N44
\RAM1|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~252_q\);

-- Location: MLABCELL_X42_Y5_N18
\RAM1|ram~244feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~244feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~244feeder_combout\);

-- Location: FF_X42_Y5_N19
\RAM1|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~244feeder_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~244_q\);

-- Location: LABCELL_X39_Y3_N42
\RAM1|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~643_combout\ = ( \RAM1|ram~252_q\ & ( \RAM1|ram~244_q\ & ( ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~212_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~220_q\)))) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~252_q\ & ( \RAM1|ram~244_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~212_q\))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\ & \RAM1|ram~220_q\)))) ) ) ) # ( \RAM1|ram~252_q\ & ( !\RAM1|ram~244_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~212_q\ & (!\ROM1|memROM~42_combout\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~220_q\) # (\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~252_q\ & ( !\RAM1|ram~244_q\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~212_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~220_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~212_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~220_q\,
	datae => \RAM1|ALT_INV_ram~252_q\,
	dataf => \RAM1|ALT_INV_ram~244_q\,
	combout => \RAM1|ram~643_combout\);

-- Location: LABCELL_X36_Y2_N12
\RAM1|ram~172feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~172feeder_combout\);

-- Location: FF_X36_Y2_N14
\RAM1|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~172feeder_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~172_q\);

-- Location: FF_X35_Y2_N19
\RAM1|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~164_q\);

-- Location: FF_X35_Y2_N43
\RAM1|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~196_q\);

-- Location: FF_X36_Y2_N20
\RAM1|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~204_q\);

-- Location: LABCELL_X36_Y2_N18
\RAM1|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~644_combout\ = ( \RAM1|ram~204_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~196_q\) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~204_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & \RAM1|ram~196_q\) ) ) ) # ( 
-- \RAM1|ram~204_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~164_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~172_q\)) ) ) ) # ( !\RAM1|ram~204_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~164_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~172_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~172_q\,
	datab => \RAM1|ALT_INV_ram~164_q\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~196_q\,
	datae => \RAM1|ALT_INV_ram~204_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~644_combout\);

-- Location: FF_X39_Y5_N40
\RAM1|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~260_q\);

-- Location: FF_X35_Y5_N28
\RAM1|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~236_q\);

-- Location: FF_X41_Y6_N50
\RAM1|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~268_q\);

-- Location: LABCELL_X39_Y5_N30
\RAM1|ram~228feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~228feeder_combout\ = \CPU1|REGA|DOUT\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~228feeder_combout\);

-- Location: FF_X39_Y5_N31
\RAM1|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~228feeder_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~228_q\);

-- Location: LABCELL_X41_Y6_N48
\RAM1|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~645_combout\ = ( \RAM1|ram~268_q\ & ( \RAM1|ram~228_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~260_q\))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~236_q\)))) ) ) ) # ( 
-- !\RAM1|ram~268_q\ & ( \RAM1|ram~228_q\ & ( (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~260_q\))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~236_q\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( \RAM1|ram~268_q\ & ( 
-- !\RAM1|ram~228_q\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~260_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~236_q\)))) ) ) ) # ( !\RAM1|ram~268_q\ & ( !\RAM1|ram~228_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (\RAM1|ram~260_q\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~82_combout\ & (((\RAM1|ram~236_q\ & !\ROM1|memROM~42_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~260_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~236_q\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~268_q\,
	dataf => \RAM1|ALT_INV_ram~228_q\,
	combout => \RAM1|ram~645_combout\);

-- Location: MLABCELL_X37_Y2_N36
\RAM1|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~646_combout\ = ( \RAM1|ram~644_combout\ & ( \RAM1|ram~645_combout\ & ( ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~642_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~643_combout\)))) # (\ROM1|memROM~5_combout\) ) ) ) # ( 
-- !\RAM1|ram~644_combout\ & ( \RAM1|ram~645_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~642_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~643_combout\))))) # (\ROM1|memROM~5_combout\ & 
-- (((\ROM1|memROM~51_combout\)))) ) ) ) # ( \RAM1|ram~644_combout\ & ( !\RAM1|ram~645_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~642_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~643_combout\))))) # 
-- (\ROM1|memROM~5_combout\ & (((!\ROM1|memROM~51_combout\)))) ) ) ) # ( !\RAM1|ram~644_combout\ & ( !\RAM1|ram~645_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~642_combout\)) # (\ROM1|memROM~51_combout\ & 
-- ((\RAM1|ram~643_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~642_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~643_combout\,
	datae => \RAM1|ALT_INV_ram~644_combout\,
	dataf => \RAM1|ALT_INV_ram~645_combout\,
	combout => \RAM1|ram~646_combout\);

-- Location: FF_X35_Y5_N41
\RAM1|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~300_q\);

-- Location: FF_X32_Y4_N34
\RAM1|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~284_q\);

-- Location: FF_X34_Y1_N22
\RAM1|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~348_q\);

-- Location: FF_X32_Y1_N20
\RAM1|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~364_q\);

-- Location: LABCELL_X32_Y1_N18
\RAM1|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~639_combout\ = ( \RAM1|ram~364_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~300_q\) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~364_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & \RAM1|ram~300_q\) ) ) ) # ( 
-- \RAM1|ram~364_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~284_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~348_q\))) ) ) ) # ( !\RAM1|ram~364_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~284_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~348_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~300_q\,
	datac => \RAM1|ALT_INV_ram~284_q\,
	datad => \RAM1|ALT_INV_ram~348_q\,
	datae => \RAM1|ALT_INV_ram~364_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~639_combout\);

-- Location: FF_X34_Y5_N35
\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

-- Location: LABCELL_X32_Y6_N48
\RAM1|ram~292feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~292feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~292feeder_combout\);

-- Location: FF_X32_Y6_N49
\RAM1|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~292feeder_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~292_q\);

-- Location: FF_X34_Y6_N16
\RAM1|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~356_q\);

-- Location: FF_X34_Y5_N8
\RAM1|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~340_q\);

-- Location: MLABCELL_X34_Y5_N6
\RAM1|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~637_combout\ = ( \RAM1|ram~340_q\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\) # (\RAM1|ram~356_q\) ) ) ) # ( !\RAM1|ram~340_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~5_combout\ & \RAM1|ram~356_q\) ) ) ) # ( 
-- \RAM1|ram~340_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~276_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~292_q\))) ) ) ) # ( !\RAM1|ram~340_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~276_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~292_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~276_q\,
	datab => \RAM1|ALT_INV_ram~292_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~356_q\,
	datae => \RAM1|ALT_INV_ram~340_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~637_combout\);

-- Location: FF_X32_Y3_N46
\RAM1|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~316_q\);

-- Location: FF_X31_Y4_N58
\RAM1|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~380_q\);

-- Location: FF_X29_Y4_N52
\RAM1|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~332_q\);

-- Location: FF_X32_Y1_N56
\RAM1|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~396_q\);

-- Location: LABCELL_X32_Y1_N54
\RAM1|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~640_combout\ = ( \RAM1|ram~396_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~332_q\) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~396_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & \RAM1|ram~332_q\) ) ) ) # ( 
-- \RAM1|ram~396_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~316_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~380_q\))) ) ) ) # ( !\RAM1|ram~396_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~51_combout\ & 
-- (\RAM1|ram~316_q\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~380_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~316_q\,
	datab => \RAM1|ALT_INV_ram~380_q\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~332_q\,
	datae => \RAM1|ALT_INV_ram~396_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~640_combout\);

-- Location: LABCELL_X32_Y6_N24
\RAM1|ram~324feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~324feeder_combout\ = ( \CPU1|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~324feeder_combout\);

-- Location: FF_X32_Y6_N25
\RAM1|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~324feeder_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~324_q\);

-- Location: FF_X32_Y6_N10
\RAM1|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~308_q\);

-- Location: FF_X34_Y6_N41
\RAM1|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~388_q\);

-- Location: FF_X34_Y6_N50
\RAM1|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~372_q\);

-- Location: MLABCELL_X34_Y6_N48
\RAM1|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~638_combout\ = ( \RAM1|ram~372_q\ & ( \ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\) # (\RAM1|ram~388_q\) ) ) ) # ( !\RAM1|ram~372_q\ & ( \ROM1|memROM~51_combout\ & ( (\ROM1|memROM~5_combout\ & \RAM1|ram~388_q\) ) ) ) # ( 
-- \RAM1|ram~372_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & ((\RAM1|ram~308_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~324_q\)) ) ) ) # ( !\RAM1|ram~372_q\ & ( !\ROM1|memROM~51_combout\ & ( (!\ROM1|memROM~5_combout\ & 
-- ((\RAM1|ram~308_q\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~324_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~324_q\,
	datab => \RAM1|ALT_INV_ram~308_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~388_q\,
	datae => \RAM1|ALT_INV_ram~372_q\,
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \RAM1|ram~638_combout\);

-- Location: MLABCELL_X37_Y2_N30
\RAM1|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~641_combout\ = ( \ROM1|memROM~82_combout\ & ( \RAM1|ram~638_combout\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~639_combout\)) # (\ROM1|memROM~42_combout\ & ((\RAM1|ram~640_combout\))) ) ) ) # ( !\ROM1|memROM~82_combout\ & ( 
-- \RAM1|ram~638_combout\ & ( (\RAM1|ram~637_combout\) # (\ROM1|memROM~42_combout\) ) ) ) # ( \ROM1|memROM~82_combout\ & ( !\RAM1|ram~638_combout\ & ( (!\ROM1|memROM~42_combout\ & (\RAM1|ram~639_combout\)) # (\ROM1|memROM~42_combout\ & 
-- ((\RAM1|ram~640_combout\))) ) ) ) # ( !\ROM1|memROM~82_combout\ & ( !\RAM1|ram~638_combout\ & ( (!\ROM1|memROM~42_combout\ & \RAM1|ram~637_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~639_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~637_combout\,
	datad => \RAM1|ALT_INV_ram~640_combout\,
	datae => \ROM1|ALT_INV_memROM~82_combout\,
	dataf => \RAM1|ALT_INV_ram~638_combout\,
	combout => \RAM1|ram~641_combout\);

-- Location: MLABCELL_X37_Y2_N42
\RAM1|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~652_combout\ = ( \ROM1|memROM~50_combout\ & ( \RAM1|ram~641_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~636_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~646_combout\))) ) ) ) # ( !\ROM1|memROM~50_combout\ & ( 
-- \RAM1|ram~641_combout\ & ( (!\ROM1|memROM~62_combout\) # (\RAM1|ram~651_combout\) ) ) ) # ( \ROM1|memROM~50_combout\ & ( !\RAM1|ram~641_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~636_combout\)) # (\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~646_combout\))) ) ) ) # ( !\ROM1|memROM~50_combout\ & ( !\RAM1|ram~641_combout\ & ( (\RAM1|ram~651_combout\ & \ROM1|memROM~62_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~636_combout\,
	datab => \RAM1|ALT_INV_ram~651_combout\,
	datac => \RAM1|ALT_INV_ram~646_combout\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \RAM1|ALT_INV_ram~641_combout\,
	combout => \RAM1|ram~652_combout\);

-- Location: LABCELL_X40_Y5_N39
\CPU1|MUX1|saida_MUX[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~11_combout\ = ( \CPU1|DECODER1|saida[5]~1_combout\ & ( \RAM1|ram~652_combout\ & ( (!\ROM1|memROM~50_combout\) # (((\CPU1|MUX1|saida_MUX[1]~6_combout\ & \SW[5]~input_o\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\)) ) ) ) # ( 
-- !\CPU1|DECODER1|saida[5]~1_combout\ & ( \RAM1|ram~652_combout\ & ( ((\CPU1|MUX1|saida_MUX[1]~6_combout\ & \SW[5]~input_o\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) ) # ( \CPU1|DECODER1|saida[5]~1_combout\ & ( !\RAM1|ram~652_combout\ & ( 
-- (!\ROM1|memROM~50_combout\) # ((\CPU1|MUX1|saida_MUX[1]~6_combout\ & \SW[5]~input_o\)) ) ) ) # ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( !\RAM1|ram~652_combout\ & ( (\CPU1|MUX1|saida_MUX[1]~6_combout\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111101010101010111100110011001111111011101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \RAM1|ALT_INV_ram~652_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~11_combout\);

-- Location: LABCELL_X36_Y5_N48
\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[5]~11_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( !\CPU1|MUX1|saida_MUX[5]~11_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[5]~11_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

-- Location: LABCELL_X36_Y5_N24
\CPU1|FlagZero1|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~7_combout\ = ( \CPU1|ULA1|Add0~21_sumout\ & ( !\CPU1|ULA1|saida[0]~0_combout\ ) ) # ( !\CPU1|ULA1|Add0~21_sumout\ & ( (!\CPU1|ULA1|saida[0]~0_combout\ & \CPU1|ULA1|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \CPU1|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU1|FlagZero1|DOUT~7_combout\);

-- Location: LABCELL_X36_Y4_N21
\CPU1|MUX1|saida_MUX[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~15_combout\ = ( \ROM1|memROM~42_combout\ & ( \SW[2]~input_o\ & ( ((\comb~8_combout\ & (\CPU1|DECODER1|saida[1]~0_combout\ & \comb~10_combout\))) # (\CPU1|DECODER1|saida[5]~1_combout\) ) ) ) # ( !\ROM1|memROM~42_combout\ & ( 
-- \SW[2]~input_o\ & ( (\comb~8_combout\ & (!\CPU1|DECODER1|saida[5]~1_combout\ & (\CPU1|DECODER1|saida[1]~0_combout\ & \comb~10_combout\))) ) ) ) # ( \ROM1|memROM~42_combout\ & ( !\SW[2]~input_o\ & ( \CPU1|DECODER1|saida[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datad => \ALT_INV_comb~10_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[2]~15_combout\);

-- Location: LABCELL_X36_Y4_N18
\CPU1|MUX1|saida_MUX[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~14_combout\ = ( \ROM1|memROM~5_combout\ & ( \SW[1]~input_o\ & ( ((\comb~8_combout\ & (\comb~10_combout\ & \CPU1|DECODER1|saida[1]~0_combout\))) # (\CPU1|DECODER1|saida[5]~1_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \SW[1]~input_o\ & ( (\comb~8_combout\ & (!\CPU1|DECODER1|saida[5]~1_combout\ & (\comb~10_combout\ & \CPU1|DECODER1|saida[1]~0_combout\))) ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\SW[1]~input_o\ & ( \CPU1|DECODER1|saida[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \ALT_INV_comb~10_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[1]~14_combout\);

-- Location: LABCELL_X36_Y4_N24
\CPU1|FlagZero1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~1_combout\ = ( \RAM1|ram~589_combout\ & ( \CPU1|MUX1|saida_MUX[1]~14_combout\ & ( \CPU1|ULA1|saida[0]~0_combout\ ) ) ) # ( !\RAM1|ram~589_combout\ & ( \CPU1|MUX1|saida_MUX[1]~14_combout\ & ( \CPU1|ULA1|saida[0]~0_combout\ ) ) ) # ( 
-- \RAM1|ram~589_combout\ & ( !\CPU1|MUX1|saida_MUX[1]~14_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & ((\CPU1|MUX1|saida_MUX[1]~5_combout\) # (\CPU1|MUX1|saida_MUX[2]~15_combout\))) ) ) ) # ( !\RAM1|ram~589_combout\ & ( 
-- !\CPU1|MUX1|saida_MUX[1]~14_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & (((\CPU1|MUX1|saida_MUX[1]~5_combout\ & \RAM1|ram~568_combout\)) # (\CPU1|MUX1|saida_MUX[2]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|MUX1|ALT_INV_saida_MUX[2]~15_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datac => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \RAM1|ALT_INV_ram~568_combout\,
	datae => \RAM1|ALT_INV_ram~589_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[1]~14_combout\,
	combout => \CPU1|FlagZero1|DOUT~1_combout\);

-- Location: LABCELL_X35_Y5_N12
\ROM1|memROM~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~56_combout\ = ( \ROM1|memROM~34_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~34_combout\,
	combout => \ROM1|memROM~56_combout\);

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

-- Location: MLABCELL_X34_Y1_N0
\CPU1|MUX1|saida_MUX[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~18_combout\ = ( \CPU1|DECODER1|saida[5]~1_combout\ & ( \comb~8_combout\ & ( \ROM1|memROM~56_combout\ ) ) ) # ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( \comb~8_combout\ & ( (\CPU1|DECODER1|saida[1]~0_combout\ & (\comb~10_combout\ & 
-- \SW[7]~input_o\)) ) ) ) # ( \CPU1|DECODER1|saida[5]~1_combout\ & ( !\comb~8_combout\ & ( \ROM1|memROM~56_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~56_combout\,
	datac => \ALT_INV_comb~10_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~18_combout\);

-- Location: LABCELL_X35_Y5_N21
\CPU1|DECODER1|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida~3_combout\ = ( \ROM1|memROM~27_combout\ & ( (!\ROM1|memROM~14_combout\ & (!\ROM1|memROM~24_combout\ & (!\ROM1|memROM~18_combout\ & !\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \CPU1|DECODER1|saida~3_combout\);

-- Location: LABCELL_X40_Y5_N12
\CPU1|MUX1|saida_MUX[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~13_combout\ = ( \SW[7]~input_o\ & ( \RAM1|ram~694_combout\ & ( (((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~56_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) ) # ( 
-- !\SW[7]~input_o\ & ( \RAM1|ram~694_combout\ & ( ((\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~56_combout\)) # (\CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) ) # ( \SW[7]~input_o\ & ( !\RAM1|ram~694_combout\ & ( ((\CPU1|DECODER1|saida[5]~1_combout\ & 
-- \ROM1|memROM~56_combout\)) # (\CPU1|MUX1|saida_MUX[1]~6_combout\) ) ) ) # ( !\SW[7]~input_o\ & ( !\RAM1|ram~694_combout\ & ( (\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~56_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111111100110111001101110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datac => \ROM1|ALT_INV_memROM~56_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \RAM1|ALT_INV_ram~694_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~13_combout\);

-- Location: LABCELL_X36_Y5_N51
\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[6]~12_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( !\CPU1|MUX1|saida_MUX[6]~12_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

-- Location: FF_X36_Y5_N53
\CPU1|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~12_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(6));

-- Location: FF_X32_Y3_N17
\RAM1|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~317_q\);

-- Location: FF_X32_Y3_N58
\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

-- Location: FF_X32_Y2_N44
\RAM1|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~445_q\);

-- Location: FF_X37_Y2_N52
\RAM1|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~189_q\);

-- Location: LABCELL_X32_Y2_N42
\RAM1|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~660_combout\ = ( \RAM1|ram~445_q\ & ( \RAM1|ram~189_q\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~317_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~61_q\)))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~445_q\ & ( \RAM1|ram~189_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~317_q\ & ((!\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~61_q\)))) ) ) ) # ( \RAM1|ram~445_q\ & ( !\RAM1|ram~189_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~62_combout\)) # (\RAM1|ram~317_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~61_q\ & !\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~445_q\ & ( !\RAM1|ram~189_q\ & ( (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~317_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~61_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~317_q\,
	datac => \RAM1|ALT_INV_ram~61_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~445_q\,
	dataf => \RAM1|ALT_INV_ram~189_q\,
	combout => \RAM1|ram~660_combout\);

-- Location: FF_X39_Y4_N1
\RAM1|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~381_q\);

-- Location: MLABCELL_X37_Y5_N51
\RAM1|ram~125feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~125feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~125feeder_combout\);

-- Location: FF_X37_Y5_N52
\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~125feeder_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

-- Location: FF_X40_Y3_N20
\RAM1|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~509_q\);

-- Location: LABCELL_X41_Y3_N12
\RAM1|ram~253feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~253feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~253feeder_combout\);

-- Location: FF_X41_Y3_N13
\RAM1|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~253feeder_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~253_q\);

-- Location: LABCELL_X40_Y3_N18
\RAM1|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~661_combout\ = ( \RAM1|ram~509_q\ & ( \RAM1|ram~253_q\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~381_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~125_q\)))) # (\ROM1|memROM~62_combout\) ) ) ) # ( !\RAM1|ram~509_q\ & ( \RAM1|ram~253_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~381_q\ & ((!\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~125_q\)))) ) ) ) # ( \RAM1|ram~509_q\ & ( !\RAM1|ram~253_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~62_combout\)) # (\RAM1|ram~381_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~125_q\ & !\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~509_q\ & ( !\RAM1|ram~253_q\ & ( (!\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~381_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~125_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~381_q\,
	datac => \RAM1|ALT_INV_ram~125_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~509_q\,
	dataf => \RAM1|ALT_INV_ram~253_q\,
	combout => \RAM1|ram~661_combout\);

-- Location: FF_X29_Y4_N58
\RAM1|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~413_q\);

-- Location: FF_X31_Y3_N11
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X42_Y4_N20
\RAM1|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~285_q\);

-- Location: LABCELL_X36_Y3_N12
\RAM1|ram~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~157feeder_combout\);

-- Location: FF_X36_Y3_N14
\RAM1|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~157feeder_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~157_q\);

-- Location: MLABCELL_X42_Y4_N18
\RAM1|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~658_combout\ = ( \RAM1|ram~285_q\ & ( \RAM1|ram~157_q\ & ( (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~62_combout\)) # (\RAM1|ram~413_q\))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~29_q\)))) ) ) ) # ( 
-- !\RAM1|ram~285_q\ & ( \RAM1|ram~157_q\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~413_q\ & ((\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\) # (\RAM1|ram~29_q\)))) ) ) ) # ( \RAM1|ram~285_q\ & ( !\RAM1|ram~157_q\ & 
-- ( (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~62_combout\)) # (\RAM1|ram~413_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~29_q\ & !\ROM1|memROM~62_combout\)))) ) ) ) # ( !\RAM1|ram~285_q\ & ( !\RAM1|ram~157_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~413_q\ & ((\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~29_q\ & !\ROM1|memROM~62_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~413_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \ROM1|ALT_INV_memROM~62_combout\,
	datae => \RAM1|ALT_INV_ram~285_q\,
	dataf => \RAM1|ALT_INV_ram~157_q\,
	combout => \RAM1|ram~658_combout\);

-- Location: FF_X41_Y5_N25
\RAM1|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~221_q\);

-- Location: FF_X40_Y3_N46
\RAM1|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~477_q\);

-- Location: FF_X42_Y4_N32
\RAM1|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~349_q\);

-- Location: MLABCELL_X42_Y4_N24
\RAM1|ram~93feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~93feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~93feeder_combout\);

-- Location: FF_X42_Y4_N26
\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~93feeder_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

-- Location: MLABCELL_X42_Y4_N30
\RAM1|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~659_combout\ = ( \RAM1|ram~349_q\ & ( \RAM1|ram~93_q\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~477_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~221_q\))) ) ) ) # ( !\RAM1|ram~349_q\ & ( \RAM1|ram~93_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~477_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~221_q\)))) ) ) ) # ( \RAM1|ram~349_q\ & ( !\RAM1|ram~93_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~477_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~221_q\)))) ) ) ) # ( !\RAM1|ram~349_q\ & ( !\RAM1|ram~93_q\ & ( 
-- (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~477_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~221_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~221_q\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~477_q\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~349_q\,
	dataf => \RAM1|ALT_INV_ram~93_q\,
	combout => \RAM1|ram~659_combout\);

-- Location: LABCELL_X35_Y4_N18
\RAM1|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~662_combout\ = ( \RAM1|ram~658_combout\ & ( \RAM1|ram~659_combout\ & ( (!\ROM1|memROM~42_combout\) # ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~660_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~661_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~658_combout\ & ( \RAM1|ram~659_combout\ & ( (!\ROM1|memROM~51_combout\ & (\RAM1|ram~660_combout\ & ((\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~661_combout\)))) ) ) ) # ( 
-- \RAM1|ram~658_combout\ & ( !\RAM1|ram~659_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~660_combout\))) # (\ROM1|memROM~51_combout\ & (((\RAM1|ram~661_combout\ & \ROM1|memROM~42_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~658_combout\ & ( !\RAM1|ram~659_combout\ & ( (\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~660_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~661_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~660_combout\,
	datac => \RAM1|ALT_INV_ram~661_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~658_combout\,
	dataf => \RAM1|ALT_INV_ram~659_combout\,
	combout => \RAM1|ram~662_combout\);

-- Location: FF_X31_Y3_N58
\RAM1|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~429_q\);

-- Location: FF_X28_Y3_N22
\RAM1|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~205_q\);

-- Location: FF_X34_Y3_N26
\RAM1|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~461_q\);

-- Location: FF_X36_Y2_N55
\RAM1|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~173_q\);

-- Location: MLABCELL_X34_Y3_N24
\RAM1|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~670_combout\ = ( \RAM1|ram~461_q\ & ( \RAM1|ram~173_q\ & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~429_q\)) # (\ROM1|memROM~50_combout\))) # (\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~50_combout\) # ((\RAM1|ram~205_q\)))) ) ) ) # ( 
-- !\RAM1|ram~461_q\ & ( \RAM1|ram~173_q\ & ( (!\ROM1|memROM~42_combout\ & (((\RAM1|ram~429_q\)) # (\ROM1|memROM~50_combout\))) # (\ROM1|memROM~42_combout\ & (\ROM1|memROM~50_combout\ & ((\RAM1|ram~205_q\)))) ) ) ) # ( \RAM1|ram~461_q\ & ( !\RAM1|ram~173_q\ 
-- & ( (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~50_combout\ & (\RAM1|ram~429_q\))) # (\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~50_combout\) # ((\RAM1|ram~205_q\)))) ) ) ) # ( !\RAM1|ram~461_q\ & ( !\RAM1|ram~173_q\ & ( (!\ROM1|memROM~42_combout\ & 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~429_q\))) # (\ROM1|memROM~42_combout\ & (\ROM1|memROM~50_combout\ & ((\RAM1|ram~205_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~42_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~429_q\,
	datad => \RAM1|ALT_INV_ram~205_q\,
	datae => \RAM1|ALT_INV_ram~461_q\,
	dataf => \RAM1|ALT_INV_ram~173_q\,
	combout => \RAM1|ram~670_combout\);

-- Location: MLABCELL_X42_Y3_N27
\RAM1|ram~237feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~237feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~237feeder_combout\);

-- Location: FF_X42_Y3_N28
\RAM1|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~237feeder_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~237_q\);

-- Location: MLABCELL_X34_Y3_N3
\RAM1|ram~493feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~493feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~493feeder_combout\);

-- Location: FF_X34_Y3_N5
\RAM1|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~493feeder_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~493_q\);

-- Location: FF_X41_Y4_N34
\RAM1|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~269_q\);

-- Location: FF_X39_Y4_N8
\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

-- Location: LABCELL_X39_Y4_N6
\RAM1|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~671_combout\ = ( \RAM1|ram~525_q\ & ( \ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~269_q\) ) ) ) # ( !\RAM1|ram~525_q\ & ( \ROM1|memROM~42_combout\ & ( (\RAM1|ram~269_q\ & \ROM1|memROM~50_combout\) ) ) ) # ( 
-- \RAM1|ram~525_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~493_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~237_q\)) ) ) ) # ( !\RAM1|ram~525_q\ & ( !\ROM1|memROM~42_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~493_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~237_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~237_q\,
	datab => \RAM1|ALT_INV_ram~493_q\,
	datac => \RAM1|ALT_INV_ram~269_q\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~525_q\,
	dataf => \ROM1|ALT_INV_memROM~42_combout\,
	combout => \RAM1|ram~671_combout\);

-- Location: FF_X32_Y1_N5
\RAM1|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~365_q\);

-- Location: FF_X32_Y1_N32
\RAM1|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~109_q\);

-- Location: FF_X32_Y1_N8
\RAM1|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~397_q\);

-- Location: FF_X37_Y3_N47
\RAM1|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~141_q\);

-- Location: LABCELL_X32_Y1_N6
\RAM1|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~669_combout\ = ( \RAM1|ram~397_q\ & ( \RAM1|ram~141_q\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~365_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~109_q\)))) # (\ROM1|memROM~42_combout\) ) ) ) # ( !\RAM1|ram~397_q\ & ( \RAM1|ram~141_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~365_q\ & ((!\ROM1|memROM~42_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~42_combout\) # (\RAM1|ram~109_q\)))) ) ) ) # ( \RAM1|ram~397_q\ & ( !\RAM1|ram~141_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~42_combout\)) # (\RAM1|ram~365_q\))) # (\ROM1|memROM~50_combout\ & (((\RAM1|ram~109_q\ & !\ROM1|memROM~42_combout\)))) ) ) ) # ( !\RAM1|ram~397_q\ & ( !\RAM1|ram~141_q\ & ( (!\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~365_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~109_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~365_q\,
	datab => \RAM1|ALT_INV_ram~109_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~397_q\,
	dataf => \RAM1|ALT_INV_ram~141_q\,
	combout => \RAM1|ram~669_combout\);

-- Location: FF_X28_Y3_N46
\RAM1|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~77_q\);

-- Location: FF_X32_Y4_N59
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X29_Y4_N26
\RAM1|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~333_q\);

-- Location: FF_X35_Y5_N47
\RAM1|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~301_q\);

-- Location: LABCELL_X29_Y4_N24
\RAM1|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~668_combout\ = ( \RAM1|ram~333_q\ & ( \RAM1|ram~301_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~45_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~77_q\))) ) ) ) # ( !\RAM1|ram~333_q\ & ( \RAM1|ram~301_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (!\ROM1|memROM~42_combout\)) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~45_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~77_q\)))) ) ) ) # ( \RAM1|ram~333_q\ & ( !\RAM1|ram~301_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\ROM1|memROM~42_combout\)) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~45_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~77_q\)))) ) ) ) # ( !\RAM1|ram~333_q\ & ( !\RAM1|ram~301_q\ & ( 
-- (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~42_combout\ & ((\RAM1|ram~45_q\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~77_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \RAM1|ALT_INV_ram~77_q\,
	datad => \RAM1|ALT_INV_ram~45_q\,
	datae => \RAM1|ALT_INV_ram~333_q\,
	dataf => \RAM1|ALT_INV_ram~301_q\,
	combout => \RAM1|ram~668_combout\);

-- Location: MLABCELL_X34_Y3_N36
\RAM1|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~672_combout\ = ( \RAM1|ram~669_combout\ & ( \RAM1|ram~668_combout\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~670_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~671_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~669_combout\ & ( \RAM1|ram~668_combout\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\) # ((\RAM1|ram~670_combout\)))) # (\ROM1|memROM~51_combout\ & (\ROM1|memROM~62_combout\ & ((\RAM1|ram~671_combout\)))) ) ) ) # ( 
-- \RAM1|ram~669_combout\ & ( !\RAM1|ram~668_combout\ & ( (!\ROM1|memROM~51_combout\ & (\ROM1|memROM~62_combout\ & (\RAM1|ram~670_combout\))) # (\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~62_combout\) # ((\RAM1|ram~671_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~669_combout\ & ( !\RAM1|ram~668_combout\ & ( (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~51_combout\ & (\RAM1|ram~670_combout\)) # (\ROM1|memROM~51_combout\ & ((\RAM1|ram~671_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~670_combout\,
	datad => \RAM1|ALT_INV_ram~671_combout\,
	datae => \RAM1|ALT_INV_ram~669_combout\,
	dataf => \RAM1|ALT_INV_ram~668_combout\,
	combout => \RAM1|ram~672_combout\);

-- Location: FF_X35_Y2_N55
\RAM1|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~197_q\);

-- Location: FF_X34_Y2_N49
\RAM1|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~453_q\);

-- Location: FF_X35_Y4_N26
\RAM1|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~517_q\);

-- Location: FF_X39_Y4_N16
\RAM1|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~261_q\);

-- Location: LABCELL_X35_Y4_N24
\RAM1|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~666_combout\ = ( \RAM1|ram~517_q\ & ( \RAM1|ram~261_q\ & ( ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~453_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~197_q\))) # (\ROM1|memROM~51_combout\) ) ) ) # ( !\RAM1|ram~517_q\ & ( \RAM1|ram~261_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~51_combout\ & \RAM1|ram~453_q\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~51_combout\)) # (\RAM1|ram~197_q\))) ) ) ) # ( \RAM1|ram~517_q\ & ( !\RAM1|ram~261_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\RAM1|ram~453_q\) # (\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~197_q\ & (!\ROM1|memROM~51_combout\))) ) ) ) # ( !\RAM1|ram~517_q\ & ( !\RAM1|ram~261_q\ & ( (!\ROM1|memROM~51_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~453_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~197_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~197_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~51_combout\,
	datad => \RAM1|ALT_INV_ram~453_q\,
	datae => \RAM1|ALT_INV_ram~517_q\,
	dataf => \RAM1|ALT_INV_ram~261_q\,
	combout => \RAM1|ram~666_combout\);

-- Location: LABCELL_X39_Y6_N51
\RAM1|ram~133feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~133feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~133feeder_combout\);

-- Location: FF_X39_Y6_N52
\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~133feeder_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

-- Location: FF_X31_Y6_N43
\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

-- Location: FF_X34_Y6_N26
\RAM1|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~389_q\);

-- Location: FF_X32_Y6_N28
\RAM1|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~325_q\);

-- Location: MLABCELL_X34_Y6_N24
\RAM1|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~664_combout\ = ( \RAM1|ram~389_q\ & ( \RAM1|ram~325_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~69_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~133_q\))) ) ) ) # ( !\RAM1|ram~389_q\ & ( \RAM1|ram~325_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~69_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~133_q\)))) ) ) ) # ( \RAM1|ram~389_q\ & ( !\RAM1|ram~325_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~69_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~133_q\)))) ) ) ) # ( !\RAM1|ram~389_q\ & ( !\RAM1|ram~325_q\ & ( 
-- (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~69_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~133_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~133_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~69_q\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \RAM1|ALT_INV_ram~389_q\,
	dataf => \RAM1|ALT_INV_ram~325_q\,
	combout => \RAM1|ram~664_combout\);

-- Location: FF_X29_Y1_N2
\RAM1|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~229_q\);

-- Location: FF_X34_Y2_N22
\RAM1|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~421_q\);

-- Location: FF_X29_Y1_N8
\RAM1|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~485_q\);

-- Location: FF_X35_Y2_N22
\RAM1|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~165_q\);

-- Location: LABCELL_X29_Y1_N6
\RAM1|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~665_combout\ = ( \RAM1|ram~485_q\ & ( \RAM1|ram~165_q\ & ( (!\ROM1|memROM~51_combout\ & (((\RAM1|ram~421_q\) # (\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~229_q\))) ) ) ) # ( 
-- !\RAM1|ram~485_q\ & ( \RAM1|ram~165_q\ & ( (!\ROM1|memROM~51_combout\ & (((\RAM1|ram~421_q\) # (\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~229_q\ & (\ROM1|memROM~50_combout\))) ) ) ) # ( \RAM1|ram~485_q\ & ( !\RAM1|ram~165_q\ & 
-- ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~50_combout\ & \RAM1|ram~421_q\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~229_q\))) ) ) ) # ( !\RAM1|ram~485_q\ & ( !\RAM1|ram~165_q\ & ( (!\ROM1|memROM~51_combout\ & 
-- (((!\ROM1|memROM~50_combout\ & \RAM1|ram~421_q\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~229_q\ & (\ROM1|memROM~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~229_q\,
	datab => \ROM1|ALT_INV_memROM~51_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~421_q\,
	datae => \RAM1|ALT_INV_ram~485_q\,
	dataf => \RAM1|ALT_INV_ram~165_q\,
	combout => \RAM1|ram~665_combout\);

-- Location: FF_X40_Y4_N38
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: FF_X31_Y6_N52
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X40_Y4_N44
\RAM1|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~357_q\);

-- Location: FF_X32_Y6_N34
\RAM1|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~293_q\);

-- Location: LABCELL_X40_Y4_N42
\RAM1|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~663_combout\ = ( \RAM1|ram~357_q\ & ( \RAM1|ram~293_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~37_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~101_q\))) ) ) ) # ( !\RAM1|ram~357_q\ & ( \RAM1|ram~293_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~37_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~101_q\)))) ) ) ) # ( \RAM1|ram~357_q\ & ( !\RAM1|ram~293_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~51_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~37_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~101_q\)))) ) ) ) # ( !\RAM1|ram~357_q\ & ( !\RAM1|ram~293_q\ & ( 
-- (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~37_q\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~101_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~101_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \RAM1|ALT_INV_ram~357_q\,
	dataf => \RAM1|ALT_INV_ram~293_q\,
	combout => \RAM1|ram~663_combout\);

-- Location: LABCELL_X35_Y4_N3
\RAM1|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~667_combout\ = ( \RAM1|ram~663_combout\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~42_combout\ & ((\RAM1|ram~665_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~666_combout\)) ) ) ) # ( !\RAM1|ram~663_combout\ & ( 
-- \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~42_combout\ & ((\RAM1|ram~665_combout\))) # (\ROM1|memROM~42_combout\ & (\RAM1|ram~666_combout\)) ) ) ) # ( \RAM1|ram~663_combout\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~42_combout\) # 
-- (\RAM1|ram~664_combout\) ) ) ) # ( !\RAM1|ram~663_combout\ & ( !\ROM1|memROM~62_combout\ & ( (\RAM1|ram~664_combout\ & \ROM1|memROM~42_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~666_combout\,
	datab => \RAM1|ALT_INV_ram~664_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~665_combout\,
	datae => \RAM1|ALT_INV_ram~663_combout\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~667_combout\);

-- Location: MLABCELL_X37_Y1_N30
\RAM1|ram~373feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~373feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~373feeder_combout\);

-- Location: FF_X37_Y1_N31
\RAM1|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~373feeder_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~373_q\);

-- Location: FF_X39_Y6_N22
\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

-- Location: FF_X42_Y5_N8
\RAM1|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~245_q\);

-- Location: FF_X42_Y5_N14
\RAM1|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~501_q\);

-- Location: MLABCELL_X42_Y5_N12
\RAM1|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~656_combout\ = ( \RAM1|ram~501_q\ & ( \ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~245_q\) ) ) ) # ( !\RAM1|ram~501_q\ & ( \ROM1|memROM~62_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~245_q\) ) ) ) # ( 
-- \RAM1|ram~501_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~373_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~117_q\))) ) ) ) # ( !\RAM1|ram~501_q\ & ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~373_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~117_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~373_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~117_q\,
	datad => \RAM1|ALT_INV_ram~245_q\,
	datae => \RAM1|ALT_INV_ram~501_q\,
	dataf => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \RAM1|ram~656_combout\);

-- Location: FF_X35_Y2_N10
\RAM1|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~181_q\);

-- Location: MLABCELL_X28_Y4_N9
\RAM1|ram~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~309feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~309feeder_combout\);

-- Location: FF_X28_Y4_N10
\RAM1|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~309feeder_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~309_q\);

-- Location: FF_X34_Y2_N32
\RAM1|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~437_q\);

-- Location: FF_X42_Y5_N1
\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

-- Location: MLABCELL_X34_Y2_N30
\RAM1|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~655_combout\ = ( \RAM1|ram~437_q\ & ( \RAM1|ram~53_q\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\) # (\RAM1|ram~309_q\)))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~181_q\))) ) ) ) # ( 
-- !\RAM1|ram~437_q\ & ( \RAM1|ram~53_q\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~50_combout\) # (\RAM1|ram~309_q\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~181_q\ & ((\ROM1|memROM~50_combout\)))) ) ) ) # ( \RAM1|ram~437_q\ & ( !\RAM1|ram~53_q\ & 
-- ( (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~309_q\ & !\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~181_q\))) ) ) ) # ( !\RAM1|ram~437_q\ & ( !\RAM1|ram~53_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (((\RAM1|ram~309_q\ & !\ROM1|memROM~50_combout\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~181_q\ & ((\ROM1|memROM~50_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~181_q\,
	datab => \RAM1|ALT_INV_ram~309_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~437_q\,
	dataf => \RAM1|ALT_INV_ram~53_q\,
	combout => \RAM1|ram~655_combout\);

-- Location: FF_X37_Y5_N16
\RAM1|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~149_q\);

-- Location: FF_X34_Y5_N47
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X34_Y5_N38
\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

-- Location: LABCELL_X32_Y5_N33
\RAM1|ram~405feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~405feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~405feeder_combout\);

-- Location: FF_X32_Y5_N34
\RAM1|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~405feeder_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~405_q\);

-- Location: MLABCELL_X34_Y5_N36
\RAM1|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~653_combout\ = ( \RAM1|ram~277_q\ & ( \RAM1|ram~405_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~62_combout\ & ((\RAM1|ram~21_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~149_q\))) ) ) ) # ( !\RAM1|ram~277_q\ & ( \RAM1|ram~405_q\ & ( 
-- (!\ROM1|memROM~62_combout\ & (((\RAM1|ram~21_q\ & \ROM1|memROM~50_combout\)))) # (\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~149_q\))) ) ) ) # ( \RAM1|ram~277_q\ & ( !\RAM1|ram~405_q\ & ( (!\ROM1|memROM~62_combout\ & 
-- (((!\ROM1|memROM~50_combout\) # (\RAM1|ram~21_q\)))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~149_q\ & ((\ROM1|memROM~50_combout\)))) ) ) ) # ( !\RAM1|ram~277_q\ & ( !\RAM1|ram~405_q\ & ( (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~62_combout\ & 
-- ((\RAM1|ram~21_q\))) # (\ROM1|memROM~62_combout\ & (\RAM1|ram~149_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_q\,
	datab => \RAM1|ALT_INV_ram~21_q\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \RAM1|ALT_INV_ram~277_q\,
	dataf => \RAM1|ALT_INV_ram~405_q\,
	combout => \RAM1|ram~653_combout\);

-- Location: FF_X35_Y6_N1
\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

-- Location: LABCELL_X36_Y3_N48
\RAM1|ram~213feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~213feeder_combout\ = ( \CPU1|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~213feeder_combout\);

-- Location: FF_X36_Y3_N49
\RAM1|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~213feeder_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~213_q\);

-- Location: FF_X34_Y5_N14
\RAM1|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~341_q\);

-- Location: FF_X40_Y3_N41
\RAM1|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~469_q\);

-- Location: MLABCELL_X34_Y5_N12
\RAM1|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~654_combout\ = ( \RAM1|ram~341_q\ & ( \RAM1|ram~469_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~85_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~213_q\)))) ) ) ) # ( !\RAM1|ram~341_q\ & ( \RAM1|ram~469_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~85_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~213_q\))))) ) ) ) # ( \RAM1|ram~341_q\ & ( !\RAM1|ram~469_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~62_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~85_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~213_q\))))) ) ) ) # ( !\RAM1|ram~341_q\ & ( !\RAM1|ram~469_q\ & ( 
-- (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~62_combout\ & (\RAM1|ram~85_q\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~213_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001100011100000111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~85_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~62_combout\,
	datad => \RAM1|ALT_INV_ram~213_q\,
	datae => \RAM1|ALT_INV_ram~341_q\,
	dataf => \RAM1|ALT_INV_ram~469_q\,
	combout => \RAM1|ram~654_combout\);

-- Location: LABCELL_X36_Y4_N45
\RAM1|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~657_combout\ = ( \RAM1|ram~653_combout\ & ( \RAM1|ram~654_combout\ & ( (!\ROM1|memROM~42_combout\) # ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~655_combout\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~656_combout\))) ) ) ) # ( 
-- !\RAM1|ram~653_combout\ & ( \RAM1|ram~654_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\RAM1|ram~655_combout\ & \ROM1|memROM~42_combout\)))) # (\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\)) # (\RAM1|ram~656_combout\))) ) ) ) # ( 
-- \RAM1|ram~653_combout\ & ( !\RAM1|ram~654_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~655_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~656_combout\ & ((\ROM1|memROM~42_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~653_combout\ & ( !\RAM1|ram~654_combout\ & ( (\ROM1|memROM~42_combout\ & ((!\ROM1|memROM~51_combout\ & ((\RAM1|ram~655_combout\))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~656_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~656_combout\,
	datac => \RAM1|ALT_INV_ram~655_combout\,
	datad => \ROM1|ALT_INV_memROM~42_combout\,
	datae => \RAM1|ALT_INV_ram~653_combout\,
	dataf => \RAM1|ALT_INV_ram~654_combout\,
	combout => \RAM1|ram~657_combout\);

-- Location: LABCELL_X35_Y4_N42
\RAM1|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~673_combout\ = ( \RAM1|ram~667_combout\ & ( \RAM1|ram~657_combout\ & ( (!\ROM1|memROM~82_combout\) # ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~662_combout\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~672_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~667_combout\ & ( \RAM1|ram~657_combout\ & ( (!\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~82_combout\) # ((\RAM1|ram~662_combout\)))) # (\ROM1|memROM~5_combout\ & (\ROM1|memROM~82_combout\ & ((\RAM1|ram~672_combout\)))) ) ) ) # ( 
-- \RAM1|ram~667_combout\ & ( !\RAM1|ram~657_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~82_combout\ & (\RAM1|ram~662_combout\))) # (\ROM1|memROM~5_combout\ & ((!\ROM1|memROM~82_combout\) # ((\RAM1|ram~672_combout\)))) ) ) ) # ( 
-- !\RAM1|ram~667_combout\ & ( !\RAM1|ram~657_combout\ & ( (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~5_combout\ & (\RAM1|ram~662_combout\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~672_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \RAM1|ALT_INV_ram~662_combout\,
	datad => \RAM1|ALT_INV_ram~672_combout\,
	datae => \RAM1|ALT_INV_ram~667_combout\,
	dataf => \RAM1|ALT_INV_ram~657_combout\,
	combout => \RAM1|ram~673_combout\);

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

-- Location: LABCELL_X36_Y1_N30
\CPU1|MUX1|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~12_combout\ = ( \CPU1|MUX1|saida_MUX[1]~6_combout\ & ( \CPU1|DECODER1|saida[5]~1_combout\ & ( (((\RAM1|ram~673_combout\ & \CPU1|MUX1|saida_MUX[1]~5_combout\)) # (\SW[6]~input_o\)) # (\ROM1|memROM~30_combout\) ) ) ) # ( 
-- !\CPU1|MUX1|saida_MUX[1]~6_combout\ & ( \CPU1|DECODER1|saida[5]~1_combout\ & ( ((\RAM1|ram~673_combout\ & \CPU1|MUX1|saida_MUX[1]~5_combout\)) # (\ROM1|memROM~30_combout\) ) ) ) # ( \CPU1|MUX1|saida_MUX[1]~6_combout\ & ( 
-- !\CPU1|DECODER1|saida[5]~1_combout\ & ( ((\RAM1|ram~673_combout\ & \CPU1|MUX1|saida_MUX[1]~5_combout\)) # (\SW[6]~input_o\) ) ) ) # ( !\CPU1|MUX1|saida_MUX[1]~6_combout\ & ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( (\RAM1|ram~673_combout\ & 
-- \CPU1|MUX1|saida_MUX[1]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111111100110111001101110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~673_combout\,
	datab => \ROM1|ALT_INV_memROM~30_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[1]~6_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~12_combout\);

-- Location: LABCELL_X36_Y5_N54
\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[7]~13_combout\ $ (((!\CPU1|ULA1|Equal1~1_combout\ & ((!\ROM1|memROM~18_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))))) ) + ( \CPU1|REGA|DOUT\(7) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011101111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU1|ULA1|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[7]~13_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

-- Location: FF_X36_Y5_N56
\CPU1|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~13_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(7));

-- Location: LABCELL_X35_Y6_N3
\RAM1|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~86feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~86feeder_combout\);

-- Location: FF_X35_Y6_N5
\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~86feeder_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

-- Location: FF_X40_Y4_N35
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: MLABCELL_X34_Y6_N30
\RAM1|ram~358feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~358feeder_combout\ = \CPU1|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~358feeder_combout\);

-- Location: FF_X34_Y6_N31
\RAM1|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~358feeder_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~358_q\);

-- Location: FF_X34_Y5_N26
\RAM1|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~342_q\);

-- Location: MLABCELL_X34_Y5_N24
\RAM1|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~679_combout\ = ( \RAM1|ram~342_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~358_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~102_q\)) ) ) ) # ( !\RAM1|ram~342_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~358_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~102_q\)) ) ) ) # ( \RAM1|ram~342_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~86_q\) ) ) ) # ( !\RAM1|ram~342_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~86_q\ & \ROM1|memROM~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~86_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~102_q\,
	datad => \RAM1|ALT_INV_ram~358_q\,
	datae => \RAM1|ALT_INV_ram~342_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~679_combout\);

-- Location: FF_X29_Y1_N16
\RAM1|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~230_q\);

-- Location: FF_X36_Y3_N52
\RAM1|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~214_q\);

-- Location: LABCELL_X35_Y4_N36
\RAM1|ram~486feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~486feeder_combout\ = \CPU1|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~486feeder_combout\);

-- Location: FF_X35_Y4_N37
\RAM1|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~486feeder_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~486_q\);

-- Location: FF_X40_Y3_N38
\RAM1|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~470_q\);

-- Location: LABCELL_X40_Y3_N36
\RAM1|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~680_combout\ = ( \RAM1|ram~470_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~486_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~230_q\)) ) ) ) # ( !\RAM1|ram~470_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~486_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~230_q\)) ) ) ) # ( \RAM1|ram~470_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~214_q\) ) ) ) # ( !\RAM1|ram~470_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~214_q\ & \ROM1|memROM~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~230_q\,
	datab => \RAM1|ALT_INV_ram~214_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~486_q\,
	datae => \RAM1|ALT_INV_ram~470_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~680_combout\);

-- Location: FF_X42_Y4_N41
\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

-- Location: FF_X32_Y1_N46
\RAM1|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~110_q\);

-- Location: FF_X42_Y4_N34
\RAM1|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~350_q\);

-- Location: FF_X41_Y5_N32
\RAM1|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~366_q\);

-- Location: LABCELL_X41_Y5_N30
\RAM1|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~681_combout\ = ( \RAM1|ram~366_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~110_q\) ) ) ) # ( !\RAM1|ram~366_q\ & ( \ROM1|memROM~5_combout\ & ( (\RAM1|ram~110_q\ & \ROM1|memROM~50_combout\) ) ) ) # ( 
-- \RAM1|ram~366_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~350_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~94_q\)) ) ) ) # ( !\RAM1|ram~366_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~350_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~94_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~94_q\,
	datab => \RAM1|ALT_INV_ram~110_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~350_q\,
	datae => \RAM1|ALT_INV_ram~366_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~681_combout\);

-- Location: FF_X41_Y5_N11
\RAM1|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~222_q\);

-- Location: FF_X40_Y3_N43
\RAM1|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~478_q\);

-- Location: MLABCELL_X42_Y3_N51
\RAM1|ram~238feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~238feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~238feeder_combout\);

-- Location: FF_X42_Y3_N52
\RAM1|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~238feeder_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~238_q\);

-- Location: FF_X41_Y5_N44
\RAM1|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~494_q\);

-- Location: LABCELL_X41_Y5_N42
\RAM1|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~682_combout\ = ( \RAM1|ram~494_q\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~222_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~238_q\))) ) ) ) # ( !\RAM1|ram~494_q\ & ( \ROM1|memROM~50_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & (\RAM1|ram~222_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~238_q\))) ) ) ) # ( \RAM1|ram~494_q\ & ( !\ROM1|memROM~50_combout\ & ( (\RAM1|ram~478_q\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~494_q\ & ( 
-- !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~478_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~222_q\,
	datac => \RAM1|ALT_INV_ram~478_q\,
	datad => \RAM1|ALT_INV_ram~238_q\,
	datae => \RAM1|ALT_INV_ram~494_q\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~682_combout\);

-- Location: LABCELL_X41_Y5_N6
\RAM1|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~683_combout\ = ( \ROM1|memROM~62_combout\ & ( \RAM1|ram~682_combout\ & ( (\ROM1|memROM~82_combout\) # (\RAM1|ram~680_combout\) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( \RAM1|ram~682_combout\ & ( (!\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~679_combout\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~681_combout\))) ) ) ) # ( \ROM1|memROM~62_combout\ & ( !\RAM1|ram~682_combout\ & ( (\RAM1|ram~680_combout\ & !\ROM1|memROM~82_combout\) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( 
-- !\RAM1|ram~682_combout\ & ( (!\ROM1|memROM~82_combout\ & (\RAM1|ram~679_combout\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~681_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~679_combout\,
	datab => \RAM1|ALT_INV_ram~680_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~681_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \RAM1|ALT_INV_ram~682_combout\,
	combout => \RAM1|ram~683_combout\);

-- Location: FF_X28_Y4_N47
\RAM1|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~310_q\);

-- Location: FF_X32_Y3_N22
\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

-- Location: FF_X42_Y5_N52
\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

-- Location: FF_X28_Y4_N20
\RAM1|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~318_q\);

-- Location: MLABCELL_X28_Y4_N18
\RAM1|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~684_combout\ = ( \RAM1|ram~318_q\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~54_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~62_q\)) ) ) ) # ( !\RAM1|ram~318_q\ & ( \ROM1|memROM~50_combout\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~54_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~62_q\)) ) ) ) # ( \RAM1|ram~318_q\ & ( !\ROM1|memROM~50_combout\ & ( (\RAM1|ram~310_q\) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~318_q\ & ( 
-- !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~82_combout\ & \RAM1|ram~310_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \RAM1|ALT_INV_ram~310_q\,
	datac => \RAM1|ALT_INV_ram~62_q\,
	datad => \RAM1|ALT_INV_ram~54_q\,
	datae => \RAM1|ALT_INV_ram~318_q\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~684_combout\);

-- Location: FF_X34_Y2_N56
\RAM1|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~454_q\);

-- Location: FF_X28_Y3_N52
\RAM1|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~206_q\);

-- Location: FF_X28_Y4_N26
\RAM1|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~462_q\);

-- Location: LABCELL_X35_Y2_N57
\RAM1|ram~198feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~198feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~198feeder_combout\);

-- Location: FF_X35_Y2_N59
\RAM1|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~198feeder_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~198_q\);

-- Location: MLABCELL_X28_Y4_N24
\RAM1|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~687_combout\ = ( \RAM1|ram~462_q\ & ( \RAM1|ram~198_q\ & ( (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~454_q\)) # (\ROM1|memROM~50_combout\))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\) # ((\RAM1|ram~206_q\)))) ) ) ) # ( 
-- !\RAM1|ram~462_q\ & ( \RAM1|ram~198_q\ & ( (!\ROM1|memROM~82_combout\ & (((\RAM1|ram~454_q\)) # (\ROM1|memROM~50_combout\))) # (\ROM1|memROM~82_combout\ & (\ROM1|memROM~50_combout\ & ((\RAM1|ram~206_q\)))) ) ) ) # ( \RAM1|ram~462_q\ & ( !\RAM1|ram~198_q\ 
-- & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~50_combout\ & (\RAM1|ram~454_q\))) # (\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\) # ((\RAM1|ram~206_q\)))) ) ) ) # ( !\RAM1|ram~462_q\ & ( !\RAM1|ram~198_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~454_q\))) # (\ROM1|memROM~82_combout\ & (\ROM1|memROM~50_combout\ & ((\RAM1|ram~206_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~454_q\,
	datad => \RAM1|ALT_INV_ram~206_q\,
	datae => \RAM1|ALT_INV_ram~462_q\,
	dataf => \RAM1|ALT_INV_ram~198_q\,
	combout => \RAM1|ram~687_combout\);

-- Location: FF_X37_Y2_N47
\RAM1|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~182_q\);

-- Location: LABCELL_X32_Y2_N0
\RAM1|ram~438feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~438feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~438feeder_combout\);

-- Location: FF_X32_Y2_N2
\RAM1|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~438feeder_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~438_q\);

-- Location: FF_X32_Y2_N50
\RAM1|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~446_q\);

-- Location: FF_X37_Y2_N41
\RAM1|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~190_q\);

-- Location: LABCELL_X32_Y2_N48
\RAM1|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~685_combout\ = ( \RAM1|ram~446_q\ & ( \RAM1|ram~190_q\ & ( ((!\ROM1|memROM~50_combout\ & ((\RAM1|ram~438_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~182_q\))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~446_q\ & ( \RAM1|ram~190_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~438_q\ & !\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\)) # (\RAM1|ram~182_q\))) ) ) ) # ( \RAM1|ram~446_q\ & ( !\RAM1|ram~190_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\ROM1|memROM~82_combout\) # (\RAM1|ram~438_q\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~182_q\ & ((!\ROM1|memROM~82_combout\)))) ) ) ) # ( !\RAM1|ram~446_q\ & ( !\RAM1|ram~190_q\ & ( (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~438_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~182_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~50_combout\,
	datab => \RAM1|ALT_INV_ram~182_q\,
	datac => \RAM1|ALT_INV_ram~438_q\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~446_q\,
	dataf => \RAM1|ALT_INV_ram~190_q\,
	combout => \RAM1|ram~685_combout\);

-- Location: FF_X31_Y6_N56
\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

-- Location: FF_X28_Y3_N58
\RAM1|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~78_q\);

-- Location: FF_X29_Y3_N17
\RAM1|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~326_q\);

-- Location: FF_X29_Y3_N56
\RAM1|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~334_q\);

-- Location: LABCELL_X29_Y3_N54
\RAM1|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~686_combout\ = ( \RAM1|ram~334_q\ & ( \ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~78_q\) ) ) ) # ( !\RAM1|ram~334_q\ & ( \ROM1|memROM~82_combout\ & ( (\RAM1|ram~78_q\ & \ROM1|memROM~50_combout\) ) ) ) # ( 
-- \RAM1|ram~334_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~326_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~70_q\)) ) ) ) # ( !\RAM1|ram~334_q\ & ( !\ROM1|memROM~82_combout\ & ( (!\ROM1|memROM~50_combout\ & 
-- ((\RAM1|ram~326_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~70_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~70_q\,
	datab => \RAM1|ALT_INV_ram~78_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~326_q\,
	datae => \RAM1|ALT_INV_ram~334_q\,
	dataf => \ROM1|ALT_INV_memROM~82_combout\,
	combout => \RAM1|ram~686_combout\);

-- Location: MLABCELL_X28_Y4_N42
\RAM1|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~688_combout\ = ( \RAM1|ram~686_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\) # (\RAM1|ram~687_combout\) ) ) ) # ( !\RAM1|ram~686_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~62_combout\ & \RAM1|ram~687_combout\) 
-- ) ) ) # ( \RAM1|ram~686_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~62_combout\ & (\RAM1|ram~684_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~685_combout\))) ) ) ) # ( !\RAM1|ram~686_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~62_combout\ & (\RAM1|ram~684_combout\)) # (\ROM1|memROM~62_combout\ & ((\RAM1|ram~685_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~684_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~687_combout\,
	datad => \RAM1|ALT_INV_ram~685_combout\,
	datae => \RAM1|ALT_INV_ram~686_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~688_combout\);

-- Location: FF_X35_Y4_N22
\RAM1|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~518_q\);

-- Location: FF_X39_Y4_N19
\RAM1|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~262_q\);

-- Location: FF_X39_Y4_N56
\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

-- Location: FF_X40_Y4_N52
\RAM1|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~270_q\);

-- Location: LABCELL_X39_Y4_N54
\RAM1|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~692_combout\ = ( \RAM1|ram~526_q\ & ( \RAM1|ram~270_q\ & ( ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~518_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~262_q\)))) # (\ROM1|memROM~82_combout\) ) ) ) # ( !\RAM1|ram~526_q\ & ( \RAM1|ram~270_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~518_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~262_q\))))) # (\ROM1|memROM~82_combout\ & (((\ROM1|memROM~50_combout\)))) ) ) ) # ( \RAM1|ram~526_q\ & ( !\RAM1|ram~270_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~518_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~262_q\))))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~50_combout\)))) ) ) ) # ( !\RAM1|ram~526_q\ & ( !\RAM1|ram~270_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & ((!\ROM1|memROM~50_combout\ & (\RAM1|ram~518_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~262_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~518_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~262_q\,
	datae => \RAM1|ALT_INV_ram~526_q\,
	dataf => \RAM1|ALT_INV_ram~270_q\,
	combout => \RAM1|ram~692_combout\);

-- Location: FF_X42_Y5_N58
\RAM1|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~246_q\);

-- Location: FF_X37_Y2_N28
\RAM1|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~254_q\);

-- Location: FF_X40_Y3_N26
\RAM1|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~510_q\);

-- Location: FF_X42_Y5_N16
\RAM1|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~502_q\);

-- Location: LABCELL_X40_Y3_N24
\RAM1|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~690_combout\ = ( \RAM1|ram~510_q\ & ( \RAM1|ram~502_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~246_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~254_q\)))) ) ) ) # ( !\RAM1|ram~510_q\ & ( \RAM1|ram~502_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~246_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~254_q\))))) ) ) ) # ( \RAM1|ram~510_q\ & ( !\RAM1|ram~502_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\)))) # (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~246_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~254_q\))))) ) ) ) # ( !\RAM1|ram~510_q\ & ( !\RAM1|ram~502_q\ & ( 
-- (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\ & (\RAM1|ram~246_q\)) # (\ROM1|memROM~82_combout\ & ((\RAM1|ram~254_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~246_q\,
	datab => \RAM1|ALT_INV_ram~254_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~82_combout\,
	datae => \RAM1|ALT_INV_ram~510_q\,
	dataf => \RAM1|ALT_INV_ram~502_q\,
	combout => \RAM1|ram~690_combout\);

-- Location: FF_X31_Y2_N16
\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

-- Location: FF_X35_Y6_N40
\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

-- Location: FF_X39_Y4_N44
\RAM1|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~382_q\);

-- Location: FF_X34_Y6_N59
\RAM1|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~374_q\);

-- Location: LABCELL_X39_Y4_N42
\RAM1|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~689_combout\ = ( \RAM1|ram~382_q\ & ( \RAM1|ram~374_q\ & ( (!\ROM1|memROM~50_combout\) # ((!\ROM1|memROM~82_combout\ & ((\RAM1|ram~118_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~126_q\))) ) ) ) # ( !\RAM1|ram~382_q\ & ( \RAM1|ram~374_q\ & ( 
-- (!\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~50_combout\) # (\RAM1|ram~118_q\)))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~126_q\ & (\ROM1|memROM~50_combout\))) ) ) ) # ( \RAM1|ram~382_q\ & ( !\RAM1|ram~374_q\ & ( (!\ROM1|memROM~82_combout\ & 
-- (((\ROM1|memROM~50_combout\ & \RAM1|ram~118_q\)))) # (\ROM1|memROM~82_combout\ & (((!\ROM1|memROM~50_combout\)) # (\RAM1|ram~126_q\))) ) ) ) # ( !\RAM1|ram~382_q\ & ( !\RAM1|ram~374_q\ & ( (\ROM1|memROM~50_combout\ & ((!\ROM1|memROM~82_combout\ & 
-- ((\RAM1|ram~118_q\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~126_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~126_q\,
	datab => \ROM1|ALT_INV_memROM~82_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~118_q\,
	datae => \RAM1|ALT_INV_ram~382_q\,
	dataf => \RAM1|ALT_INV_ram~374_q\,
	combout => \RAM1|ram~689_combout\);

-- Location: MLABCELL_X37_Y5_N30
\RAM1|ram~390feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~390feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~390feeder_combout\);

-- Location: FF_X37_Y5_N31
\RAM1|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~390feeder_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~390_q\);

-- Location: FF_X40_Y5_N32
\RAM1|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~142_q\);

-- Location: FF_X40_Y5_N26
\RAM1|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~398_q\);

-- Location: LABCELL_X40_Y6_N0
\RAM1|ram~134feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~134feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~134feeder_combout\);

-- Location: FF_X40_Y6_N1
\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~134feeder_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

-- Location: LABCELL_X40_Y5_N24
\RAM1|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~691_combout\ = ( \RAM1|ram~398_q\ & ( \RAM1|ram~134_q\ & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\)) # (\RAM1|ram~390_q\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~82_combout\) # (\RAM1|ram~142_q\)))) ) ) ) # ( 
-- !\RAM1|ram~398_q\ & ( \RAM1|ram~134_q\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~390_q\ & (!\ROM1|memROM~82_combout\))) # (\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~82_combout\) # (\RAM1|ram~142_q\)))) ) ) ) # ( \RAM1|ram~398_q\ & ( !\RAM1|ram~134_q\ 
-- & ( (!\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\)) # (\RAM1|ram~390_q\))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\ & \RAM1|ram~142_q\)))) ) ) ) # ( !\RAM1|ram~398_q\ & ( !\RAM1|ram~134_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (\RAM1|ram~390_q\ & (!\ROM1|memROM~82_combout\))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~82_combout\ & \RAM1|ram~142_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~390_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~142_q\,
	datae => \RAM1|ALT_INV_ram~398_q\,
	dataf => \RAM1|ALT_INV_ram~134_q\,
	combout => \RAM1|ram~691_combout\);

-- Location: LABCELL_X40_Y5_N0
\RAM1|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~693_combout\ = ( \RAM1|ram~689_combout\ & ( \RAM1|ram~691_combout\ & ( (!\ROM1|memROM~62_combout\) # ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~690_combout\))) # (\ROM1|memROM~5_combout\ & (\RAM1|ram~692_combout\))) ) ) ) # ( 
-- !\RAM1|ram~689_combout\ & ( \RAM1|ram~691_combout\ & ( (!\ROM1|memROM~62_combout\ & (((\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~690_combout\))) # (\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~692_combout\)))) ) ) ) # ( \RAM1|ram~689_combout\ & ( !\RAM1|ram~691_combout\ & ( (!\ROM1|memROM~62_combout\ & (((!\ROM1|memROM~5_combout\)))) # (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~690_combout\))) # 
-- (\ROM1|memROM~5_combout\ & (\RAM1|ram~692_combout\)))) ) ) ) # ( !\RAM1|ram~689_combout\ & ( !\RAM1|ram~691_combout\ & ( (\ROM1|memROM~62_combout\ & ((!\ROM1|memROM~5_combout\ & ((\RAM1|ram~690_combout\))) # (\ROM1|memROM~5_combout\ & 
-- (\RAM1|ram~692_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~692_combout\,
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	datac => \RAM1|ALT_INV_ram~690_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~689_combout\,
	dataf => \RAM1|ALT_INV_ram~691_combout\,
	combout => \RAM1|ram~693_combout\);

-- Location: FF_X36_Y3_N25
\RAM1|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~158_q\);

-- Location: FF_X29_Y4_N10
\RAM1|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~414_q\);

-- Location: FF_X36_Y2_N59
\RAM1|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~174_q\);

-- Location: FF_X32_Y5_N26
\RAM1|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~430_q\);

-- Location: LABCELL_X32_Y5_N24
\RAM1|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~677_combout\ = ( \RAM1|ram~430_q\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\ & (\RAM1|ram~158_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~174_q\))) ) ) ) # ( !\RAM1|ram~430_q\ & ( \ROM1|memROM~50_combout\ & ( 
-- (!\ROM1|memROM~5_combout\ & (\RAM1|ram~158_q\)) # (\ROM1|memROM~5_combout\ & ((\RAM1|ram~174_q\))) ) ) ) # ( \RAM1|ram~430_q\ & ( !\ROM1|memROM~50_combout\ & ( (\RAM1|ram~414_q\) # (\ROM1|memROM~5_combout\) ) ) ) # ( !\RAM1|ram~430_q\ & ( 
-- !\ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~414_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \RAM1|ALT_INV_ram~158_q\,
	datac => \RAM1|ALT_INV_ram~414_q\,
	datad => \RAM1|ALT_INV_ram~174_q\,
	datae => \RAM1|ALT_INV_ram~430_q\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \RAM1|ram~677_combout\);

-- Location: FF_X34_Y2_N17
\RAM1|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~422_q\);

-- Location: LABCELL_X35_Y2_N33
\RAM1|ram~166feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~166feeder_combout\);

-- Location: FF_X35_Y2_N34
\RAM1|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~166feeder_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~166_q\);

-- Location: MLABCELL_X37_Y5_N24
\RAM1|ram~150feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~150feeder_combout\);

-- Location: FF_X37_Y5_N25
\RAM1|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~150feeder_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~150_q\);

-- Location: FF_X32_Y5_N23
\RAM1|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~406_q\);

-- Location: LABCELL_X32_Y5_N21
\RAM1|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~675_combout\ = ( \RAM1|ram~406_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & (\RAM1|ram~422_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~166_q\))) ) ) ) # ( !\RAM1|ram~406_q\ & ( \ROM1|memROM~5_combout\ & ( 
-- (!\ROM1|memROM~50_combout\ & (\RAM1|ram~422_q\)) # (\ROM1|memROM~50_combout\ & ((\RAM1|ram~166_q\))) ) ) ) # ( \RAM1|ram~406_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~150_q\) ) ) ) # ( !\RAM1|ram~406_q\ & ( 
-- !\ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~150_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~422_q\,
	datab => \RAM1|ALT_INV_ram~166_q\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \RAM1|ALT_INV_ram~150_q\,
	datae => \RAM1|ALT_INV_ram~406_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~675_combout\);

-- Location: FF_X34_Y5_N50
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X32_Y6_N51
\RAM1|ram~294feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~294feeder_combout\ = ( \CPU1|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	combout => \RAM1|ram~294feeder_combout\);

-- Location: FF_X32_Y6_N52
\RAM1|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM1|ram~294feeder_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~294_q\);

-- Location: FF_X34_Y5_N32
\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

-- Location: FF_X31_Y6_N5
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: MLABCELL_X34_Y5_N30
\RAM1|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~674_combout\ = ( \RAM1|ram~278_q\ & ( \RAM1|ram~38_q\ & ( (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~294_q\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~22_q\))) ) ) ) # ( 
-- !\RAM1|ram~278_q\ & ( \RAM1|ram~38_q\ & ( (!\ROM1|memROM~50_combout\ & (((\RAM1|ram~294_q\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~50_combout\ & (((\ROM1|memROM~5_combout\)) # (\RAM1|ram~22_q\))) ) ) ) # ( \RAM1|ram~278_q\ & ( !\RAM1|ram~38_q\ & ( 
-- (!\ROM1|memROM~50_combout\ & (((!\ROM1|memROM~5_combout\) # (\RAM1|ram~294_q\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~22_q\ & ((!\ROM1|memROM~5_combout\)))) ) ) ) # ( !\RAM1|ram~278_q\ & ( !\RAM1|ram~38_q\ & ( (!\ROM1|memROM~50_combout\ & 
-- (((\RAM1|ram~294_q\ & \ROM1|memROM~5_combout\)))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~22_q\ & ((!\ROM1|memROM~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~294_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \RAM1|ALT_INV_ram~278_q\,
	dataf => \RAM1|ALT_INV_ram~38_q\,
	combout => \RAM1|ram~674_combout\);

-- Location: FF_X36_Y2_N40
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X29_Y4_N16
\RAM1|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~286_q\);

-- Location: FF_X32_Y4_N22
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: FF_X40_Y5_N44
\RAM1|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~302_q\);

-- Location: LABCELL_X40_Y5_N42
\RAM1|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~676_combout\ = ( \RAM1|ram~302_q\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\) # (\RAM1|ram~46_q\) ) ) ) # ( !\RAM1|ram~302_q\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~50_combout\ & \RAM1|ram~46_q\) ) ) ) # ( \RAM1|ram~302_q\ 
-- & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~286_q\))) # (\ROM1|memROM~50_combout\ & (\RAM1|ram~30_q\)) ) ) ) # ( !\RAM1|ram~302_q\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~50_combout\ & ((\RAM1|ram~286_q\))) # 
-- (\ROM1|memROM~50_combout\ & (\RAM1|ram~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \RAM1|ALT_INV_ram~286_q\,
	datad => \RAM1|ALT_INV_ram~46_q\,
	datae => \RAM1|ALT_INV_ram~302_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~676_combout\);

-- Location: LABCELL_X40_Y5_N18
\RAM1|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~678_combout\ = ( \ROM1|memROM~62_combout\ & ( \RAM1|ram~676_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~675_combout\))) # (\ROM1|memROM~82_combout\ & (\RAM1|ram~677_combout\)) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( 
-- \RAM1|ram~676_combout\ & ( (\RAM1|ram~674_combout\) # (\ROM1|memROM~82_combout\) ) ) ) # ( \ROM1|memROM~62_combout\ & ( !\RAM1|ram~676_combout\ & ( (!\ROM1|memROM~82_combout\ & ((\RAM1|ram~675_combout\))) # (\ROM1|memROM~82_combout\ & 
-- (\RAM1|ram~677_combout\)) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( !\RAM1|ram~676_combout\ & ( (!\ROM1|memROM~82_combout\ & \RAM1|ram~674_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~677_combout\,
	datab => \RAM1|ALT_INV_ram~675_combout\,
	datac => \ROM1|ALT_INV_memROM~82_combout\,
	datad => \RAM1|ALT_INV_ram~674_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \RAM1|ALT_INV_ram~676_combout\,
	combout => \RAM1|ram~678_combout\);

-- Location: LABCELL_X40_Y5_N6
\RAM1|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~694_combout\ = ( \RAM1|ram~693_combout\ & ( \RAM1|ram~678_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~688_combout\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~42_combout\)) # 
-- (\RAM1|ram~683_combout\))) ) ) ) # ( !\RAM1|ram~693_combout\ & ( \RAM1|ram~678_combout\ & ( (!\ROM1|memROM~51_combout\ & (((!\ROM1|memROM~42_combout\) # (\RAM1|ram~688_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~683_combout\ & 
-- (!\ROM1|memROM~42_combout\))) ) ) ) # ( \RAM1|ram~693_combout\ & ( !\RAM1|ram~678_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\ROM1|memROM~42_combout\ & \RAM1|ram~688_combout\)))) # (\ROM1|memROM~51_combout\ & (((\ROM1|memROM~42_combout\)) # 
-- (\RAM1|ram~683_combout\))) ) ) ) # ( !\RAM1|ram~693_combout\ & ( !\RAM1|ram~678_combout\ & ( (!\ROM1|memROM~51_combout\ & (((\ROM1|memROM~42_combout\ & \RAM1|ram~688_combout\)))) # (\ROM1|memROM~51_combout\ & (\RAM1|ram~683_combout\ & 
-- (!\ROM1|memROM~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~51_combout\,
	datab => \RAM1|ALT_INV_ram~683_combout\,
	datac => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \RAM1|ALT_INV_ram~688_combout\,
	datae => \RAM1|ALT_INV_ram~693_combout\,
	dataf => \RAM1|ALT_INV_ram~678_combout\,
	combout => \RAM1|ram~694_combout\);

-- Location: LABCELL_X35_Y5_N51
\CPU1|FlagZero1|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~3_combout\ = ( \RAM1|ram~694_combout\ & ( (\CPU1|DECODER1|saida~3_combout\ & ((!\CPU1|ULA1|saida[0]~0_combout\) # ((!\CPU1|MUX1|saida_MUX[7]~18_combout\ & !\CPU1|MUX1|saida_MUX[1]~5_combout\)))) ) ) # ( !\RAM1|ram~694_combout\ & ( 
-- (\CPU1|DECODER1|saida~3_combout\ & ((!\CPU1|ULA1|saida[0]~0_combout\) # (!\CPU1|MUX1|saida_MUX[7]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[7]~18_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida~3_combout\,
	dataf => \RAM1|ALT_INV_ram~694_combout\,
	combout => \CPU1|FlagZero1|DOUT~3_combout\);

-- Location: MLABCELL_X34_Y1_N57
\CPU1|MUX1|saida_MUX[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~20_combout\ = ( \SW[6]~input_o\ & ( \CPU1|DECODER1|saida[1]~0_combout\ & ( (!\CPU1|DECODER1|saida[5]~1_combout\ & (\comb~8_combout\ & ((\comb~10_combout\)))) # (\CPU1|DECODER1|saida[5]~1_combout\ & (((\ROM1|memROM~30_combout\)))) ) 
-- ) ) # ( !\SW[6]~input_o\ & ( \CPU1|DECODER1|saida[1]~0_combout\ & ( (\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~30_combout\) ) ) ) # ( \SW[6]~input_o\ & ( !\CPU1|DECODER1|saida[1]~0_combout\ & ( (\CPU1|DECODER1|saida[5]~1_combout\ & 
-- \ROM1|memROM~30_combout\) ) ) ) # ( !\SW[6]~input_o\ & ( !\CPU1|DECODER1|saida[1]~0_combout\ & ( (\CPU1|DECODER1|saida[5]~1_combout\ & \ROM1|memROM~30_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ROM1|ALT_INV_memROM~30_combout\,
	datad => \ALT_INV_comb~10_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~20_combout\);

-- Location: MLABCELL_X34_Y1_N18
\CPU1|MUX1|saida_MUX[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~19_combout\ = ( \CPU1|DECODER1|saida[5]~1_combout\ & ( \comb~10_combout\ & ( !\ROM1|memROM~50_combout\ ) ) ) # ( !\CPU1|DECODER1|saida[5]~1_combout\ & ( \comb~10_combout\ & ( (\SW[5]~input_o\ & (\comb~8_combout\ & 
-- \CPU1|DECODER1|saida[1]~0_combout\)) ) ) ) # ( \CPU1|DECODER1|saida[5]~1_combout\ & ( !\comb~10_combout\ & ( !\ROM1|memROM~50_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000001000000011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	dataf => \ALT_INV_comb~10_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~19_combout\);

-- Location: LABCELL_X35_Y5_N36
\CPU1|FlagZero1|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~4_combout\ = ( \CPU1|MUX1|saida_MUX[5]~19_combout\ & ( \RAM1|ram~652_combout\ & ( \CPU1|ULA1|saida[0]~0_combout\ ) ) ) # ( !\CPU1|MUX1|saida_MUX[5]~19_combout\ & ( \RAM1|ram~652_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & 
-- ((\CPU1|MUX1|saida_MUX[6]~20_combout\) # (\CPU1|MUX1|saida_MUX[1]~5_combout\))) ) ) ) # ( \CPU1|MUX1|saida_MUX[5]~19_combout\ & ( !\RAM1|ram~652_combout\ & ( \CPU1|ULA1|saida[0]~0_combout\ ) ) ) # ( !\CPU1|MUX1|saida_MUX[5]~19_combout\ & ( 
-- !\RAM1|ram~652_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & (((\CPU1|MUX1|saida_MUX[1]~5_combout\ & \RAM1|ram~673_combout\)) # (\CPU1|MUX1|saida_MUX[6]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101010101010101010100010101000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[6]~20_combout\,
	datad => \RAM1|ALT_INV_ram~673_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[5]~19_combout\,
	dataf => \RAM1|ALT_INV_ram~652_combout\,
	combout => \CPU1|FlagZero1|DOUT~4_combout\);

-- Location: LABCELL_X35_Y3_N57
\CPU1|MUX1|saida_MUX[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~16_combout\ = ( \ROM1|memROM~51_combout\ & ( \SW[3]~input_o\ & ( ((\CPU1|DECODER1|saida[1]~0_combout\ & (\comb~10_combout\ & \comb~8_combout\))) # (\CPU1|DECODER1|saida[5]~1_combout\) ) ) ) # ( !\ROM1|memROM~51_combout\ & ( 
-- \SW[3]~input_o\ & ( (\CPU1|DECODER1|saida[1]~0_combout\ & (!\CPU1|DECODER1|saida[5]~1_combout\ & (\comb~10_combout\ & \comb~8_combout\))) ) ) ) # ( \ROM1|memROM~51_combout\ & ( !\SW[3]~input_o\ & ( \CPU1|DECODER1|saida[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \ALT_INV_comb~10_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ROM1|ALT_INV_memROM~51_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[3]~16_combout\);

-- Location: LABCELL_X35_Y3_N54
\CPU1|MUX1|saida_MUX[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~17_combout\ = ( \ROM1|memROM~62_combout\ & ( \SW[4]~input_o\ & ( ((\CPU1|DECODER1|saida[1]~0_combout\ & (\comb~8_combout\ & \comb~10_combout\))) # (\CPU1|DECODER1|saida[5]~1_combout\) ) ) ) # ( !\ROM1|memROM~62_combout\ & ( 
-- \SW[4]~input_o\ & ( (\CPU1|DECODER1|saida[1]~0_combout\ & (!\CPU1|DECODER1|saida[5]~1_combout\ & (\comb~8_combout\ & \comb~10_combout\))) ) ) ) # ( \ROM1|memROM~62_combout\ & ( !\SW[4]~input_o\ & ( \CPU1|DECODER1|saida[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000001000011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[1]~0_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[5]~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~10_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \CPU1|MUX1|saida_MUX[4]~17_combout\);

-- Location: LABCELL_X39_Y3_N21
\CPU1|FlagZero1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~2_combout\ = ( \RAM1|ram~610_combout\ & ( \RAM1|ram~631_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & (((\CPU1|MUX1|saida_MUX[1]~5_combout\) # (\CPU1|MUX1|saida_MUX[4]~17_combout\)) # (\CPU1|MUX1|saida_MUX[3]~16_combout\))) ) ) ) # ( 
-- !\RAM1|ram~610_combout\ & ( \RAM1|ram~631_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & (((\CPU1|MUX1|saida_MUX[1]~5_combout\) # (\CPU1|MUX1|saida_MUX[4]~17_combout\)) # (\CPU1|MUX1|saida_MUX[3]~16_combout\))) ) ) ) # ( \RAM1|ram~610_combout\ & ( 
-- !\RAM1|ram~631_combout\ & ( (\CPU1|ULA1|saida[0]~0_combout\ & (((\CPU1|MUX1|saida_MUX[1]~5_combout\) # (\CPU1|MUX1|saida_MUX[4]~17_combout\)) # (\CPU1|MUX1|saida_MUX[3]~16_combout\))) ) ) ) # ( !\RAM1|ram~610_combout\ & ( !\RAM1|ram~631_combout\ & ( 
-- (\CPU1|ULA1|saida[0]~0_combout\ & ((\CPU1|MUX1|saida_MUX[4]~17_combout\) # (\CPU1|MUX1|saida_MUX[3]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX1|ALT_INV_saida_MUX[3]~16_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[4]~17_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~5_combout\,
	datae => \RAM1|ALT_INV_ram~610_combout\,
	dataf => \RAM1|ALT_INV_ram~631_combout\,
	combout => \CPU1|FlagZero1|DOUT~2_combout\);

-- Location: LABCELL_X35_Y5_N42
\CPU1|FlagZero1|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~5_combout\ = ( \CPU1|MUX1|saida_MUX[0]~4_combout\ & ( !\CPU1|FlagZero1|DOUT~2_combout\ & ( (!\CPU1|ULA1|saida[0]~0_combout\ & (!\CPU1|FlagZero1|DOUT~1_combout\ & (\CPU1|FlagZero1|DOUT~3_combout\ & !\CPU1|FlagZero1|DOUT~4_combout\))) ) 
-- ) ) # ( !\CPU1|MUX1|saida_MUX[0]~4_combout\ & ( !\CPU1|FlagZero1|DOUT~2_combout\ & ( (!\CPU1|FlagZero1|DOUT~1_combout\ & (\CPU1|FlagZero1|DOUT~3_combout\ & !\CPU1|FlagZero1|DOUT~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|FlagZero1|ALT_INV_DOUT~1_combout\,
	datac => \CPU1|FlagZero1|ALT_INV_DOUT~3_combout\,
	datad => \CPU1|FlagZero1|ALT_INV_DOUT~4_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[0]~4_combout\,
	dataf => \CPU1|FlagZero1|ALT_INV_DOUT~2_combout\,
	combout => \CPU1|FlagZero1|DOUT~5_combout\);

-- Location: LABCELL_X36_Y5_N18
\CPU1|FlagZero1|DOUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~6_combout\ = ( \CPU1|ULA1|Add0~5_sumout\ & ( \CPU1|ULA1|saida[0]~0_combout\ & ( \CPU1|FlagZero1|DOUT~5_combout\ ) ) ) # ( !\CPU1|ULA1|Add0~5_sumout\ & ( \CPU1|ULA1|saida[0]~0_combout\ & ( \CPU1|FlagZero1|DOUT~5_combout\ ) ) ) # ( 
-- !\CPU1|ULA1|Add0~5_sumout\ & ( !\CPU1|ULA1|saida[0]~0_combout\ & ( (!\CPU1|ULA1|Add0~1_sumout\ & (!\CPU1|ULA1|Add0~9_sumout\ & (\CPU1|FlagZero1|DOUT~5_combout\ & !\CPU1|ULA1|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \CPU1|ULA1|ALT_INV_Add0~9_sumout\,
	datac => \CPU1|FlagZero1|ALT_INV_DOUT~5_combout\,
	datad => \CPU1|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \CPU1|FlagZero1|DOUT~6_combout\);

-- Location: LABCELL_X35_Y5_N57
\CPU1|FlagZero1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~0_combout\ = ( \CPU1|FlagZero1|DOUT~q\ & ( !\CPU1|DECODER1|saida~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|DECODER1|ALT_INV_saida~3_combout\,
	dataf => \CPU1|FlagZero1|ALT_INV_DOUT~q\,
	combout => \CPU1|FlagZero1|DOUT~0_combout\);

-- Location: LABCELL_X36_Y5_N12
\CPU1|FlagZero1|DOUT~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|FlagZero1|DOUT~8_combout\ = ( \CPU1|ULA1|Add0~29_sumout\ & ( \CPU1|ULA1|Add0~25_sumout\ & ( ((!\CPU1|FlagZero1|DOUT~7_combout\ & (\CPU1|ULA1|saida[0]~0_combout\ & \CPU1|FlagZero1|DOUT~6_combout\))) # (\CPU1|FlagZero1|DOUT~0_combout\) ) ) ) # ( 
-- !\CPU1|ULA1|Add0~29_sumout\ & ( \CPU1|ULA1|Add0~25_sumout\ & ( ((!\CPU1|FlagZero1|DOUT~7_combout\ & (\CPU1|ULA1|saida[0]~0_combout\ & \CPU1|FlagZero1|DOUT~6_combout\))) # (\CPU1|FlagZero1|DOUT~0_combout\) ) ) ) # ( \CPU1|ULA1|Add0~29_sumout\ & ( 
-- !\CPU1|ULA1|Add0~25_sumout\ & ( ((!\CPU1|FlagZero1|DOUT~7_combout\ & (\CPU1|ULA1|saida[0]~0_combout\ & \CPU1|FlagZero1|DOUT~6_combout\))) # (\CPU1|FlagZero1|DOUT~0_combout\) ) ) ) # ( !\CPU1|ULA1|Add0~29_sumout\ & ( !\CPU1|ULA1|Add0~25_sumout\ & ( 
-- ((!\CPU1|FlagZero1|DOUT~7_combout\ & \CPU1|FlagZero1|DOUT~6_combout\)) # (\CPU1|FlagZero1|DOUT~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000000101111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|FlagZero1|ALT_INV_DOUT~7_combout\,
	datab => \CPU1|ULA1|ALT_INV_saida[0]~0_combout\,
	datac => \CPU1|FlagZero1|ALT_INV_DOUT~6_combout\,
	datad => \CPU1|FlagZero1|ALT_INV_DOUT~0_combout\,
	datae => \CPU1|ULA1|ALT_INV_Add0~29_sumout\,
	dataf => \CPU1|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU1|FlagZero1|DOUT~8_combout\);

-- Location: FF_X36_Y5_N14
\CPU1|FlagZero1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|FlagZero1|DOUT~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|FlagZero1|DOUT~q\);

-- Location: LABCELL_X35_Y5_N24
\CPU1|MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|Equal2~0_combout\ = ( \ROM1|memROM~18_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~27_combout\ & (!\ROM1|memROM~23_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & 
-- (\ROM1|memROM~23_combout\ & \CPU1|FlagZero1|DOUT~q\))) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM1|memROM~23_combout\ & (!\ROM1|memROM~14_combout\ $ (!\ROM1|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110001000000010010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \CPU1|FlagZero1|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \CPU1|MUX2|Equal2~0_combout\);

-- Location: FF_X28_Y6_N10
\CPU1|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~17_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(3));

-- Location: LABCELL_X31_Y4_N9
\CPU1|MUX2|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[3]~4_combout\ = ( \ROM1|memROM~51_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~17_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|REG_RETORNO|DOUT\(3))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\))) 
-- ) ) # ( !\ROM1|memROM~51_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~17_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ((\CPU1|REG_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU1|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \CPU1|REG_RETORNO|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~51_combout\,
	combout => \CPU1|MUX2|saida_MUX[3]~4_combout\);

-- Location: FF_X31_Y4_N11
\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[3]~4_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

-- Location: LABCELL_X32_Y4_N24
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(4)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(4) & 
-- !\CPU1|PC|DOUT[6]~DUPLICATE_q\) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(4) & \CPU1|PC|DOUT\(2))))) ) ) ) # ( 
-- !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000100010010000000011001100000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X32_Y4_N12
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(4))))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) 
-- & (!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(4) & ((!\CPU1|PC|DOUT\(3)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(4) & (((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(4) & (\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( 
-- !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU1|PC|DOUT\(4) $ (!\CPU1|PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110100011100110010001000110011001010110001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X32_Y4_N18
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (\CPU1|PC|DOUT\(4))) # (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT[1]~DUPLICATE_q\))))) # (\CPU1|PC|DOUT\(3) & 
-- (((!\CPU1|PC|DOUT\(4) & !\CPU1|PC|DOUT[6]~DUPLICATE_q\)) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(4) & 
-- (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT[6]~DUPLICATE_q\) # (\CPU1|PC|DOUT[1]~DUPLICATE_q\))))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(2) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(3) $ ((\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) # (\CPU1|PC|DOUT\(4) & 
-- ((!\CPU1|PC|DOUT[6]~DUPLICATE_q\) # ((\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT\(2) & ( (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(3) $ (\CPU1|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101101101111001010000011001001010010110011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X32_Y4_N6
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3) & ((\CPU1|PC|DOUT[6]~DUPLICATE_q\))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(4))))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(4) 
-- $ (!\CPU1|PC|DOUT[6]~DUPLICATE_q\)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & (!\CPU1|PC|DOUT\(4) $ (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(4) & 
-- (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(4) & (\CPU1|PC|DOUT[6]~DUPLICATE_q\ & ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(4) & 
-- (!\CPU1|PC|DOUT\(3) $ (((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT[6]~DUPLICATE_q\))))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( !\CPU1|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT[6]~DUPLICATE_q\))) # 
-- (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(4) $ (((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT[6]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010100000100011101011000000001001010000001001110111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(4),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \CPU1|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X32_Y4_N30
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( \ROM1|memROM~10_combout\ & ( (!\CPU1|PC|DOUT\(5) & ((\ROM1|memROM~11_combout\))) # (\CPU1|PC|DOUT\(5) & (\ROM1|memROM~13_combout\)) ) ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( 
-- \ROM1|memROM~10_combout\ & ( (\ROM1|memROM~12_combout\ & \CPU1|PC|DOUT\(5)) ) ) ) # ( \CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( !\ROM1|memROM~10_combout\ & ( (!\CPU1|PC|DOUT\(5) & ((\ROM1|memROM~11_combout\))) # (\CPU1|PC|DOUT\(5) & (\ROM1|memROM~13_combout\)) ) 
-- ) ) # ( !\CPU1|PC|DOUT[7]~DUPLICATE_q\ & ( !\ROM1|memROM~10_combout\ & ( (!\CPU1|PC|DOUT\(5)) # (\ROM1|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111001100110101010100000000000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	datae => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X35_Y5_N0
\CPU1|LogicaDesvio1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|LogicaDesvio1|saida[0]~0_combout\ = ( \ROM1|memROM~18_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (!\ROM1|memROM~14_combout\ & (\ROM1|memROM~27_combout\ & (!\ROM1|memROM~23_combout\))) # (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & 
-- (\ROM1|memROM~23_combout\ & \CPU1|FlagZero1|DOUT~q\))) ) ) ) # ( !\ROM1|memROM~18_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM1|memROM~14_combout\ & (!\ROM1|memROM~27_combout\ & \ROM1|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001000000010010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~23_combout\,
	datad => \CPU1|FlagZero1|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \CPU1|LogicaDesvio1|saida[0]~0_combout\);

-- Location: MLABCELL_X28_Y6_N21
\CPU1|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~29_sumout\ = SUM(( \CPU1|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~34\ ))
-- \CPU1|incrementaPC|Add0~30\ = CARRY(( \CPU1|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU1|incrementaPC|Add0~34\,
	sumout => \CPU1|incrementaPC|Add0~29_sumout\,
	cout => \CPU1|incrementaPC|Add0~30\);

-- Location: FF_X28_Y6_N22
\CPU1|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~29_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(7));

-- Location: LABCELL_X31_Y4_N6
\CPU1|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[7]~7_combout\ = ( \ROM1|memROM~56_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~29_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|REG_RETORNO|DOUT\(7))) # (\CPU1|LogicaDesvio1|saida[0]~0_combout\))) 
-- ) ) # ( !\ROM1|memROM~56_combout\ & ( (!\CPU1|MUX2|Equal2~0_combout\ & (((\CPU1|incrementaPC|Add0~29_sumout\)))) # (\CPU1|MUX2|Equal2~0_combout\ & (!\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ((\CPU1|REG_RETORNO|DOUT\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	datab => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	datac => \CPU1|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \CPU1|REG_RETORNO|ALT_INV_DOUT\(7),
	dataf => \ROM1|ALT_INV_memROM~56_combout\,
	combout => \CPU1|MUX2|saida_MUX[7]~7_combout\);

-- Location: FF_X31_Y4_N7
\CPU1|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[7]~7_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y6_N24
\CPU1|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~1_sumout\ = SUM(( \CPU1|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU1|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU1|incrementaPC|Add0~30\,
	sumout => \CPU1|incrementaPC|Add0~1_sumout\);

-- Location: FF_X28_Y6_N26
\CPU1|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	ena => \CPU1|DECODER1|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REG_RETORNO|DOUT\(8));

-- Location: LABCELL_X29_Y3_N33
\CPU1|MUX2|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX2|saida_MUX[8]~0_combout\ = ( \CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( \CPU1|MUX2|Equal2~0_combout\ & ( \ROM1|memROM~70_combout\ ) ) ) # ( !\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( \CPU1|MUX2|Equal2~0_combout\ & ( \CPU1|REG_RETORNO|DOUT\(8) 
-- ) ) ) # ( \CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( !\CPU1|MUX2|Equal2~0_combout\ & ( \CPU1|incrementaPC|Add0~1_sumout\ ) ) ) # ( !\CPU1|LogicaDesvio1|saida[0]~0_combout\ & ( !\CPU1|MUX2|Equal2~0_combout\ & ( \CPU1|incrementaPC|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \ROM1|ALT_INV_memROM~70_combout\,
	datad => \CPU1|REG_RETORNO|ALT_INV_DOUT\(8),
	datae => \CPU1|LogicaDesvio1|ALT_INV_saida[0]~0_combout\,
	dataf => \CPU1|MUX2|ALT_INV_Equal2~0_combout\,
	combout => \CPU1|MUX2|saida_MUX[8]~0_combout\);

-- Location: FF_X29_Y3_N34
\CPU1|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|MUX2|saida_MUX[8]~0_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y5_N30
\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \ROM1|memROM~23_combout\ & ( !\CPU1|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~23_combout\,
	combout => \ROM1|memROM~24_combout\);

-- Location: FF_X36_Y5_N35
\CPU1|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~4_combout\,
	sload => \CPU1|ULA1|saida[0]~0_combout\,
	ena => \CPU1|DECODER1|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(0));

-- Location: MLABCELL_X34_Y1_N33
\DEC1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal7~0_combout\ = ( \ROM1|memROM~70_combout\ & ( (!\ROM1|memROM~30_combout\ & ((!\ROM1|memROM~34_combout\) # (\CPU1|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~30_combout\,
	datad => \ROM1|ALT_INV_memROM~34_combout\,
	dataf => \ROM1|ALT_INV_memROM~70_combout\,
	combout => \DEC1|Equal7~0_combout\);

-- Location: MLABCELL_X42_Y2_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~50_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~42_combout\ & (\CPU1|DECODER1|Equal5~0_combout\ & \DEC1|Equal7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datad => \DEC1|ALT_INV_Equal7~0_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~50_combout\,
	combout => \comb~0_combout\);

-- Location: FF_X31_Y4_N46
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: FF_X31_Y4_N23
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: FF_X28_Y6_N35
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: FF_X31_Y4_N29
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: FF_X28_Y6_N40
\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(4),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

-- Location: FF_X28_Y6_N46
\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(5),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

-- Location: FF_X28_Y6_N52
\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(6),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

-- Location: FF_X28_Y6_N58
\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(7),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

-- Location: LABCELL_X32_Y2_N33
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \DEC1|Equal7~0_combout\ & ( (\CPU1|DECODER1|Equal5~0_combout\ & (!\ROM1|memROM~42_combout\ & \ROM1|memROM~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datad => \ROM1|ALT_INV_memROM~50_combout\,
	datae => \DEC1|ALT_INV_Equal7~0_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X29_Y3_N48
\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = ( \ROM1|memROM~5_combout\ & ( \FF1|DOUT~q\ ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~82_combout\ & (((\FF1|DOUT~q\)))) # (\ROM1|memROM~82_combout\ & ((!\comb~1_combout\ & ((\FF1|DOUT~q\))) # (\comb~1_combout\ & 
-- (\CPU1|REGA|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \CPU1|REGA|ALT_INV_DOUT\(0),
	datad => \FF1|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \FF1|DOUT~0_combout\);

-- Location: FF_X29_Y3_N50
\FF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF1|DOUT~0_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|DOUT~q\);

-- Location: LABCELL_X29_Y3_N51
\FF2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF2|DOUT~0_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~82_combout\ & ((!\comb~1_combout\ & ((\FF2|DOUT~q\))) # (\comb~1_combout\ & (\CPU1|REGA|DOUT\(0))))) # (\ROM1|memROM~82_combout\ & (((\FF2|DOUT~q\)))) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \FF2|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \CPU1|REGA|ALT_INV_DOUT\(0),
	datad => \FF2|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \FF2|DOUT~0_combout\);

-- Location: FF_X29_Y3_N52
\FF2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FF2|DOUT~0_combout\,
	clrn => \FPGA_RESET_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|DOUT~q\);

-- Location: MLABCELL_X42_Y1_N6
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\ROM1|memROM~50_combout\ & ( \DEC1|Equal7~0_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & \CPU1|DECODER1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \DEC1|ALT_INV_Equal7~0_combout\,
	combout => \comb~2_combout\);

-- Location: FF_X42_Y1_N23
\RH0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH0|DOUT\(2));

-- Location: FF_X42_Y1_N46
\RH0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH0|DOUT\(1));

-- Location: FF_X42_Y1_N34
\RH0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH0|DOUT\(0));

-- Location: FF_X42_Y1_N11
\RH0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH0|DOUT\(3));

-- Location: MLABCELL_X42_Y1_N27
\DHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[0]~0_combout\ = ( \RH0|DOUT\(3) & ( (\RH0|DOUT\(0) & (!\RH0|DOUT\(2) $ (!\RH0|DOUT\(1)))) ) ) # ( !\RH0|DOUT\(3) & ( (!\RH0|DOUT\(1) & (!\RH0|DOUT\(2) $ (!\RH0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(2),
	datac => \RH0|ALT_INV_DOUT\(1),
	datad => \RH0|ALT_INV_DOUT\(0),
	dataf => \RH0|ALT_INV_DOUT\(3),
	combout => \DHEX0|rascSaida7seg[0]~0_combout\);

-- Location: FF_X42_Y1_N10
\RH0|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH0|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y1_N0
\DHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[1]~1_combout\ = ( \RH0|DOUT\(1) & ( (!\RH0|DOUT\(0) & (\RH0|DOUT\(2))) # (\RH0|DOUT\(0) & ((\RH0|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\RH0|DOUT\(1) & ( (\RH0|DOUT\(2) & (!\RH0|DOUT\(0) $ (!\RH0|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(0),
	datac => \RH0|ALT_INV_DOUT\(2),
	datad => \RH0|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \RH0|ALT_INV_DOUT\(1),
	combout => \DHEX0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y1_N36
\DHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[2]~2_combout\ = ( \RH0|DOUT\(3) & ( (\RH0|DOUT\(2) & ((!\RH0|DOUT\(0)) # (\RH0|DOUT\(1)))) ) ) # ( !\RH0|DOUT\(3) & ( (\RH0|DOUT\(1) & (!\RH0|DOUT\(2) & !\RH0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH0|ALT_INV_DOUT\(1),
	datac => \RH0|ALT_INV_DOUT\(2),
	datad => \RH0|ALT_INV_DOUT\(0),
	dataf => \RH0|ALT_INV_DOUT\(3),
	combout => \DHEX0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y1_N12
\DHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[3]~3_combout\ = ( \RH0|DOUT\(1) & ( (!\RH0|DOUT\(2) & (\RH0|DOUT\(3) & !\RH0|DOUT\(0))) # (\RH0|DOUT\(2) & ((\RH0|DOUT\(0)))) ) ) # ( !\RH0|DOUT\(1) & ( (!\RH0|DOUT\(3) & (!\RH0|DOUT\(2) $ (!\RH0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(2),
	datab => \RH0|ALT_INV_DOUT\(3),
	datac => \RH0|ALT_INV_DOUT\(0),
	dataf => \RH0|ALT_INV_DOUT\(1),
	combout => \DHEX0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y1_N15
\DHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[4]~4_combout\ = ( \RH0|DOUT\(1) & ( (!\RH0|DOUT\(3) & \RH0|DOUT\(0)) ) ) # ( !\RH0|DOUT\(1) & ( (!\RH0|DOUT\(2) & ((\RH0|DOUT\(0)))) # (\RH0|DOUT\(2) & (!\RH0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(2),
	datab => \RH0|ALT_INV_DOUT\(3),
	datac => \RH0|ALT_INV_DOUT\(0),
	dataf => \RH0|ALT_INV_DOUT\(1),
	combout => \DHEX0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y1_N51
\DHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[5]~5_combout\ = ( \RH0|DOUT\(3) & ( (\RH0|DOUT\(2) & (!\RH0|DOUT\(1) & \RH0|DOUT\(0))) ) ) # ( !\RH0|DOUT\(3) & ( (!\RH0|DOUT\(2) & ((\RH0|DOUT\(0)) # (\RH0|DOUT\(1)))) # (\RH0|DOUT\(2) & (\RH0|DOUT\(1) & \RH0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(2),
	datac => \RH0|ALT_INV_DOUT\(1),
	datad => \RH0|ALT_INV_DOUT\(0),
	dataf => \RH0|ALT_INV_DOUT\(3),
	combout => \DHEX0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y1_N21
\DHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[6]~6_combout\ = ( \RH0|DOUT\(3) & ( (!\RH0|DOUT\(0) & (!\RH0|DOUT\(1) & \RH0|DOUT\(2))) ) ) # ( !\RH0|DOUT\(3) & ( (!\RH0|DOUT\(1) & ((!\RH0|DOUT\(2)))) # (\RH0|DOUT\(1) & (\RH0|DOUT\(0) & \RH0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH0|ALT_INV_DOUT\(0),
	datac => \RH0|ALT_INV_DOUT\(1),
	datad => \RH0|ALT_INV_DOUT\(2),
	dataf => \RH0|ALT_INV_DOUT\(3),
	combout => \DHEX0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y1_N30
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( !\ROM1|memROM~50_combout\ & ( \DEC1|Equal7~0_combout\ & ( (\ROM1|memROM~82_combout\ & (!\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & \CPU1|DECODER1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \DEC1|ALT_INV_Equal7~0_combout\,
	combout => \comb~3_combout\);

-- Location: FF_X43_Y2_N8
\RH1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH1|DOUT\(3));

-- Location: FF_X43_Y2_N14
\RH1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH1|DOUT\(1));

-- Location: FF_X43_Y2_N5
\RH1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH1|DOUT\(0));

-- Location: FF_X43_Y2_N53
\RH1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH1|DOUT\(2));

-- Location: LABCELL_X43_Y2_N57
\DHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[0]~0_combout\ = ( \RH1|DOUT\(2) & ( (!\RH1|DOUT\(1) & (!\RH1|DOUT\(3) $ (\RH1|DOUT\(0)))) ) ) # ( !\RH1|DOUT\(2) & ( (\RH1|DOUT\(0) & (!\RH1|DOUT\(3) $ (\RH1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(3),
	datab => \RH1|ALT_INV_DOUT\(1),
	datad => \RH1|ALT_INV_DOUT\(0),
	dataf => \RH1|ALT_INV_DOUT\(2),
	combout => \DHEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N54
\DHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[1]~1_combout\ = ( \RH1|DOUT\(2) & ( (!\RH1|DOUT\(3) & (!\RH1|DOUT\(1) $ (!\RH1|DOUT\(0)))) # (\RH1|DOUT\(3) & ((!\RH1|DOUT\(0)) # (\RH1|DOUT\(1)))) ) ) # ( !\RH1|DOUT\(2) & ( (\RH1|DOUT\(3) & (\RH1|DOUT\(1) & \RH1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(3),
	datab => \RH1|ALT_INV_DOUT\(1),
	datad => \RH1|ALT_INV_DOUT\(0),
	dataf => \RH1|ALT_INV_DOUT\(2),
	combout => \DHEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N30
\DHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[2]~2_combout\ = ( \RH1|DOUT\(2) & ( (\RH1|DOUT\(3) & ((!\RH1|DOUT\(0)) # (\RH1|DOUT\(1)))) ) ) # ( !\RH1|DOUT\(2) & ( (!\RH1|DOUT\(3) & (\RH1|DOUT\(1) & !\RH1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(3),
	datab => \RH1|ALT_INV_DOUT\(1),
	datad => \RH1|ALT_INV_DOUT\(0),
	dataf => \RH1|ALT_INV_DOUT\(2),
	combout => \DHEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N15
\DHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[3]~3_combout\ = ( \RH1|DOUT\(0) & ( \RH1|DOUT\(1) & ( \RH1|DOUT\(2) ) ) ) # ( !\RH1|DOUT\(0) & ( \RH1|DOUT\(1) & ( (!\RH1|DOUT\(2) & \RH1|DOUT\(3)) ) ) ) # ( \RH1|DOUT\(0) & ( !\RH1|DOUT\(1) & ( (!\RH1|DOUT\(2) & !\RH1|DOUT\(3)) ) ) ) 
-- # ( !\RH1|DOUT\(0) & ( !\RH1|DOUT\(1) & ( (\RH1|DOUT\(2) & !\RH1|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(2),
	datac => \RH1|ALT_INV_DOUT\(3),
	datae => \RH1|ALT_INV_DOUT\(0),
	dataf => \RH1|ALT_INV_DOUT\(1),
	combout => \DHEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N39
\DHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[4]~4_combout\ = ( \RH1|DOUT\(2) & ( (!\RH1|DOUT\(3) & ((!\RH1|DOUT\(1)) # (\RH1|DOUT\(0)))) ) ) # ( !\RH1|DOUT\(2) & ( (\RH1|DOUT\(0) & ((!\RH1|DOUT\(1)) # (!\RH1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(0),
	datac => \RH1|ALT_INV_DOUT\(1),
	datad => \RH1|ALT_INV_DOUT\(3),
	dataf => \RH1|ALT_INV_DOUT\(2),
	combout => \DHEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N33
\DHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[5]~5_combout\ = ( \RH1|DOUT\(2) & ( (\RH1|DOUT\(0) & (!\RH1|DOUT\(3) $ (!\RH1|DOUT\(1)))) ) ) # ( !\RH1|DOUT\(2) & ( (!\RH1|DOUT\(3) & ((\RH1|DOUT\(0)) # (\RH1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(3),
	datab => \RH1|ALT_INV_DOUT\(1),
	datad => \RH1|ALT_INV_DOUT\(0),
	dataf => \RH1|ALT_INV_DOUT\(2),
	combout => \DHEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N0
\DHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|rascSaida7seg[6]~6_combout\ = ( \RH1|DOUT\(1) & ( (\RH1|DOUT\(0) & (!\RH1|DOUT\(3) & \RH1|DOUT\(2))) ) ) # ( !\RH1|DOUT\(1) & ( (!\RH1|DOUT\(3) & ((!\RH1|DOUT\(2)))) # (\RH1|DOUT\(3) & (!\RH1|DOUT\(0) & \RH1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH1|ALT_INV_DOUT\(0),
	datab => \RH1|ALT_INV_DOUT\(3),
	datac => \RH1|ALT_INV_DOUT\(2),
	dataf => \RH1|ALT_INV_DOUT\(1),
	combout => \DHEX1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N57
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( !\ROM1|memROM~50_combout\ & ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~82_combout\ & (!\ROM1|memROM~42_combout\ & (\DEC1|Equal7~0_combout\ & \CPU1|DECODER1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \DEC1|ALT_INV_Equal7~0_combout\,
	datad => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \comb~4_combout\);

-- Location: FF_X42_Y2_N20
\RH2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH2|DOUT\(2));

-- Location: FF_X42_Y2_N32
\RH2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH2|DOUT\(0));

-- Location: FF_X42_Y2_N10
\RH2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH2|DOUT\(3));

-- Location: FF_X42_Y2_N44
\RH2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH2|DOUT\(1));

-- Location: MLABCELL_X42_Y2_N27
\DHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[0]~0_combout\ = ( \RH2|DOUT\(1) & ( (!\RH2|DOUT\(2) & (\RH2|DOUT\(0) & \RH2|DOUT\(3))) ) ) # ( !\RH2|DOUT\(1) & ( (!\RH2|DOUT\(2) & (\RH2|DOUT\(0) & !\RH2|DOUT\(3))) # (\RH2|DOUT\(2) & (!\RH2|DOUT\(0) $ (\RH2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datac => \RH2|ALT_INV_DOUT\(0),
	datad => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(1),
	combout => \DHEX2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N21
\DHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[1]~1_combout\ = ( \RH2|DOUT\(3) & ( \RH2|DOUT\(0) & ( \RH2|DOUT\(1) ) ) ) # ( !\RH2|DOUT\(3) & ( \RH2|DOUT\(0) & ( (\RH2|DOUT\(2) & !\RH2|DOUT\(1)) ) ) ) # ( \RH2|DOUT\(3) & ( !\RH2|DOUT\(0) & ( \RH2|DOUT\(2) ) ) ) # ( !\RH2|DOUT\(3) 
-- & ( !\RH2|DOUT\(0) & ( (\RH2|DOUT\(2) & \RH2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datac => \RH2|ALT_INV_DOUT\(1),
	datae => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(0),
	combout => \DHEX2|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N3
\DHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[2]~2_combout\ = ( \RH2|DOUT\(1) & ( (!\RH2|DOUT\(2) & (!\RH2|DOUT\(0) & !\RH2|DOUT\(3))) # (\RH2|DOUT\(2) & ((\RH2|DOUT\(3)))) ) ) # ( !\RH2|DOUT\(1) & ( (\RH2|DOUT\(2) & (!\RH2|DOUT\(0) & \RH2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datac => \RH2|ALT_INV_DOUT\(0),
	datad => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(1),
	combout => \DHEX2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N0
\DHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[3]~3_combout\ = ( \RH2|DOUT\(0) & ( (!\RH2|DOUT\(2) & (!\RH2|DOUT\(1) & !\RH2|DOUT\(3))) # (\RH2|DOUT\(2) & (\RH2|DOUT\(1))) ) ) # ( !\RH2|DOUT\(0) & ( (!\RH2|DOUT\(2) & (\RH2|DOUT\(1) & \RH2|DOUT\(3))) # (\RH2|DOUT\(2) & 
-- (!\RH2|DOUT\(1) & !\RH2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datab => \RH2|ALT_INV_DOUT\(1),
	datac => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(0),
	combout => \DHEX2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N24
\DHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[4]~4_combout\ = ( \RH2|DOUT\(0) & ( (!\RH2|DOUT\(3)) # ((!\RH2|DOUT\(2) & !\RH2|DOUT\(1))) ) ) # ( !\RH2|DOUT\(0) & ( (\RH2|DOUT\(2) & (!\RH2|DOUT\(1) & !\RH2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datab => \RH2|ALT_INV_DOUT\(1),
	datac => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(0),
	combout => \DHEX2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N6
\DHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[5]~5_combout\ = ( \RH2|DOUT\(3) & ( \RH2|DOUT\(0) & ( (!\RH2|DOUT\(1) & \RH2|DOUT\(2)) ) ) ) # ( !\RH2|DOUT\(3) & ( \RH2|DOUT\(0) & ( (!\RH2|DOUT\(2)) # (\RH2|DOUT\(1)) ) ) ) # ( !\RH2|DOUT\(3) & ( !\RH2|DOUT\(0) & ( (\RH2|DOUT\(1) & 
-- !\RH2|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH2|ALT_INV_DOUT\(1),
	datac => \RH2|ALT_INV_DOUT\(2),
	datae => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(0),
	combout => \DHEX2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N33
\DHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|rascSaida7seg[6]~6_combout\ = ( !\RH2|DOUT\(3) & ( \RH2|DOUT\(0) & ( !\RH2|DOUT\(2) $ (\RH2|DOUT\(1)) ) ) ) # ( \RH2|DOUT\(3) & ( !\RH2|DOUT\(0) & ( (\RH2|DOUT\(2) & !\RH2|DOUT\(1)) ) ) ) # ( !\RH2|DOUT\(3) & ( !\RH2|DOUT\(0) & ( (!\RH2|DOUT\(2) & 
-- !\RH2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH2|ALT_INV_DOUT\(2),
	datac => \RH2|ALT_INV_DOUT\(1),
	datae => \RH2|ALT_INV_DOUT\(3),
	dataf => \RH2|ALT_INV_DOUT\(0),
	combout => \DHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y2_N48
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\ROM1|memROM~42_combout\ & ( \CPU1|DECODER1|Equal5~0_combout\ & ( (\ROM1|memROM~82_combout\ & (!\ROM1|memROM~50_combout\ & (\DEC1|Equal7~0_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~50_combout\,
	datac => \DEC1|ALT_INV_Equal7~0_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~42_combout\,
	dataf => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	combout => \comb~5_combout\);

-- Location: FF_X43_Y2_N23
\RH3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH3|DOUT\(2));

-- Location: FF_X43_Y2_N47
\RH3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH3|DOUT\(1));

-- Location: FF_X43_Y2_N20
\RH3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH3|DOUT\(3));

-- Location: FF_X43_Y2_N44
\RH3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH3|DOUT\(0));

-- Location: LABCELL_X43_Y2_N42
\DHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[0]~0_combout\ = (!\RH3|DOUT\(2) & (\RH3|DOUT\(0) & (!\RH3|DOUT\(1) $ (\RH3|DOUT\(3))))) # (\RH3|DOUT\(2) & (!\RH3|DOUT\(1) & (!\RH3|DOUT\(3) $ (\RH3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000110010000001000011001000000100001100100000010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH3|ALT_INV_DOUT\(2),
	datab => \RH3|ALT_INV_DOUT\(1),
	datac => \RH3|ALT_INV_DOUT\(3),
	datad => \RH3|ALT_INV_DOUT\(0),
	combout => \DHEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N9
\DHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[1]~1_combout\ = ( \RH3|DOUT\(2) & ( \RH3|DOUT\(0) & ( !\RH3|DOUT\(3) $ (\RH3|DOUT\(1)) ) ) ) # ( !\RH3|DOUT\(2) & ( \RH3|DOUT\(0) & ( (\RH3|DOUT\(3) & \RH3|DOUT\(1)) ) ) ) # ( \RH3|DOUT\(2) & ( !\RH3|DOUT\(0) & ( (\RH3|DOUT\(1)) # 
-- (\RH3|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH3|ALT_INV_DOUT\(3),
	datac => \RH3|ALT_INV_DOUT\(1),
	datae => \RH3|ALT_INV_DOUT\(2),
	dataf => \RH3|ALT_INV_DOUT\(0),
	combout => \DHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N45
\DHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[2]~2_combout\ = ( \RH3|DOUT\(3) & ( (\RH3|DOUT\(2) & ((!\RH3|DOUT\(0)) # (\RH3|DOUT\(1)))) ) ) # ( !\RH3|DOUT\(3) & ( (!\RH3|DOUT\(2) & (!\RH3|DOUT\(0) & \RH3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH3|ALT_INV_DOUT\(2),
	datac => \RH3|ALT_INV_DOUT\(0),
	datad => \RH3|ALT_INV_DOUT\(1),
	dataf => \RH3|ALT_INV_DOUT\(3),
	combout => \DHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N24
\DHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[3]~3_combout\ = ( \RH3|DOUT\(0) & ( (!\RH3|DOUT\(1) & (!\RH3|DOUT\(3) & !\RH3|DOUT\(2))) # (\RH3|DOUT\(1) & ((\RH3|DOUT\(2)))) ) ) # ( !\RH3|DOUT\(0) & ( (!\RH3|DOUT\(3) & (!\RH3|DOUT\(1) & \RH3|DOUT\(2))) # (\RH3|DOUT\(3) & 
-- (\RH3|DOUT\(1) & !\RH3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH3|ALT_INV_DOUT\(3),
	datab => \RH3|ALT_INV_DOUT\(1),
	datac => \RH3|ALT_INV_DOUT\(2),
	dataf => \RH3|ALT_INV_DOUT\(0),
	combout => \DHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N27
\DHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[4]~4_combout\ = ( \RH3|DOUT\(0) & ( (!\RH3|DOUT\(3)) # ((!\RH3|DOUT\(1) & !\RH3|DOUT\(2))) ) ) # ( !\RH3|DOUT\(0) & ( (!\RH3|DOUT\(3) & (!\RH3|DOUT\(1) & \RH3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH3|ALT_INV_DOUT\(3),
	datab => \RH3|ALT_INV_DOUT\(1),
	datad => \RH3|ALT_INV_DOUT\(2),
	dataf => \RH3|ALT_INV_DOUT\(0),
	combout => \DHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N21
\DHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[5]~5_combout\ = ( \RH3|DOUT\(3) & ( (!\RH3|DOUT\(1) & (\RH3|DOUT\(0) & \RH3|DOUT\(2))) ) ) # ( !\RH3|DOUT\(3) & ( (!\RH3|DOUT\(1) & (\RH3|DOUT\(0) & !\RH3|DOUT\(2))) # (\RH3|DOUT\(1) & ((!\RH3|DOUT\(2)) # (\RH3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH3|ALT_INV_DOUT\(1),
	datac => \RH3|ALT_INV_DOUT\(0),
	datad => \RH3|ALT_INV_DOUT\(2),
	dataf => \RH3|ALT_INV_DOUT\(3),
	combout => \DHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N18
\DHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|rascSaida7seg[6]~6_combout\ = ( \RH3|DOUT\(0) & ( (!\RH3|DOUT\(3) & (!\RH3|DOUT\(1) $ (\RH3|DOUT\(2)))) ) ) # ( !\RH3|DOUT\(0) & ( (!\RH3|DOUT\(1) & (!\RH3|DOUT\(2) $ (\RH3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH3|ALT_INV_DOUT\(1),
	datac => \RH3|ALT_INV_DOUT\(2),
	datad => \RH3|ALT_INV_DOUT\(3),
	dataf => \RH3|ALT_INV_DOUT\(0),
	combout => \DHEX3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N45
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \DEC1|Equal7~0_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~82_combout\ & (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~50_combout\ & \CPU1|DECODER1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datae => \DEC1|ALT_INV_Equal7~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \comb~6_combout\);

-- Location: FF_X42_Y2_N17
\RH4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH4|DOUT\(3));

-- Location: FF_X42_Y2_N38
\RH4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH4|DOUT\(2));

-- Location: FF_X42_Y2_N14
\RH4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH4|DOUT\(1));

-- Location: FF_X42_Y2_N41
\RH4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH4|DOUT\(0));

-- Location: LABCELL_X43_Y2_N36
\DHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[0]~0_combout\ = ( \RH4|DOUT\(0) & ( (!\RH4|DOUT\(3) & (!\RH4|DOUT\(2) & !\RH4|DOUT\(1))) # (\RH4|DOUT\(3) & (!\RH4|DOUT\(2) $ (!\RH4|DOUT\(1)))) ) ) # ( !\RH4|DOUT\(0) & ( (!\RH4|DOUT\(3) & (\RH4|DOUT\(2) & !\RH4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH4|ALT_INV_DOUT\(3),
	datac => \RH4|ALT_INV_DOUT\(2),
	datad => \RH4|ALT_INV_DOUT\(1),
	dataf => \RH4|ALT_INV_DOUT\(0),
	combout => \DHEX4|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N15
\DHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[1]~1_combout\ = ( \RH4|DOUT\(1) & ( (!\RH4|DOUT\(0) & (\RH4|DOUT\(2))) # (\RH4|DOUT\(0) & ((\RH4|DOUT\(3)))) ) ) # ( !\RH4|DOUT\(1) & ( (\RH4|DOUT\(2) & (!\RH4|DOUT\(0) $ (!\RH4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH4|ALT_INV_DOUT\(2),
	datab => \RH4|ALT_INV_DOUT\(0),
	datad => \RH4|ALT_INV_DOUT\(3),
	dataf => \RH4|ALT_INV_DOUT\(1),
	combout => \DHEX4|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N12
\DHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[2]~2_combout\ = ( \RH4|DOUT\(3) & ( (\RH4|DOUT\(2) & ((!\RH4|DOUT\(0)) # (\RH4|DOUT\(1)))) ) ) # ( !\RH4|DOUT\(3) & ( (!\RH4|DOUT\(2) & (!\RH4|DOUT\(0) & \RH4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH4|ALT_INV_DOUT\(2),
	datab => \RH4|ALT_INV_DOUT\(0),
	datad => \RH4|ALT_INV_DOUT\(1),
	dataf => \RH4|ALT_INV_DOUT\(3),
	combout => \DHEX4|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N48
\DHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[3]~3_combout\ = ( \RH4|DOUT\(0) & ( (!\RH4|DOUT\(2) & (!\RH4|DOUT\(3) & !\RH4|DOUT\(1))) # (\RH4|DOUT\(2) & ((\RH4|DOUT\(1)))) ) ) # ( !\RH4|DOUT\(0) & ( (!\RH4|DOUT\(2) & (\RH4|DOUT\(3) & \RH4|DOUT\(1))) # (\RH4|DOUT\(2) & 
-- (!\RH4|DOUT\(3) & !\RH4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH4|ALT_INV_DOUT\(2),
	datab => \RH4|ALT_INV_DOUT\(3),
	datac => \RH4|ALT_INV_DOUT\(1),
	dataf => \RH4|ALT_INV_DOUT\(0),
	combout => \DHEX4|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N36
\DHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[4]~4_combout\ = ( \RH4|DOUT\(0) & ( (!\RH4|DOUT\(3)) # ((!\RH4|DOUT\(1) & !\RH4|DOUT\(2))) ) ) # ( !\RH4|DOUT\(0) & ( (!\RH4|DOUT\(3) & (!\RH4|DOUT\(1) & \RH4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH4|ALT_INV_DOUT\(3),
	datac => \RH4|ALT_INV_DOUT\(1),
	datad => \RH4|ALT_INV_DOUT\(2),
	dataf => \RH4|ALT_INV_DOUT\(0),
	combout => \DHEX4|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N51
\DHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[5]~5_combout\ = ( \RH4|DOUT\(0) & ( !\RH4|DOUT\(3) $ (((\RH4|DOUT\(2) & !\RH4|DOUT\(1)))) ) ) # ( !\RH4|DOUT\(0) & ( (!\RH4|DOUT\(2) & (!\RH4|DOUT\(3) & \RH4|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101111100001010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH4|ALT_INV_DOUT\(2),
	datac => \RH4|ALT_INV_DOUT\(3),
	datad => \RH4|ALT_INV_DOUT\(1),
	dataf => \RH4|ALT_INV_DOUT\(0),
	combout => \DHEX4|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N39
\DHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX4|rascSaida7seg[6]~6_combout\ = ( \RH4|DOUT\(3) & ( (\RH4|DOUT\(2) & (!\RH4|DOUT\(1) & !\RH4|DOUT\(0))) ) ) # ( !\RH4|DOUT\(3) & ( (!\RH4|DOUT\(2) & (!\RH4|DOUT\(1))) # (\RH4|DOUT\(2) & (\RH4|DOUT\(1) & \RH4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH4|ALT_INV_DOUT\(2),
	datac => \RH4|ALT_INV_DOUT\(1),
	datad => \RH4|ALT_INV_DOUT\(0),
	dataf => \RH4|ALT_INV_DOUT\(3),
	combout => \DHEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y1_N42
\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = ( !\ROM1|memROM~50_combout\ & ( \DEC1|Equal7~0_combout\ & ( (\ROM1|memROM~82_combout\ & (\ROM1|memROM~42_combout\ & (!\ROM1|memROM~5_combout\ & \CPU1|DECODER1|Equal5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~82_combout\,
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU1|DECODER1|ALT_INV_Equal5~0_combout\,
	datae => \ROM1|ALT_INV_memROM~50_combout\,
	dataf => \DEC1|ALT_INV_Equal7~0_combout\,
	combout => \comb~7_combout\);

-- Location: FF_X42_Y1_N41
\RH5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(1),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH5|DOUT\(1));

-- Location: FF_X42_Y1_N14
\RH5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(2),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH5|DOUT\(2));

-- Location: FF_X42_Y1_N5
\RH5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(3),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH5|DOUT\(3));

-- Location: FF_X42_Y1_N26
\RH5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU1|REGA|DOUT\(0),
	clrn => \FPGA_RESET_N~input_o\,
	sload => VCC,
	ena => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RH5|DOUT\(0));

-- Location: MLABCELL_X42_Y1_N3
\DHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[0]~0_combout\ = ( \RH5|DOUT\(0) & ( (!\RH5|DOUT\(1) & (!\RH5|DOUT\(2) $ (\RH5|DOUT\(3)))) # (\RH5|DOUT\(1) & (!\RH5|DOUT\(2) & \RH5|DOUT\(3))) ) ) # ( !\RH5|DOUT\(0) & ( (!\RH5|DOUT\(1) & (\RH5|DOUT\(2) & !\RH5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH5|ALT_INV_DOUT\(1),
	datac => \RH5|ALT_INV_DOUT\(2),
	datad => \RH5|ALT_INV_DOUT\(3),
	dataf => \RH5|ALT_INV_DOUT\(0),
	combout => \DHEX5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y1_N54
\DHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[1]~1_combout\ = ( \RH5|DOUT\(2) & ( (!\RH5|DOUT\(0) & ((\RH5|DOUT\(3)) # (\RH5|DOUT\(1)))) # (\RH5|DOUT\(0) & (!\RH5|DOUT\(1) $ (\RH5|DOUT\(3)))) ) ) # ( !\RH5|DOUT\(2) & ( (\RH5|DOUT\(0) & (\RH5|DOUT\(1) & \RH5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH5|ALT_INV_DOUT\(0),
	datab => \RH5|ALT_INV_DOUT\(1),
	datac => \RH5|ALT_INV_DOUT\(3),
	dataf => \RH5|ALT_INV_DOUT\(2),
	combout => \DHEX5|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y1_N24
\DHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[2]~2_combout\ = ( \RH5|DOUT\(1) & ( (!\RH5|DOUT\(2) & (!\RH5|DOUT\(3) & !\RH5|DOUT\(0))) # (\RH5|DOUT\(2) & (\RH5|DOUT\(3))) ) ) # ( !\RH5|DOUT\(1) & ( (\RH5|DOUT\(2) & (\RH5|DOUT\(3) & !\RH5|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH5|ALT_INV_DOUT\(2),
	datac => \RH5|ALT_INV_DOUT\(3),
	datad => \RH5|ALT_INV_DOUT\(0),
	dataf => \RH5|ALT_INV_DOUT\(1),
	combout => \DHEX5|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y1_N57
\DHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[3]~3_combout\ = ( \RH5|DOUT\(2) & ( (!\RH5|DOUT\(0) & (!\RH5|DOUT\(1) & !\RH5|DOUT\(3))) # (\RH5|DOUT\(0) & (\RH5|DOUT\(1))) ) ) # ( !\RH5|DOUT\(2) & ( (!\RH5|DOUT\(0) & (\RH5|DOUT\(1) & \RH5|DOUT\(3))) # (\RH5|DOUT\(0) & 
-- (!\RH5|DOUT\(1) & !\RH5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH5|ALT_INV_DOUT\(0),
	datab => \RH5|ALT_INV_DOUT\(1),
	datad => \RH5|ALT_INV_DOUT\(3),
	dataf => \RH5|ALT_INV_DOUT\(2),
	combout => \DHEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y1_N18
\DHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[4]~4_combout\ = ( \RH5|DOUT\(0) & ( (!\RH5|DOUT\(3)) # ((!\RH5|DOUT\(1) & !\RH5|DOUT\(2))) ) ) # ( !\RH5|DOUT\(0) & ( (!\RH5|DOUT\(1) & (!\RH5|DOUT\(3) & \RH5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH5|ALT_INV_DOUT\(1),
	datac => \RH5|ALT_INV_DOUT\(3),
	datad => \RH5|ALT_INV_DOUT\(2),
	dataf => \RH5|ALT_INV_DOUT\(0),
	combout => \DHEX5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y1_N48
\DHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[5]~5_combout\ = ( \RH5|DOUT\(2) & ( (\RH5|DOUT\(0) & (!\RH5|DOUT\(1) $ (!\RH5|DOUT\(3)))) ) ) # ( !\RH5|DOUT\(2) & ( (!\RH5|DOUT\(3) & ((\RH5|DOUT\(0)) # (\RH5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RH5|ALT_INV_DOUT\(1),
	datac => \RH5|ALT_INV_DOUT\(3),
	datad => \RH5|ALT_INV_DOUT\(0),
	dataf => \RH5|ALT_INV_DOUT\(2),
	combout => \DHEX5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y1_N39
\DHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX5|rascSaida7seg[6]~6_combout\ = ( \RH5|DOUT\(3) & ( (!\RH5|DOUT\(0) & (\RH5|DOUT\(2) & !\RH5|DOUT\(1))) ) ) # ( !\RH5|DOUT\(3) & ( (!\RH5|DOUT\(2) & ((!\RH5|DOUT\(1)))) # (\RH5|DOUT\(2) & (\RH5|DOUT\(0) & \RH5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RH5|ALT_INV_DOUT\(0),
	datac => \RH5|ALT_INV_DOUT\(2),
	datad => \RH5|ALT_INV_DOUT\(1),
	dataf => \RH5|ALT_INV_DOUT\(3),
	combout => \DHEX5|rascSaida7seg[6]~6_combout\);

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

-- Location: LABCELL_X39_Y22_N0
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


