library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Seven_Segment_Display is
    Port (
        clk             : in std_logic; 
        data_to_display : in std_logic_vector(7 downto 0);
        seg             : out std_logic_vector(6 downto 0);
        an              : out std_logic_vector(3 downto 0)
    );
end Seven_Segment_Display;

architecture Behavioral of Seven_Segment_Display is
    signal anot_sel : std_logic_vector(3 downto 0) := "1110";
    signal birler : std_logic_vector(3 downto 0);
    signal onlar : std_logic_vector(3 downto 0);
    signal yuzler : std_logic_vector(3 downto 0);
    signal sw_int : integer range 0 to 255;
    signal sayac : integer range 0 to 2 := 0;
    signal sayac_clock : integer range 0 to 1_000_000 := 0; 
    signal div_counter : integer range 0 to 100000 := 0; 
    signal seg_clk : std_logic := '0'; 

begin
    an <= anot_sel;
    sw_int <= to_integer(unsigned(data_to_display));

    birler <= std_logic_vector(to_unsigned(sw_int mod 10, 4));
    onlar <= std_logic_vector(to_unsigned((sw_int / 10) mod 10, 4));
    yuzler <= std_logic_vector(to_unsigned((sw_int / 100) mod 10, 4));

    process(sayac)
    begin
        case sayac is
            when 0 => anot_sel <= "1110"; 
            when 1 => anot_sel <= "1101"; 
            when 2 => anot_sel <= "1011"; 
            when others => anot_sel <= "1110";
        end case;
    end process;

    process (anot_sel, birler, onlar, yuzler)
    begin
        case anot_sel is
            when "1110" => 
                case birler is
                    when "0000" => seg <= "1000000"; -- 0
                    when "0001" => seg <= "1111001"; -- 1
                    when "0010" => seg <= "0100100"; -- 2
                    when "0011" => seg <= "0110000"; -- 3
                    when "0100" => seg <= "0011001"; -- 4
                    when "0101" => seg <= "0010010"; -- 5
                    when "0110" => seg <= "0000010"; -- 6
                    when "0111" => seg <= "1111000"; -- 7
                    when "1000" => seg <= "0000000"; -- 8
                    when "1001" => seg <= "0010000"; -- 9
                    when others => seg <= "1000000";
                end case;
            when "1101" => 
                case onlar is
                    when "0000" => seg <= "1000000"; -- 0
                    when "0001" => seg <= "1111001"; -- 1
                    when "0010" => seg <= "0100100"; -- 2
                    when "0011" => seg <= "0110000"; -- 3
                    when "0100" => seg <= "0011001"; -- 4
                    when "0101" => seg <= "0010010"; -- 5
                    when "0110" => seg <= "0000010"; -- 6
                    when "0111" => seg <= "1111000"; -- 7
                    when "1000" => seg <= "0000000"; -- 8
                    when "1001" => seg <= "0010000"; -- 9
                    when others => seg <= "1000000";
                end case;
            when "1011" => 
                case yuzler is
                    when "0000" => seg <= "1000000"; -- 0
                    when "0001" => seg <= "1111001"; -- 1
                    when "0010" => seg <= "0100100"; -- 2
                    when "0011" => seg <= "0110000"; -- 3
                    when "0100" => seg <= "0011001"; -- 4
                    when "0101" => seg <= "0010010"; -- 5
                    when "0110" => seg <= "0000010"; -- 6
                    when "0111" => seg <= "1111000"; -- 7
                    when "1000" => seg <= "0000000"; -- 8
                    when "1001" => seg <= "0010000"; -- 9
                    when others => seg <= "1000000";
                end case;
            when others => seg <= "1000000";
        end case;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if div_counter = 100000 - 1 then 
                div_counter <= 0;
                seg_clk <= not seg_clk; 
            else
                div_counter <= div_counter + 1;
            end if;

            if seg_clk = '1' then 
                if sayac_clock < 1000 then 
                    sayac_clock <= sayac_clock + 1;
                else
                    sayac_clock <= 0;
                    sayac <= (sayac + 1) mod 3; 
                end if;
            end if;
        end if;
    end process;

end Behavioral;