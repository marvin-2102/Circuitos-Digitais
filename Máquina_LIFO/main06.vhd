library ieee;
use ieee.std_logic_1164.all;

ENTITY LIFO IS
	PORT( CLOCK, CLEAR,LOAD,WR, RD: IN STD_LOGIC;
			VALOR: IN STD_LOGIC_VECTOR(12 DOWNTO 0);
			SAIDA: OUT STD_lOGIC_VECTOR(12 DOWNTO 0);
			EN_WS, EN_RS: OUT STD_LOGIC
	  );
	END LIFO;

ARCHITECTURE logica OF LIFO IS

COMPONENT Contador IS

   port (ck, clr , en_w,en_r: IN  std_logic;
         S_Cont : OUT std_logic_vector(3 DOWNTO 0)
			);

END COMPONENT;
	
COMPONENT Banco_Registradores IS

	PORT(
		Valor_IN						: IN std_logic_vector (12 DOWNTO 0);
		Load, Clear, Clock		: IN std_logic;
		Cont							: IN std_logic_vector (3 DOWNTO 0);
		Saida							: OUT std_logic_vector (12 DOWNTO 0)
);

END COMPONENT;


COMPONENT Comp13 is
  port (
    a, b : in  std_logic_vector(12 downto 0);       
    AmaiorB, AmenorB, AigualB : out std_logic
  );     
END COMPONENT;


COMPONENT SAIDABC IS

	PORT(CK, RST, WR, RD, EM, FU: IN STD_LOGIC;
		  EN_R, EN_W: OUT STD_LOGIC;
		  Q: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	    );
END COMPONENT;

SIGNAL SCONT: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL T, K: STD_LOGIC_VECTOR( 12 DOWNTO 0);
SIGNAL AMB, AIB, AMAIB, AMB1, AIB2, AMAIB3: STD_LOGIC;
SIGNAL FU, EM: STD_LOGIC;
SIGNAL SAIDB: STD_LOGIC_VECTOR( 12 DOWNTO 0);
SIGNAL EN_W, EN_R: STD_LOGIC;
SIGNAL S: STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
T <= "1111111111111";
K <= "0000000000000";

M0: Contador PORT MAP(CLOCK, CLEAR, EN_W, EN_R, SCONT);
M1: Banco_Registradores PORT MAP(VALOR, LOAD, CLEAR, CLOCK, SCONT, SAIDA);
M2: Comp13 PORT MAP(SAIDB, T,AMB, AIB, AMAIB);
M4:  Comp13 PORT MAP(SAIDB, K, AMB1, AIB2, AMAIB3);
FU <= AIB;
EM <= AIB2;

M3: SAIDABC PORT MAP(CLOCK, CLEAR, WR, RD, EM, FU, EN_W, EN_R, S);  

EN_WS <= EN_W;
EN_RS <= EN_R;


END logica;
