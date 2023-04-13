-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity WordRegister is
    generic(
        bit_count : natural := 8;
    );
    port(
        i_WORD  : in std_logic_vector(bit_count - 1 downto 0);
        i_en    : in std_logic;
        o_WORD  : out std_logic_vector(bit_count - 1 downto 0);
    )
end WordRegister;

architecture Behavioral of register is
    signal reg : std_logic_vector(bit_count - 1 downto 0);
begin
    regx : process( i_en )
    begin
        if i_en = '1' then
            reg <= i_WORD;
        end if;       
    end process ; -- regx   
    o_WORD <= reg; 
end architecture Behavioral;
