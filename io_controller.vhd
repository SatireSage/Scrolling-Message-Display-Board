LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.definitions_package.all;
ENTITY io_controller IS
	Port ( toSeg : IN c7s;
			 to_hex : OUT cHex );
END io_controller;
ARCHITECTURE LogicFunction OF io_controller IS
Component custom7seg IS
	Port ( D : IN STD_LOGIC_VECTOR( N-4 downto 0 );
			 Y : out STD_LOGIC_VECTOR( N-2 downto 0 ));
END Component custom7seg ;
BEGIN
	OBJ0 : custom7seg PORT MAP (D => toSeg(7)(N-4 downto 0), Y => to_hex(7)(N-2 downto 0));
	OBJ1 : custom7seg PORT MAP (D => toSeg(6)(N-4 downto 0), Y => to_hex(6)(N-2 downto 0));
	OBJ2 : custom7seg PORT MAP (D => toSeg(5)(N-4 downto 0), Y => to_hex(5)(N-2 downto 0));
	OBJ3 : custom7seg PORT MAP (D => toSeg(4)(N-4 downto 0), Y => to_hex(4)(N-2 downto 0));
	OBJ4 : custom7seg PORT MAP (D => toSeg(3)(N-4 downto 0), Y => to_hex(3)(N-2 downto 0));
	OBJ5 : custom7seg PORT MAP (D => toSeg(2)(N-4 downto 0), Y => to_hex(2)(N-2 downto 0));
	OBJ6 : custom7seg PORT MAP (D => toSeg(1)(N-4 downto 0), Y => to_hex(1)(N-2 downto 0));
	OBJ7 : custom7seg PORT MAP (D => toSeg(0)(N-4 downto 0), Y => to_hex(0)(N-2 downto 0));
END LogicFunction ;