----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:10 02/08/2017 
-- Design Name: 
-- Module Name:    Processor - Behavioral 
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
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Processor is port(
	clk: in std_logic:= '0';
	mclk: in std_logic:= '0';
	segment : out  STD_LOGIC_VECTOR (3 downto 0);
	leds: out std_logic_vector(7 downto 0));
end Processor;

architecture Behavioral of Processor is


component ALU_Behavioural is
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
end component;

component Zreg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000";
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT std_logic_vector(15 downto 0) -- output.
);
end component;

component regFile is
	generic (--generic width for easy implementation
		Dwidth : integer := 16;
		Awidth : integer := 3); -- 2**3=8 registers
	port (--2 reads 1 write
		ReadAddr1, ReadAddr2, WriteAddr : in std_logic_vector(Awidth-1 downto 0);
		DataOut1, DataOut2  : out std_logic_vector(Dwidth-1 downto 0);
		DataToLed : out std_logic_vector(Dwidth-1 downto 0);
		DataIn : in std_logic_vector(Dwidth-1 downto 0);
		Wen, clk : in std_logic);
end component;

component shifter is
    Port ( shamt : in  STD_LOGIC_VECTOR (2 downto 0);
           shftDir : in  STD_LOGIC;
           shftEn : in  STD_LOGIC;
           dataIn : in  STD_LOGIC_VECTOR (15 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component signExtender is
    Port ( Din : in  STD_LOGIC_VECTOR (5 downto 0);
           Dout : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component PCreg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000";
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
	 stall : IN STD_LOGIC := '0';
    q   : OUT std_logic_vector(15 downto 0):="0000000000000000"); -- output.
end component;

component incrementor is
    Port ( PCin : in  STD_LOGIC_VECTOR (15 downto 0);
			  stall : in STD_LOGIC;
           PCplusOne : out  STD_LOGIC_VECTOR (15 downto 0);
           incr : in  STD_LOGIC);
end component;

component InstructionMem is
generic (
    Dwidth : integer := 16; -- Each location is 16 bits
    Awidth : integer := 8); -- 8 Address lines (i.e., 64 locations)
port (
    we,clk: in std_logic;
    addr: in std_logic_vector(Awidth-1 downto 0);
    din: in std_logic_vector(Dwidth-1 downto 0);
    dout: out std_logic_vector(Dwidth-1 downto 0)
);
end component;

component DataMem is
generic (
    Dwidth : integer := 16; -- Each location is 16 bits
    Awidth : integer := 8); -- 8 Address lines (i.e., 64 locations)
port (
    we,clk: in std_logic;
    addr: in std_logic_vector(Awidth-1 downto 0);
    din: in std_logic_vector(Dwidth-1 downto 0);
    dout: out std_logic_vector(Dwidth-1 downto 0)
);
end component;

component MUX_2to1_16bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (15 downto 0);
           i1 : in  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC);
end component;

component MUX_2to1_3bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (2 downto 0);
           i1 : in  STD_LOGIC_VECTOR (2 downto 0);
           c : out  STD_LOGIC_VECTOR (2 downto 0);
           sel : in  STD_LOGIC);
end component;

component Controller is Port(
	opCode  : IN std_logic_vector(3 downto 0):="0000";
	shamnt : IN std_logic_vector(2 downto 0);
	ALUCtrl : OUT std_logic_vector(2 downto 0);
	memToReg : OUT std_logic;
	shiftDirection : OUT STD_LOGIC;
	shiftEnable : OUT STD_LOGIC;
	regWrite : OUT STD_LOGIC;
	dataMemWrite : OUT STD_LOGIC;
	regDest : OUT STD_LOGIC;
	PCInc: OUT STD_LOGIC;
	aluSrc: OUT STD_LOGIC);
end component;

component SevenSegController is Port( 
	input : in  STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";    
	mclk: in std_logic;
	segment : out  STD_LOGIC_VECTOR (3 downto 0);
	leds: out std_logic_vector(7 downto 0));
end component;

component IRreg IS PORT(
    d   : IN std_logic_vector(15 downto 0):="0000000000000000"; --instruction
    load  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
	 stall : IN STD_LOGIC;
    q   : OUT std_logic_vector(15 downto 0):="0000000000000000"); -- output.
