library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY monit4 IS 
PORT(
spriteon: IN std_LOGIC;
HPOS,VPOS: IN INTEGER;
CLK : IN STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
q: in std_LOGIC_VECTOR(11 dowNTO 0);
POSX,POSY:IN INTEGER;
HSYNC, VSYNC : OUT STD_LOGIC;
R4,g4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
b4:out std_LOGIC_VECTOR(1 downto 0)
);
END monit4;

ARCHITECTURE MAIN OF monit4 IS 
--SIGNAL HPOS:INTEGER RANGE 0 TO 800:=0;
--SIGNAL VPOS:INTEGER RANGE 0 TO 525:=0;
constant w:integER:=128;
constant h:integER:=128;
--signal spriteon:std_LOGIC;


BEGIN 
PROCESS(CLK)
BEGIN
-------------------------------------------------------


----------------------------------------------------------------
IF(RISING_EDGE(CLK)) THEN

	if(spriteon='1')then
			r4<=q(11 downto 9);
			g4<=q(7 downto 5);
			b4<=q(3 downto 2);
		ELSE
			R4<=(OTHERS=>'0');
			G4<=(OTHERS=>'0');
			B4<=(OTHERS=>'0');
		end if;
	

	
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
	R4<=(OTHERS=>'0');
	G4<=(OTHERS=>'0');
	B4<=(OTHERS=>'0');
	END IF;
END IF;
END PROCESS;
END MAIN;