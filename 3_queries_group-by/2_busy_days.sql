-- days of bootcamp where number of assignments are >= 10

SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;