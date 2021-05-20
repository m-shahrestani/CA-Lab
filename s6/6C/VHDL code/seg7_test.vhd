--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:33:59 11/25/2020
-- Design Name:   
-- Module Name:   C:/Users/Home/Desktop/Lab6C/seg7/seg7_test.vhd
-- Project Name:  seg7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seg7
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
 
ENTITY seg7_test IS
END seg7_test;
 
ARCHITECTURE behavior OF seg7_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seg7
    PORT(
         parallel_in : IN  std_logic_vector(3 downto 0);
         LR : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         L_D : IN  std_logic;
         rst : IN  std_logic;
         seg_data : OUT  std_logic_vector(7 downto 0);
         seg_sel : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal parallel_in : std_logic_vector(3 downto 0) := (others => '0');
   signal LR : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal L_D : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal seg_data : std_logic_vector(7 downto 0);
   signal seg_sel : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seg7 PORT MAP (
          parallel_in => parallel_in,
          LR => LR,
          clk => clk,
          L_D => L_D,
          rst => rst,
          seg_data => seg_data,
          seg_sel => seg_sel
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
