library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux16_4 is
	port(
		i0 : in STD_LOGIC_VECTOR(3 downto 0);
		i1 : in STD_LOGIC_VECTOR(3 downto 0);
		i2 : in STD_LOGIC_VECTOR(3 downto 0);
		i3 : in STD_LOGIC_VECTOR(3 downto 0);
		o : out STD_LOGIC_VECTOR(3 downto 0);
		s : in STD_LOGIC_VECTOR(1 downto 0)
	);
end entity mux16_4;

architecture arch of mux16_4 is
	component mux4_1 is
		port(
			i : in STD_LOGIC_VECTOR(3 downto 0);
			o : out STD_LOGIC;
			s : in STD_LOGIC_VECTOR(1 downto 0)
		);
	end component mux4_1;

begin
	
	mux1 : mux4_1 port map (
		i => i0,
		o => o(0),
		s => s
	);

	mux2 : mux4_1 port map (
		i => i1,
		o => o(1),
		s => s
	);

	mux3 : mux4_1 port map (
		i => i2,
		o => o(2),
		s => s
	);

	mux4 : mux4_1 port map (
		i => i3,
		o => o(3),
		s => s
	);

end arch;

