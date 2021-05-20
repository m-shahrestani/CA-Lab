library ieee;
use ieee.std_logic_1164.all;
 
entity CLA4bit is
  port (
    a,b  : in STD_LOGIC_VECTOR(3 downto 0);
    cin : in std_logic;
    s  : out STD_LOGIC_VECTOR(3 downto 0);
    cout : out std_logic
    );
end CLA4bit;

architecture structure of CLA4bit is
 
	component FA is
   	  port (
   	  i0  : in  std_logic;
    	  i1  : in  std_logic;
    	  cin : in  std_logic;
    	  s   : out std_logic;
      	  cout : out std_logic);
	end component FA;

signal g : std_logic_vector(3 downto 0);
signal p : std_logic_vector(3 downto 0);
signal c : std_logic_vector(3 downto 0);
signal cou : std_logic_vector(3 downto 0);

begin
  c(0) <= cin;
  FA1 : FA
    port map (
      i0  => a(0),
      i1  => b(0),
      cin => c(0),
      s   => s(0),
      cout => cou(0)
      );

  g(0) <= a(0) and b(0);
  p(0) <= a(0) xor b(0);
  c(1) <= g(0) or (p(0) and c(0));

  FA2 : FA
    port map (
      i0  => a(1),
      i1  => b(1),
      cin => c(1),
      s   => s(1),
      cout => cou(1)
      );

  g(1) <= a(1) and b(1);
  p(1) <= a(1) xor b(1);
  c(2) <= g(1) or (p(1) and c(1));
 
  FA3 : FA
    port map (
      i0  => a(2),
      i1  => b(2),
      cin => c(2),
      s   => s(2),
      cout => cou(2)
      );

  g(2) <= a(2) and b(2);
  p(2) <= a(2) xor b(2);
  c(3) <= g(2) or (p(2) and c(2));
   
  FA4 : FA
    port map (
      i0  => a(3),
      i1  => b(3),
      cin => c(3),
      s   => s(3),
      cout => cou(3)
      );

  g(3) <= a(3) and b(3);
  p(3) <= a(3) xor b(3);
  cout <= g(3) or (p(3) and c(3));

end structure;