library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY monit2 IS 
PORT(
SPRiteon:IN STD_LOGIC;
HPOS,VPOS: IN INTEGER;
CLK : IN STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
q: in std_LOGIC_VECTOR(11 dowNTO 0);
POSX,POSY:IN INTEGER;
HSYNC, VSYNC : OUT STD_LOGIC;
R2,G2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
B2:out std_LOGIC_VECTOR(1 downto 0)

);
END monit2;

ARCHITECTURE MAIN OF monit2 IS 
--SIGNAL HPOS:INTEGER RANGE 0 TO 800:=0;
--SIGNAL VPOS:INTEGER RANGE 0 TO 525:=0;
constant w:integER:=128;
constant h:integER:=128;
--signal spriteon:std_LOGIC;



BEGIN 
PROCESS(CLK)
BEGIN


----------------------------------------------------------------

IF(RISING_EDGE(CLK)) THEN
		if(spriteon='1')then
			r2<=q(11 downto 9);
			g2<=q(7 downto 5);
			b2<=q(3 downto 2);
		ELSE
			R2<=(OTHERS=>'0');
			G2<=(OTHERS=>'0');
			B2<=(OTHERS=>'0');
		end if;
		
	
--		IF (HPOS<800)THEN
--			HPOS<=HPOS+1;
--			ELSE
--			HPOS<=0;
--				IF (VPOS<525)THEN
--					VPOS<=VPOS+1;
--					ELSE	
--					VPOS<=0;
--				END IF;
--		END IF;		

	
	IF (HPOS>659 and HPOS<751)THEN
	HSYNC<='0';
	else 
	HSYNC<='1';
	end if;
	IF (VPOS>490 AND VPOS<493)THEN
		VSYNC<='0';
		ELSE
		VSYNC<='1';
	END IF;
	IF ((HPOS>640 AND HPOS<800)OR(VPOS>480 AND VPOS<525))THEN
	R2<=(OTHERS=>'0');
	G2<=(OTHERS=>'0');
	B2<=(OTHERS=>'0');
	END IF;
END IF;
END PROCESS;
END MAIN;