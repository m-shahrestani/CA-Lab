library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CSA_multiplier is
    port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0));
end CSA_multiplier;

architecture structure of CSA_multiplier is
	component FA

		 port ( 
			i0, i1, cin: in STD_LOGIC;
			s, cout : out STD_LOGIC
			);
	end component;


	component HA

		port(
			in1, in2: in STD_LOGIC;
			out1, out2 : out STD_LOGIC
			);
	end component;

	component ANDgate

		 port (
			
			a, b: in std_logic;
			c : out std_logic
			);
	end component;


	
signal and_out : STD_LOGIC_VECTOR (15 downto 0);


	signal S0, S1, S2, S3: STD_LOGIC_VECTOR (2 downto 0);
	signal C0, C1, C2, C3: STD_LOGIC_VECTOR (2 downto 0);

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
	ha1: HA

		port map(in1=>and_out(4), in2=>and_out(1), out1=>S0(0), out2=>C0(0));

	ha2: HA

		port map(in1=>and_out(5), in2=>and_out(2), out1=>S0(1), out2=>C0(1));

	ha3: HA

		port map(in1=>and_out(6), in2=>and_out(3), out1=>S0(2), out2=>C0(2));


	--row2
	
fa1: FA

		port map(i0=>C0(0), i1=>S0(1), cin=>and_out(8), s=>S1(0), cout=>C1(0));

	
fa2: FA

		port map(i0=>C0(1), i1=>S0(2), cin=>and_out(9), s=>S1(1), cout=>C1(1));

	
fa3: FA

		port map(i0=>C0(2), i1=>and_out(7), cin=>and_out(10), s=>S1(2), cout=>C1(2));


	--row3
	
fa4: FA

		port map(i0=>C1(0), i1=>S1(1), cin=>and_out(12), s=>S2(0), cout=>C2(0));

	
fa5: FA

		port map(i0=>C1(1), i1=>S1(2), cin=>and_out(13), s=>S2(1), cout=>C2(1));

	
fa6: FA

		port map(i0=>C1(2), i1=>and_out(11), cin=>and_out(14), s=>S2(2), cout=>C2(2));


	--row4
	ha4: HA

		port map(in1=>C2(0), in2=>S2(1), out1=>S3(0), out2=>C3(0));

	
fa7: FA

		port map(i0=>C2(1), i1=>S2(2), cin=>C3(0),  s=>S3(1), cout=>C3(1));

	
fa8: FA

		port map(i0=>C2(2), i1=>and_out(15), cin=>C3(1),  s=>S3(2), cout=>C3(2));


	P(0) <= and_out(0);
	P(1) <= S0(0);
	P(2) <= S1(0);
	P(3) <= S2(0);
	P(4) <= S3(0);
	P(5) <= S3(1);
	P(6) <= S3(2);
	P(7) <= C3(2);

end structure;
