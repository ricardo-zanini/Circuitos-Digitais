library verilog;
use verilog.vl_types.all;
entity Pratica05_reg_1_bit_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        d               : in     vl_logic;
        en              : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Pratica05_reg_1_bit_vlg_sample_tst;
