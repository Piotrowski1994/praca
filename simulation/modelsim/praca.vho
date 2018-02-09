-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "01/30/2018 09:49:46"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PRACA IS
    PORT (
	CLOCK_24 : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	vga_r : OUT std_logic_vector(2 DOWNTO 0);
	vga_g : OUT std_logic_vector(2 DOWNTO 0);
	vga2_r : OUT std_logic_vector(2 DOWNTO 0);
	vga2_g : OUT std_logic_vector(2 DOWNTO 0);
	vga3_r : OUT std_logic_vector(2 DOWNTO 0);
	vga3_g : OUT std_logic_vector(2 DOWNTO 0);
	vga4_R : OUT std_logic_vector(2 DOWNTO 0);
	vga4_g : OUT std_logic_vector(2 DOWNTO 0);
	vga_b : OUT std_logic_vector(1 DOWNTO 0);
	vga2_b : OUT std_logic_vector(1 DOWNTO 0);
	vga3_b : OUT std_logic_vector(1 DOWNTO 0);
	vga4_b : OUT std_logic_vector(1 DOWNTO 0);
	VGA2_HS : OUT std_logic;
	VGA2_VS : OUT std_logic;
	VGA3_HS : OUT std_logic;
	VGA3_VS : OUT std_logic;
	VGA4_HS : OUT std_logic;
	VGA4_VS : OUT std_logic
	);
END PRACA;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_r[0]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_r[1]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_r[2]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_g[0]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_g[1]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_g[2]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_r[0]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_r[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_r[2]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_g[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_g[1]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_g[2]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_R[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_R[1]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_R[2]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_g[0]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_g[1]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_g[2]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_b[0]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga2_b[1]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_b[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga3_b[1]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_b[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga4_b[1]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA2_HS	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA2_VS	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA3_HS	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA3_VS	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA4_HS	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA4_VS	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_24	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PRACA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga2_r : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga2_g : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga3_r : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga3_g : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga4_R : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga4_g : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_vga2_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_vga3_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_vga4_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA2_HS : std_logic;
SIGNAL ww_VGA2_VS : std_logic;
SIGNAL ww_VGA3_HS : std_logic;
SIGNAL ww_VGA3_VS : std_logic;
SIGNAL ww_VGA4_HS : std_logic;
SIGNAL ww_VGA4_VS : std_logic;
SIGNAL \C|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_24~input_o\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \HPOS[0]~10_combout\ : std_logic;
SIGNAL \HPOS[2]~15\ : std_logic;
SIGNAL \HPOS[3]~16_combout\ : std_logic;
SIGNAL \HPOS[3]~17\ : std_logic;
SIGNAL \HPOS[4]~18_combout\ : std_logic;
SIGNAL \HPOS[4]~19\ : std_logic;
SIGNAL \HPOS[5]~20_combout\ : std_logic;
SIGNAL \HPOS[5]~21\ : std_logic;
SIGNAL \HPOS[6]~22_combout\ : std_logic;
SIGNAL \HPOS[6]~23\ : std_logic;
SIGNAL \HPOS[7]~24_combout\ : std_logic;
SIGNAL \HPOS[7]~25\ : std_logic;
SIGNAL \HPOS[8]~26_combout\ : std_logic;
SIGNAL \HPOS[8]~27\ : std_logic;
SIGNAL \HPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|LessThan5~0_combout\ : std_logic;
SIGNAL \HPOS[0]~11\ : std_logic;
SIGNAL \HPOS[1]~12_combout\ : std_logic;
SIGNAL \HPOS[1]~13\ : std_logic;
SIGNAL \HPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \VPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|LessThan3~0_combout\ : std_logic;
SIGNAL \VPOS[5]~21\ : std_logic;
SIGNAL \VPOS[6]~22_combout\ : std_logic;
SIGNAL \VPOS[6]~23\ : std_logic;
SIGNAL \VPOS[7]~24_combout\ : std_logic;
SIGNAL \VPOS[7]~25\ : std_logic;
SIGNAL \VPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|LessThan7~0_combout\ : std_logic;
SIGNAL \VPOS[8]~27\ : std_logic;
SIGNAL \VPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|LessThan7~1_combout\ : std_logic;
SIGNAL \VPOS[0]~11\ : std_logic;
SIGNAL \VPOS[1]~12_combout\ : std_logic;
SIGNAL \VPOS[1]~13\ : std_logic;
SIGNAL \VPOS[2]~14_combout\ : std_logic;
SIGNAL \VPOS[2]~15\ : std_logic;
SIGNAL \VPOS[3]~16_combout\ : std_logic;
SIGNAL \VPOS[3]~17\ : std_logic;
SIGNAL \VPOS[4]~18_combout\ : std_logic;
SIGNAL \VPOS[4]~19\ : std_logic;
SIGNAL \VPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|LessThan3~1_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \POSX~10_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \POSX~2_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \POSX[10]~11_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \POSY~15_combout\ : std_logic;
SIGNAL \POSY[5]~2_combout\ : std_logic;
SIGNAL \licznik[0]~26_combout\ : std_logic;
SIGNAL \licznik[14]~55\ : std_logic;
SIGNAL \licznik[15]~56_combout\ : std_logic;
SIGNAL \licznik[15]~57\ : std_logic;
SIGNAL \licznik[16]~58_combout\ : std_logic;
SIGNAL \licznik[16]~59\ : std_logic;
SIGNAL \licznik[17]~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \licznik[17]~61\ : std_logic;
SIGNAL \licznik[18]~62_combout\ : std_logic;
SIGNAL \licznik[18]~63\ : std_logic;
SIGNAL \licznik[19]~64_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \licznik[19]~65\ : std_logic;
SIGNAL \licznik[20]~66_combout\ : std_logic;
SIGNAL \licznik[20]~67\ : std_logic;
SIGNAL \licznik[21]~68_combout\ : std_logic;
SIGNAL \licznik[21]~69\ : std_logic;
SIGNAL \licznik[22]~70_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \licznik[22]~71\ : std_logic;
SIGNAL \licznik[23]~72_combout\ : std_logic;
SIGNAL \licznik[23]~73\ : std_logic;
SIGNAL \licznik[24]~74_combout\ : std_logic;
SIGNAL \licznik[24]~75\ : std_logic;
SIGNAL \licznik[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \licznik[0]~27\ : std_logic;
SIGNAL \licznik[1]~28_combout\ : std_logic;
SIGNAL \licznik[1]~29\ : std_logic;
SIGNAL \licznik[2]~30_combout\ : std_logic;
SIGNAL \licznik[2]~31\ : std_logic;
SIGNAL \licznik[3]~32_combout\ : std_logic;
SIGNAL \licznik[3]~33\ : std_logic;
SIGNAL \licznik[4]~34_combout\ : std_logic;
SIGNAL \licznik[4]~35\ : std_logic;
SIGNAL \licznik[5]~36_combout\ : std_logic;
SIGNAL \licznik[5]~37\ : std_logic;
SIGNAL \licznik[6]~38_combout\ : std_logic;
SIGNAL \licznik[6]~39\ : std_logic;
SIGNAL \licznik[7]~40_combout\ : std_logic;
SIGNAL \licznik[7]~41\ : std_logic;
SIGNAL \licznik[8]~42_combout\ : std_logic;
SIGNAL \licznik[8]~43\ : std_logic;
SIGNAL \licznik[9]~44_combout\ : std_logic;
SIGNAL \licznik[9]~45\ : std_logic;
SIGNAL \licznik[10]~46_combout\ : std_logic;
SIGNAL \licznik[10]~47\ : std_logic;
SIGNAL \licznik[11]~48_combout\ : std_logic;
SIGNAL \licznik[11]~49\ : std_logic;
SIGNAL \licznik[12]~50_combout\ : std_logic;
SIGNAL \licznik[12]~51\ : std_logic;
SIGNAL \licznik[13]~52_combout\ : std_logic;
SIGNAL \licznik[13]~53\ : std_logic;
SIGNAL \licznik[14]~54_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \POSY[5]~3_combout\ : std_logic;
SIGNAL \POSY[5]~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \POSY[2]~14_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \POSY~13_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \POSY~12_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \POSY[6]~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \POSY[8]~6_combout\ : std_logic;
SIGNAL \POSY[8]~7_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \POSY[9]~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \POSX[3]~3_combout\ : std_logic;
SIGNAL \POSX[3]~4_combout\ : std_logic;
SIGNAL \POSX[3]~5_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \POSX~9_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \POSX~7_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \POSX~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \POSX[3]~12_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \POSX~8_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \POSY~11_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \POSY[5]~16_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \POSY[7]~8_combout\ : std_logic;
SIGNAL \POSY[7]~9_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~16_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~15_cout\ : std_logic;
SIGNAL \LessThan6~17_cout\ : std_logic;
SIGNAL \LessThan6~18_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \LessThan8~1_cout\ : std_logic;
SIGNAL \LessThan8~3_cout\ : std_logic;
SIGNAL \LessThan8~5_cout\ : std_logic;
SIGNAL \LessThan8~7_cout\ : std_logic;
SIGNAL \LessThan8~9_cout\ : std_logic;
SIGNAL \LessThan8~11_cout\ : std_logic;
SIGNAL \LessThan8~13_cout\ : std_logic;
SIGNAL \LessThan8~15_cout\ : std_logic;
SIGNAL \LessThan8~17_cout\ : std_logic;
SIGNAL \LessThan8~18_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \LessThan9~1_cout\ : std_logic;
SIGNAL \LessThan9~3_cout\ : std_logic;
SIGNAL \LessThan9~5_cout\ : std_logic;
SIGNAL \LessThan9~7_cout\ : std_logic;
SIGNAL \LessThan9~9_cout\ : std_logic;
SIGNAL \LessThan9~11_cout\ : std_logic;
SIGNAL \LessThan9~13_cout\ : std_logic;
SIGNAL \LessThan9~15_cout\ : std_logic;
SIGNAL \LessThan9~16_combout\ : std_logic;
SIGNAL \spriteon2~0_combout\ : std_logic;
SIGNAL \spriteon1~0_combout\ : std_logic;
SIGNAL \spriteon1~q\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~1_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \LessThan12~1_cout\ : std_logic;
SIGNAL \LessThan12~3_cout\ : std_logic;
SIGNAL \LessThan12~5_cout\ : std_logic;
SIGNAL \LessThan12~7_cout\ : std_logic;
SIGNAL \LessThan12~9_cout\ : std_logic;
SIGNAL \LessThan12~11_cout\ : std_logic;
SIGNAL \LessThan12~13_cout\ : std_logic;
SIGNAL \LessThan12~15_cout\ : std_logic;
SIGNAL \LessThan12~16_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \Add20~4_combout\ : std_logic;
SIGNAL \Add20~2_combout\ : std_logic;
SIGNAL \Add20~3_combout\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~3_cout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \LessThan15~1_cout\ : std_logic;
SIGNAL \LessThan15~3_cout\ : std_logic;
SIGNAL \LessThan15~5_cout\ : std_logic;
SIGNAL \LessThan15~7_cout\ : std_logic;
SIGNAL \LessThan15~9_cout\ : std_logic;
SIGNAL \LessThan15~11_cout\ : std_logic;
SIGNAL \LessThan15~13_cout\ : std_logic;
SIGNAL \LessThan15~15_cout\ : std_logic;
SIGNAL \LessThan15~16_combout\ : std_logic;
SIGNAL \LessThan15~18_combout\ : std_logic;
SIGNAL \Add20~1_combout\ : std_logic;
SIGNAL \LessThan14~1_cout\ : std_logic;
SIGNAL \LessThan14~3_cout\ : std_logic;
SIGNAL \LessThan14~5_cout\ : std_logic;
SIGNAL \LessThan14~7_cout\ : std_logic;
SIGNAL \LessThan14~9_cout\ : std_logic;
SIGNAL \LessThan14~11_cout\ : std_logic;
SIGNAL \LessThan14~13_cout\ : std_logic;
SIGNAL \LessThan14~15_cout\ : std_logic;
SIGNAL \LessThan14~17_cout\ : std_logic;
SIGNAL \LessThan14~18_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \LessThan10~1_cout\ : std_logic;
SIGNAL \LessThan10~3_cout\ : std_logic;
SIGNAL \LessThan10~5_cout\ : std_logic;
SIGNAL \LessThan10~7_cout\ : std_logic;
SIGNAL \LessThan10~9_cout\ : std_logic;
SIGNAL \LessThan10~11_cout\ : std_logic;
SIGNAL \LessThan10~13_cout\ : std_logic;
SIGNAL \LessThan10~15_cout\ : std_logic;
SIGNAL \LessThan10~16_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \Add19~0_combout\ : std_logic;
SIGNAL \Add19~5_combout\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add19~1_combout\ : std_logic;
SIGNAL \Add19~3_combout\ : std_logic;
SIGNAL \LessThan16~1_cout\ : std_logic;
SIGNAL \LessThan16~3_cout\ : std_logic;
SIGNAL \LessThan16~5_cout\ : std_logic;
SIGNAL \LessThan16~7_cout\ : std_logic;
SIGNAL \LessThan16~9_cout\ : std_logic;
SIGNAL \LessThan16~11_cout\ : std_logic;
SIGNAL \LessThan16~13_cout\ : std_logic;
SIGNAL \LessThan16~15_cout\ : std_logic;
SIGNAL \LessThan16~16_combout\ : std_logic;
SIGNAL \LessThan17~20_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \LessThan17~3_cout\ : std_logic;
SIGNAL \LessThan17~5_cout\ : std_logic;
SIGNAL \LessThan17~7_cout\ : std_logic;
SIGNAL \LessThan17~9_cout\ : std_logic;
SIGNAL \LessThan17~11_cout\ : std_logic;
SIGNAL \LessThan17~13_cout\ : std_logic;
SIGNAL \LessThan17~15_cout\ : std_logic;
SIGNAL \LessThan17~17_cout\ : std_logic;
SIGNAL \LessThan17~18_combout\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~15\ : std_logic;
SIGNAL \Add16~17\ : std_logic;
SIGNAL \Add16~19\ : std_logic;
SIGNAL \Add16~20_combout\ : std_logic;
SIGNAL \Add7~3_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add14~13_combout\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add14~15_combout\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add16~18_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add16~16_combout\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add14~16_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add14~17_combout\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add7~7_combout\ : std_logic;
SIGNAL \address[7]~10\ : std_logic;
SIGNAL \address[8]~12\ : std_logic;
SIGNAL \address[9]~14\ : std_logic;
SIGNAL \address[10]~16\ : std_logic;
SIGNAL \address[11]~18\ : std_logic;
SIGNAL \address[12]~20\ : std_logic;
SIGNAL \address[13]~21_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \address~23_combout\ : std_logic;
SIGNAL \address~35_combout\ : std_logic;
SIGNAL \address[13]~24_combout\ : std_logic;
SIGNAL \address[2]~27_combout\ : std_logic;
SIGNAL \address~25_combout\ : std_logic;
SIGNAL \address~26_combout\ : std_logic;
SIGNAL \address~28_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \address~29_combout\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \address~30_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \address~31_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \address~32_combout\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \address~33_combout\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \address~34_combout\ : std_logic;
SIGNAL \address[7]~9_combout\ : std_logic;
SIGNAL \address[8]~11_combout\ : std_logic;
SIGNAL \address[9]~13_combout\ : std_logic;
SIGNAL \address[10]~15_combout\ : std_logic;
SIGNAL \address[11]~17_combout\ : std_logic;
SIGNAL \address[12]~19_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \q1~3_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|R[1]~0_combout\ : std_logic;
SIGNAL \C1|R[1]~1_combout\ : std_logic;
SIGNAL \C1|R[1]~2_combout\ : std_logic;
SIGNAL \C1|R~3_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \q1~4_combout\ : std_logic;
SIGNAL \C1|R~4_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \q1~5_combout\ : std_logic;
SIGNAL \C1|R~5_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \q1[5]~0_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal16~2_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \Equal14~6_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \q1~6_combout\ : std_logic;
SIGNAL \q1~7_combout\ : std_logic;
SIGNAL \C1|g~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \q1[6]~1_combout\ : std_logic;
SIGNAL \C1|g~1_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \q1[7]~2_combout\ : std_logic;
SIGNAL \C1|g~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \spriteon2~1_combout\ : std_logic;
SIGNAL \spriteon2~2_combout\ : std_logic;
SIGNAL \spriteon2~q\ : std_logic;
SIGNAL \C2|R2~0_combout\ : std_logic;
SIGNAL \C2|R2~1_combout\ : std_logic;
SIGNAL \C2|R2~2_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \q2~1_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \q2[5]~0_combout\ : std_logic;
SIGNAL \C2|G2~0_combout\ : std_logic;
SIGNAL \q2~2_combout\ : std_logic;
SIGNAL \C2|G2~1_combout\ : std_logic;
SIGNAL \q2~3_combout\ : std_logic;
SIGNAL \C2|G2~2_combout\ : std_logic;
SIGNAL \LessThan17~21_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~17_cout\ : std_logic;
SIGNAL \LessThan5~18_combout\ : std_logic;
SIGNAL \spriteon4~0_combout\ : std_logic;
SIGNAL \spriteon3~0_combout\ : std_logic;
SIGNAL \spriteon3~q\ : std_logic;
SIGNAL \C3|R3~0_combout\ : std_logic;
SIGNAL \C3|R3~1_combout\ : std_logic;
SIGNAL \C3|R3~2_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \q3~1_combout\ : std_logic;
SIGNAL \q3[5]~0_combout\ : std_logic;
SIGNAL \C3|g3~0_combout\ : std_logic;
SIGNAL \q3~2_combout\ : std_logic;
SIGNAL \C3|g3~1_combout\ : std_logic;
SIGNAL \q3~3_combout\ : std_logic;
SIGNAL \C3|g3~2_combout\ : std_logic;
SIGNAL \spriteon4~1_combout\ : std_logic;
SIGNAL \spriteon4~q\ : std_logic;
SIGNAL \C4|R4~0_combout\ : std_logic;
SIGNAL \C4|R4~1_combout\ : std_logic;
SIGNAL \C4|R4~2_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \q4~1_combout\ : std_logic;
SIGNAL \q4[5]~0_combout\ : std_logic;
SIGNAL \C4|g4~0_combout\ : std_logic;
SIGNAL \q4~2_combout\ : std_logic;
SIGNAL \C4|g4~1_combout\ : std_logic;
SIGNAL \q4~3_combout\ : std_logic;
SIGNAL \C4|g4~2_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \q1~8_combout\ : std_logic;
SIGNAL \C1|b~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \q1~9_combout\ : std_logic;
SIGNAL \C1|b~1_combout\ : std_logic;
SIGNAL \C2|B2~0_combout\ : std_logic;
SIGNAL \C2|B2~1_combout\ : std_logic;
SIGNAL \C3|b3~0_combout\ : std_logic;
SIGNAL \C3|b3~1_combout\ : std_logic;
SIGNAL \C4|b4~0_combout\ : std_logic;
SIGNAL \C4|b4~1_combout\ : std_logic;
SIGNAL \C2|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C2|HSYNC~q\ : std_logic;
SIGNAL \C2|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C2|VSYNC~q\ : std_logic;
SIGNAL \C3|HSYNC~q\ : std_logic;
SIGNAL \C3|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C3|VSYNC~q\ : std_logic;
SIGNAL \C4|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C4|HSYNC~q\ : std_logic;
SIGNAL \C4|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C4|VSYNC~q\ : std_logic;
SIGNAL q3 : std_logic_vector(11 DOWNTO 0);
SIGNAL HPOS : std_logic_vector(9 DOWNTO 0);
SIGNAL VPOS : std_logic_vector(9 DOWNTO 0);
SIGNAL \C3|R3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL q1 : std_logic_vector(11 DOWNTO 0);
SIGNAL \C1|g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL q2 : std_logic_vector(11 DOWNTO 0);
SIGNAL q4 : std_logic_vector(11 DOWNTO 0);
SIGNAL address : std_logic_vector(13 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(2 DOWNTO 0);
SIGNAL licznik : std_logic_vector(25 DOWNTO 0);
SIGNAL \C2|R2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|G2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C3|g3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C4|R4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C4|g4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|B2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C3|b3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C4|b4\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL POSY : std_logic_vector(9 DOWNTO 0);
SIGNAL POSX : std_logic_vector(10 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL ALT_INV_address : std_logic_vector(13 DOWNTO 13);

BEGIN

ww_CLOCK_24 <= CLOCK_24;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga2_r <= ww_vga2_r;
vga2_g <= ww_vga2_g;
vga3_r <= ww_vga3_r;
vga3_g <= ww_vga3_g;
vga4_R <= ww_vga4_R;
vga4_g <= ww_vga4_g;
vga_b <= ww_vga_b;
vga2_b <= ww_vga2_b;
vga3_b <= ww_vga3_b;
vga4_b <= ww_vga4_b;
VGA2_HS <= ww_VGA2_HS;
VGA2_VS <= ww_VGA2_VS;
VGA3_HS <= ww_VGA3_HS;
VGA3_VS <= ww_VGA3_VS;
VGA4_HS <= ww_VGA4_HS;
VGA4_VS <= ww_VGA4_VS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_24~input_o\);

\C|altpll_0|sd1|wire_pll7_clk\(0) <= \C|altpll_0|sd1|pll7_CLK_bus\(0);
\C|altpll_0|sd1|wire_pll7_clk\(1) <= \C|altpll_0|sd1|pll7_CLK_bus\(1);
\C|altpll_0|sd1|wire_pll7_clk\(2) <= \C|altpll_0|sd1|pll7_CLK_bus\(2);
\C|altpll_0|sd1|wire_pll7_clk\(3) <= \C|altpll_0|sd1|pll7_CLK_bus\(3);
\C|altpll_0|sd1|wire_pll7_clk\(4) <= \C|altpll_0|sd1|pll7_CLK_bus\(4);

\c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (address(12) & address(11) & address(10) & address(9) & address(8) & address(7) & address(6) & address(5) & address(4) & address(3) & address(2) & address(1) & 
address(0));

\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
ALT_INV_address(13) <= NOT address(13);

-- Location: LCCOMB_X44_Y52_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X18_Y0_N30
\vga_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_vga_r(0));

-- Location: IOOBUF_X0_Y12_N9
\vga_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(1),
	devoe => ww_devoe,
	o => ww_vga_r(1));

-- Location: IOOBUF_X16_Y0_N16
\vga_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(2),
	devoe => ww_devoe,
	o => ww_vga_r(2));

-- Location: IOOBUF_X0_Y9_N2
\vga_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|g\(0),
	devoe => ww_devoe,
	o => ww_vga_g(0));

-- Location: IOOBUF_X0_Y15_N9
\vga_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|g\(1),
	devoe => ww_devoe,
	o => ww_vga_g(1));

-- Location: IOOBUF_X0_Y3_N9
\vga_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|g\(2),
	devoe => ww_devoe,
	o => ww_vga_g(2));

-- Location: IOOBUF_X31_Y0_N30
\vga2_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|R2\(0),
	devoe => ww_devoe,
	o => ww_vga2_r(0));

-- Location: IOOBUF_X24_Y0_N30
\vga2_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|R2\(1),
	devoe => ww_devoe,
	o => ww_vga2_r(1));

-- Location: IOOBUF_X31_Y0_N23
\vga2_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|R2\(2),
	devoe => ww_devoe,
	o => ww_vga2_r(2));

-- Location: IOOBUF_X20_Y0_N16
\vga2_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|G2\(0),
	devoe => ww_devoe,
	o => ww_vga2_g(0));

-- Location: IOOBUF_X24_Y0_N2
\vga2_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|G2\(1),
	devoe => ww_devoe,
	o => ww_vga2_g(1));

-- Location: IOOBUF_X22_Y0_N2
\vga2_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|G2\(2),
	devoe => ww_devoe,
	o => ww_vga2_g(2));

-- Location: IOOBUF_X14_Y0_N2
\vga3_r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|R3\(0),
	devoe => ww_devoe,
	o => ww_vga3_r(0));

-- Location: IOOBUF_X54_Y0_N30
\vga3_r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|R3\(1),
	devoe => ww_devoe,
	o => ww_vga3_r(1));

-- Location: IOOBUF_X46_Y0_N2
\vga3_r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|R3\(2),
	devoe => ww_devoe,
	o => ww_vga3_r(2));

-- Location: IOOBUF_X51_Y0_N23
\vga3_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|g3\(0),
	devoe => ww_devoe,
	o => ww_vga3_g(0));

-- Location: IOOBUF_X46_Y0_N9
\vga3_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|g3\(1),
	devoe => ww_devoe,
	o => ww_vga3_g(1));

-- Location: IOOBUF_X40_Y0_N16
\vga3_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|g3\(2),
	devoe => ww_devoe,
	o => ww_vga3_g(2));

-- Location: IOOBUF_X18_Y0_N23
\vga4_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|R4\(0),
	devoe => ww_devoe,
	o => ww_vga4_R(0));

-- Location: IOOBUF_X22_Y0_N16
\vga4_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|R4\(1),
	devoe => ww_devoe,
	o => ww_vga4_R(1));

-- Location: IOOBUF_X24_Y0_N23
\vga4_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|R4\(2),
	devoe => ww_devoe,
	o => ww_vga4_R(2));

-- Location: IOOBUF_X22_Y0_N9
\vga4_g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|g4\(0),
	devoe => ww_devoe,
	o => ww_vga4_g(0));

-- Location: IOOBUF_X26_Y0_N2
\vga4_g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|g4\(1),
	devoe => ww_devoe,
	o => ww_vga4_g(1));

-- Location: IOOBUF_X24_Y0_N16
\vga4_g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|g4\(2),
	devoe => ww_devoe,
	o => ww_vga4_g(2));

-- Location: IOOBUF_X0_Y13_N2
\vga_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|b\(0),
	devoe => ww_devoe,
	o => ww_vga_b(0));

-- Location: IOOBUF_X0_Y15_N2
\vga_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|b\(1),
	devoe => ww_devoe,
	o => ww_vga_b(1));

-- Location: IOOBUF_X20_Y0_N23
\vga2_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|B2\(0),
	devoe => ww_devoe,
	o => ww_vga2_b(0));

-- Location: IOOBUF_X24_Y0_N9
\vga2_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|B2\(1),
	devoe => ww_devoe,
	o => ww_vga2_b(1));

-- Location: IOOBUF_X40_Y0_N23
\vga3_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|b3\(0),
	devoe => ww_devoe,
	o => ww_vga3_b(0));

-- Location: IOOBUF_X36_Y0_N2
\vga3_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|b3\(1),
	devoe => ww_devoe,
	o => ww_vga3_b(1));

-- Location: IOOBUF_X29_Y0_N23
\vga4_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|b4\(0),
	devoe => ww_devoe,
	o => ww_vga4_b(0));

-- Location: IOOBUF_X18_Y0_N2
\vga4_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|b4\(1),
	devoe => ww_devoe,
	o => ww_vga4_b(1));

-- Location: IOOBUF_X16_Y0_N30
\VGA2_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA2_HS);

-- Location: IOOBUF_X14_Y0_N9
\VGA2_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA2_VS);

-- Location: IOOBUF_X38_Y0_N9
\VGA3_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA3_HS);

-- Location: IOOBUF_X36_Y0_N9
\VGA3_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA3_VS);

-- Location: IOOBUF_X20_Y0_N30
\VGA4_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA4_HS);

-- Location: IOOBUF_X29_Y0_N16
\VGA4_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA4_VS);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_24~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_24,
	o => \CLOCK_24~input_o\);

-- Location: PLL_1
\C|altpll_0|sd1|pll7\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \C|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \C|altpll_0|sd1|wire_pll7_fbout\,
	clk => \C|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G18
\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y35_N6
\HPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[0]~10_combout\ = HPOS(0) $ (VCC)
-- \HPOS[0]~11\ = CARRY(HPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(0),
	datad => VCC,
	combout => \HPOS[0]~10_combout\,
	cout => \HPOS[0]~11\);

-- Location: LCCOMB_X49_Y35_N10
\HPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[2]~14_combout\ = (HPOS(2) & (\HPOS[1]~13\ $ (GND))) # (!HPOS(2) & (!\HPOS[1]~13\ & VCC))
-- \HPOS[2]~15\ = CARRY((HPOS(2) & !\HPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datad => VCC,
	cin => \HPOS[1]~13\,
	combout => \HPOS[2]~14_combout\,
	cout => \HPOS[2]~15\);

-- Location: LCCOMB_X49_Y35_N12
\HPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[3]~16_combout\ = (HPOS(3) & (!\HPOS[2]~15\)) # (!HPOS(3) & ((\HPOS[2]~15\) # (GND)))
-- \HPOS[3]~17\ = CARRY((!\HPOS[2]~15\) # (!HPOS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datad => VCC,
	cin => \HPOS[2]~15\,
	combout => \HPOS[3]~16_combout\,
	cout => \HPOS[3]~17\);

-- Location: FF_X49_Y35_N13
\HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[3]~16_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(3));

-- Location: LCCOMB_X49_Y35_N14
\HPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[4]~18_combout\ = (HPOS(4) & (\HPOS[3]~17\ $ (GND))) # (!HPOS(4) & (!\HPOS[3]~17\ & VCC))
-- \HPOS[4]~19\ = CARRY((HPOS(4) & !\HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(4),
	datad => VCC,
	cin => \HPOS[3]~17\,
	combout => \HPOS[4]~18_combout\,
	cout => \HPOS[4]~19\);

-- Location: FF_X49_Y35_N15
\HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[4]~18_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(4));

-- Location: LCCOMB_X49_Y35_N16
\HPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[5]~20_combout\ = (HPOS(5) & (!\HPOS[4]~19\)) # (!HPOS(5) & ((\HPOS[4]~19\) # (GND)))
-- \HPOS[5]~21\ = CARRY((!\HPOS[4]~19\) # (!HPOS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(5),
	datad => VCC,
	cin => \HPOS[4]~19\,
	combout => \HPOS[5]~20_combout\,
	cout => \HPOS[5]~21\);

