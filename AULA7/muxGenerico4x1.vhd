library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity muxGenerico4x1 is

  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entrada0_MUX, entrada1_MUX, entrada2_MUX, entrada3_MUX : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenerico4x1 is
  begin
    saida_MUX <= entrada1_MUX when (seletor_MUX = "01") else entrada2_MUX when (seletor_MUX = "10") else
	 entrada0_MUX;
end architecture;