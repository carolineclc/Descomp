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

-- DATE "04/11/2023 13:39:47"

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
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END contador;

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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|Equal10~3_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU1|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|Equal10~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|Equal10~0_combout\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|Equal10~2_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida[4]~1_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU1|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|saida~2_combout\ : std_logic;
SIGNAL \DEC2|Equal7~1_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \CPU1|MUX1|saida_MUX[7]~3_combout\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU1|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \DEC1|Equal7~1_combout\ : std_logic;
SIGNAL \DEC1|Equal7~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~2_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~1_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \DEC2|Equal7~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~q\ : std_logic;
SIGNAL \CPU1|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU1|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DEC1|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[7]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU1|DECODER1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DEC2|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \DEC1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU1|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU1|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DEC1|ALT_INV_Equal7~1_combout\ <= NOT \DEC1|Equal7~1_combout\;
\FF1|ALT_INV_DOUT~2_combout\ <= NOT \FF1|DOUT~2_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[1]~9_combout\ <= NOT \CPU1|MUX1|saida_MUX[1]~9_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \CPU1|MUX1|saida_MUX[2]~8_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\ <= NOT \CPU1|MUX1|saida_MUX[3]~7_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\ <= NOT \CPU1|MUX1|saida_MUX[4]~6_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU1|MUX1|saida_MUX[5]~5_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[6]~4_combout\ <= NOT \CPU1|MUX1|saida_MUX[6]~4_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[7]~3_combout\ <= NOT \CPU1|MUX1|saida_MUX[7]~3_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~2_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~1_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\CPU1|DECODER1|ALT_INV_saida[4]~1_combout\ <= NOT \CPU1|DECODER1|saida[4]~1_combout\;
\CPU1|DECODER1|ALT_INV_Equal10~2_combout\ <= NOT \CPU1|DECODER1|Equal10~2_combout\;
\CPU1|DECODER1|ALT_INV_saida[4]~0_combout\ <= NOT \CPU1|DECODER1|saida[4]~0_combout\;
\CPU1|DECODER1|ALT_INV_Equal10~1_combout\ <= NOT \CPU1|DECODER1|Equal10~1_combout\;
\CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU1|MUX1|saida_MUX[0]~0_combout\;
\CPU1|DECODER1|ALT_INV_Equal10~0_combout\ <= NOT \CPU1|DECODER1|Equal10~0_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DEC2|ALT_INV_Equal7~0_combout\ <= NOT \DEC2|Equal7~0_combout\;
\FF1|ALT_INV_DOUT~0_combout\ <= NOT \FF1|DOUT~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\DEC1|ALT_INV_Equal7~0_combout\ <= NOT \DEC1|Equal7~0_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FF2|ALT_INV_DOUT~q\ <= NOT \FF2|DOUT~q\;
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;
\CPU1|REGA|ALT_INV_DOUT\(7) <= NOT \CPU1|REGA|DOUT\(7);
\CPU1|REGA|ALT_INV_DOUT\(6) <= NOT \CPU1|REGA|DOUT\(6);
\CPU1|REGA|ALT_INV_DOUT\(5) <= NOT \CPU1|REGA|DOUT\(5);
\CPU1|REGA|ALT_INV_DOUT\(4) <= NOT \CPU1|REGA|DOUT\(4);
\CPU1|REGA|ALT_INV_DOUT\(3) <= NOT \CPU1|REGA|DOUT\(3);
\CPU1|REGA|ALT_INV_DOUT\(2) <= NOT \CPU1|REGA|DOUT\(2);
\CPU1|REGA|ALT_INV_DOUT\(1) <= NOT \CPU1|REGA|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(8) <= NOT \CPU1|PC|DOUT\(8);
\CPU1|PC|ALT_INV_DOUT\(7) <= NOT \CPU1|PC|DOUT\(7);
\CPU1|PC|ALT_INV_DOUT\(6) <= NOT \CPU1|PC|DOUT\(6);
\CPU1|PC|ALT_INV_DOUT\(5) <= NOT \CPU1|PC|DOUT\(5);
\CPU1|PC|ALT_INV_DOUT\(4) <= NOT \CPU1|PC|DOUT\(4);
\CPU1|PC|ALT_INV_DOUT\(3) <= NOT \CPU1|PC|DOUT\(3);
\CPU1|PC|ALT_INV_DOUT\(2) <= NOT \CPU1|PC|DOUT\(2);
\CPU1|PC|ALT_INV_DOUT\(1) <= NOT \CPU1|PC|DOUT\(1);
\CPU1|PC|ALT_INV_DOUT\(0) <= NOT \CPU1|PC|DOUT\(0);
\CPU1|REGA|ALT_INV_DOUT\(0) <= NOT \CPU1|REGA|DOUT\(0);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU1|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~1_sumout\ = SUM(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU1|incrementaPC|Add0~2\ = CARRY(( \CPU1|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU1|incrementaPC|Add0~1_sumout\,
	cout => \CPU1|incrementaPC|Add0~2\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(1))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU1|PC|DOUT\(0) & ((!\CPU1|PC|DOUT\(2) $ (!\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(1)) # (!\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) $ (\CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) $ (!\CPU1|PC|DOUT\(2))))) # (\CPU1|PC|DOUT\(3) & (((\CPU1|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\CPU1|DECODER1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|Equal10~3_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|Equal10~3_combout\);

\CPU1|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(0));

\CPU1|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~5_sumout\ = SUM(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~2\ ))
-- \CPU1|incrementaPC|Add0~6\ = CARRY(( \CPU1|PC|DOUT\(1) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	cin => \CPU1|incrementaPC|Add0~2\,
	sumout => \CPU1|incrementaPC|Add0~5_sumout\,
	cout => \CPU1|incrementaPC|Add0~6\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(0) & (((!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU1|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~2_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(1));

\CPU1|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~9_sumout\ = SUM(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))
-- \CPU1|incrementaPC|Add0~10\ = CARRY(( \CPU1|PC|DOUT\(2) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	cin => \CPU1|incrementaPC|Add0~6\,
	sumout => \CPU1|incrementaPC|Add0~9_sumout\,
	cout => \CPU1|incrementaPC|Add0~10\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU1|PC|DOUT\(0) & (\CPU1|PC|DOUT\(1) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU1|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(2));

\CPU1|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~13_sumout\ = SUM(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))
-- \CPU1|incrementaPC|Add0~14\ = CARRY(( \CPU1|PC|DOUT\(3) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	cin => \CPU1|incrementaPC|Add0~10\,
	sumout => \CPU1|incrementaPC|Add0~13_sumout\,
	cout => \CPU1|incrementaPC|Add0~14\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(3) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU1|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(3));

\CPU1|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~17_sumout\ = SUM(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))
-- \CPU1|incrementaPC|Add0~18\ = CARRY(( \CPU1|PC|DOUT\(4) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(4),
	cin => \CPU1|incrementaPC|Add0~14\,
	sumout => \CPU1|incrementaPC|Add0~17_sumout\,
	cout => \CPU1|incrementaPC|Add0~18\);

\CPU1|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(4));

\CPU1|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~21_sumout\ = SUM(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))
-- \CPU1|incrementaPC|Add0~22\ = CARRY(( \CPU1|PC|DOUT\(5) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(5),
	cin => \CPU1|incrementaPC|Add0~18\,
	sumout => \CPU1|incrementaPC|Add0~21_sumout\,
	cout => \CPU1|incrementaPC|Add0~22\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU1|PC|DOUT\(0) & (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU1|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(5));

\CPU1|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~25_sumout\ = SUM(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))
-- \CPU1|incrementaPC|Add0~26\ = CARRY(( \CPU1|PC|DOUT\(6) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(6),
	cin => \CPU1|incrementaPC|Add0~22\,
	sumout => \CPU1|incrementaPC|Add0~25_sumout\,
	cout => \CPU1|incrementaPC|Add0~26\);

\CPU1|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~9_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(6));

\CPU1|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~29_sumout\ = SUM(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))
-- \CPU1|incrementaPC|Add0~30\ = CARRY(( \CPU1|PC|DOUT\(7) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	cin => \CPU1|incrementaPC|Add0~26\,
	sumout => \CPU1|incrementaPC|Add0~29_sumout\,
	cout => \CPU1|incrementaPC|Add0~30\);

\CPU1|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(7));

\CPU1|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|incrementaPC|Add0~33_sumout\ = SUM(( \CPU1|PC|DOUT\(8) ) + ( GND ) + ( \CPU1|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU1|PC|ALT_INV_DOUT\(8),
	cin => \CPU1|incrementaPC|Add0~30\,
	sumout => \CPU1|incrementaPC|Add0~33_sumout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & ((\CPU1|PC|DOUT\(3))))) # (\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(0) $ (!\CPU1|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100000000001101010000000000110101000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(0),
	datab => \CPU1|PC|ALT_INV_DOUT\(1),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~12_combout\);

\CPU1|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU1|DECODER1|Equal10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU1|PC|DOUT\(8) & ( (!\CPU1|PC|DOUT\(4) & (!\CPU1|PC|DOUT\(5) & (!\CPU1|PC|DOUT\(6) & !\CPU1|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(4),
	datab => \CPU1|PC|ALT_INV_DOUT\(5),
	datac => \CPU1|PC|ALT_INV_DOUT\(6),
	datad => \CPU1|PC|ALT_INV_DOUT\(7),
	datae => \CPU1|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\CPU1|DECODER1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|Equal10~1_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|Equal10~1_combout\);

\CPU1|DECODER1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|Equal10~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|Equal10~0_combout\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (\CPU1|PC|DOUT\(1) & \CPU1|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(1),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\CPU1|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~1_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~2_combout\ & \RAM1|ram~23_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~1_combout\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(1) & \CPU1|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(1),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\CPU1|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~2_combout\ = (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~10_combout\ & \RAM1|ram~15_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	combout => \CPU1|MUX1|saida_MUX[0]~2_combout\);

\CPU1|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[0]~0_combout\ = ( \CPU1|MUX1|saida_MUX[0]~1_combout\ & ( \CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~9_combout\ & (!\CPU1|DECODER1|Equal10~0_combout\))) # (\ROM1|memROM~4_combout\ & 
-- (((!\ROM1|memROM~11_combout\) # (\CPU1|DECODER1|Equal10~0_combout\)))) ) ) ) # ( !\CPU1|MUX1|saida_MUX[0]~1_combout\ & ( \CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~9_combout\ & !\CPU1|DECODER1|Equal10~0_combout\)) # 
-- (\ROM1|memROM~4_combout\ & ((\CPU1|DECODER1|Equal10~0_combout\))) ) ) ) # ( \CPU1|MUX1|saida_MUX[0]~1_combout\ & ( !\CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~11_combout\) # (\CPU1|DECODER1|Equal10~0_combout\))) ) ) 
-- ) # ( !\CPU1|MUX1|saida_MUX[0]~1_combout\ & ( !\CPU1|MUX1|saida_MUX[0]~2_combout\ & ( (\ROM1|memROM~4_combout\ & \CPU1|DECODER1|Equal10~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010000010110000101100001011101010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \CPU1|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \CPU1|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \CPU1|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \CPU1|MUX1|saida_MUX[0]~0_combout\);

\CPU1|DECODER1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida[4]~0_combout\ = (\ROM1|memROM~1_combout\ & ((!\ROM1|memROM~7_combout\) # (\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|saida[4]~0_combout\);

\CPU1|DECODER1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|Equal10~2_combout\ = (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101010101010101110101010101010111010101010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|Equal10~2_combout\);

\CPU1|DECODER1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida[4]~1_combout\ = (!\CPU1|DECODER1|saida[4]~0_combout\ & ((!\CPU1|DECODER1|Equal10~2_combout\))) # (\CPU1|DECODER1|saida[4]~0_combout\ & (\CPU1|DECODER1|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[4]~0_combout\,
	datac => \CPU1|DECODER1|ALT_INV_Equal10~2_combout\,
	combout => \CPU1|DECODER1|saida[4]~1_combout\);

\CPU1|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~34_cout\ = CARRY(( (!\CPU1|DECODER1|Equal10~1_combout\ & ((!\CPU1|DECODER1|saida[4]~0_combout\ & (\CPU1|DECODER1|Equal10~2_combout\)) # (\CPU1|DECODER1|saida[4]~0_combout\ & ((!\CPU1|DECODER1|Equal10~0_combout\))))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_Equal10~2_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \CPU1|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida[4]~0_combout\,
	cin => GND,
	cout => \CPU1|ULA1|Add0~34_cout\);

\CPU1|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~1_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU1|DECODER1|saida[4]~1_combout\) # (\CPU1|DECODER1|Equal10~1_combout\))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))
-- \CPU1|ULA1|Add0~2\ = CARRY(( !\CPU1|MUX1|saida_MUX[0]~0_combout\ $ (((\CPU1|DECODER1|saida[4]~1_combout\) # (\CPU1|DECODER1|Equal10~1_combout\))) ) + ( \CPU1|REGA|DOUT\(0) ) + ( \CPU1|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \CPU1|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(0),
	cin => \CPU1|ULA1|Add0~34_cout\,
	sumout => \CPU1|ULA1|Add0~1_sumout\,
	cout => \CPU1|ULA1|Add0~2\);

\CPU1|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Equal1~0_combout\ = (!\CPU1|DECODER1|Equal10~1_combout\ & \CPU1|DECODER1|saida[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	combout => \CPU1|ULA1|Equal1~0_combout\);

\CPU1|DECODER1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|DECODER1|saida~2_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~7_combout\ $ (((\ROM1|memROM~6_combout\) # (\ROM1|memROM~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU1|DECODER1|saida~2_combout\);

\CPU1|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~1_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(0));

\DEC2|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Equal7~1_combout\ = (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(0) & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC2|Equal7~1_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(0),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~24_q\ & ( (!\CPU1|PC|DOUT\(3)) # ((!\ROM1|memROM~1_combout\) # (\CPU1|PC|DOUT\(2))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~24_q\ & ( ((!\CPU1|PC|DOUT\(2)) # ((!\ROM1|memROM~1_combout\) # 
-- (!\CPU1|PC|DOUT\(1)))) # (\CPU1|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~24_q\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = (!\CPU1|PC|DOUT\(1) & (!\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(1),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~0_combout\ & ( \RAM1|ram~546_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~546_combout\ & ( (\RAM1|ram~16_q\ & ((!\CPU1|PC|DOUT\(0)) # 
-- (!\ROM1|memROM~1_combout\))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\RAM1|ram~546_combout\ & ( (\RAM1|ram~16_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\RAM1|ram~546_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~550_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~550_combout\,
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~528_combout\);

\CPU1|MUX1|saida_MUX[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[1]~9_combout\ = ( \ROM1|memROM~1_combout\ & ( \RAM1|ram~528_combout\ & ( ((!\CPU1|PC|DOUT\(2) & ((\CPU1|PC|DOUT\(0)) # (\CPU1|PC|DOUT\(1)))) # (\CPU1|PC|DOUT\(2) & ((!\CPU1|PC|DOUT\(1)) # (!\CPU1|PC|DOUT\(0))))) # (\CPU1|PC|DOUT\(3)) 
-- ) ) ) # ( !\ROM1|memROM~1_combout\ & ( \RAM1|ram~528_combout\ ) ) # ( \ROM1|memROM~1_combout\ & ( !\RAM1|ram~528_combout\ & ( (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & (!\CPU1|PC|DOUT\(1) & \CPU1|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111111111110111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \CPU1|PC|ALT_INV_DOUT\(1),
	datad => \CPU1|PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \RAM1|ALT_INV_ram~528_combout\,
	combout => \CPU1|MUX1|saida_MUX[1]~9_combout\);

\CPU1|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~5_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[1]~9_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))
-- \CPU1|ULA1|Add0~6\ = CARRY(( !\CPU1|MUX1|saida_MUX[1]~9_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(1) ) + ( \CPU1|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[1]~9_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(1),
	cin => \CPU1|ULA1|Add0~2\,
	sumout => \CPU1|ULA1|Add0~5_sumout\,
	cout => \CPU1|ULA1|Add0~6\);

\CPU1|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~5_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[1]~9_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(1));

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(1),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~25_q\ & ( (!\CPU1|PC|DOUT\(3)) # ((!\ROM1|memROM~1_combout\) # (\CPU1|PC|DOUT\(2))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~25_q\ & ( ((!\CPU1|PC|DOUT\(2)) # ((!\ROM1|memROM~1_combout\) # 
-- (!\CPU1|PC|DOUT\(1)))) # (\CPU1|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(3),
	datab => \CPU1|PC|ALT_INV_DOUT\(2),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~25_q\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~0_combout\ & ( \RAM1|ram~546_combout\ & ( (\RAM1|ram~17_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \RAM1|ram~546_combout\ & ( (\RAM1|ram~17_q\ & ((!\CPU1|PC|DOUT\(0)) # 
-- (!\ROM1|memROM~1_combout\))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\RAM1|ram~546_combout\ & ( (\RAM1|ram~17_q\ & !\ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\RAM1|ram~546_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datac => \CPU1|PC|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~549_combout\,
	datab => \RAM1|ALT_INV_ram~529_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~530_combout\);

\CPU1|MUX1|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[2]~8_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~530_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\CPU1|PC|DOUT\(3)) # ((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~530_combout\ & ( 
-- (!\ROM1|memROM~1_combout\) # (((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~530_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010010111111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~530_combout\,
	combout => \CPU1|MUX1|saida_MUX[2]~8_combout\);

\CPU1|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~9_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))
-- \CPU1|ULA1|Add0~10\ = CARRY(( !\CPU1|MUX1|saida_MUX[2]~8_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(2) ) + ( \CPU1|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[2]~8_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(2),
	cin => \CPU1|ULA1|Add0~6\,
	sumout => \CPU1|ULA1|Add0~9_sumout\,
	cout => \CPU1|ULA1|Add0~10\);

\CPU1|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~9_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[2]~8_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(2));

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(2),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~531_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~531_combout\,
	datab => \RAM1|ALT_INV_ram~532_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~533_combout\);

\CPU1|MUX1|saida_MUX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[3]~7_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~533_combout\ & ( (!\CPU1|PC|DOUT\(1)) # ((!\ROM1|memROM~1_combout\) # ((!\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(3)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~533_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\) # ((\CPU1|PC|DOUT\(2)) # (\CPU1|PC|DOUT\(3)))) # (\CPU1|PC|DOUT\(1)) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~533_combout\ & ( (!\CPU1|PC|DOUT\(1) & (\ROM1|memROM~1_combout\ & (\CPU1|PC|DOUT\(3) & !\CPU1|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011011111111111111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|PC|ALT_INV_DOUT\(1),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU1|PC|ALT_INV_DOUT\(3),
	datad => \CPU1|PC|ALT_INV_DOUT\(2),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~533_combout\,
	combout => \CPU1|MUX1|saida_MUX[3]~7_combout\);

\CPU1|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~13_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[3]~7_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))
-- \CPU1|ULA1|Add0~14\ = CARRY(( !\CPU1|MUX1|saida_MUX[3]~7_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(3) ) + ( \CPU1|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[3]~7_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(3),
	cin => \CPU1|ULA1|Add0~10\,
	sumout => \CPU1|ULA1|Add0~13_sumout\,
	cout => \CPU1|ULA1|Add0~14\);

\CPU1|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~13_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[3]~7_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(3));

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(3),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~534_combout\,
	datab => \RAM1|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~536_combout\);

\CPU1|MUX1|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[4]~6_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~536_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\CPU1|PC|DOUT\(3)) # ((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~536_combout\ & ( 
-- (!\ROM1|memROM~1_combout\) # (((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~536_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010010111111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~536_combout\,
	combout => \CPU1|MUX1|saida_MUX[4]~6_combout\);

\CPU1|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~17_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[4]~6_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))
-- \CPU1|ULA1|Add0~18\ = CARRY(( !\CPU1|MUX1|saida_MUX[4]~6_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(4) ) + ( \CPU1|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[4]~6_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(4),
	cin => \CPU1|ULA1|Add0~14\,
	sumout => \CPU1|ULA1|Add0~17_sumout\,
	cout => \CPU1|ULA1|Add0~18\);

\CPU1|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~17_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[4]~6_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(4));

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(4),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~537_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~539_combout\);

\CPU1|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[5]~5_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~539_combout\ & ( (!\ROM1|memROM~1_combout\) # (((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(1))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~539_combout\ & ( 
-- (!\ROM1|memROM~1_combout\) # (((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~539_combout\ & ( (\ROM1|memROM~1_combout\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000010111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~539_combout\,
	combout => \CPU1|MUX1|saida_MUX[5]~5_combout\);

\CPU1|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~21_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[5]~5_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))
-- \CPU1|ULA1|Add0~22\ = CARRY(( !\CPU1|MUX1|saida_MUX[5]~5_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(5) ) + ( \CPU1|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(5),
	cin => \CPU1|ULA1|Add0~18\,
	sumout => \CPU1|ULA1|Add0~21_sumout\,
	cout => \CPU1|ULA1|Add0~22\);

\CPU1|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~21_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(5));

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(5),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~541_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~540_combout\,
	datab => \RAM1|ALT_INV_ram~541_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~542_combout\);

\CPU1|MUX1|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[6]~4_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~542_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\CPU1|PC|DOUT\(3)) # ((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2)))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~542_combout\ & ( 
-- (!\ROM1|memROM~1_combout\) # (((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~542_combout\ & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & \CPU1|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010010111111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \CPU1|MUX1|saida_MUX[6]~4_combout\);

\CPU1|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~25_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[6]~4_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))
-- \CPU1|ULA1|Add0~26\ = CARRY(( !\CPU1|MUX1|saida_MUX[6]~4_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(6) ) + ( \CPU1|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(6),
	cin => \CPU1|ULA1|Add0~22\,
	sumout => \CPU1|ULA1|Add0~25_sumout\,
	cout => \CPU1|ULA1|Add0~26\);

\CPU1|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~25_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[6]~4_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(6));

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(6),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \RAM1|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( !\ROM1|memROM~11_combout\ & ( !\ROM1|memROM~2_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM1|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~543_combout\,
	datab => \RAM1|ALT_INV_ram~544_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~545_combout\);

\CPU1|MUX1|saida_MUX[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|MUX1|saida_MUX[7]~3_combout\ = ( \CPU1|PC|DOUT\(0) & ( \RAM1|ram~545_combout\ & ( (!\ROM1|memROM~1_combout\) # (((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(1))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( !\CPU1|PC|DOUT\(0) & ( \RAM1|ram~545_combout\ & ( 
-- (!\ROM1|memROM~1_combout\) # (((\CPU1|PC|DOUT\(1)) # (\CPU1|PC|DOUT\(2))) # (\CPU1|PC|DOUT\(3))) ) ) ) # ( \CPU1|PC|DOUT\(0) & ( !\RAM1|ram~545_combout\ & ( (\ROM1|memROM~1_combout\ & (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000010111111111111111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~545_combout\,
	combout => \CPU1|MUX1|saida_MUX[7]~3_combout\);

\CPU1|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU1|ULA1|Add0~29_sumout\ = SUM(( !\CPU1|MUX1|saida_MUX[7]~3_combout\ $ (((\CPU1|DECODER1|Equal10~1_combout\) # (\CPU1|DECODER1|saida[4]~1_combout\))) ) + ( \CPU1|REGA|DOUT\(7) ) + ( \CPU1|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU1|DECODER1|ALT_INV_saida[4]~1_combout\,
	datab => \CPU1|DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \CPU1|MUX1|ALT_INV_saida_MUX[7]~3_combout\,
	dataf => \CPU1|REGA|ALT_INV_DOUT\(7),
	cin => \CPU1|ULA1|Add0~26\,
	sumout => \CPU1|ULA1|Add0~29_sumout\);

\CPU1|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|ULA1|Add0~29_sumout\,
	asdata => \CPU1|MUX1|saida_MUX[7]~3_combout\,
	sload => \CPU1|ULA1|Equal1~0_combout\,
	ena => \CPU1|DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU1|REGA|DOUT\(7));

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU1|REGA|DOUT\(7),
	ena => \DEC2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\DEC1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal7~1_combout\ = ( \CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & ((!\CPU1|PC|DOUT\(2)) # (!\CPU1|PC|DOUT\(1))))) ) ) # ( !\CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) $ (!\CPU1|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010001000100000000010100000101000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \DEC1|Equal7~1_combout\);

\DEC1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC1|Equal7~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DEC1|Equal7~0_combout\);

\FF1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~2_combout\ = ( \CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & (!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & !\CPU1|PC|DOUT\(1)))) ) ) # ( !\CPU1|PC|DOUT\(0) & ( (\ROM1|memROM~1_combout\ & ((!\CPU1|PC|DOUT\(3) & (\CPU1|PC|DOUT\(2) & 
-- \CPU1|PC|DOUT\(1))) # (\CPU1|PC|DOUT\(3) & (!\CPU1|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010100000001000000000000010000000101000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU1|PC|ALT_INV_DOUT\(3),
	datac => \CPU1|PC|ALT_INV_DOUT\(2),
	datad => \CPU1|PC|ALT_INV_DOUT\(1),
	datae => \CPU1|PC|ALT_INV_DOUT\(0),
	combout => \FF1|DOUT~2_combout\);

\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \FF1|DOUT~0_combout\);

\FF1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~1_combout\ = ( \FF1|DOUT~2_combout\ & ( \FF1|DOUT~0_combout\ & ( (!\DEC1|Equal7~1_combout\ & (\FF1|DOUT~q\)) # (\DEC1|Equal7~1_combout\ & ((!\DEC1|Equal7~0_combout\ & (\FF1|DOUT~q\)) # (\DEC1|Equal7~0_combout\ & ((\CPU1|REGA|DOUT\(0)))))) ) ) ) 
-- # ( !\FF1|DOUT~2_combout\ & ( \FF1|DOUT~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( \FF1|DOUT~2_combout\ & ( !\FF1|DOUT~0_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( !\FF1|DOUT~2_combout\ & ( !\FF1|DOUT~0_combout\ & ( \FF1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF1|ALT_INV_DOUT~q\,
	datab => \CPU1|REGA|ALT_INV_DOUT\(0),
	datac => \DEC1|ALT_INV_Equal7~1_combout\,
	datad => \DEC1|ALT_INV_Equal7~0_combout\,
	datae => \FF1|ALT_INV_DOUT~2_combout\,
	dataf => \FF1|ALT_INV_DOUT~0_combout\,
	combout => \FF1|DOUT~1_combout\);

\FF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF1|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|DOUT~q\);

\DEC2|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Equal7~0_combout\ = (!\ROM1|memROM~4_combout\ & (\DEC1|Equal7~1_combout\ & (\DEC1|Equal7~0_combout\ & \FF1|DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \DEC1|ALT_INV_Equal7~1_combout\,
	datac => \DEC1|ALT_INV_Equal7~0_combout\,
	datad => \FF1|ALT_INV_DOUT~2_combout\,
	combout => \DEC2|Equal7~0_combout\);

\FF2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF2|DOUT~0_combout\ = (!\ROM1|memROM~2_combout\ & (\FF2|DOUT~q\)) # (\ROM1|memROM~2_combout\ & ((!\DEC2|Equal7~0_combout\ & (\FF2|DOUT~q\)) # (\DEC2|Equal7~0_combout\ & ((\CPU1|REGA|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FF2|ALT_INV_DOUT~q\,
	datab => \CPU1|REGA|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \DEC2|ALT_INV_Equal7~0_combout\,
	combout => \FF2|DOUT~0_combout\);

\FF2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FF2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|DOUT~q\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


