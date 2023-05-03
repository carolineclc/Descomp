 library ieee;
use ieee.std_logic_1164.all;

entity contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  CLOCK_50 : in std_logic;
  KEY: in std_logic_vector(3 downto 0);
  SW  : in std_logic_vector(9 downto 0);
  FPGA_RESET_N : in std_logic;
  LEDR  : out std_logic_vector(9 downto 0);
  HEX0  : out std_logic_vector(6 downto 0);
  HEX1  : out std_logic_vector(6 downto 0);
  HEX2  : out std_logic_vector(6 downto 0);
  HEX3  : out std_logic_vector(6 downto 0);
  HEX4  : out std_logic_vector(6 downto 0);
  HEX5  : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of contador is
	 signal Dado_ROM : std_logic_vector(12 downto 0);
	 signal Endereco_ROM : std_logic_vector (larguraEnderecos-1 downto 0);
	 signal Leitura_de_Dados : std_logic_vector (larguraDados-1 downto 0);
	 signal Escrita_de_Dados : std_logic_vector (larguraDados-1 downto 0);
	 signal Endereco_Dados : std_logic_vector (larguraEnderecos-1 downto 0);
	 signal Bloco : std_logic_vector (7 downto 0);
	 signal Endereco_decoder : std_logic_vector (7 downto 0);
	 signal CLK : std_logic;
	 signal dado_HEX0 : std_logic_vector (3 downto 0); -- register display HEX0
	 signal dado_HEX1 : std_logic_vector (3 downto 0); -- register display HEX1
	 signal dado_HEX2 : std_logic_vector (3 downto 0); -- register display HEX2
	 signal dado_HEX3 : std_logic_vector (3 downto 0); -- register display HEX3
	 signal dado_HEX4 : std_logic_vector (3 downto 0); -- register display HEX4
	 signal dado_HEX5 : std_logic_vector (3 downto 0); -- register display HEX5
	 signal CLK_FF_KEY0 : std_logic; -- edge detector KEY0
	 signal saida_FF_KEY0 : std_logic; -- flip flop KEY0
	 signal CLK_FF_KEY1 : std_logic; -- edge detector KEY1
	 signal saida_FF_KEY1 : std_logic; -- flip flop KEY1
	 signal re : std_logic;
	 signal we : std_logic;
	 signal reset : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= KEY(3);
--else generate
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
--end generate;
CLK <= CLOCK_50;
reset <= (not FPGA_RESET_N);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
CPU1 : entity work.cpu
          port map (DATA_ADDRESS => Endereco_Dados,
						  ROM_ADDRESS => Endereco_ROM,
						  INSTRUCTION_IN => Dado_ROM,
						  Reset_A => reset,
						  RE => re,
						  WE => we,
						  DATA_IN => Leitura_de_Dados,
						  CLK => CLK,
						  DATA_OUT => Escrita_de_Dados);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Endereco_ROM, Dado => Dado_ROM);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => Endereco_Dados(5 downto 0),
						  we => we,
						  re => re,
						  habilita => Bloco(0),
						  clk => CLK,
						  dado_in => Escrita_de_Dados,
						  dado_out => Leitura_de_Dados);

DEC1 : entity work.decoder3x8 
          port map (bloco => Endereco_Dados(8 downto 6),
						  saida => Bloco);

DEC2 : entity work.decoder3x8 
          port map (bloco => Endereco_Dados(2 downto 0),
						  saida => Endereco_decoder);

REG1 : entity work.registradorGenerico
			 port map (ENABLE => (Endereco_decoder(0) and we and Bloco(4) and (not Endereco_Dados(5))),
						  DIN => Escrita_de_Dados,
						  DOUT => LEDR(7 downto 0),
						  CLK => CLK,
						  RST => reset);

FF1 : entity work.FlipFlop
			 port map (DIN => Escrita_de_Dados(0),
						  ENABLE => (Endereco_decoder(1) and we and Bloco(4) and (not Endereco_Dados(5))),
						  DOUT => LEDR(8),
						  CLK => CLK,
						  RST => reset);

FF2 : entity work.FlipFlop
			 port map (DIN => Escrita_de_Dados(0),
						  ENABLE => (Endereco_decoder(2) and we and Bloco(4) and (not Endereco_Dados(5))),
						  DOUT => LEDR(9),
						  CLK => CLK,
						  RST => reset);
			 
RH0 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(0) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX0,
						  CLK => CLK,
						  RST => reset);
			 
DHEX0 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX0, saida7seg => HEX0);

RH1 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(1) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX1,
						  CLK => CLK,
						  RST => reset);
			 
DHEX1 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX1, saida7seg => HEX1);

RH2 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(2) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX2,
						  CLK => CLK,
						  RST => reset);
			 
DHEX2 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX2, saida7seg => HEX2);
			 
RH3 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(3) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX3,
						  CLK => CLK,
						  RST => reset);
			 
DHEX3 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX3, saida7seg => HEX3);
			 
RH4 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(4) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX4,
						  CLK => CLK,
						  RST => reset);
			 
DHEX4 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX4, saida7seg => HEX4);

RH5 : entity work.registradorGenerico generic map (larguraDados => 4)
			 port map (ENABLE => (Endereco_decoder(5) and we and Bloco(4) and Endereco_Dados(5)),
						  DIN => Escrita_de_Dados(3 downto 0),
						  DOUT => dado_HEX5,
						  CLK => CLK,
						  RST => reset);
			 
