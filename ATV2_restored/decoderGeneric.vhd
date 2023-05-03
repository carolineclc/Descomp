library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada_dec : in std_logic_vector(3 downto 0);
         saida_dec : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";

  begin
saida_dec <= "000000000" when entrada_dec = NOP else
         "001001000" when entrada_dec = LDA else
         "001101000" when entrada_dec = SOMA else
         "001001000" when entrada_dec = SUB else
			"011010000" when entrada_dec = LDI else
			"000010001" when entrada_dec = STA  else
			"100000000"  when entrada_dec = JMP else
         "000000000";  -- NOP para os entradas Indefinidas
end architecture;