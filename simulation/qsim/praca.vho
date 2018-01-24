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

-- DATE "01/24/2018 01:31:37"

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
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	vga_r : BUFFER std_logic_vector(2 DOWNTO 0);
	vga_g : BUFFER std_logic_vector(2 DOWNTO 0);
	vga2_r : BUFFER std_logic_vector(2 DOWNTO 0);
	vga2_g : BUFFER std_logic_vector(2 DOWNTO 0);
	vga3_r : BUFFER std_logic_vector(2 DOWNTO 0);
	vga3_g : BUFFER std_logic_vector(2 DOWNTO 0);
	vga4_R : BUFFER std_logic_vector(2 DOWNTO 0);
	vga4_g : BUFFER std_logic_vector(2 DOWNTO 0);
	vga_b : BUFFER std_logic_vector(1 DOWNTO 0);
	vga2_b : BUFFER std_logic_vector(1 DOWNTO 0);
	vga3_b : BUFFER std_logic_vector(1 DOWNTO 0);
	vga4_b : BUFFER std_logic_vector(1 DOWNTO 0);
	address2 : BUFFER std_logic_vector(13 DOWNTO 0);
	q2 : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA2_HS : BUFFER std_logic;
	VGA2_VS : BUFFER std_logic;
	VGA3_HS : BUFFER std_logic;
	VGA3_VS : BUFFER std_logic;
	VGA4_HS : BUFFER std_logic;
	VGA4_VS : BUFFER std_logic;
	HPOS1 : BUFFER std_logic_vector(9 DOWNTO 0);
	VPOS1 : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END PRACA;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- address2[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[3]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[7]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[10]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[11]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[12]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address2[13]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA2_HS	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA2_VS	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA3_HS	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA3_VS	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA4_HS	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA4_VS	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HPOS1[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPOS1[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VPOS1[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_address2 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_q2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA2_HS : std_logic;
SIGNAL ww_VGA2_VS : std_logic;
SIGNAL ww_VGA3_HS : std_logic;
SIGNAL ww_VGA3_VS : std_logic;
SIGNAL ww_VGA4_HS : std_logic;
SIGNAL ww_VGA4_VS : std_logic;
SIGNAL ww_HPOS1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VPOS1 : std_logic_vector(9 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Equal0~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
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
SIGNAL \C1|HPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23\ : std_logic;
SIGNAL \C1|HPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~25\ : std_logic;
SIGNAL \C1|HPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27\ : std_logic;
SIGNAL \C1|HPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
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
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~10_combout\ : std_logic;
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
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|LessThan15~1_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11\ : std_logic;
SIGNAL \C1|VPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~13\ : std_logic;
SIGNAL \C1|VPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15\ : std_logic;
SIGNAL \C1|VPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17\ : std_logic;
SIGNAL \C1|VPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|LessThan11~1_combout\ : std_logic;
SIGNAL \C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C1|ypix[0]~feeder_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|rom_addr1[5]~10\ : std_logic;
SIGNAL \C1|rom_addr1[6]~12\ : std_logic;
SIGNAL \C1|rom_addr1[7]~14\ : std_logic;
SIGNAL \C1|rom_addr1[8]~16\ : std_logic;
SIGNAL \C1|rom_addr1[9]~18\ : std_logic;
SIGNAL \C1|rom_addr1[10]~20\ : std_logic;
SIGNAL \C1|rom_addr1[11]~22\ : std_logic;
SIGNAL \C1|rom_addr1[12]~24\ : std_logic;
SIGNAL \C1|rom_addr1[13]~25_combout\ : std_logic;
SIGNAL \C1|rom_addr1[12]~23_combout\ : std_logic;
SIGNAL \C1|rom_addr1[11]~21_combout\ : std_logic;
SIGNAL \C1|rom_addr1[10]~19_combout\ : std_logic;
SIGNAL \C1|rom_addr1[9]~17_combout\ : std_logic;
SIGNAL \C1|xpix[9]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr1[8]~15_combout\ : std_logic;
SIGNAL \C1|xpix[7]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr1[7]~13_combout\ : std_logic;
SIGNAL \C1|rom_addr1[6]~11_combout\ : std_logic;
SIGNAL \C1|xpix[5]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr1[5]~9_combout\ : std_logic;
SIGNAL \C1|xpix[4]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr1[4]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[4]~11\ : std_logic;
SIGNAL \C1|rom_addr2[5]~13\ : std_logic;
SIGNAL \C1|rom_addr2[6]~15\ : std_logic;
SIGNAL \C1|rom_addr2[7]~17\ : std_logic;
SIGNAL \C1|rom_addr2[8]~19\ : std_logic;
SIGNAL \C1|rom_addr2[9]~21\ : std_logic;
SIGNAL \C1|rom_addr2[10]~23\ : std_logic;
SIGNAL \C1|rom_addr2[11]~25\ : std_logic;
SIGNAL \C1|rom_addr2[12]~27\ : std_logic;
SIGNAL \C1|rom_addr2[13]~28_combout\ : std_logic;
SIGNAL \C1|address[13]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[0]~feeder_combout\ : std_logic;
SIGNAL \C1|address[0]~feeder_combout\ : std_logic;
SIGNAL \C1|xpix[1]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[1]~feeder_combout\ : std_logic;
SIGNAL \C1|address[1]~feeder_combout\ : std_logic;
SIGNAL \C1|xpix[2]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[2]~feeder_combout\ : std_logic;
SIGNAL \C1|address[2]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[3]~feeder_combout\ : std_logic;
SIGNAL \C1|address[3]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[4]~10_combout\ : std_logic;
SIGNAL \C1|rom_addr2[5]~12_combout\ : std_logic;
SIGNAL \C1|address[5]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[6]~14_combout\ : std_logic;
SIGNAL \C1|address[6]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[7]~16_combout\ : std_logic;
SIGNAL \C1|address[7]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[8]~18_combout\ : std_logic;
SIGNAL \C1|address[8]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[9]~20_combout\ : std_logic;
SIGNAL \C1|rom_addr2[10]~22_combout\ : std_logic;
SIGNAL \C1|address[10]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[11]~24_combout\ : std_logic;
SIGNAL \C1|address[11]~feeder_combout\ : std_logic;
SIGNAL \C1|rom_addr2[12]~26_combout\ : std_logic;
SIGNAL \C1|address[12]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C2|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \C1|g[0]~0_combout\ : std_logic;
SIGNAL \C1|g[0]~1_combout\ : std_logic;
SIGNAL \licznik[0]~26_combout\ : std_logic;
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
SIGNAL \licznik[24]~75\ : std_logic;
SIGNAL \licznik[25]~76_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
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
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \POSY[1]~3_combout\ : std_logic;
SIGNAL \POSY[1]~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Equal0~8clkctrl_outclk\ : std_logic;
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
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \C1|Add5~1\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~0_combout\ : std_logic;
SIGNAL \C1|LessThan7~1_cout\ : std_logic;
SIGNAL \C1|LessThan7~3_cout\ : std_logic;
SIGNAL \C1|LessThan7~5_cout\ : std_logic;
SIGNAL \C1|LessThan7~7_cout\ : std_logic;
SIGNAL \C1|LessThan7~9_cout\ : std_logic;
SIGNAL \C1|LessThan7~11_cout\ : std_logic;
SIGNAL \C1|LessThan7~13_cout\ : std_logic;
SIGNAL \C1|LessThan7~15_cout\ : std_logic;
SIGNAL \C1|LessThan7~16_combout\ : std_logic;
SIGNAL \C2|G2~2_combout\ : std_logic;
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
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \POSX[1]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \C1|Add4~1\ : std_logic;
SIGNAL \C1|Add4~3\ : std_logic;
SIGNAL \C1|Add4~5\ : std_logic;
SIGNAL \C1|Add4~7\ : std_logic;
SIGNAL \C1|Add4~9\ : std_logic;
SIGNAL \C1|Add4~11\ : std_logic;
SIGNAL \C1|Add4~12_combout\ : std_logic;
SIGNAL \C1|Add4~10_combout\ : std_logic;
SIGNAL \C1|Add4~8_combout\ : std_logic;
SIGNAL \C1|Add4~6_combout\ : std_logic;
SIGNAL \C1|Add4~4_combout\ : std_logic;
SIGNAL \C1|Add4~2_combout\ : std_logic;
SIGNAL \C1|Add4~0_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~16_combout\ : std_logic;
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
SIGNAL \C1|Add4~13\ : std_logic;
SIGNAL \C1|Add4~14_combout\ : std_logic;
SIGNAL \C3|g3~0_combout\ : std_logic;
SIGNAL \C1|g[0]~2_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\ : std_logic;
SIGNAL \C1|R~2_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\ : std_logic;
SIGNAL \C1|g~3_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\ : std_logic;
SIGNAL \C1|g~4_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\ : std_logic;
SIGNAL \C1|g~5_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|R2[2]~8_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \C2|R2~12_combout\ : std_logic;
SIGNAL \C2|process_0~3_combout\ : std_logic;
SIGNAL \C2|process_0~4_combout\ : std_logic;
SIGNAL \C2|process_0~5_combout\ : std_logic;
SIGNAL \C2|LessThan1~1_combout\ : std_logic;
SIGNAL \C2|process_0~1_combout\ : std_logic;
SIGNAL \C2|process_0~2_combout\ : std_logic;
SIGNAL \C2|R2~10_combout\ : std_logic;
SIGNAL \C2|R2[2]~11_combout\ : std_logic;
SIGNAL \C2|R2[2]~13_combout\ : std_logic;
SIGNAL \C2|R2~14_combout\ : std_logic;
SIGNAL \C2|R2~15_combout\ : std_logic;
SIGNAL \C2|G2~4_combout\ : std_logic;
SIGNAL \C2|Add0~2_combout\ : std_logic;
SIGNAL \C2|Add1~1\ : std_logic;
SIGNAL \C2|Add1~3\ : std_logic;
SIGNAL \C2|Add1~5\ : std_logic;
SIGNAL \C2|Add1~7\ : std_logic;
SIGNAL \C2|Add1~9\ : std_logic;
SIGNAL \C2|Add1~11\ : std_logic;
SIGNAL \C2|Add1~13\ : std_logic;
SIGNAL \C2|Add1~15\ : std_logic;
SIGNAL \C2|Add1~16_combout\ : std_logic;
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
SIGNAL \C4|g4~0_combout\ : std_logic;
SIGNAL \C2|G2~3_combout\ : std_logic;
SIGNAL \C2|G2~5_combout\ : std_logic;
SIGNAL \C2|G2[0]~6_combout\ : std_logic;
SIGNAL \C2|G2[0]~9_combout\ : std_logic;
SIGNAL \C2|G2~7_combout\ : std_logic;
SIGNAL \C2|G2~8_combout\ : std_logic;
SIGNAL \C3|Add1~0_combout\ : std_logic;
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
SIGNAL \C3|Add1~5_combout\ : std_logic;
SIGNAL \C3|Add1~6_combout\ : std_logic;
SIGNAL \C3|LessThan8~20_combout\ : std_logic;
SIGNAL \C3|Add1~8_combout\ : std_logic;
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
SIGNAL \C4|g4~1_combout\ : std_logic;
SIGNAL \C3|g3~1_combout\ : std_logic;
SIGNAL \C3|g3~2_combout\ : std_logic;
SIGNAL \C3|g3~3_combout\ : std_logic;
SIGNAL \C3|g3~4_combout\ : std_logic;
SIGNAL \C3|g3~5_combout\ : std_logic;
SIGNAL \C4|g4~2_combout\ : std_logic;
SIGNAL \C4|g4~3_combout\ : std_logic;
SIGNAL \C4|g4~4_combout\ : std_logic;
SIGNAL \C4|g4~5_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \C1|b~0_combout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\ : std_logic;
SIGNAL \C1|b~1_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~1\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~6_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[54]~51_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~7\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~9_cout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
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
SIGNAL \C2|B2[1]~3_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ : std_logic;
SIGNAL \C2|R2[2]~9_combout\ : std_logic;
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
SIGNAL \C2|VSYNC~q\ : std_logic;
SIGNAL \C3|HSYNC~feeder_combout\ : std_logic;
SIGNAL \C3|HSYNC~q\ : std_logic;
SIGNAL \C3|VSYNC~q\ : std_logic;
SIGNAL \C4|HSYNC~q\ : std_logic;
SIGNAL \C4|VSYNC~feeder_combout\ : std_logic;
SIGNAL \C4|VSYNC~q\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C2|B2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|rom_addr2\ : std_logic_vector(16 DOWNTO 0);
SIGNAL licznik : std_logic_vector(25 DOWNTO 0);
SIGNAL \C1|rom_addr1\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|g\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|R2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C2|G2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL POSY : std_logic_vector(10 DOWNTO 0);
SIGNAL \C3|g3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C4|g4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|address\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \c0|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \C1|xpix\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|ypix\ : std_logic_vector(9 DOWNTO 0);
SIGNAL POSX : std_logic_vector(9 DOWNTO 0);
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
address2 <= ww_address2;
q2 <= ww_q2;
VGA2_HS <= ww_VGA2_HS;
VGA2_VS <= ww_VGA2_VS;
VGA3_HS <= ww_VGA3_HS;
VGA3_VS <= ww_VGA3_VS;
VGA4_HS <= ww_VGA4_HS;
VGA4_VS <= ww_VGA4_VS;
HPOS1 <= ww_HPOS1;
VPOS1 <= ww_VPOS1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\c0|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\C1|address\(12) & \C1|address\(11) & \C1|address\(10) & \C1|address\(9) & \C1|address\(8) & \C1|address\(7) & \C1|address\(6) & \C1|address\(5) & \C1|address\(4) & 
\C1|address\(3) & \C1|address\(2) & \C1|address\(1) & \C1|address\(0));

\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \c0|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\C|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_24~input_o\);

\C|altpll_0|sd1|wire_pll7_clk\(0) <= \C|altpll_0|sd1|pll7_CLK_bus\(0);
\C|altpll_0|sd1|wire_pll7_clk\(1) <= \C|altpll_0|sd1|pll7_CLK_bus\(1);
\C|altpll_0|sd1|wire_pll7_clk\(2) <= \C|altpll_0|sd1|pll7_CLK_bus\(2);
\C|altpll_0|sd1|wire_pll7_clk\(3) <= \C|altpll_0|sd1|pll7_CLK_bus\(3);
\C|altpll_0|sd1|wire_pll7_clk\(4) <= \C|altpll_0|sd1|pll7_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Equal0~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~8_combout\);

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));
\C1|ALT_INV_address\(13) <= NOT \C1|address\(13);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X78_Y33_N2
\address2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(0),
	devoe => ww_devoe,
	o => ww_address2(0));

-- Location: IOOBUF_X78_Y35_N2
\address2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(1),
	devoe => ww_devoe,
	o => ww_address2(1));

-- Location: IOOBUF_X78_Y34_N16
\address2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(2),
	devoe => ww_devoe,
	o => ww_address2(2));

-- Location: IOOBUF_X78_Y33_N16
\address2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(3),
	devoe => ww_devoe,
	o => ww_address2(3));

-- Location: IOOBUF_X78_Y34_N9
\address2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(4),
	devoe => ww_devoe,
	o => ww_address2(4));

-- Location: IOOBUF_X78_Y36_N16
\address2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(5),
	devoe => ww_devoe,
	o => ww_address2(5));

-- Location: IOOBUF_X78_Y34_N2
\address2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(6),
	devoe => ww_devoe,
	o => ww_address2(6));

-- Location: IOOBUF_X78_Y35_N16
\address2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(7),
	devoe => ww_devoe,
	o => ww_address2(7));

-- Location: IOOBUF_X78_Y36_N2
\address2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(8),
	devoe => ww_devoe,
	o => ww_address2(8));

-- Location: IOOBUF_X78_Y33_N9
\address2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(9),
	devoe => ww_devoe,
	o => ww_address2(9));

-- Location: IOOBUF_X78_Y35_N23
\address2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(10),
	devoe => ww_devoe,
	o => ww_address2(10));

-- Location: IOOBUF_X78_Y36_N24
\address2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(11),
	devoe => ww_devoe,
	o => ww_address2(11));

-- Location: IOOBUF_X78_Y36_N9
\address2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(12),
	devoe => ww_devoe,
	o => ww_address2(12));

-- Location: IOOBUF_X78_Y35_N9
\address2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|address\(13),
	devoe => ww_devoe,
	o => ww_address2(13));

-- Location: IOOBUF_X29_Y39_N16
\q2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_q2(0));

-- Location: IOOBUF_X51_Y54_N9
\q2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_q2(1));

-- Location: IOOBUF_X46_Y54_N30
\q2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_q2(2));

-- Location: IOOBUF_X26_Y39_N2
\q2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_q2(3));

-- Location: IOOBUF_X78_Y29_N16
\q2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_q2(4));

-- Location: IOOBUF_X24_Y39_N2
\q2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_q2(5));

-- Location: IOOBUF_X29_Y39_N2
\q2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_q2(6));

-- Location: IOOBUF_X26_Y39_N23
\q2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_q2(7));

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

-- Location: IOOBUF_X26_Y39_N30
\HPOS1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(0),
	devoe => ww_devoe,
	o => ww_HPOS1(0));

-- Location: IOOBUF_X31_Y39_N2
\HPOS1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(1),
	devoe => ww_devoe,
	o => ww_HPOS1(1));

-- Location: IOOBUF_X49_Y54_N23
\HPOS1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(2),
	devoe => ww_devoe,
	o => ww_HPOS1(2));

-- Location: IOOBUF_X78_Y33_N23
\HPOS1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(3),
	devoe => ww_devoe,
	o => ww_HPOS1(3));

-- Location: IOOBUF_X29_Y39_N9
\HPOS1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(4),
	devoe => ww_devoe,
	o => ww_HPOS1(4));

-- Location: IOOBUF_X31_Y39_N9
\HPOS1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(5),
	devoe => ww_devoe,
	o => ww_HPOS1(5));

-- Location: IOOBUF_X46_Y54_N23
\HPOS1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(6),
	devoe => ww_devoe,
	o => ww_HPOS1(6));