end component;

component id_exReg IS PORT(
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
end component;

component ex_memReg IS PORT(
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
end component;

component mem_wbReg IS PORT(
	load  : IN STD_LOGIC; -- load/enable.
	clr : IN STD_LOGIC; -- async. clear.
	clk : IN STD_LOGIC; -- clock.	
	
	regWriteAddrIn : in STD_LOGIC_VECTOR(2 downto 0):="000";
	regWriteAddrOut : out STD_LOGIC_VECTOR(2 downto 0):="000";
	
	memToRegIn : in STD_LOGIC:='0';
	memToRegOut : OUT STD_LOGIC:='0';
	
	regWriteIn : in STD_LOGIC:='0';
	regWriteOut : OUT STD_LOGIC:='0';
	
	dataMemOutIn : in STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	dataMemOutOut : out STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	
	shiftOutputIn : in STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
	shiftOutputOut : out STD_LOGIC_VECTOR(15 downto 0):="0000000000000000"); -- output.
end component;

component hazardDetect IS PORT(
    if_idrs : IN std_logic_vector(2 downto 0):="000";
	 if_idrt : IN std_logic_vector(2 downto 0):="000";
	 id_exrt : IN std_logic_vector(2 downto 0):="000";
	 ex_memrd : IN std_logic_vector(2 downto 0):="000";
	 mem_wbrd : IN std_logic_vector(2 downto 0):="000";
	 instruction_copy : IN std_logic_vector(15 downto 0):="0000000000000000";
	 id_exMemRead : IN std_logic := '0';
	 clk : IN std_logic := '0';
    stall   : OUT std_logic:='0'); -- output.
end component;

component aluAInputMux_4to1_16bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (15 downto 0);
           i1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  i2 : in  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component;

component aluBInputMux_4to1_16bit is
    Port ( i0 : in  STD_LOGIC_VECTOR (15 downto 0);
           i1 : in  STD_LOGIC_VECTOR (15 downto 0);
			  i2 : in  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component;

component forwardingUnit is
    Port ( if_idrs : IN std_logic_vector(2 downto 0):="000";
			  if_idrt : IN std_logic_vector(2 downto 0):="000";
			  id_exrs : IN std_logic_vector(2 downto 0):="000";
			  id_exrt : IN std_logic_vector(2 downto 0):="000";
			  ex_memrd : IN std_logic_vector(2 downto 0):="000";
			  mem_wbrd : IN std_logic_vector(2 downto 0):="000";
			  ex_memRegWrite : IN std_logic := '0';
			  mem_wbRegWrite : IN std_logic := '0';
           forwardA : OUT std_logic_vector(1 downto 0):="00";
			  forwardB : OUT std_logic_vector(1 downto 0):="00");
end component;

--signals for shifter
signal shiftAmntSig : STD_LOGIC_VECTOR(2 downto 0);
signal shiftAmntRegSig : STD_LOGIC_VECTOR(2 downto 0);
signal shiftOutputSig : STD_LOGIC_VECTOR(15 downto 0);
signal instructMemOutSig : STD_LOGIC_VECTOR(15 downto 0);
signal instructMemOutRegSig : STD_LOGIC_VECTOR(15 downto 0);
signal ALUCtrlSig : STD_LOGIC_VECTOR(2 downto 0);
signal regDataInSig : STD_LOGIC_VECTOR(15 downto 0);
signal dataToLedOut : STD_LOGIC_VECTOR(15 downto 0);
signal readData1Sig : STD_LOGIC_VECTOR(15 downto 0);
signal readData1RegSig : STD_LOGIC_VECTOR(15 downto 0);
signal readData1RegRegSig : STD_LOGIC_VECTOR(15 downto 0);
signal readData2Sig : STD_LOGIC_VECTOR(15 downto 0);
signal readData2RegSig : STD_LOGIC_VECTOR(15 downto 0);
signal regWriteAddrSig : STD_LOGIC_VECTOR(2 downto 0);
signal rsSig : STD_LOGIC_VECTOR(2 downto 0);
signal rsregsig : STD_LOGIC_VECTOR(2 downto 0);
signal rtSig : STD_LOGIC_VECTOR(2 downto 0);
signal rtregsig : STD_LOGIC_VECTOR(2 downto 0);
signal dataMemAddrSig : STD_LOGIC_VECTOR(7 downto 0);
signal dataMemInSig : STD_LOGIC_VECTOR(15 downto 0);
signal dataMemOutSig : STD_LOGIC_VECTOR(15 downto 0);
signal writeRegMuxOutSig : STD_LOGIC_VECTOR(2 downto 0);
signal rdSig : STD_LOGIC_VECTOR(2 downto 0);
signal rdregsig : STD_LOGIC_VECTOR(2 downto 0);
signal opCodeSig : STD_LOGIC_VECTOR(3 downto 0);
signal PCplusOneSig : STD_LOGIC_VECTOR(15 downto 0);
signal PCoutSig : STD_LOGIC_VECTOR(15 downto 0);
signal aluOut : STD_LOGIC_VECTOR(15 downto 0);
signal instructMemAddrSig : STD_LOGIC_VECTOR(7 downto 0);
signal aluMuxOut : STD_LOGIC_VECTOR(15 downto 0);
signal instructExtSig : STD_LOGIC_VECTOR(15 downto 0);
signal aluctrlregsig : STD_LOGIC_VECTOR(2 downto 0); --output
signal instructextregsig : STD_LOGIC_VECTOR(15 downto 0); --output
signal shiftoutputregsig : STD_LOGIC_VECTOR(15 downto 0);
signal shiftoutputregregsig : STD_LOGIC_VECTOR(15 downto 0);
signal regwriteaddrregsig : STD_LOGIC_VECTOR(2 downto 0);
signal readData2RegRegSig : STD_LOGIC_VECTOR(15 downto 0);
signal dataMemOutRegSig : STD_LOGIC_VECTOR(15 downto 0);
signal aluAMuxOutSig : STD_LOGIC_VECTOR(15 downto 0);
signal aluBMuxOutSig : STD_LOGIC_VECTOR(15 downto 0);

--Control Signals
signal shiftDirectionSig : STD_LOGIC;
signal shiftEnableSig : STD_LOGIC;
signal regWriteSig : STD_LOGIC;
signal carryInSig : STD_LOGIC;
signal carryOutSig : STD_LOGIC;
signal overFlowSig : STD_LOGIC;
signal dataMemWriteSig : STD_LOGIC;
signal memToRegSig : STD_LOGIC;
signal regDestSig : STD_LOGIC;
signal PCIncrSig : STD_LOGIC;
signal aluSrcSig : STD_LOGIC;
signal alusrcregsig : STD_LOGIC;
signal dataMemWriteRegSig : STD_LOGIC;
signal datamemaddrregsig : STD_LOGIC_vector(7 downto 0);
signal regdestregsig : STD_LOGIC;
signal memtoregregsig : STD_LOGIC;
signal memtoregregregsig : STD_LOGIC;
signal regwriteregsig : STD_LOGIC;
signal regwriteregregsig : STD_LOGIC;
signal regwriteregregregsig : STD_LOGIC;
signal shiftenableregsig : STD_LOGIC;
signal shiftdirectionregsig : STD_LOGIC;
signal memToRegRegRegRegSig : STD_LOGIC;
signal dataMemWriteRegRegSig : STD_LOGIC;
signal regWriteAddrRegRegSig : STD_LOGIC_Vector(2 downto 0);
signal stallSig : STD_lOGIC;
signal forwardASig : STD_LOGIC_Vector(1 downto 0);
signal forwardBSig : STD_LOGIC_Vector(1 downto 0);
--Clock Signals
signal clkdiv : std_logic_vector(0 downto 0);		-- counter for clock divider
--signal clk : std_logic;

signal instructMemOutRegRegSig : STD_LOGIC_Vector(15 downto 0);

begin
	
	
--	process (mclk)						-- create system clock divder
--	begin
--		if mclk = '1' and mclk'Event then	
--			clkdiv <= clkdiv +1;
--		end if;	    
--	end process;

--	clk <= clkdiv(0);
	rsSig <= instructMemOutRegSig(11 downto 9);
	rtSig <= instructMemOutRegSig(8 downto 6);
	rdSig <= instructMemOutRegSig(5 downto 3);
	shiftAmntSig <= instructMemOutRegSig(2 downto 0);
	opCodeSig <= instructMemOutRegSig(15 downto 12);
	dataMemAddrSig <= shiftOutputRegSig(7 downto 0);
	instructMemAddrSig <= PCoutSig(7 downto 0);
	instructExtSig(15 downto 6) <= "0000000000";
	instructExtSig(5 downto 0) <= instructMemOutRegSig(5 downto 0);
	
	PCRegister : PCReg port map(
		d => PCplusOneSig,
		load => PCIncrSig,
		clr => '0',
		clk => clk,
		stall => stallSig,
		q => PCoutSig);
		
	incr : incrementor port map(
		PCin => PCoutSig,
		stall => stallSig,
		PCplusOne => PCplusOneSig,
		incr => PCIncrSig);
		
	ShifterNew : shifter port map(
		shamt => shiftAmntRegSig,
      shftDir => shiftDirectionRegSig,
      shftEn => shiftEnableRegSig,
      dataIn => aluOut,
      dataOut => shiftOutputSig);
	
	InstructMem : InstructionMem port map(
		we => '0',
		clk => clk,
		addr => instructMemAddrSig,
		din => "0000000000000000",
		dout => instructMemOutSig);
			
	ALU : ALU_Behavioural port map(
		sel => ALUCtrlRegSig,
		x => aluAMuxOutSig,
		y => aluMuxOut,
		c_in => carryInSig,
		c_out => carryInSig,
		overflow => overFlowSig,
		z => aluOut);
				
	registers : regFile port map(
		ReadAddr1 => rsSig,
		ReadAddr2 => rtSig,
		WriteAddr => regWriteAddrRegRegSig,
		DataOut1=> readData1Sig,
		DataOut2 => readData2Sig,
		DataToLed => dataToLedOut,
		DataIn => regDataInSig,
		Wen => regWriteSig,
		clk => clk);
		
	dataMemory : DataMem port map(
		we => dataMemWriteRegRegSig,
		clk => clk,
		addr => dataMemAddrSig,
		din => readData2RegRegSig,
		dout => dataMemOutSig);
		
	datatMemMux : MUX_2to1_16bit port map(
		 i0 => shiftOutputRegRegSig,
       i1 => dataMemOutRegSig,
       c => regDataInSig,
       sel => memToRegRegRegRegSig);
		 
	aluInputMux : MUX_2to1_16bit port map(
		 i0 => aluBMuxOutSig,
       i1 => instructExtRegSig,
       c => aluMuxOut,
       sel => aluSrcRegSig);
		 
	writeRegMux : MUX_2to1_3bit port map(
		 i0 => rtRegSig,
       i1 => rdRegSig,
       c => regWriteAddrSig,
       sel => regDestRegSig);
	
	Control : Controller port map(
		opCode => opCodeSig,
		shamnt => shiftAmntSig,
		ALUCtrl => ALUCtrlSig,
		shiftDirection => shiftDirectionSig,
		shiftEnable => shiftEnableSig,
		regWrite => regWriteSig,
		dataMemWrite => dataMemWriteSig,
		memToReg => memToRegSig,
		regDest => regDestSig,
		PCInc => PCIncrSig,
		aluSrc => aluSrcSig);
		
	sevenSeg : SevenSegController port map(
		input => dataToLedOut,
		mclk => mclk,
		segment => segment,
		leds =>leds);
	
	instructReg : IRreg port map(
		d => instructMemOutSig,
		load =>'1',
		clr => '0',
		clk => clk,
		stall => stallSig,
		q =>instructMemOutRegSig);
		
	id_exRegister :id_exReg port map(
		load =>'1',
		clr=>'0',
		clk=>clk,
		RD1In=>readData1Sig,
		RD1Out=>readData1RegSig,
		RD2In=>readData2Sig,
		RD2Out=>readData2RegSig,
		rsIn=>rsSig,
		rsOut=>rsRegSig,
		rtin=>rtSig,
		rtOut=>rtRegSig,
		rdIn=>rdSig,
		rdOut=>rdRegSig,
		shiftAmountIn=>shiftAmntSig,
		shiftAmountOut=>shiftAmntRegSig,
		instructExtIn=>instructExtSig,
		instructExtOut=>instructExtRegSig,
		ALUCtrlIn=>ALUCtrlSig,
		ALUCtrlOut=>ALUCtrlRegSig,
		shiftDirectionIn=>shiftDirectionSig,
		shiftDirectionOut=>shiftDirectionRegSig,
		shiftEnableIn=>shiftEnableSig,
		shiftEnableOut=>shiftEnableRegSig,
		regWriteIn=>regWriteSig,
		regWriteOut=>regWriteRegSig,
		dataMemWriteIn=>dataMemWriteSig,
		dataMemWriteOut=>dataMemWriteRegSig,
		memToRegIn=>memToRegSig,
		memToRegOut=>memToRegRegSig,
		regDestIn=>regDestSig,
		regDestOut=>regDestRegSig,
		aluSrcIn=>aluSrcSig,
		aluSrcOut=>aluSrcRegSig,
		instruction_copy_in => instructMemOutRegSig,
		instruction_copy_out =>  instructMemOutRegRegSig);
		
	ex_memRegister : ex_memReg port map(	
		load=>'1',
		clr=>'0',
		clk=>clk,
		RD2In=>readData2RegSig,
		RD2Out=>readData2RegRegSig,
		regWriteIn=>regWriteRegSig,
		regWriteOut=>regWriteRegRegSig,
		dataMemWriteIn=>dataMemWriteRegSig,
		dataMemWriteOut=>dataMemWriteRegRegSig,
		memToRegIn=>memToRegRegSig,
		memToRegOut=>memToRegRegRegSig,
		regWriteAddrIn=>regWriteAddrSig,
		regWriteAddrOut=>regWriteAddrRegSig,
		shiftOutputIn=>shiftOutputSig,
		shiftOutputOut=>shiftOutputRegSig);

	mem_wbRegister : mem_wbReg port map(
		load=>'1',
		clr=>'0',
		clk=>clk,
		regWriteAddrIn=>regWriteAddrRegSig,
		regWriteAddrOut=>regWriteAddrRegRegSig,
		
		memToRegIn=>memToRegRegRegSig,
		memToRegOut=>memToRegRegRegRegSig,
		
		regWriteIn=>regWriteRegRegSig,
		regWriteOut=>regWriteRegRegRegSig,
		
		dataMemOutIn=>dataMemOutSig,
		dataMemOutOut=>dataMemOutRegSig,
		
		shiftOutputIn=>shiftOutputRegSig,
		shiftOutputOut=>shiftOutputRegRegSig);
	
	hazCtrl : hazardDetect port map(
		if_idrs=>rsSig,
		if_idrt=>rtSig,
		id_exrt=>rtRegSig,
		ex_memrd=>regWriteAddrRegSig,
		mem_wbrd=>regWriteAddrRegRegSig,
		id_exMemRead=>memToRegRegSig,
		stall=>stallSig,
		clk=>clk,
		instruction_copy => instructMemOutRegRegSig);
	
	aluAMux : aluAInputMux_4to1_16bit port map(
		i0 =>readData1RegSig,
		i1 =>regDataInSig,
		i2 =>shiftOutputRegSig,
		c =>aluAMuxOutSig,
		sel =>forwardASig);
	
	aluBMux : aluBInputMux_4to1_16bit port map(
		i0 =>readData2RegSig,
		i1 =>regDataInSig,
		i2 =>shiftOutputRegSig,
		c =>aluBMuxOutSig,
		sel =>forwardBSig);	

	frwdUnit : forwardingUnit port map(
		if_idrs =>rsSig,
		if_idrt =>rtSig,
		id_exrs =>rsRegSig,
		id_exrt =>rtRegSig,
		ex_memrd =>regWriteAddrRegSig,
		mem_wbrd =>regWriteAddrRegRegSig,
		ex_memRegWrite=>regWriteRegRegSig,
		mem_wbRegWrite=>regWriteRegRegRegSig,
		forwardA=>forwardASig,
		forwardB=>forwardBSig);


end Behavioral;

