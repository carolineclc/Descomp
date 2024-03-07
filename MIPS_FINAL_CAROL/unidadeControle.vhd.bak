library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  generic (
    larguraOpCode: natural := 6;
    larguraFunct: natural := 6;
    larguraInstrucao	: natural := 32
  );

  port ( 
    instrucao : in std_logic_vector(larguraInstrucao-1 downto 0);

    mux_JR_PC:          out std_logic;
    mux_PC_4_BEQ_JUMP:  out std_logic;       
    mux_RT_RD_JAL:      out std_logic_vector(1 downto 0);
    ORiAndIUnsigned:            out std_logic;
    habilitaEscritaRD:  out std_logic;
    mux_RT_Imediato:    out std_logic; 
    MuxUlaOrNorSeletor: out std_logic;

    tipoR:              out std_logic; 
    extraiByteControl:  out std_logic;
    mux_ULA_Mem:        out std_logic_vector(1 downto 0);
    BEQ:                out std_logic; 
    BNE:                out std_logic;

    rd:                 out std_logic; 
    wr:                 out std_logic; 
    

	  opcode: out std_logic_vector(larguraOpCode-1 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is
  
  -- funct
  constant f_AND: std_logic_vector(larguraFunct-1 downto 0) := "100100";
  constant f_OR : std_logic_vector(larguraFunct-1 downto 0) := "100101";
  constant f_NOR : std_logic_vector(larguraFunct-1 downto 0) := "100111";
  constant f_ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant f_SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";
  constant f_SLT : std_logic_vector(larguraFunct-1 downto 0) := "101010";
  constant f_JR : std_logic_vector(larguraFunct-1 downto 0) := "001000";

  -- opcode
  constant op_LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant op_SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant op_BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant op_BNE : std_logic_vector(larguraOpCode-1 downto 0) := "000101";
  constant op_JMP : std_logic_vector(larguraOpCode-1 downto 0) := "000010";
  constant op_JAL : std_logic_vector(larguraOpCode-1 downto 0) := "000011";
  constant op_ORI : std_logic_vector(larguraOpCode-1 downto 0) := "001101";
  constant op_ANDI : std_logic_vector(larguraOpCode-1 downto 0) := "001100";
  constant op_LUI  : std_logic_vector(larguraOpCode-1 downto 0) := "001111";
  constant op_ADDI : std_logic_vector(larguraOpCode-1 downto 0) := "001000";
  constant op_SLTI : std_logic_vector(larguraOpCode-1 downto 0) := "001010";
  constant op_SLTIU: std_logic_vector(larguraOpCode-1 downto 0) := "001011";
  constant op_LBU  : std_logic_vector(larguraOpCode-1 downto 0) := "010100";
  constant op_SB   : std_logic_vector(larguraOpCode-1 downto 0) := "011000";


  -- aux signals
  signal funct : std_logic_vector(larguraFunct-1 downto 0);

  begin
    opcode <= instrucao(larguraInstrucao-1 downto larguraInstrucao - larguraOpCode);
    funct  <= instrucao(larguraFunct-1 downto 0);
    
    mux_JR_PC       <= '1' when (tipoR = '1' AND funct = f_JR) else '0';

    MUX_PC_4_BEQ_JUMP <= '1' when (opcode = op_JMP) or (opcode = op_JAL) else '0';

    MUX_RT_RD_JAL <=  "10" when (opcode = op_JAL) or (funct = f_JR and tipoR = '1') else
				"01" when (tipoR = '1') else 
				"00";

    ORiAndIUnsigned <= '1' when (opcode = op_ORI or opcode = op_ANDI or opcode=op_SLTIU) else '0';

    HabilitaEscritaRD <='1' when (tipoR = '1' )
                        or (opcode = op_LW)
                        or (opcode = op_JAL)
                        or (opcode = op_ORI)
                        or (opcode = op_ANDI)
                        or (opcode = op_LUI) 
                        or (opcode = op_ADDI) 
                        or (opcode = op_SLTI) 
                        or (opcode = op_SLTIU) 
                        or (opcode = op_LBU) 
                        or (opcode = op_SB) 
                        else '0'; 

    MUX_RT_Imediato <= '1' when (opcode = op_LW)
                      or (opcode = op_SW)
                      or (opcode = op_ADDI)
                      or (opcode = op_ANDI)
                      or (opcode = op_ORI)
                      or (opcode = op_SLTI)
                      or (opcode = op_SLTIU)
                      or (opcode = op_LBU)
                      or (opcode = op_SB)
                      else '0';

    tipoR <= '1' when opcode = "000000" else '0';

    extraiByteControl <= '1' when (opcode = op_LBU) or (opcode = op_SB) else '0';

    MuxUlaOrNorSeletor <= '1' when (funct = f_NOR) else '0';

    mux_ULA_Mem     <= "00" when (tipoR = '1') or (opcode = op_SLTI) or (opcode = op_SLTIU) or (opcode = op_ORI) or (opcode = op_ANDI) or (opcode = op_ADDI) else
                       "11" when (opcode = op_LUI) else
                       "10" when (opcode = op_JAL) else
                       "01";

    BEQ <= '1' when (opcode = op_BEQ) else '0';

    BNE <= '1' when (opcode = op_BNE) else '0';

    rd <=  '1' when (opcode = op_LW) or (opcode = op_LBU) else '0';

    wr <= '1' when (opcode = op_SW) or (opcode = op_SB) else '0';

    
              
end architecture;