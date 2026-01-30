/* Write your T-SQL query statement below */
SELECT  d.name as Department, e.name as Employee, e.salary as Salary
FROM employee e JOIN department d
ON e.departmentID = d.id
WHERE e.salary IN (SELECT DISTINCT TOP 3 salary
    FROM employee e2
    WHERE e2.departmentId = d.id
    ORDER BY salary DESC)
ORDER BY e.salary, Department DESC