library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 13;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 Palavra_Controle : out std_logic_vector(8 downto 0);
	 EntradaB_ULA : out std_logic_vector (7 downto 0)
  );
end entity;


architecture arquitetura of toplevel is

  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (7 downto 0);
  signal MUX_REG1 : std_logic_vector (7 downto 0);
  signal REG1_ULA_A : std_logic_vector (7 downto 0);
  signal Saida_ULA : std_logic_vector (7 downto 0);
  signal Sinais_Controle : std_logic_vector (8 downto 0);
  signal Saida_ROM : std_logic_vector ( 12 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Saida_RAM : std_logic_vector (7 downto 0);
  signal CLK : std_logic;
  signal selMUX : std_logic;
  signal selJmp : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal re : std_logic;
  signal we : std_logic;
  signal flipFlop_DOUT : std_logic;
  signal flagzeroo : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal saida_Prox_PC: std_logic_vector (8 downto 0);
  signal selCEQ : std_logic;
  signal desviologica : std_logic_vector (1 downto 0);
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX_EntradaB_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => 8)
        port map( entradaA_MUX => Saida_RAM,
                 entradaB_MUX =>  Saida_ROM(7 downto 0),
                 seletor_MUX => selMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => saida_Prox_PC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 8)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA, Flagzero => flagzeroo);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => Saida_ROM);
			 
			 
DEC_Instru : entity work.decoderGeneric port map (entrada_dec => Saida_ROM(12 downto 9), saida_dec => Sinais_Controle); 

RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 8)
          port map (addr => Saida_ROM(7 downto 0), we => we, re => re, habilita  => Saida_ROM(8), 
			 dado_in => REG1_ULA_A, dado_out => Saida_RAM, clk => CLK);
	

MUXProxPC :  entity work.muxGenerico2x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => proxPC ,
                 entradaB_MUX =>  Saida_ROM(8 downto 0),
                 seletor_MUX => selJmp,
                 saida_MUX => saida_Prox_PC);

					  
FlagZero : entity work.FlipFlop   generic map (larguraDados => 1)
          port map (DIN => flagzeroo, DOUT => flipFlop_DOUT, ENABLE => selCEQ, CLK => CLK, RST => '0');		

DesvioDeLogica : entity work.LogicaDeDesvio	generic map (larguraDados => 2)
				port map (seletor =>(flipFlop_DOUT & desviologica) ,saida =>selJmp);
				


desviologica <= Sinais_Controle(8 downto 7);				
selCEQ <= Sinais_Controle(2);					  
--selJmp <= Sinais_Controle(6);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
re <= Sinais_Controle(1);
we<= Sinais_Controle(0);

Palavra_controle <= Sinais_Controle ;

-- I/O
--chav
esY_MUX_A <= SW(3 downto 0);
--chavesX_ULA_B <= SW(9 downto 6);



LEDR (7 downto 0)<= REG1_ULA_A;   
LEDR (9 downto 8)<= Operacao_ULA;  


PC_OUT <= Endereco;

EntradaB_ULA <= MUX_REG1;

end architecture;