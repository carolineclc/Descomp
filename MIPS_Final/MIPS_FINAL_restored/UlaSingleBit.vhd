library ieee;
use ieee.std_logic_1164.all;

entity UlaSingleBit is
  -- Total de bits das entradas e saidas
  port (
    entradaA, entradaB, slt : in std_logic;
    inverteA, inverteB : in std_logic;
    carry_in : in std_logic;
    carry_out : out std_logic;
    selecao : in std_logic_vector(1 downto 0);
    resultado : out std_logic;
    saida_soma : out std_logic;
    zero : out std_logic
  );
end entity;

architecture comportamento of UlaSingleBit is
  signal saida_mux_A : std_logic;
  signal saida_mux_B : std_logic;
  signal soma_sub : std_logic;
begin

MUX_INVERTE_A : entity work.muxGenerico2x1SingleBit
  port map(
    entradaA_MUX => entradaA,
    entradaB_MUX => not entradaA,
    seletor_MUX => inverteA,
    saida_MUX => saida_mux_A
  );


MUX_INVERTE_B : entity work.muxGenerico2x1SingleBit
  port map(
    entradaA_MUX => entradaB,
    entradaB_MUX => not entradaB,
    seletor_MUX => inverteB,
    saida_MUX => saida_mux_B
  );

SOMADOR : entity work.somadorSingleBit
    port map(                                                                                                                                                          
        entradaA => saida_mux_A,
        entradaB => saida_mux_B,
        carry_in => carry_in,
        carry_out => carry_out,
        saida => soma_sub
      );

MUX_SELETOR : entity work.muxGenerico4x1SingleBit
  port map(
    entradaA_MUX => saida_mux_A AND saida_mux_B,
    entradaB_MUX => saida_mux_A OR saida_mux_B,
    entradaC_MUX => soma_sub,
    entradaD_MUX => slt,
    seletor_MUX => selecao,
    saida_MUX => resultado
  );

saida_soma <= soma_sub;
end architecture;
