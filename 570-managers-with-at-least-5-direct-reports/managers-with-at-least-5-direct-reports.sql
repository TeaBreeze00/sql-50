# Write your MySQL query statement below
# We can group by managerid, get the count of the manager with more than 5 entries and then find it again in the table with a lookup.

SELECT name
FROM Employee
WHERE id in (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)