-- Location: IOOBUF_X31_Y39_N16
\HPOS1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(7),
	devoe => ww_devoe,
	o => ww_HPOS1(7));

-- Location: IOOBUF_X31_Y39_N23
\HPOS1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(8),
	devoe => ww_devoe,
	o => ww_HPOS1(8));

-- Location: IOOBUF_X49_Y54_N9
\HPOS1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HPOS\(9),
	devoe => ww_devoe,
	o => ww_HPOS1(9));

-- Location: IOOBUF_X31_Y39_N30
\VPOS1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(0),
	devoe => ww_devoe,
	o => ww_VPOS1(0));

-- Location: IOOBUF_X78_Y29_N2
\VPOS1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(1),
	devoe => ww_devoe,
	o => ww_VPOS1(1));

-- Location: IOOBUF_X34_Y39_N30
\VPOS1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(2),
	devoe => ww_devoe,
	o => ww_VPOS1(2));

-- Location: IOOBUF_X34_Y39_N9
\VPOS1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(3),
	devoe => ww_devoe,
	o => ww_VPOS1(3));

-- Location: IOOBUF_X36_Y39_N23
\VPOS1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(4),
	devoe => ww_devoe,
	o => ww_VPOS1(4));

-- Location: IOOBUF_X34_Y39_N16
\VPOS1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(5),
	devoe => ww_devoe,
	o => ww_VPOS1(5));

-- Location: IOOBUF_X34_Y39_N2
\VPOS1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(6),
	devoe => ww_devoe,
	o => ww_VPOS1(6));

-- Location: IOOBUF_X34_Y39_N23
\VPOS1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(7),
	devoe => ww_devoe,
	o => ww_VPOS1(7));

-- Location: IOOBUF_X36_Y39_N30
\VPOS1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(8),
	devoe => ww_devoe,
	o => ww_VPOS1(8));

-- Location: IOOBUF_X36_Y39_N16
\VPOS1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VPOS\(9),
	devoe => ww_devoe,
	o => ww_VPOS1(9));

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

-- Location: LCCOMB_X42_Y33_N4
\C1|HPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~10_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~11\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~10_combout\,
	cout => \C1|HPOS[0]~11\);

-- Location: LCCOMB_X42_Y33_N16
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

-- Location: LCCOMB_X42_Y33_N18
\C1|HPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~24_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~23\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~23\) # (GND)))
-- \C1|HPOS[7]~25\ = CARRY((!\C1|HPOS[6]~23\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~23\,
	combout => \C1|HPOS[7]~24_combout\,
	cout => \C1|HPOS[7]~25\);

-- Location: FF_X42_Y33_N19
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

-- Location: LCCOMB_X42_Y33_N20
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

-- Location: FF_X42_Y33_N21
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

-- Location: LCCOMB_X42_Y33_N22
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

-- Location: FF_X42_Y33_N23
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

-- Location: LCCOMB_X42_Y33_N30
\C1|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (\C1|HPOS\(8) & (\C1|HPOS\(9) & ((\C1|HPOS\(7)) # (!\C1|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(7),
	combout => \C1|LessThan13~0_combout\);

-- Location: FF_X42_Y33_N5
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

-- Location: LCCOMB_X42_Y33_N6
\C1|HPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~12_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~11\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~11\) # (GND)))
-- \C1|HPOS[1]~13\ = CARRY((!\C1|HPOS[0]~11\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~11\,
	combout => \C1|HPOS[1]~12_combout\,
	cout => \C1|HPOS[1]~13\);

-- Location: FF_X42_Y33_N7
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

-- Location: LCCOMB_X42_Y33_N8
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

-- Location: FF_X42_Y33_N9
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

-- Location: LCCOMB_X42_Y33_N10
\C1|HPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~16_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~15\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~15\) # (GND)))
-- \C1|HPOS[3]~17\ = CARRY((!\C1|HPOS[2]~15\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~15\,
	combout => \C1|HPOS[3]~16_combout\,
	cout => \C1|HPOS[3]~17\);

-- Location: FF_X42_Y33_N11
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

-- Location: LCCOMB_X42_Y33_N12
\C1|HPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~18_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~17\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~17\ & VCC))
-- \C1|HPOS[4]~19\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~17\,
	combout => \C1|HPOS[4]~18_combout\,
	cout => \C1|HPOS[4]~19\);

-- Location: FF_X42_Y33_N13
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

