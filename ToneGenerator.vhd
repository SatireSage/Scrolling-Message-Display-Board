LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ToneGenerator is
	PORT ( Clear, Clk : in std_logic; 
			 Freq : in UNSIGNED(15 downto 0);
			 WaveOut : out SIGNED(15 downto 0));
END ToneGenerator;


ARCHITECTURE Structural of ToneGenerator is

	SIGNAL reg, NewFreq : signed(21 downto 0);

BEGIN

	NewFreq <= signed("000000" & std_logic_vector(Freq));
	
	PROCESS(Clk)
	BEGIN
		IF rising_edge(Clk) THEN
			IF (Clear = '1') THEN
				reg <= (others => '0');
			ELSE
				reg <= reg + NewFreq;
			END IF;
		END IF;
	END PROCESS;
	
	WaveOut <= reg(21 downto 6);
	
END Structural; 