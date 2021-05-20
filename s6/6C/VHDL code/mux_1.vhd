----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:45 11/25/2020 
-- Design Name: 
-- Module Name:    mux_1 - Behavioral 
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

Entity mux_1 is
 Port(
 sel1,sel2: in std_logic;
 A,B,C,D: in std_logic;
 CM : out std_logic
 );
End entity mux_1;
Architecture struct of mux_1 is
	

Begin

CM <= (A and (not sel2) and (not sel1)) or (B and sel2 and (not sel1)) or (C and (not sel2) and sel1) or (D and sel2 and sel1);

End struct;

