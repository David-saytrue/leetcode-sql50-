-- LeetCode 1934. Confirmation Rate
-- https://leetcode.com/problems/confirmation-rate/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-12
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT s.user_id,
       ROUND(
           AVG(
               CASE
                   WHEN c.action = 'confirmed' THEN 1.00
                   ELSE 0.00
               END
           ),
           2
       ) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c
  ON s.user_id = c.user_id
GROUP BY s.user_id;
