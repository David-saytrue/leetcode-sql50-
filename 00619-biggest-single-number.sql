-- LeetCode 619. Biggest Single Number
-- https://leetcode.com/problems/biggest-single-number/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-30
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS singles;
