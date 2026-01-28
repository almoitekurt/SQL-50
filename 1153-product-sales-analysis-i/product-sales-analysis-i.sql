/* Write your T-SQL query statement below */
SELECT  s.year, s.price, p.product_name
FROM sales s INNER JOIN product p 
ON s.product_id = p.product_id