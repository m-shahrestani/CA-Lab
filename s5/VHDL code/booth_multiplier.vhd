library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity booth_multiplier is
		  port(
			
A : IN  std_logic_vector(3 downto 0);
 
		        B : IN  std_logic_vector(3 downto 0);

         		P : OUT  std_logic_vector(7 downto 0)

		        );
end booth_multiplier;
   
architecture behaviour of booth_multiplier is
    begin       
        process(A, B)
        variable m: std_logic_vector(8 downto 0);
        variable s : std_logic_vector(3 downto 0);
        variable i:integer;
        begin
            m := "000000000";
            s := B;
            m(4 downto 1) := A;

            for i in 0 to 3 loop
                if(m(1) = '1' and m(0) = '0') then
                    m(8 downto 5) := (m(8 downto 5) - s);
                     
                elsif(m(1) = '0' and m(0) = '1') then
                    m(8 downto 5) := (m(8 downto 5) + s);   
                end if;
                 
                m(7 downto 0) := m(8 downto 1);    
            end loop;
               
            P(7 downto 0) <= m(8 downto 1);
        end process;                   
end behaviour;