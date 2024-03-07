library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados 		: natural := 32;
      larguraEnderecosROM : natural := 10;
		larguraEnderecosRAM : natural := 12;
		larguraInstrucao	: natural := 32;
		larguraEndBancoRegs : natural := 5;
      	simulacao 			: boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
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
	inspectInstru: out std_logic_vector(larguraInstrucao-1 downto 0)

  );
end entity;


architecture arquitetura of TopLevel is
-- ## DECLARANDO SINAIS:

	signal CLK	:					std_logic;
	-- PC e incrementador
	signal PC:						std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal proxPC:					std_logic_vector(larguraEnderecosROM-1 downto 0);

	-- endereço dos registradores
	signal enderecoRS:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRT:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRD:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal hab_RD:					std_logic;

	-- Conexões com a ULA
	signal ULA_A:					std_logic_vector(larguraDados-1 downto 0);
	signal ULA_B:					std_logic_vector(larguraDados-1 downto 0);
	signal saida_ULA:				std_logic_vector(larguraDados-1 downto 0);
	signal operacao:				std_logic_vector(1 downto 0);

	-- Instrução
	signal instrucao:				std_logic_vector(larguraInstrucao-1 downto 0);
	signal opCode :				std_logic_vector(5 downto 0);
	signal funct :					std_logic_vector(5 downto 0);

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
			larguraDados => 10
		)
		port map (
			DIN => proxPC,
			DOUT => PC,
			CLK => CLK,
			ENABLE => '1',
			RST => '0'
		);

incrementaPC: entity work.somaConstante
		generic map
		(
        larguraDados  => 10,
        constante     => 4
		)
		port map (
			entrada => PC,
			saida => proxPC
		);
			
ROM : entity work.memoriaROM   
          port map (
			Endereco => PC,
			Dado => instrucao
		);

bancoRegs: entity work.bancoRegistradores
		port map (
			clk => CLK,
			enderecoRS => enderecoRS,
			enderecoRT => enderecoRT,
			enderecoRD => enderecoRD,
			habilitaEscritaRD => hab_RD,
			dadoEscritaRD => saida_ULA,
			saidaRS => ULA_A,
			saidaRT => ULA_B,
			inspectR0 => inspectR0,
			inspectR1 => inspectR1,
			inspectR2 => inspectR2
		);
	
ULA: entity work.ULASomaSubPassa
		port map(
			entradaA => ULA_A,
			entradaB => ULA_B,
			seletor => operacao,
			saida => saida_ULA
		);

opCode <= instrucao(31 downto 26);
enderecoRS <= instrucao(25 downto 21);
enderecoRT <= instrucao(20 downto 16);
enderecoRD <= instrucao(15 downto 11);
funct <= instrucao(5 downto 0);

inspectEndRS <= enderecoRS;
inspectEndRT <= enderecoRT;
inspectEndRD <= enderecoRD;

inspectInstru <= instrucao;
hab_RD <= '1'; -- para simular operações de SOMA / SUB
operacao <= instrucao(31 downto 30); -- para simular operações de SOMA(00) / SUB(01) / ZERA(11)
end architecture;