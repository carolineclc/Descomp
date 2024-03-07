library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean :=  FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port(
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N: in std_logic;
	 LEDR  : out std_logic_vector(9 downto 0);
	 HEX0	 : out std_logic_vector (6 downto 0);
	 HEX1	 : out std_logic_vector (6 downto 0);
	 HEX2	 : out std_logic_vector (6 downto 0);
	 HEX3	 : out std_logic_vector (6 downto 0);
	 HEX4	 : out std_logic_vector (6 downto 0);
	 HEX5	 : out std_logic_vector (6 downto 0);
	 SW	 : in std_logic_vector (9 downto 0);
	 entrada : out std_logic;
	 saida : out std_logic
	 );

end entity;


architecture arquitetura of toplevel is

	signal CLK : std_logic;


-- ROM
	signal proxPC:std_logic_vector(31 downto 0);
	signal PCMais4:std_logic_vector(31 downto 0);
	signal pcAddr:std_logic_vector(31 downto 0);
	

	signal Instruct  : std_logic_vector(31 downto 0);
	signal Imediato  : std_logic_vector(15 downto 0);
	signal SigExt  : std_logic_vector(31 downto 0);
	signal Funct : std_logic_vector(5 downto 0);
	signal FromBEQMuxToJRMux: std_logic_vector(31 downto 0);
	
-- DESVIO ROM

	signal SigExtShiftado  : std_logic_vector(31 downto 0);
	signal PCMais4MaisShiftado : std_logic_vector(31 downto 0);
	signal EnderecoBEQ : std_logic_vector(31 downto 0);
	
	signal ImediatoShiftado : std_logic_vector(27 downto 0);
	signal EnderecoJMP : std_logic_vector(31 downto 0);

	signal MuxBEQorBNE : std_logic;


-- BANCO DE REGISTRADORES

	signal addrRegA : std_logic_vector(4 downto 0);
	signal addrRegB : std_logic_vector(4 downto 0);
	signal addrRegC : std_logic_vector(4 downto 0);

	signal DataInRd : std_logic_vector(31 downto 0);
	signal MuxRtRdOut : std_logic_vector(4 downto 0);

	
-- RAM 
	signal RamOUT : std_logic_vector(31 downto 0);
	
-- ULA
	signal ULAOut : std_logic_vector(31 downto 0);
	signal ULAFlagEqual : std_logic;
	
	signal SaidaRsBancoReg : std_logic_vector(31 downto 0);
	signal SaidaRtBancoReg : std_logic_vector(31 downto 0);
	signal EntradaBUla : std_logic_vector(31 downto 0);

	signal UlaSelect : std_logic_vector(3 downto 0);
	signal ULAShift : std_logic_vector(1 downto 0);
	


	signal MuxPCmais4BEQJR : std_logic;

	signal PontosDeControle : std_logic_vector(13 downto 0);
	
-- PontosDeControle
	signal MuxPCmais4BEQ : std_logic;
	signal MuxRtRd : std_logic_vector(1 downto 0);
	signal HabEscritaReg : std_logic;
	signal MuxRtImediato : std_logic;
	signal UlaOp : std_logic_vector(2 downto 0);
	signal TipoR : std_logic;
	signal MuxUlaMem : std_logic_vector (1 downto 0);
	signal BNE : std_logic;
	signal BEQ : std_logic;
	signal habLeituraMem : std_logic;
	signal habEscritaMem : std_logic;

	
-- SAIDA
 signal LedData : std_logic_vector(31 downto 0);
		
begin

CLK <= KEY(0);

-- ROM

PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => proxPC, DOUT => pcAddr, ENABLE => '1' , CLK => CLK, RST => '0');
			 
ROM : entity work.ROMMIPS
			port map(Endereco => pcAddr, Dado => Instruct );

Funct <= Instruct(5 downto 0);
			
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
			port map( entrada => pcAddr, saida => PCMais4);
		
-- LOGICA DE DESVIO

SHIFT_LEFT_SIG_EXT : entity work.shiftLeft2
	port map(
		entrada => SigExt,
		saida => SigExtShiftado
	);

SOMADOR_BRANCH: entity work.somadorGenerico
	port map(
		entradaA => PCMais4,
		entradaB => SigExtShiftado,
		saida => PCMais4MaisShiftado
	);

MUX_BEQ_BNE : entity work.muxGenerico2x1SingleBit
	port map(
		entradaA_MUX => ULAFlagEqual,
		entradaB_Mux => not ULAFlagEqual,
		seletor_MUX => bne,
		saida_mux => MuxBEQorBNE
	);

	
MUX_BEQ_PCm4 : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => PCMais4,
		entradaB_Mux => PCMais4MaisShiftado,
		seletor_MUX => BEQ and MuxBEQorBNE,
		saida_mux => enderecoBEQ
	);
	
