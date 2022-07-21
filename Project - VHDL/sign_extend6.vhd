library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend6 is
	generic(input_width: integer := 6;
		output_width: integer := 16);
	port(
		input: in std_logic_vector(input_width-1 downto 0);
		output: out std_logic_vector(output_width-1 downto 0));
end entity;

architecture extend of sign_extend6 is
begin
	output(input_width-1 downto 0) <= input;
	sign_bit:
	for i in input_width to output_width-1 generate
		output(i) <= input(input_width-1);
	end generate;
	
end architecture;