-- Location: FF_X49_Y35_N17
\HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[5]~20_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(5));

-- Location: LCCOMB_X49_Y35_N18
\HPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[6]~22_combout\ = (HPOS(6) & (\HPOS[5]~21\ $ (GND))) # (!HPOS(6) & (!\HPOS[5]~21\ & VCC))
-- \HPOS[6]~23\ = CARRY((HPOS(6) & !\HPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(6),
	datad => VCC,
	cin => \HPOS[5]~21\,
	combout => \HPOS[6]~22_combout\,
	cout => \HPOS[6]~23\);

-- Location: FF_X49_Y35_N19
\HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[6]~22_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(6));

-- Location: LCCOMB_X49_Y35_N20
\HPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[7]~24_combout\ = (HPOS(7) & (!\HPOS[6]~23\)) # (!HPOS(7) & ((\HPOS[6]~23\) # (GND)))
-- \HPOS[7]~25\ = CARRY((!\HPOS[6]~23\) # (!HPOS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(7),
	datad => VCC,
	cin => \HPOS[6]~23\,
	combout => \HPOS[7]~24_combout\,
	cout => \HPOS[7]~25\);

-- Location: FF_X49_Y35_N21
\HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[7]~24_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(7));

-- Location: LCCOMB_X49_Y35_N22
\HPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[8]~26_combout\ = (HPOS(8) & (\HPOS[7]~25\ $ (GND))) # (!HPOS(8) & (!\HPOS[7]~25\ & VCC))
-- \HPOS[8]~27\ = CARRY((HPOS(8) & !\HPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datad => VCC,
	cin => \HPOS[7]~25\,
	combout => \HPOS[8]~26_combout\,
	cout => \HPOS[8]~27\);

-- Location: FF_X49_Y35_N23
\HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[8]~26_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(8));

-- Location: LCCOMB_X49_Y35_N24
\HPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[9]~28_combout\ = HPOS(9) $ (\HPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	cin => \HPOS[8]~27\,
	combout => \HPOS[9]~28_combout\);

-- Location: FF_X49_Y35_N25
\HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[9]~28_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(9));

