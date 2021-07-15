----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:26 12/25/2020 
-- Design Name: 
-- Module Name:    CPU8BIT2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU8BIT2 is

	port ( data: inout std_logic_vector(7 downto 0);
			 adress: out std_logic_vector(3 downto 0);
			 rst: in std_logic;
			 clk: in std_logic );
			
end CPU8BIT2;

architecture Behavioral of CPU8BIT2 is
	
	signal akku: std_logic_vector(8 downto 0); -- 1 bit baraye carry
	signal adreg: std_logic_vector(3 downto 0);
	signal pc: std_logic_vector(3 downto 0);
	signal states: std_logic_vector(3 downto 0);
	type ram is array (15 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal memory : ram;
	
begin
	Process(clk,rst)

		-- bekhatere moshkele inout data in variable ra tarif kardim
		variable indata : STD_LOGIC_VECTOR( 7 downto 0);
		begin
			If (rst = '0') then
				
				-- maghadir avalie dar ram 
				
				memory(0) <= "10000101";
				memory(1) <= "00010101";
				memory(2) <= "01100101";
				memory(3) <= "01100010";
				memory(4) <= "00100011";
				memory(5) <= "01011000";
				memory(6) <= "10001111";
				memory(7) <= "10011100";
				memory(8) <= "10011101";
				
			   -- reset
				
				states <= "0000";
				akku <= (others => '0');
				indata := (others => '0');
				adreg <= (others => '0');
				pc <= (others => '0');
				
			elsIf rising_edge(clk) then
				-- PC / Adress path
				
				If (states = "0000") then
				
					pc <= STD_LOGIC_VECTOR(unsigned(adreg) + 1);
					indata := memory(to_integer(unsigned(pc)));
					
				else
				
					indata := memory(to_integer(unsigned(adreg)));
					adreg <= pc;
					
				end If;
				
				-- ALU / Data Path
				Case states is
				
					when "0001" => akku <= STD_LOGIC_VECTOR(unsigned(akku(7 downto 0)) + unsigned(indata)); -- add
					when "0010" => akku(7 downto 0) <= STD_LOGIC_VECTOR(unsigned(akku(7 downto 0)) - unsigned(indata)); -- sub
					when "0011" => akku(7 downto 0) <= akku(7 downto 0) or indata; -- or
					when "0100" => akku(7 downto 0) <= akku(7 downto 0) xor indata; -- xor
					when "0101" => akku(7 downto 0) <= akku(7 downto 0) and indata; -- and
					when "0110" => akku(8) <= '0'; -- clear carry
					when "0111" => akku(7 downto 0) <= not indata; -- not
					when "1000" => akku(7 downto 0) <= memory(to_integer(unsigned(adreg))) ; -- load
					when "1001" => memory(to_integer(unsigned(adreg))) <= akku(7 downto 0) ; -- save
					when "1010" => report "simulation finished" severity FAILURE; -- halt
					when others => null;
					
				end Case;
				
				-- State machine
				If (states /= "0000") then states <= "0000"; -- state badi
				elsIf (indata(7) = '0')then states <= "0" & not indata(7 downto 5); -- state badi
				elsIf (indata(7) = '1')then states <= not indata(7 downto 4); -- chon load ya save shode bayad az tekrar in kar jelogiri konim
				end If;
			end If;
	end Process;
	
	-- khoroji
	
	adress <= adreg;
	data <= akku(7 downto 0);
	
end Behavioral;

