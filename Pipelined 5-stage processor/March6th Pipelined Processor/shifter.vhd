----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:21 03/22/2015 
-- Design Name: 
-- Module Name:    shifter - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_signed.all;

entity shifter is
    Port ( shamt : in  STD_LOGIC_VECTOR (2 downto 0);
           shftDir : in  STD_LOGIC;
           shftEn : in  STD_LOGIC;
           dataIn : in  STD_LOGIC_VECTOR (15 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (15 downto 0));
end shifter;

architecture Behavioral of shifter is

begin

process(shftEn,shftDir,shamt,dataIn)
begin
	if(shftEn = '0') then 
		dataOut <= dataIn;
	else
		if(shftDir = '0') then
			dataOut <= std_logic_vector(unsigned(dataIn) sll to_integer(unsigned(shamt)));
		elsif(shftDir = '1')then
			dataOut <= std_logic_vector(unsigned(dataIn) srl to_integer(unsigned(shamt)));
		end if;
	end if;
end process;
end Behavioral;