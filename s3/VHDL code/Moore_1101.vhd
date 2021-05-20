
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Moore_1101 is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           detector : out  STD_LOGIC
	);
end Moore_1101;

architecture Behavioral of Moore_1101 is

	type states is (s1, s2,s3, s4, s5);
	signal state:  states := s1;  
   	signal next_state:   states := s1;
begin

clock:  process(clk , rst)
          begin
            if(rst='1') then 
		state <= s1;
	    elsif(rising_edge(clk)) then 
		state <= next_state;
	    end if;
				
          end process clock;
process(state,input)
begin
 case(state) is
	 when s1 =>
  		if(input='1') then
   			next_state <= s2;
  		else
  		 	next_state <= s1;
  		end if;
	 when s2 =>
 		 if(input='1') then
 			 next_state <= s3;
  		else
  			 next_state <= s1;
  		end if;  
 	when s3 => 
  		if(input='0') then
  		 	next_state <= s4;
  		else
   			next_state <= s3;
 		 end if;  
	 when s4 =>
  		if(input='1') then
   			next_state <= s5;
  		else
   			next_state <= s1;
  		end if; 
 	when s5 =>
 		 if(input='1') then
   			next_state <= s3;
  		else
  			 next_state <= s1;
  		end if;
 end case;
end process;

process(state)
begin 
 case state is
 	when s1 =>
  		detector <= '0';
 	when s2 =>
 		 detector <= '0'; 
 	when s3 => 
 		 detector <= '0'; 
 	when s4=>
  		detector <= '0'; 
 	when s5 =>
  		detector <= '1';
 end case;
end process;

end Behavioral;

