library ieee;
use ieee.std_logic_1164.all;

entity MUX21_13Bits is
port(
       A, B		: in std_logic_vector (12 downto 0);
		 S			: in std_logic;
       Saida	: out std_logic_vector (12 downto 0)
);
end MUX21_13Bits;

architecture logica of MUX21_13Bits is
-------------------------------------------
Component MUX21 is
  port(
       A, B, S		: in std_logic;
       O				: out std_logic);
end Component;
-------------------------------------------
Signal O : std_logic_vector(12 downto 0);
begin
	 
	 Mu0: MUX21 port map(A(0), B(0), S, O(0));
	 Mu1: MUX21 port map(A(1), B(1), S, O(1));
	 Mu2: MUX21 port map(A(2), B(2), S, O(2));
	 Mu3: MUX21 port map(A(3), B(3), S, O(3));
	 Mu4: MUX21 port map(A(4), B(4), S, O(4));
	 Mu5: MUX21 port map(A(5), B(5), S, O(5));
	 Mu6: MUX21 port map(A(6), B(6), S, O(6));
	 Mu7: MUX21 port map(A(7), B(7), S, O(7));
	 Mu8: MUX21 port map(A(8), B(8), S, O(8));
	 Mu9: MUX21 port map(A(9), B(9), S, O(9));
	 Mu10: MUX21 port map(A(10), B(10), S, O(10));
	 Mu11: MUX21 port map(A(11), B(11), S, O(11));
	 Mu12: MUX21 port map(A(12), B(12), S, O(12));
	 
	 Saida(0) <= O(0);
	 Saida(1) <= O(1);
	 Saida(2) <= O(2);
	 Saida(3) <= O(3);
	 Saida(4) <= O(4);
	 Saida(5) <= O(5);
	 Saida(6) <= O(6);
	 Saida(7) <= O(7);
	 Saida(8) <= O(8);
	 Saida(9) <= O(9);
	 Saida(10) <= O(10);
	 Saida(11) <= O(11);
	 Saida(12) <= O(12);


end logica;
	 