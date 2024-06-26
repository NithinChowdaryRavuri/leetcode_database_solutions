-- Write your PostgreSQL query statement below
SELECT s.name
FROM SalesPerson AS s
WHERE s.sales_id NOT IN (
    SELECT o.sales_id
    FROM Orders AS o
    JOIN Company as c
    ON c.com_id = o.com_id
    WHERE c.name = 'RED'
)