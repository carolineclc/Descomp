library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( entrada_flag : in std_logic;
			entrada_jeq	 : in std_logic;
			entrada_jmp	 : in std_logic;
			entrada_jsr  : in std_logic;
			entrada_ret  : in std_logic;
         saida : out std_logic_vector (1 downto 0)
  );
end entity;

architecture comportamento of logicaDesvio is

  constant JMP  : std_logic := '1';
  constant JEQ	 : std_logic := '1';
  constant FLAG : std_logic := '1';
  constant JSR	 : std_logic := '1';
  constant RET  : std_logic := '1';


  begin
saida <= "01" when (JMP = entrada_jmp or (JEQ = entrada_jeq and FLAG = entrada_flag) or JSR = entrada_jsr) else
"10" when (RET = entrada_ret) else
"00";
			
end architecture;