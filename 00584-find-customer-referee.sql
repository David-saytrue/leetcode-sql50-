-- LeetCode 584. Find Customer Referee
-- https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Study plan: SQL 50

-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)


SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

