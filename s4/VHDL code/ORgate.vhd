library IEEE;
use IEEE.std_logic_1164.all;
entity ORgate is
Port(
a, b: in std_logic;
c : out std_logic
);
end entity ORgate;
architecture gatelevel of ORgate is
begin
c <= a or b;
end gatelevel;
