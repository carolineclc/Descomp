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
        enderecoRS       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoRT       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoRD       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaRD    : in std_logic_vector((larguraDados-1) downto 0);
--
        habilitaEscritaRD        : in std_logic := '0';
        saidaRS          : out std_logic_vector((larguraDados -1) downto 0);
        saidaRT          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    function initRegisters
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
        begin
            tmp(0) := x"AAAAAAAA";  -- Nao deve ter efeito.
            tmp(8)  := 32x"00"; 
            tmp(9)  := 32x"0A"; 
            tmp(10) := 32x"0B"; 
            tmp(11) := 32x"0C"; 
            tmp(12) := 32x"0D"; 
            tmp(13) := 32x"16"; 
            tmp(14) := 32x"01"; 
        return tmp;
    end initRegisters;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t := initRegisters;
    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (habilitaEscritaRD = '1') then
                registrador(to_integer(unsigned(enderecoRD))) := dadoEscritaRD;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
    saidaRT <= zero when to_integer(unsigned(enderecoRT)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(enderecoRT)));
    saidaRS <= zero when to_integer(unsigned(enderecoRS)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(enderecoRS)));
end architecture;