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

-- DATE "01/24/2018 03:11:04"

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
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Equal0~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \C1|HPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~11\ : std_logic;
SIGNAL \C1|HPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~13\ : std_logic;
SIGNAL \C1|HPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~15\ : std_logic;
SIGNAL \C1|HPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17\ : std_logic;
SIGNAL \C1|HPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19\ : std_logic;
SIGNAL \C1|HPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21\ : std_logic;
SIGNAL \C1|HPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23\ : std_logic;
SIGNAL \C1|HPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~25\ : std_logic;
SIGNAL \C1|HPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27\ : std_logic;
SIGNAL \C1|HPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~13\ : std_logic;
SIGNAL \C1|VPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15\ : std_logic;
SIGNAL \C1|VPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17\ : std_logic;
SIGNAL \C1|VPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~19\ : std_logic;
SIGNAL \C1|VPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21\ : std_logic;
SIGNAL \C1|VPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23\ : std_logic;
SIGNAL \C1|VPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~25\ : std_logic;
SIGNAL \C1|VPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|LessThan15~0_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27\ : std_logic;
SIGNAL \C1|VPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|LessThan15~1_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11\ : std_logic;
SIGNAL \C1|VPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|LessThan11~1_combout\ : std_logic;
SIGNAL \C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C1|Add4~1\ : std_logic;
SIGNAL \C1|Add4~3\ : std_logic;
SIGNAL \C1|Add4~5\ : std_logic;
SIGNAL \C1|Add4~7\ : std_logic;
SIGNAL \C1|Add4~9\ : std_logic;
SIGNAL \C1|Add4~11\ : std_logic;
SIGNAL \C1|Add4~13\ : std_logic;
SIGNAL \C1|Add4~15\ : std_logic;
SIGNAL \C1|Add4~17\ : std_logic;
SIGNAL \C1|Add4~18_combout\ : std_logic;
SIGNAL \C1|Add4~16_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \C1|Add4~14_combout\ : std_logic;
SIGNAL \C1|Add4~12_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \C1|Add4~10_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \C1|Add4~8_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \C1|Add4~6_combout\ : std_logic;
SIGNAL \C1|Add4~4_combout\ : std_logic;
SIGNAL \C1|Add4~2_combout\ : std_logic;
SIGNAL \C1|Add4~0_combout\ : std_logic;
SIGNAL \C1|Add5~1_cout\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~17\ : std_logic;
SIGNAL \C1|Add5~19\ : std_logic;
SIGNAL \C1|Add5~21\ : std_logic;
SIGNAL \C1|Add5~23\ : std_logic;
SIGNAL \C1|Add5~24_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \C1|Add5~22_combout\ : std_logic;
SIGNAL \C1|Add5~20_combout\ : std_logic;
SIGNAL \C1|Add5~18_combout\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|Add7~1\ : std_logic;
SIGNAL \C1|Add7~3\ : std_logic;
SIGNAL \C1|Add7~5\ : std_logic;
SIGNAL \C1|Add7~7\ : std_logic;
SIGNAL \C1|Add7~9\ : std_logic;
SIGNAL \C1|Add7~11\ : std_logic;
SIGNAL \C1|Add7~12_combout\ : std_logic;
SIGNAL \C1|Add6~1\ : std_logic;
SIGNAL \C1|Add6~3\ : std_logic;
SIGNAL \C1|Add6~5\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|Add7~10_combout\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|Add7~8_combout\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|Add7~6_combout\ : std_logic;
SIGNAL \C1|Add7~4_combout\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|Add6~0_combout\ : std_logic;
SIGNAL \C1|Add7~2_combout\ : std_logic;
SIGNAL \C1|Add7~0_combout\ : std_logic;
SIGNAL \C1|address[7]~8\ : std_logic;
SIGNAL \C1|address[8]~10\ : std_logic;
SIGNAL \C1|address[9]~12\ : std_logic;
SIGNAL \C1|address[10]~14\ : std_logic;
SIGNAL \C1|address[11]~16\ : std_logic;
SIGNAL \C1|address[12]~18\ : std_logic;
SIGNAL \C1|address[13]~19_combout\ : std_logic;
SIGNAL \C1|address[0]~21_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|address[2]~feeder_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|address[3]~feeder_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|address[7]~7_combout\ : std_logic;
SIGNAL \C1|address[8]~9_combout\ : std_logic;
SIGNAL \C1|address[9]~11_combout\ : std_logic;
SIGNAL \C1|address[10]~13_combout\ : std_logic;
SIGNAL \C1|address[11]~15_combout\ : std_logic;
SIGNAL \C1|address[12]~17_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \C1|R[0]~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \C1|g[0]~0_combout\ : std_logic;
SIGNAL \C2|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \licznik[0]~26_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \licznik[24]~75\ : std_logic;
SIGNAL \licznik[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
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
SIGNAL \licznik[14]~55\ : std_logic;
SIGNAL \licznik[15]~56_combout\ : std_logic;
SIGNAL \licznik[15]~57\ : std_logic;
SIGNAL \licznik[16]~58_combout\ : std_logic;
SIGNAL \licznik[16]~59\ : std_logic;
SIGNAL \licznik[17]~60_combout\ : std_logic;
SIGNAL \licznik[17]~61\ : std_logic;
SIGNAL \licznik[18]~62_combout\ : std_logic;
SIGNAL \licznik[18]~63\ : std_logic;
SIGNAL \licznik[19]~64_combout\ : std_logic;
SIGNAL \licznik[19]~65\ : std_logic;
SIGNAL \licznik[20]~66_combout\ : std_logic;
SIGNAL \licznik[20]~67\ : std_logic;
SIGNAL \licznik[21]~68_combout\ : std_logic;
SIGNAL \licznik[21]~69\ : std_logic;
SIGNAL \licznik[22]~70_combout\ : std_logic;
SIGNAL \licznik[22]~71\ : std_logic;
SIGNAL \licznik[23]~72_combout\ : std_logic;
SIGNAL \licznik[23]~73\ : std_logic;
SIGNAL \licznik[24]~74_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~8clkctrl_outclk\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \POSX[1]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~18_combout\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~16_combout\ : std_logic;
SIGNAL \C3|g3~0_combout\ : std_logic;
SIGNAL \C1|R~3_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_combout\ : std_logic;
SIGNAL \C1|LessThan0~0_combout\ : std_logic;
SIGNAL \C1|LessThan0~2_combout\ : std_logic;
SIGNAL \C1|LessThan0~3_combout\ : std_logic;
SIGNAL \C1|LessThan0~4_combout\ : std_logic;
SIGNAL \C1|LessThan1~0_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_combout\ : std_logic;
SIGNAL \C1|LessThan1~2_combout\ : std_logic;
SIGNAL \C1|R~10_combout\ : std_logic;
SIGNAL \C1|R~11_combout\ : std_logic;
SIGNAL \C1|LessThan2~0_combout\ : std_logic;
SIGNAL \C1|LessThan2~1_combout\ : std_logic;
SIGNAL \C1|R~12_combout\ : std_logic;
SIGNAL \C1|R~13_combout\ : std_logic;
SIGNAL \C1|R~15_combout\ : std_logic;
SIGNAL \C1|R~14_combout\ : std_logic;
SIGNAL \C1|R~16_combout\ : std_logic;
SIGNAL \C1|R~6_combout\ : std_logic;
SIGNAL \C1|R~8_combout\ : std_logic;
SIGNAL \C1|R~5_combout\ : std_logic;
SIGNAL \C1|R~4_combout\ : std_logic;
SIGNAL \C1|R~7_combout\ : std_logic;
SIGNAL \C1|R~9_combout\ : std_logic;
SIGNAL \C1|R~17_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \POSY[1]~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \C1|LessThan6~1_cout\ : std_logic;
SIGNAL \C1|LessThan6~3_cout\ : std_logic;
SIGNAL \C1|LessThan6~5_cout\ : std_logic;
SIGNAL \C1|LessThan6~7_cout\ : std_logic;
SIGNAL \C1|LessThan6~9_cout\ : std_logic;
SIGNAL \C1|LessThan6~11_cout\ : std_logic;
SIGNAL \C1|LessThan6~13_cout\ : std_logic;
SIGNAL \C1|LessThan6~15_cout\ : std_logic;
SIGNAL \C1|LessThan6~17_cout\ : std_logic;
SIGNAL \C1|LessThan6~18_combout\ : std_logic;
SIGNAL \C1|Add10~1\ : std_logic;
SIGNAL \C1|Add10~3\ : std_logic;
SIGNAL \C1|Add10~5\ : std_logic;
SIGNAL \C1|Add10~7\ : std_logic;
SIGNAL \C1|Add10~9\ : std_logic;
SIGNAL \C1|Add10~11\ : std_logic;
SIGNAL \C1|Add10~13\ : std_logic;
SIGNAL \C1|Add10~15\ : std_logic;
SIGNAL \C1|Add10~16_combout\ : std_logic;
SIGNAL \C1|Add10~14_combout\ : std_logic;
SIGNAL \C1|Add10~12_combout\ : std_logic;
SIGNAL \C1|Add10~10_combout\ : std_logic;
SIGNAL \C1|Add10~8_combout\ : std_logic;
SIGNAL \C1|Add10~6_combout\ : std_logic;
SIGNAL \C1|Add10~4_combout\ : std_logic;
SIGNAL \C1|Add10~2_combout\ : std_logic;
SIGNAL \C1|Add10~0_combout\ : std_logic;
SIGNAL \C1|LessThan7~1_cout\ : std_logic;
SIGNAL \C1|LessThan7~3_cout\ : std_logic;
SIGNAL \C1|LessThan7~5_cout\ : std_logic;
SIGNAL \C1|LessThan7~7_cout\ : std_logic;
SIGNAL \C1|LessThan7~9_cout\ : std_logic;
SIGNAL \C1|LessThan7~11_cout\ : std_logic;
SIGNAL \C1|LessThan7~13_cout\ : std_logic;
SIGNAL \C1|LessThan7~15_cout\ : std_logic;
SIGNAL \C1|LessThan7~16_combout\ : std_logic;
SIGNAL \C2|G2~0_combout\ : std_logic;
SIGNAL \C1|R~18_combout\ : std_logic;
SIGNAL \C1|R~19_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \C1|R[1]~1_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \C1|g[1]~1_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \C1|R[2]~2_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[7]~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[2]~1_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[3]~2_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \C1|g[2]~2_combout\ : std_logic;
SIGNAL \C2|R2[0]~13_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|R2~16_combout\ : std_logic;
SIGNAL \C2|process_0~2_combout\ : std_logic;
SIGNAL \C2|process_0~1_combout\ : std_logic;
SIGNAL \C2|process_0~3_combout\ : std_logic;
SIGNAL \C2|process_0~4_combout\ : std_logic;
SIGNAL \C2|process_0~5_combout\ : std_logic;
SIGNAL \C2|process_0~6_combout\ : std_logic;
SIGNAL \C2|R2[0]~14_combout\ : std_logic;
SIGNAL \C2|R2[0]~12_combout\ : std_logic;
SIGNAL \C2|LessThan1~1_combout\ : std_logic;
SIGNAL \C2|R2[0]~15_combout\ : std_logic;
SIGNAL \C2|R2~17_combout\ : std_logic;
SIGNAL \C2|R2~18_combout\ : std_logic;
SIGNAL \C2|G2~3_combout\ : std_logic;
SIGNAL \C2|Add0~2_combout\ : std_logic;
SIGNAL \C2|Add1~1\ : std_logic;
SIGNAL \C2|Add1~3\ : std_logic;
SIGNAL \C2|Add1~5\ : std_logic;
SIGNAL \C2|Add1~7\ : std_logic;
SIGNAL \C2|Add1~9\ : std_logic;
SIGNAL \C2|Add1~11\ : std_logic;
SIGNAL \C2|Add1~13\ : std_logic;
SIGNAL \C2|Add1~14_combout\ : std_logic;
SIGNAL \C2|Add1~12_combout\ : std_logic;
SIGNAL \C2|Add1~10_combout\ : std_logic;
SIGNAL \C2|Add1~8_combout\ : std_logic;
SIGNAL \C2|Add1~6_combout\ : std_logic;
SIGNAL \C2|Add1~4_combout\ : std_logic;
SIGNAL \C2|Add1~2_combout\ : std_logic;
SIGNAL \C2|Add1~0_combout\ : std_logic;
SIGNAL \C2|LessThan7~1_cout\ : std_logic;
SIGNAL \C2|LessThan7~3_cout\ : std_logic;
SIGNAL \C2|LessThan7~5_cout\ : std_logic;
SIGNAL \C2|LessThan7~7_cout\ : std_logic;
SIGNAL \C2|LessThan7~9_cout\ : std_logic;
SIGNAL \C2|LessThan7~11_cout\ : std_logic;
SIGNAL \C2|LessThan7~13_cout\ : std_logic;
SIGNAL \C2|LessThan7~15_cout\ : std_logic;
SIGNAL \C2|LessThan7~16_combout\ : std_logic;
SIGNAL \C2|Add1~15\ : std_logic;
SIGNAL \C2|Add1~16_combout\ : std_logic;
SIGNAL \C2|Add0~0_combout\ : std_logic;
SIGNAL \C2|Add0~1_combout\ : std_logic;
SIGNAL \C2|LessThan6~3_cout\ : std_logic;
SIGNAL \C2|LessThan6~5_cout\ : std_logic;
SIGNAL \C2|LessThan6~7_cout\ : std_logic;
SIGNAL \C2|LessThan6~9_cout\ : std_logic;
SIGNAL \C2|LessThan6~11_cout\ : std_logic;
SIGNAL \C2|LessThan6~13_cout\ : std_logic;
SIGNAL \C2|LessThan6~15_cout\ : std_logic;
SIGNAL \C2|LessThan6~17_cout\ : std_logic;
SIGNAL \C2|LessThan6~19_cout\ : std_logic;
SIGNAL \C2|LessThan6~20_combout\ : std_logic;
SIGNAL \C2|LessThan6~22_combout\ : std_logic;
SIGNAL \C2|G2~1_combout\ : std_logic;
SIGNAL \C2|G2~2_combout\ : std_logic;
SIGNAL \C2|G2~4_combout\ : std_logic;
SIGNAL \C2|G2[0]~5_combout\ : std_logic;
SIGNAL \C2|G2[0]~6_combout\ : std_logic;
SIGNAL \C2|G2~7_combout\ : std_logic;
SIGNAL \C2|G2~8_combout\ : std_logic;
SIGNAL \C3|Add1~0_combout\ : std_logic;
SIGNAL \C3|Add1~8_combout\ : std_logic;
SIGNAL \C3|Add1~5_combout\ : std_logic;
SIGNAL \C3|Add1~6_combout\ : std_logic;
SIGNAL \C3|Add1~7_combout\ : std_logic;
SIGNAL \C3|Add2~1\ : std_logic;
SIGNAL \C3|Add2~3\ : std_logic;
SIGNAL \C3|Add2~5\ : std_logic;
SIGNAL \C3|Add2~7\ : std_logic;
SIGNAL \C3|Add2~9\ : std_logic;
SIGNAL \C3|Add2~11\ : std_logic;
SIGNAL \C3|Add2~13\ : std_logic;
SIGNAL \C3|Add2~15\ : std_logic;
SIGNAL \C3|Add2~17\ : std_logic;
SIGNAL \C3|Add2~18_combout\ : std_logic;
SIGNAL \C3|Add1~1_combout\ : std_logic;
SIGNAL \C3|Add1~2_combout\ : std_logic;
SIGNAL \C3|Add1~3_combout\ : std_logic;
SIGNAL \C3|Add1~4_combout\ : std_logic;
SIGNAL \C3|LessThan8~1_cout\ : std_logic;
SIGNAL \C3|LessThan8~3_cout\ : std_logic;
SIGNAL \C3|LessThan8~5_cout\ : std_logic;
SIGNAL \C3|LessThan8~7_cout\ : std_logic;
SIGNAL \C3|LessThan8~9_cout\ : std_logic;
SIGNAL \C3|LessThan8~11_cout\ : std_logic;
SIGNAL \C3|LessThan8~13_cout\ : std_logic;
SIGNAL \C3|LessThan8~15_cout\ : std_logic;
SIGNAL \C3|LessThan8~17_cout\ : std_logic;
SIGNAL \C3|LessThan8~18_combout\ : std_logic;
SIGNAL \C3|LessThan8~20_combout\ : std_logic;
SIGNAL \C3|Add2~16_combout\ : std_logic;
SIGNAL \C3|Add2~14_combout\ : std_logic;
SIGNAL \C3|Add2~12_combout\ : std_logic;
SIGNAL \C3|Add2~10_combout\ : std_logic;
SIGNAL \C3|Add2~8_combout\ : std_logic;
SIGNAL \C3|Add2~6_combout\ : std_logic;
SIGNAL \C3|Add2~4_combout\ : std_logic;
SIGNAL \C3|Add2~2_combout\ : std_logic;
SIGNAL \C3|Add2~0_combout\ : std_logic;
SIGNAL \C3|LessThan9~1_cout\ : std_logic;
SIGNAL \C3|LessThan9~3_cout\ : std_logic;
SIGNAL \C3|LessThan9~5_cout\ : std_logic;
SIGNAL \C3|LessThan9~7_cout\ : std_logic;
SIGNAL \C3|LessThan9~9_cout\ : std_logic;
SIGNAL \C3|LessThan9~11_cout\ : std_logic;
SIGNAL \C3|LessThan9~13_cout\ : std_logic;
SIGNAL \C3|LessThan9~15_cout\ : std_logic;
SIGNAL \C3|LessThan9~16_combout\ : std_logic;
SIGNAL \C4|g4~0_combout\ : std_logic;
SIGNAL \C3|g3~1_combout\ : std_logic;
SIGNAL \C3|g3~2_combout\ : std_logic;
SIGNAL \C3|g3~3_combout\ : std_logic;
SIGNAL \C3|g3~4_combout\ : std_logic;
SIGNAL \C4|g4~1_combout\ : std_logic;
SIGNAL \C4|g4~2_combout\ : std_logic;
SIGNAL \C4|g4~3_combout\ : std_logic;
SIGNAL \C4|g4~4_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \C1|b[0]~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \C1|b[1]~1_combout\ : std_logic;
SIGNAL \C2|B2[1]~3_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9_cout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ : std_logic;
SIGNAL \C2|B2[0]~5_cout\ : std_logic;
SIGNAL \C2|B2[0]~7_cout\ : std_logic;
SIGNAL \C2|B2[0]~9_cout\ : std_logic;
SIGNAL \C2|B2[0]~11_cout\ : std_logic;
SIGNAL \C2|B2[0]~13_cout\ : std_logic;
SIGNAL \C2|B2[0]~15_cout\ : std_logic;
SIGNAL \C2|B2[0]~17_cout\ : std_logic;
SIGNAL \C2|B2[0]~19_cout\ : std_logic;
SIGNAL \C2|B2[0]~21_cout\ : std_logic;
SIGNAL \C2|B2[0]~22_combout\ : std_logic;
SIGNAL \C2|B2[1]~24_combout\ : std_logic;
SIGNAL \C2|B2[1]~25_combout\ : std_logic;
SIGNAL \C2|B2~26_combout\ : std_logic;
SIGNAL \C2|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C2|HSYNC~q\ : std_logic;
SIGNAL \C2|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C2|VSYNC~q\ : std_logic;
SIGNAL \C3|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C3|HSYNC~q\ : std_logic;
SIGNAL \C3|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C3|VSYNC~q\ : std_logic;
SIGNAL \C4|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C4|HSYNC~q\ : std_logic;
SIGNAL \C4|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C4|VSYNC~q\ : std_logic;
SIGNAL \C1|R\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|B2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|address\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL licznik : std_logic_vector(25 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C2|R2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|G2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C3|g3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C4|g4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL POSX : std_logic_vector(9 DOWNTO 0);
SIGNAL POSY : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \C1|ALT_INV_address\ : std_logic_vector(13 DOWNTO 13);

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

\c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Equal0~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~8_combout\);

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\C1|ALT_INV_address\(13) <= NOT \C1|address\(13);

-- Location: LCCOMB_X44_Y41_N24
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
	i => \C2|R2\(0),
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
	i => \C2|R2\(1),
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
	i => \C2|R2\(2),
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
	i => \C2|R2\(0),
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
	i => \C2|R2\(1),
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
	i => \C2|R2\(2),
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
	i => \C2|B2\(0),
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
	i => \C2|B2\(1),
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
	i => \C2|B2\(0),
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
	i => \C2|B2\(1),
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

-- Location: LCCOMB_X38_Y14_N12
\C1|HPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~10_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~11\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~10_combout\,
	cout => \C1|HPOS[0]~11\);

-- Location: LCCOMB_X38_Y14_N14
\C1|HPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~12_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~11\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~11\) # (GND)))
-- \C1|HPOS[1]~13\ = CARRY((!\C1|HPOS[0]~11\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~11\,
	combout => \C1|HPOS[1]~12_combout\,
	cout => \C1|HPOS[1]~13\);

-- Location: FF_X38_Y14_N15
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[1]~12_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: LCCOMB_X38_Y14_N16
\C1|HPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~14_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~13\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~13\ & VCC))
-- \C1|HPOS[2]~15\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~13\,
	combout => \C1|HPOS[2]~14_combout\,
	cout => \C1|HPOS[2]~15\);

-- Location: FF_X38_Y14_N17
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[2]~14_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X38_Y14_N18
\C1|HPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~16_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~15\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~15\) # (GND)))
-- \C1|HPOS[3]~17\ = CARRY((!\C1|HPOS[2]~15\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~15\,
	combout => \C1|HPOS[3]~16_combout\,
	cout => \C1|HPOS[3]~17\);

-- Location: FF_X38_Y14_N19
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[3]~16_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X38_Y14_N20
\C1|HPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~18_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~17\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~17\ & VCC))
-- \C1|HPOS[4]~19\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~17\,
	combout => \C1|HPOS[4]~18_combout\,
	cout => \C1|HPOS[4]~19\);

-- Location: FF_X38_Y14_N21
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[4]~18_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X38_Y14_N22
\C1|HPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~20_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~19\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~19\) # (GND)))
-- \C1|HPOS[5]~21\ = CARRY((!\C1|HPOS[4]~19\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~19\,
	combout => \C1|HPOS[5]~20_combout\,
	cout => \C1|HPOS[5]~21\);

-- Location: FF_X38_Y14_N23
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[5]~20_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: LCCOMB_X38_Y14_N24
\C1|HPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~22_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~21\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~21\ & VCC))
-- \C1|HPOS[6]~23\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~21\,
	combout => \C1|HPOS[6]~22_combout\,
	cout => \C1|HPOS[6]~23\);

-- Location: FF_X38_Y14_N25
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[6]~22_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: LCCOMB_X38_Y14_N26
\C1|HPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~24_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~23\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~23\) # (GND)))
-- \C1|HPOS[7]~25\ = CARRY((!\C1|HPOS[6]~23\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~23\,
	combout => \C1|HPOS[7]~24_combout\,
	cout => \C1|HPOS[7]~25\);

-- Location: FF_X38_Y14_N27
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[7]~24_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: LCCOMB_X38_Y14_N28
\C1|HPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~26_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~25\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~25\ & VCC))
-- \C1|HPOS[8]~27\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~25\,
	combout => \C1|HPOS[8]~26_combout\,
	cout => \C1|HPOS[8]~27\);

-- Location: FF_X38_Y14_N29
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[8]~26_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: LCCOMB_X38_Y14_N30
\C1|HPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~28_combout\ = \C1|HPOS\(9) $ (\C1|HPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	cin => \C1|HPOS[8]~27\,
	combout => \C1|HPOS[9]~28_combout\);

