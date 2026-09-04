# Write your MySQL query statement below
# Self join the 2 tables on the condition that one is start and the other is end, we will have duplicate machine id and process id. Then we group by the machine id and find out the average that we would need.

SELECT a.machine_id, ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity b
  ON  a.machine_id = b.machine_id
  AND a.process_id = b.process_id
  AND a.activity_type = "start" AND b.activity_type = "end"
GROUP BY a.machine_id  