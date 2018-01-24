 ------------------------------------------------------------------
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 USE ieee.numeric_std.ALL;

 ------------------------------------------------------------------
 ENTITY rom IS
 PORT (rom_addr16:intEGER range 0 to 65536;
 data_out: out std_LOGIC_VECTOR(7 dowNTO 0));
 END rom;
 ------------------------------------------------------------------
 ARCHITECTURE main OF rom IS
 SIGNAL reg_address: INTEGER RANGE 0 TO 15;
 TYPE memory IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
 SIGNAL myrom: memory;
 ATTRIBUTE ram_init_file: STRING;
 ATTRIBUTE ram_init_file OF myrom: SIGNAL IS "out.mif";

 BEGIN
 data_out <= myrom(rom_addr16);
 END main;
 ------------------------------------------------------------------