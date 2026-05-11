----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date: 13:28:41 08/18/2011 
--
-- Module Name:    DisplayController - Behavioral 
-- Project Name: 	 PmodKYPD
-- Target Devices: Nexys 3 
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
-- This file defines a DisplayController that controls the seven segment display that works with 
-- the output of the Decoder
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DisplayController is
    Port ( 
			  --output from the Decoder
			  DispVal : in  STD_LOGIC_VECTOR (3 downto 0);
			  --controls the display digits
			  anode: out std_logic_vector(3 downto 0);
			  --anode: out std_logic;
			  --controls which digit to display
           segOut : out  STD_LOGIC_VECTOR (6 downto 0)); 
end DisplayController;

architecture Behavioral of DisplayController is
    type state_type is (ACTIVE, LOCKED_OUT);
    signal current_state : state_type := ACTIVE;
    signal count : std_logic_vector(2 downto 0):= "000";
    signal clk : std_logic;
    signal last_val : std_logic_vector(3 downto 0) := "1111";
    signal locked : std_logic := '0';
begin
	-- only display the leftmost digit
	anode<="1110";
	
	
	process(current_state, DispVal)
begin
    case current_state is 
        when ACTIVE =>
            
            case DispVal is
                when "0000" => 
                    segOut <= "0111111"; 
                when "1111" =>
                    segOut <= "0000000"; 
                when others => 
                    segOut <= "1110110"; 
                    current_state <= LOCKED_OUT;
            end case;

        when LOCKED_OUT =>
            
            segOut <= "1110110";

        when others =>
            
            segOut <= "1110110"; 
    end case;
end process;
end Behavioral;

