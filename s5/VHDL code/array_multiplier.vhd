library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity array_multiplier is
    port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end array_multiplier;

architecture structure of array_multiplier is

	component ANDgate

		 port (
			
			a, b: in std_logic;
			c : out std_logic
			);
	end component;


	component CLA4bit is
 		port (
   			a  : in STD_LOGIC_VECTOR(3 downto 0);
    			b  : in STD_LOGIC_VECTOR(3 downto 0);
    			cin : in std_logic;
    			s  : out STD_LOGIC_VECTOR(3 downto 0);
    			cout : out std_logic
    		);
	end component CLA4bit;

	signal and_out : STD_LOGIC_VECTOR (15 downto 0);
	signal sum1 : STD_LOGIC_VECTOR (3 downto 0);
	signal sum2 : STD_LOGIC_VECTOR (3 downto 0);
	signal cout : STD_LOGIC_VECTOR (1 downto 0);
	signal inp1 : STD_LOGIC_VECTOR (3 downto 0);
	signal inp2 : STD_LOGIC_VECTOR (3 downto 0);
	signal inp3 : STD_LOGIC_VECTOR (3 downto 0);

begin
	a1: ANDgate
		
		port map(a=>A(0) , b=>B(0) , c=>and_out(0));

	a2: ANDgate
		
		port map(a=>A(0) , b=>B(1) , c=>and_out(1));

	a3: ANDgate
		
		port map(a=>A(0) , b=>B(2) , c=>and_out(2));

	a4: ANDgate
		
		port map(a=>A(0) , b=>B(3) , c=>and_out(3));

	a5: ANDgate
		
		port map(a=>A(1) , b=>B(0) , c=>and_out(4));
	
	a6: ANDgate
		
		port map(a=>A(1) , b=>B(1) , c=>and_out(5));

	a7: ANDgate
		
		port map(a=>A(1) , b=>B(2) , c=>and_out(6));

	a8: ANDgate
		
		port map(a=>A(1) , b=>B(3) , c=>and_out(7));

	a9: ANDgate
		
		port map(a=>A(2) , b=>B(0) , c=>and_out(8));

	a10: ANDgate
		
		port map(a=>A(2) , b=>B(1) , c=>and_out(9));

	a11: ANDgate
		
		port map(a=>A(2) , b=>B(2) , c=>and_out(10));

	a12: ANDgate
		
		port map(a=>A(2) , b=>B(3) , c=>and_out(11));

	a13: ANDgate
		
		port map(a=>A(3) , b=>B(0) , c=>and_out(12));

	a14: ANDgate
		
		port map(a=>A(3) , b=>B(1) , c=>and_out(13));
	
	a15: ANDgate
		
		port map(a=>A(3) , b=>B(2) , c=>and_out(14));

	a16: ANDgate
		
		port map(a=>A(3) , b=>B(3) , c=>and_out(15));



	P(0) <= and_out(0);
	inp1 <= '0'&and_out(3 downto 1);	
	cla1: CLA4bit
		port map(a=>inp1, b=>and_out(7 downto 4), cin=>'0', s=>sum1, cout=>cout(0));
	P(1) <= sum1(0);
	
	inp2 <= cout(0)&sum1(3 downto 1);
	cla2: CLA4bit
		port map(a=>inp2, b=>and_out(11 downto 8), cin=>'0', s=>sum2, cout=>cout(1));
	P(2) <= sum2(0);
	
	inp3 <= cout(1)&sum2(3 downto 1);
	cla3: CLA4bit
		port map(a=>inp3, b=>and_out(15 downto 12), cin=>'0', s=>P(6 downto 3), cout=>P(7));

end structure;