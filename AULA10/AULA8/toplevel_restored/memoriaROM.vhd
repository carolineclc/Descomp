library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  


  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
tmp(0) := x"4" & '0' & x"00";	-- LDI $0
tmp(1) := x"5" & '1' & x"20";	-- STA @288
tmp(2) := x"5" & '1' & x"21";	-- STA @289
tmp(3) := x"5" & '1' & x"22";	-- STA @290
tmp(4) := x"5" & '1' & x"23";	-- STA @291
tmp(5) := x"5" & '1' & x"24";	-- STA @292
tmp(6) := x"5" & '1' & x"25";	-- STA @293
tmp(7) := x"5" & '1' & x"00";	-- STA @256
tmp(8) := x"5" & '1' & x"01";	-- STA @257
tmp(9) := x"5" & '1' & x"02";	-- STA @258
tmp(10) := x"5" & '1' & x"FF";	-- STA @511
tmp(11) := x"5" & '1' & x"FE";	-- STA @510
tmp(12) := x"5" & '0' & x"00";	-- STA @0 	#CONSTANTE 0
tmp(13) := x"5" & '0' & x"02";	-- STA @2 	#ZERA O VALOR DO NUMERO DA UNIDADE, CENTENA, ETC.
tmp(14) := x"5" & '0' & x"03";	-- STA @3 
tmp(15) := x"5" & '0' & x"04";	-- STA @4 
tmp(16) := x"5" & '0' & x"05";	-- STA @5
tmp(17) := x"5" & '0' & x"06";	-- STA @6
tmp(18) := x"5" & '0' & x"07";	-- STA @7
tmp(19) := x"4" & '0' & x"0A";	-- LDI $10
tmp(20) := x"5" & '0' & x"0A";	-- STA @10 	#LIMITE DA UNIDADE EM 10
tmp(21) := x"4" & '0' & x"01";	-- LDI $1
tmp(22) := x"5" & '0' & x"01";	-- STA @1 	#CONSTANTE 1
tmp(23) := x"1" & '1' & x"64";	-- LDA @356
tmp(24) := x"8" & '0' & x"01";	-- CEQ @1
tmp(25) := x"7" & '0' & x"00";	-- JEQ @0
tmp(26) := x"1" & '1' & x"42";	-- LDA @322 	#LE O SWITCH 9 
tmp(27) := x"8" & '0' & x"01";	-- CEQ @1
tmp(28) := x"7" & '0' & x"21";	-- JEQ @33
tmp(29) := x"1" & '1' & x"60";	-- LDA @352 	#LE O VALOR DO BOTAO DE INCREMENTO
tmp(30) := x"8" & '0' & x"00";	-- CEQ @0 	#COMPARA SE O VALOR DE KEY 0 E 0
tmp(31) := x"7" & '0' & x"25";	-- JEQ @37
tmp(32) := x"9" & '0' & x"32";	-- JSR @50
tmp(33) := x"1" & '1' & x"60";	-- LDA @352 	#LE O VALOR DO BOTAO DE INCREMENTO
tmp(34) := x"8" & '0' & x"00";	-- CEQ @0 	#COMPARA SE O VALOR DE KEY 0 E 0
tmp(35) := x"7" & '0' & x"25";	-- JEQ @37
tmp(36) := x"9" & '0' & x"61";	-- JSR @97
tmp(37) := x"1" & '0' & x"02";	-- LDA @2
tmp(38) := x"5" & '1' & x"20";	-- STA @288 	#ESCREVE O VALOR NO DISPLAY HEX0
tmp(39) := x"1" & '0' & x"03";	-- LDA @3
tmp(40) := x"5" & '1' & x"21";	-- STA @289 	#ESCREVE O VALOR NO DISPLAY HEX1
tmp(41) := x"1" & '0' & x"04";	-- LDA @4
tmp(42) := x"5" & '1' & x"22";	-- STA @290 	#ESCREVE O VALOR NO DISPLAY HEX2
tmp(43) := x"1" & '0' & x"05";	-- LDA @5
tmp(44) := x"5" & '1' & x"23";	-- STA @291 	#ESCREVE O VALOR NO DISPLAY HEX3
tmp(45) := x"1" & '0' & x"06";	-- LDA @6
tmp(46) := x"5" & '1' & x"24";	-- STA @292 	#ESCREVE O VALOR NO DISPLAY HEX4
tmp(47) := x"1" & '0' & x"07";	-- LDA @7
tmp(48) := x"5" & '1' & x"25";	-- STA @293 	#ESCREVE O VALOR NO DISPLAY HEX5
tmp(49) := x"6" & '0' & x"17";	-- JMP @23
tmp(50) := x"5" & '1' & x"FF";	-- STA @511
tmp(51) := x"1" & '0' & x"02";	-- LDA @2
tmp(52) := x"2" & '0' & x"01";	-- SOMA @1
tmp(53) := x"5" & '0' & x"02";	-- STA @2
tmp(54) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(55) := x"7" & '0' & x"39";	-- JEQ @57
tmp(56) := x"A" & '0' & x"00";	-- RET
tmp(57) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA UNIDADE
tmp(58) := x"5" & '0' & x"02";	-- STA @2
tmp(59) := x"1" & '0' & x"03";	-- LDA @3
tmp(60) := x"2" & '0' & x"01";	-- SOMA @1
tmp(61) := x"5" & '0' & x"03";	-- STA @3
tmp(62) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(63) := x"7" & '0' & x"41";	-- JEQ @65
tmp(64) := x"A" & '0' & x"00";	-- RET
tmp(65) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA DEZENA
tmp(66) := x"5" & '0' & x"03";	-- STA @3
tmp(67) := x"1" & '0' & x"04";	-- LDA @4
tmp(68) := x"2" & '0' & x"01";	-- SOMA @1
tmp(69) := x"5" & '0' & x"04";	-- STA @4
tmp(70) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(71) := x"7" & '0' & x"49";	-- JEQ @73
tmp(72) := x"A" & '0' & x"00";	-- RET
tmp(73) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA CENTENA
tmp(74) := x"5" & '0' & x"04";	-- STA @4
tmp(75) := x"1" & '0' & x"05";	-- LDA @5
tmp(76) := x"2" & '0' & x"01";	-- SOMA @1
tmp(77) := x"5" & '0' & x"05";	-- STA @5
tmp(78) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(79) := x"7" & '0' & x"51";	-- JEQ @81
tmp(80) := x"A" & '0' & x"00";	-- RET
tmp(81) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DO MILHAR
tmp(82) := x"5" & '0' & x"05";	-- STA @5
tmp(83) := x"1" & '0' & x"06";	-- LDA @6
tmp(84) := x"2" & '0' & x"01";	-- SOMA @1
tmp(85) := x"5" & '0' & x"06";	-- STA @6
tmp(86) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(87) := x"7" & '0' & x"59";	-- JEQ @89
tmp(88) := x"A" & '0' & x"00";	-- RET
tmp(89) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DO D. MILHAR
tmp(90) := x"5" & '0' & x"06";	-- STA @6
tmp(91) := x"1" & '0' & x"07";	-- LDA @7
tmp(92) := x"2" & '0' & x"01";	-- SOMA @1
tmp(93) := x"5" & '0' & x"07";	-- STA @7
tmp(94) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(95) := x"7" & '0' & x"00";	-- JEQ @0
tmp(96) := x"A" & '0' & x"00";	-- RET
tmp(97) := x"5" & '1' & x"FF";	-- STA @511
tmp(98) := x"1" & '0' & x"02";	-- LDA @2
tmp(99) := x"8" & '0' & x"00";	-- CEQ @0
tmp(100) := x"7" & '0' & x"68";	-- JEQ @104
tmp(101) := x"3" & '0' & x"01";	-- SUB @1
tmp(102) := x"5" & '0' & x"02";	-- STA @2
tmp(103) := x"A" & '0' & x"00";	-- RET
tmp(104) := x"4" & '0' & x"09";	-- LDI $9
tmp(105) := x"5" & '0' & x"02";	-- STA @2
tmp(106) := x"1" & '0' & x"03";	-- LDA @3
tmp(107) := x"8" & '0' & x"00";	-- CEQ @0
tmp(108) := x"7" & '0' & x"70";	-- JEQ @112
tmp(109) := x"3" & '0' & x"01";	-- SUB @1
tmp(110) := x"5" & '0' & x"03";	-- STA @3
tmp(111) := x"A" & '0' & x"00";	-- RET
tmp(112) := x"4" & '0' & x"09";	-- LDI $9
tmp(113) := x"5" & '0' & x"03";	-- STA @3
tmp(114) := x"1" & '0' & x"04";	-- LDA @4
tmp(115) := x"8" & '0' & x"00";	-- CEQ @0
tmp(116) := x"7" & '0' & x"78";	-- JEQ @120
tmp(117) := x"3" & '0' & x"01";	-- SUB @1
tmp(118) := x"5" & '0' & x"04";	-- STA @4
tmp(119) := x"A" & '0' & x"00";	-- RET
tmp(120) := x"4" & '0' & x"09";	-- LDI $9
tmp(121) := x"5" & '0' & x"04";	-- STA @4
tmp(122) := x"1" & '0' & x"05";	-- LDA @5
tmp(123) := x"8" & '0' & x"00";	-- CEQ @0
tmp(124) := x"7" & '0' & x"80";	-- JEQ @128
tmp(125) := x"3" & '0' & x"01";	-- SUB @1
tmp(126) := x"5" & '0' & x"05";	-- STA @5
tmp(127) := x"A" & '0' & x"00";	-- RET
tmp(128) := x"4" & '0' & x"09";	-- LDI $9
tmp(129) := x"5" & '0' & x"05";	-- STA @5
tmp(130) := x"1" & '0' & x"06";	-- LDA @6
tmp(131) := x"8" & '0' & x"00";	-- CEQ @0
tmp(132) := x"7" & '0' & x"88";	-- JEQ @136
tmp(133) := x"3" & '0' & x"01";	-- SUB @1
tmp(134) := x"5" & '0' & x"06";	-- STA @6
tmp(135) := x"A" & '0' & x"00";	-- RET
tmp(136) := x"4" & '0' & x"09";	-- LDI $9
tmp(137) := x"5" & '0' & x"06";	-- STA @6
tmp(138) := x"1" & '0' & x"07";	-- LDA @7
tmp(139) := x"8" & '0' & x"00";	-- CEQ @0
tmp(140) := x"7" & '0' & x"90";	-- JEQ @144
tmp(141) := x"3" & '0' & x"01";	-- SUB @1
tmp(142) := x"5" & '0' & x"07";	-- STA @7
tmp(143) := x"A" & '0' & x"00";	-- RET
tmp(144) := x"4" & '0' & x"09";	-- LDI $9
tmp(145) := x"5" & '0' & x"07";	-- STA @7
tmp(146) := x"A" & '0' & x"00";	-- RET

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;