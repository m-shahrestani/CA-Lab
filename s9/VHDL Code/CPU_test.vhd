--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:07:41 12/25/2020
-- Design Name:   
-- Module Name:   C:/Users/Home/Desktop/lab9/CPU/CPU_test.vhd
-- Project Name:  CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU8BIT2
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
 
ENTITY CPU_test IS
END CPU_test;
 
ARCHITECTURE behavior OF CPU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU8BIT2
    PORT(
        );
    END COMPONENT;
    
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU8BIT2 PORT MAP (
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      wait for 20 ns;
		rst <= '0';
		wait for 20 ns;
		rst <= '1';
		
      wait;
   end process;

END;
