library ieee;
use ieee.std_logic_1164.all;

entity topLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 5;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50  : in std_logic;
	 KEY : in std_logic_vector (3 downto 0);
	 OpCode : out std_logic_vector (5 downto 0)
  );
end entity;


architecture arquitetura of topLevel is
	signal CLK : std_logic;
	signal saida_ULA : std_logic_vector ((larguraDados - 1) downto 0);
	signal saida_REG_A : std_logic_vector ((larguraDados - 1) downto 0);
	signal saida_REG_B : std_logic_vector ((larguraDados - 1) downto 0);
	signal saida_ROM : std_logic_vector ((larguraDados -1) downto 0);
	signal entrada_PC : std_logic_vector ((larguraDados - 1) downto 0);
	signal saida_PC : std_logic_vector ((larguraDados - 1) downto 0);
	signal saida_RAM : std_logic_vector((larguraDados -1) downto 0);
	signal extensao :  std_logic_vector((larguraDados -1) downto 0);
	constant Hab_Escrita : std_logic := '1';
	constant operacao_ULA : std_logic := '1';

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Instancia do banco de registradores

BancoReg : entity work.bancoReg   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraEnderecos)
          port map ( clk => clk,
              enderecoA => saida_ROM(25 downto 21),
              enderecoB => saida_ROM(20 downto 16),
              enderecoC => saida_ROM(15 downto 11),
              dadoEscritaC => saida_RAM,
              escreveC => Hab_Escrita,
              saidaA => saida_REG_A, 
              saidaB  => saida_REG_B);
				  
-- Instancia da ULA

ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => saida_REG_A,
					entradaB =>  extensao, 
					saida => saida_ULA, 
					seletor => operacao_ULA);
					
-- Instancia da ROM
			
ROM : entity work.ROMMIPS  generic map(dataWidth => larguraDados, addrWidth => larguraDados)
			 port map (Endereco => saida_PC,
					Dado=> saida_ROM);
					
-- Instancia PC
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => entrada_PC, 
			 DOUT => saida_PC, 
			 ENABLE => '1', 
			 CLK => CLK, 
			 RST => '0');
			 

-- Instancia Incrementa PC
					
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => saida_PC, 
						saida => entrada_PC);
		  
		  
		  
RAMMIPS: entity work.RAMMIPS  generic map (dataWidth => larguraDados, addrWidth => larguraDados)
        port map( clk => CLK,
						Endereco =>saida_ULA,
						Dado_in=>saida_REG_B,
						Dado_out=>saida_RAM,
						we=>'1',
						re=>'0',
						habilita=>'1');
		  
		  
EXTENSAOSIGNAL:  entity work.ExtensorSinal
        port map( Dado_in => saida_ROM(15 downto 0), 
						Dado_out => extensao);
		  

-- OpCode <= saida_ROM(31 downto 26);

end architecture;

