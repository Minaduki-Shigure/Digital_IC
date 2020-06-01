module code_8_3(
    input [7:0] din,
    output reg [2:0] dout = 0
);

    always @ *
    begin
        casex(din)
            8'b00000001: dout <= 3'd0;
			8'b0000001x: dout <= 3'd1;
			8'b000001xx: dout <= 3'd2;
			8'b00001xxx: dout <= 3'd3;
			8'b0001xxxx: dout <= 3'd4;
			8'b001xxxxx: dout <= 3'd5;
			8'b01xxxxxx: dout <= 3'd6;
			8'b1xxxxxxx: dout <= 3'd7;
            default: dout <= 3'b0;
        endcase
    end

endmodule