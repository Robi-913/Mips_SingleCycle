library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainControl is
    Port (
        RegDst : out std_logic;
        ALUSrc : out std_logic;
        MemtoReg : out std_logic;
        RegWrite : out std_logic;
        MemWrite : out std_logic;
        Branch : out std_logic;
        ALUOp : out std_logic_vector(2 downto 0); 
        Jump : out std_logic;
        ExtOp : out std_logic;
        Br: out std_logic;
        JmpR: out std_logic;
        Instr : in std_logic_vector(5 downto 0) 
    );
end MainControl;

architecture Behavioral of MainControl is
begin
    process(Instr)
    begin
        -- Valorile implicite sunt resetate pentru fiecare instruc?iune
        RegDst <= '0';
        ALUSrc <= '0';
        MemtoReg <= '0';
        RegWrite <= '0';
        MemWrite <= '0';
        Branch <= '0';
        ALUOp <= "000"; 
        Jump <= '0';
        ExtOp <= '0';
        Br <= '0';
        JmpR <= '0';  

        -- Verificarea opcode-ului ?i setarea semnalelor de control
        case Instr is
            when "000000" =>  -- (tip R)
                RegDst <= '1';
                RegWrite <= '1';
                ALUSrc <= '0';
                ALUOp <= "000";  -- Codul de opera?ie pentru ADD
                
            when "001000" =>  -- ADDI(tip i)
                RegDst <= '0';
                RegWrite <= '1';
                ALUSrc <= '1';
                ALUOp <= "001";  -- Codul de opera?ie pentru SUB
                ExtOp <= '1';
                
            when "001101" =>  -- ORI (tip i)
                ALUSrc <= '1';
                RegWrite <= '1';
                ALUOp <= "010";  -- Codul de opera?ie pentru ORI
                ExtOp <= '0';
                
            when "100011" =>  -- LW (tip I)
               ALUSrc <= '1';
                RegWrite <= '1';
                MemtoReg <= '1';
                ALUOp <= "001";  -- Codul de opera?ie pentru LW
                ExtOp <= '1';
                
            when "101011" =>  -- SW (tip I)
                ALUSrc <= '1';
                RegWrite <= '0';
                ALUOp <= "001";  -- Codul de opera?ie pentru SW
                ExtOp <= '1';
                MemWrite <='1';
                
            when "000100" =>  -- BEQ (tip I)
                ALUSrc <= '0';
                Branch <= '1';
                ALUOp <= "100";  -- Codul de opera?ie pentru BEQ
                ExtOp <= '1';
                Br <= '1';
          
            when "000010" =>  -- Jump (tip I)
                Jump <= '1';
                
            when "000101" =>  -- BNE (tip I)
                ALUSrc <= '0';
                Branch <= '1';
                ALUOp <= "100";  -- Codul de opera?ie pentru BNE
                ExtOp <= '1';
                Br <= '1';
          
            when "001100" =>  -- ANDI (tip I)
                ALUSrc <= '1';
                RegWrite <= '1';
                ALUOp <= "110";  -- Codul de opera?ie pentru ANDI
                ExtOp <= '1';
                
            when others =>
               RegDst <= '0';
                ALUSrc <= '0';
                MemtoReg <= '0';
                RegWrite <= '0';
                MemWrite <= '0';
                Branch <= '0';
                ALUOp <= "000"; 
                Jump <= '0';
                ExtOp <= '0';
                
        end case;
    end process;
end Behavioral;
