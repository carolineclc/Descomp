library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( entrada_flag : in std_logic;
			entrada_jeq	 : in std_logic;
			entrada_jmp	 : in std_logic;
         saida : out std_logic
  );
end entity;

architecture comportamento of logicaDesvio is

  constant JMP  : std_logic := '1';
  constant JEQ	 : std_logic := '1';
  constant FLAG : std_logic := '1';


  begin
saida <= '1' when (JMP = entrada_jmp or (JEQ = entrada_jeq and FLAG = entrada_flag)) else
'0';
			
end architecture;