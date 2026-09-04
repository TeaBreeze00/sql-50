# Write your MySQL query statement below
# Need to do a left join so that all employees are matched and people who are not matched still gets a null value

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
 ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus is NULL