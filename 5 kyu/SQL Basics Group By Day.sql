-- -----------------------------------------------------------
-- There is an events table used to track different key activities taken on a website. For this task you need to:
-- 
-- find the entries whose name equals "trained"
-- group them by the day the activity happened (the date part of the created_at timestamp) and their description's
-- the 2 aforementioned fields should be returned together with the number of grouped entries in a column called count
-- the result should also be sorted by day
-- 
-- "events" table schema
-- 
-- id (bigint)
-- name (text)
-- created_at (timestamp)
-- description (text)
-- 
-- expected result schema
-- 
-- day (date)
-- description (text)
-- count (numeric)
-- -----------------------------------------------------------

SELECT DATE(created_at) AS day, description, COUNT(created_at)
FROM events WHERE (name = 'trained')
GROUP BY day, description
ORDER BY day;

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