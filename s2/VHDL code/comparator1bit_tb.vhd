library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comparator1bit_tb is
end entity comparator1bit_tb;

architecture test of comparator1bit_tb is

	component comparator1bit is
		port(
			a : in 	STD_LOGIC;
			b : in STD_LOGIC;
			lt : in STD_LOGIC;
			eq : in STD_LOGIC;
			gt : in STD_LOGIC;
			a_lt_b : out STD_LOGIC;
			a_eq_b : out STD_LOGIC;
			a_gt_b : out STD_LOGIC
		);
	end component comparator1bit;

	signal a : STD_LOGIC := '0';
	signal b : STD_LOGIC := '0';
	signal lt : STD_LOGIC := '0';
	signal eq : STD_LOGIC := '0';
	signal gt : STD_LOGIC := '0';

	signal a_lt_b : STD_LOGIC;
	signal a_eq_b : STD_LOGIC;
	signal a_gt_b : STD_LOGIC;

	constant period : time := 50 ns;

begin

	comprator : comparator1bit port map (
		a => a,
		b => b, 
		lt => lt,
		eq => eq,
		gt => gt,
		a_lt_b => a_lt_b, 
		a_eq_b => a_eq_b,
		a_gt_b => a_gt_b
		);

		
	simulation : process
	begin
		
		lt <= '0';
		eq <= '0';
		gt <= '0';

		a <= '0';
		b <= '0';

		wait for period;

		lt <= '1';
		eq <= '0';
		gt <= '0';

		wait for period;

		a <= '0';
		b <= '1';

		wait for period;

		a <= '1';
		b <= '0';

		wait for period;
		
		a <= '1';
		b <= '1';
	
		wait for period;

		lt <= '0';
		eq <= '1';
		gt <= '0';

		a <= '0';
		b <= '0';

		wait for period;

		a <= '0';
		b <= '1';

		wait for period;

		a <= '1';
		b <= '0';

		wait for period;
		
		a <= '1';
		b <= '1';
	
		wait for period;

		lt <= '0';
		eq <= '0';
		gt <= '1';

		a <= '0';
		b <= '0';

		wait for period;

		a <= '0';
		b <= '1';

		wait for period;

		a <= '1';
		b <= '0';

		wait for period;
		
		a <= '1';
		b <= '1';
	
		wait;
	end process;

end test;
	
