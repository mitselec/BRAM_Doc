--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Tue Mar 13 13:06:53 2018
--Host        : Dimitris-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target BRAM.bd
--Design      : BRAM
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BRAM is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC;
    BRAM_PORTA_rst : in STD_LOGIC;
    BRAM_PORTA_we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BRAM : entity is "BRAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BRAM,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of BRAM : entity is "BRAM.hwdef";
end BRAM;

architecture STRUCTURE of BRAM is
  component BRAM_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component BRAM_blk_mem_gen_0_0;
  signal BRAM_PORTA_1_ADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BRAM_PORTA_1_CLK : STD_LOGIC;
  signal BRAM_PORTA_1_DIN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BRAM_PORTA_1_DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BRAM_PORTA_1_EN : STD_LOGIC;
  signal BRAM_PORTA_1_RST : STD_LOGIC;
  signal BRAM_PORTA_1_WE : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  BRAM_PORTA_1_ADDR(7 downto 0) <= BRAM_PORTA_addr(7 downto 0);
  BRAM_PORTA_1_CLK <= BRAM_PORTA_clk;
  BRAM_PORTA_1_DIN(7 downto 0) <= BRAM_PORTA_din(7 downto 0);
  BRAM_PORTA_1_EN <= BRAM_PORTA_en;
  BRAM_PORTA_1_RST <= BRAM_PORTA_rst;
  BRAM_PORTA_1_WE(0) <= BRAM_PORTA_we(0);
  BRAM_PORTA_dout(7 downto 0) <= BRAM_PORTA_1_DOUT(7 downto 0);
blk_mem_gen_0: component BRAM_blk_mem_gen_0_0
     port map (
      addra(7 downto 0) => BRAM_PORTA_1_ADDR(7 downto 0),
      clka => BRAM_PORTA_1_CLK,
      dina(7 downto 0) => BRAM_PORTA_1_DIN(7 downto 0),
      douta(7 downto 0) => BRAM_PORTA_1_DOUT(7 downto 0),
      ena => BRAM_PORTA_1_EN,
      rsta => BRAM_PORTA_1_RST,
      wea(0) => BRAM_PORTA_1_WE(0)
    );
end STRUCTURE;
