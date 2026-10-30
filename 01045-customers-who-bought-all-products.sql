-- LeetCode 1045. Customers Who Bought All Products
-- https://leetcode.com/problems/customers-who-bought-all-products/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-30
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*)
    FROM Product
);
