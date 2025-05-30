# Define a virtual clock (10ns period, 100MHz)
create_clock -name clk -period 10 [get_ports a]

# Set input delay for 'a' and 'b' relative to the clock
set_input_delay 2.0 -clock clk [get_ports {a b}]

# Set output delay for 'sum' and 'carry' relative to the clock
set_output_delay 2.0 -clock clk [get_ports {sum carry}]