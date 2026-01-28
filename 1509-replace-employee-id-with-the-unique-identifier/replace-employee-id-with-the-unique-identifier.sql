/* Write your T-SQL query statement below */
SELECT e_uni.unique_id, name
FROM employees e LEFT JOIN employeeUNI e_uni
ON e.id = e_uni.id

