-- Write your PostgreSQL query statement below
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING Count(num) = 1
) AS nums