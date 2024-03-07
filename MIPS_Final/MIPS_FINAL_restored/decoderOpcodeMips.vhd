library ieee;
use ieee.std_logic_1164.all;

entity unidadeDeControle is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of unidadeDeControle is

  constant TIPO_R  : std_logic_vector(5 downto 0) := "000000";
  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ  : std_logic_vector(5 downto 0) := "000100";
  constant JMP  : std_logic_vector(5 downto 0) := "000010";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant BNE : std_logic_vector(5 downto 0) := "000101";
  constant JALAS  : std_logic_vector(5 downto 0) := "000011";

  
  begin
  
  saida <= "00110010000000" when opcode = TIPO_R else
           "00011000010010" when opcode = LW else
           "00001000000001" when opcode = SW else
           "00000001000100" when opcode = BEQ else
			  "10000000000000" when opcode = JMP else
			  "00011000000000" when opcode = ADDI else
			  "00011011000000" when opcode = ANDI else
			  "00011100000000" when opcode = ORI else
			  "00011101000000" when opcode = SLTI else
			  "00011000100000" when opcode = LUI else
			  "00000001001100" when opcode = BNE else
			  "11010000110000" when opcode = JALAS else
			  "00000000000000";

end architecture;
