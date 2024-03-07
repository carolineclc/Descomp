library ieee;
use ieee.std_logic_1164.all;

entity MUX2X1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 1);
  port (
    entradaA_MUX, entradaB_MUX : in std_logic;
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of MUX2X1 is
  begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = '1') else entradaA_MUX;
end architecture;