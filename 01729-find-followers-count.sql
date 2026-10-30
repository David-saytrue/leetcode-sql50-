-- LeetCode 1729. Find Followers Count
-- https://leetcode.com/problems/find-followers-count/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-30
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT
    user_id,
    COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
