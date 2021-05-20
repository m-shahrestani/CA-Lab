
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC
	);
end DFF;

architecture Behavioral of DFF is
signal s: STD_LOGIC := '0';
begin
Q <= s;
state: process(clk, rst)
	begin
		if rst = '0' then
		s <= '0';
		elsif rising_edge(clk) then
		s <= D;
		end if;
	end process;
end Behavioral;