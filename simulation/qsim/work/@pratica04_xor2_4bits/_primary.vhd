library verilog;
use verilog.vl_types.all;
entity Pratica04_xor2_4bits is
    port(
        s               : out    vl_logic_vector(3 downto 0);
        a               : in     vl_logic_vector(3 downto 0);
        c0              : in     vl_logic
    );
end Pratica04_xor2_4bits;
