library ieee;
use ieee.std_logic_1164.all;

entity decoder3x8 is
  port ( bloco : in std_logic_vector(2 downto 0);
         saida : out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of decoder3x8 is

  constant bloco0  : std_logic_vector(2 downto 0) := "000";
  constant bloco1  : std_logic_vector(2 downto 0) := "001";
  constant bloco2  : std_logic_vector(2 downto 0) := "010";
  constant bloco3  : std_logic_vector(2 downto 0) := "011";
  constant bloco4  : std_logic_vector(2 downto 0) := "100";
  constant bloco5  : std_logic_vector(2 downto 0) := "101";
  constant bloco6  : std_logic_vector(2 downto 0) := "110";
  constant bloco7  : std_logic_vector(2 downto 0) := "111";
  
  begin
saida <= "00000001" when bloco = bloco0 else
         "00000010" when bloco = bloco1 else
         "00000100" when bloco = bloco2 else
         "00001000" when bloco = bloco3 else
         "00010000" when bloco = bloco4 else
			"00100000" when bloco = bloco5 else
			"01000000" when bloco = bloco6 else
			"10000000" when bloco = bloco7;  -- NOP para os opcodes Indefinidos
end architecture;