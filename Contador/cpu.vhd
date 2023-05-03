library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 Palavra_Controle: out std_logic_vector(11 downto 0);
	 Dado : in std_logic_vector(12 downto 0);
	 Endereco : out std_logic_vector (larguraEnderecos-1 downto 0);
	 Endereco_Dados : out std_logic_vector (larguraEnderecos-1 downto 0);
	 chavesY_MUX_A : in std_logic_vector (larguraDados-1 downto 0);
	 REG1_ULA_A : out std_logic_vector (larguraDados-1 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0)
  );
end entity;


architecture arquitetura of cpu is

-- Definindo todos os sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Reset_A : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal MUX_REG2 : std_logic_vector (larguraEnderecos-1 downto 0);
  signal JMP : std_logic;
  signal RET : std_logic;
  signal JSR : std_logic;
  signal JEQ : std_logic;
  signal habFlag : std_logic;
  signal flagZero : std_logic;
  signal SelMUX2 : std_logic_vector(1 downto 0);
  signal SaidaFlag : std_logic;
  signal habEscRet : std_logic;
  signal entrada2_MUXPC : std_logic_vector(8 downto 0);
  signal Endereco_ROM : std_logic_vector (larguraEnderecos-1 downto 0);
  signal REG_ULA_1 : std_logic_vector (larguraDados-1 downto 0);

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
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => chavesY_MUX_A,
                 entradaB_MUX =>  Dado(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => MUX_REG2, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco_ROM, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG_ULA_1, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA, flagZero => flagZero);
			 
-- O port map completo do DECODER:
DECODER1 : entity work.decoderInstru
			 port map (opcode => Dado(12 downto 9), saida => Sinais_Controle);
			 
--	O port map completo do MUX2.		 
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecos)
        port map( entrada0_MUX => proxPC,
                 entrada1_MUX =>  Dado(8 downto 0),
					  entrada2_MUX => entrada2_MUXPC,
                 seletor_MUX => SelMUX2,
                 saida_MUX => MUX_REG2);
					  
-- O port map completo do Flip Flop.
FlagZero1 : entity work.FlipFlop 
          port map (DIN => flagZero, DOUT => SaidaFlag, ENABLE => habFlag, CLK => CLK, RST => Reset_A);

-- O port map completo da Logica de Desvio:
LogicaDesvio1 : entity work.LogicaDesvio 
			 port map (entrada(4) => JMP, entrada(3) => RET, entrada(2) => JSR, entrada(1) => JEQ, entrada(0) => SaidaFlag, saida => SelMUX2);
			 
-- O port map completo do Endereco de Retorno.
REG_RETORNO : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => entrada2_MUXPC, ENABLE => habEscRet, CLK => CLK, RST => '0');


habEscRet <= Sinais_Controle(11);
JMP <= Sinais_Controle(10);
RET <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);
JEQ <= Sinais_Controle(7);
SelMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habFlag <= Sinais_Controle(2);

Endereco_ROM <= Endereco;
REG_ULA_1 <= REG1_ULA_A;
Endereco_Dados <= Dado(8 downto 0);

-- Palavra Controle
Palavra_Controle <= Sinais_Controle;

PC_OUT <= Endereco;

end architecture;