 library ieee;
use ieee.std_logic_1164.all;

entity contador is
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


architecture arquitetura of contador is
	 signal Dado : std_logic_vector(12 downto 0);
	 signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
	 signal Sinais_Controle : std_logic_vector (11 downto 0);
	 signal Leitura_de_Dados : std_logic_vector (larguraDados-1 downto 0);
	 signal Escrita_de_Dados : std_logic_vector (larguraDados-1 downto 0);
	 signal Endereco_Dados : std_logic_vector (larguraEnderecos-1 downto 0);
	 signal saida_DEC_1 : std_logic_vector (7 downto 0);
	 signal saida_DEC_2 : std_logic_vector (7 downto 0);
	 signal CLK : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
CPU1 : entity work.cpu
          port map (Endereco_Dados => Endereco_Dados, Endereco => Endereco, Dado => Dado, Palavra_Controle => Sinais_Controle, chavesY_MUX_A => Leitura_de_Dados, CLOCK_50 => CLK, KEY => KEY, REG1_ULA_A => Escrita_de_Dados);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Endereco, Dado => Dado);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => Endereco_Dados(5 downto 0), we => Sinais_Controle(0), re => Sinais_Controle(1), habilita => saida_DEC_1(0), clk => CLK, dado_in => Escrita_de_Dados, dado_out => Leitura_de_Dados);

DEC1 : entity work.decoder3x8 
          port map (bloco => Endereco_Dados(8 downto 6), saida => saida_DEC_1);

DEC2 : entity work.decoder3x8 
          port map (bloco => Endereco_Dados(2 downto 0), saida => saida_DEC_2);

REG1 : entity work.registradorGenerico
			 port map (ENABLE => (saida_DEC_2(0) and Sinais_Controle(0) and saida_DEC_1(4) and (not Endereco_Dados(5))), DIN => Escrita_de_Dados, DOUT => LEDR(7 downto 0), CLK => CLK, RST => '0');

FF1 : entity work.FlipFlop
			 port map (DIN => Escrita_de_Dados(0), ENABLE => (saida_DEC_2(1) and Sinais_Controle(0) and saida_DEC_1(4) and (not Endereco_Dados(5))), DOUT => LEDR(8), CLK => CLK, RST => '0');

FF2 : entity work.FlipFlop
			 port map (DIN => Escrita_de_Dados(0), ENABLE => (saida_DEC_2(2) and Sinais_Controle(0) and saida_DEC_1(4) and (not Endereco_Dados(5))), DOUT => LEDR(9), CLK => CLK, RST => '0');

end architecture;