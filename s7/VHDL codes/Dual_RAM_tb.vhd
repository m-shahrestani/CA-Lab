--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:54:54 11/15/2020
-- Design Name:   
-- Module Name:   C:/Users/MRSH/Documents/az/memories/Dual_RAM_tb.vhd
-- Project Name:  memories
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Dual_RAM
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
 
ENTITY Dual_RAM_tb IS
END Dual_RAM_tb;
 
ARCHITECTURE behavior OF Dual_RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dual_RAM
    PORT(
         WR : IN  std_logic;
         RD : IN  std_logic;
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         Addr : IN  std_logic_vector(3 downto 0);
         Data_in : IN  std_logic_vector(3 downto 0);
         Data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Addr : std_logic_vector(3 downto 0) := (others => '0');
   signal Data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dual_RAM PORT MAP (
          WR => WR,
          RD => RD,
          Reset => Reset,
          CLK => CLK,
          Addr => Addr,
          Data_in => Data_in,
          Data_out => Data_out
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
	Reset <= '0';

	wait for clk_period;
	WR <= '0';
	RD <= '1';
	Reset <= '1';
	Addr <= "1101";
	Data_in <= "ZZZZ";

	wait for clk_period;
	WR <= '1';
	RD <= '1';
	Reset <= '1';
	Addr <= "1101";
	Data_in <= "1111";

	wait for clk_period;
	WR <= '0';
	RD <= '1';
	Reset <= '1';
	Addr <= "1101";
	Data_in <= "ZZZZ";

      	wait;
   end process;

END;
