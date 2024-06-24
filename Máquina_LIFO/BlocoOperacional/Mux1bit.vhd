library ieee;
use ieee.std_logic_1164.all;

entity MUX1bit is

port(dec, inc ,r: in std_logic;S_mx: out std_logic);

end MUX1bit;

architecture logic of MUX1bit is

begin

S_mx <= (dec and r) or  (inc and (not r));

end logic;