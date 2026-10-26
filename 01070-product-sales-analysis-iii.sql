-- LeetCode 1070. Product Sales Analysis III
-- https://leetcode.com/problems/product-sales-analysis-iii/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-26
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT
    product_id,
    year AS first_year,
    quantity,
    price
FROM Sales
WHERE (product_id, year) IN (
    SELECT
        product_id,
        MIN(year)
    FROM Sales
    GROUP BY product_id
);
