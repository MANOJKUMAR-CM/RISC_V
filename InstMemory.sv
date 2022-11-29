module InstMemory(pc,inst);
parameter width=32;
input logic[width-1:0] pc;
output logic[width-1:0] inst;

always_comb
begin
	case(pc)
		32'h 1011100A : //Performs addi  addi x9,x9,1 
			inst=32'h 00148493;
		32'h 1011100E : //Performs andi  andi x10,x9,2 
			inst=32'h 0024F513;
		32'h 10111012 : //Performs ori   ori x9,x9,1  
			inst=32'h 0014E493;
		32'h 10111016 : //Performs xori  xori x9,x9,1 
			inst=32'h 0014C493;
		default:
			inst=32'h 00148493;
	endcase
end


endmodule


