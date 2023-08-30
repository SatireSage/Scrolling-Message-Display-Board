LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
USE work.definitions_package.all;

entity asip IS
    port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
         program                       : in std_logic_vector(2 downto 0);
         pec                           : out std_logic_vector(3 downto 0);
         to_hex	                     : out cHex;
			errorSound 							: out std_logic);
end asip;

architecture logic of asip is
SIGNAL instSig : std_logic_vector(5 downto 0);
SIGNAL toSegSig : c7s;

component io_controller IS
	Port ( toSeg : IN c7s;
			 to_hex : OUT cHex );
END component;
component control_unit IS
	Port ( inst  : in std_logic_vector(5 downto 0);
			 toSeg : OUT c7s );
end component;
component datapath IS
    port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
         program                       : in std_logic_vector(2 downto 0);
         pce                           : out std_logic_vector(3 downto 0);
         inst	                        : out std_logic_vector(5 downto 0);
			errorSound 							: out std_logic);
end component;

BEGIN

OBJ1: io_controller port map (toSeg => toSegSig, to_hex => to_hex);
OBJ2: control_unit port map (inst => instSig, toSeg => toSegSig);
OBJ3: datapath port map (clk => clk, rst => rst, hard_rst => hard_rst, stop_prog => stop_prog, pause => pause, program => program, pce => pec, inst => instSig, errorSound => errorSound);

end logic;