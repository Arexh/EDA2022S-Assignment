//-----------------------------------------------------------------------------
//          (C) COPYRIGHT 2000 S.Aravindhan 
//
// This program is free software; you can redistribute it and/or
// modify it provided this header is preserved on all copies. 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
//
// Author   : S.Aravindhan
// File     : risc8_alu.v
// Version  : 1.0
// Abstract : ALU module, also this module generates the next cycle flags.
//
// History:
// ============================================================================
// 02/06/20000  arvind   1.0      Initial Release
// ============================================================================
//-----------------------------------------------------------------------------
//          (C) COPYRIGHT 2000 S.Aravindhan 
//
// This program is free software; you can redistribute it and/or
// modify it provided this header is preserved on all copies.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//
// Author   : S.Aravindhan
// File     : risc8_constants.v
// Abstract : Constants Declaration File
//
// History:
// ============================================================================
// 02/06/2000  arvind   1.0      Initial Release
// ============================================================================

// opcodes: Bits 7-3 define the main opcodes, and in some case bits 2-0 also
//          needed to be decoded

// OPcode field 
`define OPadd      5'b00000   // add
`define OPadc      5'b00001   // add with carry
`define OPsub      5'b00010   // subtract
`define OPsbc      5'b00011   // subtract with carry
`define OPinc      5'b00100   // increment
`define OPdec      5'b00101   // decrement
`define OPcmp      5'b00110   // compare
`define OPsbr      5'b00111   // reverse subtract

`define OPand      5'b01000   // and
`define OPor       5'b01001   // or
`define OPxor      5'b01010   // xor
`define OPnot      5'b01011   // not
`define OPshl      5'b01100   // shift left
`define OPshr      5'b01101   // shift right
`define OPdiv      5'b01110   // divide
`define OPspecial0 5'b01111   // special 0

`define OPwrr0     5'b10000   // write to ro - mov R0 Rn
`define OPrdr0     5'b10001   // read from ro - mov Rn R0
`define OPpsh      5'b10010   // push
`define OPpop      5'b10011   // pop
`define OPldstr    5'b10100   // load/store register addressing
`define OPmovsp    5'b10101   // move to/from sp
`define OPincdec16 5'b10110   // inca/deca An - 16 bit inc/dec
`define OPspecial1 5'b10111   // special 1

`define OPmul      5'b11000   // multiply
`define OPldsto    5'b11001   // load/store offset addressing
`define OPldi      5'b11010   // load immediate
`define OPjmpr     5'b11011   // jump relative
`define OPjmpa     5'b11100   // jump absolute
`define OPjmps     5'b11101   // jump subroutine
`define OPlda      5'b11110   // load absolute  addressing
`define OPsta      5'b11111   // store absolute addressing

// alu_cmd; ALU command
`define ALUadd     4'h0       // adder
`define ALUand     4'h1       // and
`define ALUor      4'h2       // or
`define ALUxor     4'h3       // xor
`define ALUnot     4'h4       // not
`define ALUshl     4'h5       // shift left
`define ALUshr     4'h6       // shift right
`define ALUasr     4'h7       // arithmetic shift right
`define ALUtha     4'h8       // through a
`define ALUthb     4'h9       // through b
`define ALUror     4'ha       // through b
`define ALUrorc    4'hb       // through b
`define ALUpre     alu_cmd    // previous command

// Invert alu b_data
`define INb        1'b1       // invert b
`define NIb        1'b0       // not invert b
`define PIb        invert_b   // previous invert b value

// special register address
`define ADRr0      4'b0000    // address R0
`define ADRpsw     4'b1000    // address psw 
`define ADRpcl     4'b1001    // address pc low 
`define ADRpch     4'b1010    // address pc high
`define ADRspl     4'b1011    // address sp low
`define ADRsph     4'b1100    // address sp high 
`define ADRpva     a_addr     // address previous a_addr 
`define ADRpvb     b_addr     // address previous b_addr
`define ADRpvw     w_addr     // address previous w_addr

// mul_op ; mul/div operation
`define MDnul      6'b000000  // Multiply/Divide null operation
`define MDmul      6'b000001  // Multiply operation
`define MDdiv      6'b000010  // Divide operation
`define MDini      6'b000100  // Multiply/Divide initialization cycle
`define MDsv0      6'b001000  // Multiply/Divide result save cycle 0
`define MDsv1      6'b010000  // Multiply/Divide result save cycle 1 
`define MDres      6'b100000  // Divide reminder restore cycle

