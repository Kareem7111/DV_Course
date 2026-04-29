import transaction_pkg::*;

module top;
    logic clk;

    // 10MHz clock = 100ns period
    initial clk = 0;
    always #50 clk = ~clk;

    // Interface instantiation
    mem_if intf(.clk(clk));

    // DUT instantiation
    my_mem dut(.intf(intf));

    // Program instantiation
    test t(.intf(intf.tb_mp));

    initial begin
        $fsdbDumpfile("waves.fsdb");
        $fsdbDumpvars(0, top);
    end
endmodule
