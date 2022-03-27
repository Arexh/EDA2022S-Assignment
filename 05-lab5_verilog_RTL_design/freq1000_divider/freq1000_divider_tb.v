//-----------------------------------------------------------
// FileName: freq1000_divider_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 1000 frequency divider testbench
//-----------------------------------------------------------

module freq1000_divider_tb;
  reg  [0:0] clk, rst_n;
  wire [0:0] clk_out;

  freq1000_divider m_freq1000_divider (
      .clk(clk),
      .rst_n(rst_n),
      .clk_out(clk_out)
  );

  parameter CLK_PERIOD = 2;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end

  initial begin
        rst_n = 1'b0;
    #10 rst_n = 1'b1;
    #3500 rst_n = 1'b0;
    #100 $finish;
  end

  initial begin
    $monitor("@ time=%0t, clk=%b, rst_n=%b, clk_out=%b",
                $time, clk, rst_n, clk_out);
  end
  
  initial begin
    $vcdplusfile("freq1000_divider_tb.vpd");
    $vcdpluson;
  end

endmodule
