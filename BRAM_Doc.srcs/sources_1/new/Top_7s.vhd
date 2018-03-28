----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 07/13/2017 11:08:45 PM
-- Design Name:
-- Module Name: Top - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_7s is
    Port ( CLK : in STD_LOGIC;
           DATA: in std_logic_vector(15 downto 0);
           SSEG_CA: out std_logic_vector(0 to 6); -- Inverted because I messed up
           SSEG_AN: out std_logic_vector(3 downto 0));
end Top_7s;

architecture Behavioral of Top_7s is

    begin
    process(CLK)
    --variable clk_counter  : unsigned(9 downto 0) := to_unsigned(1,10);
    --variable seg_position : unsigned(1 downto 0) := (others => '0');
    variable clk_counter  : integer := 1;
    variable seg_position : integer := 0;
    begin
        if rising_edge(CLK) then
        if clk_counter >= 1000 then

--            -- iterate through each of the positions
            if seg_position = 0 then
                SSEG_AN <= "0111";
                case DATA(15 downto 12) is
                  when "0000" => SSEG_CA <= "0000001";  -- 0
                  when "0001" => SSEG_CA <= "1001111";  -- 1
                  when "0010" => SSEG_CA <= "0010010";  -- 2
                  when "0011" => SSEG_CA <= "0000110";  -- 3
                  when "0100" => SSEG_CA <= "1001100";  -- 4
                  when "0101" => SSEG_CA <= "0100100";  -- 5
                  when "0110" => SSEG_CA <= "0100000";  -- 6
                  when "0111" => SSEG_CA <= "0001111";  -- 7
                  when "1000" => SSEG_CA <= "0000000";  -- 8
                  when "1001" => SSEG_CA <= "0000100";  -- 9
                  when "1010" => SSEG_CA <= "0001000";  -- A
                  when "1011" => SSEG_CA <= "1100000";  -- B
                  when "1100" => SSEG_CA <= "0110001";  -- C
                  when "1101" => SSEG_CA <= "1000010";  -- D
                  when "1110" => SSEG_CA <= "0110000";  -- E
                  when "1111" => SSEG_CA <= "0111000";  -- F
               end case;
                seg_position := seg_position + 1;
                clk_counter := 1;
            elsif seg_position = 1 then
                SSEG_AN <= "1011";
                case DATA(11 downto 8) is
                  when "0000" => SSEG_CA <= "0000001";  -- 0
                  when "0001" => SSEG_CA <= "1001111";  -- 1
                  when "0010" => SSEG_CA <= "0010010";  -- 2
                  when "0011" => SSEG_CA <= "0000110";  -- 3
                  when "0100" => SSEG_CA <= "1001100";  -- 4
                  when "0101" => SSEG_CA <= "0100100";  -- 5
                  when "0110" => SSEG_CA <= "0100000";  -- 6
                  when "0111" => SSEG_CA <= "0001111";  -- 7
                  when "1000" => SSEG_CA <= "0000000";  -- 8
                  when "1001" => SSEG_CA <= "0000100";  -- 9
                  when "1010" => SSEG_CA <= "0001000";  -- A
                  when "1011" => SSEG_CA <= "1100000";  -- B
                  when "1100" => SSEG_CA <= "0110001";  -- C
                  when "1101" => SSEG_CA <= "1000010";  -- D
                  when "1110" => SSEG_CA <= "0110000";  -- E
                  when "1111" => SSEG_CA <= "0111000";  -- F
               end case;
                seg_position := seg_position + 1;
                clk_counter := 1;
            elsif seg_position = 2 then
                SSEG_AN <= "1101";
                case DATA(7 downto 4) is
                  when "0000" => SSEG_CA <= "0000001";  -- 0
                  when "0001" => SSEG_CA <= "1001111";  -- 1
                  when "0010" => SSEG_CA <= "0010010";  -- 2
                  when "0011" => SSEG_CA <= "0000110";  -- 3
                  when "0100" => SSEG_CA <= "1001100";  -- 4
                  when "0101" => SSEG_CA <= "0100100";  -- 5
                  when "0110" => SSEG_CA <= "0100000";  -- 6
                  when "0111" => SSEG_CA <= "0001111";  -- 7
                  when "1000" => SSEG_CA <= "0000000";  -- 8
                  when "1001" => SSEG_CA <= "0000100";  -- 9
                  when "1010" => SSEG_CA <= "0001000";  -- A
                  when "1011" => SSEG_CA <= "1100000";  -- B
                  when "1100" => SSEG_CA <= "0110001";  -- C
                  when "1101" => SSEG_CA <= "1000010";  -- D
                  when "1110" => SSEG_CA <= "0110000";  -- E
                  when "1111" => SSEG_CA <= "0111000";  -- F
               end case;
                seg_position := seg_position + 1;
                clk_counter := 1;
            elsif seg_position = 3 then
                SSEG_AN <= "1110";
                case DATA(3 downto 0) is
                  when "0000" => SSEG_CA <= "0000001";  -- 0
                  when "0001" => SSEG_CA <= "1001111";  -- 1
                  when "0010" => SSEG_CA <= "0010010";  -- 2
                  when "0011" => SSEG_CA <= "0000110";  -- 3
                  when "0100" => SSEG_CA <= "1001100";  -- 4
                  when "0101" => SSEG_CA <= "0100100";  -- 5
                  when "0110" => SSEG_CA <= "0100000";  -- 6
                  when "0111" => SSEG_CA <= "0001111";  -- 7
                  when "1000" => SSEG_CA <= "0000000";  -- 8
                  when "1001" => SSEG_CA <= "0000100";  -- 9
                  when "1010" => SSEG_CA <= "0001000";  -- A
                  when "1011" => SSEG_CA <= "1100000";  -- B
                  when "1100" => SSEG_CA <= "0110001";  -- C
                  when "1101" => SSEG_CA <= "1000010";  -- D
                  when "1110" => SSEG_CA <= "0110000";  -- E
                  when "1111" => SSEG_CA <= "0111000";  -- F
               end case;
                seg_position := seg_position + 1;
                clk_counter := 1;
            else
                clk_counter := 1;
                seg_position := 0;
            end if;
        else
            clk_counter := clk_counter + 1;
        end if;

    end if;

end process;

end Behavioral;