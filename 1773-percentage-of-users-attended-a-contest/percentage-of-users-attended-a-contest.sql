/* Write your T-SQL query statement below */
SELECT r.contest_id,
    ROUND(COUNT(r.user_id) * 100.0 / (SELECT count(distinct u.user_id) FROM users u) , 2) as percentage
FROM register r LEFT JOIN  users u
ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id