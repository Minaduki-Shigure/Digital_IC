module serial_pal(
    output reg [3:0] out,
    input clk,
    input reset,
    input en,
    input in
);

    always @ (posedge clk)
    begin
        if (reset)
        begin
            out <= 4'b0;
        end
        else
        begin
            if (en)
            begin
                out <= {out, in};
            end
        end
    end

endmodule