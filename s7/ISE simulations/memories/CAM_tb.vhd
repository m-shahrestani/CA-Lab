--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:46:57 11/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MRSH/Documents/az/memories/CAM_tb.vhd
-- Project Name:  memories
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CAM
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
 
ENTITY CAM_tb IS
END CAM_tb;
 
ARCHITECTURE behavior OF CAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         Data : IN  std_logic_vector(3 downto 0);
         Match : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Data : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Match : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAM PORT MAP (
          WR => WR,
          RD => RD,
          Reset => Reset,
          CLK => CLK,
          Data => Data,
          Match => Match
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

	wait for clk_period;
	WR <= '0';
	RD <= '0';
	Reset <= '0';
	Data <= "0000";
	wait for clk_period;
	wait for clk_period;
	WR <= '1';
	RD <= '0';
	Reset <= '1';
	Data <= "1000";

	wait for clk_period;
	wait for 1 ns;
	WR <= '0';
	RD <= '1';
	Reset <= '1';
	Data <= "1000";

	wait for clk_period;
	WR <= '1';
	RD <= '0';
	Reset <= '1';
	Data <= "1010";

	wait for clk_period;
	WR <= '0';
	RD <= '1';
	Reset <= '1';
	Data <= "1010";

      	wait;
   end process;

END;
