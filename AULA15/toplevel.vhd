library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraEnderecosROM : natural := 32;
	larguraEnderecosRAM : natural := 12;
	larguraInstrucao	: natural := 32;
	  
	larguraDados 		: natural := 32;
	larguraEndBancoRegs : natural := 5;

	larguraSinaisControle : natural := 11;
	
	larguraULASelector	: natural := 4;
	
	larguraOpCode	    : natural := 6;
	larguraImediato		: natural := 16;
	larguraFunc			: natural := 6;

	larguraShift		: natural := 2;
	
	simulacao 			: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : 	in std_logic;
	DATA_OUT:	out std_logic_vector(larguraDados-1 downto 0);
	KEY:		in	std_logic_vector(3 downto 0);
	inspectR0: out std_logic_vector(larguraDados-1 downto 0);
	inspectR1: out std_logic_vector(larguraDados-1 downto 0);
	inspectR2: out std_logic_vector(larguraDados-1 downto 0);
	inspectEndRS: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectEndRT: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectEndRD: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectInstru: out std_logic_vector(larguraInstrucao-1 downto 0);
	inspectPC: out std_logic_vector(larguraDados-1 downto 0)

  );
end entity;


architecture arquitetura of TopLevel is
-- ## DECLARANDO SINAIS:

	signal CLK	:						std_logic;
	-- PC, incrementador ROM e MUX
	signal PC_out:						std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal PC_in:						std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal proxPC_4:					std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal sigExtImediatoShifted : 		std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal PC_PlusSigExtImediatoShifted : std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal beqAndZero :				std_logic;
	
	-- endereço dos registradores
	signal enderecoRS:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRT:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRD:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRtRd:			std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal hab_RD:					std_logic;
	
	-- registradores
	signal saidaRT:					std_logic_vector(larguraDados-1 downto 0);
	signal saidaEscritaRD:			std_logic_vector(larguraDados-1 downto 0);
	
	-- Conexões com a ULA
	signal ULA_A:					std_logic_vector(larguraDados-1 downto 0);
	signal ULA_B:					std_logic_vector(larguraDados-1 downto 0);
	signal ULAOpSeletor :	 		std_logic_vector(larguraULASelector-1 downto 0);
	signal saidaULA:				std_logic_vector(larguraDados-1 downto 0);
	signal flagZero:				std_logic;
	
	-- RAM
	signal saidaRAM:				std_logic_vector(larguraDados-1 downto 0);
	
	-- Instrução
	signal instrucao:				std_logic_vector(larguraInstrucao-1 downto 0);
	signal opCode :					std_logic_vector(larguraOpCode-1 downto 0);
	signal funct :					std_logic_vector(larguraFunc-1 downto 0);
	signal imediato :				std_logic_vector(larguraImediato-1 downto 0);
	
	signal SigExt :						std_logic_vector(larguraDados-1 downto 0);
	-- Pontos de controle
	signal decoderControle : std_logic_vector(larguraSinaisControle-1 downto 0);

	signal wrRAM : 				std_logic;
	signal rdRAM : 				std_logic;
	signal beq : 					std_logic;
	signal MuxULARAMSeletor : 	std_logic;
	signal MUuxRtImediatoSeletor :	std_logic;
	signal wrReg : 				std_logic;
	signal muxRtRdSeletor : 		std_logic;

begin
	
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
-- detectorSub0: work.edgeDetector(bordaSubida)
--         port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK);  
CLK <= CLOCK_50;

end generate;

ProgramCounter: entity work.registradorGenerico 
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map (
			DIN => PC_in,
			DOUT => PC_out,
			CLK => CLK,
			ENABLE => '1',
			RST => '0'
		);

incrementaPC: entity work.somaConstante
		generic map
		(
        larguraDados  => larguraEnderecosROM,
        constante     => 4
		)
		port map (
			entrada => PC_out,
			saida => proxPC_4
		);

