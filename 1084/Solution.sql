-- Write your PostgreSQL query statement below
SELECT product_id, product_name
FROM Product p
WHERE NOT EXISTS (
    SELECT * 
    FROM Sales s
    WHERE s.product_id = p.product_id AND (s.sale_date < '2019-01-01' 
    OR s.sale_date > '2019-03-31')
) AND EXISTS (
    SELECT * 
    FROM Sales s
    WHERE s.product_id = p.product_id
)