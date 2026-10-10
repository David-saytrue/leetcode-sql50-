-- LeetCode 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-10

-- # Write your MySQL query statement below

SELECT vs.customer_id,
       COUNT(*) AS count_no_trans
FROM Visits AS vs
LEFT JOIN Transactions AS tr
  ON vs.visit_id = tr.visit_id
WHERE tr.visit_id IS NULL
GROUP BY vs.customer_id;
