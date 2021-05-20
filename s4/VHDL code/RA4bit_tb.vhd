library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RA4bit_tb is
end entity RA4bit_tb;

architecture test of RA4bit_tb is

	component RA4bit is
 		port (
   			a  : in STD_LOGIC_VECTOR(3 downto 0);
    			b  : in STD_LOGIC_VECTOR(3 downto 0);
    			cin : in std_logic;
    			s  : out STD_LOGIC_VECTOR(3 downto 0);
    			cout : out std_logic
    		);
	end component RA4bit;

	signal a  : STD_LOGIC_VECTOR(3 downto 0);
	signal b  : STD_LOGIC_VECTOR(3 downto 0);
	signal cin : std_logic;
	signal s  : STD_LOGIC_VECTOR(3 downto 0);
	signal cout : std_logic;
	constant period : time := 50 ns;
begin
	RA4bit1 : RA4bit port map (
		a => a,
		b => b,
		cin => cin,
		s => s,
		cout => cout
		);

	simulation : process
	begin
		a <= "0000";
		b <= "0000"; 
		cin <= '0';

		wait for period;
		a <= "0001";
		b <= "0001"; 
		cin <= '0';

		wait for period;
		a <= "0010";
		b <= "0001"; 
		cin <= '1';

		wait for period;
		a <= "1000";
		b <= "1000"; 
		cin <= '0';

		wait for period;
		a <= "0100";
		b <= "0100"; 
		cin <= '1';

		wait for period;
		a <= "1111";
		b <= "1111"; 
		cin <= '1';

		wait for period;
		a <= "0100";
		b <= "0010"; 
		cin <= '0';

		wait for period;
		a <= "0001";
		b <= "0100"; 
		cin <= '1';

		wait;

	end process;
end test;