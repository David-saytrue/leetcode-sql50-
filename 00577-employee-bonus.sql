-- LeetCode 577. Employee Bonus
-- https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-11

-- # Write your MySQL query statement below

SELECT e.name,
       b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b
  ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;
