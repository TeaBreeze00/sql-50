# Write your MySQL query statement below
# So initiate join on the condition that the date difference being of 1 day
# Then filter out the temperatures based on if it was higher than the previous day
SELECT a.id as Id
FROM Weather a           # Today
INNER JOIN Weather b     # Yesterday
 ON DATEDIFF(a.recordDate, b.recordDate) = 1
WHERE a.temperature > b.temperature