library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY PRACA IS
PORT(
CLOCK_24: IN STD_LOGIC;

VGA_HS,VGA_VS:OUT STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
vga_r,vga_g,vga2_r,vga2_g,vga3_r,vga3_g,vga4_R,vga4_g:out STD_LOGIC_VECTOR(2 DOWNTO 0);
vga_b,vga2_b,vga3_b,vga4_b:out std_LOGIC_VECTOR(1 downto 0);

VGA2_HS,VGA2_VS,VGA3_HS,VGA3_VS,VGA4_HS,VGA4_VS:OUT STD_LOGIC

);
END PRACA;


ARCHITECTURE MAIN OF PRACA IS
SIGNAL VGACLK,RESET:STD_LOGIC:='0';
signal POSX:integer range 0 to 1280:=50;
signal POSY:integer range 0 to 960:=50;
signal licznik:integer range 0 to 50000000:=0;

signal address,address1,address2,address3,address4:std_LOGIC_VECTOR(13 downto 0);
signal clock: STD_LOGIC  := '1';
signal q:std_LOGIC_VECTOR(11 downto 0);
signal x1: integer range 0 to 1280:=1270;
sigNAL y1:integer range 0 to 960:=950;
SIGNAL HPOS:INTEGER RANGE 0 TO 800:=0;
SIGNAL VPOS:INTEGER RANGE 0 TO 525:=0;
constant w:integER:=128;
constant h:integER:=128;
signal spriteon,spriteon1,spriteon2,spriteon3,spriteon4:std_LOGIC;
signal 	q1,q2,q3,q4: std_LOGIC_VECTOR(11 dowNTO 0);






comPONENT rom2 IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		clock		: IN STD_LOGIC;
		q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
	);
END comPONENT rom2;

-- comPONENT rom IS
-- PORT (rom_addr16:intEGER range 0 to 65536;
-- data_out: out std_LOGIC_VECTOR(7 dowNTO 0)
-- );
-- END comPONENT rom;

---------------------------------------------------
 COMPONENT monit1 IS
 PORT(
	 spriteon:IN std_LOGIC;
	HPOS,VPOS: IN INTEGER;
	CLK: IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
	q: in std_LOGIC_VECTOR(11 dowNTO 0);
	POSX:IN INTEGER;
	POSY:IN INTEGER;
	HSYNC: OUT STD_LOGIC;
	VSYNC: OUT STD_LOGIC;
	R: OUT STD_LOGIC_VECTOR(2 downto 0);
	g: OUT STD_LOGIC_VECTOR(2 downto 0);
	b: OUT STD_LOGIC_VECTOR(1 downto 0)

--	KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 --  S: IN STD_LOGIC_VECTOR(1 downto 0)
	);
END COMPONENT monit1;
-------------------------------------------
COMPONENT monit2 IS
PORT(
	spriteon: IN std_LOGIC;
	HPOS,VPOS: IN INTEGER;
	CLK : IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
	q: in std_LOGIC_VECTOR(11 dowNTO 0);
	POSX:IN INTEGER;
	POSY:IN INTEGER;
	HSYNC, VSYNC : OUT STD_LOGIC;
	R2,g2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b2:out std_LOGIC_VECTOR(1 downto 0)
	);
END COMPONENT monit2;
----------------------------------
comPONENT monit3 is
PORT(
	spriteon: IN std_LOGIC;
	HPOS,VPOS: IN INTEGER;
	CLK : IN STD_LOGIC;	
	SW:in STD_LOGIC_VECTOR(7 downto 0);
	q: in std_LOGIC_VECTOR(11 dowNTO 0);
	POSX:IN INTEGER;
	POSY:IN INTEGER;
	HSYNC, VSYNC : OUT STD_LOGIC;
	R3,g3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b3:out std_LOGIC_VECTOR(1 downto 0)
);
end comPONENT monit3;
-----------------------------------
component monit4 is
PORT(
	spriteon: IN std_LOGIC;
	HPOS,VPOS: IN INTEGER;
	CLK : IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
	q: in std_LOGIC_VECTOR(11 dowNTO 0);
	POSX:IN INTEGER;
	POSY:IN INTEGER;
	HSYNC, VSYNC : OUT STD_LOGIC;
	R4,g4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b4:out std_LOGIC_VECTOR(1 downto 0)
);
end comPONENT monit4;

    component plll is
        port (            
            clk_in_clk  : in  std_logic := 'X'; -- clk
            rEsEt_reset  : in  std_logic := 'X';  -- reset
				clk_out_clk : out std_logic         -- clk
        );
	 END COMPONENT plll;
 BEGIN
 PROCESS(vgaclk)
 BEGIN 
 --address2<=address;
 --q2<=q;
 if (RISING_EDGE(vgaclk))then
 ---------------PORUSZANIE SIĘ OBRAZU----------------
			if(licznik<5000000)then
				licznik<=licznik+1;
			else
				licznik<=0;
				
			end if;

