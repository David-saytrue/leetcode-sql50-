-- LeetCode 550. Game Play Analysis IV
-- https://leetcode.com/problems/game-play-analysis-iv/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-23
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT ROUND(
           COUNT(
               CASE
                   WHEN a1.event_date - a2.min_date = 1 THEN 1
               END
           ) * 1.0 / COUNT(DISTINCT a1.player_id),
           2
       ) AS fraction
FROM Activity AS a1
LEFT JOIN (
    SELECT player_id,
           MIN(event_date) AS min_date
    FROM Activity
    GROUP BY player_id
) AS a2
  ON a1.player_id = a2.player_id;
