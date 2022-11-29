module pc (pc_new,pc_cur,clk,rst);
input logic clk,rst;
input logic [31:0] pc_new;
output logic [31:0] pc_cur;


always @(posedge clk)
if(~rst)
pc_cur<=pc_cur+4;
else
pc_cur<=pc_new;
endmodule