// carry_src; carry source
`define CRY0       3'b000     // carry_in 0
`define CRY1       3'b001     // carry_in 1
`define CRYn       3'b010     // carry_in ~c_flag
`define CRYs       3'b011     // carry_in = saved_carry 
`define CRYc       3'b100     // carry_in = c_clag
`define CRYp       carry_src  // previous carry_src

// write register
`define Wrg        1'b1       // write register
`define Nrg        1'b0       // Not write register

// states
`define ST0        4'b0000
`define ST1        4'b0001
`define ST2        4'b0010
`define ST3        4'b0011
`define ST4        4'b0100
`define ST5        4'b0101
`define ST6        4'b0110
`define ST7        4'b0111
`define ST8        4'b1000
`define ST9        4'b1001
`define STa        4'b1010
`define STb        4'b1011
`define STc        4'b1100
`define STd        4'b1101
`define STe        4'b1110
`define STf        4'b1111

// a_src
`define ASRC0      2'b00      // from a-data
`define ASRC1      2'b01      // immediate operand (queue output)
`define ASRC2      2'b10      // not used
`define ASRC3      2'b11      // not used
`define ASRCp      a_src      // previous value 

// b_src
`define BSRC0      2'b00      // from b-data
`define BSRC1      2'b01      // value 0
`define BSRC2      2'b10      // previous a_data MSB-for sign extension
`define BSRC3      2'b11      // not used
`define BSRCp      b_src      // previous value


// flag_op
`define FLnul      3'b000     // null update
`define FLzn       3'b001     // zero, negative update
`define FLzcn      3'b010     // zero, carry, negative update
`define FLzcnv     3'b011     // zero, carry, negative, overflow update
`define FLwzcn     3'b110     // word_zero, carry, negative
`define FLclie     3'b100     // clear ie 

// opcode_op {stop_fetch, clear_op, opcode_tmp, load_opcode, read_opcode}
`define OPC00000   5'b00000
`define OPC00001   5'b00001
`define OPC00011   5'b00011
`define OPC00111   5'b00111
`define OPC00100   5'b00100
`define OPC00101   5'b00101
`define OPC00110   5'b00110
`define OPC00111   5'b00111
`define OPC01000   5'b01000
`define OPC01001   5'b01001
`define OPC11001   5'b11001
`define OPC11000   5'b11000
`define OPC11100   5'b11100
`define OPC11101   5'b11101
`define OPC10000   5'b10000
`define OPC10001   5'b10001
`define OPC10100   5'b10100
`define OPC10101   5'b10101
`define OPC01100   5'b01100
`define OPC01101   5'b01101
`define OPC01111   5'b01111
`define OPC10110   5'b10110
`define OPC10111   5'b10111

// inc_pc - increment the pc value by
`define PC0        2'b00      // same
`define PC1        2'b01      // +1
`define PC2        2'b10      // +2
`define PC3        2'b11      // +3

//data_op - data cycle operation
`define DAOPno     3'b000     // no operation
`define DAOPwr     3'b011     // write cycle
`define DAOPrd     3'b010     // read cycle
`define DAOPack    3'b100     // interrupt ack. cycle

// addr_op - address register operation
`define ADOPnul    4'b0000    // no operation
`define ADOPldl    4'b0001    // load lower address register
`define ADOPldh    4'b0010    // load higher address register
`define ADOPrsp    4'b0011    // load address register from sp
`define ADOPdec    4'b0100    // decrement address register
`define ADOPinc    4'b0101    // increment address register
`define ADOPan     4'b0110    // load address register
`define ADOPrec    4'b0111    // recover the saved address 
`define ADOPint    4'b1000    // load interrupt vector
`define ADOPldlisp 4'b1001    // load lower address and write address + 1 to sp
`define ADOPldlssp 4'b1010    // load lower address and write address to sp
`define ADOPldlsv  4'b1011    // load lower address and save address


// When this parameter is set to "1", 33 latches are added in the alu data path
// (Adder/Logic unit) to reduce switching activity so as to save dynamic power.
`define ADD_ALU_LATCHES 0


