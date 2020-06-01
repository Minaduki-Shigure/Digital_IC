`define out a, b, c, d, e, f, g

module decoder47(
    output reg a,
    output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g,
    input [7:0] din
);

    always @ *
    begin
        case(din)
        // 测试文件中的数码管顺序与word文件中不一致，
        // 为了方便测试，以测试文件为准
        7'd0: {`out} <= 7'b111_1110;
        7'd1: {`out} <= 7'b011_0000;
        7'd2: {`out} <= 7'b110_1101;
        7'd3: {`out} <= 7'b111_1001;
        7'd4: {`out} <= 7'b011_0011;
        7'd5: {`out} <= 7'b101_1011;
        7'd6: {`out} <= 7'b101_1111;
        7'd7: {`out} <= 7'b111_0000;
        7'd8: {`out} <= 7'b111_1111;
        7'd9: {`out} <= 7'b111_1011;
        endcase
    end

endmodule