library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Selectors
        Selector : in std_logic;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is
        signal Mux_sig : std_logic;
begin

    MuxSeletor : entity work.MUX2X1  generic map (larguraDados => 1)
        port map (
            entradaA_MUX => estendeSinal_IN(larguraDadoEntrada-1), 
            entradaB_MUX => '0', 
            seletor_MUX => Selector, 
            saida_MUX => Mux_sig );

    estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => Mux_sig ) & estendeSinal_IN;

end architecture;