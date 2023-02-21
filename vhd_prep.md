### design
```
library ieee;
use ieee.std_logic_1164.all;

entity [title] is
    port(
		--<variable> : in/out <datatype>
		--a_i     : in std_logic_vector(2 downto  0);
        --b_o     : out std_logic_vector(2 downto  0)
  
    );
end entity [title];

------------------------------------------------------------
-- Architecture body for multiplexer
------------------------------------------------------------
architecture [arch_title] of [title] is
begin
	--<behavior>
    ---f_o <= a_i when (sel_i = "00") else
           ---b_i when (sel_i = "01");

end architecture [arch_title];
```
\
### testbench
```
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_multiplexer is
--  Is empty
end tb_multiplexer;

architecture testbench of tb_multiplexer is
	--signal <signal_variable> : <datatype>
    --signal s_a           : std_logic_vector(2 downto 0);


begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_tb_multiplexer : entity work.mux_3bit_4to1
        port map(
			--<variable_from_design> => <signal_variable>
          	--a_i     =>	s_a,

        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
    	--s_a <= "001";
        --s_b <= "100";
        --wait for 100 ns;
        
		-- Expected output
        --assert ((s_B_greater_A = '0') and
          --      (s_B_equals_A  = '0') and
            --    (s_B_less_A    = '1'))
        -- If false, then report an error
        --report "Input combination 0000, 1000 FAILED" severity error;
        
        wait;
    
    end process p_stimulus;


end testbench;

```