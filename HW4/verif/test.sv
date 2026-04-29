import transaction_pkg::*;

program test(mem_if.tb_mp intf);
    Transaction write_q[$];
    Transaction read_q[$];

    task generate_transactions();
        for (int i = 0; i < 6; i++) begin
            Transaction t;
            t = new();
            t.expected_data = t.data_in;
            write_q.push_back(t);
        end
    endtask

    task driver();
        while (write_q.size() > 0) begin
            Transaction t;
            t = write_q.pop_front();
            @(intf.cb);
            intf.cb.write   <= 1;
            intf.cb.read    <= 0;
            intf.cb.address <= t.address;
            intf.cb.data_in <= t.data_in;
            read_q.push_back(t.copy());
            @(intf.cb);
            intf.cb.write <= 0;
        end
    endtask

    task monitor();
        repeat(14) @(intf.cb);
        foreach (read_q[i]) begin
            @(intf.cb);
            intf.cb.read    <= 1;
            intf.cb.write   <= 0;
            intf.cb.address <= read_q[i].address;
            @(intf.cb);
            intf.cb.read    <= 0;
            @(intf.cb);
            read_q[i].data_out = intf.cb.data_out;
        end
    endtask

    task checker();
        repeat(35) @(intf.cb);
        foreach (read_q[i]) begin
            read_q[i].check();
            read_q[i].print_data_out();
        end
        Transaction::print_error();
    endtask

    initial begin
        intf.cb.write   <= 0;
        intf.cb.read    <= 0;
        intf.cb.address <= 0;
        intf.cb.data_in <= 0;
        repeat(2) @(intf.cb);
        generate_transactions();
        fork
            driver();
            monitor();
            checker();
        join
        $finish;
    end
endprogram