SOMADOR :  entity work.somadorGenerico  
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map( entradaA => proxPC_4, entradaB => sigExtImediatoShifted, saida => PC_PlusSigExtImediatoShifted);

		
MUXPC : entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecosROM)
		port map (entradaA_MUX => proxPC_4, entradaB_MUX => PC_PlusSigExtImediatoShifted, seletor_MUX => beqAndZero, saida_MUX => PC_in );
		
ROM : entity work.ROMMIPS   
          port map (
			Endereco => PC_out,
			Dado => instrucao
			);
			
MuxRtRd : entity work.muxGenerico2x1  generic map (larguraDados => larguraEndBancoRegs)
		port map (entradaA_MUX => enderecoRT, entradaB_MUX => enderecoRD, seletor_MUX => muxRtRdSeletor, saida_MUX => enderecoRtRd );

		
Estende : entity work.estendeSinalGenerico  generic map (larguraDadoEntrada => larguraImediato, larguraDadoSaida => larguraDados)
		port map (estendeSinal_IN => imediato, estendeSinal_OUT => sigExt );
		
bancoRegs: entity work.bancoRegistradores
		port map (
			clk => CLK,
			enderecoRS => enderecoRS,
			enderecoRT => enderecoRT,
			enderecoRD => enderecoRtRd,
			habilitaEscritaRD => hab_RD,
			dadoEscritaRD => saidaEscritaRD,
			saidaRS => ULA_A,
			saidaRT => saidaRT
		);
	
MUuxRtImediato : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		port map (entradaA_MUX => saidaRT, entradaB_MUX => SigExt, seletor_MUX => MUuxRtImediatoSeletor, saida_MUX => ULA_B );
		
		
		ULA: entity work.ULASomaSubPassa generic map (larguraDados => larguraDados, larguraInstru => larguraULASelector)
		port map(
			entradaA => ULA_A,
			entradaB => ULA_B,
			seletor => ULAOpSeletor,
			saida => saidaULA,
			flagZ => flagZero
			);
			
			RAM : entity work.RAMMIPS  generic map(dataWidth => larguraDados, addrWidth => larguraDados)
			port map (
				CLK => CLK,
				Endereco => saidaULA,
				Dado_in => saidaRT,
				Dado_out => saidaRAM,
				we => wrRAM,
			re => rdRAM,
			habilita => '1'
			);
			
MUuxULARAM : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map (entradaA_MUX => saidaULA, entradaB_MUX => saidaRAM, seletor_MUX => MuxULARAMSeletor, saida_MUX => saidaEscritaRD );
			
DECODER : entity work.decoderInstru
			port map (opcode => opcode, saida => decoderControle);
			
			-- Controle
			wrRAM <= decoderControle(0);
			rdRAM <= decoderControle(1);
			beq <= decoderControle(2);
			MuxULARAMSeletor <= decoderControle(3);
			ULAOpSeletor <= decoderControle(7 downto 4);
			MUuxRtImediatoSeletor <= decoderControle(8);
			wrReg  <= decoderControle(9);
			muxRtRdSeletor <= decoderControle(10);
			
			-- Tipo R
			opCode <= instrucao(31 downto 26);
			enderecoRS <= instrucao(25 downto 21);
			enderecoRT <= instrucao(20 downto 16);
			enderecoRD <= instrucao(15 downto 11);
			funct <= instrucao(5 downto 0);
			
			-- Tipo I
			imediato <= instrucao(15 downto 0);
			
			
			-- And Para o beq
			beqAndZero <= beq and flagZero;
			
			
			inspectEndRS <= enderecoRS;
			inspectEndRT <= enderecoRT;
			inspectEndRD <= enderecoRD;

			inspectR0 <= ULA_A;
			inspectR1 <= saidaRT;
			inspectR2 <= saidaEscritaRD;

			inspectInstru <= instrucao;
			
			sigExtImediatoShifted <= std_logic_vector(shift_left(unsigned(SigExt), larguraShift));

			inspectPC <= PC_out;
-- hab_RD <= '1';
end architecture;