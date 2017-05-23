----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:15 02/11/2017 
-- Design Name: 
-- Module Name:    BReg - Behavioral 
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

entity BReg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000";
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT std_logic_vector(15 downto 0) -- output.
);
end BReg;

ARCHITECTURE description OF BReg IS


BEGIN
    process(clk, clr,d)
    begin
        if clr = '1' then --clears the registar
            q <= "0000000000000000";
        elsif rising_edge(clk) then 
            if load = '1' then --loads registar
                q <= d; --stores value
            end if;
			end if;
	end process;
END description;

