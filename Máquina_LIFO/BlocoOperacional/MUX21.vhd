library ieee;
use ieee.std_logic_1164.all;

entity MUX21 is
port(dec, inc : in std_logic_vector (3 downto 0);
			r: in std_logic;
				S_mx: out std_logic_vector (3 downto 0));

end MUX21;

architecture logic of MUX21 is


component MUX1bit 

port(dec, inc ,r: in std_logic;
		S_mx: out std_logic);


end component ; 
begin

--S_mxn <= ((A_mx(0) and updw) and (A_mx(1) and updw) and (A_mx(2) and updw) and (A_mx(3) and updw)) or ((B_mn(0) and (not updw)) and (B_mn(1) and (not updw)) and (B_mn(2) and (not updw)) and (B_mn(3) and (not updw)));
--S_mxn <= (A_mx and updw) or  (B_mn and (not updw));
MUX1:	MUX1bit port map (dec(0),inc(0),r,S_mx(0));
MUX2: MUX1bit port map (dec(1),inc(1),r,S_mx(1));
MUX3:	MUX1bit port map (dec(2),inc(2),r,S_mx(2));
MUX4: MUX1bit port map (dec(3),inc(3),r,S_mx(3));

end logic;