library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth:     natural := 32;
          addrWidth:     natural := 32;
          larguraOPCode: natural := 6;
          memoryAddrWidth:  natural := 6 
       );
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) 
      );
end entity;

architecture assincrona OF ROMMIPS IS

  constant LW  : std_logic_vector(larguraOPCode-1 downto 0) := "100011";
  constant SW  : std_logic_vector(larguraOPCode-1 downto 0) := "101011";
  constant BEQ : std_logic_vector(larguraOPCode-1 downto 0) := "000100";

  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		  tmp(0) :=    SW & "01000" & "01001" & "0000000000000000";
		  tmp(1) :=    LW & "01000" & "01000" & "0000000000000000";
        
		  return tmp;
    end initMemory;
	 
	signal memROM : blocoMemoria := initMemory;
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;