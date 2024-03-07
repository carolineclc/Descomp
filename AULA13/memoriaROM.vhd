library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 10
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant opSOMA  : std_logic_vector(5 downto 0) := "010000";
  constant opSUB   : std_logic_vector(5 downto 0) := "000000";
  constant opUM    : std_logic_vector(5 downto 0) := "100000";
  constant opZERA  : std_logic_vector(5 downto 0) := "110000";
  constant shamt   : std_logic_vector(4 downto 0) := "00000";
  constant funct   : std_logic_vector(5 downto 0) := "000000"; 
  constant R0   :   std_logic_vector(4 downto 0) := "00000"; 
  constant R1   :   std_logic_vector(4 downto 0) := "00001"; 
  constant R2   :   std_logic_vector(4 downto 0) := "00010";
  constant none :   std_logic_vector(10 downto 0) := "00000000000"; 

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin      

    tmp(0) := opZERA & R0 & R1 & R0 & none ; -- R0 = 0

    -- prepara registradores 1 e 2 com valor 1
    tmp(4) := opUM & R0 & R1 & R1 & none; -- R1 = 1
    tmp(8) := opUM & R0 & R1 & R2 & none; -- R2 = 1

    -- soma registradores 1 e 2 e armazena em 0
    tmp(12) := opSOMA & R1 & R2 & R0 & none; -- R0 = R1 + R2 = 2
    -- soma registrador 1 e 0 e armazena em 1
    tmp(16) := opSOMA & R1 & R0 & R1 & none; -- R1 = R1 + R0 = 3
    -- soma registrador 0 e 1 e armazena em 2
    tmp(20) := opSOMA & R0 & R1 & R2 & none; -- R2 = R0 + R1 = 5
    -- subtrai registrador 2 e 0 e armazena em 0
    tmp(24) := opSUB & R2 & R0 & R0 & none; -- R0 = R2 - R0 = 5 - 3 = 2

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;