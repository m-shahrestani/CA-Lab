----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:29 11/25/2020 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is 
	
	port(
		D:in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		Q: out  std_logic	
	);
	

end entity DFF ;

 architecture struct of DFF is 
	
begin 
process(clk,reset) is
begin
if (reset='0')then
Q<='0';
elsif rising_edge (clk) then 
 Q<=  D;

end if;
end process;
end architecture struct;