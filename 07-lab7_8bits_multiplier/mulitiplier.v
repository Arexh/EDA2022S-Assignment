//-----------------------------------------------------------
// FileName: mulitiplier.v
// Creator : PeilinWu
// E-mail  : 12132364@mail.sustech.edu.cn
// Function: mulitiplier
//-----------------------------------------------------------

module mulitiplier (A, B, M, clk, rst_n, start, done);
// declare inputs and outputs
parameter WIDTH = 8;
input  [WIDTH - 1:0] A, B;
output reg [2 * WIDTH - 1:0] M;
input clk, rst_n, start;
output reg done;
// declare state parameter for state machine
// LOAD_STATE: load the value of A and B to regs
parameter LOAD_STATE    = 2'd0;
// PRODUCT_STATE: shift and add
parameter PRODUCT_STATE = 2'd1;
// DONE_STATE: final result is calculated
parameter DONE_STATE    = 2'd2;
// declare registers
reg [WIDTH - 1:0] multiplicand;
reg [2 * WIDTH - 1:0] product;
reg [2:0] count;
reg [1:0] cur_state, next_state;
reg signed_bit;
// reset all variables when rst_n = 0
// otherwise transfer current state
always @ (posedge clk or negedge rst_n)
begin
    if (!rst_n)
    begin
        multiplicand <= {WIDTH{1'b0}};
        product <= {2*WIDTH{1'b0}};
        cur_state <= 2'd0;
        count <= 3'd0;
        M <= {2*WIDTH{1'b0}};
        done <= 1'b0;
        signed_bit <= 1'b0;
        next_state <= 1'b0;
    end
    else
    begin
        cur_state <= next_state;
    end
end
// state switch
always@(*)
begin
    case (cur_state)
        // when start is enable, move to PRODUCT_STATE
        LOAD_STATE: next_state = start ? PRODUCT_STATE : LOAD_STATE;
        // when count reach WIDTH - 1, that means production is done
        // then move to DONE_STATE
        PRODUCT_STATE: next_state = count == WIDTH - 1 ? DONE_STATE : PRODUCT_STATE;
    endcase
end
// logic for each state
always@(posedge clk)
begin
    if (rst_n)
    begin
        case (cur_state)
            LOAD_STATE:
            begin
                // load absolute value of A to multiplicand
                multiplicand = !A[WIDTH - 1] ? A : ~A + 1;
                // load absolute value of B to the right side of product
                product[WIDTH - 1:0] = !B[WIDTH - 1] ? B : ~B + 1;
                // calculate the sign for the result
                signed_bit = A[WIDTH - 1] ^ B[WIDTH - 1];
            end
            PRODUCT_STATE:
            begin
                // check rightest bits of product (multiplier)
                // if 1, then add to the product
                if (product[0] == 1)
                    product[2 * WIDTH - 1:WIDTH] = product[2 * WIDTH - 1:WIDTH] + multiplicand;
                // right shift product
                product = {0, product[2 * WIDTH - 1: 1]};
                // increase counter of add by one
                count = count + 1;
            end
            DONE_STATE:
            begin
                // check whether signed_bit is 1
                // if 1, then output 2's complement of product
                M = signed_bit ? ~product + 1 : product;
                // done signal to indicate the process is done
                done = 1'b1;
            end
        endcase
    end
end

endmodule
