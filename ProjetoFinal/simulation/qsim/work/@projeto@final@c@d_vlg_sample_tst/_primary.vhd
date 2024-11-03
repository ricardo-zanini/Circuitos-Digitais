library verilog;
use verilog.vl_types.all;
entity ProjetoFinalCD_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        ck_man          : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sel_mux         : in     vl_logic;
        v0              : in     vl_logic;
        v1              : in     vl_logic;
        v2              : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ProjetoFinalCD_vlg_sample_tst;
