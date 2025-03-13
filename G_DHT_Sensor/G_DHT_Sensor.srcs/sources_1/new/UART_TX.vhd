library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_TX is
    generic (
        c_clkfreq  : integer := 100_000_000;
        c_baudrate : integer := 115_200;
        c_stopbit  : integer := 2
    );
    Port (
        clk          : in std_logic;
        tx_start     : in std_logic;
        data_to_send : in std_logic_vector(39 downto 0);
        tx_o         : out std_logic;
        tx_done      : out std_logic
    );
end UART_TX;

architecture Behavioral of UART_TX is
    constant c_bittimerlim : integer := c_clkfreq / c_baudrate;
    constant c_stopbitlim : integer := (c_clkfreq / c_baudrate) * c_stopbit;
    signal bittimer : integer range 0 to c_stopbitlim := 0;
    signal bitcntr : integer range 0 to 7 := 0;
    signal shreg : std_logic_vector (7 downto 0) := (others => '0');
    
    constant c_start_byte : std_logic_vector(7 downto 0) := "10101010"; --170
    constant c_stop_byte : std_logic_vector(7 downto 0) := "01010101"; --55
    
    type state_type_uart is (S_IDLE, S_START, S_DATA, S_WAIT_NEXT, S_STOP);
    signal state_uart : state_type_uart := S_IDLE;
    signal byte_sel : std_logic_vector(2 downto 0) := "000";
    signal tx_done_internal : std_logic := '0';

begin
    tx_done <= tx_done_internal;

    process(clk)
    begin
        if rising_edge(clk) then
            case state_uart is
                when S_IDLE =>
                    tx_o <= '1';
                    tx_done_internal <= '0';
                    bitcntr <= 0;
                    byte_sel <= "000";
                    if (tx_start = '1') then
                        state_uart <= S_START;
                        tx_o <= '0';
                        shreg <= c_start_byte;
                    end if;
                when S_START =>
                    if (bittimer = c_bittimerlim - 1) then
                        state_uart <= S_DATA;
                        bittimer <= 0;
                        tx_o <= shreg(0);
                    else
                        bittimer <= bittimer + 1;
                    end if;
                when S_DATA =>
                    if (bitcntr = 7) then
                        if (bittimer = c_bittimerlim - 1) then
                            bitcntr <= 0;
                            state_uart <= S_STOP;
                            tx_o <= '1';
                            bittimer <= 0;
                        else
                            bittimer <= bittimer + 1;
                        end if;
                    else
                        if (bittimer = c_bittimerlim - 1) then
                            shreg(6 downto 0) <= shreg(7 downto 1);
                            tx_o <= shreg(1);
                            bitcntr <= bitcntr + 1;
                            bittimer <= 0;
                        else
                            bittimer <= bittimer + 1;
                        end if;
                    end if;
                when S_STOP =>
                    if (bittimer = c_stopbitlim - 1) then
                        bittimer <= 0;
                        if byte_sel = "000" then
                            byte_sel <= "001";
                            state_uart <= S_WAIT_NEXT;
                        elsif byte_sel = "001" then
                            byte_sel <= "010";
                            state_uart <= S_WAIT_NEXT;
                        elsif byte_sel = "010" then
                            byte_sel <= "011";
                            state_uart <= S_WAIT_NEXT;
                         elsif byte_sel = "011" then
                            byte_sel <= "100";
                            state_uart <= S_WAIT_NEXT;
                          elsif byte_sel = "100" then
                            byte_sel <= "101";
                            state_uart <= S_WAIT_NEXT;
                           elsif byte_sel = "101" then
                            byte_sel <= "110";
                            state_uart <= S_WAIT_NEXT;
                        else
                            state_uart <= S_IDLE;
                            tx_done_internal <= '1';
                        end if;
                    else
                        bittimer <= bittimer + 1;
                    end if;
                when S_WAIT_NEXT =>
                    if(byte_sel = "001") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        for i in 0 to 7 loop
                            shreg(i) <= data_to_send(7 - i); -- (7 downto 0)
                        end loop;
                    elsif(byte_sel = "010") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        for i in 0 to 7 loop
                            shreg(i) <= data_to_send(15 - i); -- (15 downto 8)
                        end loop;
                    elsif(byte_sel = "011") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        for i in 0 to 7 loop
                            shreg(i) <= data_to_send(23 - i);
                        end loop;
                    elsif(byte_sel = "100") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        for i in 0 to 7 loop
                            shreg(i) <= data_to_send(31 - i);
                        end loop;
                    elsif(byte_sel = "101") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        for i in 0 to 7 loop
                            shreg(i) <= data_to_send(39 - i);
                        end loop;
                    elsif(byte_sel = "110") then
                        state_uart <= S_START;
                        tx_o <= '0';
                        shreg <= c_stop_byte;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;