module tb;
  reg [15:0] i0; reg [3:0] shift_by; reg [1:0] choice;
  wire [15:0] shift_left, shift_right, rotate_left, rotate_right; wire [15:0] final_output;

  initial begin
    $dumpfile("tb.vcd");
		$dumpvars(0, tb);
  end

  sll sll_o(i0, shift_by, shift_left);
  rl rl_o(i0, shift_by, rotate_left);
  srl srl_o(i0, shift_by, shift_right);
  rr rr_o(i0, shift_by, rotate_right);
  alu alu_o(.choice(choice), .i0(i0), .shift_by(shift_by), .o(final_output));
  initial begin
    i0 = 16'b1000000000000101;
    shift_by = 4'b0000;
    choice = 2'b00;
    #5
    shift_by = 4'b0000;
    choice = 2'b01;
    #5
    shift_by = 4'b0000;
    choice = 2'b10;
    #5
    shift_by = 4'b0000;
    choice = 2'b11;
    #5
    shift_by = 4'b0001;
    choice = 2'b00;
    #5
    shift_by = 4'b0001;
    choice = 2'b01;
    #5
    shift_by = 4'b0001;
    choice = 2'b10;
    #5
    shift_by = 4'b0001;
    choice = 2'b11;
    #5
    shift_by = 4'b0010;
    choice = 2'b00;
    #5
    shift_by = 4'b0010;
    choice = 2'b01;
    #5
    shift_by = 4'b0010;
    choice = 2'b10;
    #5
    shift_by = 4'b0010;
    choice = 2'b11;
    #5
    shift_by = 4'b0011;
    choice = 2'b00;
    #5
    shift_by = 4'b0011;
    choice = 2'b01;
    #5
    shift_by = 4'b0011;
    choice = 2'b10;
    #5
    shift_by = 4'b0011;
    choice = 2'b11;
    #5
    shift_by = 4'b0100;
    choice = 2'b00;
    #5
    shift_by = 4'b0100;
    choice = 2'b01;
    #5
    shift_by = 4'b0100;
    choice = 2'b10;
    #5
    shift_by = 4'b0100;
    choice = 2'b11;
    #5
    shift_by = 4'b0101;
    choice = 2'b00;
    #5
    shift_by = 4'b0101;
    choice = 2'b01;
    #5
    shift_by = 4'b0101;
    choice = 2'b10;
    #5
    shift_by = 4'b0101;
    choice = 2'b11;
    #5
    shift_by = 4'b0110;
    choice = 2'b00;
    #5
    shift_by = 4'b0110;
    choice = 2'b01;
    #5
    shift_by = 4'b0110;
    choice = 2'b10;
    #5
    shift_by = 4'b0110;
    choice = 2'b11;
    #5
    shift_by = 4'b0111;
    choice = 2'b00;
    #5
    shift_by = 4'b0111;
    choice = 2'b01;
    #5
    shift_by = 4'b0111;
    choice = 2'b10;
    #5
    shift_by = 4'b0111;
    choice = 2'b11;
    #5
    shift_by = 4'b1000;
    choice = 2'b00;
    #5
    shift_by = 4'b1000;
    choice = 2'b01;
    #5
    shift_by = 4'b1000;
    choice = 2'b10;
    #5
    shift_by = 4'b1000;
    choice = 2'b11;
    #5
    shift_by = 4'b1001;
    choice = 2'b00;
    #5
    shift_by = 4'b1001;
    choice = 2'b01;
    #5
    shift_by = 4'b1001;
    choice = 2'b10;
    #5
    shift_by = 4'b1001;
    choice = 2'b11;
    #5
    shift_by = 4'b1010;
    choice = 2'b00;
    #5
    shift_by = 4'b1010;
    choice = 2'b01;
    #5
    shift_by = 4'b1010;
    choice = 2'b10;
    #5
    shift_by = 4'b1010;
    choice = 2'b11;
    #5
    shift_by = 4'b1011;
    choice = 2'b00;
    #5
    shift_by = 4'b1011;
    choice = 2'b01;
    #5
    shift_by = 4'b1011;
    choice = 2'b10;
    #5
    shift_by = 4'b1011;
    choice = 2'b11;
    #5
    shift_by = 4'b1100;
    choice = 2'b00;
    #5
    shift_by = 4'b1100;
    choice = 2'b01;
    #5
    shift_by = 4'b1100;
    choice = 2'b10;
    #5
    shift_by = 4'b1100;
    choice = 2'b11;
    #5
    shift_by = 4'b1101;
    choice = 2'b00;
    #5
    shift_by = 4'b1101;
    choice = 2'b01;
    #5
    shift_by = 4'b1101;
    choice = 2'b10;
    #5
    shift_by = 4'b1101;
    choice = 2'b11;
    #5
    shift_by = 4'b1110;
    choice = 2'b00;
    #5
    shift_by = 4'b1110;
    choice = 2'b01;
    #5
    shift_by = 4'b1110;
    choice = 2'b10;
    #5
    shift_by = 4'b1110;
    choice = 2'b11;
    #5
    shift_by = 4'b1111;
    choice = 2'b00;
    #5
    shift_by = 4'b1111;
    choice = 2'b01;
    #5
    shift_by = 4'b1111;
    choice = 2'b10;
    #5
    shift_by = 4'b1111;
    choice = 2'b11;
    #5
    $finish;
  end
endmodule