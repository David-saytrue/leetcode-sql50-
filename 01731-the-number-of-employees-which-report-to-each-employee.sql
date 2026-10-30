-- LeetCode 1731. The Number of Employees Which Report to Each Employee
-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-30
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT
    m.employee_id,
    m.name,
    COUNT(e.reports_to) AS reports_count,
    ROUND(AVG(e.age), 0) AS average_age
FROM Employees AS e
INNER JOIN Employees AS m
  ON e.reports_to = m.employee_id
GROUP BY
    m.employee_id,
    m.name
ORDER BY
    m.employee_id;
