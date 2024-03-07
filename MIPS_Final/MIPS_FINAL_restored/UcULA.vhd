library ieee;
use ieee.std_logic_1164.all;

entity UC_ULA is
  port ( ulaOp : in std_logic_vector(2 downto 0);
         funct : in std_logic_vector(5 downto 0);
			JR : out std_logic;
			SHFT : out std_logic_vector(1 downto 0);
         ULACtrl : out std_logic_vector(3 downto 0)
  );

end entity;

architecture comportamento of UC_ULA is

  signal saidaDecoderUlaFunct : std_logic_vector(2 downto 0);
  signal saidaDecoderUlaOpcode : std_logic_vector(2 downto 0); 

begin

  ULACtrl <= "0000" when (ulaOp = "010" and funct = "100100") else --AND
             "0001" when (ulaOp = "010" and funct = "100101") else --OR
             "0010" when (ulaOp = "010" and funct = "100000") else --SUM
             "0110" when (ulaOp = "010" and funct = "100010") else --SUB
             "0111" when (ulaOp = "010" and funct = "101010") else --SLT
             "1100" when (ulaOp = "010" and funct = "100111") else --NOR
             "0110" when ulaOp = "001" else --SUBI
				 "0010" when ulaOp = "000" else --ADDI
				 "0000" when ulaOp = "011" else --ANDI
				 "0001" when ulaOp = "100" else --ORI
				 "0111" when ulaOp = "101" else --SLTI
				 "0000";
				 
	JR <= '1' when ulaOp = "010" and funct = "001000" else
			'0';
			
	SHFT <= "11" when ulaOp = "010" and funct = "000000" else -- Shlft
			  "01" when ulaOp = "010" and funct = "000010" else -- Shrt
			  "00";

end architecture;
