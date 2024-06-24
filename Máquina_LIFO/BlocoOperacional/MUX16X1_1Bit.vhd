library ieee;
use ieee.std_logic_1164.all;

entity MUX16X1_1Bit is
Port(
		S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15		: in std_logic;
		Cont			: in std_logic_vector (3 downto 0);
		Saida			: out std_logic
);
end MUX16X1_1Bit;

architecture logica of MUX16X1_1Bit is
---------------------------------

Begin
	Saida <= ((not Cont(0)) and (not Cont(1)) and (not Cont(2)) and (not Cont(3)) and S0) or
	((Cont(0)) and (not Cont(1)) and (not Cont(2)) and (not Cont(3)) and S1) or
	((not Cont(0)) and (Cont(1)) and (not Cont(2)) and (not Cont(3)) and S2) or
	((Cont(0)) and (Cont(1)) and (not Cont(2)) and (not Cont(3)) and S3) or
	((not Cont(0)) and (not Cont(1)) and (Cont(2)) and (not Cont(3)) and S4) or
	((Cont(0)) and (not Cont(1)) and (Cont(2)) and (not Cont(3)) and S5) or
	((not Cont(0)) and (Cont(1)) and (Cont(2)) and (not Cont(3)) and S6) or
	((Cont(0)) and (Cont(1)) and (Cont(2)) and (not Cont(3)) and S7) or
	((not Cont(0)) and (not Cont(1)) and (not Cont(2)) and (Cont(3)) and S8) or
	((Cont(0)) and (not Cont(1)) and (not Cont(2)) and (Cont(3)) and S9) or
	((not Cont(0)) and (Cont(1)) and (not Cont(2)) and (Cont(3)) and S10) or
	((Cont(0)) and (Cont(1)) and (not Cont(2)) and (Cont(3)) and S11) or
	((not Cont(0)) and (not Cont(1)) and (Cont(2)) and (Cont(3)) and S12) or
	((Cont(0)) and (not Cont(1)) and (Cont(2)) and (Cont(3)) and S13) or
	((not Cont(0)) and (Cont(1)) and (Cont(2)) and (Cont(3)) and S14) or
	((Cont(0)) and (Cont(1)) and (Cont(2)) and (Cont(3)) and S15);


end logica;