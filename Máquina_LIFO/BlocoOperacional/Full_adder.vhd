library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		A, B, Ci: in std_logic;
		S, Co: out std_logic
	);
end entity;

architecture log of full_adder is

begin
	S <= (A XOR B XOR Ci);
	Co <= (A AND B) OR (A AND Ci) OR (B AND Ci);
end architecture;
