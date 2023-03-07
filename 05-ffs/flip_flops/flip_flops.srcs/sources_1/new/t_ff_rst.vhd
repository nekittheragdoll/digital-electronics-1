----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2023 11:49:34
-- Design Name: 
-- Module Name: t_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end t_ff_rst;

architecture Behavioral of t_ff_rst is

    signal q_prev : STD_logic := '0';
begin

   p_t_ff_rst : process (clk)
    begin        
        if rising_edge(clk) then  -- Synchronous process
            -- USE HIGH-ACTIVE RESET HERE
            if (rst = '1') then
                q_prev     <= '0';                
            else
                if (t = '1') then 
                    q_prev <= not q_prev;
                end if;                 
            end if;
         end if;
         
         q      <=    q_prev;
         q_bar  <=    not q_prev;
    end process p_t_ff_rst;


end Behavioral;
