-- LeetCode 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-10

-- # Write your MySQL query statement below

SELECT w1.id
FROM Weather AS w1
JOIN Weather AS w2
  ON w1.recordDate - w2.recordDate = 1
WHERE w1.temperature > w2.temperature;
