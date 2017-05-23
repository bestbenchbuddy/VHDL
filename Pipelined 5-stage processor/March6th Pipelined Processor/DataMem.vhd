library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity DataMem is
generic (
    Dwidth : integer := 16; -- Each location is 16 bits
    Awidth : integer := 8); -- 8 Address lines (i.e., 64 locations)
port (
    we,clk: in std_logic;
    addr: in std_logic_vector(Awidth-1 downto 0);
    din: in std_logic_vector(Dwidth-1 downto 0);
    dout: out std_logic_vector(Dwidth-1 downto 0)
);
end DataMem;
architecture Behavioural of DataMem is
type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
-- The first 8 locations are initialized, the rest set to 0.
signal memory: memType:=
    (
    "0000000000000011",--3
    "0000000000000100",--4
    "0000000000000010",--2
	 "0000000000001000",--8
    others=> "0000000000000000" );
begin
    process(clk,addr)
    begin
        if(clk'event and clk='1') then --rising edge
		  
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