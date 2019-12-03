-- rotate right vector elements
--
-- Copyright 2019 Ahmet Inan <inan@aicodix.de>

library ieee;
use ieee.std_logic_1164.all;
use work.ldpc.all;

entity ror_vector is
	port (
		clock : in std_logic;
		clken : in boolean;
		shift : in natural range 0 to soft_vector'length-1;
		ivsgn : in sign_vector;
		ovsgn : out sign_vector;
		ivmag : in vmag_vector;
		ovmag : out vmag_vector
	);
end ror_vector;

architecture rtl of ror_vector is
	function rotate_right (vec : sign_vector; shi : natural range 0 to sign_vector'length-1) return sign_vector is
		variable tmp : sign_vector;
	begin
		if shi = 0 then
			tmp := vec;
		else
			for idx in sign_vector'low+1 to sign_vector'high loop
				if shi = sign_vector'high - idx then
					tmp := vec(idx to sign_vector'high) & vec(sign_vector'low to idx-1);
				end if;
			end loop;
		end if;
		return tmp;
	end function;

	function rotate_right (vec : vmag_vector; shi : natural range 0 to vmag_vector'length-1) return vmag_vector is
		variable tmp : vmag_vector;
	begin
		if shi = 0 then
			tmp := vec;
		else
			for idx in vmag_vector'low+1 to vmag_vector'high loop
				if shi = vmag_vector'high - idx then
					tmp := vec(idx to vmag_vector'high) & vec(vmag_vector'low to idx-1);
				end if;
			end loop;
		end if;
		return tmp;
	end function;
begin
	process (clock)
	begin
		if rising_edge(clock) then
			if clken then
				ovsgn <= rotate_right(ivsgn, shift);
				ovmag <= rotate_right(ivmag, shift);
			end if;
		end if;
	end process;
end rtl;

