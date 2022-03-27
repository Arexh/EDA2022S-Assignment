//-----------------------------------------------------------
// FileName: top_module_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: water reservoir controller testbench
//-----------------------------------------------------------

module top_module_tb;
  reg  clk, rst_n;
  reg  [3:1] s;
  wire fr3, fr2, fr1, dfr;

  top_module m_top_module (
      .clk(clk),
      .rst_n(rst_n),
      .s(s),
      .fr3(fr3),
      .fr2(fr2),
      .fr1(fr1),
      .dfr(dfr)
  );

  parameter CLK_PERIOD = 20;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end

  initial begin
    rst_n = 1'b0; s = 3'b000;
    #40 rst_n = 1'b1;
    #40 s = 3'b001;
    #20 s = 3'b000;
    #40 s = 3'b001;
    #40 s = 3'b011;
    #20 s = 3'b001;
    #60 s = 3'b011;
    #40 s = 3'b111;
    #60 s = 3'b011;
    #100 $finish;
  end

  initial begin
    $monitor("@ time=%0t, clk=%b, rst_n=%b, s=%b, fr3=%b, fr2=%b, fr1=%b, dfr=%b",
                $time, clk, rst_n, s, fr3, fr2, fr1, dfr);
  end
  
  initial begin
    $vcdplusfile("top_module_tb.vpd");
    $vcdpluson;
  end

endmodule
