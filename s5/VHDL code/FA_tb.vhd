library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FA_tb is
end entity FA_tb;

architecture test of FA_tb is

	component FA is
		port(
			i0, i1, cin: in STD_LOGIC;
			s, cout : out STD_LOGIC
		);
	end component FA;

	signal i0 : STD_LOGIC;
	signal i1 : STD_LOGIC;
	signal cin : STD_LOGIC;
	signal s : STD_LOGIC;
	signal cout : STD_LOGIC;
	constant period : time := 50 ns;

begin

	FA1 : FA port map (
		i0 => i0,
		i1 => i1, 
		cin => cin,
		s => s,
		cout => cout
		);

	simulation : process
	begin
		i0 <= '0';
		i1 <= '0'; 
		cin <= '0';

		wait for period;
		i0 <= '1';
		i1 <= '0'; 
		cin <= '0';	

		wait for period;
		i0 <= '0';
		i1 <= '1'; 
		cin <= '0';

		wait for period;
		i0 <= '1';
		i1 <= '1';
		cin <= '0';

		wait for period;
		i0 <= '0';
		i1 <= '0'; 
		cin <= '1';

		wait for period;
		i0 <= '1';
		i1 <= '0'; 
		cin <= '1';

		wait for period;
		i0 <= '0';
		i1 <= '1'; 
		cin <= '1';

		wait for period;
		i0 <= '1';
		i1 <= '1'; 
		cin <= '1';
		wait;

	end process;
end test;
