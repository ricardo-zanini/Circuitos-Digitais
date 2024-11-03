library verilog;
use verilog.vl_types.all;
entity Pratica06_cont_gen_4_bits_vlg_sample_tst is
    port(
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        ck              : in     vl_logic;
        d               : in     vl_logic_vector(0 to 3);
        r               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Pratica06_cont_gen_4_bits_vlg_sample_tst;
