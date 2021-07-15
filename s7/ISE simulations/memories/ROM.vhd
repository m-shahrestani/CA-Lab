----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:36 11/15/2020 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

entity ROM is
 generic(
   W : integer := 4;
   C : integer := 4
 );
    Port ( RD : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Addr : in  STD_LOGIC_VECTOR (C-1 downto 0);
           Data : out  STD_LOGIC_VECTOR (W-1 downto 0));
end ROM;

architecture Behavioral of ROM is 

type memory is array((2**C)-1 downto 0) of std_logic_vector(W-1 downto 0);
signal rom : memory;

begin
  RomProcess : process(CLK)
  begin
	for i in 0 to ((2**c)-1) loop
		rom(i)<= std_logic_vector(to_unsigned(i,W));
	end loop;
	-- read
    if (rising_edge(CLK) and RD = '1') then
		Data <= rom(to_integer(unsigned(Addr)));
	end if;
  end process RomProcess;
end Behavioral; 

