library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 registradores
    );

-- Leitura e escrita de um registradores.
    port
    (
        clk                 : in std_logic;
        enderecoRS          : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoRT          : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoRD          : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        habilitaEscritaRD   : in std_logic := '0';
        dadoEscritaRD       : in std_logic_vector((larguraDados-1) downto 0);
        saidaRS             : out std_logic_vector((larguraDados -1) downto 0);
        saidaRT             : out std_logic_vector((larguraDados -1) downto 0);
        inspectR0           : out std_logic_vector((larguraDados -1) downto 0);
        inspectR1           : out std_logic_vector((larguraDados -1) downto 0);
        inspectR2           : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registradores : memoria_t;

begin
    -- Leitura dos registradores indicados:
    saidaRS <= registradores(to_integer(unsigned(enderecoRS)));
    saidaRT <= registradores(to_integer(unsigned(enderecoRT)));
    inspectR0 <= registradores(0);
    inspectR1 <= registradores(1);
    inspectR2 <= registradores(2);
    process(clk) is
        begin
            -- se habilitado, escreve no registrador RD
            if (rising_edge(clk)) then
                if (habilitaEscritaRD = '1') then
                    registradores(to_integer(unsigned(enderecoRD))) := dadoEscritaRD;
                end if;
            end if;
        end process;
end architecture;