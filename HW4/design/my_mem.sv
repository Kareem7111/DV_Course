module my_mem(mem_if.dut_mp intf);
    logic [8:0] mem_array[int];

    always @(posedge intf.clk) begin
        if (intf.write)
            mem_array[intf.address] = {^intf.data_in, intf.data_in};
        else if (intf.read)
            intf.data_out = mem_array[intf.address];
    end
endmodule
