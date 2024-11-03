library verilog;
use verilog.vl_types.all;
entity Pratica04_Full_Adder is
    port(
        sum             : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        cout            : out    vl_logic
    );
end Pratica04_Full_Adder;
