module tb;

    logic clk, write, read;
    logic [7:0] data_in;
    logic [15:0] address;
    logic [8:0] data_out;

    my_mem dut (
        .clk(clk), .write(write), .read(read),
        .data_in(data_in), .address(address),
        .data_out(data_out)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Data structures
    logic [15:0] address_array[];
    logic [7:0]  data_to_write_array[];
    logic [7:0]  data_read_expect_assoc [logic [15:0]];
    logic [7:0]  data_read_queue[$];

    int error_counter = 0;

    initial begin
        write = 0; read = 0;

        address_array       = new[6];
        data_to_write_array = new[6];

        // --- 6 Writes ---
        for (int i = 0; i < 6; i++) begin
            address_array[i]      = $urandom;
            data_to_write_array[i] = $urandom;
            data_read_expect_assoc[address_array[i]] = data_to_write_array[i];

            @(negedge clk);
            address = address_array[i];
            data_in = data_to_write_array[i];
            write   = 1;
            read    = 0;
            @(posedge clk); #1;
        end
        write = 0;

        // --- 6 Reads in reverse order ---
        for (int i = 5; i >= 0; i--) begin
            @(negedge clk);
            address = address_array[i];
            read    = 1;
            write   = 0;
            @(posedge clk); #1;

            data_read_queue.push_back(data_out[7:0]);

            if (data_out[7:0] !== data_read_expect_assoc[address_array[i]]) begin
                $display("ERROR at address %0h: expected %0h, got %0h",
                    address_array[i],
                    data_read_expect_assoc[address_array[i]],
                    data_out[7:0]);
                error_counter++;
            end
        end
        read = 0;

        // --- Print results ---
        $display("\n=== data_read_queue ===");
        foreach (data_read_queue[i])
            $display("  [%0d] = 8'h%0h", i, data_read_queue[i]);

        $display("\nError Counter = %0d", error_counter);
        $finish;
    end

    initial begin
        $fsdbDumpfile("waves.fsdb");
        $fsdbDumpvars(0, tb);
    end

endmodule
