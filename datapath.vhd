LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
USE work.definitions_package.all;

entity datapath IS
    port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
         program                       : in std_logic_vector(2 downto 0);
         pce                           : out std_logic_vector(3 downto 0);
         inst	                        : out std_logic_vector(5 downto 0);
			errorSound 							: out std_logic);
end datapath;

architecture logic of datapath is

SIGNAL instSig : std_logic_vector(5 downto 0);
SIGNAL pceCounter : std_logic_vector(3 downto 0):= "0000";
SIGNAL pceOut : std_logic;

component scheduler is
    port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
         program                       : in std_logic_vector(2 downto 0);
         pce_out                           : out std_logic;
         inst_out                      : out std_logic_vector(5 downto 0);
			errorSound 							: out std_logic);
end component;

Begin

	OBJ1 : scheduler port map (clk => clk, rst => rst, hard_rst => hard_rst, stop_prog => stop_prog, pause => pause, program => program, pce_out => pceOut, inst_out => instSig, errorSound => errorSound);
	PROCESS(clk)
	Begin
		if (rising_edge(clk)) then
			if pceCounter = "1111" OR hard_rst = '1'	then
				pceCounter <= "0000";
			elsif pceOut = '1' then
				pceCounter <= pceCounter + 1;
			end if;
		end if;
	end process;
	pce <= pceCounter;
	inst <= instSig;
end logic;