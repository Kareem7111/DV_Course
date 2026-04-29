interface mem_if(input logic clk);
    logic        write;
    logic        read;
    logic [7:0]  data_in;
    logic [15:0] address;
    logic [8:0]  data_out;

    // Clocking block for testbench
    clocking cb @(posedge clk);
        output write, read, data_in, address;
        input  data_out;
    endclocking

    // Modport for DUT (no clocking block)
    modport dut_mp (
        input  clk,write, read, data_in, address,
        output data_out
    );

    // Modport for testbench
    modport tb_mp (clocking cb, input clk);

    // Checker: prevent read and write at same time
    always @(posedge clk) begin
        if (write && read)
            $error("CHECKER ERROR: read and write asserted at the same time!");
    end

endinterface
