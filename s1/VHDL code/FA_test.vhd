LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Testbench_full_adder IS
END Testbench_full_adder;

ARCHITECTURE behavior OF Testbench_full_adder IS 
COMPONENT full_adder
Port(
i0, i1, cin: in std_logic;
s, cout : out std_logic
);
END COMPONENT;
--Inputs
signal i0 : std_logic := '0';
signal i1 : std_logic := '0';
signal cin : std_logic := '0';
--Outputs
signal s : std_logic;
signal cout : std_logic;
BEGIN
-- Instantiate the Unit Under Test (UUT)
 uut: full_adder PORT MAP (
 i0 => i0,
 i1 => i1,
 cin => cin,
 s => s,
 cout => cout
 );
-- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns; 
 -- insert stimulus here
 i0 <= '1';
 i1 <= '0';
 cin <= '0';
 wait for 10 ns;
 i0 <= '0';
 i1 <= '1';
 cin <= '0';
 wait for 10 ns;
 i0 <= '1';
 i1 <= '1';
 cin <= '0';
 wait for 10 ns;
 i0 <= '0';
 i1 <= '0';
 cin <= '1';
 wait for 10 ns;
 i0 <= '1';
 i1 <= '0';
 cin <= '1';
 wait for 10 ns;
 i0 <= '0';
 i1 <= '1';
 cin <= '1';
 wait for 10 ns;
 i0 <= '1';
 i1 <= '1';
 cin <= '1';
 wait for 10 ns;
 end process;
END;