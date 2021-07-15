--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:24:13 11/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MRSH/Documents/az/memories/ROM_tb.vhd
-- Project Name:  memories
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY ROM_tb IS
END ROM_tb;
 
ARCHITECTURE behavior OF ROM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         RD : IN  std_logic;
         CLK : IN  std_logic;
         Addr : IN  std_logic_vector(3 downto 0);
         Data : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RD : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Addr : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Data : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          RD => RD,
          CLK => CLK,
          Addr => Addr,
          Data => Data
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
	RD<='1';
	Addr<="1011";

	wait for clk_period;
	RD<='1';
	Addr<="1111";

	wait for clk_period;
	RD<='1';
	Addr<="1001";

      	wait;
   end process;

END;
