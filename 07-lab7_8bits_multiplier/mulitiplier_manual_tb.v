//-----------------------------------------------------------
// FileName: mulitiplier_manual_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: mulitiplier testbench
//-----------------------------------------------------------

module mulitiplier_manual_tb;
  // declare parameter and variables
  parameter CLK_PERIOD = 20;
  parameter WIDTH = 8;
  reg  clk, rst_n, start;
  reg  signed [WIDTH-1:0] A, B;
  wire done;
  wire signed [2 * WIDTH - 1:0] M;
  wire signed [2 * WIDTH - 1:0] ground_truth;
  integer multiplicand, multiplier, success, error;
  // define module and bind variables
  mulitiplier m_mulitiplier (
      .A(A),
      .B(B),
      .M(M),
      .clk(clk),
      .rst_n(rst_n),
      .start(start),
      .done(done)
  );
  // combinational logic, to calculate the expected result
  assign ground_truth = A * B;
  // generate 20Hz clock signal
  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end
  // start to test
  initial begin
    success = 0;
    error = 0;
    $display("---------- Mulitiplier Testbench Start ----------");
    // test 0 x 0
    #220
    rst_n = 1'b0; A = 0; B = 0; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test 0 x 127
    #220
    rst_n = 1'b0; A = 0; B = 127; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test -128 x 0
    #220
    rst_n = 1'b0; A = -128; B = 0; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test 127 x 127
    #220
    rst_n = 1'b0; A = 127; B = 127; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test -128 x -128
    #220
    rst_n = 1'b0; A = -128; B = -128; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test 55 x 114
    #220
    rst_n = 1'b0; A = 55; B = 114; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test -55 x 114
    #220
    rst_n = 1'b0; A = -55; B = 114; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    // test rst_n
    #220
    rst_n = 1'b0; A = -55; B = 114; start = 1'b0;
    #20
    rst_n = 1'b1; start = 1'b1;
    #80
    rst_n = 1'b0;
    #200
    // output summary
    $display("Summary: Success=%d, Error=%d", success, error);
    $display("----------- Mulitiplier Testbench End -----------");
    $finish;
  end
  // check the value of M
  always@(posedge done)
  begin
    if (ground_truth != M)
    begin
      // display error when the result is wrong
      error = error + 1;
      $display("Error: A=%d, B=%d, M=%d, Expected=%d", A, B, M, ground_truth);
    end
    else
    begin
      success = success + 1;
      $display("Passed: A=%d, B=%d, M=%d, Expected=%d", A, B, M, ground_truth);
    end
  end
  // output wave file
  initial begin
    $vcdplusfile("mulitiplier_manual_tb.vpd");
    $vcdpluson;
  end

endmodule
