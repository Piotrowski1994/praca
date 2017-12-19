library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY PRACA IS
PORT(
CLOCK_24: IN STD_LOGIC_VECTOR(1 downto 0);
VGA_HS,VGA_VS:OUT STD_LOGIC;
--SW: STD_LOGIC_VECTOR(1 downto 0);
--KEY: STD_LOGIC_VECTOR(3 DOWNTO 0);
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END PRACA;


ARCHITECTURE MAIN OF PRACA IS
SIGNAL VGACLK,RESET:STD_LOGIC:='0';

---------------------------------------------------
 COMPONENT SYNC IS
 PORT(
	CLK: IN STD_LOGIC;
	HSYNC: OUT STD_LOGIC;
	VSYNC: OUT STD_LOGIC;
	R: OUT STD_LOGIC_VECTOR(3 downto 0);
	G: OUT STD_LOGIC_VECTOR(3 downto 0);
	B: OUT STD_LOGIC_VECTOR(3 downto 0)
--	KEYS: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 --  S: IN STD_LOGIC_VECTOR(1 downto 0)
	);
END COMPONENT SYNC;

    component plll is
        port (            
            clk_in_clk  : in  std_logic := 'X'; -- clk
            rEsEt_reset  : in  std_logic := 'X';  -- reset
				clk_out_clk : out std_logic         -- clk
        );
	 END COMPONENT plll;
 BEGIN

 
 
 C: PLLL PORT MAP (CLOCK_24(0),RESET,VGACLK);
 C1: SYNC PORT MAP(VGACLK,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
 
 END MAIN;
 