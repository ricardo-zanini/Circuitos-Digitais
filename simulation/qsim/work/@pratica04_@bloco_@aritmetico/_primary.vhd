library verilog;
use verilog.vl_types.all;
entity Pratica04_Bloco_Aritmetico is
    port(
        cout            : out    vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end Pratica04_Bloco_Aritmetico;
