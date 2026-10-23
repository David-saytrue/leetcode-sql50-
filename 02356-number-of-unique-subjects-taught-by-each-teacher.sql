-- LeetCode 2356. Number of Unique Subjects Taught by Each Teacher
-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-23
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT teacher_id,
       COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
