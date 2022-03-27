//-----------------------------------------------------------
// FileName: mux4_1.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 4 in 1 mux
//-----------------------------------------------------------

module mux4_1 (
    input [1:0] in1, in2, in3, in4,
    input [1:0] sel,
    output reg [1:0] dout
);

always @(in1 or in2 or in3 or in4 or sel)
begin
    case(sel)
        2'b00: dout = in1;
        2'b01: dout = in2;
        2'b10: dout = in3;
        default: dout = in4;
    endcase
end

endmodule
