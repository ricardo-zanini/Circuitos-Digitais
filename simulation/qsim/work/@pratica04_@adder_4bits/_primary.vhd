library verilog;
use verilog.vl_types.all;
entity Pratica04_Adder_4bits is
    port(
        cout            : out    vl_logic;
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end Pratica04_Adder_4bits;
