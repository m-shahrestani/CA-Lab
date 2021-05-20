
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mealy_1101 is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
	   detected: out STD_LOGIC
	);
end Mealy_1101;
	
architecture Behavioral of Mealy_1101 is
	type states is (s1,s2,s3,s4);
	signal state:  states := s1;  
	signal next_state: states := s1;  
	
begin

clock:  process(clk , rst)
          begin
            if(rst='1') then 
		state <= s1;
	    elsif(rising_edge(clk)) then 
		state <= next_state;
	    end if;
				
          end process clock;
state_trans:  process(state,input)   
          begin
            next_state <= state;  
            case state is
               when s1 => if (input = '0') then
                         detected <= '0';
                         next_state <= s1;
                    else
                         next_state <= s2;
                         detected <= '0';
                    end if;
               when s2 => if (input = '1') then
                         next_state <= s3;
                         detected <= '0';
                    else
                         detected  <= '0';
                         next_state <= s1;
                    end if;
               when s3 => if (input = '1') then
                         next_state <= s3;
                         detected <= '0';
                    else
                         next_state <= s4;
                         detected <= '0';
                    end if;
               when s4 => if (input = '0') then
                         next_state <= s1;
                         detected <= '0';
                    else
                         next_state <= s2;
                         detected <= '1';
                     end if;
               
end case;
end process state_trans;

end Behavioral;

