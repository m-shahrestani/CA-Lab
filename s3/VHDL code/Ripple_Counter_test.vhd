
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Ripple_Counter_test IS
END Ripple_Counter_test;
 
ARCHITECTURE behavior OF Ripple_Counter_test IS 
 
    COMPONENT Ripple_Counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal clk : std_logic := '0';
   signal rst : std_logic := '1';

   signal count : std_logic_vector(3 downto 0);

   constant clk_period : time := 50 ns;
 
BEGIN
 
   uut: Ripple_Counter PORT MAP (
          clk => clk,
          rst => rst,
          count => count
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
      wait;
   end process;

END;
