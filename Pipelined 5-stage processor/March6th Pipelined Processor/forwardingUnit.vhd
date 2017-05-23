----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:20 03/02/2017 
-- Design Name: 
-- Module Name:    forwardingUnit - Behavioral 
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

entity forwardingUnit is
    Port ( if_idrs : IN std_logic_vector(2 downto 0):="000";
			  if_idrt : IN std_logic_vector(2 downto 0):="000";
			  id_exrs : IN std_logic_vector(2 downto 0):="000";
			  id_exrt : IN std_logic_vector(2 downto 0):="000";
			  
			  ex_memrd : IN std_logic_vector(2 downto 0):="000";
			  mem_wbrd : IN std_logic_vector(2 downto 0):="000";
			  ex_memRegWrite : IN std_logic := '0';
			  mem_wbRegWrite : IN std_logic := '0';
           forwardA : OUT std_logic_vector(1 downto 0):="00";
			  forwardB : OUT std_logic_vector(1 downto 0):="00");
end forwardingUnit;

architecture Behavioral of forwardingUnit is

begin

process(if_idrs,if_idrt,id_exrs,id_exrt,ex_memrd,mem_wbrd,ex_memRegWrite,mem_wbRegWrite)
begin
	--ex_mem hazard
	if ((ex_memRegWrite = '1') and (ex_memrd /= "000") and (ex_memrd = id_exrs)) then
		forwardA <= "10";
	--mem_wb hazard
	elsif ((mem_wbRegWrite = '1') and (mem_wbrd /= "000") and (ex_memrd /= id_exrs) and (mem_wbrd = id_exrs)) then
		forwardA <= "01";
	else
		forwardA <= "00";
	end if;
	
	--ex_mem hazard
	if ((ex_memRegWrite = '1') and (ex_memrd /= "000") and (ex_memrd = id_exrt)) then
		forwardB <= "10";
	--mem_wb hazard
	elsif ((mem_wbRegWrite = '1') and (mem_wbrd /= "000") and (ex_memrd /= id_exrt) and (mem_wbrd = id_exrt)) then
		forwardB <= "01";
	else
		forwardB <= "00";
	end if;
	
end process;

end Behavioral;

