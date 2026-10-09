-- LeetCode 1378. Replace Employee ID With The Unique Identifier
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-09

-- # Write your MySQL query statement below

SELECT empu.unique_id, emp.name
FROM Employees AS emp
LEFT JOIN EmployeeUNI AS empu
  ON emp.id = empu.id;
