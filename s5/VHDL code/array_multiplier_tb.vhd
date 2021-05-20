library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity array_multiplier_tb is

end array_multiplier_tb;


architecture test of array_multiplier_tb is

	component array_multiplier is
		  port(
			
A : IN  std_logic_vector(3 downto 0);
 
		        B : IN  std_logic_vector(3 downto 0);

         		P : OUT  std_logic_vector(7 downto 0)

		        );

	end component array_multiplier;

	signal A : std_logic_vector(3 downto 0);
	
signal B : std_logic_vector(3 downto 0);


 	signal P : std_logic_vector(7 downto 0);

	constant period : time := 50 ns;

begin

 	amp : array_multiplier port map (

          	A => A,

	        B => B,

       		P => P
	
        );

 
	
	simulation : process
	begin
		A <= "0000";

		B <= "0000";



		wait for period;
		a <= "0001";
		b <= "0010";

		wait for period;
		a <= "0011";
		b <= "0110";


		wait for period;
		a <= "0111";
		b <= "0110";


		wait for period;
		a <= "0111";
		b <= "0110";
		wait;

	end process;
end test;