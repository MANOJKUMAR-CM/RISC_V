module mux2(a,b,s,y);
input logic a,b,s;
output logic y;

assign y=s?b:a;

endmodule

