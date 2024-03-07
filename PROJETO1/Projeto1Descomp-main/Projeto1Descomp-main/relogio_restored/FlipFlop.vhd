library ieee;
use ieee.std_logic_1164.all;

entity FlipFlop is
    port (DIN : in std_logic;
       DOUT : out std_logic := '0';
       ENABLE : in std_logic;
       CLK,RST : in std_logic
        );
end entity;

architecture comportamento of FlipFlop is
begin
    process(RST, CLK)
    begin
        if (RST = '1') then
            DOUT <= '0';   
        else
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
    end process;
end architecture;