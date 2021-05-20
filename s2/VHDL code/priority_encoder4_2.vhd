library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder4_2 is
    	port ( 
		a : in  STD_LOGIC_VECTOR (3 downto 0);
           	b : out  STD_LOGIC_VECTOR (1 downto 0)
	);

end priority_encoder4_2;

architecture arch of priority_encoder4_2 is

begin
	b(0) <= a(3) or ((not a(2)) and a(1));
	b(1) <= a(3) or a(2);
end arch;

