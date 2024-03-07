library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR(31 downto 0);
		SHFT : in std_LOGIC_VECTOR(1 downto 0);
      seletor:  in STD_LOGIC_VECTOR(3 downto 0);
      saidaULA:    out STD_LOGIC_VECTOR(31 downto 0);
      flagEQ : out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is

  signal saida : std_logic_vector(31 downto 0);
  signal saidaShift : std_logic_vector(31 downto 0);

  signal carry_out_0_para_1 : std_logic;
  signal carry_out_1_para_2 : std_logic;
  signal carry_out_2_para_3 : std_logic;
  signal carry_out_3_para_4 : std_logic;
  signal carry_out_4_para_5 : std_logic;
  signal carry_out_5_para_6 : std_logic;
  signal carry_out_6_para_7 : std_logic;
  signal carry_out_7_para_8 : std_logic;
  signal carry_out_8_para_9 : std_logic;
  signal carry_out_9_para_10 : std_logic;
  signal carry_out_10_para_11 : std_logic;
  signal carry_out_11_para_12 : std_logic;
  signal carry_out_12_para_13 : std_logic;
  signal carry_out_13_para_14 : std_logic;
  signal carry_out_14_para_15 : std_logic;
  signal carry_out_15_para_16 : std_logic;
  signal carry_out_16_para_17 : std_logic;
  signal carry_out_17_para_18 : std_logic;
  signal carry_out_18_para_19 : std_logic;
  signal carry_out_19_para_20 : std_logic;
  signal carry_out_20_para_21 : std_logic;
  signal carry_out_21_para_22 : std_logic;
  signal carry_out_22_para_23 : std_logic;
  signal carry_out_23_para_24 : std_logic;
  signal carry_out_24_para_25 : std_logic;
  signal carry_out_25_para_26 : std_logic;
  signal carry_out_26_para_27 : std_logic;
  signal carry_out_27_para_28 : std_logic;
  signal carry_out_28_para_29 : std_logic;
  signal carry_out_29_para_30 : std_logic;
  signal carry_out_30_para_31 : std_logic;
  signal carry_out_31 : std_logic;

  signal saida_soma_overflow : std_logic;
  signal inverteB : std_logic;
  signal inverteA : std_logic;


begin

  inverteB <= seletor(2);
  inverteA <= seletor(3);
  
MUXUlaOut : entity work.muxGenerico2x1 generic map (larguraDados => 32)
	port map(
		entradaA_MUX => saida,
		entradaB_MUX => saidaShift,
		seletor_MUX => SHFT(0),
		saida_MUX => saidaULA
	);
	
ULAShifter : entity work.shifter32
	port map (
		shiftIN => entradaA,
		shamt => entradaB(4 downto 0),
		direct => SHFT(1),
		shiftOUT => saidaShift
	);

  
-- BIT A BIT


flagEQ <= not (saida(0) or
saida(1) or
saida(2) or
saida(3) or
saida(4) or
saida(5) or
saida(6) or
saida(7) or
saida(8) or
saida(9) or
saida(10) or
saida(11) or
saida(12) or
saida(13) or
saida(14) or
saida(15) or
saida(16) or
saida(17) or
saida(18) or
saida(19) or
saida(20) or
saida(21) or
saida(22) or
saida(23) or
saida(24) or
saida(25) or
saida(26) or
saida(27) or
saida(28) or
saida(29) or
saida(30) or
saida(31));



-- excessoes
  
ULA_SINGLEBIT_BIT0 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(0),
    entradaB => entradaB(0),
    slt => (carry_out_30_para_31 XOR carry_out_31) XOR saida_soma_overflow,
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => inverteB,
    carry_out => carry_out_0_para_1,
    selecao => seletor(1 downto 0),
    resultado => saida(0)
  );

ULA_SINGLEBIT_BIT31 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(31),
    entradaB => entradaB(31),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_30_para_31,
    carry_out => carry_out_31,
    saida_soma => saida_soma_overflow,
	 selecao => seletor(1 downto 0),
    resultado => saida(31)
  );
    
ULA_SINGLEBIT_BIT1 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(1),
    entradaB => entradaB(1),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_0_para_1,
    carry_out => carry_out_1_para_2,
    selecao => seletor(1 downto 0),
    resultado => saida(1)
  );
    

ULA_SINGLEBIT_BIT2 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(2),
    entradaB => entradaB(2),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_1_para_2,
    carry_out => carry_out_2_para_3,
    selecao => seletor(1 downto 0),
    resultado => saida(2)
  );
    

ULA_SINGLEBIT_BIT3 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(3),
    entradaB => entradaB(3),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_2_para_3,
    carry_out => carry_out_3_para_4,
    selecao => seletor(1 downto 0),
    resultado => saida(3)
  );
    

ULA_SINGLEBIT_BIT4 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(4),
    entradaB => entradaB(4),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_3_para_4,
    carry_out => carry_out_4_para_5,
    selecao => seletor(1 downto 0),
    resultado => saida(4)
  );
    

ULA_SINGLEBIT_BIT5 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(5),
    entradaB => entradaB(5),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_4_para_5,
    carry_out => carry_out_5_para_6,
    selecao => seletor(1 downto 0),
    resultado => saida(5)
  );
    

ULA_SINGLEBIT_BIT6 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(6),
    entradaB => entradaB(6),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_5_para_6,
    carry_out => carry_out_6_para_7,
    selecao => seletor(1 downto 0),
    resultado => saida(6)
  );
    

ULA_SINGLEBIT_BIT7 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(7),
    entradaB => entradaB(7),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_6_para_7,
    carry_out => carry_out_7_para_8,
    selecao => seletor(1 downto 0),
    resultado => saida(7)
  );
    

