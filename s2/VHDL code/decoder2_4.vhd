library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder2_4 is

	port(
		a : in 	STD_LOGIC_VECTOR(1 downto 0);
		b : out STD_LOGIC_VECTOR(3 downto 0)
	);

end entity decoder2_4;

architecture arch of decoder2_4 is
begin

	b(0) <= not a(1) and not a(0);
	b(1) <= not a(1) and a(0);
	b(2) <= a(1) and not a(0);
	b(3) <= a(1) and a(0);

end arch;
