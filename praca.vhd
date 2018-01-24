library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY PRACA IS
PORT(
CLOCK_24: IN STD_LOGIC;
--CLOCK_50:IN STD_LOGIC;
VGA_HS,VGA_VS:OUT STD_LOGIC;
SW:in STD_LOGIC_VECTOR(7 downto 0);
vga_r,vga_g,vga2_r,vga2_g,vga3_r,vga3_g,vga4_R,vga4_g:out STD_LOGIC_VECTOR(2 DOWNTO 0);
vga_b,vga2_b,vga3_b,vga4_b:out std_LOGIC_VECTOR(1 downto 0);
--address2:out std_LOGIC_VECTOR(13 downto 0);
--q2: out std_LOGIC_VECTOR(7 downto 0);
VGA2_HS,VGA2_VS,VGA3_HS,VGA3_VS,VGA4_HS,VGA4_VS:OUT STD_LOGIC
--HPOS1:out std_LOGIC_VECTOR(9 downto 0) ;
--VPOS1:out std_LOGIC_VECTOR(9 downto 0)
);
END PRACA;


ARCHITECTURE MAIN OF PRACA IS
SIGNAL VGACLK,RESET:STD_LOGIC:='0';
signal POSX:integer range 0 to 960:=10;
signal POSY:integer range 0 to 1280:=10;
signal licznik:integer range 0 to 50000000:=0;
signal data_out:std_LOGIC_VECTOR(7 dowNTO 0);
signal address:std_LOGIC_VECTOR(13 downto 0);
signal clock: STD_LOGIC  := '1';
signal q:std_LOGIC_VECTOR(11 downto 0);



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
	CLK: IN STD_LOGIC;
	address: out STD_LOGIC_VECTOR (13 DOWNTO 0);
	q: in std_LOGIC_VECTOR(11 dowNTO 0);
	SW:in STD_LOGIC_VECTOR(7 downto 0);
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
	CLK : IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
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
	CLK : IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
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
	CLK : IN STD_LOGIC;
	SW:in STD_LOGIC_VECTOR(7 downto 0);
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
	if(licznik<25000000)then
		licznik<=licznik+1;
			--address<=std_LOGIC_VECTOR(to_signed((to_integer(signed(address))+1),address'length));
	else
		licznik<=0;
			--address<=std_LOGIC_VECTOR(to_signed((to_integer(signed(address))+1),address'length));
		
	end if;
 end if;
 
 if(licznik=0)then

	posx<=posx+10;
	posy<=posy+10;
	
 end if;
if(posx<0 or posx>960)then
posx<=10;
end if;
if(posy<0 or posy>1280)then
posy<=10;
end if;
 END PROCESS;
 
 C: PLLL PORT MAP (CLOCK_24,RESET,VGACLK);
 c0:rom2 	PORT MAP (address,vgaclk,q);
 C1:monit1 PORT MAP(VGACLK,address,q,sw,POSX,POSY,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
 C2:monit2 PORT MAP(VGACLK,sw,POSX,POSY,VGA2_HS,VGA2_VS,VGA2_R,VGA2_G,VGA2_B);
 C3:monit3 PORT MAP(VGACLK,sw,POSX,POSY,VGA3_HS,VGA3_VS,VGA3_R,VGA3_G,VGA3_B);
 C4:monit4 PORT MAP(VGACLK,sw,POSX,POSY,VGA4_HS,VGA4_VS,VGA4_R,VGA4_G,VGA4_B);
 
 END MAIN;
 