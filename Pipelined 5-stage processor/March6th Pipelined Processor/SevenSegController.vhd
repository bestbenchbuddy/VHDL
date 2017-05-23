----------------------------------------------------------------------------------
-- Names: Carter Noble, Andrew Mackey
-- Course: 3380
-- Lab Number: 2
--
-- Create Date:    10:48:26 01/21/2015 
-- Module Name:    SevenSegController - Behavioral 
-- Project Name:   Lab2
-- Target Devices: Nexys 3 FPGA
-- Tool versions:  Xilinx design suite 14
-- Description:    create 4 digit 7 seg display
--
-- Revision: 1
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
--libraries needed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SevenSegController is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";    
			  mclk: in std_logic;
			  segment : out  STD_LOGIC_VECTOR (3 downto 0);
			  leds: out std_logic_vector(7 downto 0));
end SevenSegController;

architecture Behavioral of SevenSegController is
	
	component SevenSegDecoder is--create 7seg decoder component
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	signal temp_segment : std_logic_vector(3 downto 0);	-- temporary storage for ssg
	signal clkdiv : std_logic_vector(8 downto 0);		-- counter for clock divider
	signal temp_digit : std_logic_vector(3 downto 0);

begin
	
	process (mclk)						-- create system clock divder
	begin
		if mclk = '1' and mclk'Event then	
			clkdiv <= clkdiv +1;
		end if;	    
	end process;
	--variable temp_digit:STD_LOGIC_VECTOR (0 downto 4);
	decoder : SevenSegDecoder port map(a=>temp_digit,b=>leds);
	
	process(clkdiv(8), temp_segment,input)
	
   --create variables for each of the 4 digit segments	
	variable digit0:STD_LOGIC_VECTOR (3 downto 0);
	variable digit1:STD_LOGIC_VECTOR (3 downto 0);
	variable digit2:STD_LOGIC_VECTOR (3 downto 0);
	variable digit3:STD_LOGIC_VECTOR (3 downto 0);

	begin
	
	--assign digits to corresponding segment input
	digit0 := input(3 downto 0);
	digit1 := input(7 downto 4);
	digit2 := input(11 downto 8);
	digit3 := input(15 downto 12);
	temp_digit <= "0000";
	
	temp_segment<="1110";
	if clkdiv(8) = '1' and clkdiv(8)'Event then
			case temp_segment is				--used to rotate leds to light up
		 		when "1110"  =>
					temp_digit <= digit1;--display digit 1
					temp_segment <= "1101";
				when "1101"  =>
					temp_digit <= digit2; -- display digit 2
					temp_segment <= "1011";
				when "1011"  =>
					temp_digit <= digit3;--display digit 3
					temp_segment <= "0111";
				when others =>
					temp_digit <= digit0;--display digit 0
					temp_segment<="1110";
			end case;
	end if;
	end process;
	
	segment <= temp_segment;	--output ssg		
end Behavioral;

