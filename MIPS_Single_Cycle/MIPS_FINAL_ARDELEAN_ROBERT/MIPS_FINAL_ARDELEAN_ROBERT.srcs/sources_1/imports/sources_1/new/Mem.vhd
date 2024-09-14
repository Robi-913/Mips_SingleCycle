library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mem is
    port(
        clk : in std_logic;
        en : in std_logic;
        MemWrite : in std_logic; 
        AluResIn : in std_logic_vector(31 downto 0); 
        WriteData : in std_logic_vector(31 downto 0); 
        MemData : out std_logic_vector(31 downto 0); 
        AluResOut: out std_logic_vector(31 downto 0)
    );
end Mem;

architecture Behavioral of Mem is
    type memory_type is array(0 downto 63) of std_logic_vector(31 downto 0);
    signal mem : memory_type := (
        0 => x"0000000A",  -- 10 in hexadecimal
        1 => x"00010110",  -- 22 in hexadecimal
        2 => x"00000016",  -- 22 in hexadecimal
        3 => x"00000B01",  -- 2817 in hexadecimal
        4 => x"00000C60",  -- 3168 in hexadecimal
        5 => x"00001743",  -- 5955 in hexadecimal
        6 => x"00003F10",  -- 16144 in hexadecimal
        7 => x"00002008",  -- 8200 in hexadecimal
        8 => x"00000403",  -- 1027 in hexadecimal
        9 => x"00006005",  -- 24577 in hexadecimal
        10 => x"00002468", -- 9320 in hexadecimal
        11 => x"0000AAAA", -- 43690 in hexadecimal
        12 => x"0000F00F", -- 61455 in hexadecimal
        13 => x"0000D00D", -- 53261 in hexadecimal
        14 => x"000055AA", -- 21946 in hexadecimal
        15 => x"0000C0FF", -- 49343 in hexadecimal
        16 => x"00003333", -- 13107 in hexadecimal
        17 => x"00007777", -- 30583 in hexadecimal
        18 => x"0000BBBB", -- 48059 in hexadecimal
        19 => x"00008888", -- 34952 in hexadecimal
        20 => x"00009999", -- 39321 in hexadecimal
        21 => x"0000DEAD", -- 57005 in hexadecimal
        22 => x"0000BABE", -- 47806 in hexadecimal
        23 => x"0000FACE", -- 64206 in hexadecimal
        24 => x"0000C0DE", -- 49374 in hexadecimal
        25 => x"0000BEEF", -- 48879 in hexadecimal
        26 => x"00007777", -- 30583 again in hexadecimal
        27 => x"0000ACDC", -- 44252 in hexadecimal
        28 => x"0000D00D", -- 53261 again in hexadecimal
        29 => x"00008888", -- 34952 again in hexadecimal
        -- Remaining memory up to 63 initialized to zero
        others => x"00000000"
    );

    signal addr : std_logic_vector(5 downto 0) := (others => '0'); 

begin
    -- Addressing and Memory Write
    addr <= AluResIn(5 downto 0);
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' and MemWrite = '1' then 
                mem(conv_integer(addr)) <= WriteData; 
            end if;
        end if;
    end process;
    
    -- Output Assignments
    AluResOut <= AluResIn;
    MemData <= mem(conv_integer(addr));
end Behavioral;
