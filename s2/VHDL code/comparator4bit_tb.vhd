library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comparator4bit_tb is
end entity comparator4bit_tb;

architecture test of comparator4bit_tb is

	component comparator4bit is
		port(
			a : in 	STD_LOGIC_VECTOR(3 downto 0);
			b : in STD_LOGIC_VECTOR(3 downto 0);
			lt : in STD_LOGIC;
			eq : in STD_LOGIC;
			gt : in STD_LOGIC;
			a_lt_b : out STD_LOGIC;
			a_eq_b : out STD_LOGIC;
			a_gt_b : out STD_LOGIC
		);
	end component comparator4bit;

	signal a : STD_LOGIC_VECTOR(3 downto 0);
	signal b : STD_LOGIC_VECTOR(3 downto 0);
	signal lt : STD_LOGIC;
	signal eq : STD_LOGIC;
	signal gt : STD_LOGIC;

	signal a_lt_b : STD_LOGIC;
	signal a_eq_b : STD_LOGIC;
	signal a_gt_b : STD_LOGIC;

	constant period : time := 50 ns;

begin

	comprator : comparator4bit port map (
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

		a <= "0000";
		b <= "0000";

		wait for period;

		lt <= '0';
		eq <= '1';
		gt <= '0';

		wait for period;

		a <= "0010";
		b <= "0011";

		wait for period;

		a <= "1000";
		b <= "0110";

		wait for period;
		
		a <= "1101";
		b <= "1101";

		wait for period;
		
		a <= "0111";
		b <= "1111";

		wait for period;
		
		a <= "1111";
		b <= "1111";
	
		wait for period;

		lt <= '1';
		eq <= '0';
		gt <= '0';

		wait for period;

		a <= "0001";
		b <= "0000";
	
		wait for period;

		a <= "0000";
		b <= "0001";

		wait for period;

		lt <= '0';
		eq <= '0';
		gt <= '1';

		wait for period;

		a <= "0001";
		b <= "0001";

		wait for period;

		a <= "0001";
		b <= "0000";
	
		wait for period;

		a <= "0000";
		b <= "0001";

	end process;
end test;
	
