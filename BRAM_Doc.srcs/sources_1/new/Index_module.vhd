----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 10/20/2017 05:20:16 PM
-- Design Name:
-- Module Name: Index_module - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Index_module is
 Port ( CLK : in STD_LOGIC;
        TRG_UP : in STD_LOGIC;
        TRG_DN : in STD_LOGIC;
        ADDR : out std_logic_vector(15 downto 0));
end Index_module;

architecture Behavioral of Index_module is
signal init: unsigned(15 downto 0) := (OTHERS =>'0');
signal read_flg : STD_LOGIC :='0';
begin
  process
  begin
    wait until rising_edge(CLK);

    if TRG_UP='1' and read_flg='0' then
        init <= init - 1;
        --ADDR <= std_logic_vector(init);
        read_flg <= '1';
      elsif  TRG_DN='1' and read_flg='0' then
        init <= init + 1;
        --ADDR <= std_logic_vector(init);
        read_flg <= '1';
      elsif TRG_DN='0' and TRG_UP='0' and read_flg='1' then
        read_flg <= '0';
    end if;
  ADDR <= std_logic_vector(init);
end process;
end Behavioral;
