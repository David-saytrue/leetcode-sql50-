-- LeetCode 1068. Product Sales Analysis I
-- https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-10

-- # Write your MySQL query statement below

SELECT pr.product_name,
       sa.year,
       sa.price
FROM Product AS pr
JOIN Sales AS sa
  ON pr.product_id = sa.product_id;
