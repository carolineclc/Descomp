library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  constant NOP  : std_logic_vector(14 downto 0) := "000000000000000";
  constant LDA  : std_logic_vector(14 downto 0) := "000100000000000";
  constant SOMA : std_logic_vector(14 downto 0) := "001000000000000";
  constant SUB  : std_logic_vector(14 downto 0) := "001100000000000";
  constant LDI  : std_logic_vector(14 downto 0) := "010000000000000";
  constant STA  : std_logic_vector(14 downto 0) := "010100000000000";
  constant JMP  : std_logic_vector(14 downto 0) := "011000000000000";
  constant JEQ  : std_logic_vector(14 downto 0) := "011100000000000";
  constant CEQ  : std_logic_vector(14 downto 0) := "100000000000000";
  constant JSR  : std_logic_vector(14 downto 0) := "100100000000000";
  constant RET  : std_logic_vector(14 downto 0) := "101000000000000";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  


  begin
      -- Palavra de Controle = SelMUX, Habilita101000000000000_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:

tmp(0) := "010000000000000";	-- LDI $0
tmp(1) := "010100100100000";	-- STA @288
tmp(2) := "010100100100001";	-- STA @289
tmp(3) := "010100100100010";	-- STA @290
tmp(4) := "010100100100011";	-- STA @291
tmp(5) := "010100100100100";	-- STA @292
tmp(6) := "010100100100101";	-- STA @293
tmp(7) := "010100100000000";	-- STA @256
tmp(8) := "010100100000001";	-- STA @257
tmp(9) := "010100100000010";	-- STA @258
tmp(10) := "010100111111111";	-- STA @511
tmp(11) := "010100111111110";	-- STA @510
tmp(12) := "010100000000000";	-- STA @0 	#CONSTANTE 0
tmp(13) := "010100000000010";	-- STA @2 	#ZERA O VALOR DO NUMERO DA UNIDADE, CENTENA, ETC.
tmp(14) := "010100000000011";	-- STA @3 
tmp(15) := "010100000000100";	-- STA @4 
tmp(16) := "010100000000101";	-- STA @5
tmp(17) := "010100000000110";	-- STA @6
tmp(18) := "010100000000111";	-- STA @7
tmp(19) := "010000000001010";	-- LDI $10
tmp(20) := "010100000001010";	-- STA @10 	#LIMITE DA UNIDADE EM 10
tmp(21) := "010000000000110";	-- LDI $6
tmp(22) := "010100000001011";	-- STA @11 	#LIMITE DA UNIDADE EM 6
tmp(23) := "010000000000010";	-- LDI $2
tmp(24) := "010100000001100";	-- STA @12 	#LIMITE DA UNIDADE EM 2
tmp(25) := "010000000000100";	-- LDI $4
tmp(26) := "010100000001101";	-- STA @13 	#LIMITE DA UNIDADE EM 4
tmp(27) := "010000000000001";	-- LDI $1
tmp(28) := "010100000000001";	-- STA @1 	#CONSTANTE 1
tmp(29) := "000100101100100";	-- LDA @356
tmp(30) := "100000000000001";	-- CEQ @1
tmp(31) := "011100000000000";	-- JEQ @0
tmp(32) := "000100101000000";	-- LDA @320
tmp(33) := "100000000000001";	-- CEQ @1
tmp(34) := "011100010011110";	-- JEQ @158
tmp(35) := "000100101100000";	-- LDA @352
tmp(36) := "100000000000000";	-- CEQ @0
tmp(37) := "011100000100111";	-- JEQ @39 	#LE O KEY 0. SE ATIVO, NAO PULA CHAMADA DE FUNCAO DE AJUSTE DE MIN
tmp(38) := "100100001101110";	-- JSR @110
tmp(39) := "000100101100001";	-- LDA @353
tmp(40) := "100000000000000";	-- CEQ @0
tmp(41) := "011100000101011";	-- JEQ @43 	#LE O KEY 1. SE ATIVO, NAO PULA CHAMADA DE FUNCAO DE AJUSTE DE HR
tmp(42) := "100100010000110";	-- JSR @134
tmp(43) := "000100110000001";	-- LDA @385 	#LE O VALOR DO RELOGIO
tmp(44) := "100000000000000";	-- CEQ @0 	#COMPARA SE O VALOR DO RELOGIO E 0
tmp(45) := "011100000101111";	-- JEQ @47 	#SE SIM APENAS ATUALIZA
tmp(46) := "100100000111100";	-- JSR @60 	#SE NAO, ROTINA DE INCREMENTO
tmp(47) := "000100000000010";	-- LDA @2
tmp(48) := "010100100100000";	-- STA @288 	#ESCREVE O VALOR NO DISPLAY HEX0
tmp(49) := "000100000000011";	-- LDA @3
tmp(50) := "010100100100001";	-- STA @289 	#ESCREVE O VALOR NO DISPLAY HEX1
tmp(51) := "000100000000100";	-- LDA @4
tmp(52) := "010100100100010";	-- STA @290 	#ESCREVE O VALOR NO DISPLAY HEX2
tmp(53) := "000100000000101";	-- LDA @5
tmp(54) := "010100100100011";	-- STA @291 	#ESCREVE O VALOR NO DISPLAY HEX3
tmp(55) := "000100000000110";	-- LDA @6
tmp(56) := "010100100100100";	-- STA @292 	#ESCREVE O VALOR NO DISPLAY HEX4
tmp(57) := "000100000000111";	-- LDA @7
tmp(58) := "010100100100101";	-- STA @293 	#ESCREVE O VALOR NO DISPLAY HEX5
tmp(59) := "011000000011101";	-- JMP @29
tmp(60) := "010000000000000";	-- LDI R0 $0
tmp(61) := "010100100000010";	-- STA R0 @258
tmp(62) := "010100110000011";	-- STA @387 
tmp(63) := "000100000000010";	-- LDA @2
tmp(64) := "000111000000000";	-- LDA R3 @0
tmp(65) := "101100000000001";	-- ADDI $1
tmp(66) := "010100000000010";	-- STA @2
tmp(67) := "100000000001010";	-- CEQ @10
tmp(68) := "011100001000110";	-- JEQ @70 	#Verificacao de overflow da unidade 1 dos segundos.
tmp(69) := "101000000000000";	-- RET
tmp(70) := "010111000000010";	-- STA R3 @2
tmp(71) := "000100000000011";	-- LDA @3
tmp(72) := "101100000000001";	-- ADDI $1
tmp(73) := "010100000000011";	-- STA @3
tmp(74) := "100000000001011";	-- CEQ @11
tmp(75) := "011100001001101";	-- JEQ @77 	#Verificacao de overflow da segunda casa dos segundos.
tmp(76) := "101000000000000";	-- RET
tmp(77) := "010111000000011";	-- STA R3 @3
tmp(78) := "000100000000100";	-- LDA @4
tmp(79) := "101100000000001";	-- ADDI $1
tmp(80) := "010100000000100";	-- STA @4
tmp(81) := "100000000001010";	-- CEQ @10
tmp(82) := "011100001010100";	-- JEQ @84 	#Verificacao de overflow da primeira casa dos minutos.
tmp(83) := "101000000000000";	-- RET
tmp(84) := "010111000000100";	-- STA R3 @4
tmp(85) := "000100000000101";	-- LDA @5
tmp(86) := "101100000000001";	-- ADDI $1
tmp(87) := "010100000000101";	-- STA @5
tmp(88) := "100000000001011";	-- CEQ @11
tmp(89) := "011100001011011";	-- JEQ @91 	#Verificacao de overflow da segunda casa dos minutos.
tmp(90) := "101000000000000";	-- RET
tmp(91) := "010111000000101";	-- STA R3 @5
tmp(92) := "000100000000110";	-- LDA @6
tmp(93) := "101100000000001";	-- ADDI $1
tmp(94) := "010100000000110";	-- STA @6
tmp(95) := "000101000000111";	-- LDA R1 @7 	#verifica se a segunda casa da hora eh 2. Se sim, verifica se a primeira eh 4
tmp(96) := "100001000001100";	-- CEQ R1 @12
tmp(97) := "011100001101010";	-- JEQ @106
tmp(98) := "100000000001010";	-- CEQ @10
tmp(99) := "011100001100101";	-- JEQ @101 	#Verificacao de overflow da primeira casa das horas.
tmp(100) := "101000000000000";	-- RET
tmp(101) := "010111000000110";	-- STA R3 @6
tmp(102) := "000100000000111";	-- LDA @7
tmp(103) := "101100000000001";	-- ADDI @1
tmp(104) := "010100000000111";	-- STA @7
tmp(105) := "101000000000000";	-- RET
tmp(106) := "000100000000110";	-- LDA @6
tmp(107) := "100000000001101";	-- CEQ @13
tmp(108) := "011100000000000";	-- JEQ @0 	#Se a segunda casa da hora eh 2 e a primeira eh 4, zera
tmp(109) := "101000000000000";	-- RET
tmp(110) := "010100111111111";	-- STA @511
tmp(111) := "000101101000010";	-- LDA R1 @322
tmp(112) := "100001000000000";	-- CEQ R1 @0
tmp(113) := "011100001001110";	-- JEQ @78
tmp(114) := "011000001110011";	-- JMP @115
tmp(115) := "000100000000100";	-- LDA R0 @4
tmp(116) := "100000000000000";	-- CEQ R0 @0
tmp(117) := "011100001111001";	-- JEQ @121 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(118) := "110000000000001";	-- SUBI R0 $1
tmp(119) := "010100000000100";	-- STA R0 @4
tmp(120) := "101000000000000";	-- RET
tmp(121) := "010000000001001";	-- LDI $9 	#muda a ultima unidade para 9
tmp(122) := "010100000000100";	-- STA @4
tmp(123) := "000100000000101";	-- LDA R0 @5
tmp(124) := "100000000000000";	-- CEQ R0 @0
tmp(125) := "011100010000001";	-- JEQ @129 	#se tenta subtrair quando zero, vai para tratamento especial
tmp(126) := "110000000000001";	-- SUBI R0 $1
tmp(127) := "010100000000101";	-- STA R0 @5
tmp(128) := "101000000000000";	-- RET
tmp(129) := "010000000000101";	-- LDI R0 $5
tmp(130) := "010100000000101";	-- STA R0 @5 	#transforma em 5
tmp(131) := "010000000001001";	-- LDI R0 $9
tmp(132) := "010100000000100";	-- STA R0 @4 	#transforma em 9 e retorna
tmp(133) := "101000000000000";	-- RET
tmp(134) := "010100111111110";	-- STA @510 	# para as horas, faz o mesmo tratamento que os minutos, so que agora para a casa das horas
tmp(135) := "000101101000010";	-- LDA R1 @322
tmp(136) := "100001000000000";	-- CEQ R1 @0
tmp(137) := "011100001011100";	-- JEQ @92
tmp(138) := "011000010001011";	-- JMP @139
tmp(139) := "000100000000110";	-- LDA R0 @6
tmp(140) := "100000000000000";	-- CEQ R0 @0
tmp(141) := "011100010010001";	-- JEQ R0 @145 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(142) := "110000000000001";	-- SUBI R0 $1
tmp(143) := "010100000000110";	-- STA R0 @6
tmp(144) := "101000000000000";	-- RET
tmp(145) := "010000000001001";	-- LDI R0 $9 	#muda a ultima unidade para 9
tmp(146) := "010100000000110";	-- STA R0 @6
tmp(147) := "000100000000111";	-- LDA R0 @7
tmp(148) := "100000000000000";	-- CEQ R0 @0
tmp(149) := "011100010011001";	-- JEQ @153 	#se tenta subtrair quando zero, vai para tratamento especial
tmp(150) := "110000000000001";	-- SUBI R0 $1
tmp(151) := "010100000000111";	-- STA R0 @7
tmp(152) := "101000000000000";	-- RET
tmp(153) := "010000000000010";	-- LDI $2
tmp(154) := "010100000000111";	-- STA @7 	#transforma em 2
tmp(155) := "010000000000011";	-- LDI $3
tmp(156) := "010100000000110";	-- STA @6 	#transforma em 4 e retorna
tmp(157) := "101000000000000";	-- RET
tmp(158) := "000100110000001";	-- LDA @385 	#LE O VALOR DO RELOGIO
tmp(159) := "100000000000000";	-- CEQ @0 	#COMPARA SE O VALOR DO RELOGIO E 0
tmp(160) := "011100000101111";	-- JEQ @47 	#SE NAO APENAS ATUALIZA
tmp(161) := "100100010100011";	-- JSR @163 	#SE SIM, ROTINA DE REGRESSIVA
tmp(162) := "011000000101111";	-- JMP @47
tmp(163) := "010100110000011";	-- STA R0 @387 
tmp(164) := "010001000000000";	-- LDI R1 $0
tmp(165) := "001001000000010";	-- SOMA R1 @2
tmp(166) := "001001000000011";	-- SOMA R1 @3
tmp(167) := "001001000000100";	-- SOMA R1 @4
tmp(168) := "001001000000101";	-- SOMA R1 @5
tmp(169) := "001001000000110";	-- SOMA R1 @6
tmp(170) := "001001000000111";	-- SOMA R1 @7
tmp(171) := "100001000000000";	-- CEQ R1 @0
tmp(172) := "011100011011000";	-- JEQ @216 	#ve se a soma de todos é 0, se sim, acabou a contagem e apenas retorna
tmp(173) := "010011000001001";	-- LDI R3 $9
tmp(174) := "010010000000101";	-- LDI R2 $5
tmp(175) := "000100000000010";	-- LDA R0 @2
tmp(176) := "100000000000000";	-- CEQ R0 @0
tmp(177) := "011100010110101";	-- JEQ R0 @181 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(178) := "110000000000001";	-- SUBI R0 $1
tmp(179) := "010100000000010";	-- STA R0 @2
tmp(180) := "101000000000000";	-- RET
tmp(181) := "010111000000010";	-- STA R3 @2
tmp(182) := "000100000000011";	-- LDA R0 @3
tmp(183) := "100000000000000";	-- CEQ R0 @0
tmp(184) := "011100010111100";	-- JEQ R0 @188 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(185) := "110000000000001";	-- SUBI R0 $1
tmp(186) := "010100000000011";	-- STA R0 @3
tmp(187) := "101000000000000";	-- RET
tmp(188) := "010110000000011";	-- STA R2 @3
tmp(189) := "000100000000100";	-- LDA R0 @4
tmp(190) := "100000000000000";	-- CEQ R0 @0
tmp(191) := "011100011000011";	-- JEQ R0 @195 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(192) := "110000000000001";	-- SUBI R0 $1
tmp(193) := "010100000000100";	-- STA R0 @4
tmp(194) := "101000000000000";	-- RET
tmp(195) := "010111000000100";	-- STA R3 @4
tmp(196) := "000100000000101";	-- LDA R0 @5
tmp(197) := "100000000000000";	-- CEQ R0 @0
tmp(198) := "011100011001010";	-- JEQ R0 @202 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(199) := "110000000000001";	-- SUBI R0 $1
tmp(200) := "010100000000101";	-- STA R0 @5
tmp(201) := "101000000000000";	-- RET
tmp(202) := "010110000000101";	-- STA R2 @5
tmp(203) := "000100000000110";	-- LDA R0 @6
tmp(204) := "100000000000000";	-- CEQ R0 @0
tmp(205) := "011100011010001";	-- JEQ R0 @209 	#se tenta subtrair quando zero, subtrai na proxima unidade
tmp(206) := "110000000000001";	-- SUBI R0 $1
tmp(207) := "010100000000110";	-- STA R0 @6
tmp(208) := "101000000000000";	-- RET
tmp(209) := "010111000000110";	-- STA R3 @6
tmp(210) := "000100000000111";	-- LDA R0 @7
tmp(211) := "100000000000000";	-- CEQ R0 @0
tmp(212) := "011100011011010";	-- JEQ R0 @218 	#se tenta subtrair quando zero, nao faz nada
tmp(213) := "110000000000001";	-- SUBI R0 $1
tmp(214) := "010100000000111";	-- STA R0 @7
tmp(215) := "011000011011010";	-- JMP @218
tmp(216) := "010000000000001";	-- LDI R0 $1
tmp(217) := "010100100000010";	-- STA R0 @258
tmp(218) := "101000000000000";	-- RET





        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;