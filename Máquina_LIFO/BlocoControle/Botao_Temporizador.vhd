library ieee;
use ieee.std_logic_1164.all;

entity Botao_Temporizador is
Port(
		Clear, Enable, Clock		: in std_logic;
		Saida							: out std_logic
);
end Botao_Temporizador;

architecture logica of Botao_Temporizador is
---------------------------------
Component Contador_10Bits is
port(
		Press, Clear, Enable : in std_logic ;
		s							: out std_logic_vector (9 downto 0)
);
end Component ;
----------------------------------
signal Cont 			:	std_logic_vector(9 downto 0);
signal SE, SC, SS 	:	std_logic;

begin
	SE <= Enable or SS;
	SC <= Clear or Cont(7);
	
	Contador : Contador_10Bits Port Map (Clock, SC, SE, Cont);
	
	SS <= (Cont(0) or Cont(1) or Cont(2) or Cont(3) or Cont(4) or Cont(5) or Cont(6));
	
	Saida <= SS;


end logica;
	

