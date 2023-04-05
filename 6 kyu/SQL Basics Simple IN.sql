-- -----------------------------------------------------------
-- For this challenge you need to create a SELECT statement, this SELECT statement will use an IN to check whether a department has had a sale with 
-- a price over 98.00 dollars.
-- 
-- departments table schema
-- id
-- name
-- 
-- sales table schema
-- id
-- department_id (department foreign key)
-- name
-- price
-- card_name
-- card_number
-- transaction_date
-- 
-- resultant table schema
-- id
-- name
-- 
-- NOTE: sometimes a department will not not contain a sale over $98 so just resubmit.
-- -----------------------------------------------------------

SELECT id, name FROM departments
WHERE id IN (SELECT department_id FROM sales WHERE price > '98.00');

-- -----------------------------------------------------------
-- License
-- Tasks are the property of Codewars (https://www.codewars.com/) 
-- and users of this resource.
-- 
-- All solution code in this repository 
-- is the personal property of Vladimir Rukavishnikov
-- (vladimirrukavishnikovmail@gmail.com).
-- 
-- Copyright (C) 2022 Vladimir Rukavishnikov
-- 
-- This file is part of the HungryVovka/Codewars-SQL
-- (https://github.com/HungryVovka/Codewars-SQL)
-- 
-- License is GNU General Public License v3.0
-- (https://github.com/HungryVovka/Codewars-SQL/blob/main/LICENSE)
-- 
-- You should have received a copy of the GNU General Public License v3.0
-- along with this code. If not, see http://www.gnu.org/licenses/
-- -----------------------------------------------------------