//-----------------------------------------------------------
// FileName: mulitiplier_rand_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: mulitiplier random testbench
//-----------------------------------------------------------

module mulitiplier_rand_tb;
  // declare parameter and variables
  parameter CLK_PERIOD = 20;
  parameter WIDTH = 8;
  reg  clk, rst_n, start;
  reg  signed [WIDTH-1:0] A, B;
  wire done;
  wire signed [2 * WIDTH - 1:0] M;
  wire signed [2 * WIDTH - 1:0] ground_truth;
  integer loop, success, error;
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
  // parase seed value from command
  reg [31:0] seed;
  initial begin
    if(!$value$plusargs("seed=%d",seed)) begin
      seed = 10;
    end else begin
      $display("Random function with the SEED=%d", seed);
    end
  end 
  // start to test
  initial begin
    success = 0;
    error = 0;
    $display("---------- Mulitiplier Testbench Start ----------");
    // generate random values to test
    for (loop = 0; loop < 10000; loop = loop + 1)
    begin
        #220
        rst_n = 1'b0; A = $random(seed); B = $random(seed); start = 1'b0;
        #20
        rst_n = 1'b1; start = 1'b1;
    end
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
    $vcdplusfile("mulitiplier_rand_tb.vpd");
    $vcdpluson;
  end

endmodule
