----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:03 03/22/2015 
-- Design Name: 
-- Module Name:    incrementor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.numeric_std.ALL;

entity incrementor is
    Port ( PCin : in  STD_LOGIC_VECTOR (15 downto 0);
			  stall : in STD_LOGIC := '0';
           PCplusOne : out  STD_LOGIC_VECTOR (15 downto 0);
           incr : in  STD_LOGIC);
end incrementor;

architecture Behavioral of incrementor is

begin

process(incr,PCin,stall)
begin
	if(stall = '1') then
		PCplusOne <= std_logic_vector(unsigned(PCin) - 1);
	elsif(incr = '1' and  stall = '0')then
		PCplusOne <= std_logic_vector(unsigned(PCin) + 1);
	else
		PCplusOne <= PCin;
	end if;
end process;

end Behavioral;