----------------------------------------------------------------------------------
-- Company: Technical University of Cluj-Napoca 
-- Engineer: Ardelean Robert
-- 
-- Module Name: test_env - Behavioral
-- Description: 
--      MIPS 32, single-cycle
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_env is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (4 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0));
end test_env;

architecture Behavioral of test_env is

component MPG is
    Port ( enable : out STD_LOGIC;
           btn : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;

component SSD is
    Port ( clk : in STD_LOGIC;
           digits : in STD_LOGIC_VECTOR(31 downto 0);
           an : out STD_LOGIC_VECTOR(7 downto 0);
           cat : out STD_LOGIC_VECTOR(6 downto 0));
end component;

component IFetch
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           en : in STD_LOGIC;
           BranchAddress : in STD_LOGIC_VECTOR(31 downto 0);
           JumpAddress : in STD_LOGIC_VECTOR(31 downto 0);
           Jump : in STD_LOGIC;
           PCSrc : in STD_LOGIC;
           Instruction : out STD_LOGIC_VECTOR(31 downto 0);
           PCp4 : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component ID is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;    
           Instr : in STD_LOGIC_VECTOR(25 downto 0);
           WD : in STD_LOGIC_VECTOR(31 downto 0);
           WA: in std_logic_vector(4 downto 0);
           RegWrite : in STD_LOGIC;
           ExtOp : in STD_LOGIC;
           RD1 : out STD_LOGIC_VECTOR(31 downto 0);
           RD2 : out STD_LOGIC_VECTOR(31 downto 0);
           Ext_Imm : out STD_LOGIC_VECTOR(31 downto 0);
           func : out STD_LOGIC_VECTOR(5 downto 0);
           rd:out std_logic_vector(4 downto 0);
           rt:out std_logic_vector(4 downto 0);
           sa : out STD_LOGIC_VECTOR(4 downto 0));
end component;

component UC
    Port ( Instr : in STD_LOGIC_VECTOR(5 downto 0);
           RegDst : out STD_LOGIC;
           ExtOp : out STD_LOGIC;
           ALUSrc : out STD_LOGIC;
           Branch : out STD_LOGIC;
           Jump : out STD_LOGIC;
           ALUOp : out STD_LOGIC_VECTOR(2 downto 0);
           MemWrite : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           RegWrite : out STD_LOGIC);
end component;

component EX is
 Port ( PCp4 : in STD_LOGIC_VECTOR(31 downto 0);
           RD1 : in STD_LOGIC_VECTOR(31 downto 0);
           RD2 : in STD_LOGIC_VECTOR(31 downto 0);
           Ext_Imm : in STD_LOGIC_VECTOR(31 downto 0);
           func : in STD_LOGIC_VECTOR(5 downto 0);
           sa : in STD_LOGIC_VECTOR(4 downto 0);
           ALUSrc : in STD_LOGIC;
           ALUOp : in STD_LOGIC_VECTOR(2 downto 0);
           BranchAddress : out STD_LOGIC_VECTOR(31 downto 0);
           ALURes : out STD_LOGIC_VECTOR(31 downto 0);
           rt: in std_logic_vector(4 downto 0);
           rd: in std_logic_vector(4 downto 0);
           RegDst: in std_Logic;
           RWA:out std_logic_vector(4 downto 0);
           Zero : out STD_LOGIC);
end component;

component MEM
    port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           ALUResIn : in STD_LOGIC_VECTOR(31 downto 0);
           RD2 : in STD_LOGIC_VECTOR(31 downto 0);
           MemWrite : in STD_LOGIC;			
           MemData : out STD_LOGIC_VECTOR(31 downto 0);
           ALUResOut : out STD_LOGIC_VECTOR(31 downto 0));
end component;

signal Instruction, PCp4, RD1, RD2, WD, Ext_imm : STD_LOGIC_VECTOR(31 downto 0); 
signal JumpAddress, BranchAddress, ALURes, ALUResOut, MemData : STD_LOGIC_VECTOR(31 downto 0);
signal func : STD_LOGIC_VECTOR(5 downto 0);
signal sa : STD_LOGIC_VECTOR(4 downto 0);
signal zero : STD_LOGIC;
signal digits : STD_LOGIC_VECTOR(31 downto 0);
signal en, rst, PCSrc : STD_LOGIC; 
-- main controls 
signal RegDst, ExtOp, ALUSrc, Branch, Jump, MemWrite, MemtoReg, RegWrite : STD_LOGIC;
signal ALUOp,AluOp_ID_EX : STD_LOGIC_VECTOR(2 downto 0);
signal rd, rt, rwa: STD_LOGIC_VECTOR(4 downto 0);

--semnale pipeline
signal instr_IF_ID, PCp4_IF_ID:std_logic_vector(31 downto 0);
 

signal RegDst_ID_EX, Branch_ID_EX, RegWrite_ID_EX,AluSrc_ID_EX,MemWrite_ID_EX,MemtoReg_ID_EX: std_logic;
signal RD1_ID_EX, RD2_ID_EX,Ext_imm_ID_EX: STD_LOGIC_VECTOR(31 downto 0); 
signal PCp4_ID_EX:std_logic_vector(31 downto 0);
signal func_ID_EX : STD_LOGIC_VECTOR(5 downto 0);
signal sa_ID_EX ,rd_ID_EX, rt_ID_EX: STD_LOGIC_VECTOR(4 downto 0);


