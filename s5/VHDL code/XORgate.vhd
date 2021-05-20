library IEEE;
use IEEE.std_logic_1164.all;
entity XORgate is
port(
a, b: in std_logic;
c : out std_logic
);
end entity XORgate;
architecture gatelevel of XORgate is
begin
c <= a xor b;
end gatelevel;
