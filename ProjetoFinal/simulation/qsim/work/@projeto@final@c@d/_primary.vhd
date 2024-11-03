library verilog;
use verilog.vl_types.all;
entity ProjetoFinalCD is
    port(
        cki             : out    vl_logic;
        ck              : in     vl_logic;
        rst             : in     vl_logic;
        sel_mux         : in     vl_logic;
        ck_man          : in     vl_logic;
        C               : out    vl_logic;
        v2              : in     vl_logic;
        v1              : in     vl_logic;
        v0              : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0);
        w               : in     vl_logic_vector(1 downto 0);
        d               : in     vl_logic_vector(3 downto 0);
        N               : out    vl_logic;
        Z               : out    vl_logic;
        v               : out    vl_logic;
        B               : out    vl_logic;
        ha              : out    vl_logic_vector(6 downto 0);
        hb              : out    vl_logic_vector(6 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end ProjetoFinalCD;
