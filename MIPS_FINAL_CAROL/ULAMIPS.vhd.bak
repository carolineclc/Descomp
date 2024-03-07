library ieee;
use ieee.std_logic_1164.all;

entity ULAMIPS is
    generic (
        larguraDados : natural := 32
    );
    port (
      A, B: in std_logic_vector(larguraDados-1 downto 0);
      inverteB: in std_logic;
      sel: in std_logic_vector(1 downto 0);
      
      R: out std_logic_vector(larguraDados-1 downto 0);
      ZERO: out std_logic
    );
end entity;

architecture comportamento of ULAMIPS is

    -- declare internal signals
    signal vai1_bitX: std_logic_vector(larguraDados-1 downto 0);
    signal overflow: std_logic;
    signal op_SOMA_SUB_Last_Bit: std_logic;

    begin 
    -- operadores bit a bit
    opBit0: entity work.halfULA 
        port map (
            A => A(0), B => B(0), SLT => overflow, inverteB => inverteB, carryIn => inverteB, R => R(0), sel => sel, carryOut => vai1_bitX(0)
        );

    opBit1: entity work.halfULA 
        port map (
            A => A(1), B => B(1), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(0), R => R(1), sel => sel, carryOut => vai1_bitX(1)
        );

    opBit2: entity work.halfULA
        port map (
            A => A(2), B => B(2), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(1), R => R(2), sel => sel, carryOut => vai1_bitX(2)
        );
    
    opBit3: entity work.halfULA
        port map (
            A => A(3), B => B(3), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(2), R => R(3), sel => sel, carryOut => vai1_bitX(3)
        );
    
    opBit4: entity work.halfULA
        port map (
            A => A(4), B => B(4), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(3), R => R(4), sel => sel, carryOut => vai1_bitX(4)
        );                  

    opBit5: entity work.halfULA
        port map (
            A => A(5), B => B(5), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(4), R => R(5), sel => sel, carryOut => vai1_bitX(5)
        );
    
    opBit6: entity work.halfULA
        port map (
            A => A(6), B => B(6), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(5), R => R(6), sel => sel, carryOut => vai1_bitX(6)
        );
    
    opBit7: entity work.halfULA
        port map (
            A => A(7), B => B(7), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(6), R => R(7), sel => sel, carryOut => vai1_bitX(7)
        );
    
    opBit8: entity work.halfULA
        port map (
            A => A(8), B => B(8), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(7), R => R(8), sel => sel, carryOut => vai1_bitX(8)
        );
    
    opBit9: entity work.halfULA
        port map (
            A => A(9), B => B(9), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(8), R => R(9), sel => sel, carryOut => vai1_bitX(9)
        );
    
    opBit10: entity work.halfULA
        port map (
            A => A(10), B => B(10), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(9), R => R(10), sel => sel, carryOut => vai1_bitX(10)
        );
    
    opBit11: entity work.halfULA    
        port map (
            A => A(11), B => B(11), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(10), R => R(11), sel => sel, carryOut => vai1_bitX(11)
        );
    
    opBit12: entity work.halfULA
        port map (
            A => A(12), B => B(12), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(11), R => R(12), sel => sel, carryOut => vai1_bitX(12)
        );
    
    opBit13: entity work.halfULA
        port map (
            A => A(13), B => B(13), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(12), R => R(13), sel => sel, carryOut => vai1_bitX(13)
        );

    opBit14: entity work.halfULA
        port map (
            A => A(14), B => B(14), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(13), R => R(14), sel => sel, carryOut => vai1_bitX(14)
        );

    opBit15: entity work.halfULA
        port map (
            A => A(15), B => B(15), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(14), R => R(15), sel => sel, carryOut => vai1_bitX(15)
        );
    
    opBit16: entity work.halfULA
        port map (
            A => A(16), B => B(16), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(15), R => R(16), sel => sel, carryOut => vai1_bitX(16)
        );
    
    opBit17: entity work.halfULA
        port map (
            A => A(17), B => B(17), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(16), R => R(17), sel => sel, carryOut => vai1_bitX(17)
        );
    
    opBit18: entity work.halfULA
        port map (
            A => A(18), B => B(18), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(17), R => R(18), sel => sel, carryOut => vai1_bitX(18)
        );
    
    opBit19: entity work.halfULA
        port map (
            A => A(19), B => B(19), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(18), R => R(19), sel => sel, carryOut => vai1_bitX(19)
        );
    
    opBit20: entity work.halfULA
        port map (
            A => A(20), B => B(20), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(19), R => R(20), sel => sel, carryOut => vai1_bitX(20)
        );
    
    opBit21: entity work.halfULA
        port map (
            A => A(21), B => B(21), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(20), R => R(21), sel => sel, carryOut => vai1_bitX(21)
        );

    opBit22: entity work.halfULA
        port map (
            A => A(22), B => B(22), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(21), R => R(22), sel => sel, carryOut => vai1_bitX(22)
        );
    
    opBit23: entity work.halfULA
        port map (
            A => A(23), B => B(23), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(22), R => R(23), sel => sel, carryOut => vai1_bitX(23)
        );

    opBit24: entity work.halfULA
        port map (
            A => A(24), B => B(24), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(23), R => R(24), sel => sel, carryOut => vai1_bitX(24)
        );  

    opBit25: entity work.halfULA
        port map (
            A => A(25), B => B(25), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(24), R => R(25), sel => sel, carryOut => vai1_bitX(25)
        );
    
    opBit26: entity work.halfULA
        port map (
            A => A(26), B => B(26), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(25), R => R(26), sel => sel, carryOut => vai1_bitX(26)
        );

    opBit27: entity work.halfULA
        port map (
            A => A(27), B => B(27), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(26), R => R(27), sel => sel, carryOut => vai1_bitX(27)
        );

    opBit28: entity work.halfULA
        port map (
            A => A(28), B => B(28), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(27), R => R(28), sel => sel, carryOut => vai1_bitX(28)
        );
    
    opBit29: entity work.halfULA
        port map (
            A => A(29), B => B(29), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(28), R => R(29), sel => sel, carryOut => vai1_bitX(29)
        );

    opBit30: entity work.halfULA
        port map (
            A => A(30), B => B(30), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(29), R => R(30), sel => sel, carryOut => vai1_bitX(30)
        );

    --$ bit31 -- especial (overflow)
    opBit31: entity work.halfULALastBit
        port map (
            A => A(31), B => B(31), SLT => '0', inverteB => inverteB, carryIn => vai1_bitX(30), R => R(31), sel => sel, carryOut => vai1_bitX(31), op_SOMA_SUB => op_SOMA_SUB_Last_Bit
        );

    overflow <= (vai1_bitX(31) xor vai1_bitX(30)) xor op_SOMA_SUB_Last_Bit;
    ZERO <= not(R(31) or R(30) or R(29) or R(28) or R(27) or R(26) or R(25) or R(24) or R(23) or R(22) or R(21) or R(20) or R(19) or R(18) or R(17) or R(16) or R(15) or R(14) or R(13) or R(12) or R(11) or R(10) or R(9) or R(8) or R(7) or R(6) or R(5) or R(4) or R(3) or R(2) or R(1) or R(0));

end architecture;