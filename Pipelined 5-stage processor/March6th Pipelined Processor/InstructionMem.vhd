library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity InstructionMem is
generic (
    Dwidth : integer := 16; -- Each location is 16 bits
    Awidth : integer := 8); -- 8 Address lines (i.e., 64 locations)
port (
    we,clk: in std_logic;
    addr: in std_logic_vector(Awidth-1 downto 0);
    din: in std_logic_vector(Dwidth-1 downto 0);
    dout: out std_logic_vector(Dwidth-1 downto 0)
);
end InstructionMem;
architecture Behavioural of InstructionMem is
type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
-- The first 8 locations are initialized, the rest set to 0.
signal memory: memType:=
  (--|op|rs|rt|rd|
    "1000000001000000",--ld R1 R0(0) 3
    "1000000010000001",--ld R2 R0(1) 4
	 "1000000011000010",--ld R3 R0(2) 2
    "0010001011100000",--add R4 R1 R3 Output: 5
	 "0010100010101000",--add R5 R4 R2 Output: 9
	 "0010001010110000",--add R6 R1 R2 Output: 7
	 "0010001010111000",--add R7 R1 R2 Output: 7
	 "1000000011000011",--ld R3 R0(3) 8
    "0010001011110000",--add R6 R1 R3 Output: 11
	 --------------------------------------------
    "0000010100101000",--and R2 R4 R5 Output: 4
	 "0000010100101000",--and R2 R4 R5 Output: 4
	 "0000010100101000",--and R2 R4 R5 Output: 4
	 "0000010100101000",--and R2 R4 R5 Output: 4
	 "0000010100101000",--and R2 R4 R5 Output: 4
	 "0000010100101000",--and R2 R4 R5 Output: 4
	 "0011001011110000",--xor R1 R3 R6 Output: 1
    "0001010110111000",--or R2 R6 R7 Output: 5
    "0100001010011000",--signed add R1 R2 R3 Output: 7
    "0101001010011000",--signed sub R1 R2 R3 Output: -1
	 "0110010010000100",--shift left R2 R2 
	 "0111010010000001",--shift right R2 R2
	 "1001000010000101",--sw R2 R0(5) 32
    others=> "0000000000000000" );
begin
    process(clk,addr)--addr
    begin
        if(clk'event and clk='1') then
            if(we='1') then
                memory(conv_integer(addr)) <= din;
                -- WRITE-FIRST semantic for Spartan6 blockRAM.
                -- Note that blockRAM also support READ-FIRST and NO-CHANGE semantics.
                -- Refer to the Xilinx XST document for Spartan6 devices
                -- xst_v6s6.pdf, pp.176 for sample VHD.
                dout<=din;
				end if;
			end if;
			dout<=memory(conv_integer(addr));
    end process;
end Behavioural;