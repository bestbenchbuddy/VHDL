----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:13 02/08/2017 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controller is Port(
	opCode  : IN std_logic_vector(3 downto 0):="0000";
	shamnt : IN std_logic_vector(2 downto 0):="000";
	ALUCtrl : OUT std_logic_vector(2 downto 0);
	shiftDirection : OUT STD_LOGIC;
	shiftEnable : OUT STD_LOGIC;
   regWrite : OUT STD_LOGIC;
--	carryIn : IN STD_LOGIC;
--	carryOut : OUT STD_LOGIC;
--	overFlow : OUT STD_LOGIC;
	dataMemWrite : OUT STD_LOGIC;
	memToReg : OUT STD_LOGIC;
	regDest : OUT STD_LOGIC;
   PCInc: OUT STD_LOGIC;
	aluSrc :OUT STD_LOGIC);
end Controller;

architecture Behavioral of Controller is

begin

	process(opCode,shamnt)

	begin
		case opCode is
			when "0000" =>       --and
				ALUCtrl <= "000";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0001" =>       --or
				ALUCtrl <= "001";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0010" =>       --unsigned add
				ALUCtrl <= "010";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0011" =>       --xor
				ALUCtrl <= "011";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0100" =>       --signed add
				ALUCtrl <= "100";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0101" =>       --signed subtract
				ALUCtrl <= "101";
				memToReg <= '0';
				regDest <= '1';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				if(shamnt > "000")then
					shiftEnable <= '1';
				else
					shiftEnable <= '0';
				end if;
			when "0110" =>       --shift left
				ALUCtrl <= "110";
				memToReg <= '0';
				regDest <= '0';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				shiftEnable <= '1';
			when "0111" =>       --shift right
				ALUCtrl <= "111";
				memToReg <= '0';
				regDest <= '0';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '1';
				PCInc<='1';
				aluSrc<= '0';
				shiftEnable <= '1';
			when "1000" =>       --load
				ALUCtrl <= "010";
				memToReg <= '1';
				regDest <= '0';
				regWrite <= '1';
				dataMemWrite <= '0';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '1';
				shiftEnable <= '0';
			when "1001" =>       --store
				ALUCtrl <= "010";
				memToReg <= '0';
				regDest <= '0';
				regWrite <= '0';
				dataMemWrite <= '1';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '1';
				shiftEnable <= '0';
			when others =>
				ALUCtrl <= "110";
				memToReg <= '0';
				regDest <= '0';
				regWrite <= '1';
				dataMemWrite <= '1';
				shiftDirection <= '0';
				PCInc<='1';
				aluSrc<= '0';
				shiftEnable <= '0';
				
		end case;
		
	end process;
end Behavioral;

