library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  generic (
    larguraOpCode: natural := 6;
    larguraFunct: natural := 6;
    larguraSinaisControle: natural := 10
  );

  port ( opcode : in std_logic_vector(larguraOpCode-1 downto 0);
         funct : in std_logic_vector(larguraFunct-1 downto 0);
         saida : out std_logic_vector(larguraSinaisControle-1 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant f_ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant f_SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";

  constant op_LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant op_SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant op_BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant J   : std_logic_vector(larguraOpCode-1 downto 0) := "000010";

  begin
    saida <="0110010000" when (opcode = "000000" and funct = f_ADD) else
            "0110100000" when (opcode = "000000" and funct = f_SUB) else
            "0011011010" when (opcode = op_LW) else
            "0001010001" when (opcode = op_SW) else
            "0000100100" when (opcode = op_BEQ) else
            "1001010000" when (opcode = J) else
            "0000000000";

              
end architecture;