module adder4(
    output cout,
    output [3:0] sum.
    input [3:0] ina,
    input [3:0] inb,
    input cin
);

    assign {cout, sum} = ina + inb + cin;

endmodule