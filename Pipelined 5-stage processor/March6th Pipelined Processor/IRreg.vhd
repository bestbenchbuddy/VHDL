----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:13 03/22/2015 
-- Design Name: 
-- Module Name:    IRreg - Behavioral 
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

entity IRreg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000"; --instruction
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
	 stall : IN STD_LOGIC;
	 --IRout : OUT STD_LOGIC_VECTOR(15 downto 0);
    q   : OUT std_logic_vector(15 downto 0):="0000000000000000"); -- output.
end IRreg;

ARCHITECTURE description OF IRreg IS


BEGIN
    process(clk, clr,d,stall)
    begin
        if (clr = '1') then --clears the registar
            q <= "0000000000000000";
        elsif falling_edge(clk) then
            if load = '1' then --loads registar
					q <= d; --stores value
            end if;
			end if;
			
			if rising_edge(clk) and stall = '1' then
				q <= "0000000000000000";
			end if;
		--IRout <= d;
	end process;
END description;

