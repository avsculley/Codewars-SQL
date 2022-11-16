-- -----------------------------------------------------------
-- Given the following table 'decimals':
-- 
-- ** decimals table schema **
-- 
-- id
-- number1
-- number2
-- 
-- Return a table with two columns (root, log) where the values in root are the square root of those provided in number1 and the values in log are 
-- changed to a base 10 logarithm from those in number2.
-- -----------------------------------------------------------

SELECT
    SQRT(number1) AS root,
    LOG(number2)
FROM decimals;

-- or

SELECT
    POWER(number1, 0.5) AS root,
    LOG(number2)
FROM decimals;