module stopwatch(
    output reg [3:0] msh,
    output reg [3:0] msl,
    output reg [3:0] sh,
    output reg [3:0] sl,
    output reg [3:0] mh,
    output reg [3:0] ml,
    input clk,
    input clr,
    input pause
);

    reg msla, msha, sla, sha, mla, mha;

    always @ (posedge clk or clr or pause)
    begin
        if (clr)
        begin
            msh <= 4'd0;
            msl <= 4'd0;
            sh <= 4'd0;
            sl <= 4'd0;
            mh <= 4'd0;
            ml <= 4'd0;
        end
        else
        begin
            if (!pause)
            begin
                if (msl >= 9)
                begin
                    msl <= 0;
                    msla <= 1;
                end
                else
                begin
                    msl <= msl + 1;
                end
            end
        end
    end

    always @ (posedge msla)
    begin
        if (msh >= 9)
        begin
            msh <= 0;
            msha <= 1;
        end
        else
        begin
            msh <= msh + 1;
        end
        msla <= 0;
    end

    always @ (posedge msha)
    begin
        if (sl >= 9)
        begin
            sl <= 0;
            sla <= 1;
        end
        else
        begin
            sl <= sl + 1;
        end
        msha <= 0;
    end

    always @ (posedge sla)
    begin
        if (sh >= 5)
        begin
            sh <= 0;
            sha <= 1;
        end
        else
        begin
            sh <= sh + 1;
        end
        sla <= 0;
    end

    always @ (posedge sha)
    begin
        if (ml >= 9)
        begin
            ml <= 0;
            mla <= 1;
        end
        else
        begin
            ml <= ml + 1;
        end
        sha <= 0;
    end

    always @ (posedge mla)
    begin
        if (mh >= 5)
        begin
            mh <= 0;
            mha <= 1;
        end
        else
        begin
            mh <= mh + 1;
        end
        mla <= 0;
    end

    always @ (posedge mha)
    begin
        msh <= 4'd0;
        msl <= 4'd0;
        sh <= 4'd0;
        sl <= 4'd0;
        mh <= 4'd0;
        ml <= 4'd0;
        mha <= 0;
    end

endmodule