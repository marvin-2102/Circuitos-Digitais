library ieee;
use ieee.std_logic_1164.all;

entity Decrementador is 
	port( A: in std_logic_vector(3 downto 0);
	      O: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
end Decrementador;

architecture log of Decrementador is

component Somador1bit is 
	port( A, B: in std_logic;
			Cin: in std_logic;
	      O, Cout: out std_logic);
end component;

component porta_NOT is
	port (	A: in std_logic_vector(3 downto 0);
		O: out std_logic_vector(3 downto 0));
end component;


  signal aux_Cout : std_logic_vector(3 downto 0);
  signal aux1 : std_logic_vector(2 downto 0);
  signal complemento : std_logic_vector(3 downto 0);
  signal B : std_logic_vector(3 downto 0);
  signal notB : std_logic_vector(3 downto 0);
  signal entradaFixa : std_logic_vector(3 downto 0);
 

begin

    entradaFixa <= "0001";
    B <= "0001";
    U1: porta_NOT port map(B, notB);
    U2: Somador1bit port map(notB(0), entradaFixa(0),'0' ,complemento(0), aux_Cout(0));
	 U3: Somador1bit port map(notB(1), entradaFixa(1),aux_Cout(0) ,complemento(1), aux_Cout(1));
	 U4: Somador1bit port map(notB(2), entradaFixa(2),aux_Cout(1) ,complemento(2), aux_Cout(2));
	 U5: Somador1bit port map(notB(3), entradaFixa(3),aux_Cout(2) ,complemento(3), aux_Cout(3));

    D1: Somador1bit port map(A(0), complemento(0),'0' ,O(0), aux1(0));
	 D2: Somador1bit port map(A(1), complemento(1),aux1(0) ,O(1),aux1(1));
	 D3: Somador1bit port map(A(2), complemento(2),aux1(1),O(2),aux1(2));
	 D4: Somador1bit port map(A(3), complemento(3),aux1(2),O(3),Cout);

end log;