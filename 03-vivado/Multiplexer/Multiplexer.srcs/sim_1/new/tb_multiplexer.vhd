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
--  Port ( );
end tb_multiplexer;

architecture testbench of tb_multiplexer is
    signal s_a           : std_logic_vector(2 downto 0);
    signal s_b           : std_logic_vector(2 downto 0);
    signal s_c           : std_logic_vector(2 downto 0);
    signal s_d           : std_logic_vector(2 downto 0);
    signal s_f_o         : std_logic_vector(2 downto 0);
    signal s_sel         : std_logic_vector(1 downto 0);

begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_tb_multiplexer : entity work.mux_3bit_4to1
        port map(
          	a_i     =>	s_a,
        	b_i     =>	s_b,
        	c_i     =>	s_c,
        	d_i     =>	s_d,
        	sel_i   =>	s_sel,
        	f_o     =>	s_f_o
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
    	s_a <= "001";
        s_b <= "100";
        s_c <= "010";
        s_d <= "101";
        
        s_sel <= "00";
        wait for 100 ns;
        
        s_sel <= "01";
        wait for 100 ns;
        
        s_sel <= "10";
        wait for 100 ns;
        
        s_sel <= "11";
        wait for 100 ns;
        
        wait;
    
    end process p_stimulus;


end testbench;