if(sw(2 downto 0)="000") then
		 
		 if(licznik=0)then

			IF (POSX=50 AND POSY=50)THEN POSX<=POSX+10;
			ELSIF(POSX=1110 AND POSY=50)THEN POSY<=POSY+10;
			ELSIF(POSX=1110 AND POSY=790)THEN POSX<=POSX-10;
			ELSIF(POSX=50 AND POSY=790)THEN POSY<=POSY-10;
			ELSIF(POSY=50)THEN POSX<=POSX+10;
			ELSIF(POSX=1110)THEN POSY<=POSY+10;
			ELSIF(POSY=790)THEN POSX<=POSX-10;
			ELSIF(POSX=50)THEN POSY<=POSY-10;
			else 
			posx<=posx; posy<=posy;
			end if;
			
		 end if;
elsif(sw(2 downto 0)="010") then
	posx<=640-(w/2);
	posy<=480-(w/2);
elsif(sw(2 downto 0)="001") then 
	posx<=50; posy<=50;
elsif(sw(2 downto 0)="011") then 
	posx<=50;posy<=50;
elsif(sw(2 downto 0)="100") then
	posx<=10; posy<=10; x1<=1270; y1<=950;

end if;
 ---------------------
			if(posx<0 or posx>1280)then
			posx<=10;
			end if;
			if(posy<0 or posy>960)then
			posy<=10;
			end if;


--------------------SPRITE DLA MONITOROW---------------
if(sw(2 downto 0)="000" or sw(2 downto 0)="010" ) then
	IF(hpos>posx and hpos<posx+w and vpos>posy and vpos<posy+w) THEN SPRiteon1<='1'; ELSE SPRiteon1<='0'; END IF;
	IF(hpos>(posx-640) and hpos<(posx-640)+w and vpos>posy and vpos<posy+w) THEN SPRiteon2<='1'; ELSE SPRiteon2<='0'; END IF;
	IF(hpos>posx and hpos<posx+w and vpos>posy-480 and vpos<posy-480+w) THEN SPRiteon3<='1'; ELSE SPRiteon3<='0'; END IF;
	IF(hpos>(posx-640) and hpos<(posx-640)+w and vpos>posy-480 and vpos<((posy-480)+w)) THEN SPRiteon4<='1'; ELSE SPRiteon4<='0'; END IF;
elsif(sw(2 downto 0)="001") then
	IF (hpos>posx and hpos<posx+w and vpos>posy and vpos<posy+w) THEN SPRiteon1<='1'; SPRiteon2<='1';SPRiteon3<='1';SPRiteon4<='1';ELSE SPRiteon1<='0'; SPRiteon2<='0';SPRiteon3<='0';SPRiteon4<='0';END IF;
--	IF((posx>640 and posx<1280) or (posy>0 and posy<480)) THEN SPRiteon2<='1'; ELSE SPRiteon2<='0'; END IF;
--	IF((posx>0 and posx<640) or (posy>480 and posy<960)) THEN SPRiteon3<='1'; ELSE SPRiteon3<='0'; END IF;
--	IF((posx>640 and posx<1280) or (posy>480 and posy<960)) THEN SPRiteon4<='1'; ELSE SPRiteon4<='0'; END IF;
else
spriteon1<='1';
spriteon2<='1';
spriteon3<='1';
spriteon4<='1';

end if;



