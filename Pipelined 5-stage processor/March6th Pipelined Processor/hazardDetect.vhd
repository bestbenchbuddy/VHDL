----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:13 03/22/2015 
-- Design Name: 
-- Module Name:    hazardDetect - Behavioral 
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

entity hazardDetect IS PORT(
    if_idrs : IN std_logic_vector(2 downto 0):="000";
	 if_idrt : IN std_logic_vector(2 downto 0):="000";
	 id_exrt : IN std_logic_vector(2 downto 0):="000";
	 ex_memrd : IN std_logic_vector(2 downto 0):="000";
	 mem_wbrd : IN std_logic_vector(2 downto 0):="000";
	 instruction_copy : IN std_logic_vector(15 downto 0):="0000000000000000";
	 id_exMemRead : IN std_logic := '0';
    stall   : OUT std_logic:='0';
	 clk : IN std_logic := '0'); -- output.
end hazardDetect;

ARCHITECTURE description OF hazardDetect IS


BEGIN
    process(if_idrs,if_idrt,id_exrt,ex_memrd,mem_wbrd,id_exMemRead,instruction_copy,clk)
    begin
        if (((id_exMemRead = '1') and ((id_exrt = if_idrs) or (id_exrt = if_idrt))) and (if_idrs /= "000")) then
				--if(instruction_copy/="0000000000000000") then
						stall <= '1';
				--end if;
		  else
				if falling_edge(clk) then
					stall <= '0';
				end if;
		end if;
	end process;
END description;

