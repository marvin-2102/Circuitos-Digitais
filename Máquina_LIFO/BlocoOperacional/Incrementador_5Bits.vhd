library ieee;
use ieee.std_logic_1164.all;

entity Incrementador_5Bits is
port
( 
		A				: in std_logic_vector(4 downto 0);
		Op				: in std_logic;
		Saida			: out std_logic_vector(4 downto 0)
);
end Incrementador_5Bits;			
---------------------------------------------------------------------

architecture logica of Incrementador_5Bits is
----------------------------------------------------------------------
component Full_adder
port
(
	      A, B, CI	: in std_logic;
         S, Co		: out std_logic
);

end component;
----------------------------------------------------------------------

signal Carry_out, B		: 	std_logic_vector(4 downto 0);
signal Complemento		: 	std_logic_vector(4 downto 0);
signal S						:	std_logic;

begin
	B <= "00001";
	S <= Op;
	Complemento(0) <= (B(0) xor S);
	Complemento(1) <= (B(1) xor S);
	Complemento(2) <= (B(2) xor S);
	Complemento(3) <= (B(3) xor S);
	Complemento(4) <= (B(4) xor S);

	
--Primeiro carry in igual a 1 para fazer o complemento a dois
    S0: Full_adder port map(A(0), Complemento(0), S, Saida(0), Carry_out(0));
    S1: Full_adder port map(A(1), Complemento(1), Carry_out(0), Saida(1), Carry_out(1));
    S2: Full_adder port map(A(2), Complemento(2), Carry_out(1), Saida(2), Carry_out(2));
    S3: Full_adder port map(A(3), Complemento(3), Carry_out(2), Saida(3), Carry_out(3));
    S4: Full_adder port map(A(4), Complemento(4), Carry_out(3), Saida(4), Carry_out(4));

	
end logica;