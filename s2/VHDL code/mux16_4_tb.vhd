library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux16_4_tb is
end entity mux16_4_tb;

architecture test of mux16_4_tb is

	component mux16_4 is
		port(
			i0 : in STD_LOGIC_VECTOR(3 downto 0);
			i1 : in STD_LOGIC_VECTOR(3 downto 0);
			i2 : in STD_LOGIC_VECTOR(3 downto 0);
			i3 : in STD_LOGIC_VECTOR(3 downto 0);
			o : out STD_LOGIC_VECTOR(3 downto 0);
			s : in STD_LOGIC_VECTOR(1 downto 0)
		);
	end component mux16_4;

	signal i0 : STD_LOGIC_VECTOR(3 downto 0);
	signal i1 : STD_LOGIC_VECTOR(3 downto 0);
	signal i2 : STD_LOGIC_VECTOR(3 downto 0);
	signal i3 : STD_LOGIC_VECTOR(3 downto 0);
	signal o : STD_LOGIC_VECTOR(3 downto 0);
	signal s : STD_LOGIC_VECTOR(1 downto 0);

	constant period : time := 50 ns;

begin
	
	mux16 : mux16_4 port map (
		i0 => i0,
		i1 => i1, 
		i2 => i2,
		i3 => i3,
		o => o,
		s => s
		);

	simulation : process
	begin
		i0 <= "0001";
		i1 <= "0010"; 
		i2 <= "0100";
		i3 <= "1000";
		s <= "00";

		wait for period;
		s <= "01";

		wait for period;
		s <= "10";

		wait for period;
		s <= "11";
		
		wait;
	end process;
end test;
	