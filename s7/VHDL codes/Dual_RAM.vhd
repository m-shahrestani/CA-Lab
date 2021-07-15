----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:19 11/15/2020 
-- Design Name: 
-- Module Name:    Dual_RAM - Behavioral 
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

entity Dual_RAM is
 generic(
   W : integer := 4;
   C : integer := 4
 );
    Port ( WR : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Addr : in  STD_LOGIC_VECTOR (C-1 downto 0);
           Data_in : in  STD_LOGIC_VECTOR (W-1 downto 0);
           Data_out : out  STD_LOGIC_VECTOR (W-1 downto 0));
end Dual_RAM;

architecture Behavioral of Dual_RAM is 

type memory is array((2**C)-1 downto 0) of std_logic_vector(W-1 downto 0);
signal DualRam : memory;

begin
  DualRamProcess : process(CLK, Reset)
  begin
    --reset
    if(Reset = '0') then
	for i in 0 to ((2**c)-1) loop
		DualRam(i)<= std_logic_vector(to_unsigned(i,W));
	end loop;
    --set
    elsif rising_edge(CLK) then
	-- write
	if(WR = '1') then
		DualRam(to_integer(unsigned(Addr))) <= Data_in;
	end if;
	-- read
	if (RD = '1') then
		Data_out <= DualRam(to_integer(unsigned(Addr)));
	end if;
   end if;
  end process DualRamProcess;
end Behavioral; 

