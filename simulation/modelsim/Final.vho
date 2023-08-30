-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/06/2021 20:40:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	smdb IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	I2C_SDAT : BUFFER std_logic;
	I2C_SCLK : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_ADCLRCK : IN std_logic;
	AUD_DACLRCK : IN std_logic;
	AUD_BCLK : IN std_logic
	);
END smdb;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SDAT	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF smdb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ2|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \assm|ASSM|SYN|BclkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \assm|ASSM|CG|LessThan1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \assm|ASSM|SYN|AdcLrcOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \I2C_SDAT~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \I2C_SCLK~output_o\ : std_logic;
SIGNAL \AUD_XCK~output_o\ : std_logic;
SIGNAL \AUD_DACDAT~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[0]~27_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[4]~36\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[5]~37_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[5]~38\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[6]~39_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[6]~40\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[7]~41_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[7]~42\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[8]~43_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[8]~44\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[9]~45_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[9]~46\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[10]~47_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[10]~48\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[11]~49_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[11]~50\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[12]~51_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[12]~52\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[13]~53_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[13]~54\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[14]~55_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[14]~56\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[15]~57_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[15]~58\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[16]~59_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[16]~60\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[17]~61_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[17]~62\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[18]~63_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[18]~64\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[19]~65_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[19]~66\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[20]~67_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[20]~68\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[21]~69_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~4_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[21]~70\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[22]~71_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[22]~72\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[23]~73_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[23]~74\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[24]~75_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[24]~76\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[25]~77_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[25]~78\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[26]~79_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~5_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~6_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~7_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan0~8_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[0]~28\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[1]~29_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[1]~30\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[2]~31_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[2]~32\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[3]~33_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[3]~34\ : std_logic;
SIGNAL \assm|ASSM|CG|DivChain[4]~35_combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan1~combout\ : std_logic;
SIGNAL \assm|ASSM|CG|LessThan1~clkctrl_outclk\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_2~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_4~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_4~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_4~q\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_2~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_2~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_2~q\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_3~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_3~q\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_1~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \assm|k0~q\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_1~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_1~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_1~q\ : std_logic;
SIGNAL \assm|ASSM|CI|WideNor0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_0~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_0~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_2~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_2~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.Packet0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_1~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_1~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_1~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.start~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_0~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_0~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_0~4_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_0~5_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|EOC~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|EOC~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|BadAck~combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux26~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|Op~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|NextCnt[0]~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|AddrCnt[2]~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|AddrCnt[2]~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|CU:State.state_bit_1~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|NextCnt[1]~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|NextCnt[2]~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Add0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|NextCnt[3]~3_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux16~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux17~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux19~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux19~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux24~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|RegQ[0]~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|RegQ[0]~2_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux27~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux28~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux26~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux25~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux17~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux24~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux23~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux22~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux21~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux21~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux22~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux20~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux19~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux18~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux17~1_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux16~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|Mux18~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux15~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux14~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux13~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux12~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux11~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux10~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux9~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux8~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux7~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux6~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux5~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux4~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux3~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux2~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux1~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|DP|Mux0~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \OBJ2|Mode4[0]~26_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \OBJ1|obj9|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj9|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj9|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj9|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj9|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj9|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj9|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj9|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj9|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj9|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj9|debounced~q\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \OBJ1|obj8|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[1]~1_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[0]~0_combout\ : std_logic;
SIGNAL \OBJ1|obj8|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[1]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj8|Add0~1_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[2]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[3]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj8|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj8|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj8|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj8|debounced~feeder_combout\ : std_logic;
SIGNAL \OBJ1|obj8|debounced~q\ : std_logic;
SIGNAL \OBJ2|Equal2~2_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[0]~27\ : std_logic;
SIGNAL \OBJ2|Mode4[1]~28_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[1]~29\ : std_logic;
SIGNAL \OBJ2|Mode4[2]~30_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[2]~31\ : std_logic;
SIGNAL \OBJ2|Mode4[3]~32_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[3]~33\ : std_logic;
SIGNAL \OBJ2|Mode4[4]~34_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[4]~35\ : std_logic;
SIGNAL \OBJ2|Mode4[5]~36_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[5]~37\ : std_logic;
SIGNAL \OBJ2|Mode4[6]~38_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[6]~39\ : std_logic;
SIGNAL \OBJ2|Mode4[7]~40_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[7]~41\ : std_logic;
SIGNAL \OBJ2|Mode4[8]~42_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[8]~43\ : std_logic;
SIGNAL \OBJ2|Mode4[9]~44_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[9]~45\ : std_logic;
SIGNAL \OBJ2|Mode4[10]~46_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[10]~47\ : std_logic;
SIGNAL \OBJ2|Mode4[11]~48_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[11]~49\ : std_logic;
SIGNAL \OBJ2|Mode4[12]~50_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[12]~51\ : std_logic;
SIGNAL \OBJ2|Mode4[13]~52_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[13]~53\ : std_logic;
SIGNAL \OBJ2|Mode4[14]~54_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[14]~55\ : std_logic;
SIGNAL \OBJ2|Mode4[15]~56_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[15]~57\ : std_logic;
SIGNAL \OBJ2|Mode4[16]~58_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[16]~59\ : std_logic;
SIGNAL \OBJ2|Mode4[17]~60_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[17]~61\ : std_logic;
SIGNAL \OBJ2|Mode4[18]~62_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[18]~63\ : std_logic;
SIGNAL \OBJ2|Mode4[19]~64_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[19]~65\ : std_logic;
SIGNAL \OBJ2|Mode4[20]~66_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[20]~67\ : std_logic;
SIGNAL \OBJ2|Mode4[21]~68_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[21]~69\ : std_logic;
SIGNAL \OBJ2|Mode4[22]~70_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[22]~71\ : std_logic;
SIGNAL \OBJ2|Mode4[23]~72_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[23]~73\ : std_logic;
SIGNAL \OBJ2|Mode4[24]~74_combout\ : std_logic;
SIGNAL \OBJ2|Mode4[24]~75\ : std_logic;
SIGNAL \OBJ2|Mode4[25]~76_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[0]~22_combout\ : std_logic;
SIGNAL \OBJ2|Equal2~0_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[0]~23\ : std_logic;
SIGNAL \OBJ2|Mode2[1]~24_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[1]~25\ : std_logic;
SIGNAL \OBJ2|Mode2[2]~26_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[2]~27\ : std_logic;
SIGNAL \OBJ2|Mode2[3]~28_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[3]~29\ : std_logic;
SIGNAL \OBJ2|Mode2[4]~30_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[4]~31\ : std_logic;
SIGNAL \OBJ2|Mode2[5]~32_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[5]~33\ : std_logic;
SIGNAL \OBJ2|Mode2[6]~34_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[6]~35\ : std_logic;
SIGNAL \OBJ2|Mode2[7]~36_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[7]~37\ : std_logic;
SIGNAL \OBJ2|Mode2[8]~38_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[8]~39\ : std_logic;
SIGNAL \OBJ2|Mode2[9]~40_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[9]~41\ : std_logic;
SIGNAL \OBJ2|Mode2[10]~42_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[10]~43\ : std_logic;
SIGNAL \OBJ2|Mode2[11]~44_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[11]~45\ : std_logic;
SIGNAL \OBJ2|Mode2[12]~46_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[12]~47\ : std_logic;
SIGNAL \OBJ2|Mode2[13]~48_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[13]~49\ : std_logic;
SIGNAL \OBJ2|Mode2[14]~50_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[14]~51\ : std_logic;
SIGNAL \OBJ2|Mode2[15]~52_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[15]~53\ : std_logic;
SIGNAL \OBJ2|Mode2[16]~54_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[16]~55\ : std_logic;
SIGNAL \OBJ2|Mode2[17]~56_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[17]~57\ : std_logic;
SIGNAL \OBJ2|Mode2[18]~58_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[18]~59\ : std_logic;
SIGNAL \OBJ2|Mode2[19]~60_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[19]~61\ : std_logic;
SIGNAL \OBJ2|Mode2[20]~62_combout\ : std_logic;
SIGNAL \OBJ2|Mode2[20]~63\ : std_logic;
SIGNAL \OBJ2|Mode2[21]~64_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[0]~24_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[23]~72_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[0]~25\ : std_logic;
SIGNAL \OBJ2|Mode1[1]~26_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[1]~27\ : std_logic;
SIGNAL \OBJ2|Mode1[2]~28_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[2]~29\ : std_logic;
SIGNAL \OBJ2|Mode1[3]~30_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[3]~31\ : std_logic;
SIGNAL \OBJ2|Mode1[4]~32_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[4]~33\ : std_logic;
SIGNAL \OBJ2|Mode1[5]~34_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[5]~35\ : std_logic;
SIGNAL \OBJ2|Mode1[6]~36_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[6]~37\ : std_logic;
SIGNAL \OBJ2|Mode1[7]~38_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[7]~39\ : std_logic;
SIGNAL \OBJ2|Mode1[8]~40_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[8]~41\ : std_logic;
SIGNAL \OBJ2|Mode1[9]~42_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[9]~43\ : std_logic;
SIGNAL \OBJ2|Mode1[10]~44_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[10]~45\ : std_logic;
SIGNAL \OBJ2|Mode1[11]~46_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[11]~47\ : std_logic;
SIGNAL \OBJ2|Mode1[12]~48_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[12]~49\ : std_logic;
SIGNAL \OBJ2|Mode1[13]~50_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[13]~51\ : std_logic;
SIGNAL \OBJ2|Mode1[14]~52_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[14]~53\ : std_logic;
SIGNAL \OBJ2|Mode1[15]~54_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[15]~55\ : std_logic;
SIGNAL \OBJ2|Mode1[16]~56_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[16]~57\ : std_logic;
SIGNAL \OBJ2|Mode1[17]~58_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[17]~59\ : std_logic;
SIGNAL \OBJ2|Mode1[18]~60_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[18]~61\ : std_logic;
SIGNAL \OBJ2|Mode1[19]~62_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[19]~63\ : std_logic;
SIGNAL \OBJ2|Mode1[20]~64_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[20]~65\ : std_logic;
SIGNAL \OBJ2|Mode1[21]~66_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[21]~67\ : std_logic;
SIGNAL \OBJ2|Mode1[22]~68_combout\ : std_logic;
SIGNAL \OBJ2|Mode1[22]~69\ : std_logic;
SIGNAL \OBJ2|Mode1[23]~70_combout\ : std_logic;
SIGNAL \OBJ2|Mux0~0_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[0]~20_combout\ : std_logic;
SIGNAL \OBJ2|Equal2~1_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[0]~21\ : std_logic;
SIGNAL \OBJ2|Mode3[1]~22_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[1]~23\ : std_logic;
SIGNAL \OBJ2|Mode3[2]~24_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[2]~25\ : std_logic;
SIGNAL \OBJ2|Mode3[3]~26_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[3]~27\ : std_logic;
SIGNAL \OBJ2|Mode3[4]~28_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[4]~29\ : std_logic;
SIGNAL \OBJ2|Mode3[5]~30_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[5]~31\ : std_logic;
SIGNAL \OBJ2|Mode3[6]~32_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[6]~33\ : std_logic;
SIGNAL \OBJ2|Mode3[7]~34_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[7]~35\ : std_logic;
SIGNAL \OBJ2|Mode3[8]~36_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[8]~37\ : std_logic;
SIGNAL \OBJ2|Mode3[9]~38_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[9]~39\ : std_logic;
SIGNAL \OBJ2|Mode3[10]~40_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[10]~41\ : std_logic;
SIGNAL \OBJ2|Mode3[11]~42_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[11]~43\ : std_logic;
SIGNAL \OBJ2|Mode3[12]~44_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[12]~45\ : std_logic;
SIGNAL \OBJ2|Mode3[13]~46_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[13]~47\ : std_logic;
SIGNAL \OBJ2|Mode3[14]~48_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[14]~49\ : std_logic;
SIGNAL \OBJ2|Mode3[15]~50_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[15]~51\ : std_logic;
SIGNAL \OBJ2|Mode3[16]~52_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[16]~53\ : std_logic;
SIGNAL \OBJ2|Mode3[17]~54_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[17]~55\ : std_logic;
SIGNAL \OBJ2|Mode3[18]~56_combout\ : std_logic;
SIGNAL \OBJ2|Mode3[18]~57\ : std_logic;
SIGNAL \OBJ2|Mode3[19]~58_combout\ : std_logic;
SIGNAL \OBJ2|Mux0~combout\ : std_logic;
SIGNAL \OBJ2|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \OBJ1|obj4|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj4|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj4|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj4|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj4|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj4|debounced~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \OBJ1|obj3|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj3|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj3|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj3|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj3|debounced~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|process_0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj7|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj7|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj7|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj7|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj7|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj7|debounced~q\ : std_logic;
SIGNAL \OBJ1|obj5|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj5|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj5|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj5|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj5|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj5|debounced~q\ : std_logic;
SIGNAL \OBJ1|obj6|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj6|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj6|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj6|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj6|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj6|debounced~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal4~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.progIdle~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|process_0~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Selector8~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~21_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \OBJ1|obj2|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[1]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[3]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj2|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj2|counter[2]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj2|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj2|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj2|debounced~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~35_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[1]~38\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[2]~39_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal4~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\ : std_logic;
SIGNAL \OBJ1|obj1|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[1]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj1|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[3]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj1|counter[2]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj1|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj1|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj1|debounced~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|fly_state~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|fly_state~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog4~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog4~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog4~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|control~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~20_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[4]~44\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[5]~45_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[5]~46\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[6]~57_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[6]~58\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[7]~59_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[7]~60\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[8]~61_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[8]~62\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~63_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~64\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[10]~65_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[10]~66\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[11]~67_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[11]~68\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[12]~69_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[12]~70\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[13]~71_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[13]~72\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[14]~73_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[14]~74\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[15]~75_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[15]~76\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[16]~77_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[16]~78\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[17]~79_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[17]~80\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[18]~81_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[18]~82\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[19]~83_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[19]~84\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[20]~85_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[20]~86\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[21]~87_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[21]~88\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[22]~89_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[22]~90\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[23]~91_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[23]~92\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[24]~93_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[24]~94\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[25]~95_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[25]~96\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[26]~97_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[26]~98\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[27]~99_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[27]~100\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[28]~101_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[28]~102\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[29]~103_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[29]~104\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[30]~105_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[30]~106\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[31]~107_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal2~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~23_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog2~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~19_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog3~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Selector8~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|control~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|control~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|control~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~55_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~53_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~52_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~54_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[2]~40\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[3]~41_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[3]~42\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[4]~43_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~49_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal3~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal3~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~50_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~47_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal3~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal3~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~48_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[0]~36\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[1]~37_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Equal1~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~22_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.prog1~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Selector8~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Selector8~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.progIdle~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|main_state~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|main_state~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|main_state~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~17_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~18_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState.progError~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|progState~16_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|soundOut~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|soundOut~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|soundOut~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|soundOut~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~19_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~20_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~21_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Mux7~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~12_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Mux0~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~14_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~15_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~13_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~16_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Mux2~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~22_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~24_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~25_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~23_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~26_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|Mux9~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~27_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~30_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~31_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~28_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~29_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~32_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~34_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~33_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal~35_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux5~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux5~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux4~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux4~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux4~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux4~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux3~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux3~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux3~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux2~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux2~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux2~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux1~2_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux1~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux1~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux0~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux0~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux0~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|Mux0~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux5~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux5~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux4~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux4~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux3~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux3~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux3~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux3~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux2~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux2~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux1~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux1~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux1~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux0~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux0~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|Mux0~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux6~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux6~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux6~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux4~12_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux4~13_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux4~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux2~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux1~13_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux1~14_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux1~12_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux0~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|Mux0~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux2~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux5~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux3~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux3~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux3~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux3~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux2~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux2~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux1~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux1~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux1~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux0~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|Mux0~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux5~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux5~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux5~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux4~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux4~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux4~12_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux3~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux3~12_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux3~13_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux2~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux1~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux1~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux1~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux0~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|Mux0~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux5~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux5~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux4~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux4~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux4~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux3~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux3~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux3~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux2~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux2~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux1~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux1~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux1~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux0~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|Mux0~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux5~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux5~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux4~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux2~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux1~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux1~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux1~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux0~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|Mux0~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux6~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux6~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux6~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux6~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux5~3_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux5~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux5~7_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux5~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~5_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux4~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux3~22_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux3~23_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux2~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux2~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux2~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux2~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux1~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux1~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux1~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux1~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux0~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ0|Mux0~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|pceOUT~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|pceOUT~1_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|OBJ1|pceOUT~q\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[0]~4_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[0]~5\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[1]~6_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[1]~7\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[2]~8_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[2]~9\ : std_logic;
SIGNAL \OBJ3|OBJ3|pceCounter[3]~10_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|Equal0~0_combout\ : std_logic;
SIGNAL \OBJ3|OBJ3|process_0~0_combout\ : std_logic;
SIGNAL \assm|ASSM|CI|TX|CU|Sclk~0_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \assm|ASSM|SYN|BclkOut~feeder_combout\ : std_logic;
SIGNAL \assm|ASSM|SYN|BclkOut~q\ : std_logic;
SIGNAL \assm|ASSM|SYN|BclkOut~clkctrl_outclk\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \assm|ASSM|SYN|DacLrcOut~feeder_combout\ : std_logic;
SIGNAL \assm|ASSM|SYN|DacLrcOut~q\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[16]~0_combout\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \assm|ASSM|SYN|AdcLrcOut~q\ : std_logic;
SIGNAL \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \OBJ1|obj10|DEBOUNCE_PROC~0_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[0]~2_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[1]~6_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[1]~7_combout\ : std_logic;
SIGNAL \OBJ1|obj10|Add0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[3]~4_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[3]~5_combout\ : std_logic;
SIGNAL \OBJ1|obj10|counter[2]~3_combout\ : std_logic;
SIGNAL \OBJ1|obj10|LessThan0~0_combout\ : std_logic;
SIGNAL \OBJ1|obj10|debounced~0_combout\ : std_logic;
SIGNAL \OBJ1|obj10|debounced~q\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \FreqSig[15]~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \FreqSig[14]~1_combout\ : std_logic;
SIGNAL \FreqSig[14]~2_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \FreqSig[14]~3_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \FreqSig[13]~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \FreqSig[13]~5_combout\ : std_logic;
SIGNAL \FreqSig[13]~6_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \FreqSig[12]~7_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \FreqSig[12]~8_combout\ : std_logic;
SIGNAL \FreqSig[12]~9_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \FreqSig[11]~10_combout\ : std_logic;
SIGNAL \FreqSig[11]~11_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \FreqSig[10]~12_combout\ : std_logic;
SIGNAL \FreqSig[10]~13_combout\ : std_logic;
SIGNAL \FreqSig[10]~14_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \FreqSig[9]~43_combout\ : std_logic;
SIGNAL \FreqSig[9]~44_combout\ : std_logic;
SIGNAL \FreqSig[9]~15_combout\ : std_logic;
SIGNAL \FreqSig[9]~16_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \FreqSig[8]~17_combout\ : std_logic;
SIGNAL \FreqSig[8]~18_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \FreqSig[8]~19_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \FreqSig[7]~20_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \FreqSig[6]~21_combout\ : std_logic;
SIGNAL \FreqSig[6]~22_combout\ : std_logic;
SIGNAL \FreqSig[6]~23_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \FreqSig[5]~25_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \FreqSig[5]~24_combout\ : std_logic;
SIGNAL \FreqSig[5]~26_combout\ : std_logic;
SIGNAL \FreqSig[5]~27_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \FreqSig[4]~28_combout\ : std_logic;
SIGNAL \FreqSig[4]~29_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \FreqSig[4]~30_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \FreqSig[3]~31_combout\ : std_logic;
SIGNAL \FreqSig[3]~32_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \FreqSig[3]~33_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \FreqSig[2]~34_combout\ : std_logic;
SIGNAL \FreqSig[2]~35_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \FreqSig[2]~36_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \FreqSig[1]~37_combout\ : std_logic;
SIGNAL \FreqSig[1]~38_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \FreqSig[1]~39_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \FreqSig[0]~40_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \FreqSig[0]~41_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \FreqSig[0]~42_combout\ : std_logic;
SIGNAL \OBJ4|reg[0]~22_combout\ : std_logic;
SIGNAL \OBJ4|reg[0]~23\ : std_logic;
SIGNAL \OBJ4|reg[1]~24_combout\ : std_logic;
SIGNAL \OBJ4|reg[1]~25\ : std_logic;
SIGNAL \OBJ4|reg[2]~26_combout\ : std_logic;
SIGNAL \OBJ4|reg[2]~27\ : std_logic;
SIGNAL \OBJ4|reg[3]~28_combout\ : std_logic;
SIGNAL \OBJ4|reg[3]~29\ : std_logic;
SIGNAL \OBJ4|reg[4]~30_combout\ : std_logic;
SIGNAL \OBJ4|reg[4]~31\ : std_logic;
SIGNAL \OBJ4|reg[5]~32_combout\ : std_logic;
SIGNAL \OBJ4|reg[5]~33\ : std_logic;
SIGNAL \OBJ4|reg[6]~34_combout\ : std_logic;
SIGNAL \OBJ4|reg[6]~35\ : std_logic;
SIGNAL \OBJ4|reg[7]~36_combout\ : std_logic;
SIGNAL \OBJ4|reg[7]~37\ : std_logic;
SIGNAL \OBJ4|reg[8]~38_combout\ : std_logic;
SIGNAL \OBJ4|reg[8]~39\ : std_logic;
SIGNAL \OBJ4|reg[9]~40_combout\ : std_logic;
SIGNAL \OBJ4|reg[9]~41\ : std_logic;
SIGNAL \OBJ4|reg[10]~42_combout\ : std_logic;
SIGNAL \OBJ4|reg[10]~43\ : std_logic;
SIGNAL \OBJ4|reg[11]~44_combout\ : std_logic;
SIGNAL \OBJ4|reg[11]~45\ : std_logic;
SIGNAL \OBJ4|reg[12]~46_combout\ : std_logic;
SIGNAL \OBJ4|reg[12]~47\ : std_logic;
SIGNAL \OBJ4|reg[13]~48_combout\ : std_logic;
SIGNAL \OBJ4|reg[13]~49\ : std_logic;
SIGNAL \OBJ4|reg[14]~50_combout\ : std_logic;
SIGNAL \OBJ4|reg[14]~51\ : std_logic;
SIGNAL \OBJ4|reg[15]~52_combout\ : std_logic;
SIGNAL \OBJ4|reg[15]~53\ : std_logic;
SIGNAL \OBJ4|reg[16]~54_combout\ : std_logic;
SIGNAL \OBJ4|reg[16]~55\ : std_logic;
SIGNAL \OBJ4|reg[17]~56_combout\ : std_logic;
SIGNAL \OBJ4|reg[17]~57\ : std_logic;
SIGNAL \OBJ4|reg[18]~58_combout\ : std_logic;
SIGNAL \OBJ4|reg[18]~59\ : std_logic;
SIGNAL \OBJ4|reg[19]~60_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[16]~16_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[17]~15_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[18]~14_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[19]~13_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[20]~12_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[21]~11_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[22]~10_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[23]~9_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[24]~8_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[25]~7_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[26]~6_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[27]~5_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[28]~4_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[29]~3_combout\ : std_logic;
SIGNAL \OBJ4|reg[19]~61\ : std_logic;
SIGNAL \OBJ4|reg[20]~62_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[30]~2_combout\ : std_logic;
SIGNAL \OBJ4|reg[20]~63\ : std_logic;
SIGNAL \OBJ4|reg[21]~64_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|RTxShiftReg[31]~1_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[16]~0_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[16]~16_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[17]~15_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[18]~14_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[19]~13_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[20]~12_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[21]~11_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[22]~10_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[23]~9_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[24]~8_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[25]~7_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[26]~6_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[27]~5_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[28]~4_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[29]~3_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[30]~2_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|LTxShiftReg[31]~1_combout\ : std_logic;
SIGNAL \assm|ASSM|AO|Dacdat~0_combout\ : std_logic;
SIGNAL \OBJ1|obj3|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ1|obj1|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ3|OBJ3|pceCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \assm|ASSM|AO|RTxShiftReg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \assm|ASSM|CG|DivChain\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \OBJ1|obj7|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ3|OBJ3|OBJ1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \OBJ4|reg\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \OBJ1|obj4|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ1|obj6|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ1|obj5|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ2|Mode1\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \OBJ2|Mode2\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \OBJ2|Mode3\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \OBJ2|Mode4\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \OBJ1|obj2|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ3|OBJ3|OBJ1|instOutSigVal\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \OBJ1|obj8|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \OBJ1|obj9|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ1|obj10|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \assm|ASSM|AO|LTxShiftReg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \assm|ASSM|CI|TX|DP|RegQ\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \assm|ASSM|CI|AddrCnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OBJ3|OBJ1|OBJ0|ALT_INV_Mux3~23_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ1|ALT_INV_Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ3|ALT_INV_Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ5|ALT_INV_Mux3~11_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ2|ALT_INV_Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ7|ALT_INV_Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ6|ALT_INV_Mux3~9_combout\ : std_logic;
SIGNAL \OBJ3|OBJ1|OBJ4|ALT_INV_Mux3~9_combout\ : std_logic;
SIGNAL \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
I2C_SDAT <= ww_I2C_SDAT;
I2C_SCLK <= ww_I2C_SCLK;
AUD_XCK <= ww_AUD_XCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
ww_AUD_ADCLRCK <= AUD_ADCLRCK;
ww_AUD_DACLRCK <= AUD_DACLRCK;
ww_AUD_BCLK <= AUD_BCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\OBJ2|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \OBJ2|Mux0~combout\);

\assm|ASSM|SYN|BclkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \assm|ASSM|SYN|BclkOut~q\);

\assm|ASSM|CG|LessThan1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \assm|ASSM|CG|LessThan1~combout\);

\assm|ASSM|SYN|AdcLrcOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \assm|ASSM|SYN|AdcLrcOut~q\);
\OBJ3|OBJ1|OBJ0|ALT_INV_Mux3~23_combout\ <= NOT \OBJ3|OBJ1|OBJ0|Mux3~23_combout\;
\OBJ3|OBJ1|OBJ1|ALT_INV_Mux3~11_combout\ <= NOT \OBJ3|OBJ1|OBJ1|Mux3~11_combout\;
\OBJ3|OBJ1|OBJ3|ALT_INV_Mux3~11_combout\ <= NOT \OBJ3|OBJ1|OBJ3|Mux3~11_combout\;
\OBJ3|OBJ1|OBJ5|ALT_INV_Mux3~11_combout\ <= NOT \OBJ3|OBJ1|OBJ5|Mux3~11_combout\;
\OBJ3|OBJ1|OBJ2|ALT_INV_Mux3~9_combout\ <= NOT \OBJ3|OBJ1|OBJ2|Mux3~9_combout\;
\OBJ3|OBJ1|OBJ7|ALT_INV_Mux3~9_combout\ <= NOT \OBJ3|OBJ1|OBJ7|Mux3~9_combout\;
\OBJ3|OBJ1|OBJ6|ALT_INV_Mux3~9_combout\ <= NOT \OBJ3|OBJ1|OBJ6|Mux3~9_combout\;
\OBJ3|OBJ1|OBJ4|ALT_INV_Mux3~9_combout\ <= NOT \OBJ3|OBJ1|OBJ4|Mux3~9_combout\;
\assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\ <= NOT \assm|ASSM|SYN|BclkOut~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y73_N23
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \assm|ASSM|CI|TX|DP|RegQ\(28),
	oe => VCC,
	devoe => ww_devoe,
	o => \I2C_SDAT~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[14]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[15]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux4~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|ALT_INV_Mux3~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux1~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ7|Mux0~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux4~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|ALT_INV_Mux3~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ6|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux4~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|ALT_INV_Mux3~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux2~11_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux1~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ5|Mux0~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux4~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|ALT_INV_Mux3~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ4|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux4~12_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|ALT_INV_Mux3~11_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux2~11_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux1~11_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ3|Mux0~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux4~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|ALT_INV_Mux3~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux2~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux1~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ2|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux4~11_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|ALT_INV_Mux3~11_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux2~11_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux1~11_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ1|Mux0~10_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux6~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux4~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|ALT_INV_Mux3~23_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux2~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux1~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ1|OBJ0|Mux0~11_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ3|pceCounter\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ3|pceCounter\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ3|pceCounter\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OBJ3|OBJ3|pceCounter\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \assm|ASSM|CI|TX|CU|Sclk~0_combout\,
	devoe => ww_devoe,
	o => \I2C_SCLK~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \assm|ASSM|CG|DivChain\(1),
	devoe => ww_devoe,
	o => \AUD_XCK~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \assm|ASSM|AO|Dacdat~0_combout\,
	devoe => ww_devoe,
	o => \AUD_DACDAT~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y26_N6
\assm|ASSM|CG|DivChain[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[0]~27_combout\ = \assm|ASSM|CG|DivChain\(0) $ (VCC)
-- \assm|ASSM|CG|DivChain[0]~28\ = CARRY(\assm|ASSM|CG|DivChain\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(0),
	datad => VCC,
	combout => \assm|ASSM|CG|DivChain[0]~27_combout\,
	cout => \assm|ASSM|CG|DivChain[0]~28\);

-- Location: LCCOMB_X3_Y26_N14
\assm|ASSM|CG|DivChain[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[4]~35_combout\ = (\assm|ASSM|CG|DivChain\(4) & (\assm|ASSM|CG|DivChain[3]~34\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(4) & (!\assm|ASSM|CG|DivChain[3]~34\ & VCC))
-- \assm|ASSM|CG|DivChain[4]~36\ = CARRY((\assm|ASSM|CG|DivChain\(4) & !\assm|ASSM|CG|DivChain[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(4),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[3]~34\,
	combout => \assm|ASSM|CG|DivChain[4]~35_combout\,
	cout => \assm|ASSM|CG|DivChain[4]~36\);

-- Location: LCCOMB_X3_Y26_N16
\assm|ASSM|CG|DivChain[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[5]~37_combout\ = (\assm|ASSM|CG|DivChain\(5) & (!\assm|ASSM|CG|DivChain[4]~36\)) # (!\assm|ASSM|CG|DivChain\(5) & ((\assm|ASSM|CG|DivChain[4]~36\) # (GND)))
-- \assm|ASSM|CG|DivChain[5]~38\ = CARRY((!\assm|ASSM|CG|DivChain[4]~36\) # (!\assm|ASSM|CG|DivChain\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(5),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[4]~36\,
	combout => \assm|ASSM|CG|DivChain[5]~37_combout\,
	cout => \assm|ASSM|CG|DivChain[5]~38\);

-- Location: FF_X3_Y26_N17
\assm|ASSM|CG|DivChain[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[5]~37_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(5));

-- Location: LCCOMB_X3_Y26_N18
\assm|ASSM|CG|DivChain[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[6]~39_combout\ = (\assm|ASSM|CG|DivChain\(6) & (\assm|ASSM|CG|DivChain[5]~38\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(6) & (!\assm|ASSM|CG|DivChain[5]~38\ & VCC))
-- \assm|ASSM|CG|DivChain[6]~40\ = CARRY((\assm|ASSM|CG|DivChain\(6) & !\assm|ASSM|CG|DivChain[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(6),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[5]~38\,
	combout => \assm|ASSM|CG|DivChain[6]~39_combout\,
	cout => \assm|ASSM|CG|DivChain[6]~40\);

-- Location: FF_X3_Y26_N19
\assm|ASSM|CG|DivChain[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[6]~39_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(6));

-- Location: LCCOMB_X3_Y26_N20
\assm|ASSM|CG|DivChain[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[7]~41_combout\ = (\assm|ASSM|CG|DivChain\(7) & (!\assm|ASSM|CG|DivChain[6]~40\)) # (!\assm|ASSM|CG|DivChain\(7) & ((\assm|ASSM|CG|DivChain[6]~40\) # (GND)))
-- \assm|ASSM|CG|DivChain[7]~42\ = CARRY((!\assm|ASSM|CG|DivChain[6]~40\) # (!\assm|ASSM|CG|DivChain\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(7),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[6]~40\,
	combout => \assm|ASSM|CG|DivChain[7]~41_combout\,
	cout => \assm|ASSM|CG|DivChain[7]~42\);

-- Location: FF_X3_Y26_N21
\assm|ASSM|CG|DivChain[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[7]~41_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(7));

-- Location: LCCOMB_X3_Y26_N22
\assm|ASSM|CG|DivChain[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[8]~43_combout\ = (\assm|ASSM|CG|DivChain\(8) & (\assm|ASSM|CG|DivChain[7]~42\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(8) & (!\assm|ASSM|CG|DivChain[7]~42\ & VCC))
-- \assm|ASSM|CG|DivChain[8]~44\ = CARRY((\assm|ASSM|CG|DivChain\(8) & !\assm|ASSM|CG|DivChain[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(8),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[7]~42\,
	combout => \assm|ASSM|CG|DivChain[8]~43_combout\,
	cout => \assm|ASSM|CG|DivChain[8]~44\);

-- Location: FF_X3_Y26_N23
\assm|ASSM|CG|DivChain[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[8]~43_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(8));

-- Location: LCCOMB_X3_Y26_N24
\assm|ASSM|CG|DivChain[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[9]~45_combout\ = (\assm|ASSM|CG|DivChain\(9) & (!\assm|ASSM|CG|DivChain[8]~44\)) # (!\assm|ASSM|CG|DivChain\(9) & ((\assm|ASSM|CG|DivChain[8]~44\) # (GND)))
-- \assm|ASSM|CG|DivChain[9]~46\ = CARRY((!\assm|ASSM|CG|DivChain[8]~44\) # (!\assm|ASSM|CG|DivChain\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(9),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[8]~44\,
	combout => \assm|ASSM|CG|DivChain[9]~45_combout\,
	cout => \assm|ASSM|CG|DivChain[9]~46\);

-- Location: FF_X3_Y26_N25
\assm|ASSM|CG|DivChain[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[9]~45_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(9));

-- Location: LCCOMB_X3_Y26_N26
\assm|ASSM|CG|DivChain[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[10]~47_combout\ = (\assm|ASSM|CG|DivChain\(10) & (\assm|ASSM|CG|DivChain[9]~46\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(10) & (!\assm|ASSM|CG|DivChain[9]~46\ & VCC))
-- \assm|ASSM|CG|DivChain[10]~48\ = CARRY((\assm|ASSM|CG|DivChain\(10) & !\assm|ASSM|CG|DivChain[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(10),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[9]~46\,
	combout => \assm|ASSM|CG|DivChain[10]~47_combout\,
	cout => \assm|ASSM|CG|DivChain[10]~48\);

-- Location: FF_X4_Y26_N27
\assm|ASSM|CG|DivChain[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \assm|ASSM|CG|DivChain[10]~47_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(10));

-- Location: LCCOMB_X3_Y26_N28
\assm|ASSM|CG|DivChain[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[11]~49_combout\ = (\assm|ASSM|CG|DivChain\(11) & (!\assm|ASSM|CG|DivChain[10]~48\)) # (!\assm|ASSM|CG|DivChain\(11) & ((\assm|ASSM|CG|DivChain[10]~48\) # (GND)))
-- \assm|ASSM|CG|DivChain[11]~50\ = CARRY((!\assm|ASSM|CG|DivChain[10]~48\) # (!\assm|ASSM|CG|DivChain\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(11),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[10]~48\,
	combout => \assm|ASSM|CG|DivChain[11]~49_combout\,
	cout => \assm|ASSM|CG|DivChain[11]~50\);

-- Location: FF_X3_Y26_N29
\assm|ASSM|CG|DivChain[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[11]~49_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(11));

-- Location: LCCOMB_X3_Y26_N30
\assm|ASSM|CG|DivChain[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[12]~51_combout\ = (\assm|ASSM|CG|DivChain\(12) & (\assm|ASSM|CG|DivChain[11]~50\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(12) & (!\assm|ASSM|CG|DivChain[11]~50\ & VCC))
-- \assm|ASSM|CG|DivChain[12]~52\ = CARRY((\assm|ASSM|CG|DivChain\(12) & !\assm|ASSM|CG|DivChain[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(12),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[11]~50\,
	combout => \assm|ASSM|CG|DivChain[12]~51_combout\,
	cout => \assm|ASSM|CG|DivChain[12]~52\);

-- Location: FF_X3_Y26_N31
\assm|ASSM|CG|DivChain[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[12]~51_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(12));

-- Location: LCCOMB_X3_Y25_N0
\assm|ASSM|CG|DivChain[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[13]~53_combout\ = (\assm|ASSM|CG|DivChain\(13) & (!\assm|ASSM|CG|DivChain[12]~52\)) # (!\assm|ASSM|CG|DivChain\(13) & ((\assm|ASSM|CG|DivChain[12]~52\) # (GND)))
-- \assm|ASSM|CG|DivChain[13]~54\ = CARRY((!\assm|ASSM|CG|DivChain[12]~52\) # (!\assm|ASSM|CG|DivChain\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(13),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[12]~52\,
	combout => \assm|ASSM|CG|DivChain[13]~53_combout\,
	cout => \assm|ASSM|CG|DivChain[13]~54\);

-- Location: FF_X3_Y25_N1
\assm|ASSM|CG|DivChain[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[13]~53_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(13));

-- Location: LCCOMB_X3_Y25_N2
\assm|ASSM|CG|DivChain[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[14]~55_combout\ = (\assm|ASSM|CG|DivChain\(14) & (\assm|ASSM|CG|DivChain[13]~54\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(14) & (!\assm|ASSM|CG|DivChain[13]~54\ & VCC))
-- \assm|ASSM|CG|DivChain[14]~56\ = CARRY((\assm|ASSM|CG|DivChain\(14) & !\assm|ASSM|CG|DivChain[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(14),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[13]~54\,
	combout => \assm|ASSM|CG|DivChain[14]~55_combout\,
	cout => \assm|ASSM|CG|DivChain[14]~56\);

-- Location: FF_X3_Y25_N3
\assm|ASSM|CG|DivChain[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[14]~55_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(14));

-- Location: LCCOMB_X3_Y25_N4
\assm|ASSM|CG|DivChain[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[15]~57_combout\ = (\assm|ASSM|CG|DivChain\(15) & (!\assm|ASSM|CG|DivChain[14]~56\)) # (!\assm|ASSM|CG|DivChain\(15) & ((\assm|ASSM|CG|DivChain[14]~56\) # (GND)))
-- \assm|ASSM|CG|DivChain[15]~58\ = CARRY((!\assm|ASSM|CG|DivChain[14]~56\) # (!\assm|ASSM|CG|DivChain\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(15),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[14]~56\,
	combout => \assm|ASSM|CG|DivChain[15]~57_combout\,
	cout => \assm|ASSM|CG|DivChain[15]~58\);

-- Location: FF_X3_Y25_N5
\assm|ASSM|CG|DivChain[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[15]~57_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(15));

-- Location: LCCOMB_X3_Y25_N6
\assm|ASSM|CG|DivChain[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[16]~59_combout\ = (\assm|ASSM|CG|DivChain\(16) & (\assm|ASSM|CG|DivChain[15]~58\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(16) & (!\assm|ASSM|CG|DivChain[15]~58\ & VCC))
-- \assm|ASSM|CG|DivChain[16]~60\ = CARRY((\assm|ASSM|CG|DivChain\(16) & !\assm|ASSM|CG|DivChain[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(16),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[15]~58\,
	combout => \assm|ASSM|CG|DivChain[16]~59_combout\,
	cout => \assm|ASSM|CG|DivChain[16]~60\);

-- Location: FF_X3_Y25_N7
\assm|ASSM|CG|DivChain[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[16]~59_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(16));

-- Location: LCCOMB_X3_Y25_N8
\assm|ASSM|CG|DivChain[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[17]~61_combout\ = (\assm|ASSM|CG|DivChain\(17) & (!\assm|ASSM|CG|DivChain[16]~60\)) # (!\assm|ASSM|CG|DivChain\(17) & ((\assm|ASSM|CG|DivChain[16]~60\) # (GND)))
-- \assm|ASSM|CG|DivChain[17]~62\ = CARRY((!\assm|ASSM|CG|DivChain[16]~60\) # (!\assm|ASSM|CG|DivChain\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(17),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[16]~60\,
	combout => \assm|ASSM|CG|DivChain[17]~61_combout\,
	cout => \assm|ASSM|CG|DivChain[17]~62\);

-- Location: FF_X3_Y25_N9
\assm|ASSM|CG|DivChain[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[17]~61_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(17));

-- Location: LCCOMB_X2_Y25_N24
\assm|ASSM|CG|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~2_combout\ = (!\assm|ASSM|CG|DivChain\(15) & (!\assm|ASSM|CG|DivChain\(17) & (!\assm|ASSM|CG|DivChain\(14) & !\assm|ASSM|CG|DivChain\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(15),
	datab => \assm|ASSM|CG|DivChain\(17),
	datac => \assm|ASSM|CG|DivChain\(14),
	datad => \assm|ASSM|CG|DivChain\(16),
	combout => \assm|ASSM|CG|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y26_N22
\assm|ASSM|CG|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~1_combout\ = (!\assm|ASSM|CG|DivChain\(10) & (!\assm|ASSM|CG|DivChain\(11) & (!\assm|ASSM|CG|DivChain\(13) & !\assm|ASSM|CG|DivChain\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(10),
	datab => \assm|ASSM|CG|DivChain\(11),
	datac => \assm|ASSM|CG|DivChain\(13),
	datad => \assm|ASSM|CG|DivChain\(12),
	combout => \assm|ASSM|CG|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y26_N6
\assm|ASSM|CG|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~0_combout\ = (!\assm|ASSM|CG|DivChain\(7) & (!\assm|ASSM|CG|DivChain\(6) & (!\assm|ASSM|CG|DivChain\(8) & !\assm|ASSM|CG|DivChain\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(7),
	datab => \assm|ASSM|CG|DivChain\(6),
	datac => \assm|ASSM|CG|DivChain\(8),
	datad => \assm|ASSM|CG|DivChain\(9),
	combout => \assm|ASSM|CG|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y25_N10
\assm|ASSM|CG|DivChain[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[18]~63_combout\ = (\assm|ASSM|CG|DivChain\(18) & (\assm|ASSM|CG|DivChain[17]~62\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(18) & (!\assm|ASSM|CG|DivChain[17]~62\ & VCC))
-- \assm|ASSM|CG|DivChain[18]~64\ = CARRY((\assm|ASSM|CG|DivChain\(18) & !\assm|ASSM|CG|DivChain[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(18),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[17]~62\,
	combout => \assm|ASSM|CG|DivChain[18]~63_combout\,
	cout => \assm|ASSM|CG|DivChain[18]~64\);

-- Location: FF_X3_Y25_N11
\assm|ASSM|CG|DivChain[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[18]~63_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(18));

-- Location: LCCOMB_X3_Y25_N12
\assm|ASSM|CG|DivChain[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[19]~65_combout\ = (\assm|ASSM|CG|DivChain\(19) & (!\assm|ASSM|CG|DivChain[18]~64\)) # (!\assm|ASSM|CG|DivChain\(19) & ((\assm|ASSM|CG|DivChain[18]~64\) # (GND)))
-- \assm|ASSM|CG|DivChain[19]~66\ = CARRY((!\assm|ASSM|CG|DivChain[18]~64\) # (!\assm|ASSM|CG|DivChain\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(19),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[18]~64\,
	combout => \assm|ASSM|CG|DivChain[19]~65_combout\,
	cout => \assm|ASSM|CG|DivChain[19]~66\);

-- Location: FF_X3_Y25_N13
\assm|ASSM|CG|DivChain[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[19]~65_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(19));

-- Location: LCCOMB_X3_Y25_N14
\assm|ASSM|CG|DivChain[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[20]~67_combout\ = (\assm|ASSM|CG|DivChain\(20) & (\assm|ASSM|CG|DivChain[19]~66\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(20) & (!\assm|ASSM|CG|DivChain[19]~66\ & VCC))
-- \assm|ASSM|CG|DivChain[20]~68\ = CARRY((\assm|ASSM|CG|DivChain\(20) & !\assm|ASSM|CG|DivChain[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(20),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[19]~66\,
	combout => \assm|ASSM|CG|DivChain[20]~67_combout\,
	cout => \assm|ASSM|CG|DivChain[20]~68\);

-- Location: FF_X3_Y25_N15
\assm|ASSM|CG|DivChain[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[20]~67_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(20));

-- Location: LCCOMB_X3_Y25_N16
\assm|ASSM|CG|DivChain[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[21]~69_combout\ = (\assm|ASSM|CG|DivChain\(21) & (!\assm|ASSM|CG|DivChain[20]~68\)) # (!\assm|ASSM|CG|DivChain\(21) & ((\assm|ASSM|CG|DivChain[20]~68\) # (GND)))
-- \assm|ASSM|CG|DivChain[21]~70\ = CARRY((!\assm|ASSM|CG|DivChain[20]~68\) # (!\assm|ASSM|CG|DivChain\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(21),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[20]~68\,
	combout => \assm|ASSM|CG|DivChain[21]~69_combout\,
	cout => \assm|ASSM|CG|DivChain[21]~70\);

-- Location: FF_X3_Y25_N17
\assm|ASSM|CG|DivChain[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[21]~69_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(21));

-- Location: LCCOMB_X3_Y25_N28
\assm|ASSM|CG|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~3_combout\ = (!\assm|ASSM|CG|DivChain\(18) & (!\assm|ASSM|CG|DivChain\(21) & (!\assm|ASSM|CG|DivChain\(20) & !\assm|ASSM|CG|DivChain\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(18),
	datab => \assm|ASSM|CG|DivChain\(21),
	datac => \assm|ASSM|CG|DivChain\(20),
	datad => \assm|ASSM|CG|DivChain\(19),
	combout => \assm|ASSM|CG|LessThan0~3_combout\);

-- Location: LCCOMB_X3_Y26_N4
\assm|ASSM|CG|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~4_combout\ = (\assm|ASSM|CG|LessThan0~2_combout\ & (\assm|ASSM|CG|LessThan0~1_combout\ & (\assm|ASSM|CG|LessThan0~0_combout\ & \assm|ASSM|CG|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|LessThan0~2_combout\,
	datab => \assm|ASSM|CG|LessThan0~1_combout\,
	datac => \assm|ASSM|CG|LessThan0~0_combout\,
	datad => \assm|ASSM|CG|LessThan0~3_combout\,
	combout => \assm|ASSM|CG|LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y25_N18
\assm|ASSM|CG|DivChain[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[22]~71_combout\ = (\assm|ASSM|CG|DivChain\(22) & (\assm|ASSM|CG|DivChain[21]~70\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(22) & (!\assm|ASSM|CG|DivChain[21]~70\ & VCC))
-- \assm|ASSM|CG|DivChain[22]~72\ = CARRY((\assm|ASSM|CG|DivChain\(22) & !\assm|ASSM|CG|DivChain[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(22),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[21]~70\,
	combout => \assm|ASSM|CG|DivChain[22]~71_combout\,
	cout => \assm|ASSM|CG|DivChain[22]~72\);

-- Location: FF_X3_Y25_N19
\assm|ASSM|CG|DivChain[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[22]~71_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(22));

-- Location: LCCOMB_X3_Y25_N20
\assm|ASSM|CG|DivChain[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[23]~73_combout\ = (\assm|ASSM|CG|DivChain\(23) & (!\assm|ASSM|CG|DivChain[22]~72\)) # (!\assm|ASSM|CG|DivChain\(23) & ((\assm|ASSM|CG|DivChain[22]~72\) # (GND)))
-- \assm|ASSM|CG|DivChain[23]~74\ = CARRY((!\assm|ASSM|CG|DivChain[22]~72\) # (!\assm|ASSM|CG|DivChain\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(23),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[22]~72\,
	combout => \assm|ASSM|CG|DivChain[23]~73_combout\,
	cout => \assm|ASSM|CG|DivChain[23]~74\);

-- Location: FF_X3_Y25_N21
\assm|ASSM|CG|DivChain[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[23]~73_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(23));

-- Location: LCCOMB_X3_Y25_N22
\assm|ASSM|CG|DivChain[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[24]~75_combout\ = (\assm|ASSM|CG|DivChain\(24) & (\assm|ASSM|CG|DivChain[23]~74\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(24) & (!\assm|ASSM|CG|DivChain[23]~74\ & VCC))
-- \assm|ASSM|CG|DivChain[24]~76\ = CARRY((\assm|ASSM|CG|DivChain\(24) & !\assm|ASSM|CG|DivChain[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(24),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[23]~74\,
	combout => \assm|ASSM|CG|DivChain[24]~75_combout\,
	cout => \assm|ASSM|CG|DivChain[24]~76\);

-- Location: FF_X3_Y25_N23
\assm|ASSM|CG|DivChain[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[24]~75_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(24));

-- Location: LCCOMB_X3_Y25_N24
\assm|ASSM|CG|DivChain[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[25]~77_combout\ = (\assm|ASSM|CG|DivChain\(25) & (!\assm|ASSM|CG|DivChain[24]~76\)) # (!\assm|ASSM|CG|DivChain\(25) & ((\assm|ASSM|CG|DivChain[24]~76\) # (GND)))
-- \assm|ASSM|CG|DivChain[25]~78\ = CARRY((!\assm|ASSM|CG|DivChain[24]~76\) # (!\assm|ASSM|CG|DivChain\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(25),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[24]~76\,
	combout => \assm|ASSM|CG|DivChain[25]~77_combout\,
	cout => \assm|ASSM|CG|DivChain[25]~78\);

-- Location: FF_X3_Y25_N25
\assm|ASSM|CG|DivChain[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[25]~77_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(25));

-- Location: LCCOMB_X3_Y25_N26
\assm|ASSM|CG|DivChain[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[26]~79_combout\ = \assm|ASSM|CG|DivChain\(26) $ (!\assm|ASSM|CG|DivChain[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(26),
	cin => \assm|ASSM|CG|DivChain[25]~78\,
	combout => \assm|ASSM|CG|DivChain[26]~79_combout\);

-- Location: FF_X3_Y25_N27
\assm|ASSM|CG|DivChain[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[26]~79_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(26));

-- Location: LCCOMB_X3_Y25_N30
\assm|ASSM|CG|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~5_combout\ = (!\assm|ASSM|CG|DivChain\(24) & (!\assm|ASSM|CG|DivChain\(25) & (!\assm|ASSM|CG|DivChain\(22) & !\assm|ASSM|CG|DivChain\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(24),
	datab => \assm|ASSM|CG|DivChain\(25),
	datac => \assm|ASSM|CG|DivChain\(22),
	datad => \assm|ASSM|CG|DivChain\(23),
	combout => \assm|ASSM|CG|LessThan0~5_combout\);

-- Location: LCCOMB_X3_Y26_N0
\assm|ASSM|CG|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~6_combout\ = (\assm|ASSM|CG|LessThan0~4_combout\ & (!\assm|ASSM|CG|DivChain\(26) & \assm|ASSM|CG|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|LessThan0~4_combout\,
	datac => \assm|ASSM|CG|DivChain\(26),
	datad => \assm|ASSM|CG|LessThan0~5_combout\,
	combout => \assm|ASSM|CG|LessThan0~6_combout\);

-- Location: LCCOMB_X2_Y26_N18
\assm|ASSM|CG|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~7_combout\ = (((!\assm|ASSM|CG|DivChain\(0)) # (!\assm|ASSM|CG|DivChain\(2))) # (!\assm|ASSM|CG|DivChain\(3))) # (!\assm|ASSM|CG|DivChain\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(1),
	datab => \assm|ASSM|CG|DivChain\(3),
	datac => \assm|ASSM|CG|DivChain\(2),
	datad => \assm|ASSM|CG|DivChain\(0),
	combout => \assm|ASSM|CG|LessThan0~7_combout\);

-- Location: LCCOMB_X3_Y26_N2
\assm|ASSM|CG|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan0~8_combout\ = ((\assm|ASSM|CG|DivChain\(5) & (\assm|ASSM|CG|DivChain\(4) & !\assm|ASSM|CG|LessThan0~7_combout\))) # (!\assm|ASSM|CG|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|LessThan0~6_combout\,
	datab => \assm|ASSM|CG|DivChain\(5),
	datac => \assm|ASSM|CG|DivChain\(4),
	datad => \assm|ASSM|CG|LessThan0~7_combout\,
	combout => \assm|ASSM|CG|LessThan0~8_combout\);

-- Location: FF_X3_Y26_N7
\assm|ASSM|CG|DivChain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|CG|DivChain[0]~27_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(0));

-- Location: LCCOMB_X3_Y26_N8
\assm|ASSM|CG|DivChain[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[1]~29_combout\ = (\assm|ASSM|CG|DivChain\(1) & (!\assm|ASSM|CG|DivChain[0]~28\)) # (!\assm|ASSM|CG|DivChain\(1) & ((\assm|ASSM|CG|DivChain[0]~28\) # (GND)))
-- \assm|ASSM|CG|DivChain[1]~30\ = CARRY((!\assm|ASSM|CG|DivChain[0]~28\) # (!\assm|ASSM|CG|DivChain\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(1),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[0]~28\,
	combout => \assm|ASSM|CG|DivChain[1]~29_combout\,
	cout => \assm|ASSM|CG|DivChain[1]~30\);

-- Location: FF_X3_Y26_N9
\assm|ASSM|CG|DivChain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|CG|DivChain[1]~29_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(1));

-- Location: LCCOMB_X3_Y26_N10
\assm|ASSM|CG|DivChain[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[2]~31_combout\ = (\assm|ASSM|CG|DivChain\(2) & (\assm|ASSM|CG|DivChain[1]~30\ $ (GND))) # (!\assm|ASSM|CG|DivChain\(2) & (!\assm|ASSM|CG|DivChain[1]~30\ & VCC))
-- \assm|ASSM|CG|DivChain[2]~32\ = CARRY((\assm|ASSM|CG|DivChain\(2) & !\assm|ASSM|CG|DivChain[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(2),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[1]~30\,
	combout => \assm|ASSM|CG|DivChain[2]~31_combout\,
	cout => \assm|ASSM|CG|DivChain[2]~32\);

-- Location: FF_X3_Y26_N11
\assm|ASSM|CG|DivChain[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|CG|DivChain[2]~31_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(2));

-- Location: LCCOMB_X3_Y26_N12
\assm|ASSM|CG|DivChain[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|DivChain[3]~33_combout\ = (\assm|ASSM|CG|DivChain\(3) & (!\assm|ASSM|CG|DivChain[2]~32\)) # (!\assm|ASSM|CG|DivChain\(3) & ((\assm|ASSM|CG|DivChain[2]~32\) # (GND)))
-- \assm|ASSM|CG|DivChain[3]~34\ = CARRY((!\assm|ASSM|CG|DivChain[2]~32\) # (!\assm|ASSM|CG|DivChain\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CG|DivChain\(3),
	datad => VCC,
	cin => \assm|ASSM|CG|DivChain[2]~32\,
	combout => \assm|ASSM|CG|DivChain[3]~33_combout\,
	cout => \assm|ASSM|CG|DivChain[3]~34\);

-- Location: FF_X3_Y26_N13
\assm|ASSM|CG|DivChain[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|CG|DivChain[3]~33_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(3));

-- Location: FF_X3_Y26_N15
\assm|ASSM|CG|DivChain[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \assm|ASSM|CG|DivChain[4]~35_combout\,
	sclr => \assm|ASSM|CG|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CG|DivChain\(4));

-- Location: LCCOMB_X2_Y26_N20
\assm|ASSM|CG|LessThan1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CG|LessThan1~combout\ = LCELL((!\assm|ASSM|CG|DivChain\(4) & (\assm|ASSM|CG|LessThan0~6_combout\ & !\assm|ASSM|CG|DivChain\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CG|DivChain\(4),
	datac => \assm|ASSM|CG|LessThan0~6_combout\,
	datad => \assm|ASSM|CG|DivChain\(5),
	combout => \assm|ASSM|CG|LessThan1~combout\);

-- Location: CLKCTRL_G2
\assm|ASSM|CG|LessThan1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \assm|ASSM|CG|LessThan1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y69_N28
\assm|ASSM|CI|TX|CU|MainState.state_bit_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\ = (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & (\assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\ & \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\);

-- Location: LCCOMB_X20_Y69_N22
\assm|ASSM|CI|TX|CU|MainState.state_bit_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_2~2_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\) # ((\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & 
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\)))) # (!\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & (\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & (\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~2_combout\);

-- Location: LCCOMB_X20_Y68_N0
\assm|ASSM|CI|CU:State.state_bit_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_4~0_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & (\assm|ASSM|CI|CU:State.state_bit_2~q\ & (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & \assm|ASSM|CI|CU:State.state_bit_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_4~0_combout\);

-- Location: LCCOMB_X20_Y68_N8
\assm|ASSM|CI|CU:State.state_bit_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_4~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_4~0_combout\) # ((\assm|ASSM|CI|CU:State.state_bit_4~q\ & ((!\assm|ASSM|CI|CU:State.state_bit_0~q\) # (!\assm|ASSM|CI|CU:State.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_4~0_combout\,
	datac => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_4~1_combout\);

-- Location: FF_X20_Y68_N9
\assm|ASSM|CI|CU:State.state_bit_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|CU:State.state_bit_4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|CU:State.state_bit_4~q\);

-- Location: LCCOMB_X20_Y68_N30
\assm|ASSM|CI|CU:State.state_bit_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_2~0_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & ((\assm|ASSM|CI|CU:State.state_bit_1~q\) # (\assm|ASSM|CI|CU:State.state_bit_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_2~0_combout\);

-- Location: LCCOMB_X20_Y68_N20
\assm|ASSM|CI|CU:State.state_bit_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_2~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_2~q\ & (((!\assm|ASSM|CI|CU:State.state_bit_2~0_combout\)))) # (!\assm|ASSM|CI|CU:State.state_bit_2~q\ & (\assm|ASSM|CI|CU:State.state_bit_2~0_combout\ & 
-- ((\assm|ASSM|CI|CU:State.state_bit_3~q\) # (!\assm|ASSM|CI|CU:State.state_bit_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_2~0_combout\,
	combout => \assm|ASSM|CI|CU:State.state_bit_2~1_combout\);

-- Location: FF_X20_Y68_N21
\assm|ASSM|CI|CU:State.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|CU:State.state_bit_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|CU:State.state_bit_2~q\);

-- Location: LCCOMB_X20_Y68_N18
\assm|ASSM|CI|CU:State.state_bit_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_3~0_combout\ = (\assm|ASSM|CI|CU:State.state_bit_3~q\ & ((\assm|ASSM|CI|CU:State.state_bit_1~q\) # ((!\assm|ASSM|CI|CU:State.state_bit_0~q\)))) # (!\assm|ASSM|CI|CU:State.state_bit_3~q\ & 
-- (((\assm|ASSM|CI|CU:State.state_bit_2~q\ & \assm|ASSM|CI|CU:State.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_3~0_combout\);

-- Location: FF_X20_Y68_N19
\assm|ASSM|CI|CU:State.state_bit_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|CU:State.state_bit_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|CU:State.state_bit_3~q\);

-- Location: LCCOMB_X20_Y68_N16
\assm|ASSM|CI|CU:State.state_bit_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_1~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_1~q\ & ((\assm|ASSM|CI|CU:State.state_bit_3~q\ & ((\assm|ASSM|CI|CU:State.state_bit_2~q\))) # (!\assm|ASSM|CI|CU:State.state_bit_3~q\ & 
-- (\assm|ASSM|CI|CU:State.state_bit_4~q\ & !\assm|ASSM|CI|CU:State.state_bit_2~q\)))) # (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & (((\assm|ASSM|CI|CU:State.state_bit_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_1~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X21_Y68_N13
\assm|k0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|k0~q\);

-- Location: LCCOMB_X20_Y68_N4
\assm|ASSM|CI|CU:State.state_bit_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_1~0_combout\ = (!\assm|ASSM|CI|CU:State.state_bit_3~q\ & (!\assm|ASSM|CI|CU:State.state_bit_4~q\ & (!\assm|k0~q\ & !\assm|ASSM|CI|CU:State.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datac => \assm|k0~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\);

-- Location: LCCOMB_X20_Y68_N6
\assm|ASSM|CI|CU:State.state_bit_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_1~2_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & (\assm|ASSM|CI|CU:State.state_bit_1~1_combout\ $ ((\assm|ASSM|CI|CU:State.state_bit_1~q\)))) # (!\assm|ASSM|CI|CU:State.state_bit_0~q\ & 
-- (((\assm|ASSM|CI|CU:State.state_bit_1~q\) # (\assm|ASSM|CI|CU:State.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_1~1_combout\,
	datac => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|CU:State.state_bit_1~2_combout\);

-- Location: FF_X20_Y68_N7
\assm|ASSM|CI|CU:State.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|CU:State.state_bit_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|CU:State.state_bit_1~q\);

-- Location: LCCOMB_X20_Y68_N22
\assm|ASSM|CI|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|WideNor0~0_combout\ = (\assm|ASSM|CI|CU:State.state_bit_1~q\) # ((\assm|ASSM|CI|CU:State.state_bit_3~q\) # ((\assm|ASSM|CI|CU:State.state_bit_4~q\) # (\assm|ASSM|CI|CU:State.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	combout => \assm|ASSM|CI|WideNor0~0_combout\);

-- Location: LCCOMB_X20_Y68_N10
\assm|ASSM|CI|CU:State.state_bit_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_0~0_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & ((\assm|ASSM|CI|CU:State.state_bit_1~q\ & (\assm|ASSM|CI|CU:State.state_bit_4~q\)) # (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & 
-- ((\assm|ASSM|CI|CU:State.state_bit_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\,
	datad => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	combout => \assm|ASSM|CI|CU:State.state_bit_0~0_combout\);

-- Location: LCCOMB_X23_Y69_N8
\assm|ASSM|CI|TX|CU|MainState.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\ = (!\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & (!\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & !\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\);

-- Location: LCCOMB_X20_Y68_N28
\assm|ASSM|CI|CU:State.state_bit_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_0~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~0_combout\) # ((\assm|ASSM|CI|WideNor0~0_combout\ & (!\assm|ASSM|CI|CU:State.state_bit_0~q\ & \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|WideNor0~0_combout\,
	datab => \assm|ASSM|CI|CU:State.state_bit_0~0_combout\,
	datac => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	combout => \assm|ASSM|CI|CU:State.state_bit_0~1_combout\);

-- Location: FF_X20_Y68_N29
\assm|ASSM|CI|CU:State.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|CU:State.state_bit_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|CU:State.state_bit_0~q\);

-- Location: LCCOMB_X21_Y69_N12
\assm|ASSM|CI|TX|CU|MainState.state_bit_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_2~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & (\assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\ & \assm|ASSM|CI|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\,
	datad => \assm|ASSM|CI|WideNor0~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~1_combout\);

-- Location: LCCOMB_X23_Y69_N28
\assm|ASSM|CI|TX|CU|MainState.state_bit_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_2~3_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_2~1_combout\) # ((!\assm|ASSM|CI|TX|CU|BadAck~combout\ & \assm|ASSM|CI|TX|CU|MainState.state_bit_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~2_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~3_combout\);

-- Location: FF_X23_Y69_N29
\assm|ASSM|CI|TX|CU|MainState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\);

-- Location: LCCOMB_X21_Y69_N30
\assm|ASSM|CI|TX|CU|MainState.Mwait~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\ & (!\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & !\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\);

-- Location: LCCOMB_X21_Y69_N20
\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\) # ((!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\) # 
-- (\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.Mwait~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0_combout\);

-- Location: LCCOMB_X23_Y69_N20
\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~1_combout\ = (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0_combout\ & (((!\assm|ASSM|CI|TX|CU|MainState.start~0_combout\ & !\assm|ASSM|CI|TX|CU|BadAck~combout\)) # 
-- (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datac => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~1_combout\);

-- Location: FF_X23_Y69_N21
\assm|ASSM|CI|TX|CU|CycleState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\);

-- Location: LCCOMB_X23_Y69_N22
\assm|ASSM|CI|TX|CU|MainState.Packet0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.Packet0~0_combout\ = (!\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\ & (\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & !\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.Packet0~0_combout\);

-- Location: LCCOMB_X23_Y69_N0
\assm|ASSM|CI|TX|CU|MainState.state_bit_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_1~1_combout\ = (\assm|ASSM|CI|TX|CU|MainState.Packet0~0_combout\) # ((\assm|ASSM|CI|TX|CU|MainState.start~0_combout\ & (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ $ 
-- (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.Packet0~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~1_combout\);

-- Location: LCCOMB_X20_Y69_N20
\assm|ASSM|CI|TX|CU|MainState.state_bit_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_1~0_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\) # ((\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\ & 
-- !\assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~0_combout\);

-- Location: LCCOMB_X23_Y69_N10
\assm|ASSM|CI|TX|CU|MainState.state_bit_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_1~2_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_1~1_combout\) # (\assm|ASSM|CI|TX|CU|MainState.state_bit_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~1_combout\,
	datac => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~2_combout\);

-- Location: FF_X23_Y69_N11
\assm|ASSM|CI|TX|CU|MainState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\);

-- Location: LCCOMB_X23_Y69_N24
\assm|ASSM|CI|TX|CU|MainState.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.start~0_combout\ = (!\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & (\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & !\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\);

-- Location: LCCOMB_X23_Y69_N30
\assm|ASSM|CI|TX|CU|MainState.state_bit_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_0~2_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & (\assm|ASSM|CI|TX|CU|MainState.start~0_combout\ & (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\))) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & 
-- ((\assm|ASSM|CI|TX|CU|MainState.stop~0_combout\) # ((\assm|ASSM|CI|TX|CU|MainState.start~0_combout\ & !\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~2_combout\);

-- Location: LCCOMB_X21_Y69_N2
\assm|ASSM|CI|TX|CU|MainState.state_bit_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_0~3_combout\ = (\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\ & (\assm|ASSM|CI|CU:State.state_bit_0~q\ & \assm|ASSM|CI|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	datab => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datad => \assm|ASSM|CI|WideNor0~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~3_combout\);

-- Location: LCCOMB_X20_Y69_N10
\assm|ASSM|CI|TX|CU|MainState.state_bit_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_0~4_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\) # 
-- (!\assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\))) # (!\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~4_combout\);

-- Location: LCCOMB_X23_Y69_N14
\assm|ASSM|CI|TX|CU|MainState.state_bit_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.state_bit_0~5_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & ((\assm|ASSM|CI|TX|CU|MainState.state_bit_0~2_combout\) # ((\assm|ASSM|CI|TX|CU|MainState.state_bit_0~3_combout\) # 
-- (\assm|ASSM|CI|TX|CU|MainState.state_bit_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~2_combout\,
	datab => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~3_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~4_combout\,
	combout => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~5_combout\);

-- Location: FF_X23_Y69_N15
\assm|ASSM|CI|TX|CU|MainState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\);

-- Location: LCCOMB_X23_Y69_N4
\assm|ASSM|CI|TX|CU|MainState.stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\ = (\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\ & \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	combout => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\);

-- Location: LCCOMB_X23_Y69_N12
\assm|ASSM|CI|TX|CU|EOC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|EOC~0_combout\ = (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|MainState.start~0_combout\))) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & 
-- (\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|EOC~0_combout\);

-- Location: LCCOMB_X20_Y69_N2
\assm|ASSM|CI|TX|CU|EOC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|EOC~1_combout\ = (\assm|ASSM|CI|TX|CU|EOC~0_combout\) # ((\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|MainState.stop~0_combout\) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\,
	datac => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|EOC~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|EOC~1_combout\);

-- Location: LCCOMB_X20_Y69_N6
\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ & (\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ & (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & \assm|ASSM|CI|TX|CU|EOC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datac => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datad => \assm|ASSM|CI|TX|CU|EOC~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\);

-- Location: LCCOMB_X20_Y69_N16
\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\ = (\assm|ASSM|CI|TX|CU|BadAck~combout\ & (((\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\)))) # (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & (\assm|ASSM|CI|TX|CU|EOC~1_combout\ & 
-- (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ $ (!\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datac => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datad => \assm|ASSM|CI|TX|CU|EOC~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\);

-- Location: LCCOMB_X20_Y69_N4
\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~1_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ $ (\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\)))) # 
-- (!\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\) # ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ & !\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~1_combout\);

-- Location: FF_X20_Y69_N5
\assm|ASSM|CI|TX|CU|PacketState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\);

-- Location: LCCOMB_X21_Y69_N4
\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ & (\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ & \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0_combout\);

-- Location: LCCOMB_X20_Y69_N24
\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~1_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & ((\assm|ASSM|CI|TX|CU|EOC~1_combout\ & (\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0_combout\)) # (!\assm|ASSM|CI|TX|CU|EOC~1_combout\ & 
-- ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\,
	datad => \assm|ASSM|CI|TX|CU|EOC~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~1_combout\);

-- Location: FF_X20_Y69_N25
\assm|ASSM|CI|TX|CU|PacketState.state_bit_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\);

-- Location: LCCOMB_X21_Y69_N26
\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\) # ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ $ 
-- (\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0_combout\);

-- Location: LCCOMB_X20_Y69_N8
\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & ((\assm|ASSM|CI|TX|CU|EOC~1_combout\ & ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0_combout\))) # (!\assm|ASSM|CI|TX|CU|EOC~1_combout\ & 
-- (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~0_combout\,
	datac => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datad => \assm|ASSM|CI|TX|CU|EOC~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1_combout\);

-- Location: LCCOMB_X20_Y69_N12
\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~3_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1_combout\) # ((!\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~1_combout\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~3_combout\);

-- Location: FF_X20_Y69_N13
\assm|ASSM|CI|TX|CU|PacketState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\);

-- Location: LCCOMB_X23_Y69_N2
\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\) # ((\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & ((!\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\) # 
-- (!\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0_combout\);

-- Location: LCCOMB_X20_Y69_N0
\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\) # ((!\assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\ & (!\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & 
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_3~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1_combout\);

-- Location: LCCOMB_X20_Y69_N18
\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & ((\assm|ASSM|CI|TX|CU|EOC~1_combout\ & ((\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1_combout\))) # (!\assm|ASSM|CI|TX|CU|EOC~1_combout\ & 
-- (\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~1_combout\,
	datad => \assm|ASSM|CI|TX|CU|EOC~1_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2_combout\);

-- Location: LCCOMB_X20_Y69_N30
\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~3_combout\ = (\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2_combout\) # ((!\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~2_combout\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~2_combout\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~3_combout\);

-- Location: FF_X20_Y69_N31
\assm|ASSM|CI|TX|CU|PacketState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\);

-- Location: LCCOMB_X20_Y69_N26
\assm|ASSM|CI|TX|CU|PacketState.Ack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\ = (!\assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\ & (!\assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\ & \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.state_bit_1~q\,
	datac => \assm|ASSM|CI|TX|CU|PacketState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|PacketState.state_bit_0~q\,
	combout => \assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\);

-- Location: IOIBUF_X18_Y73_N22
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: LCCOMB_X20_Y69_N14
\assm|ASSM|CI|TX|CU|BadAck\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|BadAck~combout\ = LCELL((\assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\ & (\I2C_SDAT~input_o\ & (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & !\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|PacketState.Ack~0_combout\,
	datab => \I2C_SDAT~input_o\,
	datac => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|BadAck~combout\);

-- Location: LCCOMB_X23_Y69_N18
\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\ & ((\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & ((!\assm|ASSM|CI|TX|CU|MainState.stop~0_combout\))) # 
-- (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & (!\assm|ASSM|CI|TX|CU|MainState.start~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0_combout\);

-- Location: LCCOMB_X23_Y69_N6
\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~1_combout\ = (!\assm|ASSM|CI|TX|CU|BadAck~combout\ & \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|BadAck~combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~1_combout\);

-- Location: FF_X23_Y69_N7
\assm|ASSM|CI|TX|CU|CycleState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\);

-- Location: LCCOMB_X23_Y69_N16
\assm|ASSM|CI|TX|DP|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux26~0_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\)) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\ & (((!\assm|ASSM|CI|TX|CU|MainState.stop~0_combout\ & 
-- !\assm|ASSM|CI|TX|CU|MainState.start~0_combout\)) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux26~0_combout\);

-- Location: LCCOMB_X24_Y69_N24
\assm|ASSM|CI|TX|CU|Op~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|Op~0_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\) # ((\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\) # (!\assm|ASSM|CI|TX|CU|MainState.start~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	combout => \assm|ASSM|CI|TX|CU|Op~0_combout\);

-- Location: LCCOMB_X24_Y69_N6
\assm|ASSM|CI|TX|DP|RegQ[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\ = ((\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\) # (!\assm|ASSM|CI|TX|CU|Op~0_combout\)) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\);

-- Location: LCCOMB_X20_Y68_N26
\assm|ASSM|CI|NextCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|NextCnt[0]~0_combout\ = ((!\assm|ASSM|CI|CU:State.state_bit_0~q\ & (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & \assm|ASSM|CI|CU:State.state_bit_1~0_combout\))) # (!\assm|ASSM|CI|AddrCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datab => \assm|ASSM|CI|AddrCnt\(0),
	datac => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|NextCnt[0]~0_combout\);

-- Location: LCCOMB_X20_Y68_N24
\assm|ASSM|CI|AddrCnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|AddrCnt[2]~0_combout\ = (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & (!\assm|ASSM|CI|CU:State.state_bit_3~q\ & (!\assm|ASSM|CI|CU:State.state_bit_4~q\ & !\assm|ASSM|CI|CU:State.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datab => \assm|ASSM|CI|CU:State.state_bit_3~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_4~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_2~q\,
	combout => \assm|ASSM|CI|AddrCnt[2]~0_combout\);

-- Location: LCCOMB_X21_Y68_N30
\assm|ASSM|CI|AddrCnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|AddrCnt[2]~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_0~q\ & (\assm|ASSM|CI|WideNor0~0_combout\)) # (!\assm|ASSM|CI|CU:State.state_bit_0~q\ & (((!\assm|k0~q\ & \assm|ASSM|CI|AddrCnt[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datab => \assm|ASSM|CI|WideNor0~0_combout\,
	datac => \assm|k0~q\,
	datad => \assm|ASSM|CI|AddrCnt[2]~0_combout\,
	combout => \assm|ASSM|CI|AddrCnt[2]~1_combout\);

-- Location: FF_X21_Y68_N27
\assm|ASSM|CI|AddrCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	asdata => \assm|ASSM|CI|NextCnt[0]~0_combout\,
	sload => VCC,
	ena => \assm|ASSM|CI|AddrCnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|AddrCnt\(0));

-- Location: LCCOMB_X21_Y68_N8
\assm|ASSM|CI|CU:State.state_bit_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|CU:State.state_bit_1~3_combout\ = (!\assm|ASSM|CI|CU:State.state_bit_0~q\ & (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & \assm|ASSM|CI|CU:State.state_bit_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datac => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|CU:State.state_bit_1~3_combout\);

-- Location: LCCOMB_X21_Y68_N28
\assm|ASSM|CI|NextCnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|NextCnt[1]~1_combout\ = (\assm|ASSM|CI|CU:State.state_bit_1~3_combout\) # (\assm|ASSM|CI|AddrCnt\(0) $ (\assm|ASSM|CI|AddrCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(0),
	datac => \assm|ASSM|CI|AddrCnt\(1),
	datad => \assm|ASSM|CI|CU:State.state_bit_1~3_combout\,
	combout => \assm|ASSM|CI|NextCnt[1]~1_combout\);

-- Location: FF_X21_Y68_N29
\assm|ASSM|CI|AddrCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|NextCnt[1]~1_combout\,
	ena => \assm|ASSM|CI|AddrCnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|AddrCnt\(1));

-- Location: LCCOMB_X21_Y68_N14
\assm|ASSM|CI|NextCnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|NextCnt[2]~2_combout\ = (\assm|ASSM|CI|CU:State.state_bit_1~3_combout\) # (\assm|ASSM|CI|AddrCnt\(2) $ (((\assm|ASSM|CI|AddrCnt\(0) & \assm|ASSM|CI|AddrCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(0),
	datab => \assm|ASSM|CI|AddrCnt\(1),
	datac => \assm|ASSM|CI|AddrCnt\(2),
	datad => \assm|ASSM|CI|CU:State.state_bit_1~3_combout\,
	combout => \assm|ASSM|CI|NextCnt[2]~2_combout\);

-- Location: FF_X21_Y68_N15
\assm|ASSM|CI|AddrCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|NextCnt[2]~2_combout\,
	ena => \assm|ASSM|CI|AddrCnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|AddrCnt\(2));

-- Location: LCCOMB_X21_Y68_N26
\assm|ASSM|CI|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Add0~0_combout\ = \assm|ASSM|CI|AddrCnt\(3) $ (((\assm|ASSM|CI|AddrCnt\(2) & (\assm|ASSM|CI|AddrCnt\(0) & \assm|ASSM|CI|AddrCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Add0~0_combout\);

-- Location: LCCOMB_X21_Y68_N24
\assm|ASSM|CI|NextCnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|NextCnt[3]~3_combout\ = (\assm|ASSM|CI|Add0~0_combout\) # ((!\assm|ASSM|CI|CU:State.state_bit_0~q\ & (!\assm|ASSM|CI|CU:State.state_bit_1~q\ & \assm|ASSM|CI|CU:State.state_bit_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|CU:State.state_bit_0~q\,
	datab => \assm|ASSM|CI|Add0~0_combout\,
	datac => \assm|ASSM|CI|CU:State.state_bit_1~q\,
	datad => \assm|ASSM|CI|CU:State.state_bit_1~0_combout\,
	combout => \assm|ASSM|CI|NextCnt[3]~3_combout\);

-- Location: FF_X21_Y68_N25
\assm|ASSM|CI|AddrCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|NextCnt[3]~3_combout\,
	ena => \assm|ASSM|CI|AddrCnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|AddrCnt\(3));

-- Location: LCCOMB_X21_Y68_N2
\assm|ASSM|CI|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux16~0_combout\ = (\assm|ASSM|CI|AddrCnt\(0) & ((\assm|ASSM|CI|AddrCnt\(3)) # ((!\assm|ASSM|CI|AddrCnt\(1)) # (!\assm|ASSM|CI|AddrCnt\(2))))) # (!\assm|ASSM|CI|AddrCnt\(0) & (((\assm|ASSM|CI|AddrCnt\(2)) # (\assm|ASSM|CI|AddrCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(0),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(2),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Mux16~0_combout\);

-- Location: LCCOMB_X21_Y68_N0
\assm|ASSM|CI|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux17~0_combout\ = (\assm|ASSM|CI|AddrCnt\(3)) # ((\assm|ASSM|CI|AddrCnt\(1) & ((\assm|ASSM|CI|AddrCnt\(0)) # (!\assm|ASSM|CI|AddrCnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Mux17~0_combout\);

-- Location: LCCOMB_X21_Y68_N4
\assm|ASSM|CI|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux19~0_combout\ = (\assm|ASSM|CI|AddrCnt\(2) & ((\assm|ASSM|CI|AddrCnt\(3)) # (\assm|ASSM|CI|AddrCnt\(1) $ (!\assm|ASSM|CI|AddrCnt\(0))))) # (!\assm|ASSM|CI|AddrCnt\(2) & ((\assm|ASSM|CI|AddrCnt\(1)) # ((\assm|ASSM|CI|AddrCnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(1),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(3),
	combout => \assm|ASSM|CI|Mux19~0_combout\);

-- Location: LCCOMB_X21_Y68_N18
\assm|ASSM|CI|TX|DP|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux19~0_combout\ = (\assm|ASSM|CI|AddrCnt\(2) & (!\assm|ASSM|CI|AddrCnt\(3) & (!\assm|ASSM|CI|AddrCnt\(0) & !\assm|ASSM|CI|AddrCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|TX|DP|Mux19~0_combout\);

-- Location: LCCOMB_X21_Y68_N20
\assm|ASSM|CI|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux24~0_combout\ = (!\assm|ASSM|CI|AddrCnt\(3) & ((\assm|ASSM|CI|AddrCnt\(2) & (!\assm|ASSM|CI|AddrCnt\(0) & !\assm|ASSM|CI|AddrCnt\(1))) # (!\assm|ASSM|CI|AddrCnt\(2) & ((\assm|ASSM|CI|AddrCnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Mux24~0_combout\);

-- Location: LCCOMB_X23_Y69_N26
\assm|ASSM|CI|TX|DP|RegQ[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|RegQ[0]~1_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\) # ((!\assm|ASSM|CI|TX|CU|MainState.start~0_combout\ & ((!\assm|ASSM|CI|TX|CU|MainState.stop~0_combout\) # (!\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.start~0_combout\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.stop~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|CycleState.state_bit_1~q\,
	combout => \assm|ASSM|CI|TX|DP|RegQ[0]~1_combout\);

-- Location: LCCOMB_X25_Y69_N26
\assm|ASSM|CI|TX|DP|RegQ[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|RegQ[0]~2_combout\ = ((\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\) # ((\assm|ASSM|CI|TX|DP|RegQ[0]~1_combout\ & \assm|ASSM|CI|TX|DP|RegQ\(0)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ[0]~1_combout\,
	datab => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(0),
	datad => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|RegQ[0]~2_combout\);

-- Location: FF_X25_Y69_N27
\assm|ASSM|CI|TX|DP|RegQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|RegQ[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(0));

-- Location: LCCOMB_X24_Y69_N30
\assm|ASSM|CI|TX|DP|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux27~0_combout\ = (\assm|ASSM|CI|TX|DP|RegQ\(0)) # (\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(0),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux27~0_combout\);

-- Location: FF_X24_Y69_N31
\assm|ASSM|CI|TX|DP|RegQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux27~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(1));

-- Location: LCCOMB_X21_Y68_N6
\assm|ASSM|CI|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux28~0_combout\ = (\assm|ASSM|CI|AddrCnt\(3) & (!\assm|ASSM|CI|AddrCnt\(2) & (!\assm|ASSM|CI|AddrCnt\(0) & !\assm|ASSM|CI|AddrCnt\(1)))) # (!\assm|ASSM|CI|AddrCnt\(3) & (\assm|ASSM|CI|AddrCnt\(1) & ((!\assm|ASSM|CI|AddrCnt\(0)) # 
-- (!\assm|ASSM|CI|AddrCnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Mux28~0_combout\);

-- Location: LCCOMB_X24_Y69_N8
\assm|ASSM|CI|TX|DP|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux26~1_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|Mux28~0_combout\) # (\assm|ASSM|CI|TX|CU|Op~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(1),
	datab => \assm|ASSM|CI|Mux28~0_combout\,
	datac => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux26~1_combout\);

-- Location: FF_X24_Y69_N9
\assm|ASSM|CI|TX|DP|RegQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux26~1_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(2));

-- Location: LCCOMB_X24_Y69_N26
\assm|ASSM|CI|TX|DP|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux25~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|Mux24~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|Mux24~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(2),
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux25~0_combout\);

-- Location: FF_X24_Y69_N27
\assm|ASSM|CI|TX|DP|RegQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux25~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(3));

-- Location: LCCOMB_X21_Y68_N12
\assm|ASSM|CI|TX|DP|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux17~0_combout\ = (!\assm|ASSM|CI|AddrCnt\(2) & (!\assm|ASSM|CI|AddrCnt\(3) & \assm|ASSM|CI|AddrCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|TX|DP|Mux17~0_combout\);

-- Location: LCCOMB_X24_Y69_N16
\assm|ASSM|CI|TX|DP|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux24~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|TX|DP|Mux17~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(3),
	datac => \assm|ASSM|CI|TX|DP|Mux17~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux24~0_combout\);

-- Location: FF_X24_Y69_N17
\assm|ASSM|CI|TX|DP|RegQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux24~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(4));

-- Location: LCCOMB_X24_Y69_N22
\assm|ASSM|CI|TX|DP|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux23~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|TX|DP|Mux17~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(4),
	datac => \assm|ASSM|CI|TX|DP|Mux17~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux23~0_combout\);

-- Location: FF_X24_Y69_N23
\assm|ASSM|CI|TX|DP|RegQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux23~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(5));

-- Location: LCCOMB_X24_Y69_N12
\assm|ASSM|CI|TX|DP|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux22~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|Mux24~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|Mux24~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(5),
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux22~0_combout\);

-- Location: FF_X24_Y69_N13
\assm|ASSM|CI|TX|DP|RegQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux22~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(6));

-- Location: LCCOMB_X21_Y68_N22
\assm|ASSM|CI|TX|DP|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux21~0_combout\ = (!\assm|ASSM|CI|AddrCnt\(2) & (!\assm|ASSM|CI|AddrCnt\(3) & (\assm|ASSM|CI|AddrCnt\(0) & \assm|ASSM|CI|AddrCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|TX|DP|Mux21~0_combout\);

-- Location: LCCOMB_X24_Y69_N10
\assm|ASSM|CI|TX|DP|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux21~1_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|Mux21~0_combout\) # (\assm|ASSM|CI|TX|CU|Op~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(6),
	datab => \assm|ASSM|CI|TX|DP|Mux21~0_combout\,
	datac => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux21~1_combout\);

-- Location: FF_X24_Y69_N11
\assm|ASSM|CI|TX|DP|RegQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux21~1_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(7));

-- Location: LCCOMB_X21_Y68_N16
\assm|ASSM|CI|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux22~0_combout\ = (!\assm|ASSM|CI|AddrCnt\(3) & ((\assm|ASSM|CI|AddrCnt\(2) & ((!\assm|ASSM|CI|AddrCnt\(0)))) # (!\assm|ASSM|CI|AddrCnt\(2) & (\assm|ASSM|CI|AddrCnt\(1) & \assm|ASSM|CI|AddrCnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(2),
	datab => \assm|ASSM|CI|AddrCnt\(1),
	datac => \assm|ASSM|CI|AddrCnt\(0),
	datad => \assm|ASSM|CI|AddrCnt\(3),
	combout => \assm|ASSM|CI|Mux22~0_combout\);

-- Location: LCCOMB_X24_Y69_N4
\assm|ASSM|CI|TX|DP|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux20~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|Mux22~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(7),
	datac => \assm|ASSM|CI|Mux22~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux20~0_combout\);

-- Location: FF_X24_Y69_N5
\assm|ASSM|CI|TX|DP|RegQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux20~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(8));

-- Location: LCCOMB_X24_Y69_N2
\assm|ASSM|CI|TX|DP|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux19~1_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|DP|Mux19~0_combout\) # ((\assm|ASSM|CI|TX|CU|Op~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|Mux19~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(8),
	datac => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux19~1_combout\);

-- Location: FF_X24_Y69_N3
\assm|ASSM|CI|TX|DP|RegQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux19~1_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(9));

-- Location: LCCOMB_X24_Y69_N20
\assm|ASSM|CI|TX|DP|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux18~0_combout\ = (\assm|ASSM|CI|TX|DP|RegQ\(9)) # (\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(9),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux18~0_combout\);

-- Location: FF_X24_Y69_N21
\assm|ASSM|CI|TX|DP|RegQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux18~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(10));

-- Location: LCCOMB_X24_Y69_N14
\assm|ASSM|CI|TX|DP|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux17~1_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((\assm|ASSM|CI|TX|DP|Mux17~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(10),
	datac => \assm|ASSM|CI|TX|DP|Mux17~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux17~1_combout\);

-- Location: FF_X24_Y69_N15
\assm|ASSM|CI|TX|DP|RegQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux17~1_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(11));

-- Location: LCCOMB_X24_Y69_N28
\assm|ASSM|CI|TX|DP|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux16~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((!\assm|ASSM|CI|Mux19~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|Mux19~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(11),
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux16~0_combout\);

-- Location: FF_X24_Y69_N29
\assm|ASSM|CI|TX|DP|RegQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux16~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(12));

-- Location: LCCOMB_X21_Y68_N10
\assm|ASSM|CI|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|Mux18~0_combout\ = (\assm|ASSM|CI|AddrCnt\(3)) # (\assm|ASSM|CI|AddrCnt\(2) $ (((!\assm|ASSM|CI|AddrCnt\(0) & \assm|ASSM|CI|AddrCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|AddrCnt\(0),
	datab => \assm|ASSM|CI|AddrCnt\(3),
	datac => \assm|ASSM|CI|AddrCnt\(2),
	datad => \assm|ASSM|CI|AddrCnt\(1),
	combout => \assm|ASSM|CI|Mux18~0_combout\);

-- Location: LCCOMB_X24_Y69_N18
\assm|ASSM|CI|TX|DP|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux15~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\) # ((!\assm|ASSM|CI|Mux18~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|RegQ\(12),
	datac => \assm|ASSM|CI|Mux18~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux15~0_combout\);

-- Location: FF_X24_Y69_N19
\assm|ASSM|CI|TX|DP|RegQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux15~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(13));

-- Location: LCCOMB_X24_Y69_N0
\assm|ASSM|CI|TX|DP|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux14~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|CU|Op~0_combout\)) # (!\assm|ASSM|CI|Mux17~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datab => \assm|ASSM|CI|Mux17~0_combout\,
	datac => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|RegQ\(13),
	combout => \assm|ASSM|CI|TX|DP|Mux14~0_combout\);

-- Location: FF_X24_Y69_N1
\assm|ASSM|CI|TX|DP|RegQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux14~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(14));

-- Location: LCCOMB_X25_Y69_N4
\assm|ASSM|CI|TX|DP|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux13~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|CU|Op~0_combout\)) # (!\assm|ASSM|CI|Mux16~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (((\assm|ASSM|CI|TX|DP|RegQ\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|Mux16~0_combout\,
	datab => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(14),
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux13~0_combout\);

-- Location: FF_X25_Y69_N5
\assm|ASSM|CI|TX|DP|RegQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux13~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(15));

-- Location: LCCOMB_X25_Y69_N8
\assm|ASSM|CI|TX|DP|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux12~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(15),
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux12~0_combout\);

-- Location: FF_X25_Y69_N9
\assm|ASSM|CI|TX|DP|RegQ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux12~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(16));

-- Location: LCCOMB_X25_Y69_N14
\assm|ASSM|CI|TX|DP|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux11~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(16),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux11~0_combout\);

-- Location: FF_X24_Y69_N7
\assm|ASSM|CI|TX|DP|RegQ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	asdata => \assm|ASSM|CI|TX|DP|Mux11~0_combout\,
	sload => VCC,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(17));

-- Location: LCCOMB_X25_Y69_N22
\assm|ASSM|CI|TX|DP|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux10~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(17),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux10~0_combout\);

-- Location: FF_X25_Y69_N23
\assm|ASSM|CI|TX|DP|RegQ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux10~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(18));

-- Location: LCCOMB_X25_Y69_N12
\assm|ASSM|CI|TX|DP|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux9~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\) # (\assm|ASSM|CI|TX|DP|RegQ\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(18),
	combout => \assm|ASSM|CI|TX|DP|Mux9~0_combout\);

-- Location: FF_X25_Y69_N13
\assm|ASSM|CI|TX|DP|RegQ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux9~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(19));

-- Location: LCCOMB_X25_Y69_N30
\assm|ASSM|CI|TX|DP|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux8~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(19),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux8~0_combout\);

-- Location: FF_X25_Y69_N31
\assm|ASSM|CI|TX|DP|RegQ[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux8~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(20));

-- Location: LCCOMB_X25_Y69_N24
\assm|ASSM|CI|TX|DP|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux7~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(20),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux7~0_combout\);

-- Location: FF_X25_Y69_N25
\assm|ASSM|CI|TX|DP|RegQ[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux7~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(21));

-- Location: LCCOMB_X25_Y69_N2
\assm|ASSM|CI|TX|DP|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux6~0_combout\ = (\assm|ASSM|CI|TX|DP|RegQ\(21)) # (\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(21),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux6~0_combout\);

-- Location: FF_X25_Y69_N3
\assm|ASSM|CI|TX|DP|RegQ[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux6~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(22));

-- Location: LCCOMB_X25_Y69_N28
\assm|ASSM|CI|TX|DP|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux5~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|CU|Op~0_combout\)) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|DP|RegQ\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|DP|RegQ\(22),
	combout => \assm|ASSM|CI|TX|DP|Mux5~0_combout\);

-- Location: FF_X25_Y69_N29
\assm|ASSM|CI|TX|DP|RegQ[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux5~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(23));

-- Location: LCCOMB_X25_Y69_N18
\assm|ASSM|CI|TX|DP|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux4~0_combout\ = (\assm|ASSM|CI|TX|DP|RegQ\(23)) # (\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(23),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux4~0_combout\);

-- Location: FF_X25_Y69_N19
\assm|ASSM|CI|TX|DP|RegQ[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux4~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(24));

-- Location: LCCOMB_X25_Y69_N6
\assm|ASSM|CI|TX|DP|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux3~0_combout\ = (\assm|ASSM|CI|TX|DP|RegQ\(24)) # (\assm|ASSM|CI|TX|DP|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ\(24),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux3~0_combout\);

-- Location: FF_X25_Y69_N7
\assm|ASSM|CI|TX|DP|RegQ[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux3~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(25));

-- Location: LCCOMB_X25_Y69_N0
\assm|ASSM|CI|TX|DP|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux2~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(25),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux2~0_combout\);

-- Location: FF_X24_Y69_N25
\assm|ASSM|CI|TX|DP|RegQ[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	asdata => \assm|ASSM|CI|TX|DP|Mux2~0_combout\,
	sload => VCC,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(26));

-- Location: LCCOMB_X25_Y69_N10
\assm|ASSM|CI|TX|DP|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux1~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & ((\assm|ASSM|CI|TX|CU|Op~0_combout\))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|DP|RegQ\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(26),
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux1~0_combout\);

-- Location: FF_X25_Y69_N11
\assm|ASSM|CI|TX|DP|RegQ[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux1~0_combout\,
	ena => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(27));

-- Location: LCCOMB_X25_Y69_N20
\assm|ASSM|CI|TX|DP|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux0~0_combout\ = (\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & (\assm|ASSM|CI|TX|CU|MainState.idle~0_combout\ & ((\assm|ASSM|CI|TX|DP|RegQ\(27)) # (\assm|ASSM|CI|TX|CU|Op~0_combout\)))) # (!\assm|ASSM|CI|TX|DP|Mux26~0_combout\ & 
-- (\assm|ASSM|CI|TX|DP|RegQ\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|DP|RegQ\(27),
	datab => \assm|ASSM|CI|TX|CU|Op~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|Mux26~0_combout\,
	datad => \assm|ASSM|CI|TX|CU|MainState.idle~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y69_N16
\assm|ASSM|CI|TX|DP|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|DP|Mux0~1_combout\ = (\assm|ASSM|CI|TX|DP|Mux0~0_combout\) # ((!\assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\ & \assm|ASSM|CI|TX|DP|RegQ\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|CI|TX|DP|RegQ[27]~0_combout\,
	datac => \assm|ASSM|CI|TX|DP|RegQ\(28),
	datad => \assm|ASSM|CI|TX|DP|Mux0~0_combout\,
	combout => \assm|ASSM|CI|TX|DP|Mux0~1_combout\);

-- Location: FF_X25_Y69_N17
\assm|ASSM|CI|TX|DP|RegQ[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|CG|LessThan1~clkctrl_outclk\,
	d => \assm|ASSM|CI|TX|DP|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|CI|TX|DP|RegQ\(28));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X1_Y34_N6
\OBJ2|Mode4[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[0]~26_combout\ = \OBJ2|Mode4\(0) $ (VCC)
-- \OBJ2|Mode4[0]~27\ = CARRY(\OBJ2|Mode4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(0),
	datad => VCC,
	combout => \OBJ2|Mode4[0]~26_combout\,
	cout => \OBJ2|Mode4[0]~27\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X2_Y36_N26
\OBJ1|obj9|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[1]~7_combout\ = (\SW[17]~input_o\) # ((!\OBJ1|obj9|LessThan0~0_combout\ & (\OBJ1|obj9|debounced~q\ $ (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|debounced~q\,
	datab => \OBJ1|obj9|LessThan0~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \OBJ1|obj9|counter[1]~7_combout\);

-- Location: LCCOMB_X2_Y36_N4
\OBJ1|obj9|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|DEBOUNCE_PROC~0_combout\ = \OBJ1|obj9|debounced~q\ $ (\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|debounced~q\,
	datac => \SW[15]~input_o\,
	combout => \OBJ1|obj9|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X2_Y36_N24
\OBJ1|obj9|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj9|LessThan0~0_combout\ & (!\OBJ1|obj9|counter\(0))) # (!\OBJ1|obj9|LessThan0~0_combout\ & (\OBJ1|obj9|counter\(0) & !\OBJ1|obj9|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj9|LessThan0~0_combout\,
	datac => \OBJ1|obj9|counter\(0),
	datad => \OBJ1|obj9|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj9|counter[0]~2_combout\);

-- Location: FF_X2_Y36_N25
\OBJ1|obj9|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj9|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj9|counter\(0));

-- Location: LCCOMB_X2_Y36_N22
\OBJ1|obj9|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[1]~3_combout\ = (!\OBJ1|obj9|counter[1]~7_combout\ & (\OBJ1|obj9|counter\(1) $ (((\OBJ1|obj9|counter\(0) & \OBJ1|obj9|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|counter[1]~7_combout\,
	datab => \OBJ1|obj9|counter\(0),
	datac => \OBJ1|obj9|counter\(1),
	datad => \OBJ1|obj9|LessThan0~0_combout\,
	combout => \OBJ1|obj9|counter[1]~3_combout\);

-- Location: FF_X2_Y36_N23
\OBJ1|obj9|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj9|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj9|counter\(1));

-- Location: LCCOMB_X2_Y36_N12
\OBJ1|obj9|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|Add0~0_combout\ = (\OBJ1|obj9|counter\(1) & \OBJ1|obj9|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj9|counter\(1),
	datad => \OBJ1|obj9|counter\(0),
	combout => \OBJ1|obj9|Add0~0_combout\);

-- Location: LCCOMB_X2_Y36_N18
\OBJ1|obj9|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[2]~4_combout\ = (\OBJ1|obj9|counter\(3) & (!\OBJ1|obj9|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj9|counter\(2)))) # (!\OBJ1|obj9|counter\(3) & ((\OBJ1|obj9|counter\(2) $ (\OBJ1|obj9|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|DEBOUNCE_PROC~0_combout\,
	datab => \OBJ1|obj9|counter\(3),
	datac => \OBJ1|obj9|counter\(2),
	datad => \OBJ1|obj9|Add0~0_combout\,
	combout => \OBJ1|obj9|counter[2]~4_combout\);

-- Location: FF_X2_Y36_N19
\OBJ1|obj9|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj9|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj9|counter\(2));

-- Location: LCCOMB_X2_Y36_N20
\OBJ1|obj9|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[3]~5_combout\ = ((!\OBJ1|obj9|counter\(0) & (!\OBJ1|obj9|counter\(1) & !\OBJ1|obj9|counter\(2)))) # (!\OBJ1|obj9|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|DEBOUNCE_PROC~0_combout\,
	datab => \OBJ1|obj9|counter\(0),
	datac => \OBJ1|obj9|counter\(1),
	datad => \OBJ1|obj9|counter\(2),
	combout => \OBJ1|obj9|counter[3]~5_combout\);

-- Location: LCCOMB_X2_Y36_N14
\OBJ1|obj9|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|counter[3]~6_combout\ = (\OBJ1|obj9|counter\(3) & (((\OBJ1|obj9|counter[3]~5_combout\)))) # (!\OBJ1|obj9|counter\(3) & (\OBJ1|obj9|Add0~0_combout\ & (\OBJ1|obj9|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|Add0~0_combout\,
	datab => \OBJ1|obj9|counter\(2),
	datac => \OBJ1|obj9|counter\(3),
	datad => \OBJ1|obj9|counter[3]~5_combout\,
	combout => \OBJ1|obj9|counter[3]~6_combout\);

-- Location: FF_X2_Y36_N15
\OBJ1|obj9|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj9|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj9|counter\(3));

-- Location: LCCOMB_X2_Y36_N28
\OBJ1|obj9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|LessThan0~0_combout\ = ((!\OBJ1|obj9|counter\(1) & (!\OBJ1|obj9|counter\(0) & !\OBJ1|obj9|counter\(2)))) # (!\OBJ1|obj9|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|counter\(1),
	datab => \OBJ1|obj9|counter\(0),
	datac => \OBJ1|obj9|counter\(3),
	datad => \OBJ1|obj9|counter\(2),
	combout => \OBJ1|obj9|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y36_N30
\OBJ1|obj9|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj9|debounced~0_combout\ = (\SW[17]~input_o\ & (\SW[15]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj9|LessThan0~0_combout\ & ((\OBJ1|obj9|debounced~q\))) # (!\OBJ1|obj9|LessThan0~0_combout\ & (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj9|debounced~q\,
	datad => \OBJ1|obj9|LessThan0~0_combout\,
	combout => \OBJ1|obj9|debounced~0_combout\);

-- Location: FF_X2_Y36_N31
\OBJ1|obj9|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \OBJ1|obj9|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj9|debounced~q\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X3_Y35_N2
\OBJ1|obj8|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|DEBOUNCE_PROC~0_combout\ = \SW[14]~input_o\ $ (\OBJ1|obj8|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \OBJ1|obj8|debounced~q\,
	combout => \OBJ1|obj8|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X3_Y35_N8
\OBJ1|obj8|counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[1]~1_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj8|counter\(3) & (\OBJ1|obj8|counter\(1) & !\OBJ1|obj8|DEBOUNCE_PROC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj8|counter\(3),
	datac => \OBJ1|obj8|counter\(1),
	datad => \OBJ1|obj8|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj8|counter[1]~1_combout\);

-- Location: LCCOMB_X3_Y35_N26
\OBJ1|obj8|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[0]~0_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj8|LessThan0~0_combout\ & (!\OBJ1|obj8|counter\(0))) # (!\OBJ1|obj8|LessThan0~0_combout\ & (\OBJ1|obj8|counter\(0) & !\OBJ1|obj8|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj8|LessThan0~0_combout\,
	datac => \OBJ1|obj8|counter\(0),
	datad => \OBJ1|obj8|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj8|counter[0]~0_combout\);

-- Location: FF_X3_Y35_N27
\OBJ1|obj8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj8|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj8|counter\(0));

-- Location: LCCOMB_X3_Y35_N18
\OBJ1|obj8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|Add0~0_combout\ = \OBJ1|obj8|counter\(1) $ (\OBJ1|obj8|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj8|counter\(1),
	datad => \OBJ1|obj8|counter\(0),
	combout => \OBJ1|obj8|Add0~0_combout\);

-- Location: LCCOMB_X3_Y35_N4
\OBJ1|obj8|counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[1]~2_combout\ = (\OBJ1|obj8|counter[1]~1_combout\) # ((\OBJ1|obj8|LessThan0~0_combout\ & (!\SW[17]~input_o\ & \OBJ1|obj8|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj8|counter[1]~1_combout\,
	datab => \OBJ1|obj8|LessThan0~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \OBJ1|obj8|Add0~0_combout\,
	combout => \OBJ1|obj8|counter[1]~2_combout\);

-- Location: FF_X3_Y35_N5
\OBJ1|obj8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj8|counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj8|counter\(1));

-- Location: LCCOMB_X3_Y35_N12
\OBJ1|obj8|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|Add0~1_combout\ = (\OBJ1|obj8|counter\(1) & \OBJ1|obj8|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj8|counter\(1),
	datad => \OBJ1|obj8|counter\(0),
	combout => \OBJ1|obj8|Add0~1_combout\);

-- Location: LCCOMB_X3_Y35_N28
\OBJ1|obj8|counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[2]~3_combout\ = (\OBJ1|obj8|counter\(3) & (((\OBJ1|obj8|counter\(2) & !\OBJ1|obj8|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj8|counter\(3) & (\OBJ1|obj8|Add0~1_combout\ $ ((\OBJ1|obj8|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj8|Add0~1_combout\,
	datab => \OBJ1|obj8|counter\(3),
	datac => \OBJ1|obj8|counter\(2),
	datad => \OBJ1|obj8|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj8|counter[2]~3_combout\);

-- Location: FF_X3_Y35_N29
\OBJ1|obj8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj8|counter[2]~3_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj8|counter\(2));

-- Location: LCCOMB_X3_Y35_N6
\OBJ1|obj8|counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[3]~4_combout\ = ((!\OBJ1|obj8|counter\(2) & (!\OBJ1|obj8|counter\(0) & !\OBJ1|obj8|counter\(1)))) # (!\OBJ1|obj8|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj8|counter\(2),
	datab => \OBJ1|obj8|counter\(0),
	datac => \OBJ1|obj8|counter\(1),
	datad => \OBJ1|obj8|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj8|counter[3]~4_combout\);

-- Location: LCCOMB_X3_Y35_N30
\OBJ1|obj8|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|counter[3]~5_combout\ = (\OBJ1|obj8|counter\(3) & (\OBJ1|obj8|counter[3]~4_combout\)) # (!\OBJ1|obj8|counter\(3) & (((\OBJ1|obj8|counter\(2) & \OBJ1|obj8|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj8|counter[3]~4_combout\,
	datab => \OBJ1|obj8|counter\(2),
	datac => \OBJ1|obj8|counter\(3),
	datad => \OBJ1|obj8|Add0~1_combout\,
	combout => \OBJ1|obj8|counter[3]~5_combout\);

-- Location: FF_X3_Y35_N31
\OBJ1|obj8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj8|counter[3]~5_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj8|counter\(3));

-- Location: LCCOMB_X3_Y35_N10
\OBJ1|obj8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|LessThan0~0_combout\ = ((!\OBJ1|obj8|counter\(1) & (!\OBJ1|obj8|counter\(0) & !\OBJ1|obj8|counter\(2)))) # (!\OBJ1|obj8|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj8|counter\(3),
	datab => \OBJ1|obj8|counter\(1),
	datac => \OBJ1|obj8|counter\(0),
	datad => \OBJ1|obj8|counter\(2),
	combout => \OBJ1|obj8|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y35_N24
\OBJ1|obj8|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|debounced~0_combout\ = (\SW[17]~input_o\ & (((\SW[14]~input_o\)))) # (!\SW[17]~input_o\ & ((\OBJ1|obj8|LessThan0~0_combout\ & (\OBJ1|obj8|debounced~q\)) # (!\OBJ1|obj8|LessThan0~0_combout\ & ((\SW[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj8|debounced~q\,
	datac => \SW[14]~input_o\,
	datad => \OBJ1|obj8|LessThan0~0_combout\,
	combout => \OBJ1|obj8|debounced~0_combout\);

-- Location: LCCOMB_X2_Y35_N6
\OBJ1|obj8|debounced~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj8|debounced~feeder_combout\ = \OBJ1|obj8|debounced~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj8|debounced~0_combout\,
	combout => \OBJ1|obj8|debounced~feeder_combout\);

-- Location: FF_X2_Y35_N7
\OBJ1|obj8|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj8|debounced~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj8|debounced~q\);

-- Location: LCCOMB_X2_Y35_N2
\OBJ2|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Equal2~2_combout\ = (\OBJ1|obj9|debounced~q\ & \OBJ1|obj8|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj9|debounced~q\,
	datad => \OBJ1|obj8|debounced~q\,
	combout => \OBJ2|Equal2~2_combout\);

-- Location: FF_X1_Y34_N7
\OBJ2|Mode4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[0]~26_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(0));

-- Location: LCCOMB_X1_Y34_N8
\OBJ2|Mode4[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[1]~28_combout\ = (\OBJ2|Mode4\(1) & (!\OBJ2|Mode4[0]~27\)) # (!\OBJ2|Mode4\(1) & ((\OBJ2|Mode4[0]~27\) # (GND)))
-- \OBJ2|Mode4[1]~29\ = CARRY((!\OBJ2|Mode4[0]~27\) # (!\OBJ2|Mode4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(1),
	datad => VCC,
	cin => \OBJ2|Mode4[0]~27\,
	combout => \OBJ2|Mode4[1]~28_combout\,
	cout => \OBJ2|Mode4[1]~29\);

-- Location: FF_X1_Y34_N9
\OBJ2|Mode4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[1]~28_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(1));

-- Location: LCCOMB_X1_Y34_N10
\OBJ2|Mode4[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[2]~30_combout\ = (\OBJ2|Mode4\(2) & (\OBJ2|Mode4[1]~29\ $ (GND))) # (!\OBJ2|Mode4\(2) & (!\OBJ2|Mode4[1]~29\ & VCC))
-- \OBJ2|Mode4[2]~31\ = CARRY((\OBJ2|Mode4\(2) & !\OBJ2|Mode4[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(2),
	datad => VCC,
	cin => \OBJ2|Mode4[1]~29\,
	combout => \OBJ2|Mode4[2]~30_combout\,
	cout => \OBJ2|Mode4[2]~31\);

-- Location: FF_X1_Y34_N11
\OBJ2|Mode4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[2]~30_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(2));

-- Location: LCCOMB_X1_Y34_N12
\OBJ2|Mode4[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[3]~32_combout\ = (\OBJ2|Mode4\(3) & (!\OBJ2|Mode4[2]~31\)) # (!\OBJ2|Mode4\(3) & ((\OBJ2|Mode4[2]~31\) # (GND)))
-- \OBJ2|Mode4[3]~33\ = CARRY((!\OBJ2|Mode4[2]~31\) # (!\OBJ2|Mode4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(3),
	datad => VCC,
	cin => \OBJ2|Mode4[2]~31\,
	combout => \OBJ2|Mode4[3]~32_combout\,
	cout => \OBJ2|Mode4[3]~33\);

-- Location: FF_X1_Y34_N13
\OBJ2|Mode4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[3]~32_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(3));

-- Location: LCCOMB_X1_Y34_N14
\OBJ2|Mode4[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[4]~34_combout\ = (\OBJ2|Mode4\(4) & (\OBJ2|Mode4[3]~33\ $ (GND))) # (!\OBJ2|Mode4\(4) & (!\OBJ2|Mode4[3]~33\ & VCC))
-- \OBJ2|Mode4[4]~35\ = CARRY((\OBJ2|Mode4\(4) & !\OBJ2|Mode4[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(4),
	datad => VCC,
	cin => \OBJ2|Mode4[3]~33\,
	combout => \OBJ2|Mode4[4]~34_combout\,
	cout => \OBJ2|Mode4[4]~35\);

-- Location: FF_X1_Y34_N15
\OBJ2|Mode4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[4]~34_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(4));

-- Location: LCCOMB_X1_Y34_N16
\OBJ2|Mode4[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[5]~36_combout\ = (\OBJ2|Mode4\(5) & (!\OBJ2|Mode4[4]~35\)) # (!\OBJ2|Mode4\(5) & ((\OBJ2|Mode4[4]~35\) # (GND)))
-- \OBJ2|Mode4[5]~37\ = CARRY((!\OBJ2|Mode4[4]~35\) # (!\OBJ2|Mode4\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(5),
	datad => VCC,
	cin => \OBJ2|Mode4[4]~35\,
	combout => \OBJ2|Mode4[5]~36_combout\,
	cout => \OBJ2|Mode4[5]~37\);

-- Location: FF_X1_Y34_N17
\OBJ2|Mode4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[5]~36_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(5));

-- Location: LCCOMB_X1_Y34_N18
\OBJ2|Mode4[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[6]~38_combout\ = (\OBJ2|Mode4\(6) & (\OBJ2|Mode4[5]~37\ $ (GND))) # (!\OBJ2|Mode4\(6) & (!\OBJ2|Mode4[5]~37\ & VCC))
-- \OBJ2|Mode4[6]~39\ = CARRY((\OBJ2|Mode4\(6) & !\OBJ2|Mode4[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(6),
	datad => VCC,
	cin => \OBJ2|Mode4[5]~37\,
	combout => \OBJ2|Mode4[6]~38_combout\,
	cout => \OBJ2|Mode4[6]~39\);

-- Location: FF_X1_Y34_N19
\OBJ2|Mode4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[6]~38_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(6));

-- Location: LCCOMB_X1_Y34_N20
\OBJ2|Mode4[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[7]~40_combout\ = (\OBJ2|Mode4\(7) & (!\OBJ2|Mode4[6]~39\)) # (!\OBJ2|Mode4\(7) & ((\OBJ2|Mode4[6]~39\) # (GND)))
-- \OBJ2|Mode4[7]~41\ = CARRY((!\OBJ2|Mode4[6]~39\) # (!\OBJ2|Mode4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(7),
	datad => VCC,
	cin => \OBJ2|Mode4[6]~39\,
	combout => \OBJ2|Mode4[7]~40_combout\,
	cout => \OBJ2|Mode4[7]~41\);

-- Location: FF_X1_Y34_N21
\OBJ2|Mode4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[7]~40_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(7));

-- Location: LCCOMB_X1_Y34_N22
\OBJ2|Mode4[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[8]~42_combout\ = (\OBJ2|Mode4\(8) & (\OBJ2|Mode4[7]~41\ $ (GND))) # (!\OBJ2|Mode4\(8) & (!\OBJ2|Mode4[7]~41\ & VCC))
-- \OBJ2|Mode4[8]~43\ = CARRY((\OBJ2|Mode4\(8) & !\OBJ2|Mode4[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(8),
	datad => VCC,
	cin => \OBJ2|Mode4[7]~41\,
	combout => \OBJ2|Mode4[8]~42_combout\,
	cout => \OBJ2|Mode4[8]~43\);

-- Location: FF_X1_Y34_N23
\OBJ2|Mode4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[8]~42_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(8));

-- Location: LCCOMB_X1_Y34_N24
\OBJ2|Mode4[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[9]~44_combout\ = (\OBJ2|Mode4\(9) & (!\OBJ2|Mode4[8]~43\)) # (!\OBJ2|Mode4\(9) & ((\OBJ2|Mode4[8]~43\) # (GND)))
-- \OBJ2|Mode4[9]~45\ = CARRY((!\OBJ2|Mode4[8]~43\) # (!\OBJ2|Mode4\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(9),
	datad => VCC,
	cin => \OBJ2|Mode4[8]~43\,
	combout => \OBJ2|Mode4[9]~44_combout\,
	cout => \OBJ2|Mode4[9]~45\);

-- Location: FF_X1_Y34_N25
\OBJ2|Mode4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[9]~44_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(9));

-- Location: LCCOMB_X1_Y34_N26
\OBJ2|Mode4[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[10]~46_combout\ = (\OBJ2|Mode4\(10) & (\OBJ2|Mode4[9]~45\ $ (GND))) # (!\OBJ2|Mode4\(10) & (!\OBJ2|Mode4[9]~45\ & VCC))
-- \OBJ2|Mode4[10]~47\ = CARRY((\OBJ2|Mode4\(10) & !\OBJ2|Mode4[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(10),
	datad => VCC,
	cin => \OBJ2|Mode4[9]~45\,
	combout => \OBJ2|Mode4[10]~46_combout\,
	cout => \OBJ2|Mode4[10]~47\);

-- Location: FF_X1_Y34_N27
\OBJ2|Mode4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[10]~46_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(10));

-- Location: LCCOMB_X1_Y34_N28
\OBJ2|Mode4[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[11]~48_combout\ = (\OBJ2|Mode4\(11) & (!\OBJ2|Mode4[10]~47\)) # (!\OBJ2|Mode4\(11) & ((\OBJ2|Mode4[10]~47\) # (GND)))
-- \OBJ2|Mode4[11]~49\ = CARRY((!\OBJ2|Mode4[10]~47\) # (!\OBJ2|Mode4\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(11),
	datad => VCC,
	cin => \OBJ2|Mode4[10]~47\,
	combout => \OBJ2|Mode4[11]~48_combout\,
	cout => \OBJ2|Mode4[11]~49\);

-- Location: FF_X1_Y34_N29
\OBJ2|Mode4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[11]~48_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(11));

-- Location: LCCOMB_X1_Y34_N30
\OBJ2|Mode4[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[12]~50_combout\ = (\OBJ2|Mode4\(12) & (\OBJ2|Mode4[11]~49\ $ (GND))) # (!\OBJ2|Mode4\(12) & (!\OBJ2|Mode4[11]~49\ & VCC))
-- \OBJ2|Mode4[12]~51\ = CARRY((\OBJ2|Mode4\(12) & !\OBJ2|Mode4[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(12),
	datad => VCC,
	cin => \OBJ2|Mode4[11]~49\,
	combout => \OBJ2|Mode4[12]~50_combout\,
	cout => \OBJ2|Mode4[12]~51\);

-- Location: FF_X1_Y34_N31
\OBJ2|Mode4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[12]~50_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(12));

-- Location: LCCOMB_X1_Y33_N0
\OBJ2|Mode4[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[13]~52_combout\ = (\OBJ2|Mode4\(13) & (!\OBJ2|Mode4[12]~51\)) # (!\OBJ2|Mode4\(13) & ((\OBJ2|Mode4[12]~51\) # (GND)))
-- \OBJ2|Mode4[13]~53\ = CARRY((!\OBJ2|Mode4[12]~51\) # (!\OBJ2|Mode4\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(13),
	datad => VCC,
	cin => \OBJ2|Mode4[12]~51\,
	combout => \OBJ2|Mode4[13]~52_combout\,
	cout => \OBJ2|Mode4[13]~53\);

-- Location: FF_X1_Y33_N1
\OBJ2|Mode4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[13]~52_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(13));

-- Location: LCCOMB_X1_Y33_N2
\OBJ2|Mode4[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[14]~54_combout\ = (\OBJ2|Mode4\(14) & (\OBJ2|Mode4[13]~53\ $ (GND))) # (!\OBJ2|Mode4\(14) & (!\OBJ2|Mode4[13]~53\ & VCC))
-- \OBJ2|Mode4[14]~55\ = CARRY((\OBJ2|Mode4\(14) & !\OBJ2|Mode4[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(14),
	datad => VCC,
	cin => \OBJ2|Mode4[13]~53\,
	combout => \OBJ2|Mode4[14]~54_combout\,
	cout => \OBJ2|Mode4[14]~55\);

-- Location: FF_X1_Y33_N3
\OBJ2|Mode4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[14]~54_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(14));

-- Location: LCCOMB_X1_Y33_N4
\OBJ2|Mode4[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[15]~56_combout\ = (\OBJ2|Mode4\(15) & (!\OBJ2|Mode4[14]~55\)) # (!\OBJ2|Mode4\(15) & ((\OBJ2|Mode4[14]~55\) # (GND)))
-- \OBJ2|Mode4[15]~57\ = CARRY((!\OBJ2|Mode4[14]~55\) # (!\OBJ2|Mode4\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(15),
	datad => VCC,
	cin => \OBJ2|Mode4[14]~55\,
	combout => \OBJ2|Mode4[15]~56_combout\,
	cout => \OBJ2|Mode4[15]~57\);

-- Location: FF_X1_Y33_N5
\OBJ2|Mode4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[15]~56_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(15));

-- Location: LCCOMB_X1_Y33_N6
\OBJ2|Mode4[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[16]~58_combout\ = (\OBJ2|Mode4\(16) & (\OBJ2|Mode4[15]~57\ $ (GND))) # (!\OBJ2|Mode4\(16) & (!\OBJ2|Mode4[15]~57\ & VCC))
-- \OBJ2|Mode4[16]~59\ = CARRY((\OBJ2|Mode4\(16) & !\OBJ2|Mode4[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(16),
	datad => VCC,
	cin => \OBJ2|Mode4[15]~57\,
	combout => \OBJ2|Mode4[16]~58_combout\,
	cout => \OBJ2|Mode4[16]~59\);

-- Location: FF_X1_Y33_N7
\OBJ2|Mode4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[16]~58_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(16));

-- Location: LCCOMB_X1_Y33_N8
\OBJ2|Mode4[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[17]~60_combout\ = (\OBJ2|Mode4\(17) & (!\OBJ2|Mode4[16]~59\)) # (!\OBJ2|Mode4\(17) & ((\OBJ2|Mode4[16]~59\) # (GND)))
-- \OBJ2|Mode4[17]~61\ = CARRY((!\OBJ2|Mode4[16]~59\) # (!\OBJ2|Mode4\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(17),
	datad => VCC,
	cin => \OBJ2|Mode4[16]~59\,
	combout => \OBJ2|Mode4[17]~60_combout\,
	cout => \OBJ2|Mode4[17]~61\);

-- Location: FF_X1_Y33_N9
\OBJ2|Mode4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[17]~60_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(17));

-- Location: LCCOMB_X1_Y33_N10
\OBJ2|Mode4[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[18]~62_combout\ = (\OBJ2|Mode4\(18) & (\OBJ2|Mode4[17]~61\ $ (GND))) # (!\OBJ2|Mode4\(18) & (!\OBJ2|Mode4[17]~61\ & VCC))
-- \OBJ2|Mode4[18]~63\ = CARRY((\OBJ2|Mode4\(18) & !\OBJ2|Mode4[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(18),
	datad => VCC,
	cin => \OBJ2|Mode4[17]~61\,
	combout => \OBJ2|Mode4[18]~62_combout\,
	cout => \OBJ2|Mode4[18]~63\);

-- Location: FF_X1_Y33_N11
\OBJ2|Mode4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[18]~62_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(18));

-- Location: LCCOMB_X1_Y33_N12
\OBJ2|Mode4[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[19]~64_combout\ = (\OBJ2|Mode4\(19) & (!\OBJ2|Mode4[18]~63\)) # (!\OBJ2|Mode4\(19) & ((\OBJ2|Mode4[18]~63\) # (GND)))
-- \OBJ2|Mode4[19]~65\ = CARRY((!\OBJ2|Mode4[18]~63\) # (!\OBJ2|Mode4\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(19),
	datad => VCC,
	cin => \OBJ2|Mode4[18]~63\,
	combout => \OBJ2|Mode4[19]~64_combout\,
	cout => \OBJ2|Mode4[19]~65\);

-- Location: FF_X1_Y33_N13
\OBJ2|Mode4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[19]~64_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(19));

-- Location: LCCOMB_X1_Y33_N14
\OBJ2|Mode4[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[20]~66_combout\ = (\OBJ2|Mode4\(20) & (\OBJ2|Mode4[19]~65\ $ (GND))) # (!\OBJ2|Mode4\(20) & (!\OBJ2|Mode4[19]~65\ & VCC))
-- \OBJ2|Mode4[20]~67\ = CARRY((\OBJ2|Mode4\(20) & !\OBJ2|Mode4[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(20),
	datad => VCC,
	cin => \OBJ2|Mode4[19]~65\,
	combout => \OBJ2|Mode4[20]~66_combout\,
	cout => \OBJ2|Mode4[20]~67\);

-- Location: FF_X1_Y33_N15
\OBJ2|Mode4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[20]~66_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(20));

-- Location: LCCOMB_X1_Y33_N16
\OBJ2|Mode4[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[21]~68_combout\ = (\OBJ2|Mode4\(21) & (!\OBJ2|Mode4[20]~67\)) # (!\OBJ2|Mode4\(21) & ((\OBJ2|Mode4[20]~67\) # (GND)))
-- \OBJ2|Mode4[21]~69\ = CARRY((!\OBJ2|Mode4[20]~67\) # (!\OBJ2|Mode4\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(21),
	datad => VCC,
	cin => \OBJ2|Mode4[20]~67\,
	combout => \OBJ2|Mode4[21]~68_combout\,
	cout => \OBJ2|Mode4[21]~69\);

-- Location: FF_X1_Y33_N17
\OBJ2|Mode4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[21]~68_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(21));

-- Location: LCCOMB_X1_Y33_N18
\OBJ2|Mode4[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[22]~70_combout\ = (\OBJ2|Mode4\(22) & (\OBJ2|Mode4[21]~69\ $ (GND))) # (!\OBJ2|Mode4\(22) & (!\OBJ2|Mode4[21]~69\ & VCC))
-- \OBJ2|Mode4[22]~71\ = CARRY((\OBJ2|Mode4\(22) & !\OBJ2|Mode4[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(22),
	datad => VCC,
	cin => \OBJ2|Mode4[21]~69\,
	combout => \OBJ2|Mode4[22]~70_combout\,
	cout => \OBJ2|Mode4[22]~71\);

-- Location: FF_X1_Y33_N19
\OBJ2|Mode4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[22]~70_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(22));

-- Location: LCCOMB_X1_Y33_N20
\OBJ2|Mode4[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[23]~72_combout\ = (\OBJ2|Mode4\(23) & (!\OBJ2|Mode4[22]~71\)) # (!\OBJ2|Mode4\(23) & ((\OBJ2|Mode4[22]~71\) # (GND)))
-- \OBJ2|Mode4[23]~73\ = CARRY((!\OBJ2|Mode4[22]~71\) # (!\OBJ2|Mode4\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(23),
	datad => VCC,
	cin => \OBJ2|Mode4[22]~71\,
	combout => \OBJ2|Mode4[23]~72_combout\,
	cout => \OBJ2|Mode4[23]~73\);

-- Location: FF_X1_Y33_N21
\OBJ2|Mode4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[23]~72_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(23));

-- Location: LCCOMB_X1_Y33_N22
\OBJ2|Mode4[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[24]~74_combout\ = (\OBJ2|Mode4\(24) & (\OBJ2|Mode4[23]~73\ $ (GND))) # (!\OBJ2|Mode4\(24) & (!\OBJ2|Mode4[23]~73\ & VCC))
-- \OBJ2|Mode4[24]~75\ = CARRY((\OBJ2|Mode4\(24) & !\OBJ2|Mode4[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(24),
	datad => VCC,
	cin => \OBJ2|Mode4[23]~73\,
	combout => \OBJ2|Mode4[24]~74_combout\,
	cout => \OBJ2|Mode4[24]~75\);

-- Location: FF_X1_Y33_N23
\OBJ2|Mode4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode4[24]~74_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(24));

-- Location: LCCOMB_X1_Y33_N24
\OBJ2|Mode4[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode4[25]~76_combout\ = \OBJ2|Mode4\(25) $ (\OBJ2|Mode4[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode4\(25),
	cin => \OBJ2|Mode4[24]~75\,
	combout => \OBJ2|Mode4[25]~76_combout\);

-- Location: FF_X1_Y33_N25
\OBJ2|Mode4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \OBJ2|Mode4[25]~76_combout\,
	ena => \OBJ2|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode4\(25));

-- Location: LCCOMB_X1_Y36_N10
\OBJ2|Mode2[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[0]~22_combout\ = \OBJ2|Mode2\(0) $ (VCC)
-- \OBJ2|Mode2[0]~23\ = CARRY(\OBJ2|Mode2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(0),
	datad => VCC,
	combout => \OBJ2|Mode2[0]~22_combout\,
	cout => \OBJ2|Mode2[0]~23\);

-- Location: LCCOMB_X2_Y35_N10
\OBJ2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Equal2~0_combout\ = (!\OBJ1|obj9|debounced~q\ & \OBJ1|obj8|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|debounced~q\,
	datad => \OBJ1|obj8|debounced~q\,
	combout => \OBJ2|Equal2~0_combout\);

-- Location: FF_X1_Y36_N11
\OBJ2|Mode2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[0]~22_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(0));

-- Location: LCCOMB_X1_Y36_N12
\OBJ2|Mode2[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[1]~24_combout\ = (\OBJ2|Mode2\(1) & (!\OBJ2|Mode2[0]~23\)) # (!\OBJ2|Mode2\(1) & ((\OBJ2|Mode2[0]~23\) # (GND)))
-- \OBJ2|Mode2[1]~25\ = CARRY((!\OBJ2|Mode2[0]~23\) # (!\OBJ2|Mode2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(1),
	datad => VCC,
	cin => \OBJ2|Mode2[0]~23\,
	combout => \OBJ2|Mode2[1]~24_combout\,
	cout => \OBJ2|Mode2[1]~25\);

-- Location: FF_X1_Y36_N13
\OBJ2|Mode2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[1]~24_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(1));

-- Location: LCCOMB_X1_Y36_N14
\OBJ2|Mode2[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[2]~26_combout\ = (\OBJ2|Mode2\(2) & (\OBJ2|Mode2[1]~25\ $ (GND))) # (!\OBJ2|Mode2\(2) & (!\OBJ2|Mode2[1]~25\ & VCC))
-- \OBJ2|Mode2[2]~27\ = CARRY((\OBJ2|Mode2\(2) & !\OBJ2|Mode2[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(2),
	datad => VCC,
	cin => \OBJ2|Mode2[1]~25\,
	combout => \OBJ2|Mode2[2]~26_combout\,
	cout => \OBJ2|Mode2[2]~27\);

-- Location: FF_X1_Y36_N15
\OBJ2|Mode2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[2]~26_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(2));

-- Location: LCCOMB_X1_Y36_N16
\OBJ2|Mode2[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[3]~28_combout\ = (\OBJ2|Mode2\(3) & (!\OBJ2|Mode2[2]~27\)) # (!\OBJ2|Mode2\(3) & ((\OBJ2|Mode2[2]~27\) # (GND)))
-- \OBJ2|Mode2[3]~29\ = CARRY((!\OBJ2|Mode2[2]~27\) # (!\OBJ2|Mode2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(3),
	datad => VCC,
	cin => \OBJ2|Mode2[2]~27\,
	combout => \OBJ2|Mode2[3]~28_combout\,
	cout => \OBJ2|Mode2[3]~29\);

-- Location: FF_X1_Y36_N17
\OBJ2|Mode2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[3]~28_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(3));

-- Location: LCCOMB_X1_Y36_N18
\OBJ2|Mode2[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[4]~30_combout\ = (\OBJ2|Mode2\(4) & (\OBJ2|Mode2[3]~29\ $ (GND))) # (!\OBJ2|Mode2\(4) & (!\OBJ2|Mode2[3]~29\ & VCC))
-- \OBJ2|Mode2[4]~31\ = CARRY((\OBJ2|Mode2\(4) & !\OBJ2|Mode2[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(4),
	datad => VCC,
	cin => \OBJ2|Mode2[3]~29\,
	combout => \OBJ2|Mode2[4]~30_combout\,
	cout => \OBJ2|Mode2[4]~31\);

-- Location: FF_X1_Y36_N19
\OBJ2|Mode2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[4]~30_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(4));

-- Location: LCCOMB_X1_Y36_N20
\OBJ2|Mode2[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[5]~32_combout\ = (\OBJ2|Mode2\(5) & (!\OBJ2|Mode2[4]~31\)) # (!\OBJ2|Mode2\(5) & ((\OBJ2|Mode2[4]~31\) # (GND)))
-- \OBJ2|Mode2[5]~33\ = CARRY((!\OBJ2|Mode2[4]~31\) # (!\OBJ2|Mode2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(5),
	datad => VCC,
	cin => \OBJ2|Mode2[4]~31\,
	combout => \OBJ2|Mode2[5]~32_combout\,
	cout => \OBJ2|Mode2[5]~33\);

-- Location: FF_X1_Y36_N21
\OBJ2|Mode2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[5]~32_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(5));

-- Location: LCCOMB_X1_Y36_N22
\OBJ2|Mode2[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[6]~34_combout\ = (\OBJ2|Mode2\(6) & (\OBJ2|Mode2[5]~33\ $ (GND))) # (!\OBJ2|Mode2\(6) & (!\OBJ2|Mode2[5]~33\ & VCC))
-- \OBJ2|Mode2[6]~35\ = CARRY((\OBJ2|Mode2\(6) & !\OBJ2|Mode2[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(6),
	datad => VCC,
	cin => \OBJ2|Mode2[5]~33\,
	combout => \OBJ2|Mode2[6]~34_combout\,
	cout => \OBJ2|Mode2[6]~35\);

-- Location: FF_X1_Y36_N23
\OBJ2|Mode2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[6]~34_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(6));

-- Location: LCCOMB_X1_Y36_N24
\OBJ2|Mode2[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[7]~36_combout\ = (\OBJ2|Mode2\(7) & (!\OBJ2|Mode2[6]~35\)) # (!\OBJ2|Mode2\(7) & ((\OBJ2|Mode2[6]~35\) # (GND)))
-- \OBJ2|Mode2[7]~37\ = CARRY((!\OBJ2|Mode2[6]~35\) # (!\OBJ2|Mode2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(7),
	datad => VCC,
	cin => \OBJ2|Mode2[6]~35\,
	combout => \OBJ2|Mode2[7]~36_combout\,
	cout => \OBJ2|Mode2[7]~37\);

-- Location: FF_X1_Y36_N25
\OBJ2|Mode2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[7]~36_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(7));

-- Location: LCCOMB_X1_Y36_N26
\OBJ2|Mode2[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[8]~38_combout\ = (\OBJ2|Mode2\(8) & (\OBJ2|Mode2[7]~37\ $ (GND))) # (!\OBJ2|Mode2\(8) & (!\OBJ2|Mode2[7]~37\ & VCC))
-- \OBJ2|Mode2[8]~39\ = CARRY((\OBJ2|Mode2\(8) & !\OBJ2|Mode2[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(8),
	datad => VCC,
	cin => \OBJ2|Mode2[7]~37\,
	combout => \OBJ2|Mode2[8]~38_combout\,
	cout => \OBJ2|Mode2[8]~39\);

-- Location: FF_X1_Y36_N27
\OBJ2|Mode2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[8]~38_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(8));

-- Location: LCCOMB_X1_Y36_N28
\OBJ2|Mode2[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[9]~40_combout\ = (\OBJ2|Mode2\(9) & (!\OBJ2|Mode2[8]~39\)) # (!\OBJ2|Mode2\(9) & ((\OBJ2|Mode2[8]~39\) # (GND)))
-- \OBJ2|Mode2[9]~41\ = CARRY((!\OBJ2|Mode2[8]~39\) # (!\OBJ2|Mode2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(9),
	datad => VCC,
	cin => \OBJ2|Mode2[8]~39\,
	combout => \OBJ2|Mode2[9]~40_combout\,
	cout => \OBJ2|Mode2[9]~41\);

-- Location: FF_X1_Y36_N29
\OBJ2|Mode2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[9]~40_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(9));

-- Location: LCCOMB_X1_Y36_N30
\OBJ2|Mode2[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[10]~42_combout\ = (\OBJ2|Mode2\(10) & (\OBJ2|Mode2[9]~41\ $ (GND))) # (!\OBJ2|Mode2\(10) & (!\OBJ2|Mode2[9]~41\ & VCC))
-- \OBJ2|Mode2[10]~43\ = CARRY((\OBJ2|Mode2\(10) & !\OBJ2|Mode2[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(10),
	datad => VCC,
	cin => \OBJ2|Mode2[9]~41\,
	combout => \OBJ2|Mode2[10]~42_combout\,
	cout => \OBJ2|Mode2[10]~43\);

-- Location: FF_X1_Y36_N31
\OBJ2|Mode2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[10]~42_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(10));

-- Location: LCCOMB_X1_Y35_N0
\OBJ2|Mode2[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[11]~44_combout\ = (\OBJ2|Mode2\(11) & (!\OBJ2|Mode2[10]~43\)) # (!\OBJ2|Mode2\(11) & ((\OBJ2|Mode2[10]~43\) # (GND)))
-- \OBJ2|Mode2[11]~45\ = CARRY((!\OBJ2|Mode2[10]~43\) # (!\OBJ2|Mode2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(11),
	datad => VCC,
	cin => \OBJ2|Mode2[10]~43\,
	combout => \OBJ2|Mode2[11]~44_combout\,
	cout => \OBJ2|Mode2[11]~45\);

-- Location: FF_X1_Y35_N1
\OBJ2|Mode2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[11]~44_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(11));

-- Location: LCCOMB_X1_Y35_N2
\OBJ2|Mode2[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[12]~46_combout\ = (\OBJ2|Mode2\(12) & (\OBJ2|Mode2[11]~45\ $ (GND))) # (!\OBJ2|Mode2\(12) & (!\OBJ2|Mode2[11]~45\ & VCC))
-- \OBJ2|Mode2[12]~47\ = CARRY((\OBJ2|Mode2\(12) & !\OBJ2|Mode2[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(12),
	datad => VCC,
	cin => \OBJ2|Mode2[11]~45\,
	combout => \OBJ2|Mode2[12]~46_combout\,
	cout => \OBJ2|Mode2[12]~47\);

-- Location: FF_X1_Y35_N3
\OBJ2|Mode2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[12]~46_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(12));

-- Location: LCCOMB_X1_Y35_N4
\OBJ2|Mode2[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[13]~48_combout\ = (\OBJ2|Mode2\(13) & (!\OBJ2|Mode2[12]~47\)) # (!\OBJ2|Mode2\(13) & ((\OBJ2|Mode2[12]~47\) # (GND)))
-- \OBJ2|Mode2[13]~49\ = CARRY((!\OBJ2|Mode2[12]~47\) # (!\OBJ2|Mode2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(13),
	datad => VCC,
	cin => \OBJ2|Mode2[12]~47\,
	combout => \OBJ2|Mode2[13]~48_combout\,
	cout => \OBJ2|Mode2[13]~49\);

-- Location: FF_X1_Y35_N5
\OBJ2|Mode2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[13]~48_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(13));

-- Location: LCCOMB_X1_Y35_N6
\OBJ2|Mode2[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[14]~50_combout\ = (\OBJ2|Mode2\(14) & (\OBJ2|Mode2[13]~49\ $ (GND))) # (!\OBJ2|Mode2\(14) & (!\OBJ2|Mode2[13]~49\ & VCC))
-- \OBJ2|Mode2[14]~51\ = CARRY((\OBJ2|Mode2\(14) & !\OBJ2|Mode2[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(14),
	datad => VCC,
	cin => \OBJ2|Mode2[13]~49\,
	combout => \OBJ2|Mode2[14]~50_combout\,
	cout => \OBJ2|Mode2[14]~51\);

-- Location: FF_X1_Y35_N7
\OBJ2|Mode2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[14]~50_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(14));

-- Location: LCCOMB_X1_Y35_N8
\OBJ2|Mode2[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[15]~52_combout\ = (\OBJ2|Mode2\(15) & (!\OBJ2|Mode2[14]~51\)) # (!\OBJ2|Mode2\(15) & ((\OBJ2|Mode2[14]~51\) # (GND)))
-- \OBJ2|Mode2[15]~53\ = CARRY((!\OBJ2|Mode2[14]~51\) # (!\OBJ2|Mode2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(15),
	datad => VCC,
	cin => \OBJ2|Mode2[14]~51\,
	combout => \OBJ2|Mode2[15]~52_combout\,
	cout => \OBJ2|Mode2[15]~53\);

-- Location: FF_X1_Y35_N9
\OBJ2|Mode2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[15]~52_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(15));

-- Location: LCCOMB_X1_Y35_N10
\OBJ2|Mode2[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[16]~54_combout\ = (\OBJ2|Mode2\(16) & (\OBJ2|Mode2[15]~53\ $ (GND))) # (!\OBJ2|Mode2\(16) & (!\OBJ2|Mode2[15]~53\ & VCC))
-- \OBJ2|Mode2[16]~55\ = CARRY((\OBJ2|Mode2\(16) & !\OBJ2|Mode2[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(16),
	datad => VCC,
	cin => \OBJ2|Mode2[15]~53\,
	combout => \OBJ2|Mode2[16]~54_combout\,
	cout => \OBJ2|Mode2[16]~55\);

-- Location: FF_X1_Y35_N11
\OBJ2|Mode2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[16]~54_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(16));

-- Location: LCCOMB_X1_Y35_N12
\OBJ2|Mode2[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[17]~56_combout\ = (\OBJ2|Mode2\(17) & (!\OBJ2|Mode2[16]~55\)) # (!\OBJ2|Mode2\(17) & ((\OBJ2|Mode2[16]~55\) # (GND)))
-- \OBJ2|Mode2[17]~57\ = CARRY((!\OBJ2|Mode2[16]~55\) # (!\OBJ2|Mode2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode2\(17),
	datad => VCC,
	cin => \OBJ2|Mode2[16]~55\,
	combout => \OBJ2|Mode2[17]~56_combout\,
	cout => \OBJ2|Mode2[17]~57\);

-- Location: FF_X1_Y35_N13
\OBJ2|Mode2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[17]~56_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(17));

-- Location: LCCOMB_X1_Y35_N14
\OBJ2|Mode2[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[18]~58_combout\ = (\OBJ2|Mode2\(18) & (\OBJ2|Mode2[17]~57\ $ (GND))) # (!\OBJ2|Mode2\(18) & (!\OBJ2|Mode2[17]~57\ & VCC))
-- \OBJ2|Mode2[18]~59\ = CARRY((\OBJ2|Mode2\(18) & !\OBJ2|Mode2[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(18),
	datad => VCC,
	cin => \OBJ2|Mode2[17]~57\,
	combout => \OBJ2|Mode2[18]~58_combout\,
	cout => \OBJ2|Mode2[18]~59\);

-- Location: FF_X1_Y35_N15
\OBJ2|Mode2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[18]~58_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(18));

-- Location: LCCOMB_X1_Y35_N16
\OBJ2|Mode2[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[19]~60_combout\ = (\OBJ2|Mode2\(19) & (!\OBJ2|Mode2[18]~59\)) # (!\OBJ2|Mode2\(19) & ((\OBJ2|Mode2[18]~59\) # (GND)))
-- \OBJ2|Mode2[19]~61\ = CARRY((!\OBJ2|Mode2[18]~59\) # (!\OBJ2|Mode2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(19),
	datad => VCC,
	cin => \OBJ2|Mode2[18]~59\,
	combout => \OBJ2|Mode2[19]~60_combout\,
	cout => \OBJ2|Mode2[19]~61\);

-- Location: FF_X1_Y35_N17
\OBJ2|Mode2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[19]~60_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(19));

-- Location: LCCOMB_X1_Y35_N18
\OBJ2|Mode2[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[20]~62_combout\ = (\OBJ2|Mode2\(20) & (\OBJ2|Mode2[19]~61\ $ (GND))) # (!\OBJ2|Mode2\(20) & (!\OBJ2|Mode2[19]~61\ & VCC))
-- \OBJ2|Mode2[20]~63\ = CARRY((\OBJ2|Mode2\(20) & !\OBJ2|Mode2[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(20),
	datad => VCC,
	cin => \OBJ2|Mode2[19]~61\,
	combout => \OBJ2|Mode2[20]~62_combout\,
	cout => \OBJ2|Mode2[20]~63\);

-- Location: FF_X1_Y35_N19
\OBJ2|Mode2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode2[20]~62_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(20));

-- Location: LCCOMB_X1_Y35_N20
\OBJ2|Mode2[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode2[21]~64_combout\ = \OBJ2|Mode2\(21) $ (\OBJ2|Mode2[20]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode2\(21),
	cin => \OBJ2|Mode2[20]~63\,
	combout => \OBJ2|Mode2[21]~64_combout\);

-- Location: FF_X1_Y35_N21
\OBJ2|Mode2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \OBJ2|Mode2[21]~64_combout\,
	ena => \OBJ2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode2\(21));

-- Location: LCCOMB_X4_Y36_N8
\OBJ2|Mode1[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[0]~24_combout\ = \OBJ2|Mode1\(0) $ (VCC)
-- \OBJ2|Mode1[0]~25\ = CARRY(\OBJ2|Mode1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(0),
	datad => VCC,
	combout => \OBJ2|Mode1[0]~24_combout\,
	cout => \OBJ2|Mode1[0]~25\);

-- Location: LCCOMB_X3_Y35_N0
\OBJ2|Mode1[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[23]~72_combout\ = (!\OBJ1|obj9|debounced~q\ & !\OBJ1|obj8|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj9|debounced~q\,
	datac => \OBJ1|obj8|debounced~q\,
	combout => \OBJ2|Mode1[23]~72_combout\);

-- Location: FF_X4_Y36_N9
\OBJ2|Mode1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[0]~24_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(0));

-- Location: LCCOMB_X4_Y36_N10
\OBJ2|Mode1[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[1]~26_combout\ = (\OBJ2|Mode1\(1) & (!\OBJ2|Mode1[0]~25\)) # (!\OBJ2|Mode1\(1) & ((\OBJ2|Mode1[0]~25\) # (GND)))
-- \OBJ2|Mode1[1]~27\ = CARRY((!\OBJ2|Mode1[0]~25\) # (!\OBJ2|Mode1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(1),
	datad => VCC,
	cin => \OBJ2|Mode1[0]~25\,
	combout => \OBJ2|Mode1[1]~26_combout\,
	cout => \OBJ2|Mode1[1]~27\);

-- Location: FF_X4_Y36_N11
\OBJ2|Mode1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[1]~26_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(1));

-- Location: LCCOMB_X4_Y36_N12
\OBJ2|Mode1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[2]~28_combout\ = (\OBJ2|Mode1\(2) & (\OBJ2|Mode1[1]~27\ $ (GND))) # (!\OBJ2|Mode1\(2) & (!\OBJ2|Mode1[1]~27\ & VCC))
-- \OBJ2|Mode1[2]~29\ = CARRY((\OBJ2|Mode1\(2) & !\OBJ2|Mode1[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(2),
	datad => VCC,
	cin => \OBJ2|Mode1[1]~27\,
	combout => \OBJ2|Mode1[2]~28_combout\,
	cout => \OBJ2|Mode1[2]~29\);

-- Location: FF_X4_Y36_N13
\OBJ2|Mode1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[2]~28_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(2));

-- Location: LCCOMB_X4_Y36_N14
\OBJ2|Mode1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[3]~30_combout\ = (\OBJ2|Mode1\(3) & (!\OBJ2|Mode1[2]~29\)) # (!\OBJ2|Mode1\(3) & ((\OBJ2|Mode1[2]~29\) # (GND)))
-- \OBJ2|Mode1[3]~31\ = CARRY((!\OBJ2|Mode1[2]~29\) # (!\OBJ2|Mode1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(3),
	datad => VCC,
	cin => \OBJ2|Mode1[2]~29\,
	combout => \OBJ2|Mode1[3]~30_combout\,
	cout => \OBJ2|Mode1[3]~31\);

-- Location: FF_X4_Y36_N15
\OBJ2|Mode1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[3]~30_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(3));

-- Location: LCCOMB_X4_Y36_N16
\OBJ2|Mode1[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[4]~32_combout\ = (\OBJ2|Mode1\(4) & (\OBJ2|Mode1[3]~31\ $ (GND))) # (!\OBJ2|Mode1\(4) & (!\OBJ2|Mode1[3]~31\ & VCC))
-- \OBJ2|Mode1[4]~33\ = CARRY((\OBJ2|Mode1\(4) & !\OBJ2|Mode1[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(4),
	datad => VCC,
	cin => \OBJ2|Mode1[3]~31\,
	combout => \OBJ2|Mode1[4]~32_combout\,
	cout => \OBJ2|Mode1[4]~33\);

-- Location: FF_X4_Y36_N17
\OBJ2|Mode1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[4]~32_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(4));

-- Location: LCCOMB_X4_Y36_N18
\OBJ2|Mode1[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[5]~34_combout\ = (\OBJ2|Mode1\(5) & (!\OBJ2|Mode1[4]~33\)) # (!\OBJ2|Mode1\(5) & ((\OBJ2|Mode1[4]~33\) # (GND)))
-- \OBJ2|Mode1[5]~35\ = CARRY((!\OBJ2|Mode1[4]~33\) # (!\OBJ2|Mode1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(5),
	datad => VCC,
	cin => \OBJ2|Mode1[4]~33\,
	combout => \OBJ2|Mode1[5]~34_combout\,
	cout => \OBJ2|Mode1[5]~35\);

-- Location: FF_X4_Y36_N19
\OBJ2|Mode1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[5]~34_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(5));

-- Location: LCCOMB_X4_Y36_N20
\OBJ2|Mode1[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[6]~36_combout\ = (\OBJ2|Mode1\(6) & (\OBJ2|Mode1[5]~35\ $ (GND))) # (!\OBJ2|Mode1\(6) & (!\OBJ2|Mode1[5]~35\ & VCC))
-- \OBJ2|Mode1[6]~37\ = CARRY((\OBJ2|Mode1\(6) & !\OBJ2|Mode1[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(6),
	datad => VCC,
	cin => \OBJ2|Mode1[5]~35\,
	combout => \OBJ2|Mode1[6]~36_combout\,
	cout => \OBJ2|Mode1[6]~37\);

-- Location: FF_X4_Y36_N21
\OBJ2|Mode1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[6]~36_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(6));

-- Location: LCCOMB_X4_Y36_N22
\OBJ2|Mode1[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[7]~38_combout\ = (\OBJ2|Mode1\(7) & (!\OBJ2|Mode1[6]~37\)) # (!\OBJ2|Mode1\(7) & ((\OBJ2|Mode1[6]~37\) # (GND)))
-- \OBJ2|Mode1[7]~39\ = CARRY((!\OBJ2|Mode1[6]~37\) # (!\OBJ2|Mode1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(7),
	datad => VCC,
	cin => \OBJ2|Mode1[6]~37\,
	combout => \OBJ2|Mode1[7]~38_combout\,
	cout => \OBJ2|Mode1[7]~39\);

-- Location: FF_X4_Y36_N23
\OBJ2|Mode1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[7]~38_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(7));

-- Location: LCCOMB_X4_Y36_N24
\OBJ2|Mode1[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[8]~40_combout\ = (\OBJ2|Mode1\(8) & (\OBJ2|Mode1[7]~39\ $ (GND))) # (!\OBJ2|Mode1\(8) & (!\OBJ2|Mode1[7]~39\ & VCC))
-- \OBJ2|Mode1[8]~41\ = CARRY((\OBJ2|Mode1\(8) & !\OBJ2|Mode1[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(8),
	datad => VCC,
	cin => \OBJ2|Mode1[7]~39\,
	combout => \OBJ2|Mode1[8]~40_combout\,
	cout => \OBJ2|Mode1[8]~41\);

-- Location: FF_X4_Y36_N25
\OBJ2|Mode1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[8]~40_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(8));

-- Location: LCCOMB_X4_Y36_N26
\OBJ2|Mode1[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[9]~42_combout\ = (\OBJ2|Mode1\(9) & (!\OBJ2|Mode1[8]~41\)) # (!\OBJ2|Mode1\(9) & ((\OBJ2|Mode1[8]~41\) # (GND)))
-- \OBJ2|Mode1[9]~43\ = CARRY((!\OBJ2|Mode1[8]~41\) # (!\OBJ2|Mode1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(9),
	datad => VCC,
	cin => \OBJ2|Mode1[8]~41\,
	combout => \OBJ2|Mode1[9]~42_combout\,
	cout => \OBJ2|Mode1[9]~43\);

-- Location: FF_X4_Y36_N27
\OBJ2|Mode1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[9]~42_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(9));

-- Location: LCCOMB_X4_Y36_N28
\OBJ2|Mode1[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[10]~44_combout\ = (\OBJ2|Mode1\(10) & (\OBJ2|Mode1[9]~43\ $ (GND))) # (!\OBJ2|Mode1\(10) & (!\OBJ2|Mode1[9]~43\ & VCC))
-- \OBJ2|Mode1[10]~45\ = CARRY((\OBJ2|Mode1\(10) & !\OBJ2|Mode1[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(10),
	datad => VCC,
	cin => \OBJ2|Mode1[9]~43\,
	combout => \OBJ2|Mode1[10]~44_combout\,
	cout => \OBJ2|Mode1[10]~45\);

-- Location: FF_X4_Y36_N29
\OBJ2|Mode1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[10]~44_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(10));

-- Location: LCCOMB_X4_Y36_N30
\OBJ2|Mode1[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[11]~46_combout\ = (\OBJ2|Mode1\(11) & (!\OBJ2|Mode1[10]~45\)) # (!\OBJ2|Mode1\(11) & ((\OBJ2|Mode1[10]~45\) # (GND)))
-- \OBJ2|Mode1[11]~47\ = CARRY((!\OBJ2|Mode1[10]~45\) # (!\OBJ2|Mode1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(11),
	datad => VCC,
	cin => \OBJ2|Mode1[10]~45\,
	combout => \OBJ2|Mode1[11]~46_combout\,
	cout => \OBJ2|Mode1[11]~47\);

-- Location: FF_X4_Y36_N31
\OBJ2|Mode1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[11]~46_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(11));

-- Location: LCCOMB_X4_Y35_N0
\OBJ2|Mode1[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[12]~48_combout\ = (\OBJ2|Mode1\(12) & (\OBJ2|Mode1[11]~47\ $ (GND))) # (!\OBJ2|Mode1\(12) & (!\OBJ2|Mode1[11]~47\ & VCC))
-- \OBJ2|Mode1[12]~49\ = CARRY((\OBJ2|Mode1\(12) & !\OBJ2|Mode1[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(12),
	datad => VCC,
	cin => \OBJ2|Mode1[11]~47\,
	combout => \OBJ2|Mode1[12]~48_combout\,
	cout => \OBJ2|Mode1[12]~49\);

-- Location: FF_X4_Y35_N1
\OBJ2|Mode1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[12]~48_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(12));

-- Location: LCCOMB_X4_Y35_N2
\OBJ2|Mode1[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[13]~50_combout\ = (\OBJ2|Mode1\(13) & (!\OBJ2|Mode1[12]~49\)) # (!\OBJ2|Mode1\(13) & ((\OBJ2|Mode1[12]~49\) # (GND)))
-- \OBJ2|Mode1[13]~51\ = CARRY((!\OBJ2|Mode1[12]~49\) # (!\OBJ2|Mode1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(13),
	datad => VCC,
	cin => \OBJ2|Mode1[12]~49\,
	combout => \OBJ2|Mode1[13]~50_combout\,
	cout => \OBJ2|Mode1[13]~51\);

-- Location: FF_X4_Y35_N3
\OBJ2|Mode1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[13]~50_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(13));

-- Location: LCCOMB_X4_Y35_N4
\OBJ2|Mode1[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[14]~52_combout\ = (\OBJ2|Mode1\(14) & (\OBJ2|Mode1[13]~51\ $ (GND))) # (!\OBJ2|Mode1\(14) & (!\OBJ2|Mode1[13]~51\ & VCC))
-- \OBJ2|Mode1[14]~53\ = CARRY((\OBJ2|Mode1\(14) & !\OBJ2|Mode1[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(14),
	datad => VCC,
	cin => \OBJ2|Mode1[13]~51\,
	combout => \OBJ2|Mode1[14]~52_combout\,
	cout => \OBJ2|Mode1[14]~53\);

-- Location: FF_X4_Y35_N5
\OBJ2|Mode1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[14]~52_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(14));

-- Location: LCCOMB_X4_Y35_N6
\OBJ2|Mode1[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[15]~54_combout\ = (\OBJ2|Mode1\(15) & (!\OBJ2|Mode1[14]~53\)) # (!\OBJ2|Mode1\(15) & ((\OBJ2|Mode1[14]~53\) # (GND)))
-- \OBJ2|Mode1[15]~55\ = CARRY((!\OBJ2|Mode1[14]~53\) # (!\OBJ2|Mode1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(15),
	datad => VCC,
	cin => \OBJ2|Mode1[14]~53\,
	combout => \OBJ2|Mode1[15]~54_combout\,
	cout => \OBJ2|Mode1[15]~55\);

-- Location: FF_X4_Y35_N7
\OBJ2|Mode1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[15]~54_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(15));

-- Location: LCCOMB_X4_Y35_N8
\OBJ2|Mode1[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[16]~56_combout\ = (\OBJ2|Mode1\(16) & (\OBJ2|Mode1[15]~55\ $ (GND))) # (!\OBJ2|Mode1\(16) & (!\OBJ2|Mode1[15]~55\ & VCC))
-- \OBJ2|Mode1[16]~57\ = CARRY((\OBJ2|Mode1\(16) & !\OBJ2|Mode1[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(16),
	datad => VCC,
	cin => \OBJ2|Mode1[15]~55\,
	combout => \OBJ2|Mode1[16]~56_combout\,
	cout => \OBJ2|Mode1[16]~57\);

-- Location: FF_X4_Y35_N9
\OBJ2|Mode1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[16]~56_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(16));

-- Location: LCCOMB_X4_Y35_N10
\OBJ2|Mode1[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[17]~58_combout\ = (\OBJ2|Mode1\(17) & (!\OBJ2|Mode1[16]~57\)) # (!\OBJ2|Mode1\(17) & ((\OBJ2|Mode1[16]~57\) # (GND)))
-- \OBJ2|Mode1[17]~59\ = CARRY((!\OBJ2|Mode1[16]~57\) # (!\OBJ2|Mode1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(17),
	datad => VCC,
	cin => \OBJ2|Mode1[16]~57\,
	combout => \OBJ2|Mode1[17]~58_combout\,
	cout => \OBJ2|Mode1[17]~59\);

-- Location: FF_X4_Y35_N11
\OBJ2|Mode1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[17]~58_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(17));

-- Location: LCCOMB_X4_Y35_N12
\OBJ2|Mode1[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[18]~60_combout\ = (\OBJ2|Mode1\(18) & (\OBJ2|Mode1[17]~59\ $ (GND))) # (!\OBJ2|Mode1\(18) & (!\OBJ2|Mode1[17]~59\ & VCC))
-- \OBJ2|Mode1[18]~61\ = CARRY((\OBJ2|Mode1\(18) & !\OBJ2|Mode1[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(18),
	datad => VCC,
	cin => \OBJ2|Mode1[17]~59\,
	combout => \OBJ2|Mode1[18]~60_combout\,
	cout => \OBJ2|Mode1[18]~61\);

-- Location: FF_X4_Y35_N13
\OBJ2|Mode1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[18]~60_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(18));

-- Location: LCCOMB_X4_Y35_N14
\OBJ2|Mode1[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[19]~62_combout\ = (\OBJ2|Mode1\(19) & (!\OBJ2|Mode1[18]~61\)) # (!\OBJ2|Mode1\(19) & ((\OBJ2|Mode1[18]~61\) # (GND)))
-- \OBJ2|Mode1[19]~63\ = CARRY((!\OBJ2|Mode1[18]~61\) # (!\OBJ2|Mode1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(19),
	datad => VCC,
	cin => \OBJ2|Mode1[18]~61\,
	combout => \OBJ2|Mode1[19]~62_combout\,
	cout => \OBJ2|Mode1[19]~63\);

-- Location: FF_X4_Y35_N15
\OBJ2|Mode1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[19]~62_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(19));

-- Location: LCCOMB_X4_Y35_N16
\OBJ2|Mode1[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[20]~64_combout\ = (\OBJ2|Mode1\(20) & (\OBJ2|Mode1[19]~63\ $ (GND))) # (!\OBJ2|Mode1\(20) & (!\OBJ2|Mode1[19]~63\ & VCC))
-- \OBJ2|Mode1[20]~65\ = CARRY((\OBJ2|Mode1\(20) & !\OBJ2|Mode1[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(20),
	datad => VCC,
	cin => \OBJ2|Mode1[19]~63\,
	combout => \OBJ2|Mode1[20]~64_combout\,
	cout => \OBJ2|Mode1[20]~65\);

-- Location: FF_X4_Y35_N17
\OBJ2|Mode1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[20]~64_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(20));

-- Location: LCCOMB_X4_Y35_N18
\OBJ2|Mode1[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[21]~66_combout\ = (\OBJ2|Mode1\(21) & (!\OBJ2|Mode1[20]~65\)) # (!\OBJ2|Mode1\(21) & ((\OBJ2|Mode1[20]~65\) # (GND)))
-- \OBJ2|Mode1[21]~67\ = CARRY((!\OBJ2|Mode1[20]~65\) # (!\OBJ2|Mode1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(21),
	datad => VCC,
	cin => \OBJ2|Mode1[20]~65\,
	combout => \OBJ2|Mode1[21]~66_combout\,
	cout => \OBJ2|Mode1[21]~67\);

-- Location: FF_X4_Y35_N19
\OBJ2|Mode1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[21]~66_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(21));

-- Location: LCCOMB_X4_Y35_N20
\OBJ2|Mode1[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[22]~68_combout\ = (\OBJ2|Mode1\(22) & (\OBJ2|Mode1[21]~67\ $ (GND))) # (!\OBJ2|Mode1\(22) & (!\OBJ2|Mode1[21]~67\ & VCC))
-- \OBJ2|Mode1[22]~69\ = CARRY((\OBJ2|Mode1\(22) & !\OBJ2|Mode1[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode1\(22),
	datad => VCC,
	cin => \OBJ2|Mode1[21]~67\,
	combout => \OBJ2|Mode1[22]~68_combout\,
	cout => \OBJ2|Mode1[22]~69\);

-- Location: FF_X4_Y35_N21
\OBJ2|Mode1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode1[22]~68_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(22));

-- Location: LCCOMB_X4_Y35_N22
\OBJ2|Mode1[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode1[23]~70_combout\ = \OBJ2|Mode1\(23) $ (\OBJ2|Mode1[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode1\(23),
	cin => \OBJ2|Mode1[22]~69\,
	combout => \OBJ2|Mode1[23]~70_combout\);

-- Location: FF_X4_Y35_N23
\OBJ2|Mode1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \OBJ2|Mode1[23]~70_combout\,
	ena => \OBJ2|Mode1[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode1\(23));

-- Location: LCCOMB_X2_Y35_N0
\OBJ2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mux0~0_combout\ = (\OBJ1|obj9|debounced~q\ & (((\OBJ1|obj8|debounced~q\)))) # (!\OBJ1|obj9|debounced~q\ & ((\OBJ1|obj8|debounced~q\ & (\OBJ2|Mode2\(21))) # (!\OBJ1|obj8|debounced~q\ & ((\OBJ2|Mode1\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj9|debounced~q\,
	datab => \OBJ2|Mode2\(21),
	datac => \OBJ2|Mode1\(23),
	datad => \OBJ1|obj8|debounced~q\,
	combout => \OBJ2|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y35_N12
\OBJ2|Mode3[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[0]~20_combout\ = \OBJ2|Mode3\(0) $ (VCC)
-- \OBJ2|Mode3[0]~21\ = CARRY(\OBJ2|Mode3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(0),
	datad => VCC,
	combout => \OBJ2|Mode3[0]~20_combout\,
	cout => \OBJ2|Mode3[0]~21\);

-- Location: LCCOMB_X2_Y35_N8
\OBJ2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Equal2~1_combout\ = (!\OBJ1|obj8|debounced~q\ & \OBJ1|obj9|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj8|debounced~q\,
	datac => \OBJ1|obj9|debounced~q\,
	combout => \OBJ2|Equal2~1_combout\);

-- Location: FF_X2_Y35_N13
\OBJ2|Mode3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[0]~20_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(0));

-- Location: LCCOMB_X2_Y35_N14
\OBJ2|Mode3[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[1]~22_combout\ = (\OBJ2|Mode3\(1) & (!\OBJ2|Mode3[0]~21\)) # (!\OBJ2|Mode3\(1) & ((\OBJ2|Mode3[0]~21\) # (GND)))
-- \OBJ2|Mode3[1]~23\ = CARRY((!\OBJ2|Mode3[0]~21\) # (!\OBJ2|Mode3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(1),
	datad => VCC,
	cin => \OBJ2|Mode3[0]~21\,
	combout => \OBJ2|Mode3[1]~22_combout\,
	cout => \OBJ2|Mode3[1]~23\);

-- Location: FF_X2_Y35_N15
\OBJ2|Mode3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[1]~22_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(1));

-- Location: LCCOMB_X2_Y35_N16
\OBJ2|Mode3[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[2]~24_combout\ = (\OBJ2|Mode3\(2) & (\OBJ2|Mode3[1]~23\ $ (GND))) # (!\OBJ2|Mode3\(2) & (!\OBJ2|Mode3[1]~23\ & VCC))
-- \OBJ2|Mode3[2]~25\ = CARRY((\OBJ2|Mode3\(2) & !\OBJ2|Mode3[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(2),
	datad => VCC,
	cin => \OBJ2|Mode3[1]~23\,
	combout => \OBJ2|Mode3[2]~24_combout\,
	cout => \OBJ2|Mode3[2]~25\);

-- Location: FF_X2_Y35_N17
\OBJ2|Mode3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[2]~24_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(2));

-- Location: LCCOMB_X2_Y35_N18
\OBJ2|Mode3[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[3]~26_combout\ = (\OBJ2|Mode3\(3) & (!\OBJ2|Mode3[2]~25\)) # (!\OBJ2|Mode3\(3) & ((\OBJ2|Mode3[2]~25\) # (GND)))
-- \OBJ2|Mode3[3]~27\ = CARRY((!\OBJ2|Mode3[2]~25\) # (!\OBJ2|Mode3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(3),
	datad => VCC,
	cin => \OBJ2|Mode3[2]~25\,
	combout => \OBJ2|Mode3[3]~26_combout\,
	cout => \OBJ2|Mode3[3]~27\);

-- Location: FF_X2_Y35_N19
\OBJ2|Mode3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[3]~26_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(3));

-- Location: LCCOMB_X2_Y35_N20
\OBJ2|Mode3[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[4]~28_combout\ = (\OBJ2|Mode3\(4) & (\OBJ2|Mode3[3]~27\ $ (GND))) # (!\OBJ2|Mode3\(4) & (!\OBJ2|Mode3[3]~27\ & VCC))
-- \OBJ2|Mode3[4]~29\ = CARRY((\OBJ2|Mode3\(4) & !\OBJ2|Mode3[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(4),
	datad => VCC,
	cin => \OBJ2|Mode3[3]~27\,
	combout => \OBJ2|Mode3[4]~28_combout\,
	cout => \OBJ2|Mode3[4]~29\);

-- Location: FF_X2_Y35_N21
\OBJ2|Mode3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[4]~28_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(4));

-- Location: LCCOMB_X2_Y35_N22
\OBJ2|Mode3[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[5]~30_combout\ = (\OBJ2|Mode3\(5) & (!\OBJ2|Mode3[4]~29\)) # (!\OBJ2|Mode3\(5) & ((\OBJ2|Mode3[4]~29\) # (GND)))
-- \OBJ2|Mode3[5]~31\ = CARRY((!\OBJ2|Mode3[4]~29\) # (!\OBJ2|Mode3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(5),
	datad => VCC,
	cin => \OBJ2|Mode3[4]~29\,
	combout => \OBJ2|Mode3[5]~30_combout\,
	cout => \OBJ2|Mode3[5]~31\);

-- Location: FF_X2_Y35_N23
\OBJ2|Mode3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[5]~30_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(5));

-- Location: LCCOMB_X2_Y35_N24
\OBJ2|Mode3[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[6]~32_combout\ = (\OBJ2|Mode3\(6) & (\OBJ2|Mode3[5]~31\ $ (GND))) # (!\OBJ2|Mode3\(6) & (!\OBJ2|Mode3[5]~31\ & VCC))
-- \OBJ2|Mode3[6]~33\ = CARRY((\OBJ2|Mode3\(6) & !\OBJ2|Mode3[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(6),
	datad => VCC,
	cin => \OBJ2|Mode3[5]~31\,
	combout => \OBJ2|Mode3[6]~32_combout\,
	cout => \OBJ2|Mode3[6]~33\);

-- Location: FF_X2_Y35_N25
\OBJ2|Mode3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[6]~32_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(6));

-- Location: LCCOMB_X2_Y35_N26
\OBJ2|Mode3[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[7]~34_combout\ = (\OBJ2|Mode3\(7) & (!\OBJ2|Mode3[6]~33\)) # (!\OBJ2|Mode3\(7) & ((\OBJ2|Mode3[6]~33\) # (GND)))
-- \OBJ2|Mode3[7]~35\ = CARRY((!\OBJ2|Mode3[6]~33\) # (!\OBJ2|Mode3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(7),
	datad => VCC,
	cin => \OBJ2|Mode3[6]~33\,
	combout => \OBJ2|Mode3[7]~34_combout\,
	cout => \OBJ2|Mode3[7]~35\);

-- Location: FF_X2_Y35_N27
\OBJ2|Mode3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[7]~34_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(7));

-- Location: LCCOMB_X2_Y35_N28
\OBJ2|Mode3[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[8]~36_combout\ = (\OBJ2|Mode3\(8) & (\OBJ2|Mode3[7]~35\ $ (GND))) # (!\OBJ2|Mode3\(8) & (!\OBJ2|Mode3[7]~35\ & VCC))
-- \OBJ2|Mode3[8]~37\ = CARRY((\OBJ2|Mode3\(8) & !\OBJ2|Mode3[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(8),
	datad => VCC,
	cin => \OBJ2|Mode3[7]~35\,
	combout => \OBJ2|Mode3[8]~36_combout\,
	cout => \OBJ2|Mode3[8]~37\);

-- Location: FF_X2_Y35_N29
\OBJ2|Mode3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[8]~36_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(8));

-- Location: LCCOMB_X2_Y35_N30
\OBJ2|Mode3[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[9]~38_combout\ = (\OBJ2|Mode3\(9) & (!\OBJ2|Mode3[8]~37\)) # (!\OBJ2|Mode3\(9) & ((\OBJ2|Mode3[8]~37\) # (GND)))
-- \OBJ2|Mode3[9]~39\ = CARRY((!\OBJ2|Mode3[8]~37\) # (!\OBJ2|Mode3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(9),
	datad => VCC,
	cin => \OBJ2|Mode3[8]~37\,
	combout => \OBJ2|Mode3[9]~38_combout\,
	cout => \OBJ2|Mode3[9]~39\);

-- Location: FF_X2_Y35_N31
\OBJ2|Mode3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[9]~38_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(9));

-- Location: LCCOMB_X2_Y34_N0
\OBJ2|Mode3[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[10]~40_combout\ = (\OBJ2|Mode3\(10) & (\OBJ2|Mode3[9]~39\ $ (GND))) # (!\OBJ2|Mode3\(10) & (!\OBJ2|Mode3[9]~39\ & VCC))
-- \OBJ2|Mode3[10]~41\ = CARRY((\OBJ2|Mode3\(10) & !\OBJ2|Mode3[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(10),
	datad => VCC,
	cin => \OBJ2|Mode3[9]~39\,
	combout => \OBJ2|Mode3[10]~40_combout\,
	cout => \OBJ2|Mode3[10]~41\);

-- Location: FF_X2_Y34_N1
\OBJ2|Mode3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[10]~40_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(10));

-- Location: LCCOMB_X2_Y34_N2
\OBJ2|Mode3[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[11]~42_combout\ = (\OBJ2|Mode3\(11) & (!\OBJ2|Mode3[10]~41\)) # (!\OBJ2|Mode3\(11) & ((\OBJ2|Mode3[10]~41\) # (GND)))
-- \OBJ2|Mode3[11]~43\ = CARRY((!\OBJ2|Mode3[10]~41\) # (!\OBJ2|Mode3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(11),
	datad => VCC,
	cin => \OBJ2|Mode3[10]~41\,
	combout => \OBJ2|Mode3[11]~42_combout\,
	cout => \OBJ2|Mode3[11]~43\);

-- Location: FF_X2_Y34_N3
\OBJ2|Mode3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[11]~42_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(11));

-- Location: LCCOMB_X2_Y34_N4
\OBJ2|Mode3[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[12]~44_combout\ = (\OBJ2|Mode3\(12) & (\OBJ2|Mode3[11]~43\ $ (GND))) # (!\OBJ2|Mode3\(12) & (!\OBJ2|Mode3[11]~43\ & VCC))
-- \OBJ2|Mode3[12]~45\ = CARRY((\OBJ2|Mode3\(12) & !\OBJ2|Mode3[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(12),
	datad => VCC,
	cin => \OBJ2|Mode3[11]~43\,
	combout => \OBJ2|Mode3[12]~44_combout\,
	cout => \OBJ2|Mode3[12]~45\);

-- Location: FF_X2_Y34_N5
\OBJ2|Mode3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[12]~44_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(12));

-- Location: LCCOMB_X2_Y34_N6
\OBJ2|Mode3[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[13]~46_combout\ = (\OBJ2|Mode3\(13) & (!\OBJ2|Mode3[12]~45\)) # (!\OBJ2|Mode3\(13) & ((\OBJ2|Mode3[12]~45\) # (GND)))
-- \OBJ2|Mode3[13]~47\ = CARRY((!\OBJ2|Mode3[12]~45\) # (!\OBJ2|Mode3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(13),
	datad => VCC,
	cin => \OBJ2|Mode3[12]~45\,
	combout => \OBJ2|Mode3[13]~46_combout\,
	cout => \OBJ2|Mode3[13]~47\);

-- Location: FF_X2_Y34_N7
\OBJ2|Mode3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[13]~46_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(13));

-- Location: LCCOMB_X2_Y34_N8
\OBJ2|Mode3[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[14]~48_combout\ = (\OBJ2|Mode3\(14) & (\OBJ2|Mode3[13]~47\ $ (GND))) # (!\OBJ2|Mode3\(14) & (!\OBJ2|Mode3[13]~47\ & VCC))
-- \OBJ2|Mode3[14]~49\ = CARRY((\OBJ2|Mode3\(14) & !\OBJ2|Mode3[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(14),
	datad => VCC,
	cin => \OBJ2|Mode3[13]~47\,
	combout => \OBJ2|Mode3[14]~48_combout\,
	cout => \OBJ2|Mode3[14]~49\);

-- Location: FF_X2_Y34_N9
\OBJ2|Mode3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[14]~48_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(14));

-- Location: LCCOMB_X2_Y34_N10
\OBJ2|Mode3[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[15]~50_combout\ = (\OBJ2|Mode3\(15) & (!\OBJ2|Mode3[14]~49\)) # (!\OBJ2|Mode3\(15) & ((\OBJ2|Mode3[14]~49\) # (GND)))
-- \OBJ2|Mode3[15]~51\ = CARRY((!\OBJ2|Mode3[14]~49\) # (!\OBJ2|Mode3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(15),
	datad => VCC,
	cin => \OBJ2|Mode3[14]~49\,
	combout => \OBJ2|Mode3[15]~50_combout\,
	cout => \OBJ2|Mode3[15]~51\);

-- Location: FF_X2_Y34_N11
\OBJ2|Mode3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[15]~50_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(15));

-- Location: LCCOMB_X2_Y34_N12
\OBJ2|Mode3[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[16]~52_combout\ = (\OBJ2|Mode3\(16) & (\OBJ2|Mode3[15]~51\ $ (GND))) # (!\OBJ2|Mode3\(16) & (!\OBJ2|Mode3[15]~51\ & VCC))
-- \OBJ2|Mode3[16]~53\ = CARRY((\OBJ2|Mode3\(16) & !\OBJ2|Mode3[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode3\(16),
	datad => VCC,
	cin => \OBJ2|Mode3[15]~51\,
	combout => \OBJ2|Mode3[16]~52_combout\,
	cout => \OBJ2|Mode3[16]~53\);

-- Location: FF_X2_Y34_N13
\OBJ2|Mode3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[16]~52_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(16));

-- Location: LCCOMB_X2_Y34_N14
\OBJ2|Mode3[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[17]~54_combout\ = (\OBJ2|Mode3\(17) & (!\OBJ2|Mode3[16]~53\)) # (!\OBJ2|Mode3\(17) & ((\OBJ2|Mode3[16]~53\) # (GND)))
-- \OBJ2|Mode3[17]~55\ = CARRY((!\OBJ2|Mode3[16]~53\) # (!\OBJ2|Mode3\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(17),
	datad => VCC,
	cin => \OBJ2|Mode3[16]~53\,
	combout => \OBJ2|Mode3[17]~54_combout\,
	cout => \OBJ2|Mode3[17]~55\);

-- Location: FF_X2_Y34_N15
\OBJ2|Mode3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[17]~54_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(17));

-- Location: LCCOMB_X2_Y34_N16
\OBJ2|Mode3[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[18]~56_combout\ = (\OBJ2|Mode3\(18) & (\OBJ2|Mode3[17]~55\ $ (GND))) # (!\OBJ2|Mode3\(18) & (!\OBJ2|Mode3[17]~55\ & VCC))
-- \OBJ2|Mode3[18]~57\ = CARRY((\OBJ2|Mode3\(18) & !\OBJ2|Mode3[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(18),
	datad => VCC,
	cin => \OBJ2|Mode3[17]~55\,
	combout => \OBJ2|Mode3[18]~56_combout\,
	cout => \OBJ2|Mode3[18]~57\);

-- Location: FF_X2_Y34_N17
\OBJ2|Mode3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ2|Mode3[18]~56_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(18));

-- Location: LCCOMB_X2_Y34_N18
\OBJ2|Mode3[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mode3[19]~58_combout\ = \OBJ2|Mode3\(19) $ (\OBJ2|Mode3[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ2|Mode3\(19),
	cin => \OBJ2|Mode3[18]~57\,
	combout => \OBJ2|Mode3[19]~58_combout\);

-- Location: FF_X2_Y34_N19
\OBJ2|Mode3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \OBJ2|Mode3[19]~58_combout\,
	ena => \OBJ2|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ2|Mode3\(19));

-- Location: LCCOMB_X2_Y36_N16
\OBJ2|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ2|Mux0~combout\ = LCELL((\OBJ2|Mux0~0_combout\ & ((\OBJ2|Mode4\(25)) # ((!\OBJ1|obj9|debounced~q\)))) # (!\OBJ2|Mux0~0_combout\ & (((\OBJ1|obj9|debounced~q\ & \OBJ2|Mode3\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ2|Mode4\(25),
	datab => \OBJ2|Mux0~0_combout\,
	datac => \OBJ1|obj9|debounced~q\,
	datad => \OBJ2|Mode3\(19),
	combout => \OBJ2|Mux0~combout\);

-- Location: CLKCTRL_G3
\OBJ2|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \OBJ2|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \OBJ2|Mux0~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X108_Y29_N8
\OBJ1|obj4|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|DEBOUNCE_PROC~0_combout\ = \KEY[3]~input_o\ $ (\OBJ1|obj4|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \OBJ1|obj4|debounced~q\,
	combout => \OBJ1|obj4|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X108_Y29_N22
\OBJ1|obj4|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj4|counter\(0) & (!\OBJ1|obj4|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj4|LessThan0~0_combout\)) # (!\OBJ1|obj4|counter\(0) & ((\OBJ1|obj4|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj4|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj4|counter\(0),
	datad => \OBJ1|obj4|LessThan0~0_combout\,
	combout => \OBJ1|obj4|counter[0]~2_combout\);

-- Location: FF_X108_Y29_N23
\OBJ1|obj4|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj4|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj4|counter\(0));

-- Location: LCCOMB_X108_Y29_N6
\OBJ1|obj4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|Add0~0_combout\ = (\OBJ1|obj4|counter\(0) & \OBJ1|obj4|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj4|counter\(0),
	datad => \OBJ1|obj4|counter\(1),
	combout => \OBJ1|obj4|Add0~0_combout\);

-- Location: LCCOMB_X108_Y29_N4
\OBJ1|obj4|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[2]~4_combout\ = (\OBJ1|obj4|counter\(3) & (!\OBJ1|obj4|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj4|counter\(2)))) # (!\OBJ1|obj4|counter\(3) & ((\OBJ1|obj4|counter\(2) $ (\OBJ1|obj4|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj4|counter\(3),
	datab => \OBJ1|obj4|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj4|counter\(2),
	datad => \OBJ1|obj4|Add0~0_combout\,
	combout => \OBJ1|obj4|counter[2]~4_combout\);

-- Location: FF_X108_Y29_N5
\OBJ1|obj4|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj4|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj4|counter\(2));

-- Location: LCCOMB_X108_Y29_N16
\OBJ1|obj4|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[3]~5_combout\ = (\OBJ1|obj4|counter\(2) & (((!\OBJ1|obj4|counter\(3))))) # (!\OBJ1|obj4|counter\(2) & (!\OBJ1|obj4|counter\(0) & (!\OBJ1|obj4|counter\(1) & \OBJ1|obj4|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj4|counter\(0),
	datab => \OBJ1|obj4|counter\(1),
	datac => \OBJ1|obj4|counter\(2),
	datad => \OBJ1|obj4|counter\(3),
	combout => \OBJ1|obj4|counter[3]~5_combout\);

-- Location: LCCOMB_X108_Y29_N18
\OBJ1|obj4|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[3]~6_combout\ = (\OBJ1|obj4|counter\(3) & (((\OBJ1|obj4|counter[3]~5_combout\) # (!\OBJ1|obj4|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj4|counter\(3) & (\OBJ1|obj4|Add0~0_combout\ & ((\OBJ1|obj4|counter[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj4|Add0~0_combout\,
	datab => \OBJ1|obj4|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj4|counter\(3),
	datad => \OBJ1|obj4|counter[3]~5_combout\,
	combout => \OBJ1|obj4|counter[3]~6_combout\);

-- Location: FF_X108_Y29_N19
\OBJ1|obj4|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj4|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj4|counter\(3));

-- Location: LCCOMB_X108_Y29_N10
\OBJ1|obj4|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[1]~7_combout\ = \OBJ1|obj4|counter\(1) $ (((!\OBJ1|obj4|counter\(3) & \OBJ1|obj4|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj4|counter\(3),
	datac => \OBJ1|obj4|counter\(0),
	datad => \OBJ1|obj4|counter\(1),
	combout => \OBJ1|obj4|counter[1]~7_combout\);

-- Location: LCCOMB_X108_Y29_N24
\OBJ1|obj4|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|counter[1]~3_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj4|counter[1]~7_combout\ & ((\OBJ1|obj4|LessThan0~0_combout\) # (!\OBJ1|obj4|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj4|counter[1]~7_combout\,
	datac => \OBJ1|obj4|DEBOUNCE_PROC~0_combout\,
	datad => \OBJ1|obj4|LessThan0~0_combout\,
	combout => \OBJ1|obj4|counter[1]~3_combout\);

-- Location: FF_X108_Y29_N25
\OBJ1|obj4|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj4|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj4|counter\(1));

-- Location: LCCOMB_X108_Y29_N2
\OBJ1|obj4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|LessThan0~0_combout\ = ((!\OBJ1|obj4|counter\(1) & (!\OBJ1|obj4|counter\(2) & !\OBJ1|obj4|counter\(0)))) # (!\OBJ1|obj4|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj4|counter\(1),
	datab => \OBJ1|obj4|counter\(2),
	datac => \OBJ1|obj4|counter\(0),
	datad => \OBJ1|obj4|counter\(3),
	combout => \OBJ1|obj4|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y29_N12
\OBJ1|obj4|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj4|debounced~0_combout\ = (\SW[17]~input_o\ & (\KEY[3]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj4|LessThan0~0_combout\ & ((\OBJ1|obj4|debounced~q\))) # (!\OBJ1|obj4|LessThan0~0_combout\ & (\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj4|debounced~q\,
	datad => \OBJ1|obj4|LessThan0~0_combout\,
	combout => \OBJ1|obj4|debounced~0_combout\);

-- Location: FF_X108_Y29_N13
\OBJ1|obj4|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj4|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj4|debounced~q\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X107_Y29_N20
\OBJ1|obj3|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|DEBOUNCE_PROC~0_combout\ = \KEY[2]~input_o\ $ (\OBJ1|obj3|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \OBJ1|obj3|debounced~q\,
	combout => \OBJ1|obj3|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X107_Y29_N22
\OBJ1|obj3|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj3|LessThan0~0_combout\ & (!\OBJ1|obj3|counter\(0))) # (!\OBJ1|obj3|LessThan0~0_combout\ & (\OBJ1|obj3|counter\(0) & !\OBJ1|obj3|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj3|LessThan0~0_combout\,
	datac => \OBJ1|obj3|counter\(0),
	datad => \OBJ1|obj3|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj3|counter[0]~2_combout\);

-- Location: FF_X107_Y29_N23
\OBJ1|obj3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj3|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj3|counter\(0));

-- Location: LCCOMB_X107_Y29_N6
\OBJ1|obj3|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[1]~7_combout\ = (\SW[17]~input_o\) # ((!\OBJ1|obj3|LessThan0~0_combout\ & (\OBJ1|obj3|debounced~q\ $ (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj3|debounced~q\,
	datac => \KEY[2]~input_o\,
	datad => \OBJ1|obj3|LessThan0~0_combout\,
	combout => \OBJ1|obj3|counter[1]~7_combout\);

-- Location: LCCOMB_X107_Y29_N4
\OBJ1|obj3|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[1]~3_combout\ = (!\OBJ1|obj3|counter[1]~7_combout\ & (\OBJ1|obj3|counter\(1) $ (((\OBJ1|obj3|counter\(0) & \OBJ1|obj3|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|counter\(0),
	datab => \OBJ1|obj3|LessThan0~0_combout\,
	datac => \OBJ1|obj3|counter\(1),
	datad => \OBJ1|obj3|counter[1]~7_combout\,
	combout => \OBJ1|obj3|counter[1]~3_combout\);

-- Location: FF_X107_Y29_N5
\OBJ1|obj3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj3|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj3|counter\(1));

-- Location: LCCOMB_X107_Y29_N30
\OBJ1|obj3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|Add0~0_combout\ = (\OBJ1|obj3|counter\(0) & \OBJ1|obj3|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|counter\(0),
	datad => \OBJ1|obj3|counter\(1),
	combout => \OBJ1|obj3|Add0~0_combout\);

-- Location: LCCOMB_X107_Y29_N28
\OBJ1|obj3|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[3]~5_combout\ = (\OBJ1|obj3|counter\(3) & (!\OBJ1|obj3|counter\(1) & (!\OBJ1|obj3|counter\(0) & !\OBJ1|obj3|counter\(2)))) # (!\OBJ1|obj3|counter\(3) & (((\OBJ1|obj3|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|counter\(1),
	datab => \OBJ1|obj3|counter\(3),
	datac => \OBJ1|obj3|counter\(0),
	datad => \OBJ1|obj3|counter\(2),
	combout => \OBJ1|obj3|counter[3]~5_combout\);

-- Location: LCCOMB_X107_Y29_N2
\OBJ1|obj3|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[3]~6_combout\ = (\OBJ1|obj3|counter\(3) & (((\OBJ1|obj3|counter[3]~5_combout\) # (!\OBJ1|obj3|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj3|counter\(3) & (\OBJ1|obj3|Add0~0_combout\ & ((\OBJ1|obj3|counter[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|Add0~0_combout\,
	datab => \OBJ1|obj3|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj3|counter\(3),
	datad => \OBJ1|obj3|counter[3]~5_combout\,
	combout => \OBJ1|obj3|counter[3]~6_combout\);

-- Location: FF_X107_Y29_N3
\OBJ1|obj3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj3|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj3|counter\(3));

-- Location: LCCOMB_X107_Y29_N24
\OBJ1|obj3|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|counter[2]~4_combout\ = (\OBJ1|obj3|counter\(3) & (((\OBJ1|obj3|counter\(2) & !\OBJ1|obj3|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj3|counter\(3) & (\OBJ1|obj3|Add0~0_combout\ $ ((\OBJ1|obj3|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|Add0~0_combout\,
	datab => \OBJ1|obj3|counter\(3),
	datac => \OBJ1|obj3|counter\(2),
	datad => \OBJ1|obj3|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj3|counter[2]~4_combout\);

-- Location: FF_X107_Y29_N25
\OBJ1|obj3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj3|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj3|counter\(2));

-- Location: LCCOMB_X107_Y29_N18
\OBJ1|obj3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|LessThan0~0_combout\ = ((!\OBJ1|obj3|counter\(0) & (!\OBJ1|obj3|counter\(2) & !\OBJ1|obj3|counter\(1)))) # (!\OBJ1|obj3|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|counter\(0),
	datab => \OBJ1|obj3|counter\(2),
	datac => \OBJ1|obj3|counter\(1),
	datad => \OBJ1|obj3|counter\(3),
	combout => \OBJ1|obj3|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y29_N16
\OBJ1|obj3|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj3|debounced~0_combout\ = (\SW[17]~input_o\ & (\KEY[2]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj3|LessThan0~0_combout\ & ((\OBJ1|obj3|debounced~q\))) # (!\OBJ1|obj3|LessThan0~0_combout\ & (\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj3|debounced~q\,
	datad => \OBJ1|obj3|LessThan0~0_combout\,
	combout => \OBJ1|obj3|debounced~0_combout\);

-- Location: FF_X107_Y29_N17
\OBJ1|obj3|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj3|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj3|debounced~q\);

-- Location: LCCOMB_X103_Y29_N28
\OBJ3|OBJ3|OBJ1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|process_0~0_combout\ = (\OBJ1|obj4|debounced~q\ & \OBJ1|obj3|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj4|debounced~q\,
	datad => \OBJ1|obj3|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|process_0~0_combout\);

-- Location: LCCOMB_X105_Y29_N20
\OBJ1|obj7|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|DEBOUNCE_PROC~0_combout\ = \SW[2]~input_o\ $ (\OBJ1|obj7|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \OBJ1|obj7|debounced~q\,
	combout => \OBJ1|obj7|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X105_Y29_N30
\OBJ1|obj7|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj7|counter\(0) & (!\OBJ1|obj7|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj7|LessThan0~0_combout\)) # (!\OBJ1|obj7|counter\(0) & ((\OBJ1|obj7|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj7|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj7|counter\(0),
	datad => \OBJ1|obj7|LessThan0~0_combout\,
	combout => \OBJ1|obj7|counter[0]~2_combout\);

-- Location: FF_X105_Y29_N31
\OBJ1|obj7|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj7|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj7|counter\(0));

-- Location: LCCOMB_X105_Y29_N10
\OBJ1|obj7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|Add0~0_combout\ = (\OBJ1|obj7|counter\(1) & \OBJ1|obj7|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj7|counter\(1),
	datac => \OBJ1|obj7|counter\(0),
	combout => \OBJ1|obj7|Add0~0_combout\);

-- Location: LCCOMB_X105_Y29_N28
\OBJ1|obj7|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[2]~4_combout\ = (\OBJ1|obj7|counter\(3) & (!\OBJ1|obj7|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj7|counter\(2)))) # (!\OBJ1|obj7|counter\(3) & ((\OBJ1|obj7|counter\(2) $ (\OBJ1|obj7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|DEBOUNCE_PROC~0_combout\,
	datab => \OBJ1|obj7|counter\(3),
	datac => \OBJ1|obj7|counter\(2),
	datad => \OBJ1|obj7|Add0~0_combout\,
	combout => \OBJ1|obj7|counter[2]~4_combout\);

-- Location: FF_X105_Y29_N29
\OBJ1|obj7|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj7|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj7|counter\(2));

-- Location: LCCOMB_X105_Y29_N12
\OBJ1|obj7|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[3]~5_combout\ = ((!\OBJ1|obj7|counter\(0) & (!\OBJ1|obj7|counter\(1) & !\OBJ1|obj7|counter\(2)))) # (!\OBJ1|obj7|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|counter\(0),
	datab => \OBJ1|obj7|counter\(1),
	datac => \OBJ1|obj7|counter\(2),
	datad => \OBJ1|obj7|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj7|counter[3]~5_combout\);

-- Location: LCCOMB_X105_Y29_N22
\OBJ1|obj7|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[3]~6_combout\ = (\OBJ1|obj7|counter\(3) & (((\OBJ1|obj7|counter[3]~5_combout\)))) # (!\OBJ1|obj7|counter\(3) & (\OBJ1|obj7|Add0~0_combout\ & (\OBJ1|obj7|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|Add0~0_combout\,
	datab => \OBJ1|obj7|counter\(2),
	datac => \OBJ1|obj7|counter\(3),
	datad => \OBJ1|obj7|counter[3]~5_combout\,
	combout => \OBJ1|obj7|counter[3]~6_combout\);

-- Location: FF_X105_Y29_N23
\OBJ1|obj7|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj7|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj7|counter\(3));

-- Location: LCCOMB_X105_Y29_N26
\OBJ1|obj7|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[1]~7_combout\ = \OBJ1|obj7|counter\(1) $ (((!\OBJ1|obj7|counter\(3) & \OBJ1|obj7|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|counter\(3),
	datac => \OBJ1|obj7|counter\(0),
	datad => \OBJ1|obj7|counter\(1),
	combout => \OBJ1|obj7|counter[1]~7_combout\);

-- Location: LCCOMB_X105_Y29_N16
\OBJ1|obj7|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|counter[1]~3_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj7|counter[1]~7_combout\ & ((\OBJ1|obj7|LessThan0~0_combout\) # (!\OBJ1|obj7|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj7|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj7|counter[1]~7_combout\,
	datad => \OBJ1|obj7|LessThan0~0_combout\,
	combout => \OBJ1|obj7|counter[1]~3_combout\);

-- Location: FF_X105_Y29_N17
\OBJ1|obj7|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj7|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj7|counter\(1));

-- Location: LCCOMB_X105_Y29_N18
\OBJ1|obj7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|LessThan0~0_combout\ = ((!\OBJ1|obj7|counter\(0) & (!\OBJ1|obj7|counter\(1) & !\OBJ1|obj7|counter\(2)))) # (!\OBJ1|obj7|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|counter\(0),
	datab => \OBJ1|obj7|counter\(1),
	datac => \OBJ1|obj7|counter\(3),
	datad => \OBJ1|obj7|counter\(2),
	combout => \OBJ1|obj7|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y29_N24
\OBJ1|obj7|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj7|debounced~0_combout\ = (\SW[17]~input_o\ & (\SW[2]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj7|LessThan0~0_combout\ & ((\OBJ1|obj7|debounced~q\))) # (!\OBJ1|obj7|LessThan0~0_combout\ & (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ1|obj7|LessThan0~0_combout\,
	combout => \OBJ1|obj7|debounced~0_combout\);

-- Location: FF_X105_Y29_N25
\OBJ1|obj7|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj7|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj7|debounced~q\);

-- Location: LCCOMB_X103_Y30_N0
\OBJ1|obj5|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|DEBOUNCE_PROC~0_combout\ = \SW[0]~input_o\ $ (\OBJ1|obj5|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \OBJ1|obj5|debounced~q\,
	combout => \OBJ1|obj5|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X103_Y30_N6
\OBJ1|obj5|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj5|counter\(0) & (!\OBJ1|obj5|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj5|LessThan0~0_combout\)) # (!\OBJ1|obj5|counter\(0) & ((\OBJ1|obj5|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj5|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj5|counter\(0),
	datad => \OBJ1|obj5|LessThan0~0_combout\,
	combout => \OBJ1|obj5|counter[0]~2_combout\);

-- Location: FF_X103_Y30_N7
\OBJ1|obj5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj5|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj5|counter\(0));

-- Location: LCCOMB_X103_Y30_N12
\OBJ1|obj5|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[3]~5_combout\ = (\OBJ1|obj5|counter\(2) & (((!\OBJ1|obj5|counter\(3))))) # (!\OBJ1|obj5|counter\(2) & (!\OBJ1|obj5|counter\(0) & (!\OBJ1|obj5|counter\(1) & \OBJ1|obj5|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|counter\(0),
	datab => \OBJ1|obj5|counter\(1),
	datac => \OBJ1|obj5|counter\(2),
	datad => \OBJ1|obj5|counter\(3),
	combout => \OBJ1|obj5|counter[3]~5_combout\);

-- Location: LCCOMB_X103_Y30_N2
\OBJ1|obj5|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[3]~6_combout\ = (\OBJ1|obj5|counter\(3) & (((\OBJ1|obj5|counter[3]~5_combout\) # (!\OBJ1|obj5|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj5|counter\(3) & (\OBJ1|obj5|Add0~0_combout\ & ((\OBJ1|obj5|counter[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|Add0~0_combout\,
	datab => \OBJ1|obj5|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj5|counter\(3),
	datad => \OBJ1|obj5|counter[3]~5_combout\,
	combout => \OBJ1|obj5|counter[3]~6_combout\);

-- Location: FF_X103_Y30_N3
\OBJ1|obj5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj5|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj5|counter\(3));

-- Location: LCCOMB_X103_Y30_N30
\OBJ1|obj5|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[1]~7_combout\ = \OBJ1|obj5|counter\(1) $ (((\OBJ1|obj5|counter\(0) & !\OBJ1|obj5|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|counter\(0),
	datac => \OBJ1|obj5|counter\(1),
	datad => \OBJ1|obj5|counter\(3),
	combout => \OBJ1|obj5|counter[1]~7_combout\);

-- Location: LCCOMB_X103_Y30_N4
\OBJ1|obj5|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[1]~3_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj5|counter[1]~7_combout\ & ((\OBJ1|obj5|LessThan0~0_combout\) # (!\OBJ1|obj5|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj5|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj5|counter[1]~7_combout\,
	datad => \OBJ1|obj5|LessThan0~0_combout\,
	combout => \OBJ1|obj5|counter[1]~3_combout\);

-- Location: FF_X103_Y30_N5
\OBJ1|obj5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj5|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj5|counter\(1));

-- Location: LCCOMB_X103_Y30_N10
\OBJ1|obj5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|Add0~0_combout\ = (\OBJ1|obj5|counter\(1) & \OBJ1|obj5|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj5|counter\(1),
	datad => \OBJ1|obj5|counter\(0),
	combout => \OBJ1|obj5|Add0~0_combout\);

-- Location: LCCOMB_X103_Y30_N8
\OBJ1|obj5|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|counter[2]~4_combout\ = (\OBJ1|obj5|counter\(3) & (((\OBJ1|obj5|counter\(2) & !\OBJ1|obj5|DEBOUNCE_PROC~0_combout\)))) # (!\OBJ1|obj5|counter\(3) & (\OBJ1|obj5|Add0~0_combout\ $ ((\OBJ1|obj5|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|Add0~0_combout\,
	datab => \OBJ1|obj5|counter\(3),
	datac => \OBJ1|obj5|counter\(2),
	datad => \OBJ1|obj5|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj5|counter[2]~4_combout\);

-- Location: FF_X103_Y30_N9
\OBJ1|obj5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj5|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj5|counter\(2));

-- Location: LCCOMB_X103_Y30_N18
\OBJ1|obj5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|LessThan0~0_combout\ = ((!\OBJ1|obj5|counter\(0) & (!\OBJ1|obj5|counter\(2) & !\OBJ1|obj5|counter\(1)))) # (!\OBJ1|obj5|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|counter\(0),
	datab => \OBJ1|obj5|counter\(2),
	datac => \OBJ1|obj5|counter\(1),
	datad => \OBJ1|obj5|counter\(3),
	combout => \OBJ1|obj5|LessThan0~0_combout\);

-- Location: LCCOMB_X103_Y30_N16
\OBJ1|obj5|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj5|debounced~0_combout\ = (\SW[17]~input_o\ & (\SW[0]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj5|LessThan0~0_combout\ & ((\OBJ1|obj5|debounced~q\))) # (!\OBJ1|obj5|LessThan0~0_combout\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj5|debounced~q\,
	datad => \OBJ1|obj5|LessThan0~0_combout\,
	combout => \OBJ1|obj5|debounced~0_combout\);

-- Location: FF_X103_Y30_N17
\OBJ1|obj5|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj5|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj5|debounced~q\);

-- Location: LCCOMB_X102_Y30_N28
\OBJ1|obj6|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|DEBOUNCE_PROC~0_combout\ = \SW[1]~input_o\ $ (\OBJ1|obj6|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \OBJ1|obj6|debounced~q\,
	combout => \OBJ1|obj6|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X102_Y30_N18
\OBJ1|obj6|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj6|counter\(0) & (!\OBJ1|obj6|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj6|LessThan0~0_combout\)) # (!\OBJ1|obj6|counter\(0) & ((\OBJ1|obj6|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj6|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj6|counter\(0),
	datad => \OBJ1|obj6|LessThan0~0_combout\,
	combout => \OBJ1|obj6|counter[0]~2_combout\);

-- Location: FF_X102_Y30_N19
\OBJ1|obj6|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj6|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj6|counter\(0));

-- Location: LCCOMB_X102_Y30_N30
\OBJ1|obj6|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[1]~7_combout\ = \OBJ1|obj6|counter\(1) $ (((!\OBJ1|obj6|counter\(3) & \OBJ1|obj6|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj6|counter\(1),
	datac => \OBJ1|obj6|counter\(3),
	datad => \OBJ1|obj6|counter\(0),
	combout => \OBJ1|obj6|counter[1]~7_combout\);

-- Location: LCCOMB_X102_Y30_N4
\OBJ1|obj6|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[1]~3_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj6|counter[1]~7_combout\ & ((\OBJ1|obj6|LessThan0~0_combout\) # (!\OBJ1|obj6|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|DEBOUNCE_PROC~0_combout\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj6|counter[1]~7_combout\,
	datad => \OBJ1|obj6|LessThan0~0_combout\,
	combout => \OBJ1|obj6|counter[1]~3_combout\);

-- Location: FF_X102_Y30_N5
\OBJ1|obj6|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj6|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj6|counter\(1));

-- Location: LCCOMB_X102_Y30_N10
\OBJ1|obj6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|Add0~0_combout\ = (\OBJ1|obj6|counter\(1) & \OBJ1|obj6|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj6|counter\(1),
	datad => \OBJ1|obj6|counter\(0),
	combout => \OBJ1|obj6|Add0~0_combout\);

-- Location: LCCOMB_X102_Y30_N24
\OBJ1|obj6|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[3]~5_combout\ = ((!\OBJ1|obj6|counter\(0) & (!\OBJ1|obj6|counter\(2) & !\OBJ1|obj6|counter\(1)))) # (!\OBJ1|obj6|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|counter\(0),
	datab => \OBJ1|obj6|counter\(2),
	datac => \OBJ1|obj6|counter\(1),
	datad => \OBJ1|obj6|DEBOUNCE_PROC~0_combout\,
	combout => \OBJ1|obj6|counter[3]~5_combout\);

-- Location: LCCOMB_X102_Y30_N26
\OBJ1|obj6|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[3]~6_combout\ = (\OBJ1|obj6|counter\(3) & (((\OBJ1|obj6|counter[3]~5_combout\)))) # (!\OBJ1|obj6|counter\(3) & (\OBJ1|obj6|Add0~0_combout\ & (\OBJ1|obj6|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|Add0~0_combout\,
	datab => \OBJ1|obj6|counter\(2),
	datac => \OBJ1|obj6|counter\(3),
	datad => \OBJ1|obj6|counter[3]~5_combout\,
	combout => \OBJ1|obj6|counter[3]~6_combout\);

-- Location: FF_X102_Y30_N27
\OBJ1|obj6|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj6|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj6|counter\(3));

-- Location: LCCOMB_X102_Y30_N0
\OBJ1|obj6|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|counter[2]~4_combout\ = (\OBJ1|obj6|counter\(3) & (!\OBJ1|obj6|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj6|counter\(2)))) # (!\OBJ1|obj6|counter\(3) & ((\OBJ1|obj6|counter\(2) $ (\OBJ1|obj6|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|counter\(3),
	datab => \OBJ1|obj6|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj6|counter\(2),
	datad => \OBJ1|obj6|Add0~0_combout\,
	combout => \OBJ1|obj6|counter[2]~4_combout\);

-- Location: FF_X102_Y30_N1
\OBJ1|obj6|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj6|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj6|counter\(2));

-- Location: LCCOMB_X102_Y30_N6
\OBJ1|obj6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|LessThan0~0_combout\ = ((!\OBJ1|obj6|counter\(2) & (!\OBJ1|obj6|counter\(1) & !\OBJ1|obj6|counter\(0)))) # (!\OBJ1|obj6|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|counter\(2),
	datab => \OBJ1|obj6|counter\(1),
	datac => \OBJ1|obj6|counter\(3),
	datad => \OBJ1|obj6|counter\(0),
	combout => \OBJ1|obj6|LessThan0~0_combout\);

-- Location: LCCOMB_X102_Y30_N16
\OBJ1|obj6|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj6|debounced~0_combout\ = (\SW[17]~input_o\ & (\SW[1]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj6|LessThan0~0_combout\ & ((\OBJ1|obj6|debounced~q\))) # (!\OBJ1|obj6|LessThan0~0_combout\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \OBJ1|obj6|debounced~q\,
	datad => \OBJ1|obj6|LessThan0~0_combout\,
	combout => \OBJ1|obj6|debounced~0_combout\);

-- Location: FF_X102_Y30_N17
\OBJ1|obj6|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj6|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj6|debounced~q\);

-- Location: LCCOMB_X103_Y29_N0
\OBJ3|OBJ3|OBJ1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal4~1_combout\ = (!\OBJ1|obj7|debounced~q\ & (!\OBJ1|obj5|debounced~q\ & !\OBJ1|obj6|debounced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|debounced~q\,
	datab => \OBJ1|obj5|debounced~q\,
	datac => \OBJ1|obj6|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|Equal4~1_combout\);

-- Location: LCCOMB_X102_Y29_N8
\OBJ3|OBJ3|OBJ1|progState.progIdle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState.progIdle~0_combout\ = (\OBJ3|OBJ3|OBJ1|main_state~q\ & ((\OBJ3|OBJ3|OBJ1|progState.progIdle~q\))) # (!\OBJ3|OBJ3|OBJ1|main_state~q\ & (\OBJ3|OBJ3|OBJ1|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ3|OBJ3|OBJ1|Equal4~1_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState.progIdle~0_combout\);

-- Location: LCCOMB_X102_Y29_N2
\OBJ3|OBJ3|OBJ1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|process_0~1_combout\ = (\OBJ1|obj5|debounced~q\ & ((\OBJ1|obj7|debounced~q\))) # (!\OBJ1|obj5|debounced~q\ & (\OBJ1|obj6|debounced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj6|debounced~q\,
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ1|obj5|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|process_0~1_combout\);

-- Location: LCCOMB_X102_Y29_N10
\OBJ3|OBJ3|OBJ1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Selector8~1_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progIdle~q\) # ((\OBJ3|OBJ3|OBJ1|progState.progError~q\ & !\OBJ3|OBJ3|OBJ1|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\,
	datad => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Selector8~1_combout\);

-- Location: LCCOMB_X103_Y29_N30
\OBJ3|OBJ3|OBJ1|progState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~21_combout\ = (\OBJ1|obj7|debounced~q\) # ((\OBJ1|obj6|debounced~q\) # (!\OBJ1|obj5|debounced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|debounced~q\,
	datab => \OBJ1|obj5|debounced~q\,
	datac => \OBJ1|obj6|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState~21_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X95_Y29_N24
\OBJ1|obj2|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|DEBOUNCE_PROC~0_combout\ = \KEY[1]~input_o\ $ (\OBJ1|obj2|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \OBJ1|obj2|debounced~q\,
	combout => \OBJ1|obj2|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X95_Y29_N30
\OBJ1|obj2|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj2|counter\(0) & (!\OBJ1|obj2|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj2|LessThan0~0_combout\)) # (!\OBJ1|obj2|counter\(0) & ((\OBJ1|obj2|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj2|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj2|counter\(0),
	datad => \OBJ1|obj2|LessThan0~0_combout\,
	combout => \OBJ1|obj2|counter[0]~2_combout\);

-- Location: FF_X95_Y29_N31
\OBJ1|obj2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj2|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj2|counter\(0));

-- Location: LCCOMB_X95_Y29_N14
\OBJ1|obj2|counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[1]~6_combout\ = (!\SW[17]~input_o\ & ((\KEY[1]~input_o\ $ (!\OBJ1|obj2|debounced~q\)) # (!\OBJ1|obj2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj2|counter\(3),
	datad => \OBJ1|obj2|debounced~q\,
	combout => \OBJ1|obj2|counter[1]~6_combout\);

-- Location: LCCOMB_X95_Y29_N20
\OBJ1|obj2|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[1]~7_combout\ = (\OBJ1|obj2|counter[1]~6_combout\ & (\OBJ1|obj2|counter\(1) $ (((\OBJ1|obj2|counter\(0) & !\OBJ1|obj2|counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|counter\(0),
	datab => \OBJ1|obj2|counter[1]~6_combout\,
	datac => \OBJ1|obj2|counter\(1),
	datad => \OBJ1|obj2|counter\(3),
	combout => \OBJ1|obj2|counter[1]~7_combout\);

-- Location: FF_X95_Y29_N21
\OBJ1|obj2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj2|counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj2|counter\(1));

-- Location: LCCOMB_X95_Y29_N16
\OBJ1|obj2|counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[3]~4_combout\ = (\OBJ1|obj2|counter\(2) & (((!\OBJ1|obj2|counter\(3))))) # (!\OBJ1|obj2|counter\(2) & (!\OBJ1|obj2|counter\(0) & (\OBJ1|obj2|counter\(3) & !\OBJ1|obj2|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|counter\(0),
	datab => \OBJ1|obj2|counter\(2),
	datac => \OBJ1|obj2|counter\(3),
	datad => \OBJ1|obj2|counter\(1),
	combout => \OBJ1|obj2|counter[3]~4_combout\);

-- Location: LCCOMB_X95_Y29_N18
\OBJ1|obj2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|Add0~0_combout\ = (\OBJ1|obj2|counter\(0) & \OBJ1|obj2|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj2|counter\(0),
	datad => \OBJ1|obj2|counter\(1),
	combout => \OBJ1|obj2|Add0~0_combout\);

-- Location: LCCOMB_X95_Y29_N22
\OBJ1|obj2|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[3]~5_combout\ = (\OBJ1|obj2|counter[3]~4_combout\ & (((\OBJ1|obj2|counter\(3)) # (\OBJ1|obj2|Add0~0_combout\)))) # (!\OBJ1|obj2|counter[3]~4_combout\ & (!\OBJ1|obj2|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|counter[3]~4_combout\,
	datab => \OBJ1|obj2|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj2|counter\(3),
	datad => \OBJ1|obj2|Add0~0_combout\,
	combout => \OBJ1|obj2|counter[3]~5_combout\);

-- Location: FF_X95_Y29_N23
\OBJ1|obj2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj2|counter[3]~5_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj2|counter\(3));

-- Location: LCCOMB_X95_Y29_N28
\OBJ1|obj2|counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|counter[2]~3_combout\ = (\OBJ1|obj2|counter\(3) & (!\OBJ1|obj2|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj2|counter\(2)))) # (!\OBJ1|obj2|counter\(3) & ((\OBJ1|obj2|counter\(2) $ (\OBJ1|obj2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|counter\(3),
	datab => \OBJ1|obj2|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj2|counter\(2),
	datad => \OBJ1|obj2|Add0~0_combout\,
	combout => \OBJ1|obj2|counter[2]~3_combout\);

-- Location: FF_X95_Y29_N29
\OBJ1|obj2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj2|counter[2]~3_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj2|counter\(2));

-- Location: LCCOMB_X95_Y29_N2
\OBJ1|obj2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|LessThan0~0_combout\ = ((!\OBJ1|obj2|counter\(0) & (!\OBJ1|obj2|counter\(2) & !\OBJ1|obj2|counter\(1)))) # (!\OBJ1|obj2|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|counter\(0),
	datab => \OBJ1|obj2|counter\(2),
	datac => \OBJ1|obj2|counter\(1),
	datad => \OBJ1|obj2|counter\(3),
	combout => \OBJ1|obj2|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y29_N12
\OBJ1|obj2|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj2|debounced~0_combout\ = (\SW[17]~input_o\ & (\KEY[1]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj2|LessThan0~0_combout\ & ((\OBJ1|obj2|debounced~q\))) # (!\OBJ1|obj2|LessThan0~0_combout\ & (\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj2|debounced~q\,
	datad => \OBJ1|obj2|LessThan0~0_combout\,
	combout => \OBJ1|obj2|debounced~0_combout\);

-- Location: FF_X95_Y29_N13
\OBJ1|obj2|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj2|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj2|debounced~q\);

-- Location: LCCOMB_X97_Y29_N0
\OBJ3|OBJ3|OBJ1|counter[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~35_combout\ = (\OBJ1|obj2|debounced~q\ & (\OBJ3|OBJ3|OBJ1|counter\(0) $ (VCC))) # (!\OBJ1|obj2|debounced~q\ & (\OBJ3|OBJ3|OBJ1|counter\(0) & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[0]~36\ = CARRY((\OBJ1|obj2|debounced~q\ & \OBJ3|OBJ3|OBJ1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|debounced~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(0),
	datad => VCC,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~35_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[0]~36\);

-- Location: LCCOMB_X97_Y29_N2
\OBJ3|OBJ3|OBJ1|counter[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[1]~37_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(1) & (!\OBJ3|OBJ3|OBJ1|counter[0]~36\)) # (!\OBJ3|OBJ3|OBJ1|counter\(1) & ((\OBJ3|OBJ3|OBJ1|counter[0]~36\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[1]~38\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[0]~36\) # (!\OBJ3|OBJ3|OBJ1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[0]~36\,
	combout => \OBJ3|OBJ3|OBJ1|counter[1]~37_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[1]~38\);

-- Location: LCCOMB_X97_Y29_N4
\OBJ3|OBJ3|OBJ1|counter[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[2]~39_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(2) & (\OBJ3|OBJ3|OBJ1|counter[1]~38\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(2) & (!\OBJ3|OBJ3|OBJ1|counter[1]~38\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[2]~40\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(2) & !\OBJ3|OBJ3|OBJ1|counter[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(2),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[1]~38\,
	combout => \OBJ3|OBJ3|OBJ1|counter[2]~39_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[2]~40\);

-- Location: LCCOMB_X101_Y29_N14
\OBJ3|OBJ3|OBJ1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal4~0_combout\ = (!\OBJ1|obj6|debounced~q\ & !\OBJ1|obj5|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj6|debounced~q\,
	datad => \OBJ1|obj5|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|Equal4~0_combout\);

-- Location: LCCOMB_X99_Y29_N8
\OBJ3|OBJ3|OBJ1|progState.prog4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & (\OBJ1|obj7|debounced~q\ & (!\OBJ3|OBJ3|OBJ1|main_state~q\ & \OBJ3|OBJ3|OBJ1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datab => \OBJ1|obj7|debounced~q\,
	datac => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal4~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\);

-- Location: LCCOMB_X99_Y31_N12
\OBJ1|obj1|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|DEBOUNCE_PROC~0_combout\ = \KEY[0]~input_o\ $ (\OBJ1|obj1|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \OBJ1|obj1|debounced~q\,
	combout => \OBJ1|obj1|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X99_Y31_N2
\OBJ1|obj1|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj1|counter\(0) & (!\OBJ1|obj1|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj1|LessThan0~0_combout\)) # (!\OBJ1|obj1|counter\(0) & ((\OBJ1|obj1|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj1|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj1|counter\(0),
	datad => \OBJ1|obj1|LessThan0~0_combout\,
	combout => \OBJ1|obj1|counter[0]~2_combout\);

-- Location: FF_X99_Y31_N3
\OBJ1|obj1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj1|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj1|counter\(0));

-- Location: LCCOMB_X99_Y31_N30
\OBJ1|obj1|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[1]~7_combout\ = \OBJ1|obj1|counter\(1) $ (((!\OBJ1|obj1|counter\(3) & \OBJ1|obj1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj1|counter\(1),
	datac => \OBJ1|obj1|counter\(3),
	datad => \OBJ1|obj1|counter\(0),
	combout => \OBJ1|obj1|counter[1]~7_combout\);

-- Location: LCCOMB_X99_Y31_N20
\OBJ1|obj1|counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[1]~3_combout\ = (!\SW[17]~input_o\ & (\OBJ1|obj1|counter[1]~7_combout\ & ((\OBJ1|obj1|LessThan0~0_combout\) # (!\OBJ1|obj1|DEBOUNCE_PROC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj1|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj1|counter[1]~7_combout\,
	datad => \OBJ1|obj1|LessThan0~0_combout\,
	combout => \OBJ1|obj1|counter[1]~3_combout\);

-- Location: FF_X99_Y31_N21
\OBJ1|obj1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj1|counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj1|counter\(1));

-- Location: LCCOMB_X99_Y31_N0
\OBJ1|obj1|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[3]~5_combout\ = ((!\OBJ1|obj1|counter\(1) & (!\OBJ1|obj1|counter\(2) & !\OBJ1|obj1|counter\(0)))) # (!\OBJ1|obj1|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|DEBOUNCE_PROC~0_combout\,
	datab => \OBJ1|obj1|counter\(1),
	datac => \OBJ1|obj1|counter\(2),
	datad => \OBJ1|obj1|counter\(0),
	combout => \OBJ1|obj1|counter[3]~5_combout\);

-- Location: LCCOMB_X99_Y31_N6
\OBJ1|obj1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|Add0~0_combout\ = (\OBJ1|obj1|counter\(0) & \OBJ1|obj1|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ1|obj1|counter\(0),
	datad => \OBJ1|obj1|counter\(1),
	combout => \OBJ1|obj1|Add0~0_combout\);

-- Location: LCCOMB_X99_Y31_N26
\OBJ1|obj1|counter[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[3]~6_combout\ = (\OBJ1|obj1|counter\(3) & (((\OBJ1|obj1|counter[3]~5_combout\)))) # (!\OBJ1|obj1|counter\(3) & (\OBJ1|obj1|counter\(2) & ((\OBJ1|obj1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|counter\(2),
	datab => \OBJ1|obj1|counter[3]~5_combout\,
	datac => \OBJ1|obj1|counter\(3),
	datad => \OBJ1|obj1|Add0~0_combout\,
	combout => \OBJ1|obj1|counter[3]~6_combout\);

-- Location: FF_X99_Y31_N27
\OBJ1|obj1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj1|counter[3]~6_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj1|counter\(3));

-- Location: LCCOMB_X99_Y31_N28
\OBJ1|obj1|counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|counter[2]~4_combout\ = (\OBJ1|obj1|counter\(3) & (!\OBJ1|obj1|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj1|counter\(2)))) # (!\OBJ1|obj1|counter\(3) & ((\OBJ1|obj1|counter\(2) $ (\OBJ1|obj1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|counter\(3),
	datab => \OBJ1|obj1|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj1|counter\(2),
	datad => \OBJ1|obj1|Add0~0_combout\,
	combout => \OBJ1|obj1|counter[2]~4_combout\);

-- Location: FF_X99_Y31_N29
\OBJ1|obj1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj1|counter[2]~4_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj1|counter\(2));

-- Location: LCCOMB_X99_Y31_N18
\OBJ1|obj1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|LessThan0~0_combout\ = ((!\OBJ1|obj1|counter\(2) & (!\OBJ1|obj1|counter\(0) & !\OBJ1|obj1|counter\(1)))) # (!\OBJ1|obj1|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|counter\(2),
	datab => \OBJ1|obj1|counter\(0),
	datac => \OBJ1|obj1|counter\(3),
	datad => \OBJ1|obj1|counter\(1),
	combout => \OBJ1|obj1|LessThan0~0_combout\);

-- Location: LCCOMB_X99_Y31_N24
\OBJ1|obj1|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj1|debounced~0_combout\ = (\SW[17]~input_o\ & (\KEY[0]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj1|LessThan0~0_combout\ & ((\OBJ1|obj1|debounced~q\))) # (!\OBJ1|obj1|LessThan0~0_combout\ & (\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \OBJ1|obj1|debounced~q\,
	datad => \OBJ1|obj1|LessThan0~0_combout\,
	combout => \OBJ1|obj1|debounced~0_combout\);

-- Location: FF_X99_Y31_N25
\OBJ1|obj1|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj1|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj1|debounced~q\);

-- Location: LCCOMB_X99_Y29_N20
\OBJ3|OBJ3|OBJ1|fly_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|fly_state~0_combout\ = (\OBJ3|OBJ3|OBJ1|fly_state~q\ & (((\OBJ1|obj1|debounced~q\)) # (!\OBJ3|OBJ3|OBJ1|process_0~0_combout\))) # (!\OBJ3|OBJ3|OBJ1|fly_state~q\ & (((\OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datad => \OBJ1|obj1|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|fly_state~0_combout\);

-- Location: FF_X99_Y29_N21
\OBJ3|OBJ3|OBJ1|fly_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|fly_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|fly_state~q\);

-- Location: LCCOMB_X99_Y29_N2
\OBJ3|OBJ3|OBJ1|counter[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ = (\OBJ1|obj3|debounced~q\ & (\OBJ1|obj4|debounced~q\ & ((\OBJ1|obj1|debounced~q\) # (!\OBJ3|OBJ3|OBJ1|fly_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj3|debounced~q\,
	datab => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datac => \OBJ1|obj1|debounced~q\,
	datad => \OBJ1|obj4|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\);

-- Location: LCCOMB_X99_Y29_N6
\OBJ3|OBJ3|OBJ1|progState.prog4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState.prog4~1_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\ & (!\OBJ3|OBJ3|OBJ1|control~q\ & ((\OBJ1|obj1|debounced~q\) # (!\OBJ3|OBJ3|OBJ1|fly_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|debounced~q\,
	datab => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState.prog4~1_combout\);

-- Location: LCCOMB_X103_Y29_N4
\OBJ3|OBJ3|OBJ1|progState.prog4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState.prog4~2_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~1_combout\) # ((\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & ((!\OBJ3|OBJ3|OBJ1|progState~17_combout\) # (!\OBJ3|OBJ3|OBJ1|counter[29]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog4~1_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|progState~17_combout\,
	combout => \OBJ3|OBJ3|OBJ1|progState.prog4~2_combout\);

-- Location: FF_X103_Y29_N5
\OBJ3|OBJ3|OBJ1|progState.prog4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|progState.prog4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.prog4~q\);

-- Location: LCCOMB_X103_Y29_N22
\OBJ3|OBJ3|OBJ1|control~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|control~2_combout\ = (!\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & ((!\OBJ3|OBJ3|OBJ1|process_0~1_combout\) # (!\OBJ3|OBJ3|OBJ1|progState.progError~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	combout => \OBJ3|OBJ3|OBJ1|control~2_combout\);

-- Location: LCCOMB_X102_Y29_N20
\OBJ3|OBJ3|OBJ1|progState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~20_combout\ = (!\OBJ1|obj5|debounced~q\ & (\OBJ1|obj6|debounced~q\ & (!\OBJ1|obj7|debounced~q\ & !\OBJ3|OBJ3|OBJ1|control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|debounced~q\,
	datab => \OBJ1|obj6|debounced~q\,
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState~20_combout\);

-- Location: LCCOMB_X97_Y29_N8
\OBJ3|OBJ3|OBJ1|counter[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[4]~43_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(4) & (\OBJ3|OBJ3|OBJ1|counter[3]~42\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(4) & (!\OBJ3|OBJ3|OBJ1|counter[3]~42\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[4]~44\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(4) & !\OBJ3|OBJ3|OBJ1|counter[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(4),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[3]~42\,
	combout => \OBJ3|OBJ3|OBJ1|counter[4]~43_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[4]~44\);

-- Location: LCCOMB_X97_Y29_N10
\OBJ3|OBJ3|OBJ1|counter[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[5]~45_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(5) & (!\OBJ3|OBJ3|OBJ1|counter[4]~44\)) # (!\OBJ3|OBJ3|OBJ1|counter\(5) & ((\OBJ3|OBJ3|OBJ1|counter[4]~44\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[5]~46\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[4]~44\) # (!\OBJ3|OBJ3|OBJ1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(5),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[4]~44\,
	combout => \OBJ3|OBJ3|OBJ1|counter[5]~45_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[5]~46\);

-- Location: FF_X97_Y29_N11
\OBJ3|OBJ3|OBJ1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[5]~45_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(5));

-- Location: LCCOMB_X97_Y29_N12
\OBJ3|OBJ3|OBJ1|counter[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[6]~57_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(6) & (\OBJ3|OBJ3|OBJ1|counter[5]~46\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(6) & (!\OBJ3|OBJ3|OBJ1|counter[5]~46\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[6]~58\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(6) & !\OBJ3|OBJ3|OBJ1|counter[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(6),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[5]~46\,
	combout => \OBJ3|OBJ3|OBJ1|counter[6]~57_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[6]~58\);

-- Location: FF_X97_Y29_N13
\OBJ3|OBJ3|OBJ1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[6]~57_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(6));

-- Location: LCCOMB_X97_Y29_N14
\OBJ3|OBJ3|OBJ1|counter[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[7]~59_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(7) & (!\OBJ3|OBJ3|OBJ1|counter[6]~58\)) # (!\OBJ3|OBJ3|OBJ1|counter\(7) & ((\OBJ3|OBJ3|OBJ1|counter[6]~58\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[7]~60\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[6]~58\) # (!\OBJ3|OBJ3|OBJ1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(7),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[6]~58\,
	combout => \OBJ3|OBJ3|OBJ1|counter[7]~59_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[7]~60\);

-- Location: FF_X97_Y29_N15
\OBJ3|OBJ3|OBJ1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[7]~59_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(7));

-- Location: LCCOMB_X97_Y29_N16
\OBJ3|OBJ3|OBJ1|counter[8]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[8]~61_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(8) & (\OBJ3|OBJ3|OBJ1|counter[7]~60\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(8) & (!\OBJ3|OBJ3|OBJ1|counter[7]~60\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[8]~62\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(8) & !\OBJ3|OBJ3|OBJ1|counter[7]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(8),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[7]~60\,
	combout => \OBJ3|OBJ3|OBJ1|counter[8]~61_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[8]~62\);

-- Location: FF_X97_Y29_N17
\OBJ3|OBJ3|OBJ1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[8]~61_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(8));

-- Location: LCCOMB_X97_Y29_N18
\OBJ3|OBJ3|OBJ1|counter[9]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~63_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(9) & (!\OBJ3|OBJ3|OBJ1|counter[8]~62\)) # (!\OBJ3|OBJ3|OBJ1|counter\(9) & ((\OBJ3|OBJ3|OBJ1|counter[8]~62\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[9]~64\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[8]~62\) # (!\OBJ3|OBJ3|OBJ1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(9),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[8]~62\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~63_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[9]~64\);

-- Location: FF_X97_Y29_N19
\OBJ3|OBJ3|OBJ1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[9]~63_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(9));

-- Location: LCCOMB_X97_Y29_N20
\OBJ3|OBJ3|OBJ1|counter[10]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[10]~65_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(10) & (\OBJ3|OBJ3|OBJ1|counter[9]~64\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(10) & (!\OBJ3|OBJ3|OBJ1|counter[9]~64\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[10]~66\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(10) & !\OBJ3|OBJ3|OBJ1|counter[9]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(10),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[9]~64\,
	combout => \OBJ3|OBJ3|OBJ1|counter[10]~65_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[10]~66\);

-- Location: FF_X97_Y29_N21
\OBJ3|OBJ3|OBJ1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[10]~65_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(10));

-- Location: LCCOMB_X97_Y29_N22
\OBJ3|OBJ3|OBJ1|counter[11]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[11]~67_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(11) & (!\OBJ3|OBJ3|OBJ1|counter[10]~66\)) # (!\OBJ3|OBJ3|OBJ1|counter\(11) & ((\OBJ3|OBJ3|OBJ1|counter[10]~66\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[11]~68\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[10]~66\) # (!\OBJ3|OBJ3|OBJ1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(11),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[10]~66\,
	combout => \OBJ3|OBJ3|OBJ1|counter[11]~67_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[11]~68\);

-- Location: FF_X97_Y29_N23
\OBJ3|OBJ3|OBJ1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[11]~67_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(11));

-- Location: LCCOMB_X97_Y29_N24
\OBJ3|OBJ3|OBJ1|counter[12]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[12]~69_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(12) & (\OBJ3|OBJ3|OBJ1|counter[11]~68\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(12) & (!\OBJ3|OBJ3|OBJ1|counter[11]~68\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[12]~70\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(12) & !\OBJ3|OBJ3|OBJ1|counter[11]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(12),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[11]~68\,
	combout => \OBJ3|OBJ3|OBJ1|counter[12]~69_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[12]~70\);

-- Location: FF_X97_Y29_N25
\OBJ3|OBJ3|OBJ1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[12]~69_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(12));

-- Location: LCCOMB_X97_Y29_N26
\OBJ3|OBJ3|OBJ1|counter[13]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[13]~71_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(13) & (!\OBJ3|OBJ3|OBJ1|counter[12]~70\)) # (!\OBJ3|OBJ3|OBJ1|counter\(13) & ((\OBJ3|OBJ3|OBJ1|counter[12]~70\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[13]~72\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[12]~70\) # (!\OBJ3|OBJ3|OBJ1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(13),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[12]~70\,
	combout => \OBJ3|OBJ3|OBJ1|counter[13]~71_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[13]~72\);

-- Location: FF_X97_Y29_N27
\OBJ3|OBJ3|OBJ1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[13]~71_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(13));

-- Location: LCCOMB_X97_Y29_N28
\OBJ3|OBJ3|OBJ1|counter[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[14]~73_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(14) & (\OBJ3|OBJ3|OBJ1|counter[13]~72\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(14) & (!\OBJ3|OBJ3|OBJ1|counter[13]~72\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[14]~74\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(14) & !\OBJ3|OBJ3|OBJ1|counter[13]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(14),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[13]~72\,
	combout => \OBJ3|OBJ3|OBJ1|counter[14]~73_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[14]~74\);

-- Location: FF_X97_Y29_N29
\OBJ3|OBJ3|OBJ1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[14]~73_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(14));

-- Location: LCCOMB_X97_Y29_N30
\OBJ3|OBJ3|OBJ1|counter[15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[15]~75_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(15) & (!\OBJ3|OBJ3|OBJ1|counter[14]~74\)) # (!\OBJ3|OBJ3|OBJ1|counter\(15) & ((\OBJ3|OBJ3|OBJ1|counter[14]~74\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[15]~76\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[14]~74\) # (!\OBJ3|OBJ3|OBJ1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(15),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[14]~74\,
	combout => \OBJ3|OBJ3|OBJ1|counter[15]~75_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[15]~76\);

-- Location: FF_X97_Y29_N31
\OBJ3|OBJ3|OBJ1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[15]~75_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(15));

-- Location: LCCOMB_X97_Y28_N0
\OBJ3|OBJ3|OBJ1|counter[16]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[16]~77_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(16) & (\OBJ3|OBJ3|OBJ1|counter[15]~76\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(16) & (!\OBJ3|OBJ3|OBJ1|counter[15]~76\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[16]~78\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(16) & !\OBJ3|OBJ3|OBJ1|counter[15]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(16),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[15]~76\,
	combout => \OBJ3|OBJ3|OBJ1|counter[16]~77_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[16]~78\);

-- Location: FF_X98_Y29_N17
\OBJ3|OBJ3|OBJ1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[16]~77_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(16));

-- Location: LCCOMB_X98_Y29_N10
\OBJ3|OBJ3|OBJ1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~2_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(13) & (!\OBJ3|OBJ3|OBJ1|counter\(15) & (!\OBJ3|OBJ3|OBJ1|counter\(16) & !\OBJ3|OBJ3|OBJ1|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(13),
	datab => \OBJ3|OBJ3|OBJ1|counter\(15),
	datac => \OBJ3|OBJ3|OBJ1|counter\(16),
	datad => \OBJ3|OBJ3|OBJ1|counter\(14),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~2_combout\);

-- Location: LCCOMB_X98_Y29_N20
\OBJ3|OBJ3|OBJ1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~1_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(12) & (!\OBJ3|OBJ3|OBJ1|counter\(11) & (!\OBJ3|OBJ3|OBJ1|counter\(10) & !\OBJ3|OBJ3|OBJ1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(12),
	datab => \OBJ3|OBJ3|OBJ1|counter\(11),
	datac => \OBJ3|OBJ3|OBJ1|counter\(10),
	datad => \OBJ3|OBJ3|OBJ1|counter\(9),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~1_combout\);

-- Location: LCCOMB_X97_Y28_N2
\OBJ3|OBJ3|OBJ1|counter[17]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[17]~79_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(17) & (!\OBJ3|OBJ3|OBJ1|counter[16]~78\)) # (!\OBJ3|OBJ3|OBJ1|counter\(17) & ((\OBJ3|OBJ3|OBJ1|counter[16]~78\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[17]~80\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[16]~78\) # (!\OBJ3|OBJ3|OBJ1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(17),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[16]~78\,
	combout => \OBJ3|OBJ3|OBJ1|counter[17]~79_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[17]~80\);

-- Location: FF_X98_Y28_N21
\OBJ3|OBJ3|OBJ1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[17]~79_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(17));

-- Location: LCCOMB_X97_Y28_N4
\OBJ3|OBJ3|OBJ1|counter[18]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[18]~81_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(18) & (\OBJ3|OBJ3|OBJ1|counter[17]~80\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(18) & (!\OBJ3|OBJ3|OBJ1|counter[17]~80\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[18]~82\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(18) & !\OBJ3|OBJ3|OBJ1|counter[17]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(18),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[17]~80\,
	combout => \OBJ3|OBJ3|OBJ1|counter[18]~81_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[18]~82\);

-- Location: FF_X98_Y28_N7
\OBJ3|OBJ3|OBJ1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[18]~81_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(18));

-- Location: LCCOMB_X97_Y28_N6
\OBJ3|OBJ3|OBJ1|counter[19]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[19]~83_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(19) & (!\OBJ3|OBJ3|OBJ1|counter[18]~82\)) # (!\OBJ3|OBJ3|OBJ1|counter\(19) & ((\OBJ3|OBJ3|OBJ1|counter[18]~82\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[19]~84\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[18]~82\) # (!\OBJ3|OBJ3|OBJ1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(19),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[18]~82\,
	combout => \OBJ3|OBJ3|OBJ1|counter[19]~83_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[19]~84\);

-- Location: FF_X98_Y28_N1
\OBJ3|OBJ3|OBJ1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[19]~83_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(19));

-- Location: LCCOMB_X97_Y28_N8
\OBJ3|OBJ3|OBJ1|counter[20]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[20]~85_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(20) & (\OBJ3|OBJ3|OBJ1|counter[19]~84\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(20) & (!\OBJ3|OBJ3|OBJ1|counter[19]~84\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[20]~86\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(20) & !\OBJ3|OBJ3|OBJ1|counter[19]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(20),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[19]~84\,
	combout => \OBJ3|OBJ3|OBJ1|counter[20]~85_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[20]~86\);

-- Location: FF_X98_Y28_N31
\OBJ3|OBJ3|OBJ1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[20]~85_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(20));

-- Location: LCCOMB_X98_Y28_N2
\OBJ3|OBJ3|OBJ1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~3_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(18) & (!\OBJ3|OBJ3|OBJ1|counter\(19) & (!\OBJ3|OBJ3|OBJ1|counter\(20) & !\OBJ3|OBJ3|OBJ1|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(18),
	datab => \OBJ3|OBJ3|OBJ1|counter\(19),
	datac => \OBJ3|OBJ3|OBJ1|counter\(20),
	datad => \OBJ3|OBJ3|OBJ1|counter\(17),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~3_combout\);

-- Location: LCCOMB_X96_Y29_N4
\OBJ3|OBJ3|OBJ1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~0_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(5) & (!\OBJ3|OBJ3|OBJ1|counter\(7) & (!\OBJ3|OBJ3|OBJ1|counter\(6) & !\OBJ3|OBJ3|OBJ1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(5),
	datab => \OBJ3|OBJ3|OBJ1|counter\(7),
	datac => \OBJ3|OBJ3|OBJ1|counter\(6),
	datad => \OBJ3|OBJ3|OBJ1|counter\(8),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~0_combout\);

-- Location: LCCOMB_X98_Y29_N4
\OBJ3|OBJ3|OBJ1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~4_combout\ = (\OBJ3|OBJ3|OBJ1|Equal1~2_combout\ & (\OBJ3|OBJ3|OBJ1|Equal1~1_combout\ & (\OBJ3|OBJ3|OBJ1|Equal1~3_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal1~2_combout\,
	datab => \OBJ3|OBJ3|OBJ1|Equal1~1_combout\,
	datac => \OBJ3|OBJ3|OBJ1|Equal1~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal1~4_combout\);

-- Location: LCCOMB_X97_Y28_N10
\OBJ3|OBJ3|OBJ1|counter[21]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[21]~87_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(21) & (!\OBJ3|OBJ3|OBJ1|counter[20]~86\)) # (!\OBJ3|OBJ3|OBJ1|counter\(21) & ((\OBJ3|OBJ3|OBJ1|counter[20]~86\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[21]~88\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[20]~86\) # (!\OBJ3|OBJ3|OBJ1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(21),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[20]~86\,
	combout => \OBJ3|OBJ3|OBJ1|counter[21]~87_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[21]~88\);

-- Location: FF_X98_Y28_N9
\OBJ3|OBJ3|OBJ1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[21]~87_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(21));

-- Location: LCCOMB_X97_Y28_N12
\OBJ3|OBJ3|OBJ1|counter[22]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[22]~89_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(22) & (\OBJ3|OBJ3|OBJ1|counter[21]~88\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(22) & (!\OBJ3|OBJ3|OBJ1|counter[21]~88\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[22]~90\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(22) & !\OBJ3|OBJ3|OBJ1|counter[21]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(22),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[21]~88\,
	combout => \OBJ3|OBJ3|OBJ1|counter[22]~89_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[22]~90\);

-- Location: FF_X98_Y28_N27
\OBJ3|OBJ3|OBJ1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[22]~89_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(22));

-- Location: LCCOMB_X97_Y28_N14
\OBJ3|OBJ3|OBJ1|counter[23]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[23]~91_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(23) & (!\OBJ3|OBJ3|OBJ1|counter[22]~90\)) # (!\OBJ3|OBJ3|OBJ1|counter\(23) & ((\OBJ3|OBJ3|OBJ1|counter[22]~90\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[23]~92\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[22]~90\) # (!\OBJ3|OBJ3|OBJ1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(23),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[22]~90\,
	combout => \OBJ3|OBJ3|OBJ1|counter[23]~91_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[23]~92\);

-- Location: FF_X98_Y28_N29
\OBJ3|OBJ3|OBJ1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[23]~91_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(23));

-- Location: LCCOMB_X97_Y28_N16
\OBJ3|OBJ3|OBJ1|counter[24]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[24]~93_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(24) & (\OBJ3|OBJ3|OBJ1|counter[23]~92\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(24) & (!\OBJ3|OBJ3|OBJ1|counter[23]~92\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[24]~94\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(24) & !\OBJ3|OBJ3|OBJ1|counter[23]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(24),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[23]~92\,
	combout => \OBJ3|OBJ3|OBJ1|counter[24]~93_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[24]~94\);

-- Location: FF_X98_Y28_N19
\OBJ3|OBJ3|OBJ1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[24]~93_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(24));

-- Location: LCCOMB_X98_Y28_N4
\OBJ3|OBJ3|OBJ1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~5_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(22) & (!\OBJ3|OBJ3|OBJ1|counter\(24) & (!\OBJ3|OBJ3|OBJ1|counter\(21) & !\OBJ3|OBJ3|OBJ1|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(22),
	datab => \OBJ3|OBJ3|OBJ1|counter\(24),
	datac => \OBJ3|OBJ3|OBJ1|counter\(21),
	datad => \OBJ3|OBJ3|OBJ1|counter\(23),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~5_combout\);

-- Location: LCCOMB_X97_Y28_N18
\OBJ3|OBJ3|OBJ1|counter[25]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[25]~95_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(25) & (!\OBJ3|OBJ3|OBJ1|counter[24]~94\)) # (!\OBJ3|OBJ3|OBJ1|counter\(25) & ((\OBJ3|OBJ3|OBJ1|counter[24]~94\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[25]~96\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[24]~94\) # (!\OBJ3|OBJ3|OBJ1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(25),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[24]~94\,
	combout => \OBJ3|OBJ3|OBJ1|counter[25]~95_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[25]~96\);

-- Location: FF_X98_Y28_N13
\OBJ3|OBJ3|OBJ1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[25]~95_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(25));

-- Location: LCCOMB_X97_Y28_N20
\OBJ3|OBJ3|OBJ1|counter[26]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[26]~97_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(26) & (\OBJ3|OBJ3|OBJ1|counter[25]~96\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(26) & (!\OBJ3|OBJ3|OBJ1|counter[25]~96\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[26]~98\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(26) & !\OBJ3|OBJ3|OBJ1|counter[25]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(26),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[25]~96\,
	combout => \OBJ3|OBJ3|OBJ1|counter[26]~97_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[26]~98\);

-- Location: FF_X98_Y28_N15
\OBJ3|OBJ3|OBJ1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[26]~97_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(26));

-- Location: LCCOMB_X97_Y28_N22
\OBJ3|OBJ3|OBJ1|counter[27]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[27]~99_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(27) & (!\OBJ3|OBJ3|OBJ1|counter[26]~98\)) # (!\OBJ3|OBJ3|OBJ1|counter\(27) & ((\OBJ3|OBJ3|OBJ1|counter[26]~98\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[27]~100\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[26]~98\) # (!\OBJ3|OBJ3|OBJ1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(27),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[26]~98\,
	combout => \OBJ3|OBJ3|OBJ1|counter[27]~99_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[27]~100\);

-- Location: FF_X97_Y28_N23
\OBJ3|OBJ3|OBJ1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[27]~99_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(27));

-- Location: LCCOMB_X97_Y28_N24
\OBJ3|OBJ3|OBJ1|counter[28]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[28]~101_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(28) & (\OBJ3|OBJ3|OBJ1|counter[27]~100\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(28) & (!\OBJ3|OBJ3|OBJ1|counter[27]~100\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[28]~102\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(28) & !\OBJ3|OBJ3|OBJ1|counter[27]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(28),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[27]~100\,
	combout => \OBJ3|OBJ3|OBJ1|counter[28]~101_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[28]~102\);

-- Location: FF_X97_Y28_N25
\OBJ3|OBJ3|OBJ1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[28]~101_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(28));

-- Location: LCCOMB_X98_Y28_N22
\OBJ3|OBJ3|OBJ1|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~6_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(25) & (!\OBJ3|OBJ3|OBJ1|counter\(28) & (!\OBJ3|OBJ3|OBJ1|counter\(26) & !\OBJ3|OBJ3|OBJ1|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(25),
	datab => \OBJ3|OBJ3|OBJ1|counter\(28),
	datac => \OBJ3|OBJ3|OBJ1|counter\(26),
	datad => \OBJ3|OBJ3|OBJ1|counter\(27),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~6_combout\);

-- Location: LCCOMB_X97_Y28_N26
\OBJ3|OBJ3|OBJ1|counter[29]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[29]~103_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(29) & (!\OBJ3|OBJ3|OBJ1|counter[28]~102\)) # (!\OBJ3|OBJ3|OBJ1|counter\(29) & ((\OBJ3|OBJ3|OBJ1|counter[28]~102\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[29]~104\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[28]~102\) # (!\OBJ3|OBJ3|OBJ1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(29),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[28]~102\,
	combout => \OBJ3|OBJ3|OBJ1|counter[29]~103_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[29]~104\);

-- Location: FF_X97_Y28_N27
\OBJ3|OBJ3|OBJ1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[29]~103_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(29));

-- Location: LCCOMB_X97_Y28_N28
\OBJ3|OBJ3|OBJ1|counter[30]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[30]~105_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(30) & (\OBJ3|OBJ3|OBJ1|counter[29]~104\ $ (GND))) # (!\OBJ3|OBJ3|OBJ1|counter\(30) & (!\OBJ3|OBJ3|OBJ1|counter[29]~104\ & VCC))
-- \OBJ3|OBJ3|OBJ1|counter[30]~106\ = CARRY((\OBJ3|OBJ3|OBJ1|counter\(30) & !\OBJ3|OBJ3|OBJ1|counter[29]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(30),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[29]~104\,
	combout => \OBJ3|OBJ3|OBJ1|counter[30]~105_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[30]~106\);

-- Location: FF_X98_Y28_N25
\OBJ3|OBJ3|OBJ1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[30]~105_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(30));

-- Location: LCCOMB_X97_Y28_N30
\OBJ3|OBJ3|OBJ1|counter[31]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[31]~107_combout\ = \OBJ3|OBJ3|OBJ1|counter\(31) $ (\OBJ3|OBJ3|OBJ1|counter[30]~106\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(31),
	cin => \OBJ3|OBJ3|OBJ1|counter[30]~106\,
	combout => \OBJ3|OBJ3|OBJ1|counter[31]~107_combout\);

-- Location: FF_X97_Y28_N31
\OBJ3|OBJ3|OBJ1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[31]~107_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(31));

-- Location: LCCOMB_X98_Y28_N16
\OBJ3|OBJ3|OBJ1|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~7_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(30) & (!\OBJ3|OBJ3|OBJ1|counter\(29) & !\OBJ3|OBJ3|OBJ1|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(30),
	datac => \OBJ3|OBJ3|OBJ1|counter\(29),
	datad => \OBJ3|OBJ3|OBJ1|counter\(31),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~7_combout\);

-- Location: LCCOMB_X98_Y28_N10
\OBJ3|OBJ3|OBJ1|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~8_combout\ = (\OBJ3|OBJ3|OBJ1|Equal1~5_combout\ & (\OBJ3|OBJ3|OBJ1|Equal1~6_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|Equal1~5_combout\,
	datac => \OBJ3|OBJ3|OBJ1|Equal1~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~7_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal1~8_combout\);

-- Location: LCCOMB_X98_Y29_N6
\OBJ3|OBJ3|OBJ1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal2~0_combout\ = (\OBJ3|OBJ3|OBJ1|Equal1~9_combout\ & (!\OBJ3|OBJ3|OBJ1|counter\(2) & (\OBJ3|OBJ3|OBJ1|Equal1~4_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal1~9_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(2),
	datac => \OBJ3|OBJ3|OBJ1|Equal1~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~8_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\);

-- Location: LCCOMB_X101_Y29_N10
\OBJ3|OBJ3|OBJ1|progState~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~23_combout\ = (\OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ & ((\OBJ3|OBJ3|OBJ1|control~q\ & ((\OBJ3|OBJ3|OBJ1|Equal2~0_combout\))) # (!\OBJ3|OBJ3|OBJ1|control~q\ & (!\OBJ3|OBJ3|OBJ1|main_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	datab => \OBJ3|OBJ3|OBJ1|control~q\,
	datac => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|progState~23_combout\);

-- Location: FF_X101_Y29_N31
\OBJ3|OBJ3|OBJ1|progState.prog2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|progState~20_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|main_state~q\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|progState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.prog2~q\);

-- Location: LCCOMB_X102_Y29_N30
\OBJ3|OBJ3|OBJ1|progState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~19_combout\ = (\OBJ1|obj5|debounced~q\ & (\OBJ1|obj6|debounced~q\ & (!\OBJ1|obj7|debounced~q\ & !\OBJ3|OBJ3|OBJ1|control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|debounced~q\,
	datab => \OBJ1|obj6|debounced~q\,
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState~19_combout\);

-- Location: FF_X101_Y29_N5
\OBJ3|OBJ3|OBJ1|progState.prog3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|progState~19_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|main_state~q\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|progState~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.prog3~q\);

-- Location: LCCOMB_X101_Y29_N24
\OBJ3|OBJ3|OBJ1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Selector8~0_combout\ = (!\OBJ3|OBJ3|OBJ1|progState.prog2~q\ & !\OBJ3|OBJ3|OBJ1|progState.prog3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	combout => \OBJ3|OBJ3|OBJ1|Selector8~0_combout\);

-- Location: LCCOMB_X99_Y29_N14
\OBJ3|OBJ3|OBJ1|instOutSigVal~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\ = (!\OBJ3|OBJ3|OBJ1|Equal1~10_combout\ & !\OBJ3|OBJ3|OBJ1|progState.prog1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	datad => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\);

-- Location: LCCOMB_X99_Y29_N24
\OBJ3|OBJ3|OBJ1|control~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|control~3_combout\ = (\OBJ3|OBJ3|OBJ1|control~2_combout\ & (!\OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\ & ((\OBJ3|OBJ3|OBJ1|Selector8~0_combout\) # (\OBJ3|OBJ3|OBJ1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|control~2_combout\,
	datab => \OBJ3|OBJ3|OBJ1|Selector8~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|control~3_combout\);

-- Location: LCCOMB_X99_Y29_N18
\OBJ3|OBJ3|OBJ1|control~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|control~4_combout\ = (\OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ & ((\OBJ3|OBJ3|OBJ1|control~q\ & ((!\OBJ3|OBJ3|OBJ1|control~3_combout\))) # (!\OBJ3|OBJ3|OBJ1|control~q\ & (!\OBJ3|OBJ3|OBJ1|main_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	datac => \OBJ3|OBJ3|OBJ1|control~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~3_combout\,
	combout => \OBJ3|OBJ3|OBJ1|control~4_combout\);

-- Location: FF_X99_Y29_N19
\OBJ3|OBJ3|OBJ1|control\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|control~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|control~q\);

-- Location: LCCOMB_X99_Y29_N22
\OBJ3|OBJ3|OBJ1|counter[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\ = (\OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ & ((\OBJ3|OBJ3|OBJ1|control~q\) # (!\OBJ3|OBJ3|OBJ1|main_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|control~q\,
	datac => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datad => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\);

-- Location: LCCOMB_X102_Y29_N16
\OBJ3|OBJ3|OBJ1|counter[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~55_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & ((!\OBJ1|obj2|debounced~q\))) # (!\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & (\OBJ3|OBJ3|OBJ1|main_state~q\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|progState.progError~q\ & (\OBJ3|OBJ3|OBJ1|main_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ1|obj2|debounced~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datad => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~55_combout\);

-- Location: LCCOMB_X101_Y29_N26
\OBJ3|OBJ3|OBJ1|counter[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~53_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog2~q\) # ((\OBJ3|OBJ3|OBJ1|progState.prog3~q\) # (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datad => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~53_combout\);

-- Location: LCCOMB_X98_Y29_N16
\OBJ3|OBJ3|OBJ1|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~52_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & (\OBJ3|OBJ3|OBJ1|Equal2~0_combout\)) # (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & ((\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~52_combout\);

-- Location: LCCOMB_X98_Y29_N28
\OBJ3|OBJ3|OBJ1|counter[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~54_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progIdle~q\) # ((\OBJ3|OBJ3|OBJ1|counter[0]~50_combout\) # ((\OBJ3|OBJ3|OBJ1|counter[0]~53_combout\ & \OBJ3|OBJ3|OBJ1|counter[9]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter[0]~53_combout\,
	datac => \OBJ3|OBJ3|OBJ1|counter[0]~50_combout\,
	datad => \OBJ3|OBJ3|OBJ1|counter[9]~52_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~54_combout\);

-- Location: LCCOMB_X98_Y29_N30
\OBJ3|OBJ3|OBJ1|counter[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\ = (\OBJ3|OBJ3|OBJ1|counter[0]~34_combout\ & (((!\OBJ3|OBJ3|OBJ1|counter[0]~54_combout\) # (!\OBJ3|OBJ3|OBJ1|counter[9]~55_combout\)) # (!\OBJ3|OBJ3|OBJ1|control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|control~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\,
	datac => \OBJ3|OBJ3|OBJ1|counter[9]~55_combout\,
	datad => \OBJ3|OBJ3|OBJ1|counter[0]~54_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\);

-- Location: FF_X97_Y29_N5
\OBJ3|OBJ3|OBJ1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[2]~39_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(2));

-- Location: LCCOMB_X97_Y29_N6
\OBJ3|OBJ3|OBJ1|counter[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[3]~41_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(3) & (!\OBJ3|OBJ3|OBJ1|counter[2]~40\)) # (!\OBJ3|OBJ3|OBJ1|counter\(3) & ((\OBJ3|OBJ3|OBJ1|counter[2]~40\) # (GND)))
-- \OBJ3|OBJ3|OBJ1|counter[3]~42\ = CARRY((!\OBJ3|OBJ3|OBJ1|counter[2]~40\) # (!\OBJ3|OBJ3|OBJ1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(3),
	datad => VCC,
	cin => \OBJ3|OBJ3|OBJ1|counter[2]~40\,
	combout => \OBJ3|OBJ3|OBJ1|counter[3]~41_combout\,
	cout => \OBJ3|OBJ3|OBJ1|counter[3]~42\);

-- Location: FF_X97_Y29_N7
\OBJ3|OBJ3|OBJ1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[3]~41_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(3));

-- Location: FF_X97_Y29_N9
\OBJ3|OBJ3|OBJ1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[4]~43_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(4));

-- Location: LCCOMB_X99_Y29_N28
\OBJ3|OBJ3|OBJ1|counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~49_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(1)) # ((\OBJ1|obj5|debounced~q\ & (!\OBJ1|obj7|debounced~q\)) # (!\OBJ1|obj5|debounced~q\ & ((!\OBJ1|obj6|debounced~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj5|debounced~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ1|obj6|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~49_combout\);

-- Location: LCCOMB_X98_Y29_N26
\OBJ3|OBJ3|OBJ1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal3~0_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(3) & (!\OBJ3|OBJ3|OBJ1|counter\(2) & !\OBJ3|OBJ3|OBJ1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(3),
	datac => \OBJ3|OBJ3|OBJ1|counter\(2),
	datad => \OBJ3|OBJ3|OBJ1|counter\(0),
	combout => \OBJ3|OBJ3|OBJ1|Equal3~0_combout\);

-- Location: LCCOMB_X98_Y29_N2
\OBJ3|OBJ3|OBJ1|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal3~3_combout\ = (\OBJ3|OBJ3|OBJ1|Equal3~0_combout\ & (\OBJ3|OBJ3|OBJ1|Equal1~4_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal3~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|Equal1~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~8_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal3~3_combout\);

-- Location: LCCOMB_X98_Y29_N8
\OBJ3|OBJ3|OBJ1|counter[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[0]~50_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ3|OBJ3|OBJ1|counter\(4)) # ((\OBJ3|OBJ3|OBJ1|counter[9]~49_combout\) # (!\OBJ3|OBJ3|OBJ1|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(4),
	datab => \OBJ3|OBJ3|OBJ1|counter[9]~49_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~3_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[0]~50_combout\);

-- Location: LCCOMB_X98_Y29_N14
\OBJ3|OBJ3|OBJ1|counter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~47_combout\ = (\OBJ3|OBJ3|OBJ1|Selector8~0_combout\) # ((\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\)) # (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & ((!\OBJ3|OBJ3|OBJ1|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|Selector8~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~47_combout\);

-- Location: LCCOMB_X99_Y29_N0
\OBJ3|OBJ3|OBJ1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal3~1_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(1) & \OBJ3|OBJ3|OBJ1|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ3|OBJ3|OBJ1|counter\(1),
	datad => \OBJ3|OBJ3|OBJ1|counter\(4),
	combout => \OBJ3|OBJ3|OBJ1|Equal3~1_combout\);

-- Location: LCCOMB_X98_Y29_N24
\OBJ3|OBJ3|OBJ1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal3~2_combout\ = (\OBJ3|OBJ3|OBJ1|Equal3~0_combout\ & (\OBJ3|OBJ3|OBJ1|Equal3~1_combout\ & (\OBJ3|OBJ3|OBJ1|Equal1~4_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal3~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|Equal3~1_combout\,
	datac => \OBJ3|OBJ3|OBJ1|Equal1~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~8_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\);

-- Location: LCCOMB_X98_Y29_N12
\OBJ3|OBJ3|OBJ1|counter[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~48_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & (!\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & ((\OBJ3|OBJ3|OBJ1|progState.prog1~q\) # (!\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))) # (!\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & 
-- (((\OBJ3|OBJ3|OBJ1|progState.prog1~q\)) # (!\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datab => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~48_combout\);

-- Location: LCCOMB_X98_Y29_N18
\OBJ3|OBJ3|OBJ1|counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\ = ((\OBJ3|OBJ3|OBJ1|counter[0]~50_combout\) # ((!\OBJ3|OBJ3|OBJ1|counter[9]~48_combout\) # (!\OBJ3|OBJ3|OBJ1|counter[9]~47_combout\))) # (!\OBJ3|OBJ3|OBJ1|counter[9]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter[0]~50_combout\,
	datac => \OBJ3|OBJ3|OBJ1|counter[9]~47_combout\,
	datad => \OBJ3|OBJ3|OBJ1|counter[9]~48_combout\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\);

-- Location: FF_X98_Y29_N23
\OBJ3|OBJ3|OBJ1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	asdata => \OBJ3|OBJ3|OBJ1|counter[0]~35_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	sload => VCC,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(0));

-- Location: FF_X97_Y29_N3
\OBJ3|OBJ3|OBJ1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|counter[1]~37_combout\,
	sclr => \OBJ3|OBJ3|OBJ1|counter[9]~51_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|counter\(1));

-- Location: LCCOMB_X98_Y29_N22
\OBJ3|OBJ3|OBJ1|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~9_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(1) & (\OBJ3|OBJ3|OBJ1|counter\(3) & (\OBJ3|OBJ3|OBJ1|counter\(0) & !\OBJ3|OBJ3|OBJ1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(1),
	datab => \OBJ3|OBJ3|OBJ1|counter\(3),
	datac => \OBJ3|OBJ3|OBJ1|counter\(0),
	datad => \OBJ3|OBJ3|OBJ1|counter\(4),
	combout => \OBJ3|OBJ3|OBJ1|Equal1~9_combout\);

-- Location: LCCOMB_X98_Y29_N0
\OBJ3|OBJ3|OBJ1|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Equal1~10_combout\ = (\OBJ3|OBJ3|OBJ1|Equal1~9_combout\ & (\OBJ3|OBJ3|OBJ1|counter\(2) & (\OBJ3|OBJ3|OBJ1|Equal1~4_combout\ & \OBJ3|OBJ3|OBJ1|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal1~9_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(2),
	datac => \OBJ3|OBJ3|OBJ1|Equal1~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~8_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\);

-- Location: LCCOMB_X102_Y29_N28
\OBJ3|OBJ3|OBJ1|progState~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~22_combout\ = (\OBJ3|OBJ3|OBJ1|progState~17_combout\ & (\OBJ3|OBJ3|OBJ1|progState~21_combout\)) # (!\OBJ3|OBJ3|OBJ1|progState~17_combout\ & (((\OBJ3|OBJ3|OBJ1|progState.prog1~q\) # (\OBJ3|OBJ3|OBJ1|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState~21_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState~17_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|progState~22_combout\);

-- Location: FF_X102_Y29_N29
\OBJ3|OBJ3|OBJ1|progState.prog1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|progState~22_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.prog1~q\);

-- Location: LCCOMB_X102_Y29_N4
\OBJ3|OBJ3|OBJ1|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Selector8~2_combout\ = (\OBJ3|OBJ3|OBJ1|Equal2~0_combout\ & ((\OBJ3|OBJ3|OBJ1|progState.prog2~q\) # (\OBJ3|OBJ3|OBJ1|progState.prog3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Selector8~2_combout\);

-- Location: LCCOMB_X102_Y29_N22
\OBJ3|OBJ3|OBJ1|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Selector8~3_combout\ = (\OBJ3|OBJ3|OBJ1|Selector8~1_combout\) # ((\OBJ3|OBJ3|OBJ1|Selector8~2_combout\) # ((!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & \OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Selector8~1_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datac => \OBJ3|OBJ3|OBJ1|Selector8~2_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|Selector8~3_combout\);

-- Location: FF_X102_Y29_N9
\OBJ3|OBJ3|OBJ1|progState.progIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|progState.progIdle~0_combout\,
	asdata => \OBJ3|OBJ3|OBJ1|Selector8~3_combout\,
	sload => \OBJ3|OBJ3|OBJ1|control~q\,
	ena => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\);

-- Location: LCCOMB_X102_Y29_N18
\OBJ3|OBJ3|OBJ1|counter[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\ = (!\OBJ3|OBJ3|OBJ1|progState.progIdle~q\ & \OBJ3|OBJ3|OBJ1|control~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\);

-- Location: LCCOMB_X102_Y29_N0
\OBJ3|OBJ3|OBJ1|main_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|main_state~0_combout\ = (\OBJ3|OBJ3|OBJ1|main_state~q\ & (((\OBJ3|OBJ3|OBJ1|control~q\)))) # (!\OBJ3|OBJ3|OBJ1|main_state~q\ & (\OBJ1|obj7|debounced~q\ $ (((!\OBJ3|OBJ3|OBJ1|Equal4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ1|obj7|debounced~q\,
	datac => \OBJ3|OBJ3|OBJ1|control~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal4~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|main_state~0_combout\);

-- Location: LCCOMB_X99_Y29_N4
\OBJ3|OBJ3|OBJ1|main_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|main_state~1_combout\ = (\OBJ3|OBJ3|OBJ1|counter[29]~32_combout\ & (\OBJ3|OBJ3|OBJ1|main_state~0_combout\ & ((!\OBJ3|OBJ3|OBJ1|control~3_combout\) # (!\OBJ3|OBJ3|OBJ1|counter[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	datac => \OBJ3|OBJ3|OBJ1|main_state~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|control~3_combout\,
	combout => \OBJ3|OBJ3|OBJ1|main_state~1_combout\);

-- Location: FF_X99_Y29_N5
\OBJ3|OBJ3|OBJ1|main_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|main_state~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|main_state~q\);

-- Location: LCCOMB_X102_Y29_N24
\OBJ3|OBJ3|OBJ1|progState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~17_combout\ = (!\OBJ3|OBJ3|OBJ1|main_state~q\ & !\OBJ3|OBJ3|OBJ1|control~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState~17_combout\);

-- Location: LCCOMB_X102_Y29_N14
\OBJ3|OBJ3|OBJ1|progState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~18_combout\ = (\OBJ3|OBJ3|OBJ1|progState~17_combout\ & (((\OBJ1|obj7|debounced~q\ & !\OBJ3|OBJ3|OBJ1|Equal4~0_combout\)))) # (!\OBJ3|OBJ3|OBJ1|progState~17_combout\ & (\OBJ3|OBJ3|OBJ1|progState~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState~16_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState~17_combout\,
	datac => \OBJ1|obj7|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal4~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|progState~18_combout\);

-- Location: FF_X102_Y29_N15
\OBJ3|OBJ3|OBJ1|progState.progError\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|progState~18_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|progState.progError~q\);

-- Location: LCCOMB_X103_Y29_N6
\OBJ3|OBJ3|OBJ1|progState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|progState~16_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ1|obj5|debounced~q\ & (\OBJ1|obj7|debounced~q\)) # (!\OBJ1|obj5|debounced~q\ & ((\OBJ1|obj6|debounced~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj7|debounced~q\,
	datab => \OBJ1|obj5|debounced~q\,
	datac => \OBJ1|obj6|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	combout => \OBJ3|OBJ3|OBJ1|progState~16_combout\);

-- Location: LCCOMB_X102_Y29_N12
\OBJ3|OBJ3|OBJ1|soundOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|soundOut~0_combout\ = (\OBJ3|OBJ3|OBJ1|main_state~q\ & (((!\OBJ3|OBJ3|OBJ1|progState.progError~q\ & !\OBJ3|OBJ3|OBJ1|progState.progIdle~q\)) # (!\OBJ3|OBJ3|OBJ1|control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progIdle~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|soundOut~0_combout\);

-- Location: LCCOMB_X92_Y29_N30
\OBJ3|OBJ3|OBJ1|soundOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|soundOut~1_combout\ = (\OBJ3|OBJ3|OBJ1|soundOut~q\ & ((\OBJ3|OBJ3|OBJ1|soundOut~0_combout\) # ((\OBJ3|OBJ3|OBJ1|fly_state~q\ & !\OBJ1|obj1|debounced~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datab => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	datac => \OBJ3|OBJ3|OBJ1|soundOut~0_combout\,
	datad => \OBJ1|obj1|debounced~q\,
	combout => \OBJ3|OBJ3|OBJ1|soundOut~1_combout\);

-- Location: LCCOMB_X99_Y29_N30
\OBJ3|OBJ3|OBJ1|instOutSigVal~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~6_combout\ = (\OBJ3|OBJ3|OBJ1|control~q\ & ((\OBJ1|obj1|debounced~q\) # (!\OBJ3|OBJ3|OBJ1|fly_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datac => \OBJ1|obj1|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~6_combout\);

-- Location: LCCOMB_X92_Y29_N20
\OBJ3|OBJ3|OBJ1|soundOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|soundOut~2_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|soundOut~1_combout\) # ((\OBJ3|OBJ3|OBJ1|progState~16_combout\ & \OBJ3|OBJ3|OBJ1|instOutSigVal~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|progState~16_combout\,
	datac => \OBJ3|OBJ3|OBJ1|soundOut~1_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~6_combout\,
	combout => \OBJ3|OBJ3|OBJ1|soundOut~2_combout\);

-- Location: FF_X92_Y29_N21
\OBJ3|OBJ3|OBJ1|soundOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|soundOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|soundOut~q\);

-- Location: LCCOMB_X100_Y29_N28
\OBJ3|OBJ3|OBJ1|instOutSigVal~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & ((\OBJ3|OBJ3|OBJ1|Equal3~2_combout\) # ((\OBJ3|OBJ3|OBJ1|progState.progError~q\ & !\OBJ3|OBJ3|OBJ1|process_0~1_combout\)))) # (!\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & 
-- (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & (!\OBJ3|OBJ3|OBJ1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\);

-- Location: LCCOMB_X101_Y29_N8
\OBJ3|OBJ3|OBJ1|instOutSigVal~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog2~q\ & (((!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & !\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)) # (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\))) # (!\OBJ3|OBJ3|OBJ1|progState.prog2~q\ & 
-- (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & (!\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datab => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datac => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\);

-- Location: LCCOMB_X101_Y29_N16
\OBJ3|OBJ3|OBJ1|instOutSigVal~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & !\OBJ3|OBJ3|OBJ1|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\);

-- Location: LCCOMB_X101_Y29_N22
\OBJ3|OBJ3|OBJ1|instOutSigVal~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~19_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(1) & ((\OBJ3|OBJ3|OBJ1|counter\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\))) # (!\OBJ3|OBJ3|OBJ1|counter\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|counter\(1) & ((\OBJ3|OBJ3|OBJ1|counter\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\)) # (!\OBJ3|OBJ3|OBJ1|counter\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(1),
	datab => \OBJ3|OBJ3|OBJ1|counter\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~37_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~19_combout\);

-- Location: LCCOMB_X101_Y29_N12
\OBJ3|OBJ3|OBJ1|instOutSigVal~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~20_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal~19_combout\) # ((\OBJ3|OBJ3|OBJ1|counter\(1) & (\OBJ3|OBJ3|OBJ1|progState.prog3~q\ & !\OBJ3|OBJ3|OBJ1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(1),
	datab => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~19_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~20_combout\);

-- Location: LCCOMB_X101_Y29_N6
\OBJ3|OBJ3|OBJ1|instOutSigVal~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~21_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~20_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\ & \OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~20_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~21_combout\);

-- Location: LCCOMB_X99_Y29_N26
\OBJ3|OBJ3|OBJ1|instOutSigVal~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\ = ((\OBJ3|OBJ3|OBJ1|control~q\ & ((\OBJ1|obj1|debounced~q\) # (!\OBJ3|OBJ3|OBJ1|fly_state~q\)))) # (!\OBJ3|OBJ3|OBJ1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj1|debounced~q\,
	datab => \OBJ3|OBJ3|OBJ1|fly_state~q\,
	datac => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|control~q\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\);

-- Location: FF_X101_Y29_N7
\OBJ3|OBJ3|OBJ1|instOutSigVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~21_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1));

-- Location: LCCOMB_X99_Y29_N10
\OBJ3|OBJ3|OBJ1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Mux7~0_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(3) & ((\OBJ3|OBJ3|OBJ1|counter\(1)) # ((\OBJ3|OBJ3|OBJ1|counter\(2)) # (\OBJ3|OBJ3|OBJ1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(3),
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datac => \OBJ3|OBJ3|OBJ1|counter\(2),
	datad => \OBJ3|OBJ3|OBJ1|counter\(0),
	combout => \OBJ3|OBJ3|OBJ1|Mux7~0_combout\);

-- Location: LCCOMB_X99_Y29_N12
\OBJ3|OBJ3|OBJ1|instOutSigVal~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(4)) # (\OBJ3|OBJ3|OBJ1|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(4),
	datad => \OBJ3|OBJ3|OBJ1|Mux7~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\);

-- Location: LCCOMB_X100_Y29_N22
\OBJ3|OBJ3|OBJ1|instOutSigVal~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~12_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & (((\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\,
	datab => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~12_combout\);

-- Location: LCCOMB_X100_Y28_N24
\OBJ3|OBJ3|OBJ1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Mux0~0_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(3)) # ((\OBJ3|OBJ3|OBJ1|counter\(1) & (\OBJ3|OBJ3|OBJ1|counter\(0) & \OBJ3|OBJ3|OBJ1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(3),
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datac => \OBJ3|OBJ3|OBJ1|counter\(0),
	datad => \OBJ3|OBJ3|OBJ1|counter\(2),
	combout => \OBJ3|OBJ3|OBJ1|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y29_N30
\OBJ3|OBJ3|OBJ1|instOutSigVal~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~14_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & ((!\OBJ3|OBJ3|OBJ1|counter\(0)))) # (!\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	datad => \OBJ3|OBJ3|OBJ1|counter\(0),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~14_combout\);

-- Location: LCCOMB_X100_Y29_N4
\OBJ3|OBJ3|OBJ1|instOutSigVal~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~15_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal~14_combout\) # ((!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & (\OBJ3|OBJ3|OBJ1|Mux0~0_combout\ & !\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datab => \OBJ3|OBJ3|OBJ1|Mux0~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~14_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~15_combout\);

-- Location: LCCOMB_X100_Y29_N20
\OBJ3|OBJ3|OBJ1|instOutSigVal~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~13_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog3~q\ & (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\ & ((\OBJ3|OBJ3|OBJ1|counter\(3)) # (\OBJ3|OBJ3|OBJ1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(3),
	datac => \OBJ3|OBJ3|OBJ1|counter\(2),
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~13_combout\);

-- Location: LCCOMB_X100_Y29_N12
\OBJ3|OBJ3|OBJ1|instOutSigVal~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~16_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~12_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~15_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~12_combout\,
	datab => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~15_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~13_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~16_combout\);

-- Location: FF_X100_Y29_N13
\OBJ3|OBJ3|OBJ1|instOutSigVal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~16_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4));

-- Location: LCCOMB_X100_Y28_N10
\OBJ3|OBJ3|OBJ1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Mux2~0_combout\ = \OBJ3|OBJ3|OBJ1|counter\(2) $ (((\OBJ3|OBJ3|OBJ1|counter\(1) & \OBJ3|OBJ3|OBJ1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datac => \OBJ3|OBJ3|OBJ1|counter\(0),
	datad => \OBJ3|OBJ3|OBJ1|counter\(2),
	combout => \OBJ3|OBJ3|OBJ1|Mux2~0_combout\);

-- Location: LCCOMB_X100_Y29_N10
\OBJ3|OBJ3|OBJ1|instOutSigVal~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~22_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\ & ((\OBJ3|OBJ3|OBJ1|Mux2~0_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\ 
-- & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|Mux2~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~22_combout\);

-- Location: LCCOMB_X101_Y29_N30
\OBJ3|OBJ3|OBJ1|instOutSigVal~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~24_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog2~q\ & (\OBJ3|OBJ3|OBJ1|counter\(2) $ (((\OBJ3|OBJ3|OBJ1|counter\(0) & \OBJ3|OBJ3|OBJ1|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(2),
	datab => \OBJ3|OBJ3|OBJ1|counter\(0),
	datac => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datad => \OBJ3|OBJ3|OBJ1|counter\(1),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~24_combout\);

-- Location: LCCOMB_X100_Y29_N8
\OBJ3|OBJ3|OBJ1|instOutSigVal~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~25_combout\ = (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~24_combout\) # ((\OBJ3|OBJ3|OBJ1|progState.prog3~q\ & !\OBJ3|OBJ3|OBJ1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal~24_combout\,
	datac => \OBJ3|OBJ3|OBJ1|counter\(2),
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~25_combout\);

-- Location: LCCOMB_X101_Y29_N2
\OBJ3|OBJ3|OBJ1|instOutSigVal~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~23_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\ & (\OBJ3|OBJ3|OBJ1|counter\(2) $ (((!\OBJ3|OBJ3|OBJ1|counter\(1) & !\OBJ3|OBJ3|OBJ1|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(2),
	datab => \OBJ3|OBJ3|OBJ1|counter\(1),
	datac => \OBJ3|OBJ3|OBJ1|counter\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~17_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~23_combout\);

-- Location: LCCOMB_X100_Y29_N2
\OBJ3|OBJ3|OBJ1|instOutSigVal~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~26_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~22_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~25_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~22_combout\,
	datab => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~25_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~23_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~26_combout\);

-- Location: FF_X100_Y29_N3
\OBJ3|OBJ3|OBJ1|instOutSigVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~26_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2));

-- Location: LCCOMB_X101_Y29_N20
\OBJ3|OBJ3|OBJ1|instOutSigVal~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~8_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog2~q\) # (((\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & !\OBJ3|OBJ3|OBJ1|Equal3~2_combout\)) # (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datab => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~8_combout\);

-- Location: LCCOMB_X101_Y29_N18
\OBJ3|OBJ3|OBJ1|instOutSigVal~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~9_combout\ = (\OBJ3|OBJ3|OBJ1|counter\(0) & (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\ & (\OBJ3|OBJ3|OBJ1|progState.prog3~q\))) # (!\OBJ3|OBJ3|OBJ1|counter\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|counter\(0),
	datac => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~8_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~9_combout\);

-- Location: LCCOMB_X101_Y29_N0
\OBJ3|OBJ3|OBJ1|instOutSigVal~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~10_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~9_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\ & \OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~9_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~10_combout\);

-- Location: FF_X101_Y29_N1
\OBJ3|OBJ3|OBJ1|instOutSigVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~10_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0));

-- Location: LCCOMB_X105_Y33_N10
\OBJ3|OBJ1|OBJ7|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~7_combout\);

-- Location: LCCOMB_X99_Y29_N16
\OBJ3|OBJ3|OBJ1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|Mux9~0_combout\ = \OBJ3|OBJ3|OBJ1|counter\(3) $ (((\OBJ3|OBJ3|OBJ1|counter\(2)) # ((\OBJ3|OBJ3|OBJ1|counter\(1)) # (\OBJ3|OBJ3|OBJ1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(3),
	datab => \OBJ3|OBJ3|OBJ1|counter\(2),
	datac => \OBJ3|OBJ3|OBJ1|counter\(1),
	datad => \OBJ3|OBJ3|OBJ1|counter\(0),
	combout => \OBJ3|OBJ3|OBJ1|Mux9~0_combout\);

-- Location: LCCOMB_X100_Y29_N6
\OBJ3|OBJ3|OBJ1|instOutSigVal~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~27_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & ((\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & ((\OBJ3|OBJ3|OBJ1|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|Mux9~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~27_combout\);

-- Location: LCCOMB_X100_Y29_N24
\OBJ3|OBJ3|OBJ1|instOutSigVal~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~30_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & (!\OBJ3|OBJ3|OBJ1|counter\(0))) # (!\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(0),
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~30_combout\);

-- Location: LCCOMB_X100_Y29_N14
\OBJ3|OBJ3|OBJ1|instOutSigVal~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~31_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal~30_combout\) # ((!\OBJ3|OBJ3|OBJ1|Mux0~0_combout\ & (!\OBJ3|OBJ3|OBJ1|progState.prog1~q\ & !\OBJ3|OBJ3|OBJ1|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|Mux0~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal~30_combout\,
	datac => \OBJ3|OBJ3|OBJ1|progState.prog1~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal1~10_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~31_combout\);

-- Location: LCCOMB_X101_Y29_N4
\OBJ3|OBJ3|OBJ1|instOutSigVal~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~28_combout\ = (!\OBJ3|OBJ3|OBJ1|counter\(3) & (\OBJ3|OBJ3|OBJ1|progState.prog3~q\ & !\OBJ3|OBJ3|OBJ1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|counter\(3),
	datac => \OBJ3|OBJ3|OBJ1|progState.prog3~q\,
	datad => \OBJ3|OBJ3|OBJ1|counter\(2),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~28_combout\);

-- Location: LCCOMB_X101_Y29_N28
\OBJ3|OBJ3|OBJ1|instOutSigVal~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~29_combout\ = (!\OBJ3|OBJ3|OBJ1|Equal2~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~28_combout\) # ((\OBJ3|OBJ3|OBJ1|progState.prog2~q\ & \OBJ3|OBJ3|OBJ1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|progState.prog2~q\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal~28_combout\,
	datac => \OBJ3|OBJ3|OBJ1|Mux0~0_combout\,
	datad => \OBJ3|OBJ3|OBJ1|Equal2~0_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~29_combout\);

-- Location: LCCOMB_X100_Y29_N0
\OBJ3|OBJ3|OBJ1|instOutSigVal~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~32_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~27_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~31_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~27_combout\,
	datab => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~31_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~29_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~32_combout\);

-- Location: FF_X100_Y29_N1
\OBJ3|OBJ3|OBJ1|instOutSigVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~32_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3));

-- Location: LCCOMB_X105_Y33_N4
\OBJ3|OBJ1|OBJ7|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~3_combout\);

-- Location: LCCOMB_X105_Y33_N26
\OBJ3|OBJ1|OBJ7|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~4_combout\);

-- Location: LCCOMB_X100_Y29_N26
\OBJ3|OBJ3|OBJ1|instOutSigVal~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~34_combout\ = (\OBJ3|OBJ3|OBJ1|progState.progError~q\ & ((\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & (!\OBJ3|OBJ3|OBJ1|counter\(0))) # (!\OBJ3|OBJ3|OBJ1|process_0~1_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|counter\(0),
	datab => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datac => \OBJ3|OBJ3|OBJ1|process_0~1_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~34_combout\);

-- Location: LCCOMB_X100_Y29_N16
\OBJ3|OBJ3|OBJ1|instOutSigVal~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~33_combout\ = (\OBJ3|OBJ3|OBJ1|progState.prog4~q\ & ((\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|Equal3~2_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~11_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|progState.prog4~q\,
	datad => \OBJ3|OBJ3|OBJ1|Equal3~2_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~33_combout\);

-- Location: LCCOMB_X100_Y29_N18
\OBJ3|OBJ3|OBJ1|instOutSigVal~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|instOutSigVal~35_combout\ = (\OBJ3|OBJ3|OBJ1|process_0~0_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal~34_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal~18_combout\,
	datab => \OBJ3|OBJ3|OBJ1|process_0~0_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal~34_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal~33_combout\,
	combout => \OBJ3|OBJ3|OBJ1|instOutSigVal~35_combout\);

-- Location: FF_X100_Y29_N19
\OBJ3|OBJ3|OBJ1|instOutSigVal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|instOutSigVal~35_combout\,
	ena => \OBJ3|OBJ3|OBJ1|instOutSigVal~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5));

-- Location: LCCOMB_X105_Y33_N2
\OBJ3|OBJ1|OBJ7|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ1|OBJ7|Mux6~4_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ7|Mux6~3_combout\ & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ1|OBJ7|Mux6~3_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux6~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~8_combout\);

-- Location: LCCOMB_X105_Y33_N24
\OBJ3|OBJ1|OBJ7|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\);

-- Location: LCCOMB_X105_Y33_N0
\OBJ3|OBJ1|OBJ7|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux6~9_combout\ = (\OBJ3|OBJ1|OBJ7|Mux6~8_combout\ & ((\OBJ3|OBJ1|OBJ7|Mux6~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ7|Mux6~8_combout\ & (((\OBJ3|OBJ1|OBJ7|Mux6~6_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux6~7_combout\,
	datab => \OBJ3|OBJ1|OBJ7|Mux6~8_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ7|Mux6~9_combout\);

-- Location: LCCOMB_X105_Y33_N14
\OBJ3|OBJ1|OBJ7|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux5~4_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux5~4_combout\);

-- Location: LCCOMB_X105_Y33_N8
\OBJ3|OBJ1|OBJ7|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux5~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux5~3_combout\);

-- Location: LCCOMB_X105_Y33_N22
\OBJ3|OBJ1|OBJ7|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ7|Mux5~4_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ1|OBJ7|Mux5~3_combout\ & 
-- !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ1|OBJ7|Mux5~4_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux5~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ7|Mux5~8_combout\);

-- Location: LCCOMB_X105_Y33_N20
\OBJ3|OBJ1|OBJ7|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux5~7_combout\);

-- Location: LCCOMB_X105_Y33_N12
\OBJ3|OBJ1|OBJ7|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ7|Mux5~8_combout\ & ((\OBJ3|OBJ1|OBJ7|Mux5~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ7|Mux5~8_combout\ & (((\OBJ3|OBJ1|OBJ7|Mux6~6_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux5~8_combout\,
	datab => \OBJ3|OBJ1|OBJ7|Mux5~7_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ7|Mux5~9_combout\);

-- Location: LCCOMB_X106_Y33_N28
\OBJ3|OBJ1|OBJ7|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux4~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux4~7_combout\);

-- Location: LCCOMB_X106_Y33_N12
\OBJ3|OBJ1|OBJ7|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux4~4_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux4~4_combout\);

-- Location: LCCOMB_X106_Y33_N30
\OBJ3|OBJ1|OBJ7|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux4~2_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ7|Mux4~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ7|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux5~3_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux4~4_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ7|Mux4~2_combout\);

-- Location: LCCOMB_X106_Y33_N2
\OBJ3|OBJ1|OBJ7|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux4~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ7|Mux4~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ7|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ1|OBJ7|Mux4~7_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux4~2_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ7|Mux4~10_combout\);

-- Location: LCCOMB_X105_Y33_N28
\OBJ3|OBJ1|OBJ7|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux3~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux3~10_combout\);

-- Location: LCCOMB_X105_Y33_N6
\OBJ3|OBJ1|OBJ7|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux3~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ7|Mux3~10_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux3~10_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ7|Mux3~11_combout\);

-- Location: LCCOMB_X105_Y33_N16
\OBJ3|OBJ1|OBJ7|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux3~7_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux3~7_combout\);

-- Location: LCCOMB_X105_Y33_N30
\OBJ3|OBJ1|OBJ7|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux3~6_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux3~6_combout\);

-- Location: LCCOMB_X105_Y33_N18
\OBJ3|OBJ1|OBJ7|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux3~9_combout\ = (\OBJ3|OBJ1|OBJ7|Mux3~11_combout\ & ((\OBJ3|OBJ1|OBJ7|Mux3~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ7|Mux3~11_combout\ & (((\OBJ3|OBJ1|OBJ7|Mux3~6_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux3~11_combout\,
	datab => \OBJ3|OBJ1|OBJ7|Mux3~7_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux3~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ7|Mux3~9_combout\);

-- Location: LCCOMB_X106_Y33_N18
\OBJ3|OBJ1|OBJ7|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux2~4_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux2~4_combout\);

-- Location: LCCOMB_X106_Y33_N8
\OBJ3|OBJ1|OBJ7|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux2~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux2~3_combout\);

-- Location: LCCOMB_X106_Y33_N6
\OBJ3|OBJ1|OBJ7|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ7|Mux2~4_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ7|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ1|OBJ7|Mux2~4_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux2~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ7|Mux2~8_combout\);

-- Location: LCCOMB_X106_Y33_N16
\OBJ3|OBJ1|OBJ7|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux2~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux2~7_combout\);

-- Location: LCCOMB_X106_Y33_N4
\OBJ3|OBJ1|OBJ7|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux2~9_combout\ = (\OBJ3|OBJ1|OBJ7|Mux2~8_combout\ & (((\OBJ3|OBJ1|OBJ7|Mux2~7_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ7|Mux2~8_combout\ & (\OBJ3|OBJ1|OBJ7|Mux6~6_combout\ & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux2~8_combout\,
	datab => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ7|Mux2~7_combout\,
	combout => \OBJ3|OBJ1|OBJ7|Mux2~9_combout\);

-- Location: LCCOMB_X106_Y33_N14
\OBJ3|OBJ1|OBJ7|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux1~2_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ7|Mux6~6_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ7|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\,
	datac => \OBJ3|OBJ1|OBJ7|Mux2~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ7|Mux1~2_combout\);

-- Location: LCCOMB_X106_Y33_N20
\OBJ3|OBJ1|OBJ7|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux1~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux1~7_combout\);

-- Location: LCCOMB_X106_Y33_N22
\OBJ3|OBJ1|OBJ7|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux1~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ7|Mux1~7_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ7|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ1|OBJ7|Mux1~2_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ7|Mux1~7_combout\,
	combout => \OBJ3|OBJ1|OBJ7|Mux1~10_combout\);

-- Location: LCCOMB_X106_Y33_N24
\OBJ3|OBJ1|OBJ7|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux0~10_combout\ = ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ7|Mux0~10_combout\);

-- Location: LCCOMB_X106_Y33_N10
\OBJ3|OBJ1|OBJ7|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux0~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ7|Mux0~10_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- !\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ1|OBJ7|Mux0~10_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ7|Mux0~11_combout\);

-- Location: LCCOMB_X106_Y33_N0
\OBJ3|OBJ1|OBJ7|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux0~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ7|Mux0~7_combout\);

-- Location: LCCOMB_X106_Y33_N26
\OBJ3|OBJ1|OBJ7|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ7|Mux0~9_combout\ = (\OBJ3|OBJ1|OBJ7|Mux0~11_combout\ & (((\OBJ3|OBJ1|OBJ7|Mux0~7_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ7|Mux0~11_combout\ & (\OBJ3|OBJ1|OBJ7|Mux6~6_combout\ & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ7|Mux0~11_combout\,
	datab => \OBJ3|OBJ1|OBJ7|Mux6~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ7|Mux0~7_combout\,
	combout => \OBJ3|OBJ1|OBJ7|Mux0~9_combout\);

-- Location: LCCOMB_X106_Y30_N8
\OBJ3|OBJ1|OBJ6|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux6~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux6~4_combout\);

-- Location: LCCOMB_X106_Y30_N14
\OBJ3|OBJ1|OBJ6|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux6~7_combout\);

-- Location: LCCOMB_X106_Y30_N30
\OBJ3|OBJ1|OBJ6|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\);

-- Location: LCCOMB_X106_Y30_N24
\OBJ3|OBJ1|OBJ6|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux6~7_combout\ $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ6|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux6~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux6~8_combout\);

-- Location: LCCOMB_X106_Y30_N22
\OBJ3|OBJ1|OBJ6|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux6~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux6~4_combout\ & ((\OBJ3|OBJ1|OBJ6|Mux6~7_combout\) # (\OBJ3|OBJ1|OBJ6|Mux6~8_combout\))) # (!\OBJ3|OBJ1|OBJ6|Mux6~4_combout\ & (\OBJ3|OBJ1|OBJ6|Mux6~7_combout\ & 
-- \OBJ3|OBJ1|OBJ6|Mux6~8_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ6|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ1|OBJ6|Mux6~4_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux6~7_combout\,
	datad => \OBJ3|OBJ1|OBJ6|Mux6~8_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux6~9_combout\);

-- Location: LCCOMB_X106_Y30_N0
\OBJ3|OBJ1|OBJ6|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux5~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux5~4_combout\);

-- Location: LCCOMB_X106_Y30_N12
\OBJ3|OBJ1|OBJ6|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux5~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ6|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ6|Mux5~4_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux5~8_combout\);

-- Location: LCCOMB_X106_Y30_N18
\OBJ3|OBJ1|OBJ6|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux5~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux5~6_combout\);

-- Location: LCCOMB_X106_Y30_N26
\OBJ3|OBJ1|OBJ6|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ6|Mux5~8_combout\ & ((\OBJ3|OBJ1|OBJ6|Mux6~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ1|OBJ6|Mux5~8_combout\ & (((\OBJ3|OBJ1|OBJ6|Mux5~6_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux5~8_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux6~7_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux5~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux5~9_combout\);

-- Location: LCCOMB_X106_Y26_N20
\OBJ3|OBJ1|OBJ6|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux4~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux4~4_combout\);

-- Location: LCCOMB_X106_Y26_N26
\OBJ3|OBJ1|OBJ6|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ6|Mux4~4_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ6|Mux6~3_combout\ & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux4~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux4~8_combout\);

-- Location: LCCOMB_X106_Y26_N14
\OBJ3|OBJ1|OBJ6|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux4~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ6|Mux4~7_combout\);

-- Location: LCCOMB_X106_Y26_N16
\OBJ3|OBJ1|OBJ6|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux4~9_combout\ = (\OBJ3|OBJ1|OBJ6|Mux4~8_combout\ & (((\OBJ3|OBJ1|OBJ6|Mux4~7_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ1|OBJ6|Mux4~8_combout\ & (\OBJ3|OBJ1|OBJ6|Mux5~6_combout\ & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux4~8_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux5~6_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux4~7_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux4~9_combout\);

-- Location: LCCOMB_X106_Y26_N28
\OBJ3|OBJ1|OBJ6|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux3~7_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux3~7_combout\);

-- Location: LCCOMB_X106_Y26_N24
\OBJ3|OBJ1|OBJ6|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux3~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux3~3_combout\);

-- Location: LCCOMB_X106_Y26_N30
\OBJ3|OBJ1|OBJ6|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux3~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (((!\OBJ3|OBJ1|OBJ6|Mux3~7_combout\))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ6|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ6|Mux3~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ6|Mux3~7_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux3~8_combout\);

-- Location: LCCOMB_X106_Y26_N10
\OBJ3|OBJ1|OBJ6|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux3~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux3~4_combout\);

-- Location: LCCOMB_X106_Y26_N8
\OBJ3|OBJ1|OBJ6|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux3~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux3~7_combout\ & ((\OBJ3|OBJ1|OBJ6|Mux3~8_combout\) # (\OBJ3|OBJ1|OBJ6|Mux3~4_combout\))) # (!\OBJ3|OBJ1|OBJ6|Mux3~7_combout\ & (\OBJ3|OBJ1|OBJ6|Mux3~8_combout\ & 
-- \OBJ3|OBJ1|OBJ6|Mux3~4_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ6|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ1|OBJ6|Mux3~7_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux3~8_combout\,
	datad => \OBJ3|OBJ1|OBJ6|Mux3~4_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux3~9_combout\);

-- Location: LCCOMB_X106_Y26_N12
\OBJ3|OBJ1|OBJ6|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux2~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux2~7_combout\);

-- Location: LCCOMB_X106_Y26_N18
\OBJ3|OBJ1|OBJ6|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux2~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ6|Mux2~4_combout\);

-- Location: LCCOMB_X106_Y26_N2
\OBJ3|OBJ1|OBJ6|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ6|Mux2~4_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ6|Mux2~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ6|Mux5~6_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux2~8_combout\);

-- Location: LCCOMB_X106_Y26_N4
\OBJ3|OBJ1|OBJ6|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux2~9_combout\ = (\OBJ3|OBJ1|OBJ6|Mux2~8_combout\ & ((\OBJ3|OBJ1|OBJ6|Mux2~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ1|OBJ6|Mux2~8_combout\ & (((\OBJ3|OBJ1|OBJ6|Mux6~3_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux2~7_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux2~8_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux2~9_combout\);

-- Location: LCCOMB_X106_Y30_N10
\OBJ3|OBJ1|OBJ6|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux1~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux1~7_combout\);

-- Location: LCCOMB_X106_Y30_N20
\OBJ3|OBJ1|OBJ6|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux1~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux1~4_combout\);

-- Location: LCCOMB_X106_Y30_N16
\OBJ3|OBJ1|OBJ6|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux1~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ6|Mux1~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ1|OBJ6|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ6|Mux5~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ6|Mux1~4_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux1~8_combout\);

-- Location: LCCOMB_X106_Y30_N6
\OBJ3|OBJ1|OBJ6|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux1~9_combout\ = (\OBJ3|OBJ1|OBJ6|Mux1~8_combout\ & ((\OBJ3|OBJ1|OBJ6|Mux1~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ1|OBJ6|Mux1~8_combout\ & (((\OBJ3|OBJ1|OBJ6|Mux6~3_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ6|Mux1~7_combout\,
	datab => \OBJ3|OBJ1|OBJ6|Mux1~8_combout\,
	datac => \OBJ3|OBJ1|OBJ6|Mux6~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ6|Mux1~9_combout\);

-- Location: LCCOMB_X106_Y30_N2
\OBJ3|OBJ1|OBJ6|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux0~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux0~4_combout\);

-- Location: LCCOMB_X106_Y30_N28
\OBJ3|OBJ1|OBJ6|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux0~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ6|Mux0~3_combout\);

-- Location: LCCOMB_X106_Y30_N4
\OBJ3|OBJ1|OBJ6|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ6|Mux0~7_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ1|OBJ6|Mux0~4_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ1|OBJ6|Mux0~3_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ6|Mux0~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ6|Mux0~3_combout\,
	combout => \OBJ3|OBJ1|OBJ6|Mux0~7_combout\);

-- Location: LCCOMB_X103_Y24_N2
\OBJ3|OBJ1|OBJ5|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux6~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux6~10_combout\);

-- Location: LCCOMB_X103_Y24_N28
\OBJ3|OBJ1|OBJ5|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux6~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux6~10_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ1|OBJ5|Mux6~10_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux6~11_combout\);

-- Location: LCCOMB_X103_Y24_N8
\OBJ3|OBJ1|OBJ5|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux6~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux6~6_combout\);

-- Location: LCCOMB_X103_Y24_N10
\OBJ3|OBJ1|OBJ5|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux6~7_combout\);

-- Location: LCCOMB_X103_Y24_N20
\OBJ3|OBJ1|OBJ5|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux6~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux6~11_combout\ & ((\OBJ3|OBJ1|OBJ5|Mux6~7_combout\))) # (!\OBJ3|OBJ1|OBJ5|Mux6~11_combout\ & (\OBJ3|OBJ1|OBJ5|Mux6~6_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ5|Mux6~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ5|Mux6~11_combout\,
	datac => \OBJ3|OBJ1|OBJ5|Mux6~6_combout\,
	datad => \OBJ3|OBJ1|OBJ5|Mux6~7_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux6~9_combout\);

-- Location: LCCOMB_X103_Y24_N22
\OBJ3|OBJ1|OBJ5|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux5~7_combout\);

-- Location: LCCOMB_X103_Y24_N0
\OBJ3|OBJ1|OBJ5|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux5~6_combout\);

-- Location: LCCOMB_X103_Y24_N16
\OBJ3|OBJ1|OBJ5|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~3_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux5~3_combout\);

-- Location: LCCOMB_X103_Y24_N18
\OBJ3|OBJ1|OBJ5|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux5~4_combout\);

-- Location: LCCOMB_X103_Y24_N26
\OBJ3|OBJ1|OBJ5|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ1|OBJ5|Mux5~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ1|OBJ5|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ5|Mux5~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ1|OBJ5|Mux5~4_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux5~8_combout\);

-- Location: LCCOMB_X103_Y24_N24
\OBJ3|OBJ1|OBJ5|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ5|Mux5~8_combout\ & ((\OBJ3|OBJ1|OBJ5|Mux5~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ1|OBJ5|Mux5~8_combout\ & (((\OBJ3|OBJ1|OBJ5|Mux5~6_combout\ & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ5|Mux5~7_combout\,
	datab => \OBJ3|OBJ1|OBJ5|Mux5~6_combout\,
	datac => \OBJ3|OBJ1|OBJ5|Mux5~8_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ5|Mux5~9_combout\);

-- Location: LCCOMB_X106_Y19_N8
\OBJ3|OBJ1|OBJ5|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux4~12_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux4~12_combout\);

-- Location: LCCOMB_X106_Y19_N2
\OBJ3|OBJ1|OBJ5|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux4~13_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux4~12_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ1|OBJ5|Mux4~12_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ5|Mux4~13_combout\);

-- Location: LCCOMB_X106_Y19_N4
\OBJ3|OBJ1|OBJ5|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux4~8_combout\);

-- Location: LCCOMB_X106_Y19_N26
\OBJ3|OBJ1|OBJ5|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux4~9_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux4~9_combout\);

-- Location: LCCOMB_X106_Y19_N6
\OBJ3|OBJ1|OBJ5|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux4~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux4~13_combout\ & ((\OBJ3|OBJ1|OBJ5|Mux4~9_combout\))) # (!\OBJ3|OBJ1|OBJ5|Mux4~13_combout\ & (\OBJ3|OBJ1|OBJ5|Mux4~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ5|Mux4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ5|Mux4~13_combout\,
	datac => \OBJ3|OBJ1|OBJ5|Mux4~8_combout\,
	datad => \OBJ3|OBJ1|OBJ5|Mux4~9_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux4~11_combout\);

-- Location: LCCOMB_X106_Y25_N10
\OBJ3|OBJ1|OBJ5|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~9_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux3~9_combout\);

-- Location: LCCOMB_X106_Y25_N12
\OBJ3|OBJ1|OBJ5|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux3~5_combout\);

-- Location: LCCOMB_X106_Y25_N18
\OBJ3|OBJ1|OBJ5|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux3~6_combout\);

-- Location: LCCOMB_X106_Y25_N4
\OBJ3|OBJ1|OBJ5|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (\OBJ3|OBJ1|OBJ5|Mux3~6_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ5|Mux3~5_combout\ & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ5|Mux3~5_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ5|Mux3~6_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux3~10_combout\);

-- Location: LCCOMB_X106_Y25_N28
\OBJ3|OBJ1|OBJ5|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~8_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux3~8_combout\);

-- Location: LCCOMB_X106_Y25_N22
\OBJ3|OBJ1|OBJ5|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux3~11_combout\ = (\OBJ3|OBJ1|OBJ5|Mux3~10_combout\ & ((\OBJ3|OBJ1|OBJ5|Mux3~9_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ1|OBJ5|Mux3~10_combout\ & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ5|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ5|Mux3~9_combout\,
	datab => \OBJ3|OBJ1|OBJ5|Mux3~10_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ5|Mux3~8_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux3~11_combout\);

-- Location: LCCOMB_X106_Y19_N24
\OBJ3|OBJ1|OBJ5|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux2~8_combout\);

-- Location: LCCOMB_X106_Y19_N10
\OBJ3|OBJ1|OBJ5|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux2~6_combout\);

-- Location: LCCOMB_X106_Y19_N28
\OBJ3|OBJ1|OBJ5|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux2~5_combout\);

-- Location: LCCOMB_X106_Y19_N12
\OBJ3|OBJ1|OBJ5|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ5|Mux2~6_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ5|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ5|Mux2~6_combout\,
	datab => \OBJ3|OBJ1|OBJ5|Mux2~5_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ5|Mux2~10_combout\);

-- Location: LCCOMB_X106_Y19_N18
\OBJ3|OBJ1|OBJ5|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux2~9_combout\);

-- Location: LCCOMB_X106_Y19_N30
\OBJ3|OBJ1|OBJ5|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux2~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux2~10_combout\ & ((\OBJ3|OBJ1|OBJ5|Mux2~9_combout\))) # (!\OBJ3|OBJ1|OBJ5|Mux2~10_combout\ & (\OBJ3|OBJ1|OBJ5|Mux2~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ5|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ5|Mux2~8_combout\,
	datac => \OBJ3|OBJ1|OBJ5|Mux2~10_combout\,
	datad => \OBJ3|OBJ1|OBJ5|Mux2~9_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux2~11_combout\);

-- Location: LCCOMB_X106_Y19_N20
\OBJ3|OBJ1|OBJ5|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux1~13_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ5|Mux1~13_combout\);

-- Location: LCCOMB_X106_Y19_N22
\OBJ3|OBJ1|OBJ5|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux1~14_combout\ = (\OBJ3|OBJ1|OBJ5|Mux1~13_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- !\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ1|OBJ5|Mux1~13_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux1~14_combout\);

-- Location: LCCOMB_X106_Y19_N0
\OBJ3|OBJ1|OBJ5|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux1~12_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ5|Mux2~8_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ5|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ5|Mux2~8_combout\,
	datac => \OBJ3|OBJ1|OBJ5|Mux1~14_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ5|Mux1~12_combout\);

-- Location: LCCOMB_X106_Y25_N20
\OBJ3|OBJ1|OBJ5|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux0~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ5|Mux0~9_combout\);

-- Location: LCCOMB_X106_Y25_N6
\OBJ3|OBJ1|OBJ5|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ5|Mux0~10_combout\ = ((\OBJ3|OBJ1|OBJ5|Mux0~9_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ5|Mux0~9_combout\,
	combout => \OBJ3|OBJ1|OBJ5|Mux0~10_combout\);

-- Location: LCCOMB_X100_Y11_N16
\OBJ3|OBJ1|OBJ4|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux4~6_combout\);

-- Location: LCCOMB_X103_Y3_N0
\OBJ3|OBJ1|OBJ4|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux2~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\);

-- Location: LCCOMB_X100_Y11_N22
\OBJ3|OBJ1|OBJ4|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ (\OBJ3|OBJ1|OBJ4|Mux2~4_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ4|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ4|Mux4~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux6~8_combout\);

-- Location: LCCOMB_X100_Y11_N4
\OBJ3|OBJ1|OBJ4|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux6~7_combout\);

-- Location: LCCOMB_X100_Y11_N24
\OBJ3|OBJ1|OBJ4|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux6~9_combout\ = (\OBJ3|OBJ1|OBJ4|Mux6~8_combout\ & ((\OBJ3|OBJ1|OBJ4|Mux6~7_combout\) # ((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ1|OBJ4|Mux6~8_combout\ & (\OBJ3|OBJ1|OBJ4|Mux6~7_combout\ & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ1|OBJ4|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux6~8_combout\,
	datab => \OBJ3|OBJ1|OBJ4|Mux6~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux6~9_combout\);

-- Location: LCCOMB_X103_Y3_N12
\OBJ3|OBJ1|OBJ4|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux5~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux5~3_combout\);

-- Location: LCCOMB_X103_Y3_N24
\OBJ3|OBJ1|OBJ4|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\ $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ4|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux5~3_combout\,
	datab => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ4|Mux5~8_combout\);

-- Location: LCCOMB_X103_Y3_N14
\OBJ3|OBJ1|OBJ4|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux5~7_combout\);

-- Location: LCCOMB_X103_Y3_N2
\OBJ3|OBJ1|OBJ4|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ4|Mux5~8_combout\ & (((\OBJ3|OBJ1|OBJ4|Mux5~7_combout\) # (\OBJ3|OBJ1|OBJ4|Mux2~4_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ1|OBJ4|Mux5~8_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) 
-- & (\OBJ3|OBJ1|OBJ4|Mux5~7_combout\ & \OBJ3|OBJ1|OBJ4|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux5~8_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ4|Mux5~7_combout\,
	datad => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux5~9_combout\);

-- Location: LCCOMB_X100_Y11_N2
\OBJ3|OBJ1|OBJ4|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux4~7_combout\);

-- Location: LCCOMB_X100_Y11_N18
\OBJ3|OBJ1|OBJ4|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux4~4_combout\);

-- Location: LCCOMB_X100_Y11_N12
\OBJ3|OBJ1|OBJ4|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux4~3_combout\);

-- Location: LCCOMB_X100_Y11_N30
\OBJ3|OBJ1|OBJ4|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ4|Mux4~4_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ4|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ4|Mux4~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ4|Mux4~3_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux4~8_combout\);

-- Location: LCCOMB_X100_Y11_N28
\OBJ3|OBJ1|OBJ4|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux4~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ4|Mux4~8_combout\ & (\OBJ3|OBJ1|OBJ4|Mux4~7_combout\)) # (!\OBJ3|OBJ1|OBJ4|Mux4~8_combout\ & ((\OBJ3|OBJ1|OBJ4|Mux4~6_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ4|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux4~7_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ4|Mux4~8_combout\,
	datad => \OBJ3|OBJ1|OBJ4|Mux4~6_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux4~9_combout\);

-- Location: LCCOMB_X103_Y3_N10
\OBJ3|OBJ1|OBJ4|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux3~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux3~4_combout\);

-- Location: LCCOMB_X103_Y3_N8
\OBJ3|OBJ1|OBJ4|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux3~7_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux3~7_combout\);

-- Location: LCCOMB_X103_Y3_N4
\OBJ3|OBJ1|OBJ4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux3~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux3~3_combout\);

-- Location: LCCOMB_X103_Y3_N16
\OBJ3|OBJ1|OBJ4|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux3~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ4|Mux3~4_combout\ $ (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- (\OBJ3|OBJ1|OBJ4|Mux3~4_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ4|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux3~4_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ4|Mux3~3_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ4|Mux3~8_combout\);

-- Location: LCCOMB_X103_Y3_N6
\OBJ3|OBJ1|OBJ4|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux3~9_combout\ = (\OBJ3|OBJ1|OBJ4|Mux3~4_combout\ & ((\OBJ3|OBJ1|OBJ4|Mux3~8_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ1|OBJ4|Mux3~7_combout\)))) # (!\OBJ3|OBJ1|OBJ4|Mux3~4_combout\ & (\OBJ3|OBJ1|OBJ4|Mux3~8_combout\ & 
-- ((\OBJ3|OBJ1|OBJ4|Mux3~7_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux3~4_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ4|Mux3~7_combout\,
	datad => \OBJ3|OBJ1|OBJ4|Mux3~8_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux3~9_combout\);

-- Location: LCCOMB_X103_Y3_N22
\OBJ3|OBJ1|OBJ4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux2~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux2~3_combout\);

-- Location: LCCOMB_X103_Y3_N20
\OBJ3|OBJ1|OBJ4|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ1|OBJ4|Mux2~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ4|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ4|Mux2~3_combout\,
	datad => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux2~8_combout\);

-- Location: LCCOMB_X103_Y3_N30
\OBJ3|OBJ1|OBJ4|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux2~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ4|Mux2~7_combout\);

-- Location: LCCOMB_X103_Y3_N26
\OBJ3|OBJ1|OBJ4|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux2~9_combout\ = (\OBJ3|OBJ1|OBJ4|Mux2~8_combout\ & (((\OBJ3|OBJ1|OBJ4|Mux2~7_combout\) # (\OBJ3|OBJ1|OBJ4|Mux2~4_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ1|OBJ4|Mux2~8_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) 
-- & (\OBJ3|OBJ1|OBJ4|Mux2~7_combout\ & \OBJ3|OBJ1|OBJ4|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux2~8_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ4|Mux2~7_combout\,
	datad => \OBJ3|OBJ1|OBJ4|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux2~9_combout\);

-- Location: LCCOMB_X100_Y11_N6
\OBJ3|OBJ1|OBJ4|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux1~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux1~7_combout\);

-- Location: LCCOMB_X100_Y11_N20
\OBJ3|OBJ1|OBJ4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux1~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ4|Mux1~3_combout\);

-- Location: LCCOMB_X100_Y11_N14
\OBJ3|OBJ1|OBJ4|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux1~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (\OBJ3|OBJ1|OBJ4|Mux4~4_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ4|Mux1~3_combout\ & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ4|Mux1~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ4|Mux4~4_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux1~8_combout\);

-- Location: LCCOMB_X100_Y11_N8
\OBJ3|OBJ1|OBJ4|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux1~9_combout\ = (\OBJ3|OBJ1|OBJ4|Mux1~8_combout\ & ((\OBJ3|OBJ1|OBJ4|Mux1~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ1|OBJ4|Mux1~8_combout\ & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ4|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ4|Mux1~7_combout\,
	datab => \OBJ3|OBJ1|OBJ4|Mux1~8_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ4|Mux4~6_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux1~9_combout\);

-- Location: LCCOMB_X103_Y3_N28
\OBJ3|OBJ1|OBJ4|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux0~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	combout => \OBJ3|OBJ1|OBJ4|Mux0~7_combout\);

-- Location: LCCOMB_X103_Y3_N18
\OBJ3|OBJ1|OBJ4|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ4|Mux0~8_combout\ = ((\OBJ3|OBJ1|OBJ4|Mux0~7_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ4|Mux0~7_combout\,
	combout => \OBJ3|OBJ1|OBJ4|Mux0~8_combout\);

-- Location: LCCOMB_X99_Y2_N30
\OBJ3|OBJ1|OBJ3|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux6~7_combout\);

-- Location: LCCOMB_X99_Y2_N8
\OBJ3|OBJ1|OBJ3|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux6~6_combout\);

-- Location: LCCOMB_X99_Y2_N22
\OBJ3|OBJ1|OBJ3|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux6~4_combout\);

-- Location: LCCOMB_X99_Y2_N12
\OBJ3|OBJ1|OBJ3|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux6~3_combout\);

-- Location: LCCOMB_X99_Y2_N24
\OBJ3|OBJ1|OBJ3|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # ((\OBJ3|OBJ1|OBJ3|Mux6~4_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & 
-- ((\OBJ3|OBJ1|OBJ3|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ1|OBJ3|Mux6~4_combout\,
	datad => \OBJ3|OBJ1|OBJ3|Mux6~3_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux6~8_combout\);

-- Location: LCCOMB_X99_Y2_N26
\OBJ3|OBJ1|OBJ3|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux6~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ1|OBJ3|Mux6~8_combout\ & (\OBJ3|OBJ1|OBJ3|Mux6~7_combout\)) # (!\OBJ3|OBJ1|OBJ3|Mux6~8_combout\ & ((\OBJ3|OBJ1|OBJ3|Mux6~6_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ1|OBJ3|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ3|Mux6~7_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ1|OBJ3|Mux6~6_combout\,
	datad => \OBJ3|OBJ1|OBJ3|Mux6~8_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux6~9_combout\);

-- Location: LCCOMB_X99_Y2_N10
\OBJ3|OBJ1|OBJ3|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux5~7_combout\);

-- Location: LCCOMB_X99_Y2_N0
\OBJ3|OBJ1|OBJ3|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux5~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux5~10_combout\);

-- Location: LCCOMB_X99_Y2_N2
\OBJ3|OBJ1|OBJ3|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux5~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ1|OBJ3|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ3|Mux5~10_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux5~11_combout\);

-- Location: LCCOMB_X99_Y2_N16
\OBJ3|OBJ1|OBJ3|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux5~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux5~6_combout\);

-- Location: LCCOMB_X99_Y2_N20
\OBJ3|OBJ1|OBJ3|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ3|Mux5~11_combout\ & ((\OBJ3|OBJ1|OBJ3|Mux5~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ1|OBJ3|Mux5~11_combout\ & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & 
-- \OBJ3|OBJ1|OBJ3|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ3|Mux5~7_combout\,
	datab => \OBJ3|OBJ1|OBJ3|Mux5~11_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ1|OBJ3|Mux5~6_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux5~9_combout\);

-- Location: LCCOMB_X83_Y3_N16
\OBJ3|OBJ1|OBJ3|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux4~8_combout\);

-- Location: LCCOMB_X83_Y3_N28
\OBJ3|OBJ1|OBJ3|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux4~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux4~5_combout\);

-- Location: LCCOMB_X83_Y3_N18
\OBJ3|OBJ1|OBJ3|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux4~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ5|Mux4~9_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ3|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ5|Mux4~9_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ3|Mux4~5_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux4~4_combout\);

-- Location: LCCOMB_X83_Y3_N6
\OBJ3|OBJ1|OBJ3|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux4~12_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ3|Mux4~8_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ3|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux4~8_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ3|Mux4~4_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux4~12_combout\);

-- Location: LCCOMB_X99_Y2_N4
\OBJ3|OBJ1|OBJ3|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux3~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux3~8_combout\);

-- Location: LCCOMB_X99_Y2_N14
\OBJ3|OBJ1|OBJ3|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux3~9_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux3~9_combout\);

-- Location: LCCOMB_X99_Y2_N28
\OBJ3|OBJ1|OBJ3|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux3~12_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux3~12_combout\);

-- Location: LCCOMB_X99_Y2_N18
\OBJ3|OBJ1|OBJ3|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux3~13_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ3|Mux3~12_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ3|Mux3~12_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux3~13_combout\);

-- Location: LCCOMB_X99_Y2_N6
\OBJ3|OBJ1|OBJ3|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux3~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ3|Mux3~13_combout\ & ((\OBJ3|OBJ1|OBJ3|Mux3~9_combout\))) # (!\OBJ3|OBJ1|OBJ3|Mux3~13_combout\ & (\OBJ3|OBJ1|OBJ3|Mux3~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ3|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux3~8_combout\,
	datac => \OBJ3|OBJ1|OBJ3|Mux3~9_combout\,
	datad => \OBJ3|OBJ1|OBJ3|Mux3~13_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux3~11_combout\);

-- Location: LCCOMB_X83_Y3_N20
\OBJ3|OBJ1|OBJ3|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux2~8_combout\);

-- Location: LCCOMB_X83_Y3_N14
\OBJ3|OBJ1|OBJ3|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~9_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux2~9_combout\);

-- Location: LCCOMB_X83_Y3_N2
\OBJ3|OBJ1|OBJ3|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux2~6_combout\);

-- Location: LCCOMB_X83_Y3_N0
\OBJ3|OBJ1|OBJ3|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux2~5_combout\);

-- Location: LCCOMB_X83_Y3_N12
\OBJ3|OBJ1|OBJ3|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ3|Mux2~6_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ3|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux2~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ3|Mux2~5_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux2~10_combout\);

-- Location: LCCOMB_X83_Y3_N22
\OBJ3|OBJ1|OBJ3|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux2~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ3|Mux2~10_combout\ & ((\OBJ3|OBJ1|OBJ3|Mux2~9_combout\))) # (!\OBJ3|OBJ1|OBJ3|Mux2~10_combout\ & (\OBJ3|OBJ1|OBJ3|Mux2~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ3|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux2~8_combout\,
	datac => \OBJ3|OBJ1|OBJ3|Mux2~9_combout\,
	datad => \OBJ3|OBJ1|OBJ3|Mux2~10_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux2~11_combout\);

-- Location: LCCOMB_X83_Y3_N24
\OBJ3|OBJ1|OBJ3|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux1~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux1~5_combout\);

-- Location: LCCOMB_X83_Y3_N8
\OBJ3|OBJ1|OBJ3|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux1~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ1|OBJ3|Mux2~6_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ1|OBJ3|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux2~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ3|Mux1~5_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux1~10_combout\);

-- Location: LCCOMB_X83_Y3_N26
\OBJ3|OBJ1|OBJ3|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux1~9_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux1~9_combout\);

-- Location: LCCOMB_X83_Y3_N10
\OBJ3|OBJ1|OBJ3|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux1~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ3|Mux1~10_combout\ & (\OBJ3|OBJ1|OBJ3|Mux1~9_combout\)) # (!\OBJ3|OBJ1|OBJ3|Mux1~10_combout\ & ((\OBJ3|OBJ1|OBJ3|Mux2~8_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ3|Mux1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ3|Mux1~10_combout\,
	datac => \OBJ3|OBJ1|OBJ3|Mux1~9_combout\,
	datad => \OBJ3|OBJ1|OBJ3|Mux2~8_combout\,
	combout => \OBJ3|OBJ1|OBJ3|Mux1~11_combout\);

-- Location: LCCOMB_X83_Y3_N4
\OBJ3|OBJ1|OBJ3|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux0~9_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ3|Mux0~9_combout\);

-- Location: LCCOMB_X83_Y3_N30
\OBJ3|OBJ1|OBJ3|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ3|Mux0~10_combout\ = (\OBJ3|OBJ1|OBJ3|Mux0~9_combout\) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ1|OBJ3|Mux0~9_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ3|Mux0~10_combout\);

-- Location: LCCOMB_X80_Y2_N8
\OBJ3|OBJ1|OBJ2|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux6~3_combout\);

-- Location: LCCOMB_X80_Y6_N28
\OBJ3|OBJ1|OBJ2|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~4_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux6~4_combout\);

-- Location: LCCOMB_X80_Y2_N6
\OBJ3|OBJ1|OBJ2|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ2|Mux6~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ2|Mux6~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ1|OBJ2|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux6~8_combout\);

-- Location: LCCOMB_X80_Y2_N28
\OBJ3|OBJ1|OBJ2|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux6~7_combout\);

-- Location: LCCOMB_X80_Y2_N22
\OBJ3|OBJ1|OBJ2|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~6_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux6~6_combout\);

-- Location: LCCOMB_X80_Y2_N16
\OBJ3|OBJ1|OBJ2|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux6~9_combout\ = (\OBJ3|OBJ1|OBJ2|Mux6~8_combout\ & ((\OBJ3|OBJ1|OBJ2|Mux6~7_combout\) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ1|OBJ2|Mux6~8_combout\ & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ2|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux6~8_combout\,
	datab => \OBJ3|OBJ1|OBJ2|Mux6~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ2|Mux6~6_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux6~9_combout\);

-- Location: LCCOMB_X80_Y2_N2
\OBJ3|OBJ1|OBJ2|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux5~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux5~4_combout\);

-- Location: LCCOMB_X80_Y2_N26
\OBJ3|OBJ1|OBJ2|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ2|Mux5~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ2|Mux6~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ1|OBJ2|Mux5~4_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux5~8_combout\);

-- Location: LCCOMB_X80_Y2_N4
\OBJ3|OBJ1|OBJ2|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux5~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux5~6_combout\);

-- Location: LCCOMB_X80_Y2_N20
\OBJ3|OBJ1|OBJ2|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux5~9_combout\ = (\OBJ3|OBJ1|OBJ2|Mux5~8_combout\ & (((\OBJ3|OBJ1|OBJ2|Mux6~7_combout\) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ1|OBJ2|Mux5~8_combout\ & (\OBJ3|OBJ1|OBJ2|Mux5~6_combout\ & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux5~8_combout\,
	datab => \OBJ3|OBJ1|OBJ2|Mux5~6_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ2|Mux6~7_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux5~9_combout\);

-- Location: LCCOMB_X80_Y6_N30
\OBJ3|OBJ1|OBJ2|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux4~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	combout => \OBJ3|OBJ1|OBJ2|Mux4~6_combout\);

-- Location: LCCOMB_X80_Y6_N16
\OBJ3|OBJ1|OBJ2|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux4~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux4~4_combout\);

-- Location: LCCOMB_X80_Y6_N18
\OBJ3|OBJ1|OBJ2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux4~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux4~3_combout\);

-- Location: LCCOMB_X80_Y6_N22
\OBJ3|OBJ1|OBJ2|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ2|Mux4~4_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ2|Mux4~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ2|Mux4~3_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux4~8_combout\);

-- Location: LCCOMB_X80_Y6_N12
\OBJ3|OBJ1|OBJ2|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux4~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ2|Mux4~8_combout\ & ((\OBJ3|OBJ1|OBJ2|Mux6~4_combout\))) # (!\OBJ3|OBJ1|OBJ2|Mux4~8_combout\ & (\OBJ3|OBJ1|OBJ2|Mux4~6_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ2|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux4~6_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ2|Mux4~8_combout\,
	datad => \OBJ3|OBJ1|OBJ2|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux4~9_combout\);

-- Location: LCCOMB_X80_Y6_N26
\OBJ3|OBJ1|OBJ2|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux3~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux3~7_combout\);

-- Location: LCCOMB_X80_Y6_N8
\OBJ3|OBJ1|OBJ2|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux3~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux3~6_combout\);

-- Location: LCCOMB_X80_Y6_N20
\OBJ3|OBJ1|OBJ2|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux3~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- \OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux3~10_combout\);

-- Location: LCCOMB_X80_Y6_N2
\OBJ3|OBJ1|OBJ2|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux3~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ2|Mux3~10_combout\ & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ2|Mux3~10_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux3~11_combout\);

-- Location: LCCOMB_X80_Y6_N14
\OBJ3|OBJ1|OBJ2|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux3~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ2|Mux3~11_combout\ & (\OBJ3|OBJ1|OBJ2|Mux3~7_combout\)) # (!\OBJ3|OBJ1|OBJ2|Mux3~11_combout\ & ((\OBJ3|OBJ1|OBJ2|Mux3~6_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ2|Mux3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux3~7_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ2|Mux3~6_combout\,
	datad => \OBJ3|OBJ1|OBJ2|Mux3~11_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux3~9_combout\);

-- Location: LCCOMB_X80_Y2_N12
\OBJ3|OBJ1|OBJ2|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux2~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux2~6_combout\);

-- Location: LCCOMB_X80_Y2_N10
\OBJ3|OBJ1|OBJ2|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux2~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux2~4_combout\);

-- Location: LCCOMB_X80_Y2_N18
\OBJ3|OBJ1|OBJ2|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ2|Mux2~4_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ2|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ2|Mux6~3_combout\,
	datad => \OBJ3|OBJ1|OBJ2|Mux2~4_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux2~8_combout\);

-- Location: LCCOMB_X80_Y2_N24
\OBJ3|OBJ1|OBJ2|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux2~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ2|Mux2~8_combout\ & ((\OBJ3|OBJ1|OBJ2|Mux6~7_combout\))) # (!\OBJ3|OBJ1|OBJ2|Mux2~8_combout\ & (\OBJ3|OBJ1|OBJ2|Mux2~6_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ2|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux2~6_combout\,
	datab => \OBJ3|OBJ1|OBJ2|Mux6~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ2|Mux2~8_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux2~9_combout\);

-- Location: LCCOMB_X80_Y6_N10
\OBJ3|OBJ1|OBJ2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux1~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux1~6_combout\);

-- Location: LCCOMB_X80_Y6_N0
\OBJ3|OBJ1|OBJ2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux1~4_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux1~4_combout\);

-- Location: LCCOMB_X80_Y6_N4
\OBJ3|OBJ1|OBJ2|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux1~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ2|Mux1~4_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- \OBJ3|OBJ1|OBJ2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ2|Mux1~4_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datad => \OBJ3|OBJ1|OBJ2|Mux4~3_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux1~8_combout\);

-- Location: LCCOMB_X80_Y6_N6
\OBJ3|OBJ1|OBJ2|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux1~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ2|Mux1~8_combout\ & ((\OBJ3|OBJ1|OBJ2|Mux6~4_combout\))) # (!\OBJ3|OBJ1|OBJ2|Mux1~8_combout\ & (\OBJ3|OBJ1|OBJ2|Mux1~6_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ2|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ2|Mux1~6_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ2|Mux1~8_combout\,
	datad => \OBJ3|OBJ1|OBJ2|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ2|Mux1~9_combout\);

-- Location: LCCOMB_X80_Y2_N30
\OBJ3|OBJ1|OBJ2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux0~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ2|Mux0~7_combout\);

-- Location: LCCOMB_X80_Y2_N0
\OBJ3|OBJ1|OBJ2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ2|Mux0~8_combout\ = (\OBJ3|OBJ1|OBJ2|Mux0~7_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ1|OBJ2|Mux0~7_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ2|Mux0~8_combout\);

-- Location: LCCOMB_X80_Y6_N24
\OBJ3|OBJ1|OBJ1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~6_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux6~6_combout\);

-- Location: LCCOMB_X86_Y2_N4
\OBJ3|OBJ1|OBJ1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux6~7_combout\);

-- Location: LCCOMB_X86_Y2_N6
\OBJ3|OBJ1|OBJ1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ1|Mux6~4_combout\);

-- Location: LCCOMB_X86_Y2_N16
\OBJ3|OBJ1|OBJ1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux6~3_combout\);

-- Location: LCCOMB_X86_Y2_N28
\OBJ3|OBJ1|OBJ1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ1|Mux6~4_combout\)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ1|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ1|Mux6~4_combout\,
	datab => \OBJ3|OBJ1|OBJ1|Mux6~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ1|Mux6~8_combout\);

-- Location: LCCOMB_X86_Y2_N2
\OBJ3|OBJ1|OBJ1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux6~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ1|Mux6~8_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux6~7_combout\))) # (!\OBJ3|OBJ1|OBJ1|Mux6~8_combout\ & (\OBJ3|OBJ1|OBJ1|Mux6~6_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ1|OBJ1|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ1|Mux6~6_combout\,
	datab => \OBJ3|OBJ1|OBJ1|Mux6~7_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ1|OBJ1|Mux6~8_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux6~9_combout\);

-- Location: LCCOMB_X86_Y2_N26
\OBJ3|OBJ1|OBJ1|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux5~7_combout\);

-- Location: LCCOMB_X86_Y2_N14
\OBJ3|OBJ1|OBJ1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux5~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux5~3_combout\);

-- Location: LCCOMB_X86_Y2_N8
\OBJ3|OBJ1|OBJ1|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ1|Mux6~3_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- \OBJ3|OBJ1|OBJ1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux6~3_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ1|OBJ1|Mux5~3_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux5~8_combout\);

-- Location: LCCOMB_X86_Y2_N0
\OBJ3|OBJ1|OBJ1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux5~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux5~6_combout\);

-- Location: LCCOMB_X86_Y2_N22
\OBJ3|OBJ1|OBJ1|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux5~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ1|Mux5~8_combout\ & (\OBJ3|OBJ1|OBJ1|Mux5~7_combout\)) # (!\OBJ3|OBJ1|OBJ1|Mux5~8_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux5~6_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ1|OBJ1|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ1|Mux5~7_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ1|OBJ1|Mux5~8_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux5~6_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux5~9_combout\);

-- Location: LCCOMB_X76_Y17_N20
\OBJ3|OBJ1|OBJ1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux4~8_combout\);

-- Location: LCCOMB_X76_Y17_N22
\OBJ3|OBJ1|OBJ1|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux4~9_combout\);

-- Location: LCCOMB_X76_Y17_N24
\OBJ3|OBJ1|OBJ1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux4~5_combout\);

-- Location: LCCOMB_X76_Y17_N30
\OBJ3|OBJ1|OBJ1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux4~6_combout\);

-- Location: LCCOMB_X76_Y17_N6
\OBJ3|OBJ1|OBJ1|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ1|Mux4~6_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ1|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux4~5_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux4~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux4~10_combout\);

-- Location: LCCOMB_X76_Y17_N12
\OBJ3|OBJ1|OBJ1|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux4~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ1|Mux4~10_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux4~9_combout\))) # (!\OBJ3|OBJ1|OBJ1|Mux4~10_combout\ & (\OBJ3|OBJ1|OBJ1|Mux4~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ1|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux4~8_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux4~9_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux4~10_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux4~11_combout\);

-- Location: LCCOMB_X86_Y2_N10
\OBJ3|OBJ1|OBJ1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ1|Mux3~9_combout\);

-- Location: LCCOMB_X86_Y2_N12
\OBJ3|OBJ1|OBJ1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~8_combout\ = (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ1|Mux3~8_combout\);

-- Location: LCCOMB_X86_Y2_N24
\OBJ3|OBJ1|OBJ1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ1|Mux3~5_combout\);

-- Location: LCCOMB_X86_Y2_N18
\OBJ3|OBJ1|OBJ1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ1|Mux3~6_combout\);

-- Location: LCCOMB_X86_Y2_N20
\OBJ3|OBJ1|OBJ1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ1|Mux3~6_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datac => \OBJ3|OBJ1|OBJ1|Mux3~5_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux3~6_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux3~10_combout\);

-- Location: LCCOMB_X86_Y2_N30
\OBJ3|OBJ1|OBJ1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux3~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ1|Mux3~10_combout\ & (\OBJ3|OBJ1|OBJ1|Mux3~9_combout\)) # (!\OBJ3|OBJ1|OBJ1|Mux3~10_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux3~8_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ1|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux3~9_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux3~8_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux3~10_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux3~11_combout\);

-- Location: LCCOMB_X76_Y17_N8
\OBJ3|OBJ1|OBJ1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux2~8_combout\);

-- Location: LCCOMB_X76_Y17_N28
\OBJ3|OBJ1|OBJ1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux2~5_combout\);

-- Location: LCCOMB_X76_Y17_N14
\OBJ3|OBJ1|OBJ1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux2~6_combout\);

-- Location: LCCOMB_X76_Y17_N26
\OBJ3|OBJ1|OBJ1|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ1|Mux2~6_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux2~5_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux2~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux2~10_combout\);

-- Location: LCCOMB_X76_Y17_N2
\OBJ3|OBJ1|OBJ1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux2~9_combout\);

-- Location: LCCOMB_X76_Y17_N4
\OBJ3|OBJ1|OBJ1|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux2~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ1|OBJ1|Mux2~10_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux2~9_combout\))) # (!\OBJ3|OBJ1|OBJ1|Mux2~10_combout\ & (\OBJ3|OBJ1|OBJ1|Mux2~8_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (((\OBJ3|OBJ1|OBJ1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux2~8_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux2~10_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux2~9_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux2~11_combout\);

-- Location: LCCOMB_X76_Y17_N18
\OBJ3|OBJ1|OBJ1|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux1~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ1|Mux2~5_combout\ $ (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & 
-- ((\OBJ3|OBJ1|OBJ1|Mux4~6_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datab => \OBJ3|OBJ1|OBJ1|Mux2~5_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux4~6_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	combout => \OBJ3|OBJ1|OBJ1|Mux1~10_combout\);

-- Location: LCCOMB_X76_Y17_N0
\OBJ3|OBJ1|OBJ1|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux1~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux1~8_combout\);

-- Location: LCCOMB_X76_Y17_N16
\OBJ3|OBJ1|OBJ1|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux1~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ1|Mux1~10_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ1|Mux1~10_combout\ & ((\OBJ3|OBJ1|OBJ1|Mux1~8_combout\) # 
-- (\OBJ3|OBJ1|OBJ1|Mux2~5_combout\))) # (!\OBJ3|OBJ1|OBJ1|Mux1~10_combout\ & (\OBJ3|OBJ1|OBJ1|Mux1~8_combout\ & \OBJ3|OBJ1|OBJ1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ1|OBJ1|Mux1~10_combout\,
	datac => \OBJ3|OBJ1|OBJ1|Mux1~8_combout\,
	datad => \OBJ3|OBJ1|OBJ1|Mux2~5_combout\,
	combout => \OBJ3|OBJ1|OBJ1|Mux1~11_combout\);

-- Location: LCCOMB_X76_Y3_N4
\OBJ3|OBJ1|OBJ1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux0~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ1|Mux0~9_combout\);

-- Location: LCCOMB_X76_Y3_N14
\OBJ3|OBJ1|OBJ1|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ1|Mux0~10_combout\ = (\OBJ3|OBJ1|OBJ1|Mux0~9_combout\) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) $ (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ1|OBJ1|Mux0~9_combout\,
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ1|Mux0~10_combout\);

-- Location: LCCOMB_X76_Y2_N18
\OBJ3|OBJ1|OBJ0|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux6~4_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ0|Mux6~4_combout\);

-- Location: LCCOMB_X76_Y2_N4
\OBJ3|OBJ1|OBJ0|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux6~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & 
-- (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ0|Mux6~3_combout\);

-- Location: LCCOMB_X76_Y2_N8
\OBJ3|OBJ1|OBJ0|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux6~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ (((\OBJ3|OBJ1|OBJ0|Mux6~4_combout\))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((\OBJ3|OBJ1|OBJ0|Mux6~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ0|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ0|Mux6~3_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux6~8_combout\);

-- Location: LCCOMB_X76_Y2_N10
\OBJ3|OBJ1|OBJ0|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux6~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ0|Mux6~4_combout\ & ((\OBJ3|OBJ1|OBJ0|Mux6~8_combout\) # (\OBJ3|OBJ1|OBJ2|Mux6~6_combout\))) # (!\OBJ3|OBJ1|OBJ0|Mux6~4_combout\ & (\OBJ3|OBJ1|OBJ0|Mux6~8_combout\ & 
-- \OBJ3|OBJ1|OBJ2|Mux6~6_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (((\OBJ3|OBJ1|OBJ0|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ0|Mux6~4_combout\,
	datac => \OBJ3|OBJ1|OBJ0|Mux6~8_combout\,
	datad => \OBJ3|OBJ1|OBJ2|Mux6~6_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux6~9_combout\);

-- Location: LCCOMB_X76_Y2_N28
\OBJ3|OBJ1|OBJ0|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux5~3_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ0|Mux5~3_combout\);

-- Location: LCCOMB_X76_Y2_N20
\OBJ3|OBJ1|OBJ0|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux5~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) $ (((\OBJ3|OBJ1|OBJ0|Mux6~4_combout\))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((\OBJ3|OBJ1|OBJ0|Mux6~4_combout\))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & (\OBJ3|OBJ1|OBJ0|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ1|OBJ0|Mux5~3_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux5~8_combout\);

-- Location: LCCOMB_X76_Y2_N22
\OBJ3|OBJ1|OBJ0|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux5~7_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4)) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	combout => \OBJ3|OBJ1|OBJ0|Mux5~7_combout\);

-- Location: LCCOMB_X76_Y2_N2
\OBJ3|OBJ1|OBJ0|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux5~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ1|OBJ0|Mux5~8_combout\ & ((\OBJ3|OBJ1|OBJ0|Mux5~7_combout\) # (\OBJ3|OBJ1|OBJ0|Mux6~4_combout\))) # (!\OBJ3|OBJ1|OBJ0|Mux5~8_combout\ & (\OBJ3|OBJ1|OBJ0|Mux5~7_combout\ & 
-- \OBJ3|OBJ1|OBJ0|Mux6~4_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ1|OBJ0|Mux5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ1|OBJ0|Mux5~8_combout\,
	datac => \OBJ3|OBJ1|OBJ0|Mux5~7_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux6~4_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux5~9_combout\);

-- Location: LCCOMB_X76_Y3_N6
\OBJ3|OBJ1|OBJ0|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~9_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux4~9_combout\);

-- Location: LCCOMB_X76_Y3_N20
\OBJ3|OBJ1|OBJ0|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~8_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux4~8_combout\);

-- Location: LCCOMB_X76_Y3_N8
\OBJ3|OBJ1|OBJ0|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~5_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux4~5_combout\);

-- Location: LCCOMB_X76_Y3_N2
\OBJ3|OBJ1|OBJ0|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux4~6_combout\);

-- Location: LCCOMB_X76_Y3_N24
\OBJ3|OBJ1|OBJ0|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & ((\OBJ3|OBJ1|OBJ0|Mux4~6_combout\))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ1|OBJ0|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ1|OBJ0|Mux4~5_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux4~6_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux4~10_combout\);

-- Location: LCCOMB_X76_Y3_N26
\OBJ3|OBJ1|OBJ0|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux4~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ0|Mux4~10_combout\ & (\OBJ3|OBJ1|OBJ0|Mux4~9_combout\)) # (!\OBJ3|OBJ1|OBJ0|Mux4~10_combout\ & ((\OBJ3|OBJ1|OBJ0|Mux4~8_combout\))))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (((\OBJ3|OBJ1|OBJ0|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ0|Mux4~9_combout\,
	datab => \OBJ3|OBJ1|OBJ0|Mux4~8_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ1|OBJ0|Mux4~10_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux4~11_combout\);

-- Location: LCCOMB_X76_Y2_N12
\OBJ3|OBJ1|OBJ0|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux3~22_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0) & 
-- ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & (\OBJ3|OBJ3|OBJ1|instOutSigVal\(5) & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ0|Mux3~22_combout\);

-- Location: LCCOMB_X76_Y2_N6
\OBJ3|OBJ1|OBJ0|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux3~23_combout\ = (\OBJ3|OBJ1|OBJ0|Mux3~22_combout\ & ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & 
-- (\OBJ3|OBJ3|OBJ1|instOutSigVal\(3) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ1|OBJ0|Mux3~22_combout\,
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	combout => \OBJ3|OBJ1|OBJ0|Mux3~23_combout\);

-- Location: LCCOMB_X76_Y3_N28
\OBJ3|OBJ1|OBJ0|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux2~6_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & \OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux2~6_combout\);

-- Location: LCCOMB_X76_Y3_N0
\OBJ3|OBJ1|OBJ0|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux2~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ1|OBJ0|Mux2~6_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ1|OBJ0|Mux4~8_combout\ & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ0|Mux4~8_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ1|OBJ0|Mux2~6_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux2~10_combout\);

-- Location: LCCOMB_X76_Y3_N18
\OBJ3|OBJ1|OBJ0|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux2~9_combout\ = ((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # ((!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1) & !\OBJ3|OBJ3|OBJ1|instOutSigVal\(0)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux2~9_combout\);

-- Location: LCCOMB_X76_Y3_N22
\OBJ3|OBJ1|OBJ0|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux2~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ0|Mux2~10_combout\ & ((\OBJ3|OBJ1|OBJ0|Mux2~9_combout\))) # (!\OBJ3|OBJ1|OBJ0|Mux2~10_combout\ & (\OBJ3|OBJ1|OBJ0|Mux4~5_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ0|Mux2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ1|OBJ0|Mux2~10_combout\,
	datac => \OBJ3|OBJ1|OBJ0|Mux4~5_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux2~9_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux2~11_combout\);

-- Location: LCCOMB_X76_Y3_N12
\OBJ3|OBJ1|OBJ0|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux1~6_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(1)) # (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux1~6_combout\);

-- Location: LCCOMB_X76_Y3_N16
\OBJ3|OBJ1|OBJ0|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux1~10_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(2)) # (\OBJ3|OBJ1|OBJ0|Mux1~6_combout\)))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4) & (\OBJ3|OBJ1|OBJ0|Mux4~8_combout\ & 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datab => \OBJ3|OBJ1|OBJ0|Mux4~8_combout\,
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ1|OBJ0|Mux1~6_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux1~10_combout\);

-- Location: LCCOMB_X76_Y3_N10
\OBJ3|OBJ1|OBJ0|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux1~9_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(1),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux1~9_combout\);

-- Location: LCCOMB_X76_Y3_N30
\OBJ3|OBJ1|OBJ0|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux1~11_combout\ = (\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & ((\OBJ3|OBJ1|OBJ0|Mux1~10_combout\ & ((\OBJ3|OBJ1|OBJ0|Mux1~9_combout\))) # (!\OBJ3|OBJ1|OBJ0|Mux1~10_combout\ & (\OBJ3|OBJ1|OBJ0|Mux4~5_combout\)))) # 
-- (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(2) & (\OBJ3|OBJ1|OBJ0|Mux1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datab => \OBJ3|OBJ1|OBJ0|Mux1~10_combout\,
	datac => \OBJ3|OBJ1|OBJ0|Mux4~5_combout\,
	datad => \OBJ3|OBJ1|OBJ0|Mux1~9_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux1~11_combout\);

-- Location: LCCOMB_X76_Y2_N24
\OBJ3|OBJ1|OBJ0|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux0~6_combout\ = \OBJ3|OBJ3|OBJ1|instOutSigVal\(2) $ (\OBJ3|OBJ3|OBJ1|instOutSigVal\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(2),
	datad => \OBJ3|OBJ3|OBJ1|instOutSigVal\(0),
	combout => \OBJ3|OBJ1|OBJ0|Mux0~6_combout\);

-- Location: LCCOMB_X76_Y2_N26
\OBJ3|OBJ1|OBJ0|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ1|OBJ0|Mux0~11_combout\ = (((\OBJ3|OBJ3|OBJ1|instOutSigVal\(3)) # (\OBJ3|OBJ1|OBJ0|Mux0~6_combout\)) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(4))) # (!\OBJ3|OBJ3|OBJ1|instOutSigVal\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|instOutSigVal\(5),
	datab => \OBJ3|OBJ3|OBJ1|instOutSigVal\(4),
	datac => \OBJ3|OBJ3|OBJ1|instOutSigVal\(3),
	datad => \OBJ3|OBJ1|OBJ0|Mux0~6_combout\,
	combout => \OBJ3|OBJ1|OBJ0|Mux0~11_combout\);

-- Location: LCCOMB_X102_Y29_N6
\OBJ3|OBJ3|OBJ1|pceOUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|pceOUT~0_combout\ = (\OBJ3|OBJ3|OBJ1|main_state~q\ & (\OBJ3|OBJ3|OBJ1|pceOUT~q\ & ((\OBJ3|OBJ3|OBJ1|progState.progError~q\) # (!\OBJ3|OBJ3|OBJ1|counter[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|main_state~q\,
	datab => \OBJ3|OBJ3|OBJ1|pceOUT~q\,
	datac => \OBJ3|OBJ3|OBJ1|progState.progError~q\,
	datad => \OBJ3|OBJ3|OBJ1|counter[9]~33_combout\,
	combout => \OBJ3|OBJ3|OBJ1|pceOUT~0_combout\);

-- Location: LCCOMB_X102_Y29_N26
\OBJ3|OBJ3|OBJ1|pceOUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|OBJ1|pceOUT~1_combout\ = (\OBJ3|OBJ3|OBJ1|pceOUT~0_combout\) # ((\OBJ3|OBJ3|OBJ1|control~q\ & ((\OBJ3|OBJ3|OBJ1|Selector8~2_combout\) # (!\OBJ3|OBJ3|OBJ1|counter[9]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|pceOUT~0_combout\,
	datab => \OBJ3|OBJ3|OBJ1|control~q\,
	datac => \OBJ3|OBJ3|OBJ1|Selector8~2_combout\,
	datad => \OBJ3|OBJ3|OBJ1|counter[9]~48_combout\,
	combout => \OBJ3|OBJ3|OBJ1|pceOUT~1_combout\);

-- Location: FF_X102_Y29_N27
\OBJ3|OBJ3|OBJ1|pceOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|OBJ1|pceOUT~1_combout\,
	ena => \OBJ3|OBJ3|OBJ1|counter[29]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|OBJ1|pceOUT~q\);

-- Location: LCCOMB_X103_Y29_N14
\OBJ3|OBJ3|pceCounter[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|pceCounter[0]~4_combout\ = (\OBJ3|OBJ3|OBJ1|pceOUT~q\ & (\OBJ3|OBJ3|pceCounter\(0) $ (VCC))) # (!\OBJ3|OBJ3|OBJ1|pceOUT~q\ & (\OBJ3|OBJ3|pceCounter\(0) & VCC))
-- \OBJ3|OBJ3|pceCounter[0]~5\ = CARRY((\OBJ3|OBJ3|OBJ1|pceOUT~q\ & \OBJ3|OBJ3|pceCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|OBJ1|pceOUT~q\,
	datab => \OBJ3|OBJ3|pceCounter\(0),
	datad => VCC,
	combout => \OBJ3|OBJ3|pceCounter[0]~4_combout\,
	cout => \OBJ3|OBJ3|pceCounter[0]~5\);

-- Location: LCCOMB_X103_Y29_N16
\OBJ3|OBJ3|pceCounter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|pceCounter[1]~6_combout\ = (\OBJ3|OBJ3|pceCounter\(1) & (!\OBJ3|OBJ3|pceCounter[0]~5\)) # (!\OBJ3|OBJ3|pceCounter\(1) & ((\OBJ3|OBJ3|pceCounter[0]~5\) # (GND)))
-- \OBJ3|OBJ3|pceCounter[1]~7\ = CARRY((!\OBJ3|OBJ3|pceCounter[0]~5\) # (!\OBJ3|OBJ3|pceCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|pceCounter\(1),
	datad => VCC,
	cin => \OBJ3|OBJ3|pceCounter[0]~5\,
	combout => \OBJ3|OBJ3|pceCounter[1]~6_combout\,
	cout => \OBJ3|OBJ3|pceCounter[1]~7\);

-- Location: FF_X103_Y29_N17
\OBJ3|OBJ3|pceCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|pceCounter[1]~6_combout\,
	sclr => \OBJ3|OBJ3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|pceCounter\(1));

-- Location: LCCOMB_X103_Y29_N18
\OBJ3|OBJ3|pceCounter[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|pceCounter[2]~8_combout\ = (\OBJ3|OBJ3|pceCounter\(2) & (\OBJ3|OBJ3|pceCounter[1]~7\ $ (GND))) # (!\OBJ3|OBJ3|pceCounter\(2) & (!\OBJ3|OBJ3|pceCounter[1]~7\ & VCC))
-- \OBJ3|OBJ3|pceCounter[2]~9\ = CARRY((\OBJ3|OBJ3|pceCounter\(2) & !\OBJ3|OBJ3|pceCounter[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ3|OBJ3|pceCounter\(2),
	datad => VCC,
	cin => \OBJ3|OBJ3|pceCounter[1]~7\,
	combout => \OBJ3|OBJ3|pceCounter[2]~8_combout\,
	cout => \OBJ3|OBJ3|pceCounter[2]~9\);

-- Location: FF_X103_Y29_N19
\OBJ3|OBJ3|pceCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|pceCounter[2]~8_combout\,
	sclr => \OBJ3|OBJ3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|pceCounter\(2));

-- Location: LCCOMB_X103_Y29_N20
\OBJ3|OBJ3|pceCounter[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|pceCounter[3]~10_combout\ = \OBJ3|OBJ3|pceCounter[2]~9\ $ (\OBJ3|OBJ3|pceCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \OBJ3|OBJ3|pceCounter\(3),
	cin => \OBJ3|OBJ3|pceCounter[2]~9\,
	combout => \OBJ3|OBJ3|pceCounter[3]~10_combout\);

-- Location: FF_X103_Y29_N21
\OBJ3|OBJ3|pceCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|pceCounter[3]~10_combout\,
	sclr => \OBJ3|OBJ3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|pceCounter\(3));

-- Location: LCCOMB_X103_Y29_N10
\OBJ3|OBJ3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|Equal0~0_combout\ = (\OBJ3|OBJ3|pceCounter\(2) & (\OBJ3|OBJ3|pceCounter\(3) & (\OBJ3|OBJ3|pceCounter\(0) & \OBJ3|OBJ3|pceCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ3|OBJ3|pceCounter\(2),
	datab => \OBJ3|OBJ3|pceCounter\(3),
	datac => \OBJ3|OBJ3|pceCounter\(0),
	datad => \OBJ3|OBJ3|pceCounter\(1),
	combout => \OBJ3|OBJ3|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y29_N8
\OBJ3|OBJ3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ3|OBJ3|process_0~0_combout\ = (\OBJ3|OBJ3|Equal0~0_combout\) # (!\OBJ1|obj4|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj4|debounced~q\,
	datad => \OBJ3|OBJ3|Equal0~0_combout\,
	combout => \OBJ3|OBJ3|process_0~0_combout\);

-- Location: FF_X103_Y29_N15
\OBJ3|OBJ3|pceCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \OBJ3|OBJ3|pceCounter[0]~4_combout\,
	sclr => \OBJ3|OBJ3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ3|OBJ3|pceCounter\(0));

-- Location: LCCOMB_X21_Y69_N0
\assm|ASSM|CI|TX|CU|Sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|CI|TX|CU|Sclk~0_combout\ = (\assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\) # ((!\assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\ & ((!\assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\) # (!\assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|CI|TX|CU|MainState.state_bit_1~q\,
	datab => \assm|ASSM|CI|TX|CU|CycleState.state_bit_0~q\,
	datac => \assm|ASSM|CI|TX|CU|MainState.state_bit_2~q\,
	datad => \assm|ASSM|CI|TX|CU|MainState.state_bit_0~q\,
	combout => \assm|ASSM|CI|TX|CU|Sclk~0_combout\);

-- Location: IOIBUF_X0_Y60_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\assm|ASSM|SYN|BclkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|SYN|BclkOut~feeder_combout\ = \AUD_BCLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_BCLK~input_o\,
	combout => \assm|ASSM|SYN|BclkOut~feeder_combout\);

-- Location: FF_X57_Y1_N9
\assm|ASSM|SYN|BclkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|SYN|BclkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|SYN|BclkOut~q\);

-- Location: CLKCTRL_G18
\assm|ASSM|SYN|BclkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \assm|ASSM|SYN|BclkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \assm|ASSM|SYN|BclkOut~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y66_N15
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: LCCOMB_X91_Y31_N18
\assm|ASSM|SYN|DacLrcOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|SYN|DacLrcOut~feeder_combout\ = \AUD_DACLRCK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AUD_DACLRCK~input_o\,
	combout => \assm|ASSM|SYN|DacLrcOut~feeder_combout\);

-- Location: FF_X91_Y31_N19
\assm|ASSM|SYN|DacLrcOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \assm|ASSM|SYN|DacLrcOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|SYN|DacLrcOut~q\);

-- Location: LCCOMB_X91_Y31_N16
\assm|ASSM|AO|RTxShiftReg[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[16]~0_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ3|OBJ3|OBJ1|soundOut~q\ & \OBJ1|obj2|debounced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	datad => \OBJ1|obj2|debounced~q\,
	combout => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\);

-- Location: IOIBUF_X0_Y69_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: FF_X55_Y72_N1
\assm|ASSM|SYN|AdcLrcOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \AUD_ADCLRCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|SYN|AdcLrcOut~q\);

-- Location: CLKCTRL_G11
\assm|ASSM|SYN|AdcLrcOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\);

-- Location: LCCOMB_X87_Y32_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\OBJ1|obj2|debounced~q\ & (counter(0) $ (GND))) # (!\OBJ1|obj2|debounced~q\ & (!counter(0) & VCC))
-- \Add0~1\ = CARRY((\OBJ1|obj2|debounced~q\ & !counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|debounced~q\,
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X87_Y32_N6
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (counter(3) & (!\Add0~6\)) # (!counter(3) & ((\Add0~6\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~6\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X87_Y32_N8
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (counter(4) & (\Add0~8\ $ (GND))) # (!counter(4) & (!\Add0~8\ & VCC))
-- \Add0~10\ = CARRY((counter(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X88_Y36_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~9_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~9_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~16_combout\);

-- Location: FF_X88_Y36_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X87_Y32_N10
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (counter(5) & (!\Add0~10\)) # (!counter(5) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X88_Y36_N12
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~11_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X88_Y36_N13
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X87_Y32_N12
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (counter(6) & (\Add0~12\ $ (GND))) # (!counter(6) & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((counter(6) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X88_Y32_N28
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~13_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~15_combout\);

-- Location: FF_X88_Y32_N29
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X87_Y32_N14
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (counter(7) & (!\Add0~14\)) # (!counter(7) & ((\Add0~14\) # (GND)))
-- \Add0~22\ = CARRY((!\Add0~14\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X88_Y32_N0
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~21_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X88_Y32_N1
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X87_Y32_N16
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(8) & (\Add0~22\ $ (GND))) # (!counter(8) & (!\Add0~22\ & VCC))
-- \Add0~25\ = CARRY((counter(8) & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X86_Y32_N8
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (!\Equal0~9_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~24_combout\,
	combout => \Add0~26_combout\);

-- Location: FF_X86_Y32_N9
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X87_Y32_N18
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (counter(9) & (!\Add0~25\)) # (!counter(9) & ((\Add0~25\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~25\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X86_Y32_N2
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (!\Equal0~9_combout\ & \Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~27_combout\,
	combout => \Add0~29_combout\);

-- Location: FF_X86_Y32_N3
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X87_Y32_N20
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(10) & (\Add0~28\ $ (GND))) # (!counter(10) & (!\Add0~28\ & VCC))
-- \Add0~31\ = CARRY((counter(10) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X86_Y32_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (!\Equal0~9_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~30_combout\,
	combout => \Add0~32_combout\);

-- Location: FF_X86_Y32_N17
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X87_Y32_N22
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (counter(11) & (!\Add0~31\)) # (!counter(11) & ((\Add0~31\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~31\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X86_Y32_N18
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (!\Equal0~9_combout\ & \Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~35_combout\);

-- Location: FF_X86_Y32_N19
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X87_Y32_N24
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(12) & (\Add0~34\ $ (GND))) # (!counter(12) & (!\Add0~34\ & VCC))
-- \Add0~37\ = CARRY((counter(12) & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X86_Y32_N10
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (!\Equal0~9_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~36_combout\,
	combout => \Add0~38_combout\);

-- Location: FF_X86_Y32_N11
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X87_Y32_N26
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (counter(13) & (!\Add0~37\)) # (!counter(13) & ((\Add0~37\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~37\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X86_Y32_N28
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (!\Equal0~9_combout\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~41_combout\);

-- Location: FF_X86_Y32_N29
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X87_Y32_N28
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(14) & (\Add0~40\ $ (GND))) # (!counter(14) & (!\Add0~40\ & VCC))
-- \Add0~43\ = CARRY((counter(14) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X86_Y32_N22
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (!\Equal0~9_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~42_combout\,
	combout => \Add0~44_combout\);

-- Location: FF_X86_Y32_N23
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X87_Y32_N30
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (counter(15) & (!\Add0~43\)) # (!counter(15) & ((\Add0~43\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~43\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X86_Y32_N24
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (!\Equal0~9_combout\ & \Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~45_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X86_Y32_N25
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X86_Y32_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(12) & (!counter(13) & (!counter(14) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(14),
	datad => counter(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X86_Y32_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(11) & (!counter(10) & (!counter(8) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(10),
	datac => counter(8),
	datad => counter(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X89_Y34_N18
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (counter(0) & counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(5),
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X89_Y34_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(3) & (!counter(1) & (counter(2) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(2),
	datad => counter(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X89_Y34_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(4) & (\Mux8~6_combout\ & (\Equal0~0_combout\ & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Mux8~6_combout\,
	datac => \Equal0~0_combout\,
	datad => counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X87_Y31_N0
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(16) & (\Add0~46\ $ (GND))) # (!counter(16) & (!\Add0~46\ & VCC))
-- \Add0~49\ = CARRY((counter(16) & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X86_Y32_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (!\Equal0~9_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~48_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X86_Y32_N21
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X87_Y31_N2
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (counter(17) & (!\Add0~49\)) # (!counter(17) & ((\Add0~49\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~49\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X86_Y32_N26
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (!\Equal0~9_combout\ & \Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Add0~51_combout\,
	combout => \Add0~53_combout\);

-- Location: FF_X86_Y32_N27
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X87_Y31_N4
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(18) & (\Add0~52\ $ (GND))) # (!counter(18) & (!\Add0~52\ & VCC))
-- \Add0~55\ = CARRY((counter(18) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X86_Y32_N4
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (!\Equal0~9_combout\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~54_combout\,
	combout => \Add0~56_combout\);

-- Location: FF_X86_Y32_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X87_Y31_N6
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (counter(19) & (!\Add0~55\)) # (!counter(19) & ((\Add0~55\) # (GND)))
-- \Add0~58\ = CARRY((!\Add0~55\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X86_Y32_N14
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (!\Equal0~9_combout\ & \Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~57_combout\,
	combout => \Add0~59_combout\);

-- Location: FF_X86_Y32_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X86_Y32_N12
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!counter(17) & (!counter(18) & (!counter(19) & !counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(18),
	datac => counter(19),
	datad => counter(16),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X87_Y31_N8
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(20) & (\Add0~58\ $ (GND))) # (!counter(20) & (!\Add0~58\ & VCC))
-- \Add0~61\ = CARRY((counter(20) & !\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X86_Y31_N28
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (!\Equal0~9_combout\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~60_combout\,
	combout => \Add0~62_combout\);

-- Location: FF_X86_Y31_N29
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X87_Y31_N10
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (counter(21) & (!\Add0~61\)) # (!counter(21) & ((\Add0~61\) # (GND)))
-- \Add0~64\ = CARRY((!\Add0~61\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X86_Y31_N2
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\Equal0~9_combout\ & \Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~63_combout\,
	combout => \Add0~65_combout\);

-- Location: FF_X86_Y31_N3
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X87_Y31_N12
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (counter(22) & (\Add0~64\ $ (GND))) # (!counter(22) & (!\Add0~64\ & VCC))
-- \Add0~67\ = CARRY((counter(22) & !\Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X86_Y31_N12
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\Equal0~9_combout\ & \Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~66_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X86_Y31_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X87_Y31_N14
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (counter(23) & (!\Add0~67\)) # (!counter(23) & ((\Add0~67\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~67\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X86_Y31_N30
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\Equal0~9_combout\ & \Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~69_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X86_Y31_N31
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X86_Y31_N20
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(22) & (!counter(21) & (!counter(23) & !counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(21),
	datac => counter(23),
	datad => counter(20),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X87_Y31_N16
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (counter(24) & (\Add0~70\ $ (GND))) # (!counter(24) & (!\Add0~70\ & VCC))
-- \Add0~73\ = CARRY((counter(24) & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X86_Y31_N18
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\Equal0~9_combout\ & \Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~72_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X86_Y31_N19
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X87_Y31_N18
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (counter(25) & (!\Add0~73\)) # (!counter(25) & ((\Add0~73\) # (GND)))
-- \Add0~76\ = CARRY((!\Add0~73\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X86_Y31_N0
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (!\Equal0~9_combout\ & \Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~75_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X86_Y31_N1
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X87_Y31_N20
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (counter(26) & (\Add0~76\ $ (GND))) # (!counter(26) & (!\Add0~76\ & VCC))
-- \Add0~79\ = CARRY((counter(26) & !\Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X86_Y31_N22
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (!\Equal0~9_combout\ & \Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~78_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X86_Y31_N23
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X87_Y31_N22
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (counter(27) & (!\Add0~79\)) # (!counter(27) & ((\Add0~79\) # (GND)))
-- \Add0~82\ = CARRY((!\Add0~79\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X86_Y31_N24
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (!\Equal0~9_combout\ & \Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~81_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X86_Y31_N25
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X87_Y31_N24
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (counter(28) & (\Add0~82\ $ (GND))) # (!counter(28) & (!\Add0~82\ & VCC))
-- \Add0~85\ = CARRY((counter(28) & !\Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X86_Y31_N26
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (!\Equal0~9_combout\ & \Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~84_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X86_Y31_N27
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X87_Y31_N26
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (counter(29) & (!\Add0~85\)) # (!counter(29) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X86_Y31_N16
\Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (!\Equal0~9_combout\ & \Add0~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~86_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X86_Y31_N17
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X87_Y31_N28
\Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (counter(30) & (\Add0~87\ $ (GND))) # (!counter(30) & (!\Add0~87\ & VCC))
-- \Add0~89\ = CARRY((counter(30) & !\Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X86_Y31_N6
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (!\Equal0~9_combout\ & \Add0~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Add0~88_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X86_Y31_N7
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X87_Y31_N30
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = counter(31) $ (!\Add0~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(31),
	cin => \Add0~89\,
	combout => \Add0~90_combout\);

-- Location: LCCOMB_X86_Y31_N4
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Equal0~9_combout\) # (!\Add0~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => \Add0~90_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X86_Y31_N5
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X86_Y31_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter(28) & (!counter(29) & (counter(31) & !counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => counter(29),
	datac => counter(31),
	datad => counter(30),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X86_Y31_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter(27) & (!counter(25) & (!counter(26) & !counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => counter(25),
	datac => counter(26),
	datad => counter(24),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X86_Y31_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X86_Y32_N30
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X88_Y34_N0
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Equal0~9_combout\) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~19_combout\);

-- Location: FF_X88_Y34_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X87_Y32_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X88_Y34_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~2_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~4_combout\);

-- Location: FF_X88_Y34_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X87_Y32_N4
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~6\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X88_Y32_N2
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~5_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X88_Y32_N3
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X88_Y34_N6
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~7_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	datad => \Equal0~9_combout\,
	combout => \Add0~18_combout\);

-- Location: FF_X88_Y34_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OBJ2|Mux0~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X88_Y33_N12
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (counter(4) & (!counter(3) & ((!counter(1))))) # (!counter(4) & (counter(1) & (counter(3) $ (counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(4),
	datad => counter(1),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X88_Y33_N8
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (counter(4) & ((counter(2) & (!counter(3) & counter(1))) # (!counter(2) & (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X88_Y33_N18
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (counter(4) & ((counter(3) & ((counter(1)))) # (!counter(3) & (counter(2))))) # (!counter(4) & (!counter(1) & (counter(2) $ (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(3),
	datad => counter(1),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X88_Y33_N30
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (counter(0) & (!counter(6) & (\Mux0~7_combout\))) # (!counter(0) & ((counter(6)) # ((!\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(6),
	datac => \Mux0~7_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X88_Y33_N20
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (counter(2) & (counter(4) & ((counter(3)) # (!counter(1))))) # (!counter(2) & ((counter(1) & ((!counter(4)))) # (!counter(1) & (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(4),
	datad => counter(1),
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X88_Y33_N14
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (counter(6) & ((\Mux0~8_combout\ & ((!\Mux0~9_combout\))) # (!\Mux0~8_combout\ & (!\Mux0~5_combout\)))) # (!counter(6) & (((\Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => counter(6),
	datac => \Mux0~8_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X90_Y36_N28
\OBJ1|obj10|DEBOUNCE_PROC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|DEBOUNCE_PROC~0_combout\ = \SW[4]~input_o\ $ (\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \OBJ1|obj10|debounced~q\,
	combout => \OBJ1|obj10|DEBOUNCE_PROC~0_combout\);

-- Location: LCCOMB_X90_Y36_N30
\OBJ1|obj10|counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[0]~2_combout\ = (!\SW[17]~input_o\ & ((\OBJ1|obj10|counter\(0) & (!\OBJ1|obj10|DEBOUNCE_PROC~0_combout\ & !\OBJ1|obj10|LessThan0~0_combout\)) # (!\OBJ1|obj10|counter\(0) & ((\OBJ1|obj10|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OBJ1|obj10|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj10|counter\(0),
	datad => \OBJ1|obj10|LessThan0~0_combout\,
	combout => \OBJ1|obj10|counter[0]~2_combout\);

-- Location: FF_X90_Y36_N31
\OBJ1|obj10|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj10|counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj10|counter\(0));

-- Location: LCCOMB_X90_Y36_N22
\OBJ1|obj10|counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[1]~6_combout\ = (!\SW[17]~input_o\ & ((\SW[4]~input_o\ $ (!\OBJ1|obj10|debounced~q\)) # (!\OBJ1|obj10|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \OBJ1|obj10|counter\(3),
	datad => \OBJ1|obj10|debounced~q\,
	combout => \OBJ1|obj10|counter[1]~6_combout\);

-- Location: LCCOMB_X90_Y36_N24
\OBJ1|obj10|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[1]~7_combout\ = (\OBJ1|obj10|counter[1]~6_combout\ & (\OBJ1|obj10|counter\(1) $ (((\OBJ1|obj10|counter\(0) & !\OBJ1|obj10|counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|counter[1]~6_combout\,
	datab => \OBJ1|obj10|counter\(0),
	datac => \OBJ1|obj10|counter\(1),
	datad => \OBJ1|obj10|counter\(3),
	combout => \OBJ1|obj10|counter[1]~7_combout\);

-- Location: FF_X90_Y36_N25
\OBJ1|obj10|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj10|counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj10|counter\(1));

-- Location: LCCOMB_X90_Y36_N26
\OBJ1|obj10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|Add0~0_combout\ = (\OBJ1|obj10|counter\(0) & \OBJ1|obj10|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OBJ1|obj10|counter\(0),
	datad => \OBJ1|obj10|counter\(1),
	combout => \OBJ1|obj10|Add0~0_combout\);

-- Location: LCCOMB_X90_Y36_N12
\OBJ1|obj10|counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[3]~4_combout\ = ((!\OBJ1|obj10|counter\(0) & (!\OBJ1|obj10|counter\(1) & !\OBJ1|obj10|counter\(2)))) # (!\OBJ1|obj10|DEBOUNCE_PROC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|counter\(0),
	datab => \OBJ1|obj10|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj10|counter\(1),
	datad => \OBJ1|obj10|counter\(2),
	combout => \OBJ1|obj10|counter[3]~4_combout\);

-- Location: LCCOMB_X90_Y36_N18
\OBJ1|obj10|counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[3]~5_combout\ = (\OBJ1|obj10|counter\(3) & (((\OBJ1|obj10|counter[3]~4_combout\)))) # (!\OBJ1|obj10|counter\(3) & (\OBJ1|obj10|Add0~0_combout\ & (\OBJ1|obj10|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|Add0~0_combout\,
	datab => \OBJ1|obj10|counter\(2),
	datac => \OBJ1|obj10|counter\(3),
	datad => \OBJ1|obj10|counter[3]~4_combout\,
	combout => \OBJ1|obj10|counter[3]~5_combout\);

-- Location: FF_X90_Y36_N19
\OBJ1|obj10|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj10|counter[3]~5_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj10|counter\(3));

-- Location: LCCOMB_X90_Y36_N16
\OBJ1|obj10|counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|counter[2]~3_combout\ = (\OBJ1|obj10|counter\(3) & (!\OBJ1|obj10|DEBOUNCE_PROC~0_combout\ & (\OBJ1|obj10|counter\(2)))) # (!\OBJ1|obj10|counter\(3) & ((\OBJ1|obj10|counter\(2) $ (\OBJ1|obj10|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|counter\(3),
	datab => \OBJ1|obj10|DEBOUNCE_PROC~0_combout\,
	datac => \OBJ1|obj10|counter\(2),
	datad => \OBJ1|obj10|Add0~0_combout\,
	combout => \OBJ1|obj10|counter[2]~3_combout\);

-- Location: FF_X90_Y36_N17
\OBJ1|obj10|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj10|counter[2]~3_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj10|counter\(2));

-- Location: LCCOMB_X90_Y36_N10
\OBJ1|obj10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|LessThan0~0_combout\ = ((!\OBJ1|obj10|counter\(0) & (!\OBJ1|obj10|counter\(2) & !\OBJ1|obj10|counter\(1)))) # (!\OBJ1|obj10|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|counter\(0),
	datab => \OBJ1|obj10|counter\(2),
	datac => \OBJ1|obj10|counter\(1),
	datad => \OBJ1|obj10|counter\(3),
	combout => \OBJ1|obj10|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y36_N20
\OBJ1|obj10|debounced~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ1|obj10|debounced~0_combout\ = (\SW[17]~input_o\ & (\SW[4]~input_o\)) # (!\SW[17]~input_o\ & ((\OBJ1|obj10|LessThan0~0_combout\ & ((\OBJ1|obj10|debounced~q\))) # (!\OBJ1|obj10|LessThan0~0_combout\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \OBJ1|obj10|debounced~q\,
	datad => \OBJ1|obj10|LessThan0~0_combout\,
	combout => \OBJ1|obj10|debounced~0_combout\);

-- Location: FF_X90_Y36_N21
\OBJ1|obj10|debounced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OBJ1|obj10|debounced~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ1|obj10|debounced~q\);

-- Location: LCCOMB_X88_Y36_N24
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!counter(4) & (!counter(2) & !counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => counter(2),
	datad => counter(3),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X88_Y36_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (counter(2) & (((counter(4)) # (!counter(1))))) # (!counter(2) & (counter(3) $ (((counter(4) & !counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(1),
	datad => counter(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X88_Y36_N0
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (counter(1) & (counter(3) & (counter(4) $ (!counter(2))))) # (!counter(1) & (((counter(4) & !counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(1),
	datad => counter(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X88_Y36_N18
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (counter(6) & (!counter(0))) # (!counter(6) & ((counter(0) & ((\Mux0~1_combout\))) # (!counter(0) & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(0),
	datac => \Mux0~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X88_Y36_N14
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (counter(6) & (\Mux0~3_combout\ & ((counter(1)) # (!\Mux0~2_combout\)))) # (!counter(6) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \Mux0~3_combout\,
	datac => counter(1),
	datad => \Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X89_Y33_N12
\FreqSig[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[15]~0_combout\ = ((counter(5) & ((\Mux0~4_combout\))) # (!counter(5) & (\Mux0~10_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => counter(5),
	datac => \OBJ1|obj10|debounced~q\,
	datad => \Mux0~4_combout\,
	combout => \FreqSig[15]~0_combout\);

-- Location: LCCOMB_X88_Y33_N4
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (counter(1) & ((counter(2) & (!counter(0))) # (!counter(2) & ((counter(4)))))) # (!counter(1) & (!counter(0) & ((counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(4),
	datad => counter(1),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X89_Y32_N24
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (counter(2)) # ((counter(4)) # ((!counter(1) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X88_Y33_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter(0) & (counter(4) $ (((counter(2)) # (counter(1)))))) # (!counter(0) & (counter(1) & ((counter(4)) # (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(4),
	datad => counter(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X88_Y33_N10
\FreqSig[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[14]~1_combout\ = (!counter(3) & ((counter(5) & (!\Mux1~1_combout\)) # (!counter(5) & ((!\Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(5),
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \FreqSig[14]~1_combout\);

-- Location: LCCOMB_X88_Y33_N2
\FreqSig[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[14]~2_combout\ = (\FreqSig[14]~1_combout\) # ((counter(3) & (!counter(5) & \Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(5),
	datac => \Mux1~2_combout\,
	datad => \FreqSig[14]~1_combout\,
	combout => \FreqSig[14]~2_combout\);

-- Location: LCCOMB_X88_Y32_N20
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!counter(3) & (counter(1) $ (counter(5) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X89_Y32_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (counter(3) & ((counter(0)) # ((!counter(5) & counter(1))))) # (!counter(3) & (!counter(0) & (counter(5) $ (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(5),
	datac => counter(0),
	datad => counter(1),
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X89_Y32_N26
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (counter(1) & (!counter(3) & (counter(0) $ (!counter(5))))) # (!counter(1) & ((counter(5) & (!counter(0))) # (!counter(5) & ((counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(5),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X89_Y32_N16
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (counter(1) & (((counter(5)) # (counter(3))))) # (!counter(1) & ((counter(0) & ((counter(3)))) # (!counter(0) & (!counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(5),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X89_Y32_N20
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (counter(2) & (counter(4))) # (!counter(2) & ((counter(4) & ((!\Mux1~4_combout\))) # (!counter(4) & (\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => \Mux1~5_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X89_Y32_N14
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (counter(2) & ((\Mux1~6_combout\ & (!\Mux1~7_combout\)) # (!\Mux1~6_combout\ & ((\Mux1~3_combout\))))) # (!counter(2) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datab => counter(2),
	datac => \Mux1~3_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X90_Y33_N30
\FreqSig[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[14]~3_combout\ = ((counter(6) & (\FreqSig[14]~2_combout\)) # (!counter(6) & ((\Mux1~8_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \OBJ1|obj10|debounced~q\,
	datac => \FreqSig[14]~2_combout\,
	datad => \Mux1~8_combout\,
	combout => \FreqSig[14]~3_combout\);

-- Location: LCCOMB_X87_Y33_N8
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (counter(5) & (counter(0) & ((counter(1)) # (counter(3))))) # (!counter(5) & (counter(3) $ (((counter(1)) # (!counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X87_Y33_N2
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (counter(0) & (((counter(5) & counter(3))))) # (!counter(0) & (((!counter(5) & !counter(3))) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X87_Y33_N22
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (counter(4) & ((counter(2)) # ((!\Mux2~4_combout\)))) # (!counter(4) & (!counter(2) & (!\Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => \Mux2~5_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X87_Y33_N4
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (counter(5) & ((counter(1)) # ((counter(3)) # (!counter(0))))) # (!counter(5) & (counter(1) $ (counter(3) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X87_Y33_N28
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (counter(5) & ((counter(3)) # (counter(1) $ (!counter(0))))) # (!counter(5) & (counter(1) $ ((counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(5),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X87_Y33_N26
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~6_combout\ & (((!\Mux2~7_combout\)) # (!counter(2)))) # (!\Mux2~6_combout\ & (counter(2) & ((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => counter(2),
	datac => \Mux2~7_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X89_Y33_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!counter(2) & (!counter(3) & (counter(1) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X89_Y33_N0
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (counter(2) & (counter(1) $ (((counter(0)) # (!counter(3)))))) # (!counter(2) & ((counter(0) & (counter(3))) # (!counter(0) & ((counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X89_Y33_N30
\FreqSig[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[13]~4_combout\ = (!counter(4) & ((counter(5) & (\Mux2~0_combout\)) # (!counter(5) & ((\Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux2~0_combout\,
	datac => counter(4),
	datad => \Mux2~1_combout\,
	combout => \FreqSig[13]~4_combout\);

-- Location: LCCOMB_X89_Y33_N24
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (counter(0) & (counter(2) $ (((counter(1)) # (counter(3)))))) # (!counter(0) & ((counter(1) $ (counter(2))) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X89_Y33_N14
\FreqSig[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[13]~5_combout\ = (\FreqSig[13]~4_combout\) # ((!counter(5) & (counter(4) & !\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => \FreqSig[13]~4_combout\,
	datad => \Mux2~2_combout\,
	combout => \FreqSig[13]~5_combout\);

-- Location: LCCOMB_X90_Y33_N28
\FreqSig[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[13]~6_combout\ = ((counter(6) & ((\FreqSig[13]~5_combout\))) # (!counter(6) & (\Mux2~8_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \OBJ1|obj10|debounced~q\,
	datac => \Mux2~8_combout\,
	datad => \FreqSig[13]~5_combout\,
	combout => \FreqSig[13]~6_combout\);

-- Location: LCCOMB_X87_Y34_N0
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (counter(0) & (counter(3) & (!counter(4) & !counter(5)))) # (!counter(0) & (counter(5) & ((counter(4)) # (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X87_Y34_N8
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (counter(4) & ((counter(3) & ((counter(5)))) # (!counter(3) & (counter(0) & !counter(5))))) # (!counter(4) & ((counter(5) & ((!counter(0)))) # (!counter(5) & (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X87_Y34_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (counter(3) & ((counter(0) & ((counter(4)) # (counter(5)))) # (!counter(0) & (!counter(4))))) # (!counter(3) & (((counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X87_Y34_N14
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (counter(1) & ((counter(2)) # ((\Mux3~3_combout\)))) # (!counter(1) & (!counter(2) & (\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => \Mux3~4_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X87_Y34_N28
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (counter(3) & (!counter(0))) # (!counter(3) & ((counter(5)) # ((counter(0) & counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X87_Y34_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (counter(2) & ((\Mux3~5_combout\ & (!\Mux3~6_combout\)) # (!\Mux3~5_combout\ & ((\Mux3~2_combout\))))) # (!counter(2) & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Mux3~6_combout\,
	datac => \Mux3~5_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X89_Y33_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (counter(2) & ((counter(3) & ((counter(1)) # (counter(0)))) # (!counter(3) & (!counter(1))))) # (!counter(2) & ((counter(3) & (!counter(1))) # (!counter(3) & (counter(1) & !counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X89_Y33_N22
\FreqSig[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[12]~7_combout\ = (!counter(4) & ((counter(5) & ((\Mux2~0_combout\))) # (!counter(5) & (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => \Mux3~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \FreqSig[12]~7_combout\);

-- Location: LCCOMB_X89_Y33_N20
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (counter(2) & ((counter(1) $ (!counter(3))))) # (!counter(2) & (counter(0) $ (((counter(3)) # (!counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X89_Y33_N2
\FreqSig[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[12]~8_combout\ = (\FreqSig[12]~7_combout\) # ((!counter(5) & (counter(4) & !\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => \FreqSig[12]~7_combout\,
	datad => \Mux3~1_combout\,
	combout => \FreqSig[12]~8_combout\);

-- Location: LCCOMB_X90_Y33_N22
\FreqSig[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[12]~9_combout\ = ((counter(6) & ((\FreqSig[12]~8_combout\))) # (!counter(6) & (\Mux3~7_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \OBJ1|obj10|debounced~q\,
	datac => \Mux3~7_combout\,
	datad => \FreqSig[12]~8_combout\,
	combout => \FreqSig[12]~9_combout\);

-- Location: LCCOMB_X87_Y33_N12
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (counter(5) & ((counter(2) & ((!counter(0)))) # (!counter(2) & ((counter(1)) # (counter(0)))))) # (!counter(5) & (counter(1) $ (((counter(2)) # (!counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(5),
	datad => counter(0),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X87_Y33_N14
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (counter(1) & ((counter(2) & ((!counter(0)))) # (!counter(2) & ((counter(0)) # (!counter(5)))))) # (!counter(1) & (counter(2) $ (counter(5) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(5),
	datad => counter(0),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X87_Y33_N20
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (counter(1) & (counter(2) & ((counter(0))))) # (!counter(1) & ((counter(2) & (counter(5) & !counter(0))) # (!counter(2) & ((counter(5)) # (!counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(5),
	datad => counter(0),
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X87_Y33_N30
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (counter(4) & (counter(3))) # (!counter(4) & ((counter(3) & (\Mux4~3_combout\)) # (!counter(3) & ((\Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(3),
	datac => \Mux4~3_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X87_Y33_N16
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (counter(2) & (((!counter(5) & !counter(0))))) # (!counter(2) & (counter(5) & (counter(1) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(5),
	datad => counter(0),
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X87_Y33_N18
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (counter(4) & ((\Mux4~5_combout\ & ((!\Mux4~6_combout\))) # (!\Mux4~5_combout\ & (!\Mux4~2_combout\)))) # (!counter(4) & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => counter(4),
	datac => \Mux4~5_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X88_Y33_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (counter(2) & (counter(0) & ((counter(3)) # (!counter(1))))) # (!counter(2) & (!counter(1) & (counter(3) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X88_Y33_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (counter(1) & (((counter(0)) # (!counter(3))))) # (!counter(1) & ((counter(2)) # ((!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(1),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X88_Y33_N28
\FreqSig[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[11]~10_combout\ = (!counter(5) & ((counter(4) & ((\Mux4~0_combout\))) # (!counter(4) & (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => \Mux4~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \FreqSig[11]~10_combout\);

-- Location: LCCOMB_X90_Y33_N24
\FreqSig[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[11]~11_combout\ = ((counter(6) & ((\FreqSig[11]~10_combout\))) # (!counter(6) & (\Mux4~7_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \OBJ1|obj10|debounced~q\,
	datac => \Mux4~7_combout\,
	datad => \FreqSig[11]~10_combout\,
	combout => \FreqSig[11]~11_combout\);

-- Location: LCCOMB_X89_Y35_N28
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (counter(0) & ((counter(3)) # ((counter(1) & !counter(6))))) # (!counter(0) & (!counter(1) & ((!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(6),
	datad => counter(3),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X89_Y35_N4
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (counter(1) & (counter(6) $ (((counter(0)) # (!counter(3)))))) # (!counter(1) & (counter(0) $ (((!counter(6)) # (!counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(3),
	datac => counter(6),
	datad => counter(0),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X89_Y35_N8
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (counter(1) & (counter(6) $ (((!counter(3)) # (!counter(0)))))) # (!counter(1) & ((counter(6) & (!counter(0))) # (!counter(6) & ((counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X89_Y35_N10
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (!counter(1) & ((counter(3) & (counter(0))) # (!counter(3) & ((counter(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(6),
	datad => counter(3),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X89_Y35_N6
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (counter(2) & (counter(4))) # (!counter(2) & ((counter(4) & ((!\Mux5~4_combout\))) # (!counter(4) & (!\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => \Mux5~5_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X89_Y35_N30
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (counter(2) & ((\Mux5~6_combout\ & ((!\Mux5~7_combout\))) # (!\Mux5~6_combout\ & (\Mux5~3_combout\)))) # (!counter(2) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Mux5~3_combout\,
	datac => \Mux5~7_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X91_Y34_N4
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (counter(3) & (!counter(4) & ((counter(1)) # (!counter(0))))) # (!counter(3) & (!counter(0) & (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X88_Y34_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!counter(3) & (!counter(4) & (counter(0) $ (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X91_Y34_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (counter(3) & ((counter(0) & ((counter(1)) # (counter(4)))) # (!counter(0) & (!counter(1))))) # (!counter(3) & (counter(4) & (counter(0) $ (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X91_Y34_N2
\FreqSig[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[10]~12_combout\ = (!counter(2) & ((counter(6) & (\Mux5~0_combout\)) # (!counter(6) & ((\Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(6),
	datac => \Mux5~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \FreqSig[10]~12_combout\);

-- Location: LCCOMB_X91_Y34_N18
\FreqSig[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[10]~13_combout\ = (\FreqSig[10]~12_combout\) # ((counter(2) & (!counter(6) & \Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(6),
	datac => \Mux5~2_combout\,
	datad => \FreqSig[10]~12_combout\,
	combout => \FreqSig[10]~13_combout\);

-- Location: LCCOMB_X91_Y34_N16
\FreqSig[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[10]~14_combout\ = ((counter(5) & ((\FreqSig[10]~13_combout\))) # (!counter(5) & (\Mux5~8_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \OBJ1|obj10|debounced~q\,
	datac => \Mux5~8_combout\,
	datad => \FreqSig[10]~13_combout\,
	combout => \FreqSig[10]~14_combout\);

-- Location: LCCOMB_X87_Y34_N18
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (counter(1) & ((counter(0)) # ((counter(3) & !counter(6))))) # (!counter(1) & (counter(0) $ (counter(3) $ (!counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(6),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X87_Y34_N26
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (counter(0) & (counter(1) & ((!counter(6))))) # (!counter(0) & (((counter(3)) # (counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(6),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X87_Y34_N22
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (counter(0) & (counter(6) & (counter(1) $ (!counter(3))))) # (!counter(0) & (!counter(1) & (counter(3) $ (counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(6),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X87_Y34_N12
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (counter(6) & ((counter(0)) # ((counter(1) & !counter(3))))) # (!counter(6) & (counter(0) $ (((counter(1)) # (!counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(6),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X87_Y34_N24
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (counter(4) & (((counter(2)) # (\Mux6~2_combout\)))) # (!counter(4) & (!\Mux6~3_combout\ & (!counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => counter(4),
	datac => counter(2),
	datad => \Mux6~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X87_Y34_N16
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (counter(2) & ((\Mux6~4_combout\ & (!\Mux6~5_combout\)) # (!\Mux6~4_combout\ & ((!\Mux6~1_combout\))))) # (!counter(2) & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Mux6~5_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X86_Y34_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (counter(3) & ((counter(1) & ((counter(0)) # (counter(2)))) # (!counter(1) & (counter(0) $ (!counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X87_Y34_N20
\FreqSig[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[9]~43_combout\ = (counter(1) & ((counter(2) & ((!counter(0)))) # (!counter(2) & ((counter(0)) # (!counter(3)))))) # (!counter(1) & ((counter(0) & ((counter(3)))) # (!counter(0) & (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(3),
	datad => counter(0),
	combout => \FreqSig[9]~43_combout\);

-- Location: LCCOMB_X87_Y34_N10
\FreqSig[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[9]~44_combout\ = (\FreqSig[9]~43_combout\ & (((!counter(3) & !counter(1))) # (!counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(6),
	datac => counter(1),
	datad => \FreqSig[9]~43_combout\,
	combout => \FreqSig[9]~44_combout\);

-- Location: LCCOMB_X87_Y34_N4
\FreqSig[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[9]~15_combout\ = (counter(4) & (!counter(6) & (\Mux6~0_combout\))) # (!counter(4) & (((\FreqSig[9]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => \Mux6~0_combout\,
	datad => \FreqSig[9]~44_combout\,
	combout => \FreqSig[9]~15_combout\);

-- Location: LCCOMB_X87_Y34_N2
\FreqSig[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[9]~16_combout\ = ((counter(5) & ((\FreqSig[9]~15_combout\))) # (!counter(5) & (\Mux6~6_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux6~6_combout\,
	datac => \FreqSig[9]~15_combout\,
	datad => \OBJ1|obj10|debounced~q\,
	combout => \FreqSig[9]~16_combout\);

-- Location: LCCOMB_X91_Y34_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (counter(1) & ((counter(0)) # ((!counter(4))))) # (!counter(1) & (counter(0) $ (((!counter(4)) # (!counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X91_Y34_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (counter(3) & (counter(0) $ (((counter(1) & counter(4)))))) # (!counter(3) & ((counter(0) & ((counter(4)))) # (!counter(0) & (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X91_Y34_N20
\FreqSig[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[8]~17_combout\ = (!counter(2) & ((counter(5) & (\Mux5~0_combout\)) # (!counter(5) & ((!\Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux5~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \FreqSig[8]~17_combout\);

-- Location: LCCOMB_X91_Y34_N8
\FreqSig[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[8]~18_combout\ = (\FreqSig[8]~17_combout\) # ((!counter(5) & (counter(2) & !\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(2),
	datac => \Mux7~1_combout\,
	datad => \FreqSig[8]~17_combout\,
	combout => \FreqSig[8]~18_combout\);

-- Location: LCCOMB_X91_Y34_N14
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (!counter(5) & ((counter(0) & (counter(1) & counter(4))) # (!counter(0) & ((!counter(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X91_Y34_N26
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (counter(1) & (counter(5) & ((counter(0)) # (!counter(4))))) # (!counter(1) & (counter(4) $ (((!counter(0) & !counter(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X91_Y34_N22
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (counter(5) & (!counter(0) & (!counter(1) & !counter(4)))) # (!counter(5) & (counter(4) $ (((counter(0) & counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X91_Y34_N24
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (counter(1) & (counter(0) $ ((counter(4))))) # (!counter(1) & (((counter(4)) # (counter(5))) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(5),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X91_Y34_N12
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (counter(2) & (counter(3))) # (!counter(2) & ((counter(3) & ((!\Mux7~3_combout\))) # (!counter(3) & (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => \Mux7~4_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X91_Y34_N0
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (counter(2) & ((\Mux7~5_combout\ & (!\Mux7~6_combout\)) # (!\Mux7~5_combout\ & ((\Mux7~2_combout\))))) # (!counter(2) & (((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Mux7~6_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X91_Y34_N10
\FreqSig[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[8]~19_combout\ = ((counter(6) & (\FreqSig[8]~18_combout\)) # (!counter(6) & ((\Mux7~7_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \FreqSig[8]~18_combout\,
	datad => \Mux7~7_combout\,
	combout => \FreqSig[8]~19_combout\);

-- Location: LCCOMB_X89_Y34_N30
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (counter(0) & (counter(4) & ((counter(3)) # (!counter(2))))) # (!counter(0) & (((counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X89_Y34_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (counter(3) & (counter(0) & (counter(2) $ (counter(4))))) # (!counter(3) & (((counter(2) & counter(4))) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X89_Y34_N24
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (counter(5) & (counter(1))) # (!counter(5) & ((counter(1) & ((!\Mux8~0_combout\))) # (!counter(1) & (\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(1),
	datac => \Mux8~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X89_Y34_N26
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (counter(5) & (\Mux0~3_combout\ & ((\Mux8~2_combout\) # (!counter(0))))) # (!counter(5) & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(5),
	datac => \Mux0~3_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X88_Y36_N6
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (counter(3) & ((counter(1)) # ((counter(5) & !counter(0))))) # (!counter(3) & (counter(5) $ (((!counter(0) & !counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X89_Y34_N22
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = counter(5) $ (((counter(0) & (counter(3))) # (!counter(0) & ((counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(5),
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X89_Y34_N0
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (counter(0) & ((counter(5)) # ((!counter(3) & counter(1))))) # (!counter(0) & (counter(5) & (counter(3) $ (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(5),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X89_Y34_N16
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (counter(4) & ((\Mux8~5_combout\) # ((counter(2))))) # (!counter(4) & (((!counter(2) & !\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Mux8~5_combout\,
	datac => counter(2),
	datad => \Mux8~6_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X89_Y34_N12
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (counter(2) & ((\Mux8~7_combout\ & ((!\Mux8~8_combout\))) # (!\Mux8~7_combout\ & (!\Mux8~4_combout\)))) # (!counter(2) & (((\Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => counter(2),
	datac => \Mux8~8_combout\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X89_Y34_N14
\FreqSig[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[7]~20_combout\ = ((counter(6) & (\Mux8~3_combout\)) # (!counter(6) & ((\Mux8~9_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \Mux8~3_combout\,
	datad => \Mux8~9_combout\,
	combout => \FreqSig[7]~20_combout\);

-- Location: LCCOMB_X86_Y34_N10
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (counter(1) & (((counter(2))) # (!counter(0)))) # (!counter(1) & (counter(3) & ((counter(0)) # (counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X86_Y34_N22
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (counter(1) & (counter(2) $ (((counter(0)) # (counter(3)))))) # (!counter(1) & (!counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X86_Y34_N14
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (counter(1) & ((counter(3) & ((!counter(2)))) # (!counter(3) & (!counter(0))))) # (!counter(1) & (counter(2) & (counter(0) $ (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X86_Y34_N24
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (counter(3)) # ((counter(2) & ((!counter(0)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X86_Y34_N20
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (counter(4) & ((counter(5)) # ((!\Mux9~4_combout\)))) # (!counter(4) & (!counter(5) & (!\Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => \Mux9~5_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X86_Y34_N4
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (counter(5) & ((\Mux9~6_combout\ & ((\Mux9~7_combout\))) # (!\Mux9~6_combout\ & (\Mux9~3_combout\)))) # (!counter(5) & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => counter(5),
	datac => \Mux9~7_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X86_Y34_N30
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (counter(1) & ((counter(3) $ (!counter(4))))) # (!counter(1) & ((counter(4) & (!counter(0))) # (!counter(4) & ((counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X88_Y34_N28
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (counter(3)) # ((counter(4)) # (counter(1) $ (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X86_Y34_N6
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (counter(3) & (((!counter(4))))) # (!counter(3) & ((counter(1) & ((counter(4)))) # (!counter(1) & (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X86_Y34_N12
\FreqSig[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[6]~21_combout\ = (!counter(2) & ((counter(5) & (!\Mux9~1_combout\)) # (!counter(5) & ((!\Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux9~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \FreqSig[6]~21_combout\);

-- Location: LCCOMB_X86_Y34_N8
\FreqSig[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[6]~22_combout\ = (\FreqSig[6]~21_combout\) # ((counter(2) & (!counter(5) & \Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux9~2_combout\,
	datad => \FreqSig[6]~21_combout\,
	combout => \FreqSig[6]~22_combout\);

-- Location: LCCOMB_X86_Y34_N26
\FreqSig[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[6]~23_combout\ = ((counter(6) & ((\FreqSig[6]~22_combout\))) # (!counter(6) & (\Mux9~8_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \Mux9~8_combout\,
	datac => \FreqSig[6]~22_combout\,
	datad => \OBJ1|obj10|debounced~q\,
	combout => \FreqSig[6]~23_combout\);

-- Location: LCCOMB_X89_Y36_N6
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (counter(4) & ((counter(1) $ (counter(3))))) # (!counter(4) & (!counter(0) & ((counter(1)) # (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X89_Y36_N26
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (counter(0) & (counter(4) & ((!counter(3))))) # (!counter(0) & (((counter(1) & counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X89_Y36_N22
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (counter(0) & ((counter(4) & (counter(1))) # (!counter(4) & ((counter(3)))))) # (!counter(0) & ((counter(4) & ((counter(3)))) # (!counter(4) & (counter(1) & !counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X89_Y36_N12
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (counter(4) & ((counter(3) & (counter(0))) # (!counter(3) & ((counter(1)))))) # (!counter(4) & (!counter(0) & (counter(1) $ (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X89_Y36_N20
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (counter(2) & ((counter(5)) # ((\Mux10~3_combout\)))) # (!counter(2) & (!counter(5) & (\Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux10~4_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X89_Y36_N8
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (counter(5) & ((\Mux10~5_combout\ & (\Mux10~6_combout\)) # (!\Mux10~5_combout\ & ((!\Mux10~2_combout\))))) # (!counter(5) & (((\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => counter(5),
	datac => \Mux10~2_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X88_Y36_N16
\FreqSig[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[5]~25_combout\ = (counter(5) & (!counter(0) & \Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(0),
	datad => \Mux0~3_combout\,
	combout => \FreqSig[5]~25_combout\);

-- Location: LCCOMB_X89_Y36_N0
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (counter(2) & (!counter(1) & ((counter(4)) # (!counter(3))))) # (!counter(2) & (counter(4) & ((counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X88_Y34_N26
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (counter(4) & (counter(3) $ ((!counter(1))))) # (!counter(4) & (counter(2) & (counter(3) $ (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(4),
	datad => counter(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X89_Y36_N10
\FreqSig[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[5]~24_combout\ = (!counter(5) & ((counter(0) & (!\Mux10~1_combout\)) # (!counter(0) & ((\Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux10~1_combout\,
	datac => counter(0),
	datad => \Mux10~0_combout\,
	combout => \FreqSig[5]~24_combout\);

-- Location: LCCOMB_X89_Y36_N28
\FreqSig[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[5]~26_combout\ = (counter(6) & ((\FreqSig[5]~24_combout\) # ((!counter(1) & \FreqSig[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(1),
	datac => \FreqSig[5]~25_combout\,
	datad => \FreqSig[5]~24_combout\,
	combout => \FreqSig[5]~26_combout\);

-- Location: LCCOMB_X89_Y36_N2
\FreqSig[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[5]~27_combout\ = ((\FreqSig[5]~26_combout\) # ((!counter(6) & \Mux10~7_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \Mux10~7_combout\,
	datad => \FreqSig[5]~26_combout\,
	combout => \FreqSig[5]~27_combout\);

-- Location: LCCOMB_X88_Y36_N8
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (counter(0) & (counter(4) $ (counter(3) $ (counter(2))))) # (!counter(0) & (counter(4) & ((!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X88_Y36_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (counter(3) & (((counter(0)) # (!counter(2))) # (!counter(4)))) # (!counter(3) & ((counter(2)) # (counter(4) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(2),
	datad => counter(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X88_Y36_N30
\FreqSig[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[4]~28_combout\ = (!counter(5) & ((counter(1) & (!\Mux11~1_combout\)) # (!counter(1) & ((!\Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(1),
	datac => \Mux11~1_combout\,
	datad => \Mux11~0_combout\,
	combout => \FreqSig[4]~28_combout\);

-- Location: LCCOMB_X88_Y36_N28
\FreqSig[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[4]~29_combout\ = (counter(6) & ((\FreqSig[4]~28_combout\) # ((counter(1) & \FreqSig[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(1),
	datac => \FreqSig[4]~28_combout\,
	datad => \FreqSig[5]~25_combout\,
	combout => \FreqSig[4]~29_combout\);

-- Location: LCCOMB_X89_Y36_N24
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (counter(4) & ((counter(1) $ (counter(3))))) # (!counter(4) & (counter(0) & ((counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X89_Y36_N4
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (counter(4) & ((counter(0) & (counter(1) & counter(3))) # (!counter(0) & ((counter(1)) # (counter(3)))))) # (!counter(4) & (counter(0) $ (counter(1) $ (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X89_Y36_N30
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (counter(0) & (counter(4) $ (counter(1) $ (counter(3))))) # (!counter(0) & ((counter(4) & (!counter(1))) # (!counter(4) & ((counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X89_Y36_N16
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (counter(1) & (((!counter(4) & !counter(3))))) # (!counter(1) & (!counter(0) & ((counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X89_Y36_N18
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (counter(2) & ((counter(5)) # ((\Mux11~3_combout\)))) # (!counter(2) & (!counter(5) & ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux11~3_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X89_Y36_N14
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (counter(5) & ((\Mux11~5_combout\ & (\Mux11~6_combout\)) # (!\Mux11~5_combout\ & ((!\Mux11~2_combout\))))) # (!counter(5) & (((\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux11~6_combout\,
	datac => \Mux11~2_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X90_Y34_N0
\FreqSig[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[4]~30_combout\ = ((\FreqSig[4]~29_combout\) # ((!counter(6) & \Mux11~7_combout\))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \FreqSig[4]~29_combout\,
	datad => \Mux11~7_combout\,
	combout => \FreqSig[4]~30_combout\);

-- Location: LCCOMB_X89_Y35_N26
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (counter(2) & ((counter(4) & ((counter(1)) # (!counter(0)))) # (!counter(4) & ((counter(0)))))) # (!counter(2) & (!counter(4) & (!counter(1) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(1),
	datad => counter(0),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X89_Y35_N14
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (counter(4)) # ((counter(2)) # ((counter(1) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(4),
	datac => counter(2),
	datad => counter(0),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X89_Y35_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (counter(1) & (((!counter(4)) # (!counter(2))) # (!counter(0)))) # (!counter(1) & (counter(4) & (counter(0) $ (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => counter(4),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X89_Y35_N12
\FreqSig[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[3]~31_combout\ = (!counter(3) & ((counter(5) & (!\Mux12~1_combout\)) # (!counter(5) & ((\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(5),
	datac => \Mux12~1_combout\,
	datad => \Mux12~0_combout\,
	combout => \FreqSig[3]~31_combout\);

-- Location: LCCOMB_X89_Y35_N20
\FreqSig[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[3]~32_combout\ = (\FreqSig[3]~31_combout\) # ((!counter(5) & (counter(3) & \Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(3),
	datac => \Mux12~2_combout\,
	datad => \FreqSig[3]~31_combout\,
	combout => \FreqSig[3]~32_combout\);

-- Location: LCCOMB_X89_Y33_N16
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (counter(3) & (counter(1) $ (((counter(0)) # (counter(4)))))) # (!counter(3) & (counter(0) $ (((counter(4)) # (!counter(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X89_Y33_N8
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (counter(3) & (counter(0) & ((counter(1)) # (counter(4))))) # (!counter(3) & (counter(4) & (counter(0) $ (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X89_Y33_N26
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (counter(1) & ((counter(4)) # (counter(3) $ (counter(0))))) # (!counter(1) & (counter(4) $ (((!counter(3) & !counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(1),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X89_Y33_N28
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (counter(1) & (counter(0) & (!counter(3) & counter(4)))) # (!counter(1) & (!counter(0) & (counter(3) $ (!counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X89_Y33_N10
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (counter(5) & (counter(2))) # (!counter(5) & ((counter(2) & (\Mux12~4_combout\)) # (!counter(2) & ((!\Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(2),
	datac => \Mux12~4_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X89_Y33_N6
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (counter(5) & ((\Mux12~6_combout\ & (\Mux12~7_combout\)) # (!\Mux12~6_combout\ & ((!\Mux12~3_combout\))))) # (!counter(5) & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux12~7_combout\,
	datac => \Mux12~3_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X90_Y34_N6
\FreqSig[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[3]~33_combout\ = ((counter(6) & (\FreqSig[3]~32_combout\)) # (!counter(6) & ((\Mux12~8_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \FreqSig[3]~32_combout\,
	datad => \Mux12~8_combout\,
	combout => \FreqSig[3]~33_combout\);

-- Location: LCCOMB_X89_Y32_N28
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (counter(1) & (counter(4) $ (((counter(0)) # (!counter(2)))))) # (!counter(1) & (((counter(2))) # (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X89_Y32_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (counter(0) & (((counter(1))))) # (!counter(0) & ((counter(1) & (!counter(2))) # (!counter(1) & ((counter(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(1),
	datad => counter(4),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X89_Y32_N10
\FreqSig[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[2]~34_combout\ = (!counter(3) & ((counter(5) & ((!\Mux1~1_combout\))) # (!counter(5) & (!\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(3),
	datac => \Mux13~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \FreqSig[2]~34_combout\);

-- Location: LCCOMB_X89_Y32_N2
\FreqSig[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[2]~35_combout\ = (\FreqSig[2]~34_combout\) # ((!counter(5) & (!\Mux13~1_combout\ & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Mux13~1_combout\,
	datac => counter(3),
	datad => \FreqSig[2]~34_combout\,
	combout => \FreqSig[2]~35_combout\);

-- Location: LCCOMB_X89_Y32_N12
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (counter(3) & ((counter(4) & (!counter(0) & !counter(1))) # (!counter(4) & (counter(0) $ (counter(1)))))) # (!counter(3) & (((counter(0) & counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(0),
	datad => counter(1),
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X89_Y32_N8
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (counter(3) & ((counter(1) & ((!counter(4)))) # (!counter(1) & (!counter(0) & counter(4))))) # (!counter(3) & (counter(1) & (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X89_Y32_N22
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (counter(0) & (counter(1) & (!counter(3)))) # (!counter(0) & ((counter(3) & (!counter(1))) # (!counter(3) & ((!counter(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X89_Y32_N0
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (counter(0) & (counter(1) & ((counter(3)) # (!counter(4))))) # (!counter(0) & (counter(3) & (counter(4) $ (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => counter(3),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X89_Y32_N6
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (counter(2) & ((counter(5)) # ((!\Mux13~3_combout\)))) # (!counter(2) & (!counter(5) & ((!\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(5),
	datac => \Mux13~3_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X89_Y32_N18
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (counter(5) & ((\Mux13~5_combout\ & ((\Mux13~6_combout\))) # (!\Mux13~5_combout\ & (!\Mux13~2_combout\)))) # (!counter(5) & (((\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => counter(5),
	datac => \Mux13~6_combout\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X90_Y34_N8
\FreqSig[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[2]~36_combout\ = ((counter(6) & (\FreqSig[2]~35_combout\)) # (!counter(6) & ((\Mux13~7_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(6),
	datac => \FreqSig[2]~35_combout\,
	datad => \Mux13~7_combout\,
	combout => \FreqSig[2]~36_combout\);

-- Location: LCCOMB_X88_Y32_N4
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (counter(0) & ((counter(3) & (!counter(1))) # (!counter(3) & ((counter(1)) # (counter(2)))))) # (!counter(0) & (((counter(1)) # (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(1),
	datad => counter(2),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X88_Y32_N22
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!counter(2) & (!counter(3) & ((counter(1)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(3),
	datad => counter(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X88_Y32_N24
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (counter(2) & ((counter(1) & (counter(3))) # (!counter(1) & ((counter(0)))))) # (!counter(2) & (counter(3) $ (counter(0) $ (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X88_Y32_N10
\FreqSig[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[1]~37_combout\ = (!counter(4) & ((counter(6) & (\Mux14~0_combout\)) # (!counter(6) & ((\Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \FreqSig[1]~37_combout\);

-- Location: LCCOMB_X88_Y32_N14
\FreqSig[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[1]~38_combout\ = (\FreqSig[1]~37_combout\) # ((counter(4) & (!counter(6) & !\Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => \Mux14~2_combout\,
	datad => \FreqSig[1]~37_combout\,
	combout => \FreqSig[1]~38_combout\);

-- Location: LCCOMB_X88_Y32_N16
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (counter(6) & ((counter(3) $ (!counter(2))))) # (!counter(6) & ((counter(0) & ((counter(3)) # (counter(2)))) # (!counter(0) & (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X88_Y32_N8
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (counter(0) & (!counter(6) & (counter(3)))) # (!counter(0) & ((counter(2) & ((counter(3)))) # (!counter(2) & (counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X88_Y32_N30
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (counter(2) & ((counter(0) & (counter(6))) # (!counter(0) & ((counter(3)))))) # (!counter(2) & (counter(3) & (counter(6) $ (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(6),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X88_Y32_N12
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (counter(2) & (counter(0) $ (((counter(6)) # (counter(3)))))) # (!counter(2) & ((counter(6) & ((counter(0)) # (!counter(3)))) # (!counter(6) & (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(6),
	datac => counter(3),
	datad => counter(0),
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X88_Y32_N6
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (counter(4) & (counter(1))) # (!counter(4) & ((counter(1) & (\Mux14~4_combout\)) # (!counter(1) & ((\Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(1),
	datac => \Mux14~4_combout\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X88_Y32_N18
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (counter(4) & ((\Mux14~6_combout\ & (\Mux14~7_combout\)) # (!\Mux14~6_combout\ & ((!\Mux14~3_combout\))))) # (!counter(4) & (((\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Mux14~7_combout\,
	datac => \Mux14~3_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X90_Y34_N2
\FreqSig[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[1]~39_combout\ = ((counter(5) & (\FreqSig[1]~38_combout\)) # (!counter(5) & ((\Mux14~8_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj10|debounced~q\,
	datab => counter(5),
	datac => \FreqSig[1]~38_combout\,
	datad => \Mux14~8_combout\,
	combout => \FreqSig[1]~39_combout\);

-- Location: LCCOMB_X88_Y34_N12
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (counter(3) & (!counter(1))) # (!counter(3) & ((counter(1) & ((!counter(4)) # (!counter(0)))) # (!counter(1) & (!counter(0) & !counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(4),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X88_Y34_N14
\FreqSig[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[0]~40_combout\ = (!counter(2) & ((counter(6) & (\Mux5~0_combout\)) # (!counter(6) & ((\Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(2),
	datac => \Mux5~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \FreqSig[0]~40_combout\);

-- Location: LCCOMB_X88_Y34_N20
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!counter(1) & ((counter(0) & (!counter(3) & counter(4))) # (!counter(0) & ((counter(4)) # (!counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(4),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X88_Y34_N30
\FreqSig[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[0]~41_combout\ = (\FreqSig[0]~40_combout\) # ((!counter(6) & (counter(2) & \Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(2),
	datac => \FreqSig[0]~40_combout\,
	datad => \Mux15~1_combout\,
	combout => \FreqSig[0]~41_combout\);

-- Location: LCCOMB_X88_Y34_N16
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!counter(0) & ((counter(1)) # ((counter(2) & !counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	datad => counter(4),
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X88_Y34_N24
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (counter(2) & ((counter(0)) # ((counter(4))))) # (!counter(2) & (((counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	datad => counter(4),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X88_Y34_N8
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (counter(0) & ((counter(1) & (!counter(4))) # (!counter(1) & ((counter(2)))))) # (!counter(0) & ((counter(4) & ((counter(1)) # (counter(2)))) # (!counter(4) & ((!counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(2),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X88_Y34_N2
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (counter(1) & (((counter(4)) # (!counter(2))) # (!counter(0)))) # (!counter(1) & (counter(0) $ (((!counter(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(4),
	datad => counter(2),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X88_Y34_N18
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (counter(6) & (counter(3))) # (!counter(6) & ((counter(3) & ((!\Mux15~3_combout\))) # (!counter(3) & (!\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(3),
	datac => \Mux15~4_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X88_Y34_N10
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (counter(6) & ((\Mux15~5_combout\ & (\Mux15~6_combout\)) # (!\Mux15~5_combout\ & ((\Mux15~2_combout\))))) # (!counter(6) & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \Mux15~6_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X90_Y34_N4
\FreqSig[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqSig[0]~42_combout\ = ((counter(5) & (\FreqSig[0]~41_combout\)) # (!counter(5) & ((\Mux15~7_combout\)))) # (!\OBJ1|obj10|debounced~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \FreqSig[0]~41_combout\,
	datac => \Mux15~7_combout\,
	datad => \OBJ1|obj10|debounced~q\,
	combout => \FreqSig[0]~42_combout\);

-- Location: LCCOMB_X90_Y34_N10
\OBJ4|reg[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[0]~22_combout\ = (\OBJ4|reg\(0) & (\FreqSig[0]~42_combout\ $ (VCC))) # (!\OBJ4|reg\(0) & (\FreqSig[0]~42_combout\ & VCC))
-- \OBJ4|reg[0]~23\ = CARRY((\OBJ4|reg\(0) & \FreqSig[0]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(0),
	datab => \FreqSig[0]~42_combout\,
	datad => VCC,
	combout => \OBJ4|reg[0]~22_combout\,
	cout => \OBJ4|reg[0]~23\);

-- Location: FF_X90_Y34_N11
\OBJ4|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[0]~22_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(0));

-- Location: LCCOMB_X90_Y34_N12
\OBJ4|reg[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[1]~24_combout\ = (\OBJ4|reg\(1) & ((\FreqSig[1]~39_combout\ & (\OBJ4|reg[0]~23\ & VCC)) # (!\FreqSig[1]~39_combout\ & (!\OBJ4|reg[0]~23\)))) # (!\OBJ4|reg\(1) & ((\FreqSig[1]~39_combout\ & (!\OBJ4|reg[0]~23\)) # (!\FreqSig[1]~39_combout\ & 
-- ((\OBJ4|reg[0]~23\) # (GND)))))
-- \OBJ4|reg[1]~25\ = CARRY((\OBJ4|reg\(1) & (!\FreqSig[1]~39_combout\ & !\OBJ4|reg[0]~23\)) # (!\OBJ4|reg\(1) & ((!\OBJ4|reg[0]~23\) # (!\FreqSig[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(1),
	datab => \FreqSig[1]~39_combout\,
	datad => VCC,
	cin => \OBJ4|reg[0]~23\,
	combout => \OBJ4|reg[1]~24_combout\,
	cout => \OBJ4|reg[1]~25\);

-- Location: FF_X90_Y34_N13
\OBJ4|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[1]~24_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(1));

-- Location: LCCOMB_X90_Y34_N14
\OBJ4|reg[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[2]~26_combout\ = ((\FreqSig[2]~36_combout\ $ (\OBJ4|reg\(2) $ (!\OBJ4|reg[1]~25\)))) # (GND)
-- \OBJ4|reg[2]~27\ = CARRY((\FreqSig[2]~36_combout\ & ((\OBJ4|reg\(2)) # (!\OBJ4|reg[1]~25\))) # (!\FreqSig[2]~36_combout\ & (\OBJ4|reg\(2) & !\OBJ4|reg[1]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[2]~36_combout\,
	datab => \OBJ4|reg\(2),
	datad => VCC,
	cin => \OBJ4|reg[1]~25\,
	combout => \OBJ4|reg[2]~26_combout\,
	cout => \OBJ4|reg[2]~27\);

-- Location: FF_X90_Y34_N15
\OBJ4|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[2]~26_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(2));

-- Location: LCCOMB_X90_Y34_N16
\OBJ4|reg[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[3]~28_combout\ = (\FreqSig[3]~33_combout\ & ((\OBJ4|reg\(3) & (\OBJ4|reg[2]~27\ & VCC)) # (!\OBJ4|reg\(3) & (!\OBJ4|reg[2]~27\)))) # (!\FreqSig[3]~33_combout\ & ((\OBJ4|reg\(3) & (!\OBJ4|reg[2]~27\)) # (!\OBJ4|reg\(3) & ((\OBJ4|reg[2]~27\) # 
-- (GND)))))
-- \OBJ4|reg[3]~29\ = CARRY((\FreqSig[3]~33_combout\ & (!\OBJ4|reg\(3) & !\OBJ4|reg[2]~27\)) # (!\FreqSig[3]~33_combout\ & ((!\OBJ4|reg[2]~27\) # (!\OBJ4|reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[3]~33_combout\,
	datab => \OBJ4|reg\(3),
	datad => VCC,
	cin => \OBJ4|reg[2]~27\,
	combout => \OBJ4|reg[3]~28_combout\,
	cout => \OBJ4|reg[3]~29\);

-- Location: FF_X90_Y34_N17
\OBJ4|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[3]~28_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(3));

-- Location: LCCOMB_X90_Y34_N18
\OBJ4|reg[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[4]~30_combout\ = ((\OBJ4|reg\(4) $ (\FreqSig[4]~30_combout\ $ (!\OBJ4|reg[3]~29\)))) # (GND)
-- \OBJ4|reg[4]~31\ = CARRY((\OBJ4|reg\(4) & ((\FreqSig[4]~30_combout\) # (!\OBJ4|reg[3]~29\))) # (!\OBJ4|reg\(4) & (\FreqSig[4]~30_combout\ & !\OBJ4|reg[3]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(4),
	datab => \FreqSig[4]~30_combout\,
	datad => VCC,
	cin => \OBJ4|reg[3]~29\,
	combout => \OBJ4|reg[4]~30_combout\,
	cout => \OBJ4|reg[4]~31\);

-- Location: FF_X90_Y34_N19
\OBJ4|reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[4]~30_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(4));

-- Location: LCCOMB_X90_Y34_N20
\OBJ4|reg[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[5]~32_combout\ = (\FreqSig[5]~27_combout\ & ((\OBJ4|reg\(5) & (\OBJ4|reg[4]~31\ & VCC)) # (!\OBJ4|reg\(5) & (!\OBJ4|reg[4]~31\)))) # (!\FreqSig[5]~27_combout\ & ((\OBJ4|reg\(5) & (!\OBJ4|reg[4]~31\)) # (!\OBJ4|reg\(5) & ((\OBJ4|reg[4]~31\) # 
-- (GND)))))
-- \OBJ4|reg[5]~33\ = CARRY((\FreqSig[5]~27_combout\ & (!\OBJ4|reg\(5) & !\OBJ4|reg[4]~31\)) # (!\FreqSig[5]~27_combout\ & ((!\OBJ4|reg[4]~31\) # (!\OBJ4|reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[5]~27_combout\,
	datab => \OBJ4|reg\(5),
	datad => VCC,
	cin => \OBJ4|reg[4]~31\,
	combout => \OBJ4|reg[5]~32_combout\,
	cout => \OBJ4|reg[5]~33\);

-- Location: FF_X90_Y34_N21
\OBJ4|reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[5]~32_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(5));

-- Location: LCCOMB_X90_Y34_N22
\OBJ4|reg[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[6]~34_combout\ = ((\FreqSig[6]~23_combout\ $ (\OBJ4|reg\(6) $ (!\OBJ4|reg[5]~33\)))) # (GND)
-- \OBJ4|reg[6]~35\ = CARRY((\FreqSig[6]~23_combout\ & ((\OBJ4|reg\(6)) # (!\OBJ4|reg[5]~33\))) # (!\FreqSig[6]~23_combout\ & (\OBJ4|reg\(6) & !\OBJ4|reg[5]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[6]~23_combout\,
	datab => \OBJ4|reg\(6),
	datad => VCC,
	cin => \OBJ4|reg[5]~33\,
	combout => \OBJ4|reg[6]~34_combout\,
	cout => \OBJ4|reg[6]~35\);

-- Location: FF_X90_Y34_N23
\OBJ4|reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[6]~34_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(6));

-- Location: LCCOMB_X90_Y34_N24
\OBJ4|reg[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[7]~36_combout\ = (\FreqSig[7]~20_combout\ & ((\OBJ4|reg\(7) & (\OBJ4|reg[6]~35\ & VCC)) # (!\OBJ4|reg\(7) & (!\OBJ4|reg[6]~35\)))) # (!\FreqSig[7]~20_combout\ & ((\OBJ4|reg\(7) & (!\OBJ4|reg[6]~35\)) # (!\OBJ4|reg\(7) & ((\OBJ4|reg[6]~35\) # 
-- (GND)))))
-- \OBJ4|reg[7]~37\ = CARRY((\FreqSig[7]~20_combout\ & (!\OBJ4|reg\(7) & !\OBJ4|reg[6]~35\)) # (!\FreqSig[7]~20_combout\ & ((!\OBJ4|reg[6]~35\) # (!\OBJ4|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[7]~20_combout\,
	datab => \OBJ4|reg\(7),
	datad => VCC,
	cin => \OBJ4|reg[6]~35\,
	combout => \OBJ4|reg[7]~36_combout\,
	cout => \OBJ4|reg[7]~37\);

-- Location: FF_X90_Y34_N25
\OBJ4|reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[7]~36_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(7));

-- Location: LCCOMB_X90_Y34_N26
\OBJ4|reg[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[8]~38_combout\ = ((\OBJ4|reg\(8) $ (\FreqSig[8]~19_combout\ $ (!\OBJ4|reg[7]~37\)))) # (GND)
-- \OBJ4|reg[8]~39\ = CARRY((\OBJ4|reg\(8) & ((\FreqSig[8]~19_combout\) # (!\OBJ4|reg[7]~37\))) # (!\OBJ4|reg\(8) & (\FreqSig[8]~19_combout\ & !\OBJ4|reg[7]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(8),
	datab => \FreqSig[8]~19_combout\,
	datad => VCC,
	cin => \OBJ4|reg[7]~37\,
	combout => \OBJ4|reg[8]~38_combout\,
	cout => \OBJ4|reg[8]~39\);

-- Location: FF_X90_Y34_N27
\OBJ4|reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[8]~38_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(8));

-- Location: LCCOMB_X90_Y34_N28
\OBJ4|reg[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[9]~40_combout\ = (\FreqSig[9]~16_combout\ & ((\OBJ4|reg\(9) & (\OBJ4|reg[8]~39\ & VCC)) # (!\OBJ4|reg\(9) & (!\OBJ4|reg[8]~39\)))) # (!\FreqSig[9]~16_combout\ & ((\OBJ4|reg\(9) & (!\OBJ4|reg[8]~39\)) # (!\OBJ4|reg\(9) & ((\OBJ4|reg[8]~39\) # 
-- (GND)))))
-- \OBJ4|reg[9]~41\ = CARRY((\FreqSig[9]~16_combout\ & (!\OBJ4|reg\(9) & !\OBJ4|reg[8]~39\)) # (!\FreqSig[9]~16_combout\ & ((!\OBJ4|reg[8]~39\) # (!\OBJ4|reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[9]~16_combout\,
	datab => \OBJ4|reg\(9),
	datad => VCC,
	cin => \OBJ4|reg[8]~39\,
	combout => \OBJ4|reg[9]~40_combout\,
	cout => \OBJ4|reg[9]~41\);

-- Location: FF_X90_Y34_N29
\OBJ4|reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[9]~40_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(9));

-- Location: LCCOMB_X90_Y34_N30
\OBJ4|reg[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[10]~42_combout\ = ((\OBJ4|reg\(10) $ (\FreqSig[10]~14_combout\ $ (!\OBJ4|reg[9]~41\)))) # (GND)
-- \OBJ4|reg[10]~43\ = CARRY((\OBJ4|reg\(10) & ((\FreqSig[10]~14_combout\) # (!\OBJ4|reg[9]~41\))) # (!\OBJ4|reg\(10) & (\FreqSig[10]~14_combout\ & !\OBJ4|reg[9]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(10),
	datab => \FreqSig[10]~14_combout\,
	datad => VCC,
	cin => \OBJ4|reg[9]~41\,
	combout => \OBJ4|reg[10]~42_combout\,
	cout => \OBJ4|reg[10]~43\);

-- Location: FF_X90_Y34_N31
\OBJ4|reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[10]~42_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(10));

-- Location: LCCOMB_X90_Y33_N0
\OBJ4|reg[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[11]~44_combout\ = (\OBJ4|reg\(11) & ((\FreqSig[11]~11_combout\ & (\OBJ4|reg[10]~43\ & VCC)) # (!\FreqSig[11]~11_combout\ & (!\OBJ4|reg[10]~43\)))) # (!\OBJ4|reg\(11) & ((\FreqSig[11]~11_combout\ & (!\OBJ4|reg[10]~43\)) # 
-- (!\FreqSig[11]~11_combout\ & ((\OBJ4|reg[10]~43\) # (GND)))))
-- \OBJ4|reg[11]~45\ = CARRY((\OBJ4|reg\(11) & (!\FreqSig[11]~11_combout\ & !\OBJ4|reg[10]~43\)) # (!\OBJ4|reg\(11) & ((!\OBJ4|reg[10]~43\) # (!\FreqSig[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(11),
	datab => \FreqSig[11]~11_combout\,
	datad => VCC,
	cin => \OBJ4|reg[10]~43\,
	combout => \OBJ4|reg[11]~44_combout\,
	cout => \OBJ4|reg[11]~45\);

-- Location: FF_X90_Y33_N1
\OBJ4|reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[11]~44_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(11));

-- Location: LCCOMB_X90_Y33_N2
\OBJ4|reg[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[12]~46_combout\ = ((\FreqSig[12]~9_combout\ $ (\OBJ4|reg\(12) $ (!\OBJ4|reg[11]~45\)))) # (GND)
-- \OBJ4|reg[12]~47\ = CARRY((\FreqSig[12]~9_combout\ & ((\OBJ4|reg\(12)) # (!\OBJ4|reg[11]~45\))) # (!\FreqSig[12]~9_combout\ & (\OBJ4|reg\(12) & !\OBJ4|reg[11]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[12]~9_combout\,
	datab => \OBJ4|reg\(12),
	datad => VCC,
	cin => \OBJ4|reg[11]~45\,
	combout => \OBJ4|reg[12]~46_combout\,
	cout => \OBJ4|reg[12]~47\);

-- Location: FF_X90_Y33_N3
\OBJ4|reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[12]~46_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(12));

-- Location: LCCOMB_X90_Y33_N4
\OBJ4|reg[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[13]~48_combout\ = (\FreqSig[13]~6_combout\ & ((\OBJ4|reg\(13) & (\OBJ4|reg[12]~47\ & VCC)) # (!\OBJ4|reg\(13) & (!\OBJ4|reg[12]~47\)))) # (!\FreqSig[13]~6_combout\ & ((\OBJ4|reg\(13) & (!\OBJ4|reg[12]~47\)) # (!\OBJ4|reg\(13) & 
-- ((\OBJ4|reg[12]~47\) # (GND)))))
-- \OBJ4|reg[13]~49\ = CARRY((\FreqSig[13]~6_combout\ & (!\OBJ4|reg\(13) & !\OBJ4|reg[12]~47\)) # (!\FreqSig[13]~6_combout\ & ((!\OBJ4|reg[12]~47\) # (!\OBJ4|reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[13]~6_combout\,
	datab => \OBJ4|reg\(13),
	datad => VCC,
	cin => \OBJ4|reg[12]~47\,
	combout => \OBJ4|reg[13]~48_combout\,
	cout => \OBJ4|reg[13]~49\);

-- Location: FF_X90_Y33_N5
\OBJ4|reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[13]~48_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(13));

-- Location: LCCOMB_X90_Y33_N6
\OBJ4|reg[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[14]~50_combout\ = ((\FreqSig[14]~3_combout\ $ (\OBJ4|reg\(14) $ (!\OBJ4|reg[13]~49\)))) # (GND)
-- \OBJ4|reg[14]~51\ = CARRY((\FreqSig[14]~3_combout\ & ((\OBJ4|reg\(14)) # (!\OBJ4|reg[13]~49\))) # (!\FreqSig[14]~3_combout\ & (\OBJ4|reg\(14) & !\OBJ4|reg[13]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[14]~3_combout\,
	datab => \OBJ4|reg\(14),
	datad => VCC,
	cin => \OBJ4|reg[13]~49\,
	combout => \OBJ4|reg[14]~50_combout\,
	cout => \OBJ4|reg[14]~51\);

-- Location: FF_X90_Y33_N7
\OBJ4|reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[14]~50_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(14));

-- Location: LCCOMB_X90_Y33_N8
\OBJ4|reg[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[15]~52_combout\ = (\FreqSig[15]~0_combout\ & ((\OBJ4|reg\(15) & (\OBJ4|reg[14]~51\ & VCC)) # (!\OBJ4|reg\(15) & (!\OBJ4|reg[14]~51\)))) # (!\FreqSig[15]~0_combout\ & ((\OBJ4|reg\(15) & (!\OBJ4|reg[14]~51\)) # (!\OBJ4|reg\(15) & 
-- ((\OBJ4|reg[14]~51\) # (GND)))))
-- \OBJ4|reg[15]~53\ = CARRY((\FreqSig[15]~0_combout\ & (!\OBJ4|reg\(15) & !\OBJ4|reg[14]~51\)) # (!\FreqSig[15]~0_combout\ & ((!\OBJ4|reg[14]~51\) # (!\OBJ4|reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqSig[15]~0_combout\,
	datab => \OBJ4|reg\(15),
	datad => VCC,
	cin => \OBJ4|reg[14]~51\,
	combout => \OBJ4|reg[15]~52_combout\,
	cout => \OBJ4|reg[15]~53\);

-- Location: FF_X90_Y33_N9
\OBJ4|reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[15]~52_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(15));

-- Location: LCCOMB_X90_Y33_N10
\OBJ4|reg[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[16]~54_combout\ = (\OBJ4|reg\(16) & (\OBJ4|reg[15]~53\ $ (GND))) # (!\OBJ4|reg\(16) & (!\OBJ4|reg[15]~53\ & VCC))
-- \OBJ4|reg[16]~55\ = CARRY((\OBJ4|reg\(16) & !\OBJ4|reg[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(16),
	datad => VCC,
	cin => \OBJ4|reg[15]~53\,
	combout => \OBJ4|reg[16]~54_combout\,
	cout => \OBJ4|reg[16]~55\);

-- Location: FF_X90_Y33_N11
\OBJ4|reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[16]~54_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(16));

-- Location: LCCOMB_X90_Y33_N12
\OBJ4|reg[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[17]~56_combout\ = (\OBJ4|reg\(17) & (!\OBJ4|reg[16]~55\)) # (!\OBJ4|reg\(17) & ((\OBJ4|reg[16]~55\) # (GND)))
-- \OBJ4|reg[17]~57\ = CARRY((!\OBJ4|reg[16]~55\) # (!\OBJ4|reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(17),
	datad => VCC,
	cin => \OBJ4|reg[16]~55\,
	combout => \OBJ4|reg[17]~56_combout\,
	cout => \OBJ4|reg[17]~57\);

-- Location: FF_X90_Y33_N13
\OBJ4|reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[17]~56_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(17));

-- Location: LCCOMB_X90_Y33_N14
\OBJ4|reg[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[18]~58_combout\ = (\OBJ4|reg\(18) & (\OBJ4|reg[17]~57\ $ (GND))) # (!\OBJ4|reg\(18) & (!\OBJ4|reg[17]~57\ & VCC))
-- \OBJ4|reg[18]~59\ = CARRY((\OBJ4|reg\(18) & !\OBJ4|reg[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ4|reg\(18),
	datad => VCC,
	cin => \OBJ4|reg[17]~57\,
	combout => \OBJ4|reg[18]~58_combout\,
	cout => \OBJ4|reg[18]~59\);

-- Location: FF_X90_Y33_N15
\OBJ4|reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[18]~58_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(18));

-- Location: LCCOMB_X90_Y33_N16
\OBJ4|reg[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[19]~60_combout\ = (\OBJ4|reg\(19) & (!\OBJ4|reg[18]~59\)) # (!\OBJ4|reg\(19) & ((\OBJ4|reg[18]~59\) # (GND)))
-- \OBJ4|reg[19]~61\ = CARRY((!\OBJ4|reg[18]~59\) # (!\OBJ4|reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OBJ4|reg\(19),
	datad => VCC,
	cin => \OBJ4|reg[18]~59\,
	combout => \OBJ4|reg[19]~60_combout\,
	cout => \OBJ4|reg[19]~61\);

-- Location: FF_X90_Y33_N17
\OBJ4|reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[19]~60_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(19));

-- Location: LCCOMB_X91_Y31_N26
\assm|ASSM|AO|RTxShiftReg[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[16]~16_combout\ = (\OBJ1|obj2|debounced~q\ & (\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ4|reg\(6) & \OBJ3|OBJ3|OBJ1|soundOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|debounced~q\,
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \OBJ4|reg\(6),
	datad => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	combout => \assm|ASSM|AO|RTxShiftReg[16]~16_combout\);

-- Location: FF_X91_Y31_N27
\assm|ASSM|AO|RTxShiftReg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(16));

-- Location: LCCOMB_X91_Y31_N0
\assm|ASSM|AO|RTxShiftReg[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[17]~15_combout\ = (\assm|ASSM|AO|RTxShiftReg\(16) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(7))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(16) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(16),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(7),
	combout => \assm|ASSM|AO|RTxShiftReg[17]~15_combout\);

-- Location: FF_X91_Y31_N1
\assm|ASSM|AO|RTxShiftReg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(17));

-- Location: LCCOMB_X91_Y31_N14
\assm|ASSM|AO|RTxShiftReg[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[18]~14_combout\ = (\assm|ASSM|AO|RTxShiftReg\(17) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(8))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(17) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(17),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(8),
	combout => \assm|ASSM|AO|RTxShiftReg[18]~14_combout\);

-- Location: FF_X91_Y31_N15
\assm|ASSM|AO|RTxShiftReg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(18));

-- Location: LCCOMB_X91_Y31_N8
\assm|ASSM|AO|RTxShiftReg[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[19]~13_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & ((\OBJ4|reg\(9))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(18)) # ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- \OBJ4|reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|AO|RTxShiftReg\(18),
	datad => \OBJ4|reg\(9),
	combout => \assm|ASSM|AO|RTxShiftReg[19]~13_combout\);

-- Location: FF_X91_Y31_N9
\assm|ASSM|AO|RTxShiftReg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(19));

-- Location: LCCOMB_X91_Y31_N30
\assm|ASSM|AO|RTxShiftReg[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[20]~12_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & (\OBJ4|reg\(10)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(19)) # ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- \OBJ4|reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(10),
	datad => \assm|ASSM|AO|RTxShiftReg\(19),
	combout => \assm|ASSM|AO|RTxShiftReg[20]~12_combout\);

-- Location: FF_X91_Y31_N31
\assm|ASSM|AO|RTxShiftReg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(20));

-- Location: LCCOMB_X91_Y31_N12
\assm|ASSM|AO|RTxShiftReg[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[21]~11_combout\ = (\assm|ASSM|AO|RTxShiftReg\(20) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(11))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(20) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ 
-- & ((\OBJ4|reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(20),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(11),
	combout => \assm|ASSM|AO|RTxShiftReg[21]~11_combout\);

-- Location: FF_X91_Y31_N13
\assm|ASSM|AO|RTxShiftReg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(21));

-- Location: LCCOMB_X91_Y31_N10
\assm|ASSM|AO|RTxShiftReg[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[22]~10_combout\ = (\assm|ASSM|AO|RTxShiftReg\(21) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(12))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(21) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ 
-- & ((\OBJ4|reg\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(21),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(12),
	combout => \assm|ASSM|AO|RTxShiftReg[22]~10_combout\);

-- Location: FF_X91_Y31_N11
\assm|ASSM|AO|RTxShiftReg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(22));

-- Location: LCCOMB_X91_Y31_N4
\assm|ASSM|AO|RTxShiftReg[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[23]~9_combout\ = (\assm|ASSM|AO|RTxShiftReg\(22) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(13))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(22) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(22),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(13),
	combout => \assm|ASSM|AO|RTxShiftReg[23]~9_combout\);

-- Location: FF_X91_Y31_N5
\assm|ASSM|AO|RTxShiftReg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(23));

-- Location: LCCOMB_X91_Y31_N22
\assm|ASSM|AO|RTxShiftReg[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[24]~8_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & ((\OBJ4|reg\(14))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(23)) # ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- \OBJ4|reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|AO|RTxShiftReg\(23),
	datad => \OBJ4|reg\(14),
	combout => \assm|ASSM|AO|RTxShiftReg[24]~8_combout\);

-- Location: FF_X91_Y31_N23
\assm|ASSM|AO|RTxShiftReg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(24));

-- Location: LCCOMB_X91_Y31_N28
\assm|ASSM|AO|RTxShiftReg[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[25]~7_combout\ = (\assm|ASSM|AO|RTxShiftReg\(24) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(15))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(24) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(24),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(15),
	combout => \assm|ASSM|AO|RTxShiftReg[25]~7_combout\);

-- Location: FF_X91_Y31_N29
\assm|ASSM|AO|RTxShiftReg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(25));

-- Location: LCCOMB_X91_Y31_N6
\assm|ASSM|AO|RTxShiftReg[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[26]~6_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (((\OBJ4|reg\(16) & \assm|ASSM|AO|RTxShiftReg[16]~0_combout\)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(25)) # ((\OBJ4|reg\(16) & 
-- \assm|ASSM|AO|RTxShiftReg[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg\(25),
	datac => \OBJ4|reg\(16),
	datad => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|RTxShiftReg[26]~6_combout\);

-- Location: FF_X91_Y31_N7
\assm|ASSM|AO|RTxShiftReg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(26));

-- Location: LCCOMB_X91_Y31_N24
\assm|ASSM|AO|RTxShiftReg[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[27]~5_combout\ = (\assm|ASSM|AO|RTxShiftReg\(26) & (((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & \OBJ4|reg\(17))) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(26) & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(26),
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(17),
	combout => \assm|ASSM|AO|RTxShiftReg[27]~5_combout\);

-- Location: FF_X91_Y31_N25
\assm|ASSM|AO|RTxShiftReg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(27));

-- Location: LCCOMB_X91_Y31_N2
\assm|ASSM|AO|RTxShiftReg[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[28]~4_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (((\OBJ4|reg\(18) & \assm|ASSM|AO|RTxShiftReg[16]~0_combout\)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(27)) # ((\OBJ4|reg\(18) & 
-- \assm|ASSM|AO|RTxShiftReg[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg\(27),
	datac => \OBJ4|reg\(18),
	datad => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|RTxShiftReg[28]~4_combout\);

-- Location: FF_X91_Y31_N3
\assm|ASSM|AO|RTxShiftReg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(28));

-- Location: LCCOMB_X90_Y33_N26
\assm|ASSM|AO|RTxShiftReg[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[29]~3_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ4|reg\(19) & ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(28)) # ((\OBJ4|reg\(19) & 
-- \assm|ASSM|AO|RTxShiftReg[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \OBJ4|reg\(19),
	datac => \assm|ASSM|AO|RTxShiftReg\(28),
	datad => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|RTxShiftReg[29]~3_combout\);

-- Location: FF_X90_Y33_N27
\assm|ASSM|AO|RTxShiftReg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(29));

-- Location: LCCOMB_X90_Y33_N18
\OBJ4|reg[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[20]~62_combout\ = (\OBJ4|reg\(20) & (\OBJ4|reg[19]~61\ $ (GND))) # (!\OBJ4|reg\(20) & (!\OBJ4|reg[19]~61\ & VCC))
-- \OBJ4|reg[20]~63\ = CARRY((\OBJ4|reg\(20) & !\OBJ4|reg[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(20),
	datad => VCC,
	cin => \OBJ4|reg[19]~61\,
	combout => \OBJ4|reg[20]~62_combout\,
	cout => \OBJ4|reg[20]~63\);

-- Location: FF_X90_Y33_N19
\OBJ4|reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[20]~62_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(20));

-- Location: LCCOMB_X91_Y33_N22
\assm|ASSM|AO|RTxShiftReg[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[30]~2_combout\ = (\assm|ASSM|AO|RTxShiftReg\(29) & (((\OBJ4|reg\(20) & \assm|ASSM|AO|RTxShiftReg[16]~0_combout\)) # (!\assm|ASSM|SYN|DacLrcOut~q\))) # (!\assm|ASSM|AO|RTxShiftReg\(29) & (\OBJ4|reg\(20) & 
-- ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(29),
	datab => \OBJ4|reg\(20),
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|RTxShiftReg[30]~2_combout\);

-- Location: FF_X91_Y33_N23
\assm|ASSM|AO|RTxShiftReg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(30));

-- Location: LCCOMB_X90_Y33_N20
\OBJ4|reg[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \OBJ4|reg[21]~64_combout\ = \OBJ4|reg[20]~63\ $ (\OBJ4|reg\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \OBJ4|reg\(21),
	cin => \OBJ4|reg[20]~63\,
	combout => \OBJ4|reg[21]~64_combout\);

-- Location: FF_X90_Y33_N21
\OBJ4|reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|AdcLrcOut~clkctrl_outclk\,
	d => \OBJ4|reg[21]~64_combout\,
	sclr => \SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OBJ4|reg\(21));

-- Location: LCCOMB_X91_Y31_N20
\assm|ASSM|AO|RTxShiftReg[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|RTxShiftReg[31]~1_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & ((\OBJ4|reg\(21))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|RTxShiftReg\(30)) # ((\assm|ASSM|AO|RTxShiftReg[16]~0_combout\ & 
-- \OBJ4|reg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|RTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|AO|RTxShiftReg\(30),
	datad => \OBJ4|reg\(21),
	combout => \assm|ASSM|AO|RTxShiftReg[31]~1_combout\);

-- Location: FF_X91_Y31_N21
\assm|ASSM|AO|RTxShiftReg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|RTxShiftReg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|RTxShiftReg\(31));

-- Location: LCCOMB_X91_Y33_N16
\assm|ASSM|AO|LTxShiftReg[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[16]~0_combout\ = (!\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ1|obj2|debounced~q\ & \OBJ3|OBJ3|OBJ1|soundOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \OBJ1|obj2|debounced~q\,
	datad => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	combout => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\);

-- Location: LCCOMB_X91_Y33_N30
\assm|ASSM|AO|LTxShiftReg[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[16]~16_combout\ = (\OBJ1|obj2|debounced~q\ & (!\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ4|reg\(6) & \OBJ3|OBJ3|OBJ1|soundOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ1|obj2|debounced~q\,
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \OBJ4|reg\(6),
	datad => \OBJ3|OBJ3|OBJ1|soundOut~q\,
	combout => \assm|ASSM|AO|LTxShiftReg[16]~16_combout\);

-- Location: FF_X91_Y33_N31
\assm|ASSM|AO|LTxShiftReg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(16));

-- Location: LCCOMB_X91_Y33_N28
\assm|ASSM|AO|LTxShiftReg[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[17]~15_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(16)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(7))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|AO|LTxShiftReg\(16),
	datad => \OBJ4|reg\(7),
	combout => \assm|ASSM|AO|LTxShiftReg[17]~15_combout\);

-- Location: FF_X91_Y33_N29
\assm|ASSM|AO|LTxShiftReg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(17));

-- Location: LCCOMB_X91_Y33_N26
\assm|ASSM|AO|LTxShiftReg[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[18]~14_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(17)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(8))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- (\OBJ4|reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(8),
	datad => \assm|ASSM|AO|LTxShiftReg\(17),
	combout => \assm|ASSM|AO|LTxShiftReg[18]~14_combout\);

-- Location: FF_X91_Y33_N27
\assm|ASSM|AO|LTxShiftReg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(18));

-- Location: LCCOMB_X91_Y33_N8
\assm|ASSM|AO|LTxShiftReg[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[19]~13_combout\ = (\OBJ4|reg\(9) & ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(18))))) # (!\OBJ4|reg\(9) & (\assm|ASSM|SYN|DacLrcOut~q\ & 
-- (\assm|ASSM|AO|LTxShiftReg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(9),
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \assm|ASSM|AO|LTxShiftReg\(18),
	datad => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|LTxShiftReg[19]~13_combout\);

-- Location: FF_X91_Y33_N9
\assm|ASSM|AO|LTxShiftReg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(19));

-- Location: LCCOMB_X91_Y33_N10
\assm|ASSM|AO|LTxShiftReg[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[20]~12_combout\ = (\assm|ASSM|AO|LTxShiftReg\(19) & ((\assm|ASSM|SYN|DacLrcOut~q\) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(10))))) # (!\assm|ASSM|AO|LTxShiftReg\(19) & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|LTxShiftReg\(19),
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \OBJ4|reg\(10),
	combout => \assm|ASSM|AO|LTxShiftReg[20]~12_combout\);

-- Location: FF_X91_Y33_N11
\assm|ASSM|AO|LTxShiftReg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(20));

-- Location: LCCOMB_X91_Y33_N0
\assm|ASSM|AO|LTxShiftReg[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[21]~11_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(20)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(11))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- (\OBJ4|reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(11),
	datad => \assm|ASSM|AO|LTxShiftReg\(20),
	combout => \assm|ASSM|AO|LTxShiftReg[21]~11_combout\);

-- Location: FF_X91_Y33_N1
\assm|ASSM|AO|LTxShiftReg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(21));

-- Location: LCCOMB_X91_Y33_N6
\assm|ASSM|AO|LTxShiftReg[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[22]~10_combout\ = (\OBJ4|reg\(12) & ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(21))))) # (!\OBJ4|reg\(12) & (((\assm|ASSM|SYN|DacLrcOut~q\ & 
-- \assm|ASSM|AO|LTxShiftReg\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(12),
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \assm|ASSM|AO|LTxShiftReg\(21),
	combout => \assm|ASSM|AO|LTxShiftReg[22]~10_combout\);

-- Location: FF_X91_Y33_N7
\assm|ASSM|AO|LTxShiftReg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(22));

-- Location: LCCOMB_X91_Y33_N12
\assm|ASSM|AO|LTxShiftReg[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[23]~9_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(22)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(13))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- (\OBJ4|reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(13),
	datad => \assm|ASSM|AO|LTxShiftReg\(22),
	combout => \assm|ASSM|AO|LTxShiftReg[23]~9_combout\);

-- Location: FF_X91_Y33_N13
\assm|ASSM|AO|LTxShiftReg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(23));

-- Location: LCCOMB_X91_Y33_N14
\assm|ASSM|AO|LTxShiftReg[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[24]~8_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(23)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(14))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- (\OBJ4|reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(14),
	datad => \assm|ASSM|AO|LTxShiftReg\(23),
	combout => \assm|ASSM|AO|LTxShiftReg[24]~8_combout\);

-- Location: FF_X91_Y33_N15
\assm|ASSM|AO|LTxShiftReg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(24));

-- Location: LCCOMB_X91_Y33_N4
\assm|ASSM|AO|LTxShiftReg[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[25]~7_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(24)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(15))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- ((\OBJ4|reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|AO|LTxShiftReg\(24),
	datad => \OBJ4|reg\(15),
	combout => \assm|ASSM|AO|LTxShiftReg[25]~7_combout\);

-- Location: FF_X91_Y33_N5
\assm|ASSM|AO|LTxShiftReg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(25));

-- Location: LCCOMB_X91_Y33_N18
\assm|ASSM|AO|LTxShiftReg[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[26]~6_combout\ = (\OBJ4|reg\(16) & ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(25))))) # (!\OBJ4|reg\(16) & (\assm|ASSM|SYN|DacLrcOut~q\ & 
-- (\assm|ASSM|AO|LTxShiftReg\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(16),
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \assm|ASSM|AO|LTxShiftReg\(25),
	datad => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	combout => \assm|ASSM|AO|LTxShiftReg[26]~6_combout\);

-- Location: FF_X91_Y33_N19
\assm|ASSM|AO|LTxShiftReg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(26));

-- Location: LCCOMB_X91_Y33_N20
\assm|ASSM|AO|LTxShiftReg[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[27]~5_combout\ = (\OBJ4|reg\(17) & ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(26))))) # (!\OBJ4|reg\(17) & (\assm|ASSM|SYN|DacLrcOut~q\ & 
-- ((\assm|ASSM|AO|LTxShiftReg\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(17),
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datad => \assm|ASSM|AO|LTxShiftReg\(26),
	combout => \assm|ASSM|AO|LTxShiftReg[27]~5_combout\);

-- Location: FF_X91_Y33_N21
\assm|ASSM|AO|LTxShiftReg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(27));

-- Location: LCCOMB_X91_Y33_N2
\assm|ASSM|AO|LTxShiftReg[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[28]~4_combout\ = (\OBJ4|reg\(18) & ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(27))))) # (!\OBJ4|reg\(18) & (((\assm|ASSM|SYN|DacLrcOut~q\ & 
-- \assm|ASSM|AO|LTxShiftReg\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OBJ4|reg\(18),
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \assm|ASSM|SYN|DacLrcOut~q\,
	datad => \assm|ASSM|AO|LTxShiftReg\(27),
	combout => \assm|ASSM|AO|LTxShiftReg[28]~4_combout\);

-- Location: FF_X91_Y33_N3
\assm|ASSM|AO|LTxShiftReg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(28));

-- Location: LCCOMB_X91_Y33_N24
\assm|ASSM|AO|LTxShiftReg[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[29]~3_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(28)) # ((\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & \OBJ4|reg\(19))))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & 
-- (\OBJ4|reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datac => \OBJ4|reg\(19),
	datad => \assm|ASSM|AO|LTxShiftReg\(28),
	combout => \assm|ASSM|AO|LTxShiftReg[29]~3_combout\);

-- Location: FF_X91_Y33_N25
\assm|ASSM|AO|LTxShiftReg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(29));

-- Location: LCCOMB_X92_Y33_N16
\assm|ASSM|AO|LTxShiftReg[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[30]~2_combout\ = (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & ((\OBJ4|reg\(20)) # ((\assm|ASSM|SYN|DacLrcOut~q\ & \assm|ASSM|AO|LTxShiftReg\(29))))) # (!\assm|ASSM|AO|LTxShiftReg[16]~0_combout\ & (\assm|ASSM|SYN|DacLrcOut~q\ & 
-- ((\assm|ASSM|AO|LTxShiftReg\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datab => \assm|ASSM|SYN|DacLrcOut~q\,
	datac => \OBJ4|reg\(20),
	datad => \assm|ASSM|AO|LTxShiftReg\(29),
	combout => \assm|ASSM|AO|LTxShiftReg[30]~2_combout\);

-- Location: FF_X92_Y33_N17
\assm|ASSM|AO|LTxShiftReg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(30));

-- Location: LCCOMB_X92_Y33_N28
\assm|ASSM|AO|LTxShiftReg[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|LTxShiftReg[31]~1_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(30)) # ((\OBJ4|reg\(21) & \assm|ASSM|AO|LTxShiftReg[16]~0_combout\)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\OBJ4|reg\(21) & 
-- (\assm|ASSM|AO|LTxShiftReg[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|SYN|DacLrcOut~q\,
	datab => \OBJ4|reg\(21),
	datac => \assm|ASSM|AO|LTxShiftReg[16]~0_combout\,
	datad => \assm|ASSM|AO|LTxShiftReg\(30),
	combout => \assm|ASSM|AO|LTxShiftReg[31]~1_combout\);

-- Location: FF_X92_Y33_N29
\assm|ASSM|AO|LTxShiftReg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \assm|ASSM|SYN|ALT_INV_BclkOut~clkctrl_outclk\,
	d => \assm|ASSM|AO|LTxShiftReg[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assm|ASSM|AO|LTxShiftReg\(31));

-- Location: LCCOMB_X92_Y33_N30
\assm|ASSM|AO|Dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \assm|ASSM|AO|Dacdat~0_combout\ = (\assm|ASSM|SYN|DacLrcOut~q\ & ((\assm|ASSM|AO|LTxShiftReg\(31)))) # (!\assm|ASSM|SYN|DacLrcOut~q\ & (\assm|ASSM|AO|RTxShiftReg\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \assm|ASSM|AO|RTxShiftReg\(31),
	datab => \assm|ASSM|AO|LTxShiftReg\(31),
	datad => \assm|ASSM|SYN|DacLrcOut~q\,
	combout => \assm|ASSM|AO|Dacdat~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_I2C_SCLK <= \I2C_SCLK~output_o\;

ww_AUD_XCK <= \AUD_XCK~output_o\;

ww_AUD_DACDAT <= \AUD_DACDAT~output_o\;

ww_I2C_SDAT <= \I2C_SDAT~output_o\;
END structure;


