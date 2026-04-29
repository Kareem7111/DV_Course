module adder_tb;
    localparam WIDTH = 8;
    logic clk;
    logic reset;
    logic [WIDTH-1:0] in1, in2;
    logic [WIDTH:0] sum;

    // Queues
    logic [WIDTH-1:0] in_q1[$];
    logic [WIDTH-1:0] in_q2[$];
    logic [WIDTH:0]   expected_q[$];
    logic [WIDTH:0]   out_q[$];

    // Temp variables for queue filling
    logic [WIDTH-1:0] a, b;

    // DUT instantiation
    adder #(.WIDTH(WIDTH)) dut (
        .clk(clk),
        .reset(reset),
        .in1(in1),
        .in2(in2),
        .sum(sum)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // Reset
        reset = 1;
        in1 = 0; in2 = 0;
        repeat(2) @(posedge clk); #1;
        reset = 0;

        // Fill input queues with 100 random values
        for (int i = 0; i < 100; i++) begin
            a = $urandom;
            b = $urandom;
            in_q1.push_back(a);
            in_q2.push_back(b);
            expected_q.push_back(a + b);
        end

        // Run driver, monitor, checker in parallel
        fork
            driver();
            monitor();
            checker();
        join
    end

    // Driver Task
    task driver();
        while (in_q1.size() > 0) begin
            @(negedge clk);
            in1 = in_q1.pop_front();
            in2 = in_q2.pop_front();
        end
    endtask

    // Monitor Task - wait 5 cycles for pipeline delay
    task monitor();
        repeat(4) @(posedge clk);
        repeat(100) begin
            @(posedge clk); #1;
            out_q.push_back(sum);
        end
    endtask

    // Checker Task
    task checker();
        int error_counter = 0;
        logic [WIDTH:0] expected_val, actual_val;
        repeat(100) begin
            wait(out_q.size() > 0);
            expected_val = expected_q.pop_front();
            actual_val   = out_q.pop_front();
            if (actual_val !== expected_val) begin
                $display("ERROR: expected %0h, got %0h", expected_val, actual_val);
                error_counter++;
            end
        end
        if (error_counter == 0)
            $display("TEST PASSED - No errors!");
        else
            $display("TEST FAILED - %0d errors!", error_counter);
        $finish;
    endtask

    initial begin
        $fsdbDumpfile("waves.fsdb");
        $fsdbDumpvars(0, adder_tb);
    end

endmodule
