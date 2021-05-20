

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0)
	);
end Ripple_Counter;

architecture Behavioral of Ripple_Counter is
	component TFF
		 Port ( T : in  STD_LOGIC;
		        clk : in  STD_LOGIC;
			rst : in  STD_LOGIC;
			Q : out  STD_LOGIC
			);
	end component;
	signal s : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	TFF_0: TFF port map(T=>'1', clk=>clk, rst=>rst, Q=>s(0));
	TFF_1: TFF port map(T=>'1', clk=>s(0), rst=>rst, Q=>s(1));
	TFF_2: TFF port map(T=>'1', clk=>s(1), rst=>rst, Q=>s(2));
	TFF_3: TFF port map(T=>'1', clk=>s(2), rst=>rst, Q=>s(3));
	count <= s;
end Behavioral;

