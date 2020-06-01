module dff(
    output reg q,
    output reg qn,
    input d,
    input clk,
    input set,
    input reset
);

    always @ (set or reset)
    begin
        if (!reset)
        begin
            q = 0;
        end
        else
        begin
            if (!set)
            begin
                q = 1;
            end
        end
    end

    always @ (posedge clk)
    begin
        if (set && reset)
        begin
            q = d;
        end
    end
    
    always @ *
    begin
        qn = ~q;
    end

endmodule