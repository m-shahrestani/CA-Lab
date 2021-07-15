--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:37 12/01/2020
-- Design Name:   
-- Module Name:   C:/Users/Home/Desktop/Lab/devider/test.vhd
-- Project Name:  devider
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: devider
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
 
    COMPONENT devider
    PORT(
         p : IN  std_logic_vector(7 downto 0);
         s : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(3 downto 0);
         r : OUT  std_logic_vector(3 downto 0);
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(7 downto 0) := (others => '0');
   signal s : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(3 downto 0);
   signal r : std_logic_vector(3 downto 0);
   signal overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: devider PORT MAP (
          p => p,
          s => s,
          q => q,
          r => r,
          overflow => overflow
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		p<="00000100";
		s<="0010";
		
		wait for 100 ns;	
		
		p<="00000110";
		s<="0011";
		
		wait for 100 ns;	
		
		p<="11110100";
		s<="0010";
		
		wait for 100 ns;	
		
		p<="00000101";
		s<="0010";

		wait for 100 ns;	
		
		p<="00010100";
		s<="0000";

		wait for 100 ns;	
		
		p<="00000111";
		s<="0011";

		wait for 100 ns;	
		
		p<="00000100";
		s<="1000";


      wait;
   end process;

END;
