library ieee;
use ieee.std_logic_1164.all;

entity controleULA is
  generic (
    larguraOpCode     : natural := 6;
    larguraFunct      : natural := 6;
    larguraControleULA: natural := 3
  );

  port ( 
    opcode :  in  std_logic_vector(larguraOpCode-1 downto 0);
    funct  :  in  std_logic_vector(larguraFunct-1 downto 0);
    tipoR  :  in  std_logic;
    ULActrl:  out std_logic_vector(larguraControleULA-1 downto 0)
  );
end entity;

architecture comportamento of controleULA is

  -- funct
  constant f_AND: std_logic_vector(larguraFunct-1 downto 0) := "100100";
  constant f_OR : std_logic_vector(larguraFunct-1 downto 0) := "100101";
  constant f_NOR : std_logic_vector(larguraFunct-1 downto 0) := "100111";
  constant f_ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant f_SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";
  constant f_SLT : std_logic_vector(larguraFunct-1 downto 0) := "101010";

  -- opcode
  constant op_LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant op_SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant op_BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant op_BNE : std_logic_vector(larguraOpCode-1 downto 0) := "000101";
  constant op_ORI : std_logic_vector(larguraOpCode-1 downto 0) := "001101";
  constant op_ANDI : std_logic_vector(larguraOpCode-1 downto 0) := "001100";
  constant op_ADDI: std_logic_vector(larguraOpCode-1 downto 0) := "001000";
  constant op_SLTI : std_logic_vector(larguraOpCode-1 downto 0) := "001010";
  constant op_SLTIU: std_logic_vector(larguraOpCode-1 downto 0) := "001011";
  constant op_LBU  : std_logic_vector(larguraOpCode-1 downto 0) := "010100";
  constant op_SB   : std_logic_vector(larguraOpCode-1 downto 0) := "011000";


  signal opcode_funct: std_logic_vector(larguraFunct-1 downto 0);

  begin
    opcode_funct <= funct when tipoR = '1' else opcode;

    ULActrl(0) <= '1' when (
                     opcode_funct = f_OR 
                  or opcode_funct = f_NOR
                  or opcode_funct = f_SLT
                  or opcode_funct = op_SLTI
                  or opcode_funct = op_SLTIU
                  or opcode_funct = op_ORI)
                  else '0' ;
    ULActrl(1) <= '1' when (
                     opcode_funct = op_LW  
                  or opcode_funct = op_LBU 
                  or opcode_funct = op_SB 
                  or opcode_funct = op_SW 
                  or opcode_funct = op_BEQ 
                  or opcode_funct = f_ADD 
                  or opcode_funct = op_ADDI 
                  or opcode_funct = op_SLTI 
                  or opcode_funct = op_SLTIU 
                  or opcode_funct = f_SUB 
                  or opcode_funct = op_BNE 
                  or opcode_funct = f_SLT)
                  else '0' ;
    ULActrl(2) <= '1' when (
                     opcode_funct = op_BEQ 
                  or opcode_funct = op_SLTI
                  or opcode_funct = op_SLTIU
                  or opcode_funct = f_SUB
                  or opcode_funct = op_BNE
                  or opcode_funct = f_SLT)
                  else '0' ;

              
end architecture;