----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:23:13 11/25/2020 
-- Design Name: 
-- Module Name:    clock_delay - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_delay is
port(clk: in std_logic;
		reset: in std_logic; 
		clock_with_delay: out std_logic);
end clock_delay;

architecture Behavioral of clock_delay is
-- signal nahaE ba delay
signal CLOCK : std_logic;
--39999999 = 4 * (10 ^ 7 ) - 1
signal counter: integer range 0 to 39999999 := 0;
begin
	process(clk,reset)
	begin
	if reset = '1' then
		CLOCK <= '0';
		counter <= 0;
	elsif rising_edge(clk)then
		if counter =  19999999 then
		counter <= 0;
		CLOCK <= NOT CLOCK;
	else
		counter <= counter + 1;
	end if;
end if;

end process;

-- delay anjam shode
clock_with_delay <= CLOCK;	

end Behavioral;

