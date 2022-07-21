library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity left1_shifter is
	generic(input_width: integer := 16;
		output_width: integer := 16);
	port(
		input: in std_logic_vector(input_width-1 downto 0);
		output: out std_logic_vector(output_width-1 downto 0));
end entity;

architecture shift of left1_shifter is
begin
	output(output_width-1 downto 1) <= input(output_width-2 downto 0);
	output(0) <= input(output_width-1);
	
end architecture;
