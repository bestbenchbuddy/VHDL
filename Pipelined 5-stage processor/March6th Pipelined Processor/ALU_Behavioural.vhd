----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:12 01/31/2015 
-- Design Name: 
-- Module Name:    ALU_Behavioural - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Behavioural is
    generic (
			  Dwidth : integer := 16);
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           x : in  STD_LOGIC_VECTOR (Dwidth-1 downto 0);
           y : in  STD_LOGIC_VECTOR (Dwidth-1 downto 0);
           c_in : in  STD_LOGIC;
           c_out : out  STD_LOGIC;
           overflow : out  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (Dwidth-1 downto 0));
           --lt : out  STD_LOGIC);
end ALU_Behavioural;

architecture Behavioral of ALU_Behavioural is

--signal xSigned: signed (Dwidth downto 0):= (others => '0');
--signal ySigned: signed (Dwidth downto 0):= (others => '0');
signal xSignExt: STD_Logic_VECTOR(Dwidth downto 0):= (others => '0');
signal ySignExt: STD_Logic_VECTOR(Dwidth downto 0):= (others => '0');
signal xTemp: STD_Logic_VECTOR(Dwidth downto 0):= (others => '0');
signal yTemp: STD_Logic_VECTOR(Dwidth downto 0):= (others => '0');
signal zTemp: STD_Logic_VECTOR(Dwidth downto 0):= (others => '0');



begin 


--xSigned(Dwidth downto 0) <= signed(xSignExt);

--ySigned(Dwidth downto 0) <= signed(ySignExt);

--lt <= '0';
process(xTemp, yTemp,zTemp, sel,x,y,xSignExt,ySignExt)

begin
	
	xTemp(Dwidth-1 downto 0) <= x(Dwidth-1 downto 0);
yTemp(Dwidth-1 downto 0) <= y(Dwidth-1 downto 0);

xSignExt(Dwidth-4 downto 0) <= x(Dwidth-4 downto 0);
ySignExt(Dwidth-4 downto 0) <= y(Dwidth-4 downto 0);

--signed extention
xSignExt(Dwidth) <= x(Dwidth-4);
xSignExt(Dwidth-1) <= x(Dwidth-4);
xSignExt(Dwidth-2) <= x(Dwidth-4);
xSignExt(Dwidth-3) <= x(Dwidth-4);
ySignExt(Dwidth) <= y(Dwidth-4);
ySignExt(Dwidth-1) <= y(Dwidth-4);
ySignExt(Dwidth-2) <= y(Dwidth-4);
ySignExt(Dwidth-3) <= y(Dwidth-4);

	case sel is
		when "000" =>
			zTemp <= xTemp and yTemp; --and
		when "001" =>
			zTemp <= xTemp or yTemp; --or
		when "010" =>
			zTemp <= xTemp +  yTemp; --unsigned add
		when "011" =>
			zTemp <= xTemp xor yTemp; --xor
		when "100" =>
			--zTempSigned <= xSigned + ySigned; -- signed addition
			zTemp <= xSignExt + ySignExt;
		when "101" =>
			--zTempSigned <= xSigned - ySigned; --signed subtract (beq)
			zTemp <= xSignExt - ySignExt;
		when "110" => --shift operation do nothing
			zTemp <= yTemp;
		when "111" => --shift operation do nothing
			zTemp <= yTemp;
		when others =>
			zTemp <= "00000000000000000";
			--lt <= '0';
	end case;
	
end process;
	c_out <= zTemp(Dwidth);
	overflow <= zTemp(Dwidth) xor c_in;
	z(Dwidth-1 downto 0) <= zTemp(Dwidth-1 downto 0);

end Behavioral;

