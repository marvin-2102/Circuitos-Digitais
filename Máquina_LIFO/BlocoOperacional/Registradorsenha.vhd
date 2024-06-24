
library ieee;
use ieee.std_logic_1164.all;

entity Registradorsenha is
   port (ck, clr , r: in  std_logic;
				S_mux: in std_logic_vector(3 downto 0);
                       S_Reg : out std_logic_vector(3 downto 0));
end Registradorsenha;

architecture logic of Registradorsenha is

component ffd is
   port (ck, clr, set, d : in  std_logic;
                       q : out std_logic);
end component;

component MUX21 is
port(dec, inc : in std_logic_vector (3 downto 0);
			r: in std_logic;
				S_mx: out std_logic_vector (3 downto 0));

end component;

	signal aux_VS2: std_logic_vector(3 downto 0);
	signal S_Vaux1: std_logic_vector(3 downto 0);
	signal S_V18aux : std_logic_vector (3 downto 0);
   begin
	 

	  --DM: Mux1bit port map (S_v6(0),S_V18aux(0),load,S_Vaux1(0));
	  --DM1: Mux1bit port map (S_v6(1),S_V18aux(1),load,S_Vaux1(1));
	  --DM2: Mux1bit port map (S_v6(2),S_V18aux(2),load,S_Vaux1(2));
	  --DM3: Mux1bit port map (S_v6(3),S_V18aux(3),load,S_Vaux1(3));

	  DM3: Mux21 port map (S_mux,S_V18aux,r,S_Vaux1);
	  
	  V1: ffd port map(ck,clr,'1',S_Vaux1(0),S_V18aux(0));
	  V2: ffd port map(ck,clr,'1',S_Vaux1(1),S_V18aux(1));
     V3: ffd port map(ck,clr,'1',S_Vaux1(2),S_V18aux(2));
	  V4: ffd port map(ck,clr,'1',S_Vaux1(3),S_V18aux(3));	
	
	  S_Reg <= S_V18aux;

end logic;