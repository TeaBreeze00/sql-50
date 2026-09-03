# Write your MySQL query statement below
# For joins, it is easier to give the tables distinct aliases so that we can differentiate, left join is perfect here because left join selects all from employees and also the matches, giving null values to the values that don't exist
SELECT u.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
   ON e.id = u.id