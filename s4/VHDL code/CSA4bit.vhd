library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CSA4bit is
	port(
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		cin : in STD_LOGIC;
		s: out STD_LOGIC_VECTOR(3 downto 0);
		cout : out STD_LOGIC
	);
end entity CSA4bit;

architecture structure of CSA4bit is

	component FA is
		port(
			i0, i1, cin: in STD_LOGIC;
			s, cout : out STD_LOGIC
		);
	end component FA;

	component mux2_1 is
		port(
			i : in STD_LOGIC_VECTOR(1 downto 0);
			s : in STD_LOGIC;
			o : out STD_LOGIC
		);
	end component mux2_1;

	signal s1, s2 : STD_LOGIC_VECTOR(3 downto 0);
	signal c1, c2 : STD_LOGIC_VECTOR(3 downto 0);
	signal cout1, cout2 : STD_LOGIC;

begin
	
	--first row
	c1(0) <= '0';
	FA1 : FA port map (
		i0 => a(0), 
		i1 => b(0), 
		cin => c1(0),
		s => s1(0), 
		cout => c1(1)
	);

	FA2 : FA port map (
		i0 => a(1), 
		i1 => b(1), 
		cin => c1(1), 
		s => s1(1), 
		cout => c1(2)
	);

	FA3 : FA port map (
		i0 => a(2), 
		i1 => b(2), 
		cin => c1(2), 
		s => s1(2), 
		cout => c1(3)
	);

	FA4 : FA port map (
		i0 => a(3), 
		i1 => b(3), 
		cin => c1(3), 
		s => s1(3), 
		cout => cout1
	);

	--second row
	c2(0) <= '1';
	FA5 : FA port map (
		i0 => a(0), 
		i1 => b(0), 
		cin => c2(0),
		s => s2(0), 
		cout => c2(1)
	);

	FA6 : FA port map (
		i0 => a(1), 
		i1 => b(1), 
		cin => c2(1), 
		s => s2(1), 
		cout => c2(2)
	);

	FA7 : FA port map (
		i0 => a(2), 
		i1 => b(2), 
		cin => c2(2), 
		s => s2(2), 
		cout => c2(3)
	);

	FA8 : FA port map (
		i0 => a(3), 
		i1 => b(3), 
		cin => c2(3), 
		s => s2(3), 
		cout => cout2
	);

	--s mux

	mux1 : mux2_1 port map (
		i(0) => s1(0),
		i(1) => s2(0),
		s => cin,
		o => s(0)
	);

	mux2 : mux2_1 port map (
		i(0) => s1(1),
		i(1) => s2(1),
		s => cin,
		o => s(1)
	);

	mux3 : mux2_1 port map (
		i(0) => s1(2),
		i(1) => s2(2),
		s => cin,
		o => s(2)
	);

	mux4 : mux2_1 port map (
		i(0) => s1(3),
		i(1) => s2(3),
		s => cin,
		o => s(3)
	);

	--c( mux

	mux5 : mux2_1 port map (
		i(0) => cout1,
		i(1) => cout2,
		s => cin,
		o => cout
	);

end structure;

