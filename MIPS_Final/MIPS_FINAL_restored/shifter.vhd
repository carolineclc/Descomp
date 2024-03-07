library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;



entity shifter32 is
  -- Total de bits das entradas e saidas
  port (
		shiftIN : in std_logic_vector(31 downto 0);
		shamt:  in std_logic_vector(4 downto 0);
		direct : in std_logic;

		shiftOUT : out std_logic_vector(31 downto 0)
	);
end entity;

architecture comportamento of shifter32 is
  begin
    shiftOUT <= std_logic_vector(shift_left(unsigned(shiftIN), to_integer(unsigned(shamt)))) when direct = '1' else
                std_logic_vector(shift_right(unsigned(shiftIN), to_integer(unsigned(shamt))));
end architecture;
