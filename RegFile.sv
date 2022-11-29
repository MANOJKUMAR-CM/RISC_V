module RegFile(clk,rst,rg_wrt_en,rg_wrt_dest,rg_rd_addr1,rg_rd_addr2,rg_wrt_data,rdata_out1,rdata_out2);

parameter Data=32;
parameter Address=5;
parameter NUM_REGS=32;

input logic  clk;
input logic rst;
input logic rg_wrt_en; 
input logic [Address-1:0] rg_wrt_dest;
input logic [Address-1:0] rg_rd_addr1; 
input logic [Address-1:0] rg_rd_addr2; 
input logic [Data-1:0] rg_wrt_data; 
         
output logic [Data-1:0] rdata_out1;
output logic [Data-1:0] rdata_out2;


reg [31:0] x0 = 32'b0, x1, x2, x3, x4, x5, x6, x7, x8, x9=32'h 00000064;
reg [31:0] x10, x11, x12, x13, x14, x15, x16, x17, x18, x19;
reg [31:0] x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31;



always @(*) begin
		case (rg_rd_addr1)
			5'b0_0000: rdata_out1 <= x0;
			5'b0_0001: rdata_out1 <= x1;
			5'b0_0010: rdata_out1 <= x2;
			5'b0_0011: rdata_out1 <= x3;
			5'b0_0100: rdata_out1 <= x4;
			5'b0_0101: rdata_out1 <= x5;
			5'b0_0110: rdata_out1 <= x6;
			5'b0_0111: rdata_out1 <= x7;
			5'b0_1000: rdata_out1 <= x8;
			5'b0_1001: rdata_out1 <= x9;
			5'b0_1010: rdata_out1 <= x10;
			5'b0_1011: rdata_out1 <= x11;
			5'b0_1100: rdata_out1 <= x12;
			5'b0_1101: rdata_out1 <= x13;
			5'b0_1110: rdata_out1 <= x14;
			5'b0_1111: rdata_out1 <= x15;
			5'b1_0000: rdata_out1 <= x16;
			5'b1_0001: rdata_out1 <= x17;
			5'b1_0010: rdata_out1 <= x18;
			5'b1_0011: rdata_out1 <= x19;
			5'b1_0100: rdata_out1 <= x20;
			5'b1_0101: rdata_out1 <= x21;
			5'b1_0110: rdata_out1 <= x22;
			5'b1_0111: rdata_out1 <= x23;
			5'b1_1000: rdata_out1 <= x24;
			5'b1_1001: rdata_out1 <= x25;
			5'b1_1010: rdata_out1 <= x26;
			5'b1_1011: rdata_out1 <= x27;
			5'b1_1100: rdata_out1 <= x28;
			5'b1_1101: rdata_out1 <= x29;
			5'b1_1110: rdata_out1 <= x30;
			5'b1_1111: rdata_out1 <= x31;
			default: rdata_out1 <= x0;
		endcase
	end


	always @(*) begin
		case (rg_rd_addr2)
			5'b0_0000: rdata_out2 <= x0;
			5'b0_0001: rdata_out2 <= x1;
			5'b0_0010: rdata_out2 <= x2;
			5'b0_0011: rdata_out2 <= x3;
			5'b0_0100: rdata_out2 <= x4;
			5'b0_0101: rdata_out2 <= x5;
			5'b0_0110: rdata_out2 <= x6;
			5'b0_0111: rdata_out2 <= x7;
			5'b0_1000: rdata_out2 <= x8;
			5'b0_1001: rdata_out2 <= x9;
			5'b0_1010: rdata_out2 <= x10;
			5'b0_1011: rdata_out2 <= x11;
			5'b0_1100: rdata_out2 <= x12;
			5'b0_1101: rdata_out2 <= x13;
			5'b0_1110: rdata_out2 <= x14;
			5'b0_1111: rdata_out2 <= x15;
			5'b1_0000: rdata_out2 <= x16;
			5'b1_0001: rdata_out2 <= x17;
			5'b1_0010: rdata_out2 <= x18;
			5'b1_0011: rdata_out2 <= x19;
			5'b1_0100: rdata_out2 <= x20;
			5'b1_0101: rdata_out2 <= x21;
			5'b1_0110: rdata_out2 <= x22;
			5'b1_0111: rdata_out2 <= x23;
			5'b1_1000: rdata_out2 <= x24;
			5'b1_1001: rdata_out2 <= x25;
			5'b1_1010: rdata_out2 <= x26;
			5'b1_1011: rdata_out2 <= x27;
			5'b1_1100: rdata_out2 <= x28;
			5'b1_1101: rdata_out2 <= x29;
			5'b1_1110: rdata_out2 <= x30;
			5'b1_1111: rdata_out2 <= x31;
			default: rdata_out2 <= x0;
		endcase
	end

	always @(posedge clk)
	begin
		if (rst == 1) 
			begin
			x1 <= 32'b0;
			x2 <= 32'b0;
			x3 <= 32'b0;
			x4 <= 32'b0;
			x5 <= 32'b0;
			x6 <= 32'b0;
			x7 <= 32'b0;
			x8 <= 32'b0;
			x9 <= 32'b0;
			x10 <= 32'b0;
			x11 <= 32'b0;
			x12 <= 32'b0;
			x13 <= 32'b0;
			x14 <= 32'b0;
			x15 <= 32'b0;
			x16 <= 32'b0;
			x17 <= 32'b0;
			x18 <= 32'b0;
			x19 <= 32'b0;
			x20 <= 32'b0;
			x21 <= 32'b0;
			x22 <= 32'b0;
			x23 <= 32'b0;
			x24 <= 32'b0;
			x25 <= 32'b0;
			x26 <= 32'b0;
			x27 <= 32'b0;
			x28 <= 32'b0;
			x29 <= 32'b0;
			x30 <= 32'b0;
			x31 <= 32'b0;
		end
	else if (rg_wrt_en)
		begin
			case (rg_wrt_dest)
				5'b0_0000: x0 <= x0;
				5'b0_0001: x1 <= rg_wrt_data;
				5'b0_0010: x2 <= rg_wrt_data;
				5'b0_0011: x3 <= rg_wrt_data;
				5'b0_0100: x4 <= rg_wrt_data;
				5'b0_0101: x5 <= rg_wrt_data;
				5'b0_0110: x6 <= rg_wrt_data;
				5'b0_0111: x7 <= rg_wrt_data;
				5'b0_1000: x8 <= rg_wrt_data;
				5'b0_1001: x9 <= rg_wrt_data;
				5'b0_1010: x10 <= rg_wrt_data;
				5'b0_1011: x11 <= rg_wrt_data;
				5'b0_1100: x12 <= rg_wrt_data;
				5'b0_1101: x13 <= rg_wrt_data;
				5'b0_1110: x14 <= rg_wrt_data;
				5'b0_1111: x15 <= rg_wrt_data;
				5'b1_0000: x16 <= rg_wrt_data;
				5'b1_0001: x17 <= rg_wrt_data;
				5'b1_0010: x18 <= rg_wrt_data;
				5'b1_0011: x19 <= rg_wrt_data;
				5'b1_0100: x20 <= rg_wrt_data;
				5'b1_0101: x21 <= rg_wrt_data;
				5'b1_0110: x22 <= rg_wrt_data;
				5'b1_0111: x23 <= rg_wrt_data;
				5'b1_1000: x24 <= rg_wrt_data;
				5'b1_1001: x25 <= rg_wrt_data;
				5'b1_1010: x26 <= rg_wrt_data;
				5'b1_1011: x27 <= rg_wrt_data;
				5'b1_1100: x28 <= rg_wrt_data;
				5'b1_1101: x29 <= rg_wrt_data;
				5'b1_1110: x30 <= rg_wrt_data;
				5'b1_1111: x31 <= rg_wrt_data;
				
			endcase
		end
	end


endmodule