library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico2x1SingleBit is
  -- Total de bits das entradas e saidas
  port (
    entradaA_MUX, entradaB_MUX : in std_logic;
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of muxGenerico2x1SingleBit is
  begin
    saida_MUX <= entradaA_MUX when (seletor_MUX = '0') else
					  entradaB_MUX;
end architecture; 