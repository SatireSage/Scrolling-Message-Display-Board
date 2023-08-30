LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY PreScale IS
PORT(	clkIn : IN std_logic;
		mode :	IN std_logic_vector(1 downto 0);
		clkOut : OUT std_logic);
END PreScale;

architecture behaviour of PreScale is
signal Mode1: std_logic_vector(23 downto 0):= "000000000000000000000000";
signal Mode2: std_logic_vector(21 downto 0):= "0000000000000000000000";
signal Mode3: std_logic_vector(19 downto 0):= "00000000000000000000";
signal Mode4: std_logic_vector(25 downto 0):= "00000000000000000000000000";

begin
	process(clkIn) is
	begin
	if mode = "01" then
		 if (clkIn='1' AND clkIn'Event) then
			 if (Mode2 = "1111111111111111111111") then
				Mode2 <=  "0000000000000000000000";
			else
				Mode2 <= Mode2 + "1";
			end if;
		 end if;
	elsif  mode = "10" then
		 if (clkIn='1' AND clkIn'Event) then
			 if (Mode3 = "11111111111111111111") then
				Mode3 <=  "00000000000000000000";
			else
				Mode3 <= Mode3 + "1";
			end if;
		 end if;
	elsif  mode = "11" then
		 if (clkIn='1' AND clkIn'Event) then
			 if (Mode4 = "11111111111111111111111111") then
				Mode4 <=  "00000000000000000000000000";
			else
				Mode4 <= Mode4 + "1";
			end if;
		 end if;
	else
		 if (clkIn='1' AND clkIn'Event) then
			 if (Mode1 = "111111111111111111111111") then
				Mode1 <=  "000000000000000000000000";
			else
				Mode1 <= Mode1 + "1";
			end if;
		 end if;
	end if;
	end process;
	
	PROCESS(mode)
	BEGIN
		 CASE mode IS
			when "01" => clkOut <= Mode2(Mode2'left);
			when "10" => clkOut <= Mode3(Mode3'left);
			when "11" => clkOut <= Mode4(Mode4'left);
			when others => clkOut <= Mode1(Mode1'left);
		END CASE;
	END PROCESS;
	
end behaviour;
