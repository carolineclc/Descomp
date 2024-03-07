library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity extraiByte is
    generic
    (
        larguraDados    : natural := 32;
        larguraByte     : natural := 8
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of extraiByte is
    begin
        saida <= (larguraDados- 1 downto larguraByte => '0' ) & entrada(larguraByte -1 downto 0);
end architecture;