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
// File     : risc8_regb_biu.v
// Abstract : Register Bank and Bus Interface Unit
//
// History:
// ============================================================================
// 02/06/2000  arvind  1.0      Initial Release
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



 module risc8_regb_biu ( /*AUTOARG*/
  // Outputs
  cycle, write, ifetch, iack, ie, address, data_out, psw, a_data, 
  b_data, queue_out, queue_count, data_ready, 
  // Inputs
  clk, rst_n, a_addr, b_addr, w_addr, wr_reg, int_type, alu_out, 
  data_op, addr_op, opcode_op, inc_pc, next_psw, data_in, ready
  ); 
 
  output        cycle;              // bus-cycle
  output        write;              // write cycle
  output        ifetch;             // instruction fetch
  output        iack;               // interrupt ack. cycle
  output        ie;                 // interrupt enabled
  output [15:0] address;            // address bus
  output [7:0]  data_out;           // data output bus
  output [7:0]  psw;                // psw 
  output [7:0]  a_data;             // read data a 
  output [7:0]  b_data;             // read data b 
  output [7:0]  queue_out;          // instruction queue fifo output 
  output [2:0]  queue_count;        // instruction queue count
  output        data_ready;        
 
  input         clk;                // clock 
  input         rst_n;              // reset 
  input [3:0]   a_addr;             // a-bus read reg. address 
  input [3:0]   b_addr;             // b-bus read reg. address 
  input [3:0]   w_addr;             // write-back reg. address 
  input         wr_reg;             // write register 
  input [1:0]   int_type;           // interrupt type 
  input [7:0]   alu_out;            // write data 
  input [2:0]   data_op;            // data cycle operation 
  input [3:0]   addr_op;            // address register operation
  input [4:0]   opcode_op;          // opcode fetch operations
  input [1:0]   inc_pc;             // increment pc
  input [7:0]   next_psw;           // next psw low nibble
  input [7:0]   data_in;            // data input bus   
  input         ready;              // data ready
 
  reg  [15:0]   address;
  reg  [15:0]   address_save;
  reg  [15:0]   pc;
  reg  [15:0]   sp;
  reg  [7:0]    psw;
  reg  [7:0]    data_out; 

  reg [7:0]     ins_queue[0:3];     // 4-deep instruction queue
  reg [1:0]     in_pointer;         // ins. queue input pointer
  reg [1:0]     out_pointer;        // ins. queue output pointer
  reg [2:0]     queue_count;        // ins. queue count
  
  reg [1:0]     bus_state;          // bus state
  reg           write;
  reg           cycle;
  reg           iack;
  reg           ifetch;
  reg [1:0]     next_bus_state;          
  reg           next_write;
  reg           next_cycle;
  reg           next_iack;
  reg           next_ifetch;
  reg           clear_queue;
 
  wire [7:0]    w_data;             // write data
  wire [7:0]    queue_out;          // instruction queue output
  wire [15:0]   inc_address;
  wire [15:0]   dec_address;
  wire          ifetch_ready; 
  wire          queue_full; 
  wire          queue_almost_full; 
  wire          data_access;
  wire          write_access;
  wire          read_opcode;
  wire          stop_fetch;
  wire          iack_access;
  wire          data_access_next;
  wire          save_address_reg;
  wire          cycle_complete;

  assign read_opcode       = opcode_op[0] & data_ready; 
  assign stop_fetch        = opcode_op[4];
  assign ie                = psw[4]; 
  assign queue_full        = (queue_count == 3'b100);
  assign queue_almost_full = (queue_count == 3'b011);
  assign cycle_complete    = ~cycle  | (cycle & ready);
  assign ifetch_ready      = cycle & ifetch & ready;
  assign w_data            = (cycle & ~ifetch & ~iack & ~write)?  data_in : 
                                                                  alu_out; 
  assign write_access      = data_op[0];
  assign data_access       = data_op[1];
  assign iack_access       = data_op[2];

  assign save_address_reg  = (addr_op == `ADOPldlsv) | (addr_op == `ADOPrsp); 
  assign data_access_next  = (addr_op == `ADOPldl) | (addr_op == `ADOPldlisp) | 
                             (addr_op == `ADOPrsp) | (addr_op == `ADOPldlssp) |
                             (addr_op == `ADOPldlsv) | (addr_op == `ADOPint);
  assign data_ready        =  cycle_complete | 
                             (cycle & ifetch &  ~data_access_next);
  
  // -------------
  // REGISTER BANK
  // -------------

  // The Regbank could be replaced by a 2-read/1-write 3 port synchronous RAM 
  // as shown bellow Example: RAM3PORT U0(clk, a_addr, b_addr,wdata, wr_reg, 
  // A_DATA, b_data); Mapping: reg_file [0:7]= R0, R1, R2, R3, R4, R5, R6, R7 
 
  reg [7:0]     reg_file [0:7]; 

  assign a_data = (a_addr == `ADRpsw) ? psw      : ( 
                  (a_addr == `ADRpcl) ? pc[7:0]  : ( 
                  (a_addr == `ADRpch) ? pc[15:8] : ( 
                  (a_addr == `ADRspl) ? sp[7:0]  : ( 
                  (a_addr == `ADRsph) ? sp[15:8] : reg_file[a_addr[2:0]])))); 
 
  assign b_data = (b_addr == `ADRpsw) ? psw      : (
                  (b_addr == `ADRpcl) ? pc[7:0]  : (
                  (b_addr == `ADRpch) ? pc[15:8] :  reg_file[b_addr[2:0]])); 
 
  // Do not overwrite regbank during Reset, preserve the old value 
  always @ (posedge clk) 
    begin 
      if(wr_reg && !w_addr[3])
        reg_file[w_addr[2:0]] <= w_data; 
    end 
 
 
  // Program Counter, PSW and SP 
  always @ (posedge clk or negedge rst_n) 
    begin 
      if(!rst_n) 
        begin 
          pc <= 16'h0;
          psw <= 8'h0; 
          sp  <= 16'hf000;
        end 
      else 
        begin
          if(wr_reg && w_addr == `ADRpsw) 
            psw <= w_data;
          else 
            psw <= next_psw; 

          if(wr_reg && w_addr == `ADRpcl & data_ready) 
            pc[7:0] <= w_data; 
          else if(wr_reg && w_addr == `ADRpch & data_ready) 
            pc[15:8] <= w_data; 
          else if(iack & ready & cycle)
            pc  <= {6'b000000, data_in, 2'b00};
          else if((cycle_complete) & (addr_op == `ADOPint))
            begin
              if(int_type == 2'b01)      pc <= 16'h0004;
              else if(int_type == 2'b10) pc <= 16'h0008;
            end 
          else if(data_ready)
            pc <= pc + inc_pc;

          if(wr_reg && w_addr == `ADRspl &  data_ready) 
            sp[7:0] <= w_data; 
          else if(wr_reg && w_addr == `ADRsph & data_ready) 
            sp[15:8] <= w_data; 
          else if( addr_op == `ADOPldlisp | addr_op == `ADOPint)
            sp[15:0] <= inc_address;
          else if( addr_op == `ADOPldlssp)
            sp[15:0] <= address;
        end 
    end 

  // ------------------
  // BUS INTERFACE UNIT
  // ------------------
 
  // Instruction Queue
  assign queue_out  = ins_queue[out_pointer];

  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin
          in_pointer  <= 2'b00;
          out_pointer <= 2'b00;
          queue_count <= 3'b000;
        end
      else
        begin
          if(clear_queue)  
            begin
              in_pointer  <= 2'b00;
              out_pointer <= 2'b00;
              queue_count <= 3'b000;
            end
          else 
            begin
              if(ifetch_ready)
                begin
                  ins_queue[in_pointer] <= data_in; 
                  in_pointer <= in_pointer + 1;
                end
              if(read_opcode)
                out_pointer <= out_pointer + 1;
              if(ifetch_ready & ~read_opcode)
                queue_count <= queue_count + 1;
              else if(~ifetch_ready & read_opcode) 
                queue_count <= queue_count - 1;
            end
        end
      end

  // bus-cycle state machine
  `define bus_idle  2'b00
  `define bus_inst  2'b01
  `define bus_data  2'b10
  `define bus_iack  2'b11

  always @ (bus_state or data_access or data_access_next or ifetch
            or iack_access or queue_almost_full or queue_full or ready
            or stop_fetch or write_access or cycle or write or iack)
    begin
      next_bus_state = bus_state;
      next_cycle     = cycle;  next_write  = write;
      next_ifetch    = ifetch; next_iack   = iack;
      
      case(bus_state)
      `bus_idle: 
        begin
          if(iack_access)
            begin
              next_bus_state = `bus_iack;
              next_cycle     = 1'b1; next_write  = 1'b0;
              next_ifetch    = 1'b0; next_iack   = 1'b1;
            end
          else if(data_access)
            begin
              next_bus_state = `bus_data;
              next_cycle     = 1'b1; next_write  = write_access;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
          else if(~queue_full & ~stop_fetch & ~data_access_next)
            begin
              next_bus_state = `bus_inst;
              next_cycle     = 1'b1; next_write  = 1'b0;
              next_ifetch    = 1'b1; next_iack   = 1'b0;
            end
        end
      `bus_data: 
        begin
          if(ready & iack_access)
            begin
              next_bus_state = `bus_iack;
              next_cycle     = 1'b1; next_write  = 1'b0;
              next_ifetch    = 1'b0; next_iack   = 1'b1;
             end
          else if(ready & data_access)
            begin
              next_bus_state = `bus_data;
              next_cycle     = 1'b1; next_write  = write_access;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
          else if(ready & ~queue_full & ~stop_fetch & ~data_access_next)
            begin
              next_bus_state = `bus_inst;
              next_cycle     = 1'b1; next_write  = 1'b0;
              next_ifetch    = 1'b1; next_iack   = 1'b0;
            end
          else if (ready)
            begin
              next_bus_state = `bus_idle;
              next_cycle     = 1'b0; next_write  = 1'b0;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
        end
      `bus_iack:
        begin
          if(ready) 
            begin
              next_bus_state = `bus_idle;
              next_cycle     = 1'b0; next_write  = 1'b0;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
         end
      `bus_inst:
        begin
          if(ready & data_access)
            begin
              next_bus_state = `bus_data;
              next_cycle     = 1'b1; next_write  = write_access;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
          else if(ready & ~queue_almost_full & ~stop_fetch & 
                  ~data_access_next)
            begin
              next_bus_state = `bus_inst;
              next_cycle     = 1'b1; next_write  = 1'b0;
              next_ifetch    = 1'b1; next_iack   = 1'b0;
            end
          else if(ready)
            begin 
              next_bus_state = `bus_idle;
              next_cycle     = 1'b0; next_write  = 1'b0;
              next_ifetch    = 1'b0; next_iack   = 1'b0;
            end
        end
      endcase
    end

  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin
          bus_state <= `bus_idle;
          cycle     <= 1'b0; 
          write     <= 1'b0;
          ifetch    <= 1'b0; 
          iack      <= 1'b0;
        end
      else
        begin
          bus_state <= next_bus_state;
          cycle     <= next_cycle; 
          write     <= next_write;
          ifetch    <= next_ifetch; 
          iack      <= next_iack | ((int_type == 2'b01) & (addr_op == `ADOPint)
                       & (cycle_complete));
        end
    end

  assign inc_address = address + 1; 
  assign dec_address = address - 1; 
  // address and data_out generation 
  always @ (posedge clk or negedge rst_n)
    begin
      if(!rst_n)
        begin
          address      <= 16'h0;
          address_save <= 16'h0;  // can be moved to a_reg, p_reg to save area
          data_out     <= 8'h0;
          clear_queue  <= 1'b0;
        end
      else
        begin
          if(data_ready)
            clear_queue     <= opcode_op[3];
          if(save_address_reg)
            address_save  <= inc_address;
          if(iack & ready & cycle)
            address       <= {6'b000000, data_in, 2'b00};
          else if(cycle_complete)
          case(addr_op)
            `ADOPldlsv : address[7:0]  <= alu_out;
            `ADOPldl   : address[7:0]  <= alu_out;
            `ADOPldlisp: address[7:0]  <= alu_out;
            `ADOPldlssp: address[7:0]  <= alu_out;
            `ADOPldh   : address[15:8] <= alu_out;
            `ADOPinc   : address       <= inc_address;
            `ADOPdec   : address       <= dec_address;
            `ADOPrec   : address       <= address_save;
            `ADOPrsp   : address       <= sp;
            `ADOPan    : address       <= {a_data, b_data};
            `ADOPint: begin
               if(int_type == 2'b01)      address <= 16'h0004;
               else if(int_type == 2'b10) address <= 16'h0008;
               else         address  <= {6'b000000, data_in, 2'b00};
               end
            `ADOPnul: begin
               if(cycle & ready)
                 address               <= inc_address;
               end     
          endcase

          if(write_access & cycle_complete)
            data_out     <= b_data;
        end
    end
    
endmodule 
 
