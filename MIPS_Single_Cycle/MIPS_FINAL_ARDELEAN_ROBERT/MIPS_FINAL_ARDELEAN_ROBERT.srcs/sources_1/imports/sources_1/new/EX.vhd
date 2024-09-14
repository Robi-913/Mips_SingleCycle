library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EX is
    Port (
        rd1: in std_logic_vector(31 downto 0);  -- Register 1 data
        rd2: in std_logic_vector(31 downto 0);  -- Register 2 data
        ext_imm: in std_logic_vector(31 downto 0);  -- Extended immediate
        pc4: in std_logic_vector(31 downto 0);  -- PC + 4
        alu_src: in std_logic;  -- ALU source selector
        sa: in std_logic_vector(4 downto 0);  -- Shift amount
        func: in std_logic_vector(5 downto 0);  -- Function field for R-type instructions
        alu_op: in std_logic_vector(2 downto 0);  -- ALU operation selector
        zero: out std_logic;  -- Zero flag
        alu_res: out std_logic_vector(31 downto 0);  -- ALU result
        gtz: out std_logic;  -- Greater than zero flag
        branch_addr: out std_logic_vector(31 downto 0)  -- Branch address
    );
end EX;

architecture Behavioral of EX is
    signal second_term: std_logic_vector(31 downto 0) := (others => '0');
    signal alu_ctrl: std_logic_vector(3 downto 0) := (others => '0');
    signal c: std_logic_vector(31 downto 0) := (others => '0');
    signal ext_imm_signal: std_logic_vector(31 downto 0) := (others => '0');

begin
    -- Determine second operand based on alu_src
    process(rd2, ext_imm, alu_src)
    begin
        if alu_src = '1' then
            second_term <= ext_imm;
        else
            second_term <= rd2;
        end if;
    end process;

    -- ALU control logic
    process(alu_op, func)
    begin
        case alu_op is
            when "000" =>  
                case func is
                    when "100000" => alu_ctrl <= "0000"; -- ADD (R-type)
                    when "100010" => alu_ctrl <= "0001"; -- SUB (R-type)
                    when "100101" => alu_ctrl <= "0010"; -- OR (R-type)
                    when "100100" => alu_ctrl <= "0011"; -- AND (R-type)
                    when "100110" => alu_ctrl <= "0100"; -- XOR (R-type)
                    when "000000" => alu_ctrl <= "0101"; -- SLL (R-type)
                    when "000010" => alu_ctrl <= "0110"; -- SRL (R-type)
                    when "101010" => alu_ctrl <= "0111"; -- SLT (R-type)
                    when others    => alu_ctrl <= "0000"; -- Default to ADD
                end case;
            when "001" =>  -- LW, SW
                alu_ctrl <= "0000"; -- ADD for address calculation
            when "010" =>  -- ORI
                alu_ctrl <= "0010"; -- OR
            when "100" =>  -- BNE. BEQ
                alu_ctrl <= "0001"; -- Special handling for branch
            when "110" =>  -- ANDI
                alu_ctrl <= "0011"; -- SUB for comparison
            when others =>
                alu_ctrl <= "1111"; -- Invalid operation code
        end case;
    end process;

    -- ALU operation
    process(rd1, second_term, alu_ctrl, sa)
    begin
        case alu_ctrl is
            when "0000" =>  -- ADD
                c <= rd1 + second_term;
            when "0001" =>  -- SUB
                c <= rd1 - second_term;
            when "0010" =>  -- OR
                c <= rd1 or second_term;
            when "0011" =>  -- AND
                c <= rd1 and second_term;
            when "0100" =>  -- XOR
                c <= rd1 xor second_term;
            when "0101" =>  -- SLL
                c<=to_stdlogicvector(to_bitvector(rd1) sll conv_integer(sa));
            when "0110" =>  -- SRL
                c<=to_stdlogicvector(to_bitvector(rd1) srl conv_integer(sa));
            when "0111" =>  -- SLT
                if signed(rd1)< signed(second_term) then 
                    c <= X"00000001";
                 else 
                    c <= X"00000000";
                 end if;
            when others => c <= x"00000000";
        end case;
    end process;

        alu_res <= c;
        zero <= '1' when c = "00000000000000000000000000000000" else '0';
        gtz <= c(31);
        ext_imm_signal <= ext_imm(29 downto 0) & "00";
        branch_addr <= pc4 + ext_imm_signal;

end Behavioral;
