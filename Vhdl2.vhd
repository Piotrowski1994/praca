library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY monit1 IS 
PORT(
spriteon: IN std_LOGIC;

HPOS,VPOS: IN INTEGER;
CLK : IN STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
q: in std_LOGIC_VECTOR(11 dowNTO 0);
POSX,POSY:IN INTEGER;
HSYNC, VSYNC : OUT STD_LOGIC;
R,g : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
b:out std_LOGIC_VECTOR(1 downto 0)
);
END monit1;

ARCHITECTURE MAIN OF monit1 IS 
signal x,y:integer range 0 to 1000:=0;
constant w:integER:=128;
constant h:integER:=128;
signal xpix,ypix:std_LOGIC_VECTOR(9 downto 0);
signal z: integer range 0 to 16383:=0;
signal rom_addr1,rom_addr2:std_LOGIC_VECTOR(16 downto 0);

BEGIN 


PROCESS(CLK)
BEGIN

IF(RISING_EDGE(CLK)) THEN




		if(spriteon='1')then
			r<=q(11 downto 9);
			g<=q(7 downto 5);
			b<=q(3 downto 2);
		ELSE
			R<=(OTHERS=>'0');
			G<=(OTHERS=>'0');
			B<=(OTHERS=>'0');
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
	R<=(OTHERS=>'0');
	G<=(OTHERS=>'0');
	B<=(OTHERS=>'0');
	END IF;
END IF;

END PROCESS;
END MAIN;