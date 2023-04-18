library IEEE;
use IEEE.std_logic_1164.all;

entity tb_buttonEnable is
end entity tb_buttonEnable;

architecture rtl of tb_buttonEnable is
    constant c_CLK_100MHZ_PERIOD : time := 10 ns;
    signal sig_clk_100MHz : std_logic := '0';   
    

    signal PhysicalButton : std_logic := '0';
    signal Out_Pulse : std_logic := '0';


begin
    tb_btnen : entity work.ButtonPulse
    port map(
        i_btn => PhysicalButton,
        clk => sig_clk_100MHz,
        o_pulse => Out_Pulse
    );

    p_clk_gen : process
    begin
        while now < 600 ns loop -- 30 periods of 100MHz clock
            sig_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            sig_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                -- Process is suspended forever
    end process p_clk_gen;

    p_btn_gen : process
    begin
    
    wait for 32 ns;
    
    
    PhysicalButton <= '1';
    wait for 10 ns;
    PhysicalButton <= '0';
    
    while now < 600 ns loop -- 30 periods of 100MHz clock
            PhysicalButton <= '0';
            wait for 2 ns;
            PhysicalButton <= '1';
            wait for 2 ns;
        end loop;

	wait;
    end process p_btn_gen;
    
    
    
end architecture rtl;