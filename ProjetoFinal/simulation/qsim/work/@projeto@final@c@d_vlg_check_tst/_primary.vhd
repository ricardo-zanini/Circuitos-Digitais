library verilog;
use verilog.vl_types.all;
entity ProjetoFinalCD_vlg_check_tst is
    port(
        B               : in     vl_logic;
        C               : in     vl_logic;
        cki             : in     vl_logic;
        ha              : in     vl_logic_vector(6 downto 0);
        hb              : in     vl_logic_vector(6 downto 0);
        N               : in     vl_logic;
        q               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic_vector(3 downto 0);
        v               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ProjetoFinalCD_vlg_check_tst;
