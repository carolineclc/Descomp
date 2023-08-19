library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
--  constant NOP  : std_logic_vector(3 downto 0) := "0000";
--  constant LDA  : std_logic_vector(3 downto 0) := "0001";
--  constant SOMA : std_logic_vector(3 downto 0) := "0010";
--  constant SUB  : std_logic_vector(3 downto 0) := "0011";
--  constant LDI  : std_logic_vector(3 downto 0) := "0100";
--  constant STA  : std_logic_vector(3 downto 0) := "0101";
--  constant JMP  : std_logic_vector(3 downto 0) := "0110";
--  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
--  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
--  constant JSR  : std_logic_vector(3 downto 0) := "1001";
--  constant RET  : std_logic_vector(3 downto 0) := "1010";
  begin
  
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
tmp(0) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(1) := x"5" & '1' & x"20";	-- STA @288				#Armazena o valor do acumulador no display HEX0
tmp(2) := x"5" & '1' & x"21";	-- STA @289				#Armazena o valor do acumulador no display HEX1
tmp(3) := x"5" & '1' & x"22";	-- STA @290				#Armazena o valor do acumulador no display HEX2
tmp(4) := x"5" & '1' & x"23";	-- STA @291				#Armazena o valor do acumulador no display HEX3
tmp(5) := x"5" & '1' & x"24";	-- STA @292				#Armazena o valor do acumulador no display HEX4
tmp(6) := x"5" & '1' & x"25";	-- STA @293				#Armazena o valor do acumulador no display HEX5
tmp(7) := x"5" & '1' & x"00";	-- STA @256				#Armazena o valor do acumulador nos LEDs LDR0 ~ LEDR7
tmp(8) := x"5" & '1' & x"01";	-- STA @257				#Armazena o valor do bit0 do acumulador no LDR8 (LED Overflow)
tmp(9) := x"5" & '1' & x"02";	-- STA @258				#Armazena o valor do bit0 do acumulador no LDR9 (LED limite atingido)
tmp(10) := x"5" & '0' & x"00";	-- STA @0				#Armazena o valor do acumulador em MEM[0] (unidades)
tmp(11) := x"5" & '0' & x"01";	-- STA @1				#Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(12) := x"5" & '0' & x"02";	-- STA @2				#Armazena o valor do acumulador em MEM[2] (centenas)
tmp(13) := x"5" & '0' & x"03";	-- STA @3				#Armazena o valor do acumulador em MEM[3] (milhares)
tmp(14) := x"5" & '0' & x"04";	-- STA @4				#Armazena o valor do acumulador em MEM[4] (dezenas de milhares)
tmp(15) := x"5" & '0' & x"05";	-- STA @5				#Armazena o valor do acumulador em MEM[5] (centenas de milhares)
tmp(16) := x"5" & '0' & x"12";	-- STA @18				#Armazena o valor do acumulador em MEM[18] (zera flag de verificar limite)
tmp(17) := x"5" & '0' & x"13";	-- STA @19				#Armazena o valor do acumulador em MEM[19] (zera flag de inibir contagem)
tmp(18) := x"5" & '0' & x"14";	-- STA @20				#Armazena o valor do acumulador em MEM[20] (constante de valor 0)
tmp(19) := x"4" & '0' & x"01";	-- LDI $1				#Carrega acumulador com valor 1
tmp(20) := x"5" & '0' & x"15";	-- STA @21				#Armazena o valor do acumulador em MEM[21] (constante de valor 1)
tmp(21) := x"4" & '0' & x"0A";	-- LDI $10				#Carrega acumulador com valor 10
tmp(22) := x"5" & '0' & x"16";	-- STA @22				#Armazena o valor do acumulador em MEM[22] (constante de valor 10)
tmp(23) := x"0" & '0' & x"00";        	-- inicio: NOP
tmp(24) := x"1" & '1' & x"60";	-- LDA @352				#Leitura do botao de incremento de contagem (KEY0)
tmp(25) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(26) := x"7" & '0' & x"1C";	-- JEQ .fimbotao0				#Se o valor lido em KEY0 for zero, nao entra na subrotina de incremento
tmp(27) := x"9" & '0' & x"86";	-- JSR .incremento				#Desvia para a sub-rotina de incremento de valor
tmp(28) := x"0" & '0' & x"00";        	-- fimbotao0: NOP				#Retorna da sub-rotina de incremento de valor
tmp(29) := x"9" & '0' & x"2E";	-- JSR .display				#Desvia para a sub-rotina que escreve os valores das variáveis para os respectivos displays
tmp(30) := x"0" & '0' & x"00";        	-- NOP				#Retorna da sub-rotina que escreve os valores das variáveis para os respectivos displays
tmp(31) := x"1" & '1' & x"61";	-- LDA @353				#Leitura do botao de configuracao de limite (KEY1)
tmp(32) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(33) := x"7" & '0' & x"23";	-- JEQ .fimbotao1				#Se o valor lido em KEY1 for zero, nao entra na subrotina de configuracao de limite
tmp(34) := x"9" & '0' & x"3B";	-- JSR .configuracaolimite				#Desvia para a sub-rotina de configuração do limite de incremento
tmp(35) := x"0" & '0' & x"00";        	-- fimbotao1: NOP				#Retorna da sub-rotina de configuração do limite de incremento
tmp(36) := x"1" & '0' & x"12";	-- LDA @18				#Carrega o acumulador com a leitura do valor em MEM[18] (flag verifica limite)
tmp(37) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(38) := x"7" & '0' & x"28";	-- JEQ .naoverifica				#Se o valor lido em MEM[18] for zero, nao entra na subrotina de verificar limite atingido
tmp(39) := x"9" & '0' & x"63";	-- JSR .verifica				#Desvia para a sub-rotina que verifica se o limite de contagem foi alcancado
tmp(40) := x"0" & '0' & x"00";        	-- naoverifica: NOP				#Retorna da sub-rotina que verifica se o limite de contagem foi alcancado
tmp(41) := x"1" & '1' & x"64";	-- LDA @356				#Leitura do botao de reiniciar contagem (FPGA_RESET)
tmp(42) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(43) := x"7" & '0' & x"2D";	-- JEQ .voltainicio				#Se o valor lido em FPGA_RESET for zero, nao entra na subrotina de reiniciar contagem
tmp(44) := x"9" & '0' & x"C4";	-- JSR .reinicia				#Desvia para a sub-rotina de reiniciar contagem
tmp(45) := x"6" & '0' & x"17";	-- voltainicio: JMP .inicio				#Desvia para o comeco do Laco Principal
tmp(46) := x"1" & '0' & x"00";	-- display: LDA @0				#Carrega o acumulador com a leitura do valor em MEM[0] (unidades)
tmp(47) := x"5" & '1' & x"20";	-- STA @288				#Armazena o valor do acumulador no display HEX0
tmp(48) := x"1" & '0' & x"01";	-- LDA @1				#Carrega o acumulador com a leitura do valor em MEM[1] (dezenas)
tmp(49) := x"5" & '1' & x"21";	-- STA @289				#Armazena o valor do acumulador no display HEX1
tmp(50) := x"1" & '0' & x"02";	-- LDA @2				#Carrega o acumulador com a leitura do valor em MEM[2] (centenas)
tmp(51) := x"5" & '1' & x"22";	-- STA @290				#Armazena o valor do acumulador no display HEX2
tmp(52) := x"1" & '0' & x"03";	-- LDA @3				#Carrega o acumulador com a leitura do valor em MEM[3] (milhares)
tmp(53) := x"5" & '1' & x"23";	-- STA @291				#Armazena o valor do acumulador no display HEX3
tmp(54) := x"1" & '0' & x"04";	-- LDA @4				#Carrega o acumulador com a leitura do valor em MEM[4] (dezenas de milhares)
tmp(55) := x"5" & '1' & x"24";	-- STA @292				#Armazena o valor do acumulador no display HEX4
tmp(56) := x"1" & '0' & x"05";	-- LDA @5				#Carrega o acumulador com a leitura do valor em MEM[5] (centenas de milhares)
tmp(57) := x"5" & '1' & x"25";	-- STA @293				#Armazena o valor do acumulador no display HEX5
tmp(58) := x"A" & '0' & x"00";        	-- RET				#Volta ao Laco Principal
tmp(59) := x"4" & '0' & x"80";	-- configuracaolimite: LDI $128				#Carrega o acumulador com 128
tmp(60) := x"5" & '1' & x"00";	-- STA @256				#Liga o LED 7, informando que estao sendo configurados os limites
tmp(61) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(62) := x"5" & '0' & x"06";	-- STA @6				#Armazena o valor do acumulador em MEM[6] (limite das unidades)
tmp(63) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(64) := x"1" & '1' & x"61";	-- dezenas: LDA @353				#Leitura do botao de incremento de contagem (KEY1)
tmp(65) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(66) := x"7" & '0' & x"40";	-- JEQ .dezenas				#Se o valor lido em KEY1 for zero, continua esperando
tmp(67) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(68) := x"5" & '0' & x"07";	-- STA @7				#Armazena o valor do acumulador em MEM[7] (limite das dezenas)
tmp(69) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(70) := x"1" & '1' & x"61";	-- centenas: LDA @353				#Leitura do botao de incremento de contagem (KEY1)
tmp(71) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(72) := x"7" & '0' & x"46";	-- JEQ .centenas				#Se o valor lido em KEY1 for zero, continua esperando
tmp(73) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(74) := x"5" & '0' & x"08";	-- STA @8				#Armazena o valor do acumulador em MEM[8] (limite das centenas)
tmp(75) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(76) := x"1" & '1' & x"61";	-- milhares: LDA @353				#Leitura do botao de incremento de contagem (KEY1)
tmp(77) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(78) := x"7" & '0' & x"4C";	-- JEQ .milhares				#Se o valor lido em KEY1 for zero, continua esperando
tmp(79) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(80) := x"5" & '0' & x"09";	-- STA @9				#Armazena o valor do acumulador em MEM[9] (limite dos milhares)
tmp(81) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(82) := x"1" & '1' & x"61";	-- dezmilhares: LDA @353				#Leitura do botao de incremento de contagem (KEY1)
tmp(83) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(84) := x"7" & '0' & x"52";	-- JEQ .dezmilhares				#Se o valor lido em KEY1 for zero, continua esperando
tmp(85) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(86) := x"5" & '0' & x"0A";	-- STA @10				#Armazena o valor do acumulador em MEM[10] (limite das dezenas de milhares)
tmp(87) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(88) := x"1" & '1' & x"61";	-- cenmilhares: LDA @353				#Leitura do botao de incremento de contagem (KEY1)
tmp(89) := x"8" & '0' & x"14";	-- CEQ @20				#Compara com valor 0
tmp(90) := x"7" & '0' & x"58";	-- JEQ .cenmilhares				#Se o valor lido em KEY1 for zero, continua esperando
tmp(91) := x"1" & '1' & x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
tmp(92) := x"5" & '0' & x"0B";	-- STA @11				#Armazena o valor do acumulador em MEM[11] (limite das centenas de milhares)
tmp(93) := x"4" & '0' & x"01";	-- incremento: LDI $1				#Carrega o acumulador com o valor 0
tmp(94) := x"5" & '0' & x"12";	-- STA @18				#Ativa flag de verificar limite
tmp(95) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com 0
tmp(96) := x"5" & '1' & x"00";	-- STA @256				#Desliga o LED 7, informando que estao sendo configurados os limites
tmp(97) := x"5" & '1' & x"FE";	-- STA @510				#Limpa flag de botão 1 apertado
tmp(98) := x"A" & '0' & x"00";        	-- RET				#Volta ao Laco Principal
tmp(99) := x"1" & '0' & x"00";	-- verifica: LDA @0				#Carrega o acumulador com a leitura do valor em MEM[0] (unidades)
tmp(100) := x"8" & '0' & x"06";	-- CEQ @6				#Compara com valor em MEM[6] (limite das unidades)
tmp(101) := x"7" & '0' & x"67";	-- JEQ .continua0				#Se o valor lido em MEM[0] for igual ao valor lido em MEM[6], continua verificando
tmp(102) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(103) := x"0" & '0' & x"00";        	-- continua0: NOP				#Continua na contagem
tmp(104) := x"1" & '0' & x"01";	-- LDA @1				#Carrega o acumulador com a leitura do valor em MEM[1] (dezenas)
tmp(105) := x"8" & '0' & x"07";	-- CEQ @7				#Compara com valor em MEM[7] (limite das dezenas)
tmp(106) := x"7" & '0' & x"6C";	-- JEQ .continua1				#Se o valor lido em MEM[1] for igual ao valor lido em MEM[7], continua verificando
tmp(107) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(108) := x"0" & '0' & x"00";        	-- continua1: NOP				#Continua na contagem
tmp(109) := x"1" & '0' & x"02";	-- LDA @2				#Carrega o acumulador com a leitura do valor em MEM[2] (centenas)
tmp(110) := x"8" & '0' & x"08";	-- CEQ @8				#Compara com valor em MEM[8] (limite das centenas)
tmp(111) := x"7" & '0' & x"71";	-- JEQ .continua2				#Se o valor lido em MEM[2] for igual ao valor lido em MEM[8], continua verificando
tmp(112) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(113) := x"0" & '0' & x"00";        	-- continua2: NOP				#Continua na contagem
tmp(114) := x"1" & '0' & x"03";	-- LDA @3				#Carrega o acumulador com a leitura do valor em MEM[3] (milhares)
tmp(115) := x"8" & '0' & x"09";	-- CEQ @9				#Compara com valor em MEM[9] (limite dos milhares)
tmp(116) := x"7" & '0' & x"76";	-- JEQ .continua3				#Se o valor lido em MEM[3] for igual ao valor lido em MEM[9], continua verificando
tmp(117) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(118) := x"0" & '0' & x"00";        	-- continua3: NOP				#Continua na contagem
tmp(119) := x"1" & '0' & x"04";	-- LDA @4				#Carrega o acumulador com a leitura do valor em MEM[4] (dezenas de milhares)
tmp(120) := x"8" & '0' & x"0A";	-- CEQ @10				#Compara com valor em MEM[10] (limite das dezenas de milhares)
tmp(121) := x"7" & '0' & x"7B";	-- JEQ .continua4				#Se o valor lido em MEM[4] for igual ao valor lido em MEM[10], continua verificando
tmp(122) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(123) := x"0" & '0' & x"00";        	-- continua4: NOP				#Continua na contagem
tmp(124) := x"1" & '0' & x"05";	-- LDA @5				#Carrega o acumulador com a leitura do valor em MEM[5] (centenas de milhares)
tmp(125) := x"8" & '0' & x"0B";	-- CEQ @11				#Compara com valor em MEM[11] (limite das centenas de milhares)
tmp(126) := x"7" & '0' & x"80";	-- JEQ .continua5				#Se o valor lido em MEM[5] for igual ao valor lido em MEM[11], continua verificando
tmp(127) := x"6" & '0' & x"84";	-- JMP .semoverflow				#Desvia para o fim da verificação
tmp(128) := x"0" & '0' & x"00";        	-- continua5: NOP				#Continua na contagem
tmp(129) := x"4" & '0' & x"01";	-- LDI $1				#Carrega o acumulador com 1
tmp(130) := x"5" & '0' & x"13";	-- STA @19				#Armazena o valor do acumulador em MEM[19] (flag de inibir contagem)
tmp(131) := x"5" & '1' & x"02";	-- STA @258				#Armazena o valor do acumulador no LDR9 (LED limite atingido)
tmp(132) := x"0" & '0' & x"00";        	-- semoverflow: NOP				#Continua na contagem
tmp(133) := x"A" & '0' & x"00";        	-- RET
tmp(134) := x"4" & '0' & x"00";	-- incremento: LDI $0				#Carrega o acumulador com o valor 0
tmp(135) := x"5" & '1' & x"FF";	-- STA @511				#Limpa flag de botão 0 apertado
tmp(136) := x"8" & '0' & x"13";	-- CEQ @19				#Compara com valor em MEM[19] (flag inibir contagem)
tmp(137) := x"7" & '0' & x"8B";	-- JEQ .incrementa				#Se o valor lido em MEM[19] for igual a 0, incrementa contador
tmp(138) := x"A" & '0' & x"00";        	-- RET				#Volta ao Laco Principal se valor em MEM[19] (flag inibir contagem) for igual a 1
tmp(139) := x"0" & '0' & x"00";        	-- incrementa: NOP				#Continua no incremento
tmp(140) := x"1" & '0' & x"00";	-- LDA @0				#Carrega o acumulador com a leitura do valor em MEM[0] (unidades)
tmp(141) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(142) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(143) := x"7" & '0' & x"92";	-- JEQ .limiteunidade				#Se o valor da soma for igual a 10, zera unidades e incrementa dezenas
tmp(144) := x"5" & '0' & x"00";	-- STA @0				#Armazena o valor do acumulador em MEM[0] (unidades)
tmp(145) := x"A" & '0' & x"00";        	-- RET
tmp(146) := x"0" & '0' & x"00";        	-- limiteunidade: NOP				#Continua no incremento
tmp(147) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(148) := x"5" & '0' & x"00";	-- STA @0				#Armazena o valor do acumulador em MEM[0] (unidades)
tmp(149) := x"1" & '0' & x"01";	-- LDA @1				#Carrega o acumulador com a leitura do valor em MEM[1] (dezenas)
tmp(150) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(151) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(152) := x"7" & '0' & x"9B";	-- JEQ .limitedezena				#Se o valor da soma for igual a 10, zera dezenas e incrementa centenas
tmp(153) := x"5" & '0' & x"01";	-- STA @1				#Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(154) := x"A" & '0' & x"00";        	-- RET
tmp(155) := x"0" & '0' & x"00";        	-- limitedezena: NOP				#Continua no incremento
tmp(156) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(157) := x"5" & '0' & x"01";	-- STA @1				#Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(158) := x"1" & '0' & x"02";	-- LDA @2				#Carrega o acumulador com a leitura do valor em MEM[2] (centenas)
tmp(159) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(160) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(161) := x"7" & '0' & x"A4";	-- JEQ .limitecentena				#Se o valor da soma for igual a 10, zera centenas e incrementa milhares
tmp(162) := x"5" & '0' & x"02";	-- STA @2				#Armazena o valor do acumulador em MEM[2] (centenas)
tmp(163) := x"A" & '0' & x"00";        	-- RET
tmp(164) := x"0" & '0' & x"00";        	-- limitecentena: NOP				#Continua no incremento
tmp(165) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(166) := x"5" & '0' & x"02";	-- STA @2				#Armazena o valor do acumulador em MEM[2] (centenas)
tmp(167) := x"1" & '0' & x"03";	-- LDA @3				#Carrega o acumulador com a leitura do valor em MEM[3] (milhares)
tmp(168) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(169) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(170) := x"7" & '0' & x"AD";	-- JEQ .limitemilhar				#Se o valor da soma for igual a 10, zera milhares e incrementa dezenas de milhares
tmp(171) := x"5" & '0' & x"03";	-- STA @3				#Armazena o valor do acumulador em MEM[3] (milhares)
tmp(172) := x"A" & '0' & x"00";        	-- RET
tmp(173) := x"0" & '0' & x"00";        	-- limitemilhar: NOP				#Continua no incremento
tmp(174) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(175) := x"5" & '0' & x"03";	-- STA @3				#Armazena o valor do acumulador em MEM[3] (milhares)
tmp(176) := x"1" & '0' & x"04";	-- LDA @4				#Carrega o acumulador com a leitura do valor em MEM[4] (dezenas de milhares)
tmp(177) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(178) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(179) := x"7" & '0' & x"B6";	-- JEQ .limitedezmilhar				#Se o valor da soma for igual a 10, zera dezenas de milhares e incrementa centenas de milhares
tmp(180) := x"5" & '0' & x"04";	-- STA @4				#Armazena o valor do acumulador em MEM[4] (dezenas de milhares)
tmp(181) := x"A" & '0' & x"00";        	-- RET
tmp(182) := x"0" & '0' & x"00";        	-- limitedezmilhar: NOP				#Continua no incremento
tmp(183) := x"4" & '0' & x"00";	-- LDI $0				#Carrega o acumulador com o valor 0
tmp(184) := x"5" & '0' & x"04";	-- STA @4				#Armazena o valor do acumulador em MEM[4] (dezenas de milhares)
tmp(185) := x"1" & '0' & x"05";	-- LDA @5				#Carrega o acumulador com a leitura do valor em MEM[5] (centenas de milhares)
tmp(186) := x"2" & '0' & x"15";	-- SOMA @21				#Soma o acumulador com o valor em MEM[21] (constante de valor 1)
tmp(187) := x"8" & '0' & x"16";	-- CEQ @22				#Compara com valor em MEM[22] (constante de valor 10)
tmp(188) := x"7" & '0' & x"BF";	-- JEQ .limitecemmilhar				#Se o valor da soma for igual a 10, acende LED Overflow e inibe contagem
tmp(189) := x"5" & '0' & x"05";	-- STA @5				#Armazena o valor do acumulador em MEM[5] (centenas de milhares)
tmp(190) := x"A" & '0' & x"00";        	-- RET
tmp(191) := x"0" & '0' & x"00";        	-- limitecemmilhar: NOP				#Continua no incremento
tmp(192) := x"4" & '0' & x"01";	-- LDI $1				#Carrega o acumulador com 1
tmp(193) := x"5" & '0' & x"13";	-- STA @19				#Armazena o valor do acumulador em MEM[19] (flag de inibir contagem)
tmp(194) := x"5" & '1' & x"01";	-- STA @257				#Armazena o valor do bit0 do acumulador no LDR8 (LED Overflow)
tmp(195) := x"A" & '0' & x"00";        	-- RET
tmp(196) := x"4" & '0' & x"00";	-- reinicia: LDI $0				#Carrega o acumulador com o valor 0
tmp(197) := x"5" & '0' & x"00";	-- STA @0				#Armazena o valor do acumulador em MEM[0] (unidades)
tmp(198) := x"5" & '0' & x"01";	-- STA @1				#Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(199) := x"5" & '0' & x"02";	-- STA @2				#Armazena o valor do acumulador em MEM[2] (centenas)
tmp(200) := x"5" & '0' & x"03";	-- STA @3				#Armazena o valor do acumulador em MEM[3] (milhares)
tmp(201) := x"5" & '0' & x"04";	-- STA @4				#Armazena o valor do acumulador em MEM[4] (dezenas de milhares)
tmp(202) := x"5" & '0' & x"05";	-- STA @5				#Armazena o valor do acumulador em MEM[5] (centenas de milhares)
tmp(203) := x"5" & '0' & x"12";	-- STA @18				#Armazena o valor do acumulador em MEM[18] (zera flag de verificar limite)
tmp(204) := x"5" & '0' & x"13";	-- STA @19				#Armazena o valor do acumulador em MEM[19] (zera flag de inibir contagem)
tmp(205) := x"5" & '1' & x"01";	-- STA @257				#Armazena o valor do bit0 do acumulador no LDR8 (LED Overflow)
tmp(206) := x"5" & '1' & x"02";	-- STA @258				#Armazena o valor do bit0 do acumulador no LDR9 (LED limite atingido)
tmp(207) := x"A" & '0' & x"00";        	-- RET				#Volta ao Laco Principal


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;