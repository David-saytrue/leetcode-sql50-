-- LeetCode 595. Big Countries
-- https://leetcode.com/problems/big-countries/
-- Difficulty: Easy
-- Study plan: SQL 50

-- # Write your MySQL query statement below

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
