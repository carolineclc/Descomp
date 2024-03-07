library ieee;
use ieee.std_logic_1164.all;

entity halfULA is

    port (
      A, B, SLT, inverteB, carryIn: in std_logic;
      R, carryOut: out std_logic;
      sel: in std_logic_vector(1 downto 0)
    );
end entity;

architecture comportamento of halfULA is

    -- declare internal signals
    signal saida_MUX_B: std_logic;
    signal op_AND: std_logic;
    signal op_OR: std_logic;
    signal op_SOMA_SUB: std_logic;
    
    begin 
    saida_MUX_B <= B when inverteB = '0' else not B;


    op_AND <= saida_MUX_B and A;
    op_OR  <= saida_MUX_B or A;
    op_SOMA_SUB <= (A xor saida_MUX_B) xor carryIn;
    carryOut <= (A and saida_MUX_B) or (carryIn and (A xor saida_MUX_B));

    R <= op_AND when sel = "00" else
         op_OR when sel = "01" else
         op_SOMA_SUB when sel = "10" else
         SLT when sel = "11";

end architecture;