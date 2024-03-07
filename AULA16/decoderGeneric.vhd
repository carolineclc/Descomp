library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  generic (
    larguraOpCode: natural := 6;
    larguraFunct: natural := 6;
    larguraSinaisControle: natural := 12
  );

  port ( opcode : in std_logic_vector(larguraOpCode-1 downto 0);
         funct : in std_logic_vector(larguraFunct-1 downto 0);
         saida : out std_logic_vector(larguraSinaisControle-1 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";

  constant LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant J   : std_logic_vector(larguraOpCode-1 downto 0) := "000010";

  begin
    saida <="011000010000" when (opcode = "000000" and funct = ADD) else
            "011000100000" when (opcode = "000000" and funct = SUB) else
            "001100011010" when (opcode = LW) else
            "000100010001" when (opcode = SW) else
            "000000100100" when (opcode = BEQ) else
            "100100010000" when (opcode = J) else
            "000000000000";

              
end architecture;