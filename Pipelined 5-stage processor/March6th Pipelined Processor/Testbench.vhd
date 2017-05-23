--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:14 02/22/2017
-- Design Name:   
-- Module Name:   T:/NickandCarterWednesday/Lab2_Feb_15th/testBench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testBench IS
END testBench;
 
ARCHITECTURE behavior OF testBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processor
    PORT(
			clk : IN  std_logic;
         mclk : IN  std_logic;
         segment : OUT  std_logic_vector(3 downto 0);
         leds : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal mclk : std_logic := '0';

 	--Outputs
   signal segment : std_logic_vector(3 downto 0);
   signal leds : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant mclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processor PORT MAP (
			 clk => clk,
          mclk => mclk,
          segment => segment,
          leds => leds
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;
		clk <= '0';
      wait for 10 ns;
		clk <= '1';
      wait for 10 ns;

      -- insert stimulus here 
		wait;
   end process;

END;
