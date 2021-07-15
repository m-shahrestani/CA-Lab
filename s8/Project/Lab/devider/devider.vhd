----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:33 12/01/2020 
-- Design Name: 
-- Module Name:    devider - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity devider is
generic ( p_size:Integer :=8;
			 s_size:Integer :=4);
 Port ( p : in  STD_LOGIC_VECTOR (p_size-1 downto 0);
           s : in  STD_LOGIC_VECTOR (s_size-1 downto 0);
           q : out  STD_LOGIC_VECTOR (s_size-1 downto 0);
           r : out  STD_LOGIC_VECTOR (s_size-1 downto 0);
			  overflow : out STD_LOGIC);
end devider;

-- dar taghsim : p = s*q + r

architecture Behavioral of devider is

begin

process1: process(p, s)
		variable a : integer;
		variable b : integer;
		variable counter : integer;
	begin
		a := to_integer(unsigned(p));
		b := to_integer(unsigned(s));
		counter := 0;
	
		if b = 0 or p(p_size-1 downto s_size) > s then
			overflow <= '1';
			q <="UUUU";
			r <="UUUU";
		else
		while (a >= b) loop
			counter := counter + 1;
			a := a - b;
		end loop;
			q <= std_logic_vector(to_unsigned(counter, s_size));
			r <= std_logic_vector(to_unsigned(a, s_size));
			overflow <= '0';
		end if;
	end process;
	
end Behavioral;

