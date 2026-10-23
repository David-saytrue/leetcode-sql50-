-- LeetCode 1141. User Activity for the Past 30 Days I
-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-23
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT activity_date AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
  AND activity_type IN (
      'open_session',
      'end_session',
      'scroll_down',
      'send_message'
  )
GROUP BY activity_date;
