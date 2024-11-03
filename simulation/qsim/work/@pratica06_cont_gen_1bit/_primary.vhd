library verilog;
use verilog.vl_types.all;
entity Pratica06_cont_gen_1bit is
    port(
        q               : out    vl_logic;
        r               : in     vl_logic;
        ck              : in     vl_logic;
        sand            : out    vl_logic;
        eand            : in     vl_logic;
        qant            : in     vl_logic;
        sor             : out    vl_logic;
        eor             : in     vl_logic;
        d               : in     vl_logic;
        c0              : in     vl_logic;
        c1              : in     vl_logic
    );
end Pratica06_cont_gen_1bit;
