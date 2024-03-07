library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth:     natural := 32;
          addrWidth:     natural := 32;
          larguraOPCode: natural := 6;
          larguraFunct: natural := 6;
          memoryAddrWidth:  natural := 6 
       );
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) 
      );
end entity;

architecture assincrona OF ROMMIPS IS
  constant op_tipo_R:std_logic_vector(larguraOPCode-1 downto 0) := "000000";

  constant f_ADD : std_logic_vector(larguraFunct-1 downto 0)   := "100000";
  constant f_SUB : std_logic_vector(larguraFunct-1 downto 0)   := "100010";


  constant op_LW  : std_logic_vector(larguraOPCode-1 downto 0) := "100011";
  constant op_SW  : std_logic_vector(larguraOPCode-1 downto 0) := "101011";
  constant op_BEQ : std_logic_vector(larguraOPCode-1 downto 0) := "000100";
  constant op_J   : std_logic_vector(larguraOPCode-1 downto 0) := "000010";


 -- instrucao tipo R:   opcode(6) -- zeros | RS (5) | RT (5) | RD (5) | shamt (5) | funct (6)
 -- instrucao tipo I:   opcode(6) | RS (5) | RT (5) | imediatoI (16)
 -- instrucao tipo J:   opcode(6) | imediatoJ (26)

  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  
  -- function initMemory
  --       return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  -- begin

  --     -- R[8] = 0 | R[15] = 1
  --     -- R[8] = 0
  --       tmp(0)  :=    op_tipo_R & "01000" & "01110" & "01000" & "00000" & f_ADD; -- soma 1 em R[8]
  --       tmp(1)  :=    op_SW & "01001" & "01000" & "0000000000000000"; -- armazena R[8] em M10 (R[9] = 0x0A)
  --       tmp(2) :=    op_LW & "01001" & "10000" & "0000000000000000"; -- carrega conteúdo de M10 em R16
	-- 	    tmp(3) :=    op_J  & "00000000000000000000000000";

	-- 	  return tmp;
  --   end initMemory;
	 
	-- signal memROM : blocoMemoria := initMemory;

    signal memROM: blocoMemoria;
    attribute ram_init_file : string;
    attribute ram_init_file of memROM:
    signal is "ROMcontent.mif";
    
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;