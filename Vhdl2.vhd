library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY monit1 IS 
PORT(
CLK : IN STD_LOGIC;
address		: out STD_LOGIC_VECTOR (13 DOWNTO 0);
q: in std_LOGIC_VECTOR(11 dowNTO 0);
SW:in STD_LOGIC_VECTOR(7 downto 0);
POSX,POSY:IN INTEGER;
HSYNC, VSYNC : OUT STD_LOGIC;
R,g : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
b:out std_LOGIC_VECTOR(1 downto 0)


);
END monit1;

ARCHITECTURE MAIN OF monit1 IS 
SIGNAL HPOS:INTEGER RANGE 0 TO 800:=0;
SIGNAL VPOS:INTEGER RANGE 0 TO 525:=0;
signal x,y:integer range 0 to 1000:=0;
constant w:integER:=128;
constant h:integER:=128;
signal spriteon:std_LOGIC;
signal c1,r1,xpix,ypix:std_LOGIC_VECTOR(9 downto 0);
signal z: integer range 0 to 16383:=0;
signal rom_addr1,rom_addr2:std_LOGIC_VECTOR(16 downto 0);

BEGIN 
c1<='0' & SW(3 downto 0) & "00001";
R1<='0' & SW(7 downto 4) & "00001";
spriteon<= '1' when (hpos>=(50+c1) and hpos<(w+50+c1) and vpos>=(50+r1) and vpos<(h+50+r1)) else '0';


PROCESS(CLK)
BEGIN
IF(RISING_EDGE(CLK)) THEN


if spriteon='1'then
ypix<=std_LOGIC_VECTOR(to_signed(vpos,ypix'length));
xpix<=std_LOGIC_VECTOR(to_signed(hpos,xpix'length));

--rom_addr1<=(ypix &"0000000") + ("0" & ypix &"000000") + ("00" & ypix &"00000") + ("000" & ypix &"0000");
--rom_addr2<=rom_addr1 + ("0000000" & xpix);
--address<=rom_addr2(13 downto 0);
else
end if;

if (z<16383) then
z<=z+1;
else
z<=0;
end if;
address<=std_LOGIC_VECTOR(to_signed(((hpos-50)-to_integer(signed(c1)))+(((vpos-50)-to_integer(signed(r1)))*128),address'length));
y<=z/128;
x<=z-(y*128);





	if(sw(0)='0')then
		if(spriteon='1')then
			r<=q(11 downto 9);
		--elsif spriteon1='1' then
			g<=q(7 downto 5);
		--elsif spriteon2='1' then
			b<=q(3 downto 2);
		ELSE
			R<=(OTHERS=>'0');
			G<=(OTHERS=>'0');
			B<=(OTHERS=>'0');
		end if;
	else
		IF(hpos>posx AND hpos<(posx+100) AND vpos>posy AND vpos<(posy+100))THEN
--			R<=(OTHERS=>'0');
--			G<=(OTHERS=>'1');
--			B<=(OTHERS=>'0');
			r<=q(7 downto 5);
			g<=q(4 downto 2);
			b<=q(1 downto 0);
--			r<=q(11 downto 9);
--			g<=q(7 downto 5);
--			b<=q(3 downto 2);
		ELSE
			R<=(OTHERS=>'0');
			G<=(OTHERS=>'0');
			B<=(OTHERS=>'0');
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
	R<=(OTHERS=>'0');
	G<=(OTHERS=>'0');
	B<=(OTHERS=>'0');
	END IF;
END IF;

END PROCESS;
END MAIN;