
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY Moore_1101_test IS
END Moore_1101_test;
 
ARCHITECTURE behavior OF Moore_1101_test IS 
 
    COMPONENT Moore_1101
    PORT(
         input : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         detector : OUT  std_logic
        );
    END COMPONENT;
    
   signal input : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

   signal detector : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: Moore_1101 PORT MAP (
          input => input,
          clk => clk,
          rst => rst,
          detector => detector
        );
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   stim_proc: process
   begin		
        wait for clk_period;
	  input <= '1';
	  wait for clk_period;
	  input <= '1';
	  wait for clk_period;
	  input <= '0'; 
	  wait for clk_period;
	  input <= '1'; 
	  wait for clk_period;
	  input <= '0'; 
	  wait for clk_period;
	  input <= '0'; 
      wait;
   end process;

END;
