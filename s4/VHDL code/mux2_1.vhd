library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux2_1 is

	port(
		i : in STD_LOGIC_VECTOR(1 downto 0);
		s : in STD_LOGIC;
		o : out STD_LOGIC
	);

end entity mux2_1;

architecture structure of mux2_1 is

signal sig1, sig2 : STD_LOGIC;

begin
	sig1 <= not s and i(0);
	sig2 <= s and i(1);
	o <= sig1 or sig2;
end structure;

