LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.definitions_package.all;

ENTITY custom7seg IS
	Port ( D : IN STD_LOGIC_VECTOR( N-4 downto 0 );
			 Y : out STD_LOGIC_VECTOR( N-2 downto 0 ));
END ENTITY custom7seg ;
ARCHITECTURE LogicFunction OF custom7seg IS
BEGIN
	PROCESS(D)
	BEGIN
		 CASE D IS
		 when "00000" => Y <= "1111111";     
		 when "00001" => Y <= "1111000"; 
		 when "00010" => Y <= "1000111"; 
		 when "00011" => Y <= "1001110";
		 when "00100" => Y <= "1110001"; 
		 when "00101" => Y <= "0000011";
		 when "00110" => Y <= "0101111"; 
		 when "00111" => Y <= "1100011";
		 when "01000" => Y <= "0001011";     
		 when "01001" => Y <= "1111110"; 
		 when "01010" => Y <= "1111101";
		 when "01011" => Y <= "1111011";
		 when "01100" => Y <= "1110111";
		 when "01101" => Y <= "1101111";
		 when "01110" => Y <= "1011111";
		 when "01111" => Y <= "0111111";
		 when "10000" => Y <= "1000000";     
		 when "10001" => Y <= "1111001"; 
		 when "10010" => Y <= "0100100"; 
		 when "10011" => Y <= "0110000";
		 when "10100" => Y <= "0011001"; 
		 when "10101" => Y <= "0010010";
		 when "10110" => Y <= "0000010"; 
		 when "10111" => Y <= "0010000";
		 when "11000" => Y <= "1001000";     
		 when "11111" => Y <= "0000000";
		 when others => Y <= "1111111";
		 END CASE;
	END PROCESS;
END LogicFunction ;
