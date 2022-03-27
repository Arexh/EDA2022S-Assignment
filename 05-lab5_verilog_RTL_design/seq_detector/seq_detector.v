//-----------------------------------------------------------
// FileName: seq_detector.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: 111000 and 101110 sequence detector
//-----------------------------------------------------------

module seq_detector (
    input [0:0] clk, rst_n, data,
    output reg [0:0] signal
);

reg [5:0] storage;

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        storage <= 6'b0;
    else
        storage <= {storage[4:0], data};
end


always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        signal <= 1'b0;
    else begin
        if ((storage == 6'b111000) || (storage == 6'b101110))
            signal <= 1'b1;
        else
            signal <= 1'b0;
    end
end

endmodule
