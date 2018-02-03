module PADOT(gl,al,gr,gout);
 input gl,al,gr;
 output gout;
 
 assign gout=gl|(al&gr);
 
endmodule

module PACIRCLE(gl,al,gr,ar,gout,aout);
    input gl,al,gr,ar;
    output gout,aout;
    
    assign gout=gl|(al&gr);
    assign  aout=al&ar;
    
endmodule