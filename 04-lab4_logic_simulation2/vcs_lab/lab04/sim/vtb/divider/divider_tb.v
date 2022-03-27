//-----------------------------------------------------------
// FileName: divider_tb.v
// Creator : Peilin Wu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: divider test bench
// Update  :
// Coryright: 
//-----------------------------------------------------------

module divider_tb;

  reg clk, reset;
  wire clk_out;

  divider u_divider(
    /*input  wire */ .clk     (clk),
    /*input  wire */ .reset   (reset),
    /*output wire */ .clk_out (clk_out)
  );

  /* generate clock signal */
  parameter CLK_PERIOD = 2;

  initial begin
    clk = 0;
    forever begin
      #(CLK_PERIOD/2) clk = ~clk;
    end
  end
  /* generate clock signal */

  /* set parameters */
  initial begin
    reset = 0;
    #100
    reset = 1;
    #4200
    reset = 0;
    #200
    reset = 1;
    #2200
    reset = 0;
    #100
    $finish;
  end
  /* set parameters */

  initial fork
    #50 if (clk_out != 1'b0) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #110 if (clk_out != 1'b0) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #1000 if (clk_out != 1'b0) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #2110 if (clk_out != 1'b1) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #4000 if (clk_out != 1'b1) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #4200 if (clk_out != 1'b0) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #6400 if (clk_out != 1'b1) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
    #6700 if (clk_out != 1'b0) $display("Error: {clk_out}=%b,reset=%b",clk_out, reset);
  join

  initial begin
    $vcdplusfile("divider_tb.vpd");
    $vcdpluson;
  end
endmodule