signal Branch_EX_MEM, RegWrite_EX_MEM, Zero_EX_MEM, MemWrite_EX_MEM,MemtoReg_EX_MEM: STD_LOGIC; 
signal AluRes_EX_MEM, BranchAddress_EX_MEM,RD2_EX_MEM:std_logic_vector(31 downto 0);
signal WA_EX_MEM: STD_LOGIC_VECTOR(4 downto 0);


signal RegWrite_MEM_WB,MemtoReg_MEM_WB:std_logic;
signal ALUResOut_MEM_WB,MemData_MEM_WB:std_logic_vector(31 downto 0);
signal WA_MEM_WB: STD_LOGIC_VECTOR(4 downto 0);

begin

    monopulse : MPG port map(en, btn(0), clk);
    
    -- main units
    inst_IFetch : IFetch port map(clk, btn(1), en, BranchAddress_EX_MEM, JumpAddress, Jump, PCSrc, Instruction, PCp4);
    inst_ID : ID port map(clk, en, instr_IF_ID(25 downto 0), WD,WA_MEM_WB, RegWrite_MEM_WB, ExtOp, RD1, RD2, Ext_imm, func,rd,rt, sa);
    inst_UC : UC port map(instr_IF_ID(31 downto 26), RegDst, ExtOp, ALUSrc, Branch, Jump, ALUOp, MemWrite, MemtoReg, RegWrite);
    inst_EX : EX port map(PCp4_ID_EX, RD1_ID_EX, RD2_ID_EX, Ext_imm_ID_EX, func_ID_EX, sa_ID_EX, ALUSrc_ID_EX, ALUOp_ID_EX, BranchAddress, ALURes,rt_ID_EX,rd_ID_EX, RegDst_ID_EX,rwa, Zero); 
    inst_MEM : MEM port map(clk, en, ALURes_EX_MEM, RD2_EX_MEM, MemWrite, MemData, ALUResOut);          

    -- Write-Back unit 
    WD <= MemData_MEM_WB when MemtoReg_MEM_WB = '1' else ALUResOut_MEM_WB; 

        process(clk)
        begin
        if rising_edge(clk) then
            if en='1' then
                instr_IF_ID<=Instruction;
                Pcp4_IF_ID<=Pcp4;
                end if;
                end if;
                end process;
                
          process(clk)
          begin
          if rising_edge(clk) then
            if en='1' then
            RegDst_ID_EX<=RegDst;
            AluSrc_ID_EX<=AluSrc;
            Branch_ID_EX<=Branch;
            AluOp_ID_EX<=AluOp;
            MemWrite_ID_EX<=MemWrite;
            MemToReg_ID_EX<=MemToReg;
            RegWrite_ID_EX<=RegWrite;
            rd1_ID_EX<=rd1;
            rd2_ID_EX<=rd2;
            Ext_Imm_ID_EX<=Ext_imm_ID_EX;
            func_ID_EX<=func;
            sa_ID_EX<=sa;
            rd_ID_EX<=rd;
            rt_ID_EX<=rt;
            Pcp4_ID_EX<=Pcp4_IF_ID;
            end if;
          end if;
          
          end process;      
          
          
          process(clk)
          begin
          if rising_edge(clk) then
            if en='1' then
                Branch_EX_MEM<=Branch_ID_EX;
                MemWrite_EX_MEM<=MemWrite_ID_EX;
                MemtoReg_EX_MEM<=MemtoReg_ID_EX;
                RegWrite_EX_MEM<=RegWrite_ID_EX;
                Zero_EX_MEM<=Zero;
                BranchAddress_EX_MEM<=BranchADdress;
                AluRes_EX_MEM<=ALuRes;
                WA_EX_MEM<=RWA;
                rd2_EX_MEM<=rd2_ID_EX;
                
                
                end if;
                end if;
          
          end process;
          
          process(clk)
          begin
          if rising_edge(clk) then
           if en='1' then
           MemToReg_MEM_WB<=MemtoReg_EX_MEM;
           RegWrite_MEM_WB<=REgWrite_EX_MEM;
           ALuREsOut_MEM_WB<=AluresOut;
           MemData_MEM_WB<=MemData;
           WA_MEM_WB<=WA_EX_MEM;
           
           end if;
          end if;
          end process;

    -- branch control
    PCSrc <= Zero_EX_MEM and Branch_EX_MEM;

    -- jump address
    JumpAddress <= PCp4_IF_ID(31 downto 28) & instr_IF_ID(25 downto 0) & "00";

   -- SSD display MUX
    with sw(7 downto 5) select
        digits <=  Instruction when "000", 
                   PCp4 when "001",
                   RD1 when "010",
                   RD2 when "011",
                   Ext_Imm when "100",
                   ALURes when "101",
                   MemData when "110",
                   WD when "111",
                   (others => 'X') when others; 

    display : SSD port map(clk, digits, an, cat);
    
    -- main controls on the leds
    led(10 downto 0) <= ALUOp & RegDst & ExtOp & ALUSrc & Branch & Jump & MemWrite & MemtoReg & RegWrite;
    
end Behavioral;