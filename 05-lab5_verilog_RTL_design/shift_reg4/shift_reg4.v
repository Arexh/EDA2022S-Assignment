//-----------------------------------------------------------
// FileName: shift_reg4.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 4bits shift register
//-----------------------------------------------------------

module shift_reg4 (
    input [0:0] clk, rst_n, load,
    input [3:0] data,
    output reg [3:0] q
);

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        q <= 4'b0;
    else if(!load)
        q <= data;
    else
        q <= {q[0], q[3:1]};
end

endmodule
