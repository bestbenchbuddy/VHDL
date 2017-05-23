----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:00 02/28/2017 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mem_wbReg IS PORT(
	load  : IN STD_LOGIC; -- load/enable.
	clr : IN STD_LOGIC; -- async. clear.
	clk : IN STD_LOGIC; -- clock.	
	
	regWriteAddrIn : in STD_LOGIC_VECTOR(2 downto 0):="000";
	regWriteAddrOut : OUT STD_LOGIC_VECTOR(2 downto 0):="000";
	
	memToRegIn : in STD_LOGIC:='0';
	memToRegOut : OUT STD_LOGIC:='0';
	
	regWriteIn : in STD_LOGIC:='0';
	regWriteOut : OUT STD_LOGIC:='0';
	
	dataMemOutIn : in STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	dataMemOutOut : out STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	
	shiftOutputIn : in STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	shiftOutputOut : out STD_LOGIC_VECTOR(15 downto 0):="0000000000000000");
end mem_wbReg;

ARCHITECTURE description OF mem_wbReg IS


BEGIN
    process(clk,clr,load,regWriteAddrIn,memToRegIn,regWriteIn,shiftOutputIn)
    begin
        if clr = '1' then --clears the registar
				shiftOutputOut <= "0000000000000000";
				regWriteOut <= '0';
				memToRegOut <= '0';
				regWriteAddrOut<= "000";
				dataMemOutOut <= "0000000000000000";
        elsif falling_edge(clk) then 
            if load = '1' then --loads registar
					shiftOutputOut <= shiftOutputIn;
					regWriteOut <= regWriteIn;
					memToRegOut <= memToRegIn;
					regWriteAddrOut <= regWriteAddrIn;
					dataMemOutOut <= dataMemOutIn;
            end if;
			end if;
	end process;
END description;

