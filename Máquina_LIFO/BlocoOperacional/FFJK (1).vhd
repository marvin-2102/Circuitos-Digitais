library ieee ;
use ieee . std_logic_1164 .all;

entity FFJK is
port(
	ck, Clear, Preset, Enable, J, K 	: 	in std_logic ;
	q 								: 	out std_logic := '0'
);
end FFJK;

architecture logica of FFJK is

signal qS : std_logic ;

begin
process (ck , Clear, Preset, Enable)
begin
		if (Preset = '1') then qS <= '1';
		elsif (Clear = '1') then qS <= '0';
		elsif (ck ' event and ck = '1' and Enable = '1') then
			
			if j = '1' and k = '1' then qS <= not qS;
			elsif j = '1' and k = '0' then qS <= '1';
			elsif j = '0' and k = '1' then qS <= '0';
			end if;
		end if;
end process;
	q <= qS;
end logica;