--------------------PRZYPISANIE  ADRESU----------------
if (sw(2 downto 0)="000" or sw(2 downto 0)="010") then
--	if (hpos>=(POSX) and hpos<(w+POSX) and (hpos+(hpos-posx))<640 and (posx+w)<640 and vpos>=(POSY) and vpos<(h+POSY)) theN
--		address<=std_LOGIC_VECTOR(to_signed((((hpos)-POSX))+((((vpos)-POSY))*128),address'length));
--	elsif((posx+w)>640 and posx<640)  then
	
	
					if (hpos>=(POSX) and hpos<(640)  and vpos>=(POSY) and vpos<(480)) theN
						address<=std_LOGIC_VECTOR(to_signed((((hpos)-POSX))+((((vpos)-POSY))*128),address'length));
					elsif(hpos>(posx-640) and hpos<posx-640+w and vpos>=(POSY) and vpos<(480) ) then
						address<=std_LOGIC_VECTOR(to_signed((((hpos+640)-POSX))+((((vpos)-POSY))*128),address'length));
					elsIF(hpos>=(POSX) and hpos<(640) and vpos>=posy-480 and vpos<posy-480+w) then
						address<=std_LOGIC_VECTOR(to_signed((((hpos)-POSX))+((((vpos+480)-POSY))*128),address'length));
					elsif(hpos>(posx-640) and hpos<posx-640+w and vpos>=posy-480 and vpos<posy-480+w) then
						address<=std_LOGIC_VECTOR(to_signed((((hpos+640)-POSX))+((((vpos+480)-POSY))*128),address'length));
					else 
						address<= (others=>'0');
					end if;
elsif sw(2 downto 0)="001" then
								address<=std_LOGIC_VECTOR(to_signed((((hpos)-POSX))+((((vpos)-POSY))*128),address'length));

elsif(sw(2 downto 0)="011") then
	if ((hpos=posx) or (vpos=posy)) then 
		q1<="000011110000"; else q1<=(others=>'0'); end if;
	if ((hpos=posx-640) or (vpos=posy)) then 
		q2<="000011110000"; else q2<=(others=>'0');end if;
	if ((hpos=posx) or (vpos=posy-480)) then 
		q3<="000011110000";else q3<=(others=>'0');end if;
	if ((hpos=posx-640) or (vpos=posy-480)) then 
		q4<="000011110000";else q4<=(others=>'0');end if;
elsif(sw(2 downto 0)="100") then
	if ((hpos=posx) or (vpos=posy) or (hpos=x1) or (vpos=y1)) then 
		q1<="000011110000"; else q1<=(others=>'0'); end if;
	if ((hpos=posx) or (vpos=posy-480) or (hpos=x1) or (vpos=y1-480)) then 
		q2<="000011110000"; else q2<=(others=>'0');end if;
	if ((hpos=posx-640) or (vpos=posy) or (hpos=x1-640) or (vpos=y1)) then 
		q3<="000011110000";else q3<=(others=>'0');end if;
	if ((hpos=posx-640) or (vpos=posy-480) or (hpos=x1-640) or (vpos=y1-480)) then 
		q4<="000011110000";else q4<=(others=>'0');end if;
else	
		q1<="000000000000";
		q2<="000000000000";
		q3<="000000000000";
		q4<="000000000000";



--	else 
--		spriteon<='0';
--	end if;
--else
-- if (hpos>=(50) and hpos<(w+50) and vpos>=(50) and vpos<(h+50))  then
--	address<=std_LOGIC_VECTOR(to_signed(((hpos-50))+(((vpos-50))*128),address'length));
----q<="000000000000";
--else
--	spriteon<='0';
--	end if;
end if;
--------------------PRZYPISANIE Q----------------------
if (sw(2 downto 0)="000" or sw(2 downto 0)="001" or sw(2 downto 0)="010") then
--	if ((hpos+(hpos-posx))>0 and posy<480) then q2<=q; else q2<="000000000000";end if;
--	if ((hpos+(hpos-posx))<640) then q1<=q; else q1<="000000000000"; end if;
--	if ((vpos+(vpos-posy)>0) and posx>0 and posx<640) then q3<=q;  else q3<="000000000000"; end if;
--	if ((hpos+(hpos-posx))>0 and (vpos+(vpos-posy)>0)) then q4<=q; else q4<="000000000000"; end if;
	q1<=q;
	q2<=q;
	q3<=q;
	q4<=q;
elsif(sw(2 downto 0)="011") then	
	
end if;

--------------------LICZNIKK POZIOMY I PIONOWY---------

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
		

		
end if;
 END PROCESS;
 
 C: PLLL PORT MAP (CLOCK_24,RESET,VGACLK);
 c0:rom2 	PORT MAP (address,vgaclk,q);
 C1:monit1 PORT MAP(SPRiteon1,HPOS,VPOS,VGACLK,SW,q1,POSX,POSY,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
 C2:monit2 PORT MAP(SPRiteon2,HPOS,VPOS,VGACLK,SW,q2,POSX,POSY,VGA2_HS,VGA2_VS,VGA2_R,VGA2_G,VGA2_B);
 C3:monit3 PORT MAP(SPRiteon3,HPOS,VPOS,VGACLK,SW,q3,POSX,POSY,VGA3_HS,VGA3_VS,VGA3_R,VGA3_G,VGA3_B);
 C4:monit4 PORT MAP(SPRiteon4,HPOS,VPOS,VGACLK,SW,q4,POSX,POSY,VGA4_HS,VGA4_VS,VGA4_R,VGA4_G,VGA4_B);
 
 END MAIN;
 