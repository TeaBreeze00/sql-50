# Write your MySQL query statement below
# So, here is the plan, the inner join will give us the customers who also has transactions. So we need to exclude these transactions somehow to get the customers who doesn't have any transactions. So, it's like join and then subtract from visits. A left join will keep NULL and then all we have to do is filter by those NULL values and return?

SELECT v.customer_id, count(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
  ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
