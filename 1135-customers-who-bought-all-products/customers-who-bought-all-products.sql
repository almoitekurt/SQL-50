/* Write your T-SQL query statement below */
SELECT c.customer_id
FROM customer c JOIN product p
ON c.product_key = p.product_key
GROUP BY customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(*) FROM Product)