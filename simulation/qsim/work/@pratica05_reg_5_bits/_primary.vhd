library verilog;
use verilog.vl_types.all;
entity Pratica05_reg_5_bits is
    port(
        q               : out    vl_logic_vector(4 downto 0);
        d               : in     vl_logic_vector(4 downto 0);
        en              : in     vl_logic;
        ck              : in     vl_logic;
        rst             : in     vl_logic
    );
end Pratica05_reg_5_bits;
