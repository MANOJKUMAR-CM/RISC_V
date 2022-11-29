module immGen(inst,immout);
input logic [31:0] inst;
output logic [31:0] immout;

always_comb
    immout = {inst[31]? {20{1'b1}}:20'b0 , inst[31:20]};
endmodule
