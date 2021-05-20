library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity comparator1bit is

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

end entity comparator1bit;

architecture arch of comparator1bit is

	signal and_gate_1 : STD_LOGIC;
	signal and_gate_2 : STD_LOGIC;
	signal and_gate_3 : STD_LOGIC;
	signal and_gate_4 : STD_LOGIC;
	signal and_gate_5 : STD_LOGIC;
	signal and_gate_6 : STD_LOGIC;
	signal and_gate_7 : STD_LOGIC;
	signal and_gate_8 : STD_LOGIC;
	signal and_gate_9 : STD_LOGIC;
	signal and_gate_10 : STD_LOGIC;

	signal or_gate_1 : STD_LOGIC;
	signal or_gate_2 : STD_LOGIC;

	signal not_gate_1 : STD_LOGIC;
	signal not_gate_2 : STD_LOGIC;
	signal not_gate_3 : STD_LOGIC;
	signal not_gate_4 : STD_LOGIC;
	signal not_gate_5 : STD_LOGIC;

	signal nor_gate_1 : STD_LOGIC;

	signal xor_gate_1 : STD_LOGIC;


begin

	not_gate_1 <= not a;
	not_gate_2 <= not b;

	not_gate_3 <= not eq;

	and_gate_1 <= lt and not_gate_3;
	and_gate_2 <= gt and not_gate_3;

	not_gate_4 <= not and_gate_1;
	not_gate_5 <= not and_gate_2;

	xor_gate_1 <= lt xor eq xor gt;

	and_gate_3 <= not_gate_1 and b;
	and_gate_4 <= not_gate_2 and a;

	nor_gate_1 <= and_gate_3 nor and_gate_4;

	or_gate_1 <= and_gate_1 or and_gate_3;
	or_gate_2 <= and_gate_2 or and_gate_4;

	and_gate_5 <= not_gate_5 and or_gate_1;
	and_gate_6 <= not_gate_4 and or_gate_2;

	and_gate_7 <= nor_gate_1 and not_gate_4 and not_gate_5;

	and_gate_8 <= xor_gate_1 and and_gate_5;
	and_gate_9 <= xor_gate_1 and and_gate_6;
	and_gate_10 <= xor_gate_1 and and_gate_7;

	a_lt_b <= and_gate_8;
	a_gt_b <= and_gate_9;
	a_eq_b <= and_gate_10;

end arch;
