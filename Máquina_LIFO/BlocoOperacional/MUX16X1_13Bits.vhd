library ieee;
use ieee.std_logic_1164.all;

entity MUX16X1_13Bits is
Port(
		Ent0, Ent1, Ent2, Ent3, Ent4, Ent5, Ent6, Ent7, Ent8, Ent9, Ent10, Ent11, Ent12, Ent13, Ent14, Ent15		: in std_logic_vector(12 downto 0);
		Key			: in std_logic_vector (3 downto 0);
		Saida			: out std_logic_vector(12 downto 0)
);
end MUX16X1_13Bits;

architecture logica of MUX16X1_13Bits is
---------------------------------
Component MUX16X1_1Bit is
Port(
		S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15		: in std_logic;
		Cont			: in std_logic_vector (3 downto 0);
		Saida			: out std_logic
);
end Component;
---------------------------------

	signal Aux :	std_logic_vector(12 downto 0);
	
	begin
	 
MUX0: MUX16X1_1Bit port map(Ent0(0), Ent1(0), Ent2(0), Ent3(0), Ent4(0), Ent5(0), Ent6(0), Ent7(0), Ent8(0), Ent9(0), Ent10(0), Ent11(0), Ent12(0), Ent13(0), Ent14(0), Ent15(0), Key, Aux(0));
MUX1: MUX16X1_1Bit port map(Ent0(1), Ent1(1), Ent2(1), Ent3(1), Ent4(1), Ent5(1), Ent6(1), Ent7(1), Ent8(1), Ent9(1), Ent10(1), Ent11(1), Ent12(1), Ent13(1), Ent14(1), Ent15(1), Key, Aux(1));
MUX2: MUX16X1_1Bit port map(Ent0(2), Ent1(2), Ent2(2), Ent3(2), Ent4(2), Ent5(2), Ent6(2), Ent7(2), Ent8(2), Ent9(2), Ent10(2), Ent11(2), Ent12(2), Ent13(2), Ent14(2), Ent15(2), Key, Aux(2));
MUX3: MUX16X1_1Bit port map(Ent0(3), Ent1(3), Ent2(3), Ent3(3), Ent4(3), Ent5(3), Ent6(3), Ent7(3), Ent8(3), Ent9(3), Ent10(3), Ent11(3), Ent12(3), Ent13(3), Ent14(3), Ent15(3), Key, Aux(3));
MUX4: MUX16X1_1Bit port map(Ent0(4), Ent1(4), Ent2(4), Ent3(4), Ent4(4), Ent5(4), Ent6(4), Ent7(4), Ent8(4), Ent9(4), Ent10(4), Ent11(4), Ent12(4), Ent13(4), Ent14(4), Ent15(4), Key, Aux(4));
MUX5: MUX16X1_1Bit port map(Ent0(5), Ent1(5), Ent2(5), Ent3(5), Ent4(5), Ent5(5), Ent6(5), Ent7(5), Ent8(5), Ent9(5), Ent10(5), Ent11(5), Ent12(5), Ent13(5), Ent14(5), Ent15(5), Key, Aux(5));
MUX6: MUX16X1_1Bit port map(Ent0(6), Ent1(6), Ent2(6), Ent3(6), Ent4(6), Ent5(6), Ent6(6), Ent7(6), Ent8(6), Ent9(6), Ent10(6), Ent11(6), Ent12(6), Ent13(6), Ent14(6), Ent15(6), Key, Aux(6));
MUX7: MUX16X1_1Bit port map(Ent0(7), Ent1(7), Ent2(7), Ent3(7), Ent4(7), Ent5(7), Ent6(7), Ent7(7), Ent8(7), Ent9(7), Ent10(7), Ent11(7), Ent12(7), Ent13(7), Ent14(7), Ent15(7), Key, Aux(7));
MUX8: MUX16X1_1Bit port map(Ent0(8), Ent1(8), Ent2(8), Ent3(8), Ent4(8), Ent5(8), Ent6(8), Ent7(8), Ent8(8), Ent9(8), Ent10(8), Ent11(8), Ent12(8), Ent13(8), Ent14(8), Ent15(8), Key, Aux(8));
MUX9: MUX16X1_1Bit port map(Ent0(9), Ent1(9), Ent2(9), Ent3(9), Ent4(9), Ent5(9), Ent6(9), Ent7(9), Ent8(9), Ent9(9), Ent10(9), Ent11(9), Ent12(9), Ent13(9), Ent14(9), Ent15(9), Key, Aux(9));
MUX10: MUX16X1_1Bit port map(Ent0(10), Ent1(10), Ent2(10), Ent3(10), Ent4(10), Ent5(10), Ent6(10), Ent7(10), Ent8(10), Ent9(10), Ent10(10), Ent11(10), Ent12(10), Ent13(10), Ent14(10), Ent15(10), Key, Aux(10));
MUX11: MUX16X1_1Bit port map(Ent0(11), Ent1(11), Ent2(11), Ent3(11), Ent4(11), Ent5(11), Ent6(11), Ent7(11), Ent8(11), Ent9(11), Ent10(11), Ent11(11), Ent12(11), Ent13(11), Ent14(11), Ent15(11), Key, Aux(11));
MUX12: MUX16X1_1Bit port map(Ent0(12), Ent1(12), Ent2(12), Ent3(12), Ent4(12), Ent5(12), Ent6(12), Ent7(12), Ent8(12), Ent9(12), Ent10(12), Ent11(12), Ent12(12), Ent13(12), Ent14(12), Ent15(12), Key, Aux(12));
	 
	 
	 Saida(0) <= Aux(0);
	 Saida(1) <= Aux(1);
	 Saida(2) <= Aux(2);
	 Saida(3) <= Aux(3);
	 Saida(4) <= Aux(4);
	 Saida(5) <= Aux(5);
	 Saida(6) <= Aux(6);
	 Saida(7) <= Aux(7);
	 Saida(8) <= Aux(8);
	 Saida(9) <= Aux(9);
	 Saida(10) <= Aux(10);
	 Saida(11) <= Aux(11);
	 Saida(12) <= Aux(12);

end logica;