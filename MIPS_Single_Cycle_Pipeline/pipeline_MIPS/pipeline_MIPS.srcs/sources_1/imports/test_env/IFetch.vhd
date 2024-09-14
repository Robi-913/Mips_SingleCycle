----------------------------------------------------------------------------------
-- Company: Technical University of Cluj-Napoca 
-- Engineer: Ardelean Robert
-- 
-- Module Name: IFetch - Behavioral
-- Description: 
--      Instruction Fecth Unit
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IFetch is
    Port (clk : in STD_LOGIC;
          rst : in STD_LOGIC;
          en : in STD_LOGIC;
          BranchAddress : in STD_LOGIC_VECTOR(31 downto 0);
          JumpAddress : in STD_LOGIC_VECTOR(31 downto 0);
          Jump : in STD_LOGIC;
          PCSrc : in STD_LOGIC;
          Instruction : out STD_LOGIC_VECTOR(31 downto 0);
          PCp4 : out STD_LOGIC_VECTOR(31 downto 0));
end IFetch;

architecture Behavioral of IFetch is

-- Memorie ROM
type tROM is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal ROM : tROM := (
        B"100011_00000_00100_0000000000000000", --lw $4, 0($0)  
        B"100011_00000_00101_0000000000000100", --lw $5, 4($0)
        B"100011_00000_00110_0000000000001000", --lw $6, 8($0)
        
        B"000000_00000_00000_00010_00000_100000", --add $2, $0, $0
        B"000000_00000_00000_01011_00000_100000", --add $11, $0, $0
        B"000000_00000_10000_00011_00000_100000", --add $3, $0, $16
        
        B"000100_00010_00110_0000000000010101", --beq $2, $6, 21
		b"000000_00000_00000_00000_00000_000000", --nop
		b"000000_00000_00000_00000_00000_000000", --nop
		b"000000_00000_00000_00000_00000_000000", --nop
        B"100011_00011_00111_0000000000000000", --lw $7, 0($3)
        B"001000_00011_00011_0000000000000100", --addi $3, $3, 4
		b"000000_00000_00000_00000_00000_000000", --nop

        
        B"000000_00100_00111_01000_00000_101010", --slt $8, $4, $7  
        B"000000_00111_00101_01001_00000_101010", --slt $9, $7, $5  
		b"000000_00000_00000_00000_00000_000000", --nop
		b"000000_00000_00000_00000_00000_000000", --nop
		
        
        B"001000_01001_01001_0000000000000001", --addi $9, $9, 1 
		b"000000_00000_00000_00000_00000_000000", --nop
		b"000000_00000_00000_00000_00000_000000", --nop		
        B"000000_01000_01001_01010_00000_100100", --and $10, $8, $9  
    
        B"000100_01010_00000_0000000000000100", --beq $10, $0, 4
		b"000000_00000_00000_00000_00000_000000", --nop
		b"000000_00000_00000_00000_00000_000000", --nop
        B"000000_01011_00111_01011_00000_100000", --add $11, $11, $7  
        
        B"001000_00010_00010_0000000000000001", -- addi $2, $2, 1   
        B"000010_00000000000000000000001010", --j 7       
		b"000000_00000_00000_00000_00000_000000", --nop		
	
	    B"101011_00000_01011_0000000000001100", --sw $11, 12($0)
others=>x"00000000");

signal PC : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal PCAux, NextAddr, AuxSgn : STD_LOGIC_VECTOR(31 downto 0);

begin

    -- Program Counter
    process(clk, rst)
    begin
        if rst = '1' then
            PC <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                PC <= NextAddr;
            end if;
        end if;
    end process;

    -- Instruction OUT
    Instruction <= ROM(conv_integer(PC(6 downto 2)));

    -- PC + 4
    PCAux <= PC + 4;
    PCp4 <= PCAux;

    -- MUX for branch
    AuxSgn <= BranchAddress when PCSrc = '1' else PCAux;  
    
    -- MUX for jump
    NextAddr <= JumpAddress when Jump = '1' else AuxSgn;
    
end Behavioral;