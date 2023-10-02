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
	 LEDR  : out std_logic_vector(9 downto 0);
	 HEX0	 : out std_logic_vector (6 downto 0);
	 HEX1	 : out std_logic_vector (6 downto 0);
	 HEX2	 : out std_logic_vector (6 downto 0);
	 HEX3	 : out std_logic_vector (6 downto 0);
	 HEX4	 : out std_logic_vector (6 downto 0);
	 HEX5	 : out std_logic_vector (6 downto 0)
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
signal DECH0 : std_logic_vector (3 downto 0);
signal DECH1 : std_logic_vector (3 downto 0);
signal DECH2 : std_logic_vector (3 downto 0);
signal DECH3 : std_logic_vector (3 downto 0);
signal DECH4 : std_logic_vector (3 downto 0);
signal DECH5 : std_logic_vector (3 downto 0);

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
          port map (DIN => Data_OUT(0) , DOUT => LEDR(9), ENABLE =>(hab_address(2) AND hab_block(4) AND Wr AND NOT Data_Address(5)),
			 CLK => CLK, RST => '0');
			 
			 
FF_LEDR8: entity work.FlipFlop   generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT(0) , DOUT => LEDR(8), ENABLE =>(hab_address(1) AND hab_block(4) AND Wr AND NOT Data_Address(5)),
			 CLK => CLK, RST => '0');

			 
REG_LEDR7downto0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Data_OUT, DOUT =>LEDR(7 downto 0), ENABLE => (hab_address(0) AND hab_block(4) AND Wr AND NOT Data_Address(5)),
			 CLK => CLK, RST => '0');	


REG_H0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH0, ENABLE => (hab_address(0) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H0 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
			
REG_H1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH1, ENABLE => (hab_address(1) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H1 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
			
REG_H2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH2, ENABLE => (hab_address(2) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H2 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);	
				
REG_H3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH3, ENABLE => (hab_address(3) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H3 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
				
REG_H4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH4, ENABLE => (hab_address(4) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H4 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);	
		
REG_H5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_OUT(3 downto 0), DOUT => DECH5, ENABLE => (hab_address(5) AND hab_block(4) AND Wr AND Data_Address(5)),
			 CLK => CLK, RST => '0');

DEC_H5 :  entity work.conversorHex7Seg
        port map(dadoHex => DECH5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);					
					  
end architecture;
