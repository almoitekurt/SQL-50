/* Write your T-SQL query statement below */
SELECT DISTINCT user_id, COUNT(follower_id) AS followers_count
FROM followers
GROUP BY user_id