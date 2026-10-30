-- LeetCode 596. Classes With at Least 5 Students
-- https://leetcode.com/problems/classes-with-at-least-5-students/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-30
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5;
