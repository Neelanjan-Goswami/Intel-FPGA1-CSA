
module nios2_control (
	clk_clk,
	reset_reset_n,
	led_led_pio_external_export,
	button_pio_external_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[7:0]	led_led_pio_external_export;
	input	[3:0]	button_pio_external_export;
endmodule
