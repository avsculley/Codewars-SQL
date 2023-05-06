-- -----------------------------------------------------------
-- Write a PostgreSQL query that selects film_id, the title and special_features columns from the film table in the DVD rental database, and 
-- returns only the films that have both "Trailers" and "Deleted Scenes" as their special feature. special_features is the text[] type. It represents a 
-- one-dimensional array of values, where each value is of the text data type.
-- 
-- Notes:
-- for the sample tests, static dump of DVD Rental Sample Database is used, for the final solution - random tests.
-- Note that this query should return films that have other special features in addition to "Trailers" and "Deleted Scenes".
-- The result should be order by title alphabetically, if title is the same - then by film_id in asc order.
-- 
-- Schema:
-- film table:
-- Column            | Type      | Modifiers
-- ------------------+-----------+-----------
-- film_id           | integer   | not null
-- title             | varchar   | not null
-- description       | text      | not null
-- release_year      | integer   | not null
-- language_id       | integer   | not null 
-- rental_duration   | integer   | not null
-- rental_rate       | numeric   | not null
-- length            | integer   | not null
-- replacement_cost  | numeric   | not null
-- rating            | varchar   | not null
-- last_update       | timestamp | not null
-- special_features  | text[]    | not null
-- 
-- Desired Output
-- The desired output should look like this:
-- 
-- film_id | title                             | special_features                       |
-- --------+-----------------------------------+----------------------------------------|
--    32   | A Shawshank Redemption            | {Trailers, Deleted Scenes}             | 
--    14   | Monty Python and the Holy Grail   | {Deleted Scenes,Commentaries,Trailers} |
-- ...
-- -----------------------------------------------------------

SELECT film_id, title, special_features
FROM film AS res
WHERE 
    'Trailers' = ANY(special_features) AND
    'Deleted Scenes' = ANY(special_features)
ORDER BY title, film_id;

-- or

SELECT film_id, title, special_features
FROM film AS res
WHERE special_features @> ARRAY['Trailers', 'Deleted Scenes']::TEXT[]
ORDER BY title, film_id;

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