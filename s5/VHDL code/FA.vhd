library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FA is
	port(
		i0, i1, cin: in STD_LOGIC;
		s, cout : out STD_LOGIC
	);
end entity FA;

architecture structure of FA is

	component ORgate is
		Port(
			a, b : in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component ORgate;

	component HA is
		port(
			in1, in2: in STD_LOGIC;
			out1, out2 : out STD_LOGIC
		);
	end component HA;

signal sig1, sig2, sig3: STD_LOGIC;

begin

	HA0: HA port map ( in1 => i0, in2 => i1, out1 => sig1, out2 => sig2);
	HA1: HA port map ( in1 => sig1, in2 => cin, out1 => s, out2 => sig3);
	OR1: ORgate port map ( a => sig2, b => sig3, c => cout );

end structure;
