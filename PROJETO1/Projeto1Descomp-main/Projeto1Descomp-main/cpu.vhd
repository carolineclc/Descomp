library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 ROM_Address : out std_logic_vector (8 downto 0);
	 Instruction_IN : in std_logic_vector (14 downto 0);
	 Rd : out std_logic;
	 Wr : out std_logic;
	 Data_OUT : out std_logic_vector(7 downto 0);
	 Data_IN : in std_logic_vector (7 downto 0);
	 CLK : in std_logic;
	 Data_Address : out std_logic_vector(8 downto 0);
	 Palavra_Controle : out std_logic_vector (11 downto 0)
	 	 

  );
end entity;


architecture arquitetura of cpu is

  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_REG : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Mux_ProxPC : std_logic_vector (larguraEnderecos -1 downto 0);
  signal flag : std_logic;
  signal saida_flag : std_logic;
  signal saida_LD : std_logic_vector(1 downto 0);
  signal saida_RET : std_logic_vector (8 downto 0);

begin

-- O port map completo do MUX.
MUX1_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Data_IN,
                 entradaB_MUX =>  Instruction_IN(7 downto 0),
                 seletor_MUX => Sinais_Controle(6),
                 saida_MUX => MUX_REG1);

-- O port map dos registradores da.

-- COLOCAR O BANCO DE REGISTRADORES			
REG_BANK : entity work.bancoRegistradoresArqRegMem generic map(larguraDados => larguraDados, larguraEndBancoRegs => 2)
		port map(
		  clk  => CLK,
        endereco => Instruction_IN(10 downto 9),
        dadoEscrita => Saida_ULA,
		  habilitaEscrita => Habilita_REG,
        saida => REG_ULA_A
		);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => Mux_ProxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA, saida_flag => flag);
			 
			 
DEC_Instruction_IN : entity work.decoderInstru
			port map (opcode => Instruction_IN(14 downto 11), saida=> Sinais_Controle);

			 
MuxProxPC : entity work.muxGenerico4x1 generic map (larguraDados => larguraEnderecos)
        port map( entrada0_MUX => proxPC ,
                 entrada1_MUX => Instruction_IN(8 downto 0),
					  entrada2_MUX => saida_RET,
					  entrada3_MUX => "000000000",
                 seletor_MUX => saida_LD,
                 saida_MUX => Mux_ProxPC );
					  
FlagZero : entity work.FlipFlop
          port map (DIN => flag, DOUT =>saida_flag, ENABLE =>Sinais_Controle(2), CLK => CLK, RST => '0');
			 
LogicaDesvio1 :  entity work.logicaDesvio
				port map (entrada_flag => saida_flag, entrada_jeq => Sinais_Controle(7),
				entrada_jmp => Sinais_Controle(10), entrada_jsr => Sinais_Controle(8), entrada_ret => Sinais_Controle(9),
				saida_mux => saida_LD);
				

REG_RETORNO : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos	)
          port map (DIN => proxPC, DOUT => saida_RET, ENABLE => Sinais_Controle(11), CLK => CLK, RST => '0');	 



Data_OUT <= REG_ULA_A;
Habilita_REG <= Sinais_Controle(5);
Reset_A <= Sinais_Controle(1);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Data_Address <= Instruction_IN(8 downto 0);
Palavra_Controle <= Sinais_Controle;


ROM_Address <= Endereco;
Rd <= Sinais_Controle(1);
Wr <= Sinais_Controle(0);
end architecture;
