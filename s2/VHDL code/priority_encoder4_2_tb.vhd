library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity priority_encoder4_2_tb is
end priority_encoder4_2_tb;
 
architecture test of priority_encoder4_2_tb is 
    component priority_encoder4_2
    	port ( 
		a : in  STD_LOGIC_VECTOR (3 downto 0);
           	b : out  STD_LOGIC_VECTOR (1 downto 0)
	);
    end component priority_encoder4_2;
    
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0);
 
   constant period : time := 50 ns;
 
begin
 
   priority_encoder : priority_encoder4_2 port map(
          a => a,
          b => b
        );

   simulation : process
   begin
		
   	wait for period;
	a <= "1000";
		
	wait for period;
	a <= "0001";
		
	wait for period;
	a <= "1000";
		
	wait for period;
	a <= "0010";

      	wait;
   end process;

end test;
