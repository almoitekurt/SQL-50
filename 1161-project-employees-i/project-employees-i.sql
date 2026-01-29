/* Write your T-SQL query statement below */
SELECT p.project_id, ROUND(AVG(CAST(e.experience_years as decimal (20,2))), 2) AS average_years
FROM project p JOIN employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id