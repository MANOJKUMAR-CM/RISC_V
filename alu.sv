module alu(regA,regB,Operation,ALUResult,zero);

parameter Data = 32;
parameter Opcode = 4;
input logic [Data-1:0]    regA,regB;
input logic [Opcode-1:0]    Operation;
output logic[Data-1:0] ALUResult;
output logic zero;

always_comb
    begin
			ALUResult = 'd0;
         zero = 'b0;
            case(Operation)
				
            4'b0000:        
                    ALUResult = regA & regB;
            4'b0001:        
                    ALUResult = regA | regB;
            4'b0011:        
                    ALUResult = regA ^ regB;
            4'b0010:        
                    ALUResult = regA + regB;
				default
				        ALUResult='b0;
				endcase
end
endmodule