-- Location: FF_X38_Y14_N31
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[9]~28_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X38_Y14_N4
\C1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X38_Y14_N6
\C1|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (\C1|HPOS\(9) & (\C1|HPOS\(8) & ((\C1|HPOS\(7)) # (!\C1|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|process_0~2_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan13~0_combout\);

-- Location: FF_X38_Y14_N13
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[0]~10_combout\,
	sclr => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X38_Y15_N30
\C1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|HPOS\(4) & (((\C1|HPOS\(3)) # (\C1|HPOS\(2))))) # (!\C1|HPOS\(4) & (\C1|HPOS\(1) & (\C1|HPOS\(3) & \C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(2),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X38_Y14_N10
\C1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|process_0~2_combout\ & (((\C1|process_0~3_combout\ & \C1|HPOS\(4))))) # (!\C1|process_0~2_combout\ & ((\C1|HPOS\(4)) # ((\C1|HPOS\(0) & \C1|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|process_0~2_combout\,
	datac => \C1|process_0~3_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X37_Y14_N30
\C1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(6) & \C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X38_Y15_N12
\C1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (\C1|HPOS\(9) & (\C1|HPOS\(7) & !\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X38_Y14_N8
\C1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = ((\C1|process_0~4_combout\ & (\C1|process_0~0_combout\)) # (!\C1|process_0~4_combout\ & ((\C1|process_0~2_combout\)))) # (!\C1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~0_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|process_0~1_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X29_Y18_N16
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

-- Location: FF_X29_Y18_N17
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

-- Location: LCCOMB_X42_Y15_N10
\C1|VPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~10_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~11\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~10_combout\,
	cout => \C1|VPOS[0]~11\);

-- Location: LCCOMB_X42_Y15_N12
\C1|VPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~12_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~11\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~11\) # (GND)))
-- \C1|VPOS[1]~13\ = CARRY((!\C1|VPOS[0]~11\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~11\,
	combout => \C1|VPOS[1]~12_combout\,
	cout => \C1|VPOS[1]~13\);

-- Location: LCCOMB_X42_Y15_N14
\C1|VPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~14_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~13\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~13\ & VCC))
-- \C1|VPOS[2]~15\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~13\,
	combout => \C1|VPOS[2]~14_combout\,
	cout => \C1|VPOS[2]~15\);

-- Location: FF_X42_Y15_N15
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[2]~14_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X42_Y15_N16
\C1|VPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~16_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~15\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~15\) # (GND)))
-- \C1|VPOS[3]~17\ = CARRY((!\C1|VPOS[2]~15\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~15\,
	combout => \C1|VPOS[3]~16_combout\,
	cout => \C1|VPOS[3]~17\);

-- Location: FF_X42_Y15_N17
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[3]~16_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X42_Y15_N0
\C1|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (((!\C1|VPOS\(1) & !\C1|VPOS\(0))) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X42_Y15_N18
\C1|VPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~18_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~17\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~17\ & VCC))
-- \C1|VPOS[4]~19\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~17\,
	combout => \C1|VPOS[4]~18_combout\,
	cout => \C1|VPOS[4]~19\);

-- Location: FF_X42_Y15_N19
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[4]~18_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X42_Y15_N20
\C1|VPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~20_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~19\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~19\) # (GND)))
-- \C1|VPOS[5]~21\ = CARRY((!\C1|VPOS[4]~19\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~19\,
	combout => \C1|VPOS[5]~20_combout\,
	cout => \C1|VPOS[5]~21\);

-- Location: FF_X42_Y15_N21
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[5]~20_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X42_Y15_N22
\C1|VPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~22_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~21\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~21\ & VCC))
-- \C1|VPOS[6]~23\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~21\,
	combout => \C1|VPOS[6]~22_combout\,
	cout => \C1|VPOS[6]~23\);

-- Location: FF_X42_Y15_N23
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[6]~22_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: LCCOMB_X42_Y15_N24
\C1|VPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~24_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~23\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~23\) # (GND)))
-- \C1|VPOS[7]~25\ = CARRY((!\C1|VPOS[6]~23\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~23\,
	combout => \C1|VPOS[7]~24_combout\,
	cout => \C1|VPOS[7]~25\);

-- Location: FF_X42_Y15_N25
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[7]~24_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X42_Y15_N26
\C1|VPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~26_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~25\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~25\ & VCC))
-- \C1|VPOS[8]~27\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~25\,
	combout => \C1|VPOS[8]~26_combout\,
	cout => \C1|VPOS[8]~27\);

-- Location: FF_X42_Y15_N27
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[8]~26_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X42_Y15_N8
\C1|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan15~0_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(7) & (!\C1|VPOS\(6) & !\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan15~0_combout\);

-- Location: LCCOMB_X42_Y15_N28
\C1|VPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~28_combout\ = \C1|VPOS\(9) $ (\C1|VPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	cin => \C1|VPOS[8]~27\,
	combout => \C1|VPOS[9]~28_combout\);

