-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/28/2017 11:46:50"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipemult IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ALUout : OUT std_logic_vector(15 DOWNTO 0);
	reset_n : IN std_logic;
	clk1 : IN std_logic;
	wren : IN std_logic;
	dataa : IN std_logic_vector(7 DOWNTO 0);
	datab : IN std_logic_vector(7 DOWNTO 0);
	rdaddress : IN std_logic_vector(4 DOWNTO 0);
	wraddress : IN std_logic_vector(4 DOWNTO 0);
	Sum : OUT std_logic_vector(31 DOWNTO 0);
	IR : IN std_logic_vector(1 DOWNTO 0);
	CCout : OUT std_logic_vector(5 DOWNTO 0);
	q : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipemult;

-- Design Ports Information
-- Cout	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[15]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[14]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[13]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[11]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[10]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[9]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[8]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[6]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUout[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCout[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wraddress[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rdaddress[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipemult IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALUout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_wren : std_logic;
SIGNAL ww_dataa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rdaddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wraddress : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CCout : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \ALUout[15]~output_o\ : std_logic;
SIGNAL \ALUout[14]~output_o\ : std_logic;
SIGNAL \ALUout[13]~output_o\ : std_logic;
SIGNAL \ALUout[12]~output_o\ : std_logic;
SIGNAL \ALUout[11]~output_o\ : std_logic;
SIGNAL \ALUout[10]~output_o\ : std_logic;
SIGNAL \ALUout[9]~output_o\ : std_logic;
SIGNAL \ALUout[8]~output_o\ : std_logic;
SIGNAL \ALUout[7]~output_o\ : std_logic;
SIGNAL \ALUout[6]~output_o\ : std_logic;
SIGNAL \ALUout[5]~output_o\ : std_logic;
SIGNAL \ALUout[4]~output_o\ : std_logic;
SIGNAL \ALUout[3]~output_o\ : std_logic;
SIGNAL \ALUout[2]~output_o\ : std_logic;
SIGNAL \ALUout[1]~output_o\ : std_logic;
SIGNAL \ALUout[0]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \CCout[5]~output_o\ : std_logic;
SIGNAL \CCout[4]~output_o\ : std_logic;
SIGNAL \CCout[3]~output_o\ : std_logic;
SIGNAL \CCout[2]~output_o\ : std_logic;
SIGNAL \CCout[1]~output_o\ : std_logic;
SIGNAL \CCout[0]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst5~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst5~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst5~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \inst4|inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst|inst7|inst5~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst5~1_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst5~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst|inst5~1_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst5~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst5~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst5~1_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst5~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst|inst5~1_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst5~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst5~1_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst5~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst5~0_combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \wraddress[0]~input_o\ : std_logic;
SIGNAL \wraddress[1]~input_o\ : std_logic;
SIGNAL \wraddress[2]~input_o\ : std_logic;
SIGNAL \wraddress[3]~input_o\ : std_logic;
SIGNAL \wraddress[4]~input_o\ : std_logic;
SIGNAL \rdaddress[0]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[0]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[1]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[1]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[2]~input_o\ : std_logic;
SIGNAL \rdaddress[3]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[3]~feeder_combout\ : std_logic;
SIGNAL \rdaddress[4]~input_o\ : std_logic;
SIGNAL \inst1|rdaddress_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst2[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst4|inst|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst1|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst2[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~148_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~29_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~30_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst2[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst4|inst2|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~31_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~149_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~32_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~33_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst4|inst4|inst3|inst2~combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst2[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~34_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~35_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~150_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~36_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~37_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst2[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst4|inst4|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst2[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~38_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~39_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~40_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~151_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~41_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~42_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst4|inst4|inst5|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|inst4|inst6|inst2~combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst2[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~43_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~44_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~45_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~46_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~152_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~47_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~48_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst2[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~49_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~50_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~51_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~52_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~53_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~153_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~54_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~55_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst4|inst4|inst7|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst2[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst3|inst|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux8~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~56_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~57_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~58_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~59_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~60_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~61_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~154_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~62_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~63_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst8|Mux8~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~64_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~65_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~66_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~67_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~68_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~69_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~70_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~155_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~71_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~72_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst2[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst1|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux9~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~73_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~74_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~75_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~76_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~77_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~78_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~79_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~80_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~156_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~81_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~82_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst2[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst3|inst2|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst2[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|inst3|inst3|inst2~combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~83_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~84_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~85_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~86_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~87_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~88_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~89_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~90_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~91_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~157_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~92_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~93_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst8|Mux11~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~94_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~95_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~96_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~97_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~98_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~99_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~100_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~101_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~102_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~103_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~158_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~104_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~105_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst2[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst3|inst4|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux12~0_combout\ : std_logic;
SIGNAL \inst8|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst2[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~106_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~107_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~108_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~109_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~110_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~111_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~112_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~113_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~114_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~115_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~116_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~159_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~117_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~118_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst4|inst3|inst5|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux13~1_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~119_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~120_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~121_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~122_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~123_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~124_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~125_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~126_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~127_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~128_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~129_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~130_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~160_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~131_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~132_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst2[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst4|inst3|inst6|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux14~0_combout\ : std_logic;
SIGNAL \inst8|Mux14~1_combout\ : std_logic;
SIGNAL \inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst2[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst8|Mux15~0_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~133_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~134_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~135_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~136_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~137_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~138_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~139_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~140_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~141_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~142_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~143_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~144_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~145_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~161_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~146_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|_~147_combout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\ : std_logic;
SIGNAL \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst4|inst3|inst7|inst2~combout\ : std_logic;
SIGNAL \inst8|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst1|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst4|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst5|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst6|inst2~combout\ : std_logic;
SIGNAL \inst4|inst2|inst7|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst1|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst5|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst6|inst2~combout\ : std_logic;
SIGNAL \inst4|inst|inst7|inst2~combout\ : std_logic;
SIGNAL \inst5|LessThan3~1_cout\ : std_logic;
SIGNAL \inst5|LessThan3~3_cout\ : std_logic;
SIGNAL \inst5|LessThan3~5_cout\ : std_logic;
SIGNAL \inst5|LessThan3~7_cout\ : std_logic;
SIGNAL \inst5|LessThan3~9_cout\ : std_logic;
SIGNAL \inst5|LessThan3~11_cout\ : std_logic;
SIGNAL \inst5|LessThan3~13_cout\ : std_logic;
SIGNAL \inst5|LessThan3~15_cout\ : std_logic;
SIGNAL \inst5|LessThan3~17_cout\ : std_logic;
SIGNAL \inst5|LessThan3~19_cout\ : std_logic;
SIGNAL \inst5|LessThan3~21_cout\ : std_logic;
SIGNAL \inst5|LessThan3~23_cout\ : std_logic;
SIGNAL \inst5|LessThan3~25_cout\ : std_logic;
SIGNAL \inst5|LessThan3~27_cout\ : std_logic;
SIGNAL \inst5|LessThan3~29_cout\ : std_logic;
SIGNAL \inst5|LessThan3~31_cout\ : std_logic;
SIGNAL \inst5|LessThan3~33_cout\ : std_logic;
SIGNAL \inst5|LessThan3~35_cout\ : std_logic;
SIGNAL \inst5|LessThan3~37_cout\ : std_logic;
SIGNAL \inst5|LessThan3~39_cout\ : std_logic;
SIGNAL \inst5|LessThan3~41_cout\ : std_logic;
SIGNAL \inst5|LessThan3~43_cout\ : std_logic;
SIGNAL \inst5|LessThan3~45_cout\ : std_logic;
SIGNAL \inst5|LessThan3~47_cout\ : std_logic;
SIGNAL \inst5|LessThan3~49_cout\ : std_logic;
SIGNAL \inst5|LessThan3~51_cout\ : std_logic;
SIGNAL \inst5|LessThan3~53_cout\ : std_logic;
SIGNAL \inst5|LessThan3~55_cout\ : std_logic;
SIGNAL \inst5|LessThan3~57_cout\ : std_logic;
SIGNAL \inst5|LessThan3~59_cout\ : std_logic;
SIGNAL \inst5|LessThan3~61_cout\ : std_logic;
SIGNAL \inst5|LessThan3~62_combout\ : std_logic;
SIGNAL \inst7[5]~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~11_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|Equal0~13_combout\ : std_logic;
SIGNAL \inst5|Equal0~12_combout\ : std_logic;
SIGNAL \inst5|Equal0~14_combout\ : std_logic;
SIGNAL \inst5|Equal0~16_combout\ : std_logic;
SIGNAL \inst5|Equal0~18_combout\ : std_logic;
SIGNAL \inst5|Equal0~15_combout\ : std_logic;
SIGNAL \inst5|Equal0~17_combout\ : std_logic;
SIGNAL \inst5|Equal0~19_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Equal0~20_combout\ : std_logic;
SIGNAL \inst7[4]~1_combout\ : std_logic;
SIGNAL \inst5|LessThan2~1_cout\ : std_logic;
SIGNAL \inst5|LessThan2~3_cout\ : std_logic;
SIGNAL \inst5|LessThan2~5_cout\ : std_logic;
SIGNAL \inst5|LessThan2~7_cout\ : std_logic;
SIGNAL \inst5|LessThan2~9_cout\ : std_logic;
SIGNAL \inst5|LessThan2~11_cout\ : std_logic;
SIGNAL \inst5|LessThan2~13_cout\ : std_logic;
SIGNAL \inst5|LessThan2~15_cout\ : std_logic;
SIGNAL \inst5|LessThan2~17_cout\ : std_logic;
SIGNAL \inst5|LessThan2~19_cout\ : std_logic;
SIGNAL \inst5|LessThan2~21_cout\ : std_logic;
SIGNAL \inst5|LessThan2~23_cout\ : std_logic;
SIGNAL \inst5|LessThan2~25_cout\ : std_logic;
SIGNAL \inst5|LessThan2~27_cout\ : std_logic;
SIGNAL \inst5|LessThan2~29_cout\ : std_logic;
SIGNAL \inst5|LessThan2~31_cout\ : std_logic;
SIGNAL \inst5|LessThan2~33_cout\ : std_logic;
SIGNAL \inst5|LessThan2~35_cout\ : std_logic;
SIGNAL \inst5|LessThan2~37_cout\ : std_logic;
SIGNAL \inst5|LessThan2~39_cout\ : std_logic;
SIGNAL \inst5|LessThan2~41_cout\ : std_logic;
SIGNAL \inst5|LessThan2~43_cout\ : std_logic;
SIGNAL \inst5|LessThan2~45_cout\ : std_logic;
SIGNAL \inst5|LessThan2~47_cout\ : std_logic;
SIGNAL \inst5|LessThan2~49_cout\ : std_logic;
SIGNAL \inst5|LessThan2~51_cout\ : std_logic;
SIGNAL \inst5|LessThan2~53_cout\ : std_logic;
SIGNAL \inst5|LessThan2~55_cout\ : std_logic;
SIGNAL \inst5|LessThan2~57_cout\ : std_logic;
SIGNAL \inst5|LessThan2~59_cout\ : std_logic;
SIGNAL \inst5|LessThan2~61_cout\ : std_logic;
SIGNAL \inst5|LessThan2~62_combout\ : std_logic;
SIGNAL \inst7[3]~2_combout\ : std_logic;
SIGNAL \inst|lpm_mult_component|auto_generated|result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL inst6 : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\ : std_logic_vector(1 DOWNTO 0);
SIGNAL inst7 : std_logic_vector(5 DOWNTO 0);
SIGNAL inst2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|rdaddress_reg\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_A <= A;
ww_B <= B;
ALUout <= ww_ALUout;
ww_reset_n <= reset_n;
ww_clk1 <= clk1;
ww_wren <= wren;
ww_dataa <= dataa;
ww_datab <= datab;
ww_rdaddress <= rdaddress;
ww_wraddress <= wraddress;
Sum <= ww_Sum;
ww_IR <= IR;
CCout <= ww_CCout;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|lpm_mult_component|auto_generated|result\(15) & 
\inst|lpm_mult_component|auto_generated|result\(14) & \inst|lpm_mult_component|auto_generated|result\(13) & \inst|lpm_mult_component|auto_generated|result\(12) & \inst|lpm_mult_component|auto_generated|result\(11) & 
\inst|lpm_mult_component|auto_generated|result\(10) & \inst|lpm_mult_component|auto_generated|result\(9) & \inst|lpm_mult_component|auto_generated|result\(8) & \inst|lpm_mult_component|auto_generated|result\(7) & 
\inst|lpm_mult_component|auto_generated|result\(6) & \inst|lpm_mult_component|auto_generated|result\(5) & \inst|lpm_mult_component|auto_generated|result\(4) & \inst|lpm_mult_component|auto_generated|result\(3) & 
\inst|lpm_mult_component|auto_generated|result\(2) & \inst|lpm_mult_component|auto_generated|result\(1) & \inst|lpm_mult_component|auto_generated|result\(0));

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\wraddress[4]~input_o\ & \wraddress[3]~input_o\ & \wraddress[2]~input_o\ & \wraddress[1]~input_o\ & \wraddress[0]~input_o\);

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst1|rdaddress_reg\(4) & \inst1|rdaddress_reg\(3) & \inst1|rdaddress_reg\(2) & \inst1|rdaddress_reg\(1) & \inst1|rdaddress_reg\(0));

\inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a8\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a9\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a10\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a11\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a12\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a13\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a14\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\inst1|ram_block_rtl_0|auto_generated|ram_block1a15\ <= \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & 
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst|lpm_mult_component|auto_generated|mac_mult1~3\ & \inst|lpm_mult_component|auto_generated|mac_mult1~2\);

\inst|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|result\(0) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|result\(1) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|result\(2) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|result\(3) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|result\(4) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|result\(5) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|result\(6) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|result\(7) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|result\(8) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|result\(9) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|result\(10) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|result\(11) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|result\(12) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|result\(13) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|result\(14) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|result\(15) <= \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\dataa[7]~input_o\ & \dataa[6]~input_o\ & \dataa[5]~input_o\ & \dataa[4]~input_o\ & \dataa[3]~input_o\ & \dataa[2]~input_o\ & \dataa[1]~input_o\ & \dataa[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\datab[7]~input_o\ & \datab[6]~input_o\ & \datab[5]~input_o\ & \datab[4]~input_o\ & \datab[3]~input_o\ & \datab[2]~input_o\ & \datab[1]~input_o\ & \datab[0]~input_o\ & gnd);

\inst|lpm_mult_component|auto_generated|mac_mult1~2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|lpm_mult_component|auto_generated|mac_mult1~3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N14
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

-- Location: IOOBUF_X31_Y17_N9
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst7|inst5~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X31_Y5_N2
\ALUout[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[15]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\ALUout[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[14]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\ALUout[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[13]~output_o\);

-- Location: IOOBUF_X31_Y11_N23
\ALUout[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[12]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\ALUout[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[11]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\ALUout[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[10]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\ALUout[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[9]~output_o\);

-- Location: IOOBUF_X31_Y7_N2
\ALUout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[8]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\ALUout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[7]~output_o\);

-- Location: IOOBUF_X31_Y9_N23
\ALUout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[6]~output_o\);

-- Location: IOOBUF_X31_Y5_N9
\ALUout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[5]~output_o\);

-- Location: IOOBUF_X27_Y25_N9
\ALUout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[4]~output_o\);

-- Location: IOOBUF_X31_Y13_N9
\ALUout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[3]~output_o\);

-- Location: IOOBUF_X31_Y21_N16
\ALUout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[2]~output_o\);

-- Location: IOOBUF_X31_Y9_N16
\ALUout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[1]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\ALUout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \ALUout[0]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\Sum[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\Sum[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X31_Y14_N23
\Sum[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst2|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X31_Y11_N16
\Sum[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst3|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\Sum[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst4|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X31_Y7_N9
\Sum[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst5|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\Sum[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst6|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X31_Y13_N23
\Sum[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4|inst7|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\Sum[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X24_Y25_N23
\Sum[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X31_Y9_N9
\Sum[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst2|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\Sum[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst3|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X29_Y25_N2
\Sum[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst4|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X31_Y9_N2
\Sum[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst5|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X31_Y17_N2
\Sum[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst6|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X22_Y25_N30
\Sum[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|inst7|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\Sum[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X31_Y19_N23
\Sum[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\Sum[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst2|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\Sum[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst3|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\Sum[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst4|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\Sum[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst5|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\Sum[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst6|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\Sum[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst7|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\Sum[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\Sum[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\Sum[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst2|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\Sum[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst3|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\Sum[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst4|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\Sum[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst5|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\Sum[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst6|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\Sum[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst7|inst2~combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\CCout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(5),
	devoe => ww_devoe,
	o => \CCout[5]~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\CCout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(4),
	devoe => ww_devoe,
	o => \CCout[4]~output_o\);

-- Location: IOOBUF_X31_Y22_N9
\CCout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(3),
	devoe => ww_devoe,
	o => \CCout[3]~output_o\);

-- Location: IOOBUF_X31_Y22_N2
\CCout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(2),
	devoe => ww_devoe,
	o => \CCout[2]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\CCout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(1),
	devoe => ww_devoe,
	o => \CCout[1]~output_o\);

-- Location: IOOBUF_X31_Y22_N16
\CCout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst7(0),
	devoe => ww_devoe,
	o => \CCout[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(15),
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(14),
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(13),
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(12),
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(11),
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(10),
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(9),
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(8),
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X31_Y3_N2
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X31_Y3_N9
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X31_Y13_N15
\B[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X31_Y21_N1
\A[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X31_Y11_N8
\B[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X31_Y12_N22
\A[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\B[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X24_Y14_N20
\inst4|inst4|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst5~0_combout\ = (\A[28]~input_o\ & \B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \inst4|inst4|inst4|inst5~0_combout\);

-- Location: IOIBUF_X31_Y15_N15
\A[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X31_Y14_N1
\B[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X10_Y15_N22
\A[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X31_Y15_N1
\B[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X31_Y17_N22
\A[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X31_Y17_N15
\B[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X10_Y20_N22
\A[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X31_Y20_N15
\B[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X19_Y25_N15
\A[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X10_Y21_N8
\B[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X10_Y18_N8
\A[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X27_Y25_N29
\B[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X10_Y19_N1
\B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X10_Y16_N1
\A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X10_Y20_N1
\A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X10_Y18_N15
\A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X10_Y21_N22
\B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X10_Y22_N8
\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X10_Y20_N8
\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X16_Y19_N26
\inst4|inst2|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst5~0_combout\ = (\B[10]~input_o\ & \A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => \inst4|inst2|inst2|inst5~0_combout\);

-- Location: IOIBUF_X10_Y20_N15
\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X10_Y19_N8
\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X27_Y25_N22
\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X31_Y19_N1
\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X23_Y19_N20
\inst4|inst|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst5~0_combout\ = (\A[6]~input_o\ & \B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst4|inst|inst6|inst5~0_combout\);

-- Location: IOIBUF_X10_Y21_N1
\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X27_Y25_N1
\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X17_Y25_N15
\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X19_Y25_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X24_Y25_N29
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X22_Y21_N12
\inst4|inst|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst5~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst4|inst|inst2|inst5~0_combout\);

-- Location: IOIBUF_X19_Y25_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X24_Y25_N8
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X22_Y21_N10
\inst4|inst|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst5~1_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst5~1_combout\);

-- Location: LCCOMB_X22_Y21_N4
\inst4|inst|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst5~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst5~0_combout\);

-- Location: IOIBUF_X19_Y25_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X29_Y25_N15
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X22_Y21_N28
\inst4|inst|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst5~0_combout\ = (\A[1]~input_o\ & ((\inst4|inst|inst|inst5~1_combout\) # ((\inst4|inst|inst|inst5~0_combout\) # (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\inst4|inst|inst|inst5~1_combout\) # 
-- (\inst4|inst|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst5~1_combout\,
	datab => \inst4|inst|inst|inst5~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst4|inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\inst4|inst|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst5~1_combout\ = (\inst4|inst|inst1|inst5~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst4|inst|inst1|inst5~0_combout\,
	combout => \inst4|inst|inst2|inst5~1_combout\);

-- Location: IOIBUF_X17_Y25_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X29_Y25_N8
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X22_Y21_N14
\inst4|inst|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst5~0_combout\ = (\A[3]~input_o\ & ((\inst4|inst|inst2|inst5~0_combout\) # ((\inst4|inst|inst2|inst5~1_combout\) # (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & ((\inst4|inst|inst2|inst5~0_combout\) # 
-- (\inst4|inst|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst5~0_combout\,
	datab => \inst4|inst|inst2|inst5~1_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst4|inst|inst3|inst5~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst4|inst|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst5~1_combout\ = (\inst4|inst|inst3|inst5~0_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst4|inst|inst3|inst5~0_combout\,
	combout => \inst4|inst|inst4|inst5~1_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst4|inst|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst5~0_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \inst4|inst|inst4|inst5~0_combout\);

-- Location: IOIBUF_X17_Y25_N22
\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X27_Y25_N15
\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X23_Y21_N22
\inst4|inst|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst5~0_combout\ = (\A[5]~input_o\ & ((\inst4|inst|inst4|inst5~1_combout\) # ((\inst4|inst|inst4|inst5~0_combout\) # (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & ((\inst4|inst|inst4|inst5~1_combout\) # 
-- (\inst4|inst|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst5~1_combout\,
	datab => \inst4|inst|inst4|inst5~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst4|inst|inst5|inst5~0_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst4|inst|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst5~1_combout\ = (\inst4|inst|inst5|inst5~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst5|inst5~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst4|inst|inst6|inst5~1_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst4|inst|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst5~0_combout\ = (\B[7]~input_o\ & ((\inst4|inst|inst6|inst5~0_combout\) # ((\A[7]~input_o\) # (\inst4|inst|inst6|inst5~1_combout\)))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & ((\inst4|inst|inst6|inst5~0_combout\) # 
-- (\inst4|inst|inst6|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst4|inst|inst6|inst5~0_combout\,
	datac => \A[7]~input_o\,
	datad => \inst4|inst|inst6|inst5~1_combout\,
	combout => \inst4|inst|inst7|inst5~0_combout\);

-- Location: IOIBUF_X10_Y15_N15
\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X31_Y19_N8
\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X23_Y19_N26
\inst4|inst2|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst5~1_combout\ = (\inst4|inst|inst7|inst5~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst7|inst5~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst4|inst2|inst|inst5~1_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst4|inst2|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst5~0_combout\ = (\A[8]~input_o\ & \B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst4|inst2|inst|inst5~0_combout\);

-- Location: IOIBUF_X10_Y15_N8
\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X23_Y19_N12
\inst4|inst2|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst5~0_combout\ = (\A[9]~input_o\ & ((\inst4|inst2|inst|inst5~1_combout\) # ((\inst4|inst2|inst|inst5~0_combout\) # (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\inst4|inst2|inst|inst5~1_combout\) # 
-- (\inst4|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst|inst5~1_combout\,
	datab => \inst4|inst2|inst|inst5~0_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst4|inst2|inst1|inst5~0_combout\);

-- Location: LCCOMB_X16_Y19_N12
\inst4|inst2|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst5~1_combout\ = (\inst4|inst2|inst1|inst5~0_combout\ & ((\B[10]~input_o\) # (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \inst4|inst2|inst1|inst5~0_combout\,
	combout => \inst4|inst2|inst2|inst5~1_combout\);

-- Location: LCCOMB_X16_Y19_N10
\inst4|inst2|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst5~0_combout\ = (\A[11]~input_o\ & ((\inst4|inst2|inst2|inst5~0_combout\) # ((\B[11]~input_o\) # (\inst4|inst2|inst2|inst5~1_combout\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\inst4|inst2|inst2|inst5~0_combout\) # 
-- (\inst4|inst2|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst2|inst5~0_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \inst4|inst2|inst2|inst5~1_combout\,
	combout => \inst4|inst2|inst3|inst5~0_combout\);

-- Location: LCCOMB_X16_Y19_N28
\inst4|inst2|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst5~1_combout\ = (\inst4|inst2|inst3|inst5~0_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => \inst4|inst2|inst3|inst5~0_combout\,
	combout => \inst4|inst2|inst4|inst5~1_combout\);

-- Location: IOIBUF_X10_Y19_N15
\B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X16_Y19_N16
\inst4|inst2|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst5~0_combout\ = (\A[12]~input_o\ & \B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \inst4|inst2|inst4|inst5~0_combout\);

-- Location: LCCOMB_X16_Y19_N14
\inst4|inst2|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst5~0_combout\ = (\A[13]~input_o\ & ((\inst4|inst2|inst4|inst5~1_combout\) # ((\B[13]~input_o\) # (\inst4|inst2|inst4|inst5~0_combout\)))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\inst4|inst2|inst4|inst5~1_combout\) # 
-- (\inst4|inst2|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \inst4|inst2|inst4|inst5~1_combout\,
	datac => \B[13]~input_o\,
	datad => \inst4|inst2|inst4|inst5~0_combout\,
	combout => \inst4|inst2|inst5|inst5~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\inst4|inst2|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst5~1_combout\ = (\inst4|inst2|inst5|inst5~0_combout\ & ((\B[14]~input_o\) # (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \inst4|inst2|inst5|inst5~0_combout\,
	combout => \inst4|inst2|inst6|inst5~1_combout\);

-- Location: IOIBUF_X13_Y25_N22
\B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X17_Y19_N10
\inst4|inst2|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst5~0_combout\ = (\A[14]~input_o\ & \B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \inst4|inst2|inst6|inst5~0_combout\);

-- Location: LCCOMB_X17_Y19_N6
\inst4|inst2|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst5~0_combout\ = (\B[15]~input_o\ & ((\inst4|inst2|inst6|inst5~1_combout\) # ((\A[15]~input_o\) # (\inst4|inst2|inst6|inst5~0_combout\)))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\inst4|inst2|inst6|inst5~1_combout\) # 
-- (\inst4|inst2|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst6|inst5~1_combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \inst4|inst2|inst6|inst5~0_combout\,
	combout => \inst4|inst2|inst7|inst5~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst4|inst3|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst5~1_combout\ = (\inst4|inst2|inst7|inst5~0_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \inst4|inst2|inst7|inst5~0_combout\,
	combout => \inst4|inst3|inst|inst5~1_combout\);

-- Location: IOIBUF_X10_Y17_N1
\A[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X24_Y17_N18
\inst4|inst3|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst5~0_combout\ = (\A[16]~input_o\ & \B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \inst4|inst3|inst|inst5~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst4|inst3|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst5~0_combout\ = (\B[17]~input_o\ & ((\inst4|inst3|inst|inst5~1_combout\) # ((\A[17]~input_o\) # (\inst4|inst3|inst|inst5~0_combout\)))) # (!\B[17]~input_o\ & (\A[17]~input_o\ & ((\inst4|inst3|inst|inst5~1_combout\) # 
-- (\inst4|inst3|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \inst4|inst3|inst|inst5~1_combout\,
	datac => \A[17]~input_o\,
	datad => \inst4|inst3|inst|inst5~0_combout\,
	combout => \inst4|inst3|inst1|inst5~0_combout\);

-- Location: IOIBUF_X10_Y18_N22
\A[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\B[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X25_Y17_N8
\inst4|inst3|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst5~1_combout\ = (\inst4|inst3|inst1|inst5~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst1|inst5~0_combout\,
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \inst4|inst3|inst2|inst5~1_combout\);

-- Location: IOIBUF_X10_Y18_N1
\A[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X24_Y25_N1
\B[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X25_Y17_N18
\inst4|inst3|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst5~0_combout\ = (\A[18]~input_o\ & \B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => \inst4|inst3|inst2|inst5~0_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst4|inst3|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst5~0_combout\ = (\A[19]~input_o\ & ((\inst4|inst3|inst2|inst5~1_combout\) # ((\B[19]~input_o\) # (\inst4|inst3|inst2|inst5~0_combout\)))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\inst4|inst3|inst2|inst5~1_combout\) # 
-- (\inst4|inst3|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst2|inst5~1_combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \inst4|inst3|inst2|inst5~0_combout\,
	combout => \inst4|inst3|inst3|inst5~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst4|inst3|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst5~1_combout\ = (\inst4|inst3|inst3|inst5~0_combout\ & ((\B[20]~input_o\) # (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \inst4|inst3|inst3|inst5~0_combout\,
	combout => \inst4|inst3|inst4|inst5~1_combout\);

-- Location: IOIBUF_X31_Y20_N22
\B[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X25_Y17_N2
\inst4|inst3|inst4|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst5~0_combout\ = (\B[20]~input_o\ & \A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	combout => \inst4|inst3|inst4|inst5~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst4|inst3|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst5~0_combout\ = (\A[21]~input_o\ & ((\inst4|inst3|inst4|inst5~1_combout\) # ((\B[21]~input_o\) # (\inst4|inst3|inst4|inst5~0_combout\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & ((\inst4|inst3|inst4|inst5~1_combout\) # 
-- (\inst4|inst3|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \inst4|inst3|inst4|inst5~1_combout\,
	datac => \B[21]~input_o\,
	datad => \inst4|inst3|inst4|inst5~0_combout\,
	combout => \inst4|inst3|inst5|inst5~0_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst4|inst3|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst5~1_combout\ = (\inst4|inst3|inst5|inst5~0_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \inst4|inst3|inst5|inst5~0_combout\,
	combout => \inst4|inst3|inst6|inst5~1_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst4|inst3|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst5~0_combout\ = (\B[22]~input_o\ & \A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \inst4|inst3|inst6|inst5~0_combout\);

-- Location: IOIBUF_X31_Y21_N8
\A[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X31_Y22_N22
\B[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X23_Y21_N28
\inst4|inst3|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst5~0_combout\ = (\A[23]~input_o\ & ((\inst4|inst3|inst6|inst5~1_combout\) # ((\inst4|inst3|inst6|inst5~0_combout\) # (\B[23]~input_o\)))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & ((\inst4|inst3|inst6|inst5~1_combout\) # 
-- (\inst4|inst3|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst6|inst5~1_combout\,
	datab => \inst4|inst3|inst6|inst5~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \inst4|inst3|inst7|inst5~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst4|inst4|inst|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst5~1_combout\ = (\inst4|inst3|inst7|inst5~0_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \inst4|inst3|inst7|inst5~0_combout\,
	combout => \inst4|inst4|inst|inst5~1_combout\);

-- Location: IOIBUF_X31_Y15_N8
\A[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X10_Y16_N8
\B[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X23_Y14_N20
\inst4|inst4|inst|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst5~0_combout\ = (\B[24]~input_o\ & \A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	combout => \inst4|inst4|inst|inst5~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst4|inst4|inst1|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst5~0_combout\ = (\A[25]~input_o\ & ((\inst4|inst4|inst|inst5~1_combout\) # ((\B[25]~input_o\) # (\inst4|inst4|inst|inst5~0_combout\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\inst4|inst4|inst|inst5~1_combout\) # 
-- (\inst4|inst4|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst5~1_combout\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \inst4|inst4|inst|inst5~0_combout\,
	combout => \inst4|inst4|inst1|inst5~0_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst4|inst4|inst2|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst5~1_combout\ = (\inst4|inst4|inst1|inst5~0_combout\ & ((\A[26]~input_o\) # (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \inst4|inst4|inst1|inst5~0_combout\,
	combout => \inst4|inst4|inst2|inst5~1_combout\);

-- Location: IOIBUF_X31_Y12_N8
\A[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X31_Y14_N8
\B[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X25_Y14_N28
\inst4|inst4|inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst5~0_combout\ = (\B[26]~input_o\ & \A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \inst4|inst4|inst2|inst5~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst4|inst4|inst3|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst5~0_combout\ = (\A[27]~input_o\ & ((\inst4|inst4|inst2|inst5~1_combout\) # ((\B[27]~input_o\) # (\inst4|inst4|inst2|inst5~0_combout\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & ((\inst4|inst4|inst2|inst5~1_combout\) # 
-- (\inst4|inst4|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst2|inst5~1_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \inst4|inst4|inst2|inst5~0_combout\,
	combout => \inst4|inst4|inst3|inst5~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst4|inst4|inst4|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst5~1_combout\ = (\inst4|inst4|inst3|inst5~0_combout\ & ((\B[28]~input_o\) # (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \inst4|inst4|inst3|inst5~0_combout\,
	combout => \inst4|inst4|inst4|inst5~1_combout\);

-- Location: IOIBUF_X31_Y12_N15
\A[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X24_Y14_N4
\inst4|inst4|inst5|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst5~0_combout\ = (\B[29]~input_o\ & ((\inst4|inst4|inst4|inst5~0_combout\) # ((\inst4|inst4|inst4|inst5~1_combout\) # (\A[29]~input_o\)))) # (!\B[29]~input_o\ & (\A[29]~input_o\ & ((\inst4|inst4|inst4|inst5~0_combout\) # 
-- (\inst4|inst4|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \inst4|inst4|inst4|inst5~0_combout\,
	datac => \inst4|inst4|inst4|inst5~1_combout\,
	datad => \A[29]~input_o\,
	combout => \inst4|inst4|inst5|inst5~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst4|inst4|inst6|inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst5~1_combout\ = (\inst4|inst4|inst5|inst5~0_combout\ & ((\B[30]~input_o\) # (\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \inst4|inst4|inst5|inst5~0_combout\,
	combout => \inst4|inst4|inst6|inst5~1_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst4|inst4|inst6|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst5~0_combout\ = (\A[30]~input_o\ & \B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \inst4|inst4|inst6|inst5~0_combout\);

-- Location: IOIBUF_X31_Y21_N22
\A[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X31_Y12_N1
\B[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X23_Y17_N6
\inst4|inst4|inst7|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst5~0_combout\ = (\A[31]~input_o\ & ((\inst4|inst4|inst6|inst5~1_combout\) # ((\inst4|inst4|inst6|inst5~0_combout\) # (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & ((\inst4|inst4|inst6|inst5~1_combout\) # 
-- (\inst4|inst4|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst6|inst5~1_combout\,
	datab => \inst4|inst4|inst6|inst5~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \inst4|inst4|inst7|inst5~0_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) = (\A[30]~input_o\) # (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	combout => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1));

-- Location: IOIBUF_X0_Y6_N15
\clk1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G3
\clk1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y25_N22
\IR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X23_Y21_N9
\inst6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \IR[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst6(1));

-- Location: IOIBUF_X24_Y25_N15
\IR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: FF_X23_Y21_N31
\inst6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \IR[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst6(0));

-- Location: IOIBUF_X27_Y0_N15
\wren~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\dataa[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\dataa[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\dataa[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\dataa[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\dataa[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\dataa[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\dataa[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X17_Y0_N29
\dataa[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\datab[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\datab[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\datab[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\datab[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\datab[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\datab[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\datab[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\datab[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: DSPMULT_X21_Y3_N0
\inst|lpm_mult_component|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X21_Y3_N2
\inst|lpm_mult_component|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X29_Y0_N1
\wraddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(0),
	o => \wraddress[0]~input_o\);

-- Location: IOIBUF_X31_Y4_N22
\wraddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(1),
	o => \wraddress[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\wraddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(2),
	o => \wraddress[2]~input_o\);

-- Location: IOIBUF_X31_Y2_N1
\wraddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(3),
	o => \wraddress[3]~input_o\);

-- Location: IOIBUF_X31_Y4_N1
\wraddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wraddress(4),
	o => \wraddress[4]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\rdaddress[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(0),
	o => \rdaddress[0]~input_o\);

-- Location: LCCOMB_X27_Y3_N10
\inst1|rdaddress_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[0]~feeder_combout\ = \rdaddress[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[0]~input_o\,
	combout => \inst1|rdaddress_reg[0]~feeder_combout\);

-- Location: FF_X27_Y3_N11
\inst1|rdaddress_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(0));

-- Location: IOIBUF_X31_Y2_N22
\rdaddress[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(1),
	o => \rdaddress[1]~input_o\);

-- Location: LCCOMB_X27_Y3_N12
\inst1|rdaddress_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[1]~feeder_combout\ = \rdaddress[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[1]~input_o\,
	combout => \inst1|rdaddress_reg[1]~feeder_combout\);

-- Location: FF_X27_Y3_N13
\inst1|rdaddress_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(1));

-- Location: IOIBUF_X31_Y2_N15
\rdaddress[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(2),
	o => \rdaddress[2]~input_o\);

-- Location: FF_X30_Y3_N17
\inst1|rdaddress_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \rdaddress[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(2));

-- Location: IOIBUF_X31_Y4_N15
\rdaddress[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(3),
	o => \rdaddress[3]~input_o\);

-- Location: LCCOMB_X27_Y3_N6
\inst1|rdaddress_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[3]~feeder_combout\ = \rdaddress[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[3]~input_o\,
	combout => \inst1|rdaddress_reg[3]~feeder_combout\);

-- Location: FF_X27_Y3_N7
\inst1|rdaddress_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(3));

-- Location: IOIBUF_X31_Y4_N8
\rdaddress[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rdaddress(4),
	o => \rdaddress[4]~input_o\);

-- Location: LCCOMB_X27_Y3_N28
\inst1|rdaddress_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|rdaddress_reg[4]~feeder_combout\ = \rdaddress[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rdaddress[4]~input_o\,
	combout => \inst1|rdaddress_reg[4]~feeder_combout\);

-- Location: FF_X27_Y3_N29
\inst1|rdaddress_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|rdaddress_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rdaddress_reg\(4));

-- Location: M9K_X26_Y3_N0
\inst1|ram_block_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:inst1|altsyncram:ram_block_rtl_0|altsyncram_87g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portbre => VCC,
	clk0 => \clk1~inputclkctrl_outclk\,
	portadatain => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X23_Y14_N13
\inst2[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a15\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y14_N6
\inst4|inst4|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst|inst2~combout\ = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\inst4|inst3|inst7|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \inst4|inst3|inst7|inst5~0_combout\,
	combout => \inst4|inst4|inst|inst2~combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst8|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (inst6(1) & (inst6(0))) # (!inst6(1) & ((inst6(0) & ((\inst4|inst4|inst|inst2~combout\))) # (!inst6(0) & (\inst2[15]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => inst6(0),
	datac => \inst2[15]~_Duplicate_1_q\,
	datad => \inst4|inst4|inst|inst2~combout\,
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst8|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux0~1_combout\ = (inst6(1) & ((\inst8|Mux0~0_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) # (!\inst8|Mux0~0_combout\ & (\B[31]~input_o\)))) # (!inst6(1) & (((\inst8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datac => inst6(1),
	datad => \inst8|Mux0~0_combout\,
	combout => \inst8|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst4|inst4|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst1|inst2~combout\ = \A[25]~input_o\ $ (\B[25]~input_o\ $ (((\inst4|inst4|inst|inst5~1_combout\) # (\inst4|inst4|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst|inst5~1_combout\,
	datab => \A[25]~input_o\,
	datac => \B[25]~input_o\,
	datad => \inst4|inst4|inst|inst5~0_combout\,
	combout => \inst4|inst4|inst1|inst2~combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst3|ALTSQRT_component|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~28_combout\ = (!\A[30]~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \A[31]~input_o\,
	combout => \inst3|ALTSQRT_component|_~28_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ = CARRY(\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X23_Y17_N20
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\ = (\A[29]~input_o\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[29]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\ = CARRY((!\A[29]~input_o\ & !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y17_N22
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~28_combout\ $ (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\)))) 
-- # (GND)
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~28_combout\ & ((!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) 
-- # (!\inst3|ALTSQRT_component|_~28_combout\ & (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & !\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~28_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y17_N24
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\ = CARRY((!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\ & ((!\A[31]~input_o\) # (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~5\,
	cout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X23_Y17_N26
\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ = \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~7_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\);

-- Location: FF_X23_Y14_N9
\inst2[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a14\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y14_N8
\inst8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (inst6(1) & ((\B[30]~input_o\) # ((inst6(0))))) # (!inst6(1) & (((\inst2[14]~_Duplicate_1_q\ & !inst6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => \B[30]~input_o\,
	datac => \inst2[14]~_Duplicate_1_q\,
	datad => inst6(0),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst8|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux1~1_combout\ = (\inst8|Mux1~0_combout\ & (((!inst6(0)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\)))) # (!\inst8|Mux1~0_combout\ & (\inst4|inst4|inst1|inst2~combout\ & ((inst6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst1|inst2~combout\,
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datac => \inst8|Mux1~0_combout\,
	datad => inst6(0),
	combout => \inst8|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst3|ALTSQRT_component|_~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~148_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\A[30]~input_o\ & (\A[31]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- (((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~148_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst3|ALTSQRT_component|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~29_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\A[29]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~2_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => \A[29]~input_o\,
	combout => \inst3|ALTSQRT_component|_~29_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst3|ALTSQRT_component|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~30_combout\ = \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => \A[28]~input_o\,
	combout => \inst3|ALTSQRT_component|_~30_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ = CARRY(\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X23_Y18_N8
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\ = (\A[27]~input_o\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[27]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\ = CARRY((!\A[27]~input_o\ & !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y18_N10
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\inst3|ALTSQRT_component|_~30_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~30_combout\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~30_combout\ & !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~30_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y18_N12
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~29_combout\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|_~29_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\) # (GND))))) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~29_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|_~29_combout\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\))))
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~29_combout\))) 
-- # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|_~29_combout\ & !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~29_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y18_N14
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\ = CARRY((\inst3|ALTSQRT_component|_~148_combout\) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~148_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~7\,
	cout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X23_Y18_N16
\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ = !\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~9_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\);

-- Location: FF_X24_Y14_N7
\inst2[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a13\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y14_N2
\inst4|inst4|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst2|inst2~combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (\inst4|inst4|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \inst4|inst4|inst1|inst5~0_combout\,
	combout => \inst4|inst4|inst2|inst2~combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst4|inst2|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[13]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[13]~_Duplicate_1_q\,
	datad => \inst4|inst4|inst2|inst2~combout\,
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst8|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (inst6(1) & ((\inst8|Mux2~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\)) # (!\inst8|Mux2~0_combout\ & ((\B[29]~input_o\))))) # (!inst6(1) & (((\inst8|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datac => \B[29]~input_o\,
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst3|ALTSQRT_component|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~31_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~29_combout\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~6_combout\,
	datad => \inst3|ALTSQRT_component|_~29_combout\,
	combout => \inst3|ALTSQRT_component|_~31_combout\);

-- Location: LCCOMB_X20_Y18_N20
\inst3|ALTSQRT_component|_~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~149_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (((!\A[28]~input_o\))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => \A[28]~input_o\,
	combout => \inst3|ALTSQRT_component|_~149_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst3|ALTSQRT_component|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~32_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\A[27]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~2_combout\,
	datac => \A[27]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|_~32_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst3|ALTSQRT_component|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~33_combout\ = \A[26]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|_~33_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ = CARRY(\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X23_Y18_N20
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\ = (\A[25]~input_o\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[25]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\ = CARRY((!\A[25]~input_o\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y18_N22
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~33_combout\ $ (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~33_combout\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|_~33_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~33_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y18_N24
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~32_combout\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\ & 
-- VCC)) # (!\inst3|ALTSQRT_component|_~32_combout\ & (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~32_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~32_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~32_combout\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~32_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y18_N26
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ (\inst3|ALTSQRT_component|_~149_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|_~149_combout\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~149_combout\) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~149_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y18_N28
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\ = CARRY((!\inst3|ALTSQRT_component|_~31_combout\ & !\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~31_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~9\,
	cout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X23_Y18_N30
\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ = \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~11_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst4|inst4|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst3|inst2~combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\inst4|inst4|inst2|inst5~1_combout\) # (\inst4|inst4|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst2|inst5~1_combout\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \inst4|inst4|inst2|inst5~0_combout\,
	combout => \inst4|inst4|inst3|inst2~combout\);

-- Location: FF_X24_Y14_N11
\inst2[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a12\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y14_N10
\inst8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (inst6(0) & (inst6(1))) # (!inst6(0) & ((inst6(1) & ((\B[28]~input_o\))) # (!inst6(1) & (\inst2[12]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[12]~_Duplicate_1_q\,
	datad => \B[28]~input_o\,
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst8|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (inst6(0) & ((\inst8|Mux3~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\)) # (!\inst8|Mux3~0_combout\ & ((\inst4|inst4|inst3|inst2~combout\))))) # (!inst6(0) & (((\inst8|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datac => \inst4|inst4|inst3|inst2~combout\,
	datad => \inst8|Mux3~0_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst3|ALTSQRT_component|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~34_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|_~149_combout\)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~149_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|_~34_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst3|ALTSQRT_component|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~35_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~32_combout\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|_~32_combout\,
	combout => \inst3|ALTSQRT_component|_~35_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst3|ALTSQRT_component|_~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~150_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ ((!\A[26]~input_o\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \A[26]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~150_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst3|ALTSQRT_component|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~36_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\A[25]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \A[25]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~36_combout\);

-- Location: LCCOMB_X20_Y18_N26
\inst3|ALTSQRT_component|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~37_combout\ = \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ (\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datac => \A[24]~input_o\,
	combout => \inst3|ALTSQRT_component|_~37_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ = CARRY(\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y18_N2
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\ = (\A[23]~input_o\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[23]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\ = CARRY((!\A[23]~input_o\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y18_N4
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ (\inst3|ALTSQRT_component|_~37_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~37_combout\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~37_combout\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~37_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y18_N6
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~36_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~36_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~36_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~36_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|_~36_combout\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~36_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y18_N8
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\inst3|ALTSQRT_component|_~150_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~150_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|_~150_combout\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~150_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y18_N10
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~35_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|_~35_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\) # (GND))))) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~35_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|_~35_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\))))
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|_~35_combout\))) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|_~35_combout\ & !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~35_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y18_N12
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\ = CARRY((\inst3|ALTSQRT_component|_~34_combout\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~34_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~11\,
	cout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X22_Y18_N14
\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ = !\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~13_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\);

-- Location: FF_X24_Y14_N13
\inst2[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a11\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y14_N28
\inst4|inst4|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst4|inst2~combout\ = \B[28]~input_o\ $ (\A[28]~input_o\ $ (\inst4|inst4|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \inst4|inst4|inst3|inst5~0_combout\,
	combout => \inst4|inst4|inst4|inst2~combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst8|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst4|inst4|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[11]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[11]~_Duplicate_1_q\,
	datad => \inst4|inst4|inst4|inst2~combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst8|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux4~1_combout\ = (inst6(1) & ((\inst8|Mux4~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\)) # (!\inst8|Mux4~0_combout\ & ((\B[27]~input_o\))))) # (!inst6(1) & (((\inst8|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => inst6(1),
	datac => \B[27]~input_o\,
	datad => \inst8|Mux4~0_combout\,
	combout => \inst8|Mux4~1_combout\);

-- Location: FF_X24_Y14_N3
\inst2[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a10\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y14_N2
\inst8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (inst6(0) & (inst6(1))) # (!inst6(0) & ((inst6(1) & ((\B[26]~input_o\))) # (!inst6(1) & (\inst2[10]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[10]~_Duplicate_1_q\,
	datad => \B[26]~input_o\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst3|ALTSQRT_component|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~38_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~35_combout\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|_~35_combout\,
	combout => \inst3|ALTSQRT_component|_~38_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst3|ALTSQRT_component|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~39_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~150_combout\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|_~150_combout\,
	combout => \inst3|ALTSQRT_component|_~39_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst3|ALTSQRT_component|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~40_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~36_combout\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|_~36_combout\,
	combout => \inst3|ALTSQRT_component|_~40_combout\);

-- Location: LCCOMB_X20_Y18_N28
\inst3|ALTSQRT_component|_~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~151_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\A[24]~input_o\ $ ((!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \A[24]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~151_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst3|ALTSQRT_component|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~41_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\A[23]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~2_combout\,
	datad => \A[23]~input_o\,
	combout => \inst3|ALTSQRT_component|_~41_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst3|ALTSQRT_component|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~42_combout\ = \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => \A[22]~input_o\,
	combout => \inst3|ALTSQRT_component|_~42_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ = CARRY(\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X22_Y17_N6
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\ = (\A[21]~input_o\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[21]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\ = CARRY((!\A[21]~input_o\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y17_N8
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ (\inst3|ALTSQRT_component|_~42_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~42_combout\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|_~42_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|_~42_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y17_N10
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~41_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~41_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~41_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~41_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~41_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~41_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y17_N12
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~151_combout\ $ (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~151_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~151_combout\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~151_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\);

-- Location: LCCOMB_X22_Y17_N14
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|_~40_combout\ & ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\)))) # (!\inst3|ALTSQRT_component|_~40_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|_~40_combout\ & (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|_~40_combout\ & ((!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~40_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\);

-- Location: LCCOMB_X22_Y17_N16
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ (\inst3|ALTSQRT_component|_~39_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|_~39_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~39_combout\) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~39_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\);

-- Location: LCCOMB_X22_Y17_N18
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\ = CARRY((!\inst3|ALTSQRT_component|_~38_combout\ & !\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~38_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~13\,
	cout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X22_Y17_N20
\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ = \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~15_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst4|inst4|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst5|inst2~combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (((\inst4|inst4|inst4|inst5~0_combout\) # (\inst4|inst4|inst4|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \inst4|inst4|inst4|inst5~0_combout\,
	datac => \inst4|inst4|inst4|inst5~1_combout\,
	datad => \A[29]~input_o\,
	combout => \inst4|inst4|inst5|inst2~combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst8|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux5~1_combout\ = (inst6(0) & ((\inst8|Mux5~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\)) # (!\inst8|Mux5~0_combout\ & ((\inst4|inst4|inst5|inst2~combout\))))) # (!inst6(0) & (\inst8|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => \inst8|Mux5~0_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => \inst4|inst4|inst5|inst2~combout\,
	combout => \inst8|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst4|inst4|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst6|inst2~combout\ = \B[30]~input_o\ $ (\A[30]~input_o\ $ (\inst4|inst4|inst5|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \inst4|inst4|inst5|inst5~0_combout\,
	combout => \inst4|inst4|inst6|inst2~combout\);

-- Location: FF_X23_Y14_N29
\inst2[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a9\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y14_N28
\inst8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (inst6(1) & (((inst6(0))))) # (!inst6(1) & ((inst6(0) & (\inst4|inst4|inst6|inst2~combout\)) # (!inst6(0) & ((\inst2[9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => \inst4|inst4|inst6|inst2~combout\,
	datac => \inst2[9]~_Duplicate_1_q\,
	datad => inst6(0),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst3|ALTSQRT_component|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~43_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|_~39_combout\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datac => \inst3|ALTSQRT_component|_~39_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~43_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst3|ALTSQRT_component|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~44_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~40_combout\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|_~40_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~44_combout\);

-- Location: LCCOMB_X20_Y17_N26
\inst3|ALTSQRT_component|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~45_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~151_combout\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|_~151_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~45_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst3|ALTSQRT_component|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~46_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~41_combout\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => \inst3|ALTSQRT_component|_~41_combout\,
	combout => \inst3|ALTSQRT_component|_~46_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst3|ALTSQRT_component|_~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~152_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ (((!\A[22]~input_o\))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~4_combout\,
	datad => \A[22]~input_o\,
	combout => \inst3|ALTSQRT_component|_~152_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst3|ALTSQRT_component|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~47_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\A[21]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~47_combout\);

-- Location: LCCOMB_X20_Y18_N24
\inst3|ALTSQRT_component|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~48_combout\ = \A[20]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[20]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~48_combout\);

-- Location: LCCOMB_X20_Y17_N6
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ = CARRY(\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X20_Y17_N8
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\ = (\A[19]~input_o\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[19]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\ = CARRY((!\A[19]~input_o\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y17_N10
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ (\inst3|ALTSQRT_component|_~48_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~48_combout\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|_~48_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~48_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\);

-- Location: LCCOMB_X20_Y17_N12
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~47_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|_~47_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~47_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|_~47_combout\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~47_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\);

-- Location: LCCOMB_X20_Y17_N14
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ (\inst3|ALTSQRT_component|_~152_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~152_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|_~152_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~152_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\);

-- Location: LCCOMB_X20_Y17_N16
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~46_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~46_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\)))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~46_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~46_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|_~46_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~46_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\);

-- Location: LCCOMB_X20_Y17_N18
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~45_combout\ $ (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~45_combout\ & ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~45_combout\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~45_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\);

-- Location: LCCOMB_X20_Y17_N20
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|_~44_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\ & VCC)))) # 
-- (!\inst3|ALTSQRT_component|_~44_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\) # (GND))) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\))))
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|_~44_combout\ & (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|_~44_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~44_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\);

-- Location: LCCOMB_X20_Y17_N22
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\ = CARRY((\inst3|ALTSQRT_component|_~43_combout\) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~43_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~15\,
	cout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X20_Y17_N24
\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ = !\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~17_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X18_Y17_N8
\inst8|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux6~1_combout\ = (\inst8|Mux6~0_combout\ & (((!inst6(1)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\)))) # (!\inst8|Mux6~0_combout\ & (\B[25]~input_o\ & ((inst6(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \inst8|Mux6~0_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => inst6(1),
	combout => \inst8|Mux6~1_combout\);

-- Location: FF_X23_Y14_N23
\inst2[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a8\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y14_N22
\inst8|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (inst6(1) & ((\B[24]~input_o\) # ((inst6(0))))) # (!inst6(1) & (((\inst2[8]~_Duplicate_1_q\ & !inst6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(1),
	datab => \B[24]~input_o\,
	datac => \inst2[8]~_Duplicate_1_q\,
	datad => inst6(0),
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y17_N2
\inst3|ALTSQRT_component|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~49_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|_~44_combout\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~44_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~49_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst3|ALTSQRT_component|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~50_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~45_combout\))) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~12_combout\,
	datac => \inst3|ALTSQRT_component|_~45_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~50_combout\);

-- Location: LCCOMB_X20_Y17_N4
\inst3|ALTSQRT_component|_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~51_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~46_combout\))) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|_~46_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~51_combout\);

-- Location: LCCOMB_X20_Y17_N28
\inst3|ALTSQRT_component|_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~52_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|_~152_combout\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~152_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~52_combout\);

-- Location: LCCOMB_X20_Y17_N0
\inst3|ALTSQRT_component|_~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~53_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~47_combout\))) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|_~47_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~53_combout\);

-- Location: LCCOMB_X19_Y17_N6
\inst3|ALTSQRT_component|_~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~153_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ (((!\A[20]~input_o\))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~4_combout\,
	datad => \A[20]~input_o\,
	combout => \inst3|ALTSQRT_component|_~153_combout\);

-- Location: LCCOMB_X19_Y17_N0
\inst3|ALTSQRT_component|_~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~54_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\A[19]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~54_combout\);

-- Location: LCCOMB_X18_Y17_N26
\inst3|ALTSQRT_component|_~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~55_combout\ = \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ $ (\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datac => \A[18]~input_o\,
	combout => \inst3|ALTSQRT_component|_~55_combout\);

-- Location: LCCOMB_X19_Y17_N10
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ = CARRY(\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X19_Y17_N12
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\ = (\A[17]~input_o\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[17]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\ = CARRY((!\A[17]~input_o\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\);

-- Location: LCCOMB_X19_Y17_N14
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~55_combout\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~55_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\)) # 
-- (!\inst3|ALTSQRT_component|_~55_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~55_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y17_N16
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~54_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~54_combout\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~54_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~54_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|_~54_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~54_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\);

-- Location: LCCOMB_X19_Y17_N18
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~153_combout\ $ (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~153_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~153_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~153_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y17_N20
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~53_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~53_combout\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\)))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~53_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~53_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~53_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~53_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\);

-- Location: LCCOMB_X19_Y17_N22
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ (\inst3|ALTSQRT_component|_~52_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~52_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|_~52_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~52_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\);

-- Location: LCCOMB_X19_Y17_N24
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|_~51_combout\ & ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\)))) # (!\inst3|ALTSQRT_component|_~51_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|_~51_combout\ & (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\)) 
-- # (!\inst3|ALTSQRT_component|_~51_combout\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~51_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\);

-- Location: LCCOMB_X19_Y17_N26
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|_~50_combout\ $ (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|_~50_combout\ & ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) # (!\inst3|ALTSQRT_component|_~50_combout\ & (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~50_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\);

-- Location: LCCOMB_X19_Y17_N28
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\ = CARRY((!\inst3|ALTSQRT_component|_~49_combout\ & !\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~49_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~17\,
	cout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X19_Y17_N30
\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ = \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~19_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst4|inst4|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4|inst7|inst2~combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\inst4|inst4|inst6|inst5~1_combout\) # (\inst4|inst4|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4|inst6|inst5~1_combout\,
	datab => \inst4|inst4|inst6|inst5~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \inst4|inst4|inst7|inst2~combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst8|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux7~1_combout\ = (\inst8|Mux7~0_combout\ & (((!inst6(0))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\))) # (!\inst8|Mux7~0_combout\ & (((\inst4|inst4|inst7|inst2~combout\ & inst6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~0_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datac => \inst4|inst4|inst7|inst2~combout\,
	datad => inst6(0),
	combout => \inst8|Mux7~1_combout\);

-- Location: FF_X24_Y17_N3
\inst2[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y17_N0
\inst4|inst3|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst|inst2~combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\inst4|inst2|inst7|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \inst4|inst2|inst7|inst5~0_combout\,
	combout => \inst4|inst3|inst|inst2~combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst8|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux8~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst3|inst|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[7]~_Duplicate_1_q\,
	datad => \inst4|inst3|inst|inst2~combout\,
	combout => \inst8|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y17_N2
\inst3|ALTSQRT_component|_~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~56_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|_~50_combout\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~50_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~56_combout\);

-- Location: LCCOMB_X19_Y17_N8
\inst3|ALTSQRT_component|_~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~57_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|_~51_combout\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~51_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|_~57_combout\);

-- Location: LCCOMB_X18_Y17_N10
\inst3|ALTSQRT_component|_~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~58_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~52_combout\))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~12_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|_~52_combout\,
	combout => \inst3|ALTSQRT_component|_~58_combout\);

-- Location: LCCOMB_X18_Y17_N30
\inst3|ALTSQRT_component|_~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~59_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|_~53_combout\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~53_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|_~59_combout\);

-- Location: LCCOMB_X19_Y17_N4
\inst3|ALTSQRT_component|_~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~60_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|_~153_combout\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~153_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|_~60_combout\);

-- Location: LCCOMB_X18_Y17_N0
\inst3|ALTSQRT_component|_~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~61_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~54_combout\))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|_~54_combout\,
	combout => \inst3|ALTSQRT_component|_~61_combout\);

-- Location: LCCOMB_X18_Y17_N20
\inst3|ALTSQRT_component|_~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~154_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\A[18]~input_o\ $ (((!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~4_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~154_combout\);

-- Location: LCCOMB_X18_Y17_N24
\inst3|ALTSQRT_component|_~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~62_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\A[17]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~2_combout\,
	datad => \A[17]~input_o\,
	combout => \inst3|ALTSQRT_component|_~62_combout\);

-- Location: LCCOMB_X18_Y17_N22
\inst3|ALTSQRT_component|_~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~63_combout\ = \A[16]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~63_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ = CARRY(\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y17_N8
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\ = (\A[15]~input_o\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[15]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\ = CARRY((!\A[15]~input_o\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y17_N10
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ $ (\inst3|ALTSQRT_component|_~63_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~63_combout\))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (!\inst3|ALTSQRT_component|_~63_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~63_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y17_N12
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~62_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|_~62_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~62_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|_~62_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~62_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y17_N14
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~154_combout\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~154_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~154_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~154_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y17_N16
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~61_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~61_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\)))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~61_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~61_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|_~61_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|_~61_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y17_N18
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~60_combout\ $ (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~60_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~60_combout\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~60_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y17_N20
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|_~59_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|_~59_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|_~59_combout\ & (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~59_combout\ & ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~59_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y17_N22
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\inst3|ALTSQRT_component|_~58_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~58_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|_~58_combout\ & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~58_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y17_N24
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|_~57_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\ & VCC)))) # 
-- (!\inst3|ALTSQRT_component|_~57_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\) # (GND))) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\))))
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|_~57_combout\ & (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|_~57_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~57_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y17_N26
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\ = CARRY((\inst3|ALTSQRT_component|_~56_combout\) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~56_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~19\,
	cout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X17_Y17_N28
\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ = !\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~21_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X23_Y21_N18
\inst8|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux8~1_combout\ = (\inst8|Mux8~0_combout\ & (((!inst6(1))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\))) # (!\inst8|Mux8~0_combout\ & (((inst6(1) & \B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux8~0_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => inst6(1),
	datad => \B[23]~input_o\,
	combout => \inst8|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y17_N2
\inst3|ALTSQRT_component|_~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~64_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|_~57_combout\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|_~57_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~64_combout\);

-- Location: LCCOMB_X18_Y17_N6
\inst3|ALTSQRT_component|_~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~65_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|_~58_combout\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~58_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~65_combout\);

-- Location: LCCOMB_X18_Y17_N14
\inst3|ALTSQRT_component|_~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~66_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|_~59_combout\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|_~59_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|_~66_combout\);

-- Location: LCCOMB_X17_Y17_N30
\inst3|ALTSQRT_component|_~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~67_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|_~60_combout\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~60_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~67_combout\);

-- Location: LCCOMB_X18_Y17_N28
\inst3|ALTSQRT_component|_~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~68_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~61_combout\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|_~61_combout\,
	combout => \inst3|ALTSQRT_component|_~68_combout\);

-- Location: LCCOMB_X18_Y17_N18
\inst3|ALTSQRT_component|_~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~69_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~154_combout\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|_~154_combout\,
	combout => \inst3|ALTSQRT_component|_~69_combout\);

-- Location: LCCOMB_X18_Y17_N16
\inst3|ALTSQRT_component|_~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~70_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~62_combout\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~6_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|_~62_combout\,
	combout => \inst3|ALTSQRT_component|_~70_combout\);

-- Location: LCCOMB_X18_Y17_N4
\inst3|ALTSQRT_component|_~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~155_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\A[16]~input_o\ $ ((!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~155_combout\);

-- Location: LCCOMB_X18_Y17_N12
\inst3|ALTSQRT_component|_~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~71_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\A[15]~input_o\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~2_combout\,
	datab => \A[15]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|_~71_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst3|ALTSQRT_component|_~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~72_combout\ = \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ $ (\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => \A[14]~input_o\,
	combout => \inst3|ALTSQRT_component|_~72_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ = CARRY(\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X19_Y16_N4
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\ = (\A[13]~input_o\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[13]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\ = CARRY((!\A[13]~input_o\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\);

-- Location: LCCOMB_X19_Y16_N6
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ $ (\inst3|ALTSQRT_component|_~72_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~72_combout\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|_~72_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datab => \inst3|ALTSQRT_component|_~72_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y16_N8
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~71_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~71_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\)))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~71_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~71_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (!\inst3|ALTSQRT_component|_~71_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\) # (!\inst3|ALTSQRT_component|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~71_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\);

-- Location: LCCOMB_X19_Y16_N10
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~155_combout\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~155_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~155_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~155_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y16_N12
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|_~70_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\)))) # (!\inst3|ALTSQRT_component|_~70_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|_~70_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\)) 
-- # (!\inst3|ALTSQRT_component|_~70_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~70_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\);

-- Location: LCCOMB_X19_Y16_N14
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~69_combout\ $ (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~69_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~69_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~69_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\);

-- Location: LCCOMB_X19_Y16_N16
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~68_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|_~68_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~68_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~68_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~68_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~68_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\);

-- Location: LCCOMB_X19_Y16_N18
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ (\inst3|ALTSQRT_component|_~67_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~67_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|_~67_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~67_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\);

-- Location: LCCOMB_X19_Y16_N20
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~66_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\ 
-- & VCC)) # (!\inst3|ALTSQRT_component|_~66_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\)))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~66_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~66_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~66_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\) # (!\inst3|ALTSQRT_component|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~66_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\);

-- Location: LCCOMB_X19_Y16_N22
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|_~65_combout\ $ (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|_~65_combout\ & ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) # (!\inst3|ALTSQRT_component|_~65_combout\ & (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~65_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\);

-- Location: LCCOMB_X19_Y16_N24
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\ = CARRY((!\inst3|ALTSQRT_component|_~64_combout\ & !\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~64_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~21\,
	cout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X19_Y16_N26
\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ = \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~23_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\);

-- Location: FF_X24_Y17_N23
\inst2[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y17_N22
\inst8|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux9~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (\B[22]~input_o\)) # (!inst6(1) & ((\inst2[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => \B[22]~input_o\,
	datac => \inst2[6]~_Duplicate_1_q\,
	datad => inst6(1),
	combout => \inst8|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst4|inst3|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst1|inst2~combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (((\inst4|inst3|inst|inst5~1_combout\) # (\inst4|inst3|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \inst4|inst3|inst|inst5~1_combout\,
	datac => \A[17]~input_o\,
	datad => \inst4|inst3|inst|inst5~0_combout\,
	combout => \inst4|inst3|inst1|inst2~combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst8|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux9~1_combout\ = (inst6(0) & ((\inst8|Mux9~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\)) # (!\inst8|Mux9~0_combout\ & ((\inst4|inst3|inst1|inst2~combout\))))) # (!inst6(0) & (((\inst8|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst8|Mux9~0_combout\,
	datad => \inst4|inst3|inst1|inst2~combout\,
	combout => \inst8|Mux9~1_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst3|ALTSQRT_component|_~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~73_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~65_combout\))) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~20_combout\,
	datac => \inst3|ALTSQRT_component|_~65_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|_~73_combout\);

-- Location: LCCOMB_X18_Y16_N26
\inst3|ALTSQRT_component|_~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~74_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~66_combout\))) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~18_combout\,
	datad => \inst3|ALTSQRT_component|_~66_combout\,
	combout => \inst3|ALTSQRT_component|_~74_combout\);

-- Location: LCCOMB_X18_Y16_N2
\inst3|ALTSQRT_component|_~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~75_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~67_combout\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~67_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~75_combout\);

-- Location: LCCOMB_X18_Y16_N10
\inst3|ALTSQRT_component|_~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~76_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~68_combout\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|_~68_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~14_combout\,
	combout => \inst3|ALTSQRT_component|_~76_combout\);

-- Location: LCCOMB_X18_Y16_N12
\inst3|ALTSQRT_component|_~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~77_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~69_combout\))) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|_~69_combout\,
	combout => \inst3|ALTSQRT_component|_~77_combout\);

-- Location: LCCOMB_X18_Y16_N18
\inst3|ALTSQRT_component|_~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~78_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~70_combout\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|_~70_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~10_combout\,
	combout => \inst3|ALTSQRT_component|_~78_combout\);

-- Location: LCCOMB_X19_Y16_N30
\inst3|ALTSQRT_component|_~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~79_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~155_combout\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~155_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|_~79_combout\);

-- Location: LCCOMB_X18_Y16_N16
\inst3|ALTSQRT_component|_~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~80_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~71_combout\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|_~71_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|_~80_combout\);

-- Location: LCCOMB_X18_Y16_N24
\inst3|ALTSQRT_component|_~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~156_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\A[14]~input_o\ $ ((!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~156_combout\);

-- Location: LCCOMB_X17_Y19_N18
\inst3|ALTSQRT_component|_~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~81_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\A[13]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~81_combout\);

-- Location: LCCOMB_X17_Y19_N30
\inst3|ALTSQRT_component|_~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~82_combout\ = \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ $ (\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datac => \A[12]~input_o\,
	combout => \inst3|ALTSQRT_component|_~82_combout\);

-- Location: LCCOMB_X17_Y16_N4
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ = CARRY(\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y16_N6
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\ = (\A[11]~input_o\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[11]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\ = CARRY((!\A[11]~input_o\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y16_N8
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~82_combout\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~82_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\)) 
-- # (!\inst3|ALTSQRT_component|_~82_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~82_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y16_N10
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~81_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\)))) # 
-- (!\inst3|ALTSQRT_component|_~81_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~81_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~81_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~81_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y16_N12
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ $ (\inst3|ALTSQRT_component|_~156_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~156_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (\inst3|ALTSQRT_component|_~156_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~156_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y16_N14
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~80_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|_~80_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~80_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~80_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|_~80_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|_~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datab => \inst3|ALTSQRT_component|_~80_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y16_N16
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~79_combout\ $ (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~79_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~79_combout\ & (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~79_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y16_N18
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|_~78_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|_~78_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|_~78_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~78_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~78_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y16_N20
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ (\inst3|ALTSQRT_component|_~77_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~77_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|_~77_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~77_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y16_N22
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~76_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|_~76_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~76_combout\ & (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~76_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|_~76_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\) # 
-- (!\inst3|ALTSQRT_component|_~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~76_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y16_N24
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|_~75_combout\ $ (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|_~75_combout\ & ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\))) # (!\inst3|ALTSQRT_component|_~75_combout\ & (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~75_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y16_N26
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~74_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|_~74_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\) # (GND))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~74_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|_~74_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\))))
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|_~74_combout\))) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|_~74_combout\ & !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~74_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\);

-- Location: LCCOMB_X17_Y16_N28
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\ = CARRY((\inst3|ALTSQRT_component|_~73_combout\) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~73_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~23\,
	cout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X17_Y16_N30
\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ = !\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~25_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\);

-- Location: FF_X24_Y17_N21
\inst2[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y17_N6
\inst4|inst3|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst2|inst2~combout\ = \A[18]~input_o\ $ (\inst4|inst3|inst1|inst5~0_combout\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \inst4|inst3|inst1|inst5~0_combout\,
	datad => \B[18]~input_o\,
	combout => \inst4|inst3|inst2|inst2~combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst8|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux10~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst3|inst2|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[5]~_Duplicate_1_q\,
	datad => \inst4|inst3|inst2|inst2~combout\,
	combout => \inst8|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst8|Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux10~1_combout\ = (inst6(1) & ((\inst8|Mux10~0_combout\ & ((!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\))) # (!\inst8|Mux10~0_combout\ & (\B[21]~input_o\)))) # (!inst6(1) & (((\inst8|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => inst6(1),
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst8|Mux10~0_combout\,
	combout => \inst8|Mux10~1_combout\);

-- Location: FF_X25_Y17_N23
\inst2[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y17_N22
\inst8|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux11~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (\B[20]~input_o\)) # (!inst6(1) & ((\inst2[4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => inst6(0),
	datac => \inst2[4]~_Duplicate_1_q\,
	datad => inst6(1),
	combout => \inst8|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst4|inst3|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst3|inst2~combout\ = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\inst4|inst3|inst2|inst5~1_combout\) # (\inst4|inst3|inst2|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst2|inst5~1_combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \inst4|inst3|inst2|inst5~0_combout\,
	combout => \inst4|inst3|inst3|inst2~combout\);

-- Location: LCCOMB_X18_Y16_N28
\inst3|ALTSQRT_component|_~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~83_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~74_combout\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~74_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|_~83_combout\);

-- Location: LCCOMB_X18_Y16_N30
\inst3|ALTSQRT_component|_~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~84_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~75_combout\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|_~75_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~84_combout\);

-- Location: LCCOMB_X18_Y16_N22
\inst3|ALTSQRT_component|_~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~85_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~76_combout\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~76_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~85_combout\);

-- Location: LCCOMB_X17_Y16_N0
\inst3|ALTSQRT_component|_~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~86_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~77_combout\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|_~77_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~86_combout\);

-- Location: LCCOMB_X18_Y16_N6
\inst3|ALTSQRT_component|_~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~87_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~78_combout\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|_~78_combout\,
	combout => \inst3|ALTSQRT_component|_~87_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst3|ALTSQRT_component|_~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~88_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~79_combout\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|_~79_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~88_combout\);

-- Location: LCCOMB_X18_Y16_N4
\inst3|ALTSQRT_component|_~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~89_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~80_combout\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|_~80_combout\,
	combout => \inst3|ALTSQRT_component|_~89_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst3|ALTSQRT_component|_~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~90_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~156_combout\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~8_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|_~156_combout\,
	combout => \inst3|ALTSQRT_component|_~90_combout\);

-- Location: LCCOMB_X17_Y19_N8
\inst3|ALTSQRT_component|_~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~91_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~81_combout\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~6_combout\,
	datad => \inst3|ALTSQRT_component|_~81_combout\,
	combout => \inst3|ALTSQRT_component|_~91_combout\);

-- Location: LCCOMB_X18_Y16_N14
\inst3|ALTSQRT_component|_~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~157_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\A[12]~input_o\ $ ((!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~157_combout\);

-- Location: LCCOMB_X16_Y19_N18
\inst3|ALTSQRT_component|_~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~92_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\A[11]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~92_combout\);

-- Location: LCCOMB_X16_Y19_N8
\inst3|ALTSQRT_component|_~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~93_combout\ = \A[10]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|_~93_combout\);

-- Location: LCCOMB_X17_Y15_N2
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ = CARRY(\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X17_Y15_N4
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\ = (\A[9]~input_o\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[9]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\ = CARRY((!\A[9]~input_o\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y15_N6
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~93_combout\ $ (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~93_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\)) # (!\inst3|ALTSQRT_component|_~93_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~93_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y15_N8
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~92_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\)))) # 
-- (!\inst3|ALTSQRT_component|_~92_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~92_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~92_combout\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~92_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y15_N10
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~157_combout\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~157_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~157_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~157_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y15_N12
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~91_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|_~91_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~91_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~91_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (!\inst3|ALTSQRT_component|_~91_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|_~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~91_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y15_N14
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ $ (\inst3|ALTSQRT_component|_~90_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~90_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (\inst3|ALTSQRT_component|_~90_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datab => \inst3|ALTSQRT_component|_~90_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y15_N16
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|_~89_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|_~89_combout\ & ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|_~89_combout\ & (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~89_combout\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~89_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y15_N18
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ (\inst3|ALTSQRT_component|_~88_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~88_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|_~88_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|_~88_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y15_N20
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~87_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|_~87_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~87_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~87_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~87_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\) # 
-- (!\inst3|ALTSQRT_component|_~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~87_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\);

-- Location: LCCOMB_X17_Y15_N22
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|_~86_combout\ $ (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|_~86_combout\ & ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\))) # (!\inst3|ALTSQRT_component|_~86_combout\ & (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~86_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\);

-- Location: LCCOMB_X17_Y15_N24
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~85_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|_~85_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~85_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|_~85_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~85_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|_~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~85_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\);

-- Location: LCCOMB_X17_Y15_N26
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ (\inst3|ALTSQRT_component|_~84_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|_~84_combout\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\)) 
-- # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~84_combout\) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~84_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\);

-- Location: LCCOMB_X17_Y15_N28
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\ = CARRY((!\inst3|ALTSQRT_component|_~83_combout\ & !\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~83_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~25\,
	cout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X17_Y15_N30
\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ = \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~27_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst8|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux11~1_combout\ = (\inst8|Mux11~0_combout\ & (((!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\)) # (!inst6(0)))) # (!\inst8|Mux11~0_combout\ & (inst6(0) & (\inst4|inst3|inst3|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux11~0_combout\,
	datab => inst6(0),
	datac => \inst4|inst3|inst3|inst2~combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst8|Mux11~1_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst3|ALTSQRT_component|_~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~94_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~84_combout\))) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~24_combout\,
	datac => \inst3|ALTSQRT_component|_~84_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|_~94_combout\);

-- Location: LCCOMB_X18_Y15_N2
\inst3|ALTSQRT_component|_~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~95_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~85_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|_~85_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|_~95_combout\);

-- Location: LCCOMB_X18_Y15_N20
\inst3|ALTSQRT_component|_~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~96_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~86_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~86_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~96_combout\);

-- Location: LCCOMB_X18_Y15_N30
\inst3|ALTSQRT_component|_~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~97_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~87_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|_~87_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~97_combout\);

-- Location: LCCOMB_X18_Y15_N8
\inst3|ALTSQRT_component|_~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~98_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~88_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|_~88_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~98_combout\);

-- Location: LCCOMB_X18_Y16_N8
\inst3|ALTSQRT_component|_~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~99_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~89_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~89_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~14_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|_~99_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst3|ALTSQRT_component|_~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~100_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~90_combout\))) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|_~90_combout\,
	combout => \inst3|ALTSQRT_component|_~100_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst3|ALTSQRT_component|_~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~101_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~91_combout\))) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \inst3|ALTSQRT_component|_~91_combout\,
	combout => \inst3|ALTSQRT_component|_~101_combout\);

-- Location: LCCOMB_X18_Y15_N14
\inst3|ALTSQRT_component|_~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~102_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|_~157_combout\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~157_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|_~102_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst3|ALTSQRT_component|_~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~103_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~92_combout\))) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|_~92_combout\,
	combout => \inst3|ALTSQRT_component|_~103_combout\);

-- Location: LCCOMB_X16_Y19_N0
\inst3|ALTSQRT_component|_~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~158_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ $ ((!\A[10]~input_o\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datac => \A[10]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~158_combout\);

-- Location: LCCOMB_X18_Y19_N6
\inst3|ALTSQRT_component|_~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~104_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (\A[9]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datab => \A[9]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~104_combout\);

-- Location: LCCOMB_X18_Y15_N10
\inst3|ALTSQRT_component|_~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~105_combout\ = \A[8]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[8]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|_~105_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ = CARRY(\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X19_Y15_N2
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\ = (\A[7]~input_o\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[7]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\ = CARRY((!\A[7]~input_o\ & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\);

-- Location: LCCOMB_X19_Y15_N4
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~105_combout\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~105_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\)) # (!\inst3|ALTSQRT_component|_~105_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~105_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y15_N6
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~104_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|_~104_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~104_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~104_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (!\inst3|ALTSQRT_component|_~104_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\) # 
-- (!\inst3|ALTSQRT_component|_~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datab => \inst3|ALTSQRT_component|_~104_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\);

-- Location: LCCOMB_X19_Y15_N8
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ $ (\inst3|ALTSQRT_component|_~158_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~158_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (\inst3|ALTSQRT_component|_~158_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|_~158_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y15_N10
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|_~103_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\)))) # 
-- (!\inst3|ALTSQRT_component|_~103_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|_~103_combout\ & (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~103_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~103_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\);

-- Location: LCCOMB_X19_Y15_N12
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~102_combout\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~102_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~102_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~102_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\);

-- Location: LCCOMB_X19_Y15_N14
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~101_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|_~101_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|_~101_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~101_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|_~101_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|_~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datab => \inst3|ALTSQRT_component|_~101_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\);

-- Location: LCCOMB_X19_Y15_N16
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ (\inst3|ALTSQRT_component|_~100_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~100_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|_~100_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~100_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\);

-- Location: LCCOMB_X19_Y15_N18
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|_~99_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\)))) # 
-- (!\inst3|ALTSQRT_component|_~99_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|_~99_combout\ & (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~99_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~99_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\);

-- Location: LCCOMB_X19_Y15_N20
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|_~98_combout\ $ (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|_~98_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\))) # (!\inst3|ALTSQRT_component|_~98_combout\ & (\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~98_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\);

-- Location: LCCOMB_X19_Y15_N22
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~97_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|_~97_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~97_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|_~97_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|_~97_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|_~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~97_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\);

-- Location: LCCOMB_X19_Y15_N24
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\inst3|ALTSQRT_component|_~96_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~96_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|_~96_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~96_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\);

-- Location: LCCOMB_X19_Y15_N26
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|_~95_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\ & VCC)))) # 
-- (!\inst3|ALTSQRT_component|_~95_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\) # (GND))) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\))))
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|_~95_combout\ & (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\)) 
-- # (!\inst3|ALTSQRT_component|_~95_combout\ & ((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~95_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\);

-- Location: LCCOMB_X19_Y15_N28
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\ = CARRY((\inst3|ALTSQRT_component|_~94_combout\) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~94_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~27\,
	cout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X19_Y15_N30
\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ = !\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~29_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\);

-- Location: FF_X25_Y17_N25
\inst2[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y17_N30
\inst4|inst3|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst4|inst2~combout\ = \B[20]~input_o\ $ (\A[20]~input_o\ $ (\inst4|inst3|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datac => \A[20]~input_o\,
	datad => \inst4|inst3|inst3|inst5~0_combout\,
	combout => \inst4|inst3|inst4|inst2~combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst8|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux12~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst3|inst4|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[3]~_Duplicate_1_q\,
	datad => \inst4|inst3|inst4|inst2~combout\,
	combout => \inst8|Mux12~0_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst8|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux12~1_combout\ = (inst6(1) & ((\inst8|Mux12~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\)) # (!\inst8|Mux12~0_combout\ & ((\B[19]~input_o\))))) # (!inst6(1) & (((\inst8|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datab => inst6(1),
	datac => \B[19]~input_o\,
	datad => \inst8|Mux12~0_combout\,
	combout => \inst8|Mux12~1_combout\);

-- Location: FF_X25_Y17_N13
\inst2[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y17_N12
\inst8|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux13~0_combout\ = (inst6(0) & (((inst6(1))))) # (!inst6(0) & ((inst6(1) & (\B[18]~input_o\)) # (!inst6(1) & ((\inst2[2]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => \B[18]~input_o\,
	datac => \inst2[2]~_Duplicate_1_q\,
	datad => inst6(1),
	combout => \inst8|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y15_N22
\inst3|ALTSQRT_component|_~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~106_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~95_combout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~26_combout\,
	datab => \inst3|ALTSQRT_component|_~95_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	combout => \inst3|ALTSQRT_component|_~106_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst3|ALTSQRT_component|_~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~107_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~96_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~96_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~24_combout\,
	combout => \inst3|ALTSQRT_component|_~107_combout\);

-- Location: LCCOMB_X18_Y15_N6
\inst3|ALTSQRT_component|_~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~108_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~97_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~97_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|_~108_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst3|ALTSQRT_component|_~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~109_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~98_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datab => \inst3|ALTSQRT_component|_~98_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~109_combout\);

-- Location: LCCOMB_X18_Y16_N0
\inst3|ALTSQRT_component|_~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~110_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~99_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|_~99_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~110_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst3|ALTSQRT_component|_~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~111_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~100_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~100_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~111_combout\);

-- Location: LCCOMB_X18_Y16_N20
\inst3|ALTSQRT_component|_~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~112_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~101_combout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|_~101_combout\,
	combout => \inst3|ALTSQRT_component|_~112_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst3|ALTSQRT_component|_~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~113_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~102_combout\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datab => \inst3|ALTSQRT_component|_~102_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~113_combout\);

-- Location: LCCOMB_X18_Y19_N4
\inst3|ALTSQRT_component|_~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~114_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~103_combout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|_~103_combout\,
	combout => \inst3|ALTSQRT_component|_~114_combout\);

-- Location: LCCOMB_X18_Y19_N10
\inst3|ALTSQRT_component|_~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~115_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~158_combout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|_~158_combout\,
	combout => \inst3|ALTSQRT_component|_~115_combout\);

-- Location: LCCOMB_X18_Y19_N12
\inst3|ALTSQRT_component|_~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~116_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~104_combout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~6_combout\,
	datad => \inst3|ALTSQRT_component|_~104_combout\,
	combout => \inst3|ALTSQRT_component|_~116_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst3|ALTSQRT_component|_~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~159_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\A[8]~input_o\ $ (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~4_combout\,
	datab => \A[8]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|_~159_combout\);

-- Location: LCCOMB_X18_Y19_N14
\inst3|ALTSQRT_component|_~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~117_combout\ = (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\A[7]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~117_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst3|ALTSQRT_component|_~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~118_combout\ = \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \A[6]~input_o\,
	combout => \inst3|ALTSQRT_component|_~118_combout\);

-- Location: LCCOMB_X18_Y19_N16
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ = CARRY(\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X18_Y19_N18
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\ = (\A[5]~input_o\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[5]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\ = CARRY((!\A[5]~input_o\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y19_N20
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|_~118_combout\ $ (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|_~118_combout\ & (\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\)) # (!\inst3|ALTSQRT_component|_~118_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~118_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y19_N22
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~117_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|_~117_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((\inst3|ALTSQRT_component|_~117_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~117_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & (!\inst3|ALTSQRT_component|_~117_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\) # 
-- (!\inst3|ALTSQRT_component|_~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datab => \inst3|ALTSQRT_component|_~117_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y19_N24
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ $ (\inst3|ALTSQRT_component|_~159_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~159_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (\inst3|ALTSQRT_component|_~159_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datab => \inst3|ALTSQRT_component|_~159_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y19_N26
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~116_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|_~116_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((\inst3|ALTSQRT_component|_~116_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~116_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & (!\inst3|ALTSQRT_component|_~116_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|_~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|_~116_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\);

-- Location: LCCOMB_X18_Y19_N28
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~115_combout\ $ (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~115_combout\ & ((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~115_combout\ & (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~115_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\);

-- Location: LCCOMB_X18_Y19_N30
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~114_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|_~114_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((\inst3|ALTSQRT_component|_~114_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~114_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & (!\inst3|ALTSQRT_component|_~114_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|_~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datab => \inst3|ALTSQRT_component|_~114_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\);

-- Location: LCCOMB_X18_Y18_N0
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|_~113_combout\ $ (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|_~113_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|_~113_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~113_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\);

-- Location: LCCOMB_X18_Y18_N2
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~112_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|_~112_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~112_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~112_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|_~112_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\) # 
-- (!\inst3|ALTSQRT_component|_~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~112_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\);

-- Location: LCCOMB_X18_Y18_N4
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|_~111_combout\ $ (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|_~111_combout\ & ((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\))) # (!\inst3|ALTSQRT_component|_~111_combout\ & (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~111_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\);

-- Location: LCCOMB_X18_Y18_N6
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|_~110_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\)))) # 
-- (!\inst3|ALTSQRT_component|_~110_combout\ & ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|_~110_combout\ & (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|_~110_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~110_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\);

-- Location: LCCOMB_X18_Y18_N8
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ $ (\inst3|ALTSQRT_component|_~109_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~109_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|_~109_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~109_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\);

-- Location: LCCOMB_X18_Y18_N10
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~108_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\ & VCC)) # (!\inst3|ALTSQRT_component|_~108_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~108_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|_~108_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~108_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\) # 
-- (!\inst3|ALTSQRT_component|_~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~108_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\);

-- Location: LCCOMB_X18_Y18_N12
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\ = ((\inst3|ALTSQRT_component|_~107_combout\ $ (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) $ 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\ = CARRY((\inst3|ALTSQRT_component|_~107_combout\ & ((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) # (!\inst3|ALTSQRT_component|_~107_combout\ & (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~107_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~27\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\);

-- Location: LCCOMB_X18_Y18_N14
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\ = CARRY((!\inst3|ALTSQRT_component|_~106_combout\ & !\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~106_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~29\,
	cout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X18_Y18_N16
\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ = \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~31_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst4|inst3|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst5|inst2~combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (((\inst4|inst3|inst4|inst5~1_combout\) # (\inst4|inst3|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \inst4|inst3|inst4|inst5~1_combout\,
	datac => \B[21]~input_o\,
	datad => \inst4|inst3|inst4|inst5~0_combout\,
	combout => \inst4|inst3|inst5|inst2~combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst8|Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux13~1_combout\ = (\inst8|Mux13~0_combout\ & (((!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\)) # (!inst6(0)))) # (!\inst8|Mux13~0_combout\ & (inst6(0) & ((\inst4|inst3|inst5|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux13~0_combout\,
	datab => inst6(0),
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst4|inst3|inst5|inst2~combout\,
	combout => \inst8|Mux13~1_combout\);

-- Location: LCCOMB_X18_Y18_N26
\inst3|ALTSQRT_component|_~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~119_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~107_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~107_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~28_combout\,
	combout => \inst3|ALTSQRT_component|_~119_combout\);

-- Location: LCCOMB_X18_Y18_N22
\inst3|ALTSQRT_component|_~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~120_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~108_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~108_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~26_combout\,
	combout => \inst3|ALTSQRT_component|_~120_combout\);

-- Location: LCCOMB_X18_Y18_N20
\inst3|ALTSQRT_component|_~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~121_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|_~109_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~24_combout\,
	datad => \inst3|ALTSQRT_component|_~109_combout\,
	combout => \inst3|ALTSQRT_component|_~121_combout\);

-- Location: LCCOMB_X18_Y18_N30
\inst3|ALTSQRT_component|_~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~122_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~110_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~110_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~22_combout\,
	combout => \inst3|ALTSQRT_component|_~122_combout\);

-- Location: LCCOMB_X18_Y18_N24
\inst3|ALTSQRT_component|_~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~123_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~111_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~111_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~20_combout\,
	combout => \inst3|ALTSQRT_component|_~123_combout\);

-- Location: LCCOMB_X18_Y18_N18
\inst3|ALTSQRT_component|_~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~124_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|_~112_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~18_combout\,
	datad => \inst3|ALTSQRT_component|_~112_combout\,
	combout => \inst3|ALTSQRT_component|_~124_combout\);

-- Location: LCCOMB_X18_Y18_N28
\inst3|ALTSQRT_component|_~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~125_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~113_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~113_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~16_combout\,
	combout => \inst3|ALTSQRT_component|_~125_combout\);

-- Location: LCCOMB_X18_Y19_N2
\inst3|ALTSQRT_component|_~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~126_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|_~114_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~114_combout\,
	combout => \inst3|ALTSQRT_component|_~126_combout\);

-- Location: LCCOMB_X18_Y19_N8
\inst3|ALTSQRT_component|_~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~127_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~115_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~115_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~12_combout\,
	combout => \inst3|ALTSQRT_component|_~127_combout\);

-- Location: LCCOMB_X19_Y19_N2
\inst3|ALTSQRT_component|_~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~128_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|_~116_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~10_combout\,
	datad => \inst3|ALTSQRT_component|_~116_combout\,
	combout => \inst3|ALTSQRT_component|_~128_combout\);

-- Location: LCCOMB_X20_Y19_N2
\inst3|ALTSQRT_component|_~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~129_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\inst3|ALTSQRT_component|_~159_combout\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \inst3|ALTSQRT_component|_~159_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~8_combout\,
	combout => \inst3|ALTSQRT_component|_~129_combout\);

-- Location: LCCOMB_X19_Y19_N4
\inst3|ALTSQRT_component|_~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~130_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((\inst3|ALTSQRT_component|_~117_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~6_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|_~117_combout\,
	combout => \inst3|ALTSQRT_component|_~130_combout\);

-- Location: LCCOMB_X19_Y19_N12
\inst3|ALTSQRT_component|_~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~160_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\A[6]~input_o\ $ ((!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~160_combout\);

-- Location: LCCOMB_X18_Y19_N0
\inst3|ALTSQRT_component|_~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~131_combout\ = (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (\A[5]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \A[5]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~2_combout\,
	combout => \inst3|ALTSQRT_component|_~131_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst3|ALTSQRT_component|_~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~132_combout\ = \A[4]~input_o\ $ (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	combout => \inst3|ALTSQRT_component|_~132_combout\);

-- Location: LCCOMB_X19_Y19_N14
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ = CARRY(\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X19_Y19_N16
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\ = (\A[3]~input_o\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\ & VCC)) # (!\A[3]~input_o\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\ = CARRY((!\A[3]~input_o\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\);

-- Location: LCCOMB_X19_Y19_N18
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\ = ((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ $ (\inst3|ALTSQRT_component|_~132_combout\ $ 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ = CARRY((\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\) # 
-- (!\inst3|ALTSQRT_component|_~132_combout\))) # (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & (!\inst3|ALTSQRT_component|_~132_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datab => \inst3|ALTSQRT_component|_~132_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~3\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\);

-- Location: LCCOMB_X19_Y19_N20
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\ = (\inst3|ALTSQRT_component|_~131_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\)))) # 
-- (!\inst3|ALTSQRT_component|_~131_combout\ & ((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\ = CARRY((\inst3|ALTSQRT_component|_~131_combout\ & (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\)) # (!\inst3|ALTSQRT_component|_~131_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\) # 
-- (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~131_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~5\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\);

-- Location: LCCOMB_X19_Y19_N22
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\ = ((\inst3|ALTSQRT_component|_~160_combout\ $ (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ = CARRY((\inst3|ALTSQRT_component|_~160_combout\ & ((\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\))) # (!\inst3|ALTSQRT_component|_~160_combout\ & (\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~160_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~7\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y19_N24
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\ = (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~130_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\ & VCC)) # (!\inst3|ALTSQRT_component|_~130_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((\inst3|ALTSQRT_component|_~130_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|_~130_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\ = CARRY((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & (!\inst3|ALTSQRT_component|_~130_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\)) # (!\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\) # 
-- (!\inst3|ALTSQRT_component|_~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datab => \inst3|ALTSQRT_component|_~130_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~9\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\);

-- Location: LCCOMB_X19_Y19_N26
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\ = ((\inst3|ALTSQRT_component|_~129_combout\ $ (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ = CARRY((\inst3|ALTSQRT_component|_~129_combout\ & ((\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\))) # (!\inst3|ALTSQRT_component|_~129_combout\ & (\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~129_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~11\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\);

-- Location: LCCOMB_X19_Y19_N28
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\ = (\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~128_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\ & VCC)) # (!\inst3|ALTSQRT_component|_~128_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~128_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|_~128_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\ = CARRY((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (!\inst3|ALTSQRT_component|_~128_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\)) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\) # 
-- (!\inst3|ALTSQRT_component|_~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datab => \inst3|ALTSQRT_component|_~128_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~13\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\);

-- Location: LCCOMB_X19_Y19_N30
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\ = ((\inst3|ALTSQRT_component|_~127_combout\ $ (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ = CARRY((\inst3|ALTSQRT_component|_~127_combout\ & ((\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\))) # (!\inst3|ALTSQRT_component|_~127_combout\ & (\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~127_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~15\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\);

-- Location: LCCOMB_X19_Y18_N0
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\ = (\inst3|ALTSQRT_component|_~126_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\ & VCC)) # (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\)))) # 
-- (!\inst3|ALTSQRT_component|_~126_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\)) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\ = CARRY((\inst3|ALTSQRT_component|_~126_combout\ & (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\)) # (!\inst3|ALTSQRT_component|_~126_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\) # 
-- (!\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~126_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~17\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\);

-- Location: LCCOMB_X19_Y18_N2
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\ = ((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ $ (\inst3|ALTSQRT_component|_~125_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((\inst3|ALTSQRT_component|_~125_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\))) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (\inst3|ALTSQRT_component|_~125_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~125_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~19\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\);

-- Location: LCCOMB_X19_Y18_N4
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\ = (\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~124_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\ & VCC)) # (!\inst3|ALTSQRT_component|_~124_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~124_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|_~124_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\ = CARRY((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (!\inst3|ALTSQRT_component|_~124_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\)) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\) # 
-- (!\inst3|ALTSQRT_component|_~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|_~124_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~21\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\);

-- Location: LCCOMB_X19_Y18_N6
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\ = ((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ $ (\inst3|ALTSQRT_component|_~123_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((\inst3|ALTSQRT_component|_~123_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\))) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (\inst3|ALTSQRT_component|_~123_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~123_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~23\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\);

-- Location: LCCOMB_X19_Y18_N8
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\ = (\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~122_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\ & VCC)) # (!\inst3|ALTSQRT_component|_~122_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~122_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|_~122_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\) # (GND)))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (!\inst3|ALTSQRT_component|_~122_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\)) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\) # 
-- (!\inst3|ALTSQRT_component|_~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~122_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~25\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\);

-- Location: LCCOMB_X19_Y18_N10
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\ = ((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ $ (\inst3|ALTSQRT_component|_~121_combout\ $ 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\)))) # (GND)
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((\inst3|ALTSQRT_component|_~121_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\))) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (\inst3|ALTSQRT_component|_~121_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~121_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~27\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\);

-- Location: LCCOMB_X19_Y18_N12
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\ = (\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~120_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\)) # (!\inst3|ALTSQRT_component|_~120_combout\ & ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\) # (GND))))) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((\inst3|ALTSQRT_component|_~120_combout\ & (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\ & VCC)) # (!\inst3|ALTSQRT_component|_~120_combout\ & 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\))))
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\ = CARRY((\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & ((!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\) # 
-- (!\inst3|ALTSQRT_component|_~120_combout\))) # (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & (!\inst3|ALTSQRT_component|_~120_combout\ & !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datab => \inst3|ALTSQRT_component|_~120_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~29\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\);

-- Location: LCCOMB_X19_Y18_N14
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\ = CARRY((\inst3|ALTSQRT_component|_~119_combout\) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~119_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~31\,
	cout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X19_Y18_N16
\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ = !\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~33_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\);

-- Location: FF_X24_Y17_N15
\inst2[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y17_N24
\inst4|inst3|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst6|inst2~combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\inst4|inst3|inst5|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \inst4|inst3|inst5|inst5~0_combout\,
	combout => \inst4|inst3|inst6|inst2~combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst8|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux14~0_combout\ = (inst6(0) & ((inst6(1)) # ((\inst4|inst3|inst6|inst2~combout\)))) # (!inst6(0) & (!inst6(1) & (\inst2[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[1]~_Duplicate_1_q\,
	datad => \inst4|inst3|inst6|inst2~combout\,
	combout => \inst8|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst8|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux14~1_combout\ = (inst6(1) & ((\inst8|Mux14~0_combout\ & (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\)) # (!\inst8|Mux14~0_combout\ & ((\B[17]~input_o\))))) # (!inst6(1) & (((\inst8|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datab => inst6(1),
	datac => \inst8|Mux14~0_combout\,
	datad => \B[17]~input_o\,
	combout => \inst8|Mux14~1_combout\);

-- Location: FF_X23_Y21_N11
\inst2[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y21_N10
\inst8|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux15~0_combout\ = (inst6(0) & (inst6(1))) # (!inst6(0) & ((inst6(1) & ((\B[16]~input_o\))) # (!inst6(1) & (\inst2[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst6(0),
	datab => inst6(1),
	datac => \inst2[0]~_Duplicate_1_q\,
	datad => \B[16]~input_o\,
	combout => \inst8|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\inst3|ALTSQRT_component|_~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~133_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~120_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~30_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|_~120_combout\,
	combout => \inst3|ALTSQRT_component|_~133_combout\);

-- Location: LCCOMB_X19_Y18_N26
\inst3|ALTSQRT_component|_~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~134_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~121_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~28_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|_~121_combout\,
	combout => \inst3|ALTSQRT_component|_~134_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst3|ALTSQRT_component|_~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~135_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~122_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~26_combout\,
	datad => \inst3|ALTSQRT_component|_~122_combout\,
	combout => \inst3|ALTSQRT_component|_~135_combout\);

-- Location: LCCOMB_X19_Y18_N28
\inst3|ALTSQRT_component|_~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~136_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~123_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~24_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|_~123_combout\,
	combout => \inst3|ALTSQRT_component|_~136_combout\);

-- Location: LCCOMB_X19_Y18_N18
\inst3|ALTSQRT_component|_~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~137_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~124_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~22_combout\,
	datad => \inst3|ALTSQRT_component|_~124_combout\,
	combout => \inst3|ALTSQRT_component|_~137_combout\);

-- Location: LCCOMB_X19_Y18_N24
\inst3|ALTSQRT_component|_~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~138_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~125_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~20_combout\,
	datad => \inst3|ALTSQRT_component|_~125_combout\,
	combout => \inst3|ALTSQRT_component|_~138_combout\);

-- Location: LCCOMB_X19_Y18_N22
\inst3|ALTSQRT_component|_~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~139_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|_~126_combout\)) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|_~126_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~18_combout\,
	combout => \inst3|ALTSQRT_component|_~139_combout\);

-- Location: LCCOMB_X19_Y19_N6
\inst3|ALTSQRT_component|_~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~140_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~127_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|_~127_combout\,
	combout => \inst3|ALTSQRT_component|_~140_combout\);

-- Location: LCCOMB_X19_Y19_N8
\inst3|ALTSQRT_component|_~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~141_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~128_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~14_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \inst3|ALTSQRT_component|_~128_combout\,
	combout => \inst3|ALTSQRT_component|_~141_combout\);

-- Location: LCCOMB_X20_Y19_N4
\inst3|ALTSQRT_component|_~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~142_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~129_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~12_combout\,
	datad => \inst3|ALTSQRT_component|_~129_combout\,
	combout => \inst3|ALTSQRT_component|_~142_combout\);

-- Location: LCCOMB_X20_Y19_N10
\inst3|ALTSQRT_component|_~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~143_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~130_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~10_combout\,
	datac => \inst3|ALTSQRT_component|_~130_combout\,
	combout => \inst3|ALTSQRT_component|_~143_combout\);

-- Location: LCCOMB_X19_Y19_N10
\inst3|ALTSQRT_component|_~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~144_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((\inst3|ALTSQRT_component|_~160_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~8_combout\,
	datad => \inst3|ALTSQRT_component|_~160_combout\,
	combout => \inst3|ALTSQRT_component|_~144_combout\);

-- Location: LCCOMB_X20_Y19_N12
\inst3|ALTSQRT_component|_~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~145_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|_~131_combout\)) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datac => \inst3|ALTSQRT_component|_~131_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~6_combout\,
	combout => \inst3|ALTSQRT_component|_~145_combout\);

-- Location: LCCOMB_X20_Y19_N0
\inst3|ALTSQRT_component|_~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~161_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ $ ((!\A[4]~input_o\)))) # 
-- (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datac => \A[4]~input_o\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~4_combout\,
	combout => \inst3|ALTSQRT_component|_~161_combout\);

-- Location: LCCOMB_X20_Y19_N6
\inst3|ALTSQRT_component|_~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~146_combout\ = (\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (\A[3]~input_o\)) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & 
-- ((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~2_combout\,
	datad => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	combout => \inst3|ALTSQRT_component|_~146_combout\);

-- Location: LCCOMB_X20_Y19_N8
\inst3|ALTSQRT_component|_~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|_~147_combout\ = \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datad => \A[2]~input_o\,
	combout => \inst3|ALTSQRT_component|_~147_combout\);

-- Location: LCCOMB_X20_Y19_N14
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\ = CARRY(\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X20_Y19_N16
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\ = CARRY((!\A[1]~input_o\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X20_Y19_N18
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\) # 
-- (!\inst3|ALTSQRT_component|_~147_combout\))) # (!\inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\ & (!\inst3|ALTSQRT_component|_~147_combout\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[14]|auto_generated|op_1~34_combout\,
	datab => \inst3|ALTSQRT_component|_~147_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~3_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X20_Y19_N20
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\ = CARRY((\inst3|ALTSQRT_component|_~146_combout\ & (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\)) # (!\inst3|ALTSQRT_component|_~146_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~146_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[13]|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~5_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X20_Y19_N22
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & ((\inst3|ALTSQRT_component|_~161_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\))) # (!\inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\ & (\inst3|ALTSQRT_component|_~161_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[12]|auto_generated|op_1~30_combout\,
	datab => \inst3|ALTSQRT_component|_~161_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~7_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X20_Y19_N24
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\ = CARRY((\inst3|ALTSQRT_component|_~145_combout\ & (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\)) # (!\inst3|ALTSQRT_component|_~145_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~145_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[11]|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~9_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X20_Y19_N26
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\ = CARRY((\inst3|ALTSQRT_component|_~144_combout\ & ((\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\))) # (!\inst3|ALTSQRT_component|_~144_combout\ & (\inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~144_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[10]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~11_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X20_Y19_N28
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\ = CARRY((\inst3|ALTSQRT_component|_~143_combout\ & (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\)) # (!\inst3|ALTSQRT_component|_~143_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~143_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[9]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~13_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X20_Y19_N30
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & ((\inst3|ALTSQRT_component|_~142_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\))) # (!\inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\ & (\inst3|ALTSQRT_component|_~142_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[8]|auto_generated|op_1~22_combout\,
	datab => \inst3|ALTSQRT_component|_~142_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~15_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X20_Y18_N0
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\ = CARRY((\inst3|ALTSQRT_component|_~141_combout\ & (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\)) # (!\inst3|ALTSQRT_component|_~141_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~141_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[7]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~17_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X20_Y18_N2
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\ = CARRY((\inst3|ALTSQRT_component|_~140_combout\ & ((\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\))) # (!\inst3|ALTSQRT_component|_~140_combout\ & (\inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~140_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[6]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~19_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X20_Y18_N4
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & (!\inst3|ALTSQRT_component|_~139_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\)) # (!\inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\) # 
-- (!\inst3|ALTSQRT_component|_~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[5]|auto_generated|op_1~16_combout\,
	datab => \inst3|ALTSQRT_component|_~139_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~21_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X20_Y18_N6
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & ((\inst3|ALTSQRT_component|_~138_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\))) # (!\inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\ & (\inst3|ALTSQRT_component|_~138_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[4]|auto_generated|op_1~14_combout\,
	datab => \inst3|ALTSQRT_component|_~138_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~23_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X20_Y18_N8
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & (!\inst3|ALTSQRT_component|_~137_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\)) # (!\inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\) # 
-- (!\inst3|ALTSQRT_component|_~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[3]|auto_generated|op_1~12_combout\,
	datab => \inst3|ALTSQRT_component|_~137_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~25_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X20_Y18_N10
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & ((\inst3|ALTSQRT_component|_~136_combout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\))) # (!\inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\ & (\inst3|ALTSQRT_component|_~136_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[2]|auto_generated|op_1~10_combout\,
	datab => \inst3|ALTSQRT_component|_~136_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~27_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X20_Y18_N12
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\ = CARRY((\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & (!\inst3|ALTSQRT_component|_~135_combout\ & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\)) # (!\inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\) # 
-- (!\inst3|ALTSQRT_component|_~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|subtractors[1]|auto_generated|op_1~8_combout\,
	datab => \inst3|ALTSQRT_component|_~135_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~29_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X20_Y18_N14
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\ = CARRY((\inst3|ALTSQRT_component|_~134_combout\ & ((!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\) # 
-- (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1)))) # (!\inst3|ALTSQRT_component|_~134_combout\ & (!\inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1) & 
-- !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALTSQRT_component|_~134_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[0]|auto_generated|carry_eqn\(1),
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~31_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X20_Y18_N16
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\ = CARRY((!\inst3|ALTSQRT_component|_~133_combout\ & !\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALTSQRT_component|_~133_combout\,
	datad => VCC,
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~33_cout\,
	cout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\);

-- Location: LCCOMB_X20_Y18_N18
\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\ = \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~35_cout\,
	combout => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\);

-- Location: LCCOMB_X23_Y21_N14
\inst4|inst3|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst3|inst7|inst2~combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\inst4|inst3|inst6|inst5~1_combout\) # (\inst4|inst3|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|inst6|inst5~1_combout\,
	datab => \inst4|inst3|inst6|inst5~0_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \inst4|inst3|inst7|inst2~combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst8|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|Mux15~1_combout\ = (\inst8|Mux15~0_combout\ & (((!inst6(0))) # (!\inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\))) # (!\inst8|Mux15~0_combout\ & (((inst6(0) & \inst4|inst3|inst7|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux15~0_combout\,
	datab => \inst3|ALTSQRT_component|subtractors[15]|auto_generated|op_1~36_combout\,
	datac => inst6(0),
	datad => \inst4|inst3|inst7|inst2~combout\,
	combout => \inst8|Mux15~1_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst4|inst2|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst2~combout\ = \inst4|inst|inst7|inst5~0_combout\ $ (\A[8]~input_o\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst7|inst5~0_combout\,
	datac => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst4|inst2|inst|inst2~combout\);

-- Location: LCCOMB_X23_Y19_N4
\inst4|inst2|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst1|inst2~combout\ = \A[9]~input_o\ $ (\B[9]~input_o\ $ (((\inst4|inst2|inst|inst5~1_combout\) # (\inst4|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst|inst5~1_combout\,
	datab => \inst4|inst2|inst|inst5~0_combout\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst4|inst2|inst1|inst2~combout\);

-- Location: LCCOMB_X16_Y19_N22
\inst4|inst2|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst2~combout\ = \B[10]~input_o\ $ (\A[10]~input_o\ $ (\inst4|inst2|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \inst4|inst2|inst1|inst5~0_combout\,
	combout => \inst4|inst2|inst2|inst2~combout\);

-- Location: LCCOMB_X16_Y19_N2
\inst4|inst2|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst2~combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\inst4|inst2|inst2|inst5~0_combout\) # (\inst4|inst2|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst2|inst5~0_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	datad => \inst4|inst2|inst2|inst5~1_combout\,
	combout => \inst4|inst2|inst3|inst2~combout\);

-- Location: LCCOMB_X16_Y19_N24
\inst4|inst2|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst4|inst2~combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\inst4|inst2|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => \inst4|inst2|inst3|inst5~0_combout\,
	combout => \inst4|inst2|inst4|inst2~combout\);

-- Location: LCCOMB_X16_Y19_N4
\inst4|inst2|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst5|inst2~combout\ = \A[13]~input_o\ $ (\B[13]~input_o\ $ (((\inst4|inst2|inst4|inst5~1_combout\) # (\inst4|inst2|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \inst4|inst2|inst4|inst5~1_combout\,
	datac => \B[13]~input_o\,
	datad => \inst4|inst2|inst4|inst5~0_combout\,
	combout => \inst4|inst2|inst5|inst2~combout\);

-- Location: LCCOMB_X17_Y19_N14
\inst4|inst2|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst6|inst2~combout\ = \B[14]~input_o\ $ (\A[14]~input_o\ $ (\inst4|inst2|inst5|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	datad => \inst4|inst2|inst5|inst5~0_combout\,
	combout => \inst4|inst2|inst6|inst2~combout\);

-- Location: LCCOMB_X17_Y19_N22
\inst4|inst2|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst7|inst2~combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\inst4|inst2|inst6|inst5~1_combout\) # (\inst4|inst2|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst6|inst5~1_combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \inst4|inst2|inst6|inst5~0_combout\,
	combout => \inst4|inst2|inst7|inst2~combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst4|inst|inst|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst2~combout\ = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst|inst|inst2~combout\);

-- Location: LCCOMB_X22_Y21_N20
\inst4|inst|inst1|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst1|inst2~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\inst4|inst|inst|inst5~1_combout\) # (\inst4|inst|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst|inst5~1_combout\,
	datab => \inst4|inst|inst|inst5~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst4|inst|inst1|inst2~combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst4|inst|inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst2~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\inst4|inst|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst4|inst|inst1|inst5~0_combout\,
	combout => \inst4|inst|inst2|inst2~combout\);

-- Location: LCCOMB_X22_Y21_N22
\inst4|inst|inst3|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst2~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\inst4|inst|inst2|inst5~0_combout\) # (\inst4|inst|inst2|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst5~0_combout\,
	datab => \inst4|inst|inst2|inst5~1_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst4|inst|inst3|inst2~combout\);

-- Location: LCCOMB_X23_Y21_N8
\inst4|inst|inst4|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst2~combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\inst4|inst|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => \inst4|inst|inst3|inst5~0_combout\,
	combout => \inst4|inst|inst4|inst2~combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst4|inst|inst5|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst5|inst2~combout\ = \A[5]~input_o\ $ (\B[5]~input_o\ $ (((\inst4|inst|inst4|inst5~1_combout\) # (\inst4|inst|inst4|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst5~1_combout\,
	datab => \inst4|inst|inst4|inst5~0_combout\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst4|inst|inst5|inst2~combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst4|inst|inst6|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst6|inst2~combout\ = \inst4|inst|inst5|inst5~0_combout\ $ (\A[6]~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|inst5|inst5~0_combout\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst4|inst|inst6|inst2~combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst4|inst|inst7|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst|inst7|inst2~combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\inst4|inst|inst6|inst5~0_combout\) # (\inst4|inst|inst6|inst5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \inst4|inst|inst6|inst5~0_combout\,
	datac => \A[7]~input_o\,
	datad => \inst4|inst|inst6|inst5~1_combout\,
	combout => \inst4|inst|inst7|inst2~combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst5|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~1_cout\ = CARRY((\A[0]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst5|LessThan3~1_cout\);

-- Location: LCCOMB_X25_Y19_N2
\inst5|LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~3_cout\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\inst5|LessThan3~1_cout\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\inst5|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~1_cout\,
	cout => \inst5|LessThan3~3_cout\);

-- Location: LCCOMB_X25_Y19_N4
\inst5|LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~5_cout\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\inst5|LessThan3~3_cout\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\inst5|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~3_cout\,
	cout => \inst5|LessThan3~5_cout\);

-- Location: LCCOMB_X25_Y19_N6
\inst5|LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~7_cout\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\inst5|LessThan3~5_cout\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\inst5|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~5_cout\,
	cout => \inst5|LessThan3~7_cout\);

-- Location: LCCOMB_X25_Y19_N8
\inst5|LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~9_cout\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\inst5|LessThan3~7_cout\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\inst5|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~7_cout\,
	cout => \inst5|LessThan3~9_cout\);

-- Location: LCCOMB_X25_Y19_N10
\inst5|LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~11_cout\ = CARRY((\B[5]~input_o\ & ((!\inst5|LessThan3~9_cout\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\inst5|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~9_cout\,
	cout => \inst5|LessThan3~11_cout\);

-- Location: LCCOMB_X25_Y19_N12
\inst5|LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~13_cout\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\inst5|LessThan3~11_cout\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\inst5|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~11_cout\,
	cout => \inst5|LessThan3~13_cout\);

-- Location: LCCOMB_X25_Y19_N14
\inst5|LessThan3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~15_cout\ = CARRY((\A[7]~input_o\ & (\B[7]~input_o\ & !\inst5|LessThan3~13_cout\)) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # (!\inst5|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~13_cout\,
	cout => \inst5|LessThan3~15_cout\);

-- Location: LCCOMB_X25_Y19_N16
\inst5|LessThan3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~17_cout\ = CARRY((\B[8]~input_o\ & (\A[8]~input_o\ & !\inst5|LessThan3~15_cout\)) # (!\B[8]~input_o\ & ((\A[8]~input_o\) # (!\inst5|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~15_cout\,
	cout => \inst5|LessThan3~17_cout\);

-- Location: LCCOMB_X25_Y19_N18
\inst5|LessThan3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~19_cout\ = CARRY((\B[9]~input_o\ & ((!\inst5|LessThan3~17_cout\) # (!\A[9]~input_o\))) # (!\B[9]~input_o\ & (!\A[9]~input_o\ & !\inst5|LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~17_cout\,
	cout => \inst5|LessThan3~19_cout\);

-- Location: LCCOMB_X25_Y19_N20
\inst5|LessThan3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~21_cout\ = CARRY((\B[10]~input_o\ & (\A[10]~input_o\ & !\inst5|LessThan3~19_cout\)) # (!\B[10]~input_o\ & ((\A[10]~input_o\) # (!\inst5|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[10]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~19_cout\,
	cout => \inst5|LessThan3~21_cout\);

-- Location: LCCOMB_X25_Y19_N22
\inst5|LessThan3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~23_cout\ = CARRY((\B[11]~input_o\ & ((!\inst5|LessThan3~21_cout\) # (!\A[11]~input_o\))) # (!\B[11]~input_o\ & (!\A[11]~input_o\ & !\inst5|LessThan3~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~21_cout\,
	cout => \inst5|LessThan3~23_cout\);

-- Location: LCCOMB_X25_Y19_N24
\inst5|LessThan3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~25_cout\ = CARRY((\A[12]~input_o\ & ((!\inst5|LessThan3~23_cout\) # (!\B[12]~input_o\))) # (!\A[12]~input_o\ & (!\B[12]~input_o\ & !\inst5|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~23_cout\,
	cout => \inst5|LessThan3~25_cout\);

-- Location: LCCOMB_X25_Y19_N26
\inst5|LessThan3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~27_cout\ = CARRY((\B[13]~input_o\ & ((!\inst5|LessThan3~25_cout\) # (!\A[13]~input_o\))) # (!\B[13]~input_o\ & (!\A[13]~input_o\ & !\inst5|LessThan3~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~25_cout\,
	cout => \inst5|LessThan3~27_cout\);

-- Location: LCCOMB_X25_Y19_N28
\inst5|LessThan3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~29_cout\ = CARRY((\B[14]~input_o\ & (\A[14]~input_o\ & !\inst5|LessThan3~27_cout\)) # (!\B[14]~input_o\ & ((\A[14]~input_o\) # (!\inst5|LessThan3~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~27_cout\,
	cout => \inst5|LessThan3~29_cout\);

-- Location: LCCOMB_X25_Y19_N30
\inst5|LessThan3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~31_cout\ = CARRY((\A[15]~input_o\ & (\B[15]~input_o\ & !\inst5|LessThan3~29_cout\)) # (!\A[15]~input_o\ & ((\B[15]~input_o\) # (!\inst5|LessThan3~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~29_cout\,
	cout => \inst5|LessThan3~31_cout\);

-- Location: LCCOMB_X25_Y18_N0
\inst5|LessThan3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~33_cout\ = CARRY((\A[16]~input_o\ & ((!\inst5|LessThan3~31_cout\) # (!\B[16]~input_o\))) # (!\A[16]~input_o\ & (!\B[16]~input_o\ & !\inst5|LessThan3~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~31_cout\,
	cout => \inst5|LessThan3~33_cout\);

-- Location: LCCOMB_X25_Y18_N2
\inst5|LessThan3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~35_cout\ = CARRY((\B[17]~input_o\ & ((!\inst5|LessThan3~33_cout\) # (!\A[17]~input_o\))) # (!\B[17]~input_o\ & (!\A[17]~input_o\ & !\inst5|LessThan3~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~33_cout\,
	cout => \inst5|LessThan3~35_cout\);

-- Location: LCCOMB_X25_Y18_N4
\inst5|LessThan3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~37_cout\ = CARRY((\B[18]~input_o\ & (\A[18]~input_o\ & !\inst5|LessThan3~35_cout\)) # (!\B[18]~input_o\ & ((\A[18]~input_o\) # (!\inst5|LessThan3~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~35_cout\,
	cout => \inst5|LessThan3~37_cout\);

-- Location: LCCOMB_X25_Y18_N6
\inst5|LessThan3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~39_cout\ = CARRY((\B[19]~input_o\ & ((!\inst5|LessThan3~37_cout\) # (!\A[19]~input_o\))) # (!\B[19]~input_o\ & (!\A[19]~input_o\ & !\inst5|LessThan3~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~37_cout\,
	cout => \inst5|LessThan3~39_cout\);

-- Location: LCCOMB_X25_Y18_N8
\inst5|LessThan3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~41_cout\ = CARRY((\B[20]~input_o\ & (\A[20]~input_o\ & !\inst5|LessThan3~39_cout\)) # (!\B[20]~input_o\ & ((\A[20]~input_o\) # (!\inst5|LessThan3~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \A[20]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~39_cout\,
	cout => \inst5|LessThan3~41_cout\);

-- Location: LCCOMB_X25_Y18_N10
\inst5|LessThan3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~43_cout\ = CARRY((\A[21]~input_o\ & (\B[21]~input_o\ & !\inst5|LessThan3~41_cout\)) # (!\A[21]~input_o\ & ((\B[21]~input_o\) # (!\inst5|LessThan3~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~41_cout\,
	cout => \inst5|LessThan3~43_cout\);

-- Location: LCCOMB_X25_Y18_N12
\inst5|LessThan3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~45_cout\ = CARRY((\A[22]~input_o\ & ((!\inst5|LessThan3~43_cout\) # (!\B[22]~input_o\))) # (!\A[22]~input_o\ & (!\B[22]~input_o\ & !\inst5|LessThan3~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~43_cout\,
	cout => \inst5|LessThan3~45_cout\);

-- Location: LCCOMB_X25_Y18_N14
\inst5|LessThan3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~47_cout\ = CARRY((\A[23]~input_o\ & (\B[23]~input_o\ & !\inst5|LessThan3~45_cout\)) # (!\A[23]~input_o\ & ((\B[23]~input_o\) # (!\inst5|LessThan3~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~45_cout\,
	cout => \inst5|LessThan3~47_cout\);

-- Location: LCCOMB_X25_Y18_N16
\inst5|LessThan3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~49_cout\ = CARRY((\B[24]~input_o\ & (\A[24]~input_o\ & !\inst5|LessThan3~47_cout\)) # (!\B[24]~input_o\ & ((\A[24]~input_o\) # (!\inst5|LessThan3~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~47_cout\,
	cout => \inst5|LessThan3~49_cout\);

-- Location: LCCOMB_X25_Y18_N18
\inst5|LessThan3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~51_cout\ = CARRY((\A[25]~input_o\ & (\B[25]~input_o\ & !\inst5|LessThan3~49_cout\)) # (!\A[25]~input_o\ & ((\B[25]~input_o\) # (!\inst5|LessThan3~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~49_cout\,
	cout => \inst5|LessThan3~51_cout\);

-- Location: LCCOMB_X25_Y18_N20
\inst5|LessThan3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~53_cout\ = CARRY((\B[26]~input_o\ & (\A[26]~input_o\ & !\inst5|LessThan3~51_cout\)) # (!\B[26]~input_o\ & ((\A[26]~input_o\) # (!\inst5|LessThan3~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~51_cout\,
	cout => \inst5|LessThan3~53_cout\);

-- Location: LCCOMB_X25_Y18_N22
\inst5|LessThan3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~55_cout\ = CARRY((\B[27]~input_o\ & ((!\inst5|LessThan3~53_cout\) # (!\A[27]~input_o\))) # (!\B[27]~input_o\ & (!\A[27]~input_o\ & !\inst5|LessThan3~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~53_cout\,
	cout => \inst5|LessThan3~55_cout\);

-- Location: LCCOMB_X25_Y18_N24
\inst5|LessThan3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~57_cout\ = CARRY((\A[28]~input_o\ & ((!\inst5|LessThan3~55_cout\) # (!\B[28]~input_o\))) # (!\A[28]~input_o\ & (!\B[28]~input_o\ & !\inst5|LessThan3~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~55_cout\,
	cout => \inst5|LessThan3~57_cout\);

-- Location: LCCOMB_X25_Y18_N26
\inst5|LessThan3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~59_cout\ = CARRY((\B[29]~input_o\ & ((!\inst5|LessThan3~57_cout\) # (!\A[29]~input_o\))) # (!\B[29]~input_o\ & (!\A[29]~input_o\ & !\inst5|LessThan3~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~57_cout\,
	cout => \inst5|LessThan3~59_cout\);

-- Location: LCCOMB_X25_Y18_N28
\inst5|LessThan3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~61_cout\ = CARRY((\A[30]~input_o\ & ((!\inst5|LessThan3~59_cout\) # (!\B[30]~input_o\))) # (!\A[30]~input_o\ & (!\B[30]~input_o\ & !\inst5|LessThan3~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan3~59_cout\,
	cout => \inst5|LessThan3~61_cout\);

-- Location: LCCOMB_X25_Y18_N30
\inst5|LessThan3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan3~62_combout\ = (\A[31]~input_o\ & ((\inst5|LessThan3~61_cout\) # (!\B[31]~input_o\))) # (!\A[31]~input_o\ & (\inst5|LessThan3~61_cout\ & !\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \inst5|LessThan3~61_cout\,
	combout => \inst5|LessThan3~62_combout\);

-- Location: LCCOMB_X29_Y21_N8
\inst7[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[5]~0_combout\ = !\inst5|LessThan3~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|LessThan3~62_combout\,
	combout => \inst7[5]~0_combout\);

-- Location: FF_X29_Y21_N9
\inst7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst7[5]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(5));

-- Location: LCCOMB_X23_Y19_N6
\inst5|Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~11_combout\ = (\A[21]~input_o\ & (\B[21]~input_o\ & (\A[6]~input_o\ $ (!\B[6]~input_o\)))) # (!\A[21]~input_o\ & (!\B[21]~input_o\ & (\A[6]~input_o\ $ (!\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \inst5|Equal0~11_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst5|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (\B[10]~input_o\ & (\A[10]~input_o\ & (\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (!\B[10]~input_o\ & (!\A[10]~input_o\ & (\A[8]~input_o\ $ (!\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst5|Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~13_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & (\A[9]~input_o\ $ (!\B[9]~input_o\)))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[9]~input_o\ $ (!\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \inst5|Equal0~13_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst5|Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~12_combout\ = (\A[23]~input_o\ & (\B[23]~input_o\ & (\B[4]~input_o\ $ (!\A[4]~input_o\)))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & (\B[4]~input_o\ $ (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[23]~input_o\,
	combout => \inst5|Equal0~12_combout\);

-- Location: LCCOMB_X23_Y19_N8
\inst5|Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~14_combout\ = (\inst5|Equal0~11_combout\ & (\inst5|Equal0~10_combout\ & (\inst5|Equal0~13_combout\ & \inst5|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~11_combout\,
	datab => \inst5|Equal0~10_combout\,
	datac => \inst5|Equal0~13_combout\,
	datad => \inst5|Equal0~12_combout\,
	combout => \inst5|Equal0~14_combout\);

-- Location: LCCOMB_X22_Y19_N16
\inst5|Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~16_combout\ = (\A[15]~input_o\ & (\B[15]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\A[15]~input_o\ & (!\B[15]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst5|Equal0~16_combout\);

-- Location: LCCOMB_X23_Y21_N16
\inst5|Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~18_combout\ = (\B[7]~input_o\ & (\A[7]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\)))) # (!\B[7]~input_o\ & (!\A[7]~input_o\ & (\A[5]~input_o\ $ (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[5]~input_o\,
	combout => \inst5|Equal0~18_combout\);

-- Location: LCCOMB_X16_Y19_N30
\inst5|Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~15_combout\ = (\A[13]~input_o\ & (\B[13]~input_o\ & (\B[11]~input_o\ $ (!\A[11]~input_o\)))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & (\B[11]~input_o\ $ (!\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \inst5|Equal0~15_combout\);

-- Location: LCCOMB_X22_Y21_N8
\inst5|Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~17_combout\ = (\B[3]~input_o\ & (\A[3]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & (\A[1]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst5|Equal0~17_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst5|Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~19_combout\ = (\inst5|Equal0~16_combout\ & (\inst5|Equal0~18_combout\ & (\inst5|Equal0~15_combout\ & \inst5|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~16_combout\,
	datab => \inst5|Equal0~18_combout\,
	datac => \inst5|Equal0~15_combout\,
	datad => \inst5|Equal0~17_combout\,
	combout => \inst5|Equal0~19_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (\B[22]~input_o\ & (\A[22]~input_o\ & (\B[30]~input_o\ $ (!\A[30]~input_o\)))) # (!\B[22]~input_o\ & (!\A[22]~input_o\ & (\B[30]~input_o\ $ (!\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[22]~input_o\,
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (\B[29]~input_o\ & (\A[29]~input_o\ & (\A[27]~input_o\ $ (!\B[27]~input_o\)))) # (!\B[29]~input_o\ & (!\A[29]~input_o\ & (\A[27]~input_o\ $ (!\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \A[29]~input_o\,
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\B[26]~input_o\ & (\A[26]~input_o\ & (\A[28]~input_o\ $ (!\B[28]~input_o\)))) # (!\B[26]~input_o\ & (!\A[26]~input_o\ & (\A[28]~input_o\ $ (!\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\inst5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\B[25]~input_o\ & (\A[25]~input_o\ & (\B[24]~input_o\ $ (!\A[24]~input_o\)))) # (!\B[25]~input_o\ & (!\A[25]~input_o\ & (\B[24]~input_o\ $ (!\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst5|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (\A[20]~input_o\ & (\B[20]~input_o\ & (\A[31]~input_o\ $ (!\B[31]~input_o\)))) # (!\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[31]~input_o\ $ (!\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst5|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (\A[16]~input_o\ & (\B[16]~input_o\ & (\A[18]~input_o\ $ (!\B[18]~input_o\)))) # (!\A[16]~input_o\ & (!\B[16]~input_o\ & (\A[18]~input_o\ $ (!\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[18]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[18]~input_o\,
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y19_N4
\inst5|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (\B[14]~input_o\ & (\A[14]~input_o\ & (\A[17]~input_o\ $ (!\B[17]~input_o\)))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & (\A[17]~input_o\ $ (!\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[17]~input_o\,
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst5|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & (\A[19]~input_o\ $ (!\B[19]~input_o\)))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & (\A[19]~input_o\ $ (!\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[12]~input_o\,
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst5|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~5_combout\ & (\inst5|Equal0~6_combout\ & (\inst5|Equal0~7_combout\ & \inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~5_combout\,
	datab => \inst5|Equal0~6_combout\,
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst5|Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~20_combout\ = (\inst5|Equal0~14_combout\ & (\inst5|Equal0~19_combout\ & (\inst5|Equal0~4_combout\ & \inst5|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~14_combout\,
	datab => \inst5|Equal0~19_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|Equal0~20_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst7[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[4]~1_combout\ = !\inst5|Equal0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|Equal0~20_combout\,
	combout => \inst7[4]~1_combout\);

-- Location: FF_X23_Y21_N1
\inst7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst7[4]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(4));

-- Location: LCCOMB_X24_Y19_N0
\inst5|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~1_cout\ = CARRY((!\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \inst5|LessThan2~1_cout\);

-- Location: LCCOMB_X24_Y19_N2
\inst5|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~3_cout\ = CARRY((\A[1]~input_o\ & ((!\inst5|LessThan2~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\inst5|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~1_cout\,
	cout => \inst5|LessThan2~3_cout\);

-- Location: LCCOMB_X24_Y19_N4
\inst5|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~5_cout\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\inst5|LessThan2~3_cout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\inst5|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~3_cout\,
	cout => \inst5|LessThan2~5_cout\);

-- Location: LCCOMB_X24_Y19_N6
\inst5|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~7_cout\ = CARRY((\A[3]~input_o\ & ((!\inst5|LessThan2~5_cout\) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[3]~input_o\ & !\inst5|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~5_cout\,
	cout => \inst5|LessThan2~7_cout\);

-- Location: LCCOMB_X24_Y19_N8
\inst5|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~9_cout\ = CARRY((\B[4]~input_o\ & ((!\inst5|LessThan2~7_cout\) # (!\A[4]~input_o\))) # (!\B[4]~input_o\ & (!\A[4]~input_o\ & !\inst5|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~7_cout\,
	cout => \inst5|LessThan2~9_cout\);

-- Location: LCCOMB_X24_Y19_N10
\inst5|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~11_cout\ = CARRY((\A[5]~input_o\ & ((!\inst5|LessThan2~9_cout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & !\inst5|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~9_cout\,
	cout => \inst5|LessThan2~11_cout\);

-- Location: LCCOMB_X24_Y19_N12
\inst5|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~13_cout\ = CARRY((\A[6]~input_o\ & (\B[6]~input_o\ & !\inst5|LessThan2~11_cout\)) # (!\A[6]~input_o\ & ((\B[6]~input_o\) # (!\inst5|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~11_cout\,
	cout => \inst5|LessThan2~13_cout\);

-- Location: LCCOMB_X24_Y19_N14
\inst5|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~15_cout\ = CARRY((\B[7]~input_o\ & (\A[7]~input_o\ & !\inst5|LessThan2~13_cout\)) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\inst5|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~13_cout\,
	cout => \inst5|LessThan2~15_cout\);

-- Location: LCCOMB_X24_Y19_N16
\inst5|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~17_cout\ = CARRY((\A[8]~input_o\ & (\B[8]~input_o\ & !\inst5|LessThan2~15_cout\)) # (!\A[8]~input_o\ & ((\B[8]~input_o\) # (!\inst5|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~15_cout\,
	cout => \inst5|LessThan2~17_cout\);

-- Location: LCCOMB_X24_Y19_N18
\inst5|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~19_cout\ = CARRY((\A[9]~input_o\ & ((!\inst5|LessThan2~17_cout\) # (!\B[9]~input_o\))) # (!\A[9]~input_o\ & (!\B[9]~input_o\ & !\inst5|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~17_cout\,
	cout => \inst5|LessThan2~19_cout\);

-- Location: LCCOMB_X24_Y19_N20
\inst5|LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~21_cout\ = CARRY((\A[10]~input_o\ & (\B[10]~input_o\ & !\inst5|LessThan2~19_cout\)) # (!\A[10]~input_o\ & ((\B[10]~input_o\) # (!\inst5|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~19_cout\,
	cout => \inst5|LessThan2~21_cout\);

-- Location: LCCOMB_X24_Y19_N22
\inst5|LessThan2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~23_cout\ = CARRY((\B[11]~input_o\ & (\A[11]~input_o\ & !\inst5|LessThan2~21_cout\)) # (!\B[11]~input_o\ & ((\A[11]~input_o\) # (!\inst5|LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~21_cout\,
	cout => \inst5|LessThan2~23_cout\);

-- Location: LCCOMB_X24_Y19_N24
\inst5|LessThan2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~25_cout\ = CARRY((\B[12]~input_o\ & ((!\inst5|LessThan2~23_cout\) # (!\A[12]~input_o\))) # (!\B[12]~input_o\ & (!\A[12]~input_o\ & !\inst5|LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~23_cout\,
	cout => \inst5|LessThan2~25_cout\);

-- Location: LCCOMB_X24_Y19_N26
\inst5|LessThan2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~27_cout\ = CARRY((\A[13]~input_o\ & ((!\inst5|LessThan2~25_cout\) # (!\B[13]~input_o\))) # (!\A[13]~input_o\ & (!\B[13]~input_o\ & !\inst5|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~25_cout\,
	cout => \inst5|LessThan2~27_cout\);

-- Location: LCCOMB_X24_Y19_N28
\inst5|LessThan2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~29_cout\ = CARRY((\B[14]~input_o\ & ((!\inst5|LessThan2~27_cout\) # (!\A[14]~input_o\))) # (!\B[14]~input_o\ & (!\A[14]~input_o\ & !\inst5|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~27_cout\,
	cout => \inst5|LessThan2~29_cout\);

-- Location: LCCOMB_X24_Y19_N30
\inst5|LessThan2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~31_cout\ = CARRY((\B[15]~input_o\ & (\A[15]~input_o\ & !\inst5|LessThan2~29_cout\)) # (!\B[15]~input_o\ & ((\A[15]~input_o\) # (!\inst5|LessThan2~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \A[15]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~29_cout\,
	cout => \inst5|LessThan2~31_cout\);

-- Location: LCCOMB_X24_Y18_N0
\inst5|LessThan2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~33_cout\ = CARRY((\A[16]~input_o\ & (\B[16]~input_o\ & !\inst5|LessThan2~31_cout\)) # (!\A[16]~input_o\ & ((\B[16]~input_o\) # (!\inst5|LessThan2~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~31_cout\,
	cout => \inst5|LessThan2~33_cout\);

-- Location: LCCOMB_X24_Y18_N2
\inst5|LessThan2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~35_cout\ = CARRY((\A[17]~input_o\ & ((!\inst5|LessThan2~33_cout\) # (!\B[17]~input_o\))) # (!\A[17]~input_o\ & (!\B[17]~input_o\ & !\inst5|LessThan2~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~33_cout\,
	cout => \inst5|LessThan2~35_cout\);

-- Location: LCCOMB_X24_Y18_N4
\inst5|LessThan2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~37_cout\ = CARRY((\B[18]~input_o\ & ((!\inst5|LessThan2~35_cout\) # (!\A[18]~input_o\))) # (!\B[18]~input_o\ & (!\A[18]~input_o\ & !\inst5|LessThan2~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~35_cout\,
	cout => \inst5|LessThan2~37_cout\);

-- Location: LCCOMB_X24_Y18_N6
\inst5|LessThan2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~39_cout\ = CARRY((\A[19]~input_o\ & ((!\inst5|LessThan2~37_cout\) # (!\B[19]~input_o\))) # (!\A[19]~input_o\ & (!\B[19]~input_o\ & !\inst5|LessThan2~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~37_cout\,
	cout => \inst5|LessThan2~39_cout\);

-- Location: LCCOMB_X24_Y18_N8
\inst5|LessThan2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~41_cout\ = CARRY((\A[20]~input_o\ & (\B[20]~input_o\ & !\inst5|LessThan2~39_cout\)) # (!\A[20]~input_o\ & ((\B[20]~input_o\) # (!\inst5|LessThan2~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~39_cout\,
	cout => \inst5|LessThan2~41_cout\);

-- Location: LCCOMB_X24_Y18_N10
\inst5|LessThan2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~43_cout\ = CARRY((\B[21]~input_o\ & (\A[21]~input_o\ & !\inst5|LessThan2~41_cout\)) # (!\B[21]~input_o\ & ((\A[21]~input_o\) # (!\inst5|LessThan2~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~41_cout\,
	cout => \inst5|LessThan2~43_cout\);

-- Location: LCCOMB_X24_Y18_N12
\inst5|LessThan2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~45_cout\ = CARRY((\A[22]~input_o\ & (\B[22]~input_o\ & !\inst5|LessThan2~43_cout\)) # (!\A[22]~input_o\ & ((\B[22]~input_o\) # (!\inst5|LessThan2~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~43_cout\,
	cout => \inst5|LessThan2~45_cout\);

-- Location: LCCOMB_X24_Y18_N14
\inst5|LessThan2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~47_cout\ = CARRY((\A[23]~input_o\ & ((!\inst5|LessThan2~45_cout\) # (!\B[23]~input_o\))) # (!\A[23]~input_o\ & (!\B[23]~input_o\ & !\inst5|LessThan2~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~45_cout\,
	cout => \inst5|LessThan2~47_cout\);

-- Location: LCCOMB_X24_Y18_N16
\inst5|LessThan2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~49_cout\ = CARRY((\B[24]~input_o\ & ((!\inst5|LessThan2~47_cout\) # (!\A[24]~input_o\))) # (!\B[24]~input_o\ & (!\A[24]~input_o\ & !\inst5|LessThan2~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~47_cout\,
	cout => \inst5|LessThan2~49_cout\);

-- Location: LCCOMB_X24_Y18_N18
\inst5|LessThan2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~51_cout\ = CARRY((\B[25]~input_o\ & (\A[25]~input_o\ & !\inst5|LessThan2~49_cout\)) # (!\B[25]~input_o\ & ((\A[25]~input_o\) # (!\inst5|LessThan2~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~49_cout\,
	cout => \inst5|LessThan2~51_cout\);

-- Location: LCCOMB_X24_Y18_N20
\inst5|LessThan2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~53_cout\ = CARRY((\A[26]~input_o\ & (\B[26]~input_o\ & !\inst5|LessThan2~51_cout\)) # (!\A[26]~input_o\ & ((\B[26]~input_o\) # (!\inst5|LessThan2~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~51_cout\,
	cout => \inst5|LessThan2~53_cout\);

-- Location: LCCOMB_X24_Y18_N22
\inst5|LessThan2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~55_cout\ = CARRY((\B[27]~input_o\ & (\A[27]~input_o\ & !\inst5|LessThan2~53_cout\)) # (!\B[27]~input_o\ & ((\A[27]~input_o\) # (!\inst5|LessThan2~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~53_cout\,
	cout => \inst5|LessThan2~55_cout\);

-- Location: LCCOMB_X24_Y18_N24
\inst5|LessThan2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~57_cout\ = CARRY((\A[28]~input_o\ & (\B[28]~input_o\ & !\inst5|LessThan2~55_cout\)) # (!\A[28]~input_o\ & ((\B[28]~input_o\) # (!\inst5|LessThan2~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~55_cout\,
	cout => \inst5|LessThan2~57_cout\);

-- Location: LCCOMB_X24_Y18_N26
\inst5|LessThan2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~59_cout\ = CARRY((\B[29]~input_o\ & (\A[29]~input_o\ & !\inst5|LessThan2~57_cout\)) # (!\B[29]~input_o\ & ((\A[29]~input_o\) # (!\inst5|LessThan2~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~57_cout\,
	cout => \inst5|LessThan2~59_cout\);

-- Location: LCCOMB_X24_Y18_N28
\inst5|LessThan2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~61_cout\ = CARRY((\B[30]~input_o\ & ((!\inst5|LessThan2~59_cout\) # (!\A[30]~input_o\))) # (!\B[30]~input_o\ & (!\A[30]~input_o\ & !\inst5|LessThan2~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \A[30]~input_o\,
	datad => VCC,
	cin => \inst5|LessThan2~59_cout\,
	cout => \inst5|LessThan2~61_cout\);

-- Location: LCCOMB_X24_Y18_N30
\inst5|LessThan2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan2~62_combout\ = (\A[31]~input_o\ & (\inst5|LessThan2~61_cout\ & \B[31]~input_o\)) # (!\A[31]~input_o\ & ((\inst5|LessThan2~61_cout\) # (\B[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	cin => \inst5|LessThan2~61_cout\,
	combout => \inst5|LessThan2~62_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst7[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7[3]~2_combout\ = !\inst5|LessThan2~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan2~62_combout\,
	combout => \inst7[3]~2_combout\);

-- Location: FF_X28_Y18_N21
\inst7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst7[3]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(3));

-- Location: FF_X24_Y18_N31
\inst7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|LessThan2~62_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(2));

-- Location: FF_X23_Y21_N25
\inst7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|Equal0~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(1));

-- Location: FF_X25_Y18_N31
\inst7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst5|LessThan3~62_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst7(0));

-- Location: DDIOOUTCELL_X24_Y0_N18
\inst2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a15\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(15));

-- Location: DDIOOUTCELL_X29_Y0_N18
\inst2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a14\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(14));

-- Location: DDIOOUTCELL_X24_Y0_N25
\inst2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a13\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(13));

-- Location: DDIOOUTCELL_X31_Y3_N18
\inst2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a12\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(12));

-- Location: DDIOOUTCELL_X27_Y0_N4
\inst2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a11\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(11));

-- Location: DDIOOUTCELL_X24_Y0_N11
\inst2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a10\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(10));

-- Location: DDIOOUTCELL_X22_Y0_N4
\inst2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a9\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(9));

-- Location: DDIOOUTCELL_X24_Y0_N32
\inst2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a8\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(8));

-- Location: DDIOOUTCELL_X27_Y0_N25
\inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(7));

-- Location: DDIOOUTCELL_X31_Y3_N4
\inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(6));

-- Location: DDIOOUTCELL_X31_Y3_N11
\inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(5));

-- Location: DDIOOUTCELL_X24_Y0_N4
\inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(4));

-- Location: DDIOOUTCELL_X29_Y0_N32
\inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(3));

-- Location: DDIOOUTCELL_X29_Y0_N25
\inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(2));

-- Location: DDIOOUTCELL_X27_Y0_N32
\inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(1));

-- Location: DDIOOUTCELL_X31_Y3_N25
\inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \inst1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(0));

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_Cout <= \Cout~output_o\;

ww_ALUout(15) <= \ALUout[15]~output_o\;

ww_ALUout(14) <= \ALUout[14]~output_o\;

ww_ALUout(13) <= \ALUout[13]~output_o\;

ww_ALUout(12) <= \ALUout[12]~output_o\;

ww_ALUout(11) <= \ALUout[11]~output_o\;

ww_ALUout(10) <= \ALUout[10]~output_o\;

ww_ALUout(9) <= \ALUout[9]~output_o\;

ww_ALUout(8) <= \ALUout[8]~output_o\;

ww_ALUout(7) <= \ALUout[7]~output_o\;

ww_ALUout(6) <= \ALUout[6]~output_o\;

ww_ALUout(5) <= \ALUout[5]~output_o\;

ww_ALUout(4) <= \ALUout[4]~output_o\;

ww_ALUout(3) <= \ALUout[3]~output_o\;

ww_ALUout(2) <= \ALUout[2]~output_o\;

ww_ALUout(1) <= \ALUout[1]~output_o\;

ww_ALUout(0) <= \ALUout[0]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(0) <= \Sum[0]~output_o\;

ww_CCout(5) <= \CCout[5]~output_o\;

ww_CCout(4) <= \CCout[4]~output_o\;

ww_CCout(3) <= \CCout[3]~output_o\;

ww_CCout(2) <= \CCout[2]~output_o\;

ww_CCout(1) <= \CCout[1]~output_o\;

ww_CCout(0) <= \CCout[0]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


