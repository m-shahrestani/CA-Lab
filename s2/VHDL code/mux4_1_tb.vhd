library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4_1_tb is
end entity mux4_1_tb;

architecture test of mux4_1_tb is

	component mux4_1 is
		port(
			i : in STD_LOGIC_VECTOR(3 downto 0);
			o : out STD_LOGIC;
			s : in STD_LOGIC_VECTOR(1 downto 0)
		);
	end component mux4_1;

	signal i : STD_LOGIC_VECTOR(3 downto 0);
	signal o : STD_LOGIC;
	signal s : STD_LOGIC_VECTOR(1 downto 0);

begin

	 multiplexer : mux4_1 port map(i => i, o => o, s => s);

	i <= "0001",
	"0010" after 100 ns,
	"0100" after 200 ns,
	"1000" after 300 ns,
	"0111" after 400 ns;

	s <= "00",
	"01" after 100 ns,
	"10" after 200 ns,
	"11" after 300 ns;

end test;

