library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity lab1mem is
generic (
    Dwidth : integer := 16; -- Each location is 16 bits
    Awidth : integer := 8); -- 8 Address lines (i.e., 64 locations)
port (
    we,clk: in std_logic;
    addr: in std_logic_vector(Awidth-1 downto 0);
    din: in std_logic_vector(Dwidth-1 downto 0);
    dout: out std_logic_vector(Dwidth-1 downto 0)
);
end lab1mem;
architecture Behavioural of lab1mem is
type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
-- The first 8 locations are initialized, the rest set to 0.
signal memory: memType:=
    (
    "0100000000000011",--add 3, expect 0x3 011
    "0100000000001111",--add 15, expect 0x12 10010
    "0110000000000111",-- xor 1, expect 0x15 10101
    "0100000000000001",-- add 1, expect 0x16 10110
    "0100000000000001",-- add 1, expect 0x17 10111
    "1010000000000011",-- sub 3, expect 0x14 10100
    "0000000001000000",
    "0000000010000000",
    others=> "0000000000000000" );
begin
    process(clk)
    begin
        if(clk'event and clk='1') then
            if(we='1') then
                memory(conv_integer(addr)) <= din;
                -- WRITE-FIRST semantic for Spartan6 blockRAM.
                -- Note that blockRAM also support READ-FIRST and NO-CHANGE semantics.
                -- Refer to the Xilinx XST document for Spartan6 devices
                -- xst_v6s6.pdf, pp.176 for sample VHD.
                dout<=din;
            else
                dout<=memory(conv_integer(addr));
            end if;
        end if;
    end process;
end Behavioural;