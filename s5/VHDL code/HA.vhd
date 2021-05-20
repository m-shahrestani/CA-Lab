library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HA is
	port(
		in1, in2: in STD_LOGIC;
		out1, out2 : out STD_LOGIC
	);
end entity HA;

architecture structure of HA is

	component XORgate is
		port(
			a, b: in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component XORgate;
	
	component ANDgate is
		port(
			a, b: in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component ANDgate;

begin

	XORgate1: XORgate port map ( a => in1, b => in2, c=>out1 );
	ANDgate1: ANDgate port map ( a => in1, b => in2, c=>out2 );

end structure;
