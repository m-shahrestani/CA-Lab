
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DFF_test IS
END DFF_test;
 
ARCHITECTURE behavior OF DFF_test IS 
  
    COMPONENT DFF
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';
   signal Q : std_logic;
 
BEGIN
 
   uut: DFF PORT MAP (
          D => D,
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
      wait for 50 ns;
		
		D <= '1';
		wait for 25 ns;
		 
     		D <= '0';
		wait for 25 ns;
		
		D <= '1';
		wait for 25 ns;
		
		rst <= '0';
		wait for 25 ns;

		rst <= '1';
		wait for 25 ns;
		
		D <= '0';
		wait for 25 ns;
		
		D <= '1';
		wait for 25 ns;
		
		rst <= '0';
		wait for 25 ns;

		rst <= '1';
		wait for 25 ns;

		D <= '0';
		wait for 25 ns;
		
		D <= '1';
		wait for 25 ns;
      wait;
   end process;

END;
