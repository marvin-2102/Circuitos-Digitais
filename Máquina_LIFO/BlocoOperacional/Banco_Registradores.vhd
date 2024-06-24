library ieee;
use ieee.std_logic_1164.all;

entity Banco_Registradores is
Port(
		Valor_IN						: in std_logic_vector (12 downto 0);
		Load, Clear, Clock		: in std_logic;
		Cont							: in std_logic_vector (4 downto 0);
		Saida							: out std_logic_vector (12 downto 0)
);
end Banco_Registradores;

architecture logica of Banco_Registradores is
---------------------------------------------------------------------------------------------------
Component MUX16X1_13Bits is
Port(
		Ent0, Ent1, Ent2, Ent3, Ent4, Ent5, Ent6, Ent7, Ent8, Ent9, Ent10, Ent11, Ent12, Ent13, Ent14, Ent15		: in std_logic_vector(12 downto 0);
		Key			: in std_logic_vector (3 downto 0);
		Saida			: out std_logic_vector(12 downto 0)
);
end Component;
---------------------------------------------------------------------------------------------------
Component Decod_16Bits is
Port(
		Load					: in std_logic;
		Cont					: in std_logic_vector (3 downto 0);
		S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15			: out std_logic
);
end Component;
---------------------------------------------------------------------------------------------------
Component Registrador_13 is
port( 
      I					: in std_logic_vector(12 downto 0);
      CLK, CLR, EN	: in std_logic;
      O					: out std_logic_vector(12 downto 0));
end Component;
----------------------------------------------------
	Signal Key	: std_logic_vector (3 downto 0);
	Signal EN_0, EN_1, EN_2, EN_3, EN_4, EN_5, EN_6, EN_7, EN_8, EN_9, EN_10, EN_11, EN_12, EN_13, EN_14, EN_15			: std_logic;
	Signal S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15			: std_logic_vector(12 downto 0);
	
	Begin
	Key(0) <= Cont(0);
	Key(1) <= Cont(1);
	Key(2) <= Cont(2);
	Key(3) <= Cont(3);
	
	Decod: Decod_16Bits Port map (Load, Key, EN_0, EN_1, EN_2, EN_3, EN_4, EN_5, EN_6, EN_7, EN_8, EN_9, EN_10, EN_11, EN_12, EN_13, EN_14, EN_15);
	
	Reg0: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_0, S0);
	Reg1: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_1, S1);
	Reg2: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_2, S2);
	Reg3: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_3, S3);
	Reg4: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_4, S4);
	Reg5: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_5, S5);
	Reg6: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_6, S6);
	Reg7: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_7, S7);
	Reg8: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_8, S8);
	Reg9: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_9, S9);
	Reg10: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_10, S10);
	Reg11: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_11, S11);
	Reg12: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_12, S12);
	Reg13: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_13, S13);
	Reg14: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_14, S14);
	Reg15: Registrador_13 Port map (Valor_IN, Clock, Clear, EN_15, S15);
	
	MUX: MUX16X1_13Bits Port map (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, Key, Saida);
	

end logica;
	
	
	
	
	
	
	