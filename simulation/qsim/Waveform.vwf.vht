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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/24/2018 01:31:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PRACA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PRACA_vhd_vec_tst IS
END PRACA_vhd_vec_tst;
ARCHITECTURE PRACA_arch OF PRACA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address2 : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL CLOCK_24 : STD_LOGIC;
SIGNAL HPOS1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL q2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL vga2_b : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL vga2_g : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA2_HS : STD_LOGIC;
SIGNAL vga2_r : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA2_VS : STD_LOGIC;
SIGNAL vga3_b : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL vga3_g : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA3_HS : STD_LOGIC;
SIGNAL vga3_r : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA3_VS : STD_LOGIC;
SIGNAL vga4_b : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL vga4_g : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA4_HS : STD_LOGIC;
SIGNAL vga4_R : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA4_VS : STD_LOGIC;
SIGNAL vga_b : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL vga_g : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL vga_r : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL VGA_VS : STD_LOGIC;
SIGNAL VPOS1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT PRACA
	PORT (
	address2 : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	CLOCK_24 : IN STD_LOGIC;
	HPOS1 : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	q2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	vga2_b : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	vga2_g : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA2_HS : BUFFER STD_LOGIC;
	vga2_r : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA2_VS : BUFFER STD_LOGIC;
	vga3_b : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	vga3_g : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA3_HS : BUFFER STD_LOGIC;
	vga3_r : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA3_VS : BUFFER STD_LOGIC;
	vga4_b : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	vga4_g : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA4_HS : BUFFER STD_LOGIC;
	vga4_R : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA4_VS : BUFFER STD_LOGIC;
	vga_b : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	vga_g : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA_HS : BUFFER STD_LOGIC;
	vga_r : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	VGA_VS : BUFFER STD_LOGIC;
	VPOS1 : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PRACA
	PORT MAP (
-- list connections between master ports and signals
	address2 => address2,
	CLOCK_24 => CLOCK_24,
	HPOS1 => HPOS1,
	q2 => q2,
	SW => SW,
	vga2_b => vga2_b,
	vga2_g => vga2_g,
	VGA2_HS => VGA2_HS,
	vga2_r => vga2_r,
	VGA2_VS => VGA2_VS,
	vga3_b => vga3_b,
	vga3_g => vga3_g,
	VGA3_HS => VGA3_HS,
	vga3_r => vga3_r,
	VGA3_VS => VGA3_VS,
	vga4_b => vga4_b,
	vga4_g => vga4_g,
	VGA4_HS => VGA4_HS,
	vga4_R => vga4_R,
	VGA4_VS => VGA4_VS,
	vga_b => vga_b,
	vga_g => vga_g,
	VGA_HS => VGA_HS,
	vga_r => vga_r,
	VGA_VS => VGA_VS,
	VPOS1 => VPOS1
	);

-- CLOCK_24
t_prcs_CLOCK_24: PROCESS
BEGIN
LOOP
	CLOCK_24 <= '0';
	WAIT FOR 20000 ps;
	CLOCK_24 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_24;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END PRACA_arch;
