LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.definitions_package.all;

Entity smdb is
	PORT (
		SW : in std_logic_vector(17 downto 0);
		LEDR : out std_logic_vector(17 downto 0) := (others => '0');
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(6 downto 0);
		LEDG : out std_logic_vector(8 downto 0 ) := (others => '0');
		KEY : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
		
		I2C_SDAT : inout std_logic;
		I2C_SCLK, AUD_XCK : out std_logic;
		AUD_ADCDAT : in std_logic;
		AUD_DACDAT : out std_logic;
		AUD_ADCLRCK, AUD_DACLRCK, AUD_BCLK : in std_logic );
end smdb;

architecture logic of smdb is
	SIGNAL clk_out_sig, pauseKey, rstSW, audioMode, SamClk, error : std_logic;
	SIGNAL hexOUT : cHex;
	SIGNAL switchSig : std_logic_vector(5 downto 0);
	SIGNAL keySig : std_logic_vector(3 downto 0);
	
	SIGNAL 	freqVal : unsigned(15 downto 0) := "1111111111111111";
	SIGNAL	FreqSig : unsigned(15 downto 0);
	SIGNAL 	MemTable : MEM;
	SIGNAL	AudioIn, AudioOut, Tone : signed(15 downto 0);
	SIGNAL	counter : integer;

    component Prescale is
		PORT(	clkIn : IN std_logic;
				mode :	IN std_logic_vector(1 downto 0);
				clkOut : OUT std_logic);
    end component;
	 
	 component MechDebouncer is
		Port ( clkIn, reset : in std_logic;
				 keys  		  : in std_logic_vector(3 downto 0);
				 SWS   		  : in std_logic_vector(17 downto 0);
				 bouncedKeys  : out std_logic_vector(3 downto 0);
				 bouncedSW    : out std_logic_vector(5 downto 0));
	end component;

	component asip IS
		 port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
				program                       : in std_logic_vector(2 downto 0);
				pec                           : out std_logic_vector(3 downto 0);
				to_hex	                     : out cHex;
				errorSound 							: out std_logic);
	end component;
	
	COMPONENT AudioInterface is
	Generic ( SID : integer := 100 ); 
	Port (CLOCK_50 : in std_logic;
		init : in std_logic;

		I2C_SDAT : inout std_logic;
		I2C_SCLK, AudMclk : out std_logic;
		AUD_ADCDAT : in std_logic;
		AUD_DACDAT : out std_logic;
		AUD_ADCLRCK, AUD_DACLRCK, AUD_BCLK : in std_logic;
		
		SamClk : out std_logic;
		AudioIn : out signed(15 downto 0);
		AudioOut : in signed(15 downto 0));
	END COMPONENT;
	
	COMPONENT ToneGenerator is
		PORT ( Clear, Clk : in std_logic; 
				 Freq : in UNSIGNED(15 downto 0);
				 WaveOut : out SIGNED(15 downto 0));
	END COMPONENT;
	
