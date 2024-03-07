LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxGenerico4x1 is
  generic ( larguraEntrada : natural := 8;
        larguraSelecao : natural := 2);
  port (
    entradaA_MUX, entradaB_MUX, entradaC_MUX, entradaD_mux : in  std_logic_vector(larguraEntrada-1 downto 0);
    seletor_MUX : in  std_logic_vector(larguraSelecao-1 downto 0);
    saida_MUX   : out std_logic_vector(larguraEntrada-1 downto 0)
  );
end entity;

architecture Behavioral of muxGenerico4x1 is
begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = "01") else
					  entradaC_MUX when (seletor_MUX = "10") else
					  entradaD_MUX when (seletor_MUX = "11") else
					  entradaA_mux;
end architecture;
