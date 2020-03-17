module bitset (input [3:0] x, input [1:0] index,
        input value, output [3:0] y);

	wire [3:0] decToMux;

    decoder dec(index, decToMux);
    mux mux3({x[3], value}, decToMux[3], y[3]);
    mux mux2({x[2], value}, decToMux[2], y[2]);
    mux mux1({x[1], value}, decToMux[1], y[1]);
    mux mux0({x[0], value}, decToMux[0], y[0]);
endmodule

module decoder (
        input [1:0] index,
        output [3:0] out
        );

    assign out = 0001 << index;
endmodule

module mux (
        input[0:1] in,
        input select,
        output y
        );
    assign y = in[select];   
endmodule