module risc8_alu (/*AUTOARG*/
  // Outputs
  next_psw, alu_out, divide_by_0, 
  // Inputs
  clk, rst_n, a_src, b_src, carry_src, alu_cmd, invert_b, lu_op, 
  flag_op, muldiv_op, queue_out, a_data, b_data, psw, scan_mode
  ); 
 
  output [7:0]  next_psw;     // next psw
  output [7:0]  alu_out;      // alu output 
  output        divide_by_0;  // divide by zero
 
  input         clk;          // clock 
  input         rst_n;        // reset 
  input [1:0]   a_src;        // alu a-bus source: 
  input [1:0]   b_src;        // alu b-bus source 
  input [2:0]   carry_src;    // carry source 
  input [3:0]   alu_cmd;      // alu command 
  input         invert_b;     // invert b-bus
  input         lu_op;        // Logic Unit Operation
  input [2:0]   flag_op;      // flag operation 
  input [5:0]   muldiv_op;    // mulitier/divider operation 
  input [7:0]   queue_out;    // immediate data 
  input [7:0]   a_data;       // registerbank a data 
  input [7:0]   b_data;       // registerbank b data 
  input [7:0]   psw;          // psw 
  input         scan_mode;    // test scan mode pin

  reg [7:0]     lu_out;
  reg [8:0]     p_reg;
  reg [7:0]     a_reg;
  reg [7:0]     a_alu;
  reg [7:0]     b_alu_tmp;
  reg [7:0]     a_lu;
  reg [7:0]     b_lu;
  reg [7:0]     a_adder;
  reg [7:0]     b_adder;
  reg           carry_in;
  reg           save_carry;
  reg           save_a7;
 
  wire [7:0]    adder_out;
  wire [7:0]    b_alu;
  wire          next_zflag;
  wire          next_nflag;
  wire          next_vflag;
  wire          next_cflag;
  wire          carry_in_tmp;
  wire          carry_out;
  wire          sel_imm_a;
  wire          mul;
  wire          div;
  wire          muldiv_init;
  wire          muldiv_save0;
  wire          muldiv_save1;
  wire          div_restore;
  wire          word_zero;      // Word Operation

  assign mul          = muldiv_op[0];
  assign div          = muldiv_op[1];
  assign muldiv_init  = muldiv_op[2];
  assign muldiv_save0 = muldiv_op[3];
  assign muldiv_save1 = muldiv_op[4];
  assign div_restore  = muldiv_op[5];
  assign divide_by_0  = (b_data == 8'h0) & (alu_cmd == `ALUthb) & muldiv_init;

  assign sel_imm_a    = a_src[0];
  assign word_zero    = flag_op == 3'b110;
  assign next_zflag   = (alu_out == 8'h0) & (word_zero? psw[0] : 1'b1);
  assign next_cflag   = (alu_cmd == `ALUadd)? carry_out: (
                        (alu_cmd == `ALUshl)? a_lu[7]  : a_lu[0]);
  assign next_nflag   = alu_out[7];
  assign next_vflag   = ( a_alu[7] & b_alu_tmp[7]  & ~alu_out[7]) |
                        (~a_alu[7] & ~b_alu_tmp[7] &  alu_out[7]);
 
  assign next_psw[7:4]= {psw[7:5], ((flag_op == 3'b100)? 1'b0 : psw[4])}; 
  assign next_psw[3:0]= (flag_op[1:0] == 2'b00)? psw[3:0] : ( 
                        (flag_op[1:0] == 2'b01)? {psw[3], next_nflag, psw[1], 
                                                  next_zflag} : (
                        (flag_op[1:0] == 2'b10)? {psw[3], next_nflag, 
                                                  next_cflag, next_zflag} : 
                        {next_vflag, next_nflag, next_cflag, next_zflag}));

  assign b_alu        = (invert_b | (div & ~p_reg[8]))? ~b_alu_tmp : b_alu_tmp;

  assign carry_in_tmp = (div & ~p_reg[8])     ? 1'b1   : (
                        (carry_src == 3'b000) ? 1'b0   : (
                        (carry_src == 3'b001) ? 1'b1   : (
                        (carry_src == 3'b010) ? ~psw[1]: (
                        (carry_src == 3'b011) ? save_carry : psw[1]))));

  // ALU A_Data Selector
  always @ (/*AUTOSENSE*/a_data or a_reg or div or div_restore or mul
            or muldiv_save0 or muldiv_save1 or p_reg or queue_out
            or sel_imm_a)
    begin
      if(sel_imm_a)
        a_alu = queue_out;
      else if(mul | div_restore | muldiv_save1)
        a_alu = p_reg[7:0];
      else if(div)
        a_alu = {p_reg[6:0], a_reg[7]};
      else if(muldiv_save0)
        a_alu = a_reg;
      else
        a_alu = a_data;
    end

  // ALU B_Data Selector
  always @ (/*AUTOSENSE*/a_reg or b_data or b_src or div_restore
            or mul or p_reg or save_a7)
    begin
      if(b_src == 2'b10)
        b_alu_tmp = {8{save_a7}}; // change to previous sign extension
      else if(mul & a_reg[0])
        b_alu_tmp = b_data; 
      else if((mul & ~a_reg[0]) | (div_restore & ~p_reg[8]) |
              (b_src == 2'b01))
        b_alu_tmp = 8'b0; 
      else
        b_alu_tmp = b_data; 
    end

  // a_data and b_data to Logic unit and the adder unit.

  // When ADD_ALU_LATCHES = 1'b1, to redeuce the switching in the Adder and 
  // the Logic-Unit 33 latches are introduced.  For test coverage these latches 
  // are bypassed when the scan mode signal (scan_mode) is high.
  always @ (a_alu or b_alu or carry_in_tmp or scan_mode or lu_op)
    begin
      if(`ADD_ALU_LATCHES == 1'b0)
        begin 
          a_lu     = a_alu;
          b_lu     = b_alu;
          a_adder  = a_alu;
          b_adder  = b_alu;
          carry_in = carry_in_tmp;
        end
      else // For Power Optimization
        begin
          if(lu_op | scan_mode)
            begin
              a_lu = a_alu;
              b_lu = b_alu;
            end
          if(!lu_op | scan_mode)
            begin
              a_adder  = a_alu;
              b_adder  = b_alu; 
              carry_in = carry_in_tmp;
            end
        end
    end

  // Logic unit 
  always @ (a_lu or b_lu or alu_cmd or psw) 
    begin 
      case(alu_cmd) 
      `ALUand:   lu_out = a_lu & b_lu; 
      `ALUor :   lu_out = a_lu | b_lu; 
      `ALUxor:   lu_out = a_lu ^ b_lu; 
      `ALUnot:   lu_out = ~a_lu; 
      `ALUshl:   lu_out = {a_lu[6:0], 1'b0}; 
      `ALUshr:   lu_out = {1'b0, a_lu[7:1]}; 
      `ALUasr:   lu_out = {a_lu[7], a_lu[7:1]}; 
      `ALUror:   lu_out = {a_lu[0], a_lu[7:1]}; 
      `ALUrorc:  lu_out = {psw[1], a_lu[7:1]}; 
      `ALUtha:   lu_out = a_lu; 
      `ALUthb:   lu_out = b_lu; 
      default:   lu_out = 8'bx; 
      endcase 
    end 

   // adder
   //DW01_add #(8) U0 (a_adder, b_adder, carry_in, adder_out, carry_out);

   // If you don't have DesignWare, then you can use the faster 'rbcla_adder', 
   // carry look-ahead adder or the slower ripple adder in the sim directory.
   rbcla_adder #(8,4) U0 (a_adder, b_adder, carry_in, adder_out, carry_out);

   assign alu_out = (alu_cmd == `ALUadd)? adder_out : lu_out;

  // multiplier/divider p_reg and a_reg
  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin
          p_reg      <= 9'h0;
          a_reg      <= 8'h0;
          save_carry <= 1'b0;
          save_a7    <= 1'b0;
        end
      else
        begin
          save_carry <= carry_out;
          save_a7    <= a_alu[7];
          if(muldiv_init)
            begin
              p_reg <= 9'h0;
              a_reg <= a_data;
            end
          else if(mul)
            begin
              p_reg <= {1'b0, carry_out, adder_out[7:1]};  
              a_reg <= {adder_out[0], a_reg[7:1]};  
            end
          else if(div)
            begin
              p_reg <={(p_reg[7] ^ carry_out ^ carry_in), adder_out};  
              a_reg <= {a_reg[6:0], ~(p_reg[7] ^ carry_out ^ carry_in)};  
            end
          else if(div_restore)
            p_reg <= {(p_reg[7] ^ carry_out ^ carry_in), adder_out};  
        end
    end

endmodule 
 
