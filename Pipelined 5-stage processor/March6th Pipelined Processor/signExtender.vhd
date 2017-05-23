----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:21 03/22/2015 
-- Design Name: 
-- Module Name:    signExtender - Behavioral 
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

entity signExtender is
    Port ( Din : in  STD_LOGIC_VECTOR (5 downto 0);
           Dout : out  STD_LOGIC_VECTOR (15 downto 0));
end signExtender;

architecture Behavioral of signExtender is

begin
	dout(15) <= Din(5);
	dout(14) <= Din(5);
	dout(13) <= Din(5);
	dout(12) <= Din(5);
	dout(11) <= Din(5);
	dout(10) <= Din(5);
	dout(9) <= Din(5);
	dout(8) <= Din(5);
	dout(7) <= Din(5);
	dout(6) <= Din(5);
	dout(5 downto 0) <= Din;


end Behavioral;

