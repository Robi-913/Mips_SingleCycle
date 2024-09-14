----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2024 04:48:03 PM
-- Design Name: 
-- Module Name: DecID - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DecID is
    Port ( 
        RegWrite : in std_logic;
        Instr : in std_logic_vector(25 downto 0);
        RegDst : in std_logic;
        ExtOp : in std_logic;
        WD : in std_logic_vector(31 downto 0);
        RD1 : out std_logic_vector(31 downto 0);
        RD2 : out std_logic_vector(31 downto 0);
        Ext_imm : out std_logic_vector(31 downto 0);
        func : out std_logic_vector(5 downto 0);
        sa : out std_logic_vector(4 downto 0);
        clk : in std_logic;
        en : in std_logic
    );
end DecID;

architecture Behavioral of DecID is
    signal muxout: std_logic_vector(4 downto 0) := (others => '0');

    component reg_file is
        port (
            clk   : in  std_logic;
            en    : in std_logic;
            ra1   : in  std_logic_vector(4 downto 0);
            ra2   : in  std_logic_vector(4 downto 0);
            wa    : in  std_logic_vector(4 downto 0);
            wd    : in  std_logic_vector(31 downto 0);
            regwr : in  std_logic;
            rd1   : out std_logic_vector(31 downto 0);
            rd2   : out std_logic_vector(31 downto 0)
        );
    end component;

begin

    -- Mux logic to choose between two registers
    process(Instr, RegDst)
    begin
        if RegDst = '0' then 
            muxout <= Instr(20 downto 16);
        else 
            muxout <= Instr(15 downto 11);
        end if;
    end process;

    -- Sign extension or zero extension based on ExtOp
    process(ExtOp, Instr)
    begin
        if ExtOp = '0' then 
            Ext_imm <= "0000000000000000" & Instr(15 downto 0);
        else
            if Instr(15) = '0' then
                Ext_imm <= "0000000000000000" & Instr(15 downto 0);
            else
                Ext_imm <= "1111111111111111" & Instr(15 downto 0);
            end if;    
        end if; 
    end process;

    -- Assigning func and sa directly from Instr
    func <= Instr(5 downto 0);
    sa <= Instr(10 downto 6);
    
    -- Correct port mapping for the reg_file component
    reg_file_inst: reg_file port map(
        clk => clk,
        en => en,
        ra1 => Instr(25 downto 21),
        ra2 => Instr(20 downto 16),
        wa => muxout,
        wd => WD,
        regwr => RegWrite,
        rd1 => RD1,
        rd2 => RD2
    );

end Behavioral;
