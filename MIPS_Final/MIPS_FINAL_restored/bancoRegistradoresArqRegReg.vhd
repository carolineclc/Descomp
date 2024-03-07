library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;
    signal bypassA, bypassB, zeroA, zeroB : std_logic;
    signal selectA, selectB : std_logic_vector(1 downto 0);
    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- para resolver problemas de leitura e escrita no mesmo clock
    bypassA <= '1' when (enderecoA = enderecoC) else '0';
    bypassB <= '1' when (enderecoB = enderecoC) else '0';
    -- IF endereco = 0 : retorna ZERO
    zeroA <= '1' when to_integer(unsigned(enderecoA)) = to_integer(unsigned(zero)) else '0';
    zeroB <= '1' when to_integer(unsigned(enderecoB)) = to_integer(unsigned(zero)) else '0';
    selectA <= zeroA & bypassA;
    selectB <= zeroB & bypassB;

    saidaA <= dadoEscritaC when selectA = "01" else
                   zero when selectA = "10" else
                   zero  when selectA = "11" else
                   registrador(to_integer(unsigned(enderecoA)));

    saidaB <= dadoEscritaC when selectB = "01" else
                   zero when selectB = "10" else
                   zero  when selectB = "11" else
                   registrador(to_integer(unsigned(enderecoB)));

end architecture;