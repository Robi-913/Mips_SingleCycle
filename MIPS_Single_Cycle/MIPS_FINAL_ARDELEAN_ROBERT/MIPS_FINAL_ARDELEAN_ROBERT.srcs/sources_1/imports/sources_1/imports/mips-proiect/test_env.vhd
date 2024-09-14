library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity test_env is
    Port (
        clk : in STD_LOGIC;
        btn : in STD_LOGIC_VECTOR (4 downto 0);
        sw : in STD_LOGIC_VECTOR (15 downto 0);
        led : out STD_LOGIC_VECTOR (15 downto 0);
        an : out STD_LOGIC_VECTOR (7 downto 0);
        cat : out STD_LOGIC_VECTOR (6 downto 0)
    );
end test_env;


architecture Behavioral of test_env is

        component IFetch is
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
        end component;
        
        component DecID is
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
        end component;
        
        component EX is
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
        end component;
        
        component Mem is
            port(
                clk : in std_logic;
                en : in std_logic;
                MemWrite : in std_logic; 
                AluResIn : in std_logic_vector(31 downto 0); 
                WriteData : in std_logic_vector(31 downto 0); 
                MemData : out std_logic_vector(31 downto 0); 
                AluResOut: out std_logic_vector(31 downto 0)
            );
        end component;
        
        component MainControl is
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
        end component;
        
        component SSD is
            Port ( clk : in STD_LOGIC;
                   digits : in STD_LOGIC_VECTOR(31 downto 0);
                   an : out STD_LOGIC_VECTOR(7 downto 0);
                   cat : out STD_LOGIC_VECTOR(6 downto 0));
        end component;
        
        component MPG is
            Port ( btn : in STD_LOGIC;
                   clk : in STD_LOGIC;
                   enable : out STD_LOGIC);
        end component;
        

    signal enableMPG: std_logic;
    signal jumpUC:std_logic;
    signal pcsrcAND:std_logic;
    signal jumpADDR:std_logic_vector(31 downto 0):=(others=>'0');
    signal jmpR: std_logic;
    signal JRAddress:std_logic_vector(31 downto 0):=(others=>'0');
    signal branchADDR:std_logic_vector(31 downto 0):=(others=>'0');
    signal PC4:std_logic_vector(31 downto 0):=(others=>'0');
    signal Instr:std_logic_vector(31 downto 0):=(others=>'0');
    signal Zero: std_logic:='0';
    signal Branch: std_logic:='0';
    signal regWrite, regDst,extOp: std_logic:='0';
    signal wd:std_logic_vector(31 downto 0):=(others=>'0');
    signal rd1,rd2:std_logic_vector(31 downto 0):=(others=>'0');
    signal ext_imm:std_logic_vector(31 downto 0):=(others=>'0');
    signal func:std_logic_vector(5 downto 0):=(others=>'0');
    signal sa:std_logic_vector(4 downto 0):=(others=>'0');
    signal memWrite: std_logic:='0';
    signal aluRes:std_logic_vector(31 downto 0):=(others=>'0');
    signal memData:std_logic_vector(31 downto 0):=(others=>'0');
    signal aluResOut:std_logic_vector(31 downto 0):=(others=>'0');
    signal aluSrc: std_logic:='0';
    signal aluOp:std_logic_vector(2 downto 0):=(others=>'0');
    signal gtz: std_logic:='0';
    signal memToReg: std_logic:='0';
    signal Br: std_logic:='0';
    signal digits:std_logic_vector(31 downto 0):=(others=>'0');
    

begin
        IFetch1: IFetch port map (
            jump => jumpUC,
            PCSrc => pcsrcAND,
            clk => clk,
            en => enableMPG,
            rst => btn(1),
            JumpAddr => jumpADDR,
            JmpR => jmpR,
            JRAddress => JRAddress,
            BranchAddr => branchADDR,
            PC_4 => PC4,
            instr => Instr
        );
        
        jumpADDR <= PC4(31 downto 28) & Instr(25 downto 0) & "00";
        pcsrcAND <= Zero and Branch;
        
        ID: DecID port map (
            RegWrite => regWrite,
            Instr => Instr(25 downto 0),
            RegDst => regDst,
            ExtOp => extOp,
            WD => wd,
            rd1 => rd1,
            rd2 => rd2,
            Ext_imm => ext_imm,
            func => func,
            sa => sa,
            clk => clk,
            en => enableMPG
        );
        
        EX1: EX port map (
            rd1 => rd1,
            rd2 => rd2,
            ext_imm => ext_imm,
            pc4 => PC4,
            alu_src => aluSrc,
            sa => sa,
            func => func,
            alu_op => aluOp,
            zero => Zero,
            alu_res => aluRes, 
            gtz => gtz,
            branch_addr => branchADDR
        );
        
        memory: Mem port map(
            clk => clk,
            en => enableMPG,
            MemWrite => memWrite,
            AluResIn => aluRes, 
            WriteData => rd1,
            MemData => memData,
            AluResOut => aluResOut
        );
        
        process(aluResOut, memData, memToReg)
        begin
            if memToReg = '0' then
                wd <= aluResOut;
            else
                wd <= memData;
            end if;
        end process;
        
        Uc: MainControl port map(
            RegDst => regDst,
            ALUSrc => aluSrc, 
            MemtoReg => memToReg, 
            RegWrite => regWrite, 
            MemWrite => memWrite, 
            Branch => Branch, 
            ALUOp => aluOp, 
            Jump => jumpUC, 
            ExtOp => extOp, 
            Br => Br,
            JmpR => jmpR,
            Instr => Instr(31 downto 26)
        );
        
        Monopulse: MPG port map(
            btn => btn(1),
            clk => clk,
            enable => enableMPG
        );
        
        screen: SSD port map(
            clk => clk,
            digits => digits,
            an => an,
            cat => cat
        );
        
        led(0) <= regWrite;
        led(1) <= memToReg;
        led(2) <= memWrite;
        led(3) <= jumpUC;
        led(4) <= Branch;
        led(5) <= aluSrc;
        led(6) <= extOp;
        led(7) <= regDst;
        led(10 downto 8) <= aluOp;
        
        process(sw(7 downto 5), Instr, PC4, rd1, rd2, ext_imm, aluRes, memData, wd)
        begin
            case sw(7 downto 5) is
                when "000" => digits <= Instr;
                when "001" => digits <= PC4;  
                when "010" => digits <= rd1;
                when "011" => digits <= rd2;
                when "100" => digits <= ext_imm;
                when "101" => digits <= aluRes;
                when "110" => digits <= memData;
                when "111" => digits <= wd;
            end case;
        end process;
        

        
end Behavioral;