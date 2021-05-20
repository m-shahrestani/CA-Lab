
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Detector_0110_0101 is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           detected : out  STD_LOGIC);
end Detector_0110_0101;

architecture Behavioral of Detector_0110_0101 is

	type states is (s1, s2,s3, s4, s5 , s6 , s7);
	signal state:  states := s1;  
   signal next_state:   states := s1;

begin


process(clk,rst)

begin

 if(rst='1') then
  state <= s1;

 elsif(rising_edge(clk)) then
  state <= next_state;
 end if;

end process;

process(state,input)

begin
 case(state) is
 
	 when s1 =>
  		if(input = '1') then
  			 next_state <= s1;
  		else
  			 next_state <= s2;
 		 end if;
 
 	when s2 =>
  		if(input = '1') then
   			next_state <= s3;
 		 else
  			 next_state <= s2;
  		end if;  
 
 	when s3 => 
 	 	if(input = '1') then
  			 next_state <= s4;
 		 else
  			 next_state <= s6;
  		end if;  
 
 	when s4 =>
 		 if(input = '1') then
  			 next_state <= s1;
  		else
  			 next_state <= s5;
  		end if; 
 
	 when s5 =>
 		 if(input = '1') then
 			  next_state <= s3;
  		else
  			 next_state <= s2;
  		end if;
 
 	when s6 =>
  		if(input = '1') then
  			 next_state <= s7;
  		else
  			 next_state <= s2;
  		end if;
  
  	when s7 =>
 		 if(input = '1') then
 			  next_state <= s4;
  		else
   			next_state <= s6;
  		end if; 

 
 end case;
end process;

process(state)

begin 
 case state is
 
 	when s1 =>
 		detected <= '0';
 
	when s2 =>
 		detected <= '0'; 
 
 	when s3 => 
  		detected <= '0'; 
 
 	when s4=>
  		detected <= '0'; 
 
	 when s5 =>
  		detected <= '1';

 	when s6 =>
 		detected <= '0';

 	when s7 =>
 		detected <= '1';

 end case;
end process;

end Behavioral;

