module Controller(inst,Branch,memread,memwrite,mem2reg,aluop,alusrc,regwrite);
input logic [31:0] inst;
output logic Branch,memread,memwrite,mem2reg,alusrc,regwrite;
output logic [1:0] aluop;

logic [6:0]Inst;
assign Inst=inst[6:0];

always_comb
begin
	case(Inst)
		7'b0010011: //I type
		begin
			Branch=1'b0;
			mem2reg=1'b0;
			memwrite=1'b0;
			memread=1'b0;
			alusrc=1'b1;
			regwrite=1'b1;
			aluop=2'b11;
		end
		default //R type
		begin
			Branch=1'b0;
			mem2reg=1'b0;
			memwrite=1'b0;
			memread=1'b0;
			alusrc=1'b0;
			regwrite=1'b1;
			aluop=2'b10;
		end
	endcase

end
endmodule
