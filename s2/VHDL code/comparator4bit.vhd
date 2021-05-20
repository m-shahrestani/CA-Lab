library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comparator4bit is

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

end entity comparator4bit;

architecture arch of comparator4bit is

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

	signal resault_1 : STD_LOGIC_VECTOR(2 downto 0);
	signal resault_2 : STD_LOGIC_VECTOR(2 downto 0);
	signal resault_3 : STD_LOGIC_VECTOR(2 downto 0);

begin
	
	comprator_1 : comparator1bit port map (
		a => a(3),
		b => b(3),
		lt => lt,
		eq => eq,
		gt => gt,
		a_lt_b => resault_1(2),
		a_eq_b => resault_1(1),
		a_gt_b => resault_1(0)
	);

	comprator_2 : comparator1bit port map (
		a => a(2),
		b => b(2),
		lt => resault_1(2),
		eq => resault_1(1),
		gt => resault_1(0),
		a_lt_b => resault_2(2),
		a_eq_b => resault_2(1),
		a_gt_b => resault_2(0)
	);

	comprator_3 : comparator1bit port map (
		a => a(1),
		b => b(1),
		lt => resault_2(2),
		eq => resault_2(1),
		gt => resault_2(0),
		a_lt_b => resault_3(2),
		a_eq_b => resault_3(1),
		a_gt_b => resault_3(0)
	);

	comprator_4 : comparator1bit port map (
		a => a(0),
		b => b(0),
		lt => resault_3(2),
		eq => resault_3(1),
		gt => resault_3(0),
		a_lt_b => a_lt_b,
		a_eq_b => a_eq_b,
		a_gt_b => a_gt_b
	);
	
end arch;
