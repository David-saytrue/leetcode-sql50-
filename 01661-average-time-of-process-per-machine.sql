-- LeetCode 1661. Average Time of Process per Machine
-- https://leetcode.com/problems/average-time-of-process-per-machine/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-11
-- Note: ROUND(AVG(...)::numeric, 3) for PostgreSQL.

-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)


SELECT s.machine_id,
       ROUND(AVG(e.timestamp - s.timestamp)::numeric, 3) AS processing_time
FROM Activity AS s
INNER JOIN Activity AS e
  ON s.machine_id = e.machine_id
 AND s.process_id = e.process_id
 AND s.activity_type = 'start'
 AND e.activity_type = 'end'
GROUP BY s.machine_id;

