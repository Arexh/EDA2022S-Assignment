//-----------------------------------------------------------
// FileName: led_lights_tb.v
// Creator : Peilin Wu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: led lights test bench
// Update  :
// Coryright: 
//-----------------------------------------------------------

module led_lights_tb;

  reg clk, rst_n;
  wire [3:0] led;

  led_lights u_led_lights(
    /*input  wire */ .clk     (clk),
    /*input  wire */ .rst_n   (rst_n),
    /*output wire */ .led     (led)
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
    rst_n = 0;
    #60
    rst_n = 1;
    #1860
    rst_n = 0;
    #200
    $finish;
  end
  /* set parameters */

  initial fork
    #20 if (led != 4'b1111) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #80 if (led != 4'b1111) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #330 if (led != 4'b0111) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #850 if (led != 4'b1011) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #1370 if (led != 4'b1101) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #1890 if (led != 4'b1110) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
    #2000 if (led != 4'b1111) $display("Error: {led}=%b,rst_n=%b",led, rst_n);
  join

  initial begin
    $vcdplusfile("led_lights_tb.vpd");
    $vcdpluson;
  end
endmodule
