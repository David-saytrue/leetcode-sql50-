-- LeetCode 1633. Percentage of Users Attended a Contest
-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-18
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT r.contest_id,
       ROUND(
           COUNT(DISTINCT r.user_id) * 100.00
           / (SELECT COUNT(*) FROM Users),
           2
       ) AS percentage
FROM Register AS r
GROUP BY r.contest_id
ORDER BY percentage DESC,
         r.contest_id ASC;