begin

	rstSW <= SW(17);
	OBJ1: MechDebouncer port map (clkIn => CLOCK_50, reset => rstSW, keys => KEY, SWS => SW, bouncedKeys => keySig, bouncedSW => switchSig);
	OBJ2: Prescale port map (clkIn => CLOCK_50, mode => switchSig(4 downto 3), clkOut => clk_out_sig);
	
	pauseKey <= NOT keySig(1);
	audioMode <= switchSig(5);
	OBJ3: asip port map (clk => clk_out_sig, rst => NOT keySig(2), hard_rst => NOT keySig(3), pause => pauseKey, stop_prog => NOT keySig(0), program => switchSig(2 downto 0), pec => LEDG(3 downto 0), to_hex => hexOUT, errorSound => error);

	LEDR(2 downto 0) <= SW(2 downto 0);
	LEDR(4) <= SW(4);
	LEDR(6) <= error;
	LEDR(15 downto 14) <= SW(15 downto 14);
	LEDR(17) <= SW(17);
	HEX7 <= hexOUT(7)(6 downto 0);
	HEX6 <= hexOUT(6)(6 downto 0);
	HEX5 <= hexOUT(5)(6 downto 0);
	HEX4 <= hexOUT(4)(6 downto 0);
	HEX3 <= hexOUT(3)(6 downto 0);
	HEX2 <= hexOUT(2)(6 downto 0);
	HEX1 <= hexOUT(1)(6 downto 0);
	HEX0 <= hexOUT(0)(6 downto 0);
	
	OBJ4 : ToneGenerator PORT MAP (Clear => rstSW, Clk => SamClk, Freq => FreqSig, WaveOut => Tone);

	assm: AudioInterface	generic map ( SID => 37700 )
			PORT MAP( Clock_50 => CLOCK_50, AudMclk => AUD_XCK,	-- period is 80 ns ( 12.5 Mhz )
						init => KEY(0), 									-- +ve edge initiates I2C data
						I2C_Sclk => I2C_SCLK,
						I2C_Sdat => I2C_SDAT,
						AUD_BCLK => AUD_BCLK, AUD_ADCLRCK => AUD_ADCLRCK, AUD_DACLRCK => AUD_DACLRCK,
						AUD_ADCDAT => AUD_ADCDAT, AUD_DACDAT => AUD_DACDAT,
						AudioOut => AudioOut, AudioIn => AudioIn, SamClk => SamClk );
						
			MemTable <= (
				("0010011011011101"),
				("1000111011010100"),
				("0000001111001000"),
				("1100001010101100"),
				("0000001010000110"),
				("0100011101001001"),
				("0011110011011000"),
				("1011001010100001"),
				("0101001111111111"),
				("0111100011001110"),
				("0010111010111000"),
				("1011101110011010"),
				("0110111111010100"),
				("1011000010110011"),
				("0100010101000101"),
				("1101100001011110"),
				("0111110101011111"),
				("1000011101011111"),
				("0111010011110101"),
				("1101111101011110"),
				("0111011110011110"),
				("0000000010010110"),
				("1001100011101011"),
				("0111101000101110"),
				("1010101000011101"),
				("1000110000100010"),
				("1011110100111010"),
				("0010111000111100"),
				("0100110100101100"),
				("1111001110011001"),
				("0111100000111110"),
				("0101010100001100"),
				("0010100000111100"),
				("0111101110101111"),
				("0100001000101011"),
				("0010001011111101"),
				("0001000000000010"),
				("1011100010001001"),
				("0011100101001000"),
				("0100011101100100"),
				("0000101001101011"),
				("1111011010111101"),
				("1001111000110100"),
				("1011000111001010"),
				("0110001111011010"),
				("1011110101100000"),
				("0111010101010110"),
				("0011111101101110"),
				("1110000010010110"),
				("1100110001111100"),
				("0011010011011000"),
				("0011000010100101"),
				("0011100100000001"),
				("1101000101001011"),
				("0101100100110000"),
				("1000010011111100"),
				("1001110010110101"),
				("0101011011101001"),
				("0001011111100110"),
				("1010100001001100"),
				("0100101110111000"),
				("1101100101111111"),
				("1101101110000010"),
				("1100101110000000"),
				("1100010101110110"),
				("1100000100000110"),
				("1000011111111001"),
				("0011011001011001"),
				("1011101100000101"),
				("1111010010100110"),
				("0000001011101011"),
				("1100000001011100"),
				("1011011000100110"),
				("0001101100001000"),
				("0010000010100010"),
				("0010011110010001"),
				("1011111101101000"),
				("1000000011000011"),
				("1001111000111010"),
				("1111000010110111"),
				("0011001011100110"),
				("1100100100111000"),
				("1100111010101011"),
				("1001111000001011"),
				("0100110100001111"),
				("0100101011100011"),
				("1111110000110001"),
				("1001111100011101"),
				("1001001011000110"),
				("0110110101000000"),
				("1101111101010100"),
				("1100010011100101"),
				("1011101010000010"),
				("0101110111011000"),
				("1010110011101110"),
				("0110001111111011"),
				("1100000001001100"),
				("0011011110101011"),
				("1111010110001111"),
				("1100000011010110"));

			PROCESS (clk_out_sig)
				BEGIN
				IF (clk_out_sig'EVENT AND clk_out_sig = '1') THEN
						IF counter = 100 THEN
							counter <= 0;
						ELSE
							IF pauseKey = '1' THEN
								counter <= counter;
							ELSE
								counter <= counter + 1;
							END IF;
					END IF;
				END IF;
				IF audioMode = '1' THEN
					FreqSig <= unsigned(MemTable(counter));
				ELSE
					FreqSig <= freqVal;
				END IF;
				
				IF error = '1' THEN
					IF pauseKey = '1' THEN
						AudioOut <= "0000000000000000";
					ELSE
						AudioOut <= Tone;
					END IF;
				ELSE
					AudioOut <= "0000000000000000";
				END IF;
			END PROCESS;

			
end logic;