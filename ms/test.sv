
module tb_dpi;
   int dat[16];
   
   import "DPI-C" pure function int add();
   import "DPI-C" pure function int set(inout int d[16]);
   import "DPI-C" pure function int sleep(input int secs);
   int j;
            
   initial
     begin
        $display("Entering in SystemVerilog Initial Block");
        #20 j = add();
        set(dat);
        $display("Value of J = %d", j);
        $display("Sleeping for 3 seconds with Unix function");

        for(int i=0;i<16;i++)
          $display("%d",dat[i]);
        sleep(3);
        $display("Exiting from SystemVerilog Initial Block");
        #5 $finish;
     end
   
endmodule

