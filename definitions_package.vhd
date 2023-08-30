LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

package definitions_package is
	CONSTANT N : INTEGER := 8;
	CONSTANT sizeOfProg1 : INTEGER := 15;
	CONSTANT sizeOfProg2or3 : INTEGER := 11;
	CONSTANT sizeOfProg4 : INTEGER := 18;
	TYPE c7s IS ARRAY (0 to N-1) OF STD_LOGIC_VECTOR(N-4 DOWNTO 0);
	TYPE cHex IS ARRAY (0 to N-1) OF STD_LOGIC_VECTOR(N-2 DOWNTO 0);
	TYPE MEM IS ARRAY (0 to 99) OF signed(15 downto 0);
	
	TYPE Set1 IS ARRAY (0 to 14)  OF integer;
	TYPE Set2 IS ARRAY (0 to 10) OF integer;
	TYPE Set3 IS ARRAY (0 to 17) OF integer;
	TYPE Set4 IS ARRAY (0 to 1) OF integer;
	
	CONSTANT ProgramNum1 	: Set1 := (41,42,43,44,45,46,47,48,49,50,51,52,53,54,55);
	CONSTANT ProgramNum2 	: Set2 := (1,2,3,4,5,6,7,8,9,10,11);
	CONSTANT ProgramNum3 	: Set2 := (12,13,14,15,16,17,18,19,20,21,22);
	CONSTANT ProgramNum4 	: Set3 := (23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40);
	CONSTANT ProgramNumError: Set4 := (56, 0);
	
	function increment (
	 cnt: in INTEGER;
	 pauseVal : in std_logic)
    return INTEGER;
	 
	function encode (
	 instruct: in INTEGER)
    return std_logic_vector;
	 
end package definitions_package;

package body definitions_package is

	function increment (cnt: in INTEGER; pauseVal : in std_logic) return INTEGER is
		variable output  : integer;
		Begin
			if pauseVal = '0' then
				output := cnt + 1;
			else
				output := cnt;
			end if;
		return output;
	end function increment; 
	
	function encode (instruct: in INTEGER) return std_logic_vector is
		variable output  : std_logic_vector(5 downto 0);
		Begin
			output := std_logic_vector(to_unsigned(instruct, 6));
		return output;
	end function encode; 
				
end package body definitions_package;