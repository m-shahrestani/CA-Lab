library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder2_4_tb is
end entity decoder2_4_tb;

architecture test of decoder2_4_tb is

	component decoder2_4 is
		port(
			a : in STD_LOGIC_VECTOR(1 downto 0);
			b : out STD_LOGIC_VECTOR(3 downto 0)		
		);
	end component decoder2_4;

	signal a : STD_LOGIC_VECTOR(1 downto 0);
	signal b : STD_LOGIC_VECTOR(3 downto 0);

begin
	decoder : decoder2_4 port map (a => a, b => b);

	a <= "00",
	"01" after 100 ns,
	"10" after 200 ns,
	"11" after 300 ns;

end test;
	