ULA_SINGLEBIT_BIT8 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(8),
    entradaB => entradaB(8),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_7_para_8,
    carry_out => carry_out_8_para_9,
    selecao => seletor(1 downto 0),
    resultado => saida(8)
  );
    

ULA_SINGLEBIT_BIT9 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(9),
    entradaB => entradaB(9),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_8_para_9,
    carry_out => carry_out_9_para_10,
    selecao => seletor(1 downto 0),
    resultado => saida(9)
  );
    

ULA_SINGLEBIT_BIT10 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(10),
    entradaB => entradaB(10),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_9_para_10,
    carry_out => carry_out_10_para_11,
    selecao => seletor(1 downto 0),
    resultado => saida(10)
  );
    

ULA_SINGLEBIT_BIT11 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(11),
    entradaB => entradaB(11),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_10_para_11,
    carry_out => carry_out_11_para_12,
    selecao => seletor(1 downto 0),
    resultado => saida(11)
  );
    

ULA_SINGLEBIT_BIT12 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(12),
    entradaB => entradaB(12),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_11_para_12,
    carry_out => carry_out_12_para_13,
    selecao => seletor(1 downto 0),
    resultado => saida(12)
  );
    

ULA_SINGLEBIT_BIT13 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(13),
    entradaB => entradaB(13),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_12_para_13,
    carry_out => carry_out_13_para_14,
    selecao => seletor(1 downto 0),
    resultado => saida(13)
  );
    

ULA_SINGLEBIT_BIT14 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(14),
    entradaB => entradaB(14),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_13_para_14,
    carry_out => carry_out_14_para_15,
    selecao => seletor(1 downto 0),
    resultado => saida(14)
  );
    

ULA_SINGLEBIT_BIT15 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(15),
    entradaB => entradaB(15),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_14_para_15,
    carry_out => carry_out_15_para_16,
    selecao => seletor(1 downto 0),
    resultado => saida(15)
  );
    

ULA_SINGLEBIT_BIT16 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(16),
    entradaB => entradaB(16),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_15_para_16,
    carry_out => carry_out_16_para_17,
    selecao => seletor(1 downto 0),
    resultado => saida(16)
  );
    

ULA_SINGLEBIT_BIT17 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(17),
    entradaB => entradaB(17),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_16_para_17,
    carry_out => carry_out_17_para_18,
    selecao => seletor(1 downto 0),
    resultado => saida(17)
  );
    

ULA_SINGLEBIT_BIT18 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(18),
    entradaB => entradaB(18),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_17_para_18,
    carry_out => carry_out_18_para_19,
    selecao => seletor(1 downto 0),
    resultado => saida(18)
  );
    

ULA_SINGLEBIT_BIT19 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(19),
    entradaB => entradaB(19),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_18_para_19,
    carry_out => carry_out_19_para_20,
    selecao => seletor(1 downto 0),
    resultado => saida(19)
  );
    

ULA_SINGLEBIT_BIT20 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(20),
    entradaB => entradaB(20),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_19_para_20,
    carry_out => carry_out_20_para_21,
    selecao => seletor(1 downto 0),
    resultado => saida(20)
  );
    

ULA_SINGLEBIT_BIT21 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(21),
    entradaB => entradaB(21),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_20_para_21,
    carry_out => carry_out_21_para_22,
    selecao => seletor(1 downto 0),
    resultado => saida(21)
  );
    

ULA_SINGLEBIT_BIT22 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(22),
    entradaB => entradaB(22),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_21_para_22,
    carry_out => carry_out_22_para_23,
    selecao => seletor(1 downto 0),
    resultado => saida(22)
  );
    

ULA_SINGLEBIT_BIT23 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(23),
    entradaB => entradaB(23),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_22_para_23,
    carry_out => carry_out_23_para_24,
    selecao => seletor(1 downto 0),
    resultado => saida(23)
  );
    

ULA_SINGLEBIT_BIT24 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(24),
    entradaB => entradaB(24),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_23_para_24,
    carry_out => carry_out_24_para_25,
    selecao => seletor(1 downto 0),
    resultado => saida(24)
  );
    

ULA_SINGLEBIT_BIT25 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(25),
    entradaB => entradaB(25),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_24_para_25,
    carry_out => carry_out_25_para_26,
    selecao => seletor(1 downto 0),
    resultado => saida(25)
  );
    

ULA_SINGLEBIT_BIT26 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(26),
    entradaB => entradaB(26),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_25_para_26,
    carry_out => carry_out_26_para_27,
    selecao => seletor(1 downto 0),
    resultado => saida(26)
  );
    

ULA_SINGLEBIT_BIT27 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(27),
    entradaB => entradaB(27),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_26_para_27,
    carry_out => carry_out_27_para_28,
    selecao => seletor(1 downto 0),
    resultado => saida(27)
  );
    

ULA_SINGLEBIT_BIT28 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(28),
    entradaB => entradaB(28),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_27_para_28,
    carry_out => carry_out_28_para_29,
    selecao => seletor(1 downto 0),
    resultado => saida(28)
  );
    

ULA_SINGLEBIT_BIT29 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(29),
    entradaB => entradaB(29),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_28_para_29,
    carry_out => carry_out_29_para_30,
    selecao => seletor(1 downto 0),
    resultado => saida(29)
  );
    

ULA_SINGLEBIT_BIT30 : entity work.UlaSingleBit 
  port map(
    entradaA => entradaA(30),
    entradaB => entradaB(30),
    slt => '0',
    inverteA => inverteA,
    inverteB => inverteB,
    carry_in => carry_out_29_para_30,
    carry_out => carry_out_30_para_31,
    selecao => seletor(1 downto 0),
    resultado => saida(30)
  );

end architecture;

