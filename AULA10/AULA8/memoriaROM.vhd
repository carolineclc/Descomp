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
tmp(13) := x"5" & '0' & x"02";	-- STA @2 	#VALOR DAS UNIDADES
tmp(14) := x"5" & '0' & x"03";	-- STA @3 	#VALOR DAS DEZENAS
tmp(15) := x"5" & '0' & x"04";	-- STA @4 	#VALOR DAS CENTENAS
tmp(16) := x"4" & '0' & x"0A";	-- LDI $10
tmp(17) := x"5" & '0' & x"0A";	-- STA @10 	#LIMITE DA UNIDADE
tmp(18) := x"4" & '0' & x"01";	-- LDI $1
tmp(19) := x"5" & '0' & x"01";	-- STA @1 	#CONSTANTE 1
tmp(20) := x"1" & '1' & x"60";	-- LDA @352 	#LE O VALOR DO BOTAO DE INCREMENTO
tmp(21) := x"8" & '0' & x"00";	-- CEQ @0 	#COMPARA SE O VALOR DE KEY 0 E 0
tmp(22) := x"7" & '0' & x"18";	-- JEQ @24
tmp(23) := x"9" & '0' & x"21";	-- JSR @33
tmp(24) := x"1" & '0' & x"02";	-- LDA @2
tmp(25) := x"5" & '1' & x"20";	-- STA @288 	#ESCREVE O VALOR NO DISPLAY HEX0
tmp(26) := x"1" & '0' & x"03";	-- LDA @3
tmp(27) := x"5" & '1' & x"21";	-- STA @289 	#ESCREVE O VALOR NO DISPLAY HEX1
tmp(28) := x"1" & '0' & x"04";	-- LDA @4
tmp(29) := x"5" & '1' & x"22";	-- STA @290 	#ESCREVE O VALOR NO DISPLAY HEX2
tmp(30) := x"1" & '0' & x"05";	-- LDA @5
tmp(31) := x"5" & '1' & x"23";	-- STA @291 	#ESCREVE O VALOR NO DISPLAY HEX3
tmp(32) := x"6" & '0' & x"14";	-- JMP @20
tmp(33) := x"5" & '1' & x"FF";	-- STA @511
tmp(34) := x"1" & '0' & x"02";	-- LDA @2
tmp(35) := x"2" & '0' & x"01";	-- SOMA @1
tmp(36) := x"5" & '0' & x"02";	-- STA @2
tmp(37) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(38) := x"7" & '0' & x"28";	-- JEQ @40
tmp(39) := x"A" & '0' & x"00";	-- RET
tmp(40) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA UNIDADE
tmp(41) := x"5" & '0' & x"02";	-- STA @2
tmp(42) := x"1" & '0' & x"03";	-- LDA @3
tmp(43) := x"2" & '0' & x"01";	-- SOMA @1
tmp(44) := x"5" & '0' & x"03";	-- STA @3
tmp(45) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(46) := x"7" & '0' & x"30";	-- JEQ @48
tmp(47) := x"A" & '0' & x"00";	-- RET
tmp(48) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA DEZENA
tmp(49) := x"5" & '0' & x"03";	-- STA @3
tmp(50) := x"1" & '0' & x"04";	-- LDA @4
tmp(51) := x"2" & '0' & x"01";	-- SOMA @1
tmp(52) := x"5" & '0' & x"04";	-- STA @4
tmp(53) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(54) := x"7" & '0' & x"38";	-- JEQ @56
tmp(55) := x"A" & '0' & x"00";	-- RET
tmp(56) := x"1" & '0' & x"00";	-- LDA @0 	#ZERA A CASA DA CENTENA
tmp(57) := x"5" & '0' & x"03";	-- STA @3
tmp(58) := x"1" & '0' & x"04";	-- LDA @4
tmp(59) := x"2" & '0' & x"01";	-- SOMA @1
tmp(60) := x"5" & '0' & x"04";	-- STA @4
tmp(61) := x"8" & '0' & x"0A";	-- CEQ @10
tmp(62) := x"7" & '0' & x"28";	-- JEQ @40
tmp(63) := x"A" & '0' & x"00";	-- RET






        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;