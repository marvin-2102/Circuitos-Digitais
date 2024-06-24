library ieee;
use ieee.std_logic_1164.all;

entity incrementador is 
	port( A: in std_logic_vector(3 downto 0);
	      O: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
end incrementador;

architecture log of incrementador is

component somador1bit is
  port( A, B,Cin: in std_logic;
	O: out std_logic;
	Cout: out std_logic);
end component;


  signal entradaFixa : std_logic_vector(3 downto 0);
  signal aux_Couti: std_logic_vector(2 downto 0);

begin

    entradaFixa <= "0001";
    I1: somador1bit port map(A(0), entradaFixa(0),'0',O(0), aux_Couti(0));
	 I2: somador1bit port map(A(1), entradaFixa(1), aux_Couti(0),O(1), aux_Couti(1));
	 I3: somador1bit port map(A(2), entradaFixa(2), aux_Couti(1),O(2),aux_Couti(2));
	 I4: somador1bit port map(A(3), entradaFixa(3), aux_Couti(2),O(3), Cout);

end log;