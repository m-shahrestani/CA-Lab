----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:54 11/15/2020 
-- Design Name: 
-- Module Name:    CAM - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CAM is
 generic(
   W : integer := 4;
   C : integer := 4
 );
    Port ( WR : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (W-1 downto 0);
           Match : out  STD_LOGIC);
end CAM;

architecture Behavioral of cam is

	Type memory is array ((2**C)-1 downto 0) of STD_LOGIC_VECTOR(W-1 downto 0);
	Signal cam: memory;
	Signal valid: STD_LOGIC_VECTOR((2**C)-1 downto 0);
	Signal check: STD_LOGIC;
	
begin
	process(CLK, Reset)
	begin 
		--reset
		if (Reset = '0') then
			for i in 0 to (2**C)-1 loop
				valid(i) <= '1';
				Match <= '0';
			end loop;
		--set
		else
			--write
			if (WR = '1' and RD = '0') then
				--set miss
				Match <= '0';
				check <= '0';
				for i in 0 to (2**C)-1 loop
					if (Data = cam(i) and valid(i) = '0') then
						check <= '1';
					end if;
				end loop;
				if ( check = '0') then
					for i in 0 to (2**C)-1 loop
							if (valid(i) = '1') then
								valid(i) <= '0';
								cam(i) <= Data;
								exit;
							end if;
					end loop;
				end if;
			--read							
			elsif (RD = '1' and WR = '0') then
				for i in 0 to (2**C)-1 loop
					if (Data = cam(i) and valid(i) = '0') then
						--set match
						Match <= '1';
					end if;
				end loop;
			end if;
		end if;
		
	end process;
	
end Behavioral; 

