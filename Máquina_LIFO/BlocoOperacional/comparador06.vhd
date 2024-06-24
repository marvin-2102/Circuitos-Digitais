library ieee;
use ieee.std_logic_1164.all;

entity Comp13 is
  port (
    a, b : in  std_logic_vector(12 downto 0);       
    AmaiorB, AmenorB, AigualB : out std_logic
  );     
end Comp13;

architecture comparador of Comp13 is
  signal s : std_logic_vector(12 downto 0);         
begin 
  s(0) <= a(0) xnor b(0);
  s(1) <= a(1) xnor b(1);
  s(2) <= a(2) xnor b(2);
  s(3) <= a(3) xnor b(3);
  s(4) <= a(4) xnor b(4);
  s(5) <= a(5) xnor b(5);
  s(6) <= a(6) xnor b(6);
  s(7) <= a(7) xnor b(7);
  s(8) <= a(8) xnor b(8);
  s(9) <= a(9) xnor b(9);
  s(10) <= a(10) xnor b(10);
  s(11) <= a(11) xnor b(11);
  s(12) <= a(12) xnor b(12);

  AigualB <= s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and s(2) and s(1) and s(0);
	
  AmaiorB <= (a(12) and (not b(12)))
          or (s(12) and a(11) and (not b(11)))
          or (s(12) and s(11) and a(10) and (not b(10)))
          or (s(12) and s(11) and s(10) and a(9) and (not b(9)))
          or (s(12) and s(11) and s(10) and s(9) and a(8) and (not b(8)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and a(7) and (not b(7)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and a(6) and (not b(6)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and a(5) and (not b(5)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and a(4) and (not b(4)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and a(3) and (not b(3)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and a(2) and (not b(2)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and s(2) and a(1) and (not b(1)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and s(2) and s(1) and a(0) and (not b(0)));
          
  AmenorB <= (b(12) and (not a(12)))
          or (s(12) and b(11) and (not a(11)))
          or (s(12) and s(11) and b(10) and (not a(10)))
          or (s(12) and s(11) and s(10) and b(9) and (not a(9)))
          or (s(12) and s(11) and s(10) and s(9) and b(8) and (not a(8)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and b(7) and (not a(7)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and b(6) and (not a(6)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and b(5) and (not a(5)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and b(4) and (not a(4)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and b(3) and (not a(3)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and b(2) and (not a(2)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and s(2) and b(1) and (not a(1)))
          or (s(12) and s(11) and s(10) and s(9) and s(8) and s(7) and s(6) and s(5) and s(4) and s(3) and s(2) and s(1) and b(0) and (not a(0)));
end comparador;

