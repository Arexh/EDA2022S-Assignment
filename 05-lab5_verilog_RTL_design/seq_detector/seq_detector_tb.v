//-----------------------------------------------------------
// FileName: seq_detector_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 111000 and 101110 sequence detector testbench
//-----------------------------------------------------------

module seq_detector_tb;
  reg  [0:0] clk, rst_n, data;
  wire [0:0] signal;

  seq_detector m_seq_detector (
      .clk(clk),
      .rst_n(rst_n),
      .data(data),
      .signal(signal)
  );

  parameter CLK_PERIOD = 20;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end

  initial begin
        rst_n = 1'b0; data = 1'b0;
    #65 rst_n = 1'b1; data = 1'b1;
    #20 data = 1'b0;
    #20 data = 1'b1;
    #20 data = 1'b0;
    #20 data = 1'b0;
    #20 data = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b0;
    #20 data = 1'b0;
    #20 data = 1'b0;
    #20 data = 1'b1;
    #20 data = 1'b0; rst_n = 1'b0;
    #20 data = 1'b0; rst_n = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b0;
    #20 data = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b1;
    #20 data = 1'b0;
    #40 rst_n = 1'b0;
    #100 $finish;
  end

  initial begin
    $monitor("@ time=%0t, clk=%b, rst_n=%b, data=%b, signal=%b",
                $time, clk, rst_n, data, signal);
  end
  
  initial begin
    $vcdplusfile("seq_detector_tb.vpd");
    $vcdpluson;
  end

endmodule
