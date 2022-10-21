/**
In this file we will see some numeric conversion in MySQL

CONV(number, from_base, to_base)
number	    Required. A number
from_base	The numeric base system of number (a number between 2 and 36)
to_base	    The numeric base system to convert to (a number between 2 and 36 or -2 and -36)
*/
SELECT HEX(1234), OCT(1234), BIN(1234);
-- We can also convert from one type of number type to another
SELECT CONV("4D2", 16, 10);
-- We can also some proper decimal types like
SELECT CONV("4D2", 16, 32);