-- Location: LCCOMB_X42_Y33_N14
\C1|HPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~20_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~19\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~19\) # (GND)))
-- \C1|HPOS[5]~21\ = CARRY((!\C1|HPOS[4]~19\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~19\,
	combout => \C1|HPOS[5]~20_combout\,
	cout => \C1|HPOS[5]~21\);

-- Location: FF_X42_Y33_N15
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

-- Location: FF_X42_Y33_N17
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

-- Location: LCCOMB_X42_Y29_N8
\C1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (!\C1|HPOS\(6) & !\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X42_Y33_N26
\C1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(3) & (\C1|HPOS\(2) & (\C1|HPOS\(0) & \C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X42_Y33_N28
\C1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (\C1|HPOS\(6) & (\C1|HPOS\(5) & ((\C1|process_0~0_combout\) # (\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X42_Y33_N2
\C1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(8)) # ((!\C1|HPOS\(7)) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X42_Y33_N0
\C1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = ((!\C1|HPOS\(3) & !\C1|HPOS\(2))) # (!\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X42_Y33_N24
\C1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|process_0~1_combout\) # ((\C1|process_0~2_combout\) # ((\C1|process_0~4_combout\ & \C1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~1_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|process_0~3_combout\,
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X12_Y18_N16
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

-- Location: FF_X12_Y18_N17
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

-- Location: LCCOMB_X49_Y30_N6
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

-- Location: LCCOMB_X49_Y30_N14
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

-- Location: LCCOMB_X49_Y30_N16
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

-- Location: FF_X49_Y30_N17
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

-- Location: LCCOMB_X49_Y30_N18
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

-- Location: FF_X49_Y30_N19
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

-- Location: LCCOMB_X49_Y30_N20
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

-- Location: FF_X49_Y30_N21
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

-- Location: LCCOMB_X49_Y30_N22
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

-- Location: FF_X49_Y30_N23
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

-- Location: LCCOMB_X49_Y30_N26
\C1|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan15~0_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(7) & (!\C1|VPOS\(8) & !\C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan15~0_combout\);

-- Location: LCCOMB_X49_Y30_N24
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

-- Location: FF_X49_Y30_N25
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

-- Location: LCCOMB_X49_Y30_N30
\C1|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (((!\C1|VPOS\(0) & !\C1|VPOS\(1))) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X49_Y30_N4
\C1|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan15~1_combout\ = (\C1|VPOS\(9) & (((\C1|VPOS\(4)) # (!\C1|LessThan11~0_combout\)) # (!\C1|LessThan15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan15~0_combout\,
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(4),
	datad => \C1|LessThan11~0_combout\,
	combout => \C1|LessThan15~1_combout\);

-- Location: FF_X49_Y30_N7
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

-- Location: LCCOMB_X49_Y30_N8
\C1|VPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~12_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~11\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~11\) # (GND)))
-- \C1|VPOS[1]~13\ = CARRY((!\C1|VPOS[0]~11\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~11\,
	combout => \C1|VPOS[1]~12_combout\,
	cout => \C1|VPOS[1]~13\);

-- Location: FF_X49_Y30_N9
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

-- Location: LCCOMB_X49_Y30_N10
\C1|VPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~14_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~13\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~13\ & VCC))
-- \C1|VPOS[2]~15\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~13\,
	combout => \C1|VPOS[2]~14_combout\,
	cout => \C1|VPOS[2]~15\);

-- Location: FF_X49_Y30_N11
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

-- Location: LCCOMB_X49_Y30_N12
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

-- Location: FF_X49_Y30_N13
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

-- Location: FF_X49_Y30_N15
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

-- Location: LCCOMB_X49_Y29_N6
\C1|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan11~1_combout\ = (!\C1|VPOS\(4) & \C1|LessThan11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datac => \C1|LessThan11~0_combout\,
	combout => \C1|LessThan11~1_combout\);

-- Location: LCCOMB_X49_Y30_N28
\C2|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan1~0_combout\ = (\C1|VPOS\(6) & (\C1|VPOS\(7) & (\C1|VPOS\(8) & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(7),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(5),
	combout => \C2|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y30_N0
\C1|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = ((!\C1|VPOS\(2) & ((!\C1|VPOS\(1)) # (!\C1|VPOS\(0))))) # (!\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X49_Y29_N12
\C1|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = ((\C1|VPOS\(9)) # ((\C1|process_0~6_combout\) # (!\C2|LessThan1~0_combout\))) # (!\C1|LessThan11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan11~1_combout\,
	datab => \C1|VPOS\(9),
	datac => \C2|LessThan1~0_combout\,
	datad => \C1|process_0~6_combout\,
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X42_Y13_N24
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

-- Location: FF_X42_Y13_N25
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

-- Location: FF_X50_Y28_N13
\C1|ypix[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(9));

-- Location: FF_X50_Y28_N31
\C1|ypix[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(8));

-- Location: FF_X50_Y28_N27
\C1|ypix[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(6));

-- Location: FF_X50_Y28_N29
\C1|ypix[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(7));

-- Location: FF_X50_Y28_N11
\C1|ypix[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(5));

-- Location: FF_X50_Y28_N9
\C1|ypix[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(4));

-- Location: FF_X50_Y28_N7
\C1|ypix[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(3));

-- Location: FF_X50_Y28_N5
\C1|ypix[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(2));

-- Location: FF_X50_Y28_N3
\C1|ypix[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(1));

-- Location: LCCOMB_X50_Y28_N14
\C1|ypix[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|ypix[0]~feeder_combout\ = \C1|VPOS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(0),
	combout => \C1|ypix[0]~feeder_combout\);

-- Location: FF_X50_Y28_N15
\C1|ypix[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|ypix[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|ypix\(0));

-- Location: LCCOMB_X50_Y28_N0
\C1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = (\C1|ypix\(1) & (\C1|ypix\(0) $ (VCC))) # (!\C1|ypix\(1) & (\C1|ypix\(0) & VCC))
-- \C1|Add0~1\ = CARRY((\C1|ypix\(1) & \C1|ypix\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(1),
	datab => \C1|ypix\(0),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X50_Y28_N2
\C1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|ypix\(2) & ((\C1|ypix\(1) & (\C1|Add0~1\ & VCC)) # (!\C1|ypix\(1) & (!\C1|Add0~1\)))) # (!\C1|ypix\(2) & ((\C1|ypix\(1) & (!\C1|Add0~1\)) # (!\C1|ypix\(1) & ((\C1|Add0~1\) # (GND)))))
-- \C1|Add0~3\ = CARRY((\C1|ypix\(2) & (!\C1|ypix\(1) & !\C1|Add0~1\)) # (!\C1|ypix\(2) & ((!\C1|Add0~1\) # (!\C1|ypix\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(2),
	datab => \C1|ypix\(1),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X50_Y28_N4
\C1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = ((\C1|ypix\(2) $ (\C1|ypix\(3) $ (!\C1|Add0~3\)))) # (GND)
-- \C1|Add0~5\ = CARRY((\C1|ypix\(2) & ((\C1|ypix\(3)) # (!\C1|Add0~3\))) # (!\C1|ypix\(2) & (\C1|ypix\(3) & !\C1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(2),
	datab => \C1|ypix\(3),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X50_Y28_N6
\C1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|ypix\(4) & ((\C1|ypix\(3) & (\C1|Add0~5\ & VCC)) # (!\C1|ypix\(3) & (!\C1|Add0~5\)))) # (!\C1|ypix\(4) & ((\C1|ypix\(3) & (!\C1|Add0~5\)) # (!\C1|ypix\(3) & ((\C1|Add0~5\) # (GND)))))
-- \C1|Add0~7\ = CARRY((\C1|ypix\(4) & (!\C1|ypix\(3) & !\C1|Add0~5\)) # (!\C1|ypix\(4) & ((!\C1|Add0~5\) # (!\C1|ypix\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(4),
	datab => \C1|ypix\(3),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X50_Y28_N8
\C1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = ((\C1|ypix\(4) $ (\C1|ypix\(5) $ (!\C1|Add0~7\)))) # (GND)
-- \C1|Add0~9\ = CARRY((\C1|ypix\(4) & ((\C1|ypix\(5)) # (!\C1|Add0~7\))) # (!\C1|ypix\(4) & (\C1|ypix\(5) & !\C1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(4),
	datab => \C1|ypix\(5),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X50_Y28_N10
\C1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|ypix\(6) & ((\C1|ypix\(5) & (\C1|Add0~9\ & VCC)) # (!\C1|ypix\(5) & (!\C1|Add0~9\)))) # (!\C1|ypix\(6) & ((\C1|ypix\(5) & (!\C1|Add0~9\)) # (!\C1|ypix\(5) & ((\C1|Add0~9\) # (GND)))))
-- \C1|Add0~11\ = CARRY((\C1|ypix\(6) & (!\C1|ypix\(5) & !\C1|Add0~9\)) # (!\C1|ypix\(6) & ((!\C1|Add0~9\) # (!\C1|ypix\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(6),
	datab => \C1|ypix\(5),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X50_Y28_N12
\C1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = \C1|ypix\(6) $ (\C1|ypix\(7) $ (!\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(6),
	datab => \C1|ypix\(7),
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\);

-- Location: LCCOMB_X50_Y28_N16
\C1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = (\C1|ypix\(1) & (\C1|ypix\(0) $ (VCC))) # (!\C1|ypix\(1) & (\C1|ypix\(0) & VCC))
-- \C1|Add1~1\ = CARRY((\C1|ypix\(1) & \C1|ypix\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(1),
	datab => \C1|ypix\(0),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X50_Y28_N18
\C1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|ypix\(2) & ((\C1|Add0~0_combout\ & (\C1|Add1~1\ & VCC)) # (!\C1|Add0~0_combout\ & (!\C1|Add1~1\)))) # (!\C1|ypix\(2) & ((\C1|Add0~0_combout\ & (!\C1|Add1~1\)) # (!\C1|Add0~0_combout\ & ((\C1|Add1~1\) # (GND)))))
-- \C1|Add1~3\ = CARRY((\C1|ypix\(2) & (!\C1|Add0~0_combout\ & !\C1|Add1~1\)) # (!\C1|ypix\(2) & ((!\C1|Add1~1\) # (!\C1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(2),
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X50_Y28_N20
\C1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = ((\C1|ypix\(3) $ (\C1|Add0~2_combout\ $ (!\C1|Add1~3\)))) # (GND)
-- \C1|Add1~5\ = CARRY((\C1|ypix\(3) & ((\C1|Add0~2_combout\) # (!\C1|Add1~3\))) # (!\C1|ypix\(3) & (\C1|Add0~2_combout\ & !\C1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(3),
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X50_Y28_N22
\C1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|ypix\(4) & ((\C1|Add0~4_combout\ & (\C1|Add1~5\ & VCC)) # (!\C1|Add0~4_combout\ & (!\C1|Add1~5\)))) # (!\C1|ypix\(4) & ((\C1|Add0~4_combout\ & (!\C1|Add1~5\)) # (!\C1|Add0~4_combout\ & ((\C1|Add1~5\) # (GND)))))
-- \C1|Add1~7\ = CARRY((\C1|ypix\(4) & (!\C1|Add0~4_combout\ & !\C1|Add1~5\)) # (!\C1|ypix\(4) & ((!\C1|Add1~5\) # (!\C1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(4),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X50_Y28_N24
\C1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = ((\C1|Add0~6_combout\ $ (\C1|ypix\(5) $ (!\C1|Add1~7\)))) # (GND)
-- \C1|Add1~9\ = CARRY((\C1|Add0~6_combout\ & ((\C1|ypix\(5)) # (!\C1|Add1~7\))) # (!\C1|Add0~6_combout\ & (\C1|ypix\(5) & !\C1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|ypix\(5),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X50_Y28_N26
\C1|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|ypix\(6) & ((\C1|Add0~8_combout\ & (\C1|Add1~9\ & VCC)) # (!\C1|Add0~8_combout\ & (!\C1|Add1~9\)))) # (!\C1|ypix\(6) & ((\C1|Add0~8_combout\ & (!\C1|Add1~9\)) # (!\C1|Add0~8_combout\ & ((\C1|Add1~9\) # (GND)))))
-- \C1|Add1~11\ = CARRY((\C1|ypix\(6) & (!\C1|Add0~8_combout\ & !\C1|Add1~9\)) # (!\C1|ypix\(6) & ((!\C1|Add1~9\) # (!\C1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(6),
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X50_Y28_N28
\C1|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = ((\C1|Add0~10_combout\ $ (\C1|ypix\(7) $ (!\C1|Add1~11\)))) # (GND)
-- \C1|Add1~13\ = CARRY((\C1|Add0~10_combout\ & ((\C1|ypix\(7)) # (!\C1|Add1~11\))) # (!\C1|Add0~10_combout\ & (\C1|ypix\(7) & !\C1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|ypix\(7),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X50_Y28_N30
\C1|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = \C1|ypix\(8) $ (\C1|Add1~13\ $ (\C1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(8),
	datad => \C1|Add0~12_combout\,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\);

-- Location: LCCOMB_X51_Y28_N12
\C1|rom_addr1[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[5]~9_combout\ = (\C1|ypix\(0) & (\C1|ypix\(1) $ (VCC))) # (!\C1|ypix\(0) & (\C1|ypix\(1) & VCC))
-- \C1|rom_addr1[5]~10\ = CARRY((\C1|ypix\(0) & \C1|ypix\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(0),
	datab => \C1|ypix\(1),
	datad => VCC,
	combout => \C1|rom_addr1[5]~9_combout\,
	cout => \C1|rom_addr1[5]~10\);

-- Location: LCCOMB_X51_Y28_N14
\C1|rom_addr1[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[6]~11_combout\ = (\C1|Add1~0_combout\ & ((\C1|ypix\(2) & (\C1|rom_addr1[5]~10\ & VCC)) # (!\C1|ypix\(2) & (!\C1|rom_addr1[5]~10\)))) # (!\C1|Add1~0_combout\ & ((\C1|ypix\(2) & (!\C1|rom_addr1[5]~10\)) # (!\C1|ypix\(2) & 
-- ((\C1|rom_addr1[5]~10\) # (GND)))))
-- \C1|rom_addr1[6]~12\ = CARRY((\C1|Add1~0_combout\ & (!\C1|ypix\(2) & !\C1|rom_addr1[5]~10\)) # (!\C1|Add1~0_combout\ & ((!\C1|rom_addr1[5]~10\) # (!\C1|ypix\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|ypix\(2),
	datad => VCC,
	cin => \C1|rom_addr1[5]~10\,
	combout => \C1|rom_addr1[6]~11_combout\,
	cout => \C1|rom_addr1[6]~12\);

-- Location: LCCOMB_X51_Y28_N16
\C1|rom_addr1[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[7]~13_combout\ = ((\C1|ypix\(3) $ (\C1|Add1~2_combout\ $ (!\C1|rom_addr1[6]~12\)))) # (GND)
-- \C1|rom_addr1[7]~14\ = CARRY((\C1|ypix\(3) & ((\C1|Add1~2_combout\) # (!\C1|rom_addr1[6]~12\))) # (!\C1|ypix\(3) & (\C1|Add1~2_combout\ & !\C1|rom_addr1[6]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(3),
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|rom_addr1[6]~12\,
	combout => \C1|rom_addr1[7]~13_combout\,
	cout => \C1|rom_addr1[7]~14\);

-- Location: LCCOMB_X51_Y28_N18
\C1|rom_addr1[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[8]~15_combout\ = (\C1|ypix\(4) & ((\C1|Add1~4_combout\ & (\C1|rom_addr1[7]~14\ & VCC)) # (!\C1|Add1~4_combout\ & (!\C1|rom_addr1[7]~14\)))) # (!\C1|ypix\(4) & ((\C1|Add1~4_combout\ & (!\C1|rom_addr1[7]~14\)) # (!\C1|Add1~4_combout\ & 
-- ((\C1|rom_addr1[7]~14\) # (GND)))))
-- \C1|rom_addr1[8]~16\ = CARRY((\C1|ypix\(4) & (!\C1|Add1~4_combout\ & !\C1|rom_addr1[7]~14\)) # (!\C1|ypix\(4) & ((!\C1|rom_addr1[7]~14\) # (!\C1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(4),
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|rom_addr1[7]~14\,
	combout => \C1|rom_addr1[8]~15_combout\,
	cout => \C1|rom_addr1[8]~16\);

-- Location: LCCOMB_X51_Y28_N20
\C1|rom_addr1[9]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[9]~17_combout\ = ((\C1|ypix\(5) $ (\C1|Add1~6_combout\ $ (!\C1|rom_addr1[8]~16\)))) # (GND)
-- \C1|rom_addr1[9]~18\ = CARRY((\C1|ypix\(5) & ((\C1|Add1~6_combout\) # (!\C1|rom_addr1[8]~16\))) # (!\C1|ypix\(5) & (\C1|Add1~6_combout\ & !\C1|rom_addr1[8]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(5),
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|rom_addr1[8]~16\,
	combout => \C1|rom_addr1[9]~17_combout\,
	cout => \C1|rom_addr1[9]~18\);

-- Location: LCCOMB_X51_Y28_N22
\C1|rom_addr1[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[10]~19_combout\ = (\C1|ypix\(6) & ((\C1|Add1~8_combout\ & (\C1|rom_addr1[9]~18\ & VCC)) # (!\C1|Add1~8_combout\ & (!\C1|rom_addr1[9]~18\)))) # (!\C1|ypix\(6) & ((\C1|Add1~8_combout\ & (!\C1|rom_addr1[9]~18\)) # (!\C1|Add1~8_combout\ & 
-- ((\C1|rom_addr1[9]~18\) # (GND)))))
-- \C1|rom_addr1[10]~20\ = CARRY((\C1|ypix\(6) & (!\C1|Add1~8_combout\ & !\C1|rom_addr1[9]~18\)) # (!\C1|ypix\(6) & ((!\C1|rom_addr1[9]~18\) # (!\C1|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(6),
	datab => \C1|Add1~8_combout\,
	datad => VCC,
	cin => \C1|rom_addr1[9]~18\,
	combout => \C1|rom_addr1[10]~19_combout\,
	cout => \C1|rom_addr1[10]~20\);

-- Location: LCCOMB_X51_Y28_N24
\C1|rom_addr1[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[11]~21_combout\ = ((\C1|Add1~10_combout\ $ (\C1|ypix\(7) $ (!\C1|rom_addr1[10]~20\)))) # (GND)
-- \C1|rom_addr1[11]~22\ = CARRY((\C1|Add1~10_combout\ & ((\C1|ypix\(7)) # (!\C1|rom_addr1[10]~20\))) # (!\C1|Add1~10_combout\ & (\C1|ypix\(7) & !\C1|rom_addr1[10]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|ypix\(7),
	datad => VCC,
	cin => \C1|rom_addr1[10]~20\,
	combout => \C1|rom_addr1[11]~21_combout\,
	cout => \C1|rom_addr1[11]~22\);

-- Location: LCCOMB_X51_Y28_N26
\C1|rom_addr1[12]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[12]~23_combout\ = (\C1|Add1~12_combout\ & ((\C1|ypix\(8) & (\C1|rom_addr1[11]~22\ & VCC)) # (!\C1|ypix\(8) & (!\C1|rom_addr1[11]~22\)))) # (!\C1|Add1~12_combout\ & ((\C1|ypix\(8) & (!\C1|rom_addr1[11]~22\)) # (!\C1|ypix\(8) & 
-- ((\C1|rom_addr1[11]~22\) # (GND)))))
-- \C1|rom_addr1[12]~24\ = CARRY((\C1|Add1~12_combout\ & (!\C1|ypix\(8) & !\C1|rom_addr1[11]~22\)) # (!\C1|Add1~12_combout\ & ((!\C1|rom_addr1[11]~22\) # (!\C1|ypix\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|ypix\(8),
	datad => VCC,
	cin => \C1|rom_addr1[11]~22\,
	combout => \C1|rom_addr1[12]~23_combout\,
	cout => \C1|rom_addr1[12]~24\);

-- Location: LCCOMB_X51_Y28_N28
\C1|rom_addr1[13]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[13]~25_combout\ = \C1|ypix\(9) $ (\C1|rom_addr1[12]~24\ $ (!\C1|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ypix\(9),
	datad => \C1|Add1~14_combout\,
	cin => \C1|rom_addr1[12]~24\,
	combout => \C1|rom_addr1[13]~25_combout\);

-- Location: FF_X51_Y28_N29
\C1|rom_addr1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[13]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(13));

-- Location: FF_X51_Y28_N27
\C1|rom_addr1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(12));

-- Location: FF_X51_Y28_N25
\C1|rom_addr1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(11));

-- Location: FF_X51_Y28_N23
\C1|rom_addr1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(10));

-- Location: FF_X51_Y28_N21
\C1|rom_addr1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(9));

-- Location: LCCOMB_X50_Y30_N4
\C1|xpix[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[9]~feeder_combout\ = \C1|HPOS\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(9),
	combout => \C1|xpix[9]~feeder_combout\);

-- Location: FF_X50_Y30_N5
\C1|xpix[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(9));

-- Location: FF_X51_Y28_N19
\C1|rom_addr1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(8));

-- Location: FF_X45_Y30_N3
\C1|xpix[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(8));

-- Location: LCCOMB_X46_Y30_N8
\C1|xpix[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[7]~feeder_combout\ = \C1|HPOS\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(7),
	combout => \C1|xpix[7]~feeder_combout\);

-- Location: FF_X46_Y30_N9
\C1|xpix[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(7));

-- Location: FF_X51_Y28_N17
\C1|rom_addr1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(7));

-- Location: FF_X45_Y30_N25
\C1|xpix[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(6));

-- Location: FF_X51_Y28_N15
\C1|rom_addr1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(6));

-- Location: LCCOMB_X46_Y30_N6
\C1|xpix[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[5]~feeder_combout\ = \C1|HPOS\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(5),
	combout => \C1|xpix[5]~feeder_combout\);

-- Location: FF_X46_Y30_N7
\C1|xpix[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(5));

-- Location: FF_X51_Y28_N13
\C1|rom_addr1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(5));

-- Location: LCCOMB_X45_Y30_N4
\C1|xpix[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[4]~feeder_combout\ = \C1|HPOS\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(4),
	combout => \C1|xpix[4]~feeder_combout\);

-- Location: FF_X45_Y30_N5
\C1|xpix[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(4));

-- Location: LCCOMB_X51_Y28_N0
\C1|rom_addr1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr1[4]~feeder_combout\ = \C1|ypix\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|ypix\(0),
	combout => \C1|rom_addr1[4]~feeder_combout\);

-- Location: FF_X51_Y28_N1
\C1|rom_addr1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr1\(4));

-- Location: LCCOMB_X51_Y30_N6
\C1|rom_addr2[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[4]~10_combout\ = (\C1|xpix\(4) & (\C1|rom_addr1\(4) $ (VCC))) # (!\C1|xpix\(4) & (\C1|rom_addr1\(4) & VCC))
-- \C1|rom_addr2[4]~11\ = CARRY((\C1|xpix\(4) & \C1|rom_addr1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|xpix\(4),
	datab => \C1|rom_addr1\(4),
	datad => VCC,
	combout => \C1|rom_addr2[4]~10_combout\,
	cout => \C1|rom_addr2[4]~11\);

-- Location: LCCOMB_X51_Y30_N8
\C1|rom_addr2[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[5]~12_combout\ = (\C1|xpix\(5) & ((\C1|rom_addr1\(5) & (\C1|rom_addr2[4]~11\ & VCC)) # (!\C1|rom_addr1\(5) & (!\C1|rom_addr2[4]~11\)))) # (!\C1|xpix\(5) & ((\C1|rom_addr1\(5) & (!\C1|rom_addr2[4]~11\)) # (!\C1|rom_addr1\(5) & 
-- ((\C1|rom_addr2[4]~11\) # (GND)))))
-- \C1|rom_addr2[5]~13\ = CARRY((\C1|xpix\(5) & (!\C1|rom_addr1\(5) & !\C1|rom_addr2[4]~11\)) # (!\C1|xpix\(5) & ((!\C1|rom_addr2[4]~11\) # (!\C1|rom_addr1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|xpix\(5),
	datab => \C1|rom_addr1\(5),
	datad => VCC,
	cin => \C1|rom_addr2[4]~11\,
	combout => \C1|rom_addr2[5]~12_combout\,
	cout => \C1|rom_addr2[5]~13\);

-- Location: LCCOMB_X51_Y30_N10
\C1|rom_addr2[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[6]~14_combout\ = ((\C1|xpix\(6) $ (\C1|rom_addr1\(6) $ (!\C1|rom_addr2[5]~13\)))) # (GND)
-- \C1|rom_addr2[6]~15\ = CARRY((\C1|xpix\(6) & ((\C1|rom_addr1\(6)) # (!\C1|rom_addr2[5]~13\))) # (!\C1|xpix\(6) & (\C1|rom_addr1\(6) & !\C1|rom_addr2[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|xpix\(6),
	datab => \C1|rom_addr1\(6),
	datad => VCC,
	cin => \C1|rom_addr2[5]~13\,
	combout => \C1|rom_addr2[6]~14_combout\,
	cout => \C1|rom_addr2[6]~15\);

-- Location: LCCOMB_X51_Y30_N12
\C1|rom_addr2[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[7]~16_combout\ = (\C1|xpix\(7) & ((\C1|rom_addr1\(7) & (\C1|rom_addr2[6]~15\ & VCC)) # (!\C1|rom_addr1\(7) & (!\C1|rom_addr2[6]~15\)))) # (!\C1|xpix\(7) & ((\C1|rom_addr1\(7) & (!\C1|rom_addr2[6]~15\)) # (!\C1|rom_addr1\(7) & 
-- ((\C1|rom_addr2[6]~15\) # (GND)))))
-- \C1|rom_addr2[7]~17\ = CARRY((\C1|xpix\(7) & (!\C1|rom_addr1\(7) & !\C1|rom_addr2[6]~15\)) # (!\C1|xpix\(7) & ((!\C1|rom_addr2[6]~15\) # (!\C1|rom_addr1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|xpix\(7),
	datab => \C1|rom_addr1\(7),
	datad => VCC,
	cin => \C1|rom_addr2[6]~15\,
	combout => \C1|rom_addr2[7]~16_combout\,
	cout => \C1|rom_addr2[7]~17\);

-- Location: LCCOMB_X51_Y30_N14
\C1|rom_addr2[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[8]~18_combout\ = ((\C1|rom_addr1\(8) $ (\C1|xpix\(8) $ (!\C1|rom_addr2[7]~17\)))) # (GND)
-- \C1|rom_addr2[8]~19\ = CARRY((\C1|rom_addr1\(8) & ((\C1|xpix\(8)) # (!\C1|rom_addr2[7]~17\))) # (!\C1|rom_addr1\(8) & (\C1|xpix\(8) & !\C1|rom_addr2[7]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rom_addr1\(8),
	datab => \C1|xpix\(8),
	datad => VCC,
	cin => \C1|rom_addr2[7]~17\,
	combout => \C1|rom_addr2[8]~18_combout\,
	cout => \C1|rom_addr2[8]~19\);

-- Location: LCCOMB_X51_Y30_N16
\C1|rom_addr2[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[9]~20_combout\ = (\C1|rom_addr1\(9) & ((\C1|xpix\(9) & (\C1|rom_addr2[8]~19\ & VCC)) # (!\C1|xpix\(9) & (!\C1|rom_addr2[8]~19\)))) # (!\C1|rom_addr1\(9) & ((\C1|xpix\(9) & (!\C1|rom_addr2[8]~19\)) # (!\C1|xpix\(9) & ((\C1|rom_addr2[8]~19\) # 
-- (GND)))))
-- \C1|rom_addr2[9]~21\ = CARRY((\C1|rom_addr1\(9) & (!\C1|xpix\(9) & !\C1|rom_addr2[8]~19\)) # (!\C1|rom_addr1\(9) & ((!\C1|rom_addr2[8]~19\) # (!\C1|xpix\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rom_addr1\(9),
	datab => \C1|xpix\(9),
	datad => VCC,
	cin => \C1|rom_addr2[8]~19\,
	combout => \C1|rom_addr2[9]~20_combout\,
	cout => \C1|rom_addr2[9]~21\);

-- Location: LCCOMB_X51_Y30_N18
\C1|rom_addr2[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[10]~22_combout\ = (\C1|rom_addr1\(10) & (\C1|rom_addr2[9]~21\ $ (GND))) # (!\C1|rom_addr1\(10) & (!\C1|rom_addr2[9]~21\ & VCC))
-- \C1|rom_addr2[10]~23\ = CARRY((\C1|rom_addr1\(10) & !\C1|rom_addr2[9]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|rom_addr1\(10),
	datad => VCC,
	cin => \C1|rom_addr2[9]~21\,
	combout => \C1|rom_addr2[10]~22_combout\,
	cout => \C1|rom_addr2[10]~23\);

-- Location: LCCOMB_X51_Y30_N20
\C1|rom_addr2[11]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[11]~24_combout\ = (\C1|rom_addr1\(11) & (!\C1|rom_addr2[10]~23\)) # (!\C1|rom_addr1\(11) & ((\C1|rom_addr2[10]~23\) # (GND)))
-- \C1|rom_addr2[11]~25\ = CARRY((!\C1|rom_addr2[10]~23\) # (!\C1|rom_addr1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|rom_addr1\(11),
	datad => VCC,
	cin => \C1|rom_addr2[10]~23\,
	combout => \C1|rom_addr2[11]~24_combout\,
	cout => \C1|rom_addr2[11]~25\);

-- Location: LCCOMB_X51_Y30_N22
\C1|rom_addr2[12]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[12]~26_combout\ = (\C1|rom_addr1\(12) & (\C1|rom_addr2[11]~25\ $ (GND))) # (!\C1|rom_addr1\(12) & (!\C1|rom_addr2[11]~25\ & VCC))
-- \C1|rom_addr2[12]~27\ = CARRY((\C1|rom_addr1\(12) & !\C1|rom_addr2[11]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rom_addr1\(12),
	datad => VCC,
	cin => \C1|rom_addr2[11]~25\,
	combout => \C1|rom_addr2[12]~26_combout\,
	cout => \C1|rom_addr2[12]~27\);

-- Location: LCCOMB_X51_Y30_N24
\C1|rom_addr2[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[13]~28_combout\ = \C1|rom_addr2[12]~27\ $ (\C1|rom_addr1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr1\(13),
	cin => \C1|rom_addr2[12]~27\,
	combout => \C1|rom_addr2[13]~28_combout\);

-- Location: FF_X51_Y30_N25
\C1|rom_addr2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(13));

-- Location: LCCOMB_X52_Y30_N2
\C1|address[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[13]~feeder_combout\ = \C1|rom_addr2\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(13),
	combout => \C1|address[13]~feeder_combout\);

-- Location: FF_X52_Y30_N3
\C1|address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(13));

-- Location: FF_X46_Y30_N1
\C1|xpix[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(0));

-- Location: LCCOMB_X46_Y30_N2
\C1|rom_addr2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[0]~feeder_combout\ = \C1|xpix\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|xpix\(0),
	combout => \C1|rom_addr2[0]~feeder_combout\);

-- Location: FF_X46_Y30_N3
\C1|rom_addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(0));

-- Location: LCCOMB_X54_Y32_N0
\C1|address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[0]~feeder_combout\ = \C1|rom_addr2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(0),
	combout => \C1|address[0]~feeder_combout\);

-- Location: FF_X54_Y32_N1
\C1|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(0));

-- Location: LCCOMB_X52_Y32_N16
\C1|xpix[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[1]~feeder_combout\ = \C1|HPOS\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(1),
	combout => \C1|xpix[1]~feeder_combout\);

-- Location: FF_X52_Y32_N17
\C1|xpix[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(1));

-- Location: LCCOMB_X52_Y32_N18
\C1|rom_addr2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[1]~feeder_combout\ = \C1|xpix\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|xpix\(1),
	combout => \C1|rom_addr2[1]~feeder_combout\);

-- Location: FF_X52_Y32_N19
\C1|rom_addr2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(1));

-- Location: LCCOMB_X52_Y32_N28
\C1|address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[1]~feeder_combout\ = \C1|rom_addr2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(1),
	combout => \C1|address[1]~feeder_combout\);

-- Location: FF_X52_Y32_N29
\C1|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(1));

-- Location: LCCOMB_X49_Y29_N20
\C1|xpix[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|xpix[2]~feeder_combout\ = \C1|HPOS\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(2),
	combout => \C1|xpix[2]~feeder_combout\);

-- Location: FF_X49_Y29_N21
\C1|xpix[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|xpix[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(2));

-- Location: LCCOMB_X52_Y28_N18
\C1|rom_addr2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[2]~feeder_combout\ = \C1|xpix\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|xpix\(2),
	combout => \C1|rom_addr2[2]~feeder_combout\);

-- Location: FF_X52_Y28_N19
\C1|rom_addr2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(2));

-- Location: LCCOMB_X52_Y28_N16
\C1|address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[2]~feeder_combout\ = \C1|rom_addr2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(2),
	combout => \C1|address[2]~feeder_combout\);

-- Location: FF_X52_Y28_N17
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

-- Location: FF_X49_Y29_N19
\C1|xpix[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|xpix\(3));

-- Location: LCCOMB_X49_Y29_N10
\C1|rom_addr2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rom_addr2[3]~feeder_combout\ = \C1|xpix\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|xpix\(3),
	combout => \C1|rom_addr2[3]~feeder_combout\);

-- Location: FF_X49_Y29_N11
\C1|rom_addr2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(3));

-- Location: LCCOMB_X49_Y29_N4
\C1|address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[3]~feeder_combout\ = \C1|rom_addr2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(3),
	combout => \C1|address[3]~feeder_combout\);

-- Location: FF_X49_Y29_N5
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

-- Location: FF_X51_Y30_N7
\C1|rom_addr2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(4));

-- Location: FF_X52_Y30_N9
\C1|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|rom_addr2\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(4));

-- Location: FF_X51_Y30_N9
\C1|rom_addr2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(5));

-- Location: LCCOMB_X52_Y30_N26
\C1|address[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[5]~feeder_combout\ = \C1|rom_addr2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(5),
	combout => \C1|address[5]~feeder_combout\);

-- Location: FF_X52_Y30_N27
\C1|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(5));

-- Location: FF_X51_Y30_N11
\C1|rom_addr2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(6));

-- Location: LCCOMB_X52_Y30_N4
\C1|address[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[6]~feeder_combout\ = \C1|rom_addr2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(6),
	combout => \C1|address[6]~feeder_combout\);

-- Location: FF_X52_Y30_N5
\C1|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(6));

-- Location: FF_X51_Y30_N13
\C1|rom_addr2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(7));

-- Location: LCCOMB_X52_Y30_N18
\C1|address[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[7]~feeder_combout\ = \C1|rom_addr2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(7),
	combout => \C1|address[7]~feeder_combout\);

-- Location: FF_X52_Y30_N19
\C1|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(7));

-- Location: FF_X51_Y30_N15
\C1|rom_addr2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(8));

-- Location: LCCOMB_X52_Y30_N28
\C1|address[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[8]~feeder_combout\ = \C1|rom_addr2\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(8),
	combout => \C1|address[8]~feeder_combout\);

-- Location: FF_X52_Y30_N29
\C1|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(8));

-- Location: FF_X51_Y30_N17
\C1|rom_addr2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(9));

-- Location: FF_X52_Y30_N23
\C1|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|rom_addr2\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(9));

-- Location: FF_X51_Y30_N19
\C1|rom_addr2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(10));

-- Location: LCCOMB_X52_Y30_N12
\C1|address[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[10]~feeder_combout\ = \C1|rom_addr2\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(10),
	combout => \C1|address[10]~feeder_combout\);

-- Location: FF_X52_Y30_N13
\C1|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(10));

-- Location: FF_X51_Y30_N21
\C1|rom_addr2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(11));

-- Location: LCCOMB_X52_Y30_N14
\C1|address[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[11]~feeder_combout\ = \C1|rom_addr2\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(11),
	combout => \C1|address[11]~feeder_combout\);

-- Location: FF_X52_Y30_N15
\C1|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(11));

-- Location: FF_X51_Y30_N23
\C1|rom_addr2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|rom_addr2[12]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rom_addr2\(12));

-- Location: LCCOMB_X52_Y30_N24
\C1|address[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|address[12]~feeder_combout\ = \C1|rom_addr2\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rom_addr2\(12),
	combout => \C1|address[12]~feeder_combout\);

-- Location: FF_X52_Y30_N25
\C1|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|address[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|address\(12));

-- Location: M9K_X53_Y26_N0
\c0|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D40000000000000000000000000000A79000000000000000000000000000000E",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFEC3800000000000000000000000001C10FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000003E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD",
	mem_init0 => X"EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X54_Y29_N18
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

-- Location: FF_X54_Y29_N19
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

-- Location: LCCOMB_X54_Y29_N0
\c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\ = \c0|altsyncram_component|auto_generated|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c0|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \c0|altsyncram_component|auto_generated|out_address_reg_a[0]~feeder_combout\);

-- Location: FF_X54_Y29_N1
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

-- Location: M9K_X53_Y31_N0
\c0|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100000000000000000000000000000082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4",
	mem_init2 => X"2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4",
	mem_init1 => X"2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43000000000000000000000000000000C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF0F00000000000000000000000000007F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X52_Y31_N18
\c0|altsyncram_component|auto_generated|mux2|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\);

-- Location: LCCOMB_X49_Y30_N2
\C1|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|VPOS\(0)) # ((\C1|VPOS\(3)) # ((\C1|VPOS\(1)) # (\C1|VPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X49_Y29_N2
\C1|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (\C1|VPOS\(9)) # ((\C2|LessThan1~0_combout\ & ((\C1|VPOS\(4)) # (\C1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C2|LessThan1~0_combout\,
	datac => \C1|process_0~8_combout\,
	datad => \C1|VPOS\(9),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X46_Y30_N4
\C2|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~0_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(0) & (!\C1|HPOS\(2) & !\C1|HPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(3),
	combout => \C2|process_0~0_combout\);

-- Location: LCCOMB_X42_Y29_N10
\C1|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (\C1|HPOS\(5)) # ((\C1|HPOS\(4)) # ((\C1|HPOS\(6)) # (!\C2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C2|process_0~0_combout\,
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X42_Y29_N0
\C1|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\C1|HPOS\(8) & (((!\C1|HPOS\(7) & \C1|process_0~4_combout\)))) # (!\C1|HPOS\(8) & (\C1|process_0~10_combout\ & (\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~10_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(7),
	datad => \C1|process_0~4_combout\,
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X49_Y29_N16
\C1|process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (\C1|HPOS\(9) & ((\C1|process_0~11_combout\) # ((\C1|process_0~9_combout\ & !\C1|LessThan15~1_combout\)))) # (!\C1|HPOS\(9) & (\C1|process_0~9_combout\ & ((!\C1|LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|process_0~9_combout\,
	datac => \C1|process_0~11_combout\,
	datad => \C1|LessThan15~1_combout\,
	combout => \C1|process_0~12_combout\);

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

-- Location: LCCOMB_X42_Y28_N12
\C1|g[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[0]~0_combout\ = (\C1|HPOS\(8)) # ((\C1|VPOS\(8)) # ((\C1|VPOS\(7)) # (\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(7),
	datad => \C1|HPOS\(7),
	combout => \C1|g[0]~0_combout\);

-- Location: LCCOMB_X43_Y28_N28
\C1|g[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[0]~1_combout\ = (!\SW[0]~input_o\ & ((\C1|HPOS\(9)) # ((\C1|VPOS\(9)) # (\C1|g[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|VPOS\(9),
	datac => \SW[0]~input_o\,
	datad => \C1|g[0]~0_combout\,
	combout => \C1|g[0]~1_combout\);

-- Location: LCCOMB_X42_Y27_N6
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

-- Location: LCCOMB_X42_Y26_N10
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

-- Location: LCCOMB_X42_Y26_N12
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

-- Location: FF_X42_Y26_N13
\licznik[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[19]~64_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(19));

-- Location: LCCOMB_X42_Y26_N14
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

-- Location: FF_X42_Y26_N15
\licznik[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[20]~66_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(20));

-- Location: LCCOMB_X42_Y26_N16
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

-- Location: FF_X42_Y26_N17
\licznik[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[21]~68_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(21));

-- Location: LCCOMB_X42_Y26_N18
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

-- Location: FF_X42_Y26_N19
\licznik[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[22]~70_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(22));

-- Location: LCCOMB_X42_Y26_N20
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

-- Location: FF_X42_Y26_N21
\licznik[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[23]~72_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(23));

-- Location: LCCOMB_X42_Y26_N22
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

-- Location: FF_X42_Y26_N23
\licznik[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[24]~74_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(24));

-- Location: LCCOMB_X42_Y26_N24
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

-- Location: FF_X42_Y26_N25
\licznik[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[25]~76_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(25));

-- Location: LCCOMB_X42_Y26_N26
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!licznik(24) & !licznik(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => licznik(24),
	datad => licznik(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X42_Y26_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!licznik(22) & (!licznik(21) & (!licznik(20) & !licznik(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(22),
	datab => licznik(21),
	datac => licznik(20),
	datad => licznik(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X42_Y27_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!licznik(7) & (!licznik(6) & (!licznik(4) & !licznik(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(7),
	datab => licznik(6),
	datac => licznik(4),
	datad => licznik(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X43_Y26_N30
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!licznik(13) & (!licznik(15) & (!licznik(12) & !licznik(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(13),
	datab => licznik(15),
	datac => licznik(12),
	datad => licznik(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X42_Y27_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!licznik(8) & (!licznik(11) & (!licznik(10) & !licznik(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(8),
	datab => licznik(11),
	datac => licznik(10),
	datad => licznik(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X42_Y27_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!licznik(3) & (!licznik(1) & (!licznik(2) & !licznik(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(3),
	datab => licznik(1),
	datac => licznik(2),
	datad => licznik(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X43_Y26_N14
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X43_Y30_N2
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)) # (!\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: FF_X42_Y27_N7
\licznik[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[0]~26_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(0));

-- Location: LCCOMB_X42_Y27_N8
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

-- Location: FF_X42_Y27_N9
\licznik[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[1]~28_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(1));

-- Location: LCCOMB_X42_Y27_N10
\licznik[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[2]~30_combout\ = (licznik(2) & (\licznik[1]~29\ $ (GND))) # (!licznik(2) & (!\licznik[1]~29\ & VCC))
-- \licznik[2]~31\ = CARRY((licznik(2) & !\licznik[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(2),
	datad => VCC,
	cin => \licznik[1]~29\,
	combout => \licznik[2]~30_combout\,
	cout => \licznik[2]~31\);

-- Location: FF_X42_Y27_N11
\licznik[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[2]~30_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(2));

-- Location: LCCOMB_X42_Y27_N12
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

-- Location: FF_X42_Y27_N13
\licznik[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[3]~32_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(3));

-- Location: LCCOMB_X42_Y27_N14
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

-- Location: FF_X42_Y27_N15
\licznik[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[4]~34_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(4));

-- Location: LCCOMB_X42_Y27_N16
\licznik[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[5]~36_combout\ = (licznik(5) & (!\licznik[4]~35\)) # (!licznik(5) & ((\licznik[4]~35\) # (GND)))
-- \licznik[5]~37\ = CARRY((!\licznik[4]~35\) # (!licznik(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => licznik(5),
	datad => VCC,
	cin => \licznik[4]~35\,
	combout => \licznik[5]~36_combout\,
	cout => \licznik[5]~37\);

-- Location: FF_X42_Y27_N17
\licznik[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[5]~36_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(5));

-- Location: LCCOMB_X42_Y27_N18
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

-- Location: FF_X42_Y27_N19
\licznik[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[6]~38_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(6));

-- Location: LCCOMB_X42_Y27_N20
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

-- Location: FF_X42_Y27_N21
\licznik[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[7]~40_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(7));

-- Location: LCCOMB_X42_Y27_N22
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

-- Location: FF_X42_Y27_N23
\licznik[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[8]~42_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(8));

-- Location: LCCOMB_X42_Y27_N24
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

-- Location: FF_X42_Y27_N25
\licznik[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[9]~44_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(9));

-- Location: LCCOMB_X42_Y27_N26
\licznik[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \licznik[10]~46_combout\ = (licznik(10) & (\licznik[9]~45\ $ (GND))) # (!licznik(10) & (!\licznik[9]~45\ & VCC))
-- \licznik[10]~47\ = CARRY((licznik(10) & !\licznik[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => licznik(10),
	datad => VCC,
	cin => \licznik[9]~45\,
	combout => \licznik[10]~46_combout\,
	cout => \licznik[10]~47\);

-- Location: FF_X42_Y27_N27
\licznik[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[10]~46_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(10));

-- Location: LCCOMB_X42_Y27_N28
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

-- Location: FF_X42_Y27_N29
\licznik[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[11]~48_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(11));

-- Location: LCCOMB_X42_Y27_N30
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

-- Location: FF_X42_Y27_N31
\licznik[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[12]~50_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(12));

-- Location: LCCOMB_X42_Y26_N0
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

-- Location: FF_X42_Y26_N1
\licznik[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[13]~52_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(13));

-- Location: LCCOMB_X42_Y26_N2
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

-- Location: FF_X42_Y26_N3
\licznik[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[14]~54_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(14));

-- Location: LCCOMB_X42_Y26_N4
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

-- Location: FF_X42_Y26_N5
\licznik[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[15]~56_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(15));

-- Location: LCCOMB_X42_Y26_N6
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

-- Location: FF_X42_Y26_N7
\licznik[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[16]~58_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(16));

-- Location: LCCOMB_X42_Y26_N8
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

-- Location: FF_X42_Y26_N9
\licznik[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[17]~60_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(17));

-- Location: FF_X42_Y26_N11
\licznik[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \licznik[18]~62_combout\,
	sclr => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => licznik(18));

-- Location: LCCOMB_X42_Y26_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!licznik(18) & (!licznik(17) & (!licznik(16) & !licznik(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => licznik(18),
	datab => licznik(17),
	datac => licznik(16),
	datad => licznik(19),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X43_Y26_N16
\POSY[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[1]~3_combout\ = (((licznik(25)) # (licznik(24))) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => licznik(25),
	datad => licznik(24),
	combout => \POSY[1]~3_combout\);

-- Location: LCCOMB_X44_Y26_N0
\POSY[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSY[1]~2_combout\ = (\LessThan4~2_combout\) # (\POSY[1]~2_combout\ $ (((!\POSY[1]~3_combout\ & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~3_combout\,
	datab => \LessThan4~2_combout\,
	datac => \Equal0~4_combout\,
	datad => \POSY[1]~2_combout\,
	combout => \POSY[1]~2_combout\);

-- Location: LCCOMB_X45_Y26_N4
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (POSY(2) & (\POSY[1]~2_combout\ $ (VCC))) # (!POSY(2) & (\POSY[1]~2_combout\ & VCC))
-- \Add2~1\ = CARRY((POSY(2) & \POSY[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \POSY[1]~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X44_Y26_N28
\POSY[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(2) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(2)))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add2~0_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => POSY(2),
	combout => POSY(2));

-- Location: LCCOMB_X45_Y26_N6
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

-- Location: LCCOMB_X44_Y26_N6
\POSY[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(3) = (\LessThan4~2_combout\) # ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(3)))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add2~2_combout\,
	datac => POSY(3),
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(3));

-- Location: LCCOMB_X45_Y26_N8
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (POSY(4) & (\Add2~3\ $ (GND))) # (!POSY(4) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((POSY(4) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X44_Y26_N8
\POSY[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(4) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(4))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => POSY(4),
	datac => \Add2~4_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(4));

-- Location: LCCOMB_X45_Y26_N10
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

-- Location: LCCOMB_X44_Y26_N22
\POSY[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(5) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(5))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => POSY(5),
	datac => \Add2~6_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(5));

-- Location: LCCOMB_X45_Y26_N12
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

-- Location: LCCOMB_X44_Y26_N4
\POSY[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(6) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(6))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => POSY(6),
	datac => \Add2~8_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(6));

-- Location: LCCOMB_X45_Y26_N14
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

-- Location: LCCOMB_X44_Y26_N26
\POSY[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(7) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(7)))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add2~10_combout\,
	datac => POSY(7),
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(7));

-- Location: LCCOMB_X44_Y26_N18
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (POSY(5)) # ((POSY(2)) # ((POSY(4)) # (POSY(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => POSY(2),
	datac => POSY(4),
	datad => POSY(3),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X44_Y26_N24
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (POSY(7)) # ((\POSY[1]~2_combout\) # ((POSY(6)) # (\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \POSY[1]~2_combout\,
	datac => POSY(6),
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X45_Y26_N16
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (POSY(8) & (\Add2~11\ $ (GND))) # (!POSY(8) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((POSY(8) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(8),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X44_Y26_N12
\POSY[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(8) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSY(8))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => \LessThan4~2_combout\,
	datac => \Add2~12_combout\,
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(8));

-- Location: LCCOMB_X44_Y26_N2
\LessThan4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (POSY(10) & ((POSY(9)) # ((\LessThan4~1_combout\ & POSY(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(10),
	datab => \LessThan4~1_combout\,
	datac => POSY(9),
	datad => POSY(8),
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X45_Y26_N18
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (POSY(9) & (!\Add2~13\)) # (!POSY(9) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!POSY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(9),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X44_Y26_N14
\POSY[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(9) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(9)))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \Add2~14_combout\,
	datac => POSY(9),
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(9));

-- Location: LCCOMB_X45_Y26_N20
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (!POSY(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => POSY(10),
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X44_Y26_N30
\POSY[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSY(10) = (!\LessThan4~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & ((POSY(10)))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & (\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \LessThan4~2_combout\,
	datac => POSY(10),
	datad => \Equal0~8clkctrl_outclk\,
	combout => POSY(10));

-- Location: LCCOMB_X45_Y27_N8
\C1|Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~0_combout\ = (POSY(2) & (POSY(3) $ (VCC))) # (!POSY(2) & (POSY(3) & VCC))
-- \C1|Add5~1\ = CARRY((POSY(2) & POSY(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => POSY(3),
	datad => VCC,
	combout => \C1|Add5~0_combout\,
	cout => \C1|Add5~1\);

-- Location: LCCOMB_X45_Y27_N10
\C1|Add5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (POSY(4) & (!\C1|Add5~1\)) # (!POSY(4) & ((\C1|Add5~1\) # (GND)))
-- \C1|Add5~3\ = CARRY((!\C1|Add5~1\) # (!POSY(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(4),
	datad => VCC,
	cin => \C1|Add5~1\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X45_Y27_N12
\C1|Add5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (POSY(5) & ((GND) # (!\C1|Add5~3\))) # (!POSY(5) & (\C1|Add5~3\ $ (GND)))
-- \C1|Add5~5\ = CARRY((POSY(5)) # (!\C1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X45_Y27_N14
\C1|Add5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (POSY(6) & (\C1|Add5~5\ & VCC)) # (!POSY(6) & (!\C1|Add5~5\))
-- \C1|Add5~7\ = CARRY((!POSY(6) & !\C1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(6),
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X45_Y27_N16
\C1|Add5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (POSY(7) & (\C1|Add5~7\ $ (GND))) # (!POSY(7) & (!\C1|Add5~7\ & VCC))
-- \C1|Add5~9\ = CARRY((POSY(7) & !\C1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X45_Y27_N18
\C1|Add5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (POSY(8) & (!\C1|Add5~9\)) # (!POSY(8) & ((\C1|Add5~9\) # (GND)))
-- \C1|Add5~11\ = CARRY((!\C1|Add5~9\) # (!POSY(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X45_Y27_N20
\C1|Add5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~12_combout\ = (POSY(9) & (\C1|Add5~11\ $ (GND))) # (!POSY(9) & (!\C1|Add5~11\ & VCC))
-- \C1|Add5~13\ = CARRY((POSY(9) & !\C1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(9),
	datad => VCC,
	cin => \C1|Add5~11\,
	combout => \C1|Add5~12_combout\,
	cout => \C1|Add5~13\);

-- Location: LCCOMB_X45_Y27_N22
\C1|Add5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~14_combout\ = (POSY(10) & (!\C1|Add5~13\)) # (!POSY(10) & ((\C1|Add5~13\) # (GND)))
-- \C1|Add5~15\ = CARRY((!\C1|Add5~13\) # (!POSY(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	datad => VCC,
	cin => \C1|Add5~13\,
	combout => \C1|Add5~14_combout\,
	cout => \C1|Add5~15\);

-- Location: LCCOMB_X45_Y27_N24
\C1|Add5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add5~16_combout\ = !\C1|Add5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add5~15\,
	combout => \C1|Add5~16_combout\);

-- Location: LCCOMB_X44_Y27_N0
\C1|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((!\C1|VPOS\(1) & \POSY[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \POSY[1]~2_combout\,
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X44_Y27_N2
\C1|LessThan7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((POSY(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan7~1_cout\))) # (!POSY(2) & (\C1|VPOS\(2) & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X44_Y27_N4
\C1|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|VPOS\(3) & (\C1|Add5~0_combout\ & !\C1|LessThan7~3_cout\)) # (!\C1|VPOS\(3) & ((\C1|Add5~0_combout\) # (!\C1|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add5~0_combout\,
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X44_Y27_N6
\C1|LessThan7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan7~5_cout\) # (!\C1|Add5~2_combout\))) # (!\C1|VPOS\(4) & (!\C1|Add5~2_combout\ & !\C1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add5~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X44_Y27_N8
\C1|LessThan7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|VPOS\(5) & (\C1|Add5~4_combout\ & !\C1|LessThan7~7_cout\)) # (!\C1|VPOS\(5) & ((\C1|Add5~4_combout\) # (!\C1|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add5~4_combout\,
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X44_Y27_N10
\C1|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan7~9_cout\) # (!\C1|Add5~6_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add5~6_combout\ & !\C1|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add5~6_combout\,
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X44_Y27_N12
\C1|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|VPOS\(7) & (\C1|Add5~8_combout\ & !\C1|LessThan7~11_cout\)) # (!\C1|VPOS\(7) & ((\C1|Add5~8_combout\) # (!\C1|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add5~8_combout\,
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X44_Y27_N14
\C1|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan7~13_cout\) # (!\C1|Add5~10_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add5~10_combout\ & !\C1|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add5~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X44_Y27_N16
\C1|LessThan7~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan7~16_combout\ = (\C1|VPOS\(9) & (!\C1|LessThan7~15_cout\ & \C1|Add5~12_combout\)) # (!\C1|VPOS\(9) & ((\C1|Add5~12_combout\) # (!\C1|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C1|Add5~12_combout\,
	cin => \C1|LessThan7~15_cout\,
	combout => \C1|LessThan7~16_combout\);

-- Location: LCCOMB_X44_Y27_N28
\C2|G2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~2_combout\ = (!POSY(10) & ((\C1|Add5~16_combout\) # ((\C1|Add5~14_combout\) # (\C1|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(10),
	datab => \C1|Add5~16_combout\,
	datac => \C1|Add5~14_combout\,
	datad => \C1|LessThan7~16_combout\,
	combout => \C2|G2~2_combout\);

-- Location: LCCOMB_X43_Y27_N10
\C1|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~1_cout\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan6~1_cout\);

-- Location: LCCOMB_X43_Y27_N12
\C1|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|VPOS\(1) & (\POSY[1]~2_combout\ & !\C1|LessThan6~1_cout\)) # (!\C1|VPOS\(1) & ((\POSY[1]~2_combout\) # (!\C1|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \POSY[1]~2_combout\,
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X43_Y27_N14
\C1|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan6~3_cout\) # (!POSY(2)))) # (!\C1|VPOS\(2) & (!POSY(2) & !\C1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => POSY(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X43_Y27_N16
\C1|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((\C1|VPOS\(3) & (POSY(3) & !\C1|LessThan6~5_cout\)) # (!\C1|VPOS\(3) & ((POSY(3)) # (!\C1|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => POSY(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X43_Y27_N18
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

-- Location: LCCOMB_X43_Y27_N20
\C1|LessThan6~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan6~11_cout\ = CARRY((POSY(5) & ((!\C1|LessThan6~9_cout\) # (!\C1|VPOS\(5)))) # (!POSY(5) & (!\C1|VPOS\(5) & !\C1|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan6~9_cout\,
	cout => \C1|LessThan6~11_cout\);

-- Location: LCCOMB_X43_Y27_N22
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

-- Location: LCCOMB_X43_Y27_N24
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

-- Location: LCCOMB_X43_Y27_N26
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

-- Location: LCCOMB_X43_Y27_N28
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

-- Location: LCCOMB_X43_Y30_N14
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

-- Location: LCCOMB_X43_Y30_N16
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (POSX(4) & (\Add1~3\ $ (GND))) # (!POSX(4) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((POSX(4) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(4),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X42_Y30_N28
\POSX[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(4) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(4))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(4),
	datac => \Add1~4_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(4));

-- Location: LCCOMB_X43_Y30_N18
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

-- Location: LCCOMB_X42_Y30_N30
\POSX[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(5) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(5))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datab => \Add1~6_combout\,
	datac => \Equal0~8clkctrl_outclk\,
	datad => \LessThan2~2_combout\,
	combout => POSX(5));

-- Location: LCCOMB_X43_Y30_N20
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (POSX(6) & (\Add1~7\ $ (GND))) # (!POSX(6) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((POSX(6) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X43_Y30_N0
\POSX[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(6) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(6))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(6),
	datac => \Add1~8_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(6));

-- Location: LCCOMB_X43_Y30_N22
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (POSX(7) & (!\Add1~9\)) # (!POSX(7) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!POSX(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X43_Y30_N28
\POSX[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(7) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(7))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(7),
	datac => \Add1~10_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(7));

-- Location: LCCOMB_X43_Y30_N8
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (POSX(8) & (POSX(6) & (POSX(9) & POSX(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datab => POSX(6),
	datac => POSX(9),
	datad => POSX(7),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y30_N30
\POSX[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \POSX[1]~0_combout\ = (\POSX[1]~0_combout\ & (((\LessThan2~0_combout\) # (\Equal0~8_combout\)))) # (!\POSX[1]~0_combout\ & (((\LessThan2~1_combout\ & \LessThan2~0_combout\)) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \POSX[1]~0_combout\);

-- Location: LCCOMB_X43_Y30_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\POSX[1]~0_combout\ & (POSX(2) $ (VCC))) # (!\POSX[1]~0_combout\ & (POSX(2) & VCC))
-- \Add1~1\ = CARRY((\POSX[1]~0_combout\ & POSX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => POSX(2),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X42_Y30_N24
\POSX[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(2) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(2))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(2),
	datac => \Add1~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(2));

-- Location: LCCOMB_X42_Y30_N22
\POSX[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(3) = (\LessThan2~2_combout\) # ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(3))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(3),
	datac => \Add1~2_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(3));

-- Location: LCCOMB_X42_Y30_N20
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (POSX(3)) # ((POSX(4)) # ((POSX(5)) # (POSX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => POSX(4),
	datac => POSX(5),
	datad => POSX(2),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X43_Y30_N6
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

-- Location: LCCOMB_X43_Y30_N24
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (POSX(8) & (\Add1~11\ $ (GND))) # (!POSX(8) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((POSX(8) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(8),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X43_Y30_N10
\POSX[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(8) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(8))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(8),
	datac => \LessThan2~2_combout\,
	datad => \Add1~12_combout\,
	combout => POSX(8));

-- Location: LCCOMB_X43_Y30_N26
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = POSX(9) $ (\Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(9),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X43_Y30_N4
\POSX[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- POSX(9) = (!\LessThan2~2_combout\ & ((GLOBAL(\Equal0~8clkctrl_outclk\) & (POSX(9))) # (!GLOBAL(\Equal0~8clkctrl_outclk\) & ((\Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8clkctrl_outclk\,
	datab => POSX(9),
	datac => \Add1~14_combout\,
	datad => \LessThan2~2_combout\,
	combout => POSX(9));

-- Location: LCCOMB_X44_Y30_N12
\C1|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~0_combout\ = (POSX(3) & (POSX(2) $ (VCC))) # (!POSX(3) & (POSX(2) & VCC))
-- \C1|Add4~1\ = CARRY((POSX(3) & POSX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => POSX(2),
	datad => VCC,
	combout => \C1|Add4~0_combout\,
	cout => \C1|Add4~1\);

-- Location: LCCOMB_X44_Y30_N14
\C1|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~2_combout\ = (POSX(4) & (!\C1|Add4~1\)) # (!POSX(4) & ((\C1|Add4~1\) # (GND)))
-- \C1|Add4~3\ = CARRY((!\C1|Add4~1\) # (!POSX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(4),
	datad => VCC,
	cin => \C1|Add4~1\,
	combout => \C1|Add4~2_combout\,
	cout => \C1|Add4~3\);

-- Location: LCCOMB_X44_Y30_N16
\C1|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~4_combout\ = (POSX(5) & ((GND) # (!\C1|Add4~3\))) # (!POSX(5) & (\C1|Add4~3\ $ (GND)))
-- \C1|Add4~5\ = CARRY((POSX(5)) # (!\C1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datad => VCC,
	cin => \C1|Add4~3\,
	combout => \C1|Add4~4_combout\,
	cout => \C1|Add4~5\);

-- Location: LCCOMB_X44_Y30_N18
\C1|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~6_combout\ = (POSX(6) & (\C1|Add4~5\ & VCC)) # (!POSX(6) & (!\C1|Add4~5\))
-- \C1|Add4~7\ = CARRY((!POSX(6) & !\C1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datad => VCC,
	cin => \C1|Add4~5\,
	combout => \C1|Add4~6_combout\,
	cout => \C1|Add4~7\);

-- Location: LCCOMB_X44_Y30_N20
\C1|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~8_combout\ = (POSX(7) & (\C1|Add4~7\ $ (GND))) # (!POSX(7) & (!\C1|Add4~7\ & VCC))
-- \C1|Add4~9\ = CARRY((POSX(7) & !\C1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(7),
	datad => VCC,
	cin => \C1|Add4~7\,
	combout => \C1|Add4~8_combout\,
	cout => \C1|Add4~9\);

-- Location: LCCOMB_X44_Y30_N22
\C1|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~10_combout\ = (POSX(8) & (!\C1|Add4~9\)) # (!POSX(8) & ((\C1|Add4~9\) # (GND)))
-- \C1|Add4~11\ = CARRY((!\C1|Add4~9\) # (!POSX(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(8),
	datad => VCC,
	cin => \C1|Add4~9\,
	combout => \C1|Add4~10_combout\,
	cout => \C1|Add4~11\);

-- Location: LCCOMB_X44_Y30_N24
\C1|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~12_combout\ = (POSX(9) & (\C1|Add4~11\ $ (GND))) # (!POSX(9) & (!\C1|Add4~11\ & VCC))
-- \C1|Add4~13\ = CARRY((POSX(9) & !\C1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(9),
	datad => VCC,
	cin => \C1|Add4~11\,
	combout => \C1|Add4~12_combout\,
	cout => \C1|Add4~13\);

-- Location: LCCOMB_X45_Y30_N6
\C1|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((\POSX[1]~0_combout\ & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X45_Y30_N8
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

-- Location: LCCOMB_X45_Y30_N10
\C1|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|Add4~0_combout\ & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(3)))) # (!\C1|Add4~0_combout\ & (!\C1|HPOS\(3) & !\C1|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X45_Y30_N12
\C1|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add4~2_combout\ & (\C1|HPOS\(4) & !\C1|LessThan5~5_cout\)) # (!\C1|Add4~2_combout\ & ((\C1|HPOS\(4)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~2_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X45_Y30_N14
\C1|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|Add4~4_combout\ & ((!\C1|LessThan5~7_cout\) # (!\C1|HPOS\(5)))) # (!\C1|Add4~4_combout\ & (!\C1|HPOS\(5) & !\C1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~4_combout\,
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X45_Y30_N16
\C1|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add4~6_combout\))) # (!\C1|HPOS\(6) & (!\C1|Add4~6_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add4~6_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X45_Y30_N18
\C1|LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|HPOS\(7) & (\C1|Add4~8_combout\ & !\C1|LessThan5~11_cout\)) # (!\C1|HPOS\(7) & ((\C1|Add4~8_combout\) # (!\C1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|Add4~8_combout\,
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X45_Y30_N20
\C1|LessThan5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan5~13_cout\) # (!\C1|Add4~10_combout\))) # (!\C1|HPOS\(8) & (!\C1|Add4~10_combout\ & !\C1|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add4~10_combout\,
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X45_Y30_N22
\C1|LessThan5~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan5~16_combout\ = (\C1|HPOS\(9) & (!\C1|LessThan5~15_cout\ & \C1|Add4~12_combout\)) # (!\C1|HPOS\(9) & ((\C1|Add4~12_combout\) # (!\C1|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => \C1|Add4~12_combout\,
	cin => \C1|LessThan5~15_cout\,
	combout => \C1|LessThan5~16_combout\);

-- Location: LCCOMB_X46_Y30_N12
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

-- Location: LCCOMB_X46_Y30_N14
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

-- Location: LCCOMB_X46_Y30_N16
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

-- Location: LCCOMB_X46_Y30_N18
\C1|LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|HPOS\(3) & (POSX(3) & !\C1|LessThan4~5_cout\)) # (!\C1|HPOS\(3) & ((POSX(3)) # (!\C1|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => POSX(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X46_Y30_N20
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

-- Location: LCCOMB_X46_Y30_N22
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

-- Location: LCCOMB_X46_Y30_N24
\C1|LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((POSX(6) & (\C1|HPOS\(6) & !\C1|LessThan4~11_cout\)) # (!POSX(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X46_Y30_N26
\C1|LessThan4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|HPOS\(7) & (POSX(7) & !\C1|LessThan4~13_cout\)) # (!\C1|HPOS\(7) & ((POSX(7)) # (!\C1|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => POSX(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X46_Y30_N28
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

-- Location: LCCOMB_X46_Y30_N30
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

-- Location: LCCOMB_X44_Y30_N26
\C1|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add4~14_combout\ = \C1|Add4~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add4~13\,
	combout => \C1|Add4~14_combout\);

-- Location: LCCOMB_X45_Y30_N28
\C3|g3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~0_combout\ = (\C1|LessThan4~18_combout\ & ((\C1|LessThan5~16_combout\) # (\C1|Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan5~16_combout\,
	datac => \C1|LessThan4~18_combout\,
	datad => \C1|Add4~14_combout\,
	combout => \C3|g3~0_combout\);

-- Location: LCCOMB_X44_Y27_N18
\C1|g[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g[0]~2_combout\ = (\SW[0]~input_o\ & (((!\C3|g3~0_combout\) # (!\C1|LessThan6~18_combout\)) # (!\C2|G2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C2|G2~2_combout\,
	datac => \C1|LessThan6~18_combout\,
	datad => \C3|g3~0_combout\,
	combout => \C1|g[0]~2_combout\);

-- Location: LCCOMB_X44_Y27_N26
\C1|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[5]~5_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|R~0_combout\);

-- Location: FF_X44_Y27_N27
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: M9K_X73_Y31_N0
\c0|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	mem_init2 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	mem_init0 => X"F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X73_Y33_N0
\c0|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init1 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	mem_init0 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X49_Y29_N0
\c0|altsyncram_component|auto_generated|mux2|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\);

-- Location: LCCOMB_X44_Y27_N20
\C1|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[6]~6_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|R~1_combout\);

-- Location: FF_X44_Y27_N21
\C1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(1));

-- Location: M9K_X53_Y33_N0
\c0|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X53_Y36_N0
\c0|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init1 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X54_Y32_N16
\c0|altsyncram_component|auto_generated|mux2|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \c0|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\);

-- Location: LCCOMB_X44_Y27_N22
\C1|R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R~2_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[7]~7_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|R~2_combout\);

-- Location: FF_X44_Y27_N23
\C1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(2));

-- Location: M9K_X53_Y34_N0
\c0|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF100000000000000000000000000008FC0000000000000000000000000000003DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9",
	mem_init2 => X"9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9",
	mem_init1 => X"9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF980000000000000000000000000000003F040000000000000000000000000000FEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF4800000000000000000000000000027F000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y35_N0
\c0|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000F",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init0 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000000000000020000000000000000000000000000000002000000000000000000000000000020",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X52_Y31_N4
\c0|altsyncram_component|auto_generated|mux2|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\)) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\);

-- Location: LCCOMB_X44_Y27_N24
\C1|g~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~3_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[2]~2_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|g~3_combout\);

-- Location: FF_X44_Y27_N25
\C1|g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(0));

-- Location: M9K_X53_Y30_N0
\c0|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X73_Y30_N0
\c0|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init1 => X"1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X47_Y30_N16
\c0|altsyncram_component|auto_generated|mux2|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \c0|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\);

-- Location: LCCOMB_X43_Y27_N0
\C1|g~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~4_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[3]~3_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|g~4_combout\);

-- Location: FF_X43_Y27_N1
\C1|g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(1));

-- Location: M9K_X53_Y29_N0
\c0|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X53_Y28_N0
\c0|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: LCCOMB_X49_Y29_N22
\c0|altsyncram_component|auto_generated|mux2|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\)) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \c0|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \c0|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\);

-- Location: LCCOMB_X43_Y27_N6
\C1|g~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|g~5_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[4]~4_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|g~5_combout\);

-- Location: FF_X43_Y27_N7
\C1|g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|g~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|g\(2));

-- Location: LCCOMB_X45_Y30_N30
\C2|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan0~0_combout\ = (\C1|HPOS\(6) & (\C1|HPOS\(7) & (\C1|HPOS\(5) & \C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C2|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y28_N10
\C2|R2[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[2]~8_combout\ = (!\C1|HPOS\(9) & (!\C2|LessThan0~0_combout\ & !\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C2|LessThan0~0_combout\,
	datad => \C1|HPOS\(8),
	combout => \C2|R2[2]~8_combout\);

-- Location: LCCOMB_X44_Y31_N10
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

-- Location: LCCOMB_X44_Y31_N12
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ = (\C1|VPOS\(7) & (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\)) # (!\C1|VPOS\(7) & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # 
-- (GND)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\);

-- Location: LCCOMB_X44_Y31_N14
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ = (\C1|VPOS\(8) & (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ $ (GND))) # (!\C1|VPOS\(8) & 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & VCC))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ = CARRY((\C1|VPOS\(8) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\);

-- Location: LCCOMB_X44_Y31_N16
\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ = (\C1|VPOS\(9) & (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\)) # (!\C1|VPOS\(9) & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # 
-- (GND)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LCCOMB_X44_Y31_N18
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

-- Location: LCCOMB_X44_Y31_N6
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

-- Location: LCCOMB_X44_Y31_N28
\C2|Div0|auto_generated|divider|divider|StageOut[38]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X43_Y31_N30
\C2|Div0|auto_generated|divider|divider|StageOut[37]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\);

-- Location: LCCOMB_X43_Y31_N24
\C2|Div0|auto_generated|divider|divider|StageOut[37]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ = (\C1|VPOS\(6) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(6),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\);

-- Location: LCCOMB_X43_Y31_N26
\C2|Div0|auto_generated|divider|divider|StageOut[36]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\ = (\C1|VPOS\(5) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[36]~67_combout\);

-- Location: LCCOMB_X43_Y31_N4
\C2|Div0|auto_generated|divider|divider|StageOut[36]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\ = (\C1|VPOS\(5) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[36]~66_combout\);

-- Location: LCCOMB_X43_Y31_N6
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

-- Location: LCCOMB_X43_Y31_N8
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[37]~65_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[37]~64_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X43_Y31_N10
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

-- Location: LCCOMB_X44_Y31_N4
\C2|Div0|auto_generated|divider|divider|StageOut[40]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\);

-- Location: LCCOMB_X43_Y31_N2
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

-- Location: LCCOMB_X44_Y31_N2
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

-- Location: LCCOMB_X44_Y31_N0
\C2|Div0|auto_generated|divider|divider|StageOut[39]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\);

-- Location: LCCOMB_X43_Y31_N12
\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[39]~61_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X43_Y31_N14
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

-- Location: LCCOMB_X43_Y31_N16
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

-- Location: LCCOMB_X44_Y31_N8
\C2|Div0|auto_generated|divider|divider|StageOut[46]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C1|VPOS\(7)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datab => \C1|VPOS\(7),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\);

-- Location: LCCOMB_X44_Y31_N22
\C2|Div0|auto_generated|divider|divider|StageOut[47]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C1|VPOS\(8))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \C1|VPOS\(8),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\);

-- Location: LCCOMB_X43_Y31_N28
\C2|Div0|auto_generated|divider|divider|StageOut[47]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\);

-- Location: LCCOMB_X43_Y32_N6
\C2|Div0|auto_generated|divider|divider|StageOut[46]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[46]~69_combout\);

-- Location: LCCOMB_X43_Y31_N18
\C2|Div0|auto_generated|divider|divider|StageOut[45]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[45]~70_combout\);

-- Location: LCCOMB_X43_Y31_N22
\C2|Div0|auto_generated|divider|divider|StageOut[45]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\C1|VPOS\(6))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\);

-- Location: LCCOMB_X43_Y32_N12
\C2|Div0|auto_generated|divider|divider|StageOut[44]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ = (\C1|VPOS\(5) & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\);

-- Location: LCCOMB_X43_Y32_N2
\C2|Div0|auto_generated|divider|divider|StageOut[44]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\);

-- Location: LCCOMB_X44_Y31_N24
\C2|Div0|auto_generated|divider|divider|StageOut[43]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C1|VPOS\(4),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\);

-- Location: LCCOMB_X44_Y31_N20
\C2|Div0|auto_generated|divider|divider|StageOut[35]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\ = (\C1|VPOS\(4) & !\C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[35]~75_combout\);

-- Location: LCCOMB_X44_Y31_N26
\C2|Div0|auto_generated|divider|divider|StageOut[35]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\ = (\C1|VPOS\(4) & \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[35]~74_combout\);

-- Location: LCCOMB_X43_Y31_N20
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

-- Location: LCCOMB_X43_Y31_N0
\C2|Div0|auto_generated|divider|divider|StageOut[43]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\);

-- Location: LCCOMB_X43_Y32_N14
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\)))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[43]~76_combout\,
	datad => VCC,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X43_Y32_N16
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[44]~71_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[44]~72_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X43_Y32_N18
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

-- Location: LCCOMB_X43_Y32_N20
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

-- Location: LCCOMB_X43_Y32_N22
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[47]~98_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[47]~68_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X43_Y32_N24
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

-- Location: LCCOMB_X43_Y32_N10
\C2|Div0|auto_generated|divider|divider|StageOut[54]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[46]~99_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[54]~93_combout\);

-- Location: LCCOMB_X43_Y32_N28
\C2|Div0|auto_generated|divider|divider|StageOut[54]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[54]~77_combout\);

-- Location: LCCOMB_X44_Y32_N4
\C2|Div0|auto_generated|divider|divider|StageOut[53]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\);

-- Location: LCCOMB_X43_Y32_N4
\C2|Div0|auto_generated|divider|divider|StageOut[53]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[45]~100_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\);

-- Location: LCCOMB_X44_Y32_N10
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

-- Location: LCCOMB_X43_Y32_N30
\C2|Div0|auto_generated|divider|divider|StageOut[52]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\C1|VPOS\(5))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\);

-- Location: LCCOMB_X44_Y32_N12
\C2|Div0|auto_generated|divider|divider|StageOut[51]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\);

-- Location: LCCOMB_X44_Y31_N30
\C2|Div0|auto_generated|divider|divider|StageOut[51]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\C1|VPOS\(4))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\);

-- Location: LCCOMB_X44_Y32_N30
\C2|Div0|auto_generated|divider|divider|StageOut[50]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[50]~81_combout\);

-- Location: LCCOMB_X43_Y32_N26
\C2|Div0|auto_generated|divider|divider|StageOut[42]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\);

-- Location: LCCOMB_X43_Y32_N0
\C2|Div0|auto_generated|divider|divider|StageOut[42]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \C1|VPOS\(3),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\);

-- Location: LCCOMB_X43_Y32_N8
\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[42]~82_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[42]~83_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\);

-- Location: LCCOMB_X44_Y32_N28
\C2|Div0|auto_generated|divider|divider|StageOut[50]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[50]~84_combout\);

-- Location: LCCOMB_X44_Y32_N16
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

-- Location: LCCOMB_X44_Y32_N18
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

-- Location: LCCOMB_X44_Y32_N20
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & (((\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\)))) # (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[52]~79_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X44_Y32_N22
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & (((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[53]~78_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X44_Y32_N24
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

-- Location: LCCOMB_X44_Y32_N26
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

-- Location: LCCOMB_X45_Y32_N22
\C2|Div0|auto_generated|divider|divider|StageOut[61]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\);

-- Location: LCCOMB_X44_Y32_N6
\C2|Div0|auto_generated|divider|divider|StageOut[61]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\) # 
-- ((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[53]~94_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\);

-- Location: LCCOMB_X44_Y32_N0
\C2|Div0|auto_generated|divider|divider|StageOut[60]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[52]~101_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[60]~96_combout\);

-- Location: LCCOMB_X45_Y32_N4
\C2|Div0|auto_generated|divider|divider|StageOut[60]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[60]~86_combout\);

-- Location: LCCOMB_X44_Y32_N14
\C2|Div0|auto_generated|divider|divider|StageOut[59]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\) # 
-- ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[51]~102_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\);

-- Location: LCCOMB_X45_Y32_N2
\C2|Div0|auto_generated|divider|divider|StageOut[59]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X44_Y32_N8
\C2|Div0|auto_generated|divider|divider|StageOut[58]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & (\C1|VPOS\(3))) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & ((\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|VPOS\(3),
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~12_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\);

-- Location: LCCOMB_X45_Y32_N20
\C2|Div0|auto_generated|divider|divider|StageOut[58]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X45_Y32_N30
\C2|Div0|auto_generated|divider|divider|StageOut[57]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ = (\C1|VPOS\(2) & \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\);

-- Location: LCCOMB_X45_Y32_N26
\C2|Div0|auto_generated|divider|divider|StageOut[49]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|VPOS\(2),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\);

-- Location: LCCOMB_X45_Y32_N28
\C2|Div0|auto_generated|divider|divider|StageOut[49]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\ = (\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|VPOS\(2),
	combout => \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\);

-- Location: LCCOMB_X45_Y32_N0
\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\ = (\C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div0|auto_generated|divider|divider|StageOut[49]~91_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|StageOut[49]~90_combout\,
	combout => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~12_combout\);

-- Location: LCCOMB_X45_Y32_N24
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

-- Location: LCCOMB_X45_Y32_N6
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\) # (\C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[57]~92_combout\,
	datad => VCC,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X45_Y32_N8
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY(((!\C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\ & !\C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\)) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[58]~103_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X45_Y32_N10
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ & ((\C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\) # 
-- (\C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[59]~97_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X45_Y32_N12
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

-- Location: LCCOMB_X45_Y32_N14
\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((\C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\) # ((\C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\) # 
-- (!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|StageOut[61]~85_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|StageOut[61]~95_combout\,
	datad => VCC,
	cin => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X45_Y32_N16
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

-- Location: LCCOMB_X42_Y28_N24
\C2|R2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~12_combout\ = (\C2|R2[2]~8_combout\ & (!\SW[0]~input_o\ & (!\C1|process_0~12_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[2]~8_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	combout => \C2|R2~12_combout\);

-- Location: LCCOMB_X43_Y29_N28
\C2|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~3_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(0) & !\C1|HPOS\(1))) # (!\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C2|process_0~3_combout\);

-- Location: LCCOMB_X43_Y29_N30
\C2|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~4_combout\ = (!\C1|HPOS\(9) & (((\C2|process_0~3_combout\) # (!\C1|HPOS\(8))) # (!\C2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan0~0_combout\,
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(8),
	datad => \C2|process_0~3_combout\,
	combout => \C2|process_0~4_combout\);

-- Location: LCCOMB_X43_Y29_N24
\C2|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~5_combout\ = (\C2|process_0~4_combout\) # ((\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~4_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(9),
	combout => \C2|process_0~5_combout\);

-- Location: LCCOMB_X47_Y28_N30
\C2|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan1~1_combout\ = (\C2|LessThan1~0_combout\) # (\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|LessThan1~0_combout\,
	datad => \C1|VPOS\(9),
	combout => \C2|LessThan1~1_combout\);

-- Location: LCCOMB_X42_Y29_N2
\C2|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~1_combout\ = (!\C1|process_0~3_combout\ & (\C1|HPOS\(6) & (\C1|HPOS\(7) & \C1|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~3_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(5),
	combout => \C2|process_0~1_combout\);

-- Location: LCCOMB_X42_Y29_N12
\C2|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|process_0~2_combout\ = (\C1|HPOS\(8) & (((\C2|process_0~1_combout\)))) # (!\C1|HPOS\(8) & (((\C2|process_0~0_combout\)) # (!\C2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C2|LessThan0~0_combout\,
	datac => \C2|process_0~0_combout\,
	datad => \C2|process_0~1_combout\,
	combout => \C2|process_0~2_combout\);

-- Location: LCCOMB_X42_Y28_N16
\C2|R2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~10_combout\ = (!\C1|HPOS\(9) & !\C2|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => \C2|process_0~2_combout\,
	combout => \C2|R2~10_combout\);

-- Location: LCCOMB_X42_Y28_N2
\C2|R2[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[2]~11_combout\ = (\C2|R2[2]~8_combout\ & (((\C2|LessThan1~1_combout\)))) # (!\C2|R2[2]~8_combout\ & (((\C2|R2~10_combout\)) # (!\C2|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[2]~8_combout\,
	datab => \C2|process_0~5_combout\,
	datac => \C2|LessThan1~1_combout\,
	datad => \C2|R2~10_combout\,
	combout => \C2|R2[2]~11_combout\);

-- Location: LCCOMB_X42_Y28_N30
\C2|R2[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[2]~13_combout\ = (\SW[0]~input_o\) # ((\C1|process_0~12_combout\) # (!\C2|R2[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|R2[2]~11_combout\,
	combout => \C2|R2[2]~13_combout\);

-- Location: FF_X42_Y28_N25
\C2|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~12_combout\,
	ena => \C2|R2[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(0));

-- Location: LCCOMB_X42_Y28_N26
\C2|R2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~14_combout\ = (!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & (!\SW[0]~input_o\ & (!\C1|process_0~12_combout\ & \C2|R2[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|R2[2]~8_combout\,
	combout => \C2|R2~14_combout\);

-- Location: FF_X42_Y28_N27
\C2|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~14_combout\,
	ena => \C2|R2[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(1));

-- Location: LCCOMB_X42_Y28_N4
\C2|R2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2~15_combout\ = (\C2|R2[2]~8_combout\ & (!\C1|process_0~12_combout\ & (!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[2]~8_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \SW[0]~input_o\,
	combout => \C2|R2~15_combout\);

-- Location: FF_X42_Y28_N5
\C2|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|R2~15_combout\,
	ena => \C2|R2[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|R2\(2));

-- Location: LCCOMB_X42_Y28_N14
\C2|G2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~4_combout\ = (!\C1|HPOS\(9) & (!\SW[0]~input_o\ & !\C2|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \SW[0]~input_o\,
	datad => \C2|process_0~2_combout\,
	combout => \C2|G2~4_combout\);

-- Location: LCCOMB_X42_Y30_N26
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

-- Location: LCCOMB_X42_Y30_N0
\C2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~0_combout\ = (POSX(3) & (POSX(2) $ (VCC))) # (!POSX(3) & (POSX(2) & VCC))
-- \C2|Add1~1\ = CARRY((POSX(3) & POSX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => POSX(2),
	datad => VCC,
	combout => \C2|Add1~0_combout\,
	cout => \C2|Add1~1\);

-- Location: LCCOMB_X42_Y30_N2
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

-- Location: LCCOMB_X42_Y30_N4
\C2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~4_combout\ = (POSX(5) & ((GND) # (!\C2|Add1~3\))) # (!POSX(5) & (\C2|Add1~3\ $ (GND)))
-- \C2|Add1~5\ = CARRY((POSX(5)) # (!\C2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(5),
	datad => VCC,
	cin => \C2|Add1~3\,
	combout => \C2|Add1~4_combout\,
	cout => \C2|Add1~5\);

-- Location: LCCOMB_X42_Y30_N6
\C2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~6_combout\ = (POSX(6) & (\C2|Add1~5\ & VCC)) # (!POSX(6) & (!\C2|Add1~5\))
-- \C2|Add1~7\ = CARRY((!POSX(6) & !\C2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => POSX(6),
	datad => VCC,
	cin => \C2|Add1~5\,
	combout => \C2|Add1~6_combout\,
	cout => \C2|Add1~7\);

-- Location: LCCOMB_X42_Y30_N8
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

-- Location: LCCOMB_X42_Y30_N10
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

-- Location: LCCOMB_X42_Y30_N12
\C2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add1~12_combout\ = (\C2|Add1~11\ & ((\C2|Add0~2_combout\ $ (POSX(9))))) # (!\C2|Add1~11\ & (\C2|Add0~2_combout\ $ (POSX(9) $ (VCC))))
-- \C2|Add1~13\ = CARRY((!\C2|Add1~11\ & (\C2|Add0~2_combout\ $ (POSX(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add0~2_combout\,
	datab => POSX(9),
	datad => VCC,
	cin => \C2|Add1~11\,
	combout => \C2|Add1~12_combout\,
	cout => \C2|Add1~13\);

-- Location: LCCOMB_X42_Y30_N14
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

-- Location: LCCOMB_X42_Y30_N16
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

-- Location: LCCOMB_X42_Y29_N14
\C2|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~1_cout\ = CARRY((\POSX[1]~0_combout\ & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \C1|HPOS\(1),
	datad => VCC,
	cout => \C2|LessThan7~1_cout\);

-- Location: LCCOMB_X42_Y29_N16
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

-- Location: LCCOMB_X42_Y29_N18
\C2|LessThan7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~5_cout\ = CARRY((\C1|HPOS\(3) & (\C2|Add1~0_combout\ & !\C2|LessThan7~3_cout\)) # (!\C1|HPOS\(3) & ((\C2|Add1~0_combout\) # (!\C2|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C2|Add1~0_combout\,
	datad => VCC,
	cin => \C2|LessThan7~3_cout\,
	cout => \C2|LessThan7~5_cout\);

-- Location: LCCOMB_X42_Y29_N20
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

-- Location: LCCOMB_X42_Y29_N22
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

-- Location: LCCOMB_X42_Y29_N24
\C2|LessThan7~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~11_cout\ = CARRY((\C2|Add1~6_combout\ & (\C1|HPOS\(6) & !\C2|LessThan7~9_cout\)) # (!\C2|Add1~6_combout\ & ((\C1|HPOS\(6)) # (!\C2|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~6_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C2|LessThan7~9_cout\,
	cout => \C2|LessThan7~11_cout\);

-- Location: LCCOMB_X42_Y29_N26
\C2|LessThan7~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~13_cout\ = CARRY((\C1|HPOS\(7) & (\C2|Add1~8_combout\ & !\C2|LessThan7~11_cout\)) # (!\C1|HPOS\(7) & ((\C2|Add1~8_combout\) # (!\C2|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C2|Add1~8_combout\,
	datad => VCC,
	cin => \C2|LessThan7~11_cout\,
	cout => \C2|LessThan7~13_cout\);

-- Location: LCCOMB_X42_Y29_N28
\C2|LessThan7~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan7~15_cout\ = CARRY((\C1|HPOS\(8) & ((!\C2|LessThan7~13_cout\) # (!\C2|Add1~10_combout\))) # (!\C1|HPOS\(8) & (!\C2|Add1~10_combout\ & !\C2|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C2|Add1~10_combout\,
	datad => VCC,
	cin => \C2|LessThan7~13_cout\,
	cout => \C2|LessThan7~15_cout\);

-- Location: LCCOMB_X42_Y29_N30
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

-- Location: LCCOMB_X43_Y29_N22
\C2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Add0~0_combout\ = POSX(9) $ (((POSX(7)) # (POSX(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datac => POSX(7),
	datad => POSX(8),
	combout => \C2|Add0~0_combout\);

-- Location: LCCOMB_X43_Y29_N0
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

-- Location: LCCOMB_X43_Y29_N2
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

-- Location: LCCOMB_X43_Y29_N4
\C2|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~5_cout\ = CARRY((\POSX[1]~0_combout\ & ((!\C2|LessThan6~3_cout\) # (!\C1|HPOS\(1)))) # (!\POSX[1]~0_combout\ & (!\C1|HPOS\(1) & !\C2|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSX[1]~0_combout\,
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C2|LessThan6~3_cout\,
	cout => \C2|LessThan6~5_cout\);

-- Location: LCCOMB_X43_Y29_N6
\C2|LessThan6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~7_cout\ = CARRY((\C1|HPOS\(2) & ((!\C2|LessThan6~5_cout\) # (!POSX(2)))) # (!\C1|HPOS\(2) & (!POSX(2) & !\C2|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => POSX(2),
	datad => VCC,
	cin => \C2|LessThan6~5_cout\,
	cout => \C2|LessThan6~7_cout\);

-- Location: LCCOMB_X43_Y29_N8
\C2|LessThan6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~9_cout\ = CARRY((POSX(3) & ((!\C2|LessThan6~7_cout\) # (!\C1|HPOS\(3)))) # (!POSX(3) & (!\C1|HPOS\(3) & !\C2|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSX(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C2|LessThan6~7_cout\,
	cout => \C2|LessThan6~9_cout\);

-- Location: LCCOMB_X43_Y29_N10
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

-- Location: LCCOMB_X43_Y29_N12
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

-- Location: LCCOMB_X43_Y29_N14
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

-- Location: LCCOMB_X43_Y29_N16
\C2|LessThan6~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~17_cout\ = CARRY((\C1|HPOS\(7) & (!POSX(7) & !\C2|LessThan6~15_cout\)) # (!\C1|HPOS\(7) & ((!\C2|LessThan6~15_cout\) # (!POSX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => POSX(7),
	datad => VCC,
	cin => \C2|LessThan6~15_cout\,
	cout => \C2|LessThan6~17_cout\);

-- Location: LCCOMB_X43_Y29_N18
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

-- Location: LCCOMB_X43_Y29_N20
\C2|LessThan6~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~20_combout\ = (\C2|Add0~0_combout\ & (\C2|LessThan6~19_cout\ & \C1|HPOS\(9))) # (!\C2|Add0~0_combout\ & ((\C2|LessThan6~19_cout\) # (\C1|HPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add0~0_combout\,
	datad => \C1|HPOS\(9),
	cin => \C2|LessThan6~19_cout\,
	combout => \C2|LessThan6~20_combout\);

-- Location: LCCOMB_X43_Y29_N26
\C2|LessThan6~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|LessThan6~22_combout\ = ((\C2|LessThan6~20_combout\) # ((!POSX(8) & !POSX(7)))) # (!POSX(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSX(9),
	datab => POSX(8),
	datac => POSX(7),
	datad => \C2|LessThan6~20_combout\,
	combout => \C2|LessThan6~22_combout\);

-- Location: LCCOMB_X42_Y29_N6
\C4|g4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~0_combout\ = (!\C2|Add1~16_combout\ & (\C2|LessThan6~22_combout\ & ((\C2|Add1~14_combout\) # (\C2|LessThan7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Add1~16_combout\,
	datab => \C2|Add1~14_combout\,
	datac => \C2|LessThan7~16_combout\,
	datad => \C2|LessThan6~22_combout\,
	combout => \C4|g4~0_combout\);

-- Location: LCCOMB_X42_Y28_N20
\C2|G2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~3_combout\ = (\SW[0]~input_o\ & (\C1|LessThan6~18_combout\ & (\C4|g4~0_combout\ & \C2|G2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C1|LessThan6~18_combout\,
	datac => \C4|g4~0_combout\,
	datad => \C2|G2~2_combout\,
	combout => \C2|G2~3_combout\);

-- Location: LCCOMB_X42_Y28_N6
\C2|G2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~5_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~3_combout\) # ((\C2|G2~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|G2~3_combout\,
	combout => \C2|G2~5_combout\);

-- Location: LCCOMB_X42_Y28_N0
\C2|G2[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2[0]~6_combout\ = (\C2|R2[2]~8_combout\) # ((\C2|R2~10_combout\ & ((\C2|LessThan1~1_combout\))) # (!\C2|R2~10_combout\ & (!\C2|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[2]~8_combout\,
	datab => \C2|process_0~5_combout\,
	datac => \C2|LessThan1~1_combout\,
	datad => \C2|R2~10_combout\,
	combout => \C2|G2[0]~6_combout\);

-- Location: LCCOMB_X42_Y28_N28
\C2|G2[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2[0]~9_combout\ = (\SW[0]~input_o\) # ((\C1|process_0~12_combout\) # (!\C2|G2[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|G2[0]~6_combout\,
	combout => \C2|G2[0]~9_combout\);

-- Location: FF_X42_Y28_N7
\C2|G2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~5_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(0));

-- Location: LCCOMB_X42_Y28_N8
\C2|G2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~7_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~3_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|G2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \C2|G2~4_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C2|G2~3_combout\,
	combout => \C2|G2~7_combout\);

-- Location: FF_X42_Y28_N9
\C2|G2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~7_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(1));

-- Location: LCCOMB_X42_Y28_N22
\C2|G2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|G2~8_combout\ = (!\C1|process_0~12_combout\ & ((\C2|G2~3_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & \C2|G2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C2|G2~4_combout\,
	datad => \C2|G2~3_combout\,
	combout => \C2|G2~8_combout\);

-- Location: FF_X42_Y28_N23
\C2|G2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C2|G2~8_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|G2\(2));

-- Location: LCCOMB_X44_Y28_N24
\C3|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~0_combout\ = (POSY(8) & (POSY(5) & (POSY(7) & POSY(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(5),
	datac => POSY(7),
	datad => POSY(6),
	combout => \C3|Add1~0_combout\);

-- Location: LCCOMB_X44_Y28_N22
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

-- Location: LCCOMB_X44_Y26_N16
\C3|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~2_combout\ = POSY(8) $ (((POSY(6) & (POSY(5) & POSY(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(6),
	datac => POSY(5),
	datad => POSY(7),
	combout => \C3|Add1~2_combout\);

-- Location: LCCOMB_X44_Y26_N10
\C3|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~3_combout\ = POSY(7) $ (((POSY(5) & POSY(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(5),
	datac => POSY(6),
	datad => POSY(7),
	combout => \C3|Add1~3_combout\);

-- Location: LCCOMB_X44_Y26_N20
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

-- Location: LCCOMB_X45_Y28_N4
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

-- Location: LCCOMB_X45_Y28_N6
\C3|LessThan8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~3_cout\ = CARRY((\POSY[1]~2_combout\ & ((!\C3|LessThan8~1_cout\) # (!\C1|VPOS\(1)))) # (!\POSY[1]~2_combout\ & (!\C1|VPOS\(1) & !\C3|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~2_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C3|LessThan8~1_cout\,
	cout => \C3|LessThan8~3_cout\);

-- Location: LCCOMB_X45_Y28_N8
\C3|LessThan8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~5_cout\ = CARRY((POSY(2) & (\C1|VPOS\(2) & !\C3|LessThan8~3_cout\)) # (!POSY(2) & ((\C1|VPOS\(2)) # (!\C3|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C3|LessThan8~3_cout\,
	cout => \C3|LessThan8~5_cout\);

-- Location: LCCOMB_X45_Y28_N10
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

-- Location: LCCOMB_X45_Y28_N12
\C3|LessThan8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~9_cout\ = CARRY((POSY(4) & (\C1|VPOS\(4) & !\C3|LessThan8~7_cout\)) # (!POSY(4) & ((\C1|VPOS\(4)) # (!\C3|LessThan8~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C3|LessThan8~7_cout\,
	cout => \C3|LessThan8~9_cout\);

-- Location: LCCOMB_X45_Y28_N14
\C3|LessThan8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~11_cout\ = CARRY((\C1|VPOS\(5) & (!POSY(5) & !\C3|LessThan8~9_cout\)) # (!\C1|VPOS\(5) & ((!\C3|LessThan8~9_cout\) # (!POSY(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => POSY(5),
	datad => VCC,
	cin => \C3|LessThan8~9_cout\,
	cout => \C3|LessThan8~11_cout\);

-- Location: LCCOMB_X45_Y28_N16
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

-- Location: LCCOMB_X45_Y28_N18
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

-- Location: LCCOMB_X45_Y28_N20
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

-- Location: LCCOMB_X45_Y28_N22
\C3|LessThan8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~18_combout\ = (\C1|VPOS\(9) & ((\C3|LessThan8~17_cout\) # (\C3|Add1~1_combout\))) # (!\C1|VPOS\(9) & (\C3|LessThan8~17_cout\ & \C3|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C3|Add1~1_combout\,
	cin => \C3|LessThan8~17_cout\,
	combout => \C3|LessThan8~18_combout\);

-- Location: LCCOMB_X44_Y28_N20
\C3|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~5_combout\ = (POSY(5) & POSY(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datad => POSY(6),
	combout => \C3|Add1~5_combout\);

-- Location: LCCOMB_X44_Y28_N26
\C3|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~6_combout\ = (POSY(9)) # ((POSY(8) & (POSY(7) & \C3|Add1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(8),
	datab => POSY(9),
	datac => POSY(7),
	datad => \C3|Add1~5_combout\,
	combout => \C3|Add1~6_combout\);

-- Location: LCCOMB_X45_Y28_N26
\C3|LessThan8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan8~20_combout\ = (POSY(10) & (\C3|LessThan8~18_combout\ & !\C3|Add1~6_combout\)) # (!POSY(10) & ((\C3|LessThan8~18_combout\) # (!\C3|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => POSY(10),
	datac => \C3|LessThan8~18_combout\,
	datad => \C3|Add1~6_combout\,
	combout => \C3|LessThan8~20_combout\);

-- Location: LCCOMB_X44_Y28_N30
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

-- Location: LCCOMB_X44_Y28_N28
\C3|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add1~7_combout\ = (POSY(5) & (POSY(7) & POSY(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datac => POSY(7),
	datad => POSY(6),
	combout => \C3|Add1~7_combout\);

-- Location: LCCOMB_X44_Y28_N0
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

-- Location: LCCOMB_X44_Y28_N2
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

-- Location: LCCOMB_X44_Y28_N4
\C3|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~4_combout\ = (POSY(5) & (\C3|Add2~3\ $ (GND))) # (!POSY(5) & ((GND) # (!\C3|Add2~3\)))
-- \C3|Add2~5\ = CARRY((!\C3|Add2~3\) # (!POSY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(5),
	datad => VCC,
	cin => \C3|Add2~3\,
	combout => \C3|Add2~4_combout\,
	cout => \C3|Add2~5\);

-- Location: LCCOMB_X44_Y28_N6
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

-- Location: LCCOMB_X44_Y28_N8
\C3|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~8_combout\ = (\C3|Add2~7\ & ((POSY(7) $ (\C3|Add1~5_combout\)))) # (!\C3|Add2~7\ & (POSY(7) $ (\C3|Add1~5_combout\ $ (VCC))))
-- \C3|Add2~9\ = CARRY((!\C3|Add2~7\ & (POSY(7) $ (\C3|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => POSY(7),
	datab => \C3|Add1~5_combout\,
	datad => VCC,
	cin => \C3|Add2~7\,
	combout => \C3|Add2~8_combout\,
	cout => \C3|Add2~9\);

-- Location: LCCOMB_X44_Y28_N10
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

-- Location: LCCOMB_X44_Y28_N12
\C3|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Add2~12_combout\ = (\C3|Add2~11\ & ((\C3|Add1~0_combout\ $ (!POSY(9))))) # (!\C3|Add2~11\ & (\C3|Add1~0_combout\ $ (POSY(9) $ (GND))))
-- \C3|Add2~13\ = CARRY((!\C3|Add2~11\ & (\C3|Add1~0_combout\ $ (!POSY(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Add1~0_combout\,
	datab => POSY(9),
	datad => VCC,
	cin => \C3|Add2~11\,
	combout => \C3|Add2~12_combout\,
	cout => \C3|Add2~13\);

-- Location: LCCOMB_X44_Y28_N14
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

-- Location: LCCOMB_X44_Y28_N16
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

-- Location: LCCOMB_X44_Y28_N18
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

-- Location: LCCOMB_X43_Y28_N0
\C3|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~1_cout\ = CARRY((\POSY[1]~2_combout\ & !\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \POSY[1]~2_combout\,
	datab => \C1|VPOS\(1),
	datad => VCC,
	cout => \C3|LessThan9~1_cout\);

-- Location: LCCOMB_X43_Y28_N2
\C3|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~3_cout\ = CARRY((\C1|VPOS\(2) & ((POSY(2)) # (!\C3|LessThan9~1_cout\))) # (!\C1|VPOS\(2) & (POSY(2) & !\C3|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => POSY(2),
	datad => VCC,
	cin => \C3|LessThan9~1_cout\,
	cout => \C3|LessThan9~3_cout\);

-- Location: LCCOMB_X43_Y28_N4
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

-- Location: LCCOMB_X43_Y28_N6
\C3|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|LessThan9~7_cout\ = CARRY((\C1|VPOS\(4) & ((!\C3|LessThan9~5_cout\) # (!\C3|Add2~2_combout\))) # (!\C1|VPOS\(4) & (!\C3|Add2~2_combout\ & !\C3|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C3|Add2~2_combout\,
	datad => VCC,
	cin => \C3|LessThan9~5_cout\,
	cout => \C3|LessThan9~7_cout\);

-- Location: LCCOMB_X43_Y28_N8
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

-- Location: LCCOMB_X43_Y28_N10
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

-- Location: LCCOMB_X43_Y28_N12
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

-- Location: LCCOMB_X43_Y28_N14
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

-- Location: LCCOMB_X43_Y28_N16
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

-- Location: LCCOMB_X43_Y28_N22
\C4|g4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~1_combout\ = (\SW[0]~input_o\ & ((\C3|Add2~16_combout\) # ((\C3|Add2~14_combout\) # (\C3|LessThan9~16_combout\))))

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
	combout => \C4|g4~1_combout\);

-- Location: LCCOMB_X45_Y28_N0
\C3|g3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~1_combout\ = (\C3|LessThan8~20_combout\ & (!\C3|Add2~18_combout\ & (\C3|g3~0_combout\ & \C4|g4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan8~20_combout\,
	datab => \C3|Add2~18_combout\,
	datac => \C3|g3~0_combout\,
	datad => \C4|g4~1_combout\,
	combout => \C3|g3~1_combout\);

-- Location: LCCOMB_X45_Y28_N28
\C3|g3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~2_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~1_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & \C2|G2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~12_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datac => \C2|G2~4_combout\,
	datad => \C3|g3~1_combout\,
	combout => \C3|g3~2_combout\);

-- Location: FF_X45_Y28_N29
\C3|g3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~2_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(0));

-- Location: LCCOMB_X45_Y28_N2
\C3|g3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~3_combout\ = (\C3|LessThan8~20_combout\ & (!\C3|Add2~18_combout\ & (\C3|g3~0_combout\ & \C4|g4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|LessThan8~20_combout\,
	datab => \C3|Add2~18_combout\,
	datac => \C3|g3~0_combout\,
	datad => \C4|g4~1_combout\,
	combout => \C3|g3~3_combout\);

-- Location: LCCOMB_X45_Y28_N30
\C3|g3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~4_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~3_combout\) # ((!\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & \C2|G2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~12_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \C2|G2~4_combout\,
	datad => \C3|g3~3_combout\,
	combout => \C3|g3~4_combout\);

-- Location: FF_X45_Y28_N31
\C3|g3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~4_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(1));

-- Location: LCCOMB_X45_Y28_N24
\C3|g3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|g3~5_combout\ = (!\C1|process_0~12_combout\ & ((\C3|g3~3_combout\) # ((\C2|G2~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C3|g3~3_combout\,
	combout => \C3|g3~5_combout\);

-- Location: FF_X45_Y28_N25
\C3|g3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C3|g3~5_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|g3\(2));

-- Location: LCCOMB_X43_Y28_N20
\C4|g4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~2_combout\ = (\C4|g4~1_combout\ & (!\C3|Add2~18_combout\ & (\C4|g4~0_combout\ & \C3|LessThan8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|g4~1_combout\,
	datab => \C3|Add2~18_combout\,
	datac => \C4|g4~0_combout\,
	datad => \C3|LessThan8~20_combout\,
	combout => \C4|g4~2_combout\);

-- Location: LCCOMB_X43_Y28_N30
\C4|g4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~3_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~2_combout\) # ((\C2|G2~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C4|g4~2_combout\,
	combout => \C4|g4~3_combout\);

-- Location: FF_X43_Y28_N31
\C4|g4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~3_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(0));

-- Location: LCCOMB_X43_Y28_N24
\C4|g4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~4_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~2_combout\) # ((\C2|G2~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C4|g4~2_combout\,
	combout => \C4|g4~4_combout\);

-- Location: FF_X43_Y28_N25
\C4|g4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~4_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(1));

-- Location: LCCOMB_X43_Y28_N26
\C4|g4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C4|g4~5_combout\ = (!\C1|process_0~12_combout\ & ((\C4|g4~2_combout\) # ((\C2|G2~4_combout\ & !\C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|G2~4_combout\,
	datab => \C2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C4|g4~2_combout\,
	combout => \C4|g4~5_combout\);

-- Location: FF_X43_Y28_N27
\C4|g4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C4|g4~5_combout\,
	ena => \C2|G2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|g4\(2));

-- Location: M9K_X53_Y32_N0
\c0|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X73_Y32_N0
\c0|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB",
	mem_init2 => X"DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF307FFFFFFFFFFFFFFFFFFFFFFF0F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF0400000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y32_N30
\c0|altsyncram_component|auto_generated|mux2|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a8~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datac => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \c0|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X43_Y27_N4
\C1|b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b~0_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|b~0_combout\);

-- Location: FF_X43_Y27_N5
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

-- Location: M9K_X53_Y27_N0
\c0|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init2 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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

-- Location: M9K_X73_Y27_N0
\c0|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	mem_init0 => X"0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../Users/Marcin/Documents/MATLAB/logo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:c0|altsyncram:altsyncram_component|altsyncram_kkt3:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
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
	portaaddr => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c0|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y27_N24
\c0|altsyncram_component|auto_generated|mux2|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\ = (\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\))) # 
-- (!\c0|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datab => \c0|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \c0|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	combout => \c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\);

-- Location: LCCOMB_X44_Y27_N30
\C1|b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|b~1_combout\ = (\c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\ & (!\C1|process_0~12_combout\ & (!\C1|g[0]~1_combout\ & !\C1|g[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|altsyncram_component|auto_generated|mux2|result_node[1]~1_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \C1|g[0]~1_combout\,
	datad => \C1|g[0]~2_combout\,
	combout => \C1|b~1_combout\);

-- Location: FF_X44_Y27_N31
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

-- Location: LCCOMB_X38_Y26_N12
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

-- Location: LCCOMB_X38_Y26_N14
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

-- Location: LCCOMB_X38_Y26_N16
\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ = (\C1|VPOS\(8) & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ $ (GND))) # (!\C1|VPOS\(8) & 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\ & VCC))
-- \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\ = CARRY((\C1|VPOS\(8) & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~3\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~5\);

-- Location: LCCOMB_X38_Y26_N18
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

-- Location: LCCOMB_X38_Y26_N20
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

-- Location: LCCOMB_X38_Y26_N26
\C2|Div1|auto_generated|divider|divider|StageOut[52]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\);

-- Location: LCCOMB_X39_Y26_N18
\C2|Div1|auto_generated|divider|divider|StageOut[52]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\ = (\C1|VPOS\(7) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(7),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\);

-- Location: LCCOMB_X39_Y26_N12
\C2|Div1|auto_generated|divider|divider|StageOut[51]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ = (\C1|VPOS\(6) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\);

-- Location: LCCOMB_X38_Y26_N4
\C2|Div1|auto_generated|divider|divider|StageOut[51]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\);

-- Location: LCCOMB_X39_Y26_N22
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

-- Location: LCCOMB_X39_Y26_N20
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

-- Location: LCCOMB_X39_Y26_N0
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ = (((\C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\)))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[50]~58_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datad => VCC,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\);

-- Location: LCCOMB_X39_Y26_N2
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[51]~56_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[51]~57_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~1\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\);

-- Location: LCCOMB_X39_Y26_N4
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & (((\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & ((((\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\ = CARRY((!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\) # 
-- (\C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[52]~55_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[52]~54_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~3\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~5\);

-- Location: LCCOMB_X38_Y26_N8
\C2|Div1|auto_generated|divider|divider|StageOut[54]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\ = (\C1|VPOS\(9) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(9),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X38_Y26_N30
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

-- Location: LCCOMB_X38_Y26_N0
\C2|Div1|auto_generated|divider|divider|StageOut[53]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[53]~53_combout\);

-- Location: LCCOMB_X39_Y26_N16
\C2|Div1|auto_generated|divider|divider|StageOut[53]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\ = (\C1|VPOS\(8) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[53]~52_combout\);

-- Location: LCCOMB_X39_Y26_N6
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

-- Location: LCCOMB_X39_Y26_N8
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

-- Location: LCCOMB_X39_Y26_N10
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

-- Location: LCCOMB_X40_Y26_N26
\C2|Div1|auto_generated|divider|divider|StageOut[61]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~4_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\);

-- Location: LCCOMB_X38_Y26_N6
\C2|Div1|auto_generated|divider|divider|StageOut[61]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C1|VPOS\(7)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~2_combout\,
	datab => \C1|VPOS\(7),
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\);

-- Location: LCCOMB_X40_Y26_N28
\C2|Div1|auto_generated|divider|divider|StageOut[60]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[60]~61_combout\);

-- Location: LCCOMB_X38_Y26_N22
\C2|Div1|auto_generated|divider|divider|StageOut[60]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C1|VPOS\(6)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~0_combout\,
	datab => \C1|VPOS\(6),
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\);

-- Location: LCCOMB_X39_Y26_N26
\C2|Div1|auto_generated|divider|divider|StageOut[59]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ = (\C1|VPOS\(5) & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(5),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\);

-- Location: LCCOMB_X39_Y26_N24
\C2|Div1|auto_generated|divider|divider|StageOut[59]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X40_Y26_N30
\C2|Div1|auto_generated|divider|divider|StageOut[58]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\ = (\C1|VPOS\(4) & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[58]~64_combout\);

-- Location: LCCOMB_X40_Y26_N20
\C2|Div1|auto_generated|divider|divider|StageOut[49]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\ = (\C1|VPOS\(4) & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\);

-- Location: LCCOMB_X41_Y26_N24
\C2|Div1|auto_generated|divider|divider|StageOut[49]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	datac => \C1|VPOS\(4),
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X40_Y26_N16
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[49]~66_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[49]~65_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\);

-- Location: LCCOMB_X40_Y26_N14
\C2|Div1|auto_generated|divider|divider|StageOut[58]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[58]~67_combout\);

-- Location: LCCOMB_X40_Y26_N2
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

-- Location: LCCOMB_X40_Y26_N4
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~1\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~3\);

-- Location: LCCOMB_X40_Y26_N6
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

-- Location: LCCOMB_X40_Y26_N8
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ & (((!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\) # (GND)))))
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\)) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\,
	datad => VCC,
	cin => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~5\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\,
	cout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~7\);

-- Location: LCCOMB_X38_Y26_N28
\C2|Div1|auto_generated|divider|divider|StageOut[62]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & ((\C1|VPOS\(8)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~4_combout\,
	datab => \C1|VPOS\(8),
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[62]~84_combout\);

-- Location: LCCOMB_X39_Y26_N30
\C2|Div1|auto_generated|divider|divider|StageOut[62]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~6_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[62]~68_combout\);

-- Location: LCCOMB_X40_Y26_N10
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

-- Location: LCCOMB_X40_Y26_N12
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

-- Location: LCCOMB_X40_Y26_N24
\C2|Div1|auto_generated|divider|divider|StageOut[70]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\) # 
-- ((\C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & (((\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[61]~60_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~6_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[61]~82_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\);

-- Location: LCCOMB_X40_Y27_N24
\C2|B2[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~3_combout\ = (\C2|process_0~5_combout\) # ((\C1|process_0~12_combout\) # (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~5_combout\,
	datab => \C1|process_0~12_combout\,
	datac => \SW[0]~input_o\,
	combout => \C2|B2[1]~3_combout\);

-- Location: LCCOMB_X40_Y27_N26
\C2|Div1|auto_generated|divider|divider|StageOut[69]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~4_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\);

-- Location: LCCOMB_X40_Y26_N0
\C2|Div1|auto_generated|divider|divider|StageOut[69]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\) # 
-- ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~2_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[60]~83_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\);

-- Location: LCCOMB_X39_Y26_N28
\C2|Div1|auto_generated|divider|divider|StageOut[68]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C1|VPOS\(5))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datac => \C1|VPOS\(5),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~0_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[68]~85_combout\);

-- Location: LCCOMB_X41_Y26_N22
\C2|Div1|auto_generated|divider|divider|StageOut[68]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~2_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[68]~71_combout\);

-- Location: LCCOMB_X40_Y26_N18
\C2|Div1|auto_generated|divider|divider|StageOut[67]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C1|VPOS\(4))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\);

-- Location: LCCOMB_X40_Y26_N22
\C2|Div1|auto_generated|divider|divider|StageOut[67]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~0_combout\,
	datac => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\);

-- Location: LCCOMB_X39_Y27_N26
\C2|Div1|auto_generated|divider|divider|StageOut[48]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\ = (\C1|VPOS\(3) & !\C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(3),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\);

-- Location: LCCOMB_X39_Y27_N20
\C2|Div1|auto_generated|divider|divider|StageOut[48]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\ = (\C1|VPOS\(3) & \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(3),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~8_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\);

-- Location: LCCOMB_X39_Y27_N28
\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[48]~75_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[48]~74_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X39_Y27_N14
\C2|Div1|auto_generated|divider|divider|StageOut[66]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & ((\C1|VPOS\(3)))) # 
-- (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & (\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \C1|VPOS\(3),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\);

-- Location: LCCOMB_X39_Y27_N22
\C2|Div1|auto_generated|divider|divider|StageOut[57]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\ = (\C1|VPOS\(3) & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(3),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\);

-- Location: LCCOMB_X39_Y27_N24
\C2|Div1|auto_generated|divider|divider|StageOut[57]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\ = (!\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\ & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\);

-- Location: LCCOMB_X39_Y27_N10
\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\ = (\C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Div1|auto_generated|divider|divider|StageOut[57]~73_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|StageOut[57]~76_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\);

-- Location: LCCOMB_X39_Y27_N6
\C2|Div1|auto_generated|divider|divider|StageOut[66]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\ & !\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~12_combout\,
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\);

-- Location: LCCOMB_X39_Y27_N4
\C2|Div1|auto_generated|divider|divider|StageOut[56]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\C1|VPOS\(2) & \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(2),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[56]~78_combout\);

-- Location: LCCOMB_X39_Y27_N18
\C2|Div1|auto_generated|divider|divider|StageOut[56]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\ = (\C1|VPOS\(2) & !\C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(2),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[56]~79_combout\);

-- Location: LCCOMB_X39_Y27_N12
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

-- Location: LCCOMB_X39_Y27_N0
\C2|Div1|auto_generated|divider|divider|StageOut[65]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ = (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & ((\C1|VPOS\(2)))) # (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & 
-- (\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datac => \C1|VPOS\(2),
	datad => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	combout => \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\);

-- Location: LCCOMB_X40_Y27_N22
\C2|R2[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|R2[2]~9_combout\ = (\C1|process_0~12_combout\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~12_combout\,
	datac => \SW[0]~input_o\,
	combout => \C2|R2[2]~9_combout\);

-- Location: LCCOMB_X40_Y27_N0
\C2|B2[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~5_cout\ = CARRY((!\C2|process_0~5_combout\ & !\C2|R2[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~5_combout\,
	datab => \C2|R2[2]~9_combout\,
	datad => VCC,
	cout => \C2|B2[0]~5_cout\);

-- Location: LCCOMB_X40_Y27_N2
\C2|B2[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~7_cout\ = CARRY((\C1|VPOS\(0) & (\C2|B2[1]~3_combout\ & !\C2|B2[0]~5_cout\)) # (!\C1|VPOS\(0) & ((\C2|B2[1]~3_combout\) # (!\C2|B2[0]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C2|B2[1]~3_combout\,
	datad => VCC,
	cin => \C2|B2[0]~5_cout\,
	cout => \C2|B2[0]~7_cout\);

-- Location: LCCOMB_X40_Y27_N4
\C2|B2[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~9_cout\ = CARRY((\C1|VPOS\(1) & ((!\C2|B2[0]~7_cout\) # (!\C2|B2[1]~3_combout\))) # (!\C1|VPOS\(1) & (!\C2|B2[1]~3_combout\ & !\C2|B2[0]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C2|B2[1]~3_combout\,
	datad => VCC,
	cin => \C2|B2[0]~7_cout\,
	cout => \C2|B2[0]~9_cout\);

-- Location: LCCOMB_X40_Y27_N6
\C2|B2[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~11_cout\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ & (\C2|B2[1]~3_combout\ & !\C2|B2[0]~9_cout\)) # (!\C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\ & ((\C2|B2[1]~3_combout\) # 
-- (!\C2|B2[0]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[65]~80_combout\,
	datab => \C2|B2[1]~3_combout\,
	datad => VCC,
	cin => \C2|B2[0]~9_cout\,
	cout => \C2|B2[0]~11_cout\);

-- Location: LCCOMB_X40_Y27_N8
\C2|B2[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~13_cout\ = CARRY((!\C2|B2[0]~11_cout\ & ((\C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\) # (\C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[66]~87_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[66]~77_combout\,
	datad => VCC,
	cin => \C2|B2[0]~11_cout\,
	cout => \C2|B2[0]~13_cout\);

-- Location: LCCOMB_X40_Y27_N10
\C2|B2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~15_cout\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\)) # (!\C2|B2[0]~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[67]~86_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[67]~72_combout\,
	datad => VCC,
	cin => \C2|B2[0]~13_cout\,
	cout => \C2|B2[0]~15_cout\);

-- Location: LCCOMB_X40_Y27_N12
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

-- Location: LCCOMB_X40_Y27_N14
\C2|B2[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~19_cout\ = CARRY(((!\C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\ & !\C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\)) # (!\C2|B2[0]~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[69]~70_combout\,
	datab => \C2|Div1|auto_generated|divider|divider|StageOut[69]~81_combout\,
	datad => VCC,
	cin => \C2|B2[0]~17_cout\,
	cout => \C2|B2[0]~19_cout\);

-- Location: LCCOMB_X40_Y27_N16
\C2|B2[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[0]~21_cout\ = CARRY((\C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ & ((!\C2|B2[0]~19_cout\) # (!\C2|B2[1]~3_combout\))) # (!\C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\ & (!\C2|B2[1]~3_combout\ & 
-- !\C2|B2[0]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Div1|auto_generated|divider|divider|StageOut[70]~69_combout\,
	datab => \C2|B2[1]~3_combout\,
	datad => VCC,
	cin => \C2|B2[0]~19_cout\,
	cout => \C2|B2[0]~21_cout\);

-- Location: LCCOMB_X40_Y27_N18
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

-- Location: LCCOMB_X42_Y29_N4
\C2|B2[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~24_combout\ = (!\C1|HPOS\(9) & (((!\C2|LessThan0~0_combout\ & !\C1|HPOS\(8))) # (!\C2|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|process_0~2_combout\,
	datab => \C1|HPOS\(9),
	datac => \C2|LessThan0~0_combout\,
	datad => \C1|HPOS\(8),
	combout => \C2|B2[1]~24_combout\);

-- Location: LCCOMB_X40_Y27_N28
\C2|B2[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2[1]~25_combout\ = (\C2|R2[2]~9_combout\) # ((!\C2|B2[1]~24_combout\ & ((\C2|process_0~5_combout\) # (!\C2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|R2[2]~9_combout\,
	datab => \C2|B2[1]~24_combout\,
	datac => \C2|process_0~5_combout\,
	datad => \C2|LessThan1~1_combout\,
	combout => \C2|B2[1]~25_combout\);

-- Location: FF_X40_Y27_N19
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

-- Location: LCCOMB_X40_Y27_N20
\C2|B2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C2|B2~26_combout\ = (!\SW[0]~input_o\ & (!\C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\ & (!\C2|process_0~5_combout\ & !\C1|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C2|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~10_combout\,
	datac => \C2|process_0~5_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C2|B2~26_combout\);

-- Location: FF_X40_Y27_N21
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

-- Location: LCCOMB_X16_Y1_N0
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

-- Location: FF_X16_Y1_N1
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

-- Location: FF_X47_Y28_N13
\C2|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|process_0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|VSYNC~q\);

-- Location: LCCOMB_X39_Y1_N0
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

-- Location: FF_X39_Y1_N1
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

-- Location: FF_X43_Y16_N5
\C3|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|process_0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|VSYNC~q\);

-- Location: FF_X42_Y33_N25
\C4|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C4|HSYNC~q\);

-- Location: LCCOMB_X49_Y16_N12
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

-- Location: FF_X49_Y16_N13
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


