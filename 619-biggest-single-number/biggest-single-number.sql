/* Write your T-SQL query statement below */
SELECT MAX(num) as num
FROM  (
    select num 
    FROM myNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)
as unique_num
