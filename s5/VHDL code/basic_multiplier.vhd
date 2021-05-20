library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity basic_multiplier is

	port (
		A : in  STD_LOGIC_VECTOR (3 downto 0);

     		B : in  STD_LOGIC_VECTOR (3 downto 0);

           	P : out  STD_LOGIC_VECTOR (7 downto 0)
		);

end basic_multiplier;



architecture structure of basic_multiplier is



	component FA

		 port ( 
			i0, i1, cin: in STD_LOGIC;
			s, cout : out STD_LOGIC
			);
	end component;


	component ANDgate

		 port (
			
			a, b: in std_logic;
			c : out std_logic
			);
	end component;

	

	component HA

		port(
			in1, in2: in STD_LOGIC;
			out1, out2 : out STD_LOGIC
			);
	end component;

	signal sum1 : STD_LOGIC_VECTOR (3 downto 0);

	signal sum2 : STD_LOGIC_VECTOR (3 downto 0);

	signal sum3 : STD_LOGIC_VECTOR (3 downto 0);

	
signal cout1 : STD_LOGIC_VECTOR (3 downto 0);

	signal cout2 : STD_LOGIC_VECTOR (3 downto 0);

	signal cout3 : STD_LOGIC_VECTOR (3 downto 0);

	
signal and_out : STD_LOGIC_VECTOR (15 downto 0);



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


	--row1
	
	ha0: HA
		port map(in1=>and_out(1), in2=>and_out(4), out1=>sum1(0), out2=>cout1(0));
	
fa1: FA		
		port map(i0=>and_out(2) , i1=>and_out(5) , cin=>cout1(0) , s=>sum1(1) , cout=>cout1(1));

	
fa2: FA		
		port map(i0=>and_out(3) , i1=>and_out(6) , cin=>cout1(1) , s=>sum1(2) , cout=>cout1(2));

	
ha1: HA		
		port map(in1=>and_out(7), in2=>cout1(2), out1=>sum1(3), out2=>cout1(3));

	
	
--row2

	ha2: HA

		port map(in1=>and_out(8), in2=>sum1(1), out1=>sum2(0), out2=>cout2(0));

	
fa3: FA

		port map(i0=>and_out(9), i1=>sum1(2), cin=>cout2(0), s=>sum2(1), cout=>cout2(1));

	
fa4: FA		
		port map(i0=>and_out(10), i1=>sum1(3), cin=>cout2(1), s=>sum2(2), cout=>cout2(2));

	
fa5: FA		
		port map(i0=>and_out(11), i1=>cout1(3), cin=> cout2(2), s=>sum2(3), cout=>cout2(3));

	
	

--row3
	
	h4: HA		
		port map(in1=>and_out(12), in2=>sum2(1), out1=>sum3(0), out2=>cout3(0));

	
fa6: FA		
		port map(i0=>and_out(13), i1=>sum2(2), cin=>cout3(0), s=>sum3(1), cout=>cout3(1));

	fa7: FA		
		port map(i0=>and_out(14), i1=>sum2(3), cin=>cout3(1), s=>sum3(2), cout=>cout3(2));

	fa8: FA		
		port map(i0=>and_out(15), i1=>cout2(3), cin=>cout3(2), s=>sum3(3), cout=>cout3(3));
	

	P(0) <= and_out(0);
	
P(1) <= sum1(0);

	
P(2) <= sum2(0);

	
P(3) <= sum3(0);
	P(4) <= sum3(1);
	
P(5) <= sum3(2);

	P(6) <= sum3(3);

	P(7) <= cout3(3);



end structure;


