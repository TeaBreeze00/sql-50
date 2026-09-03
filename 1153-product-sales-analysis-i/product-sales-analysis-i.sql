# Write your MySQL query statement below
# We need some sort of join in the two tables and only select product_name, year and price for each sale. We can do an inner join that will select all relevant matching rows.
SELECT p.product_name, s.year, s.price
FROM Sales s
INNER JOIN Product p
  on s.product_id = p.product_id