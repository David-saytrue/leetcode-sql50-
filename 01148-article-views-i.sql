-- LeetCode 1148. Article Views I
-- https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-09

-- # Write your MySQL query statement below

SELECT DISTINCT
    author_id AS id
FROM Views
WHERE author_id = viewer_id;
