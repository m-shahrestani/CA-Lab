--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:57 11/25/2020
-- Design Name:   
-- Module Name:   C:/Users/Home/Desktop/Lab6/Lab6/REG_test.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG
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
 
ENTITY REG_test IS
END REG_test;
 
ARCHITECTURE behavior OF REG_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG
    PORT(
         LOAD : IN  std_logic;
         CLoCK : IN  std_logic;
         RST : IN  std_logic;
         PARALLEL_IN : IN  std_logic_vector(3 downto 0);
         L_R : IN  std_logic_vector(1 downto 0);
         register_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LOAD : std_logic := '0';
   signal CLoCK : std_logic := '0';
   signal RST : std_logic := '0';
   signal PARALLEL_IN : std_logic_vector(3 downto 0) := (others => '0');
   signal L_R : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal register_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG PORT MAP (
          LOAD => LOAD,
          CLoCK => CLoCK,
          RST => RST,
          PARALLEL_IN => PARALLEL_IN,
          L_R => L_R,
          register_out => register_out
        );

   -- Clock process definitions
   CLoCK_process :process
   begin
		CLoCK <= '0';
		wait for clk_period/2;
		CLoCK <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     
		RST <='1';
	wait for clk_period;
	
	parallel_in<="0010";
	L_R<="00";
	LOAD<='1';
	RST<='0';
	wait for clk_period;
	
	parallel_in<="0010";
	L_R<="01";
	LOAD<='1';
	RST<='0';
	wait for clk_period;
	
	parallel_in<="0010";
	L_R<="10";
	LOAD<='1';
	RST<='0';
	wait for clk_period;
	
	parallel_in<="0010";
	L_R<="11";
	LOAD<='1';
	RST<='0';
	 

      wait;
   end process;

END;
