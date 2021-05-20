----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:04 11/25/2020 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

Entity REG is
 Port(
 LOAD,CLoCK,RST: in std_logic;
 PARALLEL_IN: in std_logic_vector(3 downto 0);
 L_R: in std_logic_vector(1 downto 0);
 register_out : out std_logic_vector(3 downto 0)
 );
End entity REG;
Architecture struct of REG is
	component mux_1 is
 		Port( 
			A,B,C,D, sel1,sel2 : in std_logic; 
			 CM : out std_logic
 			);
	End component mux_1;

	component DFF is
		port(
			D:in std_logic;
			clk: in std_logic;
			reset: in std_logic;
			Q: out  std_logic	
		);
	End component DFF;



signal in_t :std_logic_vector(3 downto 0);

signal clk_clock: std_logic ;
signal temp: std_logic ;
signal reg_out: std_logic_vector(3 downto 0);
signal notRst:std_logic;
Begin

notRst <= not RST;
clk_clock<= (load and CLoCK);
register_out(0) <= reg_out(0);
register_out(1) <= reg_out(1);
register_out(2) <= reg_out(2);
register_out(3) <= reg_out(3);


mux0: mux_1 port map(A=>PARALLEL_IN(0),B=>reg_out(1),
			C=>reg_out(1),D=>'0',
			sel1=>L_R(0),
			sel2=>L_R(1),
			CM=>in_t(0)  );
mux1: mux_1 port map(A=>PARALLEL_IN(1),B=>reg_out(2),
			C=>reg_out(2),D=>reg_out(0),
			sel1=>L_R(0),
			sel2=>L_R(1),
			CM=>in_t(1)  );
mux2: mux_1 port map(A=>PARALLEL_IN(2),B=>reg_out(3),
			C=>reg_out(3),D=>reg_out(1),
			sel1=>L_R(0),
			sel2=>L_R(1),
			CM=>in_t(2)  );
mux3: mux_1 port map(A=>PARALLEL_IN(3),B=>'0',
			C=>reg_out(3),D=>reg_out(2),
			sel1=>L_R(0),
			sel2=>L_R(1),
			CM=>in_t(3)  );



dff0 : DFF port map (in_t(0),clk_clock,notRst,reg_out(0));
dff1 : DFF port map ( in_t(1),clk_clock,notRst,reg_out(1));
dff2 : DFF port map ( in_t(2),clk_clock,notRst,reg_out(2));
dff3 : DFF port map ( in_t(3),clk_clock,notRst,reg_out(3));


End struct;