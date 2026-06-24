module top(
    input  [4:0] sw,
    output [6:0] seg,
    output [3:0] an
);

    wire [1:0] A;
    wire [1:0] B;
    wire mode;

    reg [3:0] result;

    assign A = sw[1:0];      // SW0~SW1 輸入 A
    assign B = sw[3:2];      // SW2~SW3 輸入 B
    assign mode = sw[4];     // SW4：0 加法，1 減法

    always @(*) begin
        if (mode == 1'b0) begin
            result = A + B;
        end
        else begin
            if (A >= B)
                result = A - B;
            else
                result = 4'd0;
        end
    end

    seven_seg1 display(
        .num(result),
        .seg(seg),
        .an(an)
    );

endmodule