-- LeetCode 620. Not Boring Movies
-- https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-14
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT c.id,
       c.movie,
       c.description,
       c.rating
FROM Cinema AS c
WHERE c.id % 2 = 1
  AND c.description != 'boring'
ORDER BY c.rating DESC;
