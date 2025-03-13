library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DHT11_Top is
    generic (
        c_clkfreq  : integer := 100_000_000;
        c_baudrate : integer := 115_200;
        c_stopbit  : integer := 2;
        c_sendtime : integer := 50_000_000;
        WAIT_TIME  : integer := 2000000
    );
    Port (
        clk     : in std_logic;
        dht_pin : inout std_logic;
        tx_o    : out std_logic;
        seg     : out std_logic_vector(6 downto 0);
        an      : out std_logic_vector(3 downto 0);
        leds    : out std_logic_vector(4 downto 0);
        sw_sel  : in std_logic 
    );
end DHT11_Top;

architecture Behavioral of DHT11_Top is

component  DHT11_Reader is
    generic (
        c_clkfreq : integer := 100_000_000;
        WAIT_TIME : integer := 2000000
    );
    Port (
        clk         : in std_logic;
        dht_pin     : inout std_logic;
        data_buffer : out std_logic_vector(39 downto 0);
        data_ready  : out std_logic
    );
end component;

component Seven_Segment_Display is
    Port (
        clk             : in std_logic;
        data_to_display : in std_logic_vector(7 downto 0);
        seg             : out std_logic_vector(6 downto 0);
        an              : out std_logic_vector(3 downto 0)
    );
end component;

component UART_TX is
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
end component;

    signal data_buffer_internal : std_logic_vector(39 downto 0);
    signal data_ready_internal : std_logic;
    signal tx_start : std_logic := '0';
    signal tx_done_internal : std_logic;
    signal send_timer : integer range 0 to 50_000_000 := 0;
    signal data_to_display : std_logic_vector(7 downto 0);

begin
    DHT11_reader_inst : DHT11_Reader
        port map (
            clk => clk,
            dht_pin => dht_pin,
            data_buffer => data_buffer_internal,
            data_ready => data_ready_internal
        );
    UART_TX_inst : UART_TX
        port map (
            clk => clk,
            tx_start => tx_start,
            data_to_send => data_buffer_internal,
            tx_o => tx_o,
            tx_done => tx_done_internal
        );
    Seven_Segment_Display_inst : Seven_Segment_Display
        port map (
            clk => clk,
            data_to_display => data_to_display,
            seg => seg,
            an => an
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if send_timer = c_sendtime - 1 then
                send_timer <= 0;
                tx_start <= data_ready_internal;
            else
                send_timer <= send_timer + 1;
                tx_start <= '0';
            end if;
        end if;
        
        if sw_sel = '1' then
            for i in 0 to 7 loop
                data_to_display(i) <= data_buffer_internal(7 - i);
            end loop;
        else
            for i in 0 to 7 loop
                data_to_display(i) <= data_buffer_internal(23 - i);
            end loop;
         end if;                
    end process;

    leds(0) <= data_ready_internal; 
    leds(1 downto 4) <= (others => '0'); 
    
end Behavioral;