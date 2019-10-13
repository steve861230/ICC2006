library verilog;
use verilog.vl_types.all;
entity triangle is
    generic(
        idle            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        read            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        bottom          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        cal             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \out\           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        temp            : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        nt              : in     vl_logic;
        xi              : in     vl_logic_vector(2 downto 0);
        yi              : in     vl_logic_vector(2 downto 0);
        busy            : out    vl_logic;
        po              : out    vl_logic;
        xo              : out    vl_logic_vector(2 downto 0);
        yo              : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of idle : constant is 1;
    attribute mti_svvh_generic_type of read : constant is 1;
    attribute mti_svvh_generic_type of bottom : constant is 1;
    attribute mti_svvh_generic_type of cal : constant is 1;
    attribute mti_svvh_generic_type of \out\ : constant is 1;
    attribute mti_svvh_generic_type of temp : constant is 1;
end triangle;
