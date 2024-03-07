library ieee;
use ieee.std_logic_1164.all;

entity somadorSingleBit is
  -- Total de bits das entradas e saidas
  port (
    carry_in, entradaA, entradaB : in std_logic;
    saida, carry_out : out std_logic
  );
end entity;

architecture comportamento of somadorSingleBit is
begin
carry_out <= (entradaA AND entradaB) OR ((entradaA XOR entradaB) AND carry_in);
saida <= (entradaA XOR entradaB) XOR carry_in;
end architecture;
