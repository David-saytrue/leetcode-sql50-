-- LeetCode 1193. Monthly Transactions I
-- https://leetcode.com/problems/monthly-transactions-i/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-23
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT TO_CHAR(trans_date, 'YYYY-MM') AS month,
       country,
       COUNT(*) AS trans_count,
       COUNT(CASE WHEN state = 'approved' THEN 1 END) AS approved_count,
       SUM(amount) AS trans_total_amount,
       SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY TO_CHAR(trans_date, 'YYYY-MM'),
         country;
