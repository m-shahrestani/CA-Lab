library IEEE;
use IEEE.std_logic_1164.all;
entity ANDgate is
port(
a, b: in std_logic;
c : out std_logic
);
end entity ANDgate;
architecture gatelevel of ANDgate is
begin
c <= a and b;
end gatelevel;
