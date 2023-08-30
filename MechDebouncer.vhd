LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity MechDebouncer is
	Port ( clkIn, reset : in std_logic;
			 keys  		  : in std_logic_vector(3 downto 0);
			 SWS   		  : in std_logic_vector(17 downto 0);
			 bouncedKeys  : out std_logic_vector(3 downto 0);
			 bouncedSW    : out std_logic_vector(5 downto 0));
end MechDebouncer;
 
 architecture logic of MechDebouncer is
 
	component debouncer is
	  generic (
		 timeout_cycles : positive
		 );
	  port (
		 clk : in std_logic;
		 rst : in std_logic;
		 switch : in std_logic;
		 switch_debounced : out std_logic
	  );
	end component; 
	 
	 BEGIN
	 
	 obj1: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>keys(0), switch_debounced=>bouncedKeys(0));
	 obj2: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>keys(1), switch_debounced=>bouncedKeys(1));
	 obj3: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>keys(2), switch_debounced=>bouncedKeys(2));
	 obj4: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>keys(3), switch_debounced=>bouncedKeys(3));
	 
	 obj5: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(0), switch_debounced=>bouncedSW(0));
	 obj6: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(1), switch_debounced=>bouncedSW(1));
	 obj7: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(2), switch_debounced=>bouncedSW(2));
	 obj8: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(14), switch_debounced=>bouncedSW(3));
	 obj9: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(15), switch_debounced=>bouncedSW(4));
	 obj10: debouncer generic map (10) port map (clk => clkIn, rst =>reset, switch =>SWS(4), switch_debounced=>bouncedSW(5));
	 
end logic;