library ieee;
use ieee.std_logic_1164.all;

entity extensaoDeSinal is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        entrada : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        saida: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of extensaoDeSinal is
begin

    saida <= (larguraDadoSaida-1 downto larguraDadoEntrada => entrada(larguraDadoEntrada-1) ) & entrada;

end architecture;