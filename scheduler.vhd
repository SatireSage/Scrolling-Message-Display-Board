LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.definitions_package.all;

Entity scheduler is
    port(clk, rst, hard_rst, stop_prog, pause : in std_logic;
         program                       : in std_logic_vector(2 downto 0);
         pce_out                       : out std_logic;
         inst_out                      : out std_logic_vector(5 downto 0);
			errorSound 							: out std_logic);
end scheduler;

architecture logic of scheduler is
    type state_type is (idle, running);
    type state_type2 is (prog1, prog2, prog3, prog4, progIdle, progError);
    signal progState : state_type2;
    signal main_state : state_type;
	 signal fly_state : state_type;
	 signal control : std_logic; -- 1 = fsm2    0 = fsm1
    signal counter : integer:= 0;
	 signal instOutSigVal : std_logic_vector(5 downto 0);
	 signal pceOUT, soundOut : std_logic := '0';
	 
	 Begin
	 Process(clk)
	 Begin
	 if (rising_edge(clk)) then
            if (hard_rst = '1') or (rst = '1') then
					main_state <= idle;
					instOutSigVal <= std_logic_vector(to_unsigned(0, 6));
					control <= '0';
					soundOut <= '0';
					
				elsif (stop_prog = '1') AND fly_state = running then
					main_state <= idle;
					control <= '0';
					flY_state <= idle;
					
				else
				case main_state is
					when idle =>
						soundOut <= '0';
						pceOUT <= '0';
						control <= '0';
						counter <= 0;
						
						if program = "000" then
							main_state <= idle;
							progState <= progIdle;
							control <= '1';
							
						elsif program = "001" then
							main_state <= running;
							progState <= prog1;
							control <= '1';
							
						elsif program = "010" then
							main_state <= running;
							progState <= prog2;
							control <= '1';
							
						elsif program = "011" then
							main_state <= running;
							progState <= prog3;
							control <= '1';
							
						elsif program = "100" then
							main_state <= running;
							fly_state <= running;
							progState <= prog4;
							control <= '1';
							
						else
							main_state <= idle;
							progState <= progError;
							control <= '1';
							
						end if;
						
					when running =>
						if control = '1' then
							main_state <= running;
							
						else
							main_state <= idle;
						end if;
				end case;
				
				if control = '1' then
					case progState is
						when progIdle =>
							instOutSigVal <= encode(0);
							control <= '0';
							soundOut <= '0';
							progState <= progIdle;
							
						when prog1 =>
							if counter = sizeOfProg1 then
								control <= '0';
								main_state <= idle;
								progState <= progIdle;
								pceOUT <= '1';
								instOutSigVal <= encode(0);
							else
								pceOUT <= '0';
								instOutSigVal <= encode(ProgramNum1(counter));
								counter <= increment(counter, pause);
								progState <= prog1;
							end if;
							
						when prog2 =>
							if counter = sizeOfProg2OR3 then
								control <= '0';
								main_state <= idle;
								progState <= progIdle;
							   pceOUT <= '1';
								instOutSigVal <= encode(0);
							else
								pceOUT <= '0';
								instOutSigVal <= encode(ProgramNum2(counter));
								counter <= increment(counter, pause);
								progState <= prog2;
							end if;
							
						when prog3 =>
							if counter = sizeOfProg2OR3 then
								control <= '0';
								main_state <= idle;
								progState <= progIdle;
								pceOUT <= '1';
								instOutSigVal <= encode(0);
							else
								pceOUT <= '0';
								instOutSigVal <= encode(ProgramNum3(counter));
								counter <= increment(counter, pause);
								progState <= prog3;
							end if;
							
						when prog4 =>
							progState <= prog4;
							if counter = sizeOfProg4 then	
								counter <= 0;
								pceOUT <= '1';
							else
								pceOUT <= '0';
								instOutSIgVal <= encode(ProgramNum4(counter));
								counter <= increment(counter, pause);
							end if;
							
						when progError =>
							if program = "000" or program = "001" or program = "100" or program = "011" then
								main_state <= idle;
								progState <= progIdle;
								soundOut <= '0';
								control <= '0';
							else
								soundOut <= '1';
								progState <= progError;
								instOutSigVal <= encode(ProgramNumError(counter));
								if counter = 0 then								
									counter <= increment(counter, pause);
								else 
									if pause = '0' then
										counter <= 0;
									else
										counter <= counter;
									end if;
								end if;
								
							end if;
					end case;
					
			end if;
		end if;
	end if;
	end process;
	
	inst_out <= instOutSigVal;
	pce_out <= pceOUT;
	errorSound <= soundOut;
end logic;									
						