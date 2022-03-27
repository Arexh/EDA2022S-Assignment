//-----------------------------------------------------------
// FileName: mux4_1_tb.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 4 in 1 mux testbench
//-----------------------------------------------------------

module mux4_1_tb;
  reg  [1:0] in1, in2, in3, in4, sel;
  wire [1:0] dout;

  mux4_1 m_mux4_1 (
      .in1(in1),
      .in2(in2),
      .in3(in3),
      .in4(in4),
      .sel(sel),
      .dout(dout)
  );

  initial begin
        in1 = 0; in2 = 1; in3 = 2; in4 = 3; sel = 0;
    #10 in1 = 1;
    #10 in1 = 2;
    #10 sel = 1;
    #10 in1 = 3;
    #10 in1 = 2;
    #10 sel = 3;
    #10 in4 = 1;
    #10 sel = 2;
    #10 $finish;
  end

  initial begin
    $monitor("@ time=%0t, sel=%b, dout=%b, in1=%b, in2=%b, in3=%b, in4=%b",
                $time, sel, dout, in1, in2, in3, in4);
  end
  
  initial begin
    $vcdplusfile("mux4_1_tb.vpd");
    $vcdpluson;
  end

endmodule
