library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity booth_multiplier_tb is

end booth_multiplier_tb;


architecture test of booth_multiplier_tb is

	component booth_multiplier
 is
		  port(
			
A : IN  std_logic_vector(3 downto 0);
 
		        B : IN  std_logic_vector(3 downto 0);

         		P : OUT  std_logic_vector(7 downto 0)

		        );

	end component booth_multiplier
;

	signal A : std_logic_vector(3 downto 0);
	
signal B : std_logic_vector(3 downto 0);


 	signal P : std_logic_vector(7 downto 0);

	constant period : time := 50 ns;

begin

 	bmp : booth_multiplier port map (

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

		A <= "1000";

		B <= "1000";



		wait for period;
		a <= "0001";
		b <= "1010";

		wait for period;
		a <= "1011";
		b <= "0110";


		wait for period;
		a <= "1111";
		b <= "0110";


		wait for period;
		a <= "0111";
		b <= "0110";
		wait;

	end process;
end test;
