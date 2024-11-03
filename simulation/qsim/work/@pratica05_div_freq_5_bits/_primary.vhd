library verilog;
use verilog.vl_types.all;
entity Pratica05_div_freq_5_bits is
    port(
        q               : out    vl_logic_vector(4 downto 0);
        ck              : in     vl_logic;
        rst             : in     vl_logic
    );
end Pratica05_div_freq_5_bits;
