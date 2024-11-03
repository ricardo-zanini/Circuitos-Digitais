library verilog;
use verilog.vl_types.all;
entity Pratica06_cont_gen_4_bits is
    port(
        q               : out    vl_logic_vector(0 to 3);
        d               : in     vl_logic_vector(0 to 3);
        c1              : in     vl_logic;
        c0              : in     vl_logic;
        ck              : in     vl_logic;
        r               : in     vl_logic
    );
end Pratica06_cont_gen_4_bits;
