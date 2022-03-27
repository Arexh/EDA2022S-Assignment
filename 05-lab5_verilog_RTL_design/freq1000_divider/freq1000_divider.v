//-----------------------------------------------------------
// FileName: freq1000_divider.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 1000 frequency divider
//-----------------------------------------------------------

module freq1000_divider (
    input [0:0] clk, rst_n,
    output reg [0:0] clk_out
);

reg [8:0] count;

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n) begin
        count <= 0;
        clk_out <= 0;
    end
    else if (count != 499)
        count <= count + 1;
    else begin
        count <= 0;
        clk_out <= ~clk_out;
    end
end

endmodule
