library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY monit2 IS 
PORT(
CLK : IN STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
POSX,POSY:IN INTEGER;
HSYNC, VSYNC : OUT STD_LOGIC;
R2,G2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
B2:out std_LOGIC_VECTOR(1 downto 0)
);
END monit2;

ARCHITECTURE MAIN OF monit2 IS 
SIGNAL HPOS:INTEGER RANGE 0 TO 800:=0;
SIGNAL VPOS:INTEGER RANGE 0 TO 525:=0;


BEGIN 
PROCESS(CLK)
BEGIN
IF(RISING_EDGE(CLK)) THEN
	if(sw(0)='0')then
		if(hpos<240)then
			IF (VPOS<480 )THEN		
			R2<=std_LOGIC_VECTOR(to_signed(vpos/60,R2'length));
			end if;
		elsif(hpos>240 and hpos<500)then
			IF (VPOS<480 )THEN	
			G2<=std_LOGIC_VECTOR(to_signed(vpos/60,G2'length));
			end if;
		elsif(hpos>500 and hpos<640)then
			IF (VPOS<480 )THEN
			B2<=std_LOGIC_VECTOR(to_signed(vpos/120,B2'length));
			end if;
		ELSE
			R2<=(OTHERS=>'0');
			G2<=(OTHERS=>'0');
			B2<=(OTHERS=>'0');
		END IF;
	else
		IF(hpos>(posx-640) AND hpos<((posx-640)+100) AND vpos>posy AND vpos<(posy+100))THEN
			R2<=(OTHERS=>'0');
			G2<=(OTHERS=>'1');
			B2<=(OTHERS=>'0');
		ELSE
			R2<=(OTHERS=>'0');
			G2<=(OTHERS=>'0');
			B2<=(OTHERS=>'0');
		END IF;
	end if;
		
	
		IF (HPOS<800)THEN
			HPOS<=HPOS+1;
			ELSE
			HPOS<=0;
				IF (VPOS<525)THEN
					VPOS<=VPOS+1;
					ELSE	
					VPOS<=0;
				END IF;
		END IF;		

	
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