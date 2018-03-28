----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10/23/2017 02:46:53 PM
-- Design Name:
-- Module Name: Mem_Conf_Top - Behavioral
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

entity Mem_Conf_Top is
  Port ( CLK    : IN STD_LOGIC;
         RST    : IN STD_LOGIC;
         EN     : IN STD_LOGIC;
         WR_EN  : IN std_logic_vector(0 to 0);
         BTN_UP : IN STD_LOGIC;
         BTN_DN : IN STD_LOGIC;
         SSEG_CA: OUT STD_LOGIC_VECTOR(0 to 6);
         SSEG_AN: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end Mem_Conf_Top;

architecture Behavioral of Mem_Conf_Top is
--Component declaration
component Top_db --debounce Component
  GENERIC(
    counter_size  :  INTEGER := 19);
  PORT(
    clk     : IN  STD_LOGIC;  --input clock
    button  : IN  STD_LOGIC;  --input signal to be debounced
    result  : OUT STD_LOGIC); --debounced signal
END component;

component Index_module
 Port ( CLK     : in STD_LOGIC;
        TRG_UP  : in STD_LOGIC;
        TRG_DN  : in STD_LOGIC;
        ADDR    : out std_logic_vector(15 downto 0));
end component;

component BRAM_wrapper
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC;
    BRAM_PORTA_rst : in STD_LOGIC;
    BRAM_PORTA_we : in STD_LOGIC_VECTOR ( 0 to 0 )
    );
end component;

component Top_7s
    Port ( CLK    : in STD_LOGIC;
           DATA   : in std_logic_vector(15 downto 0);
           SSEG_CA: out std_logic_vector(0 to 6); -- Inverted because I messed up
           SSEG_AN: out std_logic_vector(3 downto 0));
end component;


--Signal declaration
signal din_init             : std_logic_vector(15 downto 0) :=(others=>'0');
signal TRG_UP,TRG_DN        : STD_LOGIC;
signal ADDR                 : std_logic_vector(15 downto 0);
signal DATA                 : std_logic_vector(15 downto 0);

begin

S0: Top_db        port map(CLK,BTN_UP,TRG_UP);
S1: Top_db        port map(CLK,BTN_DN,TRG_DN);
S2: Index_module  port map(CLK,TRG_UP,TRG_DN,ADDR);
S3: BRAM_wrapper  port map(ADDR,CLK,din_init,DATA,EN,RST,WR_EN);
S4: Top_7s        port map(CLK,DATA,SSEG_CA,SSEG_AN);

end Behavioral;