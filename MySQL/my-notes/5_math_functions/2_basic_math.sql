-- Displaying value of PIE;
SELECT PI();
-- To power a number
SELECT POWER(8, 2), POW(8, 2);
-- Performing square root, third root
SELECT SQRT(81), CEIL(POWER(64, 1/3));
-- To get random number, you can also pass seed to get same random number everytime.
SELECT RAND(), RAND(61);
-- Logarithms
-- exp() method returns E raised to the power of x (Ex). 'E' is the base of the natural
-- system of logarithms (approximately 2.718282) and x is the number passed to it.
SELECT LOG(100), LOG2(100), LOG10(1000), EXP(1), EXP(2);
-- Radians and Degres
SELECT RADIANS(180), DEGREES(180);