-- Location: LCCOMB_X50_Y35_N26
\C1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (!HPOS(6) & !HPOS(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datac => HPOS(5),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X49_Y35_N4
\C1|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~0_combout\ = (HPOS(9) & (HPOS(8) & ((HPOS(7)) # (!\C1|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(9),
	datab => HPOS(7),
	datac => HPOS(8),
	datad => \C1|process_0~4_combout\,
	combout => \C1|LessThan5~0_combout\);

-- Location: FF_X49_Y35_N7
\HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[0]~10_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(0));

-- Location: LCCOMB_X49_Y35_N8
\HPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HPOS[1]~12_combout\ = (HPOS(1) & (!\HPOS[0]~11\)) # (!HPOS(1) & ((\HPOS[0]~11\) # (GND)))
-- \HPOS[1]~13\ = CARRY((!\HPOS[0]~11\) # (!HPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(1),
	datad => VCC,
	cin => \HPOS[0]~11\,
	combout => \HPOS[1]~12_combout\,
	cout => \HPOS[1]~13\);

-- Location: FF_X49_Y35_N9
\HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[1]~12_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(1));

-- Location: FF_X49_Y35_N11
\HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \HPOS[2]~14_combout\,
	sclr => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(2));

-- Location: LCCOMB_X47_Y35_N8
\C1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (HPOS(2) & (HPOS(0) & (HPOS(1) & HPOS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => HPOS(0),
	datac => HPOS(1),
	datad => HPOS(3),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X49_Y35_N0
\C1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (HPOS(6) & (HPOS(5) & ((\C1|process_0~0_combout\) # (HPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => HPOS(6),
	datac => HPOS(4),
	datad => HPOS(5),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X49_Y35_N2
\C1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = ((HPOS(8)) # (!HPOS(7))) # (!HPOS(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datac => HPOS(8),
	datad => HPOS(7),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X49_Y35_N28
\C1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = ((!HPOS(2) & !HPOS(3))) # (!HPOS(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datac => HPOS(4),
	datad => HPOS(3),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X49_Y35_N26
\C1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|process_0~1_combout\) # ((\C1|process_0~2_combout\) # ((\C1|process_0~3_combout\ & \C1|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~1_combout\,
	datab => \C1|process_0~2_combout\,
	datac => \C1|process_0~3_combout\,
	datad => \C1|process_0~4_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X25_Y5_N24
\C1|HSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HSYNC~feeder_combout\ = \C1|process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~5_combout\,
	combout => \C1|HSYNC~feeder_combout\);

-- Location: FF_X25_Y5_N25
\C1|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HSYNC~q\);

-- Location: LCCOMB_X52_Y38_N0
\VPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[0]~10_combout\ = VPOS(0) $ (VCC)
-- \VPOS[0]~11\ = CARRY(VPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(0),
	datad => VCC,
	combout => \VPOS[0]~10_combout\,
	cout => \VPOS[0]~11\);

-- Location: LCCOMB_X52_Y38_N20
\C1|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan3~0_combout\ = (((!VPOS(1) & !VPOS(0))) # (!VPOS(2))) # (!VPOS(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => VPOS(1),
	datac => VPOS(2),
	datad => VPOS(0),
	combout => \C1|LessThan3~0_combout\);

-- Location: LCCOMB_X52_Y38_N10
\VPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[5]~20_combout\ = (VPOS(5) & (!\VPOS[4]~19\)) # (!VPOS(5) & ((\VPOS[4]~19\) # (GND)))
-- \VPOS[5]~21\ = CARRY((!\VPOS[4]~19\) # (!VPOS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datad => VCC,
	cin => \VPOS[4]~19\,
	combout => \VPOS[5]~20_combout\,
	cout => \VPOS[5]~21\);

-- Location: LCCOMB_X52_Y38_N12
\VPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[6]~22_combout\ = (VPOS(6) & (\VPOS[5]~21\ $ (GND))) # (!VPOS(6) & (!\VPOS[5]~21\ & VCC))
-- \VPOS[6]~23\ = CARRY((VPOS(6) & !\VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datad => VCC,
	cin => \VPOS[5]~21\,
	combout => \VPOS[6]~22_combout\,
	cout => \VPOS[6]~23\);

-- Location: FF_X52_Y38_N13
\VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[6]~22_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(6));

-- Location: LCCOMB_X52_Y38_N14
\VPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[7]~24_combout\ = (VPOS(7) & (!\VPOS[6]~23\)) # (!VPOS(7) & ((\VPOS[6]~23\) # (GND)))
-- \VPOS[7]~25\ = CARRY((!\VPOS[6]~23\) # (!VPOS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(7),
	datad => VCC,
	cin => \VPOS[6]~23\,
	combout => \VPOS[7]~24_combout\,
	cout => \VPOS[7]~25\);

-- Location: FF_X52_Y38_N15
\VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[7]~24_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(7));

-- Location: LCCOMB_X52_Y38_N16
\VPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[8]~26_combout\ = (VPOS(8) & (\VPOS[7]~25\ $ (GND))) # (!VPOS(8) & (!\VPOS[7]~25\ & VCC))
-- \VPOS[8]~27\ = CARRY((VPOS(8) & !\VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(8),
	datad => VCC,
	cin => \VPOS[7]~25\,
	combout => \VPOS[8]~26_combout\,
	cout => \VPOS[8]~27\);

-- Location: FF_X52_Y38_N17
\VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[8]~26_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(8));

-- Location: LCCOMB_X52_Y38_N24
\C1|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~0_combout\ = (!VPOS(5) & (!VPOS(8) & (!VPOS(7) & !VPOS(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => VPOS(8),
	datac => VPOS(7),
	datad => VPOS(6),
	combout => \C1|LessThan7~0_combout\);

-- Location: LCCOMB_X52_Y38_N18
\VPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[9]~28_combout\ = VPOS(9) $ (\VPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(9),
	cin => \VPOS[8]~27\,
	combout => \VPOS[9]~28_combout\);

-- Location: FF_X52_Y38_N19
\VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[9]~28_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(9));

-- Location: LCCOMB_X52_Y38_N26
\C1|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_combout\ = (VPOS(9) & (((VPOS(4)) # (!\C1|LessThan7~0_combout\)) # (!\C1|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan3~0_combout\,
	datab => \C1|LessThan7~0_combout\,
	datac => VPOS(4),
	datad => VPOS(9),
	combout => \C1|LessThan7~1_combout\);

-- Location: FF_X52_Y38_N1
\VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[0]~10_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(0));

-- Location: LCCOMB_X52_Y38_N2
\VPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[1]~12_combout\ = (VPOS(1) & (!\VPOS[0]~11\)) # (!VPOS(1) & ((\VPOS[0]~11\) # (GND)))
-- \VPOS[1]~13\ = CARRY((!\VPOS[0]~11\) # (!VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(1),
	datad => VCC,
	cin => \VPOS[0]~11\,
	combout => \VPOS[1]~12_combout\,
	cout => \VPOS[1]~13\);

-- Location: FF_X52_Y38_N3
\VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[1]~12_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(1));

-- Location: LCCOMB_X52_Y38_N4
\VPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[2]~14_combout\ = (VPOS(2) & (\VPOS[1]~13\ $ (GND))) # (!VPOS(2) & (!\VPOS[1]~13\ & VCC))
-- \VPOS[2]~15\ = CARRY((VPOS(2) & !\VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(2),
	datad => VCC,
	cin => \VPOS[1]~13\,
	combout => \VPOS[2]~14_combout\,
	cout => \VPOS[2]~15\);

-- Location: FF_X52_Y38_N5
\VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[2]~14_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(2));

-- Location: LCCOMB_X52_Y38_N6
\VPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[3]~16_combout\ = (VPOS(3) & (!\VPOS[2]~15\)) # (!VPOS(3) & ((\VPOS[2]~15\) # (GND)))
-- \VPOS[3]~17\ = CARRY((!\VPOS[2]~15\) # (!VPOS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datad => VCC,
	cin => \VPOS[2]~15\,
	combout => \VPOS[3]~16_combout\,
	cout => \VPOS[3]~17\);

-- Location: FF_X52_Y38_N7
\VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[3]~16_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(3));

-- Location: LCCOMB_X52_Y38_N8
\VPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VPOS[4]~18_combout\ = (VPOS(4) & (\VPOS[3]~17\ $ (GND))) # (!VPOS(4) & (!\VPOS[3]~17\ & VCC))
-- \VPOS[4]~19\ = CARRY((VPOS(4) & !\VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(4),
	datad => VCC,
	cin => \VPOS[3]~17\,
	combout => \VPOS[4]~18_combout\,
	cout => \VPOS[4]~19\);

-- Location: FF_X52_Y38_N9
\VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[4]~18_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(4));

-- Location: FF_X52_Y38_N11
\VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \VPOS[5]~20_combout\,
	sclr => \C1|LessThan7~1_combout\,
	ena => \C1|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(5));

-- Location: LCCOMB_X49_Y38_N26
\C1|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (VPOS(5) & (VPOS(8) & (VPOS(6) & VPOS(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => VPOS(8),
	datac => VPOS(6),
	datad => VPOS(7),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X49_Y38_N0
\C1|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = ((!VPOS(2) & ((!VPOS(0)) # (!VPOS(1))))) # (!VPOS(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(2),
	datab => VPOS(1),
	datac => VPOS(0),
	datad => VPOS(3),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X52_Y38_N22
\C1|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_combout\ = (!VPOS(4) & \C1|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VPOS(4),
	datad => \C1|LessThan3~0_combout\,
	combout => \C1|LessThan3~1_combout\);

-- Location: LCCOMB_X49_Y38_N20
\C1|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = ((\C1|process_0~6_combout\) # ((VPOS(9)) # (!\C1|LessThan3~1_combout\))) # (!\C1|process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~7_combout\,
	datab => \C1|process_0~6_combout\,
	datac => \C1|LessThan3~1_combout\,
	datad => VPOS(9),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X49_Y38_N24
\C1|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VSYNC~feeder_combout\ = \C1|process_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~8_combout\,
	combout => \C1|VSYNC~feeder_combout\);

-- Location: FF_X49_Y38_N25
\C1|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VSYNC~q\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X50_Y36_N14
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\SW[2]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X49_Y36_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = POSX(1) $ (GND)
-- \Add1~1\ = CARRY(!POSX(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(1),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X49_Y36_N22
\POSX~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~10_combout\ = (!\process_0~6_combout\ & (!\LessThan2~2_combout\ & ((\SW[1]~input_o\) # (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Add1~0_combout\,
	datac => \process_0~6_combout\,
	datad => \LessThan2~2_combout\,
	combout => \POSX~10_combout\);

-- Location: LCCOMB_X50_Y37_N26
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X49_Y36_N10
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (POSX(6) & ((\Equal1~2_combout\ & (!\Add1~9\)) # (!\Equal1~2_combout\ & (\Add1~9\ & VCC)))) # (!POSX(6) & ((\Equal1~2_combout\ & ((\Add1~9\) # (GND))) # (!\Equal1~2_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((POSX(6) & (\Equal1~2_combout\ & !\Add1~9\)) # (!POSX(6) & ((\Equal1~2_combout\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X49_Y36_N12
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((POSX(7) $ (\Equal1~2_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((POSX(7) & ((!\Add1~11\) # (!\Equal1~2_combout\))) # (!POSX(7) & (!\Equal1~2_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X49_Y36_N14
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (POSX(8) & ((\Equal1~2_combout\ & (!\Add1~13\)) # (!\Equal1~2_combout\ & (\Add1~13\ & VCC)))) # (!POSX(8) & ((\Equal1~2_combout\ & ((\Add1~13\) # (GND))) # (!\Equal1~2_combout\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((POSX(8) & (\Equal1~2_combout\ & !\Add1~13\)) # (!POSX(8) & ((\Equal1~2_combout\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X49_Y36_N24
\Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (!\SW[1]~input_o\ & (!\process_0~6_combout\ & (\Add1~14_combout\ & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \process_0~6_combout\,
	datac => \Add1~14_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~19_combout\);

-- Location: FF_X49_Y36_N25
\POSX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \Add1~19_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(8));

-- Location: LCCOMB_X51_Y35_N2
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!POSX(8) & (!POSX(1) & (!POSX(7) & !POSX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => POSX(1),
	datac => POSX(7),
	datad => POSX(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X49_Y36_N16
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((POSX(9) $ (\Equal1~2_combout\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((POSX(9) & ((!\Add1~15\) # (!\Equal1~2_combout\))) # (!POSX(9) & (!\Equal1~2_combout\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X49_Y36_N20
\POSX~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~2_combout\ = (!\process_0~6_combout\ & (!\LessThan2~2_combout\ & ((\SW[1]~input_o\) # (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Add1~16_combout\,
	datac => \process_0~6_combout\,
	datad => \LessThan2~2_combout\,
	combout => \POSX~2_combout\);

-- Location: FF_X49_Y36_N21
\POSX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~2_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(9));

-- Location: LCCOMB_X49_Y36_N18
\Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = POSX(10) $ (\Add1~17\ $ (!\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datad => \Equal1~2_combout\,
	cin => \Add1~17\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X50_Y36_N6
\POSX[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[10]~11_combout\ = (\POSX[3]~5_combout\ & (!\POSX[3]~12_combout\ & (\Add1~21_combout\))) # (!\POSX[3]~5_combout\ & (((POSX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[3]~12_combout\,
	datab => \Add1~21_combout\,
	datac => POSX(10),
	datad => \POSX[3]~5_combout\,
	combout => \POSX[10]~11_combout\);

-- Location: FF_X50_Y36_N7
\POSX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(10));

-- Location: LCCOMB_X51_Y35_N0
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (POSX(10)) # ((POSX(6)) # ((POSX(5)) # (POSX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => POSX(6),
	datac => POSX(5),
	datad => POSX(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X51_Y35_N28
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (POSX(4)) # (((POSX(9)) # (\Equal4~0_combout\)) # (!\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \Equal2~0_combout\,
	datac => POSX(9),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X49_Y37_N4
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = POSY(1) $ (GND)
-- \Add2~1\ = CARRY(!POSY(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X50_Y37_N14
\POSY~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY~15_combout\ = (!\process_0~6_combout\ & (!\LessThan4~2_combout\ & ((\SW[1]~input_o\) # (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \LessThan4~2_combout\,
	datac => \Add2~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \POSY~15_combout\);

-- Location: LCCOMB_X50_Y37_N0
\POSY[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[5]~2_combout\ = (\Equal1~2_combout\ & (((!\Equal2~2_combout\)) # (!\Equal4~1_combout\))) # (!\Equal1~2_combout\ & ((\Equal2~2_combout\ & ((\Equal3~1_combout\))) # (!\Equal2~2_combout\ & (\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal2~2_combout\,
	combout => \POSY[5]~2_combout\);

-- Location: LCCOMB_X60_Y48_N6
\licznik[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[0]~26_combout\ = licznik(0) $ (VCC)
-- \licznik[0]~27\ = CARRY(licznik(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(0),
	datad => VCC,
	combout => \licznik[0]~26_combout\,
	cout => \licznik[0]~27\);

-- Location: LCCOMB_X60_Y47_N2
\licznik[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[14]~54_combout\ = (licznik(14) & (\licznik[13]~53\ $ (GND))) # (!licznik(14) & (!\licznik[13]~53\ & VCC))
-- \licznik[14]~55\ = CARRY((licznik(14) & !\licznik[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(14),
	datad => VCC,
	cin => \licznik[13]~53\,
	combout => \licznik[14]~54_combout\,
	cout => \licznik[14]~55\);

-- Location: LCCOMB_X60_Y47_N4
\licznik[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[15]~56_combout\ = (licznik(15) & (!\licznik[14]~55\)) # (!licznik(15) & ((\licznik[14]~55\) # (GND)))
-- \licznik[15]~57\ = CARRY((!\licznik[14]~55\) # (!licznik(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(15),
	datad => VCC,
	cin => \licznik[14]~55\,
	combout => \licznik[15]~56_combout\,
	cout => \licznik[15]~57\);

-- Location: FF_X60_Y47_N5
\licznik[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[15]~56_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(15));

-- Location: LCCOMB_X60_Y47_N6
\licznik[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[16]~58_combout\ = (licznik(16) & (\licznik[15]~57\ $ (GND))) # (!licznik(16) & (!\licznik[15]~57\ & VCC))
-- \licznik[16]~59\ = CARRY((licznik(16) & !\licznik[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(16),
	datad => VCC,
	cin => \licznik[15]~57\,
	combout => \licznik[16]~58_combout\,
	cout => \licznik[16]~59\);

-- Location: FF_X60_Y47_N7
\licznik[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[16]~58_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(16));

-- Location: LCCOMB_X60_Y47_N8
\licznik[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[17]~60_combout\ = (licznik(17) & (!\licznik[16]~59\)) # (!licznik(17) & ((\licznik[16]~59\) # (GND)))
-- \licznik[17]~61\ = CARRY((!\licznik[16]~59\) # (!licznik(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(17),
	datad => VCC,
	cin => \licznik[16]~59\,
	combout => \licznik[17]~60_combout\,
	cout => \licznik[17]~61\);

-- Location: FF_X60_Y47_N9
\licznik[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[17]~60_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(17));

-- Location: LCCOMB_X60_Y47_N26
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!licznik(17) & (!licznik(15) & !licznik(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => licznik(17),
	datac => licznik(15),
	datad => licznik(16),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X60_Y47_N10
\licznik[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[18]~62_combout\ = (licznik(18) & (\licznik[17]~61\ $ (GND))) # (!licznik(18) & (!\licznik[17]~61\ & VCC))
-- \licznik[18]~63\ = CARRY((licznik(18) & !\licznik[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(18),
	datad => VCC,
	cin => \licznik[17]~61\,
	combout => \licznik[18]~62_combout\,
	cout => \licznik[18]~63\);

-- Location: FF_X60_Y47_N11
\licznik[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[18]~62_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(18));

-- Location: LCCOMB_X60_Y47_N12
\licznik[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[19]~64_combout\ = (licznik(19) & (!\licznik[18]~63\)) # (!licznik(19) & ((\licznik[18]~63\) # (GND)))
-- \licznik[19]~65\ = CARRY((!\licznik[18]~63\) # (!licznik(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(19),
	datad => VCC,
	cin => \licznik[18]~63\,
	combout => \licznik[19]~64_combout\,
	cout => \licznik[19]~65\);

-- Location: FF_X60_Y47_N13
\licznik[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[19]~64_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(19));

-- Location: LCCOMB_X60_Y48_N4
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!licznik(7) & !licznik(6))) # (!licznik(8))) # (!licznik(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(9),
	datab => licznik(7),
	datac => licznik(8),
	datad => licznik(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y47_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!licznik(10) & \LessThan0~0_combout\)) # (!licznik(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(10),
	datac => licznik(11),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y47_N20
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~1_combout\ & (!licznik(13) & !licznik(12)))) # (!licznik(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(14),
	datab => \LessThan0~1_combout\,
	datac => licznik(13),
	datad => licznik(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y47_N22
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((\Equal0~0_combout\ & \LessThan0~2_combout\)) # (!licznik(19))) # (!licznik(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => licznik(18),
	datac => licznik(19),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y47_N14
\licznik[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[20]~66_combout\ = (licznik(20) & (\licznik[19]~65\ $ (GND))) # (!licznik(20) & (!\licznik[19]~65\ & VCC))
-- \licznik[20]~67\ = CARRY((licznik(20) & !\licznik[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(20),
	datad => VCC,
	cin => \licznik[19]~65\,
	combout => \licznik[20]~66_combout\,
	cout => \licznik[20]~67\);

-- Location: FF_X60_Y47_N15
\licznik[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[20]~66_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(20));

-- Location: LCCOMB_X60_Y47_N16
\licznik[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[21]~68_combout\ = (licznik(21) & (!\licznik[20]~67\)) # (!licznik(21) & ((\licznik[20]~67\) # (GND)))
-- \licznik[21]~69\ = CARRY((!\licznik[20]~67\) # (!licznik(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(21),
	datad => VCC,
	cin => \licznik[20]~67\,
	combout => \licznik[21]~68_combout\,
	cout => \licznik[21]~69\);

-- Location: FF_X60_Y47_N17
\licznik[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[21]~68_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(21));

-- Location: LCCOMB_X60_Y47_N18
\licznik[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[22]~70_combout\ = (licznik(22) & (\licznik[21]~69\ $ (GND))) # (!licznik(22) & (!\licznik[21]~69\ & VCC))
-- \licznik[22]~71\ = CARRY((licznik(22) & !\licznik[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(22),
	datad => VCC,
	cin => \licznik[21]~69\,
	combout => \licznik[22]~70_combout\,
	cout => \licznik[22]~71\);

-- Location: FF_X60_Y47_N19
\licznik[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[22]~70_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(22));

-- Location: LCCOMB_X59_Y47_N8
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((\LessThan0~3_combout\ & (!licznik(20) & !licznik(21)))) # (!licznik(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => licznik(22),
	datac => licznik(20),
	datad => licznik(21),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y47_N20
\licznik[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[23]~72_combout\ = (licznik(23) & (!\licznik[22]~71\)) # (!licznik(23) & ((\licznik[22]~71\) # (GND)))
-- \licznik[23]~73\ = CARRY((!\licznik[22]~71\) # (!licznik(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(23),
	datad => VCC,
	cin => \licznik[22]~71\,
	combout => \licznik[23]~72_combout\,
	cout => \licznik[23]~73\);

-- Location: FF_X60_Y47_N21
\licznik[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[23]~72_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(23));

-- Location: LCCOMB_X60_Y47_N22
\licznik[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[24]~74_combout\ = (licznik(24) & (\licznik[23]~73\ $ (GND))) # (!licznik(24) & (!\licznik[23]~73\ & VCC))
-- \licznik[24]~75\ = CARRY((licznik(24) & !\licznik[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(24),
	datad => VCC,
	cin => \licznik[23]~73\,
	combout => \licznik[24]~74_combout\,
	cout => \licznik[24]~75\);

-- Location: FF_X60_Y47_N23
\licznik[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[24]~74_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(24));

-- Location: LCCOMB_X60_Y47_N24
\licznik[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[25]~76_combout\ = licznik(25) $ (\licznik[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(25),
	cin => \licznik[24]~75\,
	combout => \licznik[25]~76_combout\);

-- Location: FF_X60_Y47_N25
\licznik[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[25]~76_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(25));

-- Location: LCCOMB_X60_Y47_N30
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((licznik(25)) # ((licznik(24)) # (licznik(23)))) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => licznik(25),
	datac => licznik(24),
	datad => licznik(23),
	combout => \LessThan0~5_combout\);

-- Location: FF_X60_Y48_N7
\licznik[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[0]~26_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(0));

-- Location: LCCOMB_X60_Y48_N8
\licznik[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[1]~28_combout\ = (licznik(1) & (!\licznik[0]~27\)) # (!licznik(1) & ((\licznik[0]~27\) # (GND)))
-- \licznik[1]~29\ = CARRY((!\licznik[0]~27\) # (!licznik(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(1),
	datad => VCC,
	cin => \licznik[0]~27\,
	combout => \licznik[1]~28_combout\,
	cout => \licznik[1]~29\);

-- Location: FF_X60_Y48_N9
\licznik[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[1]~28_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(1));

-- Location: LCCOMB_X60_Y48_N10
\licznik[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[2]~30_combout\ = (licznik(2) & (\licznik[1]~29\ $ (GND))) # (!licznik(2) & (!\licznik[1]~29\ & VCC))
-- \licznik[2]~31\ = CARRY((licznik(2) & !\licznik[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(2),
	datad => VCC,
	cin => \licznik[1]~29\,
	combout => \licznik[2]~30_combout\,
	cout => \licznik[2]~31\);

-- Location: FF_X60_Y48_N11
\licznik[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[2]~30_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(2));

-- Location: LCCOMB_X60_Y48_N12
\licznik[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[3]~32_combout\ = (licznik(3) & (!\licznik[2]~31\)) # (!licznik(3) & ((\licznik[2]~31\) # (GND)))
-- \licznik[3]~33\ = CARRY((!\licznik[2]~31\) # (!licznik(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(3),
	datad => VCC,
	cin => \licznik[2]~31\,
	combout => \licznik[3]~32_combout\,
	cout => \licznik[3]~33\);

-- Location: FF_X60_Y48_N13
\licznik[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[3]~32_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(3));

-- Location: LCCOMB_X60_Y48_N14
\licznik[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[4]~34_combout\ = (licznik(4) & (\licznik[3]~33\ $ (GND))) # (!licznik(4) & (!\licznik[3]~33\ & VCC))
-- \licznik[4]~35\ = CARRY((licznik(4) & !\licznik[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(4),
	datad => VCC,
	cin => \licznik[3]~33\,
	combout => \licznik[4]~34_combout\,
	cout => \licznik[4]~35\);

-- Location: FF_X60_Y48_N15
\licznik[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[4]~34_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(4));

-- Location: LCCOMB_X60_Y48_N16
\licznik[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[5]~36_combout\ = (licznik(5) & (!\licznik[4]~35\)) # (!licznik(5) & ((\licznik[4]~35\) # (GND)))
-- \licznik[5]~37\ = CARRY((!\licznik[4]~35\) # (!licznik(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(5),
	datad => VCC,
	cin => \licznik[4]~35\,
	combout => \licznik[5]~36_combout\,
	cout => \licznik[5]~37\);

-- Location: FF_X60_Y48_N17
\licznik[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[5]~36_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(5));

-- Location: LCCOMB_X60_Y48_N18
\licznik[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[6]~38_combout\ = (licznik(6) & (\licznik[5]~37\ $ (GND))) # (!licznik(6) & (!\licznik[5]~37\ & VCC))
-- \licznik[6]~39\ = CARRY((licznik(6) & !\licznik[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(6),
	datad => VCC,
	cin => \licznik[5]~37\,
	combout => \licznik[6]~38_combout\,
	cout => \licznik[6]~39\);

-- Location: FF_X60_Y48_N19
\licznik[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[6]~38_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(6));

-- Location: LCCOMB_X60_Y48_N20
\licznik[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[7]~40_combout\ = (licznik(7) & (!\licznik[6]~39\)) # (!licznik(7) & ((\licznik[6]~39\) # (GND)))
-- \licznik[7]~41\ = CARRY((!\licznik[6]~39\) # (!licznik(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(7),
	datad => VCC,
	cin => \licznik[6]~39\,
	combout => \licznik[7]~40_combout\,
	cout => \licznik[7]~41\);

-- Location: FF_X60_Y48_N21
\licznik[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[7]~40_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(7));

-- Location: LCCOMB_X60_Y48_N22
\licznik[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[8]~42_combout\ = (licznik(8) & (\licznik[7]~41\ $ (GND))) # (!licznik(8) & (!\licznik[7]~41\ & VCC))
-- \licznik[8]~43\ = CARRY((licznik(8) & !\licznik[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(8),
	datad => VCC,
	cin => \licznik[7]~41\,
	combout => \licznik[8]~42_combout\,
	cout => \licznik[8]~43\);

-- Location: FF_X60_Y48_N23
\licznik[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[8]~42_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(8));

-- Location: LCCOMB_X60_Y48_N24
\licznik[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[9]~44_combout\ = (licznik(9) & (!\licznik[8]~43\)) # (!licznik(9) & ((\licznik[8]~43\) # (GND)))
-- \licznik[9]~45\ = CARRY((!\licznik[8]~43\) # (!licznik(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(9),
	datad => VCC,
	cin => \licznik[8]~43\,
	combout => \licznik[9]~44_combout\,
	cout => \licznik[9]~45\);

-- Location: FF_X60_Y48_N25
\licznik[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[9]~44_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(9));

-- Location: LCCOMB_X60_Y48_N26
\licznik[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[10]~46_combout\ = (licznik(10) & (\licznik[9]~45\ $ (GND))) # (!licznik(10) & (!\licznik[9]~45\ & VCC))
-- \licznik[10]~47\ = CARRY((licznik(10) & !\licznik[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(10),
	datad => VCC,
	cin => \licznik[9]~45\,
	combout => \licznik[10]~46_combout\,
	cout => \licznik[10]~47\);

-- Location: FF_X60_Y48_N27
\licznik[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[10]~46_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(10));

-- Location: LCCOMB_X60_Y48_N28
\licznik[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[11]~48_combout\ = (licznik(11) & (!\licznik[10]~47\)) # (!licznik(11) & ((\licznik[10]~47\) # (GND)))
-- \licznik[11]~49\ = CARRY((!\licznik[10]~47\) # (!licznik(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(11),
	datad => VCC,
	cin => \licznik[10]~47\,
	combout => \licznik[11]~48_combout\,
	cout => \licznik[11]~49\);

-- Location: FF_X60_Y48_N29
\licznik[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[11]~48_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(11));

-- Location: LCCOMB_X60_Y48_N30
\licznik[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[12]~50_combout\ = (licznik(12) & (\licznik[11]~49\ $ (GND))) # (!licznik(12) & (!\licznik[11]~49\ & VCC))
-- \licznik[12]~51\ = CARRY((licznik(12) & !\licznik[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(12),
	datad => VCC,
	cin => \licznik[11]~49\,
	combout => \licznik[12]~50_combout\,
	cout => \licznik[12]~51\);

-- Location: FF_X60_Y48_N31
\licznik[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[12]~50_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(12));

-- Location: LCCOMB_X60_Y47_N0
\licznik[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[13]~52_combout\ = (licznik(13) & (!\licznik[12]~51\)) # (!licznik(13) & ((\licznik[12]~51\) # (GND)))
-- \licznik[13]~53\ = CARRY((!\licznik[12]~51\) # (!licznik(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(13),
	datad => VCC,
	cin => \licznik[12]~51\,
	combout => \licznik[13]~52_combout\,
	cout => \licznik[13]~53\);

-- Location: FF_X60_Y47_N1
\licznik[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[13]~52_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(13));

-- Location: FF_X60_Y47_N3
\licznik[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[14]~54_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(14));

-- Location: LCCOMB_X59_Y47_N12
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!licznik(14) & (!licznik(11) & (!licznik(18) & !licznik(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(14),
	datab => licznik(11),
	datac => licznik(18),
	datad => licznik(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X60_Y48_N2
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!licznik(8) & (!licznik(5) & (!licznik(4) & !licznik(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(8),
	datab => licznik(5),
	datac => licznik(4),
	datad => licznik(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X59_Y47_N6
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!licznik(22) & (!licznik(19) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => licznik(22),
	datac => licznik(19),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X60_Y48_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!licznik(13) & (!licznik(7) & (!licznik(12) & !licznik(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(13),
	datab => licznik(7),
	datac => licznik(12),
	datad => licznik(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X59_Y47_N24
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & !licznik(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => licznik(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y47_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!licznik(3) & (!licznik(21) & (!licznik(20) & !licznik(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(3),
	datab => licznik(21),
	datac => licznik(20),
	datad => licznik(2),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X60_Y47_N28
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!licznik(25) & (!licznik(23) & (!licznik(24) & !licznik(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(25),
	datab => licznik(23),
	datac => licznik(24),
	datad => licznik(1),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X59_Y47_N0
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~2_combout\ & (\Equal0~4_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X50_Y37_N4
\POSY[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[5]~3_combout\ = (\Equal5~2_combout\ & (!\SW[2]~input_o\ & ((\POSY[5]~2_combout\) # (!\Equal0~8_combout\)))) # (!\Equal5~2_combout\ & (((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \POSY[5]~2_combout\,
	datac => \Equal0~8_combout\,
	datad => \SW[2]~input_o\,
	combout => \POSY[5]~3_combout\);

-- Location: LCCOMB_X50_Y37_N30
\POSY[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[5]~4_combout\ = (\LessThan4~2_combout\) # (!\POSY[5]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \POSY[5]~3_combout\,
	datad => \LessThan4~2_combout\,
	combout => \POSY[5]~4_combout\);

-- Location: FF_X50_Y37_N15
\POSY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY~15_combout\,
	ena => \POSY[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(1));

-- Location: LCCOMB_X49_Y37_N6
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Equal2~2_combout\ & ((POSY(2) & (!\Add2~1\)) # (!POSY(2) & ((\Add2~1\) # (GND))))) # (!\Equal2~2_combout\ & ((POSY(2) & (\Add2~1\ & VCC)) # (!POSY(2) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Equal2~2_combout\ & ((!\Add2~1\) # (!POSY(2)))) # (!\Equal2~2_combout\ & (!POSY(2) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X49_Y37_N2
\POSY[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[2]~14_combout\ = (\POSY[5]~4_combout\ & (\Add2~2_combout\ & ((!\POSY[5]~16_combout\)))) # (!\POSY[5]~4_combout\ & (((POSY(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \POSY[5]~4_combout\,
	datac => POSY(2),
	datad => \POSY[5]~16_combout\,
	combout => \POSY[2]~14_combout\);

-- Location: FF_X49_Y37_N3
\POSY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(2));

-- Location: LCCOMB_X50_Y36_N0
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!\SW[2]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X49_Y37_N8
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Equal2~2_combout\ $ (POSY(3) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Equal2~2_combout\ & ((POSY(3)) # (!\Add2~3\))) # (!\Equal2~2_combout\ & (POSY(3) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X49_Y37_N24
\POSY~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY~13_combout\ = (\POSY[5]~16_combout\ & ((\SW[2]~input_o\) # ((\LessThan4~2_combout\)))) # (!\POSY[5]~16_combout\ & (((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~16_combout\,
	datab => \SW[2]~input_o\,
	datac => \LessThan4~2_combout\,
	datad => \Add2~4_combout\,
	combout => \POSY~13_combout\);

-- Location: FF_X49_Y37_N25
\POSY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY~13_combout\,
	ena => \POSY[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(3));

-- Location: LCCOMB_X49_Y37_N10
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Equal2~2_combout\ & ((POSY(4) & ((\Add2~5\) # (GND))) # (!POSY(4) & (!\Add2~5\)))) # (!\Equal2~2_combout\ & ((POSY(4) & (!\Add2~5\)) # (!POSY(4) & (\Add2~5\ & VCC))))
-- \Add2~7\ = CARRY((\Equal2~2_combout\ & ((POSY(4)) # (!\Add2~5\))) # (!\Equal2~2_combout\ & (POSY(4) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X49_Y37_N22
\POSY~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY~12_combout\ = (\POSY[5]~16_combout\ & (((\LessThan4~2_combout\)) # (!\Equal5~3_combout\))) # (!\POSY[5]~16_combout\ & (!\Add2~6_combout\ & ((\LessThan4~2_combout\) # (!\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~16_combout\,
	datab => \Equal5~3_combout\,
	datac => \LessThan4~2_combout\,
	datad => \Add2~6_combout\,
	combout => \POSY~12_combout\);

-- Location: FF_X49_Y37_N23
\POSY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY~12_combout\,
	ena => \POSY[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(4));

-- Location: LCCOMB_X49_Y37_N12
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Equal2~2_combout\ $ (POSY(5) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Equal2~2_combout\ & (!POSY(5) & !\Add2~7\)) # (!\Equal2~2_combout\ & ((!\Add2~7\) # (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X49_Y37_N14
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Equal2~2_combout\ & ((POSY(6) & (!\Add2~9\)) # (!POSY(6) & ((\Add2~9\) # (GND))))) # (!\Equal2~2_combout\ & ((POSY(6) & (\Add2~9\ & VCC)) # (!POSY(6) & (!\Add2~9\))))
-- \Add2~11\ = CARRY((\Equal2~2_combout\ & ((!\Add2~9\) # (!POSY(6)))) # (!\Equal2~2_combout\ & (!POSY(6) & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X50_Y37_N12
\POSY[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[6]~10_combout\ = (\POSY[5]~4_combout\ & (!\POSY[5]~16_combout\ & ((\Add2~10_combout\)))) # (!\POSY[5]~4_combout\ & (((POSY(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~4_combout\,
	datab => \POSY[5]~16_combout\,
	datac => POSY(6),
	datad => \Add2~10_combout\,
	combout => \POSY[6]~10_combout\);

-- Location: FF_X50_Y37_N13
\POSY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(6));

-- Location: LCCOMB_X49_Y37_N16
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Equal2~2_combout\ $ (POSY(7) $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Equal2~2_combout\ & (POSY(7) & !\Add2~11\)) # (!\Equal2~2_combout\ & ((POSY(7)) # (!\Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X49_Y37_N18
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Equal2~2_combout\ & ((POSY(8) & (!\Add2~13\)) # (!POSY(8) & ((\Add2~13\) # (GND))))) # (!\Equal2~2_combout\ & ((POSY(8) & (\Add2~13\ & VCC)) # (!POSY(8) & (!\Add2~13\))))
-- \Add2~15\ = CARRY((\Equal2~2_combout\ & ((!\Add2~13\) # (!POSY(8)))) # (!\Equal2~2_combout\ & (!POSY(8) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => POSY(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X49_Y37_N30
\POSY[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[8]~6_combout\ = (\POSY[5]~16_combout\ & (!\process_0~6_combout\ & (!\LessThan4~2_combout\))) # (!\POSY[5]~16_combout\ & (((\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~16_combout\,
	datab => \process_0~6_combout\,
	datac => \LessThan4~2_combout\,
	datad => \Add2~14_combout\,
	combout => \POSY[8]~6_combout\);

-- Location: LCCOMB_X50_Y37_N16
\POSY[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[8]~7_combout\ = (\POSY[5]~3_combout\ & ((\LessThan4~2_combout\ & (\POSY[8]~6_combout\)) # (!\LessThan4~2_combout\ & ((POSY(8)))))) # (!\POSY[5]~3_combout\ & (\POSY[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[8]~6_combout\,
	datab => \POSY[5]~3_combout\,
	datac => POSY(8),
	datad => \LessThan4~2_combout\,
	combout => \POSY[8]~7_combout\);

-- Location: FF_X50_Y37_N17
\POSY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(8));

-- Location: LCCOMB_X49_Y37_N20
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = POSY(9) $ (\Add2~15\ $ (\Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => \Equal2~2_combout\,
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X49_Y37_N0
\POSY[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[9]~5_combout\ = (\POSY[5]~4_combout\ & (!\POSY[5]~16_combout\ & (\Add2~16_combout\))) # (!\POSY[5]~4_combout\ & (((POSY(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~16_combout\,
	datab => \Add2~16_combout\,
	datac => POSY(9),
	datad => \POSY[5]~4_combout\,
	combout => \POSY[9]~5_combout\);

-- Location: FF_X49_Y37_N1
\POSY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(9));

-- Location: LCCOMB_X50_Y37_N24
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (POSY(2) & (POSY(9) & (POSY(5) & POSY(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => POSY(9),
	datac => POSY(5),
	datad => POSY(8),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X51_Y38_N18
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!POSY(6) & (!POSY(4) & (!POSY(3) & !POSY(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => POSY(4),
	datac => POSY(3),
	datad => POSY(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X50_Y37_N18
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!POSY(7) & (\Equal3~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \Equal3~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X50_Y37_N2
\POSX[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[3]~3_combout\ = (\Equal1~2_combout\ & (((\Equal2~2_combout\)))) # (!\Equal1~2_combout\ & (((!\Equal3~1_combout\)) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal2~2_combout\,
	combout => \POSX[3]~3_combout\);

-- Location: LCCOMB_X50_Y37_N20
\POSX[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[3]~4_combout\ = (\Equal5~2_combout\ & (!\SW[2]~input_o\ & ((\POSX[3]~3_combout\) # (!\Equal0~8_combout\)))) # (!\Equal5~2_combout\ & (((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \POSX[3]~3_combout\,
	datac => \Equal0~8_combout\,
	datad => \SW[2]~input_o\,
	combout => \POSX[3]~4_combout\);

-- Location: LCCOMB_X50_Y36_N20
\POSX[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[3]~5_combout\ = (\LessThan2~2_combout\) # (!\POSX[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datad => \POSX[3]~4_combout\,
	combout => \POSX[3]~5_combout\);

-- Location: FF_X49_Y36_N23
\POSX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~10_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(1));

-- Location: LCCOMB_X49_Y36_N2
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (POSX(2) & ((\Equal1~2_combout\ & (!\Add1~1\)) # (!\Equal1~2_combout\ & (\Add1~1\ & VCC)))) # (!POSX(2) & ((\Equal1~2_combout\ & ((\Add1~1\) # (GND))) # (!\Equal1~2_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((POSX(2) & (\Equal1~2_combout\ & !\Add1~1\)) # (!POSX(2) & ((\Equal1~2_combout\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X49_Y36_N28
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\SW[1]~input_o\ & (\Add1~2_combout\ & (!\process_0~6_combout\ & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Add1~2_combout\,
	datac => \process_0~6_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X49_Y36_N29
\POSX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(2));

-- Location: LCCOMB_X49_Y36_N4
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((POSX(3) $ (\Equal1~2_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((POSX(3) & ((\Equal1~2_combout\) # (!\Add1~3\))) # (!POSX(3) & (\Equal1~2_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X50_Y36_N28
\POSX~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~9_combout\ = (\POSX[3]~12_combout\ & ((\LessThan2~2_combout\) # ((\SW[2]~input_o\)))) # (!\POSX[3]~12_combout\ & (((\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \Add1~4_combout\,
	datac => \POSX[3]~12_combout\,
	datad => \SW[2]~input_o\,
	combout => \POSX~9_combout\);

-- Location: FF_X50_Y36_N29
\POSX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~9_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(3));

-- Location: LCCOMB_X49_Y36_N6
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (POSX(4) & ((\Equal1~2_combout\ & ((\Add1~5\) # (GND))) # (!\Equal1~2_combout\ & (!\Add1~5\)))) # (!POSX(4) & ((\Equal1~2_combout\ & (!\Add1~5\)) # (!\Equal1~2_combout\ & (\Add1~5\ & VCC))))
-- \Add1~7\ = CARRY((POSX(4) & ((\Equal1~2_combout\) # (!\Add1~5\))) # (!POSX(4) & (\Equal1~2_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X49_Y36_N8
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((POSX(5) $ (\Equal1~2_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((POSX(5) & (!\Equal1~2_combout\ & !\Add1~7\)) # (!POSX(5) & ((!\Add1~7\) # (!\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => \Equal1~2_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X50_Y36_N8
\POSX~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~7_combout\ = (\POSX[3]~12_combout\ & (((\LessThan2~2_combout\) # (!\Equal5~3_combout\)))) # (!\POSX[3]~12_combout\ & (!\Add1~8_combout\ & ((\LessThan2~2_combout\) # (!\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[3]~12_combout\,
	datab => \Add1~8_combout\,
	datac => \LessThan2~2_combout\,
	datad => \Equal5~3_combout\,
	combout => \POSX~7_combout\);

-- Location: FF_X50_Y36_N9
\POSX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~7_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(5));

-- Location: LCCOMB_X49_Y36_N26
\POSX~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~6_combout\ = (!\LessThan2~2_combout\ & (!\process_0~6_combout\ & ((\Add1~10_combout\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \LessThan2~2_combout\,
	datac => \process_0~6_combout\,
	datad => \SW[1]~input_o\,
	combout => \POSX~6_combout\);

-- Location: FF_X49_Y36_N27
\POSX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~6_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(6));

-- Location: LCCOMB_X47_Y34_N4
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (POSX(6)) # ((POSX(2)) # ((POSX(3)) # (!POSX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => POSX(2),
	datac => POSX(3),
	datad => POSX(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y34_N30
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (POSX(7)) # ((\LessThan2~0_combout\) # ((!POSX(4)) # (!POSX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => \LessThan2~0_combout\,
	datac => POSX(5),
	datad => POSX(4),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X50_Y36_N26
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (POSX(10) & ((POSX(9)) # ((\LessThan2~1_combout\ & POSX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => POSX(9),
	datac => POSX(8),
	datad => POSX(10),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X50_Y36_N30
\POSX[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[3]~12_combout\ = (\SW[2]~input_o\) # ((\SW[0]~input_o\) # ((\LessThan2~2_combout\) # (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \LessThan2~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \POSX[3]~12_combout\);

-- Location: LCCOMB_X50_Y36_N18
\POSX~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX~8_combout\ = (\POSX[3]~12_combout\ & (((\LessThan2~2_combout\) # (!\Equal5~3_combout\)))) # (!\POSX[3]~12_combout\ & (!\Add1~6_combout\ & ((\LessThan2~2_combout\) # (!\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[3]~12_combout\,
	datab => \Add1~6_combout\,
	datac => \LessThan2~2_combout\,
	datad => \Equal5~3_combout\,
	combout => \POSX~8_combout\);

-- Location: FF_X50_Y36_N19
\POSX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSX~8_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(4));

-- Location: LCCOMB_X51_Y35_N4
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (POSX(10) & (POSX(6) & (POSX(5) & POSX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => POSX(6),
	datac => POSX(5),
	datad => POSX(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X51_Y35_N30
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!POSX(4) & (\Equal2~1_combout\ & (!POSX(9) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \Equal2~1_combout\,
	datac => POSX(9),
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X49_Y37_N26
\POSY~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY~11_combout\ = (\POSY[5]~16_combout\ & ((\SW[2]~input_o\) # ((\LessThan4~2_combout\)))) # (!\POSY[5]~16_combout\ & (((!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[5]~16_combout\,
	datab => \SW[2]~input_o\,
	datac => \LessThan4~2_combout\,
	datad => \Add2~8_combout\,
	combout => \POSY~11_combout\);

-- Location: FF_X49_Y37_N27
\POSY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY~11_combout\,
	ena => \POSY[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(5));

-- Location: LCCOMB_X51_Y39_N6
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (POSY(3)) # (((POSY(2)) # (!POSY(1))) # (!POSY(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => POSY(4),
	datac => POSY(2),
	datad => POSY(1),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X51_Y39_N4
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (POSY(7) & (POSY(9) & POSY(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datac => POSY(9),
	datad => POSY(8),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X50_Y39_N2
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (POSY(6) & (\LessThan4~0_combout\ & ((\LessThan4~1_combout\) # (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => \LessThan4~1_combout\,
	datac => POSY(6),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X50_Y37_N6
\POSY[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[5]~16_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\) # ((\SW[0]~input_o\) # (\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \POSY[5]~16_combout\);

-- Location: LCCOMB_X50_Y37_N8
\POSY[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[7]~8_combout\ = (\POSY[5]~16_combout\ & (!\process_0~6_combout\ & ((!\LessThan4~2_combout\)))) # (!\POSY[5]~16_combout\ & (((\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \POSY[5]~16_combout\,
	datac => \Add2~12_combout\,
	datad => \LessThan4~2_combout\,
	combout => \POSY[7]~8_combout\);

-- Location: LCCOMB_X50_Y37_N10
\POSY[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[7]~9_combout\ = (\POSY[5]~3_combout\ & ((\LessThan4~2_combout\ & (\POSY[7]~8_combout\)) # (!\LessThan4~2_combout\ & ((POSY(7)))))) # (!\POSY[5]~3_combout\ & (\POSY[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[7]~8_combout\,
	datab => \POSY[5]~3_combout\,
	datac => POSY(7),
	datad => \LessThan4~2_combout\,
	combout => \POSY[7]~9_combout\);

-- Location: FF_X50_Y37_N11
\POSY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \POSY[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSY(7));

-- Location: LCCOMB_X50_Y37_N28
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!POSY(2) & (!POSY(9) & (!POSY(5) & !POSY(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => POSY(9),
	datac => POSY(5),
	datad => POSY(8),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X50_Y37_N22
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!POSY(7) & (\Equal1~1_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X49_Y36_N30
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (!\SW[1]~input_o\ & (!\process_0~6_combout\ & (\Add1~12_combout\ & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \process_0~6_combout\,
	datac => \Add1~12_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Add1~18_combout\);

-- Location: FF_X49_Y36_N31
\POSX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \Add1~18_combout\,
	ena => \POSX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => POSX(7));

-- Location: LCCOMB_X47_Y34_N0
\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = POSX(9) $ (((POSX(8) & POSX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datac => POSX(7),
	datad => POSX(9),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X50_Y34_N0
\Add20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add20~0_combout\ = POSX(8) $ (POSX(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSX(8),
	datad => POSX(7),
	combout => \Add20~0_combout\);

-- Location: LCCOMB_X47_Y34_N6
\LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((!POSX(1) & !HPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(1),
	datab => HPOS(1),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X47_Y34_N8
\LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((HPOS(2) & ((!\LessThan7~1_cout\) # (!POSX(2)))) # (!HPOS(2) & (!POSX(2) & !\LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => POSX(2),
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X47_Y34_N10
\LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((HPOS(3) & (POSX(3) & !\LessThan7~3_cout\)) # (!HPOS(3) & ((POSX(3)) # (!\LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => POSX(3),
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X47_Y34_N12
\LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((POSX(4) & ((HPOS(4)) # (!\LessThan7~5_cout\))) # (!POSX(4) & (HPOS(4) & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => HPOS(4),
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X47_Y34_N14
\LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((POSX(5) & (!HPOS(5) & !\LessThan7~7_cout\)) # (!POSX(5) & ((!\LessThan7~7_cout\) # (!HPOS(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => HPOS(5),
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X47_Y34_N16
\LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((POSX(6) & (HPOS(6) & !\LessThan7~9_cout\)) # (!POSX(6) & ((HPOS(6)) # (!\LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => HPOS(6),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X47_Y34_N18
\LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((POSX(7) & (!HPOS(7) & !\LessThan7~11_cout\)) # (!POSX(7) & ((!\LessThan7~11_cout\) # (!HPOS(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => HPOS(7),
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X47_Y34_N20
\LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((\Add20~0_combout\ & (HPOS(8) & !\LessThan7~13_cout\)) # (!\Add20~0_combout\ & ((HPOS(8)) # (!\LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => HPOS(8),
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X47_Y34_N22
\LessThan7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan7~16_combout\ = (\Add5~0_combout\ & ((!HPOS(9)) # (!\LessThan7~15_cout\))) # (!\Add5~0_combout\ & (!\LessThan7~15_cout\ & !HPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datad => HPOS(9),
	cin => \LessThan7~15_cout\,
	combout => \LessThan7~16_combout\);

-- Location: LCCOMB_X47_Y34_N2
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\LessThan7~16_combout\) # ((POSX(7) & (POSX(9) & POSX(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => POSX(9),
	datac => \LessThan7~16_combout\,
	datad => POSX(8),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X47_Y36_N0
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X47_Y35_N10
\LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY(HPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HPOS(0),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X47_Y35_N12
\LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((HPOS(1) & (!POSX(1) & !\LessThan6~1_cout\)) # (!HPOS(1) & ((!\LessThan6~1_cout\) # (!POSX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => POSX(1),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X47_Y35_N14
\LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((HPOS(2) & ((!\LessThan6~3_cout\) # (!POSX(2)))) # (!HPOS(2) & (!POSX(2) & !\LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => POSX(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X47_Y35_N16
\LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((HPOS(3) & (POSX(3) & !\LessThan6~5_cout\)) # (!HPOS(3) & ((POSX(3)) # (!\LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => POSX(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X47_Y35_N18
\LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((HPOS(4) & ((POSX(4)) # (!\LessThan6~7_cout\))) # (!HPOS(4) & (POSX(4) & !\LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(4),
	datab => POSX(4),
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X47_Y35_N20
\LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((HPOS(5) & (!POSX(5) & !\LessThan6~9_cout\)) # (!HPOS(5) & ((!\LessThan6~9_cout\) # (!POSX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datab => POSX(5),
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X47_Y35_N22
\LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((HPOS(6) & ((!\LessThan6~11_cout\) # (!POSX(6)))) # (!HPOS(6) & (!POSX(6) & !\LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => POSX(6),
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X47_Y35_N24
\LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((HPOS(7) & (POSX(7) & !\LessThan6~13_cout\)) # (!HPOS(7) & ((POSX(7)) # (!\LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => POSX(7),
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X47_Y35_N26
\LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~17_cout\ = CARRY((POSX(8) & (HPOS(8) & !\LessThan6~15_cout\)) # (!POSX(8) & ((HPOS(8)) # (!\LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => HPOS(8),
	datad => VCC,
	cin => \LessThan6~15_cout\,
	cout => \LessThan6~17_cout\);

-- Location: LCCOMB_X47_Y35_N28
\LessThan6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan6~18_combout\ = (HPOS(9) & ((\LessThan6~17_cout\) # (!POSX(9)))) # (!HPOS(9) & (\LessThan6~17_cout\ & !POSX(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(9),
	datad => POSX(9),
	cin => \LessThan6~17_cout\,
	combout => \LessThan6~18_combout\);

-- Location: LCCOMB_X47_Y36_N26
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\LessThan6~18_combout\ & !POSX(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan6~18_combout\,
	datad => POSX(10),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X50_Y38_N12
\LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~1_cout\ = CARRY(VPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(0),
	datad => VCC,
	cout => \LessThan8~1_cout\);

-- Location: LCCOMB_X50_Y38_N14
\LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~3_cout\ = CARRY((POSY(1) & (!VPOS(1) & !\LessThan8~1_cout\)) # (!POSY(1) & ((!\LessThan8~1_cout\) # (!VPOS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	cin => \LessThan8~1_cout\,
	cout => \LessThan8~3_cout\);

-- Location: LCCOMB_X50_Y38_N16
\LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~5_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan8~3_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan8~3_cout\,
	cout => \LessThan8~5_cout\);

-- Location: LCCOMB_X50_Y38_N18
\LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~7_cout\ = CARRY((VPOS(3) & (POSY(3) & !\LessThan8~5_cout\)) # (!VPOS(3) & ((POSY(3)) # (!\LessThan8~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => POSY(3),
	datad => VCC,
	cin => \LessThan8~5_cout\,
	cout => \LessThan8~7_cout\);

-- Location: LCCOMB_X50_Y38_N20
\LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~9_cout\ = CARRY((POSY(4) & ((VPOS(4)) # (!\LessThan8~7_cout\))) # (!POSY(4) & (VPOS(4) & !\LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => VPOS(4),
	datad => VCC,
	cin => \LessThan8~7_cout\,
	cout => \LessThan8~9_cout\);

-- Location: LCCOMB_X50_Y38_N22
\LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~11_cout\ = CARRY((POSY(5) & (!VPOS(5) & !\LessThan8~9_cout\)) # (!POSY(5) & ((!\LessThan8~9_cout\) # (!VPOS(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => VPOS(5),
	datad => VCC,
	cin => \LessThan8~9_cout\,
	cout => \LessThan8~11_cout\);

-- Location: LCCOMB_X50_Y38_N24
\LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~13_cout\ = CARRY((VPOS(6) & ((!\LessThan8~11_cout\) # (!POSY(6)))) # (!VPOS(6) & (!POSY(6) & !\LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => POSY(6),
	datad => VCC,
	cin => \LessThan8~11_cout\,
	cout => \LessThan8~13_cout\);

-- Location: LCCOMB_X50_Y38_N26
\LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~15_cout\ = CARRY((POSY(7) & ((!\LessThan8~13_cout\) # (!VPOS(7)))) # (!POSY(7) & (!VPOS(7) & !\LessThan8~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => VPOS(7),
	datad => VCC,
	cin => \LessThan8~13_cout\,
	cout => \LessThan8~15_cout\);

-- Location: LCCOMB_X50_Y38_N28
\LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~17_cout\ = CARRY((VPOS(8) & ((!\LessThan8~15_cout\) # (!POSY(8)))) # (!VPOS(8) & (!POSY(8) & !\LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(8),
	datab => POSY(8),
	datad => VCC,
	cin => \LessThan8~15_cout\,
	cout => \LessThan8~17_cout\);

-- Location: LCCOMB_X50_Y38_N30
\LessThan8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~18_combout\ = (POSY(9) & (\LessThan8~17_cout\ & VPOS(9))) # (!POSY(9) & ((\LessThan8~17_cout\) # (VPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => VPOS(9),
	cin => \LessThan8~17_cout\,
	combout => \LessThan8~18_combout\);

-- Location: LCCOMB_X51_Y39_N8
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = POSY(9) $ (((POSY(7) & POSY(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datac => POSY(9),
	datad => POSY(8),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X51_Y39_N2
\Add6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = POSY(7) $ (POSY(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datad => POSY(8),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X51_Y39_N10
\LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~1_cout\ = CARRY((!VPOS(1) & !POSY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(1),
	datab => POSY(1),
	datad => VCC,
	cout => \LessThan9~1_cout\);

-- Location: LCCOMB_X51_Y39_N12
\LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~3_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan9~1_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan9~1_cout\,
	cout => \LessThan9~3_cout\);

-- Location: LCCOMB_X51_Y39_N14
\LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~5_cout\ = CARRY((POSY(3) & ((!\LessThan9~3_cout\) # (!VPOS(3)))) # (!POSY(3) & (!VPOS(3) & !\LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => VPOS(3),
	datad => VCC,
	cin => \LessThan9~3_cout\,
	cout => \LessThan9~5_cout\);

-- Location: LCCOMB_X51_Y39_N16
\LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~7_cout\ = CARRY((VPOS(4) & ((POSY(4)) # (!\LessThan9~5_cout\))) # (!VPOS(4) & (POSY(4) & !\LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(4),
	datab => POSY(4),
	datad => VCC,
	cin => \LessThan9~5_cout\,
	cout => \LessThan9~7_cout\);

-- Location: LCCOMB_X51_Y39_N18
\LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~9_cout\ = CARRY((VPOS(5) & (!POSY(5) & !\LessThan9~7_cout\)) # (!VPOS(5) & ((!\LessThan9~7_cout\) # (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => POSY(5),
	datad => VCC,
	cin => \LessThan9~7_cout\,
	cout => \LessThan9~9_cout\);

-- Location: LCCOMB_X51_Y39_N20
\LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~11_cout\ = CARRY((VPOS(6) & ((!\LessThan9~9_cout\) # (!POSY(6)))) # (!VPOS(6) & (!POSY(6) & !\LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => POSY(6),
	datad => VCC,
	cin => \LessThan9~9_cout\,
	cout => \LessThan9~11_cout\);

-- Location: LCCOMB_X51_Y39_N22
\LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~13_cout\ = CARRY((POSY(7) & (!VPOS(7) & !\LessThan9~11_cout\)) # (!POSY(7) & ((!\LessThan9~11_cout\) # (!VPOS(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => VPOS(7),
	datad => VCC,
	cin => \LessThan9~11_cout\,
	cout => \LessThan9~13_cout\);

-- Location: LCCOMB_X51_Y39_N24
\LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~15_cout\ = CARRY((VPOS(8) & ((!\LessThan9~13_cout\) # (!\Add6~1_combout\))) # (!VPOS(8) & (!\Add6~1_combout\ & !\LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(8),
	datab => \Add6~1_combout\,
	datad => VCC,
	cin => \LessThan9~13_cout\,
	cout => \LessThan9~15_cout\);

-- Location: LCCOMB_X51_Y39_N26
\LessThan9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan9~16_combout\ = (\Add6~0_combout\ & ((!VPOS(9)) # (!\LessThan9~15_cout\))) # (!\Add6~0_combout\ & (!\LessThan9~15_cout\ & !VPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~0_combout\,
	datad => VPOS(9),
	cin => \LessThan9~15_cout\,
	combout => \LessThan9~16_combout\);

-- Location: LCCOMB_X51_Y39_N30
\spriteon2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon2~0_combout\ = (\LessThan8~18_combout\ & ((\LessThan4~0_combout\) # (\LessThan9~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~18_combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan9~16_combout\,
	combout => \spriteon2~0_combout\);

-- Location: LCCOMB_X47_Y36_N8
\spriteon1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon1~0_combout\ = (\process_0~0_combout\) # ((\process_0~1_combout\ & (\process_0~2_combout\ & \spriteon2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \process_0~2_combout\,
	datad => \spriteon2~0_combout\,
	combout => \spriteon1~0_combout\);

-- Location: FF_X47_Y36_N9
spriteon1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \spriteon1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spriteon1~q\);

-- Location: LCCOMB_X50_Y35_N18
\Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (HPOS(9)) # ((HPOS(7) & HPOS(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => HPOS(9),
	datad => HPOS(8),
	combout => \Add11~0_combout\);

-- Location: LCCOMB_X50_Y35_N20
\Add11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~1_combout\ = HPOS(9) $ (((HPOS(7) & HPOS(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => HPOS(9),
	datad => HPOS(8),
	combout => \Add11~1_combout\);

-- Location: LCCOMB_X50_Y35_N22
\Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = HPOS(7) $ (HPOS(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datad => HPOS(8),
	combout => \Add11~2_combout\);

-- Location: LCCOMB_X51_Y35_N6
\Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (HPOS(1) & ((POSX(1)) # (GND))) # (!HPOS(1) & (POSX(1) $ (VCC)))
-- \Add12~1\ = CARRY((HPOS(1)) # (POSX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => POSX(1),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X51_Y35_N8
\Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (POSX(2) & ((HPOS(2) & (!\Add12~1\)) # (!HPOS(2) & ((\Add12~1\) # (GND))))) # (!POSX(2) & ((HPOS(2) & (\Add12~1\ & VCC)) # (!HPOS(2) & (!\Add12~1\))))
-- \Add12~3\ = CARRY((POSX(2) & ((!\Add12~1\) # (!HPOS(2)))) # (!POSX(2) & (!HPOS(2) & !\Add12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => HPOS(2),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X51_Y35_N10
\Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((POSX(3) $ (HPOS(3) $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((POSX(3) & (HPOS(3) & !\Add12~3\)) # (!POSX(3) & ((HPOS(3)) # (!\Add12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => HPOS(3),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X51_Y35_N12
\Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (POSX(4) & ((HPOS(4) & (\Add12~5\ & VCC)) # (!HPOS(4) & (!\Add12~5\)))) # (!POSX(4) & ((HPOS(4) & (!\Add12~5\)) # (!HPOS(4) & ((\Add12~5\) # (GND)))))
-- \Add12~7\ = CARRY((POSX(4) & (!HPOS(4) & !\Add12~5\)) # (!POSX(4) & ((!\Add12~5\) # (!HPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => HPOS(4),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X51_Y35_N14
\Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((POSX(5) $ (HPOS(5) $ (!\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((POSX(5) & ((HPOS(5)) # (!\Add12~7\))) # (!POSX(5) & (HPOS(5) & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => HPOS(5),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X51_Y35_N16
\Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (HPOS(6) & ((POSX(6) & (!\Add12~9\)) # (!POSX(6) & (\Add12~9\ & VCC)))) # (!HPOS(6) & ((POSX(6) & ((\Add12~9\) # (GND))) # (!POSX(6) & (!\Add12~9\))))
-- \Add12~11\ = CARRY((HPOS(6) & (POSX(6) & !\Add12~9\)) # (!HPOS(6) & ((POSX(6)) # (!\Add12~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => POSX(6),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X51_Y35_N18
\Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((POSX(7) $ (HPOS(7) $ (!\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((POSX(7) & (!HPOS(7) & !\Add12~11\)) # (!POSX(7) & ((!\Add12~11\) # (!HPOS(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => HPOS(7),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X51_Y35_N20
\Add12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (POSX(8) & ((\Add11~2_combout\ & (!\Add12~13\)) # (!\Add11~2_combout\ & ((\Add12~13\) # (GND))))) # (!POSX(8) & ((\Add11~2_combout\ & (\Add12~13\ & VCC)) # (!\Add11~2_combout\ & (!\Add12~13\))))
-- \Add12~15\ = CARRY((POSX(8) & ((!\Add12~13\) # (!\Add11~2_combout\))) # (!POSX(8) & (!\Add11~2_combout\ & !\Add12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => \Add11~2_combout\,
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X51_Y35_N22
\Add12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = ((POSX(9) $ (\Add11~1_combout\ $ (!\Add12~15\)))) # (GND)
-- \Add12~17\ = CARRY((POSX(9) & (!\Add11~1_combout\ & !\Add12~15\)) # (!POSX(9) & ((!\Add12~15\) # (!\Add11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => \Add11~1_combout\,
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X51_Y35_N24
\Add12~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (POSX(10) & ((\Add11~0_combout\ & (!\Add12~17\)) # (!\Add11~0_combout\ & ((\Add12~17\) # (GND))))) # (!POSX(10) & ((\Add11~0_combout\ & (\Add12~17\ & VCC)) # (!\Add11~0_combout\ & (!\Add12~17\))))
-- \Add12~19\ = CARRY((POSX(10) & ((!\Add12~17\) # (!\Add11~0_combout\))) # (!POSX(10) & (!\Add11~0_combout\ & !\Add12~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => \Add11~0_combout\,
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X51_Y35_N26
\Add12~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = \Add12~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add12~19\,
	combout => \Add12~20_combout\);

-- Location: LCCOMB_X49_Y35_N30
\process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (!POSX(10) & (((!HPOS(8) & !HPOS(7))) # (!HPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => HPOS(9),
	datac => HPOS(8),
	datad => HPOS(7),
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X50_Y35_N0
\LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~1_cout\ = CARRY((!HPOS(1) & !POSX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => POSX(1),
	datad => VCC,
	cout => \LessThan12~1_cout\);

-- Location: LCCOMB_X50_Y35_N2
\LessThan12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~3_cout\ = CARRY((HPOS(2) & ((!\LessThan12~1_cout\) # (!POSX(2)))) # (!HPOS(2) & (!POSX(2) & !\LessThan12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => POSX(2),
	datad => VCC,
	cin => \LessThan12~1_cout\,
	cout => \LessThan12~3_cout\);

-- Location: LCCOMB_X50_Y35_N4
\LessThan12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~5_cout\ = CARRY((HPOS(3) & (POSX(3) & !\LessThan12~3_cout\)) # (!HPOS(3) & ((POSX(3)) # (!\LessThan12~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => POSX(3),
	datad => VCC,
	cin => \LessThan12~3_cout\,
	cout => \LessThan12~5_cout\);

-- Location: LCCOMB_X50_Y35_N6
\LessThan12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~7_cout\ = CARRY((HPOS(4) & ((POSX(4)) # (!\LessThan12~5_cout\))) # (!HPOS(4) & (POSX(4) & !\LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(4),
	datab => POSX(4),
	datad => VCC,
	cin => \LessThan12~5_cout\,
	cout => \LessThan12~7_cout\);

-- Location: LCCOMB_X50_Y35_N8
\LessThan12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~9_cout\ = CARRY((HPOS(5) & (!POSX(5) & !\LessThan12~7_cout\)) # (!HPOS(5) & ((!\LessThan12~7_cout\) # (!POSX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datab => POSX(5),
	datad => VCC,
	cin => \LessThan12~7_cout\,
	cout => \LessThan12~9_cout\);

-- Location: LCCOMB_X50_Y35_N10
\LessThan12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~11_cout\ = CARRY((HPOS(6) & ((!\LessThan12~9_cout\) # (!POSX(6)))) # (!HPOS(6) & (!POSX(6) & !\LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => POSX(6),
	datad => VCC,
	cin => \LessThan12~9_cout\,
	cout => \LessThan12~11_cout\);

-- Location: LCCOMB_X50_Y35_N12
\LessThan12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~13_cout\ = CARRY((HPOS(7) & (POSX(7) & !\LessThan12~11_cout\)) # (!HPOS(7) & ((POSX(7)) # (!\LessThan12~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => POSX(7),
	datad => VCC,
	cin => \LessThan12~11_cout\,
	cout => \LessThan12~13_cout\);

-- Location: LCCOMB_X50_Y35_N14
\LessThan12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~15_cout\ = CARRY((POSX(8) & (HPOS(8) & !\LessThan12~13_cout\)) # (!POSX(8) & ((HPOS(8)) # (!\LessThan12~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => HPOS(8),
	datad => VCC,
	cin => \LessThan12~13_cout\,
	cout => \LessThan12~15_cout\);

-- Location: LCCOMB_X50_Y35_N16
\LessThan12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan12~16_combout\ = (HPOS(9) & (!\LessThan12~15_cout\ & POSX(9))) # (!HPOS(9) & ((POSX(9)) # (!\LessThan12~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datad => POSX(9),
	cin => \LessThan12~15_cout\,
	combout => \LessThan12~16_combout\);

-- Location: LCCOMB_X51_Y37_N28
\process_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\process_0~12_combout\ & !\LessThan12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~12_combout\,
	datad => \LessThan12~16_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X50_Y36_N12
\Add20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add20~4_combout\ = (POSX(10)) # ((POSX(9) & ((POSX(8)) # (POSX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => POSX(9),
	datac => POSX(8),
	datad => POSX(7),
	combout => \Add20~4_combout\);

-- Location: LCCOMB_X51_Y34_N30
\Add20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add20~2_combout\ = (POSX(9) & ((POSX(8)) # (POSX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => POSX(8),
	datad => POSX(7),
	combout => \Add20~2_combout\);

-- Location: LCCOMB_X47_Y34_N24
\Add20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add20~3_combout\ = (!POSX(8) & !POSX(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datac => POSX(7),
	combout => \Add20~3_combout\);

-- Location: LCCOMB_X49_Y34_N0
\Add9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY((!POSX(7) & !\Add20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => \Add20~0_combout\,
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X49_Y34_N2
\Add9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~3_cout\ = CARRY((POSX(9) $ (\Add20~3_combout\)) # (!\Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => \Add20~3_combout\,
	datad => VCC,
	cin => \Add9~1_cout\,
	cout => \Add9~3_cout\);

-- Location: LCCOMB_X49_Y34_N4
\Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add9~3_cout\ & ((POSX(10) $ (!\Add20~2_combout\)))) # (!\Add9~3_cout\ & (POSX(10) $ (\Add20~2_combout\ $ (GND))))
-- \Add9~5\ = CARRY((!\Add9~3_cout\ & (POSX(10) $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datab => \Add20~2_combout\,
	datad => VCC,
	cin => \Add9~3_cout\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X49_Y34_N6
\Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add20~4_combout\ & ((\Add9~5\) # (GND))) # (!\Add20~4_combout\ & (!\Add9~5\))
-- \Add9~7\ = CARRY((\Add20~4_combout\) # (!\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add20~4_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X49_Y34_N8
\Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = \Add9~7\ $ (\Add20~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add20~4_combout\,
	cin => \Add9~7\,
	combout => \Add9~8_combout\);

-- Location: LCCOMB_X49_Y34_N12
\LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~1_cout\ = CARRY((!POSX(1) & !HPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(1),
	datab => HPOS(1),
	datad => VCC,
	cout => \LessThan15~1_cout\);

-- Location: LCCOMB_X49_Y34_N14
\LessThan15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~3_cout\ = CARRY((POSX(2) & (HPOS(2) & !\LessThan15~1_cout\)) # (!POSX(2) & ((HPOS(2)) # (!\LessThan15~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => HPOS(2),
	datad => VCC,
	cin => \LessThan15~1_cout\,
	cout => \LessThan15~3_cout\);

-- Location: LCCOMB_X49_Y34_N16
\LessThan15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~5_cout\ = CARRY((POSX(3) & ((!\LessThan15~3_cout\) # (!HPOS(3)))) # (!POSX(3) & (!HPOS(3) & !\LessThan15~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => HPOS(3),
	datad => VCC,
	cin => \LessThan15~3_cout\,
	cout => \LessThan15~5_cout\);

-- Location: LCCOMB_X49_Y34_N18
\LessThan15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~7_cout\ = CARRY((POSX(4) & ((HPOS(4)) # (!\LessThan15~5_cout\))) # (!POSX(4) & (HPOS(4) & !\LessThan15~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => HPOS(4),
	datad => VCC,
	cin => \LessThan15~5_cout\,
	cout => \LessThan15~7_cout\);

-- Location: LCCOMB_X49_Y34_N20
\LessThan15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~9_cout\ = CARRY((HPOS(5) & (!POSX(5) & !\LessThan15~7_cout\)) # (!HPOS(5) & ((!\LessThan15~7_cout\) # (!POSX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datab => POSX(5),
	datad => VCC,
	cin => \LessThan15~7_cout\,
	cout => \LessThan15~9_cout\);

-- Location: LCCOMB_X49_Y34_N22
\LessThan15~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~11_cout\ = CARRY((POSX(6) & (HPOS(6) & !\LessThan15~9_cout\)) # (!POSX(6) & ((HPOS(6)) # (!\LessThan15~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => HPOS(6),
	datad => VCC,
	cin => \LessThan15~9_cout\,
	cout => \LessThan15~11_cout\);

-- Location: LCCOMB_X49_Y34_N24
\LessThan15~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~13_cout\ = CARRY((POSX(7) & ((!\LessThan15~11_cout\) # (!HPOS(7)))) # (!POSX(7) & (!HPOS(7) & !\LessThan15~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => HPOS(7),
	datad => VCC,
	cin => \LessThan15~11_cout\,
	cout => \LessThan15~13_cout\);

-- Location: LCCOMB_X49_Y34_N26
\LessThan15~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~15_cout\ = CARRY((HPOS(8) & ((!\LessThan15~13_cout\) # (!POSX(8)))) # (!HPOS(8) & (!POSX(8) & !\LessThan15~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datab => POSX(8),
	datad => VCC,
	cin => \LessThan15~13_cout\,
	cout => \LessThan15~15_cout\);

-- Location: LCCOMB_X49_Y34_N28
\LessThan15~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~16_combout\ = (POSX(9) & (!HPOS(9) & !\LessThan15~15_cout\)) # (!POSX(9) & ((!\LessThan15~15_cout\) # (!HPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => HPOS(9),
	cin => \LessThan15~15_cout\,
	combout => \LessThan15~16_combout\);

-- Location: LCCOMB_X50_Y34_N28
\LessThan15~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan15~18_combout\ = (\Add9~4_combout\) # ((\Add9~6_combout\) # (\LessThan15~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~4_combout\,
	datac => \Add9~6_combout\,
	datad => \LessThan15~16_combout\,
	combout => \LessThan15~18_combout\);

-- Location: LCCOMB_X50_Y36_N10
\Add20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add20~1_combout\ = POSX(9) $ (((POSX(8)) # (POSX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSX(9),
	datac => POSX(8),
	datad => POSX(7),
	combout => \Add20~1_combout\);

-- Location: LCCOMB_X50_Y34_N6
\LessThan14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~1_cout\ = CARRY(HPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(0),
	datad => VCC,
	cout => \LessThan14~1_cout\);

-- Location: LCCOMB_X50_Y34_N8
\LessThan14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~3_cout\ = CARRY((HPOS(1) & (!POSX(1) & !\LessThan14~1_cout\)) # (!HPOS(1) & ((!\LessThan14~1_cout\) # (!POSX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => POSX(1),
	datad => VCC,
	cin => \LessThan14~1_cout\,
	cout => \LessThan14~3_cout\);

-- Location: LCCOMB_X50_Y34_N10
\LessThan14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~5_cout\ = CARRY((POSX(2) & (HPOS(2) & !\LessThan14~3_cout\)) # (!POSX(2) & ((HPOS(2)) # (!\LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => HPOS(2),
	datad => VCC,
	cin => \LessThan14~3_cout\,
	cout => \LessThan14~5_cout\);

-- Location: LCCOMB_X50_Y34_N12
\LessThan14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~7_cout\ = CARRY((HPOS(3) & (POSX(3) & !\LessThan14~5_cout\)) # (!HPOS(3) & ((POSX(3)) # (!\LessThan14~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => POSX(3),
	datad => VCC,
	cin => \LessThan14~5_cout\,
	cout => \LessThan14~7_cout\);

-- Location: LCCOMB_X50_Y34_N14
\LessThan14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~9_cout\ = CARRY((POSX(4) & ((HPOS(4)) # (!\LessThan14~7_cout\))) # (!POSX(4) & (HPOS(4) & !\LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => HPOS(4),
	datad => VCC,
	cin => \LessThan14~7_cout\,
	cout => \LessThan14~9_cout\);

-- Location: LCCOMB_X50_Y34_N16
\LessThan14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~11_cout\ = CARRY((POSX(5) & (!HPOS(5) & !\LessThan14~9_cout\)) # (!POSX(5) & ((!\LessThan14~9_cout\) # (!HPOS(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => HPOS(5),
	datad => VCC,
	cin => \LessThan14~9_cout\,
	cout => \LessThan14~11_cout\);

-- Location: LCCOMB_X50_Y34_N18
\LessThan14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~13_cout\ = CARRY((HPOS(6) & ((!\LessThan14~11_cout\) # (!POSX(6)))) # (!HPOS(6) & (!POSX(6) & !\LessThan14~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => POSX(6),
	datad => VCC,
	cin => \LessThan14~11_cout\,
	cout => \LessThan14~13_cout\);

-- Location: LCCOMB_X50_Y34_N20
\LessThan14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~15_cout\ = CARRY((HPOS(7) & (!POSX(7) & !\LessThan14~13_cout\)) # (!HPOS(7) & ((!\LessThan14~13_cout\) # (!POSX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => POSX(7),
	datad => VCC,
	cin => \LessThan14~13_cout\,
	cout => \LessThan14~15_cout\);

-- Location: LCCOMB_X50_Y34_N22
\LessThan14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~17_cout\ = CARRY((HPOS(8) & ((\Add20~0_combout\) # (!\LessThan14~15_cout\))) # (!HPOS(8) & (\Add20~0_combout\ & !\LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datab => \Add20~0_combout\,
	datad => VCC,
	cin => \LessThan14~15_cout\,
	cout => \LessThan14~17_cout\);

-- Location: LCCOMB_X50_Y34_N24
\LessThan14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan14~18_combout\ = (HPOS(9) & ((\LessThan14~17_cout\) # (!\Add20~1_combout\))) # (!HPOS(9) & (\LessThan14~17_cout\ & !\Add20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datad => \Add20~1_combout\,
	cin => \LessThan14~17_cout\,
	combout => \LessThan14~18_combout\);

-- Location: LCCOMB_X50_Y34_N26
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\Add20~2_combout\ & (\LessThan14~18_combout\ & !POSX(10))) # (!\Add20~2_combout\ & ((\LessThan14~18_combout\) # (!POSX(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~2_combout\,
	datab => \LessThan14~18_combout\,
	datac => POSX(10),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X51_Y37_N4
\LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~1_cout\ = CARRY((!POSY(1) & !VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	cout => \LessThan10~1_cout\);

-- Location: LCCOMB_X51_Y37_N6
\LessThan10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~3_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan10~1_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan10~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan10~1_cout\,
	cout => \LessThan10~3_cout\);

-- Location: LCCOMB_X51_Y37_N8
\LessThan10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~5_cout\ = CARRY((POSY(3) & ((!\LessThan10~3_cout\) # (!VPOS(3)))) # (!POSY(3) & (!VPOS(3) & !\LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => VPOS(3),
	datad => VCC,
	cin => \LessThan10~3_cout\,
	cout => \LessThan10~5_cout\);

-- Location: LCCOMB_X51_Y37_N10
\LessThan10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~7_cout\ = CARRY((POSY(4) & ((VPOS(4)) # (!\LessThan10~5_cout\))) # (!POSY(4) & (VPOS(4) & !\LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => VPOS(4),
	datad => VCC,
	cin => \LessThan10~5_cout\,
	cout => \LessThan10~7_cout\);

-- Location: LCCOMB_X51_Y37_N12
\LessThan10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~9_cout\ = CARRY((VPOS(5) & (!POSY(5) & !\LessThan10~7_cout\)) # (!VPOS(5) & ((!\LessThan10~7_cout\) # (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => POSY(5),
	datad => VCC,
	cin => \LessThan10~7_cout\,
	cout => \LessThan10~9_cout\);

-- Location: LCCOMB_X51_Y37_N14
\LessThan10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~11_cout\ = CARRY((VPOS(6) & ((!\LessThan10~9_cout\) # (!POSY(6)))) # (!VPOS(6) & (!POSY(6) & !\LessThan10~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => POSY(6),
	datad => VCC,
	cin => \LessThan10~9_cout\,
	cout => \LessThan10~11_cout\);

-- Location: LCCOMB_X51_Y37_N16
\LessThan10~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~13_cout\ = CARRY((POSY(7) & ((!\LessThan10~11_cout\) # (!VPOS(7)))) # (!POSY(7) & (!VPOS(7) & !\LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => VPOS(7),
	datad => VCC,
	cin => \LessThan10~11_cout\,
	cout => \LessThan10~13_cout\);

-- Location: LCCOMB_X51_Y37_N18
\LessThan10~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~15_cout\ = CARRY((POSY(8) & (VPOS(8) & !\LessThan10~13_cout\)) # (!POSY(8) & ((VPOS(8)) # (!\LessThan10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => VPOS(8),
	datad => VCC,
	cin => \LessThan10~13_cout\,
	cout => \LessThan10~15_cout\);

-- Location: LCCOMB_X51_Y37_N20
\LessThan10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan10~16_combout\ = (POSY(9) & ((!VPOS(9)) # (!\LessThan10~15_cout\))) # (!POSY(9) & (!\LessThan10~15_cout\ & !VPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(9),
	datad => VPOS(9),
	cin => \LessThan10~15_cout\,
	combout => \LessThan10~16_combout\);

-- Location: LCCOMB_X51_Y37_N30
\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (!\LessThan10~16_combout\ & (!\C1|process_0~7_combout\ & !VPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~16_combout\,
	datac => \C1|process_0~7_combout\,
	datad => VPOS(9),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X50_Y34_N30
\process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!\Add9~8_combout\ & (\LessThan15~18_combout\ & (\process_0~4_combout\ & \process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \LessThan15~18_combout\,
	datac => \process_0~4_combout\,
	datad => \process_0~10_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X49_Y37_N28
\Add19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~0_combout\ = (POSY(8) & (POSY(7) & (!POSY(5) & POSY(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(7),
	datac => POSY(5),
	datad => POSY(6),
	combout => \Add19~0_combout\);

-- Location: LCCOMB_X49_Y39_N24
\Add19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~5_combout\ = \Add19~0_combout\ $ (POSY(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datac => POSY(9),
	combout => \Add19~5_combout\);

-- Location: LCCOMB_X51_Y39_N0
\Add19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = POSY(8) $ (((POSY(7) & (POSY(6) & !POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => POSY(6),
	datac => POSY(5),
	datad => POSY(8),
	combout => \Add19~2_combout\);

-- Location: LCCOMB_X50_Y39_N0
\Add19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~1_combout\ = POSY(7) $ (((POSY(6) & !POSY(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(7),
	datac => POSY(6),
	datad => POSY(5),
	combout => \Add19~1_combout\);

-- Location: LCCOMB_X49_Y39_N22
\Add19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~3_combout\ = POSY(5) $ (!POSY(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSY(5),
	datad => POSY(6),
	combout => \Add19~3_combout\);

-- Location: LCCOMB_X49_Y39_N0
\LessThan16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~1_cout\ = CARRY((!VPOS(1) & !POSY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(1),
	datab => POSY(1),
	datad => VCC,
	cout => \LessThan16~1_cout\);

-- Location: LCCOMB_X49_Y39_N2
\LessThan16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~3_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan16~1_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan16~1_cout\,
	cout => \LessThan16~3_cout\);

-- Location: LCCOMB_X49_Y39_N4
\LessThan16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~5_cout\ = CARRY((POSY(3) & ((!\LessThan16~3_cout\) # (!VPOS(3)))) # (!POSY(3) & (!VPOS(3) & !\LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => VPOS(3),
	datad => VCC,
	cin => \LessThan16~3_cout\,
	cout => \LessThan16~5_cout\);

-- Location: LCCOMB_X49_Y39_N6
\LessThan16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~7_cout\ = CARRY((POSY(4) & ((VPOS(4)) # (!\LessThan16~5_cout\))) # (!POSY(4) & (VPOS(4) & !\LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => VPOS(4),
	datad => VCC,
	cin => \LessThan16~5_cout\,
	cout => \LessThan16~7_cout\);

-- Location: LCCOMB_X49_Y39_N8
\LessThan16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~9_cout\ = CARRY((VPOS(5) & (POSY(5) & !\LessThan16~7_cout\)) # (!VPOS(5) & ((POSY(5)) # (!\LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => POSY(5),
	datad => VCC,
	cin => \LessThan16~7_cout\,
	cout => \LessThan16~9_cout\);

-- Location: LCCOMB_X49_Y39_N10
\LessThan16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~11_cout\ = CARRY((\Add19~3_combout\ & (VPOS(6) & !\LessThan16~9_cout\)) # (!\Add19~3_combout\ & ((VPOS(6)) # (!\LessThan16~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~3_combout\,
	datab => VPOS(6),
	datad => VCC,
	cin => \LessThan16~9_cout\,
	cout => \LessThan16~11_cout\);

-- Location: LCCOMB_X49_Y39_N12
\LessThan16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~13_cout\ = CARRY((VPOS(7) & (\Add19~1_combout\ & !\LessThan16~11_cout\)) # (!VPOS(7) & ((\Add19~1_combout\) # (!\LessThan16~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(7),
	datab => \Add19~1_combout\,
	datad => VCC,
	cin => \LessThan16~11_cout\,
	cout => \LessThan16~13_cout\);

-- Location: LCCOMB_X49_Y39_N14
\LessThan16~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~15_cout\ = CARRY((VPOS(8) & ((!\LessThan16~13_cout\) # (!\Add19~2_combout\))) # (!VPOS(8) & (!\Add19~2_combout\ & !\LessThan16~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(8),
	datab => \Add19~2_combout\,
	datad => VCC,
	cin => \LessThan16~13_cout\,
	cout => \LessThan16~15_cout\);

-- Location: LCCOMB_X49_Y39_N16
\LessThan16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan16~16_combout\ = (\Add19~5_combout\ & (!\LessThan16~15_cout\ & !VPOS(9))) # (!\Add19~5_combout\ & ((!VPOS(9)) # (!\LessThan16~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add19~5_combout\,
	datad => VPOS(9),
	cin => \LessThan16~15_cout\,
	combout => \LessThan16~16_combout\);

-- Location: LCCOMB_X50_Y39_N24
\LessThan17~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~20_combout\ = (\Add19~2_combout\ & (\Add19~1_combout\ & (\Add19~0_combout\ $ (!POSY(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => POSY(9),
	datac => \Add19~2_combout\,
	datad => \Add19~1_combout\,
	combout => \LessThan17~20_combout\);

-- Location: LCCOMB_X50_Y39_N28
\Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \Add19~0_combout\ $ (POSY(9) $ (((\Add19~2_combout\ & \Add19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => POSY(9),
	datac => \Add19~2_combout\,
	datad => \Add19~1_combout\,
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X51_Y39_N28
\Add10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = POSY(8) $ (((POSY(7)) # ((POSY(6) & !POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => POSY(6),
	datac => POSY(5),
	datad => POSY(8),
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X50_Y39_N6
\LessThan17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~3_cout\ = CARRY((!POSY(1) & !VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	cout => \LessThan17~3_cout\);

-- Location: LCCOMB_X50_Y39_N8
\LessThan17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~5_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan17~3_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan17~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan17~3_cout\,
	cout => \LessThan17~5_cout\);

-- Location: LCCOMB_X50_Y39_N10
\LessThan17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~7_cout\ = CARRY((POSY(3) & ((!\LessThan17~5_cout\) # (!VPOS(3)))) # (!POSY(3) & (!VPOS(3) & !\LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => VPOS(3),
	datad => VCC,
	cin => \LessThan17~5_cout\,
	cout => \LessThan17~7_cout\);

-- Location: LCCOMB_X50_Y39_N12
\LessThan17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~9_cout\ = CARRY((VPOS(4) & ((POSY(4)) # (!\LessThan17~7_cout\))) # (!VPOS(4) & (POSY(4) & !\LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(4),
	datab => POSY(4),
	datad => VCC,
	cin => \LessThan17~7_cout\,
	cout => \LessThan17~9_cout\);

-- Location: LCCOMB_X50_Y39_N14
\LessThan17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~11_cout\ = CARRY((POSY(5) & ((!\LessThan17~9_cout\) # (!VPOS(5)))) # (!POSY(5) & (!VPOS(5) & !\LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => VPOS(5),
	datad => VCC,
	cin => \LessThan17~9_cout\,
	cout => \LessThan17~11_cout\);

-- Location: LCCOMB_X50_Y39_N16
\LessThan17~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~13_cout\ = CARRY((VPOS(6) & ((!\LessThan17~11_cout\) # (!\Add19~3_combout\))) # (!VPOS(6) & (!\Add19~3_combout\ & !\LessThan17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => \Add19~3_combout\,
	datad => VCC,
	cin => \LessThan17~11_cout\,
	cout => \LessThan17~13_cout\);

-- Location: LCCOMB_X50_Y39_N18
\LessThan17~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~15_cout\ = CARRY((VPOS(7) & (!\Add19~1_combout\ & !\LessThan17~13_cout\)) # (!VPOS(7) & ((!\LessThan17~13_cout\) # (!\Add19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(7),
	datab => \Add19~1_combout\,
	datad => VCC,
	cin => \LessThan17~13_cout\,
	cout => \LessThan17~15_cout\);

-- Location: LCCOMB_X50_Y39_N20
\LessThan17~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~17_cout\ = CARRY((\Add10~1_combout\ & (VPOS(8) & !\LessThan17~15_cout\)) # (!\Add10~1_combout\ & ((VPOS(8)) # (!\LessThan17~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => VPOS(8),
	datad => VCC,
	cin => \LessThan17~15_cout\,
	cout => \LessThan17~17_cout\);

-- Location: LCCOMB_X50_Y39_N22
\LessThan17~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~18_combout\ = (\Add10~0_combout\ & (!\LessThan17~17_cout\ & !VPOS(9))) # (!\Add10~0_combout\ & ((!VPOS(9)) # (!\LessThan17~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~0_combout\,
	datad => VPOS(9),
	cin => \LessThan17~17_cout\,
	combout => \LessThan17~18_combout\);

-- Location: LCCOMB_X47_Y36_N10
\Add19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (POSY(9)) # (\Add19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(9),
	datac => \Add19~0_combout\,
	combout => \Add19~4_combout\);

-- Location: LCCOMB_X50_Y39_N4
\process_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\LessThan17~18_combout\ & ((\Add19~4_combout\ & (!\LessThan16~16_combout\)) # (!\Add19~4_combout\ & ((\LessThan17~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~16_combout\,
	datab => \LessThan17~20_combout\,
	datac => \LessThan17~18_combout\,
	datad => \Add19~4_combout\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X51_Y37_N0
\Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\process_0~12_combout\ & (!\C1|process_0~7_combout\ & !VPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~12_combout\,
	datac => \C1|process_0~7_combout\,
	datad => VPOS(9),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X51_Y37_N2
\Add7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = (\process_0~6_combout\) # ((!\LessThan12~16_combout\ & (\Add7~0_combout\ & !\LessThan10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \LessThan12~16_combout\,
	datac => \Add7~0_combout\,
	datad => \LessThan10~16_combout\,
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X51_Y36_N0
\Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add7~1_combout\) # ((\process_0~13_combout\ & (!\process_0~11_combout\ & \process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \process_0~11_combout\,
	datac => \process_0~14_combout\,
	datad => \Add7~1_combout\,
	combout => \Add7~2_combout\);

-- Location: LCCOMB_X51_Y34_N0
\Add16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = (POSX(1) & ((HPOS(1)) # (GND))) # (!POSX(1) & (HPOS(1) $ (VCC)))
-- \Add16~1\ = CARRY((POSX(1)) # (HPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(1),
	datab => HPOS(1),
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X51_Y34_N2
\Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (HPOS(2) & ((POSX(2) & (!\Add16~1\)) # (!POSX(2) & (\Add16~1\ & VCC)))) # (!HPOS(2) & ((POSX(2) & ((\Add16~1\) # (GND))) # (!POSX(2) & (!\Add16~1\))))
-- \Add16~3\ = CARRY((HPOS(2) & (POSX(2) & !\Add16~1\)) # (!HPOS(2) & ((POSX(2)) # (!\Add16~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => POSX(2),
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X51_Y34_N4
\Add16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = ((HPOS(3) $ (POSX(3) $ (\Add16~3\)))) # (GND)
-- \Add16~5\ = CARRY((HPOS(3) & ((!\Add16~3\) # (!POSX(3)))) # (!HPOS(3) & (!POSX(3) & !\Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => POSX(3),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X51_Y34_N6
\Add16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (POSX(4) & ((HPOS(4) & (\Add16~5\ & VCC)) # (!HPOS(4) & (!\Add16~5\)))) # (!POSX(4) & ((HPOS(4) & (!\Add16~5\)) # (!HPOS(4) & ((\Add16~5\) # (GND)))))
-- \Add16~7\ = CARRY((POSX(4) & (!HPOS(4) & !\Add16~5\)) # (!POSX(4) & ((!\Add16~5\) # (!HPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => HPOS(4),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X51_Y34_N8
\Add16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = ((POSX(5) $ (HPOS(5) $ (!\Add16~7\)))) # (GND)
-- \Add16~9\ = CARRY((POSX(5) & ((HPOS(5)) # (!\Add16~7\))) # (!POSX(5) & (HPOS(5) & !\Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => HPOS(5),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X51_Y34_N10
\Add16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (POSX(6) & ((HPOS(6) & (!\Add16~9\)) # (!HPOS(6) & ((\Add16~9\) # (GND))))) # (!POSX(6) & ((HPOS(6) & (\Add16~9\ & VCC)) # (!HPOS(6) & (!\Add16~9\))))
-- \Add16~11\ = CARRY((POSX(6) & ((!\Add16~9\) # (!HPOS(6)))) # (!POSX(6) & (!HPOS(6) & !\Add16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => HPOS(6),
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X51_Y34_N12
\Add16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = ((HPOS(7) $ (POSX(7) $ (\Add16~11\)))) # (GND)
-- \Add16~13\ = CARRY((HPOS(7) & ((!\Add16~11\) # (!POSX(7)))) # (!HPOS(7) & (!POSX(7) & !\Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => POSX(7),
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X51_Y34_N14
\Add16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = (HPOS(8) & ((POSX(8) & (!\Add16~13\)) # (!POSX(8) & (\Add16~13\ & VCC)))) # (!HPOS(8) & ((POSX(8) & ((\Add16~13\) # (GND))) # (!POSX(8) & (!\Add16~13\))))
-- \Add16~15\ = CARRY((HPOS(8) & (POSX(8) & !\Add16~13\)) # (!HPOS(8) & ((POSX(8)) # (!\Add16~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datab => POSX(8),
	datad => VCC,
	cin => \Add16~13\,
	combout => \Add16~14_combout\,
	cout => \Add16~15\);

-- Location: LCCOMB_X51_Y34_N16
\Add16~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~16_combout\ = ((POSX(9) $ (HPOS(9) $ (\Add16~15\)))) # (GND)
-- \Add16~17\ = CARRY((POSX(9) & (HPOS(9) & !\Add16~15\)) # (!POSX(9) & ((HPOS(9)) # (!\Add16~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => HPOS(9),
	datad => VCC,
	cin => \Add16~15\,
	combout => \Add16~16_combout\,
	cout => \Add16~17\);

-- Location: LCCOMB_X51_Y34_N18
\Add16~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~18_combout\ = (POSX(10) & ((\Add16~17\) # (GND))) # (!POSX(10) & (!\Add16~17\))
-- \Add16~19\ = CARRY((POSX(10)) # (!\Add16~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(10),
	datad => VCC,
	cin => \Add16~17\,
	combout => \Add16~18_combout\,
	cout => \Add16~19\);

-- Location: LCCOMB_X51_Y34_N20
\Add16~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add16~20_combout\ = \Add16~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add16~19\,
	combout => \Add16~20_combout\);

-- Location: LCCOMB_X51_Y36_N10
\Add7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~3_combout\ = (\Add7~2_combout\ & ((\Add16~20_combout\))) # (!\Add7~2_combout\ & (\Add12~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~20_combout\,
	datab => \Add7~2_combout\,
	datad => \Add16~20_combout\,
	combout => \Add7~3_combout\);

-- Location: LCCOMB_X51_Y38_N4
\Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = VPOS(5) $ (VPOS(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(5),
	datac => VPOS(6),
	combout => \Add13~0_combout\);

-- Location: LCCOMB_X51_Y38_N20
\Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = (POSY(1) & ((VPOS(1)) # (GND))) # (!POSY(1) & (VPOS(1) $ (VCC)))
-- \Add14~1\ = CARRY((POSY(1)) # (VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X51_Y38_N22
\Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (VPOS(2) & ((POSY(2) & (!\Add14~1\)) # (!POSY(2) & (\Add14~1\ & VCC)))) # (!VPOS(2) & ((POSY(2) & ((\Add14~1\) # (GND))) # (!POSY(2) & (!\Add14~1\))))
-- \Add14~3\ = CARRY((VPOS(2) & (POSY(2) & !\Add14~1\)) # (!VPOS(2) & ((POSY(2)) # (!\Add14~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(2),
	datab => POSY(2),
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X51_Y38_N24
\Add14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = ((VPOS(3) $ (POSY(3) $ (\Add14~3\)))) # (GND)
-- \Add14~5\ = CARRY((VPOS(3) & ((!\Add14~3\) # (!POSY(3)))) # (!VPOS(3) & (!POSY(3) & !\Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => POSY(3),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X51_Y38_N26
\Add14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (VPOS(4) & ((POSY(4) & (\Add14~5\ & VCC)) # (!POSY(4) & (!\Add14~5\)))) # (!VPOS(4) & ((POSY(4) & (!\Add14~5\)) # (!POSY(4) & ((\Add14~5\) # (GND)))))
-- \Add14~7\ = CARRY((VPOS(4) & (!POSY(4) & !\Add14~5\)) # (!VPOS(4) & ((!\Add14~5\) # (!POSY(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(4),
	datab => POSY(4),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X51_Y38_N28
\Add14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = ((POSY(5) $ (VPOS(5) $ (\Add14~7\)))) # (GND)
-- \Add14~9\ = CARRY((POSY(5) & ((!\Add14~7\) # (!VPOS(5)))) # (!POSY(5) & (!VPOS(5) & !\Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => VPOS(5),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X51_Y38_N30
\Add14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = POSY(6) $ (\Add13~0_combout\ $ (\Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => \Add13~0_combout\,
	cin => \Add14~9\,
	combout => \Add14~10_combout\);

-- Location: LCCOMB_X50_Y38_N0
\Add17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (POSY(1) & ((VPOS(1)) # (GND))) # (!POSY(1) & (VPOS(1) $ (VCC)))
-- \Add17~1\ = CARRY((POSY(1)) # (VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X50_Y38_N2
\Add17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (POSY(2) & ((VPOS(2) & (!\Add17~1\)) # (!VPOS(2) & ((\Add17~1\) # (GND))))) # (!POSY(2) & ((VPOS(2) & (\Add17~1\ & VCC)) # (!VPOS(2) & (!\Add17~1\))))
-- \Add17~3\ = CARRY((POSY(2) & ((!\Add17~1\) # (!VPOS(2)))) # (!POSY(2) & (!VPOS(2) & !\Add17~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X50_Y38_N4
\Add17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = ((VPOS(3) $ (POSY(3) $ (\Add17~3\)))) # (GND)
-- \Add17~5\ = CARRY((VPOS(3) & ((!\Add17~3\) # (!POSY(3)))) # (!VPOS(3) & (!POSY(3) & !\Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => POSY(3),
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X50_Y38_N6
\Add17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (POSY(4) & ((VPOS(4) & (\Add17~5\ & VCC)) # (!VPOS(4) & (!\Add17~5\)))) # (!POSY(4) & ((VPOS(4) & (!\Add17~5\)) # (!VPOS(4) & ((\Add17~5\) # (GND)))))
-- \Add17~7\ = CARRY((POSY(4) & (!VPOS(4) & !\Add17~5\)) # (!POSY(4) & ((!\Add17~5\) # (!VPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => VPOS(4),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X50_Y38_N8
\Add17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~8_combout\ = ((POSY(5) $ (VPOS(5) $ (!\Add17~7\)))) # (GND)
-- \Add17~9\ = CARRY((POSY(5) & ((VPOS(5)) # (!\Add17~7\))) # (!POSY(5) & (VPOS(5) & !\Add17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => VPOS(5),
	datad => VCC,
	cin => \Add17~7\,
	combout => \Add17~8_combout\,
	cout => \Add17~9\);

-- Location: LCCOMB_X50_Y38_N10
\Add17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = VPOS(6) $ (POSY(6) $ (!\Add17~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => POSY(6),
	cin => \Add17~9\,
	combout => \Add17~10_combout\);

-- Location: LCCOMB_X51_Y38_N14
\Add14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = (\process_0~11_combout\ & (((\Add17~10_combout\)))) # (!\process_0~11_combout\ & ((\Add7~1_combout\ & ((\Add17~10_combout\))) # (!\Add7~1_combout\ & (\Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add7~1_combout\,
	datac => \Add14~10_combout\,
	datad => \Add17~10_combout\,
	combout => \Add14~12_combout\);

-- Location: LCCOMB_X51_Y38_N16
\Add14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~13_combout\ = (\Add7~1_combout\ & (\Add17~8_combout\)) # (!\Add7~1_combout\ & ((\process_0~11_combout\ & (\Add17~8_combout\)) # (!\process_0~11_combout\ & ((\Add14~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~8_combout\,
	datab => \Add7~1_combout\,
	datac => \process_0~11_combout\,
	datad => \Add14~8_combout\,
	combout => \Add14~13_combout\);

-- Location: LCCOMB_X51_Y38_N10
\Add14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = (\process_0~11_combout\ & (\Add17~6_combout\)) # (!\process_0~11_combout\ & ((\Add7~1_combout\ & (\Add17~6_combout\)) # (!\Add7~1_combout\ & ((\Add14~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add17~6_combout\,
	datac => \Add14~6_combout\,
	datad => \Add7~1_combout\,
	combout => \Add14~14_combout\);

-- Location: LCCOMB_X51_Y38_N12
\Add14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~15_combout\ = (\process_0~11_combout\ & (((\Add17~4_combout\)))) # (!\process_0~11_combout\ & ((\Add7~1_combout\ & (\Add17~4_combout\)) # (!\Add7~1_combout\ & ((\Add14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add7~1_combout\,
	datac => \Add17~4_combout\,
	datad => \Add14~4_combout\,
	combout => \Add14~15_combout\);

-- Location: LCCOMB_X51_Y36_N28
\Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add7~2_combout\ & ((\Add16~18_combout\))) # (!\Add7~2_combout\ & (\Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~18_combout\,
	datac => \Add16~18_combout\,
	datad => \Add7~2_combout\,
	combout => \Add7~4_combout\);

-- Location: LCCOMB_X51_Y36_N30
\Add7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~5_combout\ = (\Add7~2_combout\ & ((\Add16~16_combout\))) # (!\Add7~2_combout\ & (\Add12~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~16_combout\,
	datab => \Add16~16_combout\,
	datad => \Add7~2_combout\,
	combout => \Add7~5_combout\);

-- Location: LCCOMB_X51_Y38_N6
\Add14~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~16_combout\ = (\process_0~11_combout\ & (((\Add17~2_combout\)))) # (!\process_0~11_combout\ & ((\Add7~1_combout\ & ((\Add17~2_combout\))) # (!\Add7~1_combout\ & (\Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add7~1_combout\,
	datac => \Add14~2_combout\,
	datad => \Add17~2_combout\,
	combout => \Add14~16_combout\);

-- Location: LCCOMB_X51_Y38_N0
\Add14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add14~17_combout\ = (\process_0~11_combout\ & (((\Add17~0_combout\)))) # (!\process_0~11_combout\ & ((\Add7~1_combout\ & (\Add17~0_combout\)) # (!\Add7~1_combout\ & ((\Add14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add7~1_combout\,
	datac => \Add17~0_combout\,
	datad => \Add14~0_combout\,
	combout => \Add14~17_combout\);

-- Location: LCCOMB_X51_Y36_N8
\Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add7~2_combout\ & ((\Add16~14_combout\))) # (!\Add7~2_combout\ & (\Add12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~14_combout\,
	datac => \Add16~14_combout\,
	datad => \Add7~2_combout\,
	combout => \Add7~6_combout\);

-- Location: LCCOMB_X51_Y36_N2
\Add7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add7~7_combout\ = (\Add7~2_combout\ & ((\Add16~12_combout\))) # (!\Add7~2_combout\ & (\Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datac => \Add16~12_combout\,
	datad => \Add7~2_combout\,
	combout => \Add7~7_combout\);

-- Location: LCCOMB_X51_Y36_N14
\address[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[7]~9_combout\ = (VPOS(0) & (\Add7~7_combout\ $ (VCC))) # (!VPOS(0) & (\Add7~7_combout\ & VCC))
-- \address[7]~10\ = CARRY((VPOS(0) & \Add7~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(0),
	datab => \Add7~7_combout\,
	datad => VCC,
	combout => \address[7]~9_combout\,
	cout => \address[7]~10\);

-- Location: LCCOMB_X51_Y36_N16
\address[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[8]~11_combout\ = (\Add14~17_combout\ & ((\Add7~6_combout\ & (\address[7]~10\ & VCC)) # (!\Add7~6_combout\ & (!\address[7]~10\)))) # (!\Add14~17_combout\ & ((\Add7~6_combout\ & (!\address[7]~10\)) # (!\Add7~6_combout\ & ((\address[7]~10\) # 
-- (GND)))))
-- \address[8]~12\ = CARRY((\Add14~17_combout\ & (!\Add7~6_combout\ & !\address[7]~10\)) # (!\Add14~17_combout\ & ((!\address[7]~10\) # (!\Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~17_combout\,
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \address[7]~10\,
	combout => \address[8]~11_combout\,
	cout => \address[8]~12\);

-- Location: LCCOMB_X51_Y36_N18
\address[9]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[9]~13_combout\ = ((\Add7~5_combout\ $ (\Add14~16_combout\ $ (!\address[8]~12\)))) # (GND)
-- \address[9]~14\ = CARRY((\Add7~5_combout\ & ((\Add14~16_combout\) # (!\address[8]~12\))) # (!\Add7~5_combout\ & (\Add14~16_combout\ & !\address[8]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~5_combout\,
	datab => \Add14~16_combout\,
	datad => VCC,
	cin => \address[8]~12\,
	combout => \address[9]~13_combout\,
	cout => \address[9]~14\);

-- Location: LCCOMB_X51_Y36_N20
\address[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[10]~15_combout\ = (\Add14~15_combout\ & ((\Add7~4_combout\ & (\address[9]~14\ & VCC)) # (!\Add7~4_combout\ & (!\address[9]~14\)))) # (!\Add14~15_combout\ & ((\Add7~4_combout\ & (!\address[9]~14\)) # (!\Add7~4_combout\ & ((\address[9]~14\) # 
-- (GND)))))
-- \address[10]~16\ = CARRY((\Add14~15_combout\ & (!\Add7~4_combout\ & !\address[9]~14\)) # (!\Add14~15_combout\ & ((!\address[9]~14\) # (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~15_combout\,
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \address[9]~14\,
	combout => \address[10]~15_combout\,
	cout => \address[10]~16\);

-- Location: LCCOMB_X51_Y36_N22
\address[11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[11]~17_combout\ = ((\Add7~3_combout\ $ (\Add14~14_combout\ $ (!\address[10]~16\)))) # (GND)
-- \address[11]~18\ = CARRY((\Add7~3_combout\ & ((\Add14~14_combout\) # (!\address[10]~16\))) # (!\Add7~3_combout\ & (\Add14~14_combout\ & !\address[10]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~3_combout\,
	datab => \Add14~14_combout\,
	datad => VCC,
	cin => \address[10]~16\,
	combout => \address[11]~17_combout\,
	cout => \address[11]~18\);

-- Location: LCCOMB_X51_Y36_N24
\address[12]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[12]~19_combout\ = (\Add7~3_combout\ & ((\Add14~13_combout\ & (\address[11]~18\ & VCC)) # (!\Add14~13_combout\ & (!\address[11]~18\)))) # (!\Add7~3_combout\ & ((\Add14~13_combout\ & (!\address[11]~18\)) # (!\Add14~13_combout\ & ((\address[11]~18\) 
-- # (GND)))))
-- \address[12]~20\ = CARRY((\Add7~3_combout\ & (!\Add14~13_combout\ & !\address[11]~18\)) # (!\Add7~3_combout\ & ((!\address[11]~18\) # (!\Add14~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~3_combout\,
	datab => \Add14~13_combout\,
	datad => VCC,
	cin => \address[11]~18\,
	combout => \address[12]~19_combout\,
	cout => \address[12]~20\);

-- Location: LCCOMB_X51_Y36_N26
\address[13]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[13]~21_combout\ = \Add7~3_combout\ $ (\address[12]~20\ $ (!\Add14~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~3_combout\,
	datad => \Add14~12_combout\,
	cin => \address[12]~20\,
	combout => \address[13]~21_combout\);

-- Location: LCCOMB_X50_Y34_N2
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\Add9~8_combout\ & (\process_0~4_combout\ & \LessThan15~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datac => \process_0~4_combout\,
	datad => \LessThan15~18_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X51_Y36_N4
\address~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~23_combout\ = (\process_0~0_combout\) # ((!\process_0~6_combout\ & ((!\process_0~10_combout\) # (!\process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \process_0~6_combout\,
	datac => \process_0~10_combout\,
	datad => \process_0~0_combout\,
	combout => \address~23_combout\);

-- Location: LCCOMB_X51_Y36_N6
\address~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~35_combout\ = (\address~23_combout\ & ((\LessThan12~16_combout\) # ((!\process_0~12_combout\) # (!\process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~16_combout\,
	datab => \process_0~14_combout\,
	datac => \address~23_combout\,
	datad => \process_0~12_combout\,
	combout => \address~35_combout\);

-- Location: LCCOMB_X51_Y36_N12
\address[13]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[13]~24_combout\ = (!\process_0~11_combout\ & (\address~35_combout\ & ((!\process_0~14_combout\) # (!\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~11_combout\,
	datac => \process_0~14_combout\,
	datad => \address~35_combout\,
	combout => \address[13]~24_combout\);

-- Location: FF_X51_Y36_N27
\address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[13]~21_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(13));

-- Location: LCCOMB_X52_Y35_N2
\address[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address[2]~27_combout\ = (\address~23_combout\ & (((\process_0~11_combout\) # (!\process_0~13_combout\)) # (!\process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => \process_0~11_combout\,
	datac => \process_0~13_combout\,
	datad => \address~23_combout\,
	combout => \address[2]~27_combout\);

-- Location: LCCOMB_X52_Y35_N6
\address~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~25_combout\ = (\process_0~14_combout\ & (\process_0~5_combout\ & (!\process_0~13_combout\ & \address~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~13_combout\,
	datad => \address~23_combout\,
	combout => \address~25_combout\);

-- Location: LCCOMB_X52_Y35_N16
\address~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~26_combout\ = (\address~25_combout\) # ((\address~23_combout\ & \process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~23_combout\,
	datac => \process_0~11_combout\,
	datad => \address~25_combout\,
	combout => \address~26_combout\);

-- Location: LCCOMB_X52_Y35_N24
\address~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~28_combout\ = (HPOS(0) & ((\address~26_combout\) # (!\address[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~27_combout\,
	datac => HPOS(0),
	datad => \address~26_combout\,
	combout => \address~28_combout\);

-- Location: FF_X52_Y35_N25
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~28_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: LCCOMB_X52_Y35_N10
\address~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~29_combout\ = (\Add16~0_combout\ & (((\Add12~0_combout\ & \address~26_combout\)) # (!\address[2]~27_combout\))) # (!\Add16~0_combout\ & (((\Add12~0_combout\ & \address~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add12~0_combout\,
	datad => \address~26_combout\,
	combout => \address~29_combout\);

-- Location: FF_X52_Y35_N11
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~29_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LCCOMB_X52_Y35_N20
\address~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~30_combout\ = (\Add16~2_combout\ & (((\Add12~2_combout\ & \address~26_combout\)) # (!\address[2]~27_combout\))) # (!\Add16~2_combout\ & (((\Add12~2_combout\ & \address~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add12~2_combout\,
	datad => \address~26_combout\,
	combout => \address~30_combout\);

-- Location: FF_X52_Y35_N21
\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~30_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

-- Location: LCCOMB_X52_Y35_N22
\address~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~31_combout\ = (\Add12~4_combout\ & ((\address~26_combout\) # ((!\address[2]~27_combout\ & \Add16~4_combout\)))) # (!\Add12~4_combout\ & (!\address[2]~27_combout\ & (\Add16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add16~4_combout\,
	datad => \address~26_combout\,
	combout => \address~31_combout\);

-- Location: FF_X52_Y35_N23
\address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~31_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(3));

-- Location: LCCOMB_X52_Y35_N8
\address~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~32_combout\ = (\Add12~6_combout\ & ((\address~26_combout\) # ((!\address[2]~27_combout\ & \Add16~6_combout\)))) # (!\Add12~6_combout\ & (!\address[2]~27_combout\ & (\Add16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add16~6_combout\,
	datad => \address~26_combout\,
	combout => \address~32_combout\);

-- Location: FF_X52_Y35_N9
\address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~32_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(4));

-- Location: LCCOMB_X52_Y35_N26
\address~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~33_combout\ = (\Add16~8_combout\ & (((\Add12~8_combout\ & \address~26_combout\)) # (!\address[2]~27_combout\))) # (!\Add16~8_combout\ & (((\Add12~8_combout\ & \address~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~8_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add12~8_combout\,
	datad => \address~26_combout\,
	combout => \address~33_combout\);

-- Location: FF_X52_Y35_N27
\address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~33_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(5));

-- Location: LCCOMB_X52_Y35_N4
\address~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \address~34_combout\ = (\Add16~10_combout\ & (((\Add12~10_combout\ & \address~26_combout\)) # (!\address[2]~27_combout\))) # (!\Add16~10_combout\ & (((\Add12~10_combout\ & \address~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~10_combout\,
	datab => \address[2]~27_combout\,
	datac => \Add12~10_combout\,
	datad => \address~26_combout\,
	combout => \address~34_combout\);

-- Location: FF_X52_Y35_N5
\address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address~34_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(6));

-- Location: FF_X51_Y36_N15
\address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[7]~9_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(7));

-- Location: FF_X51_Y36_N17
\address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[8]~11_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(8));

-- Location: FF_X51_Y36_N19
\address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[9]~13_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(9));

-- Location: FF_X51_Y36_N21
\address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[10]~15_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(10));

-- Location: FF_X51_Y36_N23
\address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[11]~17_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(11));

-- Location: FF_X51_Y36_N25
\address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \address[12]~19_combout\,
	sclr => \address[13]~24_combout\,
	ena => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(12));

-- Location: M9K_X53_Y31_N0
\c0|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB7EBFFFFFFFFFFFFFFFFFFFFFFFFFF4FC3DAFFFFFFFFFFFFFFFFFFFFFFFFF91E00389FFFFFFFFFFFFFFFFFFFFFFFF4DC001F27FFFFFFFFFFFFFFFFFFFFFF33E00107E8FFFFFFFFFFFFFFFFFFFFFD8BC00003D9BFFFFFFFFFFFFFFFFFFFF33E0824103C4FFFFFFFFFFFFFFFFFFFFDB800FF00193FFFFFFFFFFFFFFFFFFFF46002FF40063FFFFFFFFFFFFFFFFFFFFCE00BFFD0063FFFFFFFFFFFFFFFFFFFF52427FFF424AFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFE9A01FFFF80597FFFFFFFFFFFFFFFFFF924037FFE4024DFFFFFFFFFFFFFFFFFE8986800000819B7FFFFFFFFFFFFFC7FD26101F9BF8126DBFE1FFFFFFFFFFCFF49863A090E8F64DE7F6FFFFFFFFF98591E330333DCC2CF7F9A3BFFFFFFFE5CDFFBE022000080475FBF3E7FFFFFF933E327828387F1C1525487CE9FFFFFF4DDDC8E0F8B1FFC61FE89BFFFE7FFFF9320231185A4180C24A73CC40489FFFE6CC03C4F1204F0031293332043267FFCF3000092047C70600E107F4020CB7FFFCC0001F01D7C35FFE8241E6000737FE9F00033FD6C7DE75DFE00BF380207B727C00607FE1075E7D87409FF986003FCCF0007963B4075FB6E95081C63C001F3",
	mem_init1 => X"8E001F9D908075FEB4D200B9BFF80051EA417FBE330075FFFF02071C5EFE825FEE03FFE7E48075D5F753878FD7FFC057AA01FFB7C00075FFE5540047C07F8055C583FEE78810FDEAEED58C11EF7FC0A3F383FE0B90011C6BFFDF2004F0FF41EFE181FF0F05100C3CEF688423B57F81B7EA81FE8388067FFFFFE201EF417F8177FA804E0EC02081FFFF0141E4303C01DFEF80FF06484167FFFF86135710DF0197FD40070C97E12000000D1BF030E0029FFCE409BCBFE04000480187F978D0233FF860073CDFF12E4002748FFEFEE0061FF9A00347DBF5678FF8F48FCA22E00D5FFFFF8715AAF4DB10089B2F70D1E0FF7FFADFC33620F1692BD4928FE218C3EA5F",
	mem_init0 => X"FE4F0303EBBE87966FE17FBF7CC480FFFFF8A43F4D1FC457E0A3FDB8FE211F3FFF0486F19B7FF56E77AFF88086A534FFFFFEA6ECAAEF9B883ED9F97BBB253FFFFFFE84BCA2AFFD5FE297FA0669257FFFFFFC84D9FD7FD4C66149FA98A3657FFFFFFCA07F3D7F079239F1FDB6F0057FFFFFFC807FE87F3006748CFDEF58053FFFFFFEA00657FED5702EABFE4354057FFFFFFEA07E97FF108FA928FFB73E055FFFFFFEA07FF7FD4CEE5632BFE8BE057FFFFFFEA07FFFFE41C25A82FFFFFE057FFFFFFEA07FFFE16C5B0A2687FFFE057FFFFFFCA07FF43E57401AEA6A3FFE057FFFFFFCA07FFD9CAB17BCC537B7FE057FFFFFFCA07FEED7678E79F6AB7FFE057FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y30_N0
\c0|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFCA07F3869D9B3099BD610FE057FFFFFFCA07F4B38AF8BBBF794D9FE057FFFFFFCA07DE0927B3E0AEC41073E057FFFFFFEA07AD8B5714FC8AACD337E057FFFFFFEA07F3DAB99AC210D957C9E057FFFFFFEA0784F015DCE684A80E41E055FFFFFFEA04E01B8F35048CF5DF876055FFFFFFEA05A82C6A3F1FC05236B1C057FFFFFFCA06ECA7A1357D5E856535E057FFFFFFCA068D83F59C1379BA41E1E057FFFFFFCA04B0027D6B29D2FE54454057FFFFFFEA079E135FC6FFBFCA48EDA057FFFFFFEA01B75F27CF3E2BF4EB67A053FFFFF84A0037022FEBF8AFC6486440520FFFFF8A072F2755FEAFCFBBECD90053F3FFE03A032369F5BDF94C271371A04B07F",
	mem_init2 => X"FADFC07E7C254BEEFFBF02D2F802FA5FFEFF0042B1846DD3CF97B2EB4400FF7FFBB00045752E69B0871E5721FE00051FFA00004CB769E3E7F70666AC9E00029FFDE400528F1F6DFA9FF46634480003BFFD40006FE4779FFD7FDBD414FC0002AFE980FFFE6F4F4FE6FFF65676FDFF03D7E9807FD78C5F1FC11FF24F59DBFA01DFE281FFC83F95BFE3FFF971E71BFF8157E381FFFFFF2BFFE7AFFDBC1F2FFF80C7F383FFE9759A7FFB6FFE53B687FFC0CFC503FFF799CBFFE048FF6B9A2FFFC0A3AA01FFFDD1EFFFEA07FFD793EFFF8055EE23FFEE7FBFFF9F56DFFFD7BFFF0057CA617FED9E9BFF52817FF978CFFE82578E001FD67B2FFF1ED3FFE2F969F80851",
	mem_init1 => X"CF0007C096BFFF445BFFE529C1C001F337E00601CFCFFFE3EBFFFC79C060037CE9A00007A3BFFFC103FFFDC3A0000F97FECE000125DFFFF7ECFFF5C0C000727FFAF2000187FFFFC153FFFF838000CB5FFEECC03857BFFE7F77FFFFE03803367FFF91202332BFFF4913FFFF68C604C9FFFFE65FDC3B03FF37B9FFC16E3FFE27FFFFF937E7F840FFE4B7FF00BFC7CE9FFFFFFE5FD5BDC03FFCDFFC02A5BB7E7FFFFFFFDA1945C82FFCBFF413B39A1BFFFFFFFFFDFFFBC01FFE7FF001DE7F2FFFFFFFFFF87FDBC007FFFFE003ABFE1FFFFFFFFFFFFFE57801FFFF801F3FFFFFFFFFFFFFFFFFF9EC01FFFF80279FFFFFFFFFFFFFFFFFFE9801FFFF80197FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFF5802FFFE004AFFFFFFFFFFFFFFFFFFFFCE00FFFD0463FFFFFFFFFFFFFFFFFFFF46002FF40063FFFFFFFFFFFFFFFFFFFFD9C00BF00193FFFFFFFFFFFFFFFFFFFF3BE0024107C4FFFFFFFFFFFFFFFFFFFFF8BC00003DBFFFFFFFFFFFFFFFFFFFFFF35E00107C8FFFFFFFFFFFFFFFFFFFFFFF4FC003FE7FFFFFFFFFFFFFFFFFFFFFFF91E007C9FFFFFFFFFFFFFFFFFFFFFFFFF4FC3FAFFFFFFFFFFFFFFFFFFFFFFFFFFD5EFDBFFFFFFFFFFFFFFFFFFFFFFFFFFF4FF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N30
\c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = address(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => address(13),
	combout => \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X45_Y28_N31
\c0|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X45_Y28_N12
\c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ = \c0|altsyncram_component|auto_generated|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c0|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\);

-- Location: FF_X45_Y28_N13
\c0|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X45_Y28_N24
\q1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~3_combout\ = (!\process_0~0_combout\ & ((\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \q1~3_combout\);

-- Location: FF_X45_Y28_N25
\q1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(9));

-- Location: LCCOMB_X49_Y38_N6
\C1|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!VPOS(2) & (!VPOS(1) & (!VPOS(0) & !VPOS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(2),
	datab => VPOS(1),
	datac => VPOS(0),
	datad => VPOS(3),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X49_Y38_N8
\C1|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (!VPOS(9) & (((\C1|process_0~9_combout\ & !VPOS(4))) # (!\C1|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~9_combout\,
	datab => VPOS(4),
	datac => \C1|process_0~7_combout\,
	datad => VPOS(9),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X47_Y35_N2
\C1|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (!HPOS(2) & (!HPOS(6) & (!HPOS(5) & !HPOS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => HPOS(6),
	datac => HPOS(5),
	datad => HPOS(3),
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X47_Y35_N4
\C1|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[1]~0_combout\ = (!HPOS(1) & (\C1|process_0~11_combout\ & (!HPOS(0) & !HPOS(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => \C1|process_0~11_combout\,
	datac => HPOS(0),
	datad => HPOS(4),
	combout => \C1|R[1]~0_combout\);

-- Location: LCCOMB_X50_Y35_N28
\C1|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[1]~1_combout\ = (HPOS(7) & (!\C1|R[1]~0_combout\ & ((!HPOS(8))))) # (!HPOS(7) & (((\C1|process_0~4_combout\ & HPOS(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(7),
	datab => \C1|R[1]~0_combout\,
	datac => \C1|process_0~4_combout\,
	datad => HPOS(8),
	combout => \C1|R[1]~1_combout\);

-- Location: LCCOMB_X50_Y35_N30
\C1|R[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[1]~2_combout\ = (\C1|process_0~10_combout\ & (((!\C1|R[1]~1_combout\)) # (!HPOS(9)))) # (!\C1|process_0~10_combout\ & (\C1|LessThan7~1_combout\ & ((!\C1|R[1]~1_combout\) # (!HPOS(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~10_combout\,
	datab => HPOS(9),
	datac => \C1|LessThan7~1_combout\,
	datad => \C1|R[1]~1_combout\,
	combout => \C1|R[1]~2_combout\);

-- Location: LCCOMB_X38_Y5_N24
\C1|R~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~3_combout\ = (\spriteon1~q\ & (q1(9) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon1~q\,
	datab => q1(9),
	datac => \C1|R[1]~2_combout\,
	combout => \C1|R~3_combout\);

-- Location: FF_X38_Y5_N25
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: M9K_X53_Y33_N0
\c0|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE187FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E71FFFFFFFFFFFFFFFFFFFFFFFFFFFE22407FFFFFFFFFFFFFFFFFFFFFFFFFF80C111FFFFFFFFFFFFFFFFFFFFFFFFFE3200447FFFFFFFFFFFFFFFFFFFFFFFF8E800171FFFFFFFFFFFFFFFFFFFFFFFE3200004C7FFFFFFFFFFFFFFFFFFFFFF8C80000111FFFFFFFFFFFFFFFFFFFFFE72000000467FFFFFFFFFFFFFFFFFFFF8C8000000139FFFFFFFFFFFFFFFFFFFFA20003C0004DFFFFFFFFFFFFFFFFFFFFB0000FF0000CFFFFFFFFFFFFFFFFFFFFB0003FFC000DFFFFFFFFFFFFFFFFFFFFA400FFFF0025FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFE6403FFFFC0267FFFFFFFFFFFFFFFFFF8C8027FFE40131FFFFFFFFFFFFFFFFFE7201800000E0447FFFFFFFFFFFFF8FF8C83000640004121FF1FFFFFFFFFE33E321004F4B1310840FC87FFFFFFFFC78CE840FB4FE2DD021031C1FFFFFFFF2020212FD97E7E5FB4044000FFFFFFFCC49C44B87CF80F3E0C0279213FFFFFF3000112F27C1FFC1E411804040FFFFFCC40140278C407F02318D2280273FFFF11000080EF03FFFFE26C01000098FFFC0400010B78038F9CF00EE20000243FF01000008B6CE3C7B877A2C00000088FC640000100ABE3DFBEE1E1000000024399000502010FEB980FC9F10000A00081B4001F14057FEBC3F14BF42020F8002D",
	mem_init1 => X"B0007FE8C87FEBE7773DFFA315FE002D9400FFD002FFEBC272FCF8900BFF00219401FFA0077FEBEBF4BDF84805FF8009D003FEA007FFEBF26E93FFA4007FC00BDA03FF40000FE3E5FF1A700002FFC05BCE01FC0010022075E7384004207F8053EC00FE1802E0FFFFDEFB83C11D7F0007E501FA8097FAFFFFFFFF1E12015F8087E400FA00601EFFFFFFFF39E0001F00A7F0000100084E7FFFFFFE629500A0006FF28001009FE71FFFFFF1FBF00080016FF3800530BFE3C0004800C7F948A001CFFB000538FFFA4FFFFFF25FFEDCA000DFFA400163DFF6A3FFFFC54FEAC6A0029FF840050422F8051008A01FE010A0029FFD1F851200FEB4BFFD2D7EA008A1E9BF",
	mem_init0 => X"FDB04500E57EBE900B7D7D0E14A27F3FFC074028221FDFE667FBFEC20A02E03FFEFB42D0003FE73E7EE7FC080242DB7FFFF940D6EFBFCFA817F3F96EFB02DFFFFFF94156E7BFBB0A50F5F8623A829FFFFFFB40B0603F8F1ADA93FE0225029FFFFFFB4058725F1FD2ABE9FEC208029FFFFFFB406CE47E35DDEB2C7F5E1202DFFFFFF9407255FE3D7BC6BC7F874A029FFFFFF9403606FF79FFD79EFFB03C029FFFFFF9403EF7FEB7FA5EED7FF07C029FFFFFF9403FFFFF770990EEFFFFFC029FFFFFF9403FFFE1099BC99087FFFC029FFFFFFB403FF86FDF97C1FBF61FFC029FFFFFFB403FFBE0DB566EDB0FD7FC029FFFFFFB403FF1E4395A5A9C2787FC029FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y35_N0
\c0|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFB403FA78CEE5FFE7771E1FC029FFFFFFB403F3C376FBE5BF4EC3FFC029FFFFFFB403E1F118AFA7F6380F87C029FFFFFF9403A217811E1ADAC3E8C5C029FFFFFF9403AC19DE10D8A33F9037C029FFFFFF9403BF6FEE6BFFA877F7FDC029FFFFFF94031E98C07FBCF7071B78C029FFFFFF940119F89C7DA4F73D1F18A029FFFFFFB40236FD9E4545DE793F6C4029FFFFFFB403716207B85C2BE5469EC029FFFFFFB4024E520C73F70A704E726029FFFFFF940632EE9BDEE73FC977584029FFFFFF9403EDB4CFE0E5B3F33CBDC02DFFFFE7B407DAD10FEE1D0FE2835BE02DF7FFC07402E27EDFF8F6EFEA7E66202C03FFDFC402F9C8B8FB6B1E15163A4024FBF",
	mem_init2 => X"FD1F800753FA491E9F9A79AEE201F9BFF940000E9CEBD5F797ABD7197600029FF840001D17AA95FD43A957ECA80002DFF940002A654D77C4BFAF82A67C00005FF280000CB699E79D5FA70DE93200014FF28000332366CF853FF35EC5C600014FF600002759E89F8F1FF9B71AE600002FF700FFEAFFD33F8BBFFE5AFF57FF00A7ED01FFEFE5E4FFD79FFF3FADFFFF80A7EC00FFFD7ADDFFFFA7FFB33EFFFF0037CE01FFE6F82AFFF7F7FF541B6FFF8073DA03FFF8D5D4FFCF8DFF13AB5FFFC05BD003FFF0AC33FFA5EDFFEC2D1FFFC00B9401FFF3A967FFE064FFE4B50FFFC009B400FFEF5F6FFFD25FFFD6FB97FF0029B0007FC396AFFFFF7C7FF55AC3FE002D",
	mem_init1 => X"B4001F0135FFFFDC1BFFF7EC40F8002D89000500352FFF7C37FFFDAC40A00081C64000023D4FFF92C9FFF2BC40000263F11000023B5FFF2186FFFABC0000098FFC040001BF7FFF8EA1FFFEDF8000243FFF1100002F5FFEE347FFFEFC000088FFFFCE4014030FFF04A1FFF0F4280233FFFFF180010ACFFFB39CFFF0E28405CFFFFFFCC098CA83FFEE37FFC37339213FFFFFFF22220600FFF99FFF01784440FFFFFFFF85CC8E003FF99FFC007031E1FFFFFFFFE23E00000FFE3FF00200FCC7FFFFFFFFF8FF800001FFFF800011FF1FFFFFFFFFFFFFE04003FFFFC00207FFFFFFFFFFFFFFFFF80001FFFF80101FFFFFFFFFFFFFFFFFFE6403FFFFC0267FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFA400FFFF0025FFFFFFFFFFFFFFFFFFFFB0003FFC000DFFFFFFFFFFFFFFFFFFFFB0000FF0000CFFFFFFFFFFFFFFFFFFFFA20003C0004DFFFFFFFFFFFFFFFFFFFF848000000139FFFFFFFFFFFFFFFFFFFFE72000000447FFFFFFFFFFFFFFFFFFFFF8A80000131FFFFFFFFFFFFFFFFFFFFFFE320000407FFFFFFFFFFFFFFFFFFFFFFF8E800131FFFFFFFFFFFFFFFFFFFFFFFFE3200447FFFFFFFFFFFFFFFFFFFFFFFFF8A8121FFFFFFFFFFFFFFFFFFFFFFFFFFE324C7FFFFFFFFFFFFFFFFFFFFFFFFFFF8031FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N10
\q1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~4_combout\ = (!\process_0~0_combout\ & ((\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datad => \process_0~0_combout\,
	combout => \q1~4_combout\);

-- Location: FF_X45_Y28_N11
\q1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(10));

-- Location: LCCOMB_X45_Y28_N14
\C1|R~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~4_combout\ = (q1(10) & (\C1|R[1]~2_combout\ & \spriteon1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(10),
	datab => \C1|R[1]~2_combout\,
	datad => \spriteon1~q\,
	combout => \C1|R~4_combout\);

-- Location: FF_X45_Y28_N15
\C1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(1));

-- Location: M9K_X33_Y28_N0
\c0|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFF807FDFF3B5AE75AD8FFFFE01FFFFFFFF807EFFCFD05FFC0BF3FE7E01FFFFFFFF807DFFEFF5DFFD9FFFFFBE01FFFFFFFF807DFEFFEFDE7FD7FF7FBE01FFFFFFFF807DFE7E1FF3FDD87EFFBE01FFFFFFFF8077F9FDF973C77FBF9FEE01FFFFFFFF806FF673FA7FFF6F8E4FF601FFFFFFFF806FF9F7FB7FFFEFEF9FF601FFFFFFFF8077F7E7FBFBAF1FEFEFEE01FFFFFFFF806FEFDF847E7D41FBF7F601FFFFFFFF805FDBDF39CEFBD8FB9BFA01FFFFFFFF801FF7DE7FDFFFBF7BEFFA01FFFFFFFF8047EFBF7FFFFFFEFDF7E201FFFFFFFF806FDFFF7F1E7F7FDFFBF601FFFFFFFF805FDB0EBF7191FD70DBFE01FFFFFFFF805DE7FE777BCFFEFFEDFA01FFFF",
	mem_init2 => X"FFE0003BEF5DBFF7FDF5BEF7DC0007FFFF800037EED33FAEFBFCCB77E80001FFFF80006FE9F7FF8EFFFFED97F60001FFFF80007FDBF7BDBB47FDFFDBF60001FFFF00007FFBF67BF7AFDEFBDFFE0000FFFF00005DFFB977FFDFEEADFFBA0000FFFF00005BF67F6FFDFFF6FEEFDA0000FFFE00FFD7F0FEDFFEFFF9FF0FEBFF007FFE00FFF7FEFFBFAFFFFDEF7FE7FF007FFE01FFF7EDEF7FD7DFFEF7F7EFFF807FFC01FFFFDFDFFFDF8BFFFBFFFFFF803FFC01FFEFFE3FFFFFF7FFFC7FF7FF803FFC03FFEFFFDDFFDFFAFFBBFFF7FFC03FF803FFEDFFDBFFDFBF3FDBFFF7FFC03FF800FFF1FBD7FF2D27BFEBDFAFFF001FF8003FE1FFD7FFBF8BFFEBFF87FC001F",
	mem_init1 => X"F8000F83FFAFFF23E7FFFDFF81F0001FFE000203FFFFFFE247FFF7FF8040007FFF800001FFFFFFFFFFFFFFFF800001FFFFE00001FFFFFFFFFFFFFFFF800007FFFFF800007BDFFF7FFEFFFBFC00001FFFFFFE00007BFFFFBEFD7FFBDE00007FFFFFFF80087FDFFFFFFEFFFBDE1001FFFFFFFFE03E7787FFDDEBFFE3DC7803FFFFFFFFF87F3781FFFFFFFF81CCFE1FFFFFFFFFFDFFF3807FFFFFFE01CFFFBFFFFFFFFFFFFFF3801FFFFFF801CFFFFFFFFFFFFFFFFFFF8007FFFFE001FFFFFFFFFFFFFFFFFFFF8003FFFFC001FFFFFFFFFFFFFFFFFFFF8001FFFF8001FFFFFFFFFFFFFFFFFFFFF003FFFFC00FFFFFFFFFFFFFFFFFFFFFF803FFFFC01FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF801FFFF801FFFFFFFFFFFFFFFFFFFFFF8007FFE001FFFFFFFFFFFFFFFFFFFFFF8001FF8001FFFFFFFFFFFFFFFFFFFFF7C0007E0003EFFFFFFFFFFFFFFFFFFFFFF00018000FFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y26_N0
\c0|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFF00018000FFFFFFFFFFFFFFFFFFFFFF7C0007E0003EFFFFFFFFFFFFFFFFFFFFF8001FF8001FFFFFFFFFFFFFFFFFFFFFF8007FFE001FFFFFFFFFFFFFFFFFFFFFF801FFFF801FFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFF803FFFFC01FFFFFFFFFFFFFFFFFFFFFF0018001800FFFFFFFFFFFFFFFFFFFFFC007FFFFF003FFFFFFFFFFFFFFFFFFFF00FFFFFFFF80FFFFFFFFFFFFFFFFFFFC0FFFFFFFFEF03FFFFFFFFFFFFFFFFFF03FFFFDBFFFFC0FFFFFFFFFFFFFFFFFC0DFFFFFFFFFFB83FFFFFFFFFFFFF87F837FFFFFFFFFFFE1FE1FFFFFFFFFE03E0DFFFFE003FFFFF07803FFFFFFFF80083FFFFBFFFFDFFFEC1001FFFFFFFE00007FFFFFFFFFFDFFFE00007FFFFFF80000FFFFFFFFFFFFFFDD80001FFFFFE000037FF3C38F9CE3DFFFC00007FFFF800006FFD7C387B863FFFFE00001FFFE00020DFFFFC3C00863FEFFF040007FF8000F8BFEBFC3C73861FFFFD9F0001F",
	mem_init1 => X"F8003FD7FFFFC3C37841FF5FEBFC001FF800FFAFFDFFC3E37411FFEFF5FF001FF803FF5FFBFFC3E27610FFF7FAFFC03FFC03FF5FFFFFC3E0F638FFFBFFFFC03FFC01FEBFFFFFC3F0E638FFFFFD7F803FFC01FFFFEFFFC3F0EE18FFFBDFBF803FFE01FDFFFFFF0071EF1C7FFEFABF807FFE00FD7F7FFDFFFFFFFFFFFDFEBF007FFF00FDFFBFFF7FFFFFFEFE1FFFFF007FFF0002FFF7BFBFFFFFFDFDEAFF4000FFFF0002FF6FDFFFFFFFFEE7FFFF4000FFFF0002CF5FFFBFFFB7FFFFFEB74000FFFF8002F73FF7F33FFCCFEFFD2F4001FFFF8006BC27F95F5FFAFABFF53D4001FFFF8002FBDDFBBAEFF75DDF9FEF4001FFFFE002EDFF79DBC003DB9F5FF74017FF",
	mem_init0 => X"FFFF82FF7EBF7F6FF4FEFEF7EB41FFFFFFFF83D7FFFFEEFFFF77FD7FF5C1FFFFFFFF812FFFDFFEF7EF7FFFFFFD81FFFFFFFF812F775FF6D7E96FFEF77481FFFFFFFF80AF7F5FC6F7EF6BFFFFF501FFFFFFFF804F9FDFFAFF7F7FFDFDDA01FFFFFFFF8027EFBFFCEDD73EFD7FF601FFFFFFFF80137FBFDFFBDFFBFEB7EC01FFFFFFFF806DAA7FE3CFFBC7FF78B601FFFFFFFF8079F9FFEF526AF7FFCFCE01FFFFFFFF807F0FFF5E1DB97AFFFFFE01FFFFFFFF807FFFFE9EFFFF797FFFFE01FFFFFFFF807FFFDEF7E7F7EF7BFFFE01FFFFFFFF807FFF9F73FFFFCEF9FFFE01FFFFFFFF807FE7FF7FFBDBFEFFEFFE01FFFFFFFF807FEFFBEEF5AF77DFF7FE01FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N28
\q1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~5_combout\ = (!\process_0~0_combout\ & ((\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datad => \process_0~0_combout\,
	combout => \q1~5_combout\);

-- Location: FF_X45_Y28_N29
\q1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(11));

-- Location: LCCOMB_X39_Y4_N8
\C1|R~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~5_combout\ = (\spriteon1~q\ & (q1(11) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon1~q\,
	datac => q1(11),
	datad => \C1|R[1]~2_combout\,
	combout => \C1|R~5_combout\);

-- Location: FF_X39_Y4_N9
\C1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(2));

-- Location: M9K_X53_Y27_N0
\c0|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD50BFFFFFFFFFFFFFFFFFFFFFFFFFFFF97E1FFFFFFFFFFFFFFFFFFFFFFFFFFFC2C303FFFFFFFFFFFFFFFFFFFFFFFFFF8F00F1FFFFFFFFFFFFFFFFFFFFFFFFFF3C003CFFFFFFFFFFFFFFFFFFFFFFFFFDF0180E3FFFFFFFFFFFFFFFFFFFFFFFD7C05A03EBFFFFFFFFFFFFFFFFFFFFFF4F010080FAFFFFFFFFFFFFFFFFFFFFFD1C0400203CBFFFFFFFFFFFFFFFFFFFF4701024080E2FFFFFFFFFFFFFFFFFFFE2C040BD020327FFFFFFFFFFFFFFFFFFF10102FF40808FFFFFFFFFFFFFFFFFFFF1840BFFD0218FFFFFFFFFFFFFFFFFFFFD812FFFF4019FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFC1043FFFFC2083FFFFFFFFFFFFFFFFFFDF0017FFF200EBFFFFFFFFFFFFFFFFFF1C01000002003EFFFFFFFFFFFFFF3FF870111FDBF8120E9FDCFFFFFFFFFE05E1C1638080C8E283C7A87FFFFFFFF538CB03303B1C0E0CF0F20D2FFFFFFFD1DB3E1F00201008005C3CFB8BFFFFFF4B07F07CA0307F0C05240DE0D0FFFFFD3E01E0F0F821FFE61F2D87C07CBFFFFA380081085AC180C32A7FC1001C5FFFEBE05004C01442003128F3300A0757FFAF8100192067C60600E107B40081D5FF9E05021F8117C2CFAE8A41F6000079FC380000BFD647DF75BFE00BF301001D316010207FE0075ECD97408FF90600070A80A2F8E3F40757B6EB5081C6EF45014",
	mem_init1 => X"88387FFD90A075FEB5D011B9BBFE0C14C821FFBE330075FFFFB6079C5EFF8416985BFFCFE68075D4F75787CFF7FFC2198C03FFBFC20075FFE55600E7C07FC039D411FEE798107DEEE6D78C19E77F8839C423FC0B90011C6FFFDF2004F0BFC433E600FF2F05100C3CEF688663B53F0467DE01FAC38A067FFFFFE201FFC9DF805BF611FA3F422081FFFF0143E4303F986FE900232648C167FFFFC6135700C300D7EF00033C97E92000000D1BF060800097F30847ACBFE04000484107F978E2108FF187F73CDFF12C4002F48FFEF4EFE18FF2800347DBF5278FF0F4AFCBA2C0018FF8800705AAF4D910089B2F70D0E0011FF9C183B620F1492BD4928FE218C1D39F",
	mem_init0 => X"FABF8327E9BE85967FE37FFF5CC1FC5FFC41803F4F1FC457E0A3FDB9BE21803FFFFF87719B7FF57F77AFFA8886C1BFFFFFF0816CAAEF99883ED9F97BBBC12FFFFFFC81B8A3AFFD5FE2BFFA0669812FFFFFF88079F97FD4C66369FA98A2018FFFFFF0803F3D7F0F9279F1FDB672010FFFFFF0823FEC7F2002708CFDFF5A010FFFFFF8804657FED5F02FAB7E4356010FFFFFF880BE97FF108DA9087FB77E010FFFFFF880BFF7FF4CEE5732BFE8BC010FFFFFF8803FFFFE41C25A82FFFFFE010FFFFFF080BFFFE1685A1A0787FFFE010FFFFFF0803FF43D57440AEA6A3FFC010FFFFFF8803FFD9C2B35BCC53927FC010FFFFFF8807FEED6678E79F6AB7FFC010FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y34_N0
\c0|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF8803F3C69D9B3099BD614FC012FFFFFF8803F4B38AF8B2FF71449FF012FFFFFF0803DE8127B260AFC410F3E012FFFFFF0803AD8B5754BC8AACD137D010FFFFFF0803F3DABB9ADB10D943C9E01CFFFFFF080301F015DCE284A10E81D01CFFFFFF880EE01B8F35048CF5DFA7601CFFFFFF8805A82C6A3F1E405234B1F010FFFFFF880EEC27A1357D5E8DE115E010FFFFFF88068D83F4CE53E1BA41E1F012FFFFFF8806B0237D6B28D2FC54C52010FFFFFFC8079E135FF6FFBFCA40ED801AFFFFFF1803B65F27CF5E2BF4EB6FC01CFFFFFFD80637822FE9F8AFC649646013FFFFC018052F2755EEAFCFBBEC99201807FFABF8072369F4BFFB4E2713F1801FC5F",
	mem_init2 => X"F8C1803E7C254BEEDFAF02D6FE01931FF980002295846DD3CF9732EB4200011FF3800025752E69B0871E5721F600018FF187F844B769E3E7F70E66ACBE1FE18FF10C34528F1F6DFA9FF4E6B44E2C108FEB0000ADE4F79FFD7FF9D494FF000097E304003E4F4F4FE6FFFF5676DC4540C7F219FFD78C5D5FC11FF24B59D3FF986FDA01FFC83F95BFE3FFF971EF1BFF804BEE20FFFFFF2B7FE7AFFDBD7F2FFF0477C423FFE9759A7FFB6DFE53B687FFC433DC01FFF399CBFFE046FF6B9A2FFF88298C03FFF7D1EFFFEA2FFFF793B7FFC0318843FFFC7FBFFF9F72DFFFF7BFFFC6195805FFE19E9FFF52807FF97897FF841218387FE07B2FFF2EC87FE2E847FE0C14",
	mem_init1 => X"280A0F0096BFFF64D3FFE52900F450101E00030DCFCFFFDBBFFFFCF98080807CC1800003A3BFFFDFF3FFFDC1C00001D3F8E000E105DFFFFC9EFFF5C08502079FFA78000187FFFFCF96FFFF8382081F5FFEBE050017BFFF6BF6FFFE6800A0797FFFA300083A8FFF95EBFFF37C1000D5FFFFD1E03C7B5FFFEB89FFF16E3C07CBFFFFF4307F1985FFE637FFA2B2FE0D8FFFFFFD2DA3E5107FF81FFE0093C5B8BFFFFFFF408CF3D03FFC3FFC09EB30D2FFFFFFFFE25E3DC80FFD7FF001BC7A27FFFFFFFFF1BF9C4003FFFF840239FDCFFFFFFFFFFEFFF64083FFFFC5036FFF7FFFFFFFFFFFFFFDF003FFFFC00EEFFFFFFFFFFFFFFFFFFC1043FFFFC20A3FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFD802FFFF4019FFFFFFFFFFFFFFFFFFFF18403FFD0218FFFFFFFFFFFFFFFFFFFF10122FF408007FFFFFFFFFFFFFFFFFFE2C040BD0A0307FFFFFFFFFFFFFFFFFFF4701024080E2FFFFFFFFFFFFFFFFFFFFD4C0500203CBFFFFFFFFFFFFFFFFFFFFF4B012880FAFFFFFFFFFFFFFFFFFFFFFFD5C04A03EBFFFFFFFFFFFFFFFFFFFFFFFD70180F3FFFFFFFFFFFFFFFFFFFFFFFFF1C003CFFFFFFFFFFFFFFFFFFFFFFFFFF8B00E1FFFFFFFFFFFFFFFFFFFFFFFFFFE0C383FFFFFFFFFFFFFFFFFFFFFFFFFFF83E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7FFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N0
\q1[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1[5]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \q1[5]~0_combout\);

-- Location: LCCOMB_X52_Y38_N28
\Equal16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (VPOS(8) & (VPOS(1) & (VPOS(7) & !VPOS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(8),
	datab => VPOS(1),
	datac => VPOS(7),
	datad => VPOS(0),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X51_Y38_N8
\Equal16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (VPOS(2) & (\Equal16~0_combout\ & (VPOS(4) & !VPOS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(2),
	datab => \Equal16~0_combout\,
	datac => VPOS(4),
	datad => VPOS(3),
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X51_Y37_N24
\Equal16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal16~2_combout\ = (VPOS(5) & (\Equal16~1_combout\ & (!VPOS(6) & VPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => \Equal16~1_combout\,
	datac => VPOS(6),
	datad => VPOS(9),
	combout => \Equal16~2_combout\);

-- Location: LCCOMB_X50_Y35_N24
\Equal9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = (!POSX(10) & (HPOS(9) $ (!POSX(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datac => POSX(10),
	datad => POSX(9),
	combout => \Equal9~5_combout\);

-- Location: LCCOMB_X47_Y34_N28
\Equal9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (POSX(8) & (HPOS(8) & (HPOS(7) $ (!POSX(7))))) # (!POSX(8) & (!HPOS(8) & (HPOS(7) $ (!POSX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => HPOS(7),
	datac => POSX(7),
	datad => HPOS(8),
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X51_Y34_N26
\Equal9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (HPOS(6) & (POSX(6) & (HPOS(5) $ (POSX(5))))) # (!HPOS(6) & (!POSX(6) & (HPOS(5) $ (POSX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => HPOS(5),
	datac => POSX(6),
	datad => POSX(5),
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X51_Y34_N24
\Equal9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (HPOS(3) & (POSX(3) & (HPOS(4) $ (POSX(4))))) # (!HPOS(3) & (!POSX(3) & (HPOS(4) $ (POSX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(3),
	datab => HPOS(4),
	datac => POSX(3),
	datad => POSX(4),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X51_Y34_N22
\Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (HPOS(1) & (!POSX(1) & (POSX(2) $ (!HPOS(2))))) # (!HPOS(1) & (POSX(1) & (POSX(2) $ (!HPOS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => POSX(2),
	datac => HPOS(2),
	datad => POSX(1),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X51_Y34_N28
\Equal9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Equal9~2_combout\ & (\Equal9~1_combout\ & (\Equal9~0_combout\ & !HPOS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => \Equal9~1_combout\,
	datac => \Equal9~0_combout\,
	datad => HPOS(0),
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X49_Y34_N10
\Equal9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (\Equal9~5_combout\ & (\Equal9~4_combout\ & \Equal9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~5_combout\,
	datac => \Equal9~4_combout\,
	datad => \Equal9~3_combout\,
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X49_Y38_N2
\Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (POSY(5) & (!VPOS(5) & (POSY(6) $ (!VPOS(6))))) # (!POSY(5) & (VPOS(5) & (POSY(6) $ (!VPOS(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => POSY(6),
	datac => VPOS(6),
	datad => VPOS(5),
	combout => \Equal14~3_combout\);

-- Location: LCCOMB_X49_Y38_N28
\Equal14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~4_combout\ = (POSY(7) & (VPOS(7) & (VPOS(8) $ (!POSY(8))))) # (!POSY(7) & (!VPOS(7) & (VPOS(8) $ (!POSY(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => VPOS(8),
	datac => POSY(8),
	datad => VPOS(7),
	combout => \Equal14~4_combout\);

-- Location: LCCOMB_X49_Y38_N30
\Equal14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~5_combout\ = POSY(9) $ (VPOS(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => VPOS(9),
	combout => \Equal14~5_combout\);

-- Location: LCCOMB_X50_Y40_N0
\Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (VPOS(2) & (POSY(2) & (POSY(1) $ (VPOS(1))))) # (!VPOS(2) & (!POSY(2) & (POSY(1) $ (VPOS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(2),
	datab => POSY(1),
	datac => POSY(2),
	datad => VPOS(1),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X50_Y40_N26
\Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (VPOS(3) & (POSY(3) & (POSY(4) $ (VPOS(4))))) # (!VPOS(3) & (!POSY(3) & (POSY(4) $ (VPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => POSY(3),
	datac => POSY(4),
	datad => VPOS(4),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X50_Y40_N24
\Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (\Equal14~0_combout\ & (\Equal14~1_combout\ & !VPOS(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~0_combout\,
	datac => \Equal14~1_combout\,
	datad => VPOS(0),
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X49_Y38_N16
\Equal14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal14~6_combout\ = (\Equal14~3_combout\ & (\Equal14~4_combout\ & (!\Equal14~5_combout\ & \Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~3_combout\,
	datab => \Equal14~4_combout\,
	datac => \Equal14~5_combout\,
	datad => \Equal14~2_combout\,
	combout => \Equal14~6_combout\);

-- Location: LCCOMB_X47_Y36_N28
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X50_Y36_N24
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\SW[2]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X45_Y32_N0
\q1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~6_combout\ = (\Equal9~6_combout\ & (((\Equal5~0_combout\) # (\Equal5~1_combout\)))) # (!\Equal9~6_combout\ & (\Equal14~6_combout\ & ((\Equal5~0_combout\) # (\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \Equal14~6_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \q1~6_combout\);

-- Location: LCCOMB_X45_Y32_N18
\q1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~7_combout\ = (\q1~6_combout\) # ((\Equal16~2_combout\ & (\Equal5~0_combout\ & !\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~2_combout\,
	datab => \q1~6_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \q1~7_combout\);

-- Location: FF_X45_Y28_N1
\q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1[5]~0_combout\,
	asdata => \q1~7_combout\,
	sload => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(5));

-- Location: LCCOMB_X45_Y28_N8
\C1|g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~0_combout\ = (\spriteon1~q\ & (q1(5) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon1~q\,
	datab => q1(5),
	datad => \C1|R[1]~2_combout\,
	combout => \C1|g~0_combout\);

-- Location: FF_X45_Y28_N9
\C1|g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(0));

-- Location: M9K_X33_Y30_N0
\c0|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFC07FFA38CEE5FFE7771E5FFE01FFFFFFC07FF3C376FBE5FF4EC3FFEE01FFFFFFC07FE17118AFA7F7380F07FE01FFFFFFC07FA217815E1ADAC3E8C5EE03FFFFFFC07FAC19DC10C1A33F9037FE03FFFFFFC07FBE6FEE6BFFA876F77DEE03FFFFFFC0771E98C07FBCF7071B58FE03FFFFFFC07D19F89C7DA4F73D1F18AE03FFFFFFC07636FD9E4545DE71BF6C7E03FFFFFFC07F716207FA1CABE5469EEE01FFFFFFC07E4E730C73F70A704EF23E03FFFFFF807A32EE9BEEE73FC977587E01FFFFFFC07FEDB4CFE0A5B3F33CB5FE03FFFFDF807FDA510FEE1D0FE2825BFE01FBFFE0007CE27EDFF8F6EFEA7E663E0003FFC0007AF9C8B8F9691C1516BA7E0003F",
	mem_init2 => X"F80007C753FA491E9F9A79AAE3E0001FFC0007CE98EBD5F797ABD71973E0003FF80007DD17AA95FD43A957ECABE0001FF00007EA654D77C4BFAF82A65FE0000FF807FFCCB699E79D5FA78D6933FFE01FF00FFF7123E6CF853FF35E45C6FFF00FE00FFFE759E89F8F1FF8B71AE7FFF007F00FFFEAFFD37F8BBFFE5AFF57FFF00FE01EFFEFE5E4FFD79FFF3FA5FFFF7807C01FFFFD7ADDFFFFA7FFB25EFFFFF803E01FFFE6F82AFFF7F7FF541B6FFFF807C03DFFFCD5D4FFCF8BFF13AB5FFFBC03803FFFF8AC33FFA5C5FFCC2D0FFFFC01C03FFFF1A967FFE044FFE4950FFFFC03807FFFE35F6BFFD25FFFD6FBDFFFFE01001FFFDD96AFFFDF747FF55BFBFFF800",
	mem_init1 => X"8007EFFD35FFFFFC9BFFF7ECBFF3E0018003FBF8352FFF6423FFFDAC3FDFC001A000FFFE3D4FFF8C39FFF2BC7FFF0005E0003FC23B5FFF2994FFFABC43FC0007F8000F81BF7FFF8025FFFEDF81F0001FFE0002002F5FFFE3C7FFFEF40040007FFF800000033FFF9049FFFCE0000001FFFFF000004AEFFF7B9CFFFCE200000FFFFFFC00004AF9FFEC37FF9F7000001FFFFFFF000026FF7FF99FFEFF640000FFFFFFFFC014040FDFF99FFBF2002803FFFFFFFFD01D0007F7FF3FEFE200B80BFFFFFFFFFCFF4201FDFFFFFF8042FF3FFFFFFFFFFDFFC1807FFFFFFE0183FFBFFFFFFFFFFFFFF0003DFFFFBC000FFFFFFFFFFFFFFFFFFC083FFFFFFC103FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFF807FFFFFFE01FFFFFFFFFFFFFFFFFFFF003FFFFFFC00FFFFFFFFFFFFFFFFFFFF800FFFFFF001FFFFFFFFFFFFFFFFFFFF0003FFFFC000FFFFFFFFFFFFFFFFFFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFFC0003FFC0003FFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFFC0003C0003FFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFFF400002FFFFFFFFFFFFFFFFFFFFFFFFFFD0000BFFFFFFFFFFFFFFFFFFFFFFFFFFF4002FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y28_N0
\c0|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFF4002FFFFFFFFFFFFFFFFFFFFFFFFFFFD0000BFFFFFFFFFFFFFFFFFFFFFFFFFF400002FFFFFFFFFFFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFC0003C0003FFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFFFFFFFFFFFFFFC0003FFC0003FFFFFFFFFFFFFFFFFFFF0000FFFF0000FFFFFFFFFFFFFFFFFFFF0003FFFFC000FFFFFFFFFFFFFFFFFFFF800FFFFFF001FFFFFFFFFFFFFFFFFFFF003FFFFFFC00FFFFFFFFFFFFFFFFFFFF807FFFFFFE01FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFC083FFFFFFC103FFFFFFFFFFFFFFFFFF0003C7FFF1C000FFFFFFFFFFFFFFCFFC000700000060003FF3FFFFFFFFFFCFF4003000240004002FF3FFFFFFFFFD01D000004F5B3300000B80BFFFFFFFFC0140040FBCDFEFF02003803FFFFFFFF0000012FF97E7E5FF4800000FFFFFFFC000004B0FCF80F3F0C0000001FFFFFF0000012F27C1FFE1E4D4800000FFFFF8000000378CC07F0311812000001FFFE00020080FE43FFFFE270010040007FF8000F810B7A038F9CF00EE201F0001FE0003FC08360E3CFB87722C107FC0007A000FFF100A3E3CFBCE1E1000FFF00058003FAF2010FEB900EC9F0000F5FC0018007CFE4017FEBC3F16BF42023F3E001",
	mem_init1 => X"001FFFE8C85FEBE7763DEEA311FFF800007FFFD002FFEBC27248F8100BFFFE01C03FFF80057FEBEBF4B9F80805FFFC03803FFEA005FFEBF26E91FF04007FFC01C03DFF40100FE3E1F718700802FFBC03E01FFC0010022071E7384004203FF807C01FFE3802E0FFFFDEFB81811D3FF803E01EFE8095FAFFFFFFFF1E02897F7807F00FFE01621EFFFFFFFF3BE0001FF00FE00FFD0008CE7FFFFFFE629500BFF007F00FFD009FEF1FFFFFF1FBF040FFF00FF807FD20BFE3C0004840C7F948BFE01FF0000538FFFA4FFFFF725FFEDCA0000FF8000163DFF6A3FFFFC56FEBC680001FFC00050422F8051008A01FE010A0003FF800051200FEB4BFFD2D7EA008A0001F",
	mem_init0 => X"FC000524E57EBE901B7F7D4E14A0003FFE000428201FDFE667FBFEC30A00007FFDF80250003FE72F7EE7FE0002601FBFFFFC0656EFBFCFA817F3F96EFB201FFFFFF80756E6BFBB0A50DDF8623AE01FFFFFFC0730603F8F1AD8B3FE0224E03FFFFFFC0798725F17D2EBE9FEC209E03FFFFFFC07ACE07E35DDEB2C7F4E13E03FFFFFFC07F255FE3DFBC7BC7F874BE03FFFFFFC077606FF79FFD79EFFB07FE03FFFFFFC077EF7FCB7FA5FED7FF07FE03FFFFFFC07FFFFFF770990EEFFFFFFE03FFFFFFC077FFFE1099BD99187FFFFE03FFFFFFC07FFF86EDF93C1FBF61FFFE03FFFFFFC07FFFBE0DB766EDB07D7FFE03FFFFFFC07FFF1E4395A5A9C2787FFE03FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N2
\q1[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1[6]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	combout => \q1[6]~1_combout\);

-- Location: FF_X45_Y28_N3
\q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1[6]~1_combout\,
	asdata => \q1~7_combout\,
	sload => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(6));

-- Location: LCCOMB_X45_Y28_N18
\C1|g~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~1_combout\ = (\spriteon1~q\ & (q1(6) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon1~q\,
	datab => q1(6),
	datad => \C1|R[1]~2_combout\,
	combout => \C1|g~1_combout\);

-- Location: FF_X45_Y28_N19
\C1|g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(1));

-- Location: M9K_X33_Y32_N0
\c0|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF8007FDFF3B5AE75AD8FFBFE001FFFFFF8007EFFCFD05FF80BF3FE7E001FFFFFF8007DFFEFF5DFFD8FFFFFBE001FFFFFF8007DFEFFEBDE7FD7FF7FBE001FFFFFF8007DFE7E1FF3EDD87EFFBE001FFFFFF80077F9FDF973C77FBF9FEE001FFFFFF8006FF673FA7FFF6F8E4FF6001FFFFFF8006FF9F7FB7FFFEFEF9FF6001FFFFFF80077F7E7FBFBAF1FE7EFEE001FFFFFF8006FEFDF805E7541FBF7F6001FFFFFF8005FD9CF39CEFBD8FB93FE001FFFFFF8005FF7DE7DDFFFBF7BEFFA001FFFFFF80047EFBF7FFFFFFEFDF7E2001FFFFE00006FDFFF7F1E7F7FDFFBF600007FFC00007FDB0EBF7191FD70DBFE00003FFC00005DE7FE777BCFFEFFE5FA00003F",
	mem_init2 => X"FC00003BEF5DBFF7FDF5BEF7DC00003FF8000037EED33FAEFBFCCB77EC00001FF800006FE9F7FF8EFFFFED97F600001FF800007FDBF7BDBB47FDFFDBF600001FF000007FFBF67BF7AFDE7BDFFE00000FF000005FFF3977FFDFEEADFFBA00000FF000005BF67F6FFDFFF6FEEFDA00000FE000FFD7F0FE9FFEFFF9FF0FEBFF0007E001FFF7FEFFBFAFFFFDEF7FE7FF8007E001FFF7EDEF7FD7DFFEF7B7EFFF8007C001FFFFDFDFFFDF8BFFFBFFFFFF8003C003FFEFFE3FFFFFF5FFFC7FF7FFC003C003FFEFFFDDFFDFFAFFBBFFF7FFC0038003FFEFFFDBFFDFBF3FDBFFF7FFC0018000FFFDFBD7FF2D27BFEBDFAFFF000180003FE3FFD7FFBF8BFFEBFF87FC0001",
	mem_init1 => X"00001F83FFAFFF0367FFFDFFC1F8000000000603FFFFFFE247FFF7FFC0600000C0000001FFFFFFF3CFFFFFFF80000003F0000001FFFFFFF7EFFFFFFF8000000FFC0000007BDFFF7FFAFFFBFC0000003FFF0000007BFFFEBE7D7FFBDE000000FFFFC000007FDFFF6FB6FFFBDE000003FFFFE000003787FF95EBFFE3DC000007FFFFF800003783FFFFFFFFC1CC00003FFFFFFE00001380FFFFFFFF01C800007FFFFFFF800803803FFFFFFC01C01001FFFFFFFFE03E03800FFEFFF001C07C07FFFFFFFFF87F818003FFFFC00181FE1FFFFFFFFFFFFFE00001FFFF800007FFFFFFFFFFFFFFFFF80003FFFFC0001FFFFFFFFFFFFFFFFFFE0003FFFFC0007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFF0001FFFF8000FFFFFFFFFFFFFFFFFFFF80007FFE0001FFFFFFFFFFFFFFFFFFFF00001FF80000FFFFFFFFFFFFFFFFFFFF000007E00000FFFFFFFFFFFFFFFFFFFF800001800001FFFFFFFFFFFFFFFFFFFFE00000000007FFFFFFFFFFFFFFFFFFFFF8000000001FFFFFFFFFFFFFFFFFFFFFFE000000007FFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y29_N0
\c0|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFFFFFFFFFFFFFFFE000000007FFFFFFFFFFFFFFFFFFFFFF8000000001FFFFFFFFFFFFFFFFFFFFFE00000000007FFFFFFFFFFFFFFFFFFFF800001800001FFFFFFFFFFFFFFFFFFFF000007E00000FFFFFFFFFFFFFFFFFFFF00001FF80000FFFFFFFFFFFFFFFFFFFF80007FFE0001FFFFFFFFFFFFFFFFFFFF0001FFFF8000FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFE0003FFFFC0007FFFFFFFFFFFFFFFFFF800038000C0001FFFFFFFFFFFFFFFFFE0000FFFFFF80007FFFFFFFFFFFFF87F8000FFFFFFFF8001FE1FFFFFFFFFE03E000FFFFFFFFFF0007C07FFFFFFFF8008003FFF7FBFDFFC001001FFFFFFFE000000DFFFFFFFFFFB0000007FFFFFF80000037FFFFFFFFFFFE000003FFFFFE000000DFFFFE001FFFFB0000007FFFFC000003FFFF3FFFFCFFFEC000003FFFF0000007FFFBFFFFFFDFFFE000000FFFC000000FFFDFFFFFFFFFFDD8000003FF00000037FFFC3879CE3DFFEC000000FC0000006FFDFC387B863FFFFE00000030000070DFFFFC3C00863FFFFF0E0000000001F9BFEBFC3C73841FFFFD9F80000",
	mem_init1 => X"80003FD7FFFFC3C37841FF5FEFFC00018000FFAFFDFFC3E37411FFEFF5FF00018003FF7FFBFFC3E27610FFF7FAFFC001C003FF5FFFFFC3E0F638FFFBFFFFC003C003FEBFEFFFC3F0EE38FFF7FD7FC003C001FFFFEFFFC3F0EE18FFFBDFFF8003E001FDDFFFFF0071EF1C7FFEFAFF8007E001FD7F7FFDFFFFFFFFFFFD76BF8007E000FDFEBDFF7FFFFFFEFC1FFFFF0007F00002FFF73FBFFFFFFDFDEAFF40000FF00002FF6FD7FFFFFFFEE7FFBF40000FF00002DF5FFFBFFFB7BFFFFEB740000FF80002F73FF7F33FFCCFEFFD2F40001FF80006BC27F95F5FFAFA9FF43D60001FF80002FBDDFBBAEFF75DDF9FEF40001FFC0002EDFF79DBC003DB9F5FF740003F",
	mem_init0 => X"FC0002DB7EBF7F6FE4FCFEB7EB40003FFC0003D7FFFFEEFFFF77FD7EF5C0003FFE0001AFFFDFFEF6EF7FFDFFFD80007FFFF801AF775FF6D7E96FFEF774801FFFFFF800AF7F5FC6F7EF63FFFFF5001FFFFFF800CF9FDFFAFF7F5FFDFDDB001FFFFFF80067EFBFFCED973EFD7FF6001FFFFFF800537FBFDFFBDFFBFEB7EC001FFFFFF8006DAA7FE34FFAC7FF78B6001FFFFFF80079F9FFEF526AF7FFCF8E001FFFFFF8007F0FFF5E1DB87AFFFFFE001FFFFFF8007FFFFE9EFFFF797FFFFE001FFFFFF8007FFFDEF7E7E7EE7BFFFE001FFFFFF8007FFF9F73FFFFCEF9FFFE001FFFFFF8007FE7FF7FDBDBFEFFEFFE001FFFFFF8007FEFFBEEF5AF77DFF7FE001FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N20
\q1[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1[7]~2_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \q1[7]~2_combout\);

-- Location: FF_X45_Y28_N21
\q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1[7]~2_combout\,
	asdata => \q1~7_combout\,
	sload => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(7));

-- Location: LCCOMB_X45_Y28_N4
\C1|g~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~2_combout\ = (\spriteon1~q\ & (q1(7) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon1~q\,
	datab => q1(7),
	datad => \C1|R[1]~2_combout\,
	combout => \C1|g~2_combout\);

-- Location: FF_X45_Y28_N5
\C1|g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(2));

-- Location: LCCOMB_X47_Y36_N22
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~1_combout\ & (\spriteon2~0_combout\ & (\LessThan6~18_combout\ & !POSX(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \spriteon2~0_combout\,
	datac => \LessThan6~18_combout\,
	datad => POSX(10),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X47_Y36_N24
\spriteon2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon2~1_combout\ = (\SW[2]~input_o\) # ((\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \process_0~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \spriteon2~1_combout\);

-- Location: LCCOMB_X47_Y36_N18
\spriteon2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon2~2_combout\ = (\spriteon2~1_combout\) # ((\process_0~5_combout\ & (!\process_0~6_combout\ & \spriteon2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon2~1_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~6_combout\,
	datad => \spriteon2~0_combout\,
	combout => \spriteon2~2_combout\);

-- Location: FF_X47_Y36_N19
spriteon2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \spriteon2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spriteon2~q\);

-- Location: LCCOMB_X38_Y5_N18
\C2|R2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~0_combout\ = (q1(9) & (\C1|R[1]~2_combout\ & \spriteon2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(9),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon2~q\,
	combout => \C2|R2~0_combout\);

-- Location: FF_X38_Y5_N19
\C2|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(0));

-- Location: LCCOMB_X38_Y5_N28
\C2|R2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~1_combout\ = (q1(10) & (\C1|R[1]~2_combout\ & \spriteon2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(10),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon2~q\,
	combout => \C2|R2~1_combout\);

-- Location: FF_X38_Y5_N29
\C2|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(1));

-- Location: LCCOMB_X39_Y4_N18
\C2|R2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~2_combout\ = (\spriteon2~q\ & (q1(11) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon2~q\,
	datac => q1(11),
	datad => \C1|R[1]~2_combout\,
	combout => \C2|R2~2_combout\);

-- Location: FF_X39_Y4_N19
\C2|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(2));

-- Location: LCCOMB_X49_Y39_N26
\Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (POSY(5) & (VPOS(5) & (POSY(6) $ (!VPOS(6))))) # (!POSY(5) & (!VPOS(5) & (POSY(6) $ (VPOS(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => POSY(5),
	datac => VPOS(5),
	datad => VPOS(6),
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X49_Y39_N28
\Equal10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Equal14~2_combout\ & (\Equal10~2_combout\ & (\Add19~2_combout\ $ (!VPOS(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~2_combout\,
	datab => \Add19~2_combout\,
	datac => \Equal10~2_combout\,
	datad => VPOS(8),
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X49_Y38_N18
\Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = POSY(9) $ (\Add19~0_combout\ $ (VPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datac => \Add19~0_combout\,
	datad => VPOS(9),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X50_Y39_N26
\Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Add19~0_combout\ & ((\Add19~1_combout\ $ (!VPOS(7))))) # (!\Add19~0_combout\ & (POSY(9) & (\Add19~1_combout\ $ (!VPOS(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => POSY(9),
	datac => \Add19~1_combout\,
	datad => VPOS(7),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X45_Y32_N4
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\Equal9~6_combout\) # ((\Equal10~3_combout\ & (\Equal10~0_combout\ & \Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \Equal10~3_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X51_Y37_N26
\Equal17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!VPOS(5) & (\Equal16~1_combout\ & (VPOS(6) & !VPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datab => \Equal16~1_combout\,
	datac => VPOS(6),
	datad => VPOS(9),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X45_Y32_N6
\q2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q2~1_combout\ = (\Equal5~0_combout\ & ((\process_0~7_combout\) # (\Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \process_0~7_combout\,
	datad => \Equal17~0_combout\,
	combout => \q2~1_combout\);

-- Location: LCCOMB_X47_Y34_N26
\Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (HPOS(7) & (!POSX(7) & (POSX(8) $ (HPOS(8))))) # (!HPOS(7) & (POSX(7) & (POSX(8) $ (!HPOS(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => HPOS(7),
	datac => POSX(7),
	datad => HPOS(8),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X50_Y34_N4
\Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (\Equal13~0_combout\ & (\Add20~1_combout\ $ (!HPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Add20~1_combout\,
	datad => HPOS(9),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X49_Y34_N30
\Equal13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\Equal13~1_combout\ & (\Equal9~3_combout\ & (POSX(10) $ (\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal9~3_combout\,
	datac => POSX(10),
	datad => \Add20~2_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X45_Y32_N16
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\Equal14~6_combout\) # (\Equal13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal14~6_combout\,
	datac => \Equal13~2_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X45_Y32_N24
\q2[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q2[5]~0_combout\ = (\Equal5~1_combout\ & ((\process_0~8_combout\))) # (!\Equal5~1_combout\ & (\q2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2~1_combout\,
	datab => \process_0~8_combout\,
	datad => \Equal5~1_combout\,
	combout => \q2[5]~0_combout\);

-- Location: FF_X45_Y32_N25
\q2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q2[5]~0_combout\,
	asdata => \q1[5]~0_combout\,
	sload => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(5));

-- Location: LCCOMB_X38_Y5_N30
\C2|G2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~0_combout\ = (q2(5) & (\C1|R[1]~2_combout\ & \spriteon2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q2(5),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon2~q\,
	combout => \C2|G2~0_combout\);

-- Location: FF_X38_Y5_N31
\C2|G2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(0));

-- Location: LCCOMB_X45_Y32_N22
\q2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q2~2_combout\ = (\process_0~0_combout\ & (\q2[5]~0_combout\)) # (!\process_0~0_combout\ & ((\q1[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q2[5]~0_combout\,
	datac => \q1[6]~1_combout\,
	datad => \process_0~0_combout\,
	combout => \q2~2_combout\);

-- Location: FF_X45_Y32_N23
\q2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(6));

-- Location: LCCOMB_X38_Y5_N16
\C2|G2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~1_combout\ = (q2(6) & (\C1|R[1]~2_combout\ & \spriteon2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q2(6),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon2~q\,
	combout => \C2|G2~1_combout\);

-- Location: FF_X38_Y5_N17
\C2|G2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(1));

-- Location: LCCOMB_X45_Y32_N8
\q2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q2~3_combout\ = (\process_0~0_combout\ & ((\q2[5]~0_combout\))) # (!\process_0~0_combout\ & (\q1[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \q1[7]~2_combout\,
	datad => \q2[5]~0_combout\,
	combout => \q2~3_combout\);

-- Location: FF_X45_Y32_N9
\q2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q2(7));

-- Location: LCCOMB_X39_Y4_N12
\C2|G2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~2_combout\ = (q2(7) & (\spriteon2~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q2(7),
	datac => \spriteon2~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C2|G2~2_combout\);

-- Location: FF_X39_Y4_N13
\C2|G2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(2));

-- Location: LCCOMB_X50_Y39_N30
\LessThan17~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan17~21_combout\ = (\LessThan17~18_combout\ & ((\Add19~0_combout\) # ((POSY(9)) # (\LessThan17~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~0_combout\,
	datab => POSY(9),
	datac => \LessThan17~18_combout\,
	datad => \LessThan17~20_combout\,
	combout => \LessThan17~21_combout\);

-- Location: LCCOMB_X50_Y40_N4
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY(VPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X50_Y40_N6
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((POSY(1) & (!VPOS(1) & !\LessThan5~1_cout\)) # (!POSY(1) & ((!\LessThan5~1_cout\) # (!VPOS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(1),
	datab => VPOS(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X50_Y40_N8
\LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((POSY(2) & (VPOS(2) & !\LessThan5~3_cout\)) # (!POSY(2) & ((VPOS(2)) # (!\LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => VPOS(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X50_Y40_N10
\LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((VPOS(3) & (POSY(3) & !\LessThan5~5_cout\)) # (!VPOS(3) & ((POSY(3)) # (!\LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => POSY(3),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X50_Y40_N12
\LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((POSY(4) & ((VPOS(4)) # (!\LessThan5~7_cout\))) # (!POSY(4) & (VPOS(4) & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => VPOS(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X50_Y40_N14
\LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((POSY(5) & ((!\LessThan5~9_cout\) # (!VPOS(5)))) # (!POSY(5) & (!VPOS(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => VPOS(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X50_Y40_N16
\LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\Add19~3_combout\ & (VPOS(6) & !\LessThan5~11_cout\)) # (!\Add19~3_combout\ & ((VPOS(6)) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~3_combout\,
	datab => VPOS(6),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X50_Y40_N18
\LessThan5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((\Add19~1_combout\ & ((!\LessThan5~13_cout\) # (!VPOS(7)))) # (!\Add19~1_combout\ & (!VPOS(7) & !\LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~1_combout\,
	datab => VPOS(7),
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X50_Y40_N20
\LessThan5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~17_cout\ = CARRY((\Add19~2_combout\ & (VPOS(8) & !\LessThan5~15_cout\)) # (!\Add19~2_combout\ & ((VPOS(8)) # (!\LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~2_combout\,
	datab => VPOS(8),
	datad => VCC,
	cin => \LessThan5~15_cout\,
	cout => \LessThan5~17_cout\);

-- Location: LCCOMB_X50_Y40_N22
\LessThan5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~18_combout\ = (\Add19~5_combout\ & ((VPOS(9)) # (\LessThan5~17_cout\))) # (!\Add19~5_combout\ & (VPOS(9) & \LessThan5~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~5_combout\,
	datab => VPOS(9),
	cin => \LessThan5~17_cout\,
	combout => \LessThan5~18_combout\);

-- Location: LCCOMB_X47_Y36_N12
\spriteon4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon4~0_combout\ = (\LessThan17~21_combout\ & (!\process_0~6_combout\ & ((\LessThan5~18_combout\) # (!\Add19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \LessThan17~21_combout\,
	datac => \process_0~6_combout\,
	datad => \LessThan5~18_combout\,
	combout => \spriteon4~0_combout\);

-- Location: LCCOMB_X47_Y36_N20
\spriteon3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon3~0_combout\ = (\spriteon2~1_combout\) # ((\process_0~1_combout\ & (\process_0~2_combout\ & \spriteon4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \spriteon2~1_combout\,
	datac => \process_0~2_combout\,
	datad => \spriteon4~0_combout\,
	combout => \spriteon3~0_combout\);

-- Location: FF_X47_Y36_N21
spriteon3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \spriteon3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spriteon3~q\);

-- Location: LCCOMB_X38_Y5_N10
\C3|R3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|R3~0_combout\ = (q1(9) & (\C1|R[1]~2_combout\ & \spriteon3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(9),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon3~q\,
	combout => \C3|R3~0_combout\);

-- Location: FF_X38_Y5_N11
\C3|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|R3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|R3\(0));

-- Location: LCCOMB_X38_Y5_N20
\C3|R3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|R3~1_combout\ = (q1(10) & (\C1|R[1]~2_combout\ & \spriteon3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(10),
	datac => \C1|R[1]~2_combout\,
	datad => \spriteon3~q\,
	combout => \C3|R3~1_combout\);

-- Location: FF_X38_Y5_N21
\C3|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|R3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|R3\(1));

-- Location: LCCOMB_X39_Y4_N30
\C3|R3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|R3~2_combout\ = (\spriteon3~q\ & (q1(11) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon3~q\,
	datac => q1(11),
	datad => \C1|R[1]~2_combout\,
	combout => \C3|R3~2_combout\);

-- Location: FF_X39_Y4_N31
\C3|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|R3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|R3\(2));

-- Location: LCCOMB_X47_Y35_N30
\Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (HPOS(2) & (HPOS(1) & (HPOS(9) & !HPOS(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datab => HPOS(1),
	datac => HPOS(9),
	datad => HPOS(8),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X47_Y35_N0
\Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (HPOS(4) & (HPOS(6) & (HPOS(5) & !HPOS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(4),
	datab => HPOS(6),
	datac => HPOS(5),
	datad => HPOS(3),
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X47_Y35_N6
\Equal15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (\Equal15~0_combout\ & (\Equal15~1_combout\ & (!HPOS(0) & !HPOS(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \Equal15~1_combout\,
	datac => HPOS(0),
	datad => HPOS(7),
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X45_Y32_N10
\q3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q3~1_combout\ = (\Equal5~0_combout\ & ((\process_0~8_combout\) # ((\Equal16~2_combout\) # (\Equal15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \process_0~8_combout\,
	datac => \Equal16~2_combout\,
	datad => \Equal15~2_combout\,
	combout => \q3~1_combout\);

-- Location: LCCOMB_X45_Y32_N26
\q3[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q3[5]~0_combout\ = (\Equal5~1_combout\ & ((\process_0~7_combout\))) # (!\Equal5~1_combout\ & (\q3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3~1_combout\,
	datab => \process_0~7_combout\,
	datad => \Equal5~1_combout\,
	combout => \q3[5]~0_combout\);

-- Location: FF_X45_Y32_N27
\q3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q3[5]~0_combout\,
	asdata => \q1[5]~0_combout\,
	sload => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q3(5));

-- Location: LCCOMB_X39_Y4_N16
\C3|g3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~0_combout\ = (\spriteon3~q\ & (q3(5) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon3~q\,
	datac => q3(5),
	datad => \C1|R[1]~2_combout\,
	combout => \C3|g3~0_combout\);

-- Location: FF_X39_Y4_N17
\C3|g3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(0));

-- Location: LCCOMB_X45_Y32_N2
\q3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q3~2_combout\ = (\process_0~0_combout\ & (\q3[5]~0_combout\)) # (!\process_0~0_combout\ & ((\q1[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3[5]~0_combout\,
	datac => \q1[6]~1_combout\,
	datad => \process_0~0_combout\,
	combout => \q3~2_combout\);

-- Location: FF_X45_Y32_N3
\q3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q3(6));

-- Location: LCCOMB_X39_Y4_N26
\C3|g3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~1_combout\ = (q3(6) & (\spriteon3~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q3(6),
	datac => \spriteon3~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C3|g3~1_combout\);

-- Location: FF_X39_Y4_N27
\C3|g3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(1));

-- Location: LCCOMB_X45_Y32_N12
\q3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q3~3_combout\ = (\process_0~0_combout\ & ((\q3[5]~0_combout\))) # (!\process_0~0_combout\ & (\q1[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \q1[7]~2_combout\,
	datac => \q3[5]~0_combout\,
	combout => \q3~3_combout\);

-- Location: FF_X45_Y32_N13
\q3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q3(7));

-- Location: LCCOMB_X39_Y4_N28
\C3|g3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~2_combout\ = (\spriteon3~q\ & (q3(7) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon3~q\,
	datac => q3(7),
	datad => \C1|R[1]~2_combout\,
	combout => \C3|g3~2_combout\);

-- Location: FF_X39_Y4_N29
\C3|g3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(2));

-- Location: LCCOMB_X47_Y36_N6
\spriteon4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \spriteon4~1_combout\ = (\spriteon2~1_combout\) # ((\spriteon4~0_combout\ & \process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon4~0_combout\,
	datab => \spriteon2~1_combout\,
	datac => \process_0~5_combout\,
	combout => \spriteon4~1_combout\);

-- Location: FF_X47_Y36_N7
spriteon4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \spriteon4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spriteon4~q\);

-- Location: LCCOMB_X38_Y5_N22
\C4|R4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|R4~0_combout\ = (\spriteon4~q\ & (\C1|R[1]~2_combout\ & q1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon4~q\,
	datac => \C1|R[1]~2_combout\,
	datad => q1(9),
	combout => \C4|R4~0_combout\);

-- Location: FF_X38_Y5_N23
\C4|R4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|R4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|R4\(0));

-- Location: LCCOMB_X38_Y5_N0
\C4|R4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|R4~1_combout\ = (\spriteon4~q\ & (\C1|R[1]~2_combout\ & q1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon4~q\,
	datac => \C1|R[1]~2_combout\,
	datad => q1(10),
	combout => \C4|R4~1_combout\);

-- Location: FF_X38_Y5_N1
\C4|R4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|R4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|R4\(1));

-- Location: LCCOMB_X39_Y4_N22
\C4|R4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|R4~2_combout\ = (q1(11) & (\C1|R[1]~2_combout\ & \spriteon4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(11),
	datab => \C1|R[1]~2_combout\,
	datad => \spriteon4~q\,
	combout => \C4|R4~2_combout\);

-- Location: FF_X39_Y4_N23
\C4|R4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|R4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|R4\(2));

-- Location: LCCOMB_X45_Y32_N28
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\Equal13~2_combout\) # ((\Equal10~3_combout\ & (\Equal10~0_combout\ & \Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~2_combout\,
	datab => \Equal10~3_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~1_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X45_Y32_N14
\q4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q4~1_combout\ = (\Equal5~0_combout\ & ((\Equal15~2_combout\) # ((\process_0~9_combout\) # (\Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~2_combout\,
	datab => \process_0~9_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal17~0_combout\,
	combout => \q4~1_combout\);

-- Location: LCCOMB_X45_Y32_N20
\q4[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q4[5]~0_combout\ = (\Equal5~1_combout\ & ((\process_0~9_combout\))) # (!\Equal5~1_combout\ & (\q4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q4~1_combout\,
	datab => \process_0~9_combout\,
	datad => \Equal5~1_combout\,
	combout => \q4[5]~0_combout\);

-- Location: FF_X45_Y32_N21
\q4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q4[5]~0_combout\,
	asdata => \q1[5]~0_combout\,
	sload => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q4(5));

-- Location: LCCOMB_X38_Y5_N26
\C4|g4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~0_combout\ = (\spriteon4~q\ & (\C1|R[1]~2_combout\ & q4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon4~q\,
	datac => \C1|R[1]~2_combout\,
	datad => q4(5),
	combout => \C4|g4~0_combout\);

-- Location: FF_X38_Y5_N27
\C4|g4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(0));

-- Location: LCCOMB_X45_Y28_N22
\q4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q4~2_combout\ = (\process_0~0_combout\ & ((\q4[5]~0_combout\))) # (!\process_0~0_combout\ & (\q1[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datac => \q1[6]~1_combout\,
	datad => \q4[5]~0_combout\,
	combout => \q4~2_combout\);

-- Location: FF_X45_Y28_N23
\q4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q4(6));

-- Location: LCCOMB_X38_Y5_N4
\C4|g4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~1_combout\ = (q4(6) & (\spriteon4~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q4(6),
	datab => \spriteon4~q\,
	datac => \C1|R[1]~2_combout\,
	combout => \C4|g4~1_combout\);

-- Location: FF_X38_Y5_N5
\C4|g4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(1));

-- Location: LCCOMB_X45_Y28_N16
\q4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q4~3_combout\ = (\process_0~0_combout\ & (\q4[5]~0_combout\)) # (!\process_0~0_combout\ & ((\q1[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q4[5]~0_combout\,
	datac => \q1[7]~2_combout\,
	datad => \process_0~0_combout\,
	combout => \q4~3_combout\);

-- Location: FF_X45_Y28_N17
\q4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q4(7));

-- Location: LCCOMB_X45_Y28_N6
\C4|g4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~2_combout\ = (\spriteon4~q\ & (q4(7) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spriteon4~q\,
	datac => q4(7),
	datad => \C1|R[1]~2_combout\,
	combout => \C4|g4~2_combout\);

-- Location: FF_X45_Y28_N7
\C4|g4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(2));

-- Location: M9K_X33_Y29_N0
\c0|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD10BFFFFFFFFFFFFFFFFFFFFFFFFFFFF4242FFFFFFFFFFFFFFFFFFFFFFFFFFFD0C30BFFFFFFFFFFFFFFFFFFFFFFFFFF4F00D2FFFFFFFFFFFFFFFFFFFFFFFFFD3C0030BFFFFFFFFFFFFFFFFFFFFFFFF430000C2FFFFFFFFFFFFFFFFFFFFFFFD4C04201E3FFFFFFFFFFFFFFFFFFFFFF0E018080FAFFFFFFFFFFFFFFFFFFFFFD7C0400203EBFFFFFFFFFFFFFFFFFFFF5F0181A0807AFFFFFFFFFFFFFFFFFFFF2C0617E82034FFFFFFFFFFFFFFFFFFFF80185FFA1809FFFFFFFFFFFFFFFFFFFF38617FFE8600FFFFFFFFFFFFFFFFFFFFC841FFFF8211FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFC1843FFFFC0103FFFFFFFFFFFFFFFFFF0602C7FFF3C040FFFFFFFFFFFFFFDFFD78070000006018BFFBFFFFFFFFFFC7F4E03000240004043FE3FFFFFFFFFF05F1C100494BB000810FA0FFFFFFFFFDE98B040CBCFFEF7820C1853FFFFFFFF1D81C12FFB7E7E5FF4820138FFFFFFF8304304B0FCF80F3F0D00C20C1FFFFFE2401C12F27C1FFE1E45483803C7FFFF8F00000238CC07F03318120000F1FFFE840700803E43FFFFE27C0100E0307FFA9008810778038F9CF00EE20110005FE9E020228360E3C7B87382E104040317E380801100A3EFDFBCE1E100080101C786020EB2010FE3900CC3F1004D504061A80C2FE4017FE3C3F16BF42025F41015",
	mem_init1 => X"3820BFE8C85FEBE77E39E7A313FD0410C842FFD002AFEBC27248F0100BFF4217C007FFA0077FEBEBF439F84805FFE2038007FEA007FFE3F26E31FF24007FE001C421FF40100FE3E1EF18700002FF8403E421FC0050022071E7384004283F8427C203FE3802E0FFFFDEFB81811D3FC863E213FE9081FAFFFFFFFF1E12A97FC85FF210FE81601DFFFFFFFF3BE0009F086FE0005D00084E7FFFFFFE6A9500BC0047FE080F009FEF9FFFFFD1DBF240F8101FF9080930BFE3D0017850CFF940B010DFF183E138FFF85E5FFE785FFEDC8FE18FF8800123DBF6BB1FFDCD6FEBC680019FFC80050422F8059009A00FE030A0013FF840051204FE34BFFD2C7EA068A0031F",
	mem_init0 => X"FE3F8504E57EBE900B7F7D0E14A1FC7FFE008428221FDFE667FBFEC30A01207FFD048450003FE73F7EE7FC00026120FFFFFC8756EFBFCFA817F3F96EBB613FFFFFFC06D6E6BFBB0A50FDF8623B613FFFFFFC8530603F8F1AD8B3FE0204A13FFFFFFC8498725F1FD2ABE9FEC209213FFFFFFC84ACE07E35DDEB2C7F5E13213FFFFFFC84F255FE3D7BC6BC7F874B21BFFFFFFC84F606FF79FFD79EFFB07F21BFFFFFFC84FEF7FCB7FA5EED7FF07F213FFFFFFC84FFFFFF770990EEFFFFFF213FFFFFFC84FFFFE1099BD99087FFFF213FFFFFFC84FFF86EDF97C1FBF61FFF213FFFFFFC84FFFBE0DB566EDB0FD7FF213FFFFFFC84FFF1E4395A5A9C2787FF213FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\c0|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFC04FFA78CEE5FFE7771E5FF213FFFFFFC84FF3C376FBE5FF4EC3FFF213FFFFFFC84FE17118AFA7F6380F87F213FFFFFFC84FA217815E1ADAC3E8C5F213FFFFFFC84FAC19DC10D1A33F9035F213FFFFFFC84FBE6FEE6BFFA877F7FDF213FFFFFFC84F1E98C07FBCF7071B78F213FFFFFFC84D19F89C7DA4F73D1F18B213FFFFFFC84E36FD9E4545DE79BF6C7213FFFFFFC84F716207F81C2BE5469EF213FFFFFFC84E4E730C73F70A704E723213FFFFFFC84E32EE9BFEE73FC977587213FFFFFFC84FEDB4CFE0A5B3F33CBDF213FFFFF0484FDAD10FEE1D0FE2835BF21207FFE0084CE27EDFF8F6EFEA7E66321007FFE3F84EF9C8B8FB691C1516BA721FDFF",
	mem_init2 => X"F800044753FA591E9F9A71AAE020001FFC80044E98EBD5F797ABD7197020013FF88004DD17AA95FD43A957ECAB2001DFF107F8EA654D77C4BFAF82A67F1FC08FF90800CCB699E79D5FA79D69330010DFFB0800E123E6CF853FF35E45C30010CFE0000FE759E89F8F1FF8B71AE73A0047F210FFEAFFD37F8BBFF65AFF57FF086FE213FFEFE5E4FFD79FFF3FA5F7FFC84FC203FFFD7ADDFFFF9FFFB37EFFFFC063E421FFE6F82AFFF7C9FF541B6FFF8427C421FFF8D5D4FFCFB4FF13AB4FFF84238007FFF0AC33FFA5187FCC2D0FFFE001C047FFF1A967FFE0443FE4950FFFC21BD842FFE35F6FFFF2677FD6FBDFFF42131020BFFD96AFFFDF53BFF55BBFFD0414",
	mem_init1 => X"80082FE537FFFFF7FFFFF7ECA3F4101D86020A843D2FFF4243FFFDACA1704061E380800C3D4FFFF24BFFF2BC70010087E8E020223B5FFF55A7FFFA9C44040317FA100881BF7FFF5FDAFFFEDF8190085FFE8407002F5FFF1C38FFFAF40060307FFF8F000007BFFF65B2FFFEE20000F1FFFFE0C01C4AB7FF4183FFECE23802C7FFFFF830434AE5FFF63FFFA5708E0C1FFFFFFF2DA0A6E17FF9BFFE87650530FFFFFFFFC49CD4107FFBDFFE0A081903FFFFFFFFF25F3C042FFCFFFC201CFA0FFFFFFFFFFC7F5E0103FFFFF0807BFE3FFFFFFFFFFDFFD580C5FFFFA303ABFFBFFFFFFFFFFFFFF02007FFFFC0060FFFFFFFFFFFFFFFFFFC1843FFFFC21C3FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFF8841FFFF8219FFFFFFFFFFFFFFFFFFFF0061FFFE8608FFFFFFFFFFFFFFFFFFFF90185FFA0809FFFFFFFFFFFFFFFFFFFF2C0617E8203CFFFFFFFFFFFFFFFFFFFF470185A0806AFFFFFFFFFFFFFFFFFFFFD7804182014BFFFFFFFFFFFFFFFFFFFFF4A01808072FFFFFFFFFFFFFFFFFFFFFFD5C04603ABFFFFFFFFFFFFFFFFFFFFFFF470000F2FFFFFFFFFFFFFFFFFFFFFFFFD0C0030BFFFFFFFFFFFFFFFFFFFFFFFFF4B00E2FFFFFFFFFFFFFFFFFFFFFFFFFFD7C30BFFFFFFFFFFFFFFFFFFFFFFFFFFF4242FFFFFFFFFFFFFFFFFFFFFFFFFFFFD00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y28_N26
\q1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~8_combout\ = (!\process_0~0_combout\ & ((\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \process_0~0_combout\,
	combout => \q1~8_combout\);

-- Location: FF_X45_Y28_N27
\q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(2));

-- Location: LCCOMB_X39_Y4_N0
\C1|b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b~0_combout\ = (q1(2) & (\spriteon1~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(2),
	datac => \spriteon1~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C1|b~0_combout\);

-- Location: FF_X39_Y4_N1
\C1|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|b\(0));

-- Location: M9K_X33_Y33_N0
\c0|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF8037FDFF3B5AE75AD8FFBFEC01FFFFFF8037EFFCFD05FF80BF3FE7EC01FFFFFF8037DFFEFF5DFFD9FFFFFBEC01FFFFFF8037DFEFFEBDE7FD7FF7FBEC01FFFFFF8037DFE7E1FF3EDD87EFFBEC01FFFFFF80377F9FDF973C77FBF9FEEC01FFFFFF8036FF673FA7FFF6F8E4FF6C01FFFFFF8036FF9F7FB7FFFEFEF9FF6C01FFFFFF80377F7E7FBFBAF1FE7EFEEC01FFFFFF8036FEFDF807E7D41FBF7F6C01FFFFFF8035FD9CF39CEFBD8FB9BFEC01FFFFFF8035FF7DE7DDFFFBF7BEFFAC01FFFFFF80347EFBF7FFFFFFEFDF7E2C01FFFFEF8036FDFFF7F1E7F7FDFFBF6C01FFFFC00037FDB0EBF7191FD70DBFEC0003FFC00035DE7FE777BCFFEFFE5FAC0003F",
	mem_init2 => X"FC0003BBEF5DAFF7FDF5BEF7DFC0003FF80003B7EED33FAEFBFCCB77EFC0001FF800036FE9F7FF8EFFFFED97F6C0001FF800077FDBF7BDBB47FDFFDBF6E0001FF007FF7FFBF67BF7AFDE6BDFFEFFE00FF007FF5FFF3977FFDFEEADFFBEFFE00FF00FF05BF67F6FFDFFF6FEEFDAC5F00FE00FFFD7F0FE9FFEFFF9FF0FEBFFF007E00DFFF7FEFFBFAFFFFDEF7FEFFFB007E01DFFF7EDEF7FD7C7FEF7B7EFFFB807C01FFFFFDFDFFFDF83FFFBFFFFFFF803C01FFFEFFE3FFFFFC1FFFC7FF7FFF803C03BFFEFFFDDFFDFE0FFBBFFF7FFDC03803BFFEFFFDBFFDFB03FDBFFF7FFFC01803DFFFDFBD7FF0D00BFEBDFAFFFBC01801F7FE3FFD7FFBF887FEBFFC7FEF801",
	mem_init1 => X"0007DF9BFFAFFF0003FFFDFFDDFBE0000001F77BFFFFFFE007FFF7FFDEEF8000C0007FF3FFFFFF8001FFFFFF8FFE0003F0001FC1FFFFFFA000FFFFFF83F8000FFC0007007BDFFF0020FFFBFC0060003FFF0000007BFFFEA2457FFFDE000000FFFFC000007BDFFF0000FFFBDC000003FFFFF0000037CFFF9008FFF3DC00000FFFFFFC0000379BFFEC37FFDBCC00003FFFFFFE0000139EFFFC1FFF79C800007FFFFFFF8008038FBFFC3FFDF1C03001FFFFFFFFE03E0383DFFE3FF3C1C07C07FFFFFFFFF8FF8180FFFFFFCF0181FF1FFFFFFFFFFFFFE0003BFFFFDC0007FFFFFFFFFFFFFFFFF8003BFFFFFC001FFFFFFFFFFFFFFFFFFE003FFFFFFC007FFFFFFFFF",
	mem_init0 => X"FFFFFFFFFF003FFFFFFC00FFFFFFFFFFFFFFFFFFFF801E7FFF7801FFFFFFFFFFFFFFFFFFFF0007BFFDF000FFFFFFFFFFFFFFFFFFFF0001EFF7C000FFFFFFFFFFFFFFFFFFFF80007BDF0001FFFFFFFFFFFFFFFFFFFFE0003E7C0007FFFFFFFFFFFFFFFFFFFFF80007F0001FFFFFFFFFFFFFFFFFFFFFFE000380007FFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => ALT_INV_address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y32_N0
\c0|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFE0000007FFFFFFFFFFFFFFFFFFFFFFFF80000001FFFFFFFFFFFFFFFFFFFFFFFE0003C0007FFFFFFFFFFFFFFFFFFFFFF80007F0001FFFFFFFFFFFFFFFFFFFFFE0003FFC0007FFFFFFFFFFFFFFFFFFFF80007FDF0001FFFFFFFFFFFFFFFFFFFF0001EFF7C000FFFFFFFFFFFFFFFFFFFF0007BFFDE000FFFFFFFFFFFFFFFFFFFF801EFFFF7801FFFFFFFFFFFFFFFFFFFF003FFFFFFC00FFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFE003FFFFFFC007FFFFFFFFFFFFFFFFFF800138000C0001FFFFFFFFFFFFFFFFFE0000FFFFFF80007FFFFFFFFFFFFF8FF8000FFFFFFFF8001FF1FFFFFFFFFE03E000FFFFFFFFFF0007C07FFFFFFFF800C003FFF7DBFDFFC003001FFFFFFFE000000DFFFFFFFFFFB0000007FFFFFFC0000037FFFFFFFFFFEE000003FFFFFF000000DFFFFE001FFFFB000000FFFFFC000003FFFF3FFFFCFFFEC000003FFFF0000007FFFBFFFFFFDFFFE000000FFFC000700FBFFFFFFFFFFFFDD80E0003FF0001FC17FFFC38F9CE3FFDEC3F8000FC0007FE6FFDFC387B863FFFFE7FE00030001F74DFFFFC3C00861FEFFB2EF80000003DF9BFEBFC3C73841FFFFDBFBE000",
	mem_init1 => X"801F7FD7FFFFC3C37041FF5FEFFEF801803DFFAFFDFFC3E37411FFEFF5FFBC01803BFF5FFBFFC3E27610FFF7FAFFDC01C03BFF5FFFFFC3E0F618FFFBFFFFDC03C01FFEBFEFFFC3F0E638FFFFFD7FF803C01FFFFFAFFFC3F0EE18FFFBD7FFF803E01DFDDFFFFF0071EF1C7FFEFAFFB007E00DFD6F7FFDFFFFFFFFFFFD56BFB007E00FFD7EBFFE7FFFFFFEFC1FFF7FF007F00FA2FFF7BFBFFFFFFDF5EAFF43F00FF007F2FF6FD77FFFFFFEE7FDBF47E00FF007F6CF5FFFAFFE87AFF7FEBF4FE00FF80006F73FF7E33FFCC7EFFD2F60001FF80006FC27F9475FFAF29FF43D60001FF80002FBDDFBBA6FF65DDF9FCF40001FFC0002EDFB79DBC003DB9F5F9740003F",
	mem_init0 => X"FC0002FB7EBF7F6FF4FCFEF7EB40003FFC0003D7FFFFEEFFFF77FD7EF5C0003FFEF803AFFFDFFEF6EF7FFFFFFD801F7FFFF801AF775FF6D7E96FFEF774801FFFFFF801AF7F5FC6F7EF63FFFFF5801FFFFFF802CF9FDFFAFF7F5FFDFDFB401FFFFFF80367EFBFFCEDD73EFD7FF6C01FFFFFF803537FBFDFFBDFFBFEB7ECC01FFFFFF8036DAA7FE3CFFBC7FF78B6C01FFFFFF80379F9FFEF526AF7FFCF8EC01FFFFFF8037F0FFF5E1DB97AFFFFFEC01FFFFFF8037FFFFE9EFFFF797FFFFEC01FFFFFF8037FFFDEF7E7E7EF7BFFFEC01FFFFFF8037FFF9F73FFFFCEF9FFFEC01FFFFFF8037FE7FF7FFBDBFEFFEFFEC01FFFFFF8037FEFFBEEF5AF77DFF7FEC01FFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_vlt3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	ena0 => address(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y32_N30
\q1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q1~9_combout\ = (!\process_0~0_combout\ & ((\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \q1~9_combout\);

-- Location: FF_X45_Y32_N31
\q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \q1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(3));

-- Location: LCCOMB_X39_Y4_N10
\C1|b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b~1_combout\ = (q1(3) & (\spriteon1~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(3),
	datac => \spriteon1~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C1|b~1_combout\);

-- Location: FF_X39_Y4_N11
\C1|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|b\(1));

-- Location: LCCOMB_X39_Y4_N4
\C2|B2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2~0_combout\ = (q1(2) & (\spriteon2~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(2),
	datac => \spriteon2~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C2|B2~0_combout\);

-- Location: FF_X39_Y4_N5
\C2|B2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|B2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|B2\(0));

-- Location: LCCOMB_X39_Y4_N14
\C2|B2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2~1_combout\ = (q1(3) & (\spriteon2~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(3),
	datac => \spriteon2~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C2|B2~1_combout\);

-- Location: FF_X39_Y4_N15
\C2|B2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|B2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|B2\(1));

-- Location: LCCOMB_X39_Y4_N24
\C3|b3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|b3~0_combout\ = (q1(2) & (\spriteon3~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(2),
	datac => \spriteon3~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C3|b3~0_combout\);

-- Location: FF_X39_Y4_N25
\C3|b3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|b3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|b3\(0));

-- Location: LCCOMB_X39_Y4_N2
\C3|b3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|b3~1_combout\ = (q1(3) & (\spriteon3~q\ & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(3),
	datac => \spriteon3~q\,
	datad => \C1|R[1]~2_combout\,
	combout => \C3|b3~1_combout\);

-- Location: FF_X39_Y4_N3
\C3|b3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|b3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|b3\(1));

-- Location: LCCOMB_X39_Y4_N20
\C4|b4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|b4~0_combout\ = (\spriteon4~q\ & (q1(2) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon4~q\,
	datab => q1(2),
	datad => \C1|R[1]~2_combout\,
	combout => \C4|b4~0_combout\);

-- Location: FF_X39_Y4_N21
\C4|b4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|b4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|b4\(0));

-- Location: LCCOMB_X39_Y4_N6
\C4|b4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|b4~1_combout\ = (\spriteon4~q\ & (q1(3) & \C1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spriteon4~q\,
	datab => q1(3),
	datad => \C1|R[1]~2_combout\,
	combout => \C4|b4~1_combout\);

-- Location: FF_X39_Y4_N7
\C4|b4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|b4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|b4\(1));

-- Location: LCCOMB_X25_Y5_N18
\C2|HSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|HSYNC~feeder_combout\ = \C1|process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~5_combout\,
	combout => \C2|HSYNC~feeder_combout\);

-- Location: FF_X25_Y5_N19
\C2|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|HSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|HSYNC~q\);

-- Location: LCCOMB_X49_Y38_N10
\C2|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|VSYNC~feeder_combout\ = \C1|process_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~8_combout\,
	combout => \C2|VSYNC~feeder_combout\);

-- Location: FF_X49_Y38_N11
\C2|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|VSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|VSYNC~q\);

-- Location: FF_X35_Y4_N25
\C3|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|process_0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|HSYNC~q\);

-- Location: LCCOMB_X49_Y38_N4
\C3|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|VSYNC~feeder_combout\ = \C1|process_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~8_combout\,
	combout => \C3|VSYNC~feeder_combout\);

-- Location: FF_X49_Y38_N5
\C3|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|VSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|VSYNC~q\);

-- Location: LCCOMB_X45_Y27_N8
\C4|HSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|HSYNC~feeder_combout\ = \C1|process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~5_combout\,
	combout => \C4|HSYNC~feeder_combout\);

-- Location: FF_X45_Y27_N9
\C4|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|HSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|HSYNC~q\);

-- Location: LCCOMB_X49_Y38_N22
\C4|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|VSYNC~feeder_combout\ = \C1|process_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~8_combout\,
	combout => \C4|VSYNC~feeder_combout\);

-- Location: FF_X49_Y38_N23
\C4|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|VSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|VSYNC~q\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


