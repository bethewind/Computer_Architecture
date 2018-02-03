module swap(m1, m2, sign, out1, out2);
imput [22:0]m1, m2;
input sign;
output reg [22:0]out1, out2;


if (sign == 1b'1) begin
    out1 = m1;
    out2 = m2;
end else begin
    out1 = m2;
    out2 = m1;
end

endmodule