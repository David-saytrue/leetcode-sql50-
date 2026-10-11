-- LeetCode 1683. Invalid Tweets
-- https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-09

-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)


SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

