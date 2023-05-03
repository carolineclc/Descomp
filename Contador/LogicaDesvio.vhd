library ieee;
use ieee.std_logic_1164.all;

entity LogicaDesvio is
  port ( entrada : in std_logic_vector(4 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of LogicaDesvio is
    begin
        saida <= "01" when (entrada(4) = '1' or entrada(2) = '1' or (entrada(1) = '1' and entrada(0) = '1')) else
					  "10" when (entrada(3) = '1') else
					  "00";
end architecture;