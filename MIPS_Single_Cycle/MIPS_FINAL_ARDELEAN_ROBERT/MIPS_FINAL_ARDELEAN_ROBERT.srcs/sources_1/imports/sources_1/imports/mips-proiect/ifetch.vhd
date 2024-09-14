library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity IFetch is
    Port (
        jump: in std_logic;
        PCSrc: in std_logic;
        clk: in std_logic;
        en, rst: in std_logic;
        JumpAddr: in std_logic_vector(31 downto 0);
        JmpR: in std_logic;
        JRAddress: in std_logic_vector(31 downto 0);
        BranchAddr: in std_logic_vector(31 downto 0);
        PC_4: out std_logic_vector(31 downto 0);
        instr: out std_logic_vector(31 downto 0)
    );
end IFetch;

architecture Behavioral of IFetch is
    type reg_array is array(0 to 31) of std_logic_vector(31 downto 0);
    signal reg_file : reg_array := (
       
        B"100011_00000_00100_0000000000000000", --lw $4, 0($0)  
        B"100011_00000_00101_0000000000000100", --lw $5, 4($0)
        B"100011_00000_00110_0000000000001000", --lw $6, 8($0)
        
        B"000000_00000_00000_00010_00000_100000", --add $2, $0, $0
        B"000000_00000_00000_01011_00000_100000", --add $11, $0, $0
        B"000000_00000_10000_00011_00000_100000", --add $3, $0, $16
        
        B"000100_00010_00110_0000000000001010", --beq $2, $6, 10
        B"100011_00011_00111_0000000000000000", --lw $7, 0($3)
        B"000000_00011_00100_00011_00000_100000", --add $3, $3, 4
        
        B"000000_00100_00111_01000_00000_101010", --slt $8, $4, $7  
        B"000000_00111_00101_01001_00000_101010", --slt $9, $7, $5   
        
        B"001000_01001_01001_0000000000000001", --addi $9, $9, 1  
        B"000000_01000_01001_01010_00000_100100", --and $10, $8, $9  
    
        B"000100_01010_00000_0000000000000001", --beq $10, $0, 1
        B"000000_01011_00111_01011_00000_100000", --add $11, $11, $7  
        
        B"001000_00010_00010_0000000000000001", -- addi $2, $2, 1   
        B"000010_00000000000000000000000111", --j 7         
	
	    B"101011_00000_01011_0000000000001100", --sw $11, 12($0)
        
        others => X"00000000"
    );

    signal rd1: std_logic_vector(31 downto 0) := (others => '0');
    signal out_mux1: std_logic_vector(31 downto 0) := (others => '0');
    signal out_mux2: std_logic_vector(31 downto 0) := (others => '0');
    signal pc_entry: std_logic_vector(31 downto 0) := (others => '0');
    signal out_pc: std_logic_vector(31 downto 0) := (others => '0');
    signal out_sum: std_logic_vector(31 downto 0) := (others => '0');

begin

    process (JumpAddr, out_mux1, Jump)
    begin
        if Jump = '0' then
            out_mux2 <= out_mux1;
        else
            out_mux2 <= JumpAddr;
        end if;
    end process;
    
    
    process (out_mux2, JmpR, JRAddress)
    begin
        if JmpR = '1' then
            pc_entry <= JRAddress;
        else
            pc_entry <= out_mux2;
        end if;
    end process;
    
    process (clk, rst, en, pc_entry)
    begin
        if rst = '1' then
            out_pc <= "00000000000000000000000000000000";
        end if;
        
        if rising_edge(clk) then 
            if en = '1' then 
                out_pc <= pc_entry;
            end if;
        end if;
    end process;
    
    
    process (out_pc)
    begin
        out_sum <= 4 + out_pc;
    end process;
    
    PC_4 <= out_sum;
    
    process (out_sum, BranchAddr, PCSrc)
    begin
        if PCSrc = '0' then 
            out_mux1 <= out_sum;
        else
            out_mux1 <= BranchAddr;
        end if;
    end process;
    
    rd1 <= reg_file(conv_integer(out_pc(6 downto 2)));
    instr <= rd1;

end Behavioral;
