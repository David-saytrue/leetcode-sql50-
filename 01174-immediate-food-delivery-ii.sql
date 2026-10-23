-- LeetCode 1174. Immediate Food Delivery II
-- https://leetcode.com/problems/immediate-food-delivery-ii/
-- Difficulty: Medium
-- Study plan: SQL 50
-- Completed: 2026-10-23
-- Dialect: PostgreSQL (LeetCode PostgreSQL editor)

SELECT ROUND(
           COUNT(
               CASE
                   WHEN d1.order_date = d1.customer_pref_delivery_date THEN 1
               END
           ) * 100.0 / COUNT(*),
           2
       ) AS immediate_percentage
FROM Delivery AS d1
INNER JOIN (
    SELECT customer_id,
           MIN(order_date) AS min_order_date
    FROM Delivery
    GROUP BY customer_id
) AS d2
  ON d1.customer_id = d2.customer_id
 AND d1.order_date = d2.min_order_date;
