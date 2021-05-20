library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4_1 is

	port(
		i : in STD_LOGIC_VECTOR(3 downto 0);
		o : out STD_LOGIC;
		s : in STD_LOGIC_VECTOR(1 downto 0)
	);

end entity mux4_1;

architecture arch of mux4_1 is
	
	signal and_gate_1 : STD_LOGIC;
	signal and_gate_2 : STD_LOGIC;
	signal and_gate_3 : STD_LOGIC;
	signal and_gate_4 : STD_LOGIC;
	
begin
	
	and_gate_1 <= not s(1) and not s(0) and i(0);
	and_gate_2 <= not s(1) and s(0) and i(1);
	and_gate_3 <= s(1) and not s(0) and i(2);
	and_gate_4 <= s(1) and s(0) and i(3);

	o <= and_gate_1 or and_gate_2 or and_gate_3 or and_gate_4;

end arch;
