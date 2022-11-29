module RISC_V(clk,rst,pc_new,ALU_Result);

input logic clk,rst;
input logic [31:0] pc_new;
output logic [31:0] ALU_Result;

logic Branch,memread,memwrite,mem2reg,alusrc,regwrite;
logic [1:0]aluop;
logic [31:0] pc_cur,inst,rg_rd_data1,rg_rd_data2,rg_wrt_data,immout,regB,PC;
logic rg_wrt_dest,zero;
logic [4:0] rg_rd_addr1;
logic [3:0] Operation;
logic [11:0] Offset;

pc dut (pc_new,pc_cur,clk,rst);

InstMemory dut2 (pc_cur,inst);

Controller dut10 (inst,Branch,memread,memwrite,mem2reg,aluop,alusrc,regwrite);

Decoder dut8 (inst,rg_rd_addr1,rg_wrt_dest,Offset);

RegFile dut3 (clk,rst,regwrite,rg_wrt_dest,rg_rd_addr1,rg_rd_addr2,rg_wrt_data,rg_rd_data1,rg_rd_data2);

immGen dut4 (inst,immout);

mux2 dut5 (rg_rd_data2,immout,alusrc,regB);

aluControl dut6 (aluop,inst,Operation);

alu dut7 (rg_rd_data1,regB,Operation,ALU_Result,zero);

assign rg_wrt_data=ALU_Result;

endmodule








