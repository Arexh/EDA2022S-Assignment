//-----------------------------------------------------------------------------
//          (C) COPYRIGHT 2000 S.Aravindhan
//
// This program is free software; you can redistribute it and/or
// modify it  provided this header is preserved on all copies. 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
//
// Author   : S.Aravindhan
// File     : risc8_control.v
// Abstract : Control Unit and Instruction Decoder.
//            Please use 160 column window to view this file 
//          
// History:
// ============================================================================
// 02/06/2000  arvind   1.0      Initial Release
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


module risc8_control (/*AUTOARG*/
  // Outputs
  alu_cmd, carry_src, a_addr, b_addr, w_addr, wr_reg, a_src, b_src, 
  muldiv_op, flag_op, data_op, addr_op, invert_b, lu_op, inc_pc, 
  opcode_op, int_type, 
  // Inputs
  clk, rst_n, nmi, int, queue_out, psw, data_ready, queue_count, 
  divide_by_0
  ); 

  output [3:0]  alu_cmd;       // alu command
  output [2:0]  carry_src;     // carry source
  output [3:0]  a_addr;        // a-bus read reg. address
  output [3:0]  b_addr;        // b-bus read reg. address
  output [3:0]  w_addr;        // write-back reg. address
  output        wr_reg;        // write register
  output [1:0]  a_src;         // alu a-bus source
  output [1:0]  b_src;         // alu b-bus source
  output [5:0]  muldiv_op;     // mulitier/divider operation
  output [2:0]  flag_op;       // flag operation
  output [2:0]  data_op;       // data cycle operation     
  output [3:0]  addr_op;       // address register operation
  output        invert_b;      // invert b-bus 
  output        lu_op;         // Logic Unit Operation
  output [1:0]  inc_pc;        // increment pc
  output [4:0]  opcode_op;     // opcode fetch operations
  output [1:0]  int_type;      // interrupt type
 
  input         clk;           // clock
  input         rst_n;         // reset
  input         nmi;           // non-maskable interrupt
  input         int;           // maskable interrupt
  input  [7:0]  queue_out;     // instruction queue fifo output
  input  [7:0]  psw;           // psw
  input         data_ready;    // data ready
  input  [2:0]  queue_count;   // instruction queue count
  input         divide_by_0;   // divide by zero

  reg    [3:0]  state;
  reg    [3:0]  alu_cmd;
  reg    [2:0]  carry_src;
  reg           invert_b; 
  reg    [3:0]  a_addr;
  reg    [3:0]  b_addr;
  reg    [3:0]  w_addr;
  reg           wr_reg;
  reg    [1:0]  a_src;
  reg    [1:0]  b_src;
  reg    [7:0]  opcode_tmp;
  reg    [1:0]  inc_pc;
  reg    [4:0]  opcode_op_d;
  reg           lu_op;
  reg    [2:0]  flag_op;
  reg    [5:0]  muldiv_op;
  reg    [2:0]  data_op;
  reg    [3:0]  addr_op;

  reg           condition;
  reg    [51:0] decode;

  reg           nmi_reg;
  reg           int_reg;
  reg           div_reg;
  reg           int_processing;
  reg           next_int_processing;
  reg    [1:0]  int_type;
  reg    [1:0]  next_int_type;

  wire   [3:0]  operan;
  wire   [3:0]  operan1;
  wire   [3:0]  operan2;
  wire          opcode_valid;
  wire          sel_opcode_tmp;
  wire          clear_opcode;
  wire          load_opcode_tmp;
  wire   [7:0]  opcode;

  wire          queue_count_gt0;
  wire          queue_count_gt1;
  wire          lda_sta_opcode;
  wire          int_pending;
 
  assign opcode_op       = decode[11:7];
  assign sel_opcode_tmp  = opcode_op_d[2];
  assign clear_opcode    = opcode_op_d[3];
  assign load_opcode_tmp = opcode_op[1];
  assign operan          = {1'b0, opcode[2:0]};
  assign operan1         = {1'b0, opcode[1:0], 1'b0};
  assign operan2         = {1'b0, opcode[1:0], 1'b1};
  assign int_pending     = ((state == `ST0) &  (nmi_reg | 
                            (int_reg & psw[4]) | div_reg));
  assign lda_sta_opcode  = (opcode[7:4] == 4'b1111); // load/store only
  assign queue_count_gt0 = ~(queue_count == 3'b000);
  assign queue_count_gt1 = (queue_count > 3'b001);
  assign opcode_valid    = sel_opcode_tmp | 
                           (~lda_sta_opcode & queue_count_gt0 & ~clear_opcode) |
                           (lda_sta_opcode & queue_count_gt1 & ~clear_opcode);
  assign opcode          = (sel_opcode_tmp)? opcode_tmp : queue_out;

  // store the interrupt/nmi/divide_by_zero till they are serviced
  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin
          nmi_reg <= 1'b0;
          int_reg <= 1'b0;
          div_reg <= 1'b0;
        end
      else
        begin
          if(int_type == 2'b01)
            nmi_reg <= 1'b0;
          else if(nmi_reg)
            nmi_reg <= 1'b1;
          else
            nmi_reg <= nmi;
 
          if(int_type == 2'b10)
            div_reg <= 1'b0;
          else if(div_reg)
            div_reg <= 1'b1;
          else
            div_reg <= divide_by_0;
 
          if(int_type == 2'b11)
            int_reg <= 1'b0;
          else if(int_reg)
            int_reg <= 1'b1;
          else
            int_reg <= (int); // psw[4] = ie
        end
    end

  // moving controls from DECODE stage to EXECUTE stage.
  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin 
          int_processing <= 0;
          int_type       <= 2'b00; 
          opcode_tmp     <= 8'h00;
          lu_op          <= 1'b1;
          {state, alu_cmd, carry_src, invert_b, a_addr, b_addr, 
           w_addr, wr_reg, a_src, b_src, flag_op, muldiv_op, inc_pc, 
           opcode_op_d, data_op, addr_op} <= 0;
        end
      else
        begin
          if(load_opcode_tmp)
            opcode_tmp  <= queue_out;
            lu_op       <= ~(decode[47:44] == `ALUadd);

          if(data_ready) 
            begin
              int_processing <= next_int_processing;
              int_type       <= next_int_type; 
              {state, alu_cmd, carry_src, invert_b, a_addr, b_addr, 
               w_addr, wr_reg, a_src, b_src, flag_op, muldiv_op, inc_pc, 
               opcode_op_d, data_op, addr_op} <= decode;
            end
        end
    end

  // branch condition check; Flags Mapping: {V, N, C, Z} = psw[3:0]
  always @ (opcode or psw)
    begin
      case(opcode[2:0])
        3'b000: condition = (psw[0]);                       // EQ       
        3'b001: condition = (~psw[0]);                      // NE       
        3'b010: condition = (~(psw[3] ^ psw[2]) & ~psw[0]); // GT      
        3'b011: condition = (psw[3] ^ psw[2]);              // LT     
        3'b100: condition = (psw[1]);                       // CS    
        3'b101: condition = (psw[2]);                       // CC 
        3'b110: condition = (psw[3]);                       // NS      
        3'b111: condition = 1'b1;                           // AL      
        endcase
    end
 
  // INSTRUCTION DECODE: One BIG case statement!!
  // outputs
  // state, alu_cmd, carry_src, invert_b, a_addr, b_addr, w_addr, wr_reg,   
  // a_src, b_src, flag_op, muldiv_op, inc_pc, opcode_op, data_op, addr_opp
  

  always @ (opcode or state or opcode_valid or operan or operan1 or operan2 or
            a_addr or b_addr or w_addr or alu_cmd or invert_b or a_src or b_src
            or queue_count_gt0 or queue_count_gt1 or condition or carry_src or
            divide_by_0 or int_pending or int_processing or nmi_reg or div_reg 
            or int_type) 
    begin
    decode = {`ST0, `ALUpre, `CRYc, `PIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRCp, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPnul };
    next_int_type = 2'b00; next_int_processing = 0;
    if(int_pending | int_processing) 
     begin
     next_int_processing = 1;
     case(state[2:0])  
     3'b000: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRr0,  `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11000, `DAOPwr, `ADOPrsp};
     3'b001: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpsw, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10000, `DAOPwr, `ADOPinc};
     3'b010: decode = {`ST3, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpcl, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10000, `DAOPwr, `ADOPinc};
     3'b011: decode = {`ST4, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10000, `DAOPwr, `ADOPinc};
     3'b100: begin
     if(nmi_reg) 
      begin
      next_int_type = 2'b01;
      decode = {`ST5, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpcl, `Nrg, `ASRC1, `BSRCp, `FLclie, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPint};
      end
     else if(div_reg) 
      begin
      next_int_type = 2'b10;
      decode = {`ST5, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpcl, `Nrg, `ASRC1, `BSRCp, `FLclie, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPint};
      end
     else 
      begin
      next_int_type = 2'b11;
      decode = {`ST5, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpcl, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPack, `ADOPint};
      end
     end
     3'b101: begin
     next_int_processing = 0; 
      next_int_type = int_type;
     decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpch, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11001, `DAOPno, `ADOPnul};
     end
     endcase
     end

    else if(opcode_valid)
     begin 
     case(opcode[7:3]) 
     `OPadd:  decode = {`ST0, `ALUadd, `CRY0, `NIb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPadc:  decode = {`ST0, `ALUadd, `CRYc, `NIb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
     `OPsub:  decode = {`ST0, `ALUadd, `CRY1, `INb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPsbc:  decode = {`ST0, `ALUadd, `CRYn, `INb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPinc:  decode = {`ST0, `ALUadd, `CRY1, `NIb, operan,  `ADRpvb, operan, `Wrg, `ASRC0, `BSRC1, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPdec:  decode = {`ST0, `ALUadd, `CRY0, `INb, operan,  `ADRpvb, operan, `Wrg, `ASRC0, `BSRC1, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPcmp:  decode = {`ST0, `ALUadd, `CRY1, `INb, `ADRr0,  operan, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPsbr:  decode = {`ST0, `ALUadd, `CRY1, `INb, operan,  `ADRr0, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzcnv, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPand:  decode = {`ST0, `ALUand, `CRYc, `NIb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzn,   `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPor:   decode = {`ST0, `ALUor , `CRYc, `NIb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzn,   `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
     `OPxor:  decode = {`ST0, `ALUxor, `CRYc, `NIb, `ADRr0,  operan, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLzn,   `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPnot:  decode = {`ST0, `ALUnot, `CRYc, `NIb, operan,  `ADRpvb, operan, `Wrg, `ASRC0, `BSRCp, `FLzn,   `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPshl:  decode = {`ST0, `ALUshl, `CRYc, `NIb, operan,  `ADRpvb, operan, `Wrg, `ASRC0, `BSRCp, `FLzcn,  `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPshr:  decode = {`ST0, `ALUshr, `CRYc, `NIb, operan,  `ADRpvb, operan, `Wrg, `ASRC0, `BSRCp, `FLzcn,  `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPspecial0:  // wrps, rdps, nop1, nop2
      casex(opcode[2:0])
      3'b000: decode = {`ST0, `ALUtha, `CRYc, `PIb, `ADRr0,  `ADRpvb, `ADRpsw, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      3'b001: decode = {`ST0, `ALUtha, `CRYc, `PIb, `ADRpsw, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      3'b01?: decode = {`ST0, `ALUpre, `CRYc, `PIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRCp, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      3'b1??: decode = {`ST0, `ALUpre, `CRYc, `PIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRCp, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      endcase
     `OPspecial1: begin // jmp,  ret, ror, rorc, asr
      if(!opcode[2])
       begin
        case(state[0]) // jmp an
        1'b0: decode = {`ST1, `ALUtha, `CRYc, `NIb, operan1, `ADRpvb, `ADRpcl, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10000, `DAOPno, `ADOPldl};
        1'b1: decode = {`ST0, `ALUtha, `CRYc, `NIb, operan2, `ADRpvb, `ADRpch, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11000, `DAOPno, `ADOPldh};
        endcase
        end
      if(opcode[2])
       begin
        case(opcode[1:0]) // ret, ror, rorc, asr
        2'b00: 
         case({state[2:0]}) // ret
         3'b000: decode = {`ST1, `ALUadd, `CRY0, `INb, `ADRspl, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC10110, `DAOPno, `ADOPldl};
         3'b001: decode = {`ST2, `ALUadd, `CRYs, `INb, `ADRsph, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPrd, `ADOPldh};
         3'b010: decode = {`ST3, `ALUpre, `CRYp, `NIb, `ADRsph, `ADRpvb, `ADRpch, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPrd, `ADOPdec};
         3'b011: decode = {`ST4, `ALUpre, `CRYp, `NIb, `ADRsph, `ADRpvb, `ADRpcl, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPrd, `ADOPdec};
         3'b100: decode = {`ST5, `ALUpre, `CRYp, `NIb, `ADRsph, `ADRpvb, `ADRpsw, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPrd, `ADOPdec};
         3'b101: decode = {`ST6, `ALUtha, `CRYp, `NIb, `ADRpcl, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPldlssp};
         3'b110: decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRpch, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11001, `DAOPno, `ADOPldh};
         endcase
       2'b01: decode = {`ST0, `ALUror,  `CRYc, `PIb, `ADRr0, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLzcn, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
       2'b10: decode = {`ST0, `ALUrorc, `CRYc, `PIb, `ADRr0, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLzcn, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
       2'b11: decode = {`ST0, `ALUasr,  `CRYc, `PIb, `ADRr0, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLzcn, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
       endcase
       end
       end
     `OPjmpr:  // jmpr #8-bit
      casex({condition, queue_count_gt0, state[1:0]})  
      4'b??00: decode = {`ST1, `ALUpre, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDnul, `PC1, `OPC00111, `DAOPno, `ADOPnul};
      4'b0001: decode = {`ST1, `ALUpre, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      4'b0101: decode = {`ST0, `ALUpre, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      4'b1001: decode = {`ST1, `ALUpre, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPnul};
      4'b1101: decode = {`ST2, `ALUadd, `CRY0, `NIb, `ADRpva, `ADRpcl, `ADRpcl, `Wrg, `ASRC1, `BSRC0, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPldl};
      4'b??10: decode = {`ST0, `ALUadd, `CRYs, `NIb, `ADRpch, `ADRpvb, `ADRpch, `Wrg, `ASRC0, `BSRC2, `FLnul, `MDnul, `PC0, `OPC11001, `DAOPno, `ADOPldh};
      endcase
     `OPjmpa:  // jmpa #16-bit
      casex({condition, queue_count_gt1, queue_count_gt0, state[1:0]})  
      5'b???00: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC3, `OPC00111, `DAOPno, `ADOPnul};
      5'b00001: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      5'b0?101,
      5'b01?01: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00101, `DAOPno, `ADOPnul};
      5'b00010: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      5'b01?10,
      5'b0?110: decode = {`ST0, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPnul};
      5'b10001: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpcl, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      5'b10101: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpcl, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPnul};
      5'b11?01: decode = {`ST2, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpcl, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPldl};
      5'b1??10: decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpch, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11001, `DAOPno, `ADOPldh};
      endcase
     `OPjmps: // jmps #16-bit
      casex({condition, queue_count_gt1, queue_count_gt0, state[2:0]})  
      6'b???000: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC3, `OPC00111, `DAOPno, `ADOPnul};
      6'b000001: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      6'b0?1001, 
      6'b01?001: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00101, `DAOPno, `ADOPnul};
      6'b000010: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      6'b0?1010,
      6'b01?010: decode = {`ST0, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPnul};
      6'b100001: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      6'b101001: decode = {`ST1, `ALUpre, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPnul};
      6'b11?001: decode = {`ST2, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRr0,  `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPwr, `ADOPrsp};
      6'b1??010: decode = {`ST3, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpsw, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPwr, `ADOPinc};
      6'b???011: decode = {`ST4, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpcl, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPwr, `ADOPinc};
      6'b???100: decode = {`ST5, `ALUpre, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRspl, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPwr, `ADOPinc};
      6'b???101: decode = {`ST6, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpcl, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC10100, `DAOPno, `ADOPldlisp};
      6'b???110: decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRspl, `ADRpch, `ADRpch, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC11001, `DAOPno, `ADOPldh};
      endcase
     `OPwrr0:  decode = {`ST0, `ALUtha, `CRYc, `PIb, operan, `ADRpvb, `ADRr0, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPrdr0:  decode = {`ST0, `ALUtha, `CRYc, `PIb, `ADRr0, `ADRpvb, operan, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
     `OPmovsp:  // mov SP An & mov An SP; move to/from sp
      case({opcode[2], state[0]})
      2'b00: decode = {`ST1, `ALUtha, `CRYc, `PIb, operan1, `ADRpvb, `ADRspl, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      2'b01: decode = {`ST0, `ALUtha, `CRYc, `PIb, operan2, `ADRpvb, `ADRsph, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
      2'b10: decode = {`ST1, `ALUtha, `CRYc, `PIb, `ADRspl, `ADRpvb, operan1, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPnul}; 
      2'b11: decode = {`ST0, `ALUtha, `CRYc, `PIb, `ADRsph, `ADRpvb, operan2, `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
      endcase 
     `OPincdec16: // 16 bit inc/ dec
      case({opcode[2], state[0]})
      2'b00: decode = {`ST1, `ALUadd, `CRY1, `NIb, operan1, `ADRpvb, operan1, `Wrg, `ASRC0, `BSRC1, `FLzcn,  `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      2'b01: decode = {`ST0, `ALUadd, `CRYc, `NIb, operan2, `ADRpvb, operan2, `Wrg, `ASRC0, `BSRC1, `FLwzcn, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
      2'b10: decode = {`ST1, `ALUadd, `CRY0, `INb, operan1, `ADRpvb, operan1, `Wrg, `ASRC0, `BSRC1, `FLzcn,  `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPnul}; 
      2'b11: decode = {`ST0, `ALUadd, `CRYc, `INb, operan2, `ADRpvb, operan2, `Wrg, `ASRC0, `BSRC1, `FLwzcn, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul}; 
      endcase
     `OPldi: // 16 bit inc/ dec
      casex({queue_count_gt0, state[0]})
      2'b?0: decode = {`ST1, `ALUtha, `CRYc, `PIb, `ADRpva, `ADRpvb, operan, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00111, `DAOPno, `ADOPnul};
      2'b01: decode = {`ST1, `ALUtha, `CRYc, `PIb, `ADRpva, `ADRpvb, operan, `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPnul};
      2'b11: decode = {`ST0, `ALUtha, `CRYc, `PIb, `ADRpva, `ADRpvb, operan, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      endcase
     `OPmul: 
      case(state)
      `ST0: decode = {`ST1, `ALUtha, `CRY0, `NIb, `ADRr0,  `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDini, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST1: decode = {`ST2, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST2: decode = {`ST3, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST3: decode = {`ST4, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST4: decode = {`ST5, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST5: decode = {`ST6, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST6: decode = {`ST7, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST7: decode = {`ST8, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST8: decode = {`ST9, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDmul, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST9: decode = {`STa, `ALUtha, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLnul, `MDsv0, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `STa: decode = {`ST0, `ALUtha, `CRY0, `NIb, `ADRpva, `ADRpvb, operan,  `Wrg, `ASRC0, `BSRC0, `FLnul, `MDsv1, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      endcase
     `OPdiv: begin
      case(state)
      `ST0: decode = {`ST1, `ALUthb, `CRY0, `NIb, `ADRr0,  operan, `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDini, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST1: begin
       if(divide_by_0)
        decode = {`ST0, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC1, `OPC00001, `DAOPno, `ADOPnul};
       else
        decode = {`ST2, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
       end
      `ST2: decode = {`ST3, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST3: decode = {`ST4, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST4: decode = {`ST5, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST5: decode = {`ST6, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST6: decode = {`ST7, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST7: decode = {`ST8, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST8: decode = {`ST9, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDdiv, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `ST9: decode = {`STa, `ALUadd, `CRY0, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC0, `BSRC0, `FLnul, `MDres, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `STa: decode = {`STb, `ALUtha, `CRY0, `NIb, `ADRpva, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRC0, `FLnul, `MDsv0, `PC0, `OPC00000, `DAOPno, `ADOPnul};
      `STb: decode = {`ST0, `ALUtha, `CRY0, `NIb, `ADRpva, `ADRpvb, operan,  `Wrg, `ASRC0, `BSRC0, `FLnul, `MDsv1, `PC1, `OPC00001, `DAOPno, `ADOPnul};
      endcase
      end
     `OPldstr:  // ldr (An)/ Str (An)
      case({opcode[2],state[1:0]})
      3'b000: decode = {`ST1, `ALUtha, `CRYc, `NIb, operan1, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPldlsv};
      3'b001: decode = {`ST2, `ALUtha, `CRYc, `NIb, operan2, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPrd, `ADOPldh};
      3'b010: decode = {`ST0, `ALUtha, `CRYc, `NIb, `ADRpva, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPrec};
      3'b100: decode = {`ST1, `ALUtha, `CRYc, `NIb, operan1, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPno, `ADOPldlsv};
      3'b101: decode = {`ST2, `ALUtha, `CRYc, `NIb, operan2, `ADRr0,  `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPwr, `ADOPldh};
      3'b110: decode = {`ST0, `ALUtha, `CRYc, `NIb, operan2, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC1, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     `OPpsh:  // psh
      case({state[0]})
      1'b0: decode = {`ST1, `ALUadd, `CRY1, `NIb, `ADRspl, operan,  `ADRspl, `Wrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC1, `OPC00000, `DAOPwr, `ADOPrsp};
      1'b1: decode = {`ST0, `ALUadd, `CRYs, `NIb, `ADRsph, `ADRpvb, `ADRsph, `Wrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     `OPpop: // pop
      case({state[1:0]})
      2'b00: decode = {`ST1, `ALUadd, `CRY0, `INb, `ADRspl, `ADRpvb, `ADRspl, `Wrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC1, `OPC00000, `DAOPno, `ADOPldlsv};
      2'b01: decode = {`ST2, `ALUadd, `CRYs, `INb, `ADRsph, `ADRpvb, `ADRsph, `Wrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC00000, `DAOPrd, `ADOPldh};
      2'b10: decode = {`ST0, `ALUadd, `CRYs, `NIb, `ADRsph, `ADRpvb, operan,  `Wrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     `OPldsto:  // ldo (An + 8-bit offset)/ Sto (An + 8-bit offset)
      case({opcode[2], queue_count_gt0, state[1:0]})
      4'b0000,
      4'b0100: decode = {`ST1, `ALUadd, `CRY0, `NIb, `ADRpva, operan1, `ADRpvw, `Nrg, `ASRC1, `BSRC0, `FLnul, `MDnul, `PC1, `OPC00111, `DAOPno, `ADOPldlsv};
      4'b0001: decode = {`ST1, `ALUadd, `CRY0, `NIb, `ADRpva, operan1, `ADRpvw, `Nrg, `ASRC1, `BSRC0, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPldl};
      4'b0101: decode = {`ST2, `ALUadd, `CRYs, `NIb, operan2, `ADRpvb, `ADRpvw, `Nrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPrd, `ADOPldh};
      4'b0010,
      4'b0110: decode = {`ST0, `ALUadd, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRr0,  `Wrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      4'b1000,
      4'b1100: decode = {`ST1, `ALUadd, `CRY0, `NIb, `ADRpva, operan1, `ADRpvw, `Nrg, `ASRC1, `BSRC0, `FLnul, `MDnul, `PC1, `OPC00111, `DAOPno, `ADOPldlsv};
      4'b1001: decode = {`ST1, `ALUadd, `CRY0, `NIb, `ADRpva, operan1, `ADRpvw, `Nrg, `ASRC1, `BSRC0, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPldl};
      4'b1101: decode = {`ST2, `ALUadd, `CRYs, `NIb, operan2, `ADRr0,  `ADRpvw, `Nrg, `ASRC0, `BSRC1, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPwr, `ADOPldh};
      4'b1010,
      4'b1110: decode = {`ST0, `ALUadd, `CRYp, `NIb, operan2, `ADRr0,  `ADRpvw, `Nrg, `ASRC0, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     `OPlda:  // lda (16-bit absolute)
      casex({queue_count_gt1, state[1:0]})
      3'b?00: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC3, `OPC00111, `DAOPno, `ADOPldlsv};
      3'b001: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPldl};
      3'b101: decode = {`ST2, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00101, `DAOPrd, `ADOPldh};
      3'b?10: decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, operan,  `Wrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     `OPsta: // Sta ( + 16-bit absolute)
      casex({queue_count_gt1, state[1:0]})
      3'b?00: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC3, `OPC00111, `DAOPno, `ADOPldlsv};
      3'b001: decode = {`ST1, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00100, `DAOPno, `ADOPldl};
      3'b101: decode = {`ST2, `ALUtha, `CRYp, `NIb, `ADRpva, operan,  `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00101, `DAOPwr, `ADOPldh};
      3'b?10: decode = {`ST0, `ALUtha, `CRYp, `NIb, `ADRpva, `ADRpvb, `ADRpvw, `Nrg, `ASRC1, `BSRCp, `FLnul, `MDnul, `PC0, `OPC00001, `DAOPno, `ADOPrec};
      endcase
     endcase 
     end
    end 

endmodule 
 
