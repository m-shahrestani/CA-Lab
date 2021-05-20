library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder4_2_tb is
end entity encoder4_2_tb;

architecture test of encoder4_2_tb is

	component encoder4_2 is
		port(
			a : in STD_LOGIC_VECTOR(3 downto 0);
			b : out STD_LOGIC_VECTOR(1 downto 0)
		);
	end component encoder4_2;

	signal a : STD_LOGIC_VECTOR(3 downto 0);
	signal b : STD_LOGIC_VECTOR(1 downto 0);

begin

	encoder : encoder4_2 port map(a => a, b => b);

	a <= "0001",
	"0010" after 100 ns,
	"0100" after 200 ns,
	"1000" after 300 ns;

end test;
