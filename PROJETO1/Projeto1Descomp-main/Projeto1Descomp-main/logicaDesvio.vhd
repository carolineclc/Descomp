library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( entrada_flag : in std_logic;
			entrada_jeq	 : in std_logic;
			entrada_jmp	 : in std_logic;
			entrada_jsr  : in std_logic;
			entrada_ret  : in std_logic;
         saida_mux : out std_logic_vector (1 downto 0)
  );
end entity;

architecture comportamento of logicaDesvio is

  constant JMP  : std_logic := '1';
  constant JEQ	 : std_logic := '1';
  constant FLAG : std_logic := '1';
  constant JSR	 : std_logic := '1';
  constant RET  : std_logic := '1';


  begin
		saida_mux(0) <= (entrada_jmp OR entrada_jsr) OR (entrada_jeq AND entrada_flag);
		saida_mux(1) <= entrada_ret;
			
end architecture;
