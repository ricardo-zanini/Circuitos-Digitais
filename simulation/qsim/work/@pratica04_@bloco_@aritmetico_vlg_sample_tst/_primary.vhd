library verilog;
use verilog.vl_types.all;
entity Pratica04_Bloco_Aritmetico_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Pratica04_Bloco_Aritmetico_vlg_sample_tst;
