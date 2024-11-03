library verilog;
use verilog.vl_types.all;
entity Pratica05_reg_1_bit is
    port(
        q               : out    vl_logic;
        en              : in     vl_logic;
        d               : in     vl_logic;
        ck              : in     vl_logic;
        rst             : in     vl_logic
    );
end Pratica05_reg_1_bit;
