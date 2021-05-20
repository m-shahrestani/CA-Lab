--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:06 11/25/2020
-- Design Name:   
-- Module Name:   C:/Users/Home/Desktop/Lab6B/delay/test.vhd
-- Project Name:  delay
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock_delay
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component clock_delay
	port(
		clk : IN  std_logic;
		reset  : IN  std_logic;
		clock_with_delay: OUT std_logic
	);
	end component;

	-- Inputs
	signal clk  : std_logic := '0';
	signal reset   : std_logic := '0';
	
	-- Outputs
	signal clock_with_delay : std_logic;
	constant clk_in_t : time := 25 ns; 
	
begin 
	-- Instance of unit under test.
	uut: clock_delay port map (
		clk  => clk,
		reset   => reset,
		clock_with_delay => clock_with_delay
	);

	-- Clock definition.
	entrada_process :process
		begin
		clk <= '0';
		wait for clk_in_t;
		clk <= '1';
		wait for clk_in_t;
	end process;

	-- Processing.
	stimuli: process
	begin
		reset <= '1'; 
		wait for 100 ns;
		reset <= '0'; 
        wait;
	end process;
end;