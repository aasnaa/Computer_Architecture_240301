library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Necessary for the to_unsigned conversion loops

entity comparator_2bit_f_tb is
-- Testbenches do not have input/output ports
end comparator_2bit_f_tb;

architecture Behavioral of comparator_2bit_f_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component comparator_2bit_f
        Port ( A       : in  STD_LOGIC_VECTOR (1 downto 0);
               B       : in  STD_LOGIC_VECTOR (1 downto 0);
               greater : out STD_LOGIC;
               equal   : out STD_LOGIC;
               less    : out STD_LOGIC);
    end component;
    
    -- Signals to connect to the UUT
    signal A_tb       : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal B_tb       : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal greater_tb : STD_LOGIC;
    signal equal_tb   : STD_LOGIC;
    signal less_tb    : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: comparator_2bit_f PORT MAP (
          A       => A_tb,
          B       => B_tb,
          greater => greater_tb,
          equal   => equal_tb,
          less    => less_tb
        );

    -- Stimulus process to step through all input combinations
    stim_proc: process
    begin		
        -- Nested loops to test all 16 states (A: 0-3, B: 0-3)
        for i in 0 to 3 loop
            for j in 0 to 3 loop
                A_tb <= std_logic_vector(to_unsigned(i, 2));
                B_tb <= std_logic_vector(to_unsigned(j, 2));
                wait for 10 ns; -- Holds state for 10ns in the waveform
            end loop;
        end loop;

        -- Suspend the process indefinitely so simulation doesn't loop
        wait;
    end process;

end Behavioral;
