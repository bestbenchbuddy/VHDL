----------------------------------------------------------------------------------
-- Names: Carter Noble, Andrew Mackey
-- Course: 3380
-- Lab Number: 2
-- 
-- Create Date:    11:02:14 01/21/2015 
-- Design Name: 
-- Module Name:    SevenSegDecoder - Behavioral 
-- Project Name:   Lab2
-- Target Devices: Nexys 3 FPGA
-- Tool versions:  Xilinx design suite 14
-- Description:    create 4 digit 7 seg display
--
-- Revision: 1
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SevenSegDecoder is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (7 downto 0));
end SevenSegDecoder;

architecture Behavioral of SevenSegDecoder is

begin
	process(a) is
		begin 
			case a is
				--without decimal      .gfedcba
				when "0000" =>  b <= "11000000"; --0
				when "0001" =>  b <= "11111001"; --1
				when "0010" =>  b <= "10100100"; --2
				when "0011" =>  b <= "10110000"; --3
				when "0100" =>  b <= "10011001"; --4
				when "0101" =>  b <= "10010010"; --5
				when "0110" =>  b <= "10000010"; --6
				when "0111" =>  b <= "11111000"; --7
				when "1000" =>  b <= "10000000"; --8
				when "1001" =>  b <= "10011000"; --9
				when "1010" =>  b <= "10001000"; --A
				when "1011" =>  b <= "10000011"; --b
				when "1100" =>  b <= "11000110"; --C
				when "1101" =>  b <= "10100001"; --d
				when "1110" =>  b <= "10000110"; --E
				when "1111" =>  b <= "10001110"; --F
				when others =>  b <= "11111111"; --none
				
		end case;
	end process;
end Behavioral;

