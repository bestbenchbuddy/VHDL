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

entity aluAInputMux_4to1_16bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (15 downto 0);
           i1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  i2 : in  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_vector(1 downto 0));
end aluAInputMux_4to1_16bit;

architecture Behavioral of aluAInputMux_4to1_16bit is

begin

process(sel,i0,i1)
begin
	if(sel = "00")then
		c <= i0;
	elsif(sel = "01")then
		c <= i1;
	elsif(sel = "10")then
		c <= i2;
	else
		c <= "0000000000000000";
	end if;
end process;

end Behavioral;