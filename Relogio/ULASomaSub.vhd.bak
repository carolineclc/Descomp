library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4;
				  larguraSeletor : natural := 2 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR((larguraSeletor-1) downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZero: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa      <= STD_LOGIC_VECTOR(unsigned(entradaB));
      saida <= passa when (seletor = "10") else 
		         subtracao when (seletor = "00") else
					soma;
					
		flagZero <= '1' when unsigned(saida) = 0 else '0';
end architecture;