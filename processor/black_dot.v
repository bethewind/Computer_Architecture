module black_dot(gl,gr,al,gout);

input gl,al,gr;
output gout;

assign gout=gl | al&gr ;

endmodule