SHIFT_LEFT_IMEDIATO_JMP : entity work.shiftLeft2
	port map(
		entrada(25 downto 0) => Instruct(25 downto 0),
		entrada(31 downto 26) => "000000",
		saida(27 downto 0) => ImediatoShiftado
	);

enderecoJMP(27 downto 0) <= ImediatoShiftado;
enderecoJMP(31 downto 28) <= PCMais4(31 downto 28);

MUX_JMP_BEQ : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => enderecoBEQ,
		entradaB_MUX => enderecoJMP,
		seletor_MUX => MuxPCmais4BEQ,
		saida_mux => FromBEQMuxToJRMux
	);
	
MUX_JMP_BEQ_JR : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => FromBEQMuxToJRMux,
		entradaB_MUX => SaidaRsBancoReg,
		seletor_MUX => MuxPCmais4BEQJR,
		saida_mux => proxPC
	);

-- BANCO DE REGISTRADORES

addrRegA <= Instruct(25 downto 21);
addrRegB <= Instruct(20 downto 16);
addrRegC <= Instruct(15 downto 11);


MUX_RT_RD : entity work.muxGenerico4x1 generic map (larguraEntrada => 5)
	port map(
		entradaA_MUX => addrRegB,
		entradaB_MUX => addrRegC,
		entradaC_MUX => 5d"31",		
		entradaD_MUX => "00000",
		seletor_MUX => MuxRtRd,
		saida_MUX => MuxRtRdOut
	);


BancoReg : entity work.bancoReg
	port map (
		clk => CLK,
		enderecoA => addrRegA,
		enderecoB => addrRegB,
		enderecoC => MuxRtRdOut,
		dadoEscritaC => DataInRd,
		escreveC => habEscritaReg,
		saidaA => SaidaRsBancoReg,
		saidaB => SaidaRtBancoReg 
	);

Imediato <= Instruct(15 downto 0);				

EXT_SIGNAL : entity work.extensaoDeSinal
	port map(
		entrada => Imediato,
		saida => SigExt
	);

				
-- PontosDeControle
	MuxPCmais4BEQ <= PontosDeControle(13);
	MuxRtRd <= PontosDeControle(12 downto 11);
	HabEscritaReg <= PontosDeControle(10);
	MuxRtImediato <= PontosDeControle(9);
	UlaOp <=PontosDeControle(8 downto 6);
	MuxUlaMem <= PontosDeControle(5 downto 4);
	BNE <= PontosDeControle(3);
	BEQ <= PontosDeControle(2);
	habLeituraMem <= PontosDeControle(1);
	habEscritaMem <= PontosDeControle(0);
	
	
	
UNIDADE_DE_CONTROLE_MIPS : entity work.unidadeDeControle
	port map(
		opcode => Instruct(31 downto 26),
		saida => PontosDeControle
	);

UC_ULA : entity work.UC_ULA
	port map(
		ulaOp => UlaOp,
		funct => Funct,
		jr => MuxPCmais4BEQJR,
		SHFT => ULAShift,
		ULACtrl => UlaSelect
	);



MUX_ENTRADA_ULA : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => SaidaRtBancoReg,
		entradaB_MUX => SigExt,
		seletor_MUX => MuxRtImediato,
		saida_MUX => EntradaBUla
	);

ULA : entity work.UlaSomaSub
	port map(
		entradaA => SaidaRsBancoReg,
		entradaB => EntradaBUla,
		seletor => UlaSelect,
		saidaULA => ULAOut,
		flagEQ => ULAFlagEqual,
		SHFT => ULAShift
	);

MEMORIA_RAM : entity work.memoriaRam
	port map(
		addr => ULAOut,
		dado_in => SaidaRtBancoReg,
		dado_out => RamOUT, 
		we => habEscritaMem,
		re => habLeituraMem,
		habilita => '1',
		clk => CLK
	);

MUX_DATA_IN_BANCO_REG : entity work.muxGenerico4x1 generic map (larguraEntrada => 32)
	port map(
		entradaA_MUX => ULAOut,
		entradaB_MUX => RamOUT,
		entradaC_MUX(31 downto 16) => Imediato,
		entradaC_MUX(15 downto 0) => "0000000000000000",
		entradaD_MUX => PCMais4,
		seletor_MUX => MuxUlaMem,
		saida_MUX => DataInRd
	);
	
MUX_LEDS : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => pcAddr,
		entradaB_MUX => ULAOut,
		seletor_MUX => SW(0),
		saida_MUX => LedData
	);

	
DEC_H0 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(3 downto 0),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX0);
DEC_H1 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(7 downto 4),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX1);
DEC_H2 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(11 downto 8),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX2);
DEC_H3 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(15 downto 12),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX3);
DEC_H4 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(19 downto 16),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX4);
DEC_H5 :  entity work.conversorHex7Seg
port map(dadoHex => LedData(23 downto 20),
    apaga =>  '0',
    negativo => '0',
    overFlow =>  '0',
    saida7seg => HEX5);
	 
LEDR(7 downto 0) <= LedData(31 downto 24);

end architecture;
