library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSubPassa is
    generic ( 
		larguraDados : natural := 32; 
		larguraInstru: natural := 4
		);
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR((larguraInstru-1) downto 0);
      flagZ: out STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULASomaSubPassa is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));

		
      saida <= soma when (seletor = "0001") else 
					subtracao when (seletor = "0010") else 
					"00000000000000000000000000000001" when (seletor="0011") else
					"00000000000000000000000000000000";
            
        flagZ <= '1' when unsigned(saida) = 0 else '0';

end architecture;