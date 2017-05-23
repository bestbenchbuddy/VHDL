----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:45 03/20/2015 
-- Design Name: 
-- Module Name:    MUX_4to1 - Behavioral 
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

entity MUX_2to1_16bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (15 downto 0);
           i1 : in  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC);
end MUX_2to1_16bit;

architecture Behavioral of MUX_2to1_16bit is

begin

process(sel,i0,i1)
begin
	if(sel = '0')then
		c <= i0;
	else
		c <= i1;
	end if;
end process;

end Behavioral;

