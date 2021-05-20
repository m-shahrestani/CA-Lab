
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY TFF_test IS
END TFF_test;
 
ARCHITECTURE behavior OF TFF_test IS 
  
    COMPONENT TFF
    PORT(
         T : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    
   signal T : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';
   signal Q : std_logic;
 
BEGIN
 
   uut: TFF PORT MAP (
          T => T,
          clk => clk,
          rst => rst,
          Q => Q
        );

   clk_process :process
   begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
   end process;

   stim_proc: process
   begin		
      wait for 25 ns;
	
		T <= '1';
		wait for 25 ns;
		
		T <= '0';
		wait for 25 ns;
		
		rst <= '0';
		wait for 25 ns;

		rst <= '1';
		wait for 25 ns;
	
		T <= '0';
		wait for 25 ns;
		
		T <= '1';
		wait for 25 ns;
		
		rst <= '0';
		wait for 25 ns;

      wait;
   end process;

END;
