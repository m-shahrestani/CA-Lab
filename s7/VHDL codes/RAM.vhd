----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:47 11/15/2020 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity RAM is
 generic(
   W : integer := 4;
   C : integer := 4
 );
 port(
   WR : in std_logic;
   RD : in std_logic;
   Reset : in std_logic;
   CLK : in std_logic;
   Addr: in  std_logic_vector(C-1 downto 0); 
   Data : inout std_logic_vector(W-1 downto 0) := (others => 'Z')
  );
end RAM;

architecture Behavioral of RAM is 

type memory is array((2**C)-1 downto 0) of std_logic_vector(W-1 downto 0);
signal ram : memory;
signal fake : std_logic_vector(W-1 downto 0);

begin
  RamProcess : process(CLK, Reset)
  begin
    --reset
    if(Reset = '0') then
  for i in 0 to ((2**c)-1) loop
    ram(i)<= std_logic_vector(to_unsigned(i,W));
  end loop;
    --set
    elsif rising_edge(CLK) then
  -- write
  if(WR = '1' and RD = '0') then
    ram(to_integer(unsigned(Addr))) <= Data;
  -- read
  elsif (RD = '1' and WR = '0') then
    fake <= ram(to_integer(unsigned(Addr)));
  end if;
    end if;
  end process RamProcess;
  Data <= fake when (RD = '1' and WR = '0' and Reset = '1') else 
  (others => 'Z');

end Behavioral;

