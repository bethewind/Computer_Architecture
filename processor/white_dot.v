module white_dot(gl,gr,al,ar,gout,aout);

input gl,al,gr,ar;
output gout,aout;

assign gout=gl | al&gr ;
assign aout= al&ar ;

endmodule