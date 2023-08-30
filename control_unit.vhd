LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.definitions_package.all;

entity control_unit IS
	Port ( inst  : in std_logic_vector(5 downto 0);
			 toSeg : OUT c7s );
end control_unit;
ARCHITECTURE LogicFunction OF control_unit IS
SIGNAL inst_int : integer;
BEGIN
	inst_int <= to_integer(unsigned(inst));
	PROCESS(inst_int)
	BEGIN
		 CASE inst_int IS
			when 0 => toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			when 1 => toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
			
			when 2 => toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
			
			when 3 => toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
			
			 when 4 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
			
			 when 5 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 6 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 7 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 8  =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(1,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 9 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 10 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 11 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(2,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 12 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 13 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 14 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 15 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 16 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 17 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 18 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 19 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(3,5));
			
			when 20 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
						 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
						 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
			
		 when 21 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
					  toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
					  toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(24,5));
						
			 when 22 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(4,5));
			
			 when 23 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			
			 when 24 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(14,5));
			
			 when 25 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(9,5));
			
			 when 26 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(10,5));
			
			 when 27 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			
			 when 28 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(13,5));
			
			 when 29 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(12,5));
			
			 when 30 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(11,5));
			
			 when 31 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			
			 when 32 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 33 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(14,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 34 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(9,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 35 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(10,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 36 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 37 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(13,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 38 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(12,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 39 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(11,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 40 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(15,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 41 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			
			 when 42 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			
			 when 43 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			
			 when 44 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			
			 when 45 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			
			 when 46 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			
			 when 47 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			
			 when 48 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			
			 when 49 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 50 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 51 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 52 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(17,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 53 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			when 54 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(16,5));
			toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			when 55 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(18,5));
			toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			
			 when 56 =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(5,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(6,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(7,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(8,5));
			 
		 when OTHERS =>toSeg(7)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(6)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(5)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(4)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(3)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(2)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(1)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
			 toSeg(0)(4 downto 0) <= std_logic_vector(to_unsigned(0,5));
		 END CASE;
	END PROCESS;
END LogicFunction ;