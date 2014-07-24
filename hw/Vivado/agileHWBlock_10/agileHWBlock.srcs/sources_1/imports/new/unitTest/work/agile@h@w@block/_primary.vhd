library verilog;
use verilog.vl_types.all;
entity agileHWBlock is
    port(
        iTDATA          : in     vl_logic_vector(31 downto 0);
        iTUSER          : in     vl_logic;
        iTKEEP          : in     vl_logic_vector(3 downto 0);
        iTVALID         : in     vl_logic;
        iTLAST          : in     vl_logic;
        oTREADY         : out    vl_logic;
        oTDATA          : out    vl_logic_vector(31 downto 0);
        oTUSER          : out    vl_logic;
        oTKEEP          : out    vl_logic_vector(3 downto 0);
        oTVALID         : out    vl_logic;
        oTLAST          : out    vl_logic;
        iTREADY         : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end agileHWBlock;
