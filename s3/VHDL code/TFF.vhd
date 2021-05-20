
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TFF is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
	signal s: STD_LOGIC := '0';
begin
	Q <= s;
	state: process(clk, rst)
	begin

	    if rst = '0' then
	    s <= '0';
	    elsif T = '1' and falling_edge(clk) then
	    s <= not s;
	    end if;

	end process;
end Behavioral;

