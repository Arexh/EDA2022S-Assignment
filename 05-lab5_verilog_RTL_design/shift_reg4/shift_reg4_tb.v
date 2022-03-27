//-----------------------------------------------------------
// FileName: shift_reg4_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 4bits shift register testbench
//-----------------------------------------------------------

module shift_reg4_tb;
  reg  [0:0] clk, rst_n, load;
  reg  [3:0] data;
  wire [3:0] q;

  shift_reg4 m_shift_reg4 (
      .clk(clk),
      .rst_n(rst_n),
      .load(load),
      .data(data),
      .q(q)
  );

  parameter CLK_PERIOD = 20;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end

  initial begin
        rst_n = 1'b0; load = 1'b0; data = 4'b0010;
    #50 rst_n = 1'b1;
    #50 load = 1'b1;
    #100 rst_n = 1'b0;
    #40 rst_n = 1'b1; load = 1'b0; data = 4'b0111;
    #20 load = 1'b1;
    #100 $finish;
  end

  initial begin
    $monitor("@ time=%0t, clk=%b, rst_n=%b, load=%b, data=%b, q=%b",
                $time, clk, rst_n, load, data, q);
  end
  
  initial begin
    $vcdplusfile("shift_reg4_tb.vpd");
    $vcdpluson;
  end

endmodule
