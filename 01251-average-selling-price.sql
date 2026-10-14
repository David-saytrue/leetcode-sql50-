-- LeetCode 1251. Average Selling Price
-- https://leetcode.com/problems/average-selling-price/
-- Difficulty: Easy
-- Study plan: SQL 50
-- Completed: 2026-10-14
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT p.product_id,
       COALESCE(
           ROUND(
               SUM(u.units * p.price)::numeric / NULLIF(SUM(u.units), 0),
               2
           ),
           0
       ) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS u
  ON p.product_id = u.product_id
 AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
