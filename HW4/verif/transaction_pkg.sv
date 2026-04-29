package transaction_pkg;
    class Transaction;
        logic [15:0] address;
        logic [7:0]  data_in;
        logic [8:0]  data_out;
        logic [7:0]  expected_data;
        static int   error = 0;

        function new();
            address = $urandom;
            data_in = $urandom;
        endfunction

        function void print_data_out();
            $display("[%0t] data_out = 8'h%0h", $time, data_out[7:0]);
        endfunction

        static function void print_error();
            $display("[%0t] Total Errors = %0d", $time, error);
        endfunction

        function void check();
            if (data_out[7:0] !== expected_data) begin
                $display("MISMATCH at addr %0h: expected %0h, got %0h",
                    address, expected_data, data_out[7:0]);
                error++;
            end
        endfunction

        function Transaction copy();
            Transaction t = new();
            t.address       = this.address;
            t.data_in       = this.data_in;
            t.data_out      = this.data_out;
            t.expected_data = this.expected_data;
            return t;
        endfunction
    endclass
endpackage