DHEX5 : entity work.conversorHex7Seg
			 port map (dadoHex => dado_HEX5,--Endereco_ROM(3 downto 0)
			 saida7seg => HEX5);
			 
BSW7 : entity work.buffer_3_state_8portas
          port map(entrada => SW(7 downto 0),
						 habilita =>  (Endereco_decoder(0) and re and Bloco(5) and (not Endereco_Dados(5))),
						 saida => Leitura_de_Dados);
						 
BSW8 : entity work.buffer_3_state_8portas
          port map(entrada(0) => SW(8),
						 entrada(1) => '0',
						 entrada(2) => '0',
						 entrada(3) => '0',
						 entrada(4) => '0',
						 entrada(5) => '0',
						 entrada(6) => '0',
						 entrada(7) => '0',
						 habilita =>  (Endereco_decoder(1) and re and Bloco(5) and (not Endereco_Dados(5))),
						 saida => Leitura_de_Dados);
						 
BSW9 : entity work.buffer_3_state_8portas
          port map(entrada(0) => SW(9),
						 entrada(1) => '0',
						 entrada(2) => '0',
						 entrada(3) => '0',
						 entrada(4) => '0',
						 entrada(5) => '0',
						 entrada(6) => '0',
						 entrada(7) => '0',
						 habilita =>  (Endereco_decoder(2) and re and Bloco(5) and (not Endereco_Dados(5))),
						 saida => Leitura_de_Dados);

						 
ED0 : entity work.edgeDetector
			 port map(clk => CLK,
						 entrada => not KEY(0),
						 saida => CLK_FF_KEY0);
						 
FFK0 : entity work.FlipFlop
			 port map (DIN => '1',
						  ENABLE => '1',
						  DOUT => saida_FF_KEY0,
						  CLK => CLK_FF_KEY0,
						  RST => Endereco_Dados(0) 
						  and Endereco_Dados(1) 
						  and Endereco_Dados(2) 
						  and Endereco_Dados(3) 
						  and Endereco_Dados(4) 
						  and Endereco_Dados(5) 
						  and Endereco_Dados(6) 
						  and Endereco_Dados(7) 
						  and Endereco_Dados(8) 
						  and we
						  );

BK0 : entity work.buffer_3_state_8portas
          port map(entrada(0) => saida_FF_KEY0,
						 entrada(1) => '0',
						 entrada(2) => '0',
						 entrada(3) => '0',
						 entrada(4) => '0',
						 entrada(5) => '0',
						 entrada(6) => '0',
						 entrada(7) => '0',
						 habilita =>  (Endereco_decoder(0) and re and Bloco(5) and  Endereco_Dados(5)),
						 saida => Leitura_de_Dados);
						 
ED1 : entity work.edgeDetector
			 port map(clk => CLK,
						 entrada => not KEY(1),
						 saida => CLK_FF_KEY1);
						 
FFK1 : entity work.FlipFlop
			 port map (DIN => '1',
						  ENABLE => '1',
						  DOUT => saida_FF_KEY1,
						  CLK => CLK_FF_KEY1,
						  RST => (not Endereco_Dados(0)) 
						  and Endereco_Dados(1) 
						  and Endereco_Dados(2) 
						  and Endereco_Dados(3) 
						  and Endereco_Dados(4) 
						  and Endereco_Dados(5) 
						  and Endereco_Dados(6) 
						  and Endereco_Dados(7) 
						  and Endereco_Dados(8) 
						  and we
						  );

BK1 : entity work.buffer_3_state_8portas
          port map(entrada(0) => saida_FF_KEY1,
						 entrada(1) => '0',
						 entrada(2) => '0',
						 entrada(3) => '0',
						 entrada(4) => '0',
						 entrada(5) => '0',
						 entrada(6) => '0',
						 entrada(7) => '0',
						 habilita =>  (Endereco_decoder(1) and re and Bloco(5) and  Endereco_Dados(5)),
						 saida => Leitura_de_Dados);
						 
--BK2 : entity work.buffer_3_state_8portas
--          port map(entrada(0) => not KEY(2),
--						 entrada(1) => '0',
--						 entrada(2) => '0',
--						 entrada(3) => '0',
--						 entrada(4) => '0',
--						 entrada(5) => '0',
--						 entrada(6) => '0',
--						 entrada(7) => '0',
--						 habilita =>  (Endereco_decoder(2) and re and Bloco(5) and  Endereco_Dados(5)),
--						 saida => Leitura_de_Dados);
						 
--BK3 : entity work.buffer_3_state_8portas
--          port map(entrada(0) => KEY(3),
--						 entrada(1) => '0',
--						 entrada(2) => '0',
--						 entrada(3) => '0',
--						 entrada(4) => '0',
--						 entrada(5) => '0',
--						 entrada(6) => '0',
--						 entrada(7) => '0',
--						 habilita =>  (Endereco_decoder(3) and re and Bloco(5) and  Endereco_Dados(5)),
--						 saida => Leitura_de_Dados);
						 
--RESET : entity work.buffer_3_state_8portas
--          port map(entrada(0) => reset,
--						 entrada(1) => '0',
--						 entrada(2) => '0',
--						 entrada(3) => '0',
--						 entrada(4) => '0',
--						 entrada(5) => '0',
--						 entrada(6) => '0',
--						 entrada(7) => '0',
--						 habilita =>  (Endereco_decoder(4) and re and Bloco(5) and  Endereco_Dados(5)),
--						 saida => Leitura_de_Dados);

end architecture;