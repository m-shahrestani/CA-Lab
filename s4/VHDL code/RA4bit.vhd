library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RA4bit is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end entity RA4bit;

architecture structure of RA4bit is

	component FA is
		port(
			i0, i1, cin: in STD_LOGIC;
			s, cout : out STD_LOGIC
		);
	end component FA;

	signal c : STD_LOGIC_VECTOR(3 downto 0);

begin
	c(0) <= cin;
	FA1 : FA port map (
		i0 => a(0), 
		i1 => b(0), 
		cin => c(0), 
		s => s(0), 
		cout => c(1)
	);

	FA_2 : FA port map (
		i0 => a(1), 
		i1 => b(1), 
		cin => c(1), 
		s => s(1), 
		cout => c(2)
	);

	FA_3 : FA port map (
		i0 => a(2), 
		i1 => b(2), 
		cin => c(2), 
		s => s(2), 
		cout => c(3)
	);

	FA_4 : FA port map (
		i0 => a(3), 
		i1 => b(3), 
		cin => c(3), 
		s => s(3), 
		cout => cout
	);

end structure;
