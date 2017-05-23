----------------------------------------------------------------------------------
-- Names: Andrew Mackey, Carter Noble
-- Lab#: 3
-- Course: 3380
-- Register File
--
-- Create Date:    09:48:24 02/04/2015 
-- Design Name:    register file
-- Module Name:    regFile - Behavioral 
-- Project Name:   register file
-- Target Devices: none
-- Tool versions:  design suite 14
-- Description:    forced block memory reg file
--
-- Revision: 1
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regFile is
	generic (--generic width for easy implementation
		Dwidth : integer := 16;
		Awidth : integer := 3); -- 2**3=8 registers
	port (--2 reads 1 write
		ReadAddr1, ReadAddr2, WriteAddr : in std_logic_vector(Awidth-1 downto 0);
		DataOut1, DataOut2  : out std_logic_vector(Dwidth-1 downto 0);
		DataToLed : out std_logic_vector(Dwidth-1 downto 0);
		DataIn : in std_logic_vector(Dwidth-1 downto 0);
		Wen, clk : in std_logic);
end regFile;

architecture Behavioral of regFile is

type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
signal memory: memType:=(others=> "0000000000000000" );

--attribute ram_style: string;
--attribute ram_style of memory : signal is "block";--force to block ram

begin
process(clk,Wen,ReadAddr1,ReadAddr2,WriteAddr,memory)
	begin
		memory(0) <= "0000000000000000"; --always have R0 set to zero
		if(clk'event and clk='1') then --rising edge 
			if(Wen='1') then--write only when clk is high and write enable is 1
				memory(conv_integer(WriteAddr)) <= DataIn;
			end if;
			--always read/output on high clock	
		end if;
		
		DataOut1<=memory(conv_integer(ReadAddr1));
		DataOut2<=memory(conv_integer(ReadAddr2));

		DataToLed <= memory(6); --change to what ever led to read from

end process;
end Behavioral;