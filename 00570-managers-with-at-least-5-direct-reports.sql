-- LeetCode 570. Managers with at Least 5 Direct Reports
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-11
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(managerId) >= 5
);
