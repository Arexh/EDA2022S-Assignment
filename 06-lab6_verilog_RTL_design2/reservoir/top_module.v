//-----------------------------------------------------------
// FileName: top_module.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: water reservoir controller
//-----------------------------------------------------------

module top_module (
    input clk,
    input rst_n,
    input [3:1] s,
    output reg fr3,
    output reg fr2,
    output reg fr1,
    output reg dfr
);

parameter SB1    = 3'd0;
parameter S2A1EB = 3'd1;
parameter S2A1A  = 3'd2;
parameter S3A2EB = 3'd3;
parameter S3A2A  = 3'd4;
parameter SA3    = 3'd5;

reg [2:0] cur_state, next_state;

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        cur_state <= 3'b000;
    else
        cur_state <= next_state;
end

always@(*)
begin
    case (cur_state)
        SB1:    next_state = s[1] == 0 ? SB1   : S2A1EB;
        S2A1EB: next_state = s[1] == 0 ? SB1   : (s[2] == 0 ? S2A1EB : S3A2EB);
        S2A1A:  next_state = s[1] == 0 ? SB1   : (s[2] == 0 ? S2A1A  : S3A2EB);
        S3A2EB: next_state = s[2] == 0 ? S2A1A : (s[3] == 0 ? S3A2EB : SA3);
        S3A2A:  next_state = s[2] == 0 ? S2A1A : (s[3] == 0 ? S3A2A  : SA3);
        SA3:    next_state = s[3] == 0 ? S3A2A : SA3;
        default: next_state = 3'b000;
    endcase
end

always@(*)
begin
    if (!rst_n)
        {fr3, fr2, fr1, dfr} = 4'b0000;
    else
    case (cur_state)
        SB1:     {fr3, fr2, fr1, dfr} = 4'b1111;
        S2A1EB:  {fr3, fr2, fr1, dfr} = 4'b0110;
        S2A1A:   {fr3, fr2, fr1, dfr} = 4'b0111;
        S3A2EB:  {fr3, fr2, fr1, dfr} = 4'b0010;
        S3A2A:   {fr3, fr2, fr1, dfr} = 4'b0011;
        SA3:     {fr3, fr2, fr1, dfr} = 4'b0000;
        default: {fr3, fr2, fr1, dfr} = 4'b0000;
    endcase
end

endmodule
