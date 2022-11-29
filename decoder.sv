module Decoder(inst,rd_reg_addr1,rd_dest_addr,Offset);
input logic [31:0]inst;
output logic [4:0] rd_reg_addr1,rd_dest_addr;
output logic [11:0] Offset;

assign rd_reg_addr1=inst[19:15];
assign rd_dest_addr=inst[11:7];
assign Offset=inst[31:20];

endmodule
