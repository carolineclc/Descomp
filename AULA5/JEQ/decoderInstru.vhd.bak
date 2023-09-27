library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(6 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant CLRA : std_logic_vector(3 downto 0) := "1111";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";

  begin
saida <= "0000000" when opcode = NOP else
         "0011010" when opcode = LDA else
         "0010100" when opcode = SOMA else
         "0010000" when opcode = SUB else
         "0001000" when opcode = CLRA else
			"0111000" when opcode = LDI else
			"0000001" when opcode = STA else
			"1000000" when opcode = JMP else
         "0000000";  -- NOP para os opcodes Indefinidos
end architecture;