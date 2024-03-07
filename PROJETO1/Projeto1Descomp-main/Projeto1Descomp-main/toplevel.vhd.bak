library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of toplevel is
signal CLK : std_logic;
signal ROM_Address : std_logic_vector (8 downto 0);
signal Instruction_IN : std_logic_vector (12 downto 0);
signal Rd: std_logic;
signal Wr: std_logic;
signal Data_Address : std_logic_vector(8 downto 0);
signal Data_OUT : std_logic_vector (7 downto 0);
signal Data_IN : std_logic_vector (7 downto 0);
signal hab_block : std_logic_vector (7 downto 0);
signal hab_address : std_logic_vector(7 downto 0);


begin




gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;



CPU : entity work.cpu   generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
          port map (CLK => CLK,ROM_Address => ROM_Address, Instruction_IN => Instruction_IN,
			 Rd => Rd, Wr => Wr, Data_OUT => Data_OUT, Data_IN => Data_IN, Data_Address => Data_Address);
			  
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => larguraEnderecos)
          port map (Endereco => ROM_Address, Dado => Instruction_IN);
			 
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => Data_Address (5 downto 0), we => Wr, 
			 re => Rd, habilita  => hab_block(0), 
			 dado_in => Data_OUT, dado_out => Data_IN, clk => CLK);
			 
			 
DEC_BLOCK :  entity work.decoder3x8
        port map( entrada => Data_Address(8 downto 6),
                 saida => hab_block);
					
			
			
DEC_Address : entity work.decoder3x8
        port map( entrada => Data_Address(2 downto 0),
                 saida => hab_address);
					  
FF_LEDR9 : entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT(0) , DOUT => LEDR(9), ENABLE =>(hab_address(2) AND hab_block(4) AND Wr), CLK => CLK, RST => '0');
			 
			 
FF_LEDR8: entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT(0) , DOUT => LEDR(8), ENABLE =>(hab_address(1) AND hab_block(4) AND Wr), CLK => CLK, RST => '0');

			 
REG_LEDR7downto0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT, DOUT =>LEDR(7 downto 0), ENABLE => (hab_address(0) AND hab_block(4) AND Wr), CLK => CLK, RST => '0');					  
					  
end architecture;
