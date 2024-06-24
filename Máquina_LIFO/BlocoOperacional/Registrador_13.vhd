library ieee;
use ieee.std_logic_1164.all;

Entity Registrador_13 is
port( 
      I				: in std_logic_vector(12 downto 0);
      CLK, CLR, EN	: in std_logic;
      O				: out std_logic_vector(12 downto 0));
end Registrador_13;

ARCHITECTURE logica of Registrador_13 is
----------------------------------------------------
Component FFD is
port(
		ck, Clear, Preset, Enable, D	: in std_logic ;
		Q 										: out std_logic := '0'
);
end Component;
----------------------------------------------------
Component MUX21 is
 port(
       A, B, S: in std_logic;
       O: out std_logic);
 end Component;
----------------------------------------------------
Signal CLEAR:std_logic;
Signal Q, D: std_logic_vector(12 downto 0);

Begin

CLEAR <= CLR;

MUX1:  MUX21 Port Map(Q(0), I(0), EN, D(0));
MUX2:  MUX21 Port Map(Q(1), I(1), EN, D(1));
MUX3:  MUX21 Port Map(Q(2), I(2), EN, D(2));
MUX4:  MUX21 Port Map(Q(3), I(3), EN, D(3));
MUX5:  MUX21 Port Map(Q(4), I(4), EN, D(4));
MUX6:  MUX21 Port Map(Q(5), I(5), EN, D(5));
MUX7:  MUX21 Port Map(Q(6), I(6), EN, D(6));
MUX8:  MUX21 Port Map(Q(7), I(7), EN, D(7));
MUX9:  MUX21 Port Map(Q(8), I(8), EN, D(8));
MUX10: MUX21 Port Map(Q(9), I(9), EN, D(9));
MUX11:  MUX21 Port Map(Q(10), I(10), EN, D(10));
MUX12:  MUX21 Port Map(Q(11), I(11), EN, D(11));
MUX13:  MUX21 Port Map(Q(12), I(12), EN, D(12));

FFD1: FFD Port Map (CLK, CLEAR, '0', EN, D(0), Q(0));
FFD2: FFD Port Map (CLK, CLEAR, '0', EN, D(1), Q(1));
FFD3: FFD Port Map (CLK, CLEAR, '0', EN, D(2), Q(2));
FFD4: FFD Port Map (CLK, CLEAR, '0', EN, D(3), Q(3));
FFD5: FFD Port Map (CLK, CLEAR, '0', EN, D(4), Q(4));
FFD6: FFD Port Map (CLK, CLEAR, '0', EN, D(5), Q(5));
FFD7: FFD Port Map (CLK, CLEAR, '0', EN, D(6), Q(6));
FFD8: FFD Port Map (CLK, CLEAR, '0', EN, D(7), Q(7));
FFD9: FFD Port Map (CLK, CLEAR, '0', EN, D(8), Q(8));
FFD10: FFD Port Map (CLK, CLEAR, '0', EN, D(9), Q(9));
FFD11: FFD Port Map (CLK, CLEAR, '0', EN, D(10), Q(10));
FFD12: FFD Port Map (CLK, CLEAR, '0', EN, D(11), Q(11));
FFD13: FFD Port Map (CLK, CLEAR, '0', EN, D(12), Q(12));

O <= Q;

end logica;