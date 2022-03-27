//-----------------------------------------------------------
// FileName: cnt10_tb.v
// Creator : Peilin Wu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 10 counter
// Update  :
// Coryright: 
//-----------------------------------------------------------

module cnt10_tb;

  reg clk, rst, en, load;
  reg [3:0] data;
  wire cout;
  wire [3:0] dout;

  cnt10 u_cnt10(
    // module head: verillog-2001 format
    /*input  wire */ .clk   (clk),
    /*input  wire */ .rst   (rst),
    /*input  wire */ .en    (en),
    /*input  wire */ .load  (load),
    /*output wire */ .cout  (cout),
    /*output wire */ .dout  (dout),
    /*input  wire */ .data  (data)
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
    en = 0;
    rst = 0;
    load = 1;
    #40
    rst = 1;
    #40
    en = 1;
    #220
    load = 0;
    #40
    load = 1;
  end
  /* set parameters */

  initial begin
    data = 4'b1010;
    #50 data = 4'b0101;
    #360  $finish;
  end

  initial fork
    #20 if ({cout,dout} != 5'b00000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #40 if ({cout,dout} != 5'b00000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #50 if ({cout,dout} != 5'b00000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #85 if ({cout,dout} != 5'b00000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #95 if ({cout,dout} != 5'b00001) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #115 if ({cout,dout} != 5'b00010) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #135 if ({cout,dout} != 5'b00011) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #155 if ({cout,dout} != 5'b00100) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #175 if ({cout,dout} != 5'b00101) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #195 if ({cout,dout} != 5'b00110) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #215 if ({cout,dout} != 5'b00111) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #235 if ({cout,dout} != 5'b01000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #255 if ({cout,dout} != 5'b11001) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #275 if ({cout,dout} != 5'b00000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #295 if ({cout,dout} != 5'b00001) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #315 if ({cout,dout} != 5'b00101) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #335 if ({cout,dout} != 5'b00101) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #355 if ({cout,dout} != 5'b00110) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #375 if ({cout,dout} != 5'b00111) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
    #395 if ({cout,dout} != 5'b01000) $display("Error: {cout,dout}=%b,rst=%b, en=%b, load=%b, data=%b",{cout,dout}, rst, en, load, data);
  join

  initial begin
    $vcdplusfile("cnt10_tb.vpd");
    $vcdpluson;
  end
endmodule
