/* This is a Verilog template for use with the BeMicro MAX 10 development kit */
/* It is used for showing the IO pin names and directions                     */
/* Ver 0.2 10.07.2014                                                         */

/* NOTE: A VHDL version of this template is also provided with this design    */
/* example for users that prefer VHDL. This BeMicro_MAX10_top.v file would    */
/* need to be removed from the project and replaced with the                  */
/* BeMicro_MAX10_top.vhd file to switch to the VHDL template.                 */

/* The signals below are documented in the "BeMicro MAX 10 Getting Started    */
/* User Guide."  Please refer to that document for additional signal details. */

`define ENABLE_CLOCK_INPUTS
`define ENABLE_DAC_SPI_INTERFACE
`define ENABLE_TEMP_SENSOR
`define ENABLE_ACCELEROMETER
`define ENABLE_SDRAM
`define ENABLE_SPI_FLASH
`define ENABLE_MAX10_ANALOG
`define ENABLE_PUSHBUTTON
`define ENABLE_LED_OUTPUT
`define ENABLE_EDGE_CONNECTOR
`define ENABLE_HEADERS
`define ENABLE_GPIO_J3
`define ENABLE_GPIO_J4
`define ENABLE_PMOD

module qsys_control_top (

	/* Clock inputs, SYS_CLK = 50MHz, USER_CLK = 24MHz */	
`ifdef ENABLE_CLOCK_INPUTS
	//Voltage Level 2.5V
	input SYS_CLK,
	input USER_CLK,
`endif

`ifdef ENABLE_PUSHBUTTON	
	/* pushbutton switch inputs */
	// Voltage Level 2.5V 
	input [4:1] PB,
`endif	

`ifdef ENABLE_LED_OUTPUT
	/* LED outputs */
	// Voltage Level 2.5V
	output [8:1] USE_LED
`endif	

);

wire reset_n;

assign reset_n= PB[1]|PB[4];

	nios2_control u0 (
		.clk_clk                     (SYS_CLK),                     //                  clk.clk
		.reset_reset_n               (reset_n),               //                reset.reset_n
		.led_led_pio_external_export (USE_LED[8:1]), // led_led_pio_external.export
		.button_pio_external_export  (PB[4:1])   //  button_pio_external.export
	);



endmodule

