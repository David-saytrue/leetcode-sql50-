-- LeetCode 1280. Students and Examinations
-- https://leetcode.com/problems/students-and-examinations/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-11

-- # Write your MySQL query statement below

SELECT s.student_id,
       s.student_name,
       sub.subject_name,
       COUNT(ex.subject_name) AS attended_exams
FROM Students AS s
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS ex
  ON s.student_id = ex.student_id
 AND ex.subject_name = sub.subject_name
GROUP BY s.student_id,
         s.student_name,
         sub.subject_name;
