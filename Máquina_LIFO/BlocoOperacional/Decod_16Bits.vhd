library ieee;
use ieee.std_logic_1164.all;

entity Decod_16Bits is
Port(
		Load			: in std_logic;
		Cont					: in std_logic_vector (3 downto 0);
		S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15			: out std_logic
);
end Decod_16Bits;

architecture logica of Decod_16Bits is
---------------------------------

Begin
	
	
	S0 <=  (Load and (not Cont(0)) and (not Cont(1)) and (not Cont(2)) and (not Cont(3)));
	S1 <=  (Load and (Cont(0)) and (not Cont(1)) and (not Cont(2)) and (not Cont(3)));
	S2 <=  (Load and (not Cont(0)) and (Cont(1)) and (not Cont(2)) and (not Cont(3)));
	S3 <=  (Load and (Cont(0)) and (Cont(1)) and (not Cont(2)) and (not Cont(3)));
	S4 <=  (Load and (not Cont(0)) and (not Cont(1)) and (Cont(2)) and (not Cont(3)));
	S5 <=  (Load and (Cont(0)) and (not Cont(1)) and (Cont(2)) and (not Cont(3)));
	S6 <=  (Load and (not Cont(0)) and (Cont(1)) and (Cont(2)) and (not Cont(3)));
	S7 <=	 (Load and (Cont(0)) and (Cont(1)) and (Cont(2)) and (not Cont(3)));
	S8 <=  (Load and (not Cont(0)) and (not Cont(1)) and (not Cont(2)) and (Cont(3)));
	S9 <=  (Load and (Cont(0)) and (not Cont(1)) and (not Cont(2)) and (Cont(3)));
	S10 <= (Load and (not Cont(0)) and (Cont(1)) and (not Cont(2)) and (Cont(3)));
	S11 <= (Load and (Cont(0)) and (Cont(1)) and (not Cont(2)) and (Cont(3)));
	S12 <= (Load and (not Cont(0)) and (not Cont(1)) and (Cont(2)) and (Cont(3)));
	S13 <= (Load and (Cont(0)) and (not Cont(1)) and (Cont(2)) and (Cont(3)));
	S14 <= (Load and (not Cont(0)) and (Cont(1)) and (Cont(2)) and (Cont(3)));
	S15 <= (Load and (Cont(0)) and (Cont(1)) and (Cont(2)) and (Cont(3)));
	
end logica;