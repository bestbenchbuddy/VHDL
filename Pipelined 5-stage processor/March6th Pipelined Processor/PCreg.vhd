----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:46 03/22/2015 
-- Design Name: 
-- Module Name:    PCreg - Behavioral 
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
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PCreg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000";
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
	 stall : IN STD_LOGIC := '0';
    q   : OUT std_logic_vector(15 downto 0):="0000000000000000"); -- output.
end PCreg;

ARCHITECTURE description OF PCreg IS

BEGIN
	
    process(clk, clr,d,stall)
	 
    begin
		
			if clr = '1' then --clears the registar
            q <= "0000000000000000";
			
			elsif falling_edge(clk) then 
				if load = '1' and stall = '0' then --loads registar
						q <= d;
				end if;
			end if;
			if rising_edge(clk) and stall = '1' then
				q <= d;
			end if;
	end process;	
END description;

