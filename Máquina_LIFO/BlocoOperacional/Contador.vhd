library ieee;
use ieee.std_logic_1164.all;

entity Contador is
   port (ck, clr , en_w,en_r: in  std_logic;
                       S_Cont : out std_logic_vector(3 downto 0));
end Contador;

architecture logic of Contador is


component MUX21 is
port(dec, inc : in std_logic_vector (3 downto 0);
		r: in std_logic;
			S_mx: out std_logic_vector (3 downto 0));

end component;

component incrementador is 
	port( A: in std_logic_vector(3 downto 0);
	      O: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
end component;

component Decrementador is 
	port( A: in std_logic_vector(3 downto 0);
	      O: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
end component;

component Registradorsenha is
   port (ck, clr , r: in  std_logic;
				S_mux: in std_logic_vector(3 downto 0);
                       S_Reg : out std_logic_vector(3 downto 0));
end component;

signal Entradafixa: std_logic_vector(3 downto 0);
signal S_ic,S_dc,S_M, S_R: std_logic_vector(3 downto 0);
signal AUX_1,AUX_2,load : std_logic;

 begin
	load <=(en_w or en_r );
 
  Mux: MUX21 port map(S_dc,S_ic,en_r,S_M);
  Reg: Registradorsenha port map(ck,clr,load,S_M,S_R);
  Dec: Decrementador port map(S_R,S_dc,Aux_1);
  Inc: Incrementador port map(S_R,S_ic,Aux_2);
  
  S_Cont <= S_R;
end logic;