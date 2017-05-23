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

entity id_exReg IS PORT(
	load  : IN STD_LOGIC; -- load/enable.
	clr : IN STD_LOGIC; -- async. clear.
	clk : IN STD_LOGIC; -- clock.
	
	RD1In   : IN std_logic_vector(15 downto 0):="0000000000000000"; 
	RD1Out   : out std_logic_vector(15 downto 0):="0000000000000000";
	
	RD2In   : IN std_logic_vector(15 downto 0):="0000000000000000"; 
	RD2Out   : out std_logic_vector(15 downto 0):="0000000000000000";
	
	rsIn : IN std_logic_vector(2 downto 0):="000";
	rsOut : out std_logic_vector(2 downto 0):="000"; 
	
	rtin : IN std_logic_vector(2 downto 0):="000";
	rtOut : out std_logic_vector(2 downto 0):="000";
	
	rdIn : IN std_logic_vector(2 downto 0):="000";
	rdOut : out std_logic_vector(2 downto 0):="000";
	
	shiftAmountIn : in std_logic_vector(2 downto 0):="000";
	shiftAmountOut : out std_logic_vector(2 downto 0):="000";
	
	instructExtIn : in std_logic_vector(15 downto 0):="0000000000000000";
	instructExtOut : out std_logic_vector(15 downto 0):="0000000000000000";
	
	ALUCtrlIn : in std_logic_vector(2 downto 0):="000";
	ALUCtrlOut : OUT std_logic_vector(2 downto 0):="000";
	
	shiftDirectionIn : In STD_LOGIC:='0';
	shiftDirectionOut : OUT STD_LOGIC:='0';
	
	shiftEnableIn : in STD_LOGIC:='0';
	shiftEnableOut : OUT STD_LOGIC:='0';
	
	regWriteIn : in STD_LOGIC:='0';
	regWriteOut : OUT STD_LOGIC:='0';
	
	dataMemWriteIn : in STD_LOGIC:='0';
	dataMemWriteOut : OUT STD_LOGIC:='0';
	
	memToRegIn : in STD_LOGIC:='0';
	memToRegOut : OUT STD_LOGIC:='0';
	
	regDestIn : in STD_LOGIC:='0';
	regDestOut : OUT STD_LOGIC:='0';
	
	aluSrcIn :in STD_LOGIC:='0';
	aluSrcOut :OUT STD_LOGIC:='0'; -- output.

	instruction_copy_in : IN std_logic_vector(15 downto 0):="0000000000000000";
	instruction_copy_out : OUT std_logic_vector(15 downto 0):="0000000000000000");
	
end id_exReg;

ARCHITECTURE description OF id_exReg IS


BEGIN
    process(clk,clr,RD1In,RD2In,rsIn,rtIn,rdIn,shiftAmountIn,instructExtIn,ALUCtrlIn,shiftDirectionIn,shiftEnableIn,regWriteIn,dataMemWriteIn,memToRegIn,regDestIn,aluSrcIn,instruction_copy_in)
    begin
        if clr = '1' then --clears the registar
            RD1Out <= "0000000000000000";
				RD2Out <= "0000000000000000";
				rsOut <= "000";
				rtOut <= "000";
				rdOut <= "000";
				shiftAmountOut <= "000";
				instructExtOut <= "0000000000000000";
				ALUCtrlOut <= "000";
				shiftDirectionOut <= '0';
				shiftEnableOut <= '0';
				regWriteOut <= '0';
				dataMemWriteOut <= '0';
				memToRegOut <= '0';
				regDestOut <= '0';
				aluSrcOut <= '0';
				instruction_copy_out <= "0000000000000000";
        elsif falling_edge(clk) then 
            if load = '1' then --loads registar
					RD1Out <= RD1In;
               RD2Out <= RD2In; 
					rsOut <= rsIn;
					rtOut <= rtIn;
					rdOut <= rdIn;
					shiftAmountOut <= shiftAmountIn;
					instructExtOut <= instructExtIn;
					ALUCtrlOut <= ALUCtrlIn;
					shiftDirectionOut <= shiftDirectionIn;
					shiftEnableOut <= shiftEnableIn;
					regWriteOut <= regWriteIn;
					dataMemWriteOut <= dataMemWriteIn;
					memToRegOut <= memToRegIn;
					regDestOut <= regDestIn;
					aluSrcOut <= aluSrcIn;
					instruction_copy_out <= instruction_copy_in;
            end if;
			end if;
			
	end process;
END description;

