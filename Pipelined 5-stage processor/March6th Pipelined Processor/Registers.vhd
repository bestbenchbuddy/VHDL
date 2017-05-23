library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Registers is
generic (
    Dwidth : integer := 16; -- Each Register is 16 bits
    Awidth : integer := 3); -- 3 Address lines (i.e., 8 registers)
port (
    we,clk: in std_logic;
    WriteAddr, Read1Addr, Read2Addr, WriteData: in std_logic_vector(Dwidth-1 downto 0);
    Read1out, Read2out: out std_logic_vector(Dwidth-1 downto 0)
);
end Registers;
architecture Behavioural of Registers is
type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
-- All the locations are set to 0
signal memory: memType:=
    (
    "0000000000000000",
    "0000000000000000",
    others=> "0000000000000000" );
begin
    process(clk)
    begin
        if(clk'event and clk='1') then
            if(we='1') then
                memory(conv_integer(WriteAddr)) <= WriteData;
                -- WRITE-FIRST semantic for Spartan6 blockRAM.
                -- Note that blockRAM also support READ-FIRST and NO-CHANGE semantics.
                -- Refer to the Xilinx XST document for Spartan6 devices
                -- xst_v6s6.pdf, pp.176 for sample VHD.
            else
                Read1out<=memory(conv_integer(Read1Addr));
					 Read2out<=memory(conv_integer(Read2Addr));
            end if;
        end if;
    end process;
end Behavioural;