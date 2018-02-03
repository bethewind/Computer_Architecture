module adder(s,cout,a,b,cin); 
input a,b,cin;
output s,cout;

assign s= a ^ b ^cin;
assign cout = (a&b)|(b&cin)|(cin&a);

endmodule 
