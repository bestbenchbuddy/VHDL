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

entity ex_memReg IS PORT(
	load  : IN STD_LOGIC; -- load/enable.
	clr : IN STD_LOGIC; -- async. clear.
	clk : IN STD_LOGIC; -- clock.
	
	RD2In   : IN std_logic_vector(15 downto 0):="0000000000000000"; --instruction
	RD2Out   : out std_logic_vector(15 downto 0):="0000000000000000"; --instruction
	
	regWriteIn : in STD_LOGIC:='0';
	regWriteOut : OUT STD_LOGIC:='0';
	
	dataMemWriteIn : in STD_LOGIC:='0';
	dataMemWriteOut : OUT STD_LOGIC:='0';
	
	memToRegIn : in STD_LOGIC:='0';
	memToRegOut : OUT STD_LOGIC:='0';
	
	
	regWriteAddrIn : in STD_LOGIC_VECTOR(2 downto 0):="000";
	regWriteAddrOut : out STD_LOGIC_VECTOR(2 downto 0):="000";
	
	shiftOutputIn : in STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	shiftOutputOut : out STD_LOGIC_VECTOR(15 downto 0):="0000000000000000");
end ex_memReg;

ARCHITECTURE description OF ex_memReg IS


BEGIN
    process(clk,clr,load,RD2In,regWriteIn,dataMemWriteIn,memToRegIn,regWriteAddrIn,shiftOutputIn)
    begin
        if clr = '1' then --clears the registar
				RD2Out <= "0000000000000000";
				
				regWriteOut <= '0';
				
				dataMemWriteOut <= '0';
				
				memToRegOut <= '0';
				
				regWriteAddrOut <= "000";
				
				shiftOutputOut <= "0000000000000000";
        elsif falling_edge(clk) then 
            if load = '1' then --loads registar
               RD2Out <= RD2In;
					
					regWriteOut <= regWriteIn;
					
					dataMemWriteOut <= dataMemWriteIn;
					
					memToRegOut <= memToRegIn;
					
					regWriteAddrOut <= regWriteAddrIn;
					
					shiftOutputOut <= shiftOutputIn; 
            end if;
			end if;
	end process;
END description;

