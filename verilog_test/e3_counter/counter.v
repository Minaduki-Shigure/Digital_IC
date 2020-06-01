module counter(
    output reg [7:0] out,
    input [7:0] data,
    input load,
    input reset,
    input clk
);

    always @ (posedge clk)
    begin
        if (!reset)
        begin
            out <= 8'b0;
        end
        else
        begin
            if (load)
            begin
                out <= data;
            end
            else
            begin
                out <= out + 1'b1;
            end
        end
    end

endmodule