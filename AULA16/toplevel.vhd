library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 

  larguraDados 	: natural := 32;
  larguraRegistradores : natural :=5;
  simulacao 			: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  
  );
  port   (
	
  CLOCK_50 : 	in std_logic;
  KEY:		in	std_logic_vector(3 downto 0);
  simulacao_pontos_controle : out std_logic_vector (11 downto 0);
 
  simulacao_endereco_RS : out std_logic_vector (larguraRegistradores -1 downto 0);
  simulacao_endereco_RT : out std_logic_vector (larguraRegistradores -1 downto 0);
  simulacao_endereco_RD : out std_logic_vector (larguraRegistradores -1 downto 0);

  simulacao_Dado_Escrito : out std_logic_vector (larguraDados -1 downto 0)
  );
end entity;


architecture arquitetura of TopLevel is

	signal CLK: std_logic;
	signal PC_Out: std_logic_vector(larguraDados -1 downto 0);
	signal Prox_PC: std_logic_vector (larguraDados -1 downto 0);
	signal PC_4 : std_logic_vector (larguraDados -1 downto 0);
	signal Imediato_estendido_shifted : std_logic_vector (larguraDados -1 downto 0);
	signal Imediato_estendido_shifted_somado: std_logic_vector (larguraDados -1 downto 0);
	signal flagZero: std_logic;
	signal BEQ: std_logic;
	signal Saida_Mux_BEQ : std_logic_vector (larguraDados -1 downto 0);
	signal Seletor_BEQ_PC : std_logic;
	signal instrucao : std_logic_vector (larguraDados -1 downto 0);
	signal Seletor_RT_RD : std_logic;
	signal Saida_MUX_RT_RD : std_logic_vector (larguraRegistradores -1 downto 0);
	signal Imediato_Estendido : std_logic_vector (larguraDados -1 downto 0);
	signal habEscritaREG : std_logic;
	signal Saida_REG_RS : std_logic_vector (larguraDados -1 downto 0);
	signal Saida_REG_RT : std_logic_vector (larguraDados -1 downto 0);
	signal Dado_Escrito : std_logic_vector (larguraDados -1 downto 0);
	signal Seletor_RT_Imediato : std_logic;
	signal Saida_MUX_RT_Imediato : std_logic_vector (larguraDados -1 downto 0);
	signal Seletor_ULA : std_logic_vector (3 downto 0);
	signal Saida_ULA : std_logic_vector (larguraDados -1 downto 0);
	signal habEscritaMEM : std_logic;
	signal habLeituraMEM : std_logic;
	signal Saida_RAM : std_logic_vector (larguraDados -1 downto 0);
	signal Seletor_ULA_RAM : std_logic;
	signal unidade_controle : std_logic_vector (11 downto 0);
	


begin
	
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
-- detectorSub0: work.edgeDetector(bordaSubida)
--         port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK);  
CLK <= CLOCK_50;



end generate;



PC : entity work.registradorGenerico generic map (larguraDados => larguraDados)
			port map(
				DIN => Prox_PC,
				DOUT => PC_Out,
				CLK => CLK,
				ENABLE => '1',
				RST => '0');

SomaPC : entity work.somaConstante generic map (larguraDados => larguraDados, constante => 4)
				port map (
					entrada => PC_Out,
					saida => PC_4 );
				
Somador : entity work.somadorGenerico generic map (larguraDados => larguraDados)
				port map(
					entradaA => PC_4,
					entradaB => Imediato_estendido_shifted,
					saida => Imediato_estendido_shifted_somado);
				
				
Mux_BEQ : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
					port map(
					entradaA_MUX => PC_4,
					entradaB_MUX => Imediato_estendido_shifted_somado,
					seletor_MUX => (flagZero and BEQ),
					saida_MUX => Saida_Mux_BEQ );
					
				
Mux_JMP : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
					port map(
					entradaA_MUX => Saida_Mux_BEQ,
					entradaB_MUX => (PC_4(31 downto 28) & instrucao(25 downto 0) & "00"),
					seletor_MUX => Seletor_BEQ_PC,
					saida_MUX => Prox_PC );
					
					
ROM : entity work.ROMMIPS
          port map (
				Endereco => PC_out,
				Dado => instrucao );
			
Mux_RT_RD : entity work.muxGenerico2x1 generic map (larguraDados => larguraRegistradores)
					port map(
					entradaA_MUX => instrucao(20 downto 16),
					entradaB_MUX => instrucao (15 downto 11),
					seletor_MUX => Seletor_RT_RD,
					saida_MUX => Saida_MUX_RT_RD );
					

Extensor : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
					port map (
						estendeSinal_IN => instrucao(15 downto 0),
						estendeSinal_OUT=> Imediato_Estendido );
						
bancoRegs: entity work.bancoRegistradores
		port map (
			clk => CLK,
			enderecoRS => instrucao (25 downto 21),
			enderecoRT => instrucao (20 downto 16),
			enderecoRD => Saida_MUX_RT_RD,
			habilitaEscritaRD => habEscritaREG,
			dadoEscritaRD => Dado_Escrito,
			saidaRS => Saida_REG_RS,
			saidaRT => Saida_REG_RT );
		
Mux_RT_IMEDIATO : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
							port map(
								entradaA_MUX => Saida_REG_RT,
								entradaB_MUX => Imediato_Estendido,
								seletor_MUX => Seletor_RT_Imediato,
								saida_MUX => Saida_MUX_RT_Imediato );
								
								

			
			
ULA: entity work.ULAMIPS
		generic map (
			larguraDados => larguraDados
		)
		port map(
			A => Saida_REG_RS,
			B => Saida_MUX_RT_Imediato,
			inverteB => '0',
			sel => ULAOpSeletor,
			R => saidaULA,
			ZERO => flagZero
		);

			
RAM : entity work.RAMMIPS  generic map(dataWidth => larguraDados, addrWidth => larguraDados)
			port map (
				CLK => CLK,
				Endereco => Saida_ULA,
				Dado_in => Saida_REG_RT,
				Dado_out => Saida_RAM,
				we => habEscritaMEM,
				re => habLeituraMEM,
				habilita => '1');		
				

Mux_ULA_MEM : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map (
				entradaA_MUX => Saida_ULA, 
				entradaB_MUX => Saida_RAM, 
				seletor_MUX => Seletor_ULA_RAM, 
				saida_MUX => Dado_Escrito 
			);

Decoder: entity work.decoderInstru generic map (larguraOpCode => 6, larguraFunct => 6, larguraSinaisControle => 12 )
		port map(
			opcode => instrucao(31 downto 26),
			funct => instrucao  (5 downto 0),
			saida => unidade_controle
		);	
		
-- Pontos de controle


Seletor_BEQ_PC <= unidade_controle(11);
Seletor_RT_RD <= unidade_controle(10);
habEscritaREG <= unidade_controle(9);
Seletor_RT_Imediato <= unidade_controle(8);
Seletor_ULA <= unidade_controle(7 downto 4);
Seletor_ULA_RAM <= unidade_controle (3);
BEQ <= unidade_controle(2);
habEscritaMEM <= unidade_controle(0);
habLeituraMEM <= unidade_controle(1);

-- Simulacao
simulacao_pontos_controle <= unidade_controle;
simulacao_endereco_RS <= instrucao(25 downto 21);
simulacao_endereco_RT <= instrucao(20 downto 16);
simulacao_endereco_RD <= instrucao (15 downto 11);

simulacao_Dado_Escrito <= Dado_Escrito;
				
Imediato_estendido_shifted <= std_logic_vector(shift_left(unsigned(Imediato_Estendido), 2));
end architecture;