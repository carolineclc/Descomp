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

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
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
  
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0) := x"4" & '0' & x"01";   -- LDI $1               #Carrega o acumulador com o valor 1
		  tmp(1) := x"5" & '0' & x"00";   -- STA @0               #Armazena o valor do acumulador na posição zero da memória (MEM[0])
		  tmp(2) := x"2" & '0' & x"00";   -- SOMA @0              #Soma o valor atual do acumulador com o conteúdo de MEM[0]
		  tmp(3) := x"5" & '0' & x"01";   -- STA @1               #Armazena o valor do acumulador em MEM[1]
		  tmp(4) := x"1" & '0' & x"00";   -- LDA @0               #Carrega o acumulador com o valor de MEM[0]
		  tmp(5) := x"5" & '1' & x"01";   -- STA @257             #Armazena 1 no LEDR8
		  tmp(6) := x"5" & '1' & x"02";   -- STA @258             #Armazena 1 no LEDR9
		  tmp(7) := x"4" & '0' & x"55";   -- LDI $85              #Carrega o acumulador
		  tmp(8) := x"5" & '1' & x"00";   -- STA @256             #Armazena 85 em LEDR0 até LEDR7
		  tmp(9) := x"4" & '0' & x"AA";   -- LDI $170             #Carrega o acumulador
		  tmp(10) := x"5" & '1' & x"00";  -- STA @256             #Armazena 170 em LEDR0 até LEDR7
		  tmp(11) := x"6" & '0' & x"0B";  -- JMP @11              #Fim. Deve ficar neste laço
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;