-- Location: FF_X42_Y15_N29
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[9]~28_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: LCCOMB_X42_Y15_N2
\C1|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan15~1_combout\ = (\C1|VPOS\(9) & (((\C1|VPOS\(4)) # (!\C1|LessThan15~0_combout\)) # (!\C1|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan11~0_combout\,
	datab => \C1|VPOS\(4),
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|LessThan15~1_combout\);

-- Location: FF_X42_Y15_N11
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[0]~10_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: FF_X42_Y15_N13
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[1]~12_combout\,
	sclr => \C1|LessThan15~1_combout\,
	ena => \C1|LessThan13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: LCCOMB_X39_Y15_N4
\C1|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = ((!\C1|VPOS\(2) & ((!\C1|VPOS\(0)) # (!\C1|VPOS\(1))))) # (!\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(2),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X38_Y11_N26
\C1|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan11~1_combout\ = (!\C1|VPOS\(4) & \C1|LessThan11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => \C1|LessThan11~0_combout\,
	combout => \C1|LessThan11~1_combout\);

-- Location: LCCOMB_X42_Y15_N30
\C2|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan1~0_combout\ = (\C1|VPOS\(8) & (\C1|VPOS\(7) & (\C1|VPOS\(6) & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(5),
	combout => \C2|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y11_N0
\C1|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (\C1|process_0~6_combout\) # (((\C1|VPOS\(9)) # (!\C2|LessThan1~0_combout\)) # (!\C1|LessThan11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~6_combout\,
	datab => \C1|LessThan11~1_combout\,
	datac => \C1|VPOS\(9),
	datad => \C2|LessThan1~0_combout\,
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X30_Y13_N4
\C1|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VSYNC~feeder_combout\ = \C1|process_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~7_combout\,
	combout => \C1|VSYNC~feeder_combout\);

-- Location: FF_X30_Y13_N5
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

-- Location: LCCOMB_X36_Y14_N4
\C1|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~0_combout\ = \C1|HPOS\(1) $ (VCC)
-- \C1|Add4~1\ = CARRY(\C1|HPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datad => VCC,
	combout => \C1|Add4~0_combout\,
	cout => \C1|Add4~1\);

-- Location: LCCOMB_X36_Y14_N6
\C1|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~2_combout\ = (\C1|HPOS\(2) & (\C1|Add4~1\ & VCC)) # (!\C1|HPOS\(2) & (!\C1|Add4~1\))
-- \C1|Add4~3\ = CARRY((!\C1|HPOS\(2) & !\C1|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|Add4~1\,
	combout => \C1|Add4~2_combout\,
	cout => \C1|Add4~3\);

-- Location: LCCOMB_X36_Y14_N8
\C1|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~4_combout\ = (\C1|HPOS\(3) & ((GND) # (!\C1|Add4~3\))) # (!\C1|HPOS\(3) & (\C1|Add4~3\ $ (GND)))
-- \C1|Add4~5\ = CARRY((\C1|HPOS\(3)) # (!\C1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|Add4~3\,
	combout => \C1|Add4~4_combout\,
	cout => \C1|Add4~5\);

-- Location: LCCOMB_X36_Y14_N10
\C1|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~6_combout\ = (\C1|HPOS\(4) & (!\C1|Add4~5\)) # (!\C1|HPOS\(4) & ((\C1|Add4~5\) # (GND)))
-- \C1|Add4~7\ = CARRY((!\C1|Add4~5\) # (!\C1|HPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|Add4~5\,
	combout => \C1|Add4~6_combout\,
	cout => \C1|Add4~7\);

-- Location: LCCOMB_X36_Y14_N12
\C1|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~8_combout\ = (\C1|HPOS\(5) & (\C1|Add4~7\ $ (GND))) # (!\C1|HPOS\(5) & (!\C1|Add4~7\ & VCC))
-- \C1|Add4~9\ = CARRY((\C1|HPOS\(5) & !\C1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|Add4~7\,
	combout => \C1|Add4~8_combout\,
	cout => \C1|Add4~9\);

-- Location: LCCOMB_X36_Y14_N14
\C1|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~10_combout\ = (\C1|HPOS\(6) & (\C1|Add4~9\ & VCC)) # (!\C1|HPOS\(6) & (!\C1|Add4~9\))
-- \C1|Add4~11\ = CARRY((!\C1|HPOS\(6) & !\C1|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|Add4~9\,
	combout => \C1|Add4~10_combout\,
	cout => \C1|Add4~11\);

-- Location: LCCOMB_X36_Y14_N16
\C1|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~12_combout\ = (\C1|HPOS\(7) & ((GND) # (!\C1|Add4~11\))) # (!\C1|HPOS\(7) & (\C1|Add4~11\ $ (GND)))
-- \C1|Add4~13\ = CARRY((\C1|HPOS\(7)) # (!\C1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|Add4~11\,
	combout => \C1|Add4~12_combout\,
	cout => \C1|Add4~13\);

-- Location: LCCOMB_X36_Y14_N18
\C1|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~14_combout\ = (\C1|HPOS\(8) & (\C1|Add4~13\ & VCC)) # (!\C1|HPOS\(8) & (!\C1|Add4~13\))
-- \C1|Add4~15\ = CARRY((!\C1|HPOS\(8) & !\C1|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|Add4~13\,
	combout => \C1|Add4~14_combout\,
	cout => \C1|Add4~15\);

-- Location: LCCOMB_X36_Y14_N20
\C1|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~16_combout\ = (\C1|HPOS\(9) & ((GND) # (!\C1|Add4~15\))) # (!\C1|HPOS\(9) & (\C1|Add4~15\ $ (GND)))
-- \C1|Add4~17\ = CARRY((\C1|HPOS\(9)) # (!\C1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|Add4~15\,
	combout => \C1|Add4~16_combout\,
	cout => \C1|Add4~17\);

-- Location: LCCOMB_X36_Y14_N22
\C1|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~18_combout\ = !\C1|Add4~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add4~17\,
	combout => \C1|Add4~18_combout\);

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

-- Location: LCCOMB_X37_Y14_N0
\C1|Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|Add5~1_cout\);

-- Location: LCCOMB_X37_Y14_N2
\C1|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (\C1|Add4~0_combout\ & (\C1|Add5~1_cout\ & VCC)) # (!\C1|Add4~0_combout\ & (!\C1|Add5~1_cout\))
-- \C1|Add5~3\ = CARRY((!\C1|Add4~0_combout\ & !\C1|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add4~0_combout\,
	datad => VCC,
	cin => \C1|Add5~1_cout\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X37_Y14_N4
\C1|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (\C1|Add4~2_combout\ & ((GND) # (!\C1|Add5~3\))) # (!\C1|Add4~2_combout\ & (\C1|Add5~3\ $ (GND)))
-- \C1|Add5~5\ = CARRY((\C1|Add4~2_combout\) # (!\C1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~2_combout\,
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X37_Y14_N6
\C1|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (\C1|Add4~4_combout\ & (\C1|Add5~5\ & VCC)) # (!\C1|Add4~4_combout\ & (!\C1|Add5~5\))
-- \C1|Add5~7\ = CARRY((!\C1|Add4~4_combout\ & !\C1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~4_combout\,
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X37_Y14_N8
\C1|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (\C1|Add4~6_combout\ & ((GND) # (!\C1|Add5~7\))) # (!\C1|Add4~6_combout\ & (\C1|Add5~7\ $ (GND)))
-- \C1|Add5~9\ = CARRY((\C1|Add4~6_combout\) # (!\C1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~6_combout\,
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X37_Y14_N10
\C1|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (\C1|Add4~8_combout\ & ((\SW[0]~input_o\ & (!\C1|Add5~9\)) # (!\SW[0]~input_o\ & (\C1|Add5~9\ & VCC)))) # (!\C1|Add4~8_combout\ & ((\SW[0]~input_o\ & ((\C1|Add5~9\) # (GND))) # (!\SW[0]~input_o\ & (!\C1|Add5~9\))))
-- \C1|Add5~11\ = CARRY((\C1|Add4~8_combout\ & (\SW[0]~input_o\ & !\C1|Add5~9\)) # (!\C1|Add4~8_combout\ & ((\SW[0]~input_o\) # (!\C1|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~8_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X37_Y14_N12
\C1|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~12_combout\ = ((\C1|Add4~10_combout\ $ (\SW[1]~input_o\ $ (\C1|Add5~11\)))) # (GND)
-- \C1|Add5~13\ = CARRY((\C1|Add4~10_combout\ & ((!\C1|Add5~11\) # (!\SW[1]~input_o\))) # (!\C1|Add4~10_combout\ & (!\SW[1]~input_o\ & !\C1|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~10_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \C1|Add5~11\,
	combout => \C1|Add5~12_combout\,
	cout => \C1|Add5~13\);

-- Location: LCCOMB_X37_Y14_N14
\C1|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~14_combout\ = (\C1|Add4~12_combout\ & ((\SW[2]~input_o\ & (!\C1|Add5~13\)) # (!\SW[2]~input_o\ & (\C1|Add5~13\ & VCC)))) # (!\C1|Add4~12_combout\ & ((\SW[2]~input_o\ & ((\C1|Add5~13\) # (GND))) # (!\SW[2]~input_o\ & (!\C1|Add5~13\))))
-- \C1|Add5~15\ = CARRY((\C1|Add4~12_combout\ & (\SW[2]~input_o\ & !\C1|Add5~13\)) # (!\C1|Add4~12_combout\ & ((\SW[2]~input_o\) # (!\C1|Add5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~12_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \C1|Add5~13\,
	combout => \C1|Add5~14_combout\,
	cout => \C1|Add5~15\);

-- Location: LCCOMB_X37_Y14_N16
\C1|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~16_combout\ = ((\SW[3]~input_o\ $ (\C1|Add4~14_combout\ $ (\C1|Add5~15\)))) # (GND)
-- \C1|Add5~17\ = CARRY((\SW[3]~input_o\ & (\C1|Add4~14_combout\ & !\C1|Add5~15\)) # (!\SW[3]~input_o\ & ((\C1|Add4~14_combout\) # (!\C1|Add5~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \C1|Add4~14_combout\,
	datad => VCC,
	cin => \C1|Add5~15\,
	combout => \C1|Add5~16_combout\,
	cout => \C1|Add5~17\);

-- Location: LCCOMB_X37_Y14_N18
\C1|Add5~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~18_combout\ = (\C1|Add4~16_combout\ & (\C1|Add5~17\ & VCC)) # (!\C1|Add4~16_combout\ & (!\C1|Add5~17\))
-- \C1|Add5~19\ = CARRY((!\C1|Add4~16_combout\ & !\C1|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add4~16_combout\,
	datad => VCC,
	cin => \C1|Add5~17\,
	combout => \C1|Add5~18_combout\,
	cout => \C1|Add5~19\);

-- Location: LCCOMB_X37_Y14_N20
\C1|Add5~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~20_combout\ = (\C1|Add4~18_combout\ & ((GND) # (!\C1|Add5~19\))) # (!\C1|Add4~18_combout\ & (\C1|Add5~19\ $ (GND)))
-- \C1|Add5~21\ = CARRY((\C1|Add4~18_combout\) # (!\C1|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add4~18_combout\,
	datad => VCC,
	cin => \C1|Add5~19\,
	combout => \C1|Add5~20_combout\,
	cout => \C1|Add5~21\);

-- Location: LCCOMB_X37_Y14_N22
\C1|Add5~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~22_combout\ = (\C1|Add4~18_combout\ & (\C1|Add5~21\ & VCC)) # (!\C1|Add4~18_combout\ & (!\C1|Add5~21\))
-- \C1|Add5~23\ = CARRY((!\C1|Add4~18_combout\ & !\C1|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add4~18_combout\,
	datad => VCC,
	cin => \C1|Add5~21\,
	combout => \C1|Add5~22_combout\,
	cout => \C1|Add5~23\);

-- Location: LCCOMB_X37_Y14_N24
\C1|Add5~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~24_combout\ = \C1|Add5~23\ $ (\C1|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add4~18_combout\,
	cin => \C1|Add5~23\,
	combout => \C1|Add5~24_combout\);

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

-- Location: LCCOMB_X41_Y14_N2
\C1|Add7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~0_combout\ = (\C1|VPOS\(0) & (\C1|Add5~14_combout\ $ (VCC))) # (!\C1|VPOS\(0) & (\C1|Add5~14_combout\ & VCC))
-- \C1|Add7~1\ = CARRY((\C1|VPOS\(0) & \C1|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|Add5~14_combout\,
	datad => VCC,
	combout => \C1|Add7~0_combout\,
	cout => \C1|Add7~1\);

-- Location: LCCOMB_X41_Y14_N4
\C1|Add7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~2_combout\ = (\C1|Add5~16_combout\ & (\C1|Add7~1\ & VCC)) # (!\C1|Add5~16_combout\ & (!\C1|Add7~1\))
-- \C1|Add7~3\ = CARRY((!\C1|Add5~16_combout\ & !\C1|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~16_combout\,
	datad => VCC,
	cin => \C1|Add7~1\,
	combout => \C1|Add7~2_combout\,
	cout => \C1|Add7~3\);

-- Location: LCCOMB_X41_Y14_N6
\C1|Add7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~4_combout\ = (\C1|Add5~18_combout\ & ((GND) # (!\C1|Add7~3\))) # (!\C1|Add5~18_combout\ & (\C1|Add7~3\ $ (GND)))
-- \C1|Add7~5\ = CARRY((\C1|Add5~18_combout\) # (!\C1|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~18_combout\,
	datad => VCC,
	cin => \C1|Add7~3\,
	combout => \C1|Add7~4_combout\,
	cout => \C1|Add7~5\);

-- Location: LCCOMB_X41_Y14_N8
\C1|Add7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~6_combout\ = (\C1|Add5~20_combout\ & (\C1|Add7~5\ & VCC)) # (!\C1|Add5~20_combout\ & (!\C1|Add7~5\))
-- \C1|Add7~7\ = CARRY((!\C1|Add5~20_combout\ & !\C1|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add5~20_combout\,
	datad => VCC,
	cin => \C1|Add7~5\,
	combout => \C1|Add7~6_combout\,
	cout => \C1|Add7~7\);

-- Location: LCCOMB_X41_Y14_N10
\C1|Add7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~8_combout\ = (\C1|Add5~22_combout\ & ((GND) # (!\C1|Add7~7\))) # (!\C1|Add5~22_combout\ & (\C1|Add7~7\ $ (GND)))
-- \C1|Add7~9\ = CARRY((\C1|Add5~22_combout\) # (!\C1|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~22_combout\,
	datad => VCC,
	cin => \C1|Add7~7\,
	combout => \C1|Add7~8_combout\,
	cout => \C1|Add7~9\);

-- Location: LCCOMB_X41_Y14_N12
\C1|Add7~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~10_combout\ = (\C1|Add5~24_combout\ & ((\SW[4]~input_o\ & (!\C1|Add7~9\)) # (!\SW[4]~input_o\ & (\C1|Add7~9\ & VCC)))) # (!\C1|Add5~24_combout\ & ((\SW[4]~input_o\ & ((\C1|Add7~9\) # (GND))) # (!\SW[4]~input_o\ & (!\C1|Add7~9\))))
-- \C1|Add7~11\ = CARRY((\C1|Add5~24_combout\ & (\SW[4]~input_o\ & !\C1|Add7~9\)) # (!\C1|Add5~24_combout\ & ((\SW[4]~input_o\) # (!\C1|Add7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~24_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \C1|Add7~9\,
	combout => \C1|Add7~10_combout\,
	cout => \C1|Add7~11\);

-- Location: LCCOMB_X41_Y14_N14
\C1|Add7~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add7~12_combout\ = \C1|Add5~24_combout\ $ (\C1|Add7~11\ $ (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~24_combout\,
	datad => \SW[5]~input_o\,
	cin => \C1|Add7~11\,
	combout => \C1|Add7~12_combout\);

-- Location: LCCOMB_X43_Y14_N2
\C1|Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~0_combout\ = \C1|VPOS\(1) $ (VCC)
-- \C1|Add6~1\ = CARRY(\C1|VPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	combout => \C1|Add6~0_combout\,
	cout => \C1|Add6~1\);

-- Location: LCCOMB_X43_Y14_N4
\C1|Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~2_combout\ = (\C1|VPOS\(2) & (\C1|Add6~1\ & VCC)) # (!\C1|VPOS\(2) & (!\C1|Add6~1\))
-- \C1|Add6~3\ = CARRY((!\C1|VPOS\(2) & !\C1|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|Add6~1\,
	combout => \C1|Add6~2_combout\,
	cout => \C1|Add6~3\);

-- Location: LCCOMB_X43_Y14_N6
\C1|Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~4_combout\ = (\C1|VPOS\(3) & ((GND) # (!\C1|Add6~3\))) # (!\C1|VPOS\(3) & (\C1|Add6~3\ $ (GND)))
-- \C1|Add6~5\ = CARRY((\C1|VPOS\(3)) # (!\C1|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|Add6~3\,
	combout => \C1|Add6~4_combout\,
	cout => \C1|Add6~5\);

-- Location: LCCOMB_X43_Y14_N8
\C1|Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\C1|VPOS\(4) & (!\C1|Add6~5\)) # (!\C1|VPOS\(4) & ((\C1|Add6~5\) # (GND)))
-- \C1|Add6~7\ = CARRY((!\C1|Add6~5\) # (!\C1|VPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|Add6~5\,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: LCCOMB_X43_Y14_N10
\C1|Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = (\C1|VPOS\(5) & (\C1|Add6~7\ $ (GND))) # (!\C1|VPOS\(5) & (!\C1|Add6~7\ & VCC))
-- \C1|Add6~9\ = CARRY((\C1|VPOS\(5) & !\C1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: LCCOMB_X43_Y14_N12
\C1|Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add6~10_combout\ = \C1|Add6~9\ $ (!\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(6),
	cin => \C1|Add6~9\,
	combout => \C1|Add6~10_combout\);

-- Location: LCCOMB_X41_Y14_N16
\C1|address[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[7]~7_combout\ = \C1|Add7~0_combout\ $ (VCC)
-- \C1|address[7]~8\ = CARRY(\C1|Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add7~0_combout\,
	datad => VCC,
	combout => \C1|address[7]~7_combout\,
	cout => \C1|address[7]~8\);

-- Location: LCCOMB_X41_Y14_N18
\C1|address[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[8]~9_combout\ = (\C1|Add6~0_combout\ & ((\C1|Add7~2_combout\ & (\C1|address[7]~8\ & VCC)) # (!\C1|Add7~2_combout\ & (!\C1|address[7]~8\)))) # (!\C1|Add6~0_combout\ & ((\C1|Add7~2_combout\ & (!\C1|address[7]~8\)) # (!\C1|Add7~2_combout\ & 
-- ((\C1|address[7]~8\) # (GND)))))
-- \C1|address[8]~10\ = CARRY((\C1|Add6~0_combout\ & (!\C1|Add7~2_combout\ & !\C1|address[7]~8\)) # (!\C1|Add6~0_combout\ & ((!\C1|address[7]~8\) # (!\C1|Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~0_combout\,
	datab => \C1|Add7~2_combout\,
	datad => VCC,
	cin => \C1|address[7]~8\,
	combout => \C1|address[8]~9_combout\,
	cout => \C1|address[8]~10\);

-- Location: LCCOMB_X41_Y14_N20
\C1|address[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[9]~11_combout\ = ((\C1|Add7~4_combout\ $ (\C1|Add6~2_combout\ $ (!\C1|address[8]~10\)))) # (GND)
-- \C1|address[9]~12\ = CARRY((\C1|Add7~4_combout\ & ((\C1|Add6~2_combout\) # (!\C1|address[8]~10\))) # (!\C1|Add7~4_combout\ & (\C1|Add6~2_combout\ & !\C1|address[8]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~4_combout\,
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|address[8]~10\,
	combout => \C1|address[9]~11_combout\,
	cout => \C1|address[9]~12\);

-- Location: LCCOMB_X41_Y14_N22
\C1|address[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[10]~13_combout\ = (\C1|Add6~4_combout\ & ((\C1|Add7~6_combout\ & (\C1|address[9]~12\ & VCC)) # (!\C1|Add7~6_combout\ & (!\C1|address[9]~12\)))) # (!\C1|Add6~4_combout\ & ((\C1|Add7~6_combout\ & (!\C1|address[9]~12\)) # (!\C1|Add7~6_combout\ & 
-- ((\C1|address[9]~12\) # (GND)))))
-- \C1|address[10]~14\ = CARRY((\C1|Add6~4_combout\ & (!\C1|Add7~6_combout\ & !\C1|address[9]~12\)) # (!\C1|Add6~4_combout\ & ((!\C1|address[9]~12\) # (!\C1|Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~4_combout\,
	datab => \C1|Add7~6_combout\,
	datad => VCC,
	cin => \C1|address[9]~12\,
	combout => \C1|address[10]~13_combout\,
	cout => \C1|address[10]~14\);

-- Location: LCCOMB_X41_Y14_N24
\C1|address[11]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[11]~15_combout\ = ((\C1|Add7~8_combout\ $ (\C1|Add6~6_combout\ $ (!\C1|address[10]~14\)))) # (GND)
-- \C1|address[11]~16\ = CARRY((\C1|Add7~8_combout\ & ((\C1|Add6~6_combout\) # (!\C1|address[10]~14\))) # (!\C1|Add7~8_combout\ & (\C1|Add6~6_combout\ & !\C1|address[10]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~8_combout\,
	datab => \C1|Add6~6_combout\,
	datad => VCC,
	cin => \C1|address[10]~14\,
	combout => \C1|address[11]~15_combout\,
	cout => \C1|address[11]~16\);

-- Location: LCCOMB_X41_Y14_N26
\C1|address[12]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[12]~17_combout\ = (\C1|Add7~10_combout\ & ((\C1|Add6~8_combout\ & (\C1|address[11]~16\ & VCC)) # (!\C1|Add6~8_combout\ & (!\C1|address[11]~16\)))) # (!\C1|Add7~10_combout\ & ((\C1|Add6~8_combout\ & (!\C1|address[11]~16\)) # 
-- (!\C1|Add6~8_combout\ & ((\C1|address[11]~16\) # (GND)))))
-- \C1|address[12]~18\ = CARRY((\C1|Add7~10_combout\ & (!\C1|Add6~8_combout\ & !\C1|address[11]~16\)) # (!\C1|Add7~10_combout\ & ((!\C1|address[11]~16\) # (!\C1|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~10_combout\,
	datab => \C1|Add6~8_combout\,
	datad => VCC,
	cin => \C1|address[11]~16\,
	combout => \C1|address[12]~17_combout\,
	cout => \C1|address[12]~18\);

-- Location: LCCOMB_X41_Y14_N28
\C1|address[13]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[13]~19_combout\ = \C1|Add7~12_combout\ $ (\C1|address[12]~18\ $ (!\C1|Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add7~12_combout\,
	datad => \C1|Add6~10_combout\,
	cin => \C1|address[12]~18\,
	combout => \C1|address[13]~19_combout\);

-- Location: FF_X41_Y14_N29
\C1|address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(13));

-- Location: LCCOMB_X36_Y14_N0
\C1|address[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[0]~21_combout\ = !\C1|HPOS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(0),
	combout => \C1|address[0]~21_combout\);

-- Location: FF_X36_Y14_N1
\C1|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(0));

-- Location: FF_X37_Y14_N3
\C1|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(1));

-- Location: LCCOMB_X36_Y14_N30
\C1|address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[2]~feeder_combout\ = \C1|Add5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add5~4_combout\,
	combout => \C1|address[2]~feeder_combout\);

-- Location: FF_X36_Y14_N31
\C1|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(2));

-- Location: LCCOMB_X36_Y14_N28
\C1|address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[3]~feeder_combout\ = \C1|Add5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add5~6_combout\,
	combout => \C1|address[3]~feeder_combout\);

-- Location: FF_X36_Y14_N29
\C1|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(3));

-- Location: FF_X37_Y14_N9
\C1|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(4));

-- Location: FF_X37_Y14_N11
\C1|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(5));

-- Location: FF_X36_Y14_N27
\C1|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|Add5~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(6));

-- Location: FF_X41_Y14_N17
\C1|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(7));

-- Location: FF_X41_Y14_N19
\C1|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(8));

-- Location: FF_X41_Y14_N21
\C1|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(9));

-- Location: FF_X41_Y14_N23
\C1|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(10));

-- Location: FF_X41_Y14_N25
\C1|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[11]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(11));

-- Location: FF_X41_Y14_N27
\C1|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[12]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(12));

-- Location: M9K_X53_Y11_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X49_Y17_N18
\c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \C1|address\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|address\(13),
	combout => \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X49_Y17_N19
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

-- Location: LCCOMB_X49_Y17_N20
\c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ = \c0|altsyncram_component|auto_generated|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\);

-- Location: FF_X49_Y17_N21
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

-- Location: M9K_X53_Y13_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y12_N12
\C1|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[0]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	combout => \C1|R[0]~0_combout\);

-- Location: M9K_X73_Y13_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y19_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y12_N22
\C1|g[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[0]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	combout => \C1|g[0]~0_combout\);

-- Location: LCCOMB_X36_Y14_N24
\C2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~0_combout\ = (!\C1|HPOS\(2) & (!\C1|HPOS\(1) & (!\C1|HPOS\(3) & !\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(0),
	combout => \C2|process_0~0_combout\);

-- Location: LCCOMB_X37_Y14_N28
\C1|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = ((\C1|HPOS\(6)) # ((\C1|HPOS\(4)) # (\C1|HPOS\(5)))) # (!\C2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X38_Y14_N2
\C1|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\C1|HPOS\(7) & (\C1|process_0~10_combout\ & ((!\C1|HPOS\(8))))) # (!\C1|HPOS\(7) & (((\C1|process_0~2_combout\ & \C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~10_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X42_Y15_N4
\C1|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|VPOS\(1)) # ((\C1|VPOS\(3)) # ((\C1|VPOS\(2)) # (\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X42_Y15_N6
\C1|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (\C1|VPOS\(9)) # ((\C2|LessThan1~0_combout\ & ((\C1|VPOS\(4)) # (\C1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan1~0_combout\,
	datab => \C1|VPOS\(4),
	datac => \C1|process_0~8_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X39_Y15_N30
\C1|process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (\C1|LessThan15~1_combout\ & (\C1|process_0~11_combout\ & (\C1|HPOS\(9)))) # (!\C1|LessThan15~1_combout\ & ((\C1|process_0~9_combout\) # ((\C1|process_0~11_combout\ & \C1|HPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan15~1_combout\,
	datab => \C1|process_0~11_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|process_0~9_combout\,
	combout => \C1|process_0~12_combout\);

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

-- Location: LCCOMB_X42_Y14_N16
\C1|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\ & (\SW[7]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \C1|Add2~0_combout\);

-- Location: LCCOMB_X41_Y17_N6
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

-- Location: LCCOMB_X41_Y17_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!licznik(8) & (!licznik(7) & (!licznik(6) & !licznik(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(8),
	datab => licznik(7),
	datac => licznik(6),
	datad => licznik(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y16_N24
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!licznik(10) & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => licznik(10),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y16_N20
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!licznik(14)) # (!licznik(11))) # (!licznik(13))) # (!licznik(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(12),
	datab => licznik(13),
	datac => licznik(11),
	datad => licznik(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y16_N30
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!licznik(15) & ((\Equal0~1_combout\) # (\LessThan0~1_combout\)))) # (!licznik(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(15),
	datab => \Equal0~1_combout\,
	datac => licznik(16),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y16_N10
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!licznik(21)) # (!licznik(18))) # (!licznik(19))) # (!licznik(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(20),
	datab => licznik(19),
	datac => licznik(18),
	datad => licznik(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y16_N28
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~0_combout\) # ((\LessThan0~2_combout\ & !licznik(17)))) # (!licznik(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => licznik(22),
	datac => licznik(17),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X41_Y16_N22
\licznik[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[24]~74_combout\ = (licznik(24) & (\licznik[23]~73\ $ (GND))) # (!licznik(24) & (!\licznik[23]~73\ & VCC))
-- \licznik[24]~75\ = CARRY((licznik(24) & !\licznik[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(24),
	datad => VCC,
	cin => \licznik[23]~73\,
	combout => \licznik[24]~74_combout\,
	cout => \licznik[24]~75\);

-- Location: LCCOMB_X41_Y16_N24
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

-- Location: FF_X41_Y16_N25
\licznik[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[25]~76_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(25));

-- Location: LCCOMB_X40_Y16_N16
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (licznik(25)) # ((licznik(24) & ((licznik(23)) # (!\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => licznik(24),
	datac => licznik(25),
	datad => licznik(23),
	combout => \LessThan0~4_combout\);

-- Location: FF_X41_Y17_N7
\licznik[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[0]~26_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(0));

-- Location: LCCOMB_X41_Y17_N8
\licznik[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[1]~28_combout\ = (licznik(1) & (!\licznik[0]~27\)) # (!licznik(1) & ((\licznik[0]~27\) # (GND)))
-- \licznik[1]~29\ = CARRY((!\licznik[0]~27\) # (!licznik(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(1),
	datad => VCC,
	cin => \licznik[0]~27\,
	combout => \licznik[1]~28_combout\,
	cout => \licznik[1]~29\);

-- Location: FF_X41_Y17_N9
\licznik[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[1]~28_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(1));

-- Location: LCCOMB_X41_Y17_N10
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

-- Location: FF_X41_Y17_N11
\licznik[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[2]~30_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(2));

-- Location: LCCOMB_X41_Y17_N12
\licznik[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[3]~32_combout\ = (licznik(3) & (!\licznik[2]~31\)) # (!licznik(3) & ((\licznik[2]~31\) # (GND)))
-- \licznik[3]~33\ = CARRY((!\licznik[2]~31\) # (!licznik(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(3),
	datad => VCC,
	cin => \licznik[2]~31\,
	combout => \licznik[3]~32_combout\,
	cout => \licznik[3]~33\);

-- Location: FF_X41_Y17_N13
\licznik[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[3]~32_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(3));

-- Location: LCCOMB_X41_Y17_N14
\licznik[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[4]~34_combout\ = (licznik(4) & (\licznik[3]~33\ $ (GND))) # (!licznik(4) & (!\licznik[3]~33\ & VCC))
-- \licznik[4]~35\ = CARRY((licznik(4) & !\licznik[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(4),
	datad => VCC,
	cin => \licznik[3]~33\,
	combout => \licznik[4]~34_combout\,
	cout => \licznik[4]~35\);

-- Location: FF_X41_Y17_N15
\licznik[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[4]~34_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(4));

-- Location: LCCOMB_X41_Y17_N16
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

-- Location: FF_X41_Y17_N17
\licznik[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[5]~36_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(5));

-- Location: LCCOMB_X41_Y17_N18
\licznik[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[6]~38_combout\ = (licznik(6) & (\licznik[5]~37\ $ (GND))) # (!licznik(6) & (!\licznik[5]~37\ & VCC))
-- \licznik[6]~39\ = CARRY((licznik(6) & !\licznik[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(6),
	datad => VCC,
	cin => \licznik[5]~37\,
	combout => \licznik[6]~38_combout\,
	cout => \licznik[6]~39\);

-- Location: FF_X41_Y17_N19
\licznik[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[6]~38_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(6));

-- Location: LCCOMB_X41_Y17_N20
\licznik[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[7]~40_combout\ = (licznik(7) & (!\licznik[6]~39\)) # (!licznik(7) & ((\licznik[6]~39\) # (GND)))
-- \licznik[7]~41\ = CARRY((!\licznik[6]~39\) # (!licznik(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(7),
	datad => VCC,
	cin => \licznik[6]~39\,
	combout => \licznik[7]~40_combout\,
	cout => \licznik[7]~41\);

-- Location: FF_X41_Y17_N21
\licznik[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[7]~40_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(7));

-- Location: LCCOMB_X41_Y17_N22
\licznik[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[8]~42_combout\ = (licznik(8) & (\licznik[7]~41\ $ (GND))) # (!licznik(8) & (!\licznik[7]~41\ & VCC))
-- \licznik[8]~43\ = CARRY((licznik(8) & !\licznik[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(8),
	datad => VCC,
	cin => \licznik[7]~41\,
	combout => \licznik[8]~42_combout\,
	cout => \licznik[8]~43\);

-- Location: FF_X41_Y17_N23
\licznik[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[8]~42_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(8));

-- Location: LCCOMB_X41_Y17_N24
\licznik[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[9]~44_combout\ = (licznik(9) & (!\licznik[8]~43\)) # (!licznik(9) & ((\licznik[8]~43\) # (GND)))
-- \licznik[9]~45\ = CARRY((!\licznik[8]~43\) # (!licznik(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(9),
	datad => VCC,
	cin => \licznik[8]~43\,
	combout => \licznik[9]~44_combout\,
	cout => \licznik[9]~45\);

-- Location: FF_X41_Y17_N25
\licznik[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[9]~44_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(9));

-- Location: LCCOMB_X41_Y17_N26
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

-- Location: FF_X41_Y17_N27
\licznik[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[10]~46_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(10));

-- Location: LCCOMB_X41_Y17_N28
\licznik[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[11]~48_combout\ = (licznik(11) & (!\licznik[10]~47\)) # (!licznik(11) & ((\licznik[10]~47\) # (GND)))
-- \licznik[11]~49\ = CARRY((!\licznik[10]~47\) # (!licznik(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(11),
	datad => VCC,
	cin => \licznik[10]~47\,
	combout => \licznik[11]~48_combout\,
	cout => \licznik[11]~49\);

-- Location: FF_X41_Y17_N29
\licznik[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[11]~48_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(11));

-- Location: LCCOMB_X41_Y17_N30
\licznik[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[12]~50_combout\ = (licznik(12) & (\licznik[11]~49\ $ (GND))) # (!licznik(12) & (!\licznik[11]~49\ & VCC))
-- \licznik[12]~51\ = CARRY((licznik(12) & !\licznik[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(12),
	datad => VCC,
	cin => \licznik[11]~49\,
	combout => \licznik[12]~50_combout\,
	cout => \licznik[12]~51\);

-- Location: FF_X41_Y17_N31
\licznik[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[12]~50_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(12));

-- Location: LCCOMB_X41_Y16_N0
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

-- Location: FF_X41_Y16_N1
\licznik[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[13]~52_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(13));

-- Location: LCCOMB_X41_Y16_N2
\licznik[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[14]~54_combout\ = (licznik(14) & (\licznik[13]~53\ $ (GND))) # (!licznik(14) & (!\licznik[13]~53\ & VCC))
-- \licznik[14]~55\ = CARRY((licznik(14) & !\licznik[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(14),
	datad => VCC,
	cin => \licznik[13]~53\,
	combout => \licznik[14]~54_combout\,
	cout => \licznik[14]~55\);

-- Location: FF_X41_Y16_N3
\licznik[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[14]~54_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(14));

-- Location: LCCOMB_X41_Y16_N4
\licznik[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[15]~56_combout\ = (licznik(15) & (!\licznik[14]~55\)) # (!licznik(15) & ((\licznik[14]~55\) # (GND)))
-- \licznik[15]~57\ = CARRY((!\licznik[14]~55\) # (!licznik(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(15),
	datad => VCC,
	cin => \licznik[14]~55\,
	combout => \licznik[15]~56_combout\,
	cout => \licznik[15]~57\);

-- Location: FF_X41_Y16_N5
\licznik[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[15]~56_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(15));

-- Location: LCCOMB_X41_Y16_N6
\licznik[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[16]~58_combout\ = (licznik(16) & (\licznik[15]~57\ $ (GND))) # (!licznik(16) & (!\licznik[15]~57\ & VCC))
-- \licznik[16]~59\ = CARRY((licznik(16) & !\licznik[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(16),
	datad => VCC,
	cin => \licznik[15]~57\,
	combout => \licznik[16]~58_combout\,
	cout => \licznik[16]~59\);

-- Location: FF_X41_Y16_N7
\licznik[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[16]~58_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(16));

-- Location: LCCOMB_X41_Y16_N8
\licznik[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[17]~60_combout\ = (licznik(17) & (!\licznik[16]~59\)) # (!licznik(17) & ((\licznik[16]~59\) # (GND)))
-- \licznik[17]~61\ = CARRY((!\licznik[16]~59\) # (!licznik(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(17),
	datad => VCC,
	cin => \licznik[16]~59\,
	combout => \licznik[17]~60_combout\,
	cout => \licznik[17]~61\);

-- Location: FF_X41_Y16_N9
\licznik[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[17]~60_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(17));

-- Location: LCCOMB_X41_Y16_N10
\licznik[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[18]~62_combout\ = (licznik(18) & (\licznik[17]~61\ $ (GND))) # (!licznik(18) & (!\licznik[17]~61\ & VCC))
-- \licznik[18]~63\ = CARRY((licznik(18) & !\licznik[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(18),
	datad => VCC,
	cin => \licznik[17]~61\,
	combout => \licznik[18]~62_combout\,
	cout => \licznik[18]~63\);

-- Location: FF_X41_Y16_N11
\licznik[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[18]~62_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(18));

-- Location: LCCOMB_X41_Y16_N12
\licznik[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[19]~64_combout\ = (licznik(19) & (!\licznik[18]~63\)) # (!licznik(19) & ((\licznik[18]~63\) # (GND)))
-- \licznik[19]~65\ = CARRY((!\licznik[18]~63\) # (!licznik(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(19),
	datad => VCC,
	cin => \licznik[18]~63\,
	combout => \licznik[19]~64_combout\,
	cout => \licznik[19]~65\);

-- Location: FF_X41_Y16_N13
\licznik[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[19]~64_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(19));

-- Location: LCCOMB_X41_Y16_N14
\licznik[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[20]~66_combout\ = (licznik(20) & (\licznik[19]~65\ $ (GND))) # (!licznik(20) & (!\licznik[19]~65\ & VCC))
-- \licznik[20]~67\ = CARRY((licznik(20) & !\licznik[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(20),
	datad => VCC,
	cin => \licznik[19]~65\,
	combout => \licznik[20]~66_combout\,
	cout => \licznik[20]~67\);

-- Location: FF_X41_Y16_N15
\licznik[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[20]~66_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(20));

-- Location: LCCOMB_X41_Y16_N16
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

-- Location: FF_X41_Y16_N17
\licznik[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[21]~68_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(21));

-- Location: LCCOMB_X41_Y16_N18
\licznik[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[22]~70_combout\ = (licznik(22) & (\licznik[21]~69\ $ (GND))) # (!licznik(22) & (!\licznik[21]~69\ & VCC))
-- \licznik[22]~71\ = CARRY((licznik(22) & !\licznik[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(22),
	datad => VCC,
	cin => \licznik[21]~69\,
	combout => \licznik[22]~70_combout\,
	cout => \licznik[22]~71\);

-- Location: FF_X41_Y16_N19
\licznik[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[22]~70_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(22));

-- Location: LCCOMB_X41_Y16_N20
\licznik[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[23]~72_combout\ = (licznik(23) & (!\licznik[22]~71\)) # (!licznik(23) & ((\licznik[22]~71\) # (GND)))
-- \licznik[23]~73\ = CARRY((!\licznik[22]~71\) # (!licznik(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(23),
	datad => VCC,
	cin => \licznik[22]~71\,
	combout => \licznik[23]~72_combout\,
	cout => \licznik[23]~73\);

-- Location: FF_X41_Y16_N21
\licznik[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[23]~72_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(23));

-- Location: FF_X41_Y16_N23
\licznik[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[24]~74_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(24));

-- Location: LCCOMB_X41_Y16_N30
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!licznik(24) & (!licznik(21) & (!licznik(23) & !licznik(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(24),
	datab => licznik(21),
	datac => licznik(23),
	datad => licznik(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X41_Y16_N26
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!licznik(16) & (!licznik(13) & (!licznik(15) & !licznik(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(16),
	datab => licznik(13),
	datac => licznik(15),
	datad => licznik(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X41_Y16_N28
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!licznik(19) & (!licznik(17) & (!licznik(20) & !licznik(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(19),
	datab => licznik(17),
	datac => licznik(20),
	datad => licznik(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y16_N22
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (\Equal0~4_combout\ & (!licznik(25) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => licznik(25),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X41_Y17_N2
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!licznik(12) & (!licznik(11) & (!licznik(4) & !licznik(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(12),
	datab => licznik(11),
	datac => licznik(4),
	datad => licznik(5),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X41_Y17_N0
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!licznik(3) & (!licznik(1) & (!licznik(0) & !licznik(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(3),
	datab => licznik(1),
	datac => licznik(0),
	datad => licznik(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y16_N2
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~8_combout\);

-- Location: CLKCTRL_G17
\Equal0~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~8clkctrl_outclk\);

-- Location: LCCOMB_X36_Y16_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (POSX(9) & (POSX(6) & (POSX(7) & POSX(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => POSX(6),
	datac => POSX(7),
	datad => POSX(8),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y16_N12
\POSX[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[1]~0_combout\ = (\POSX[1]~0_combout\ & (((\LessThan2~0_combout\) # (!\Equal0~8_combout\)))) # (!\POSX[1]~0_combout\ & ((\Equal0~8_combout\) # ((\LessThan2~1_combout\ & \LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \Equal0~8_combout\,
	datad => \LessThan2~0_combout\,
	combout => \POSX[1]~0_combout\);

-- Location: LCCOMB_X37_Y16_N14
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (POSX(2) & (\POSX[1]~0_combout\ $ (VCC))) # (!POSX(2) & (\POSX[1]~0_combout\ & VCC))
-- \Add1~1\ = CARRY((POSX(2) & \POSX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => \POSX[1]~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X37_Y16_N30
\POSX[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(2) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~0_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => \Add1~0_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(2));

-- Location: LCCOMB_X37_Y16_N16
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (POSX(3) & (\Add1~1\ & VCC)) # (!POSX(3) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!POSX(3) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(3),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X37_Y16_N0
\POSX[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(3) = (\LessThan2~2_combout\) # ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~2_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(3),
	datac => \Add1~2_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(3));

-- Location: LCCOMB_X37_Y16_N18
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (POSX(4) & (\Add1~3\ $ (GND))) # (!POSX(4) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((POSX(4) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X37_Y16_N10
\POSX[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(4) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~4_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \Add1~4_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(4));

-- Location: LCCOMB_X37_Y16_N8
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (POSX(4)) # ((POSX(5)) # ((POSX(2)) # (POSX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => POSX(5),
	datac => POSX(2),
	datad => POSX(3),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y16_N2
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~1_combout\) # (\POSX[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => \POSX[1]~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X37_Y16_N20
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (POSX(5) & (!\Add1~5\)) # (!POSX(5) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!POSX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(5),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y16_N4
\POSX[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(5) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~6_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(5),
	datac => \LessThan2~2_combout\,
	datad => \Add1~6_combout\,
	combout => POSX(5));

-- Location: LCCOMB_X37_Y16_N22
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (POSX(6) & (\Add1~7\ $ (GND))) # (!POSX(6) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((POSX(6) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X36_Y16_N26
\POSX[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(6) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add1~8_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSX(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => POSX(6),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(6));

-- Location: LCCOMB_X37_Y16_N24
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (POSX(7) & (!\Add1~9\)) # (!POSX(7) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!POSX(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X36_Y16_N4
\POSX[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(7) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add1~10_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSX(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => POSX(7),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(7));

-- Location: LCCOMB_X37_Y16_N26
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (POSX(8) & (\Add1~11\ $ (GND))) # (!POSX(8) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((POSX(8) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X37_Y16_N6
\POSX[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(8) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~12_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => \Equal0~8clkctrl_outclk\,
	datac => \Add1~12_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(8));

-- Location: LCCOMB_X37_Y16_N28
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (POSX(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => POSX(9),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X36_Y16_N30
\POSX[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(9) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add1~14_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSX(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => POSX(9),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(9));

-- Location: LCCOMB_X36_Y15_N12
\C1|Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~0_combout\ = (POSX(2) & (POSX(3) $ (VCC))) # (!POSX(2) & (POSX(3) & VCC))
-- \C1|Add9~1\ = CARRY((POSX(2) & POSX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => POSX(3),
	datad => VCC,
	combout => \C1|Add9~0_combout\,
	cout => \C1|Add9~1\);

-- Location: LCCOMB_X36_Y15_N14
\C1|Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~2_combout\ = (POSX(4) & (!\C1|Add9~1\)) # (!POSX(4) & ((\C1|Add9~1\) # (GND)))
-- \C1|Add9~3\ = CARRY((!\C1|Add9~1\) # (!POSX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datad => VCC,
	cin => \C1|Add9~1\,
	combout => \C1|Add9~2_combout\,
	cout => \C1|Add9~3\);

-- Location: LCCOMB_X36_Y15_N16
\C1|Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = (POSX(5) & ((GND) # (!\C1|Add9~3\))) # (!POSX(5) & (\C1|Add9~3\ $ (GND)))
-- \C1|Add9~5\ = CARRY((POSX(5)) # (!\C1|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(5),
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X36_Y15_N18
\C1|Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (POSX(6) & (\C1|Add9~5\ & VCC)) # (!POSX(6) & (!\C1|Add9~5\))
-- \C1|Add9~7\ = CARRY((!POSX(6) & !\C1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(6),
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: LCCOMB_X36_Y15_N20
\C1|Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~8_combout\ = (POSX(7) & (\C1|Add9~7\ $ (GND))) # (!POSX(7) & (!\C1|Add9~7\ & VCC))
-- \C1|Add9~9\ = CARRY((POSX(7) & !\C1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datad => VCC,
	cin => \C1|Add9~7\,
	combout => \C1|Add9~8_combout\,
	cout => \C1|Add9~9\);

-- Location: LCCOMB_X36_Y15_N22
\C1|Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~10_combout\ = (POSX(8) & (!\C1|Add9~9\)) # (!POSX(8) & ((\C1|Add9~9\) # (GND)))
-- \C1|Add9~11\ = CARRY((!\C1|Add9~9\) # (!POSX(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(8),
	datad => VCC,
	cin => \C1|Add9~9\,
	combout => \C1|Add9~10_combout\,
	cout => \C1|Add9~11\);

-- Location: LCCOMB_X36_Y15_N24
\C1|Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~12_combout\ = (POSX(9) & (\C1|Add9~11\ $ (GND))) # (!POSX(9) & (!\C1|Add9~11\ & VCC))
-- \C1|Add9~13\ = CARRY((POSX(9) & !\C1|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datad => VCC,
	cin => \C1|Add9~11\,
	combout => \C1|Add9~12_combout\,
	cout => \C1|Add9~13\);

-- Location: LCCOMB_X36_Y15_N26
\C1|Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add9~14_combout\ = \C1|Add9~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add9~13\,
	combout => \C1|Add9~14_combout\);

-- Location: LCCOMB_X38_Y16_N6
\C1|LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X38_Y16_N8
\C1|LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\POSX[1]~0_combout\ & ((!\C1|LessThan4~1_cout\) # (!\C1|HPOS\(1)))) # (!\POSX[1]~0_combout\ & (!\C1|HPOS\(1) & !\C1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X38_Y16_N10
\C1|LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|HPOS\(2) & ((!\C1|LessThan4~3_cout\) # (!POSX(2)))) # (!\C1|HPOS\(2) & (!POSX(2) & !\C1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => POSX(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X38_Y16_N12
\C1|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((POSX(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|HPOS\(3)))) # (!POSX(3) & (!\C1|HPOS\(3) & !\C1|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X38_Y16_N14
\C1|LessThan4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((POSX(4) & (\C1|HPOS\(4) & !\C1|LessThan4~7_cout\)) # (!POSX(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X38_Y16_N16
\C1|LessThan4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|HPOS\(5) & (POSX(5) & !\C1|LessThan4~9_cout\)) # (!\C1|HPOS\(5) & ((POSX(5)) # (!\C1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => POSX(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X38_Y16_N18
\C1|LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan4~11_cout\) # (!POSX(6)))) # (!\C1|HPOS\(6) & (!POSX(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => POSX(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X38_Y16_N20
\C1|LessThan4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((POSX(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|HPOS\(7)))) # (!POSX(7) & (!\C1|HPOS\(7) & !\C1|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X38_Y16_N22
\C1|LessThan4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan4~15_cout\) # (!POSX(8)))) # (!\C1|HPOS\(8) & (!POSX(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => POSX(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X38_Y16_N24
\C1|LessThan4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~18_combout\ = (\C1|HPOS\(9) & ((\C1|LessThan4~17_cout\) # (!POSX(9)))) # (!\C1|HPOS\(9) & (\C1|LessThan4~17_cout\ & !POSX(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => POSX(9),
	cin => \C1|LessThan4~17_cout\,
	combout => \C1|LessThan4~18_combout\);

-- Location: LCCOMB_X37_Y15_N8
\C1|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((!\C1|HPOS\(1) & \POSX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \POSX[1]~0_combout\,
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X37_Y15_N10
\C1|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|HPOS\(2) & ((POSX(2)) # (!\C1|LessThan5~1_cout\))) # (!\C1|HPOS\(2) & (POSX(2) & !\C1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => POSX(2),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X37_Y15_N12
\C1|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|Add9~0_combout\ & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(3)))) # (!\C1|Add9~0_combout\ & (!\C1|HPOS\(3) & !\C1|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X37_Y15_N14
\C1|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add9~2_combout\ & (\C1|HPOS\(4) & !\C1|LessThan5~5_cout\)) # (!\C1|Add9~2_combout\ & ((\C1|HPOS\(4)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~2_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X37_Y15_N16
\C1|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|Add9~4_combout\ & ((!\C1|LessThan5~7_cout\) # (!\C1|HPOS\(5)))) # (!\C1|Add9~4_combout\ & (!\C1|HPOS\(5) & !\C1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add9~4_combout\,
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X37_Y15_N18
\C1|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add9~6_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add9~6_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add9~6_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X37_Y15_N20
\C1|LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|HPOS\(7) & (\C1|Add9~8_combout\ & !\C1|LessThan5~11_cout\)) # (!\C1|HPOS\(7) & ((\C1|Add9~8_combout\) # (!\C1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|Add9~8_combout\,
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X37_Y15_N22
\C1|LessThan5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan5~13_cout\) # (!\C1|Add9~10_combout\))) # (!\C1|HPOS\(8) & (!\C1|Add9~10_combout\ & !\C1|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add9~10_combout\,
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X37_Y15_N24
\C1|LessThan5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~16_combout\ = (\C1|HPOS\(9) & (!\C1|LessThan5~15_cout\ & \C1|Add9~12_combout\)) # (!\C1|HPOS\(9) & ((\C1|Add9~12_combout\) # (!\C1|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => \C1|Add9~12_combout\,
	cin => \C1|LessThan5~15_cout\,
	combout => \C1|LessThan5~16_combout\);

-- Location: LCCOMB_X38_Y12_N0
\C3|g3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~0_combout\ = (\C1|LessThan4~18_combout\ & ((\C1|Add9~14_combout\) # (\C1|LessThan5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add9~14_combout\,
	datac => \C1|LessThan4~18_combout\,
	datad => \C1|LessThan5~16_combout\,
	combout => \C3|g3~0_combout\);

-- Location: LCCOMB_X38_Y12_N26
\C1|R~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~3_combout\ = (\SW[0]~input_o\ & (((\C3|g3~0_combout\)))) # (!\SW[0]~input_o\ & ((\C1|VPOS\(9)) # ((!\C1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \SW[0]~input_o\,
	datac => \C1|Add2~0_combout\,
	datad => \C3|g3~0_combout\,
	combout => \C1|R~3_combout\);

-- Location: LCCOMB_X36_Y13_N30
\C1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_combout\ = (!\C1|HPOS\(4)) # (!\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y13_N0
\C1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan0~0_combout\ = (!\C1|HPOS\(3) & (!\C1|HPOS\(2) & ((!\C1|HPOS\(0)) # (!\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y13_N24
\C1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan0~2_combout\ = (\SW[1]~input_o\ & ((\C1|LessThan0~1_combout\) # ((\C1|LessThan0~0_combout\) # (!\C1|HPOS\(6))))) # (!\SW[1]~input_o\ & (!\C1|HPOS\(6) & ((\C1|LessThan0~1_combout\) # (\C1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan0~1_combout\,
	datab => \C1|LessThan0~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \C1|HPOS\(6),
	combout => \C1|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y12_N30
\C1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_combout\ = (\C1|HPOS\(7) & (\C1|LessThan0~2_combout\ & \SW[2]~input_o\)) # (!\C1|HPOS\(7) & ((\C1|LessThan0~2_combout\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datac => \C1|LessThan0~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \C1|LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y12_N22
\C1|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan0~4_combout\ = (!\C1|HPOS\(9) & ((\SW[3]~input_o\ & ((\C1|LessThan0~3_combout\) # (!\C1|HPOS\(8)))) # (!\SW[3]~input_o\ & (\C1|LessThan0~3_combout\ & !\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \SW[3]~input_o\,
	datac => \C1|LessThan0~3_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y12_N0
\C1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan1~0_combout\ = (\C1|HPOS\(7) & (\C1|LessThan0~2_combout\ & !\SW[2]~input_o\)) # (!\C1|HPOS\(7) & ((\C1|LessThan0~2_combout\) # (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datac => \C1|LessThan0~2_combout\,
	datad => \SW[2]~input_o\,
	combout => \C1|LessThan1~0_combout\);

-- Location: LCCOMB_X39_Y12_N26
\C1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_combout\ = (\C1|HPOS\(8) & (\C1|LessThan1~0_combout\ & (\SW[2]~input_o\ $ (\SW[3]~input_o\)))) # (!\C1|HPOS\(8) & ((\C1|LessThan1~0_combout\) # (\SW[2]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \SW[2]~input_o\,
	datac => \C1|LessThan1~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \C1|LessThan1~1_combout\);

-- Location: LCCOMB_X39_Y12_N24
\C1|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan1~2_combout\ = (\C1|LessThan1~1_combout\ & (((\SW[2]~input_o\ & \SW[3]~input_o\)) # (!\C1|HPOS\(9)))) # (!\C1|LessThan1~1_combout\ & (\SW[2]~input_o\ & (!\C1|HPOS\(9) & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan1~1_combout\,
	datab => \SW[2]~input_o\,
	datac => \C1|HPOS\(9),
	datad => \SW[3]~input_o\,
	combout => \C1|LessThan1~2_combout\);

-- Location: LCCOMB_X42_Y14_N12
\C1|R~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~10_combout\ = (\SW[5]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \C1|R~10_combout\);

-- Location: LCCOMB_X42_Y14_N10
\C1|R~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~11_combout\ = (\C1|VPOS\(9) & (\SW[7]~input_o\ & (\C1|R~10_combout\ $ (\SW[6]~input_o\)))) # (!\C1|VPOS\(9) & (\SW[7]~input_o\ $ (((\C1|R~10_combout\ & \SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~10_combout\,
	datab => \C1|VPOS\(9),
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \C1|R~11_combout\);

-- Location: LCCOMB_X42_Y14_N26
\C1|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan2~0_combout\ = (!\C1|VPOS\(2) & (!\C1|VPOS\(3) & ((!\C1|VPOS\(0)) # (!\C1|VPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan2~0_combout\);

-- Location: LCCOMB_X42_Y14_N20
\C1|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_combout\ = (\C1|VPOS\(5) & (!\SW[4]~input_o\ & ((\C1|LessThan2~0_combout\) # (!\C1|VPOS\(4))))) # (!\C1|VPOS\(5) & ((\C1|LessThan2~0_combout\) # ((!\SW[4]~input_o\) # (!\C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan2~0_combout\,
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(5),
	datad => \SW[4]~input_o\,
	combout => \C1|LessThan2~1_combout\);

-- Location: LCCOMB_X42_Y14_N30
\C1|R~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~12_combout\ = (\C1|LessThan2~1_combout\ & ((\SW[5]~input_o\ $ (\SW[4]~input_o\)) # (!\C1|VPOS\(6)))) # (!\C1|LessThan2~1_combout\ & (!\C1|VPOS\(6) & (\SW[5]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \C1|LessThan2~1_combout\,
	datac => \C1|VPOS\(6),
	datad => \SW[4]~input_o\,
	combout => \C1|R~12_combout\);

-- Location: LCCOMB_X42_Y14_N24
\C1|R~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~13_combout\ = (\C1|VPOS\(9) & (\C1|R~10_combout\ & (\SW[7]~input_o\ & \SW[6]~input_o\))) # (!\C1|VPOS\(9) & (\C1|R~10_combout\ $ (((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~10_combout\,
	datab => \C1|VPOS\(9),
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \C1|R~13_combout\);

-- Location: LCCOMB_X42_Y14_N28
\C1|R~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~15_combout\ = (!\C1|VPOS\(8) & ((\C1|R~12_combout\ & ((\C1|R~13_combout\) # (!\C1|VPOS\(7)))) # (!\C1|R~12_combout\ & (\C1|R~13_combout\ & !\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~12_combout\,
	datab => \C1|R~13_combout\,
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(8),
	combout => \C1|R~15_combout\);

-- Location: LCCOMB_X42_Y14_N22
\C1|R~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~14_combout\ = (\C1|R~13_combout\ & (\C1|VPOS\(8) $ (((\C1|R~12_combout\) # (!\C1|VPOS\(7)))))) # (!\C1|R~13_combout\ & (\C1|VPOS\(8) & ((\C1|VPOS\(7)) # (!\C1|R~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~12_combout\,
	datab => \C1|R~13_combout\,
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(8),
	combout => \C1|R~14_combout\);

-- Location: LCCOMB_X42_Y14_N18
\C1|R~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~16_combout\ = (\C1|R~15_combout\ & (\C1|VPOS\(9) & (\C1|R~11_combout\ $ (\C1|R~14_combout\)))) # (!\C1|R~15_combout\ & (!\C1|VPOS\(9) & ((\C1|R~14_combout\) # (!\C1|R~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~11_combout\,
	datab => \C1|R~15_combout\,
	datac => \C1|R~14_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|R~16_combout\);

-- Location: LCCOMB_X42_Y14_N0
\C1|R~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~6_combout\ = (\C1|VPOS\(5) & ((\SW[4]~input_o\) # ((!\C1|LessThan2~0_combout\ & \C1|VPOS\(4))))) # (!\C1|VPOS\(5) & (!\C1|LessThan2~0_combout\ & (\C1|VPOS\(4) & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan2~0_combout\,
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(5),
	datad => \SW[4]~input_o\,
	combout => \C1|R~6_combout\);

-- Location: LCCOMB_X42_Y14_N8
\C1|R~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~8_combout\ = (\SW[5]~input_o\ & (!\C1|R~6_combout\ & (!\C1|VPOS\(6) & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \C1|R~6_combout\,
	datac => \C1|VPOS\(6),
	datad => \SW[4]~input_o\,
	combout => \C1|R~8_combout\);

-- Location: LCCOMB_X42_Y14_N4
\C1|R~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~5_combout\ = \C1|VPOS\(7) $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(7),
	datad => \SW[6]~input_o\,
	combout => \C1|R~5_combout\);

-- Location: LCCOMB_X42_Y14_N14
\C1|R~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~4_combout\ = \C1|VPOS\(8) $ (\SW[7]~input_o\ $ (((\C1|VPOS\(7) & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(7),
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \C1|R~4_combout\);

-- Location: LCCOMB_X42_Y14_N2
\C1|R~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~7_combout\ = (\SW[5]~input_o\ & (\C1|R~6_combout\ & (\C1|VPOS\(6) & !\SW[4]~input_o\))) # (!\SW[5]~input_o\ & ((\C1|R~6_combout\ & ((\C1|VPOS\(6)) # (!\SW[4]~input_o\))) # (!\C1|R~6_combout\ & (\C1|VPOS\(6) & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \C1|R~6_combout\,
	datac => \C1|VPOS\(6),
	datad => \SW[4]~input_o\,
	combout => \C1|R~7_combout\);

-- Location: LCCOMB_X42_Y14_N6
\C1|R~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~9_combout\ = (\C1|R~8_combout\ & (\C1|R~4_combout\ & (\C1|R~5_combout\ $ (!\C1|R~7_combout\)))) # (!\C1|R~8_combout\ & ((\C1|R~5_combout\ & (\C1|R~4_combout\ & !\C1|R~7_combout\)) # (!\C1|R~5_combout\ & (!\C1|R~4_combout\ & \C1|R~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~8_combout\,
	datab => \C1|R~5_combout\,
	datac => \C1|R~4_combout\,
	datad => \C1|R~7_combout\,
	combout => \C1|R~9_combout\);

-- Location: LCCOMB_X39_Y12_N2
\C1|R~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~17_combout\ = (!\C1|LessThan0~4_combout\ & (\C1|LessThan1~2_combout\ & (\C1|R~16_combout\ & \C1|R~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan0~4_combout\,
	datab => \C1|LessThan1~2_combout\,
	datac => \C1|R~16_combout\,
	datad => \C1|R~9_combout\,
	combout => \C1|R~17_combout\);

-- Location: LCCOMB_X39_Y14_N14
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (POSY(9) & (!\Add2~13\)) # (!POSY(9) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!POSY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X39_Y14_N16
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = POSY(10) $ (!\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X40_Y14_N12
\POSY[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(10) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~16_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(10),
	datab => \Add2~16_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(10));

-- Location: LCCOMB_X39_Y14_N0
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\POSY[1]~0_combout\ & (POSY(2) $ (VCC))) # (!\POSY[1]~0_combout\ & (POSY(2) & VCC))
-- \Add2~1\ = CARRY((\POSY[1]~0_combout\ & POSY(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~0_combout\,
	datab => POSY(2),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X40_Y14_N10
\POSY[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(2) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~0_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \Add2~0_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(2));

-- Location: LCCOMB_X40_Y14_N2
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (POSY(2)) # ((POSY(3)) # ((POSY(4)) # (POSY(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => POSY(3),
	datac => POSY(4),
	datad => POSY(5),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X40_Y14_N24
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\POSY[1]~0_combout\) # ((POSY(7)) # ((POSY(6)) # (\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~0_combout\,
	datab => POSY(7),
	datac => POSY(6),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X40_Y14_N30
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (POSY(10) & ((POSY(9)) # ((\LessThan4~1_combout\ & POSY(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(10),
	datab => \LessThan4~1_combout\,
	datac => POSY(8),
	datad => POSY(9),
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X40_Y16_N26
\POSY[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[1]~0_combout\ = (\LessThan4~2_combout\) # (\POSY[1]~0_combout\ $ (\Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \LessThan4~2_combout\,
	combout => \POSY[1]~0_combout\);

-- Location: LCCOMB_X39_Y14_N2
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (POSY(3) & (\Add2~1\ & VCC)) # (!POSY(3) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!POSY(3) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(3),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X40_Y14_N8
\POSY[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(3) = (\LessThan4~2_combout\) # ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~2_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => POSY(3),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(3));

-- Location: LCCOMB_X39_Y14_N4
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (POSY(4) & (\Add2~3\ $ (GND))) # (!POSY(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((POSY(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X40_Y14_N22
\POSY[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(4) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~4_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => POSY(4),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(4));

-- Location: LCCOMB_X39_Y14_N6
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (POSY(5) & (!\Add2~5\)) # (!POSY(5) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!POSY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(5),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X40_Y14_N0
\POSY[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(5) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~6_combout\)) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => POSY(5),
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(5));

-- Location: LCCOMB_X39_Y14_N8
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (POSY(6) & (\Add2~7\ $ (GND))) # (!POSY(6) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((POSY(6) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(6),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X40_Y14_N14
\POSY[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(6) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~8_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => \Add2~8_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(6));

-- Location: LCCOMB_X39_Y14_N10
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (POSY(7) & (!\Add2~9\)) # (!POSY(7) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!POSY(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X40_Y14_N4
\POSY[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(7) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~10_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \Add2~10_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(7));

-- Location: LCCOMB_X39_Y14_N12
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (POSY(8) & (\Add2~11\ $ (GND))) # (!POSY(8) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((POSY(8) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X40_Y14_N26
\POSY[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(8) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~12_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => \Add2~12_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(8));

-- Location: LCCOMB_X40_Y14_N16
\POSY[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(9) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~14_combout\))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(9),
	datab => \Add2~14_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan4~2_combout\,
	combout => POSY(9));

-- Location: LCCOMB_X41_Y12_N0
\C1|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan6~1_cout\);

-- Location: LCCOMB_X41_Y12_N2
\C1|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\POSY[1]~0_combout\ & ((!\C1|LessThan6~1_cout\) # (!\C1|VPOS\(1)))) # (!\POSY[1]~0_combout\ & (!\C1|VPOS\(1) & !\C1|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X41_Y12_N4
\C1|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((POSY(2) & (\C1|VPOS\(2) & !\C1|LessThan6~3_cout\)) # (!POSY(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X41_Y12_N6
\C1|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((POSY(3) & ((!\C1|LessThan6~5_cout\) # (!\C1|VPOS\(3)))) # (!POSY(3) & (!\C1|VPOS\(3) & !\C1|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X41_Y12_N8
\C1|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan6~7_cout\) # (!POSY(4)))) # (!\C1|VPOS\(4) & (!POSY(4) & !\C1|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => POSY(4),
	datad => VCC,
	cin => \C1|LessThan6~7_cout\,
	cout => \C1|LessThan6~9_cout\);

-- Location: LCCOMB_X41_Y12_N10
\C1|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~11_cout\ = CARRY((\C1|VPOS\(5) & (POSY(5) & !\C1|LessThan6~9_cout\)) # (!\C1|VPOS\(5) & ((POSY(5)) # (!\C1|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => POSY(5),
	datad => VCC,
	cin => \C1|LessThan6~9_cout\,
	cout => \C1|LessThan6~11_cout\);

-- Location: LCCOMB_X41_Y12_N12
\C1|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan6~11_cout\) # (!POSY(6)))) # (!\C1|VPOS\(6) & (!POSY(6) & !\C1|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => POSY(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X41_Y12_N14
\C1|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((POSY(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|VPOS\(7)))) # (!POSY(7) & (!\C1|VPOS\(7) & !\C1|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X41_Y12_N16
\C1|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~17_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan6~15_cout\) # (!POSY(8)))) # (!\C1|VPOS\(8) & (!POSY(8) & !\C1|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => POSY(8),
	datad => VCC,
	cin => \C1|LessThan6~15_cout\,
	cout => \C1|LessThan6~17_cout\);

-- Location: LCCOMB_X41_Y12_N18
\C1|LessThan6~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~18_combout\ = (\C1|VPOS\(9) & ((\C1|LessThan6~17_cout\) # (!POSY(9)))) # (!\C1|VPOS\(9) & (\C1|LessThan6~17_cout\ & !POSY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => POSY(9),
	cin => \C1|LessThan6~17_cout\,
	combout => \C1|LessThan6~18_combout\);

-- Location: LCCOMB_X40_Y12_N6
\C1|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~0_combout\ = (POSY(3) & (POSY(2) $ (VCC))) # (!POSY(3) & (POSY(2) & VCC))
-- \C1|Add10~1\ = CARRY((POSY(3) & POSY(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => POSY(2),
	datad => VCC,
	combout => \C1|Add10~0_combout\,
	cout => \C1|Add10~1\);

-- Location: LCCOMB_X40_Y12_N8
\C1|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~2_combout\ = (POSY(4) & (!\C1|Add10~1\)) # (!POSY(4) & ((\C1|Add10~1\) # (GND)))
-- \C1|Add10~3\ = CARRY((!\C1|Add10~1\) # (!POSY(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datad => VCC,
	cin => \C1|Add10~1\,
	combout => \C1|Add10~2_combout\,
	cout => \C1|Add10~3\);

-- Location: LCCOMB_X40_Y12_N10
\C1|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~4_combout\ = (POSY(5) & ((GND) # (!\C1|Add10~3\))) # (!POSY(5) & (\C1|Add10~3\ $ (GND)))
-- \C1|Add10~5\ = CARRY((POSY(5)) # (!\C1|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(5),
	datad => VCC,
	cin => \C1|Add10~3\,
	combout => \C1|Add10~4_combout\,
	cout => \C1|Add10~5\);

-- Location: LCCOMB_X40_Y12_N12
\C1|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~6_combout\ = (POSY(6) & (\C1|Add10~5\ & VCC)) # (!POSY(6) & (!\C1|Add10~5\))
-- \C1|Add10~7\ = CARRY((!POSY(6) & !\C1|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datad => VCC,
	cin => \C1|Add10~5\,
	combout => \C1|Add10~6_combout\,
	cout => \C1|Add10~7\);

-- Location: LCCOMB_X40_Y12_N14
\C1|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~8_combout\ = (POSY(7) & (\C1|Add10~7\ $ (GND))) # (!POSY(7) & (!\C1|Add10~7\ & VCC))
-- \C1|Add10~9\ = CARRY((POSY(7) & !\C1|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(7),
	datad => VCC,
	cin => \C1|Add10~7\,
	combout => \C1|Add10~8_combout\,
	cout => \C1|Add10~9\);

-- Location: LCCOMB_X40_Y12_N16
\C1|Add10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~10_combout\ = (POSY(8) & (!\C1|Add10~9\)) # (!POSY(8) & ((\C1|Add10~9\) # (GND)))
-- \C1|Add10~11\ = CARRY((!\C1|Add10~9\) # (!POSY(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datad => VCC,
	cin => \C1|Add10~9\,
	combout => \C1|Add10~10_combout\,
	cout => \C1|Add10~11\);

-- Location: LCCOMB_X40_Y12_N18
\C1|Add10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~12_combout\ = (POSY(9) & (\C1|Add10~11\ $ (GND))) # (!POSY(9) & (!\C1|Add10~11\ & VCC))
-- \C1|Add10~13\ = CARRY((POSY(9) & !\C1|Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => VCC,
	cin => \C1|Add10~11\,
	combout => \C1|Add10~12_combout\,
	cout => \C1|Add10~13\);

-- Location: LCCOMB_X40_Y12_N20
\C1|Add10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~14_combout\ = (POSY(10) & (!\C1|Add10~13\)) # (!POSY(10) & ((\C1|Add10~13\) # (GND)))
-- \C1|Add10~15\ = CARRY((!\C1|Add10~13\) # (!POSY(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	datad => VCC,
	cin => \C1|Add10~13\,
	combout => \C1|Add10~14_combout\,
	cout => \C1|Add10~15\);

-- Location: LCCOMB_X40_Y12_N22
\C1|Add10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~16_combout\ = !\C1|Add10~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add10~15\,
	combout => \C1|Add10~16_combout\);

-- Location: LCCOMB_X39_Y12_N4
\C1|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((\POSY[1]~0_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~0_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X39_Y12_N6
\C1|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|VPOS\(2) & ((POSY(2)) # (!\C1|LessThan7~1_cout\))) # (!\C1|VPOS\(2) & (POSY(2) & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => POSY(2),
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X39_Y12_N8
\C1|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|Add10~0_combout\ & ((!\C1|LessThan7~3_cout\) # (!\C1|VPOS\(3)))) # (!\C1|Add10~0_combout\ & (!\C1|VPOS\(3) & !\C1|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add10~0_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X39_Y12_N10
\C1|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan7~5_cout\) # (!\C1|Add10~2_combout\))) # (!\C1|VPOS\(4) & (!\C1|Add10~2_combout\ & !\C1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add10~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X39_Y12_N12
\C1|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|VPOS\(5) & (\C1|Add10~4_combout\ & !\C1|LessThan7~7_cout\)) # (!\C1|VPOS\(5) & ((\C1|Add10~4_combout\) # (!\C1|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add10~4_combout\,
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X39_Y12_N14
\C1|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan7~9_cout\) # (!\C1|Add10~6_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add10~6_combout\ & !\C1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add10~6_combout\,
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X39_Y12_N16
\C1|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|VPOS\(7) & (\C1|Add10~8_combout\ & !\C1|LessThan7~11_cout\)) # (!\C1|VPOS\(7) & ((\C1|Add10~8_combout\) # (!\C1|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add10~8_combout\,
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X39_Y12_N18
\C1|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan7~13_cout\) # (!\C1|Add10~10_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add10~10_combout\ & !\C1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add10~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X39_Y12_N20
\C1|LessThan7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~16_combout\ = (\C1|VPOS\(9) & (!\C1|LessThan7~15_cout\ & \C1|Add10~12_combout\)) # (!\C1|VPOS\(9) & ((\C1|Add10~12_combout\) # (!\C1|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C1|Add10~12_combout\,
	cin => \C1|LessThan7~15_cout\,
	combout => \C1|LessThan7~16_combout\);

-- Location: LCCOMB_X39_Y12_N28
\C2|G2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~0_combout\ = (!POSY(10) & ((\C1|Add10~16_combout\) # ((\C1|Add10~14_combout\) # (\C1|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(10),
	datab => \C1|Add10~16_combout\,
	datac => \C1|Add10~14_combout\,
	datad => \C1|LessThan7~16_combout\,
	combout => \C2|G2~0_combout\);

-- Location: LCCOMB_X38_Y12_N28
\C1|R~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~18_combout\ = (\SW[0]~input_o\ & (((\C1|LessThan6~18_combout\ & \C2|G2~0_combout\)))) # (!\SW[0]~input_o\ & (\C1|R~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~17_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|LessThan6~18_combout\,
	datad => \C2|G2~0_combout\,
	combout => \C1|R~18_combout\);

-- Location: LCCOMB_X38_Y12_N6
\C1|R~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~19_combout\ = (\C1|process_0~12_combout\) # ((!\C1|R~18_combout\) # (!\C1|R~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~12_combout\,
	datac => \C1|R~3_combout\,
	datad => \C1|R~18_combout\,
	combout => \C1|R~19_combout\);

-- Location: FF_X38_Y12_N13
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R[0]~0_combout\,
	asdata => \C1|g[0]~0_combout\,
	sclr => \C1|R~19_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: M9K_X53_Y19_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y16_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y12_N18
\C1|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[1]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	combout => \C1|R[1]~1_combout\);

-- Location: M9K_X33_Y11_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y14_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y12_N4
\C1|g[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[1]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	combout => \C1|g[1]~1_combout\);

-- Location: FF_X38_Y12_N19
\C1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R[1]~1_combout\,
	asdata => \C1|g[1]~1_combout\,
	sclr => \C1|R~19_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(1));

-- Location: M9K_X33_Y13_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y12_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y12_N8
\C1|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[2]~2_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \C1|R[2]~2_combout\);

-- Location: M9K_X73_Y14_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y15_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y12_N0
\c0|altsyncram_component|auto_generated|mux2|result_node[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[7]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~0_combout\);

-- Location: FF_X38_Y12_N9
\C1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R[2]~2_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~0_combout\,
	sclr => \C1|R~19_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(2));

-- Location: M9K_X33_Y18_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y12_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y12_N26
\c0|altsyncram_component|auto_generated|mux2|result_node[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[2]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\)) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~1_combout\);

-- Location: FF_X38_Y12_N23
\C1|g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g[0]~0_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~1_combout\,
	sclr => \C1|R~19_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(0));

-- Location: M9K_X53_Y17_N0
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y18_N0
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y17_N20
\c0|altsyncram_component|auto_generated|mux2|result_node[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[3]~2_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~2_combout\);

-- Location: FF_X38_Y12_N5
\C1|g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g[1]~1_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~2_combout\,
	sclr => \C1|R~19_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(1));

-- Location: M9K_X33_Y14_N0
\c0|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC241FFFFFFFFFFFFFFFFFFFFFFFFFFFF3AFCFFFFFFFFFFFFFFFFFFFFFFFFFFFC281C3FFFFFFFFFFFFFFFFFFFFFFFFFF2DE7F47FFFFFFFFFFFFFFFFFFFFFFFF031918C1FFFFFFFFFFFFFFFFFFFFFFFF94E0C729FFFFFFFFFFFFFFFFFFFFFFFC618C189E1FFFFFFFFFFFFFFFFFFFFFF00C1E68314FFFFFFFFFFFFFFFFFFFFFCB01BFF78053FFFFFFFFFFFFFFFFFFFF1EA6BE7D6538FFFFFFFFFFFFFFFFFFFEF81BF91FD81F7FFFFFFFFFFFFFFFFFFF520FE3C7F42DFFFFFFFFFFFFFFFFFFFE68FF8FF1FD167FFFFFFFFFFFFFFFFFFE617E3F7C7F867FFFFFFFFFFFFFFFFFFC20ACFFFF1C363FFFFFFFFF",
	mem_init2 => X"FFFFFFFFF9E53FFC7FFDA78FFFFFFFFFFFFFFDF782215847C3E78542FFFFF7FFFFFFF17F0E04A6711D550118E28FFFFFFFFFC088B805EABC3ECE00151B03FFFFFFFF2FA3E2115B080C48CC53C774FFFFFFFE2C6F48C100B0C0618010E72C1FFFFFD2E24402240A00C0802E8620675FFFFF8F584182AF07F617E0F451A21AD7FFFFB44234028AB99FFEBD525828023DF7FA5D0D8050831C6BEB37C7D001A0B85FF0C412E02F07DCDDFCC22FF303002A0FE710C77AB10A0315DFE2303E9AE302E78E010FF5AA80A99BA511EC518BFA02715C0B7DF11E67BC748F5D52705FCEB02AEB0CE46A2E19B44B79251878360FA84F507DEF429D6034DCDEE40E8135F7B60B",
	mem_init1 => X"71E77F92F061B45B518311FF53FEF70BF91C7F509700B46C4FF787B120EE389A6521FF916683B431C85E07E80C7F9CA6707BFFE01201B42EF15600FC38FB9E06A88FFE185405FF3E65CB4A2C18FFD0079A3DFF2030857DBECED64005203FBE498A3EFE686D3073D2F19382725F9F7A59825CFBA8AA0E978F30DD413E9F5FB261C96EFB41D2747E0080FE27E64E3F6691F61FDCD808CED816483BD25F7FBCFC2BF027F6C29F8A4000000B9FE15F2FEC6FE49FBD205FEBA0C04B4897F9C95DE967EE180D60DFF9E255DA851FFAEEB03857FD9011DE5BFE49500B826FEB5B040977F78035DC31FFF64FF667EF281B4800EFF63E3652CB7A247C2E2E5E3A976A2C6F",
	mem_init0 => X"FB4081FDF37CBBA7DD9F3F772F8903DFF9BE12680E7F93241E5DFDB142A87F9FFBF8165C8CBFFB71765FFA7902094FDFFE0B113BD83FB7A4218FFF869758F73FFFF710C781FFDF0450F9FC300798FFFFFFF31E50DE9FF5D6AFE9FAEB69695FFFFFFB17011C5F2A234455FE368CF8DFFFFFBB1513FEFE123F86E07C7BB0E8DFFFFFF3173A5DFFE0E17527FE8ECCF8DFFFFFF317F36DFE24CEDA2DFFB87CF8DFFFFFF31FFCFBBFC9F94F06BFF07EF8DFFFFFF31F7FFFE3665C2BA607FFFCF8DFFFFFFB1FFFFFC904B5D531B7FFFCF8DFFFFFFB1F7FF8770DE67FB17C0FFEF8DFFFFFF31F7FE873A17EDE95DE97FEF8DFFFFFF31F3FE63D3ADAC74C7E47FEF8DFFF",
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
	port_a_first_bit_number => 4,
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y15_N0
\c0|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF31F7F2C1CC8B8CB13781DFEE8FFFFFFF31F7C7003A9F5F593CCD17DE8FFFFFFFB1F7AE8D66AF945F4620FFCE8FFFFFFFB1F7E55CEFD1DF5E912A23FE8DFFFFFFB1F799337285397A4A56BDCE81FFFFFFB1F6CFAE0675C7C86974E0FE81FFFFFF31F961BC024AA27F0D3934CE81FFFFFF31F3D63BB6F5B9CD79F2CEDE8DFFFFFF31FB8093E7C88004EDCC314E8DFFFFFF31F39AD4F977C3DA2A89085E9F7FFFFF31F1832BA049D77D6E25C90E9DFFFFFF71F099C84BF700D3C2AD0D6E97FFFFC0A1F1190B0FE1635FE483CAAF9173FFAFA1F160A617F70CDFE2D9DCCF9DFDFF9FE1F01D7D11F6E68F96F1E7CE97FC7FB419F73A5C4BF7C3DED3B1A1EE903DF",
	mem_init2 => X"F73E57B34DAEEB4A61D8D34E03E26CEFF600338DE55FE1DFB921B8ABDBEC00EFFC99FF578880B64387E46B9008FB8177EE18172F02DA7FE563B4A7EB28E01877E693CB3504C117BDDFFD8EED40D3F967F417FFC914F44FFD7FD257AEFDFFEC6FDC1BFF03F9BFFFF11FE1587A22BABA3BCD66FF88933B4F815FF736B02BFF6491C64CFFC680279F923FFBE0685FFF3671825EFFF26B09FFBE47FEDDF69FFD7A419ABDFFF8E0C66FC4BBFEA9022FFFBB49201DFFEA35C8FFC88FFF69C9AFFFF11770FBBFE43167FFFA2C3FA6B45FFFDF0E7539FFE9803BFFA167BF9328D7FFD8A669B87FF2FE87FFDCD3DFD2F427FE388EE0E77FE15E85FFF79BBFED5CE7FEF70B",
	mem_init1 => X"D05DCFDAFE3FFF22BBFFF62B1BF7BB0FE31DF577BABFFF6FDFFFFD669EE728435E0F79F2477FFFFA55FFF6E6AF9EB02A8F617F3DED0FFF8363FFF3C53EF98073E780D74F0C5FFF0ECD7FFA7778E300E7F8C431C0563FFF7E9F7FFFC80308260FFE1D8D8070FFFFDCB87DFA9400B1A87BFFB6401E7CDBFFDC34FFD31078022DF6FF8FD841A27CFFFEBFFF3F5D821A51FFFFF2D7540A6E7FFDFFFE7F6D2A674FFFFFFC3F6F03FF9FFC9FF9FD44F72C7FFFFFFFBD23CE33D7FF3FEBD803C5D5FFFFFFFFA2DCA30AF7FE7FAB59C51B03FFFFFFFFF07F89C27BEFFFDA8290FE1FFFFFFFFFFCF7E223FFFFFFDFC513EFEFFFFFFFFFFFFFF1E5BFFFFFFDA58FFFFFFFFF",
	mem_init0 => X"FFFFFFFFF821BCFFFF3C363FFFFFFFFFFFFFFFFFFE61FEBF7C7F867FFFFFFFFFFFFFFFFFFE68BD8FF1FF1FFFFFFFFFFFFFFFFFFFFF521FE3C7742EFFFFFFFFFFFFFFFFFFFEF81FF99F501F7FFFFFFFFFFFFFFFFFFF1B20EE7D0530FFFFFFFFFFFFFFFFFFFF4F41BD770073FFFFFFFFFFFFFFFFFFFFF2225F70314FFFFFFFFFFFFFFFFFFFFFFC690D588E1FFFFFFFFFFFFFFFFFFFFFFF96E24729FFFFFFFFFFFFFFFFFFFFFFFF434011C1FFFFFFFFFFFFFFFFFFFFFFFFF0FE4747FFFFFFFFFFFFFFFFFFFFFFFFF03C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFF1839FFFFFFFFFFFFFFFFFFFFFFFFFFFFC740FFFFFFFFFFFFFFFFFFFFFFFFFFFFF40FFFFFFFFFFFFFFF",
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
	port_a_first_bit_number => 4,
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y12_N16
\C1|g[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[2]~2_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a16~portadataout\)) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \C1|g[2]~2_combout\);

-- Location: FF_X37_Y12_N17
\C1|g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g[2]~2_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~0_combout\,
	sclr => \C1|R~19_combout\,
	sload => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(2));

-- Location: LCCOMB_X39_Y11_N0
\C2|R2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[0]~13_combout\ = (\SW[0]~input_o\) # (\C1|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \C1|process_0~12_combout\,
	combout => \C2|R2[0]~13_combout\);

-- Location: LCCOMB_X38_Y15_N16
\C2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan0~0_combout\ = (!\C1|HPOS\(8) & (((!\C1|HPOS\(7)) # (!\C1|HPOS\(4))) # (!\C1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C2|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y15_N16
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ = \C1|VPOS\(6) $ (VCC)
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ = CARRY(\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\);

-- Location: LCCOMB_X44_Y15_N18
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ = (\C1|VPOS\(7) & (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\)) # (!\C1|VPOS\(7) & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # 
-- (GND)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\);

-- Location: LCCOMB_X44_Y15_N20
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ = (\C1|VPOS\(8) & (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ $ (GND))) # (!\C1|VPOS\(8) & 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & VCC))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ = CARRY((\C1|VPOS\(8) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\);

-- Location: LCCOMB_X44_Y15_N22
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ = (\C1|VPOS\(9) & (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\)) # (!\C1|VPOS\(9) & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # 
-- (GND)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LCCOMB_X44_Y15_N24
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ = \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\);

-- Location: LCCOMB_X44_Y15_N6
\C2|Div0|auto_generated|divider|divider|StageOut[39]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\);

-- Location: LCCOMB_X44_Y15_N0
\C2|Div0|auto_generated|divider|divider|StageOut[39]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ = (\C1|VPOS\(8) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(8),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\);

-- Location: LCCOMB_X44_Y15_N4
\C2|Div0|auto_generated|divider|divider|StageOut[38]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\ = (\C1|VPOS\(7) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(7),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\);

-- Location: LCCOMB_X44_Y15_N14
\C2|Div0|auto_generated|divider|divider|StageOut[38]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X43_Y15_N30
\C2|Div0|auto_generated|divider|divider|StageOut[37]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ = (\C1|VPOS\(6) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\);

-- Location: LCCOMB_X44_Y15_N8
\C2|Div0|auto_generated|divider|divider|StageOut[37]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\);

-- Location: LCCOMB_X43_Y15_N10
\C2|Div0|auto_generated|divider|divider|StageOut[36]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ = (\C1|VPOS\(5) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\);

-- Location: LCCOMB_X43_Y15_N4
\C2|Div0|auto_generated|divider|divider|StageOut[36]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\ = (\C1|VPOS\(5) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\);

-- Location: LCCOMB_X43_Y15_N16
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\,
	datad => VCC,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X43_Y15_N18
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X43_Y15_N20
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\)))) # (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X43_Y15_N22
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X44_Y15_N2
\C2|Div0|auto_generated|divider|divider|StageOut[40]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\);

-- Location: LCCOMB_X44_Y15_N28
\C2|Div0|auto_generated|divider|divider|StageOut[40]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\ = (\C1|VPOS\(9) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(9),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X43_Y15_N24
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\);

-- Location: LCCOMB_X43_Y15_N26
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X42_Y11_N2
\C2|Div0|auto_generated|divider|divider|StageOut[47]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\);

-- Location: LCCOMB_X44_Y15_N30
\C2|Div0|auto_generated|divider|divider|StageOut[47]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C1|VPOS\(8))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\);

-- Location: LCCOMB_X43_Y11_N24
\C2|Div0|auto_generated|divider|divider|StageOut[46]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\);

-- Location: LCCOMB_X44_Y15_N26
\C2|Div0|auto_generated|divider|divider|StageOut[46]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C1|VPOS\(7))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\);

-- Location: LCCOMB_X43_Y11_N22
\C2|Div0|auto_generated|divider|divider|StageOut[45]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\);

-- Location: LCCOMB_X44_Y15_N12
\C2|Div0|auto_generated|divider|divider|StageOut[45]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C1|VPOS\(6))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\);

-- Location: LCCOMB_X43_Y11_N26
\C2|Div0|auto_generated|divider|divider|StageOut[44]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\);

-- Location: LCCOMB_X43_Y11_N28
\C2|Div0|auto_generated|divider|divider|StageOut[44]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ = (\C1|VPOS\(5) & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\);

-- Location: LCCOMB_X43_Y15_N14
\C2|Div0|auto_generated|divider|divider|StageOut[35]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\ = (\C1|VPOS\(4) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\);

-- Location: LCCOMB_X43_Y15_N12
\C2|Div0|auto_generated|divider|divider|StageOut[35]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\ = (\C1|VPOS\(4) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\);

-- Location: LCCOMB_X43_Y15_N8
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\);

-- Location: LCCOMB_X43_Y11_N30
\C2|Div0|auto_generated|divider|divider|StageOut[43]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\);

-- Location: LCCOMB_X43_Y11_N0
\C2|Div0|auto_generated|divider|divider|StageOut[43]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\ = (\C1|VPOS\(4) & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\);

-- Location: LCCOMB_X43_Y11_N6
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datad => VCC,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X43_Y11_N8
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X43_Y11_N10
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & (((\C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\)))) # (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X43_Y11_N12
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X43_Y11_N14
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X43_Y11_N16
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\);

-- Location: LCCOMB_X43_Y11_N4
\C2|Div0|auto_generated|divider|divider|StageOut[54]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\) # 
-- ((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\);

-- Location: LCCOMB_X42_Y11_N0
\C2|Div0|auto_generated|divider|divider|StageOut[54]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\);

-- Location: LCCOMB_X43_Y11_N18
\C2|Div0|auto_generated|divider|divider|StageOut[53]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\);

-- Location: LCCOMB_X42_Y11_N14
\C2|Div0|auto_generated|divider|divider|StageOut[53]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\);

-- Location: LCCOMB_X43_Y11_N20
\C2|Div0|auto_generated|divider|divider|StageOut[52]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C1|VPOS\(5)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\);

-- Location: LCCOMB_X42_Y11_N16
\C2|Div0|auto_generated|divider|divider|StageOut[52]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\);

-- Location: LCCOMB_X42_Y11_N6
\C2|Div0|auto_generated|divider|divider|StageOut[51]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\);

-- Location: LCCOMB_X43_Y11_N2
\C2|Div0|auto_generated|divider|divider|StageOut[51]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\C1|VPOS\(4))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\);

-- Location: LCCOMB_X42_Y11_N20
\C2|Div0|auto_generated|divider|divider|StageOut[50]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ = (\C1|VPOS\(3) & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\);

-- Location: LCCOMB_X42_Y11_N8
\C2|Div0|auto_generated|divider|divider|StageOut[42]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\ = (\C1|VPOS\(3) & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\);

-- Location: LCCOMB_X42_Y11_N18
\C2|Div0|auto_generated|divider|divider|StageOut[42]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ = (\C1|VPOS\(3) & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\);

-- Location: LCCOMB_X42_Y11_N12
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\);

-- Location: LCCOMB_X42_Y11_N10
\C2|Div0|auto_generated|divider|divider|StageOut[50]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\);

-- Location: LCCOMB_X41_Y11_N0
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\,
	datad => VCC,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X41_Y11_N2
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X41_Y11_N4
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & (((\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\)))) # (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X41_Y11_N6
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X41_Y11_N8
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\);

-- Location: LCCOMB_X41_Y11_N10
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\);

-- Location: LCCOMB_X42_Y11_N30
\C2|Div0|auto_generated|divider|divider|StageOut[61]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\);

-- Location: LCCOMB_X41_Y11_N16
\C2|Div0|auto_generated|divider|divider|StageOut[61]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\);

-- Location: LCCOMB_X42_Y11_N4
\C2|Div0|auto_generated|divider|divider|StageOut[60]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\);

-- Location: LCCOMB_X41_Y11_N14
\C2|Div0|auto_generated|divider|divider|StageOut[60]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\);

-- Location: LCCOMB_X41_Y11_N12
\C2|Div0|auto_generated|divider|divider|StageOut[59]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X42_Y11_N22
\C2|Div0|auto_generated|divider|divider|StageOut[59]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\) # 
-- ((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\);

-- Location: LCCOMB_X41_Y11_N30
\C2|Div0|auto_generated|divider|divider|StageOut[58]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X42_Y11_N28
\C2|Div0|auto_generated|divider|divider|StageOut[58]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C1|VPOS\(3)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	datab => \C1|VPOS\(3),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\);

-- Location: LCCOMB_X41_Y13_N12
\C2|Div0|auto_generated|divider|divider|StageOut[49]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\ = (\C1|VPOS\(2) & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\);

-- Location: LCCOMB_X41_Y13_N18
\C2|Div0|auto_generated|divider|divider|StageOut[49]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\ = (\C1|VPOS\(2) & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\);

-- Location: LCCOMB_X41_Y13_N28
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\);

-- Location: LCCOMB_X41_Y13_N6
\C2|Div0|auto_generated|divider|divider|StageOut[57]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\);

-- Location: LCCOMB_X42_Y11_N24
\C2|Div0|auto_generated|divider|divider|StageOut[57]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C1|VPOS\(2),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\);

-- Location: LCCOMB_X41_Y11_N18
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\,
	datad => VCC,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X41_Y11_N20
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X41_Y11_N22
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X41_Y11_N24
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X41_Y11_N26
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X41_Y11_N28
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = !\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\);

-- Location: LCCOMB_X39_Y11_N4
\C2|R2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~16_combout\ = (!\C2|R2[0]~13_combout\ & (!\C1|HPOS\(9) & (\C2|LessThan0~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[0]~13_combout\,
	datab => \C1|HPOS\(9),
	datac => \C2|LessThan0~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	combout => \C2|R2~16_combout\);

-- Location: LCCOMB_X37_Y14_N26
\C2|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~2_combout\ = (\C2|process_0~0_combout\) # (((!\C1|HPOS\(7)) # (!\C1|HPOS\(4))) # (!\C1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~0_combout\,
	datab => \C1|process_0~0_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(7),
	combout => \C2|process_0~2_combout\);

-- Location: LCCOMB_X36_Y14_N2
\C2|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~1_combout\ = (\C1|HPOS\(7) & (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # (\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(2),
	combout => \C2|process_0~1_combout\);

-- Location: LCCOMB_X38_Y14_N0
\C2|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~3_combout\ = (\C1|HPOS\(8) & (((\C1|process_0~0_combout\ & \C2|process_0~1_combout\)))) # (!\C1|HPOS\(8) & (\C2|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~2_combout\,
	datab => \C1|process_0~0_combout\,
	datac => \C2|process_0~1_combout\,
	datad => \C1|HPOS\(8),
	combout => \C2|process_0~3_combout\);

-- Location: LCCOMB_X38_Y15_N18
\C2|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~4_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(1) & !\C1|HPOS\(0))) # (!\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(2),
	combout => \C2|process_0~4_combout\);

-- Location: LCCOMB_X38_Y15_N28
\C2|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~5_combout\ = (((\C2|process_0~4_combout\) # (!\C1|process_0~0_combout\)) # (!\C1|HPOS\(4))) # (!\C1|HPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(4),
	datac => \C1|process_0~0_combout\,
	datad => \C2|process_0~4_combout\,
	combout => \C2|process_0~5_combout\);

-- Location: LCCOMB_X38_Y15_N6
\C2|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~6_combout\ = (\C1|HPOS\(9) & (((\C1|HPOS\(7)) # (\C1|HPOS\(8))))) # (!\C1|HPOS\(9) & ((\C2|process_0~5_combout\) # ((!\C1|HPOS\(7) & \C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C2|process_0~5_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C2|process_0~6_combout\);

-- Location: LCCOMB_X37_Y15_N30
\C2|R2[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[0]~14_combout\ = (\C1|HPOS\(9) & (((!\C2|process_0~6_combout\)))) # (!\C1|HPOS\(9) & (!\C2|LessThan0~0_combout\ & ((!\C2|process_0~6_combout\) # (!\C2|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C2|LessThan0~0_combout\,
	datac => \C2|process_0~3_combout\,
	datad => \C2|process_0~6_combout\,
	combout => \C2|R2[0]~14_combout\);

-- Location: LCCOMB_X37_Y15_N4
\C2|R2[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[0]~12_combout\ = (\C2|LessThan0~0_combout\ & !\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|LessThan0~0_combout\,
	datad => \C1|HPOS\(9),
	combout => \C2|R2[0]~12_combout\);

-- Location: LCCOMB_X37_Y11_N10
\C2|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan1~1_combout\ = (\C1|VPOS\(9)) # (\C2|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(9),
	datad => \C2|LessThan1~0_combout\,
	combout => \C2|LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y15_N0
\C2|R2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[0]~15_combout\ = (\C2|R2[0]~13_combout\) # ((!\C2|R2[0]~14_combout\ & ((!\C2|LessThan1~1_combout\) # (!\C2|R2[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[0]~14_combout\,
	datab => \C2|R2[0]~12_combout\,
	datac => \C2|LessThan1~1_combout\,
	datad => \C2|R2[0]~13_combout\,
	combout => \C2|R2[0]~15_combout\);

-- Location: FF_X39_Y11_N5
\C2|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~16_combout\,
	ena => \C2|R2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(0));

-- Location: LCCOMB_X39_Y11_N2
\C2|R2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~17_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & (!\C1|HPOS\(9) & (\C2|LessThan0~0_combout\ & !\C2|R2[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C1|HPOS\(9),
	datac => \C2|LessThan0~0_combout\,
	datad => \C2|R2[0]~13_combout\,
	combout => \C2|R2~17_combout\);

-- Location: FF_X39_Y11_N3
\C2|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~17_combout\,
	ena => \C2|R2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(1));

-- Location: LCCOMB_X39_Y11_N28
\C2|R2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~18_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & (!\C1|HPOS\(9) & (\C2|LessThan0~0_combout\ & !\C2|R2[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C1|HPOS\(9),
	datac => \C2|LessThan0~0_combout\,
	datad => \C2|R2[0]~13_combout\,
	combout => \C2|R2~18_combout\);

-- Location: FF_X39_Y11_N29
\C2|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~18_combout\,
	ena => \C2|R2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(2));

-- Location: LCCOMB_X38_Y12_N30
\C2|G2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~3_combout\ = (!\C2|process_0~3_combout\ & (!\C1|HPOS\(9) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~3_combout\,
	datac => \C1|HPOS\(9),
	datad => \SW[0]~input_o\,
	combout => \C2|G2~3_combout\);

-- Location: LCCOMB_X37_Y13_N22
\C2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add0~2_combout\ = (POSX(8)) # (POSX(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSX(8),
	datad => POSX(7),
	combout => \C2|Add0~2_combout\);

-- Location: LCCOMB_X37_Y13_N0
\C2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~0_combout\ = (POSX(2) & (POSX(3) $ (VCC))) # (!POSX(2) & (POSX(3) & VCC))
-- \C2|Add1~1\ = CARRY((POSX(2) & POSX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => POSX(3),
	datad => VCC,
	combout => \C2|Add1~0_combout\,
	cout => \C2|Add1~1\);

-- Location: LCCOMB_X37_Y13_N2
\C2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~2_combout\ = (POSX(4) & (!\C2|Add1~1\)) # (!POSX(4) & ((\C2|Add1~1\) # (GND)))
-- \C2|Add1~3\ = CARRY((!\C2|Add1~1\) # (!POSX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(4),
	datad => VCC,
	cin => \C2|Add1~1\,
	combout => \C2|Add1~2_combout\,
	cout => \C2|Add1~3\);

-- Location: LCCOMB_X37_Y13_N4
\C2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~4_combout\ = (POSX(5) & ((GND) # (!\C2|Add1~3\))) # (!POSX(5) & (\C2|Add1~3\ $ (GND)))
-- \C2|Add1~5\ = CARRY((POSX(5)) # (!\C2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(5),
	datad => VCC,
	cin => \C2|Add1~3\,
	combout => \C2|Add1~4_combout\,
	cout => \C2|Add1~5\);

-- Location: LCCOMB_X37_Y13_N6
\C2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~6_combout\ = (POSX(6) & (\C2|Add1~5\ & VCC)) # (!POSX(6) & (!\C2|Add1~5\))
-- \C2|Add1~7\ = CARRY((!POSX(6) & !\C2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datad => VCC,
	cin => \C2|Add1~5\,
	combout => \C2|Add1~6_combout\,
	cout => \C2|Add1~7\);

-- Location: LCCOMB_X37_Y13_N8
\C2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~8_combout\ = (POSX(7) & (!\C2|Add1~7\ & VCC)) # (!POSX(7) & (\C2|Add1~7\ $ (GND)))
-- \C2|Add1~9\ = CARRY((!POSX(7) & !\C2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(7),
	datad => VCC,
	cin => \C2|Add1~7\,
	combout => \C2|Add1~8_combout\,
	cout => \C2|Add1~9\);

-- Location: LCCOMB_X37_Y13_N10
\C2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~10_combout\ = (\C2|Add1~9\ & (POSX(8) $ ((POSX(7))))) # (!\C2|Add1~9\ & ((POSX(8) $ (!POSX(7))) # (GND)))
-- \C2|Add1~11\ = CARRY((POSX(8) $ (POSX(7))) # (!\C2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => POSX(7),
	datad => VCC,
	cin => \C2|Add1~9\,
	combout => \C2|Add1~10_combout\,
	cout => \C2|Add1~11\);

-- Location: LCCOMB_X37_Y13_N12
\C2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~12_combout\ = (\C2|Add1~11\ & ((POSX(9) $ (\C2|Add0~2_combout\)))) # (!\C2|Add1~11\ & (POSX(9) $ (\C2|Add0~2_combout\ $ (VCC))))
-- \C2|Add1~13\ = CARRY((!\C2|Add1~11\ & (POSX(9) $ (\C2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => \C2|Add0~2_combout\,
	datad => VCC,
	cin => \C2|Add1~11\,
	combout => \C2|Add1~12_combout\,
	cout => \C2|Add1~13\);

-- Location: LCCOMB_X37_Y13_N14
\C2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~14_combout\ = (POSX(9) & ((\C2|Add0~2_combout\ & ((\C2|Add1~13\) # (GND))) # (!\C2|Add0~2_combout\ & (!\C2|Add1~13\)))) # (!POSX(9) & (((!\C2|Add1~13\))))
-- \C2|Add1~15\ = CARRY(((POSX(9) & \C2|Add0~2_combout\)) # (!\C2|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => \C2|Add0~2_combout\,
	datad => VCC,
	cin => \C2|Add1~13\,
	combout => \C2|Add1~14_combout\,
	cout => \C2|Add1~15\);

-- Location: LCCOMB_X38_Y13_N0
\C2|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~1_cout\ = CARRY((!\C1|HPOS\(1) & \POSX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \POSX[1]~0_combout\,
	datad => VCC,
	cout => \C2|LessThan7~1_cout\);

-- Location: LCCOMB_X38_Y13_N2
\C2|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~3_cout\ = CARRY((\C1|HPOS\(2) & ((POSX(2)) # (!\C2|LessThan7~1_cout\))) # (!\C1|HPOS\(2) & (POSX(2) & !\C2|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => POSX(2),
	datad => VCC,
	cin => \C2|LessThan7~1_cout\,
	cout => \C2|LessThan7~3_cout\);

-- Location: LCCOMB_X38_Y13_N4
\C2|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~5_cout\ = CARRY((\C2|Add1~0_combout\ & ((!\C2|LessThan7~3_cout\) # (!\C1|HPOS\(3)))) # (!\C2|Add1~0_combout\ & (!\C1|HPOS\(3) & !\C2|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C2|LessThan7~3_cout\,
	cout => \C2|LessThan7~5_cout\);

-- Location: LCCOMB_X38_Y13_N6
\C2|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~7_cout\ = CARRY((\C2|Add1~2_combout\ & (\C1|HPOS\(4) & !\C2|LessThan7~5_cout\)) # (!\C2|Add1~2_combout\ & ((\C1|HPOS\(4)) # (!\C2|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~2_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C2|LessThan7~5_cout\,
	cout => \C2|LessThan7~7_cout\);

-- Location: LCCOMB_X38_Y13_N8
\C2|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~9_cout\ = CARRY((\C1|HPOS\(5) & (\C2|Add1~4_combout\ & !\C2|LessThan7~7_cout\)) # (!\C1|HPOS\(5) & ((\C2|Add1~4_combout\) # (!\C2|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C2|Add1~4_combout\,
	datad => VCC,
	cin => \C2|LessThan7~7_cout\,
	cout => \C2|LessThan7~9_cout\);

-- Location: LCCOMB_X38_Y13_N10
\C2|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~11_cout\ = CARRY((\C1|HPOS\(6) & ((!\C2|LessThan7~9_cout\) # (!\C2|Add1~6_combout\))) # (!\C1|HPOS\(6) & (!\C2|Add1~6_combout\ & !\C2|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C2|Add1~6_combout\,
	datad => VCC,
	cin => \C2|LessThan7~9_cout\,
	cout => \C2|LessThan7~11_cout\);

-- Location: LCCOMB_X38_Y13_N12
\C2|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~13_cout\ = CARRY((\C2|Add1~8_combout\ & ((!\C2|LessThan7~11_cout\) # (!\C1|HPOS\(7)))) # (!\C2|Add1~8_combout\ & (!\C1|HPOS\(7) & !\C2|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~8_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C2|LessThan7~11_cout\,
	cout => \C2|LessThan7~13_cout\);

-- Location: LCCOMB_X38_Y13_N14
\C2|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~15_cout\ = CARRY((\C2|Add1~10_combout\ & (\C1|HPOS\(8) & !\C2|LessThan7~13_cout\)) # (!\C2|Add1~10_combout\ & ((\C1|HPOS\(8)) # (!\C2|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~10_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C2|LessThan7~13_cout\,
	cout => \C2|LessThan7~15_cout\);

-- Location: LCCOMB_X38_Y13_N16
\C2|LessThan7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~16_combout\ = (\C1|HPOS\(9) & (!\C2|LessThan7~15_cout\ & \C2|Add1~12_combout\)) # (!\C1|HPOS\(9) & ((\C2|Add1~12_combout\) # (!\C2|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => \C2|Add1~12_combout\,
	cin => \C2|LessThan7~15_cout\,
	combout => \C2|LessThan7~16_combout\);

-- Location: LCCOMB_X37_Y13_N16
\C2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~16_combout\ = \C2|Add1~15\ $ (((\C2|Add0~2_combout\ & POSX(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add0~2_combout\,
	datad => POSX(9),
	cin => \C2|Add1~15\,
	combout => \C2|Add1~16_combout\);

-- Location: LCCOMB_X36_Y13_N2
\C2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add0~0_combout\ = POSX(9) $ (((POSX(7)) # (POSX(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSX(9),
	datac => POSX(7),
	datad => POSX(8),
	combout => \C2|Add0~0_combout\);

-- Location: LCCOMB_X36_Y13_N28
\C2|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add0~1_combout\ = POSX(7) $ (POSX(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSX(7),
	datad => POSX(8),
	combout => \C2|Add0~1_combout\);

-- Location: LCCOMB_X36_Y13_N4
\C2|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~3_cout\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C2|LessThan6~3_cout\);

-- Location: LCCOMB_X36_Y13_N6
\C2|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~5_cout\ = CARRY((\C1|HPOS\(1) & (\POSX[1]~0_combout\ & !\C2|LessThan6~3_cout\)) # (!\C1|HPOS\(1) & ((\POSX[1]~0_combout\) # (!\C2|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \POSX[1]~0_combout\,
	datad => VCC,
	cin => \C2|LessThan6~3_cout\,
	cout => \C2|LessThan6~5_cout\);

-- Location: LCCOMB_X36_Y13_N8
\C2|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~7_cout\ = CARRY((POSX(2) & (\C1|HPOS\(2) & !\C2|LessThan6~5_cout\)) # (!POSX(2) & ((\C1|HPOS\(2)) # (!\C2|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C2|LessThan6~5_cout\,
	cout => \C2|LessThan6~7_cout\);

-- Location: LCCOMB_X36_Y13_N10
\C2|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~9_cout\ = CARRY((\C1|HPOS\(3) & (POSX(3) & !\C2|LessThan6~7_cout\)) # (!\C1|HPOS\(3) & ((POSX(3)) # (!\C2|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => POSX(3),
	datad => VCC,
	cin => \C2|LessThan6~7_cout\,
	cout => \C2|LessThan6~9_cout\);

-- Location: LCCOMB_X36_Y13_N12
\C2|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~11_cout\ = CARRY((POSX(4) & (\C1|HPOS\(4) & !\C2|LessThan6~9_cout\)) # (!POSX(4) & ((\C1|HPOS\(4)) # (!\C2|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C2|LessThan6~9_cout\,
	cout => \C2|LessThan6~11_cout\);

-- Location: LCCOMB_X36_Y13_N14
\C2|LessThan6~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~13_cout\ = CARRY((POSX(5) & ((!\C2|LessThan6~11_cout\) # (!\C1|HPOS\(5)))) # (!POSX(5) & (!\C1|HPOS\(5) & !\C2|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C2|LessThan6~11_cout\,
	cout => \C2|LessThan6~13_cout\);

-- Location: LCCOMB_X36_Y13_N16
\C2|LessThan6~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~15_cout\ = CARRY((\C1|HPOS\(6) & ((!\C2|LessThan6~13_cout\) # (!POSX(6)))) # (!\C1|HPOS\(6) & (!POSX(6) & !\C2|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => POSX(6),
	datad => VCC,
	cin => \C2|LessThan6~13_cout\,
	cout => \C2|LessThan6~15_cout\);

-- Location: LCCOMB_X36_Y13_N18
\C2|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~17_cout\ = CARRY((POSX(7) & (!\C1|HPOS\(7) & !\C2|LessThan6~15_cout\)) # (!POSX(7) & ((!\C2|LessThan6~15_cout\) # (!\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C2|LessThan6~15_cout\,
	cout => \C2|LessThan6~17_cout\);

-- Location: LCCOMB_X36_Y13_N20
\C2|LessThan6~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~19_cout\ = CARRY((\C1|HPOS\(8) & ((\C2|Add0~1_combout\) # (!\C2|LessThan6~17_cout\))) # (!\C1|HPOS\(8) & (\C2|Add0~1_combout\ & !\C2|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C2|Add0~1_combout\,
	datad => VCC,
	cin => \C2|LessThan6~17_cout\,
	cout => \C2|LessThan6~19_cout\);

-- Location: LCCOMB_X36_Y13_N22
\C2|LessThan6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~20_combout\ = (\C1|HPOS\(9) & ((\C2|LessThan6~19_cout\) # (!\C2|Add0~0_combout\))) # (!\C1|HPOS\(9) & (\C2|LessThan6~19_cout\ & !\C2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => \C2|Add0~0_combout\,
	cin => \C2|LessThan6~19_cout\,
	combout => \C2|LessThan6~20_combout\);

-- Location: LCCOMB_X36_Y13_N26
\C2|LessThan6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~22_combout\ = ((\C2|LessThan6~20_combout\) # ((!POSX(7) & !POSX(8)))) # (!POSX(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => POSX(7),
	datac => \C2|LessThan6~20_combout\,
	datad => POSX(8),
	combout => \C2|LessThan6~22_combout\);

-- Location: LCCOMB_X38_Y13_N20
\C2|G2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~1_combout\ = (!\C2|Add1~16_combout\ & (\C2|LessThan6~22_combout\ & ((\C2|Add1~14_combout\) # (\C2|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~14_combout\,
	datab => \C2|LessThan7~16_combout\,
	datac => \C2|Add1~16_combout\,
	datad => \C2|LessThan6~22_combout\,
	combout => \C2|G2~1_combout\);

-- Location: LCCOMB_X38_Y12_N16
\C2|G2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~2_combout\ = (\SW[0]~input_o\ & (\C2|G2~0_combout\ & (\C1|LessThan6~18_combout\ & \C2|G2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C2|G2~0_combout\,
	datac => \C1|LessThan6~18_combout\,
	datad => \C2|G2~1_combout\,
	combout => \C2|G2~2_combout\);

-- Location: LCCOMB_X38_Y12_N10
\C2|G2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~4_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~2_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & \C2|G2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|G2~3_combout\,
	datad => \C2|G2~2_combout\,
	combout => \C2|G2~4_combout\);

-- Location: LCCOMB_X37_Y15_N6
\C2|G2[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2[0]~5_combout\ = (\C1|HPOS\(9) & (((!\C2|process_0~6_combout\)))) # (!\C1|HPOS\(9) & ((\C2|process_0~3_combout\ & ((!\C2|process_0~6_combout\))) # (!\C2|process_0~3_combout\ & (\C2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C2|LessThan1~1_combout\,
	datac => \C2|process_0~3_combout\,
	datad => \C2|process_0~6_combout\,
	combout => \C2|G2[0]~5_combout\);

-- Location: LCCOMB_X38_Y12_N24
\C2|G2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2[0]~6_combout\ = (\SW[0]~input_o\) # ((\C1|process_0~12_combout\) # ((!\C2|G2[0]~5_combout\ & !\C2|R2[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2[0]~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \C2|R2[0]~12_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C2|G2[0]~6_combout\);

-- Location: FF_X38_Y12_N11
\C2|G2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~4_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(0));

-- Location: LCCOMB_X38_Y12_N20
\C2|G2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~7_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~2_combout\) # ((\C2|G2~3_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~3_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|G2~2_combout\,
	combout => \C2|G2~7_combout\);

-- Location: FF_X38_Y12_N21
\C2|G2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~7_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(1));

-- Location: LCCOMB_X38_Y12_N14
\C2|G2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~8_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~2_combout\) # ((\C2|G2~3_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~3_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|G2~2_combout\,
	combout => \C2|G2~8_combout\);

-- Location: FF_X38_Y12_N15
\C2|G2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~8_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(2));

-- Location: LCCOMB_X40_Y13_N20
\C3|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~0_combout\ = (POSY(6) & (POSY(8) & (POSY(5) & POSY(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => POSY(8),
	datac => POSY(5),
	datad => POSY(7),
	combout => \C3|Add1~0_combout\);

-- Location: LCCOMB_X40_Y13_N22
\C3|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~8_combout\ = (POSY(10)) # ((POSY(9)) # (\C3|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	datac => POSY(9),
	datad => \C3|Add1~0_combout\,
	combout => \C3|Add1~8_combout\);

-- Location: LCCOMB_X40_Y13_N28
\C3|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~5_combout\ = (POSY(5) & POSY(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSY(5),
	datad => POSY(6),
	combout => \C3|Add1~5_combout\);

-- Location: LCCOMB_X40_Y13_N26
\C3|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~6_combout\ = (POSY(9)) # ((POSY(8) & (POSY(7) & \C3|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(7),
	datac => POSY(9),
	datad => \C3|Add1~5_combout\,
	combout => \C3|Add1~6_combout\);

-- Location: LCCOMB_X40_Y13_N24
\C3|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~7_combout\ = (POSY(5) & (POSY(6) & POSY(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(5),
	datac => POSY(6),
	datad => POSY(7),
	combout => \C3|Add1~7_combout\);

-- Location: LCCOMB_X40_Y13_N0
\C3|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~0_combout\ = (POSY(2) & (POSY(3) $ (VCC))) # (!POSY(2) & (POSY(3) & VCC))
-- \C3|Add2~1\ = CARRY((POSY(2) & POSY(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => POSY(3),
	datad => VCC,
	combout => \C3|Add2~0_combout\,
	cout => \C3|Add2~1\);

-- Location: LCCOMB_X40_Y13_N2
\C3|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~2_combout\ = (POSY(4) & (!\C3|Add2~1\)) # (!POSY(4) & ((\C3|Add2~1\) # (GND)))
-- \C3|Add2~3\ = CARRY((!\C3|Add2~1\) # (!POSY(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(4),
	datad => VCC,
	cin => \C3|Add2~1\,
	combout => \C3|Add2~2_combout\,
	cout => \C3|Add2~3\);

-- Location: LCCOMB_X40_Y13_N4
\C3|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~4_combout\ = (POSY(5) & (\C3|Add2~3\ $ (GND))) # (!POSY(5) & ((GND) # (!\C3|Add2~3\)))
-- \C3|Add2~5\ = CARRY((!\C3|Add2~3\) # (!POSY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(5),
	datad => VCC,
	cin => \C3|Add2~3\,
	combout => \C3|Add2~4_combout\,
	cout => \C3|Add2~5\);

-- Location: LCCOMB_X40_Y13_N6
\C3|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~6_combout\ = (\C3|Add2~5\ & ((POSY(6) $ (POSY(5))))) # (!\C3|Add2~5\ & (POSY(6) $ ((!POSY(5)))))
-- \C3|Add2~7\ = CARRY((!\C3|Add2~5\ & (POSY(6) $ (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datab => POSY(5),
	datad => VCC,
	cin => \C3|Add2~5\,
	combout => \C3|Add2~6_combout\,
	cout => \C3|Add2~7\);

-- Location: LCCOMB_X40_Y13_N8
\C3|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~8_combout\ = (\C3|Add2~7\ & ((\C3|Add1~5_combout\ $ (POSY(7))))) # (!\C3|Add2~7\ & (\C3|Add1~5_combout\ $ (POSY(7) $ (VCC))))
-- \C3|Add2~9\ = CARRY((!\C3|Add2~7\ & (\C3|Add1~5_combout\ $ (POSY(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~5_combout\,
	datab => POSY(7),
	datad => VCC,
	cin => \C3|Add2~7\,
	combout => \C3|Add2~8_combout\,
	cout => \C3|Add2~9\);

-- Location: LCCOMB_X40_Y13_N10
\C3|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~10_combout\ = (\C3|Add2~9\ & (POSY(8) $ ((!\C3|Add1~7_combout\)))) # (!\C3|Add2~9\ & ((POSY(8) $ (\C3|Add1~7_combout\)) # (GND)))
-- \C3|Add2~11\ = CARRY((POSY(8) $ (!\C3|Add1~7_combout\)) # (!\C3|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => \C3|Add1~7_combout\,
	datad => VCC,
	cin => \C3|Add2~9\,
	combout => \C3|Add2~10_combout\,
	cout => \C3|Add2~11\);

-- Location: LCCOMB_X40_Y13_N12
\C3|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~12_combout\ = (\C3|Add2~11\ & ((POSY(9) $ (!\C3|Add1~0_combout\)))) # (!\C3|Add2~11\ & (POSY(9) $ (\C3|Add1~0_combout\ $ (GND))))
-- \C3|Add2~13\ = CARRY((!\C3|Add2~11\ & (POSY(9) $ (!\C3|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(9),
	datab => \C3|Add1~0_combout\,
	datad => VCC,
	cin => \C3|Add2~11\,
	combout => \C3|Add2~12_combout\,
	cout => \C3|Add2~13\);

-- Location: LCCOMB_X40_Y13_N14
\C3|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~14_combout\ = (\C3|Add2~13\ & (\C3|Add1~6_combout\ $ ((POSY(10))))) # (!\C3|Add2~13\ & ((\C3|Add1~6_combout\ $ (!POSY(10))) # (GND)))
-- \C3|Add2~15\ = CARRY((\C3|Add1~6_combout\ $ (POSY(10))) # (!\C3|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~6_combout\,
	datab => POSY(10),
	datad => VCC,
	cin => \C3|Add2~13\,
	combout => \C3|Add2~14_combout\,
	cout => \C3|Add2~15\);

-- Location: LCCOMB_X40_Y13_N16
\C3|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~16_combout\ = (\C3|Add1~8_combout\ & (!\C3|Add2~15\ & VCC)) # (!\C3|Add1~8_combout\ & (\C3|Add2~15\ $ (GND)))
-- \C3|Add2~17\ = CARRY((!\C3|Add1~8_combout\ & !\C3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~8_combout\,
	datad => VCC,
	cin => \C3|Add2~15\,
	combout => \C3|Add2~16_combout\,
	cout => \C3|Add2~17\);

-- Location: LCCOMB_X40_Y13_N18
\C3|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~18_combout\ = \C3|Add1~8_combout\ $ (!\C3|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~8_combout\,
	cin => \C3|Add2~17\,
	combout => \C3|Add2~18_combout\);

-- Location: LCCOMB_X40_Y13_N30
\C3|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~1_combout\ = POSY(9) $ (\C3|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSY(9),
	datad => \C3|Add1~0_combout\,
	combout => \C3|Add1~1_combout\);

-- Location: LCCOMB_X40_Y14_N28
\C3|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~2_combout\ = POSY(8) $ (((POSY(5) & (POSY(7) & POSY(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(5),
	datac => POSY(7),
	datad => POSY(6),
	combout => \C3|Add1~2_combout\);

-- Location: LCCOMB_X39_Y15_N28
\C3|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~3_combout\ = POSY(7) $ (((POSY(6) & POSY(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(7),
	datac => POSY(6),
	datad => POSY(5),
	combout => \C3|Add1~3_combout\);

-- Location: LCCOMB_X39_Y15_N26
\C3|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~4_combout\ = POSY(6) $ (POSY(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => POSY(6),
	datad => POSY(5),
	combout => \C3|Add1~4_combout\);

-- Location: LCCOMB_X39_Y15_N6
\C3|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C3|LessThan8~1_cout\);

-- Location: LCCOMB_X39_Y15_N8
\C3|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~3_cout\ = CARRY((\C1|VPOS\(1) & (\POSY[1]~0_combout\ & !\C3|LessThan8~1_cout\)) # (!\C1|VPOS\(1) & ((\POSY[1]~0_combout\) # (!\C3|LessThan8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \POSY[1]~0_combout\,
	datad => VCC,
	cin => \C3|LessThan8~1_cout\,
	cout => \C3|LessThan8~3_cout\);

-- Location: LCCOMB_X39_Y15_N10
\C3|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~5_cout\ = CARRY((\C1|VPOS\(2) & ((!\C3|LessThan8~3_cout\) # (!POSY(2)))) # (!\C1|VPOS\(2) & (!POSY(2) & !\C3|LessThan8~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => POSY(2),
	datad => VCC,
	cin => \C3|LessThan8~3_cout\,
	cout => \C3|LessThan8~5_cout\);

-- Location: LCCOMB_X39_Y15_N12
\C3|LessThan8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~7_cout\ = CARRY((POSY(3) & ((!\C3|LessThan8~5_cout\) # (!\C1|VPOS\(3)))) # (!POSY(3) & (!\C1|VPOS\(3) & !\C3|LessThan8~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C3|LessThan8~5_cout\,
	cout => \C3|LessThan8~7_cout\);

-- Location: LCCOMB_X39_Y15_N14
\C3|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C3|LessThan8~7_cout\) # (!POSY(4)))) # (!\C1|VPOS\(4) & (!POSY(4) & !\C3|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => POSY(4),
	datad => VCC,
	cin => \C3|LessThan8~7_cout\,
	cout => \C3|LessThan8~9_cout\);

-- Location: LCCOMB_X39_Y15_N16
\C3|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~11_cout\ = CARRY((POSY(5) & (!\C1|VPOS\(5) & !\C3|LessThan8~9_cout\)) # (!POSY(5) & ((!\C3|LessThan8~9_cout\) # (!\C1|VPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan8~9_cout\,
	cout => \C3|LessThan8~11_cout\);

-- Location: LCCOMB_X39_Y15_N18
\C3|LessThan8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~13_cout\ = CARRY((\C3|Add1~4_combout\ & (\C1|VPOS\(6) & !\C3|LessThan8~11_cout\)) # (!\C3|Add1~4_combout\ & ((\C1|VPOS\(6)) # (!\C3|LessThan8~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~4_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C3|LessThan8~11_cout\,
	cout => \C3|LessThan8~13_cout\);

-- Location: LCCOMB_X39_Y15_N20
\C3|LessThan8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~15_cout\ = CARRY((\C1|VPOS\(7) & (\C3|Add1~3_combout\ & !\C3|LessThan8~13_cout\)) # (!\C1|VPOS\(7) & ((\C3|Add1~3_combout\) # (!\C3|LessThan8~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C3|Add1~3_combout\,
	datad => VCC,
	cin => \C3|LessThan8~13_cout\,
	cout => \C3|LessThan8~15_cout\);

-- Location: LCCOMB_X39_Y15_N22
\C3|LessThan8~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~17_cout\ = CARRY((\C1|VPOS\(8) & ((!\C3|LessThan8~15_cout\) # (!\C3|Add1~2_combout\))) # (!\C1|VPOS\(8) & (!\C3|Add1~2_combout\ & !\C3|LessThan8~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C3|Add1~2_combout\,
	datad => VCC,
	cin => \C3|LessThan8~15_cout\,
	cout => \C3|LessThan8~17_cout\);

-- Location: LCCOMB_X39_Y15_N24
\C3|LessThan8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~18_combout\ = (\C1|VPOS\(9) & ((\C3|LessThan8~17_cout\) # (\C3|Add1~1_combout\))) # (!\C1|VPOS\(9) & (\C3|LessThan8~17_cout\ & \C3|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datad => \C3|Add1~1_combout\,
	cin => \C3|LessThan8~17_cout\,
	combout => \C3|LessThan8~18_combout\);

-- Location: LCCOMB_X39_Y15_N0
\C3|LessThan8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~20_combout\ = (POSY(10) & (!\C3|Add1~6_combout\ & \C3|LessThan8~18_combout\)) # (!POSY(10) & ((\C3|LessThan8~18_combout\) # (!\C3|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	datac => \C3|Add1~6_combout\,
	datad => \C3|LessThan8~18_combout\,
	combout => \C3|LessThan8~20_combout\);

-- Location: LCCOMB_X39_Y13_N0
\C3|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~1_cout\ = CARRY((!\C1|VPOS\(1) & \POSY[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \POSY[1]~0_combout\,
	datad => VCC,
	cout => \C3|LessThan9~1_cout\);

-- Location: LCCOMB_X39_Y13_N2
\C3|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~3_cout\ = CARRY((POSY(2) & ((\C1|VPOS\(2)) # (!\C3|LessThan9~1_cout\))) # (!POSY(2) & (\C1|VPOS\(2) & !\C3|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C3|LessThan9~1_cout\,
	cout => \C3|LessThan9~3_cout\);

-- Location: LCCOMB_X39_Y13_N4
\C3|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~5_cout\ = CARRY((\C1|VPOS\(3) & (\C3|Add2~0_combout\ & !\C3|LessThan9~3_cout\)) # (!\C1|VPOS\(3) & ((\C3|Add2~0_combout\) # (!\C3|LessThan9~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C3|Add2~0_combout\,
	datad => VCC,
	cin => \C3|LessThan9~3_cout\,
	cout => \C3|LessThan9~5_cout\);

-- Location: LCCOMB_X39_Y13_N6
\C3|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~7_cout\ = CARRY((\C3|Add2~2_combout\ & (\C1|VPOS\(4) & !\C3|LessThan9~5_cout\)) # (!\C3|Add2~2_combout\ & ((\C1|VPOS\(4)) # (!\C3|LessThan9~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~2_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C3|LessThan9~5_cout\,
	cout => \C3|LessThan9~7_cout\);

-- Location: LCCOMB_X39_Y13_N8
\C3|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~9_cout\ = CARRY((\C3|Add2~4_combout\ & ((!\C3|LessThan9~7_cout\) # (!\C1|VPOS\(5)))) # (!\C3|Add2~4_combout\ & (!\C1|VPOS\(5) & !\C3|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~4_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C3|LessThan9~7_cout\,
	cout => \C3|LessThan9~9_cout\);

-- Location: LCCOMB_X39_Y13_N10
\C3|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~11_cout\ = CARRY((\C3|Add2~6_combout\ & (\C1|VPOS\(6) & !\C3|LessThan9~9_cout\)) # (!\C3|Add2~6_combout\ & ((\C1|VPOS\(6)) # (!\C3|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~6_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C3|LessThan9~9_cout\,
	cout => \C3|LessThan9~11_cout\);

-- Location: LCCOMB_X39_Y13_N12
\C3|LessThan9~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~13_cout\ = CARRY((\C1|VPOS\(7) & (\C3|Add2~8_combout\ & !\C3|LessThan9~11_cout\)) # (!\C1|VPOS\(7) & ((\C3|Add2~8_combout\) # (!\C3|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C3|Add2~8_combout\,
	datad => VCC,
	cin => \C3|LessThan9~11_cout\,
	cout => \C3|LessThan9~13_cout\);

-- Location: LCCOMB_X39_Y13_N14
\C3|LessThan9~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C3|LessThan9~13_cout\) # (!\C3|Add2~10_combout\))) # (!\C1|VPOS\(8) & (!\C3|Add2~10_combout\ & !\C3|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C3|Add2~10_combout\,
	datad => VCC,
	cin => \C3|LessThan9~13_cout\,
	cout => \C3|LessThan9~15_cout\);

-- Location: LCCOMB_X39_Y13_N16
\C3|LessThan9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~16_combout\ = (\C1|VPOS\(9) & (!\C3|LessThan9~15_cout\ & \C3|Add2~12_combout\)) # (!\C1|VPOS\(9) & ((\C3|Add2~12_combout\) # (!\C3|LessThan9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C3|Add2~12_combout\,
	cin => \C3|LessThan9~15_cout\,
	combout => \C3|LessThan9~16_combout\);

-- Location: LCCOMB_X39_Y13_N20
\C4|g4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~0_combout\ = (\SW[0]~input_o\ & ((\C3|Add2~16_combout\) # ((\C3|Add2~14_combout\) # (\C3|LessThan9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C3|Add2~16_combout\,
	datac => \C3|Add2~14_combout\,
	datad => \C3|LessThan9~16_combout\,
	combout => \C4|g4~0_combout\);

-- Location: LCCOMB_X39_Y13_N18
\C3|g3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~1_combout\ = (\C3|g3~0_combout\ & (!\C3|Add2~18_combout\ & (\C3|LessThan8~20_combout\ & \C4|g4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|g3~0_combout\,
	datab => \C3|Add2~18_combout\,
	datac => \C3|LessThan8~20_combout\,
	datad => \C4|g4~0_combout\,
	combout => \C3|g3~1_combout\);

-- Location: LCCOMB_X39_Y13_N26
\C3|g3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~2_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~1_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & \C2|G2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datab => \C2|G2~3_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C3|g3~1_combout\,
	combout => \C3|g3~2_combout\);

-- Location: FF_X39_Y13_N27
\C3|g3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~2_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(0));

-- Location: LCCOMB_X39_Y13_N24
\C3|g3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~3_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~1_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|G2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|G2~3_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C3|g3~1_combout\,
	combout => \C3|g3~3_combout\);

-- Location: FF_X39_Y13_N25
\C3|g3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~3_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(1));

-- Location: LCCOMB_X39_Y13_N30
\C3|g3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~4_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~1_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|G2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C2|G2~3_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C3|g3~1_combout\,
	combout => \C3|g3~4_combout\);

-- Location: FF_X39_Y13_N31
\C3|g3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~4_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(2));

-- Location: LCCOMB_X38_Y13_N18
\C4|g4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~1_combout\ = (!\C3|Add2~18_combout\ & (\C2|G2~1_combout\ & (\C4|g4~0_combout\ & \C3|LessThan8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add2~18_combout\,
	datab => \C2|G2~1_combout\,
	datac => \C4|g4~0_combout\,
	datad => \C3|LessThan8~20_combout\,
	combout => \C4|g4~1_combout\);

-- Location: LCCOMB_X38_Y13_N30
\C4|g4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~2_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~1_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & \C2|G2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|G2~3_combout\,
	datad => \C4|g4~1_combout\,
	combout => \C4|g4~2_combout\);

-- Location: FF_X38_Y13_N31
\C4|g4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~2_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(0));

-- Location: LCCOMB_X38_Y13_N24
\C4|g4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~3_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~1_combout\) # ((\C2|G2~3_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~3_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C4|g4~1_combout\,
	combout => \C4|g4~3_combout\);

-- Location: FF_X38_Y13_N25
\C4|g4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~3_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(1));

-- Location: LCCOMB_X38_Y13_N26
\C4|g4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~4_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~1_combout\) # ((\C2|G2~3_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~3_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C4|g4~1_combout\,
	combout => \C4|g4~4_combout\);

-- Location: FF_X38_Y13_N27
\C4|g4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~4_combout\,
	ena => \C2|G2[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(2));

-- Location: M9K_X33_Y17_N0
\c0|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF7D77F281CC8B8CB137A1DFFFAEFFFFFF7577C7003A9F5F593CCC17EEAEFFFFFF7577AE8566AF145E46207FFEAEFFFFFF7577E75CEFD1DF5F912823EEAEFFFFFF757799B37285297A7A47BFFEAEFFFFFF7576CFAF0675C3C86CF431EEAEFFFFFF757561BC024AA27F0F7914FEAEFFFFFF7575D63BB6FDB9CD79F0EEEEAEFFFFFF75778093E7D98104E5C8917EAEFFFFFF75779AD4F865C35A2A89086EAEFFFFFF7577832BA849DF7D6E25497EAEFFFFFF357A99C84BE700D3CABD0D4EAE8FFFF87573190B0FE1635FE483C2FEAE07FF903577602617F52CDFE2DCDCFEAC03FEFEF5741D7D15F6E68FB6F9E5FEAFFE7F9C057F3A5C4BF5C3DED3B1E1BEA023B",
	mem_init2 => X"F9C0DF734DAEF34A6FC8DB4E82EB03FFB7003F4DE55FE5DFF92880AF50E642DE779FE7C78880BE43C7E43B902FE5B92FF2900B6E02DA7FE5EF3CE7EB4ED02D5EF633FFD524C117BD9FE99EED629FC83FF42CA07914F74FFD7FD217AEFA616C3EFF270F63FBBFFFF11FED507A033A24B7FC2FFFC8937B4F835BF926B02BFF341FFC7EFFC681279F9233F9E06A57FF7A77EC6FFFF66B0BFFFEBC7EDCD69FEDF615D8F5FFF8E4C67FC436FEE9022FFFB317DBBBFFB635C8FFC8227F69E9BFFFD9D9BD1FFFEA3167FFFADB8FA6B55FFFEABD399FFFA8803BFFA16ADF9F28D7FFDD85A5DFFFEDFE83FFF8743FD3F41FCFFBADABEE7FE25E87FFF868DBED4C87FE7509",
	mem_init1 => X"FC7BAFE0FD2FB72BF43BFC3B5BF1D7033818E63972BFFF2445F3FCF64C470C9CBC4C38E4C67FFECF9D0FF686D7185374D711FFF4C90FFE0E690BD3E529FECCCB7BECF07E6C5FFF6B237FFE577E8F375EBD3B2040167FF632137FFA480F9C4DBCFF701F8C7C0FFA8AA7DFFDBE33F00E7FFCDF20264A1FFE0DF37FF1044441397FFFF5D0BC0061F73B0E778D527113A5FFFF7F505374257FCA6EFEB776EA8EFFFFFF7CFB752A735FFC83FACD778EFF7FFFFFFFCD1043B9E7F967EF9A2238E7FFFFFFF3E538E19F73FD97FE788210B7FFFFFFE7FC7CAA467DFFFFFE6155F65FFFFFFFFFFFF7FFF35DFFFF9AC8EFFBFFFFEFFFFFFFFFFEE9BBFFFFFC925FFFFFFFCF",
	mem_init0 => X"FFFFFFFFFEF496FFFF7CA73FFFFFFFFFFFFFFFFFFF79B7FFFEB6977FFFFFFFFFFFFFFFFFFE609B6EFACB067FFFFFFFFFFFFFFFFFFD5236F7EBAC42FFFFFFFFFFFFFFFFFFFE389EBDBC39947FFFFFFFFFFFFFFFFFFF28455FBFE6B7FFFFFFFFFFFFFFFFFFFF6359CB819897FFFFFFFFFFFFFFFFFFFFF220146E440FFFFFFFFFFFFFFFFFFFFFFC989FF9083FFFFFFFFFFFFFFFFFFFFFFEB706E0EDFFFFFFFFFFFFFFFFFFFFFFFFED4181BFFFFFFFFFFFFFFFFFFFFFFFFFFB004EBFFFFFFFFFFFFFFFFFFFFFFFFFFF7DBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFF7FDF77EFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFFFFFF",
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
	port_a_first_bit_number => 0,
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\c0|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFF1FFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F00EF7FFFFFFFFFFFFFFFFFFFFFFFFE50182F5FFFFFFFFFFFFFFFFFFFFFFFFB423E0E5FFFFFFFFFFFFFFFFFFFFFFFC9C9FF9383FFFFFFFFFFFFFFFFFFFFFF2321524608FFFFFFFFFFFFFFFFFFFFFEF19CBC39057FFFFFFFFFFFFFFFFFFFF28875E7AE114FFFFFFFFFFFFFFFFFFFE209DF9BC39857FFFFFFFFFFFFFFFFFFDD077F7EBBC4ABFFFFFFFFFFFFFFFFFFC70DB6FFAD2067FFFFFFFFFFFFFFFFFFFC1BF7E7EB59FFFFFFFFFFFFFFFFFFFFEB486FFFF59AF7FFFFFFFFF",
	mem_init2 => X"FFFFFFFFFA69BBF87FDB8F7FFFFFFFFFFFFFEFFFE591AA43C3FD8BF77FFFFFFFFFFFF27FA84498780C4B1277FE5FFFFFFFFFEF3FF18512FC3E0E01BAFCFFFFFFFFFD6F9462014B6944F8C46E18F27FFFFFFCE17340C130B6C0E90003CFAF1FFEFFFF607202240801C0902E81FE86FEFEFFFDC8BC00EB27F413E4D1D03D1BA4FFFDBDA032038EB99FFEB95A586C0439FFFE708D8C51C21C6BE93487D0B3B10EFFFF7A30E027C7CDFDFCC223F3A308CFFFFB6CF871BE001355DBE3303A9C1F1FD6DE17FFAAAA81E9852F154C7181F6CCC33C4C38C91E67B0678E5D5274539C72343808EAB26E18BC4B7B2F19785D67189CD47FBFEE9D403CD8DEE50E013DF59F2B",
	mem_init1 => X"C1EEFF92F061345BD98718FF71FE674EF1DFFF429750B46CCDF78FB120EFFB89F9DFFFE824833431DCD607A82CFFFD9FBDDFFFE21001FC26E1F600DC3AF3FABD9BBBFF985405BF3C3D874A2418FFD9F9F8B5F56850857DFE82864005283FB21DEC6FFE684D30D352F1BBAE72579F7C15FE7EFBF8BE0A578FB2DD012DBF5FF667FC6EFAE1D0777E8003FF27E64EBFF41FFF265AF00848D81448FBDA576F2D64B7712F84E29FC9C000842B3FE34F096CE4FE3BCBB05FE0900178509FF841F3893EF2141BA0DFFA87A80AEA0FFAC490085EF38FE1B65DFB69B1FA8CEFEB9B0BF96FF340300C31F04B8FF5D0FF683B0602CFFD8416D2CF7BA4782E2F5EBAE76E10AF",
	mem_init0 => X"F9C050DDF37CB9A7CDBF3F372F8E039FE3FF72680C7FB3341E5DFDB1726ADFFFFB0359589CBFFB61765FF87902FAC09FEF171A3BDC3FB5A421AFFF86C7CAE0FFFFF3D84381FFFF0450DFFC38060ACEFFFFF755C0DA9FF5D6AFE9FAEB4A2AEFFFFFF714D41C5F22230C55FEB60DAAEFFFFFF75653FEFE067B86E17C6BE3FAEFFFFFF7575A5DFFE47176277E8EE7FA6FFFFFF757716DFE24CEDA2DFFB85FEA6FFFFFF7577DFBBFE9F95E06BFF05FEAEFFFFFF7577DFFE7665C2BA607FFFFEAEFFFFFF7577EFFD904F5D510B7FFFEEAEFFFFFF75F7FF8772DE26FB57C0FFFEAEFFFFFF75F3FE873215CDE95D487FFFAEFFFFFF7577FE63C3ADAC74C7E47FF7AEFFF",
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
	port_a_first_bit_number => 0,
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y12_N2
\C1|b[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b[0]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \C1|b[0]~0_combout\);

-- Location: FF_X37_Y12_N3
\C1|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|b[0]~0_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~1_combout\,
	sclr => \C1|R~19_combout\,
	sload => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|b\(0));

-- Location: M9K_X33_Y16_N0
\c0|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFB8CFF3869D9B3099BD614FF20DFFFFFFB0CFF4B38AF8B2FF71459FF30DFFFFFFB0CFDE8927B2E0AEC41073F30DFFFFFFB0CFAD8B5754BC8AACD337F30DFFFFFFB0CFF3DABB9ACB10D953CBF30DFFFFFFB0CF01F015DCE684A00E40F30DFFFFFFB0CEE01B8F35048CF5DF87730DFFFFFFB0CFA82C6A3F1E405236B1F30DFFFFFFB0CEEC27A1357D5E85E535F30DFFFFFFB0CE8D83F5DC5361BA41E1F30DFFFFFFB0CEB0237D6B28D2FC5445330DFFFFFFB0CB9E135FE6FFBFCA40EDB30DFFFFFFB0CFB65F27CF5E2BF4EB67F30DFFFFD030CE37022FEBF8AFC64864730C03FFDFF0CD2F2755EEAFCFBBEC99330FFBFF9C00CB2369F4BDFB4E2713F1F30021F",
	mem_init2 => X"FFFF847E7C255BEED1BF0AD6FC31FFDFFF400462958469D3CF9732EBC03800FFFF001CE5752E69B0871E4721F73A003FFE8800C5B769E3E7F78626AC9F00317FFE8000F28F1F6DFADFF4F6B44F60012FE41B00FDE4F79FFD7FF9D494FB009037EF100FBE4F4F4FE6FFF35676FC3A48BFFD00FFD78C5D5FC11FFA4B59D3FF009FDC12FFC83F95BFE3CFFB71EF13FF4C33FC22FFFFFF2B7FE72BFDBC5F2FFF441FFA09FFE9759A7FFB2FFE53B687FF805BF863FFE799CBFFE007FF6B9A3FFFC61FFCC7FFFDD1EFFFEAE2BFF793B7FFF33FFC07FFFC7FBFFF9F6FDFFFF7BFFFC0272002FFF39E9BFF72B71FF978B7FF400CE800BFDD7B2FFF26A07FE2F83BFD020B",
	mem_init1 => X"F8003FE694BFFF6A67FFE52923FC0823F9060F8787CFFFE223FFFC7921D0701F9C03800923BFFF59B6FFFDC1E001A179F700601925DFFF43DEFFF5E09C0704EFFDE818C187FFFEAE947FFF83839817BFFE7A1A8057BFFF6BF47FFBE800C04F7FFFB08008367FFF980D7FF95E10010DFFFFEF202279A7FF25A9FFEF6E440537FFFFFBC83CB9E7FFD8C9FFE4BF7013DFFFFFFDD25F6D61FFFBFFFF849EFACFBFFFFFFF7B6723C05FF99FFA01E7C6FEFFFFFFFFDDBDC04C27FF5FEC33A3BDFBFFFFFFFFF37FA24301FE7FB0C344FECFFFFFFFFFFEFFEBC145FFFFA281D7FF7FFFFFFFFFFFFFFFD0C5FFFF8309FFFFFFFFFFFFFFFFFFFDE403FFFFC123BFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF049FFFF8307FFFFFFFFFFFFFFFFFFFFF829BFFC8516FFFFFFFFFFFFFFFFFFFFE8285FF20417FFFFFFFFFFFFFFFFFFFED00A13C810037FFFFFFFFFFFFFFFFFFFB80085A04095FFFFFFFFFFFFFFFFFFFFC860818102B3FFFFFFFFFFFFFFFFFFFFFB50280608CFFFFFFFFFFFFFFFFFFFFFFCA20850057FFFFFFFFFFFFFFFFFFFFFFFB801800DFFFFFFFFFFFFFFFFFFFFFFFFEF2004F7FFFFFFFFFFFFFFFFFFFFFFFFFB4811DFFFFFFFFFFFFFFFFFFFFFFFFFFE824F7FFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF",
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
	port_a_first_bit_number => 1,
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
	ena0 => \C1|ALT_INV_address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y11_N0
\c0|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24F7FFFFFFFFFFFFFFFFFFFFFFFFFFB0812DFFFFFFFFFFFFFFFFFFFFFFFFFEC0004F7FFFFFFFFFFFFFFFFFFFFFFFFBC01803DFFFFFFFFFFFFFFFFFFFFFFFCB0081821FFFFFFFFFFFFFFFFFFFFFFF7102804004FFFFFFFFFFFFFFFFFFFFFC82080010413FFFFFFFFFFFFFFFFFFFFA00281A04084FFFFFFFFFFFFFFFFFFFE520A13C8100B7FFFFFFFFFFFFFFFFFFFF8285FF21417FFFFFFFFFFFFFFFFFFFF40213FFC841EFFFFFFFFFFFFFFFFFFFFB059FFFF820FFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFDE403FFFFC22FBFFFFFFFFFFFFFFFFFFF906D7FFF1E0BFFFFFFFFFFFFFFFEFFE840360000340277FF7FFFFFFFFFF37FB101E1FDBF8120BCFECFFFFFFFFFDFBDE0063869043E202FBDFBFFFFFFFF6163483333B3C0684F13C7AEFFFFFFFDE27E21F00000008005C5EEC7BFFFFFFBC83C878A0307F0C053413C13DFFFFFEDA0220E0B821FFE61FAD8440437FFFFB0800811C5AC180C31A7FC10010DFFFE7A0A004CC144000312833300504F7FFD6818C09C046C20600E107F43181FBFF6006013F8117C34F0EC043F6C0704EF9C03801BFD6471E45BFE00BF38018039F9060BAFFE007DECDB7E09FFD5F0601FD0043FDE3F407D7B6EB4081C69FC000B",
	mem_init1 => X"C000BFFD90A075FE3DD418B9B9FD000F3002FFBE335075FF7FB60F9C5EFF4008FC47FFA7E48075D4E3D7878FD7FFE03FFC47FFBDC0003DFFE5F600C7C07FE33FF863FEE798107DEEFED38C11E77FC63FDA49FE0BD0011C2FFFDF2004F8BF805BFC22FF2F05102C3CEF408663B53FCC1FDC12FA939E06FFFFFDE201EEE9DF4823FD00FA9F4023817FFC0143E430BF009FEF105F0E484167FFFF061B5710DC08BFE1180D1C97E8A000002D3BF270B890EFF6800B3CBFE0500178510FF970F0002FFE0C1B7CDFF33120018E8FFEFED0107FFF001307DFF41BEE02C82FCB22C4007FFF0007D5AAF4D090090B3F70F0E800FFFBBF833624F0C92FD4938FE278C1FCDF",
	mem_init0 => X"F9C00307E9BE87966FC37FBF5CC0039FFDFF003F4D1FC457E0A3FDB98EA0DFBFFF0301719B7FF56F77AFF88886C0C0BFFFFB046CAAEF9B883ED9F97BFBB0DFFFFFFB863CA3AFFD5FE29FFA066870DFFFFFFB0D79FD7FD4C66369FA9883B0DFFFFFFB0C2F3D7F079239F1FDB6F230DFFFFFFB0CBFEC7F3006708CFDEF5B20DFFFFFFB0CE657FED5702EABFE4357205FFFFFFB0CFE97FF108DA9087FB77F305FFFFFFB0CFEF7FF4CEE5632BFE8BF30DFFFFFFB0CFFFFFE41C25A82FFFFFF30DFFFFFFB0CFFFFE1685A1A2687FFFF30DFFFFFFB04FFF43D57401AEA6A3FFF30DFFFFFFB04FFFD9CAB17BCC53337FF20DFFFFFFB0CFFEED7678E79F6AB7FFFA0DFFF",
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
	port_a_first_bit_number => 1,
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
	ena0 => \C1|address\(13),
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X37_Y12_N12
\C1|b[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b[1]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\))) # (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	combout => \C1|b[1]~1_combout\);

-- Location: FF_X37_Y12_N13
\C1|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|b[1]~1_combout\,
	asdata => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~2_combout\,
	sclr => \C1|R~19_combout\,
	sload => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|b\(1));

-- Location: LCCOMB_X39_Y11_N26
\C2|B2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~3_combout\ = (\SW[0]~input_o\) # ((\C2|process_0~6_combout\) # (\C1|process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C2|process_0~6_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C2|B2[1]~3_combout\);

-- Location: LCCOMB_X40_Y15_N16
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ = \C1|VPOS\(6) $ (VCC)
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ = CARRY(\C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\);

-- Location: LCCOMB_X40_Y15_N18
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ = (\C1|VPOS\(7) & (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\)) # (!\C1|VPOS\(7) & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\) # 
-- (GND)))
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ = CARRY((!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\);

-- Location: LCCOMB_X40_Y15_N20
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ = (\C1|VPOS\(8) & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ $ (GND))) # (!\C1|VPOS\(8) & 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ & VCC))
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ = CARRY((\C1|VPOS\(8) & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\);

-- Location: LCCOMB_X40_Y15_N22
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ = (\C1|VPOS\(9) & (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\)) # (!\C1|VPOS\(9) & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\) # 
-- (GND)))
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = CARRY((!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: LCCOMB_X40_Y15_N24
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ = \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\);

-- Location: LCCOMB_X40_Y15_N12
\C2|Div1|auto_generated|divider|divider|StageOut[54]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C1|VPOS\(9),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X41_Y15_N28
\C2|Div1|auto_generated|divider|divider|StageOut[54]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\);

-- Location: LCCOMB_X41_Y15_N22
\C2|Div1|auto_generated|divider|divider|StageOut[53]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\);

-- Location: LCCOMB_X40_Y15_N6
\C2|Div1|auto_generated|divider|divider|StageOut[53]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C1|VPOS\(8),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\);

-- Location: LCCOMB_X40_Y15_N0
\C2|Div1|auto_generated|divider|divider|StageOut[52]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C1|VPOS\(7),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\);

-- Location: LCCOMB_X41_Y15_N20
\C2|Div1|auto_generated|divider|divider|StageOut[52]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\);

-- Location: LCCOMB_X41_Y15_N26
\C2|Div1|auto_generated|divider|divider|StageOut[51]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\);

-- Location: LCCOMB_X40_Y15_N30
\C2|Div1|auto_generated|divider|divider|StageOut[51]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C1|VPOS\(6),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\);

-- Location: LCCOMB_X41_Y15_N30
\C2|Div1|auto_generated|divider|divider|StageOut[50]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\ = (\C1|VPOS\(5) & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\);

-- Location: LCCOMB_X41_Y15_N4
\C2|Div1|auto_generated|divider|divider|StageOut[50]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\ = (\C1|VPOS\(5) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\);

-- Location: LCCOMB_X41_Y15_N8
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ = (((\C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\)))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datad => VCC,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\);

-- Location: LCCOMB_X41_Y15_N10
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\);

-- Location: LCCOMB_X41_Y15_N12
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & (((\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & ((((\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\ = CARRY((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\);

-- Location: LCCOMB_X41_Y15_N14
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\);

-- Location: LCCOMB_X41_Y15_N16
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\) # ((\C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\);

-- Location: LCCOMB_X41_Y15_N18
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ = !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\);

-- Location: LCCOMB_X40_Y15_N8
\C2|Div1|auto_generated|divider|divider|StageOut[61]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C1|VPOS\(7)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	datad => \C1|VPOS\(7),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\);

-- Location: LCCOMB_X40_Y11_N0
\C2|Div1|auto_generated|divider|divider|StageOut[61]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\);

-- Location: LCCOMB_X40_Y11_N6
\C2|Div1|auto_generated|divider|divider|StageOut[60]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\);

-- Location: LCCOMB_X40_Y15_N26
\C2|Div1|auto_generated|divider|divider|StageOut[60]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C1|VPOS\(6)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C1|VPOS\(6),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\);

-- Location: LCCOMB_X40_Y11_N10
\C2|Div1|auto_generated|divider|divider|StageOut[59]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X40_Y11_N8
\C2|Div1|auto_generated|divider|divider|StageOut[59]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C1|VPOS\(5),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\);

-- Location: LCCOMB_X37_Y11_N28
\C2|Div1|auto_generated|divider|divider|StageOut[58]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C1|VPOS\(4),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\);

-- Location: LCCOMB_X37_Y11_N8
\C2|Div1|auto_generated|divider|divider|StageOut[49]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C1|VPOS\(4),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\);

-- Location: LCCOMB_X37_Y11_N18
\C2|Div1|auto_generated|divider|divider|StageOut[49]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datad => \C1|VPOS\(4),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X37_Y11_N24
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\);

-- Location: LCCOMB_X37_Y11_N6
\C2|Div1|auto_generated|divider|divider|StageOut[58]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\);

-- Location: LCCOMB_X40_Y11_N18
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\ = (((\C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\)))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\,
	datad => VCC,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\);

-- Location: LCCOMB_X40_Y11_N20
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\);

-- Location: LCCOMB_X40_Y11_N22
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ & (((\C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ & ((((\C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\ = CARRY((!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\);

-- Location: LCCOMB_X40_Y11_N24
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\);

-- Location: LCCOMB_X40_Y15_N4
\C2|Div1|auto_generated|divider|divider|StageOut[62]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C1|VPOS\(8))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\);

-- Location: LCCOMB_X41_Y15_N24
\C2|Div1|auto_generated|divider|divider|StageOut[62]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\);

-- Location: LCCOMB_X40_Y11_N26
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9_cout\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\) # ((\C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9_cout\);

-- Location: LCCOMB_X40_Y11_N28
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ = !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~9_cout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\);

-- Location: LCCOMB_X40_Y11_N16
\C2|Div1|auto_generated|divider|divider|StageOut[70]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\) # 
-- ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & (((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\);

-- Location: LCCOMB_X40_Y11_N4
\C2|Div1|auto_generated|divider|divider|StageOut[69]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\) # 
-- ((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\);

-- Location: LCCOMB_X40_Y11_N14
\C2|Div1|auto_generated|divider|divider|StageOut[69]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\);

-- Location: LCCOMB_X40_Y11_N2
\C2|Div1|auto_generated|divider|divider|StageOut[68]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C1|VPOS\(5)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	datad => \C1|VPOS\(5),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\);

-- Location: LCCOMB_X40_Y11_N12
\C2|Div1|auto_generated|divider|divider|StageOut[68]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\);

-- Location: LCCOMB_X40_Y11_N30
\C2|Div1|auto_generated|divider|divider|StageOut[67]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\);

-- Location: LCCOMB_X38_Y11_N20
\C2|Div1|auto_generated|divider|divider|StageOut[67]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C1|VPOS\(4)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datad => \C1|VPOS\(4),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\);

-- Location: LCCOMB_X38_Y11_N22
\C2|Div1|auto_generated|divider|divider|StageOut[48]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X38_Y11_N28
\C2|Div1|auto_generated|divider|divider|StageOut[48]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\);

-- Location: LCCOMB_X38_Y11_N8
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X38_Y11_N10
\C2|Div1|auto_generated|divider|divider|StageOut[57]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\);

-- Location: LCCOMB_X38_Y11_N24
\C2|Div1|auto_generated|divider|divider|StageOut[57]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\);

-- Location: LCCOMB_X38_Y11_N30
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\);

-- Location: LCCOMB_X38_Y11_N16
\C2|Div1|auto_generated|divider|divider|StageOut[66]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\);

-- Location: LCCOMB_X38_Y11_N18
\C2|Div1|auto_generated|divider|divider|StageOut[66]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C1|VPOS\(3)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \C1|VPOS\(3),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\);

-- Location: LCCOMB_X38_Y11_N14
\C2|Div1|auto_generated|divider|divider|StageOut[56]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C1|VPOS\(2),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\);

-- Location: LCCOMB_X38_Y11_N12
\C2|Div1|auto_generated|divider|divider|StageOut[56]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C1|VPOS\(2),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\);

-- Location: LCCOMB_X38_Y11_N4
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X38_Y11_N6
\C2|Div1|auto_generated|divider|divider|StageOut[65]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C1|VPOS\(2)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & 
-- (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datad => \C1|VPOS\(2),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\);

-- Location: LCCOMB_X39_Y11_N6
\C2|B2[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~5_cout\ = CARRY((!\C2|R2[0]~13_combout\ & !\C2|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[0]~13_combout\,
	datab => \C2|process_0~6_combout\,
	datad => VCC,
	cout => \C2|B2[0]~5_cout\);

-- Location: LCCOMB_X39_Y11_N8
\C2|B2[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~7_cout\ = CARRY((\C2|B2[1]~3_combout\ & ((!\C2|B2[0]~5_cout\) # (!\C1|VPOS\(0)))) # (!\C2|B2[1]~3_combout\ & (!\C1|VPOS\(0) & !\C2|B2[0]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|B2[1]~3_combout\,
	datab => \C1|VPOS\(0),
	datad => VCC,
	cin => \C2|B2[0]~5_cout\,
	cout => \C2|B2[0]~7_cout\);

-- Location: LCCOMB_X39_Y11_N10
\C2|B2[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~9_cout\ = CARRY((\C2|B2[1]~3_combout\ & (\C1|VPOS\(1) & !\C2|B2[0]~7_cout\)) # (!\C2|B2[1]~3_combout\ & ((\C1|VPOS\(1)) # (!\C2|B2[0]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|B2[1]~3_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C2|B2[0]~7_cout\,
	cout => \C2|B2[0]~9_cout\);

-- Location: LCCOMB_X39_Y11_N12
\C2|B2[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~11_cout\ = CARRY((\C2|B2[1]~3_combout\ & ((!\C2|B2[0]~9_cout\) # (!\C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\))) # (!\C2|B2[1]~3_combout\ & (!\C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ & 
-- !\C2|B2[0]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|B2[1]~3_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\,
	datad => VCC,
	cin => \C2|B2[0]~9_cout\,
	cout => \C2|B2[0]~11_cout\);

-- Location: LCCOMB_X39_Y11_N14
\C2|B2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~13_cout\ = CARRY((!\C2|B2[0]~11_cout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\,
	datad => VCC,
	cin => \C2|B2[0]~11_cout\,
	cout => \C2|B2[0]~13_cout\);

-- Location: LCCOMB_X39_Y11_N16
\C2|B2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~15_cout\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\)) # (!\C2|B2[0]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\,
	datad => VCC,
	cin => \C2|B2[0]~13_cout\,
	cout => \C2|B2[0]~15_cout\);

-- Location: LCCOMB_X39_Y11_N18
\C2|B2[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~17_cout\ = CARRY((!\C2|B2[0]~15_cout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\,
	datad => VCC,
	cin => \C2|B2[0]~15_cout\,
	cout => \C2|B2[0]~17_cout\);

-- Location: LCCOMB_X39_Y11_N20
\C2|B2[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~19_cout\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\)) # (!\C2|B2[0]~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\,
	datad => VCC,
	cin => \C2|B2[0]~17_cout\,
	cout => \C2|B2[0]~19_cout\);

-- Location: LCCOMB_X39_Y11_N22
\C2|B2[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~21_cout\ = CARRY((\C2|B2[1]~3_combout\ & (\C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ & !\C2|B2[0]~19_cout\)) # (!\C2|B2[1]~3_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\) # 
-- (!\C2|B2[0]~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|B2[1]~3_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\,
	datad => VCC,
	cin => \C2|B2[0]~19_cout\,
	cout => \C2|B2[0]~21_cout\);

-- Location: LCCOMB_X39_Y11_N24
\C2|B2[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~22_combout\ = \C2|B2[0]~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C2|B2[0]~21_cout\,
	combout => \C2|B2[0]~22_combout\);

-- Location: LCCOMB_X37_Y15_N26
\C2|B2[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~24_combout\ = (!\C1|HPOS\(9) & ((\C2|LessThan0~0_combout\) # (!\C2|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|LessThan0~0_combout\,
	datac => \C2|process_0~3_combout\,
	datad => \C1|HPOS\(9),
	combout => \C2|B2[1]~24_combout\);

-- Location: LCCOMB_X37_Y15_N28
\C2|B2[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~25_combout\ = (\C2|R2[0]~13_combout\) # ((!\C2|B2[1]~24_combout\ & ((\C2|process_0~6_combout\) # (!\C2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~6_combout\,
	datab => \C2|LessThan1~1_combout\,
	datac => \C2|B2[1]~24_combout\,
	datad => \C2|R2[0]~13_combout\,
	combout => \C2|B2[1]~25_combout\);

-- Location: FF_X39_Y11_N25
\C2|B2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|B2[0]~22_combout\,
	ena => \C2|B2[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|B2\(0));

-- Location: LCCOMB_X39_Y11_N30
\C2|B2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2~26_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & (!\C2|process_0~6_combout\ & (!\SW[0]~input_o\ & !\C1|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datab => \C2|process_0~6_combout\,
	datac => \SW[0]~input_o\,
	datad => \C1|process_0~12_combout\,
	combout => \C2|B2~26_combout\);

-- Location: FF_X39_Y11_N31
\C2|B2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|B2~26_combout\,
	ena => \C2|B2[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|B2\(1));

-- Location: LCCOMB_X23_Y1_N8
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

-- Location: FF_X23_Y1_N9
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

-- Location: LCCOMB_X37_Y11_N30
\C2|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|VSYNC~feeder_combout\ = \C1|process_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~7_combout\,
	combout => \C2|VSYNC~feeder_combout\);

-- Location: FF_X37_Y11_N31
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

-- Location: LCCOMB_X38_Y2_N24
\C3|HSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|HSYNC~feeder_combout\ = \C1|process_0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~5_combout\,
	combout => \C3|HSYNC~feeder_combout\);

-- Location: FF_X38_Y2_N25
\C3|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|HSYNC~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|HSYNC~q\);

-- Location: LCCOMB_X37_Y11_N16
\C3|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|VSYNC~feeder_combout\ = \C1|process_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~7_combout\,
	combout => \C3|VSYNC~feeder_combout\);

-- Location: FF_X37_Y11_N17
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

-- Location: LCCOMB_X30_Y12_N8
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

-- Location: FF_X30_Y12_N9
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

-- Location: LCCOMB_X37_Y11_N2
\C4|VSYNC~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|VSYNC~feeder_combout\ = \C1|process_0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|process_0~7_combout\,
	combout => \C4|VSYNC~feeder_combout\);

-- Location: FF_X37_Y11_N3
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


