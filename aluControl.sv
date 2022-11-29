module aluControl(op,inst,Operation);
input logic [31:0]inst;
input logic [1:0] op;
output logic [3:0] Operation;

logic [2:0] Inst;
assign Inst=inst[14:12];

always_comb
begin
if (op==2'b11)
	case(Inst)
		3'b000: //Addi
			Operation=4'b0010;
		3'b100: //XORi
			Operation=4'b0011;
		3'b110: //ORi
			Operation=4'b0001;
		3'b111: //ANDi
			Operation=4'b0000;
		default //Performs ADDi
			Operation=4'b0000;
	endcase
else
	Operation=4'b0010;
end

endmodule



