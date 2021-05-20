----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:08 11/25/2020 
-- Design Name: 
-- Module Name:    seg7 - Behavioral 
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

entity seg7 is
Port ( parallel_in : in  STD_LOGIC_VECTOR (3 downto 0);
           LR : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           L_D : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           seg_data : out  STD_LOGIC_VECTOR (7 downto 0);
           seg_sel : out  STD_LOGIC_VECTOR (4 downto 0));
end seg7;

architecture Behavioral of seg7 is
component clock_delay
		 Port ( clk : in  STD_LOGIC;
					reset : in STD_LOGIC;
				  clock_with_delay : out  STD_LOGIC);
	end component;
	component REG
		Port(
				LOAD,CLoCK,RST: in std_logic;
				PARALLEL_IN: in std_logic_vector(3 downto 0);
				L_R: in std_logic_vector(1 downto 0);
				register_out : out std_logic_vector(3 downto 0));
	end component;
	signal lower_clk : STD_LOGIC;
	signal reg_out : STD_LOGIC_VECTOR (3 downto 0);
begin

with reg_out select 
			seg_data <= "00111111" when "0000", 
							"00000110" when "0001",   
							"01011011" when "0010",  
							"01001111" when "0011", 
							"01100110" when "0100",  
							"01101101" when "0101",  
							"01111101" when "0110",  
							"00000111" when "0111",  
							"01111111" when "1000",  
							"01101111" when "1001",  
							"00000000" when others;
	
			seg_sel <= "00001";
	
delay1: clock_delay
		port map(clk=>clk, reset=>rst ,clock_with_delay=>lower_clk);
	REG1: REG
		port map(LOAD=>L_D,CLoCK=>lower_clk,RST=>RST,PARALLEL_IN=> parallel_in,L_R=>LR,register_out=>reg_out);
end Behavioral;

