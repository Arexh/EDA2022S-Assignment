//-----------------------------------------------------------
// FileName: sequential_detector_tb.v
// Creator : Peilin Wu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: sequential detector test bench
// Update  :
// Coryright: 
//-----------------------------------------------------------

module sequential_detector_tb;

  reg clk, reset, d;
  wire y;

  sequential_detector u_sequential_detector(
    /*input  wire */ .clk     (clk),
    /*input  wire */ .reset   (reset),
    /*input  wire */ .d       (d),
    /*output wire */ .y       (y)
  );

  /* generate clock signal */
  parameter CLK_PERIOD = 20;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end
  /* generate clock signal */

  /* set parameters */
  initial begin
    reset = 1;
    #60
    reset = 0;
  end
  /* set parameters */

  /* set data */
  initial fork
    d = 1;
    #120
    d = 0;
    #160
    d = 1;
    #180
    d = 0;
    #240
    d = 1;
    #260
    d = 0;
    #280
    reset = 1;
    #300
    d = 1;
    #340
    $finish;
  join
  /* set data */

  initial fork
    #20 if (y != 4'b0) $display("Error: {y}=%b,reset=%b,d=%b",y,reset, d);
    #80 if (y != 4'b0) $display("Error: {y}=%b,reset=%b,d=%b",y,reset, d);
    #185 if (y != 4'b1) $display("Error: {y}=%b,reset=%b,d=%b",y,reset, d);
    #260 if (y != 4'b0) $display("Error: {y}=%b,reset=%b,d=%b",y,reset, d);
    #320 if (y != 4'b0) $display("Error: {y}=%b,reset=%b,d=%b",y,reset, d);
  join

  initial begin
    $vcdplusfile("sequential_detector_tb.vpd");
    $vcdpluson;
  end
endmodule
